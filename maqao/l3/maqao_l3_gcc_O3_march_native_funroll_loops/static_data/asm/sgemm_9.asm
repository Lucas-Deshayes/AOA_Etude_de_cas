address;source_location;insn;indent
0x1830;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;CMPQ	$0x3e,0x78(%RSP);
0x1836;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;SETA	%R10B;
0x183a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;CMPL	$0x6,0x74(%RSP);
0x183f;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;SETA	%CL;
0x1842;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;TEST	%CL,%R10B;
0x1845;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JE	1b20 <baseline+0x4d0>;
0x184b;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;MOV	0x60(%RSP),%RAX;
0x1850;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;ADD	%RDX,%RAX;
0x1853;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;CMP	%RAX,%RDI;
0x1856;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;SETA	%R9B;
0x185a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;CMP	%RDX,0x68(%RSP);
0x185f;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;SETB	%R10B;
0x1863;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;OR	%R10B,%R9B;
0x1866;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JE	1b20 <baseline+0x4d0>;
0x186c;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;MOV	0x58(%RSP),%RAX;
0x1871;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;MOV	%R13,%RCX;
0x1874;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;SUB	%R12,%RCX;
0x1877;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;ADD	%RDX,%RAX;
0x187a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;AND	$0x20,%ECX;
0x187d;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;MOV	%RDX,0x80(%RSP);
0x1885;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;MOV	%RDI,%R9;
0x1888;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;MOV	%R12,%R10;
0x188b;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;JNE	1aa8 <baseline+0x458>;
0x1891;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;MOV	%RDX,%RCX;
0x1894;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;NOPL	(%RAX);
0x1898;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RAX,%R8,2),%XMM13;  (10) 
0x189e;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RAX),%XMM15;  (10) 
0x18a2;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RCX,%R8,2),%XMM2;  (10) 
0x18a8;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RCX),%XMM0;  (10) 
0x18ac;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VINSERTPS	$0x10,(%RAX,%R11,1),%XMM13,%XMM14;  (10) 
0x18b3;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VINSERTPS	$0x10,(%RAX,%R8,1),%XMM15,%XMM1;  (10) 
0x18ba;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VINSERTPS	$0x10,(%RCX,%R11,1),%XMM2,%XMM4;  (10) 
0x18c1;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VINSERTPS	$0x10,(%RCX,%R8,1),%XMM0,%XMM3;  (10) 
0x18c8;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVLHPS	%XMM14,%XMM1,%XMM6;  (10) 
0x18cd;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVLHPS	%XMM4,%XMM3,%XMM5;  (10) 
0x18d1;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VINSERTF128	$0x1,%XMM6,%YMM5,%YMM7;  (10) 
0x18d7;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVPS	(%R10),%YMM7,%YMM8;  (10) 
0x18dc;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDPS	(%R9),%YMM8,%YMM9;  (10) 
0x18e1;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADD	%RSI,%RCX;  (10) 
0x18e4;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADD	%RSI,%RAX;  (10) 
0x18e7;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVUPS	%YMM9,(%R9);  (10) 
0x18ec;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RAX,%R8,2),%XMM10;  (10) 
0x18f2;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RAX),%XMM12;  (10) 
0x18f6;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RCX,%R8,2),%XMM14;  (10) 
0x18fc;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RCX),%XMM1;  (10) 
0x1900;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VINSERTPS	$0x10,(%RAX,%R11,1),%XMM10,%XMM11;  (10) 
0x1907;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VINSERTPS	$0x10,(%RAX,%R8,1),%XMM12,%XMM13;  (10) 
0x190e;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VINSERTPS	$0x10,(%RCX,%R11,1),%XMM14,%XMM15;  (10) 
0x1915;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VINSERTPS	$0x10,(%RCX,%R8,1),%XMM1,%XMM2;  (10) 
0x191c;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVLHPS	%XMM11,%XMM13,%XMM0;  (10) 
0x1921;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVLHPS	%XMM15,%XMM2,%XMM4;  (10) 
0x1926;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VINSERTF128	$0x1,%XMM0,%YMM4,%YMM3;  (10) 
0x192c;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVPS	0x20(%R10),%YMM3,%YMM5;  (10) 
0x1932;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDPS	0x20(%R9),%YMM5,%YMM6;  (10) 
0x1938;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADD	$0x40,%R10;  (10) 
0x193c;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADD	%RSI,%RCX;  (10) 
0x193f;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVUPS	%YMM6,0x20(%R9);  (10) 
0x1945;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;ADD	%RSI,%RAX;  (10) 
0x1948;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;ADD	$0x40,%R9;  (10) 
0x194c;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;CMP	%R13,%R10;  (10) 
0x194f;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JNE	1898 <baseline+0x248>;  (10) 
0x1955;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;CMP	0x70(%RSP),%EBX;
0x1959;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JE	1a80 <baseline+0x430>;
0x195f;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	0x40(%RSP),%RCX;
0x1964;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	%R14D,%EAX;
0x1967;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RCX,%RAX,4),%XMM7;
0x196c;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	0x50(%RSP),%R10;
0x1971;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVSS	(%R10),%XMM7,%XMM8;
0x1976;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDSS	(%R15),%XMM8,%XMM9;
0x197b;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM9,(%R15);
0x1980;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;CMP	0x4c(%RSP),%EBX;
0x1984;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JBE	1a80 <baseline+0x430>;
0x198a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	0x38(%RSP),%R9;
0x198f;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	0x28(%RSP),%R10;
0x1994;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%R9,%RAX,4),%XMM10;
0x199a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	0x30(%RSP),%RCX;
0x199f;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVSS	(%RCX),%XMM10,%XMM11;
0x19a3;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDSS	(%R10),%XMM11,%XMM12;
0x19a8;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM12,(%R10);
0x19ad;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;CMP	0x48(%RSP),%EBX;
0x19b1;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JBE	1a80 <baseline+0x430>;
0x19b7;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	0x20(%RSP),%R9;
0x19bc;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	0x10(%RSP),%R10;
0x19c1;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%R9,%RAX,4),%XMM13;
0x19c7;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	0x18(%RSP),%RCX;
0x19cc;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVSS	(%RCX),%XMM13,%XMM14;
0x19d0;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDSS	(%R10),%XMM14,%XMM15;
0x19d5;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM15,(%R10);
0x19da;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;CMP	0xc(%RSP),%EBX;
0x19de;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JBE	1a80 <baseline+0x430>;
0x19e4;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	-0x8(%RSP),%R9;
0x19e9;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	-0x18(%RSP),%R10;
0x19ee;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%R9,%RAX,4),%XMM1;
0x19f4;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	-0x10(%RSP),%RCX;
0x19f9;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVSS	(%RCX),%XMM1,%XMM2;
0x19fd;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDSS	(%R10),%XMM2,%XMM4;
0x1a02;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM4,(%R10);
0x1a07;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;CMP	0x8(%RSP),%EBX;
0x1a0b;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JBE	1a80 <baseline+0x430>;
0x1a0d;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	-0x20(%RSP),%R9;
0x1a12;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	-0x30(%RSP),%R10;
0x1a17;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%R9,%RAX,4),%XMM0;
0x1a1d;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	-0x28(%RSP),%RCX;
0x1a22;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVSS	(%RCX),%XMM0,%XMM3;
0x1a26;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDSS	(%R10),%XMM3,%XMM5;
0x1a2b;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM5,(%R10);
0x1a30;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;CMP	-0x34(%RSP),%EBX;
0x1a34;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JBE	1a80 <baseline+0x430>;
0x1a36;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	-0x40(%RSP),%R9;
0x1a3b;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	-0x50(%RSP),%R10;
0x1a40;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%R9,%RAX,4),%XMM6;
0x1a46;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	-0x48(%RSP),%RCX;
0x1a4b;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVSS	(%RCX),%XMM6,%XMM7;
0x1a4f;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDSS	(%R10),%XMM7,%XMM8;
0x1a54;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM8,(%R10);
0x1a59;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;CMP	-0x38(%RSP),%EBX;
0x1a5d;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JBE	1a80 <baseline+0x430>;
0x1a5f;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	-0x58(%RSP),%R9;
0x1a64;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	-0x68(%RSP),%RCX;
0x1a69;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%R9,%RAX,4),%XMM9;
0x1a6f;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	-0x60(%RSP),%RAX;
0x1a74;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVSS	(%RAX),%XMM9,%XMM10;
0x1a78;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDSS	(%RCX),%XMM10,%XMM11;
0x1a7c;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM11,(%RCX);
0x1a80;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:53;INC	%R14D;
0x1a83;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:53;ADD	$0x4,%RDX;
0x1a87;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:53;CMP	%R14D,%EBX;
0x1a8a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:53;JNE	1830 <baseline+0x1e0>;
0x1aa8;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RAX,%R8,2),%XMM1;
0x1aae;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RAX),%XMM0;
0x1ab2;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RDX,%R8,2),%XMM3;
0x1ab8;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RDX),%XMM6;
0x1abc;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VINSERTPS	$0x10,(%RAX,%R11,1),%XMM1,%XMM2;
0x1ac3;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VINSERTPS	$0x10,(%RAX,%R8,1),%XMM0,%XMM4;
0x1aca;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VINSERTPS	$0x10,(%RDX,%R11,1),%XMM3,%XMM5;
0x1ad1;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VINSERTPS	$0x10,(%RDX,%R8,1),%XMM6,%XMM7;
0x1ad8;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVLHPS	%XMM2,%XMM4,%XMM9;
0x1adc;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVLHPS	%XMM5,%XMM7,%XMM8;
0x1ae0;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VINSERTF128	$0x1,%XMM9,%YMM8,%YMM10;
0x1ae6;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVPS	(%R12),%YMM10,%YMM11;
0x1aec;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDPS	(%RDI),%YMM11,%YMM12;
0x1af0;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;LEA	(%RDX,%RSI,1),%RCX;
0x1af4;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;LEA	0x20(%R12),%R10;
0x1af9;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	%RCX,0x80(%RSP);
0x1b01;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVUPS	%YMM12,(%RDI);
0x1b05;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;LEA	0x20(%RDI),%R9;
0x1b09;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;ADD	%RSI,%RAX;
0x1b0c;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;CMP	%R13,%R10;
0x1b0f;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JNE	1898 <baseline+0x248>;
0x1b15;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JMP	1955 <baseline+0x305>;
0x1b20;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;MOV	(%RSP),%R10;
0x1b24;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;MOV	%RDX,%RCX;
0x1b27;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;LEA	0x1(%R10),%R9;
0x1b2b;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;XOR	%EAX,%EAX;
0x1b2d;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;AND	$0x7,%R9D;
0x1b31;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;JE	1c27 <baseline+0x5d7>;
0x1b37;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;CMP	$0x1,%R9;
0x1b3b;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;JE	1c00 <baseline+0x5b0>;
0x1b41;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;CMP	$0x2,%R9;
0x1b45;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;JE	1be6 <baseline+0x596>;
0x1b4b;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;CMP	$0x3,%R9;
0x1b4f;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;JE	1bcc <baseline+0x57c>;
0x1b51;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;CMP	$0x4,%R9;
0x1b55;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;JE	1bb2 <baseline+0x562>;
0x1b57;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;CMP	$0x5,%R9;
0x1b5b;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;JE	1b98 <baseline+0x548>;
0x1b5d;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;CMP	$0x6,%R9;
0x1b61;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;JE	1b7e <baseline+0x52e>;
0x1b63;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RDX),%XMM12;
0x1b67;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	$0x1,%EAX;
0x1b6c;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVSS	(%R12),%XMM12,%XMM13;
0x1b72;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDSS	(%RDI),%XMM13,%XMM14;
0x1b76;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;LEA	(%RDX,%R8,1),%RCX;
0x1b7a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM14,(%RDI);
0x1b7e;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RCX),%XMM15;
0x1b82;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADD	%R8,%RCX;
0x1b85;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVSS	(%R12,%RAX,4),%XMM15,%XMM1;
0x1b8b;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDSS	(%RDI,%RAX,4),%XMM1,%XMM2;
0x1b90;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM2,(%RDI,%RAX,4);
0x1b95;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;INC	%RAX;
0x1b98;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RCX),%XMM4;
0x1b9c;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADD	%R8,%RCX;
0x1b9f;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVSS	(%R12,%RAX,4),%XMM4,%XMM0;
0x1ba5;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDSS	(%RDI,%RAX,4),%XMM0,%XMM3;
0x1baa;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM3,(%RDI,%RAX,4);
0x1baf;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;INC	%RAX;
0x1bb2;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RCX),%XMM5;
0x1bb6;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADD	%R8,%RCX;
0x1bb9;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVSS	(%R12,%RAX,4),%XMM5,%XMM6;
0x1bbf;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDSS	(%RDI,%RAX,4),%XMM6,%XMM7;
0x1bc4;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM7,(%RDI,%RAX,4);
0x1bc9;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;INC	%RAX;
0x1bcc;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RCX),%XMM8;
0x1bd0;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADD	%R8,%RCX;
0x1bd3;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVSS	(%R12,%RAX,4),%XMM8,%XMM9;
0x1bd9;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDSS	(%RDI,%RAX,4),%XMM9,%XMM10;
0x1bde;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM10,(%RDI,%RAX,4);
0x1be3;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;INC	%RAX;
0x1be6;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RCX),%XMM11;
0x1bea;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADD	%R8,%RCX;
0x1bed;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVSS	(%R12,%RAX,4),%XMM11,%XMM12;
0x1bf3;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDSS	(%RDI,%RAX,4),%XMM12,%XMM13;
0x1bf8;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM13,(%RDI,%RAX,4);
0x1bfd;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;INC	%RAX;
0x1c00;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RCX),%XMM14;
0x1c04;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	%RAX,%R10;
0x1c07;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVSS	(%R12,%RAX,4),%XMM14,%XMM15;
0x1c0d;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDSS	(%RDI,%RAX,4),%XMM15,%XMM1;
0x1c12;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADD	%R8,%RCX;
0x1c15;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM1,(%RDI,%RAX,4);
0x1c1a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;INC	%RAX;
0x1c1d;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;CMP	(%RSP),%R10;
0x1c21;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JE	1a80 <baseline+0x430>;
0x1c27;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RCX),%XMM2;  (8) 
0x1c2b;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADD	%R8,%RCX;  (8) 
0x1c2e;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVSS	(%R12,%RAX,4),%XMM2,%XMM4;  (8) 
0x1c34;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDSS	(%RDI,%RAX,4),%XMM4,%XMM0;  (8) 
0x1c39;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;LEA	0x7(%RAX),%R9;  (8) 
0x1c3d;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM0,(%RDI,%RAX,4);  (8) 
0x1c42;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RCX),%XMM3;  (8) 
0x1c46;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADD	%R8,%RCX;  (8) 
0x1c49;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVSS	0x4(%R12,%RAX,4),%XMM3,%XMM5;  (8) 
0x1c50;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDSS	0x4(%RDI,%RAX,4),%XMM5,%XMM6;  (8) 
0x1c56;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM6,0x4(%RDI,%RAX,4);  (8) 
0x1c5c;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RCX),%XMM7;  (8) 
0x1c60;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADD	%R8,%RCX;  (8) 
0x1c63;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVSS	0x8(%R12,%RAX,4),%XMM7,%XMM8;  (8) 
0x1c6a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDSS	0x8(%RDI,%RAX,4),%XMM8,%XMM9;  (8) 
0x1c70;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM9,0x8(%RDI,%RAX,4);  (8) 
0x1c76;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RCX),%XMM10;  (8) 
0x1c7a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADD	%R8,%RCX;  (8) 
0x1c7d;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVSS	0xc(%R12,%RAX,4),%XMM10,%XMM11;  (8) 
0x1c84;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDSS	0xc(%RDI,%RAX,4),%XMM11,%XMM12;  (8) 
0x1c8a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM12,0xc(%RDI,%RAX,4);  (8) 
0x1c90;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RCX),%XMM13;  (8) 
0x1c94;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADD	%R8,%RCX;  (8) 
0x1c97;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVSS	0x10(%R12,%RAX,4),%XMM13,%XMM14;  (8) 
0x1c9e;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDSS	0x10(%RDI,%RAX,4),%XMM14,%XMM15;  (8) 
0x1ca4;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM15,0x10(%RDI,%RAX,4);  (8) 
0x1caa;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RCX),%XMM1;  (8) 
0x1cae;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADD	%R8,%RCX;  (8) 
0x1cb1;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVSS	0x14(%R12,%RAX,4),%XMM1,%XMM2;  (8) 
0x1cb8;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDSS	0x14(%RDI,%RAX,4),%XMM2,%XMM4;  (8) 
0x1cbe;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM4,0x14(%RDI,%RAX,4);  (8) 
0x1cc4;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RCX),%XMM0;  (8) 
0x1cc8;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADD	%R8,%RCX;  (8) 
0x1ccb;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVSS	0x18(%R12,%RAX,4),%XMM0,%XMM3;  (8) 
0x1cd2;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDSS	0x18(%RDI,%RAX,4),%XMM3,%XMM5;  (8) 
0x1cd8;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM5,0x18(%RDI,%RAX,4);  (8) 
0x1cde;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RCX),%XMM6;  (8) 
0x1ce2;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADD	%R8,%RCX;  (8) 
0x1ce5;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVSS	0x1c(%R12,%RAX,4),%XMM6,%XMM7;  (8) 
0x1cec;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDSS	0x1c(%RDI,%RAX,4),%XMM7,%XMM8;  (8) 
0x1cf2;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADD	$0x8,%RAX;  (8) 
0x1cf6;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM8,(%RDI,%R9,4);  (8) 
0x1cfc;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;CMP	(%RSP),%R9;  (8) 
0x1d00;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JNE	1c27 <baseline+0x5d7>;  (8) 
0x1d06;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JMP	1a80 <baseline+0x430>;
