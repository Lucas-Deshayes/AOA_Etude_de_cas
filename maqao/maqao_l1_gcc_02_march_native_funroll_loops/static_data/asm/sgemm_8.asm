address;source_location;insn;indent
0x1787;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%RCX),%XMM5;
0x178b;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%RCX,%RDI,1),%R11;
0x178f;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VDIVSS	(%RDX,%RAX,4),%XMM5,%XMM6;
0x1794;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%R11,%RDI,1),%RCX;
0x1798;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VADDSS	(%RSI,%RAX,4),%XMM6,%XMM7;
0x179d;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	%XMM7,(%RSI,%RAX,4);
0x17a2;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%R11),%XMM8;
0x17a7;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%RCX,%RDI,1),%R11;
0x17ab;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VDIVSS	0x4(%RDX,%RAX,4),%XMM8,%XMM9;
0x17b1;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VADDSS	0x4(%RSI,%RAX,4),%XMM9,%XMM10;
0x17b7;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	%XMM10,0x4(%RSI,%RAX,4);
0x17bd;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%RCX),%XMM11;
0x17c1;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%R11,%RDI,1),%RCX;
0x17c5;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VDIVSS	0x8(%RDX,%RAX,4),%XMM11,%XMM12;
0x17cb;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VADDSS	0x8(%RSI,%RAX,4),%XMM12,%XMM13;
0x17d1;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	%XMM13,0x8(%RSI,%RAX,4);
0x17d7;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%R11),%XMM14;
0x17dc;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%RCX,%RDI,1),%R11;
0x17e0;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VDIVSS	0xc(%RDX,%RAX,4),%XMM14,%XMM15;
0x17e6;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VADDSS	0xc(%RSI,%RAX,4),%XMM15,%XMM0;
0x17ec;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	%XMM0,0xc(%RSI,%RAX,4);
0x17f2;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%RCX),%XMM1;
0x17f6;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%R11,%RDI,1),%RCX;
0x17fa;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VDIVSS	0x10(%RDX,%RAX,4),%XMM1,%XMM2;
0x1800;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VADDSS	0x10(%RSI,%RAX,4),%XMM2,%XMM3;
0x1806;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	%XMM3,0x10(%RSI,%RAX,4);
0x180c;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%R11),%XMM4;
0x1811;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	0x7(%RAX),%R11;
0x1815;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VDIVSS	0x14(%RDX,%RAX,4),%XMM4,%XMM5;
0x181b;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;CMP	%R11,%R9;
0x181e;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VADDSS	0x14(%RSI,%RAX,4),%XMM5,%XMM6;
0x1824;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	%XMM6,0x14(%RSI,%RAX,4);
0x182a;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%RCX),%XMM7;
0x182e;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%RCX,%RDI,1),%RCX;
0x1832;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VDIVSS	0x18(%RDX,%RAX,4),%XMM7,%XMM8;
0x1838;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VADDSS	0x18(%RSI,%RAX,4),%XMM8,%XMM9;
0x183e;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	%XMM9,0x18(%RSI,%RAX,4);
0x1844;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	(%RCX),%XMM10;
0x1848;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	(%RCX,%RDI,1),%RCX;
0x184c;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VDIVSS	0x1c(%RDX,%RAX,4),%XMM10,%XMM11;
0x1852;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VADDSS	0x1c(%RSI,%RAX,4),%XMM11,%XMM12;
0x1858;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;LEA	0x8(%RAX),%RAX;
0x185c;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;VMOVSS	%XMM12,(%RSI,%R11,4);
0x1862;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;JNE	1787 <baseline+0x137>;
