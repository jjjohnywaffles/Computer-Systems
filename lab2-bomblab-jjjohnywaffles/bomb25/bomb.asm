
bomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 3f 00 00 	mov    0x3fd9(%rip),%rax        # 4fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 d2 3e 00 00    	push   0x3ed2(%rip)        # 4ef8 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 d3 3e 00 00 	bnd jmp *0x3ed3(%rip)        # 4f00 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	push   $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	push   $0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64 
    1054:	68 02 00 00 00       	push   $0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    105f:	90                   	nop
    1060:	f3 0f 1e fa          	endbr64 
    1064:	68 03 00 00 00       	push   $0x3
    1069:	f2 e9 b1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    106f:	90                   	nop
    1070:	f3 0f 1e fa          	endbr64 
    1074:	68 04 00 00 00       	push   $0x4
    1079:	f2 e9 a1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    107f:	90                   	nop
    1080:	f3 0f 1e fa          	endbr64 
    1084:	68 05 00 00 00       	push   $0x5
    1089:	f2 e9 91 ff ff ff    	bnd jmp 1020 <_init+0x20>
    108f:	90                   	nop
    1090:	f3 0f 1e fa          	endbr64 
    1094:	68 06 00 00 00       	push   $0x6
    1099:	f2 e9 81 ff ff ff    	bnd jmp 1020 <_init+0x20>
    109f:	90                   	nop
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	68 07 00 00 00       	push   $0x7
    10a9:	f2 e9 71 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10af:	90                   	nop
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	68 08 00 00 00       	push   $0x8
    10b9:	f2 e9 61 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10bf:	90                   	nop
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	68 09 00 00 00       	push   $0x9
    10c9:	f2 e9 51 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10cf:	90                   	nop
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	68 0a 00 00 00       	push   $0xa
    10d9:	f2 e9 41 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10df:	90                   	nop
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	68 0b 00 00 00       	push   $0xb
    10e9:	f2 e9 31 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10ef:	90                   	nop
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	68 0c 00 00 00       	push   $0xc
    10f9:	f2 e9 21 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10ff:	90                   	nop
    1100:	f3 0f 1e fa          	endbr64 
    1104:	68 0d 00 00 00       	push   $0xd
    1109:	f2 e9 11 ff ff ff    	bnd jmp 1020 <_init+0x20>
    110f:	90                   	nop
    1110:	f3 0f 1e fa          	endbr64 
    1114:	68 0e 00 00 00       	push   $0xe
    1119:	f2 e9 01 ff ff ff    	bnd jmp 1020 <_init+0x20>
    111f:	90                   	nop
    1120:	f3 0f 1e fa          	endbr64 
    1124:	68 0f 00 00 00       	push   $0xf
    1129:	f2 e9 f1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    112f:	90                   	nop
    1130:	f3 0f 1e fa          	endbr64 
    1134:	68 10 00 00 00       	push   $0x10
    1139:	f2 e9 e1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    113f:	90                   	nop
    1140:	f3 0f 1e fa          	endbr64 
    1144:	68 11 00 00 00       	push   $0x11
    1149:	f2 e9 d1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    114f:	90                   	nop
    1150:	f3 0f 1e fa          	endbr64 
    1154:	68 12 00 00 00       	push   $0x12
    1159:	f2 e9 c1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    115f:	90                   	nop
    1160:	f3 0f 1e fa          	endbr64 
    1164:	68 13 00 00 00       	push   $0x13
    1169:	f2 e9 b1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    116f:	90                   	nop
    1170:	f3 0f 1e fa          	endbr64 
    1174:	68 14 00 00 00       	push   $0x14
    1179:	f2 e9 a1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    117f:	90                   	nop
    1180:	f3 0f 1e fa          	endbr64 
    1184:	68 15 00 00 00       	push   $0x15
    1189:	f2 e9 91 fe ff ff    	bnd jmp 1020 <_init+0x20>
    118f:	90                   	nop
    1190:	f3 0f 1e fa          	endbr64 
    1194:	68 16 00 00 00       	push   $0x16
    1199:	f2 e9 81 fe ff ff    	bnd jmp 1020 <_init+0x20>
    119f:	90                   	nop
    11a0:	f3 0f 1e fa          	endbr64 
    11a4:	68 17 00 00 00       	push   $0x17
    11a9:	f2 e9 71 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11af:	90                   	nop
    11b0:	f3 0f 1e fa          	endbr64 
    11b4:	68 18 00 00 00       	push   $0x18
    11b9:	f2 e9 61 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11bf:	90                   	nop
    11c0:	f3 0f 1e fa          	endbr64 
    11c4:	68 19 00 00 00       	push   $0x19
    11c9:	f2 e9 51 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11cf:	90                   	nop

Disassembly of section .plt.got:

00000000000011d0 <__cxa_finalize@plt>:
    11d0:	f3 0f 1e fa          	endbr64 
    11d4:	f2 ff 25 1d 3e 00 00 	bnd jmp *0x3e1d(%rip)        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    11db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

00000000000011e0 <getenv@plt>:
    11e0:	f3 0f 1e fa          	endbr64 
    11e4:	f2 ff 25 1d 3d 00 00 	bnd jmp *0x3d1d(%rip)        # 4f08 <getenv@GLIBC_2.2.5>
    11eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000011f0 <__errno_location@plt>:
    11f0:	f3 0f 1e fa          	endbr64 
    11f4:	f2 ff 25 15 3d 00 00 	bnd jmp *0x3d15(%rip)        # 4f10 <__errno_location@GLIBC_2.2.5>
    11fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001200 <strcpy@plt>:
    1200:	f3 0f 1e fa          	endbr64 
    1204:	f2 ff 25 0d 3d 00 00 	bnd jmp *0x3d0d(%rip)        # 4f18 <strcpy@GLIBC_2.2.5>
    120b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001210 <puts@plt>:
    1210:	f3 0f 1e fa          	endbr64 
    1214:	f2 ff 25 05 3d 00 00 	bnd jmp *0x3d05(%rip)        # 4f20 <puts@GLIBC_2.2.5>
    121b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001220 <write@plt>:
    1220:	f3 0f 1e fa          	endbr64 
    1224:	f2 ff 25 fd 3c 00 00 	bnd jmp *0x3cfd(%rip)        # 4f28 <write@GLIBC_2.2.5>
    122b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001230 <strlen@plt>:
    1230:	f3 0f 1e fa          	endbr64 
    1234:	f2 ff 25 f5 3c 00 00 	bnd jmp *0x3cf5(%rip)        # 4f30 <strlen@GLIBC_2.2.5>
    123b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001240 <alarm@plt>:
    1240:	f3 0f 1e fa          	endbr64 
    1244:	f2 ff 25 ed 3c 00 00 	bnd jmp *0x3ced(%rip)        # 4f38 <alarm@GLIBC_2.2.5>
    124b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001250 <close@plt>:
    1250:	f3 0f 1e fa          	endbr64 
    1254:	f2 ff 25 e5 3c 00 00 	bnd jmp *0x3ce5(%rip)        # 4f40 <close@GLIBC_2.2.5>
    125b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001260 <read@plt>:
    1260:	f3 0f 1e fa          	endbr64 
    1264:	f2 ff 25 dd 3c 00 00 	bnd jmp *0x3cdd(%rip)        # 4f48 <read@GLIBC_2.2.5>
    126b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001270 <fgets@plt>:
    1270:	f3 0f 1e fa          	endbr64 
    1274:	f2 ff 25 d5 3c 00 00 	bnd jmp *0x3cd5(%rip)        # 4f50 <fgets@GLIBC_2.2.5>
    127b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001280 <strcmp@plt>:
    1280:	f3 0f 1e fa          	endbr64 
    1284:	f2 ff 25 cd 3c 00 00 	bnd jmp *0x3ccd(%rip)        # 4f58 <strcmp@GLIBC_2.2.5>
    128b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001290 <signal@plt>:
    1290:	f3 0f 1e fa          	endbr64 
    1294:	f2 ff 25 c5 3c 00 00 	bnd jmp *0x3cc5(%rip)        # 4f60 <signal@GLIBC_2.2.5>
    129b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012a0 <gethostbyname@plt>:
    12a0:	f3 0f 1e fa          	endbr64 
    12a4:	f2 ff 25 bd 3c 00 00 	bnd jmp *0x3cbd(%rip)        # 4f68 <gethostbyname@GLIBC_2.2.5>
    12ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012b0 <__memmove_chk@plt>:
    12b0:	f3 0f 1e fa          	endbr64 
    12b4:	f2 ff 25 b5 3c 00 00 	bnd jmp *0x3cb5(%rip)        # 4f70 <__memmove_chk@GLIBC_2.3.4>
    12bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012c0 <strtol@plt>:
    12c0:	f3 0f 1e fa          	endbr64 
    12c4:	f2 ff 25 ad 3c 00 00 	bnd jmp *0x3cad(%rip)        # 4f78 <strtol@GLIBC_2.2.5>
    12cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012d0 <fflush@plt>:
    12d0:	f3 0f 1e fa          	endbr64 
    12d4:	f2 ff 25 a5 3c 00 00 	bnd jmp *0x3ca5(%rip)        # 4f80 <fflush@GLIBC_2.2.5>
    12db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012e0 <__isoc99_sscanf@plt>:
    12e0:	f3 0f 1e fa          	endbr64 
    12e4:	f2 ff 25 9d 3c 00 00 	bnd jmp *0x3c9d(%rip)        # 4f88 <__isoc99_sscanf@GLIBC_2.7>
    12eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012f0 <__printf_chk@plt>:
    12f0:	f3 0f 1e fa          	endbr64 
    12f4:	f2 ff 25 95 3c 00 00 	bnd jmp *0x3c95(%rip)        # 4f90 <__printf_chk@GLIBC_2.3.4>
    12fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001300 <fopen@plt>:
    1300:	f3 0f 1e fa          	endbr64 
    1304:	f2 ff 25 8d 3c 00 00 	bnd jmp *0x3c8d(%rip)        # 4f98 <fopen@GLIBC_2.2.5>
    130b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001310 <exit@plt>:
    1310:	f3 0f 1e fa          	endbr64 
    1314:	f2 ff 25 85 3c 00 00 	bnd jmp *0x3c85(%rip)        # 4fa0 <exit@GLIBC_2.2.5>
    131b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001320 <connect@plt>:
    1320:	f3 0f 1e fa          	endbr64 
    1324:	f2 ff 25 7d 3c 00 00 	bnd jmp *0x3c7d(%rip)        # 4fa8 <connect@GLIBC_2.2.5>
    132b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001330 <__fprintf_chk@plt>:
    1330:	f3 0f 1e fa          	endbr64 
    1334:	f2 ff 25 75 3c 00 00 	bnd jmp *0x3c75(%rip)        # 4fb0 <__fprintf_chk@GLIBC_2.3.4>
    133b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001340 <sleep@plt>:
    1340:	f3 0f 1e fa          	endbr64 
    1344:	f2 ff 25 6d 3c 00 00 	bnd jmp *0x3c6d(%rip)        # 4fb8 <sleep@GLIBC_2.2.5>
    134b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001350 <__ctype_b_loc@plt>:
    1350:	f3 0f 1e fa          	endbr64 
    1354:	f2 ff 25 65 3c 00 00 	bnd jmp *0x3c65(%rip)        # 4fc0 <__ctype_b_loc@GLIBC_2.3>
    135b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001360 <__sprintf_chk@plt>:
    1360:	f3 0f 1e fa          	endbr64 
    1364:	f2 ff 25 5d 3c 00 00 	bnd jmp *0x3c5d(%rip)        # 4fc8 <__sprintf_chk@GLIBC_2.3.4>
    136b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001370 <socket@plt>:
    1370:	f3 0f 1e fa          	endbr64 
    1374:	f2 ff 25 55 3c 00 00 	bnd jmp *0x3c55(%rip)        # 4fd0 <socket@GLIBC_2.2.5>
    137b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000001380 <_start>:
    1380:	f3 0f 1e fa          	endbr64 
    1384:	31 ed                	xor    %ebp,%ebp
    1386:	49 89 d1             	mov    %rdx,%r9
    1389:	5e                   	pop    %rsi
    138a:	48 89 e2             	mov    %rsp,%rdx
    138d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1391:	50                   	push   %rax
    1392:	54                   	push   %rsp
    1393:	45 31 c0             	xor    %r8d,%r8d
    1396:	31 c9                	xor    %ecx,%ecx
    1398:	48 8d 3d ca 00 00 00 	lea    0xca(%rip),%rdi        # 1469 <main>
    139f:	ff 15 33 3c 00 00    	call   *0x3c33(%rip)        # 4fd8 <__libc_start_main@GLIBC_2.34>
    13a5:	f4                   	hlt    
    13a6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    13ad:	00 00 00 

