address;source_location;insn;indent
0x1790;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;MOV	0x38(%RSP),%R12D;
0x1795;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;CMPQ	$0x7e,0x8(%RSP);
0x179b;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;MOV	%R12D,0x40(%RSP);
0x17a0;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;SETA	%R9B;
0x17a4;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;CMPL	$0x1d,0x18(%RSP);
0x17a9;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;SETA	%R14B;
0x17ad;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;TEST	%R14B,%R9B;
0x17b0;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;JE	1dd0 <baseline+0x780>;
0x17b6;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;MOV	-0x8(%RSP),%RCX;
0x17bb;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;ADD	%R13,%RCX;
0x17be;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;CMP	%RCX,%RSI;
0x17c1;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;SETA	%R8B;
0x17c5;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;CMP	%R13,(%RSP);
0x17c9;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;SETB	%AL;
0x17cc;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;OR	%AL,%R8B;
0x17cf;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;JE	1dd0 <baseline+0x780>;
0x17d5;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;MOV	-0xc(%RSP),%R12D;
0x17da;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;TEST	%R12D,%R12D;
0x17dd;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;JE	2021 <baseline+0x9d1>;
0x17e3;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%R13),%XMM0;
0x17e9;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;CMP	$0x1,%R12D;
0x17ed;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VDIVSS	(%RDX),%XMM0,%XMM1;
0x17f1;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VADDSS	(%RSI),%XMM1,%XMM2;
0x17f5;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	%XMM2,(%RSI);
0x17f9;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;JE	1fea <baseline+0x99a>;
0x17ff;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;MOV	-0x48(%RSP),%RCX;
0x1804;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;CMP	$0x2,%R12D;
0x1808;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%R13,%RCX,4),%XMM3;
0x180f;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VDIVSS	0x4(%RDX),%XMM3,%XMM4;
0x1814;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VADDSS	0x4(%RSI),%XMM4,%XMM5;
0x1819;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	%XMM5,0x4(%RSI);
0x181e;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;JE	1ff5 <baseline+0x9a5>;
0x1824;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%R13,%RCX,8),%XMM6;
0x182b;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;CMP	$0x3,%R12D;
0x182f;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VDIVSS	0x8(%RDX),%XMM6,%XMM7;
0x1834;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VADDSS	0x8(%RSI),%XMM7,%XMM8;
0x1839;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	%XMM8,0x8(%RSI);
0x183e;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;JE	2000 <baseline+0x9b0>;
0x1844;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%R13,%RBX,1),%XMM9;
0x184b;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;CMP	$0x4,%R12D;
0x184f;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VDIVSS	0xc(%RDX),%XMM9,%XMM10;
0x1854;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VADDSS	0xc(%RSI),%XMM10,%XMM11;
0x1859;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	%XMM11,0xc(%RSI);
0x185e;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;JE	200b <baseline+0x9bb>;
0x1864;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;MOV	-0x50(%RSP),%R14;
0x1869;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;CMP	$0x5,%R12D;
0x186d;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%R13,%R14,1),%XMM12;
0x1874;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VDIVSS	0x10(%RDX),%XMM12,%XMM13;
0x1879;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VADDSS	0x10(%RSI),%XMM13,%XMM14;
0x187e;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	%XMM14,0x10(%RSI);
0x1883;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;JE	2016 <baseline+0x9c6>;
0x1889;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%R13,%R11,1),%XMM15;
0x1890;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;CMP	$0x6,%R12D;
0x1894;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VDIVSS	0x14(%RDX),%XMM15,%XMM0;
0x1899;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VADDSS	0x14(%RSI),%XMM0,%XMM1;
0x189e;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	%XMM1,0x14(%RSI);
0x18a3;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;JE	2029 <baseline+0x9d9>;
0x18a9;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%R13,%R10,1),%XMM2;
0x18b0;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;CMP	$0x7,%R12D;
0x18b4;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VDIVSS	0x18(%RDX),%XMM2,%XMM3;
0x18b9;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VADDSS	0x18(%RSI),%XMM3,%XMM4;
0x18be;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	%XMM4,0x18(%RSI);
0x18c3;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;JE	2034 <baseline+0x9e4>;
0x18c9;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;MOV	0x10(%RSP),%R9;
0x18ce;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;CMP	$0x8,%R12D;
0x18d2;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;MOV	-0x58(%RSP),%R8;
0x18d7;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%R9,%R8,1),%XMM5;
0x18dd;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VDIVSS	0x1c(%RDX),%XMM5,%XMM6;
0x18e2;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VADDSS	0x1c(%RSI),%XMM6,%XMM7;
0x18e7;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	%XMM7,0x1c(%RSI);
0x18ec;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;JE	203f <baseline+0x9ef>;
0x18f2;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%R9),%XMM8;
0x18f7;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;CMP	$0x9,%R12D;
0x18fb;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VDIVSS	0x20(%RDX),%XMM8,%XMM9;
0x1900;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VADDSS	0x20(%RSI),%XMM9,%XMM10;
0x1905;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	%XMM10,0x20(%RSI);
0x190a;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;JE	204a <baseline+0x9fa>;
0x1910;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%R9,%RCX,4),%XMM11;
0x1916;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;CMP	$0xa,%R12D;
0x191a;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VDIVSS	0x24(%RDX),%XMM11,%XMM12;
0x191f;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VADDSS	0x24(%RSI),%XMM12,%XMM13;
0x1924;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	%XMM13,0x24(%RSI);
0x1929;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;JE	2055 <baseline+0xa05>;
0x192f;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%R9,%RCX,8),%XMM14;
0x1935;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;CMP	$0xb,%R12D;
0x1939;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VDIVSS	0x28(%RDX),%XMM14,%XMM15;
0x193e;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VADDSS	0x28(%RSI),%XMM15,%XMM0;
0x1943;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	%XMM0,0x28(%RSI);
0x1948;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;JE	2060 <baseline+0xa10>;
0x194e;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%R9,%RBX,1),%XMM1;
0x1954;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;CMP	$0xc,%R12D;
0x1958;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VDIVSS	0x2c(%RDX),%XMM1,%XMM2;
0x195d;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VADDSS	0x2c(%RSI),%XMM2,%XMM3;
0x1962;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	%XMM3,0x2c(%RSI);
0x1967;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;JE	206b <baseline+0xa1b>;
0x196d;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%R9,%R14,1),%XMM4;
0x1973;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;CMP	$0xd,%R12D;
0x1977;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VDIVSS	0x30(%RDX),%XMM4,%XMM5;
0x197c;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VADDSS	0x30(%RSI),%XMM5,%XMM6;
0x1981;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	%XMM6,0x30(%RSI);
0x1986;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;JE	2076 <baseline+0xa26>;
0x198c;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%R9,%R11,1),%XMM7;
0x1992;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;CMP	$0xf,%R12D;
0x1996;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VDIVSS	0x34(%RDX),%XMM7,%XMM8;
0x199b;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VADDSS	0x34(%RSI),%XMM8,%XMM9;
0x19a0;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	%XMM9,0x34(%RSI);
0x19a5;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;JNE	2081 <baseline+0xa31>;
0x19ab;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%R9,%R10,1),%XMM10;
0x19b1;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VDIVSS	0x38(%RDX),%XMM10,%XMM11;
0x19b6;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VADDSS	0x38(%RSI),%XMM11,%XMM12;
0x19bb;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	%XMM12,0x38(%RSI);
0x19c0;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;MOV	-0x20(%RSP),%RAX;
0x19c5;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;MOV	0x30(%RSP),%R8;
0x19ca;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;MOV	-0x40(%RSP),%R14;
0x19cf;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;MOV	%R12D,0x1c(%RSP);
0x19d4;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;ADD	0x38(%RSP),%RAX;
0x19d9;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;MOV	-0x28(%RSP),%R9;
0x19de;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;MOV	0x28(%RSP),%R12;
0x19e3;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;MOV	%RAX,%RCX;
0x19e6;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;SAL	$0x2,%RCX;
0x19ea;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;MOV	-0x38(%RSP),%RAX;
0x19ef;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;ADD	%R8,%RCX;
0x19f2;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;MOV	%RCX,%R8;
0x19f5;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;ADD	%R14,%R8;
0x19f8;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;MOV	-0x30(%RSP),%R14;
0x19fd;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;NOPL	(%RAX);
0x1a00;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%R8,%R10,1),%XMM13;  (10) 
0x1a06;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	0x40(%R9),%R9;  (10) 
0x1a0a;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%R8,%RDI,4),%XMM15;  (10) 
0x1a10;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VINSERTPS	$0x10,(%R8,%R12,1),%XMM13,%XMM14;  (10) 
0x1a17;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%R8,%RDI,2),%XMM0;  (10) 
0x1a1d;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VINSERTPS	$0x10,(%R8,%R11,1),%XMM15,%XMM4;  (10) 
0x1a24;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%R8),%XMM1;  (10) 
0x1a29;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VINSERTPS	$0x10,(%R8,%RBX,1),%XMM0,%XMM5;  (10) 
0x1a30;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%RCX,%R10,1),%XMM3;  (10) 
0x1a36;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VINSERTPS	$0x10,(%R8,%RDI,1),%XMM1,%XMM2;  (10) 
0x1a3d;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%RCX,%RDI,4),%XMM7;  (10) 
0x1a42;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VINSERTPS	$0x10,(%RCX,%R12,1),%XMM3,%XMM6;  (10) 
0x1a49;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%RCX,%RDI,2),%XMM9;  (10) 
0x1a4e;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VINSERTPS	$0x10,(%RCX,%R11,1),%XMM7,%XMM8;  (10) 
0x1a55;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%RCX),%XMM11;  (10) 
0x1a59;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VINSERTPS	$0x10,(%RCX,%RBX,1),%XMM9,%XMM10;  (10) 
0x1a60;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VINSERTPS	$0x10,(%RCX,%RDI,1),%XMM11,%XMM12;  (10) 
0x1a67;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVLHPS	%XMM5,%XMM2,%XMM5;  (10) 
0x1a6b;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVLHPS	%XMM14,%XMM4,%XMM14;  (10) 
0x1a70;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVLHPS	%XMM10,%XMM12,%XMM13;  (10) 
0x1a75;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVLHPS	%XMM6,%XMM8,%XMM15;  (10) 
0x1a79;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VINSERTF128	$0x1,%XMM14,%YMM5,%YMM0;  (10) 
0x1a7f;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VINSERTF128	$0x1,%XMM15,%YMM13,%YMM4;  (10) 
0x1a85;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%RCX,%R15,1),%RCX;  (10) 
0x1a89;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VINSERTF64X4	$0x1,%YMM0,%ZMM4,%ZMM1;  (10) 
0x1a90;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	0x40(%R14),%R14;  (10) 
0x1a94;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VDIVPS	-0x40(%R9),%ZMM1,%ZMM2;  (10) 
0x1a9b;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;CMP	%RAX,%R9;  (10) 
0x1a9e;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%R8,%R15,1),%R8;  (10) 
0x1aa2;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VADDPS	-0x40(%R14),%ZMM2,%ZMM3;  (10) 
0x1aa9;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVAPS	%ZMM3,-0x40(%R14);  (10) 
0x1ab0;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;JNE	1a00 <baseline+0x3b0>;  (10) 
0x1ab6;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;MOV	0x1c(%RSP),%EAX;
0x1aba;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;MOV	%R12,0x28(%RSP);
0x1abf;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;MOV	-0x14(%RSP),%R12D;
0x1ac4;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;ADD	%R12D,%EAX;
0x1ac7;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;CMP	%R12D,-0x10(%RSP);
0x1acc;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;JE	1da0 <baseline+0x750>;
0x1ad2;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;MOV	%EAX,%R8D;
0x1ad5;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%RDI),%R12;
0x1ad8;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;IMUL	%R8,%R12;
0x1adc;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;MOV	0x40(%RSP),%R9D;
0x1ae1;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;MOV	0x30(%RSP),%RCX;
0x1ae6;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%R8),%R14;
0x1ae9;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;SAL	$0x2,%R14;
0x1aed;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;ADD	%RSI,%R14;
0x1af0;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%RCX,%R9,4),%RCX;
0x1af4;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%RCX,%R12,1),%XMM6;
0x1afa;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VDIVSS	(%RDX,%R8,4),%XMM6,%XMM7;
0x1b00;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;LEA	0x1(%RAX),%R8D;
0x1b04;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;CMP	%R8D,0x44(%RSP);
0x1b09;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VADDSS	(%R14),%XMM7,%XMM8;
0x1b0e;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	%XMM8,(%R14);
0x1b13;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;JBE	1da0 <baseline+0x750>;
0x1b19;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%RDI),%R12;
0x1b1c;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%RSI,%R8,4),%R14;
0x1b20;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;IMUL	%R8,%R12;
0x1b24;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%RCX,%R12,1),%XMM9;
0x1b2a;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VDIVSS	(%RDX,%R8,4),%XMM9,%XMM10;
0x1b30;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;LEA	0x2(%RAX),%R8D;
0x1b34;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;CMP	%R8D,0x44(%RSP);
0x1b39;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VADDSS	(%R14),%XMM10,%XMM11;
0x1b3e;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	%XMM11,(%R14);
0x1b43;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;JBE	1da0 <baseline+0x750>;
0x1b49;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%RDI),%R12;
0x1b4c;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%RSI,%R8,4),%R14;
0x1b50;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;IMUL	%R8,%R12;
0x1b54;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%RCX,%R12,1),%XMM12;
0x1b5a;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VDIVSS	(%RDX,%R8,4),%XMM12,%XMM13;
0x1b60;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;LEA	0x3(%RAX),%R8D;
0x1b64;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;CMP	%R8D,0x44(%RSP);
0x1b69;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VADDSS	(%R14),%XMM13,%XMM15;
0x1b6e;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	%XMM15,(%R14);
0x1b73;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;JBE	1da0 <baseline+0x750>;
0x1b79;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%RDI),%R12;
0x1b7c;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%RSI,%R8,4),%R14;
0x1b80;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;IMUL	%R8,%R12;
0x1b84;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%RCX,%R12,1),%XMM5;
0x1b8a;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VDIVSS	(%RDX,%R8,4),%XMM5,%XMM14;
0x1b90;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;LEA	0x4(%RAX),%R8D;
0x1b94;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;CMP	%R8D,0x44(%RSP);
0x1b99;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VADDSS	(%R14),%XMM14,%XMM4;
0x1b9e;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	%XMM4,(%R14);
0x1ba3;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;JBE	1da0 <baseline+0x750>;
0x1ba9;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%RDI),%R12;
0x1bac;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%RSI,%R8,4),%R14;
0x1bb0;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;IMUL	%R8,%R12;
0x1bb4;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%RCX,%R12,1),%XMM0;
0x1bba;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VDIVSS	(%RDX,%R8,4),%XMM0,%XMM1;
0x1bc0;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;LEA	0x5(%RAX),%R8D;
0x1bc4;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;CMP	%R8D,0x44(%RSP);
0x1bc9;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VADDSS	(%R14),%XMM1,%XMM2;
0x1bce;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	%XMM2,(%R14);
0x1bd3;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;JBE	1da0 <baseline+0x750>;
0x1bd9;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%RDI),%R12;
0x1bdc;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%RSI,%R8,4),%R14;
0x1be0;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;IMUL	%R8,%R12;
0x1be4;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%RCX,%R12,1),%XMM3;
0x1bea;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VDIVSS	(%RDX,%R8,4),%XMM3,%XMM6;
0x1bf0;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;LEA	0x6(%RAX),%R8D;
0x1bf4;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;CMP	%R8D,0x44(%RSP);
0x1bf9;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VADDSS	(%R14),%XMM6,%XMM7;
0x1bfe;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	%XMM7,(%R14);
0x1c03;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;JBE	1da0 <baseline+0x750>;
0x1c09;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%RDI),%R12;
0x1c0c;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%RSI,%R8,4),%R14;
0x1c10;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;IMUL	%R8,%R12;
0x1c14;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%RCX,%R12,1),%XMM8;
0x1c1a;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VDIVSS	(%RDX,%R8,4),%XMM8,%XMM9;
0x1c20;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;LEA	0x7(%RAX),%R8D;
0x1c24;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;CMP	%R8D,0x44(%RSP);
0x1c29;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VADDSS	(%R14),%XMM9,%XMM10;
0x1c2e;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	%XMM10,(%R14);
0x1c33;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;JBE	1da0 <baseline+0x750>;
0x1c39;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%RDI),%R12;
0x1c3c;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%RSI,%R8,4),%R14;
0x1c40;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;IMUL	%R8,%R12;
0x1c44;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%RCX,%R12,1),%XMM11;
0x1c4a;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;LEA	0x8(%RAX),%ECX;
0x1c4d;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VDIVSS	(%RDX,%R8,4),%XMM11,%XMM12;
0x1c53;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;CMP	%ECX,0x44(%RSP);
0x1c57;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VADDSS	(%R14),%XMM12,%XMM13;
0x1c5c;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	%XMM13,(%R14);
0x1c61;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;JBE	1da0 <baseline+0x750>;
0x1c67;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%RDI),%R14;
0x1c6a;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%RSI,%RCX,4),%R8;
0x1c6e;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;IMUL	%RCX,%R14;
0x1c72;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;MOV	0x30(%RSP),%R12;
0x1c77;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%R12,%R9,4),%R9;
0x1c7b;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%R9,%R14,1),%XMM15;
0x1c81;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VDIVSS	(%RDX,%RCX,4),%XMM15,%XMM5;
0x1c86;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;LEA	0x9(%RAX),%ECX;
0x1c89;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;CMP	%ECX,0x44(%RSP);
0x1c8d;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VADDSS	(%R8),%XMM5,%XMM14;
0x1c92;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	%XMM14,(%R8);
0x1c97;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;JBE	1da0 <baseline+0x750>;
0x1c9d;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%RDI),%R14;
0x1ca0;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%RSI,%RCX,4),%R8;
0x1ca4;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;IMUL	%RCX,%R14;
0x1ca8;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%R9,%R14,1),%XMM4;
0x1cae;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VDIVSS	(%RDX,%RCX,4),%XMM4,%XMM0;
0x1cb3;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;LEA	0xa(%RAX),%ECX;
0x1cb6;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;CMP	%ECX,0x44(%RSP);
0x1cba;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VADDSS	(%R8),%XMM0,%XMM1;
0x1cbf;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	%XMM1,(%R8);
0x1cc4;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;JBE	1da0 <baseline+0x750>;
0x1cca;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%RDI),%R14;
0x1ccd;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%RSI,%RCX,4),%R8;
0x1cd1;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;IMUL	%RCX,%R14;
0x1cd5;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%R9,%R14,1),%XMM2;
0x1cdb;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VDIVSS	(%RDX,%RCX,4),%XMM2,%XMM3;
0x1ce0;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;LEA	0xb(%RAX),%ECX;
0x1ce3;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;CMP	%ECX,0x44(%RSP);
0x1ce7;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VADDSS	(%R8),%XMM3,%XMM6;
0x1cec;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	%XMM6,(%R8);
0x1cf1;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;JBE	1da0 <baseline+0x750>;
0x1cf7;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%RDI),%R14;
0x1cfa;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%RSI,%RCX,4),%R8;
0x1cfe;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;IMUL	%RCX,%R14;
0x1d02;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%R9,%R14,1),%XMM7;
0x1d08;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VDIVSS	(%RDX,%RCX,4),%XMM7,%XMM8;
0x1d0d;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;LEA	0xc(%RAX),%ECX;
0x1d10;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;CMP	%ECX,0x44(%RSP);
0x1d14;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VADDSS	(%R8),%XMM8,%XMM9;
0x1d19;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	%XMM9,(%R8);
0x1d1e;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;JBE	1da0 <baseline+0x750>;
0x1d24;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%RDI),%R14;
0x1d27;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%RSI,%RCX,4),%R8;
0x1d2b;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;IMUL	%RCX,%R14;
0x1d2f;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%R9,%R14,1),%XMM10;
0x1d35;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VDIVSS	(%RDX,%RCX,4),%XMM10,%XMM11;
0x1d3a;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;LEA	0xd(%RAX),%ECX;
0x1d3d;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;CMP	%ECX,0x44(%RSP);
0x1d41;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VADDSS	(%R8),%XMM11,%XMM12;
0x1d46;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	%XMM12,(%R8);
0x1d4b;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;JBE	1da0 <baseline+0x750>;
0x1d4d;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%RDI),%R14;
0x1d50;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%RSI,%RCX,4),%R8;
0x1d54;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;IMUL	%RCX,%R14;
0x1d58;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;LEA	0xe(%RAX),%EAX;
0x1d5b;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;CMP	%EAX,0x44(%RSP);
0x1d5f;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%R9,%R14,1),%XMM13;
0x1d65;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VDIVSS	(%RDX,%RCX,4),%XMM13,%XMM15;
0x1d6a;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VADDSS	(%R8),%XMM15,%XMM5;
0x1d6f;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	%XMM5,(%R8);
0x1d74;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;JBE	1da0 <baseline+0x750>;
0x1d76;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%RDI),%R12;
0x1d79;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%RSI,%RAX,4),%R14;
0x1d7d;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;IMUL	%RAX,%R12;
0x1d81;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%R9,%R12,1),%XMM14;
0x1d87;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VDIVSS	(%RDX,%RAX,4),%XMM14,%XMM4;
0x1d8c;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VADDSS	(%R14),%XMM4,%XMM0;
0x1d91;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	%XMM0,(%R14);
0x1d96;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;NOPW	%CS:(%RAX,%RAX,1);
0x1da0;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:53;MOV	0x38(%RSP),%R12;
0x1da5;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:53;ADDQ	$0x4,0x10(%RSP);
0x1dab;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:53;LEA	0x4(%R13),%R13;
0x1daf;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:53;MOV	%R12,%RAX;
0x1db2;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:53;ADD	$0x1,%RAX;
0x1db6;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:53;CMP	0x20(%RSP),%R12;
0x1dbb;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:53;JE	1fd8 <baseline+0x988>;
0x1dc1;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:53;MOV	%RAX,0x38(%RSP);
0x1dc6;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:53;JMP	1790 <baseline+0x140>;
0x1dd0;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:53;MOV	0x20(%RSP),%R8;
0x1dd5;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:50;XOR	%EAX,%EAX;
0x1dd7;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:50;LEA	(%R13),%RCX;
0x1ddb;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:50;MOV	%R8,%R9;
0x1dde;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:50;ADD	$0x1,%R9;
0x1de2;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:50;AND	$0x7,%R9D;
0x1de6;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:50;JE	1ee4 <baseline+0x894>;
0x1dec;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:50;CMP	$0x1,%R9;
0x1df0;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:50;JE	1ebb <baseline+0x86b>;
0x1df6;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:50;CMP	$0x2,%R9;
0x1dfa;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:50;JE	1ea0 <baseline+0x850>;
0x1e00;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:50;CMP	$0x3,%R9;
0x1e04;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:50;JE	1e85 <baseline+0x835>;
0x1e06;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:50;CMP	$0x4,%R9;
0x1e0a;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:50;JE	1e6a <baseline+0x81a>;
0x1e0c;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:50;CMP	$0x5,%R9;
0x1e10;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:50;JE	1e4f <baseline+0x7ff>;
0x1e12;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:50;CMP	$0x6,%R9;
0x1e16;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:50;JE	1e34 <baseline+0x7e4>;
0x1e18;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%R13),%XMM1;
0x1e1e;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;MOV	$0x1,%EAX;
0x1e23;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VDIVSS	(%RDX),%XMM1,%XMM2;
0x1e27;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%R13,%RDI,1),%RCX;
0x1e2c;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VADDSS	(%RSI),%XMM2,%XMM3;
0x1e30;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	%XMM3,(%RSI);
0x1e34;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%RCX),%XMM6;
0x1e38;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%RCX,%RDI,1),%RCX;
0x1e3c;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VDIVSS	(%RDX,%RAX,4),%XMM6,%XMM7;
0x1e41;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VADDSS	(%RSI,%RAX,4),%XMM7,%XMM8;
0x1e46;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	%XMM8,(%RSI,%RAX,4);
0x1e4b;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;LEA	0x1(%RAX),%RAX;
0x1e4f;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%RCX),%XMM9;
0x1e53;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%RCX,%RDI,1),%RCX;
0x1e57;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VDIVSS	(%RDX,%RAX,4),%XMM9,%XMM10;
0x1e5c;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VADDSS	(%RSI,%RAX,4),%XMM10,%XMM11;
0x1e61;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	%XMM11,(%RSI,%RAX,4);
0x1e66;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;LEA	0x1(%RAX),%RAX;
0x1e6a;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%RCX),%XMM12;
0x1e6e;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%RCX,%RDI,1),%RCX;
0x1e72;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VDIVSS	(%RDX,%RAX,4),%XMM12,%XMM13;
0x1e77;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VADDSS	(%RSI,%RAX,4),%XMM13,%XMM15;
0x1e7c;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	%XMM15,(%RSI,%RAX,4);
0x1e81;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;LEA	0x1(%RAX),%RAX;
0x1e85;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%RCX),%XMM5;
0x1e89;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%RCX,%RDI,1),%RCX;
0x1e8d;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VDIVSS	(%RDX,%RAX,4),%XMM5,%XMM14;
0x1e92;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VADDSS	(%RSI,%RAX,4),%XMM14,%XMM4;
0x1e97;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	%XMM4,(%RSI,%RAX,4);
0x1e9c;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;LEA	0x1(%RAX),%RAX;
0x1ea0;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%RCX),%XMM0;
0x1ea4;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%RCX,%RDI,1),%RCX;
0x1ea8;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VDIVSS	(%RDX,%RAX,4),%XMM0,%XMM1;
0x1ead;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VADDSS	(%RSI,%RAX,4),%XMM1,%XMM2;
0x1eb2;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	%XMM2,(%RSI,%RAX,4);
0x1eb7;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;LEA	0x1(%RAX),%RAX;
0x1ebb;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%RCX),%XMM3;
0x1ebf;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%RAX),%R14;
0x1ec2;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VDIVSS	(%RDX,%RAX,4),%XMM3,%XMM6;
0x1ec7;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;CMP	0x20(%RSP),%R14;
0x1ecc;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;LEA	(%RCX,%RDI,1),%RCX;
0x1ed0;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VADDSS	(%RSI,%RAX,4),%XMM6,%XMM7;
0x1ed5;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	%XMM7,(%RSI,%RAX,4);
0x1eda;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;LEA	0x1(%RAX),%RAX;
0x1ede;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;JE	1da0 <baseline+0x750>;
0x1ee4;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;MOV	0x28(%RSP),%R12;
0x1ee9;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%RCX),%XMM8;  (8) 
0x1eed;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%RCX,%RDI,1),%R8;  (8) 
0x1ef1;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VDIVSS	(%RDX,%RAX,4),%XMM8,%XMM9;  (8) 
0x1ef6;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%R8,%RDI,1),%R9;  (8) 
0x1efa;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%R9,%RDI,1),%R14;  (8) 
0x1efe;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%R14,%RDI,1),%RCX;  (8) 
0x1f02;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VADDSS	(%RSI,%RAX,4),%XMM9,%XMM10;  (8) 
0x1f07;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	%XMM10,(%RSI,%RAX,4);  (8) 
0x1f0c;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%R8),%XMM11;  (8) 
0x1f11;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%RCX,%RDI,1),%R8;  (8) 
0x1f15;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VDIVSS	0x4(%RDX,%RAX,4),%XMM11,%XMM12;  (8) 
0x1f1b;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VADDSS	0x4(%RSI,%RAX,4),%XMM12,%XMM13;  (8) 
0x1f21;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	%XMM13,0x4(%RSI,%RAX,4);  (8) 
0x1f27;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%R9),%XMM15;  (8) 
0x1f2c;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%R8,%RDI,1),%R9;  (8) 
0x1f30;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VDIVSS	0x8(%RDX,%RAX,4),%XMM15,%XMM5;  (8) 
0x1f36;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VADDSS	0x8(%RSI,%RAX,4),%XMM5,%XMM14;  (8) 
0x1f3c;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	%XMM14,0x8(%RSI,%RAX,4);  (8) 
0x1f42;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%R14),%XMM4;  (8) 
0x1f47;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	0x7(%RAX),%R14;  (8) 
0x1f4b;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VDIVSS	0xc(%RDX,%RAX,4),%XMM4,%XMM0;  (8) 
0x1f51;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VADDSS	0xc(%RSI,%RAX,4),%XMM0,%XMM1;  (8) 
0x1f57;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	%XMM1,0xc(%RSI,%RAX,4);  (8) 
0x1f5d;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%RCX),%XMM2;  (8) 
0x1f61;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%R9,%RDI,1),%RCX;  (8) 
0x1f65;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VDIVSS	0x10(%RDX,%RAX,4),%XMM2,%XMM3;  (8) 
0x1f6b;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VADDSS	0x10(%RSI,%RAX,4),%XMM3,%XMM6;  (8) 
0x1f71;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	%XMM6,0x10(%RSI,%RAX,4);  (8) 
0x1f77;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%R8),%XMM7;  (8) 
0x1f7c;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VDIVSS	0x14(%RDX,%RAX,4),%XMM7,%XMM8;  (8) 
0x1f82;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VADDSS	0x14(%RSI,%RAX,4),%XMM8,%XMM9;  (8) 
0x1f88;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	%XMM9,0x14(%RSI,%RAX,4);  (8) 
0x1f8e;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%R9),%XMM10;  (8) 
0x1f93;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VDIVSS	0x18(%RDX,%RAX,4),%XMM10,%XMM11;  (8) 
0x1f99;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VADDSS	0x18(%RSI,%RAX,4),%XMM11,%XMM12;  (8) 
0x1f9f;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	%XMM12,0x18(%RSI,%RAX,4);  (8) 
0x1fa5;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%RCX),%XMM13;  (8) 
0x1fa9;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%RCX,%RDI,1),%RCX;  (8) 
0x1fad;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VDIVSS	0x1c(%RDX,%RAX,4),%XMM13,%XMM15;  (8) 
0x1fb3;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VADDSS	0x1c(%RSI,%RAX,4),%XMM15,%XMM5;  (8) 
0x1fb9;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	0x8(%RAX),%RAX;  (8) 
0x1fbd;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	%XMM5,(%RSI,%R14,4);  (8) 
0x1fc3;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;CMP	0x20(%RSP),%R14;  (8) 
0x1fc8;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;JNE	1ee9 <baseline+0x899>;  (8) 
0x1fce;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;MOV	%R12,0x28(%RSP);
0x1fd3;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;JMP	1da0 <baseline+0x750>;
0x1fea;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;MOV	$0x1,%R12D;
0x1ff0;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;JMP	19c0 <baseline+0x370>;
0x1ff5;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;MOV	$0x2,%R12D;
0x1ffb;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;JMP	19c0 <baseline+0x370>;
0x2000;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;MOV	$0x3,%R12D;
0x2006;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;JMP	19c0 <baseline+0x370>;
0x200b;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;MOV	$0x4,%R12D;
0x2011;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;JMP	19c0 <baseline+0x370>;
0x2016;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;MOV	$0x5,%R12D;
0x201c;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;JMP	19c0 <baseline+0x370>;
0x2021;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;XOR	%R12D,%R12D;
0x2024;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;JMP	19c0 <baseline+0x370>;
0x2029;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;MOV	$0x6,%R12D;
0x202f;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;JMP	19c0 <baseline+0x370>;
0x2034;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;MOV	$0x7,%R12D;
0x203a;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;JMP	19c0 <baseline+0x370>;
0x203f;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;MOV	$0x8,%R12D;
0x2045;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;JMP	19c0 <baseline+0x370>;
0x204a;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;MOV	$0x9,%R12D;
0x2050;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;JMP	19c0 <baseline+0x370>;
0x2055;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;MOV	$0xa,%R12D;
0x205b;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;JMP	19c0 <baseline+0x370>;
0x2060;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;MOV	$0xb,%R12D;
0x2066;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;JMP	19c0 <baseline+0x370>;
0x206b;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;MOV	$0xc,%R12D;
0x2071;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;JMP	19c0 <baseline+0x370>;
0x2076;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;MOV	$0xd,%R12D;
0x207c;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;JMP	19c0 <baseline+0x370>;
0x2081;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;MOV	$0xe,%R12D;
0x2087;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;JMP	19c0 <baseline+0x370>;
