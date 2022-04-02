address;source_location;insn;indent
0x4012e0;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVSS	(%RBX,%R9,1),%XMM2;
0x4012e6;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;DIVSS	(%RDX,%R11,4),%XMM2;
0x4012ec;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADDSS	(%RSI,%R11,4),%XMM2;
0x4012f2;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVSS	%XMM2,(%RSI,%R11,4);
0x4012f8;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVSS	(%RBX,%RAX,1),%XMM2;
0x4012fd;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;DIVSS	0x4(%RDX,%R11,4),%XMM2;
0x401304;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADDSS	0x4(%RSI,%R11,4),%XMM2;
0x40130b;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVSS	%XMM2,0x4(%RSI,%R11,4);
0x401312;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;ADD	$0x2,%R11;
0x401316;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;ADD	%R10,%RBX;
0x401319;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;CMP	%R11,%R8;
0x40131c;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JNE	4012e0 <baseline+0x140>;