00000000000013b0 <deregister_tm_clones>:
    13b0:	48 8d 3d c9 46 00 00 	lea    0x46c9(%rip),%rdi        # 5a80 <stdout@GLIBC_2.2.5>
    13b7:	48 8d 05 c2 46 00 00 	lea    0x46c2(%rip),%rax        # 5a80 <stdout@GLIBC_2.2.5>
    13be:	48 39 f8             	cmp    %rdi,%rax
    13c1:	74 15                	je     13d8 <deregister_tm_clones+0x28>
    13c3:	48 8b 05 16 3c 00 00 	mov    0x3c16(%rip),%rax        # 4fe0 <_ITM_deregisterTMCloneTable@Base>
    13ca:	48 85 c0             	test   %rax,%rax
    13cd:	74 09                	je     13d8 <deregister_tm_clones+0x28>
    13cf:	ff e0                	jmp    *%rax
    13d1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    13d8:	c3                   	ret    
    13d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000013e0 <register_tm_clones>:
    13e0:	48 8d 3d 99 46 00 00 	lea    0x4699(%rip),%rdi        # 5a80 <stdout@GLIBC_2.2.5>
    13e7:	48 8d 35 92 46 00 00 	lea    0x4692(%rip),%rsi        # 5a80 <stdout@GLIBC_2.2.5>
    13ee:	48 29 fe             	sub    %rdi,%rsi
    13f1:	48 89 f0             	mov    %rsi,%rax
    13f4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    13f8:	48 c1 f8 03          	sar    $0x3,%rax
    13fc:	48 01 c6             	add    %rax,%rsi
    13ff:	48 d1 fe             	sar    %rsi
    1402:	74 14                	je     1418 <register_tm_clones+0x38>
    1404:	48 8b 05 e5 3b 00 00 	mov    0x3be5(%rip),%rax        # 4ff0 <_ITM_registerTMCloneTable@Base>
    140b:	48 85 c0             	test   %rax,%rax
    140e:	74 08                	je     1418 <register_tm_clones+0x38>
    1410:	ff e0                	jmp    *%rax
    1412:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1418:	c3                   	ret    
    1419:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001420 <__do_global_dtors_aux>:
    1420:	f3 0f 1e fa          	endbr64 
    1424:	80 3d 7d 46 00 00 00 	cmpb   $0x0,0x467d(%rip)        # 5aa8 <completed.0>
    142b:	75 2b                	jne    1458 <__do_global_dtors_aux+0x38>
    142d:	55                   	push   %rbp
    142e:	48 83 3d c2 3b 00 00 	cmpq   $0x0,0x3bc2(%rip)        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    1435:	00 
    1436:	48 89 e5             	mov    %rsp,%rbp
    1439:	74 0c                	je     1447 <__do_global_dtors_aux+0x27>
    143b:	48 8b 3d c6 3b 00 00 	mov    0x3bc6(%rip),%rdi        # 5008 <__dso_handle>
    1442:	e8 89 fd ff ff       	call   11d0 <__cxa_finalize@plt>
    1447:	e8 64 ff ff ff       	call   13b0 <deregister_tm_clones>
    144c:	c6 05 55 46 00 00 01 	movb   $0x1,0x4655(%rip)        # 5aa8 <completed.0>
    1453:	5d                   	pop    %rbp
    1454:	c3                   	ret    
    1455:	0f 1f 00             	nopl   (%rax)
    1458:	c3                   	ret    
    1459:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001460 <frame_dummy>:
    1460:	f3 0f 1e fa          	endbr64 
    1464:	e9 77 ff ff ff       	jmp    13e0 <register_tm_clones>

0000000000001469 <main>:
    1469:	f3 0f 1e fa          	endbr64 
    146d:	53                   	push   %rbx
    146e:	83 ff 01             	cmp    $0x1,%edi
    1471:	0f 84 f8 00 00 00    	je     156f <main+0x106>
    1477:	48 89 f3             	mov    %rsi,%rbx
    147a:	83 ff 02             	cmp    $0x2,%edi
    147d:	0f 85 21 01 00 00    	jne    15a4 <main+0x13b>
    1483:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    1487:	48 8d 35 76 1b 00 00 	lea    0x1b76(%rip),%rsi        # 3004 <_IO_stdin_used+0x4>
    148e:	e8 6d fe ff ff       	call   1300 <fopen@plt>
    1493:	48 89 05 16 46 00 00 	mov    %rax,0x4616(%rip)        # 5ab0 <infile>
    149a:	48 85 c0             	test   %rax,%rax
    149d:	0f 84 df 00 00 00    	je     1582 <main+0x119>
    14a3:	e8 92 06 00 00       	call   1b3a <initialize_bomb>
    14a8:	48 8d 3d d9 1b 00 00 	lea    0x1bd9(%rip),%rdi        # 3088 <_IO_stdin_used+0x88>
    14af:	e8 5c fd ff ff       	call   1210 <puts@plt>
    14b4:	48 8d 3d 0d 1c 00 00 	lea    0x1c0d(%rip),%rdi        # 30c8 <_IO_stdin_used+0xc8>
    14bb:	e8 50 fd ff ff       	call   1210 <puts@plt>
    14c0:	e8 ae 08 00 00       	call   1d73 <read_line>
    14c5:	48 89 c7             	mov    %rax,%rdi
    14c8:	e8 fa 00 00 00       	call   15c7 <phase_1>
    14cd:	e8 d0 09 00 00       	call   1ea2 <phase_defused>
    14d2:	48 8d 3d 1f 1c 00 00 	lea    0x1c1f(%rip),%rdi        # 30f8 <_IO_stdin_used+0xf8>
    14d9:	e8 32 fd ff ff       	call   1210 <puts@plt>
    14de:	e8 90 08 00 00       	call   1d73 <read_line>
    14e3:	48 89 c7             	mov    %rax,%rdi
    14e6:	e8 00 01 00 00       	call   15eb <phase_2>
    14eb:	e8 b2 09 00 00       	call   1ea2 <phase_defused>
    14f0:	48 8d 3d 46 1b 00 00 	lea    0x1b46(%rip),%rdi        # 303d <_IO_stdin_used+0x3d>
    14f7:	e8 14 fd ff ff       	call   1210 <puts@plt>
    14fc:	e8 72 08 00 00       	call   1d73 <read_line>
    1501:	48 89 c7             	mov    %rax,%rdi
    1504:	e8 31 01 00 00       	call   163a <phase_3>
    1509:	e8 94 09 00 00       	call   1ea2 <phase_defused>
    150e:	48 8d 3d 46 1b 00 00 	lea    0x1b46(%rip),%rdi        # 305b <_IO_stdin_used+0x5b>
    1515:	e8 f6 fc ff ff       	call   1210 <puts@plt>
    151a:	e8 54 08 00 00       	call   1d73 <read_line>
    151f:	48 89 c7             	mov    %rax,%rdi
    1522:	e8 a7 02 00 00       	call   17ce <phase_4>
    1527:	e8 76 09 00 00       	call   1ea2 <phase_defused>
    152c:	48 8d 3d f5 1b 00 00 	lea    0x1bf5(%rip),%rdi        # 3128 <_IO_stdin_used+0x128>
    1533:	e8 d8 fc ff ff       	call   1210 <puts@plt>
    1538:	e8 36 08 00 00       	call   1d73 <read_line>
    153d:	48 89 c7             	mov    %rax,%rdi
    1540:	e8 e6 02 00 00       	call   182b <phase_5>
    1545:	e8 58 09 00 00       	call   1ea2 <phase_defused>
    154a:	48 8d 3d 19 1b 00 00 	lea    0x1b19(%rip),%rdi        # 306a <_IO_stdin_used+0x6a>
    1551:	e8 ba fc ff ff       	call   1210 <puts@plt>
    1556:	e8 18 08 00 00       	call   1d73 <read_line>
    155b:	48 89 c7             	mov    %rax,%rdi
    155e:	e8 14 03 00 00       	call   1877 <phase_6>
    1563:	e8 3a 09 00 00       	call   1ea2 <phase_defused>
    1568:	b8 00 00 00 00       	mov    $0x0,%eax
    156d:	5b                   	pop    %rbx
    156e:	c3                   	ret    
    156f:	48 8b 05 1a 45 00 00 	mov    0x451a(%rip),%rax        # 5a90 <stdin@GLIBC_2.2.5>
    1576:	48 89 05 33 45 00 00 	mov    %rax,0x4533(%rip)        # 5ab0 <infile>
    157d:	e9 21 ff ff ff       	jmp    14a3 <main+0x3a>
    1582:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
    1586:	48 8b 13             	mov    (%rbx),%rdx
    1589:	48 8d 35 76 1a 00 00 	lea    0x1a76(%rip),%rsi        # 3006 <_IO_stdin_used+0x6>
    1590:	bf 01 00 00 00       	mov    $0x1,%edi
    1595:	e8 56 fd ff ff       	call   12f0 <__printf_chk@plt>
    159a:	bf 08 00 00 00       	mov    $0x8,%edi
    159f:	e8 6c fd ff ff       	call   1310 <exit@plt>
    15a4:	48 8b 16             	mov    (%rsi),%rdx
    15a7:	48 8d 35 75 1a 00 00 	lea    0x1a75(%rip),%rsi        # 3023 <_IO_stdin_used+0x23>
    15ae:	bf 01 00 00 00       	mov    $0x1,%edi
    15b3:	b8 00 00 00 00       	mov    $0x0,%eax
    15b8:	e8 33 fd ff ff       	call   12f0 <__printf_chk@plt>
    15bd:	bf 08 00 00 00       	mov    $0x8,%edi
    15c2:	e8 49 fd ff ff       	call   1310 <exit@plt>

00000000000015c7 <phase_1>:
    15c7:	f3 0f 1e fa          	endbr64 
    15cb:	48 83 ec 08          	sub    $0x8,%rsp
    15cf:	48 8d 35 7a 1b 00 00 	lea    0x1b7a(%rip),%rsi        # 3150 <_IO_stdin_used+0x150>
    15d6:	e8 ed 04 00 00       	call   1ac8 <strings_not_equal>
    15db:	85 c0                	test   %eax,%eax
    15dd:	75 05                	jne    15e4 <phase_1+0x1d>
    15df:	48 83 c4 08          	add    $0x8,%rsp
    15e3:	c3                   	ret    
    15e4:	e8 f8 06 00 00       	call   1ce1 <explode_bomb>
    15e9:	eb f4                	jmp    15df <phase_1+0x18>

00000000000015eb <phase_2>:
    15eb:	f3 0f 1e fa          	endbr64 
    15ef:	55                   	push   %rbp
    15f0:	53                   	push   %rbx
    15f1:	48 83 ec 28          	sub    $0x28,%rsp
    15f5:	48 89 e6             	mov    %rsp,%rsi
    15f8:	e8 31 07 00 00       	call   1d2e <read_six_numbers>
    15fd:	83 3c 24 00          	cmpl   $0x0,(%rsp)
    1601:	75 07                	jne    160a <phase_2+0x1f>
    1603:	83 7c 24 04 01       	cmpl   $0x1,0x4(%rsp)
    1608:	74 05                	je     160f <phase_2+0x24>
    160a:	e8 d2 06 00 00       	call   1ce1 <explode_bomb>
    160f:	48 89 e3             	mov    %rsp,%rbx
    1612:	48 8d 6c 24 10       	lea    0x10(%rsp),%rbp
    1617:	eb 09                	jmp    1622 <phase_2+0x37>
    1619:	48 83 c3 04          	add    $0x4,%rbx
    161d:	48 39 eb             	cmp    %rbp,%rbx
    1620:	74 11                	je     1633 <phase_2+0x48>
    1622:	8b 43 04             	mov    0x4(%rbx),%eax
    1625:	03 03                	add    (%rbx),%eax
    1627:	39 43 08             	cmp    %eax,0x8(%rbx)
    162a:	74 ed                	je     1619 <phase_2+0x2e>
    162c:	e8 b0 06 00 00       	call   1ce1 <explode_bomb>
    1631:	eb e6                	jmp    1619 <phase_2+0x2e>
    1633:	48 83 c4 28          	add    $0x28,%rsp
    1637:	5b                   	pop    %rbx
    1638:	5d                   	pop    %rbp
    1639:	c3                   	ret    

