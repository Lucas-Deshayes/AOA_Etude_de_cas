address;source_location;insn;indent
0x401670;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPSRLQ	$0x20,%YMM6,%YMM1;
0x401675;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM0,%YMM1,%YMM1;
0x401679;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM3,%YMM6,%YMM2;
0x40167d;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPADDQ	%YMM1,%YMM2,%YMM1;
0x401681;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPSLLQ	$0x20,%YMM1,%YMM1;
0x401686;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM0,%YMM6,%YMM2;
0x40168a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPADDQ	%YMM1,%YMM2,%YMM1;
0x40168e;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPSRLQ	$0x20,%YMM7,%YMM2;
0x401693;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM0,%YMM2,%YMM2;
0x401697;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM3,%YMM7,%YMM4;
0x40169b;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPADDQ	%YMM2,%YMM4,%YMM2;
0x40169f;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPSLLQ	$0x20,%YMM2,%YMM2;
0x4016a4;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPMULUDQ	%YMM0,%YMM7,%YMM4;
0x4016a8;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPADDQ	%YMM2,%YMM4,%YMM2;
0x4016ac;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPCMPEQD	%XMM4,%XMM4,%XMM4;
0x4016b0;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VGATHERQPS	%XMM4,(%R9,%YMM2,4),%XMM5;
0x4016b6;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPCMPEQD	%XMM2,%XMM2,%XMM2;
0x4016ba;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VGATHERQPS	%XMM2,(%R9,%YMM1,4),%XMM4;
0x4016c0;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VINSERTF128	$0x1,%XMM5,%YMM4,%YMM1;
0x4016c6;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVUPS	(%RCX,%RDI,1),%YMM2;
0x4016cb;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VRCPPS	%YMM2,%YMM4;
0x4016cf;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMULPS	%YMM4,%YMM1,%YMM5;
0x4016d3;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VFNMADD213PS	%YMM1,%YMM5,%YMM2;
0x4016d8;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VFMADD213PS	%YMM5,%YMM4,%YMM2;
0x4016dd;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VADDPS	(%RBX,%RDI,1),%YMM2,%YMM1;
0x4016e2;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VMOVUPS	%YMM1,(%RBX,%RDI,1);
0x4016e7;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPADDQ	%YMM6,%YMM14,%YMM6;
0x4016eb;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;VPADDQ	%YMM7,%YMM14,%YMM7;
0x4016ef;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;ADD	$0x20,%RDI;
0x4016f3;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;CMP	%RDI,%RAX;
0x4016f6;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JNE	401670 <baseline+0x4b0>;