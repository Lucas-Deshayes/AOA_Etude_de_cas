address;source_location;insn;indent
0x1678;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;LEA	0x1(%R9),%R11;
0x167c;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;MOV	%R8,%RCX;
0x167f;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;XOR	%EAX,%EAX;
0x1681;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;AND	$0x7,%R11D;
0x1685;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;JE	1773 <baseline+0x123>;
0x168b;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;CMP	$0x1,%R11;
0x168f;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;JE	174e <baseline+0xfe>;
0x1695;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;CMP	$0x2,%R11;
0x1699;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;JE	1735 <baseline+0xe5>;
0x169f;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;CMP	$0x3,%R11;
0x16a3;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;JE	171c <baseline+0xcc>;
0x16a5;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;CMP	$0x4,%R11;
0x16a9;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;JE	1703 <baseline+0xb3>;
0x16ab;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;CMP	$0x5,%R11;
0x16af;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;JE	16ea <baseline+0x9a>;
0x16b1;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;CMP	$0x6,%R11;
0x16b5;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;JE	16d1 <baseline+0x81>;
0x16b7;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%R8),%XMM0;
0x16bc;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	$0x1,%EAX;
0x16c1;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVSS	(%RDX),%XMM0,%XMM1;
0x16c5;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDSS	(%RSI),%XMM1,%XMM2;
0x16c9;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;LEA	(%R8,%RDI,1),%RCX;
0x16cd;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM2,(%RSI);
0x16d1;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RCX),%XMM3;
0x16d5;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADD	%RDI,%RCX;
0x16d8;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVSS	(%RDX,%RAX,4),%XMM3,%XMM4;
0x16dd;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDSS	(%RSI,%RAX,4),%XMM4,%XMM5;
0x16e2;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM5,(%RSI,%RAX,4);
0x16e7;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;INC	%RAX;
0x16ea;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RCX),%XMM6;
0x16ee;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADD	%RDI,%RCX;
0x16f1;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVSS	(%RDX,%RAX,4),%XMM6,%XMM7;
0x16f6;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDSS	(%RSI,%RAX,4),%XMM7,%XMM8;
0x16fb;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM8,(%RSI,%RAX,4);
0x1700;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;INC	%RAX;
0x1703;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RCX),%XMM9;
0x1707;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADD	%RDI,%RCX;
0x170a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVSS	(%RDX,%RAX,4),%XMM9,%XMM10;
0x170f;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDSS	(%RSI,%RAX,4),%XMM10,%XMM11;
0x1714;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM11,(%RSI,%RAX,4);
0x1719;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;INC	%RAX;
0x171c;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RCX),%XMM12;
0x1720;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADD	%RDI,%RCX;
0x1723;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVSS	(%RDX,%RAX,4),%XMM12,%XMM13;
0x1728;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDSS	(%RSI,%RAX,4),%XMM13,%XMM14;
0x172d;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM14,(%RSI,%RAX,4);
0x1732;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;INC	%RAX;
0x1735;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RCX),%XMM15;
0x1739;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADD	%RDI,%RCX;
0x173c;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVSS	(%RDX,%RAX,4),%XMM15,%XMM0;
0x1741;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDSS	(%RSI,%RAX,4),%XMM0,%XMM1;
0x1746;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM1,(%RSI,%RAX,4);
0x174b;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;INC	%RAX;
0x174e;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RCX),%XMM2;
0x1752;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	%RAX,%R11;
0x1755;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVSS	(%RDX,%RAX,4),%XMM2,%XMM3;
0x175a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDSS	(%RSI,%RAX,4),%XMM3,%XMM4;
0x175f;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADD	%RDI,%RCX;
0x1762;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM4,(%RSI,%RAX,4);
0x1767;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;INC	%RAX;
0x176a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;CMP	%R11,%R9;
0x176d;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JE	1849 <baseline+0x1f9>;
0x1773;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RCX),%XMM5;  (8) 
0x1777;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADD	%RDI,%RCX;  (8) 
0x177a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVSS	(%RDX,%RAX,4),%XMM5,%XMM6;  (8) 
0x177f;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDSS	(%RSI,%RAX,4),%XMM6,%XMM7;  (8) 
0x1784;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;LEA	0x7(%RAX),%R11;  (8) 
0x1788;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM7,(%RSI,%RAX,4);  (8) 
0x178d;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RCX),%XMM8;  (8) 
0x1791;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADD	%RDI,%RCX;  (8) 
0x1794;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVSS	0x4(%RDX,%RAX,4),%XMM8,%XMM9;  (8) 
0x179a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDSS	0x4(%RSI,%RAX,4),%XMM9,%XMM10;  (8) 
0x17a0;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM10,0x4(%RSI,%RAX,4);  (8) 
0x17a6;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RCX),%XMM11;  (8) 
0x17aa;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADD	%RDI,%RCX;  (8) 
0x17ad;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVSS	0x8(%RDX,%RAX,4),%XMM11,%XMM12;  (8) 
0x17b3;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDSS	0x8(%RSI,%RAX,4),%XMM12,%XMM13;  (8) 
0x17b9;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM13,0x8(%RSI,%RAX,4);  (8) 
0x17bf;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RCX),%XMM14;  (8) 
0x17c3;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADD	%RDI,%RCX;  (8) 
0x17c6;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVSS	0xc(%RDX,%RAX,4),%XMM14,%XMM15;  (8) 
0x17cc;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDSS	0xc(%RSI,%RAX,4),%XMM15,%XMM0;  (8) 
0x17d2;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM0,0xc(%RSI,%RAX,4);  (8) 
0x17d8;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RCX),%XMM1;  (8) 
0x17dc;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADD	%RDI,%RCX;  (8) 
0x17df;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVSS	0x10(%RDX,%RAX,4),%XMM1,%XMM2;  (8) 
0x17e5;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDSS	0x10(%RSI,%RAX,4),%XMM2,%XMM3;  (8) 
0x17eb;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM3,0x10(%RSI,%RAX,4);  (8) 
0x17f1;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RCX),%XMM4;  (8) 
0x17f5;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADD	%RDI,%RCX;  (8) 
0x17f8;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVSS	0x14(%RDX,%RAX,4),%XMM4,%XMM5;  (8) 
0x17fe;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDSS	0x14(%RSI,%RAX,4),%XMM5,%XMM6;  (8) 
0x1804;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM6,0x14(%RSI,%RAX,4);  (8) 
0x180a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RCX),%XMM7;  (8) 
0x180e;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADD	%RDI,%RCX;  (8) 
0x1811;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVSS	0x18(%RDX,%RAX,4),%XMM7,%XMM8;  (8) 
0x1817;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDSS	0x18(%RSI,%RAX,4),%XMM8,%XMM9;  (8) 
0x181d;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM9,0x18(%RSI,%RAX,4);  (8) 
0x1823;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RCX),%XMM10;  (8) 
0x1827;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADD	%RDI,%RCX;  (8) 
0x182a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVSS	0x1c(%RDX,%RAX,4),%XMM10,%XMM11;  (8) 
0x1830;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDSS	0x1c(%RSI,%RAX,4),%XMM11,%XMM12;  (8) 
0x1836;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADD	$0x8,%RAX;  (8) 
0x183a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM12,(%RSI,%R11,4);  (8) 
0x1840;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;CMP	%R11,%R9;  (8) 
0x1843;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JNE	1773 <baseline+0x123>;  (8) 
0x1849;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:53;ADD	$0x4,%R8;
0x184d;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:53;CMP	%R8,%R10;
0x1850;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:53;JNE	1678 <baseline+0x28>;
