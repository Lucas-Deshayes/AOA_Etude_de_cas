address;source_location;insn;indent
0x4015f0;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPSRLQ	$0x20,%YMM8,%YMM1;
0x4015f6;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM0,%YMM1,%YMM1;
0x4015fa;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM3,%YMM8,%YMM2;
0x4015fe;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPADDQ	%YMM1,%YMM2,%YMM1;
0x401602;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPSLLQ	$0x20,%YMM1,%YMM1;
0x401607;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM0,%YMM8,%YMM2;
0x40160b;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPADDQ	%YMM1,%YMM2,%YMM1;
0x40160f;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPSRLQ	$0x20,%YMM9,%YMM2;
0x401615;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM0,%YMM2,%YMM2;
0x401619;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM3,%YMM9,%YMM5;
0x40161d;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPADDQ	%YMM2,%YMM5,%YMM2;
0x401621;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPSLLQ	$0x20,%YMM2,%YMM2;
0x401626;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM0,%YMM9,%YMM5;
0x40162a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPADDQ	%YMM2,%YMM5,%YMM2;
0x40162e;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPCMPEQD	%XMM5,%XMM5,%XMM5;
0x401632;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VGATHERQPS	%XMM5,(%R9,%YMM2,4),%XMM6;
0x401638;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPCMPEQD	%XMM2,%XMM2,%XMM2;
0x40163c;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VGATHERQPS	%XMM2,(%R9,%YMM1,4),%XMM5;
0x401642;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VINSERTF128	$0x1,%XMM6,%YMM5,%YMM1;
0x401648;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VDIVPS	(%RCX,%RDI,1),%YMM1,%YMM1;
0x40164d;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDPS	(%RBX,%RDI,1),%YMM1,%YMM1;
0x401652;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVUPS	%YMM1,(%RBX,%RDI,1);
0x401657;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPADDQ	%YMM4,%YMM8,%YMM8;
0x40165b;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPADDQ	%YMM4,%YMM9,%YMM9;
0x40165f;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;ADD	$0x20,%RDI;
0x401663;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;CMP	%RDI,%RAX;
0x401666;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JNE	4015f0 <baseline+0x450>;