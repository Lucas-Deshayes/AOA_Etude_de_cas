address;source_location;insn;indent
0x1680;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;LEA	0x1(%R9),%R11;
0x1684;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:50;XOR	%EAX,%EAX;
0x1686;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:50;AND	$0x7,%R11D;
0x168a;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:50;LEA	(%R8),%RCX;
0x168d;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:50;JE	1787 <baseline+0x137>;
0x1693;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:50;CMP	$0x1,%R11;
0x1697;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:50;JE	1760 <baseline+0x110>;
0x169d;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:50;CMP	$0x2,%R11;
0x16a1;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:50;JE	1745 <baseline+0xf5>;
0x16a7;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:50;CMP	$0x3,%R11;
0x16ab;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:50;JE	172a <baseline+0xda>;
0x16ad;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:50;CMP	$0x4,%R11;
0x16b1;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:50;JE	170f <baseline+0xbf>;
0x16b3;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:50;CMP	$0x5,%R11;
0x16b7;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:50;JE	16f4 <baseline+0xa4>;
0x16b9;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:50;CMP	$0x6,%R11;
0x16bd;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:50;JE	16d9 <baseline+0x89>;
0x16bf;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%R8),%XMM0;
0x16c4;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;MOV	$0x1,%EAX;
0x16c9;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VDIVSS	(%RDX),%XMM0,%XMM1;
0x16cd;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%R8,%RDI,1),%RCX;
0x16d1;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VADDSS	(%RSI),%XMM1,%XMM2;
0x16d5;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	%XMM2,(%RSI);
0x16d9;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%RCX),%XMM3;
0x16dd;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%RCX,%RDI,1),%RCX;
0x16e1;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VDIVSS	(%RDX,%RAX,4),%XMM3,%XMM4;
0x16e6;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VADDSS	(%RSI,%RAX,4),%XMM4,%XMM5;
0x16eb;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	%XMM5,(%RSI,%RAX,4);
0x16f0;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;LEA	0x1(%RAX),%RAX;
0x16f4;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%RCX),%XMM6;
0x16f8;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%RCX,%RDI,1),%RCX;
0x16fc;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VDIVSS	(%RDX,%RAX,4),%XMM6,%XMM7;
0x1701;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VADDSS	(%RSI,%RAX,4),%XMM7,%XMM8;
0x1706;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	%XMM8,(%RSI,%RAX,4);
0x170b;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;LEA	0x1(%RAX),%RAX;
0x170f;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%RCX),%XMM9;
0x1713;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%RCX,%RDI,1),%RCX;
0x1717;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VDIVSS	(%RDX,%RAX,4),%XMM9,%XMM10;
0x171c;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VADDSS	(%RSI,%RAX,4),%XMM10,%XMM11;
0x1721;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	%XMM11,(%RSI,%RAX,4);
0x1726;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;LEA	0x1(%RAX),%RAX;
0x172a;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%RCX),%XMM12;
0x172e;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%RCX,%RDI,1),%RCX;
0x1732;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VDIVSS	(%RDX,%RAX,4),%XMM12,%XMM13;
0x1737;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VADDSS	(%RSI,%RAX,4),%XMM13,%XMM14;
0x173c;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	%XMM14,(%RSI,%RAX,4);
0x1741;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;LEA	0x1(%RAX),%RAX;
0x1745;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%RCX),%XMM15;
0x1749;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%RCX,%RDI,1),%RCX;
0x174d;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VDIVSS	(%RDX,%RAX,4),%XMM15,%XMM0;
0x1752;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VADDSS	(%RSI,%RAX,4),%XMM0,%XMM1;
0x1757;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	%XMM1,(%RSI,%RAX,4);
0x175c;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;LEA	0x1(%RAX),%RAX;
0x1760;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%RCX),%XMM2;
0x1764;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%RAX),%R11;
0x1767;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VDIVSS	(%RDX,%RAX,4),%XMM2,%XMM3;
0x176c;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;CMP	%R11,%R9;
0x176f;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;LEA	(%RCX,%RDI,1),%RCX;
0x1773;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VADDSS	(%RSI,%RAX,4),%XMM3,%XMM4;
0x1778;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	%XMM4,(%RSI,%RAX,4);
0x177d;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;LEA	0x1(%RAX),%RAX;
0x1781;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;JE	1868 <baseline+0x218>;
0x1787;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%RCX),%XMM5;  (8) 
0x178b;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%RCX,%RDI,1),%R11;  (8) 
0x178f;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VDIVSS	(%RDX,%RAX,4),%XMM5,%XMM6;  (8) 
0x1794;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%R11,%RDI,1),%RCX;  (8) 
0x1798;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VADDSS	(%RSI,%RAX,4),%XMM6,%XMM7;  (8) 
0x179d;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	%XMM7,(%RSI,%RAX,4);  (8) 
0x17a2;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%R11),%XMM8;  (8) 
0x17a7;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%RCX,%RDI,1),%R11;  (8) 
0x17ab;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VDIVSS	0x4(%RDX,%RAX,4),%XMM8,%XMM9;  (8) 
0x17b1;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VADDSS	0x4(%RSI,%RAX,4),%XMM9,%XMM10;  (8) 
0x17b7;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	%XMM10,0x4(%RSI,%RAX,4);  (8) 
0x17bd;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%RCX),%XMM11;  (8) 
0x17c1;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%R11,%RDI,1),%RCX;  (8) 
0x17c5;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VDIVSS	0x8(%RDX,%RAX,4),%XMM11,%XMM12;  (8) 
0x17cb;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VADDSS	0x8(%RSI,%RAX,4),%XMM12,%XMM13;  (8) 
0x17d1;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	%XMM13,0x8(%RSI,%RAX,4);  (8) 
0x17d7;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%R11),%XMM14;  (8) 
0x17dc;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%RCX,%RDI,1),%R11;  (8) 
0x17e0;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VDIVSS	0xc(%RDX,%RAX,4),%XMM14,%XMM15;  (8) 
0x17e6;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VADDSS	0xc(%RSI,%RAX,4),%XMM15,%XMM0;  (8) 
0x17ec;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	%XMM0,0xc(%RSI,%RAX,4);  (8) 
0x17f2;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%RCX),%XMM1;  (8) 
0x17f6;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%R11,%RDI,1),%RCX;  (8) 
0x17fa;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VDIVSS	0x10(%RDX,%RAX,4),%XMM1,%XMM2;  (8) 
0x1800;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VADDSS	0x10(%RSI,%RAX,4),%XMM2,%XMM3;  (8) 
0x1806;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	%XMM3,0x10(%RSI,%RAX,4);  (8) 
0x180c;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%R11),%XMM4;  (8) 
0x1811;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	0x7(%RAX),%R11;  (8) 
0x1815;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VDIVSS	0x14(%RDX,%RAX,4),%XMM4,%XMM5;  (8) 
0x181b;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;CMP	%R11,%R9;  (8) 
0x181e;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VADDSS	0x14(%RSI,%RAX,4),%XMM5,%XMM6;  (8) 
0x1824;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	%XMM6,0x14(%RSI,%RAX,4);  (8) 
0x182a;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%RCX),%XMM7;  (8) 
0x182e;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%RCX,%RDI,1),%RCX;  (8) 
0x1832;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VDIVSS	0x18(%RDX,%RAX,4),%XMM7,%XMM8;  (8) 
0x1838;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VADDSS	0x18(%RSI,%RAX,4),%XMM8,%XMM9;  (8) 
0x183e;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	%XMM9,0x18(%RSI,%RAX,4);  (8) 
0x1844;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%RCX),%XMM10;  (8) 
0x1848;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%RCX,%RDI,1),%RCX;  (8) 
0x184c;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VDIVSS	0x1c(%RDX,%RAX,4),%XMM10,%XMM11;  (8) 
0x1852;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VADDSS	0x1c(%RSI,%RAX,4),%XMM11,%XMM12;  (8) 
0x1858;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	0x8(%RAX),%RAX;  (8) 
0x185c;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	%XMM12,(%RSI,%R11,4);  (8) 
0x1862;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;JNE	1787 <baseline+0x137>;  (8) 
0x1868;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:53;LEA	0x4(%R8),%R8;
0x186c;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:53;CMP	%R8,%R10;
0x186f;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:53;JNE	1680 <baseline+0x30>;
