#include <stdio.h>
#include "cs1300bmp.h"
#include <iostream>
#include <fstream>
#include <stdlib.h>
#include "Filter.h"

using namespace std;

#include "rdtsc.h"

//
// Forward declare the functions
//
Filter * readFilter(string filename);
double applyFilter(Filter *filter, cs1300bmp *input, cs1300bmp *output);

int
main(int argc, char **argv)
{

  if ( argc < 2) {
    fprintf(stderr,"Usage: %s filter inputfile1 inputfile2 .... \n", argv[0]);
  }

  //
  // Convert to C++ strings to simplify manipulation
  //
  string filtername = argv[1];

  //
  // remove any ".filter" in the filtername
  //
  string filterOutputName = filtername;
  string::size_type loc = filterOutputName.find(".filter");
  if (loc != string::npos) {
    //
    // Remove the ".filter" name, which should occur on all the provided filters
    //
    filterOutputName = filtername.substr(0, loc);
  }

  Filter *filter = readFilter(filtername);

  double sum = 0.0;
  int samples = 0;

  for (int inNum = 2; inNum < argc; inNum++) {
    string inputFilename = argv[inNum];
    string outputFilename = "filtered-" + filterOutputName + "-" + inputFilename;
    struct cs1300bmp *input = new struct cs1300bmp;
    struct cs1300bmp *output = new struct cs1300bmp;
    int ok = cs1300bmp_readfile( (char *) inputFilename.c_str(), input);

    if ( ok ) {
      double sample = applyFilter(filter, input, output);
      sum += sample;
      samples++;
      cs1300bmp_writefile((char *) outputFilename.c_str(), output);
    }
    delete input;
    delete output;
  }
  fprintf(stdout, "Average cycles per sample is %f\n", sum / samples);

}

class Filter *
readFilter(string filename)
{
  ifstream input(filename.c_str());

  if ( ! input.bad() ) {
    int size = 0;
    input >> size;
    Filter *filter = new Filter(size);
    int div;
    input >> div;
    filter -> setDivisor(div);
    for (int i=0; i < size; i++) {
      for (int j=0; j < size; j++) {
	int value;
	input >> value;
	filter -> set(i,j,value);
      }
    }
    return filter;
  } else {
    cerr << "Bad input in readFilter:" << filename << endl;
    exit(-1);
  }
}


double applyFilter(class Filter *filter, cs1300bmp *input, cs1300bmp *output)
{
  long long cycStart, cycStop;

  cycStart = rdtscll();

  output->width = input->width;
  output->height = input->height;

  int iwidth = input->width - 1;
  int iheight = input->height - 1;
  int div = filter->getDivisor();

  int outColor1, outColor2, outColor3;

  int filter00 = filter->get(0, 0);
  int filter01 = filter->get(0, 1);
  int filter02 = filter->get(0, 2);
  int filter10 = filter->get(1, 0);
  int filter11 = filter->get(1, 1);
  int filter12 = filter->get(1, 2);
  int filter20 = filter->get(2, 0);
  int filter21 = filter->get(2, 1);
  int filter22 = filter->get(2, 2);

  for (int row = 1; row < iheight; row++) {
    int rownum = row - 1;
    int rownum2 = row + 1;

    for (int col = 1; col < iwidth; col++) {

      // Process pixel 1
      outColor1 = 0;
      outColor2 = 0;
      outColor3 = 0;

      outColor1 += (input->color[0][rownum][col - 1] * filter00) +
                   (input->color[0][rownum][col] * filter01) +
                   (input->color[0][rownum][col + 1] * filter02) +
                   (input->color[0][row][col - 1] * filter10) +
                   (input->color[0][row][col] * filter11) +
                   (input->color[0][row][col + 1] * filter12) +
                   (input->color[0][rownum2][col - 1] * filter20) +
                   (input->color[0][rownum2][col] * filter21) +
                   (input->color[0][rownum2][col + 1] * filter22);

      outColor2 += (input->color[1][rownum][col - 1] * filter00) +
                   (input->color[1][rownum][col] * filter01) +
                   (input->color[1][rownum][col + 1] * filter02) +
                   (input->color[1][row][col - 1] * filter10) +
                   (input->color[1][row][col] * filter11) +
                   (input->color[1][row][col + 1] * filter12) +
                   (input->color[1][rownum2][col - 1] * filter20) +
                   (input->color[1][rownum2][col] * filter21) +
                   (input->color[1][rownum2][col + 1] * filter22);

      outColor3 += (input->color[2][rownum][col - 1] * filter00) +
                   (input->color[2][rownum][col] * filter01) +
                   (input->color[2][rownum][col + 1] * filter02) +
                   (input->color[2][row][col - 1] * filter10) +
                   (input->color[2][row][col] * filter11) +
                   (input->color[2][row][col + 1] * filter12) +
                   (input->color[2][rownum2][col - 1] * filter20) +
                   (input->color[2][rownum2][col] * filter21) +
                   (input->color[2][rownum2][col + 1] * filter22);

      if (div != 1) {
        outColor1 /= div;
        outColor2 /= div;
        outColor3 /= div;
      }

      // Clamp pixel colors
      outColor1 = (outColor1 < 0) ? 0 : (outColor1 > 255) ? 255 : outColor1;
      outColor2 = (outColor2 < 0) ? 0 : (outColor2 > 255) ? 255 : outColor2;
      outColor3 = (outColor3 < 0) ? 0 : (outColor3 > 255) ? 255 : outColor3;

      // Store the computed colors
      output->color[0][row][col] = outColor1;
      output->color[1][row][col] = outColor2;
      output->color[2][row][col] = outColor3;
    }
  }

  cycStop = rdtscll();
  double diff = cycStop - cycStart;
  double diffPerPixel = diff / (output->width * output->height);
  fprintf(stderr, "Took %f cycles to process, or %f cycles per pixel\n",
          diff, diffPerPixel);
  return diffPerPixel;
}