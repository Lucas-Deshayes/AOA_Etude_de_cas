address;source_location;insn;indent
0x144c;:0;MOV	-0x4c(%RBP),%EAX;
0x144f;:0;SAL	$0x2,%RAX;
0x1453;:0;MOV	%RAX,%RDI;
0x1456;:0;CALL	1110 <.plt.sec@start+0x50>;
0x145b;:0;MOV	%RAX,-0x40(%RBP);
0x145f;:0;MOV	-0x4c(%RBP),%EAX;
0x1462;:0;SAL	$0x2,%RAX;
0x1466;:0;MOV	%RAX,%RDI;
0x1469;:0;CALL	1110 <.plt.sec@start+0x50>;
0x146e;:0;MOV	%RAX,-0x38(%RBP);
0x1472;:0;MOV	-0x4c(%RBP),%EDX;
0x1475;:0;MOV	%EDX,%EAX;
0x1477;:0;SUB	$0x1,%RAX;
0x147b;:0;MOV	%RAX,-0x30(%RBP);
0x147f;:0;MOV	%EDX,%EAX;
0x1481;:0;MOV	%RAX,%R12;
0x1484;:0;MOV	$0,%R13D;
0x148a;:0;MOV	-0x4c(%RBP),%EAX;
0x148d;:0;IMUL	%EAX,%EAX;
0x1490;:0;MOV	%EAX,%EAX;
0x1492;:0;SAL	$0x2,%RAX;
0x1496;:0;MOV	%RAX,%RDI;
0x1499;:0;CALL	1110 <.plt.sec@start+0x50>;
0x149e;:0;MOV	%RAX,-0x28(%RBP);
0x14a2;:0;MOV	$0,%EDI;
0x14a7;:0;CALL	10f0 <.plt.sec@start+0x30>;
0x14ac;:0;MOV	-0x4c(%RBP),%EAX;
0x14af;:0;MOV	-0x40(%RBP),%RDX;
0x14b3;:0;MOV	%RDX,%RSI;
0x14b6;:0;MOV	%EAX,%EDI;
0x14b8;:0;CALL	12c5 <init_array>;
0x14bd;:0;MOV	-0x4c(%RBP),%EAX;
0x14c0;:0;MOV	-0x38(%RBP),%RDX;
0x14c4;:0;MOV	%RDX,%RSI;
0x14c7;:0;MOV	%EAX,%EDI;
0x14c9;:0;CALL	12c5 <init_array>;
0x14ce;:0;MOV	-0x4c(%RBP),%EAX;
0x14d1;:0;MOV	-0x28(%RBP),%RDX;
0x14d5;:0;MOV	%RDX,%RSI;
0x14d8;:0;MOV	%EAX,%EDI;
0x14da;:0;CALL	1229 <init_matrice>;
0x14df;:0;CMPL	$0,-0x54(%RBP);
0x14e3;:0;JNE	1512 <main+0x158>;
0x14e5;:0;MOVL	$0,-0x50(%RBP);
0x14ec;:0;JMP	1508 <main+0x14e>;
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
0x1510;:0;JMP	1528 <main+0x16e>;
0x1512;:0;MOV	-0x28(%RBP),%RCX;
0x1516;:0;MOV	-0x38(%RBP),%RDX;
0x151a;:0;MOV	-0x40(%RBP),%RSI;
0x151e;:0;MOV	-0x4c(%RBP),%EAX;
0x1521;:0;MOV	%EAX,%EDI;
0x1523;:0;CALL	1650 <baseline>;
0x1528;:0;MOV	$0,%EAX;
0x152d;:0;CALL	1876 <rdtsc>;
0x1532;:0;MOV	%RAX,-0x20(%RBP);
0x1536;:0;MOVL	$0,-0x50(%RBP);
0x153d;:0;JMP	1559 <main+0x19f>;
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
0x1561;:0;MOV	$0,%EAX;
0x1566;:0;CALL	1876 <rdtsc>;
0x156b;:0;MOV	%RAX,-0x18(%RBP);
0x156f;:0;MOV	-0x18(%RBP),%RAX;
0x1573;:0;SUB	-0x20(%RBP),%RAX;
0x1577;:0;TEST	%RAX,%RAX;
0x157a;:0;JS	1583 <main+0x1c9>;
0x157c;:0;CVTSI2SD	%RAX,%XMM0;
0x1581;:0;JMP	1598 <main+0x1de>;
0x1583;:0;MOV	%RAX,%RDX;
0x1586;:0;SHR	$0x1,%RDX;
0x1589;:0;AND	$0x1,%EAX;
0x158c;:0;OR	%RAX,%RDX;
0x158f;:0;CVTSI2SD	%RDX,%XMM0;
0x1594;:0;ADDSD	%XMM0,%XMM0;
0x1598;:0;MOV	-0x4c(%RBP),%EAX;
0x159b;:0;TEST	%RAX,%RAX;
0x159e;:0;JS	15a7 <main+0x1ed>;
0x15a0;:0;CVTSI2SD	%RAX,%XMM2;
0x15a5;:0;JMP	15c0 <main+0x206>;
0x15a7;:0;MOV	%RAX,%RDX;
0x15aa;:0;SHR	$0x1,%RDX;
0x15ad;:0;AND	$0x1,%EAX;
0x15b0;:0;OR	%RAX,%RDX;
0x15b3;:0;CVTSI2SD	%RDX,%XMM1;
0x15b8;:0;MOVAPD	%XMM1,%XMM2;
0x15bc;:0;ADDSD	%XMM1,%XMM2;
0x15c0;:0;MOV	-0x4c(%RBP),%EAX;
0x15c3;:0;TEST	%RAX,%RAX;
0x15c6;:0;JS	15cf <main+0x215>;
0x15c8;:0;CVTSI2SD	%RAX,%XMM1;
0x15cd;:0;JMP	15e4 <main+0x22a>;
0x15cf;:0;MOV	%RAX,%RDX;
0x15d2;:0;SHR	$0x1,%RDX;
0x15d5;:0;AND	$0x1,%EAX;
0x15d8;:0;OR	%RAX,%RDX;
0x15db;:0;CVTSI2SD	%RDX,%XMM1;
0x15e0;:0;ADDSD	%XMM1,%XMM1;
0x15e4;:0;MULSD	%XMM1,%XMM2;
0x15e8;:0;CVTSI2SDL	-0x44(%RBP),%XMM1;
0x15ed;:0;MULSD	%XMM2,%XMM1;
0x15f1;:0;DIVSD	%XMM1,%XMM0;
0x15f5;:0;LEA	0xa54(%RIP),%RDI;
0x15fc;:0;MOV	$0x1,%EAX;
0x1601;:0;CALL	10e0 <.plt.sec@start+0x20>;
0x1606;:0;MOV	-0x40(%RBP),%RAX;
0x160a;:0;MOV	%RAX,%RDI;
0x160d;:0;CALL	10c0 <.plt.sec@start>;
0x1612;:0;MOV	-0x38(%RBP),%RAX;
0x1616;:0;MOV	%RAX,%RDI;
0x1619;:0;CALL	10c0 <.plt.sec@start>;
0x161e;:0;MOV	-0x28(%RBP),%RAX;
0x1622;:0;MOV	%RAX,%RDI;
0x1625;:0;CALL	10c0 <.plt.sec@start>;
0x162a;:0;ADDL	$0x1,-0x54(%RBP);
0x162e;:0;CMPL	$0x1e,-0x54(%RBP);
0x1632;:0;JLE	144c <main+0x92>;