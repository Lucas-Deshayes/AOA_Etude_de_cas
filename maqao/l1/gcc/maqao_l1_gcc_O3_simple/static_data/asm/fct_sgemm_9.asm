address;source_location;insn;indent
0x13ba;:0;ENDBR64;
0x13be;:0;PUSH	%RBP;
0x13bf;:0;MOV	%RSP,%RBP;
0x13c2;:0;PUSH	%R13;
0x13c4;:0;PUSH	%R12;
0x13c6;:0;SUB	$0x60,%RSP;
0x13ca;:0;MOV	%EDI,-0x64(%RBP);
0x13cd;:0;MOV	%RSI,-0x70(%RBP);
0x13d1;:0;CMPL	$0x4,-0x64(%RBP);
0x13d5;:0;JE	13fe <main+0x44>;
0x13d7;:0;MOV	-0x70(%RBP),%RAX;
0x13db;:0;MOV	(%RAX),%RDX;
0x13de;:0;MOV	0x2c3b(%RIP),%RAX;
0x13e5;:0;LEA	0xc24(%RIP),%RSI;
0x13ec;:0;MOV	%RAX,%RDI;
0x13ef;:0;MOV	$0,%EAX;
0x13f4;:0;CALL	1100 <.plt.sec@start+0x40>;
0x13f9;:0;CALL	10d0 <.plt.sec@start+0x10>;
0x13fe;:0;MOV	-0x70(%RBP),%RAX;
0x1402;:0;ADD	$0x8,%RAX;
0x1406;:0;MOV	(%RAX),%RAX;
0x1409;:0;MOV	%RAX,%RDI;
0x140c;:0;CALL	1120 <.plt.sec@start+0x60>;
0x1411;:0;MOV	%EAX,-0x4c(%RBP);
0x1414;:0;MOV	-0x70(%RBP),%RAX;
0x1418;:0;ADD	$0x10,%RAX;
0x141c;:0;MOV	(%RAX),%RAX;
0x141f;:0;MOV	%RAX,%RDI;
0x1422;:0;CALL	1120 <.plt.sec@start+0x60>;
0x1427;:0;MOV	%EAX,-0x48(%RBP);
0x142a;:0;MOV	-0x70(%RBP),%RAX;
0x142e;:0;ADD	$0x18,%RAX;
0x1432;:0;MOV	(%RAX),%RAX;
0x1435;:0;MOV	%RAX,%RDI;
0x1438;:0;CALL	1120 <.plt.sec@start+0x60>;
0x143d;:0;MOV	%EAX,-0x44(%RBP);
0x1440;:0;MOVL	$0,-0x54(%RBP);
0x1447;:0;JMP	162e <main+0x274>;
0x144c;:0;MOV	-0x4c(%RBP),%EAX;(6) 
0x144f;:0;SAL	$0x2,%RAX;(6) 
0x1453;:0;MOV	%RAX,%RDI;(6) 
0x1456;:0;CALL	1110 <.plt.sec@start+0x50>;(6) 
0x145b;:0;MOV	%RAX,-0x40(%RBP);(6) 
0x145f;:0;MOV	-0x4c(%RBP),%EAX;(6) 
0x1462;:0;SAL	$0x2,%RAX;(6) 
0x1466;:0;MOV	%RAX,%RDI;(6) 
0x1469;:0;CALL	1110 <.plt.sec@start+0x50>;(6) 
0x146e;:0;MOV	%RAX,-0x38(%RBP);(6) 
0x1472;:0;MOV	-0x4c(%RBP),%EDX;(6) 
0x1475;:0;MOV	%EDX,%EAX;(6) 
0x1477;:0;SUB	$0x1,%RAX;(6) 
0x147b;:0;MOV	%RAX,-0x30(%RBP);(6) 
0x147f;:0;MOV	%EDX,%EAX;(6) 
0x1481;:0;MOV	%RAX,%R12;(6) 
0x1484;:0;MOV	$0,%R13D;(6) 
0x148a;:0;MOV	-0x4c(%RBP),%EAX;(6) 
0x148d;:0;IMUL	%EAX,%EAX;(6) 
0x1490;:0;MOV	%EAX,%EAX;(6) 
0x1492;:0;SAL	$0x2,%RAX;(6) 
0x1496;:0;MOV	%RAX,%RDI;(6) 
0x1499;:0;CALL	1110 <.plt.sec@start+0x50>;(6) 
0x149e;:0;MOV	%RAX,-0x28(%RBP);(6) 
0x14a2;:0;MOV	$0,%EDI;(6) 
0x14a7;:0;CALL	10f0 <.plt.sec@start+0x30>;(6) 
0x14ac;:0;MOV	-0x4c(%RBP),%EAX;(6) 
0x14af;:0;MOV	-0x40(%RBP),%RDX;(6) 
0x14b3;:0;MOV	%RDX,%RSI;(6) 
0x14b6;:0;MOV	%EAX,%EDI;(6) 
0x14b8;:0;CALL	12c5 <init_array>;(6) 
0x14bd;:0;MOV	-0x4c(%RBP),%EAX;(6) 
0x14c0;:0;MOV	-0x38(%RBP),%RDX;(6) 
0x14c4;:0;MOV	%RDX,%RSI;(6) 
0x14c7;:0;MOV	%EAX,%EDI;(6) 
0x14c9;:0;CALL	12c5 <init_array>;(6) 
0x14ce;:0;MOV	-0x4c(%RBP),%EAX;(6) 
0x14d1;:0;MOV	-0x28(%RBP),%RDX;(6) 
0x14d5;:0;MOV	%RDX,%RSI;(6) 
0x14d8;:0;MOV	%EAX,%EDI;(6) 
0x14da;:0;CALL	1229 <init_matrice>;(6) 
0x14df;:0;CMPL	$0,-0x54(%RBP);(6) 
0x14e3;:0;JNE	1512 <main+0x158>;(6) 
0x14e5;:0;MOVL	$0,-0x50(%RBP);(6) 
0x14ec;:0;JMP	1508 <main+0x14e>;(6) 
0x14ee;:0;MOV	-0x28(%RBP),%RCX;  (7) 
0x14f2;:0;MOV	-0x38(%RBP),%RDX;  (7) 
0x14f6;:0;MOV	-0x40(%RBP),%RSI;  (7) 
0x14fa;:0;MOV	-0x4c(%RBP),%EAX;  (7) 
0x14fd;:0;MOV	%EAX,%EDI;  (7) 
0x14ff;:0;CALL	1650 <baseline>;  (7) 
0x1504;:0;ADDL	$0x1,-0x50(%RBP);  (7) 
0x1508;:0;MOV	-0x50(%RBP),%EAX;  (7) 
0x150b;:0;CMP	-0x48(%RBP),%EAX;  (7) 
0x150e;:0;JL	14ee <main+0x134>;  (7) 
0x1510;:0;JMP	1528 <main+0x16e>;(6) 
0x1512;:0;MOV	-0x28(%RBP),%RCX;(6) 
0x1516;:0;MOV	-0x38(%RBP),%RDX;(6) 
0x151a;:0;MOV	-0x40(%RBP),%RSI;(6) 
0x151e;:0;MOV	-0x4c(%RBP),%EAX;(6) 
0x1521;:0;MOV	%EAX,%EDI;(6) 
0x1523;:0;CALL	1650 <baseline>;(6) 
0x1528;:0;MOV	$0,%EAX;(6) 
0x152d;:0;CALL	1895 <rdtsc>;(6) 
0x1532;:0;MOV	%RAX,-0x20(%RBP);(6) 
0x1536;:0;MOVL	$0,-0x50(%RBP);(6) 
0x153d;:0;JMP	1559 <main+0x19f>;(6) 
0x153f;:0;MOV	-0x28(%RBP),%RCX;  (5) 
0x1543;:0;MOV	-0x38(%RBP),%RDX;  (5) 
0x1547;:0;MOV	-0x40(%RBP),%RSI;  (5) 
0x154b;:0;MOV	-0x4c(%RBP),%EAX;  (5) 
0x154e;:0;MOV	%EAX,%EDI;  (5) 
0x1550;:0;CALL	1650 <baseline>;  (5) 
0x1555;:0;ADDL	$0x1,-0x50(%RBP);  (5) 
0x1559;:0;MOV	-0x50(%RBP),%EAX;  (5) 
0x155c;:0;CMP	-0x44(%RBP),%EAX;  (5) 
0x155f;:0;JL	153f <main+0x185>;  (5) 
0x1561;:0;MOV	$0,%EAX;(6) 
0x1566;:0;CALL	1895 <rdtsc>;(6) 
0x156b;:0;MOV	%RAX,-0x18(%RBP);(6) 
0x156f;:0;MOV	-0x18(%RBP),%RAX;(6) 
0x1573;:0;SUB	-0x20(%RBP),%RAX;(6) 
0x1577;:0;TEST	%RAX,%RAX;(6) 
0x157a;:0;JS	1583 <main+0x1c9>;(6) 
0x157c;:0;CVTSI2SD	%RAX,%XMM0;(6) 
0x1581;:0;JMP	1598 <main+0x1de>;(6) 
0x1583;:0;MOV	%RAX,%RDX;(6) 
0x1586;:0;SHR	$0x1,%RDX;(6) 
0x1589;:0;AND	$0x1,%EAX;(6) 
0x158c;:0;OR	%RAX,%RDX;(6) 
0x158f;:0;CVTSI2SD	%RDX,%XMM0;(6) 
0x1594;:0;ADDSD	%XMM0,%XMM0;(6) 
0x1598;:0;MOV	-0x4c(%RBP),%EAX;(6) 
0x159b;:0;TEST	%RAX,%RAX;(6) 
0x159e;:0;JS	15a7 <main+0x1ed>;(6) 
0x15a0;:0;CVTSI2SD	%RAX,%XMM2;(6) 
0x15a5;:0;JMP	15c0 <main+0x206>;(6) 
0x15a7;:0;MOV	%RAX,%RDX;(6) 
0x15aa;:0;SHR	$0x1,%RDX;(6) 
0x15ad;:0;AND	$0x1,%EAX;(6) 
0x15b0;:0;OR	%RAX,%RDX;(6) 
0x15b3;:0;CVTSI2SD	%RDX,%XMM1;(6) 
0x15b8;:0;MOVAPD	%XMM1,%XMM2;(6) 
0x15bc;:0;ADDSD	%XMM1,%XMM2;(6) 
0x15c0;:0;MOV	-0x4c(%RBP),%EAX;(6) 
0x15c3;:0;TEST	%RAX,%RAX;(6) 
0x15c6;:0;JS	15cf <main+0x215>;(6) 
0x15c8;:0;CVTSI2SD	%RAX,%XMM1;(6) 
0x15cd;:0;JMP	15e4 <main+0x22a>;(6) 
0x15cf;:0;MOV	%RAX,%RDX;(6) 
0x15d2;:0;SHR	$0x1,%RDX;(6) 
0x15d5;:0;AND	$0x1,%EAX;(6) 
0x15d8;:0;OR	%RAX,%RDX;(6) 
0x15db;:0;CVTSI2SD	%RDX,%XMM1;(6) 
0x15e0;:0;ADDSD	%XMM1,%XMM1;(6) 
0x15e4;:0;MULSD	%XMM1,%XMM2;(6) 
0x15e8;:0;CVTSI2SDL	-0x44(%RBP),%XMM1;(6) 
0x15ed;:0;MULSD	%XMM2,%XMM1;(6) 
0x15f1;:0;DIVSD	%XMM1,%XMM0;(6) 
0x15f5;:0;LEA	0xa54(%RIP),%RDI;(6) 
0x15fc;:0;MOV	$0x1,%EAX;(6) 
0x1601;:0;CALL	10e0 <.plt.sec@start+0x20>;(6) 
0x1606;:0;MOV	-0x40(%RBP),%RAX;(6) 
0x160a;:0;MOV	%RAX,%RDI;(6) 
0x160d;:0;CALL	10c0 <.plt.sec@start>;(6) 
0x1612;:0;MOV	-0x38(%RBP),%RAX;(6) 
0x1616;:0;MOV	%RAX,%RDI;(6) 
0x1619;:0;CALL	10c0 <.plt.sec@start>;(6) 
0x161e;:0;MOV	-0x28(%RBP),%RAX;(6) 
0x1622;:0;MOV	%RAX,%RDI;(6) 
0x1625;:0;CALL	10c0 <.plt.sec@start>;(6) 
0x162a;:0;ADDL	$0x1,-0x54(%RBP);(6) 
0x162e;:0;CMPL	$0x1e,-0x54(%RBP);(6) 
0x1632;:0;JLE	144c <main+0x92>;(6) 
0x1638;:0;MOV	$0,%EAX;
0x163d;:0;ADD	$0x60,%RSP;
0x1641;:0;POP	%R12;
0x1643;:0;POP	%R13;
0x1645;:0;POP	%RBP;
0x1646;:0;RET;
0x1647;:0;NOPW	(%RAX,%RAX,1);