000000000000163a <phase_3>:
    163a:	f3 0f 1e fa          	endbr64 
    163e:	48 83 ec 18          	sub    $0x18,%rsp
    1642:	48 8d 4c 24 07       	lea    0x7(%rsp),%rcx
    1647:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
    164c:	4c 8d 44 24 08       	lea    0x8(%rsp),%r8
    1651:	48 8d 35 5e 1b 00 00 	lea    0x1b5e(%rip),%rsi        # 31b6 <_IO_stdin_used+0x1b6>
    1658:	b8 00 00 00 00       	mov    $0x0,%eax
    165d:	e8 7e fc ff ff       	call   12e0 <__isoc99_sscanf@plt>
    1662:	83 f8 02             	cmp    $0x2,%eax
    1665:	7e 20                	jle    1687 <phase_3+
    0x4d>
    1667:	83 7c 24 0c 07       	cmpl   $0x7,0xc(%rsp)
    166c:	0f 87 06 01 00 00    	ja     1778 <phase_3+0x13e>
    1672:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    1676:	48 8d 15 43 1b 00 00 	lea    0x1b43(%rip),%rdx        # 31c0 <_IO_stdin_used+0x1c0>
    167d:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
    1681:	48 01 d0             	add    %rdx,%rax
    1684:	3e ff e0             	notrack jmp *%rax
    1687:	e8 55 06 00 00       	call   1ce1 <explode_bomb>
    168c:	eb d9                	jmp    1667 <phase_3+0x2d>
    168e:	b8 71 00 00 00       	mov    $0x71,%eax
    1693:	81 7c 24 08 a6 03 00 	cmpl   $0x3a6,0x8(%rsp)
    169a:	00 
    169b:	0f 84 e1 00 00 00    	je     1782 <phase_3+0x148>
    16a1:	e8 3b 06 00 00       	call   1ce1 <explode_bomb>
    16a6:	b8 71 00 00 00       	mov    $0x71,%eax
    16ab:	e9 d2 00 00 00       	jmp    1782 <phase_3+0x148>
    16b0:	b8 65 00 00 00       	mov    $0x65,%eax
    16b5:	81 7c 24 08 fd 00 00 	cmpl   $0xfd,0x8(%rsp)
    16bc:	00 
    16bd:	0f 84 bf 00 00 00    	je     1782 <phase_3+0x148>
    16c3:	e8 19 06 00 00       	call   1ce1 <explode_bomb>
    16c8:	b8 65 00 00 00       	mov    $0x65,%eax
    16cd:	e9 b0 00 00 00       	jmp    1782 <phase_3+0x148>
    16d2:	b8 69 00 00 00       	mov    $0x69,%eax
    16d7:	81 7c 24 08 3d 03 00 	cmpl   $0x33d,0x8(%rsp)
    16de:	00 
    16df:	0f 84 9d 00 00 00    	je     1782 <phase_3+0x148>
    16e5:	e8 f7 05 00 00       	call   1ce1 <explode_bomb>
    16ea:	b8 69 00 00 00       	mov    $0x69,%eax
    16ef:	e9 8e 00 00 00       	jmp    1782 <phase_3+0x148>
    16f4:	b8 64 00 00 00       	mov    $0x64,%eax
    16f9:	81 7c 24 08 20 03 00 	cmpl   $0x320,0x8(%rsp)
    1700:	00 
    1701:	74 7f                	je     1782 <phase_3+0x148>
    1703:	e8 d9 05 00 00       	call   1ce1 <explode_bomb>
    1708:	b8 64 00 00 00       	mov    $0x64,%eax
    170d:	eb 73                	jmp    1782 <phase_3+0x148>
    170f:	b8 72 00 00 00       	mov    $0x72,%eax
    1714:	81 7c 24 08 2c 02 00 	cmpl   $0x22c,0x8(%rsp)
    171b:	00 
    171c:	74 64                	je     1782 <phase_3+0x148>
    171e:	e8 be 05 00 00       	call   1ce1 <explode_bomb>
    1723:	b8 72 00 00 00       	mov    $0x72,%eax
    1728:	eb 58                	jmp    1782 <phase_3+0x148>
    172a:	b8 69 00 00 00       	mov    $0x69,%eax
    172f:	81 7c 24 08 0b 03 00 	cmpl   $0x30b,0x8(%rsp)
    1736:	00 
    1737:	74 49                	je     1782 <phase_3+0x148>
    1739:	e8 a3 05 00 00       	call   1ce1 <explode_bomb>
    173e:	b8 69 00 00 00       	mov    $0x69,%eax
    1743:	eb 3d                	jmp    1782 <phase_3+0x148>
    1745:	b8 73 00 00 00       	mov    $0x73,%eax
    174a:	83 7c 24 08 4b       	cmpl   $0x4b,0x8(%rsp)
    174f:	74 31                	je     1782 <phase_3+0x148>
    1751:	e8 8b 05 00 00       	call   1ce1 <explode_bomb>
    1756:	b8 73 00 00 00       	mov    $0x73,%eax
    175b:	eb 25                	jmp    1782 <phase_3+0x148>
    175d:	b8 6d 00 00 00       	mov    $0x6d,%eax
    1762:	81 7c 24 08 d4 03 00 	cmpl   $0x3d4,0x8(%rsp)
    1769:	00 
    176a:	74 16                	je     1782 <phase_3+0x148>
    176c:	e8 70 05 00 00       	call   1ce1 <explode_bomb>
    1771:	b8 6d 00 00 00       	mov    $0x6d,%eax
    1776:	eb 0a                	jmp    1782 <phase_3+0x148>
    1778:	e8 64 05 00 00       	call   1ce1 <explode_bomb>
    177d:	b8 6f 00 00 00       	mov    $0x6f,%eax
    1782:	38 44 24 07          	cmp    %al,0x7(%rsp)
    1786:	75 05                	jne    178d <phase_3+0x153>
    1788:	48 83 c4 18          	add    $0x18,%rsp
    178c:	c3                   	ret    
    178d:	e8 4f 05 00 00       	call   1ce1 <explode_bomb>
    1792:	eb f4                	jmp    1788 <phase_3+0x14e>

0000000000001794 <func4>:
    1794:	f3 0f 1e fa          	endbr64 
    1798:	48 83 ec 08          	sub    $0x8,%rsp
    179c:	89 d1                	mov    %edx,%ecx
    179e:	29 f1                	sub    %esi,%ecx
    17a0:	d1 e9                	shr    %ecx
    17a2:	01 f1                	add    %esi,%ecx
    17a4:	39 f9                	cmp    %edi,%ecx
    17a6:	77 0c                	ja     17b4 <func4+0x20>
    17a8:	b8 00 00 00 00       	mov    $0x0,%eax
    17ad:	72 11                	jb     17c0 <func4+0x2c>
    17af:	48 83 c4 08          	add    $0x8,%rsp
    17b3:	c3                   	ret    
    17b4:	8d 51 ff             	lea    -0x1(%rcx),%edx
    17b7:	e8 d8 ff ff ff       	call   1794 <func4>
    17bc:	01 c0                	add    %eax,%eax
    17be:	eb ef                	jmp    17af <func4+0x1b>
    17c0:	8d 71 01             	lea    0x1(%rcx),%esi
    17c3:	e8 cc ff ff ff       	call   1794 <func4>
    17c8:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
    17cc:	eb e1                	jmp    17af <func4+0x1b>

00000000000017ce <phase_4>:
    17ce:	f3 0f 1e fa          	endbr64 
    17d2:	48 83 ec 18          	sub    $0x18,%rsp
    17d6:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
    17db:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
    17e0:	48 8d 35 df 1b 00 00 	lea    0x1bdf(%rip),%rsi        # 33c6 <array.0+0x1e6>
    17e7:	b8 00 00 00 00       	mov    $0x0,%eax
    17ec:	e8 ef fa ff ff       	call   12e0 <__isoc99_sscanf@plt>
    17f1:	83 f8 02             	cmp    $0x2,%eax
    17f4:	75 07                	jne    17fd <phase_4+0x2f>
    17f6:	83 7c 24 0c 0e       	cmpl   $0xe,0xc(%rsp)
    17fb:	76 05                	jbe    1802 <phase_4+0x34>
    17fd:	e8 df 04 00 00       	call   1ce1 <explode_bomb>
    1802:	ba 0e 00 00 00       	mov    $0xe,%edx
    1807:	be 00 00 00 00       	mov    $0x0,%esi
    180c:	8b 7c 24 0c          	mov    0xc(%rsp),%edi
    1810:	e8 7f ff ff ff       	call   1794 <func4>
    1815:	83 f8 07             	cmp    $0x7,%eax
    1818:	75 07                	jne    1821 <phase_4+0x53>
    181a:	83 7c 24 08 07       	cmpl   $0x7,0x8(%rsp)
    181f:	74 05                	je     1826 <phase_4+0x58>
    1821:	e8 bb 04 00 00       	call   1ce1 <explode_bomb>
    1826:	48 83 c4 18          	add    $0x18,%rsp
    182a:	c3                   	ret    

000000000000182b <phase_5>:
    182b:	f3 0f 1e fa          	endbr64 
    182f:	53                   	push   %rbx
    1830:	48 89 fb             	mov    %rdi,%rbx
    1833:	e8 6f 02 00 00       	call   1aa7 <string_length>
    1838:	83 f8 06             	cmp    $0x6,%eax
    183b:	75 2c                	jne    1869 <phase_5+0x3e>
    183d:	48 89 d8             	mov    %rbx,%rax
    1840:	48 8d 7b 06          	lea    0x6(%rbx),%rdi
    1844:	b9 00 00 00 00       	mov    $0x0,%ecx
    1849:	48 8d 35 90 19 00 00 	lea    0x1990(%rip),%rsi        # 31e0 <array.0>
    1850:	0f b6 10             	movzbl (%rax),%edx
    1853:	83 e2 0f             	and    $0xf,%edx
    1856:	03 0c 96             	add    (%rsi,%rdx,4),%ecx
    1859:	48 83 c0 01          	add    $0x1,%rax
    185d:	48 39 f8             	cmp    %rdi,%rax
    1860:	75 ee                	jne    1850 <phase_5+0x25>
    1862:	83 f9 3c             	cmp    $0x3c,%ecx
    1865:	75 09                	jne    1870 <phase_5+0x45>
    1867:	5b                   	pop    %rbx
    1868:	c3                   	ret    
    1869:	e8 73 04 00 00       	call   1ce1 <explode_bomb>
    186e:	eb cd                	jmp    183d <phase_5+0x12>
    1870:	e8 6c 04 00 00       	call   1ce1 <explode_bomb>
    1875:	eb f0                	jmp    1867 <phase_5+0x3c>

0000000000001877 <phase_6>:
    1877:	f3 0f 1e fa          	endbr64 
    187b:	41 56                	push   %r14
    187d:	41 55                	push   %r13
    187f:	41 54                	push   %r12
    1881:	55                   	push   %rbp
    1882:	53                   	push   %rbx
    1883:	48 83 ec 50          	sub    $0x50,%rsp
    1887:	4c 8d 6c 24 30       	lea    0x30(%rsp),%r13
    188c:	4c 89 ee             	mov    %r13,%rsi
    188f:	e8 9a 04 00 00       	call   1d2e <read_six_numbers>
    1894:	41 be 01 00 00 00    	mov    $0x1,%r14d
    189a:	4d 89 ec             	mov    %r13,%r12
    189d:	eb 28                	jmp    18c7 <phase_6+0x50>
    189f:	e8 3d 04 00 00       	call   1ce1 <explode_bomb>
    18a4:	eb 30                	jmp    18d6 <phase_6+0x5f>
    18a6:	48 83 c3 01          	add    $0x1,%rbx
    18aa:	83 fb 05             	cmp    $0x5,%ebx
    18ad:	7f 10                	jg     18bf <phase_6+0x48>
    18af:	41 8b 04 9c          	mov    (%r12,%rbx,4),%eax
    18b3:	39 45 00             	cmp    %eax,0x0(%rbp)
    18b6:	75 ee                	jne    18a6 <phase_6+0x2f>
    18b8:	e8 24 04 00 00       	call   1ce1 <explode_bomb>
    18bd:	eb e7                	jmp    18a6 <phase_6+0x2f>
    18bf:	49 83 c6 01          	add    $0x1,%r14
    18c3:	49 83 c5 04          	add    $0x4,%r13
    18c7:	4c 89 ed             	mov    %r13,%rbp
    18ca:	41 8b 45 00          	mov    0x0(%r13),%eax
    18ce:	83 e8 01             	sub    $0x1,%eax
    18d1:	83 f8 05             	cmp    $0x5,%eax
    18d4:	77 c9                	ja     189f <phase_6+0x28>
    18d6:	41 83 fe 05          	cmp    $0x5,%r14d
    18da:	7f 05                	jg     18e1 <phase_6+0x6a>
    18dc:	4c 89 f3             	mov    %r14,%rbx
    18df:	eb ce                	jmp    18af <phase_6+0x38>
    18e1:	be 00 00 00 00       	mov    $0x0,%esi
    18e6:	8b 4c b4 30          	mov    0x30(%rsp,%rsi,4),%ecx
    18ea:	b8 01 00 00 00       	mov    $0x1,%eax
    18ef:	48 8d 15 3a 3d 00 00 	lea    0x3d3a(%rip),%rdx        # 5630 <node1>
    18f6:	83 f9 01             	cmp    $0x1,%ecx
    18f9:	7e 0b                	jle    1906 <phase_6+0x8f>
    18fb:	48 8b 52 08          	mov    0x8(%rdx),%rdx
    18ff:	83 c0 01             	add    $0x1,%eax
    1902:	39 c8                	cmp    %ecx,%eax
    1904:	75 f5                	jne    18fb <phase_6+0x84>
    1906:	48 89 14 f4          	mov    %rdx,(%rsp,%rsi,8)
    190a:	48 83 c6 01          	add    $0x1,%rsi
    190e:	48 83 fe 06          	cmp    $0x6,%rsi
    1912:	75 d2                	jne    18e6 <phase_6+0x6f>
    1914:	48 8b 1c 24          	mov    (%rsp),%rbx
    1918:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    191d:	48 89 43 08          	mov    %rax,0x8(%rbx)
    1921:	48 8b 54 24 10       	mov    0x10(%rsp),%rdx
    1926:	48 89 50 08          	mov    %rdx,0x8(%rax)
    192a:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    192f:	48 89 42 08          	mov    %rax,0x8(%rdx)
    1933:	48 8b 54 24 20       	mov    0x20(%rsp),%rdx
    1938:	48 89 50 08          	mov    %rdx,0x8(%rax)
    193c:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    1941:	48 89 42 08          	mov    %rax,0x8(%rdx)
    1945:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
    194c:	00 
    194d:	bd 05 00 00 00       	mov    $0x5,%ebp
    1952:	eb 09                	jmp    195d <phase_6+0xe6>
    1954:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
    1958:	83 ed 01             	sub    $0x1,%ebp
    195b:	74 11                	je     196e <phase_6+0xf7>
    195d:	48 8b 43 08          	mov    0x8(%rbx),%rax
    1961:	8b 00                	mov    (%rax),%eax
    1963:	39 03                	cmp    %eax,(%rbx)
    1965:	7e ed                	jle    1954 <phase_6+0xdd>
    1967:	e8 75 03 00 00       	call   1ce1 <explode_bomb>
    196c:	eb e6                	jmp    1954 <phase_6+0xdd>
    196e:	48 83 c4 50          	add    $0x50,%rsp
    1972:	5b                   	pop    %rbx
    1973:	5d                   	pop    %rbp
    1974:	41 5c                	pop    %r12
    1976:	41 5d                	pop    %r13
    1978:	41 5e                	pop    %r14
    197a:	c3                   	ret    

000000000000197b <fun7>:
    197b:	f3 0f 1e fa          	endbr64 
    197f:	48 85 ff             	test   %rdi,%rdi
    1982:	74 32                	je     19b6 <fun7+0x3b>
    1984:	48 83 ec 08          	sub    $0x8,%rsp
    1988:	8b 17                	mov    (%rdi),%edx
    198a:	39 f2                	cmp    %esi,%edx
    198c:	7f 0c                	jg     199a <fun7+0x1f>
    198e:	b8 00 00 00 00       	mov    $0x0,%eax
    1993:	75 12                	jne    19a7 <fun7+0x2c>
    1995:	48 83 c4 08          	add    $0x8,%rsp
    1999:	c3                   	ret    
    199a:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
    199e:	e8 d8 ff ff ff       	call   197b <fun7>
    19a3:	01 c0                	add    %eax,%eax
    19a5:	eb ee                	jmp    1995 <fun7+0x1a>
    19a7:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
    19ab:	e8 cb ff ff ff       	call   197b <fun7>
    19b0:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
    19b4:	eb df                	jmp    1995 <fun7+0x1a>
    19b6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    19bb:	c3                   	ret    

