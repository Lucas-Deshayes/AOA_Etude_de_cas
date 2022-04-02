address;source_location;insn;indent
0x401280;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:53;INC	%R14;
0x401283;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:53;ADD	$0x4,%R13;
0x401287;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:53;CMP	%R11,%R14;
0x40128a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:53;JE	401681 <baseline+0x4e1>;
0x401290;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;CMPL	$0x8,-0x30(%RBP);
0x401294;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JB	4012cf <baseline+0x12f>;
0x401296;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;MOV	-0x68(%RBP),%RAX;
0x40129a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;ADD	%R14,%RAX;
0x40129d;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;LEA	(%RCX,%R14,4),%R9;
0x4012a1;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;LEA	(%RCX,%RAX,4),%RAX;
0x4012a5;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;CMP	%RAX,%R9;
0x4012a8;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;MOV	%RAX,%RDI;
0x4012ab;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;CMOVA	%R9,%RDI;
0x4012af;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;CMOVB	%R9,%RAX;
0x4012b3;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;ADD	$0x4,%RDI;
0x4012b7;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;CMP	%RSI,%RDI;
0x4012ba;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;SETA	%BL;
0x4012bd;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;CMP	-0x70(%RBP),%RAX;
0x4012c1;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;SETB	%AL;
0x4012c4;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;AND	%BL,%AL;
0x4012c6;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;OR	-0x29(%RBP),%AL;
0x4012c9;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JE	4013c0 <baseline+0x220>;
0x4012cf;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;XOR	%EBX,%EBX;
0x4012d1;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;MOV	%RBX,%R9;
0x4012d4;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;NOT	%R9;
0x4012d7;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;ADD	%R11,%R9;
0x4012da;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;MOV	-0x78(%RBP),%RDI;
0x4012de;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;TEST	%RDI,%RDI;
0x4012e1;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JE	40131e <baseline+0x17e>;
0x4012e3;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;MOV	%R11,%RAX;
0x4012e6;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;IMUL	%RBX,%RAX;
0x4012ea;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;LEA	(,%RAX,4),%RAX;
0x4012f2;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;ADD	%R13,%RAX;
0x4012f5;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;NOPW	%CS:(%RAX,%RAX,1);
0x4012ff;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;NOP;
0x401300;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RAX),%XMM1;  (2) 
0x401304;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVSS	(%RDX,%RBX,4),%XMM1,%XMM1;  (2) 
0x401309;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDSS	(%RSI,%RBX,4),%XMM1,%XMM1;  (2) 
0x40130e;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM1,(%RSI,%RBX,4);  (2) 
0x401313;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;INC	%RBX;  (2) 
0x401316;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;ADD	%R12,%RAX;  (2) 
0x401319;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;DEC	%RDI;  (2) 
0x40131c;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JNE	401300 <baseline+0x160>;  (2) 
0x40131e;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;CMP	$0x3,%R9;
0x401322;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JB	401280 <baseline+0xe0>;
0x401328;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;LEA	0x3(%RBX),%R9;
0x40132c;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;IMUL	%R12,%R9;
0x401330;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;LEA	0x2(%RBX),%R10;
0x401334;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;IMUL	%R12,%R10;
0x401338;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;MOV	%R12,%R15;
0x40133b;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;IMUL	%RBX,%R15;
0x40133f;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;LEA	0x1(%RBX),%RAX;
0x401343;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;IMUL	%R12,%RAX;
0x401347;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;MOV	%R13,%RDI;
0x40134a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;NOPW	(%RAX,%RAX,1);
0x401350;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RDI,%R15,1),%XMM1;  (1) 
0x401356;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVSS	(%RDX,%RBX,4),%XMM1,%XMM1;  (1) 
0x40135b;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDSS	(%RSI,%RBX,4),%XMM1,%XMM1;  (1) 
0x401360;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM1,(%RSI,%RBX,4);  (1) 
0x401365;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RDI,%RAX,1),%XMM1;  (1) 
0x40136a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVSS	0x4(%RDX,%RBX,4),%XMM1,%XMM1;  (1) 
0x401370;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDSS	0x4(%RSI,%RBX,4),%XMM1,%XMM1;  (1) 
0x401376;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM1,0x4(%RSI,%RBX,4);  (1) 
0x40137c;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RDI,%R10,1),%XMM1;  (1) 
0x401382;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVSS	0x8(%RDX,%RBX,4),%XMM1,%XMM1;  (1) 
0x401388;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDSS	0x8(%RSI,%RBX,4),%XMM1,%XMM1;  (1) 
0x40138e;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM1,0x8(%RSI,%RBX,4);  (1) 
0x401394;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RDI,%R9,1),%XMM1;  (1) 
0x40139a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVSS	0xc(%RDX,%RBX,4),%XMM1,%XMM1;  (1) 
0x4013a0;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDSS	0xc(%RSI,%RBX,4),%XMM1,%XMM1;  (1) 
0x4013a6;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM1,0xc(%RSI,%RBX,4);  (1) 
0x4013ac;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;ADD	$0x4,%RBX;  (1) 
0x4013b0;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;ADD	%R8,%RDI;  (1) 
0x4013b3;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;CMP	%RBX,%R11;  (1) 
0x4013b6;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JNE	401350 <baseline+0x1b0>;  (1) 
0x4013b8;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JMP	401280 <baseline+0xe0>;
0x4013c0;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;CMPQ	$0x18,-0x50(%RBP);
0x4013c5;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JAE	4013dc <baseline+0x23c>;
0x4013c7;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;XOR	%R15D,%R15D;
0x4013ca;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;VMOVDQA	%YMM14,%YMM8;
0x4013cf;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;VMOVDQA	0xc49(%RIP),%YMM9;
0x4013d7;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;JMP	4015d7 <baseline+0x437>;
0x4013dc;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;MOV	-0x38(%RBP),%R10;
0x4013e0;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;XOR	%R15D,%R15D;
0x4013e3;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;VMOVDQA	%YMM14,%YMM8;
0x4013e8;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;VMOVDQA	0xc30(%RIP),%YMM9;
0x4013f0;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPSRLQ	$0x20,%YMM8,%YMM10;  (3) 
0x4013f6;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM0,%YMM10,%YMM10;  (3) 
0x4013fa;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM3,%YMM8,%YMM11;  (3) 
0x4013fe;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPADDQ	%YMM10,%YMM11,%YMM10;  (3) 
0x401403;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPSLLQ	$0x20,%YMM10,%YMM10;  (3) 
0x401409;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM0,%YMM8,%YMM11;  (3) 
0x40140d;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPADDQ	%YMM10,%YMM11,%YMM10;  (3) 
0x401412;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPSRLQ	$0x20,%YMM9,%YMM11;  (3) 
0x401418;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM0,%YMM11,%YMM11;  (3) 
0x40141c;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM3,%YMM9,%YMM12;  (3) 
0x401420;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPADDQ	%YMM11,%YMM12,%YMM11;  (3) 
0x401425;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPSLLQ	$0x20,%YMM11,%YMM11;  (3) 
0x40142b;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM0,%YMM9,%YMM12;  (3) 
0x40142f;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPADDQ	%YMM11,%YMM12,%YMM11;  (3) 
0x401434;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPCMPEQD	%XMM1,%XMM1,%XMM1;  (3) 
0x401438;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VGATHERQPS	%XMM1,(%R9,%YMM11,4),%XMM2;  (3) 
0x40143e;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPCMPEQD	%XMM1,%XMM1,%XMM1;  (3) 
0x401442;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VGATHERQPS	%XMM1,(%R9,%YMM10,4),%XMM11;  (3) 
0x401448;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VINSERTF128	$0x1,%XMM2,%YMM11,%YMM1;  (3) 
0x40144e;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVPS	(%RDX,%R15,4),%YMM1,%YMM1;  (3) 
0x401454;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDPS	(%RSI,%R15,4),%YMM1,%YMM1;  (3) 
0x40145a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVUPS	%YMM1,(%RSI,%R15,4);  (3) 
0x401460;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPADDQ	%YMM4,%YMM9,%YMM1;  (3) 
0x401464;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPADDQ	%YMM4,%YMM8,%YMM2;  (3) 
0x401468;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM3,%YMM2,%YMM10;  (3) 
0x40146c;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPSRLQ	$0x20,%YMM2,%YMM11;  (3) 
0x401471;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM0,%YMM11,%YMM11;  (3) 
0x401475;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPADDQ	%YMM11,%YMM10,%YMM10;  (3) 
0x40147a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPSLLQ	$0x20,%YMM10,%YMM10;  (3) 
0x401480;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM0,%YMM2,%YMM2;  (3) 
0x401484;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPADDQ	%YMM2,%YMM10,%YMM2;  (3) 
0x401488;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM3,%YMM1,%YMM10;  (3) 
0x40148c;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPSRLQ	$0x20,%YMM1,%YMM11;  (3) 
0x401491;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM0,%YMM11,%YMM11;  (3) 
0x401495;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPADDQ	%YMM11,%YMM10,%YMM10;  (3) 
0x40149a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPSLLQ	$0x20,%YMM10,%YMM10;  (3) 
0x4014a0;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM0,%YMM1,%YMM1;  (3) 
0x4014a4;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPADDQ	%YMM1,%YMM10,%YMM1;  (3) 
0x4014a8;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPCMPEQD	%XMM5,%XMM5,%XMM5;  (3) 
0x4014ac;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VGATHERQPS	%XMM5,(%R9,%YMM1,4),%XMM6;  (3) 
0x4014b2;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPCMPEQD	%XMM1,%XMM1,%XMM1;  (3) 
0x4014b6;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VGATHERQPS	%XMM1,(%R9,%YMM2,4),%XMM5;  (3) 
0x4014bc;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VINSERTF128	$0x1,%XMM6,%YMM5,%YMM1;  (3) 
0x4014c2;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVPS	0x20(%RDX,%R15,4),%YMM1,%YMM1;  (3) 
0x4014c9;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDPS	0x20(%RSI,%R15,4),%YMM1,%YMM1;  (3) 
0x4014d0;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVUPS	%YMM1,0x20(%RSI,%R15,4);  (3) 
0x4014d7;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPADDQ	%YMM15,%YMM9,%YMM1;  (3) 
0x4014dc;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPADDQ	%YMM15,%YMM8,%YMM2;  (3) 
0x4014e1;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM3,%YMM2,%YMM5;  (3) 
0x4014e5;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPSRLQ	$0x20,%YMM2,%YMM6;  (3) 
0x4014ea;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM0,%YMM6,%YMM6;  (3) 
0x4014ee;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPADDQ	%YMM6,%YMM5,%YMM5;  (3) 
0x4014f2;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPSLLQ	$0x20,%YMM5,%YMM5;  (3) 
0x4014f7;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM0,%YMM2,%YMM2;  (3) 
0x4014fb;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPADDQ	%YMM5,%YMM2,%YMM2;  (3) 
0x4014ff;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM3,%YMM1,%YMM5;  (3) 
0x401503;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPSRLQ	$0x20,%YMM1,%YMM6;  (3) 
0x401508;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM0,%YMM6,%YMM6;  (3) 
0x40150c;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPADDQ	%YMM6,%YMM5,%YMM5;  (3) 
0x401510;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPSLLQ	$0x20,%YMM5,%YMM5;  (3) 
0x401515;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM0,%YMM1,%YMM1;  (3) 
0x401519;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPADDQ	%YMM5,%YMM1,%YMM1;  (3) 
0x40151d;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPCMPEQD	%XMM5,%XMM5,%XMM5;  (3) 
0x401521;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VGATHERQPS	%XMM5,(%R9,%YMM1,4),%XMM6;  (3) 
0x401527;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPCMPEQD	%XMM1,%XMM1,%XMM1;  (3) 
0x40152b;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VGATHERQPS	%XMM1,(%R9,%YMM2,4),%XMM5;  (3) 
0x401531;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VINSERTF128	$0x1,%XMM6,%YMM5,%YMM1;  (3) 
0x401537;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVPS	0x40(%RDX,%R15,4),%YMM1,%YMM1;  (3) 
0x40153e;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDPS	0x40(%RSI,%R15,4),%YMM1,%YMM1;  (3) 
0x401545;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVUPS	%YMM1,0x40(%RSI,%R15,4);  (3) 
0x40154c;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPADDQ	%YMM13,%YMM9,%YMM1;  (3) 
0x401551;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPADDQ	%YMM13,%YMM8,%YMM2;  (3) 
0x401556;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM3,%YMM2,%YMM5;  (3) 
0x40155a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPSRLQ	$0x20,%YMM2,%YMM6;  (3) 
0x40155f;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM0,%YMM6,%YMM6;  (3) 
0x401563;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPADDQ	%YMM6,%YMM5,%YMM5;  (3) 
0x401567;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPSLLQ	$0x20,%YMM5,%YMM5;  (3) 
0x40156c;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM0,%YMM2,%YMM2;  (3) 
0x401570;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPADDQ	%YMM5,%YMM2,%YMM2;  (3) 
0x401574;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM3,%YMM1,%YMM5;  (3) 
0x401578;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPSRLQ	$0x20,%YMM1,%YMM6;  (3) 
0x40157d;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM0,%YMM6,%YMM6;  (3) 
0x401581;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPADDQ	%YMM6,%YMM5,%YMM5;  (3) 
0x401585;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPSLLQ	$0x20,%YMM5,%YMM5;  (3) 
0x40158a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM0,%YMM1,%YMM1;  (3) 
0x40158e;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPADDQ	%YMM5,%YMM1,%YMM1;  (3) 
0x401592;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPCMPEQD	%XMM5,%XMM5,%XMM5;  (3) 
0x401596;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VGATHERQPS	%XMM5,(%R9,%YMM1,4),%XMM6;  (3) 
0x40159c;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPCMPEQD	%XMM1,%XMM1,%XMM1;  (3) 
0x4015a0;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VGATHERQPS	%XMM1,(%R9,%YMM2,4),%XMM5;  (3) 
0x4015a6;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VINSERTF128	$0x1,%XMM6,%YMM5,%YMM1;  (3) 
0x4015ac;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVPS	0x60(%RDX,%R15,4),%YMM1,%YMM1;  (3) 
0x4015b3;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDPS	0x60(%RSI,%R15,4),%YMM1,%YMM1;  (3) 
0x4015ba;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVUPS	%YMM1,0x60(%RSI,%R15,4);  (3) 
0x4015c1;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;ADD	$0x20,%R15;  (3) 
0x4015c5;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;VPADDQ	%YMM7,%YMM8,%YMM8;  (3) 
0x4015c9;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;VPADDQ	%YMM7,%YMM9,%YMM9;  (3) 
0x4015cd;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;ADD	$0x4,%R10;  (3) 
0x4015d1;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JNE	4013f0 <baseline+0x250>;  (3) 
0x4015d7;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;CMPQ	$0,-0x48(%RBP);
0x4015dc;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;MOV	-0x40(%RBP),%RAX;
0x4015e0;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JE	401668 <baseline+0x4c8>;
0x4015e6;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;LEA	(%RSI,%R15,4),%RBX;
0x4015ea;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;LEA	(%RDX,%R15,4),%RCX;
0x4015ee;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;XOR	%EDI,%EDI;
0x4015f0;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPSRLQ	$0x20,%YMM8,%YMM1;  (4) 
0x4015f6;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM0,%YMM1,%YMM1;  (4) 
0x4015fa;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM3,%YMM8,%YMM2;  (4) 
0x4015fe;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPADDQ	%YMM1,%YMM2,%YMM1;  (4) 
0x401602;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPSLLQ	$0x20,%YMM1,%YMM1;  (4) 
0x401607;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM0,%YMM8,%YMM2;  (4) 
0x40160b;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPADDQ	%YMM1,%YMM2,%YMM1;  (4) 
0x40160f;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPSRLQ	$0x20,%YMM9,%YMM2;  (4) 
0x401615;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM0,%YMM2,%YMM2;  (4) 
0x401619;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM3,%YMM9,%YMM5;  (4) 
0x40161d;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPADDQ	%YMM2,%YMM5,%YMM2;  (4) 
0x401621;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPSLLQ	$0x20,%YMM2,%YMM2;  (4) 
0x401626;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM0,%YMM9,%YMM5;  (4) 
0x40162a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPADDQ	%YMM2,%YMM5,%YMM2;  (4) 
0x40162e;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPCMPEQD	%XMM5,%XMM5,%XMM5;  (4) 
0x401632;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VGATHERQPS	%XMM5,(%R9,%YMM2,4),%XMM6;  (4) 
0x401638;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPCMPEQD	%XMM2,%XMM2,%XMM2;  (4) 
0x40163c;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VGATHERQPS	%XMM2,(%R9,%YMM1,4),%XMM5;  (4) 
0x401642;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VINSERTF128	$0x1,%XMM6,%YMM5,%YMM1;  (4) 
0x401648;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVPS	(%RCX,%RDI,1),%YMM1,%YMM1;  (4) 
0x40164d;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDPS	(%RBX,%RDI,1),%YMM1,%YMM1;  (4) 
0x401652;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVUPS	%YMM1,(%RBX,%RDI,1);  (4) 
0x401657;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPADDQ	%YMM4,%YMM8,%YMM8;  (4) 
0x40165b;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPADDQ	%YMM4,%YMM9,%YMM9;  (4) 
0x40165f;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;ADD	$0x20,%RDI;  (4) 
0x401663;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;CMP	%RDI,%RAX;  (4) 
0x401666;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JNE	4015f0 <baseline+0x450>;  (4) 
0x401668;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;MOV	-0x58(%RBP),%RAX;
0x40166c;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;MOV	%RAX,%RBX;
0x40166f;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;CMP	%R11,%RAX;
0x401672;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:0;MOV	-0x60(%RBP),%RCX;
0x401676;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JE	401280 <baseline+0xe0>;
0x40167c;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JMP	4012d1 <baseline+0x131>;
