address;source_location;insn;indent
0x4011a0;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;PUSH	%RBP;
0x4011a1;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;MOV	%RSP,%RBP;
0x4011a4;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;PUSH	%R15;
0x4011a6;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;PUSH	%R14;
0x4011a8;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;PUSH	%R13;
0x4011aa;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;PUSH	%R12;
0x4011ac;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;PUSH	%RBX;
0x4011ad;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:53;TEST	%EDI,%EDI;
0x4011af;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:53;JE	4013fd <baseline+0x25d>;
0x4011b5;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;MOV	%RCX,%R15;
0x4011b8;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;MOV	%EDI,%R8D;
0x4011bb;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:53;LEA	-0x1(%R8),%R13;
0x4011bf;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:53;IMUL	%R8,%R13;
0x4011c3;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:53;LEA	(%RDX,%R8,4),%RAX;
0x4011c7;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;CMP	%RSI,%RAX;
0x4011ca;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;SETA	%AL;
0x4011cd;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:53;LEA	(%RSI,%R8,4),%RCX;
0x4011d1;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:53;MOV	%RCX,-0x48(%RBP);
0x4011d5;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;CMP	%RDX,%RCX;
0x4011d8;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;SETA	%CL;
0x4011db;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;AND	%AL,%CL;
0x4011dd;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;MOV	%CL,-0x29(%RBP);
0x4011e0;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;MOV	%R8D,%R14D;
0x4011e3;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;AND	$-0x4,%R14D;
0x4011e7;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;MOVQ	%R8,%XMM0;
0x4011ec;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;PSHUFD	$0x44,%XMM0,%XMM0;
0x4011f1;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;MOV	%R8,%RAX;
0x4011f4;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;NEG	%RAX;
0x4011f7;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;MOV	%RAX,-0x50(%RBP);
0x4011fb;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:53;LEA	(,%R8,4),%RAX;
0x401203;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:53;MOV	%RAX,-0x40(%RBP);
0x401207;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:53;LEA	(,%R8,8),%R10;
0x40120f;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:53;XOR	%R12D,%R12D;
0x401212;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:53;MOVDQA	0xdf5(%RIP),%XMM8;
0x40121b;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:53;MOVDQA	0xdfd(%RIP),%XMM1;
0x401223;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:53;MOVDQA	0xe05(%RIP),%XMM3;
0x40122b;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:53;MOV	%R15,%RCX;
0x40122e;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:53;MOV	%EDI,-0x30(%RBP);
0x401231;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:53;MOV	%R13,-0x38(%RBP);
0x401235;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:53;JMP	401251 <baseline+0xb1>;
0x401237;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:53;NOPW	(%RAX,%RAX,1);
0x401240;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:53;ADD	$0x1,%R12;(0) 
0x401244;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:53;ADD	$0x4,%RCX;(0) 
0x401248;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:53;CMP	%R8,%R12;(0) 
0x40124b;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:53;JE	4013fd <baseline+0x25d>;(0) 
0x401251;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;LEA	(%R15,%R12,4),%R9;(0) 
0x401255;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;CMP	$0x4,%EDI;(0) 
0x401258;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JB	40128c <baseline+0xec>;(0) 
0x40125a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;LEA	(%R12,%R13,1),%RAX;(0) 
0x40125e;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;LEA	(%R15,%RAX,4),%RBX;(0) 
0x401262;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;CMP	%RBX,%R9;(0) 
0x401265;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;MOV	%RBX,%RAX;(0) 
0x401268;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;CMOVA	%R9,%RAX;(0) 
0x40126c;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;CMOVB	%R9,%RBX;(0) 
0x401270;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;ADD	$0x4,%RAX;(0) 
0x401274;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;CMP	%RSI,%RAX;(0) 
0x401277;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;SETA	%AL;(0) 
0x40127a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;CMP	-0x48(%RBP),%RBX;(0) 
0x40127e;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;SETB	%BL;(0) 
0x401281;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;AND	%AL,%BL;(0) 
0x401283;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;OR	-0x29(%RBP),%BL;(0) 
0x401286;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JE	401330 <baseline+0x190>;(0) 
0x40128c;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;XOR	%R11D,%R11D;(0) 
0x40128f;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;MOV	%R11,%RAX;(0) 
0x401292;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;NOT	%RAX;(0) 
0x401295;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;TEST	$0x1,%R8B;(0) 
0x401299;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JE	4012be <baseline+0x11e>;(0) 
0x40129b;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	%R11,%RBX;(0) 
0x40129e;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;IMUL	%R8,%RBX;(0) 
0x4012a2;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVSS	(%R9,%RBX,4),%XMM2;(0) 
0x4012a8;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;DIVSS	(%RDX,%R11,4),%XMM2;(0) 
0x4012ae;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADDSS	(%RSI,%R11,4),%XMM2;(0) 
0x4012b4;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVSS	%XMM2,(%RSI,%R11,4);(0) 
0x4012ba;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;OR	$0x1,%R11;(0) 
0x4012be;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;CMP	-0x50(%RBP),%RAX;(0) 
0x4012c2;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JE	401240 <baseline+0xa0>;(0) 
0x4012c8;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;MOV	-0x40(%RBP),%RBX;(0) 
0x4012cc;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;MOV	%RBX,%R9;(0) 
0x4012cf;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;IMUL	%R11,%R9;(0) 
0x4012d3;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;LEA	0x1(%R11),%RAX;(0) 
0x4012d7;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;IMUL	%RBX,%RAX;(0) 
0x4012db;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;MOV	%RCX,%RBX;(0) 
0x4012de;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;XCHG	%AX,%AX;(0) 
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
0x40131e;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JMP	401240 <baseline+0xa0>;(0) 
0x401323;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;NOPW	%CS:(%RAX,%RAX,1);
0x40132d;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;NOPL	(%RAX);
0x401330;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;MOV	%R15,%RDI;(0) 
0x401333;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;XOR	%EBX,%EBX;(0) 
0x401335;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;MOVDQA	%XMM1,%XMM2;(0) 
0x401339;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;MOVDQA	%XMM8,%XMM5;(0) 
0x40133e;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;XCHG	%AX,%AX;(0) 
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
0x4013e2;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;MOV	%R14,%R11;(0) 
0x4013e5;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;CMP	%R8,%R14;(0) 
0x4013e8;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;MOV	%RDI,%R15;(0) 
0x4013eb;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;MOV	-0x30(%RBP),%EDI;(0) 
0x4013ee;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;MOV	-0x38(%RBP),%R13;(0) 
0x4013f2;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JE	401240 <baseline+0xa0>;(0) 
0x4013f8;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JMP	40128f <baseline+0xef>;(0) 
0x4013fd;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:58;POP	%RBX;
0x4013fe;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:58;POP	%R12;
0x401400;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:58;POP	%R13;
0x401402;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:58;POP	%R14;
0x401404;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:58;POP	%R15;
0x401406;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:58;POP	%RBP;
0x401407;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:58;RET;
0x401408;:0;NOPL	(%RAX,%RAX,1);