00000000000019bc <secret_phase>:
    19bc:	f3 0f 1e fa          	endbr64 
    19c0:	53                   	push   %rbx
    19c1:	e8 ad 03 00 00       	call   1d73 <read_line>
    19c6:	48 89 c7             	mov    %rax,%rdi
    19c9:	ba 0a 00 00 00       	mov    $0xa,%edx
    19ce:	be 00 00 00 00       	mov    $0x0,%esi
    19d3:	e8 e8 f8 ff ff       	call   12c0 <strtol@plt>
    19d8:	89 c3                	mov    %eax,%ebx
    19da:	83 e8 01             	sub    $0x1,%eax
    19dd:	3d e8 03 00 00       	cmp    $0x3e8,%eax
    19e2:	77 26                	ja     1a0a <secret_phase+0x4e>
    19e4:	89 de                	mov    %ebx,%esi
    19e6:	48 8d 3d 63 3b 00 00 	lea    0x3b63(%rip),%rdi        # 5550 <n1>
    19ed:	e8 89 ff ff ff       	call   197b <fun7>
    19f2:	83 f8 03             	cmp    $0x3,%eax
    19f5:	75 1a                	jne    1a11 <secret_phase+0x55>
    19f7:	48 8d 3d 92 17 00 00 	lea    0x1792(%rip),%rdi        # 3190 <_IO_stdin_used+0x190>
    19fe:	e8 0d f8 ff ff       	call   1210 <puts@plt>
    1a03:	e8 9a 04 00 00       	call   1ea2 <phase_defused>
    1a08:	5b                   	pop    %rbx
    1a09:	c3                   	ret    
    1a0a:	e8 d2 02 00 00       	call   1ce1 <explode_bomb>
    1a0f:	eb d3                	jmp    19e4 <secret_phase+0x28>
    1a11:	e8 cb 02 00 00       	call   1ce1 <explode_bomb>
    1a16:	eb df                	jmp    19f7 <secret_phase+0x3b>

0000000000001a18 <sig_handler>:
    1a18:	f3 0f 1e fa          	endbr64 
    1a1c:	50                   	push   %rax
    1a1d:	58                   	pop    %rax
    1a1e:	48 83 ec 08          	sub    $0x8,%rsp
    1a22:	48 8d 3d f7 17 00 00 	lea    0x17f7(%rip),%rdi        # 3220 <array.0+0x40>
    1a29:	e8 e2 f7 ff ff       	call   1210 <puts@plt>
    1a2e:	bf 03 00 00 00       	mov    $0x3,%edi
    1a33:	e8 08 f9 ff ff       	call   1340 <sleep@plt>
    1a38:	48 8d 35 12 19 00 00 	lea    0x1912(%rip),%rsi        # 3351 <array.0+0x171>
    1a3f:	bf 01 00 00 00       	mov    $0x1,%edi
    1a44:	b8 00 00 00 00       	mov    $0x0,%eax
    1a49:	e8 a2 f8 ff ff       	call   12f0 <__printf_chk@plt>
    1a4e:	48 8b 3d 2b 40 00 00 	mov    0x402b(%rip),%rdi        # 5a80 <stdout@GLIBC_2.2.5>
    1a55:	e8 76 f8 ff ff       	call   12d0 <fflush@plt>
    1a5a:	bf 01 00 00 00       	mov    $0x1,%edi
    1a5f:	e8 dc f8 ff ff       	call   1340 <sleep@plt>
    1a64:	48 8d 3d ee 18 00 00 	lea    0x18ee(%rip),%rdi        # 3359 <array.0+0x179>
    1a6b:	e8 a0 f7 ff ff       	call   1210 <puts@plt>
    1a70:	bf 10 00 00 00       	mov    $0x10,%edi
    1a75:	e8 96 f8 ff ff       	call   1310 <exit@plt>

0000000000001a7a <invalid_phase>:
    1a7a:	f3 0f 1e fa          	endbr64 
    1a7e:	50                   	push   %rax
    1a7f:	58                   	pop    %rax
    1a80:	48 83 ec 08          	sub    $0x8,%rsp
    1a84:	48 89 fa             	mov    %rdi,%rdx
    1a87:	48 8d 35 d3 18 00 00 	lea    0x18d3(%rip),%rsi        # 3361 <array.0+0x181>
    1a8e:	bf 01 00 00 00       	mov    $0x1,%edi
    1a93:	b8 00 00 00 00       	mov    $0x0,%eax
    1a98:	e8 53 f8 ff ff       	call   12f0 <__printf_chk@plt>
    1a9d:	bf 08 00 00 00       	mov    $0x8,%edi
    1aa2:	e8 69 f8 ff ff       	call   1310 <exit@plt>

0000000000001aa7 <string_length>:
    1aa7:	f3 0f 1e fa          	endbr64 
    1aab:	80 3f 00             	cmpb   $0x0,(%rdi)
    1aae:	74 12                	je     1ac2 <string_length+0x1b>
    1ab0:	b8 00 00 00 00       	mov    $0x0,%eax
    1ab5:	48 83 c7 01          	add    $0x1,%rdi
    1ab9:	83 c0 01             	add    $0x1,%eax
    1abc:	80 3f 00             	cmpb   $0x0,(%rdi)
    1abf:	75 f4                	jne    1ab5 <string_length+0xe>
    1ac1:	c3                   	ret    
    1ac2:	b8 00 00 00 00       	mov    $0x0,%eax
    1ac7:	c3                   	ret    

0000000000001ac8 <strings_not_equal>:
    1ac8:	f3 0f 1e fa          	endbr64 
    1acc:	41 54                	push   %r12
    1ace:	55                   	push   %rbp
    1acf:	53                   	push   %rbx
    1ad0:	48 89 fb             	mov    %rdi,%rbx
    1ad3:	48 89 f5             	mov    %rsi,%rbp
    1ad6:	e8 cc ff ff ff       	call   1aa7 <string_length>
    1adb:	41 89 c4             	mov    %eax,%r12d
    1ade:	48 89 ef             	mov    %rbp,%rdi
    1ae1:	e8 c1 ff ff ff       	call   1aa7 <string_length>
    1ae6:	89 c2                	mov    %eax,%edx
    1ae8:	b8 01 00 00 00       	mov    $0x1,%eax
    1aed:	41 39 d4             	cmp    %edx,%r12d
    1af0:	75 31                	jne    1b23 <strings_not_equal+0x5b>
    1af2:	0f b6 13             	movzbl (%rbx),%edx
    1af5:	84 d2                	test   %dl,%dl
    1af7:	74 1e                	je     1b17 <strings_not_equal+0x4f>
    1af9:	b8 00 00 00 00       	mov    $0x0,%eax
    1afe:	38 54 05 00          	cmp    %dl,0x0(%rbp,%rax,1)
    1b02:	75 1a                	jne    1b1e <strings_not_equal+0x56>
    1b04:	48 83 c0 01          	add    $0x1,%rax
    1b08:	0f b6 14 03          	movzbl (%rbx,%rax,1),%edx
    1b0c:	84 d2                	test   %dl,%dl
    1b0e:	75 ee                	jne    1afe <strings_not_equal+0x36>
    1b10:	b8 00 00 00 00       	mov    $0x0,%eax
    1b15:	eb 0c                	jmp    1b23 <strings_not_equal+0x5b>
    1b17:	b8 00 00 00 00       	mov    $0x0,%eax
    1b1c:	eb 05                	jmp    1b23 <strings_not_equal+0x5b>
    1b1e:	b8 01 00 00 00       	mov    $0x1,%eax
    1b23:	5b                   	pop    %rbx
    1b24:	5d                   	pop    %rbp
    1b25:	41 5c                	pop    %r12
    1b27:	c3                   	ret    

0000000000001b28 <strings_are_equal>:
    1b28:	f3 0f 1e fa          	endbr64 
    1b2c:	e8 97 ff ff ff       	call   1ac8 <strings_not_equal>
    1b31:	85 c0                	test   %eax,%eax
    1b33:	0f 94 c0             	sete   %al
    1b36:	0f b6 c0             	movzbl %al,%eax
    1b39:	c3                   	ret    

0000000000001b3a <initialize_bomb>:
    1b3a:	f3 0f 1e fa          	endbr64 
    1b3e:	48 83 ec 08          	sub    $0x8,%rsp
    1b42:	48 8d 35 cf fe ff ff 	lea    -0x131(%rip),%rsi        # 1a18 <sig_handler>
    1b49:	bf 02 00 00 00       	mov    $0x2,%edi
    1b4e:	e8 3d f7 ff ff       	call   1290 <signal@plt>
    1b53:	48 8d 3d 18 18 00 00 	lea    0x1818(%rip),%rdi        # 3372 <array.0+0x192>
    1b5a:	e8 81 f6 ff ff       	call   11e0 <getenv@plt>
    1b5f:	48 85 c0             	test   %rax,%rax
    1b62:	0f 95 c0             	setne  %al
    1b65:	0f b6 c0             	movzbl %al,%eax
    1b68:	89 05 32 49 00 00    	mov    %eax,0x4932(%rip)        # 64a0 <grade_bomb>
    1b6e:	48 83 c4 08          	add    $0x8,%rsp
    1b72:	c3                   	ret    

0000000000001b73 <initialize_bomb_solve>:
    1b73:	f3 0f 1e fa          	endbr64 
    1b77:	c3                   	ret    

0000000000001b78 <blank_line>:
    1b78:	f3 0f 1e fa          	endbr64 
    1b7c:	55                   	push   %rbp
    1b7d:	53                   	push   %rbx
    1b7e:	48 83 ec 08          	sub    $0x8,%rsp
    1b82:	48 89 fd             	mov    %rdi,%rbp
    1b85:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
    1b89:	84 db                	test   %bl,%bl
    1b8b:	74 1e                	je     1bab <blank_line+0x33>
    1b8d:	e8 be f7 ff ff       	call   1350 <__ctype_b_loc@plt>
    1b92:	48 83 c5 01          	add    $0x1,%rbp
    1b96:	48 0f be db          	movsbq %bl,%rbx
    1b9a:	48 8b 00             	mov    (%rax),%rax
    1b9d:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
    1ba2:	75 e1                	jne    1b85 <blank_line+0xd>
    1ba4:	b8 00 00 00 00       	mov    $0x0,%eax
    1ba9:	eb 05                	jmp    1bb0 <blank_line+0x38>
    1bab:	b8 01 00 00 00       	mov    $0x1,%eax
    1bb0:	48 83 c4 08          	add    $0x8,%rsp
    1bb4:	5b                   	pop    %rbx
    1bb5:	5d                   	pop    %rbp
    1bb6:	c3                   	ret    

0000000000001bb7 <skip>:
    1bb7:	f3 0f 1e fa          	endbr64 
    1bbb:	55                   	push   %rbp
    1bbc:	53                   	push   %rbx
    1bbd:	48 83 ec 08          	sub    $0x8,%rsp
    1bc1:	48 8d 2d 78 3f 00 00 	lea    0x3f78(%rip),%rbp        # 5b40 <input_strings>
    1bc8:	48 63 15 69 3f 00 00 	movslq 0x3f69(%rip),%rdx        # 5b38 <num_input_strings>
    1bcf:	48 89 d0             	mov    %rdx,%rax
    1bd2:	48 c1 e0 04          	shl    $0x4,%rax
    1bd6:	48 29 d0             	sub    %rdx,%rax
    1bd9:	48 8d 7c c5 00       	lea    0x0(%rbp,%rax,8),%rdi
    1bde:	48 8b 15 cb 3e 00 00 	mov    0x3ecb(%rip),%rdx        # 5ab0 <infile>
    1be5:	be 78 00 00 00       	mov    $0x78,%esi
    1bea:	e8 81 f6 ff ff       	call   1270 <fgets@plt>
    1bef:	48 89 c3             	mov    %rax,%rbx
    1bf2:	48 85 c0             	test   %rax,%rax
    1bf5:	74 0c                	je     1c03 <skip+0x4c>
    1bf7:	48 89 c7             	mov    %rax,%rdi
    1bfa:	e8 79 ff ff ff       	call   1b78 <blank_line>
    1bff:	85 c0                	test   %eax,%eax
    1c01:	75 c5                	jne    1bc8 <skip+0x11>
    1c03:	48 89 d8             	mov    %rbx,%rax
    1c06:	48 83 c4 08          	add    $0x8,%rsp
    1c0a:	5b                   	pop    %rbx
    1c0b:	5d                   	pop    %rbp
    1c0c:	c3                   	ret    

