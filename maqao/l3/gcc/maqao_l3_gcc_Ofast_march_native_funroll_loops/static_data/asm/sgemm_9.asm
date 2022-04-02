address;source_location;insn;indent
0x1830;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;CMPQ	$0x3e,0x78(%RSP);
0x1836;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;SETA	%R10B;
0x183a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;CMPL	$0x6,0x74(%RSP);
0x183f;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;SETA	%CL;
0x1842;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;TEST	%CL,%R10B;
0x1845;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JE	1b70 <baseline+0x520>;
0x184b;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;MOV	0x60(%RSP),%RAX;
0x1850;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;ADD	%RDX,%RAX;
0x1853;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;CMP	%RAX,%RDI;
0x1856;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;SETA	%R9B;
0x185a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;CMP	%RDX,0x68(%RSP);
0x185f;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;SETB	%R10B;
0x1863;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;OR	%R10B,%R9B;
0x1866;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JE	1b70 <baseline+0x520>;
0x186c;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;MOV	0x58(%RSP),%RAX;
0x1871;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;MOV	%R13,%RCX;
0x1874;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;SUB	%R12,%RCX;
0x1877;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;ADD	%RDX,%RAX;
0x187a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;AND	$0x20,%ECX;
0x187d;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;MOV	%RDX,0x80(%RSP);
0x1885;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;MOV	%RDI,%R9;
0x1888;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;MOV	%R12,%R10;
0x188b;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;JNE	1ae0 <baseline+0x490>;
0x1891;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;MOV	%RDX,%RCX;
0x1894;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;NOPL	(%RAX);
0x1898;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVUPS	(%R10),%YMM14;  (10) 
0x189d;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RAX,%R8,2),%XMM4;  (10) 
0x18a3;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VRCPPS	%YMM14,%YMM15;  (10) 
0x18a8;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RAX),%XMM3;  (10) 
0x18ac;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RCX,%R8,2),%XMM7;  (10) 
0x18b2;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RCX),%XMM9;  (10) 
0x18b6;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMULPS	%YMM14,%YMM15,%YMM1;  (10) 
0x18bb;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDPS	%YMM15,%YMM15,%YMM0;  (10) 
0x18c0;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VINSERTPS	$0x10,(%RAX,%R11,1),%XMM4,%XMM5;  (10) 
0x18c7;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VINSERTPS	$0x10,(%RAX,%R8,1),%XMM3,%XMM6;  (10) 
0x18ce;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VINSERTPS	$0x10,(%RCX,%R11,1),%XMM7,%XMM8;  (10) 
0x18d5;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMULPS	%YMM1,%YMM15,%YMM2;  (10) 
0x18d9;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VINSERTPS	$0x10,(%RCX,%R8,1),%XMM9,%XMM10;  (10) 
0x18e0;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVLHPS	%XMM5,%XMM6,%XMM12;  (10) 
0x18e4;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVLHPS	%XMM8,%XMM10,%XMM11;  (10) 
0x18e9;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VINSERTF128	$0x1,%XMM12,%YMM11,%YMM13;  (10) 
0x18ef;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VSUBPS	%YMM2,%YMM0,%YMM4;  (10) 
0x18f3;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADD	%RSI,%RCX;  (10) 
0x18f6;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADD	%RSI,%RAX;  (10) 
0x18f9;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMULPS	%YMM4,%YMM13,%YMM5;  (10) 
0x18fd;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADD	$0x40,%R10;  (10) 
0x1901;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADD	$0x40,%R9;  (10) 
0x1905;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDPS	-0x40(%R9),%YMM5,%YMM3;  (10) 
0x190b;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVUPS	%YMM3,-0x40(%R9);  (10) 
0x1911;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVUPS	-0x20(%R10),%YMM2;  (10) 
0x1917;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RAX,%R8,2),%XMM6;  (10) 
0x191d;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VRCPPS	%YMM2,%YMM1;  (10) 
0x1921;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RAX),%XMM8;  (10) 
0x1925;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RCX,%R8,2),%XMM10;  (10) 
0x192b;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RCX),%XMM12;  (10) 
0x192f;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMULPS	%YMM2,%YMM1,%YMM4;  (10) 
0x1933;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDPS	%YMM1,%YMM1,%YMM3;  (10) 
0x1937;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VINSERTPS	$0x10,(%RAX,%R11,1),%XMM6,%XMM7;  (10) 
0x193e;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VINSERTPS	$0x10,(%RAX,%R8,1),%XMM8,%XMM9;  (10) 
0x1945;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VINSERTPS	$0x10,(%RCX,%R11,1),%XMM10,%XMM11;  (10) 
0x194c;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMULPS	%YMM4,%YMM1,%YMM5;  (10) 
0x1950;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VINSERTPS	$0x10,(%RCX,%R8,1),%XMM12,%XMM13;  (10) 
0x1957;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVLHPS	%XMM7,%XMM9,%XMM15;  (10) 
0x195b;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVLHPS	%XMM11,%XMM13,%XMM14;  (10) 
0x1960;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VINSERTF128	$0x1,%XMM15,%YMM14,%YMM0;  (10) 
0x1966;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VSUBPS	%YMM5,%YMM3,%YMM6;  (10) 
0x196a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADD	%RSI,%RCX;  (10) 
0x196d;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADD	%RSI,%RAX;  (10) 
0x1970;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMULPS	%YMM6,%YMM0,%YMM7;  (10) 
0x1974;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDPS	-0x20(%R9),%YMM7,%YMM8;  (10) 
0x197a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVUPS	%YMM8,-0x20(%R9);  (10) 
0x1980;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;CMP	%R13,%R10;  (10) 
0x1983;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JNE	1898 <baseline+0x248>;  (10) 
0x1989;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;CMP	0x70(%RSP),%EBX;
0x198d;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JE	1ab4 <baseline+0x464>;
0x1993;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	0x40(%RSP),%RCX;
0x1998;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	%R14D,%EAX;
0x199b;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RCX,%RAX,4),%XMM9;
0x19a0;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	0x50(%RSP),%R10;
0x19a5;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVSS	(%R10),%XMM9,%XMM10;
0x19aa;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDSS	(%R15),%XMM10,%XMM11;
0x19af;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM11,(%R15);
0x19b4;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;CMP	0x4c(%RSP),%EBX;
0x19b8;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JBE	1ab4 <baseline+0x464>;
0x19be;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	0x38(%RSP),%R9;
0x19c3;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	0x28(%RSP),%R10;
0x19c8;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%R9,%RAX,4),%XMM12;
0x19ce;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	0x30(%RSP),%RCX;
0x19d3;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVSS	(%RCX),%XMM12,%XMM13;
0x19d7;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDSS	(%R10),%XMM13,%XMM14;
0x19dc;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM14,(%R10);
0x19e1;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;CMP	0x48(%RSP),%EBX;
0x19e5;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JBE	1ab4 <baseline+0x464>;
0x19eb;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	0x20(%RSP),%R9;
0x19f0;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	0x10(%RSP),%R10;
0x19f5;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%R9,%RAX,4),%XMM15;
0x19fb;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	0x18(%RSP),%RCX;
0x1a00;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVSS	(%RCX),%XMM15,%XMM0;
0x1a04;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDSS	(%R10),%XMM0,%XMM2;
0x1a09;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM2,(%R10);
0x1a0e;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;CMP	0xc(%RSP),%EBX;
0x1a12;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JBE	1ab4 <baseline+0x464>;
0x1a18;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	-0x8(%RSP),%R9;
0x1a1d;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	-0x18(%RSP),%R10;
0x1a22;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%R9,%RAX,4),%XMM1;
0x1a28;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	-0x10(%RSP),%RCX;
0x1a2d;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVSS	(%RCX),%XMM1,%XMM4;
0x1a31;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDSS	(%R10),%XMM4,%XMM5;
0x1a36;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM5,(%R10);
0x1a3b;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;CMP	0x8(%RSP),%EBX;
0x1a3f;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JBE	1ab4 <baseline+0x464>;
0x1a41;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	-0x20(%RSP),%R9;
0x1a46;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	-0x30(%RSP),%R10;
0x1a4b;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%R9,%RAX,4),%XMM3;
0x1a51;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	-0x28(%RSP),%RCX;
0x1a56;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVSS	(%RCX),%XMM3,%XMM6;
0x1a5a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDSS	(%R10),%XMM6,%XMM7;
0x1a5f;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM7,(%R10);
0x1a64;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;CMP	-0x34(%RSP),%EBX;
0x1a68;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JBE	1ab4 <baseline+0x464>;
0x1a6a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	-0x40(%RSP),%R9;
0x1a6f;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	-0x50(%RSP),%R10;
0x1a74;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%R9,%RAX,4),%XMM8;
0x1a7a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	-0x48(%RSP),%RCX;
0x1a7f;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVSS	(%RCX),%XMM8,%XMM9;
0x1a83;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDSS	(%R10),%XMM9,%XMM10;
0x1a88;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM10,(%R10);
0x1a8d;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;CMP	-0x38(%RSP),%EBX;
0x1a91;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JBE	1ab4 <baseline+0x464>;
0x1a93;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	-0x58(%RSP),%R9;
0x1a98;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	-0x68(%RSP),%RCX;
0x1a9d;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%R9,%RAX,4),%XMM11;
0x1aa3;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	-0x60(%RSP),%RAX;
0x1aa8;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVSS	(%RAX),%XMM11,%XMM12;
0x1aac;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDSS	(%RCX),%XMM12,%XMM13;
0x1ab0;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM13,(%RCX);
0x1ab4;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:53;INC	%R14D;
0x1ab7;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:53;ADD	$0x4,%RDX;
0x1abb;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:53;CMP	%R14D,%EBX;
0x1abe;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:53;JNE	1830 <baseline+0x1e0>;
0x1ae0;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVUPS	(%R12),%YMM11;
0x1ae6;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RAX,%R8,2),%XMM1;
0x1aec;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VRCPPS	%YMM11,%YMM12;
0x1af1;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RAX),%XMM0;
0x1af5;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RDX,%R8,2),%XMM3;
0x1afb;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RDX),%XMM6;
0x1aff;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMULPS	%YMM11,%YMM12,%YMM13;
0x1b04;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDPS	%YMM12,%YMM12,%YMM15;
0x1b09;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VINSERTPS	$0x10,(%RAX,%R11,1),%XMM1,%XMM2;
0x1b10;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VINSERTPS	$0x10,(%RAX,%R8,1),%XMM0,%XMM4;
0x1b17;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VINSERTPS	$0x10,(%RDX,%R11,1),%XMM3,%XMM5;
0x1b1e;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMULPS	%YMM13,%YMM12,%YMM14;
0x1b23;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VINSERTPS	$0x10,(%RDX,%R8,1),%XMM6,%XMM7;
0x1b2a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVLHPS	%XMM2,%XMM4,%XMM9;
0x1b2e;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVLHPS	%XMM5,%XMM7,%XMM8;
0x1b32;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VINSERTF128	$0x1,%XMM9,%YMM8,%YMM10;
0x1b38;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VSUBPS	%YMM14,%YMM15,%YMM1;
0x1b3d;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;LEA	(%RDX,%RSI,1),%RCX;
0x1b41;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;LEA	0x20(%R12),%R10;
0x1b46;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMULPS	%YMM1,%YMM10,%YMM2;
0x1b4a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	%RCX,0x80(%RSP);
0x1b52;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;LEA	0x20(%RDI),%R9;
0x1b56;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADD	%RSI,%RAX;
0x1b59;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDPS	(%RDI),%YMM2,%YMM0;
0x1b5d;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVUPS	%YMM0,(%RDI);
0x1b61;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;CMP	%R13,%R10;
0x1b64;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JNE	1898 <baseline+0x248>;
0x1b6a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JMP	1989 <baseline+0x339>;
0x1b70;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;MOV	(%RSP),%R10;
0x1b74;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;MOV	%RDX,%RCX;
0x1b77;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;LEA	0x1(%R10),%R9;
0x1b7b;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;XOR	%EAX,%EAX;
0x1b7d;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;AND	$0x7,%R9D;
0x1b81;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;JE	1c77 <baseline+0x627>;
0x1b87;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;CMP	$0x1,%R9;
0x1b8b;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;JE	1c50 <baseline+0x600>;
0x1b91;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;CMP	$0x2,%R9;
0x1b95;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;JE	1c36 <baseline+0x5e6>;
0x1b9b;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;CMP	$0x3,%R9;
0x1b9f;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;JE	1c1c <baseline+0x5cc>;
0x1ba1;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;CMP	$0x4,%R9;
0x1ba5;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;JE	1c02 <baseline+0x5b2>;
0x1ba7;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;CMP	$0x5,%R9;
0x1bab;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;JE	1be8 <baseline+0x598>;
0x1bad;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;CMP	$0x6,%R9;
0x1bb1;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;JE	1bce <baseline+0x57e>;
0x1bb3;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RDX),%XMM14;
0x1bb7;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	$0x1,%EAX;
0x1bbc;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVSS	(%R12),%XMM14,%XMM15;
0x1bc2;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDSS	(%RDI),%XMM15,%XMM0;
0x1bc6;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;LEA	(%RDX,%R8,1),%RCX;
0x1bca;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM0,(%RDI);
0x1bce;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RCX),%XMM2;
0x1bd2;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADD	%R8,%RCX;
0x1bd5;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVSS	(%R12,%RAX,4),%XMM2,%XMM1;
0x1bdb;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDSS	(%RDI,%RAX,4),%XMM1,%XMM4;
0x1be0;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM4,(%RDI,%RAX,4);
0x1be5;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;INC	%RAX;
0x1be8;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RCX),%XMM5;
0x1bec;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADD	%R8,%RCX;
0x1bef;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVSS	(%R12,%RAX,4),%XMM5,%XMM3;
0x1bf5;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDSS	(%RDI,%RAX,4),%XMM3,%XMM6;
0x1bfa;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM6,(%RDI,%RAX,4);
0x1bff;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;INC	%RAX;
0x1c02;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RCX),%XMM7;
0x1c06;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADD	%R8,%RCX;
0x1c09;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVSS	(%R12,%RAX,4),%XMM7,%XMM8;
0x1c0f;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDSS	(%RDI,%RAX,4),%XMM8,%XMM9;
0x1c14;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM9,(%RDI,%RAX,4);
0x1c19;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;INC	%RAX;
0x1c1c;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RCX),%XMM10;
0x1c20;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADD	%R8,%RCX;
0x1c23;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVSS	(%R12,%RAX,4),%XMM10,%XMM11;
0x1c29;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDSS	(%RDI,%RAX,4),%XMM11,%XMM12;
0x1c2e;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM12,(%RDI,%RAX,4);
0x1c33;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;INC	%RAX;
0x1c36;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RCX),%XMM13;
0x1c3a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADD	%R8,%RCX;
0x1c3d;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVSS	(%R12,%RAX,4),%XMM13,%XMM14;
0x1c43;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDSS	(%RDI,%RAX,4),%XMM14,%XMM15;
0x1c48;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM15,(%RDI,%RAX,4);
0x1c4d;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;INC	%RAX;
0x1c50;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RCX),%XMM0;
0x1c54;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	%RAX,%R10;
0x1c57;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVSS	(%R12,%RAX,4),%XMM0,%XMM2;
0x1c5d;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDSS	(%RDI,%RAX,4),%XMM2,%XMM1;
0x1c62;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADD	%R8,%RCX;
0x1c65;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM1,(%RDI,%RAX,4);
0x1c6a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;INC	%RAX;
0x1c6d;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;CMP	(%RSP),%R10;
0x1c71;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JE	1ab4 <baseline+0x464>;
0x1c77;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RCX),%XMM4;  (8) 
0x1c7b;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADD	%R8,%RCX;  (8) 
0x1c7e;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVSS	(%R12,%RAX,4),%XMM4,%XMM5;  (8) 
0x1c84;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDSS	(%RDI,%RAX,4),%XMM5,%XMM3;  (8) 
0x1c89;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;LEA	0x7(%RAX),%R9;  (8) 
0x1c8d;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM3,(%RDI,%RAX,4);  (8) 
0x1c92;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RCX),%XMM6;  (8) 
0x1c96;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADD	%R8,%RCX;  (8) 
0x1c99;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVSS	0x4(%R12,%RAX,4),%XMM6,%XMM7;  (8) 
0x1ca0;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDSS	0x4(%RDI,%RAX,4),%XMM7,%XMM8;  (8) 
0x1ca6;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM8,0x4(%RDI,%RAX,4);  (8) 
0x1cac;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RCX),%XMM9;  (8) 
0x1cb0;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADD	%R8,%RCX;  (8) 
0x1cb3;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVSS	0x8(%R12,%RAX,4),%XMM9,%XMM10;  (8) 
0x1cba;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDSS	0x8(%RDI,%RAX,4),%XMM10,%XMM11;  (8) 
0x1cc0;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM11,0x8(%RDI,%RAX,4);  (8) 
0x1cc6;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RCX),%XMM12;  (8) 
0x1cca;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADD	%R8,%RCX;  (8) 
0x1ccd;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVSS	0xc(%R12,%RAX,4),%XMM12,%XMM13;  (8) 
0x1cd4;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDSS	0xc(%RDI,%RAX,4),%XMM13,%XMM14;  (8) 
0x1cda;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM14,0xc(%RDI,%RAX,4);  (8) 
0x1ce0;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RCX),%XMM15;  (8) 
0x1ce4;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADD	%R8,%RCX;  (8) 
0x1ce7;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVSS	0x10(%R12,%RAX,4),%XMM15,%XMM0;  (8) 
0x1cee;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDSS	0x10(%RDI,%RAX,4),%XMM0,%XMM2;  (8) 
0x1cf4;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM2,0x10(%RDI,%RAX,4);  (8) 
0x1cfa;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RCX),%XMM1;  (8) 
0x1cfe;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADD	%R8,%RCX;  (8) 
0x1d01;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVSS	0x14(%R12,%RAX,4),%XMM1,%XMM4;  (8) 
0x1d08;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDSS	0x14(%RDI,%RAX,4),%XMM4,%XMM5;  (8) 
0x1d0e;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM5,0x14(%RDI,%RAX,4);  (8) 
0x1d14;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RCX),%XMM3;  (8) 
0x1d18;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADD	%R8,%RCX;  (8) 
0x1d1b;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVSS	0x18(%R12,%RAX,4),%XMM3,%XMM6;  (8) 
0x1d22;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDSS	0x18(%RDI,%RAX,4),%XMM6,%XMM7;  (8) 
0x1d28;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM7,0x18(%RDI,%RAX,4);  (8) 
0x1d2e;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RCX),%XMM8;  (8) 
0x1d32;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADD	%R8,%RCX;  (8) 
0x1d35;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVSS	0x1c(%R12,%RAX,4),%XMM8,%XMM9;  (8) 
0x1d3c;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDSS	0x1c(%RDI,%RAX,4),%XMM9,%XMM10;  (8) 
0x1d42;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADD	$0x8,%RAX;  (8) 
0x1d46;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM10,(%RDI,%R9,4);  (8) 
0x1d4c;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;CMP	(%RSP),%R9;  (8) 
0x1d50;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JNE	1c77 <baseline+0x627>;  (8) 
0x1d56;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JMP	1ab4 <baseline+0x464>;
