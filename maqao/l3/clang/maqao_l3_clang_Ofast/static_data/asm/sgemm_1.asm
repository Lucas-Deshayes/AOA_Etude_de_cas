address;source_location;insn;indent
0x401260;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:53;ADD	$0x1,%R12;
0x401264;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:53;ADD	$0x4,%RBX;
0x401268;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:53;CMP	%R11,%R12;
0x40126b;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:53;JE	401454 <baseline+0x294>;
0x401271;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;LEA	(%RCX,%R12,4),%R9;
0x401275;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;CMP	$0x4,%EDI;
0x401278;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JAE	401290 <baseline+0xd0>;
0x40127a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;XOR	%R15D,%R15D;
0x40127d;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;JMP	4013b0 <baseline+0x1f0>;
0x401290;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;MOV	%RBX,-0x38(%RBP);
0x401294;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;LEA	(%R12,%R13,1),%RAX;
0x401298;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;LEA	(%RCX,%RAX,4),%RBX;
0x40129c;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;CMP	%RBX,%R9;
0x40129f;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;MOV	%RBX,%RAX;
0x4012a2;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;CMOVA	%R9,%RAX;
0x4012a6;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;CMOVB	%R9,%RBX;
0x4012aa;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;ADD	$0x4,%RAX;
0x4012ae;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;CMP	%RSI,%RAX;
0x4012b1;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;SETA	%AL;
0x4012b4;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;CMP	-0x50(%RBP),%RBX;
0x4012b8;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;SETB	%BL;
0x4012bb;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;AND	%AL,%BL;
0x4012bd;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;OR	-0x29(%RBP),%BL;
0x4012c0;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JE	4012d0 <baseline+0x110>;
0x4012c2;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;XOR	%R15D,%R15D;
0x4012c5;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;MOV	-0x38(%RBP),%RBX;
0x4012c9;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;JMP	4013b0 <baseline+0x1f0>;
0x4012d0;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;XOR	%R8D,%R8D;
0x4012d3;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;MOVDQA	%XMM9,%XMM2;
0x4012d8;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;MOVDQA	%XMM8,%XMM5;
0x4012dd;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;NOPL	(%RAX);
0x4012e0;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVDQA	%XMM5,%XMM6;  (0) 
0x4012e4;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;PMULUDQ	%XMM0,%XMM6;  (0) 
0x4012e8;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVDQA	%XMM5,%XMM7;  (0) 
0x4012ec;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;PSRLQ	$0x20,%XMM7;  (0) 
0x4012f1;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;PMULUDQ	%XMM0,%XMM7;  (0) 
0x4012f5;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;PSLLQ	$0x20,%XMM7;  (0) 
0x4012fa;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;PADDQ	%XMM6,%XMM7;  (0) 
0x4012fe;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVDQA	%XMM2,%XMM6;  (0) 
0x401302;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;PMULUDQ	%XMM0,%XMM6;  (0) 
0x401306;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVDQA	%XMM2,%XMM4;  (0) 
0x40130a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;PSRLQ	$0x20,%XMM4;  (0) 
0x40130f;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;PMULUDQ	%XMM0,%XMM4;  (0) 
0x401313;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;PSLLQ	$0x20,%XMM4;  (0) 
0x401318;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;PADDQ	%XMM6,%XMM4;  (0) 
0x40131c;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVQ	%XMM4,%RAX;  (0) 
0x401321;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;PSHUFD	$0x4e,%XMM4,%XMM4;  (0) 
0x401326;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVQ	%XMM4,%RBX;  (0) 
0x40132b;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVQ	%XMM7,%R15;  (0) 
0x401330;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;PSHUFD	$0x4e,%XMM7,%XMM4;  (0) 
0x401335;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVQ	%XMM4,%R13;  (0) 
0x40133a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVSS	(%R9,%RAX,4),%XMM4;  (0) 
0x401340;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVSS	(%R9,%RBX,4),%XMM6;  (0) 
0x401346;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;UNPCKLPS	%XMM6,%XMM4;  (0) 
0x401349;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVSS	(%R9,%R15,4),%XMM6;  (0) 
0x40134f;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVSS	(%R9,%R13,4),%XMM7;  (0) 
0x401355;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;UNPCKLPS	%XMM7,%XMM6;  (0) 
0x401358;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVLHPS	%XMM6,%XMM4;  (0) 
0x40135b;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVUPS	(%RDX,%R8,4),%XMM6;  (0) 
0x401360;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;RCPPS	%XMM6,%XMM7;  (0) 
0x401363;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVAPS	%XMM4,%XMM1;  (0) 
0x401366;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MULPS	%XMM7,%XMM1;  (0) 
0x401369;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MULPS	%XMM1,%XMM6;  (0) 
0x40136c;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;SUBPS	%XMM6,%XMM4;  (0) 
0x40136f;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MULPS	%XMM7,%XMM4;  (0) 
0x401372;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVUPS	(%RSI,%R8,4),%XMM6;  (0) 
0x401377;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADDPS	%XMM1,%XMM6;  (0) 
0x40137a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADDPS	%XMM4,%XMM6;  (0) 
0x40137d;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVUPS	%XMM6,(%RSI,%R8,4);  (0) 
0x401382;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;ADD	$0x4,%R8;  (0) 
0x401386;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;PADDQ	%XMM3,%XMM2;  (0) 
0x40138a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;PADDQ	%XMM3,%XMM5;  (0) 
0x40138e;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;CMP	%R8,%R14;  (0) 
0x401391;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JNE	4012e0 <baseline+0x120>;  (0) 
0x401397;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;MOV	%R14,%R15;
0x40139a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;CMP	%R11,%R14;
0x40139d;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;MOV	-0x40(%RBP),%R13;
0x4013a1;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;MOV	-0x38(%RBP),%RBX;
0x4013a5;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JE	401260 <baseline+0xa0>;
0x4013ab;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;NOPL	(%RAX,%RAX,1);
0x4013b0;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;MOV	%R15,%RAX;
0x4013b3;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;NOT	%RAX;
0x4013b6;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;TEST	$0x1,%R11B;
0x4013ba;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JE	4013e5 <baseline+0x225>;
0x4013bc;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;MOV	%RBX,%R8;
0x4013bf;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	%R15,%RBX;
0x4013c2;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;IMUL	%R11,%RBX;
0x4013c6;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVSS	(%R9,%RBX,4),%XMM1;
0x4013cc;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	%R8,%RBX;
0x4013cf;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;DIVSS	(%RDX,%R15,4),%XMM1;
0x4013d5;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADDSS	(%RSI,%R15,4),%XMM1;
0x4013db;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVSS	%XMM1,(%RSI,%R15,4);
0x4013e1;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;OR	$0x1,%R15;
0x4013e5;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;CMP	-0x58(%RBP),%RAX;
0x4013e9;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JE	401260 <baseline+0xa0>;
0x4013ef;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;MOV	-0x48(%RBP),%RAX;
0x4013f3;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;MOV	%RAX,%R8;
0x4013f6;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;IMUL	%R15,%R8;
0x4013fa;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;LEA	0x1(%R15),%R9;
0x4013fe;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;IMUL	%RAX,%R9;
0x401402;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;MOV	%RBX,%RAX;
0x401405;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;NOPW	%CS:(%RAX,%RAX,1);
0x40140f;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;NOP;
0x401410;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVSS	(%RAX,%R8,1),%XMM1;  (2) 
0x401416;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;DIVSS	(%RDX,%R15,4),%XMM1;  (2) 
0x40141c;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADDSS	(%RSI,%R15,4),%XMM1;  (2) 
0x401422;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVSS	%XMM1,(%RSI,%R15,4);  (2) 
0x401428;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVSS	(%RAX,%R9,1),%XMM1;  (2) 
0x40142e;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;DIVSS	0x4(%RDX,%R15,4),%XMM1;  (2) 
0x401435;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADDSS	0x4(%RSI,%R15,4),%XMM1;  (2) 
0x40143c;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVSS	%XMM1,0x4(%RSI,%R15,4);  (2) 
0x401443;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;ADD	$0x2,%R15;  (2) 
0x401447;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;ADD	%R10,%RAX;  (2) 
0x40144a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;CMP	%R15,%R11;  (2) 
0x40144d;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JNE	401410 <baseline+0x250>;  (2) 
0x40144f;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JMP	401260 <baseline+0xa0>;
