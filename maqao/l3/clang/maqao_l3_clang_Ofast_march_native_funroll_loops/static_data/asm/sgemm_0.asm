address;source_location;insn;indent
0x4012a0;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:53;INC	%R14;
0x4012a3;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:53;ADD	$0x4,%R13;
0x4012a7;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:53;CMP	%R11,%R14;
0x4012aa;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:53;JE	401715 <baseline+0x555>;
0x4012b0;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;CMPL	$0x8,-0x30(%RBP);
0x4012b4;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JB	4012ef <baseline+0x12f>;
0x4012b6;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;MOV	-0x68(%RBP),%RAX;
0x4012ba;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;ADD	%R14,%RAX;
0x4012bd;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;LEA	(%RCX,%R14,4),%R9;
0x4012c1;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;LEA	(%RCX,%RAX,4),%RAX;
0x4012c5;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;CMP	%RAX,%R9;
0x4012c8;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;MOV	%RAX,%RDI;
0x4012cb;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;CMOVA	%R9,%RDI;
0x4012cf;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;CMOVB	%R9,%RAX;
0x4012d3;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;ADD	$0x4,%RDI;
0x4012d7;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;CMP	%RSI,%RDI;
0x4012da;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;SETA	%BL;
0x4012dd;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;CMP	-0x70(%RBP),%RAX;
0x4012e1;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;SETB	%AL;
0x4012e4;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;AND	%BL,%AL;
0x4012e6;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;OR	-0x29(%RBP),%AL;
0x4012e9;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JE	4013e0 <baseline+0x220>;
0x4012ef;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;XOR	%EBX,%EBX;
0x4012f1;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;MOV	%RBX,%R9;
0x4012f4;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;NOT	%R9;
0x4012f7;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;ADD	%R11,%R9;
0x4012fa;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;MOV	-0x78(%RBP),%RDI;
0x4012fe;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;TEST	%RDI,%RDI;
0x401301;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JE	40133e <baseline+0x17e>;
0x401303;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;MOV	%R11,%RAX;
0x401306;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;IMUL	%RBX,%RAX;
0x40130a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;LEA	(,%RAX,4),%RAX;
0x401312;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;ADD	%R13,%RAX;
0x401315;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;NOPW	%CS:(%RAX,%RAX,1);
0x40131f;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;NOP;
0x401320;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RAX),%XMM1;  (2) 
0x401324;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVSS	(%RDX,%RBX,4),%XMM1,%XMM1;  (2) 
0x401329;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDSS	(%RSI,%RBX,4),%XMM1,%XMM1;  (2) 
0x40132e;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM1,(%RSI,%RBX,4);  (2) 
0x401333;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;INC	%RBX;  (2) 
0x401336;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;ADD	%R12,%RAX;  (2) 
0x401339;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;DEC	%RDI;  (2) 
0x40133c;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JNE	401320 <baseline+0x160>;  (2) 
0x40133e;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;CMP	$0x3,%R9;
0x401342;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JB	4012a0 <baseline+0xe0>;
0x401348;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;LEA	0x3(%RBX),%R9;
0x40134c;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;IMUL	%R12,%R9;
0x401350;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;LEA	0x2(%RBX),%R10;
0x401354;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;IMUL	%R12,%R10;
0x401358;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;MOV	%R12,%R15;
0x40135b;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;IMUL	%RBX,%R15;
0x40135f;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;LEA	0x1(%RBX),%RAX;
0x401363;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;IMUL	%R12,%RAX;
0x401367;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;MOV	%R13,%RDI;
0x40136a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;NOPW	(%RAX,%RAX,1);
0x401370;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RDI,%R15,1),%XMM1;  (1) 
0x401376;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVSS	(%RDX,%RBX,4),%XMM1,%XMM1;  (1) 
0x40137b;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDSS	(%RSI,%RBX,4),%XMM1,%XMM1;  (1) 
0x401380;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM1,(%RSI,%RBX,4);  (1) 
0x401385;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RDI,%RAX,1),%XMM1;  (1) 
0x40138a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVSS	0x4(%RDX,%RBX,4),%XMM1,%XMM1;  (1) 
0x401390;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDSS	0x4(%RSI,%RBX,4),%XMM1,%XMM1;  (1) 
0x401396;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM1,0x4(%RSI,%RBX,4);  (1) 
0x40139c;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RDI,%R10,1),%XMM1;  (1) 
0x4013a2;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVSS	0x8(%RDX,%RBX,4),%XMM1,%XMM1;  (1) 
0x4013a8;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDSS	0x8(%RSI,%RBX,4),%XMM1,%XMM1;  (1) 
0x4013ae;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM1,0x8(%RSI,%RBX,4);  (1) 
0x4013b4;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RDI,%R9,1),%XMM1;  (1) 
0x4013ba;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVSS	0xc(%RDX,%RBX,4),%XMM1,%XMM1;  (1) 
0x4013c0;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDSS	0xc(%RSI,%RBX,4),%XMM1,%XMM1;  (1) 
0x4013c6;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM1,0xc(%RSI,%RBX,4);  (1) 
0x4013cc;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;ADD	$0x4,%RBX;  (1) 
0x4013d0;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;ADD	%R8,%RDI;  (1) 
0x4013d3;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;CMP	%RBX,%R11;  (1) 
0x4013d6;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JNE	401370 <baseline+0x1b0>;  (1) 
0x4013d8;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JMP	4012a0 <baseline+0xe0>;
0x4013e0;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;CMPQ	$0x18,-0x50(%RBP);
0x4013e5;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JAE	4013f7 <baseline+0x237>;
0x4013e7;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;XOR	%R15D,%R15D;
0x4013ea;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;VMOVDQA	%YMM12,%YMM6;
0x4013ee;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;VMOVDQA	%YMM11,%YMM7;
0x4013f2;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;JMP	40164b <baseline+0x48b>;
0x4013f7;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;MOV	-0x38(%RBP),%R10;
0x4013fb;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;XOR	%R15D,%R15D;
0x4013fe;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;VMOVDQA	%YMM12,%YMM6;
0x401402;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;VMOVDQA	%YMM11,%YMM7;
0x401406;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;NOPW	%CS:(%RAX,%RAX,1);
0x401410;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPSRLQ	$0x20,%YMM6,%YMM8;  (3) 
0x401415;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM0,%YMM8,%YMM8;  (3) 
0x401419;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM3,%YMM6,%YMM9;  (3) 
0x40141d;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPADDQ	%YMM8,%YMM9,%YMM8;  (3) 
0x401422;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPSLLQ	$0x20,%YMM8,%YMM8;  (3) 
0x401428;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM0,%YMM6,%YMM9;  (3) 
0x40142c;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPADDQ	%YMM8,%YMM9,%YMM8;  (3) 
0x401431;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPSRLQ	$0x20,%YMM7,%YMM9;  (3) 
0x401436;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM0,%YMM9,%YMM9;  (3) 
0x40143a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM3,%YMM7,%YMM10;  (3) 
0x40143e;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPADDQ	%YMM9,%YMM10,%YMM9;  (3) 
0x401443;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPSLLQ	$0x20,%YMM9,%YMM9;  (3) 
0x401449;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM0,%YMM7,%YMM10;  (3) 
0x40144d;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPADDQ	%YMM9,%YMM10,%YMM9;  (3) 
0x401452;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPCMPEQD	%XMM1,%XMM1,%XMM1;  (3) 
0x401456;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VGATHERQPS	%XMM1,(%R9,%YMM9,4),%XMM2;  (3) 
0x40145c;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPCMPEQD	%XMM1,%XMM1,%XMM1;  (3) 
0x401460;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VGATHERQPS	%XMM1,(%R9,%YMM8,4),%XMM9;  (3) 
0x401466;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VINSERTF128	$0x1,%XMM2,%YMM9,%YMM1;  (3) 
0x40146c;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVUPS	(%RDX,%R15,4),%YMM2;  (3) 
0x401472;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VRCPPS	%YMM2,%YMM8;  (3) 
0x401476;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMULPS	%YMM1,%YMM8,%YMM9;  (3) 
0x40147a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VFNMADD213PS	%YMM1,%YMM9,%YMM2;  (3) 
0x40147f;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VFMADD213PS	%YMM9,%YMM8,%YMM2;  (3) 
0x401484;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDPS	(%RSI,%R15,4),%YMM2,%YMM1;  (3) 
0x40148a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVUPS	%YMM1,(%RSI,%R15,4);  (3) 
0x401490;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPADDQ	%YMM7,%YMM14,%YMM1;  (3) 
0x401494;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPADDQ	%YMM6,%YMM14,%YMM2;  (3) 
0x401498;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM3,%YMM2,%YMM8;  (3) 
0x40149c;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPSRLQ	$0x20,%YMM2,%YMM9;  (3) 
0x4014a1;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM0,%YMM9,%YMM9;  (3) 
0x4014a5;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPADDQ	%YMM9,%YMM8,%YMM8;  (3) 
0x4014aa;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPSLLQ	$0x20,%YMM8,%YMM8;  (3) 
0x4014b0;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM0,%YMM2,%YMM2;  (3) 
0x4014b4;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPADDQ	%YMM2,%YMM8,%YMM2;  (3) 
0x4014b8;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM3,%YMM1,%YMM8;  (3) 
0x4014bc;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPSRLQ	$0x20,%YMM1,%YMM9;  (3) 
0x4014c1;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM0,%YMM9,%YMM9;  (3) 
0x4014c5;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPADDQ	%YMM9,%YMM8,%YMM8;  (3) 
0x4014ca;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPSLLQ	$0x20,%YMM8,%YMM8;  (3) 
0x4014d0;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM0,%YMM1,%YMM1;  (3) 
0x4014d4;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPADDQ	%YMM1,%YMM8,%YMM1;  (3) 
0x4014d8;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPCMPEQD	%XMM5,%XMM5,%XMM5;  (3) 
0x4014dc;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VGATHERQPS	%XMM5,(%R9,%YMM1,4),%XMM4;  (3) 
0x4014e2;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPCMPEQD	%XMM1,%XMM1,%XMM1;  (3) 
0x4014e6;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VGATHERQPS	%XMM1,(%R9,%YMM2,4),%XMM5;  (3) 
0x4014ec;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VINSERTF128	$0x1,%XMM4,%YMM5,%YMM1;  (3) 
0x4014f2;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVUPS	0x20(%RDX,%R15,4),%YMM2;  (3) 
0x4014f9;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VRCPPS	%YMM2,%YMM4;  (3) 
0x4014fd;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMULPS	%YMM4,%YMM1,%YMM5;  (3) 
0x401501;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VFNMADD213PS	%YMM1,%YMM5,%YMM2;  (3) 
0x401506;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VFMADD213PS	%YMM5,%YMM4,%YMM2;  (3) 
0x40150b;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDPS	0x20(%RSI,%R15,4),%YMM2,%YMM1;  (3) 
0x401512;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVUPS	%YMM1,0x20(%RSI,%R15,4);  (3) 
0x401519;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPADDQ	%YMM7,%YMM13,%YMM1;  (3) 
0x40151d;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPADDQ	%YMM6,%YMM13,%YMM2;  (3) 
0x401521;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM3,%YMM2,%YMM4;  (3) 
0x401525;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPSRLQ	$0x20,%YMM2,%YMM5;  (3) 
0x40152a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM0,%YMM5,%YMM5;  (3) 
0x40152e;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPADDQ	%YMM5,%YMM4,%YMM4;  (3) 
0x401532;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPSLLQ	$0x20,%YMM4,%YMM4;  (3) 
0x401537;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM0,%YMM2,%YMM2;  (3) 
0x40153b;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPADDQ	%YMM4,%YMM2,%YMM2;  (3) 
0x40153f;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM3,%YMM1,%YMM4;  (3) 
0x401543;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPSRLQ	$0x20,%YMM1,%YMM5;  (3) 
0x401548;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM0,%YMM5,%YMM5;  (3) 
0x40154c;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPADDQ	%YMM5,%YMM4,%YMM4;  (3) 
0x401550;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPSLLQ	$0x20,%YMM4,%YMM4;  (3) 
0x401555;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM0,%YMM1,%YMM1;  (3) 
0x401559;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPADDQ	%YMM4,%YMM1,%YMM1;  (3) 
0x40155d;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPCMPEQD	%XMM4,%XMM4,%XMM4;  (3) 
0x401561;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VGATHERQPS	%XMM4,(%R9,%YMM1,4),%XMM5;  (3) 
0x401567;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPCMPEQD	%XMM1,%XMM1,%XMM1;  (3) 
0x40156b;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VGATHERQPS	%XMM1,(%R9,%YMM2,4),%XMM4;  (3) 
0x401571;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VINSERTF128	$0x1,%XMM5,%YMM4,%YMM1;  (3) 
0x401577;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVUPS	0x40(%RDX,%R15,4),%YMM2;  (3) 
0x40157e;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VRCPPS	%YMM2,%YMM4;  (3) 
0x401582;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMULPS	%YMM4,%YMM1,%YMM5;  (3) 
0x401586;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VFNMADD213PS	%YMM1,%YMM5,%YMM2;  (3) 
0x40158b;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VFMADD213PS	%YMM5,%YMM4,%YMM2;  (3) 
0x401590;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDPS	0x40(%RSI,%R15,4),%YMM2,%YMM1;  (3) 
0x401597;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVUPS	%YMM1,0x40(%RSI,%R15,4);  (3) 
0x40159e;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPBROADCASTQ	0xac9(%RIP),%YMM1;  (3) 
0x4015a7;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPADDQ	%YMM1,%YMM7,%YMM2;  (3) 
0x4015ab;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPADDQ	%YMM1,%YMM6,%YMM1;  (3) 
0x4015af;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM3,%YMM1,%YMM4;  (3) 
0x4015b3;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPSRLQ	$0x20,%YMM1,%YMM5;  (3) 
0x4015b8;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM0,%YMM5,%YMM5;  (3) 
0x4015bc;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPADDQ	%YMM5,%YMM4,%YMM4;  (3) 
0x4015c0;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPSLLQ	$0x20,%YMM4,%YMM4;  (3) 
0x4015c5;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM0,%YMM1,%YMM1;  (3) 
0x4015c9;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPADDQ	%YMM4,%YMM1,%YMM1;  (3) 
0x4015cd;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM3,%YMM2,%YMM4;  (3) 
0x4015d1;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPSRLQ	$0x20,%YMM2,%YMM5;  (3) 
0x4015d6;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM0,%YMM5,%YMM5;  (3) 
0x4015da;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPADDQ	%YMM5,%YMM4,%YMM4;  (3) 
0x4015de;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPSLLQ	$0x20,%YMM4,%YMM4;  (3) 
0x4015e3;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM0,%YMM2,%YMM2;  (3) 
0x4015e7;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPADDQ	%YMM4,%YMM2,%YMM2;  (3) 
0x4015eb;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPCMPEQD	%XMM4,%XMM4,%XMM4;  (3) 
0x4015ef;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VGATHERQPS	%XMM4,(%R9,%YMM2,4),%XMM5;  (3) 
0x4015f5;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPCMPEQD	%XMM2,%XMM2,%XMM2;  (3) 
0x4015f9;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VGATHERQPS	%XMM2,(%R9,%YMM1,4),%XMM4;  (3) 
0x4015ff;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VINSERTF128	$0x1,%XMM5,%YMM4,%YMM1;  (3) 
0x401605;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVUPS	0x60(%RDX,%R15,4),%YMM2;  (3) 
0x40160c;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VRCPPS	%YMM2,%YMM4;  (3) 
0x401610;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMULPS	%YMM4,%YMM1,%YMM5;  (3) 
0x401614;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VFNMADD213PS	%YMM1,%YMM5,%YMM2;  (3) 
0x401619;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VFMADD213PS	%YMM5,%YMM4,%YMM2;  (3) 
0x40161e;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDPS	0x60(%RSI,%R15,4),%YMM2,%YMM1;  (3) 
0x401625;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVUPS	%YMM1,0x60(%RSI,%R15,4);  (3) 
0x40162c;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;ADD	$0x20,%R15;  (3) 
0x401630;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;VPBROADCASTQ	0xa3f(%RIP),%YMM1;  (3) 
0x401639;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;VPADDQ	%YMM1,%YMM6,%YMM6;  (3) 
0x40163d;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;VPADDQ	%YMM1,%YMM7,%YMM7;  (3) 
0x401641;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;ADD	$0x4,%R10;  (3) 
0x401645;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JNE	401410 <baseline+0x250>;  (3) 
0x40164b;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;CMPQ	$0,-0x48(%RBP);
0x401650;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;MOV	-0x40(%RBP),%RAX;
0x401654;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JE	4016fc <baseline+0x53c>;
0x40165a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;LEA	(%RSI,%R15,4),%RBX;
0x40165e;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;LEA	(%RDX,%R15,4),%RCX;
0x401662;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;XOR	%EDI,%EDI;
0x401664;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;NOPW	%CS:(%RAX,%RAX,1);
0x40166e;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;XCHG	%AX,%AX;
0x401670;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPSRLQ	$0x20,%YMM6,%YMM1;  (4) 
0x401675;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM0,%YMM1,%YMM1;  (4) 
0x401679;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM3,%YMM6,%YMM2;  (4) 
0x40167d;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPADDQ	%YMM1,%YMM2,%YMM1;  (4) 
0x401681;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPSLLQ	$0x20,%YMM1,%YMM1;  (4) 
0x401686;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM0,%YMM6,%YMM2;  (4) 
0x40168a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPADDQ	%YMM1,%YMM2,%YMM1;  (4) 
0x40168e;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPSRLQ	$0x20,%YMM7,%YMM2;  (4) 
0x401693;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM0,%YMM2,%YMM2;  (4) 
0x401697;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM3,%YMM7,%YMM4;  (4) 
0x40169b;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPADDQ	%YMM2,%YMM4,%YMM2;  (4) 
0x40169f;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPSLLQ	$0x20,%YMM2,%YMM2;  (4) 
0x4016a4;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM0,%YMM7,%YMM4;  (4) 
0x4016a8;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPADDQ	%YMM2,%YMM4,%YMM2;  (4) 
0x4016ac;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPCMPEQD	%XMM4,%XMM4,%XMM4;  (4) 
0x4016b0;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VGATHERQPS	%XMM4,(%R9,%YMM2,4),%XMM5;  (4) 
0x4016b6;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPCMPEQD	%XMM2,%XMM2,%XMM2;  (4) 
0x4016ba;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VGATHERQPS	%XMM2,(%R9,%YMM1,4),%XMM4;  (4) 
0x4016c0;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VINSERTF128	$0x1,%XMM5,%YMM4,%YMM1;  (4) 
0x4016c6;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVUPS	(%RCX,%RDI,1),%YMM2;  (4) 
0x4016cb;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VRCPPS	%YMM2,%YMM4;  (4) 
0x4016cf;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMULPS	%YMM4,%YMM1,%YMM5;  (4) 
0x4016d3;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VFNMADD213PS	%YMM1,%YMM5,%YMM2;  (4) 
0x4016d8;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VFMADD213PS	%YMM5,%YMM4,%YMM2;  (4) 
0x4016dd;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDPS	(%RBX,%RDI,1),%YMM2,%YMM1;  (4) 
0x4016e2;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVUPS	%YMM1,(%RBX,%RDI,1);  (4) 
0x4016e7;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPADDQ	%YMM6,%YMM14,%YMM6;  (4) 
0x4016eb;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPADDQ	%YMM7,%YMM14,%YMM7;  (4) 
0x4016ef;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;ADD	$0x20,%RDI;  (4) 
0x4016f3;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;CMP	%RDI,%RAX;  (4) 
0x4016f6;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JNE	401670 <baseline+0x4b0>;  (4) 
0x4016fc;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;MOV	-0x58(%RBP),%RAX;
0x401700;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;MOV	%RAX,%RBX;
0x401703;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;CMP	%R11,%RAX;
0x401706;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;MOV	-0x60(%RBP),%RCX;
0x40170a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JE	4012a0 <baseline+0xe0>;
0x401710;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JMP	4012f1 <baseline+0x131>;
