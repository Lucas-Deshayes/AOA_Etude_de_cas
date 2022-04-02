address;source_location;insn;indent
0x401240;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:53;ADD	$0x1,%R12;
0x401244;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:53;ADD	$0x4,%RCX;
0x401248;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:53;CMP	%R8,%R12;
0x40124b;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:53;JE	4013fd <baseline+0x25d>;
0x401251;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;LEA	(%R15,%R12,4),%R9;
0x401255;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;CMP	$0x4,%EDI;
0x401258;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JB	40128c <baseline+0xec>;
0x40125a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;LEA	(%R12,%R13,1),%RAX;
0x40125e;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;LEA	(%R15,%RAX,4),%RBX;
0x401262;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;CMP	%RBX,%R9;
0x401265;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;MOV	%RBX,%RAX;
0x401268;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;CMOVA	%R9,%RAX;
0x40126c;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;CMOVB	%R9,%RBX;
0x401270;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;ADD	$0x4,%RAX;
0x401274;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;CMP	%RSI,%RAX;
0x401277;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;SETA	%AL;
0x40127a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;CMP	-0x48(%RBP),%RBX;
0x40127e;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;SETB	%BL;
0x401281;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;AND	%AL,%BL;
0x401283;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;OR	-0x29(%RBP),%BL;
0x401286;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JE	401330 <baseline+0x190>;
0x40128c;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;XOR	%R11D,%R11D;
0x40128f;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;MOV	%R11,%RAX;
0x401292;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;NOT	%RAX;
0x401295;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;TEST	$0x1,%R8B;
0x401299;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JE	4012be <baseline+0x11e>;
0x40129b;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	%R11,%RBX;
0x40129e;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;IMUL	%R8,%RBX;
0x4012a2;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVSS	(%R9,%RBX,4),%XMM2;
0x4012a8;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;DIVSS	(%RDX,%R11,4),%XMM2;
0x4012ae;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADDSS	(%RSI,%R11,4),%XMM2;
0x4012b4;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVSS	%XMM2,(%RSI,%R11,4);
0x4012ba;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;OR	$0x1,%R11;
0x4012be;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;CMP	-0x50(%RBP),%RAX;
0x4012c2;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JE	401240 <baseline+0xa0>;
0x4012c8;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;MOV	-0x40(%RBP),%RBX;
0x4012cc;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;MOV	%RBX,%R9;
0x4012cf;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;IMUL	%R11,%R9;
0x4012d3;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;LEA	0x1(%R11),%RAX;
0x4012d7;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;IMUL	%RBX,%RAX;
0x4012db;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;MOV	%RCX,%RBX;
0x4012de;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;XCHG	%AX,%AX;
0x4012e0;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVSS	(%RBX,%R9,1),%XMM2;  (1) 
0x4012e6;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;DIVSS	(%RDX,%R11,4),%XMM2;  (1) 
0x4012ec;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADDSS	(%RSI,%R11,4),%XMM2;  (1) 
0x4012f2;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVSS	%XMM2,(%RSI,%R11,4);  (1) 
0x4012f8;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVSS	(%RBX,%RAX,1),%XMM2;  (1) 
0x4012fd;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;DIVSS	0x4(%RDX,%R11,4),%XMM2;  (1) 
0x401304;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADDSS	0x4(%RSI,%R11,4),%XMM2;  (1) 
0x40130b;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVSS	%XMM2,0x4(%RSI,%R11,4);  (1) 
0x401312;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;ADD	$0x2,%R11;  (1) 
0x401316;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;ADD	%R10,%RBX;  (1) 
0x401319;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;CMP	%R11,%R8;  (1) 
0x40131c;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JNE	4012e0 <baseline+0x140>;  (1) 
0x40131e;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JMP	401240 <baseline+0xa0>;
0x401330;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;MOV	%R15,%RDI;
0x401333;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;XOR	%EBX,%EBX;
0x401335;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;MOVDQA	%XMM1,%XMM2;
0x401339;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;MOVDQA	%XMM8,%XMM5;
0x40133e;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;XCHG	%AX,%AX;
0x401340;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVDQA	%XMM5,%XMM6;  (2) 
0x401344;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;PMULUDQ	%XMM0,%XMM6;  (2) 
0x401348;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVDQA	%XMM5,%XMM7;  (2) 
0x40134c;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;PSRLQ	$0x20,%XMM7;  (2) 
0x401351;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;PMULUDQ	%XMM0,%XMM7;  (2) 
0x401355;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;PSLLQ	$0x20,%XMM7;  (2) 
0x40135a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;PADDQ	%XMM6,%XMM7;  (2) 
0x40135e;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVDQA	%XMM2,%XMM6;  (2) 
0x401362;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;PMULUDQ	%XMM0,%XMM6;  (2) 
0x401366;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVDQA	%XMM2,%XMM4;  (2) 
0x40136a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;PSRLQ	$0x20,%XMM4;  (2) 
0x40136f;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;PMULUDQ	%XMM0,%XMM4;  (2) 
0x401373;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;PSLLQ	$0x20,%XMM4;  (2) 
0x401378;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;PADDQ	%XMM6,%XMM4;  (2) 
0x40137c;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVQ	%XMM4,%R11;  (2) 
0x401381;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;PSHUFD	$0x4e,%XMM4,%XMM4;  (2) 
0x401386;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVQ	%XMM4,%RAX;  (2) 
0x40138b;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVQ	%XMM7,%R15;  (2) 
0x401390;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;PSHUFD	$0x4e,%XMM7,%XMM4;  (2) 
0x401395;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVQ	%XMM4,%R13;  (2) 
0x40139a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVSS	(%R9,%R11,4),%XMM4;  (2) 
0x4013a0;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVSS	(%R9,%RAX,4),%XMM6;  (2) 
0x4013a6;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;UNPCKLPS	%XMM6,%XMM4;  (2) 
0x4013a9;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVSS	(%R9,%R15,4),%XMM6;  (2) 
0x4013af;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVSS	(%R9,%R13,4),%XMM7;  (2) 
0x4013b5;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;UNPCKLPS	%XMM7,%XMM6;  (2) 
0x4013b8;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVLHPS	%XMM6,%XMM4;  (2) 
0x4013bb;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVUPS	(%RDX,%RBX,4),%XMM6;  (2) 
0x4013bf;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;DIVPS	%XMM6,%XMM4;  (2) 
0x4013c2;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVUPS	(%RSI,%RBX,4),%XMM6;  (2) 
0x4013c6;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADDPS	%XMM4,%XMM6;  (2) 
0x4013c9;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVUPS	%XMM6,(%RSI,%RBX,4);  (2) 
0x4013cd;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;ADD	$0x4,%RBX;  (2) 
0x4013d1;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;PADDQ	%XMM3,%XMM2;  (2) 
0x4013d5;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;PADDQ	%XMM3,%XMM5;  (2) 
0x4013d9;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;CMP	%RBX,%R14;  (2) 
0x4013dc;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JNE	401340 <baseline+0x1a0>;  (2) 
0x4013e2;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;MOV	%R14,%R11;
0x4013e5;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;CMP	%R8,%R14;
0x4013e8;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;MOV	%RDI,%R15;
0x4013eb;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;MOV	-0x30(%RBP),%EDI;
0x4013ee;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;MOV	-0x38(%RBP),%R13;
0x4013f2;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JE	401240 <baseline+0xa0>;
0x4013f8;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JMP	40128f <baseline+0xef>;
