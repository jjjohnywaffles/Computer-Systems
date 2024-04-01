// 
// tsh - A tiny shell program with job control
// 
// Jonathan Hu; johu5262

using namespace std;

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <ctype.h>
#include <signal.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <errno.h>
#include <string>

#include "globals.h"
#include "jobs.h"
#include "helper-routines.h"

//
// Needed global variable definitions
//

static char prompt[] = "tsh> ";
int verbose = 0;
//
// You need to implement the functions eval, builtin_cmd, do_bgfg,
// waitfg, sigchld_handler, sigstp_handler, sigint_handler
//
// The code below provides the "prototypes" for those functions
// so that earlier code can refer to them. You need to fill in the
// function bodies below.
// 

void eval(char *cmdline);
int builtin_cmd(char **argv);
void do_bgfg(char **argv);
void waitfg(pid_t pid);

void sigchld_handler(int sig);
void sigtstp_handler(int sig);
void sigint_handler(int sig);

//
// main - The shell's main routine 
//
int main(int argc, char **argv) 
{
  int emit_prompt = 1; // emit prompt (default)

  //
  // Redirect stderr to stdout (so that driver will get all output
  // on the pipe connected to stdout)
  //
  dup2(1, 2);

  /* Parse the command line */
  char c;
  while ((c = getopt(argc, argv, "hvp")) != EOF) {
    switch (c) {
    case 'h':             // print help message
      usage();
      break;
    case 'v':             // emit additional diagnostic info
      verbose = 1;
      break;
    case 'p':             // don't print a prompt
      emit_prompt = 0;  // handy for automatic testing
      break;
    default:
      usage();
    }
  }

  //
  // Install the signal handlers
  //

  //
  // These are the ones you will need to implement
  //
  Signal(SIGINT,  sigint_handler);   // ctrl-c
  Signal(SIGTSTP, sigtstp_handler);  // ctrl-z
  Signal(SIGCHLD, sigchld_handler);  // Terminated or stopped child

  //
  // This one provides a clean way to kill the shell
  //
  Signal(SIGQUIT, sigquit_handler); 

  //
  // Initialize the job list
  //
  initjobs(jobs);

  //
  // Execute the shell's read/eval loop
  //
  for(;;) {
    //
    // Read command line
    //
    if (emit_prompt) {
      printf("%s", prompt);
      fflush(stdout);
    }

    char cmdline[MAXLINE];

    if ((fgets(cmdline, MAXLINE, stdin) == NULL) && ferror(stdin)) {
      app_error("fgets error");
    }
    //
    // End of file? (did user type ctrl-d?)
    //
    if (feof(stdin)) {
      fflush(stdout);
      exit(0);
    }

    //
    // Evaluate command line
    //
    eval(cmdline);
    fflush(stdout);
    fflush(stdout);
  } 

  exit(0); //control never reaches here
}
  
/////////////////////////////////////////////////////////////////////////////
//
// eval - Evaluate the command line that the user has just typed in
// 
// If the user has requested a built-in command (quit, jobs, bg or fg)
// then execute it immediately. Otherwise, fork a child process and
// run the job in the context of the child. If the job is running in
// the foreground, wait for it to terminate and then return.  Note:
// each child process must have a unique process group ID so that our
// background children don't receive SIGINT (SIGTSTP) from the kernel
// when we type ctrl-c (ctrl-z) at the keyboard.