0000000000001c0d <send_msg>:
    1c0d:	f3 0f 1e fa          	endbr64 
    1c11:	53                   	push   %rbx
    1c12:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    1c19:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    1c1e:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    1c25:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    1c2a:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    1c31:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    1c36:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    1c3d:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    1c42:	8b 0d f0 3e 00 00    	mov    0x3ef0(%rip),%ecx        # 5b38 <num_input_strings>
    1c48:	8d 41 ff             	lea    -0x1(%rcx),%eax
    1c4b:	48 98                	cltq   
    1c4d:	48 89 c2             	mov    %rax,%rdx
    1c50:	48 c1 e2 04          	shl    $0x4,%rdx
    1c54:	48 29 c2             	sub    %rax,%rdx
    1c57:	48 8d 05 e2 3e 00 00 	lea    0x3ee2(%rip),%rax        # 5b40 <input_strings>
    1c5e:	48 8d 04 d0          	lea    (%rax,%rdx,8),%rax
    1c62:	85 ff                	test   %edi,%edi
    1c64:	4c 8d 0d 12 17 00 00 	lea    0x1712(%rip),%r9        # 337d <array.0+0x19d>
    1c6b:	48 8d 15 13 17 00 00 	lea    0x1713(%rip),%rdx        # 3385 <array.0+0x1a5>
    1c72:	4c 0f 44 ca          	cmove  %rdx,%r9
    1c76:	48 8d 9c 24 00 20 00 	lea    0x2000(%rsp),%rbx
    1c7d:	00 
    1c7e:	50                   	push   %rax
    1c7f:	51                   	push   %rcx
    1c80:	44 8b 05 b9 38 00 00 	mov    0x38b9(%rip),%r8d        # 5540 <bomb_id>
    1c87:	48 8d 0d 00 17 00 00 	lea    0x1700(%rip),%rcx        # 338e <array.0+0x1ae>
    1c8e:	ba 00 20 00 00       	mov    $0x2000,%edx
    1c93:	be 01 00 00 00       	mov    $0x1,%esi
    1c98:	48 89 df             	mov    %rbx,%rdi
    1c9b:	b8 00 00 00 00       	mov    $0x0,%eax
    1ca0:	e8 bb f6 ff ff       	call   1360 <__sprintf_chk@plt>
    1ca5:	48 8d 4c 24 10       	lea    0x10(%rsp),%rcx
    1caa:	ba 00 00 00 00       	mov    $0x0,%edx
    1caf:	48 89 de             	mov    %rbx,%rsi
    1cb2:	48 8d 3d 87 34 00 00 	lea    0x3487(%rip),%rdi        # 5140 <userid>
    1cb9:	e8 77 0d 00 00       	call   2a35 <driver_post>
    1cbe:	48 83 c4 10          	add    $0x10,%rsp
    1cc2:	85 c0                	test   %eax,%eax
    1cc4:	78 09                	js     1ccf <send_msg+0xc2>
    1cc6:	48 81 c4 00 40 00 00 	add    $0x4000,%rsp
    1ccd:	5b                   	pop    %rbx
    1cce:	c3                   	ret    
    1ccf:	48 89 e7             	mov    %rsp,%rdi
    1cd2:	e8 39 f5 ff ff       	call   1210 <puts@plt>
    1cd7:	bf 00 00 00 00       	mov    $0x0,%edi
    1cdc:	e8 2f f6 ff ff       	call   1310 <exit@plt>

0000000000001ce1 <explode_bomb>:
    1ce1:	f3 0f 1e fa          	endbr64 
    1ce5:	50                   	push   %rax
    1ce6:	58                   	pop    %rax
    1ce7:	48 83 ec 08          	sub    $0x8,%rsp
    1ceb:	48 8d 3d a8 16 00 00 	lea    0x16a8(%rip),%rdi        # 339a <array.0+0x1ba>
    1cf2:	e8 19 f5 ff ff       	call   1210 <puts@plt>
    1cf7:	48 8d 3d a5 16 00 00 	lea    0x16a5(%rip),%rdi        # 33a3 <array.0+0x1c3>
    1cfe:	e8 0d f5 ff ff       	call   1210 <puts@plt>
    1d03:	83 3d 96 47 00 00 00 	cmpl   $0x0,0x4796(%rip)        # 64a0 <grade_bomb>
    1d0a:	74 0a                	je     1d16 <explode_bomb+0x35>
    1d0c:	bf 08 00 00 00       	mov    $0x8,%edi
    1d11:	e8 fa f5 ff ff       	call   1310 <exit@plt>
    1d16:	bf 00 00 00 00       	mov    $0x0,%edi
    1d1b:	e8 ed fe ff ff       	call   1c0d <send_msg>
    1d20:	48 8d 3d 31 15 00 00 	lea    0x1531(%rip),%rdi        # 3258 <array.0+0x78>
    1d27:	e8 e4 f4 ff ff       	call   1210 <puts@plt>
    1d2c:	eb de                	jmp    1d0c <explode_bomb+0x2b>

0000000000001d2e <read_six_numbers>:
    1d2e:	f3 0f 1e fa          	endbr64 
    1d32:	48 83 ec 08          	sub    $0x8,%rsp
    1d36:	48 89 f2             	mov    %rsi,%rdx
    1d39:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
    1d3d:	48 8d 46 14          	lea    0x14(%rsi),%rax
    1d41:	50                   	push   %rax
    1d42:	48 8d 46 10          	lea    0x10(%rsi),%rax
    1d46:	50                   	push   %rax
    1d47:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
    1d4b:	4c 8d 46 08          	lea    0x8(%rsi),%r8
    1d4f:	48 8d 35 64 16 00 00 	lea    0x1664(%rip),%rsi        # 33ba <array.0+0x1da>
    1d56:	b8 00 00 00 00       	mov    $0x0,%eax
    1d5b:	e8 80 f5 ff ff       	call   12e0 <__isoc99_sscanf@plt>
    1d60:	48 83 c4 10          	add    $0x10,%rsp
    1d64:	83 f8 05             	cmp    $0x5,%eax
    1d67:	7e 05                	jle    1d6e <read_six_numbers+0x40>
    1d69:	48 83 c4 08          	add    $0x8,%rsp
    1d6d:	c3                   	ret    
    1d6e:	e8 6e ff ff ff       	call   1ce1 <explode_bomb>

0000000000001d73 <read_line>:
    1d73:	f3 0f 1e fa          	endbr64 
    1d77:	55                   	push   %rbp
    1d78:	53                   	push   %rbx
    1d79:	48 83 ec 08          	sub    $0x8,%rsp
    1d7d:	b8 00 00 00 00       	mov    $0x0,%eax
    1d82:	e8 30 fe ff ff       	call   1bb7 <skip>
    1d87:	48 85 c0             	test   %rax,%rax
    1d8a:	74 63                	je     1def <read_line+0x7c>
    1d8c:	8b 1d a6 3d 00 00    	mov    0x3da6(%rip),%ebx        # 5b38 <num_input_strings>
    1d92:	48 63 d3             	movslq %ebx,%rdx
    1d95:	48 89 d0             	mov    %rdx,%rax
    1d98:	48 c1 e0 04          	shl    $0x4,%rax
    1d9c:	48 29 d0             	sub    %rdx,%rax
    1d9f:	48 8d 15 9a 3d 00 00 	lea    0x3d9a(%rip),%rdx        # 5b40 <input_strings>
    1da6:	48 8d 2c c2          	lea    (%rdx,%rax,8),%rbp
    1daa:	48 89 ef             	mov    %rbp,%rdi
    1dad:	e8 7e f4 ff ff       	call   1230 <strlen@plt>
    1db2:	83 f8 76             	cmp    $0x76,%eax
    1db5:	0f 8f 9d 00 00 00    	jg     1e58 <read_line+0xe5>
    1dbb:	83 e8 01             	sub    $0x1,%eax
    1dbe:	48 98                	cltq   
    1dc0:	48 63 cb             	movslq %ebx,%rcx
    1dc3:	48 89 ca             	mov    %rcx,%rdx
    1dc6:	48 c1 e2 04          	shl    $0x4,%rdx
    1dca:	48 29 ca             	sub    %rcx,%rdx
    1dcd:	48 8d 0d 6c 3d 00 00 	lea    0x3d6c(%rip),%rcx        # 5b40 <input_strings>
    1dd4:	48 8d 14 d1          	lea    (%rcx,%rdx,8),%rdx
    1dd8:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
    1ddc:	83 c3 01             	add    $0x1,%ebx
    1ddf:	89 1d 53 3d 00 00    	mov    %ebx,0x3d53(%rip)        # 5b38 <num_input_strings>
    1de5:	48 89 e8             	mov    %rbp,%rax
    1de8:	48 83 c4 08          	add    $0x8,%rsp
    1dec:	5b                   	pop    %rbx
    1ded:	5d                   	pop    %rbp
    1dee:	c3                   	ret    
    1def:	48 8b 05 9a 3c 00 00 	mov    0x3c9a(%rip),%rax        # 5a90 <stdin@GLIBC_2.2.5>
    1df6:	48 39 05 b3 3c 00 00 	cmp    %rax,0x3cb3(%rip)        # 5ab0 <infile>
    1dfd:	74 13                	je     1e12 <read_line+0x9f>
    1dff:	83 3d 9a 46 00 00 00 	cmpl   $0x0,0x469a(%rip)        # 64a0 <grade_bomb>
    1e06:	74 20                	je     1e28 <read_line+0xb5>
    1e08:	bf 00 00 00 00       	mov    $0x0,%edi
    1e0d:	e8 fe f4 ff ff       	call   1310 <exit@plt>
    1e12:	48 8d 3d b3 15 00 00 	lea    0x15b3(%rip),%rdi        # 33cc <array.0+0x1ec>
    1e19:	e8 f2 f3 ff ff       	call   1210 <puts@plt>
    1e1e:	bf 08 00 00 00       	mov    $0x8,%edi
    1e23:	e8 e8 f4 ff ff       	call   1310 <exit@plt>
    1e28:	48 89 05 81 3c 00 00 	mov    %rax,0x3c81(%rip)        # 5ab0 <infile>
    1e2f:	b8 00 00 00 00       	mov    $0x0,%eax
    1e34:	e8 7e fd ff ff       	call   1bb7 <skip>
    1e39:	48 85 c0             	test   %rax,%rax
    1e3c:	0f 85 4a ff ff ff    	jne    1d8c <read_line+0x19>
    1e42:	48 8d 3d 83 15 00 00 	lea    0x1583(%rip),%rdi        # 33cc <array.0+0x1ec>
    1e49:	e8 c2 f3 ff ff       	call   1210 <puts@plt>
    1e4e:	bf 00 00 00 00       	mov    $0x0,%edi
    1e53:	e8 b8 f4 ff ff       	call   1310 <exit@plt>
    1e58:	48 8d 3d 8b 15 00 00 	lea    0x158b(%rip),%rdi        # 33ea <array.0+0x20a>
    1e5f:	e8 ac f3 ff ff       	call   1210 <puts@plt>
    1e64:	8b 05 ce 3c 00 00    	mov    0x3cce(%rip),%eax        # 5b38 <num_input_strings>
    1e6a:	8d 50 01             	lea    0x1(%rax),%edx
    1e6d:	89 15 c5 3c 00 00    	mov    %edx,0x3cc5(%rip)        # 5b38 <num_input_strings>
    1e73:	48 98                	cltq   
    1e75:	48 6b c0 78          	imul   $0x78,%rax,%rax
    1e79:	48 8d 15 c0 3c 00 00 	lea    0x3cc0(%rip),%rdx        # 5b40 <input_strings>
    1e80:	48 be 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rsi
    1e87:	75 6e 63 
    1e8a:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
    1e91:	2a 2a 00 
    1e94:	48 89 34 02          	mov    %rsi,(%rdx,%rax,1)
    1e98:	48 89 7c 02 08       	mov    %rdi,0x8(%rdx,%rax,1)
    1e9d:	e8 3f fe ff ff       	call   1ce1 <explode_bomb>

0000000000001ea2 <phase_defused>:
    1ea2:	f3 0f 1e fa          	endbr64 
    1ea6:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
    1ead:	83 3d ec 45 00 00 00 	cmpl   $0x0,0x45ec(%rip)        # 64a0 <grade_bomb>
    1eb4:	74 11                	je     1ec7 <phase_defused+0x25>
    1eb6:	83 3d 7b 3c 00 00 06 	cmpl   $0x6,0x3c7b(%rip)        # 5b38 <num_input_strings>
    1ebd:	74 14                	je     1ed3 <phase_defused+0x31>
    1ebf:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
    1ec6:	c3                   	ret    
    1ec7:	bf 01 00 00 00       	mov    $0x1,%edi
    1ecc:	e8 3c fd ff ff       	call   1c0d <send_msg>
    1ed1:	eb e3                	jmp    1eb6 <phase_defused+0x14>
    1ed3:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
    1ed8:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
    1edd:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
    1ee2:	48 8d 35 1c 15 00 00 	lea    0x151c(%rip),%rsi        # 3405 <array.0+0x225>
    1ee9:	48 8d 3d b8 3d 00 00 	lea    0x3db8(%rip),%rdi        # 5ca8 <input_strings+0x168>
    1ef0:	b8 00 00 00 00       	mov    $0x0,%eax
    1ef5:	e8 e6 f3 ff ff       	call   12e0 <__isoc99_sscanf@plt>
    1efa:	83 f8 03             	cmp    $0x3,%eax
    1efd:	74 23                	je     1f22 <phase_defused+0x80>
    1eff:	48 8d 3d da 13 00 00 	lea    0x13da(%rip),%rdi        # 32e0 <array.0+0x100>
    1f06:	e8 05 f3 ff ff       	call   1210 <puts@plt>
    1f0b:	83 3d 8e 45 00 00 00 	cmpl   $0x0,0x458e(%rip)        # 64a0 <grade_bomb>
    1f12:	75 ab                	jne    1ebf <phase_defused+0x1d>
    1f14:	48 8d 3d f5 13 00 00 	lea    0x13f5(%rip),%rdi        # 3310 <array.0+0x130>
    1f1b:	e8 f0 f2 ff ff       	call   1210 <puts@plt>
    1f20:	eb 9d                	jmp    1ebf <phase_defused+0x1d>
    1f22:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    1f27:	48 8d 35 e0 14 00 00 	lea    0x14e0(%rip),%rsi        # 340e <array.0+0x22e>
    1f2e:	e8 95 fb ff ff       	call   1ac8 <strings_not_equal>
    1f33:	85 c0                	test   %eax,%eax
    1f35:	75 c8                	jne    1eff <phase_defused+0x5d>
    1f37:	48 8d 3d 42 13 00 00 	lea    0x1342(%rip),%rdi        # 3280 <array.0+0xa0>
    1f3e:	e8 cd f2 ff ff       	call   1210 <puts@plt>
    1f43:	48 8d 3d 5e 13 00 00 	lea    0x135e(%rip),%rdi        # 32a8 <array.0+0xc8>
    1f4a:	e8 c1 f2 ff ff       	call   1210 <puts@plt>
    1f4f:	b8 00 00 00 00       	mov    $0x0,%eax
    1f54:	e8 63 fa ff ff       	call   19bc <secret_phase>
    1f59:	eb a4                	jmp    1eff <phase_defused+0x5d>

