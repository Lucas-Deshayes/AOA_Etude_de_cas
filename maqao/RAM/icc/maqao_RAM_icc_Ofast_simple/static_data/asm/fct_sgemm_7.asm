address;source_location;insn;indent
0x4015a0;/users/user4442/AOA_Etude_de_cas/kernel.c:50;PUSH	%RBP;
0x4015a1;/users/user4442/AOA_Etude_de_cas/kernel.c:50;MOV	%RSP,%RBP;
0x4015a4;/users/user4442/AOA_Etude_de_cas/kernel.c:53;XOR	%R9D,%R9D;
0x4015a7;/users/user4442/AOA_Etude_de_cas/kernel.c:53;TEST	%EDI,%EDI;
0x4015a9;/users/user4442/AOA_Etude_de_cas/kernel.c:53;JBE	40168a <baseline+0xea>;
0x4015af;/users/user4442/AOA_Etude_de_cas/kernel.c:50;MOV	%EDI,%R11D;
0x4015b2;/users/user4442/AOA_Etude_de_cas/kernel.c:50;MOV	%EDI,%R8D;
0x4015b5;/users/user4442/AOA_Etude_de_cas/kernel.c:50;SHR	$0x1,%R8D;
0x4015b8;/users/user4442/AOA_Etude_de_cas/kernel.c:53;XOR	%R10D,%R10D;
0x4015bb;/users/user4442/AOA_Etude_de_cas/kernel.c:55;MOV	%R13,-0x20(%RBP);
0x4015bf;/users/user4442/AOA_Etude_de_cas/kernel.c:55;MOV	%R14,-0x18(%RBP);
0x4015c3;/users/user4442/AOA_Etude_de_cas/kernel.c:55;MOV	%R15,-0x10(%RBP);
0x4015c7;/users/user4442/AOA_Etude_de_cas/kernel.c:55;LEA	(,%R11,4),%RAX;
0x4015cf;/users/user4442/AOA_Etude_de_cas/kernel.c:55;MOV	%RBX,-0x8(%RBP);
0x4015d3;/users/user4442/AOA_Etude_de_cas/kernel.c:54;MOV	$0x1,%EBX;(7) 
0x4015d8;/users/user4442/AOA_Etude_de_cas/kernel.c:54;XOR	%R13D,%R13D;(7) 
0x4015db;/users/user4442/AOA_Etude_de_cas/kernel.c:54;TEST	%R8D,%R8D;(7) 
0x4015de;/users/user4442/AOA_Etude_de_cas/kernel.c:54;JE	401645 <baseline+0xa5>;(7) 
0x4015e0;/users/user4442/AOA_Etude_de_cas/kernel.c:55;LEA	(%RCX,%R9,4),%RBX;(7) 
0x4015e4;/users/user4442/AOA_Etude_de_cas/kernel.c:55;NOPL	(%RAX,%RAX,1);(7) 
0x4015e9;/users/user4442/AOA_Etude_de_cas/kernel.c:55;NOPL	(%RAX);(7) 
0x4015f0;/users/user4442/AOA_Etude_de_cas/kernel.c:55;MOV	%R11,%R15;  (8) 
0x4015f3;/users/user4442/AOA_Etude_de_cas/kernel.c:55;LEA	(%R13,%R13,1),%R14D;  (8) 
0x4015f8;/users/user4442/AOA_Etude_de_cas/kernel.c:55;IMUL	%R14,%R15;  (8) 
0x4015fc;/users/user4442/AOA_Etude_de_cas/kernel.c:55;MOVSS	(%RBX,%R15,4),%XMM0;  (8) 
0x401602;/users/user4442/AOA_Etude_de_cas/kernel.c:55;LEA	0x1(%R13,%R13,1),%R15D;  (8) 
0x401607;/users/user4442/AOA_Etude_de_cas/kernel.c:55;DIVSS	(%RDX,%R14,4),%XMM0;  (8) 
0x40160d;/users/user4442/AOA_Etude_de_cas/kernel.c:54;INC	%R13D;  (8) 
0x401610;/users/user4442/AOA_Etude_de_cas/kernel.c:55;ADDSS	(%RSI,%R14,4),%XMM0;  (8) 
0x401616;/users/user4442/AOA_Etude_de_cas/kernel.c:55;MOVSS	%XMM0,(%RSI,%R14,4);  (8) 
0x40161c;/users/user4442/AOA_Etude_de_cas/kernel.c:55;MOV	%R11,%R14;  (8) 
0x40161f;/users/user4442/AOA_Etude_de_cas/kernel.c:55;IMUL	%R15,%R14;  (8) 
0x401623;/users/user4442/AOA_Etude_de_cas/kernel.c:55;MOVSS	(%RBX,%R14,4),%XMM1;  (8) 
0x401629;/users/user4442/AOA_Etude_de_cas/kernel.c:55;DIVSS	(%RDX,%R15,4),%XMM1;  (8) 
0x40162f;/users/user4442/AOA_Etude_de_cas/kernel.c:55;ADDSS	(%RSI,%R15,4),%XMM1;  (8) 
0x401635;/users/user4442/AOA_Etude_de_cas/kernel.c:55;MOVSS	%XMM1,(%RSI,%R15,4);  (8) 
0x40163b;/users/user4442/AOA_Etude_de_cas/kernel.c:54;CMP	%R8D,%R13D;  (8) 
0x40163e;/users/user4442/AOA_Etude_de_cas/kernel.c:54;JB	4015f0 <baseline+0x50>;  (8) 
0x401640;/users/user4442/AOA_Etude_de_cas/kernel.c:55;LEA	0x1(%R13,%R13,1),%EBX;(7) 
0x401645;/users/user4442/AOA_Etude_de_cas/kernel.c:54;DEC	%EBX;(7) 
0x401647;/users/user4442/AOA_Etude_de_cas/kernel.c:54;CMP	%EDI,%EBX;(7) 
0x401649;/users/user4442/AOA_Etude_de_cas/kernel.c:54;JAE	40166b <baseline+0xcb>;(7) 
0x40164b;/users/user4442/AOA_Etude_de_cas/kernel.c:55;MOV	%RAX,%R13;(7) 
0x40164e;/users/user4442/AOA_Etude_de_cas/kernel.c:55;IMUL	%RBX,%R13;(7) 
0x401652;/users/user4442/AOA_Etude_de_cas/kernel.c:55;ADD	%RCX,%R13;(7) 
0x401655;/users/user4442/AOA_Etude_de_cas/kernel.c:55;MOVSS	(%R13,%R9,4),%XMM0;(7) 
0x40165c;/users/user4442/AOA_Etude_de_cas/kernel.c:55;DIVSS	(%RDX,%RBX,4),%XMM0;(7) 
0x401661;/users/user4442/AOA_Etude_de_cas/kernel.c:55;ADDSS	(%RSI,%RBX,4),%XMM0;(7) 
0x401666;/users/user4442/AOA_Etude_de_cas/kernel.c:55;MOVSS	%XMM0,(%RSI,%RBX,4);(7) 
0x40166b;/users/user4442/AOA_Etude_de_cas/kernel.c:53;INC	%R10D;(7) 
0x40166e;/users/user4442/AOA_Etude_de_cas/kernel.c:53;MOV	%R10D,%R9D;(7) 
0x401671;/users/user4442/AOA_Etude_de_cas/kernel.c:53;CMP	%EDI,%R10D;(7) 
0x401674;/users/user4442/AOA_Etude_de_cas/kernel.c:53;JB	4015d3 <baseline+0x33>;(7) 
0x40167a;/users/user4442/AOA_Etude_de_cas/kernel.c:53;MOV	-0x20(%RBP),%R13;
0x40167e;/users/user4442/AOA_Etude_de_cas/kernel.c:53;MOV	-0x18(%RBP),%R14;
0x401682;/users/user4442/AOA_Etude_de_cas/kernel.c:53;MOV	-0x10(%RBP),%R15;
0x401686;/users/user4442/AOA_Etude_de_cas/kernel.c:53;MOV	-0x8(%RBP),%RBX;
0x40168a;/users/user4442/AOA_Etude_de_cas/kernel.c:58;MOV	%RBP,%RSP;
0x40168d;/users/user4442/AOA_Etude_de_cas/kernel.c:58;POP	%RBP;
0x40168e;/users/user4442/AOA_Etude_de_cas/kernel.c:58;RET;
0x40168f;/users/user4442/AOA_Etude_de_cas/kernel.c:58;NOP;
