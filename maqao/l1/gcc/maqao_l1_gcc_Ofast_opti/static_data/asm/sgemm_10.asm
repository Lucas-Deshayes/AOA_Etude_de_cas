address;source_location;insn;indent
0x1a00;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%R8,%R10,1),%XMM13;
0x1a06;/users/user4427/AOA_Etude_de_cas/kernel.c:55;LEA	0x40(%R9),%R9;
0x1a0a;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%R8,%RDI,4),%XMM15;
0x1a10;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VINSERTPS	$0x10,(%R8,%R12,1),%XMM13,%XMM14;
0x1a17;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%R8,%RDI,2),%XMM0;
0x1a1d;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VINSERTPS	$0x10,(%R8,%R11,1),%XMM15,%XMM4;
0x1a24;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%R8),%XMM1;
0x1a29;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VINSERTPS	$0x10,(%R8,%RBX,1),%XMM0,%XMM5;
0x1a30;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RCX,%R10,1),%XMM3;
0x1a36;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VINSERTPS	$0x10,(%R8,%RDI,1),%XMM1,%XMM2;
0x1a3d;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RCX,%RDI,4),%XMM7;
0x1a42;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VINSERTPS	$0x10,(%RCX,%R12,1),%XMM3,%XMM6;
0x1a49;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RCX,%RDI,2),%XMM9;
0x1a4e;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VINSERTPS	$0x10,(%RCX,%R11,1),%XMM7,%XMM8;
0x1a55;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RCX),%XMM11;
0x1a59;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VINSERTPS	$0x10,(%RCX,%RBX,1),%XMM9,%XMM10;
0x1a60;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VINSERTPS	$0x10,(%RCX,%RDI,1),%XMM11,%XMM12;
0x1a67;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VMOVLHPS	%XMM6,%XMM8,%XMM15;
0x1a6b;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VMOVLHPS	%XMM5,%XMM2,%XMM5;
0x1a6f;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VMOVLHPS	%XMM14,%XMM4,%XMM14;
0x1a74;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VMOVLHPS	%XMM10,%XMM12,%XMM13;
0x1a79;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VINSERTF128	$0x1,%XMM14,%YMM5,%YMM0;
0x1a7f;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VINSERTF128	$0x1,%XMM15,%YMM13,%YMM4;
0x1a85;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VRCP28PS	-0x40(%R9),%ZMM1;
0x1a8c;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VINSERTF64X4	$0x1,%YMM0,%ZMM4,%ZMM2;
0x1a93;/users/user4427/AOA_Etude_de_cas/kernel.c:55;CMP	%RAX,%R9;
0x1a96;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VMULPS	%ZMM1,%ZMM2,%ZMM3;
0x1a9c;/users/user4427/AOA_Etude_de_cas/kernel.c:55;LEA	(%RCX,%R15,1),%RCX;
0x1aa0;/users/user4427/AOA_Etude_de_cas/kernel.c:55;LEA	0x40(%R14),%R14;
0x1aa4;/users/user4427/AOA_Etude_de_cas/kernel.c:55;LEA	(%R8,%R15,1),%R8;
0x1aa8;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VADDPS	-0x40(%R14),%ZMM3,%ZMM6;
0x1aaf;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VMOVAPS	%ZMM6,-0x40(%R14);
0x1ab6;/users/user4427/AOA_Etude_de_cas/kernel.c:54;JNE	1a00 <baseline+0x3b0>;
