address;source_location;insn;indent
0x1790;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVSS	(%RCX,%R8,1),%XMM0;
0x1796;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVSS	(%RCX),%XMM3;
0x179a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVSS	(%RCX,%R11,1),%XMM1;
0x17a0;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVSS	(%RCX,%R8,2),%XMM2;
0x17a6;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADD	%RDI,%RCX;
0x17a9;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;UNPCKLPS	%XMM0,%XMM3;
0x17ac;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVUPS	(%RDX,%RAX,1),%XMM4;
0x17b0;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVUPS	(%RSI,%RAX,1),%XMM5;
0x17b4;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;UNPCKLPS	%XMM1,%XMM2;
0x17b7;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVAPS	%XMM3,%XMM0;
0x17ba;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVLHPS	%XMM2,%XMM0;
0x17bd;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;DIVPS	%XMM4,%XMM0;
0x17c0;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADDPS	%XMM5,%XMM0;
0x17c3;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVUPS	%XMM0,(%RSI,%RAX,1);
0x17c7;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;ADD	$0x10,%RAX;
0x17cb;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;CMP	%R10,%RAX;
0x17ce;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JNE	1790 <baseline+0x140>;