void eval(char *cmdline) {
    
    /* Parse command line */
    //
    // The 'argv' vector is filled in by the parseline
    // routine below. It provides the arguments needed
    // for the execve() routine, which you'll need to
    // use below to launch a process.
    //
    char *argv[MAXARGS];
    pid_t pid;
    sigset_t mask;

    //
    // The 'bg' variable is TRUE if the job should run
    // in background mode or FALSE if it should run in FG
    //
    int bg = parseline(cmdline, argv);

    if (argv[0] == NULL)
        return; // ignore empty lines

    if (builtin_cmd(argv))
        return;

    // Block SIGCHLD signals before forking the child
    sigemptyset(&mask);
    sigaddset(&mask, SIGCHLD);
    sigprocmask(SIG_BLOCK, &mask, NULL);

    if ((pid = fork()) == 0) {
        // If it is a child pid, assign it its own process group id to avoid receiving a SIGINT/SIGTSTP when typing ctrl-c/ctrl-z
        setpgid(0, 0);

        // Unblock SIGCHLD before executing the new program
        sigprocmask(SIG_UNBLOCK, &mask, NULL);

        if (execvp(argv[0], argv) < 0) {
            printf("%s: Command not found\n", argv[0]);
            exit(EXIT_FAILURE);
        }
    } else {
        // If the parent is a foreground job, wait for the current foreground job to terminate
        if (!bg) {
            // Add job to the foreground job list
            addjob(jobs, pid, FG, cmdline);
            // Wait for current foreground job to terminate
            waitfg(pid);
        } else {
            // Add job to the background job list
            addjob(jobs, pid, BG, cmdline);

            // Print jobid, pid, and the command
            printf("[%d] (%d) %s", getjobpid(jobs, pid)->jid, pid, cmdline);
        }
    }

    // Unblock SIGCHLD after the child process is created
    sigprocmask(SIG_UNBLOCK, &mask, NULL);
}

/////////////////////////////////////////////////////////////////////////////
//
// builtin_cmd - If the user has typed a built-in command then execute
// it immediately. The command name would be in argv[0] and
// is a C string. We've cast this to a C++ string type to simplify
// string comparisons; however, the do_bgfg routine will need 
// to use the argv array as well to look for a job number.
//
int builtin_cmd(char **argv) {
    const char *cmd = argv[0]; // Use const char* instead of string for efficiency

    // Quit program
    if (strcmp(cmd, "quit") == 0) {
        exit(0);
    }

    // List jobs
    if (strcmp(cmd, "jobs") == 0) {
        listjobs(jobs);
        return 1; // Return True
    }

    // Background or Foreground command
    if (strcmp(cmd, "bg") == 0 || strcmp(cmd, "fg") == 0) {
        do_bgfg(argv);
        return 1;
    }

    // Check if the command ends with "&"
    if (cmd[strlen(cmd) - 1] == '&') {
        return 1;
    }

    return 0;
}

/////////////////////////////////////////////////////////////////////////////
//
// do_bgfg - Execute the builtin bg and fg commands
//
void do_bgfg(char **argv) {
    struct job_t *jobp = NULL;

    // Ignore command if there is no argument
    if (argv[1] == NULL) {
        printf("%s command requires PID or %%jobid argument\n", argv[0]);
        return;
    }

    // Parse the required PID or %JID arg 
    if (isdigit(argv[1][0])) {
        // Convert the argument to a PID (process ID)
        pid_t pid = atoi(argv[1]);

        // Get the job using the given PID
        if (!(jobp = getjobpid(jobs, pid))) {
            printf("(%d): No such process\n", pid);
            return;
        }
    } else if (argv[1][0] == '%') {
        // Convert the argument to a JID
        int jid = atoi(&argv[1][1]);

        // Get the job using the given JID
        if (!(jobp = getjobjid(jobs, jid))) {
            printf("%s: No such job\n", argv[1]);
            return;
        }
    } else {
        printf("%s: argument must be a PID or %%jobid\n", argv[0]);
        return;
    }
    //
    // You need to complete rest. At this point,
    // the variable 'jobp' is the job pointer
    // for the job ID specified as an argument.
    //
    // Your actions will depend on the specified command
    // so we've converted argv[0] to a string (cmd) for
    // your benefit.
    //
    const char *cmd = argv[0]; // Get the command name

    // Continue the process before changing the state of the stopped job
    kill(-jobp->pid, SIGCONT);

    if (strcmp(cmd, "bg") == 0) {
        // Change the state of the job to the background
        jobp->state = BG;
        printf("[%d] (%d) %s", jobp->jid, jobp->pid, jobp->cmdline);
    } else if (strcmp(cmd, "fg") == 0) {
        // Change the state of the job to the foreground and wait until the current
        // foreground process terminates before we run it
        jobp->state = FG;
        // Now entering waitfg in do_bgfg
        waitfg(jobp->pid);
    }

    return;
}

