address;source_location;insn;indent
0x401320;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RAX),%XMM1;
0x401324;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVSS	(%RDX,%RBX,4),%XMM1,%XMM1;
0x401329;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDSS	(%RSI,%RBX,4),%XMM1,%XMM1;
0x40132e;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM1,(%RSI,%RBX,4);
0x401333;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;INC	%RBX;
0x401336;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;ADD	%R12,%RAX;
0x401339;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;DEC	%RDI;
0x40133c;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JNE	401320 <baseline+0x160>;