0000000000001f5b <sigalrm_handler>:
    1f5b:	f3 0f 1e fa          	endbr64 
    1f5f:	50                   	push   %rax
    1f60:	58                   	pop    %rax
    1f61:	48 83 ec 08          	sub    $0x8,%rsp
    1f65:	b9 00 00 00 00       	mov    $0x0,%ecx
    1f6a:	48 8d 15 f7 14 00 00 	lea    0x14f7(%rip),%rdx        # 3468 <array.0+0x288>
    1f71:	be 01 00 00 00       	mov    $0x1,%esi
    1f76:	48 8b 3d 23 3b 00 00 	mov    0x3b23(%rip),%rdi        # 5aa0 <stderr@GLIBC_2.2.5>
    1f7d:	b8 00 00 00 00       	mov    $0x0,%eax
    1f82:	e8 a9 f3 ff ff       	call   1330 <__fprintf_chk@plt>
    1f87:	bf 01 00 00 00       	mov    $0x1,%edi
    1f8c:	e8 7f f3 ff ff       	call   1310 <exit@plt>

0000000000001f91 <rio_readlineb>:
    1f91:	41 56                	push   %r14
    1f93:	41 55                	push   %r13
    1f95:	41 54                	push   %r12
    1f97:	55                   	push   %rbp
    1f98:	53                   	push   %rbx
    1f99:	49 89 f4             	mov    %rsi,%r12
    1f9c:	48 83 fa 01          	cmp    $0x1,%rdx
    1fa0:	0f 86 92 00 00 00    	jbe    2038 <rio_readlineb+0xa7>
    1fa6:	48 89 fb             	mov    %rdi,%rbx
    1fa9:	4c 8d 74 16 ff       	lea    -0x1(%rsi,%rdx,1),%r14
    1fae:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    1fb4:	48 8d 6f 10          	lea    0x10(%rdi),%rbp
    1fb8:	eb 56                	jmp    2010 <rio_readlineb+0x7f>
    1fba:	e8 31 f2 ff ff       	call   11f0 <__errno_location@plt>
    1fbf:	83 38 04             	cmpl   $0x4,(%rax)
    1fc2:	75 55                	jne    2019 <rio_readlineb+0x88>
    1fc4:	ba 00 20 00 00       	mov    $0x2000,%edx
    1fc9:	48 89 ee             	mov    %rbp,%rsi
    1fcc:	8b 3b                	mov    (%rbx),%edi
    1fce:	e8 8d f2 ff ff       	call   1260 <read@plt>
    1fd3:	89 c2                	mov    %eax,%edx
    1fd5:	89 43 04             	mov    %eax,0x4(%rbx)
    1fd8:	85 c0                	test   %eax,%eax
    1fda:	78 de                	js     1fba <rio_readlineb+0x29>
    1fdc:	85 c0                	test   %eax,%eax
    1fde:	74 42                	je     2022 <rio_readlineb+0x91>
    1fe0:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
    1fe4:	48 8b 43 08          	mov    0x8(%rbx),%rax
    1fe8:	0f b6 08             	movzbl (%rax),%ecx
    1feb:	48 83 c0 01          	add    $0x1,%rax
    1fef:	48 89 43 08          	mov    %rax,0x8(%rbx)
    1ff3:	83 ea 01             	sub    $0x1,%edx
    1ff6:	89 53 04             	mov    %edx,0x4(%rbx)
    1ff9:	49 83 c4 01          	add    $0x1,%r12
    1ffd:	41 88 4c 24 ff       	mov    %cl,-0x1(%r12)
    2002:	80 f9 0a             	cmp    $0xa,%cl
    2005:	74 3c                	je     2043 <rio_readlineb+0xb2>
    2007:	41 83 c5 01          	add    $0x1,%r13d
    200b:	4d 39 f4             	cmp    %r14,%r12
    200e:	74 30                	je     2040 <rio_readlineb+0xaf>
    2010:	8b 53 04             	mov    0x4(%rbx),%edx
    2013:	85 d2                	test   %edx,%edx
    2015:	7e ad                	jle    1fc4 <rio_readlineb+0x33>
    2017:	eb cb                	jmp    1fe4 <rio_readlineb+0x53>
    2019:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    2020:	eb 05                	jmp    2027 <rio_readlineb+0x96>
    2022:	b8 00 00 00 00       	mov    $0x0,%eax
    2027:	85 c0                	test   %eax,%eax
    2029:	75 29                	jne    2054 <rio_readlineb+0xc3>
    202b:	b8 00 00 00 00       	mov    $0x0,%eax
    2030:	41 83 fd 01          	cmp    $0x1,%r13d
    2034:	75 0d                	jne    2043 <rio_readlineb+0xb2>
    2036:	eb 13                	jmp    204b <rio_readlineb+0xba>
    2038:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    203e:	eb 03                	jmp    2043 <rio_readlineb+0xb2>
    2040:	4d 89 f4             	mov    %r14,%r12
    2043:	41 c6 04 24 00       	movb   $0x0,(%r12)
    2048:	49 63 c5             	movslq %r13d,%rax
    204b:	5b                   	pop    %rbx
    204c:	5d                   	pop    %rbp
    204d:	41 5c                	pop    %r12
    204f:	41 5d                	pop    %r13
    2051:	41 5e                	pop    %r14
    2053:	c3                   	ret    
    2054:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    205b:	eb ee                	jmp    204b <rio_readlineb+0xba>