/////////////////////////////////////////////////////////////////////////////
//
// waitfg - Block until process pid is no longer the foreground process
//
void waitfg(pid_t pid)
{
    sigset_t mask; // Create a signal set mask

    sigemptyset(&mask); // Initialize the signal set mask as empty

    while (pid == fgpid(jobs))
        sigsuspend(&mask); // Suspend the process until the foreground process changes

    return; // Return when the foreground process changes
}
/////////////////////////////////////////////////////////////////////////////
//
// Signal handlers
//


/////////////////////////////////////////////////////////////////////////////
//
// sigchld_handler - The kernel sends a SIGCHLD to the shell whenever
//     a child job terminates (becomes a zombie), or stops because it
//     received a SIGSTOP or SIGTSTP signal. The handler reaps all
//     available zombie children, but doesn't wait for any other
//     currently running children to terminate.  
//
void sigchld_handler(int sig) {
    int status;
    pid_t pid;

    //Terminated child processes with WNOHANG option to avoid blocking.
    while ((pid = waitpid(-1, &status, WNOHANG | WUNTRACED)) > 0) {
        // Check how the process was terminated using WIFEXITED / WIFSIGNALED / WIFSTOPPED.

        if (WIFEXITED(status)) {
            // The child process terminated normally (exited with exit status).
            // Delete the job from the job list since it has completed its execution.
            deletejob(jobs, pid);
            
        } else if (WIFSIGNALED(status)) {
            // The child process was terminated by a signal.
            struct job_t *jobp = getjobpid(jobs, pid);
            // Print a message indicating the termination of the job by a signal.
            printf("Job [%d] (%d) terminated by signal %d\n", jobp->jid, pid, WTERMSIG(status));
            // Delete the job from the job list since it was terminated.
            deletejob(jobs, pid);
            
        } else if (WIFSTOPPED(status)) {
            // The child process was stopped by a signal (e.g., SIGSTOP, SIGTSTP).
            struct job_t *jobp = getjobpid(jobs, pid);
            // Stopping of the job by a signal.
            printf("Job [%d] (%d) stopped by signal %d\n", jobp->jid, pid, WSTOPSIG(status));
            // Set the state of the job to stopped in the job list.
            jobp->state = ST;
        }
    }
    return;
}

/////////////////////////////////////////////////////////////////////////////
//
// sigint_handler - The kernel sends a SIGINT to the shell whenver the
//    user types ctrl-c at the keyboard.  Catch it and send it along
//    to the foreground job.  
//

void sigint_handler(int sig) {
    // Ctrl-C signal caught
    pid_t pid;
    // Check to see if it is a foreground job.

    // If pid is 0, that means there is no foreground job. 
    if ((pid = fgpid(jobs)) != 0) {
        // In our case, sig is equal to SIGINT, which sends an interrupt to the
        // foreground pid with '-pid'.
        kill(-pid, sig);
    }
    return;
}

/////////////////////////////////////////////////////////////////////////////
//
// sigtstp_handler - The kernel sends a SIGTSTP to the shell whenever
//     the user types ctrl-z at the keyboard. Catch it and suspend the
//     foreground job by sending it a SIGTSTP.  
//

void sigtstp_handler(int sig) {
    pid_t pid; // Variable to hold process ID

    // Check if there is a foreground job running (pid != 0)
    if ((pid = fgpid(jobs)) != 0) {
        // Send the SIGTSTP signal to the foreground process group
        // This will pause the execution of the foreground job
        kill(-pid, sig);
    }

    return;
}
/*********************
 * End signal handlers
 *********************/