000000000000205d <submitr>:
    205d:	f3 0f 1e fa          	endbr64 
    2061:	41 57                	push   %r15
    2063:	41 56                	push   %r14
    2065:	41 55                	push   %r13
    2067:	41 54                	push   %r12
    2069:	55                   	push   %rbp
    206a:	53                   	push   %rbx
    206b:	4c 8d 9c 24 00 60 ff 	lea    -0xa000(%rsp),%r11
    2072:	ff 
    2073:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    207a:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    207f:	4c 39 dc             	cmp    %r11,%rsp
    2082:	75 ef                	jne    2073 <submitr+0x16>
    2084:	48 83 ec 68          	sub    $0x68,%rsp
    2088:	49 89 fd             	mov    %rdi,%r13
    208b:	89 f5                	mov    %esi,%ebp
    208d:	48 89 14 24          	mov    %rdx,(%rsp)
    2091:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    2096:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
    209b:	4c 89 cb             	mov    %r9,%rbx
    209e:	4c 8b bc 24 a0 a0 00 	mov    0xa0a0(%rsp),%r15
    20a5:	00 
    20a6:	c7 84 24 3c 20 00 00 	movl   $0x0,0x203c(%rsp)
    20ad:	00 00 00 00 
    20b1:	ba 00 00 00 00       	mov    $0x0,%edx
    20b6:	be 01 00 00 00       	mov    $0x1,%esi
    20bb:	bf 02 00 00 00       	mov    $0x2,%edi
    20c0:	e8 ab f2 ff ff       	call   1370 <socket@plt>
    20c5:	85 c0                	test   %eax,%eax
    20c7:	0f 88 20 01 00 00    	js     21ed <submitr+0x190>
    20cd:	41 89 c4             	mov    %eax,%r12d
    20d0:	4c 89 ef             	mov    %r13,%rdi
    20d3:	e8 c8 f1 ff ff       	call   12a0 <gethostbyname@plt>
    20d8:	48 85 c0             	test   %rax,%rax
    20db:	0f 84 5c 01 00 00    	je     223d <submitr+0x1e0>
    20e1:	4c 8d ac 24 50 a0 00 	lea    0xa050(%rsp),%r13
    20e8:	00 
    20e9:	48 c7 84 24 50 a0 00 	movq   $0x0,0xa050(%rsp)
    20f0:	00 00 00 00 00 
    20f5:	48 c7 84 24 58 a0 00 	movq   $0x0,0xa058(%rsp)
    20fc:	00 00 00 00 00 
    2101:	66 c7 84 24 50 a0 00 	movw   $0x2,0xa050(%rsp)
    2108:	00 02 00 
    210b:	48 63 50 14          	movslq 0x14(%rax),%rdx
    210f:	48 8b 40 18          	mov    0x18(%rax),%rax
    2113:	48 8d bc 24 54 a0 00 	lea    0xa054(%rsp),%rdi
    211a:	00 
    211b:	b9 0c 00 00 00       	mov    $0xc,%ecx
    2120:	48 8b 30             	mov    (%rax),%rsi
    2123:	e8 88 f1 ff ff       	call   12b0 <__memmove_chk@plt>
    2128:	66 c1 c5 08          	rol    $0x8,%bp
    212c:	66 89 ac 24 52 a0 00 	mov    %bp,0xa052(%rsp)
    2133:	00 
    2134:	ba 10 00 00 00       	mov    $0x10,%edx
    2139:	4c 89 ee             	mov    %r13,%rsi
    213c:	44 89 e7             	mov    %r12d,%edi
    213f:	e8 dc f1 ff ff       	call   1320 <connect@plt>
    2144:	85 c0                	test   %eax,%eax
    2146:	0f 88 5c 01 00 00    	js     22a8 <submitr+0x24b>
    214c:	48 89 df             	mov    %rbx,%rdi
    214f:	e8 dc f0 ff ff       	call   1230 <strlen@plt>
    2154:	48 89 c5             	mov    %rax,%rbp
    2157:	48 8b 3c 24          	mov    (%rsp),%rdi
    215b:	e8 d0 f0 ff ff       	call   1230 <strlen@plt>
    2160:	49 89 c6             	mov    %rax,%r14
    2163:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    2168:	e8 c3 f0 ff ff       	call   1230 <strlen@plt>
    216d:	49 89 c5             	mov    %rax,%r13
    2170:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    2175:	e8 b6 f0 ff ff       	call   1230 <strlen@plt>
    217a:	48 89 c2             	mov    %rax,%rdx
    217d:	4b 8d 84 2e 80 00 00 	lea    0x80(%r14,%r13,1),%rax
    2184:	00 
    2185:	48 01 d0             	add    %rdx,%rax
    2188:	48 8d 54 6d 00       	lea    0x0(%rbp,%rbp,2),%rdx
    218d:	48 01 d0             	add    %rdx,%rax
    2190:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    2196:	0f 87 69 01 00 00    	ja     2305 <submitr+0x2a8>
    219c:	48 8d 94 24 40 40 00 	lea    0x4040(%rsp),%rdx
    21a3:	00 
    21a4:	b9 00 04 00 00       	mov    $0x400,%ecx
    21a9:	b8 00 00 00 00       	mov    $0x0,%eax
    21ae:	48 89 d7             	mov    %rdx,%rdi
    21b1:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    21b4:	48 89 df             	mov    %rbx,%rdi
    21b7:	e8 74 f0 ff ff       	call   1230 <strlen@plt>
    21bc:	85 c0                	test   %eax,%eax
    21be:	0f 84 e1 04 00 00    	je     26a5 <submitr+0x648>
    21c4:	8d 40 ff             	lea    -0x1(%rax),%eax
    21c7:	4c 8d 6c 03 01       	lea    0x1(%rbx,%rax,1),%r13
    21cc:	48 8d ac 24 40 40 00 	lea    0x4040(%rsp),%rbp
    21d3:	00 
    21d4:	48 8d 44 24 28       	lea    0x28(%rsp),%rax
    21d9:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    21de:	49 be d9 ff 00 00 00 	movabs $0x2000000000ffd9,%r14
    21e5:	00 20 00 
    21e8:	e9 a6 01 00 00       	jmp    2393 <submitr+0x336>
    21ed:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    21f4:	3a 20 43 
    21f7:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    21fe:	20 75 6e 
    2201:	49 89 07             	mov    %rax,(%r15)
    2204:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2208:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    220f:	74 6f 20 
    2212:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    2219:	65 20 73 
    221c:	49 89 47 10          	mov    %rax,0x10(%r15)
    2220:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2224:	41 c7 47 20 6f 63 6b 	movl   $0x656b636f,0x20(%r15)
    222b:	65 
    222c:	66 41 c7 47 24 74 00 	movw   $0x74,0x24(%r15)
    2233:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2238:	e9 f7 02 00 00       	jmp    2534 <submitr+0x4d7>
    223d:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    2244:	3a 20 44 
    2247:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    224e:	20 75 6e 
    2251:	49 89 07             	mov    %rax,(%r15)
    2254:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2258:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    225f:	74 6f 20 
    2262:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    2269:	76 65 20 
    226c:	49 89 47 10          	mov    %rax,0x10(%r15)
    2270:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2274:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    227b:	72 20 61 
    227e:	49 89 47 20          	mov    %rax,0x20(%r15)
    2282:	41 c7 47 28 64 64 72 	movl   $0x65726464,0x28(%r15)
    2289:	65 
    228a:	66 41 c7 47 2c 73 73 	movw   $0x7373,0x2c(%r15)
    2291:	41 c6 47 2e 00       	movb   $0x0,0x2e(%r15)
    2296:	44 89 e7             	mov    %r12d,%edi
    2299:	e8 b2 ef ff ff       	call   1250 <close@plt>
    229e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    22a3:	e9 8c 02 00 00       	jmp    2534 <submitr+0x4d7>
    22a8:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    22af:	3a 20 55 
    22b2:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    22b9:	20 74 6f 
    22bc:	49 89 07             	mov    %rax,(%r15)
    22bf:	49 89 57 08          	mov    %rdx,0x8(%r15)
    22c3:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    22ca:	65 63 74 
    22cd:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
    22d4:	68 65 20 
    22d7:	49 89 47 10          	mov    %rax,0x10(%r15)
    22db:	49 89 57 18          	mov    %rdx,0x18(%r15)
    22df:	41 c7 47 20 73 65 72 	movl   $0x76726573,0x20(%r15)
    22e6:	76 
    22e7:	66 41 c7 47 24 65 72 	movw   $0x7265,0x24(%r15)
    22ee:	41 c6 47 26 00       	movb   $0x0,0x26(%r15)
    22f3:	44 89 e7             	mov    %r12d,%edi
    22f6:	e8 55 ef ff ff       	call   1250 <close@plt>
    22fb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2300:	e9 2f 02 00 00       	jmp    2534 <submitr+0x4d7>
    2305:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    230c:	3a 20 52 
    230f:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    2316:	20 73 74 
    2319:	49 89 07             	mov    %rax,(%r15)
    231c:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2320:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
    2327:	74 6f 6f 
    232a:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
    2331:	65 2e 20 
    2334:	49 89 47 10          	mov    %rax,0x10(%r15)
    2338:	49 89 57 18          	mov    %rdx,0x18(%r15)
    233c:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
    2343:	61 73 65 
    2346:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
    234d:	49 54 52 
    2350:	49 89 47 20          	mov    %rax,0x20(%r15)
    2354:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2358:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
    235f:	55 46 00 
    2362:	49 89 47 30          	mov    %rax,0x30(%r15)
    2366:	44 89 e7             	mov    %r12d,%edi
    2369:	e8 e2 ee ff ff       	call   1250 <close@plt>
    236e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2373:	e9 bc 01 00 00       	jmp    2534 <submitr+0x4d7>
    2378:	49 0f a3 c6          	bt     %rax,%r14
    237c:	73 21                	jae    239f <submitr+0x342>
    237e:	44 88 45 00          	mov    %r8b,0x0(%rbp)
    2382:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    2386:	48 83 c3 01          	add    $0x1,%rbx
    238a:	4c 39 eb             	cmp    %r13,%rbx
    238d:	0f 84 12 03 00 00    	je     26a5 <submitr+0x648>
    2393:	44 0f b6 03          	movzbl (%rbx),%r8d
    2397:	41 8d 40 d6          	lea    -0x2a(%r8),%eax
    239b:	3c 35                	cmp    $0x35,%al
    239d:	76 d9                	jbe    2378 <submitr+0x31b>
    239f:	44 89 c0             	mov    %r8d,%eax
    23a2:	83 e0 df             	and    $0xffffffdf,%eax
    23a5:	83 e8 41             	sub    $0x41,%eax
    23a8:	3c 19                	cmp    $0x19,%al
    23aa:	76 d2                	jbe    237e <submitr+0x321>
    23ac:	41 80 f8 20          	cmp    $0x20,%r8b
    23b0:	74 54                	je     2406 <submitr+0x3a9>
    23b2:	41 8d 40 e0          	lea    -0x20(%r8),%eax
    23b6:	3c 5f                	cmp    $0x5f,%al
    23b8:	76 0a                	jbe    23c4 <submitr+0x367>
    23ba:	41 80 f8 09          	cmp    $0x9,%r8b
    23be:	0f 85 54 02 00 00    	jne    2618 <submitr+0x5bb>
    23c4:	45 0f b6 c0          	movzbl %r8b,%r8d
    23c8:	48 8d 0d 87 11 00 00 	lea    0x1187(%rip),%rcx        # 3556 <array.0+0x376>
    23cf:	ba 08 00 00 00       	mov    $0x8,%edx
    23d4:	be 01 00 00 00       	mov    $0x1,%esi
    23d9:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    23de:	b8 00 00 00 00       	mov    $0x0,%eax
    23e3:	e8 78 ef ff ff       	call   1360 <__sprintf_chk@plt>
    23e8:	0f b6 44 24 28       	movzbl 0x28(%rsp),%eax
    23ed:	88 45 00             	mov    %al,0x0(%rbp)
    23f0:	0f b6 44 24 29       	movzbl 0x29(%rsp),%eax
    23f5:	88 45 01             	mov    %al,0x1(%rbp)
    23f8:	0f b6 44 24 2a       	movzbl 0x2a(%rsp),%eax
    23fd:	88 45 02             	mov    %al,0x2(%rbp)
    2400:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
    2404:	eb 80                	jmp    2386 <submitr+0x329>
    2406:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
    240a:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    240e:	e9 73 ff ff ff       	jmp    2386 <submitr+0x329>
    2413:	48 01 c5             	add    %rax,%rbp
    2416:	48 29 c3             	sub    %rax,%rbx
    2419:	0f 84 e9 02 00 00    	je     2708 <submitr+0x6ab>
    241f:	48 89 da             	mov    %rbx,%rdx
    2422:	48 89 ee             	mov    %rbp,%rsi
    2425:	44 89 e7             	mov    %r12d,%edi
    2428:	e8 f3 ed ff ff       	call   1220 <write@plt>
    242d:	48 85 c0             	test   %rax,%rax
    2430:	7f e1                	jg     2413 <submitr+0x3b6>
    2432:	e8 b9 ed ff ff       	call   11f0 <__errno_location@plt>
    2437:	83 38 04             	cmpl   $0x4,(%rax)
    243a:	0f 85 79 01 00 00    	jne    25b9 <submitr+0x55c>
    2440:	4c 89 e8             	mov    %r13,%rax
    2443:	eb ce                	jmp    2413 <submitr+0x3b6>
    2445:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    244c:	3a 20 43 
    244f:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2456:	20 75 6e 
    2459:	49 89 07             	mov    %rax,(%r15)
    245c:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2460:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2467:	74 6f 20 
    246a:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
    2471:	66 69 72 
    2474:	49 89 47 10          	mov    %rax,0x10(%r15)
    2478:	49 89 57 18          	mov    %rdx,0x18(%r15)
    247c:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
    2483:	61 64 65 
    2486:	48 ba 72 20 66 72 6f 	movabs $0x73206d6f72662072,%rdx
    248d:	6d 20 73 
    2490:	49 89 47 20          	mov    %rax,0x20(%r15)
    2494:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2498:	41 c7 47 30 65 72 76 	movl   $0x65767265,0x30(%r15)
    249f:	65 
    24a0:	66 41 c7 47 34 72 00 	movw   $0x72,0x34(%r15)
    24a7:	44 89 e7             	mov    %r12d,%edi
    24aa:	e8 a1 ed ff ff       	call   1250 <close@plt>
    24af:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    24b4:	eb 7e                	jmp    2534 <submitr+0x4d7>
    24b6:	4c 8d 4c 24 30       	lea    0x30(%rsp),%r9
    24bb:	48 8d 0d ce 0f 00 00 	lea    0xfce(%rip),%rcx        # 3490 <array.0+0x2b0>
    24c2:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    24c9:	be 01 00 00 00       	mov    $0x1,%esi
    24ce:	4c 89 ff             	mov    %r15,%rdi
    24d1:	b8 00 00 00 00       	mov    $0x0,%eax
    24d6:	e8 85 ee ff ff       	call   1360 <__sprintf_chk@plt>
    24db:	44 89 e7             	mov    %r12d,%edi
    24de:	e8 6d ed ff ff       	call   1250 <close@plt>
    24e3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    24e8:	eb 4a                	jmp    2534 <submitr+0x4d7>
    24ea:	48 8d b4 24 40 60 00 	lea    0x6040(%rsp),%rsi
    24f1:	00 
    24f2:	48 8d bc 24 40 80 00 	lea    0x8040(%rsp),%rdi
    24f9:	00 
    24fa:	ba 00 20 00 00       	mov    $0x2000,%edx
    24ff:	e8 8d fa ff ff       	call   1f91 <rio_readlineb>
    2504:	48 85 c0             	test   %rax,%rax
    2507:	7e 3d                	jle    2546 <submitr+0x4e9>
    2509:	48 8d b4 24 40 60 00 	lea    0x6040(%rsp),%rsi
    2510:	00 
    2511:	4c 89 ff             	mov    %r15,%rdi
    2514:	e8 e7 ec ff ff       	call   1200 <strcpy@plt>
    2519:	44 89 e7             	mov    %r12d,%edi
    251c:	e8 2f ed ff ff       	call   1250 <close@plt>
    2521:	48 8d 35 49 10 00 00 	lea    0x1049(%rip),%rsi        # 3571 <array.0+0x391>
    2528:	4c 89 ff             	mov    %r15,%rdi
    252b:	e8 50 ed ff ff       	call   1280 <strcmp@plt>
    2530:	f7 d8                	neg    %eax
    2532:	19 c0                	sbb    %eax,%eax
    2534:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
    253b:	5b                   	pop    %rbx
    253c:	5d                   	pop    %rbp
    253d:	41 5c                	pop    %r12
    253f:	41 5d                	pop    %r13
    2541:	41 5e                	pop    %r14
    2543:	41 5f                	pop    %r15
    2545:	c3                   	ret    
    2546:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    254d:	3a 20 43 
    2550:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2557:	20 75 6e 
    255a:	49 89 07             	mov    %rax,(%r15)
    255d:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2561:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2568:	74 6f 20 
    256b:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
    2572:	73 74 61 
    2575:	49 89 47 10          	mov    %rax,0x10(%r15)
    2579:	49 89 57 18          	mov    %rdx,0x18(%r15)
    257d:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
    2584:	65 73 73 
    2587:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
    258e:	72 6f 6d 
    2591:	49 89 47 20          	mov    %rax,0x20(%r15)
    2595:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2599:	48 b8 20 73 65 72 76 	movabs $0x72657672657320,%rax
    25a0:	65 72 00 
    25a3:	49 89 47 30          	mov    %rax,0x30(%r15)
    25a7:	44 89 e7             	mov    %r12d,%edi
    25aa:	e8 a1 ec ff ff       	call   1250 <close@plt>
    25af:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    25b4:	e9 7b ff ff ff       	jmp    2534 <submitr+0x4d7>
    25b9:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    25c0:	3a 20 43 
    25c3:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    25ca:	20 75 6e 
    25cd:	49 89 07             	mov    %rax,(%r15)
    25d0:	49 89 57 08          	mov    %rdx,0x8(%r15)
    25d4:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    25db:	74 6f 20 
    25de:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
    25e5:	20 74 6f 
    25e8:	49 89 47 10          	mov    %rax,0x10(%r15)
    25ec:	49 89 57 18          	mov    %rdx,0x18(%r15)
    25f0:	48 b8 20 74 68 65 20 	movabs $0x7265732065687420,%rax
    25f7:	73 65 72 
    25fa:	49 89 47 20          	mov    %rax,0x20(%r15)
    25fe:	41 c7 47 28 76 65 72 	movl   $0x726576,0x28(%r15)
    2605:	00 
    2606:	44 89 e7             	mov    %r12d,%edi
    2609:	e8 42 ec ff ff       	call   1250 <close@plt>
    260e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2613:	e9 1c ff ff ff       	jmp    2534 <submitr+0x4d7>
    2618:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    261f:	3a 20 52 
    2622:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    2629:	20 73 74 
    262c:	49 89 07             	mov    %rax,(%r15)
    262f:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2633:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
    263a:	63 6f 6e 
    263d:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
    2644:	20 61 6e 
    2647:	49 89 47 10          	mov    %rax,0x10(%r15)
    264b:	49 89 57 18          	mov    %rdx,0x18(%r15)
    264f:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
    2656:	67 61 6c 
    2659:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
    2660:	6e 70 72 
    2663:	49 89 47 20          	mov    %rax,0x20(%r15)
    2667:	49 89 57 28          	mov    %rdx,0x28(%r15)
    266b:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
    2672:	6c 65 20 
    2675:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
    267c:	63 74 65 
    267f:	49 89 47 30          	mov    %rax,0x30(%r15)
    2683:	49 89 57 38          	mov    %rdx,0x38(%r15)
    2687:	66 41 c7 47 40 72 2e 	movw   $0x2e72,0x40(%r15)
    268e:	41 c6 47 42 00       	movb   $0x0,0x42(%r15)
    2693:	44 89 e7             	mov    %r12d,%edi
    2696:	e8 b5 eb ff ff       	call   1250 <close@plt>
    269b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    26a0:	e9 8f fe ff ff       	jmp    2534 <submitr+0x4d7>
    26a5:	48 8d 9c 24 40 60 00 	lea    0x6040(%rsp),%rbx
    26ac:	00 
    26ad:	48 8d 84 24 40 40 00 	lea    0x4040(%rsp),%rax
    26b4:	00 
    26b5:	50                   	push   %rax
    26b6:	ff 74 24 18          	push   0x18(%rsp)
    26ba:	4c 8b 4c 24 18       	mov    0x18(%rsp),%r9
    26bf:	4c 8b 44 24 10       	mov    0x10(%rsp),%r8
    26c4:	48 8d 0d f5 0d 00 00 	lea    0xdf5(%rip),%rcx        # 34c0 <array.0+0x2e0>
    26cb:	ba 00 20 00 00       	mov    $0x2000,%edx
    26d0:	be 01 00 00 00       	mov    $0x1,%esi
    26d5:	48 89 df             	mov    %rbx,%rdi
    26d8:	b8 00 00 00 00       	mov    $0x0,%eax
    26dd:	e8 7e ec ff ff       	call   1360 <__sprintf_chk@plt>
    26e2:	48 89 df             	mov    %rbx,%rdi
    26e5:	e8 46 eb ff ff       	call   1230 <strlen@plt>
    26ea:	48 89 c3             	mov    %rax,%rbx
    26ed:	48 83 c4 10          	add    $0x10,%rsp
    26f1:	48 8d ac 24 40 60 00 	lea    0x6040(%rsp),%rbp
    26f8:	00 
    26f9:	41 bd 00 00 00 00    	mov    $0x0,%r13d
    26ff:	48 85 c0             	test   %rax,%rax
    2702:	0f 85 17 fd ff ff    	jne    241f <submitr+0x3c2>
    2708:	44 89 a4 24 40 80 00 	mov    %r12d,0x8040(%rsp)
    270f:	00 
    2710:	c7 84 24 44 80 00 00 	movl   $0x0,0x8044(%rsp)
    2717:	00 00 00 00 
    271b:	48 8d bc 24 40 80 00 	lea    0x8040(%rsp),%rdi
    2722:	00 
    2723:	48 8d 84 24 50 80 00 	lea    0x8050(%rsp),%rax
    272a:	00 
    272b:	48 89 84 24 48 80 00 	mov    %rax,0x8048(%rsp)
    2732:	00 
    2733:	48 8d b4 24 40 60 00 	lea    0x6040(%rsp),%rsi
    273a:	00 
    273b:	ba 00 20 00 00       	mov    $0x2000,%edx
    2740:	e8 4c f8 ff ff       	call   1f91 <rio_readlineb>
    2745:	48 85 c0             	test   %rax,%rax
    2748:	0f 8e f7 fc ff ff    	jle    2445 <submitr+0x3e8>
    274e:	48 8d 8c 24 3c 20 00 	lea    0x203c(%rsp),%rcx
    2755:	00 
    2756:	48 8d 94 24 40 20 00 	lea    0x2040(%rsp),%rdx
    275d:	00 
    275e:	48 8d bc 24 40 60 00 	lea    0x6040(%rsp),%rdi
    2765:	00 
    2766:	4c 8d 44 24 30       	lea    0x30(%rsp),%r8
    276b:	48 8d 35 eb 0d 00 00 	lea    0xdeb(%rip),%rsi        # 355d <array.0+0x37d>
    2772:	b8 00 00 00 00       	mov    $0x0,%eax
    2777:	e8 64 eb ff ff       	call   12e0 <__isoc99_sscanf@plt>
    277c:	44 8b 84 24 3c 20 00 	mov    0x203c(%rsp),%r8d
    2783:	00 
    2784:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
    278b:	0f 85 25 fd ff ff    	jne    24b6 <submitr+0x459>
    2791:	48 8d 1d d6 0d 00 00 	lea    0xdd6(%rip),%rbx        # 356e <array.0+0x38e>
    2798:	48 8d bc 24 40 60 00 	lea    0x6040(%rsp),%rdi
    279f:	00 
    27a0:	48 89 de             	mov    %rbx,%rsi
    27a3:	e8 d8 ea ff ff       	call   1280 <strcmp@plt>
    27a8:	85 c0                	test   %eax,%eax
    27aa:	0f 84 3a fd ff ff    	je     24ea <submitr+0x48d>
    27b0:	48 8d b4 24 40 60 00 	lea    0x6040(%rsp),%rsi
    27b7:	00 
    27b8:	48 8d bc 24 40 80 00 	lea    0x8040(%rsp),%rdi
    27bf:	00 
    27c0:	ba 00 20 00 00       	mov    $0x2000,%edx
    27c5:	e8 c7 f7 ff ff       	call   1f91 <rio_readlineb>
    27ca:	48 85 c0             	test   %rax,%rax
    27cd:	7f c9                	jg     2798 <submitr+0x73b>
    27cf:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    27d6:	3a 20 43 
    27d9:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    27e0:	20 75 6e 
    27e3:	49 89 07             	mov    %rax,(%r15)
    27e6:	49 89 57 08          	mov    %rdx,0x8(%r15)
    27ea:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    27f1:	74 6f 20 
    27f4:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
    27fb:	68 65 61 
    27fe:	49 89 47 10          	mov    %rax,0x10(%r15)
    2802:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2806:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
    280d:	66 72 6f 
    2810:	48 ba 6d 20 73 65 72 	movabs $0x726576726573206d,%rdx
    2817:	76 65 72 
    281a:	49 89 47 20          	mov    %rax,0x20(%r15)
    281e:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2822:	41 c6 47 30 00       	movb   $0x0,0x30(%r15)
    2827:	44 89 e7             	mov    %r12d,%edi
    282a:	e8 21 ea ff ff       	call   1250 <close@plt>
    282f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2834:	e9 fb fc ff ff       	jmp    2534 <submitr+0x4d7>

0000000000002839 <init_timeout>:
    2839:	f3 0f 1e fa          	endbr64 
    283d:	85 ff                	test   %edi,%edi
    283f:	75 01                	jne    2842 <init_timeout+0x9>
    2841:	c3                   	ret    
    2842:	53                   	push   %rbx
    2843:	89 fb                	mov    %edi,%ebx
    2845:	48 8d 35 0f f7 ff ff 	lea    -0x8f1(%rip),%rsi        # 1f5b <sigalrm_handler>
    284c:	bf 0e 00 00 00       	mov    $0xe,%edi
    2851:	e8 3a ea ff ff       	call   1290 <signal@plt>
    2856:	85 db                	test   %ebx,%ebx
    2858:	b8 00 00 00 00       	mov    $0x0,%eax
    285d:	0f 49 c3             	cmovns %ebx,%eax
    2860:	89 c7                	mov    %eax,%edi
    2862:	e8 d9 e9 ff ff       	call   1240 <alarm@plt>
    2867:	5b                   	pop    %rbx
    2868:	c3                   	ret    

0000000000002869 <init_driver>:
    2869:	f3 0f 1e fa          	endbr64 
    286d:	41 54                	push   %r12
    286f:	55                   	push   %rbp
    2870:	53                   	push   %rbx
    2871:	48 83 ec 10          	sub    $0x10,%rsp
    2875:	48 89 fd             	mov    %rdi,%rbp
    2878:	be 01 00 00 00       	mov    $0x1,%esi
    287d:	bf 0d 00 00 00       	mov    $0xd,%edi
    2882:	e8 09 ea ff ff       	call   1290 <signal@plt>
    2887:	be 01 00 00 00       	mov    $0x1,%esi
    288c:	bf 1d 00 00 00       	mov    $0x1d,%edi
    2891:	e8 fa e9 ff ff       	call   1290 <signal@plt>
    2896:	be 01 00 00 00       	mov    $0x1,%esi
    289b:	bf 1d 00 00 00       	mov    $0x1d,%edi
    28a0:	e8 eb e9 ff ff       	call   1290 <signal@plt>
    28a5:	ba 00 00 00 00       	mov    $0x0,%edx
    28aa:	be 01 00 00 00       	mov    $0x1,%esi
    28af:	bf 02 00 00 00       	mov    $0x2,%edi
    28b4:	e8 b7 ea ff ff       	call   1370 <socket@plt>
    28b9:	85 c0                	test   %eax,%eax
    28bb:	0f 88 88 00 00 00    	js     2949 <init_driver+0xe0>
    28c1:	89 c3                	mov    %eax,%ebx
    28c3:	48 8d 3d 46 0c 00 00 	lea    0xc46(%rip),%rdi        # 3510 <array.0+0x330>
    28ca:	e8 d1 e9 ff ff       	call   12a0 <gethostbyname@plt>
    28cf:	48 85 c0             	test   %rax,%rax
    28d2:	0f 84 bd 00 00 00    	je     2995 <init_driver+0x12c>
    28d8:	49 89 e4             	mov    %rsp,%r12
    28db:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
    28e2:	00 
    28e3:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
    28ea:	00 00 
    28ec:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
    28f2:	48 63 50 14          	movslq 0x14(%rax),%rdx
    28f6:	48 8b 40 18          	mov    0x18(%rax),%rax
    28fa:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
    28ff:	b9 0c 00 00 00       	mov    $0xc,%ecx
    2904:	48 8b 30             	mov    (%rax),%rsi
    2907:	e8 a4 e9 ff ff       	call   12b0 <__memmove_chk@plt>
    290c:	66 c7 44 24 02 3b 6e 	movw   $0x6e3b,0x2(%rsp)
    2913:	ba 10 00 00 00       	mov    $0x10,%edx
    2918:	4c 89 e6             	mov    %r12,%rsi
    291b:	89 df                	mov    %ebx,%edi
    291d:	e8 fe e9 ff ff       	call   1320 <connect@plt>
    2922:	85 c0                	test   %eax,%eax
    2924:	0f 88 d3 00 00 00    	js     29fd <init_driver+0x194>
    292a:	89 df                	mov    %ebx,%edi
    292c:	e8 1f e9 ff ff       	call   1250 <close@plt>
    2931:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
    2937:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
    293b:	b8 00 00 00 00       	mov    $0x0,%eax
    2940:	48 83 c4 10          	add    $0x10,%rsp
    2944:	5b                   	pop    %rbx
    2945:	5d                   	pop    %rbp
    2946:	41 5c                	pop    %r12
    2948:	c3                   	ret    
    2949:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2950:	3a 20 43 
    2953:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    295a:	20 75 6e 
    295d:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2961:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2965:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    296c:	74 6f 20 
    296f:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    2976:	65 20 73 
    2979:	48 89 45 10          	mov    %rax,0x10(%rbp)
    297d:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2981:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
    2988:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
    298e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2993:	eb ab                	jmp    2940 <init_driver+0xd7>
    2995:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    299c:	3a 20 44 
    299f:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    29a6:	20 75 6e 
    29a9:	48 89 45 00          	mov    %rax,0x0(%rbp)
    29ad:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    29b1:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    29b8:	74 6f 20 
    29bb:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    29c2:	76 65 20 
    29c5:	48 89 45 10          	mov    %rax,0x10(%rbp)
    29c9:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    29cd:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    29d4:	72 20 61 
    29d7:	48 89 45 20          	mov    %rax,0x20(%rbp)
    29db:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
    29e2:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
    29e8:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
    29ec:	89 df                	mov    %ebx,%edi
    29ee:	e8 5d e8 ff ff       	call   1250 <close@plt>
    29f3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    29f8:	e9 43 ff ff ff       	jmp    2940 <init_driver+0xd7>
    29fd:	4c 8d 05 0c 0b 00 00 	lea    0xb0c(%rip),%r8        # 3510 <array.0+0x330>
    2a04:	48 8d 0d 25 0b 00 00 	lea    0xb25(%rip),%rcx        # 3530 <array.0+0x350>
    2a0b:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    2a12:	be 01 00 00 00       	mov    $0x1,%esi
    2a17:	48 89 ef             	mov    %rbp,%rdi
    2a1a:	b8 00 00 00 00       	mov    $0x0,%eax
    2a1f:	e8 3c e9 ff ff       	call   1360 <__sprintf_chk@plt>
    2a24:	89 df                	mov    %ebx,%edi
    2a26:	e8 25 e8 ff ff       	call   1250 <close@plt>
    2a2b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2a30:	e9 0b ff ff ff       	jmp    2940 <init_driver+0xd7>

0000000000002a35 <driver_post>:
    2a35:	f3 0f 1e fa          	endbr64 
    2a39:	53                   	push   %rbx
    2a3a:	48 89 cb             	mov    %rcx,%rbx
    2a3d:	85 d2                	test   %edx,%edx
    2a3f:	75 17                	jne    2a58 <driver_post+0x23>
    2a41:	48 85 ff             	test   %rdi,%rdi
    2a44:	74 05                	je     2a4b <driver_post+0x16>
    2a46:	80 3f 00             	cmpb   $0x0,(%rdi)
    2a49:	75 36                	jne    2a81 <driver_post+0x4c>
    2a4b:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    2a50:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    2a54:	89 d0                	mov    %edx,%eax
    2a56:	5b                   	pop    %rbx
    2a57:	c3                   	ret    
    2a58:	48 89 f2             	mov    %rsi,%rdx
    2a5b:	48 8d 35 12 0b 00 00 	lea    0xb12(%rip),%rsi        # 3574 <array.0+0x394>
    2a62:	bf 01 00 00 00       	mov    $0x1,%edi
    2a67:	b8 00 00 00 00       	mov    $0x0,%eax
    2a6c:	e8 7f e8 ff ff       	call   12f0 <__printf_chk@plt>
    2a71:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    2a76:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    2a7a:	b8 00 00 00 00       	mov    $0x0,%eax
    2a7f:	eb d5                	jmp    2a56 <driver_post+0x21>
    2a81:	48 83 ec 08          	sub    $0x8,%rsp
    2a85:	51                   	push   %rcx
    2a86:	49 89 f1             	mov    %rsi,%r9
    2a89:	4c 8d 05 fb 0a 00 00 	lea    0xafb(%rip),%r8        # 358b <array.0+0x3ab>
    2a90:	48 89 f9             	mov    %rdi,%rcx
    2a93:	48 8d 15 05 0b 00 00 	lea    0xb05(%rip),%rdx        # 359f <array.0+0x3bf>
    2a9a:	be 6e 3b 00 00       	mov    $0x3b6e,%esi
    2a9f:	48 8d 3d 6a 0a 00 00 	lea    0xa6a(%rip),%rdi        # 3510 <array.0+0x330>
    2aa6:	e8 b2 f5 ff ff       	call   205d <submitr>
    2aab:	48 83 c4 10          	add    $0x10,%rsp
    2aaf:	eb a5                	jmp    2a56 <driver_post+0x21>

Disassembly of section .fini:

0000000000002ab4 <_fini>:
    2ab4:	f3 0f 1e fa          	endbr64 
    2ab8:	48 83 ec 08          	sub    $0x8,%rsp
    2abc:	48 83 c4 08          	add    $0x8,%rsp
    2ac0:	c3                   	ret    
