address;source_location;insn;indent
0x4015a0;/users/user4442/AOA_Etude_de_cas/kernel.c:50;PUSH	%RBP;
0x4015a1;/users/user4442/AOA_Etude_de_cas/kernel.c:50;MOV	%RSP,%RBP;
0x4015a4;/users/user4442/AOA_Etude_de_cas/kernel.c:53;XOR	%R9D,%R9D;
0x4015a7;/users/user4442/AOA_Etude_de_cas/kernel.c:53;TEST	%EDI,%EDI;
0x4015a9;/users/user4442/AOA_Etude_de_cas/kernel.c:53;JBE	40169e <baseline+0xfe>;
0x4015af;/users/user4442/AOA_Etude_de_cas/kernel.c:50;MOV	%EDI,%R8D;
0x4015b2;/users/user4442/AOA_Etude_de_cas/kernel.c:55;MOV	%R13,-0x20(%RBP);
0x4015b6;/users/user4442/AOA_Etude_de_cas/kernel.c:50;MOV	%EDI,%R11D;
0x4015b9;/users/user4442/AOA_Etude_de_cas/kernel.c:55;MOV	%R14,-0x18(%RBP);
0x4015bd;/users/user4442/AOA_Etude_de_cas/kernel.c:50;SHR	$0x1,%R8D;
0x4015c0;/users/user4442/AOA_Etude_de_cas/kernel.c:55;MOV	%R15,-0x10(%RBP);
0x4015c4;/users/user4442/AOA_Etude_de_cas/kernel.c:53;XOR	%R10D,%R10D;
0x4015c7;/users/user4442/AOA_Etude_de_cas/kernel.c:55;MOV	%RBX,-0x8(%RBP);
0x4015cb;/users/user4442/AOA_Etude_de_cas/kernel.c:55;LEA	(,%R11,4),%RAX;
0x4015d3;/users/user4442/AOA_Etude_de_cas/kernel.c:54;MOV	$0x1,%EBX;(7) 
0x4015d8;/users/user4442/AOA_Etude_de_cas/kernel.c:54;XOR	%R13D,%R13D;(7) 
0x4015db;/users/user4442/AOA_Etude_de_cas/kernel.c:54;TEST	%R8D,%R8D;(7) 
0x4015de;/users/user4442/AOA_Etude_de_cas/kernel.c:54;JBE	401650 <baseline+0xb0>;(7) 
0x4015e0;/users/user4442/AOA_Etude_de_cas/kernel.c:55;LEA	(%RCX,%R9,4),%RBX;(7) 
0x4015e4;/users/user4442/AOA_Etude_de_cas/kernel.c:55;NOPL	(%RAX,%RAX,1);(7) 
0x4015e9;/users/user4442/AOA_Etude_de_cas/kernel.c:55;NOPL	(%RAX);(7) 
0x4015f0;/users/user4442/AOA_Etude_de_cas/kernel.c:55;MOV	%R11,%R15;  (8) 
0x4015f3;/users/user4442/AOA_Etude_de_cas/kernel.c:55;LEA	(%R13,%R13,1),%R14D;  (8) 
0x4015f8;/users/user4442/AOA_Etude_de_cas/kernel.c:55;VXORPS	%XMM1,%XMM1,%XMM1;  (8) 
0x4015fc;/users/user4442/AOA_Etude_de_cas/kernel.c:55;VRCP28SS	(%RDX,%R14,4),%XMM1,%XMM1;  (8) 
0x401603;/users/user4442/AOA_Etude_de_cas/kernel.c:55;VXORPS	%XMM3,%XMM3,%XMM3;  (8) 
0x401607;/users/user4442/AOA_Etude_de_cas/kernel.c:55;IMUL	%R14,%R15;  (8) 
0x40160b;/users/user4442/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RBX,%R15,4),%XMM0;  (8) 
0x401611;/users/user4442/AOA_Etude_de_cas/kernel.c:55;LEA	0x1(%R13,%R13,1),%R15D;  (8) 
0x401616;/users/user4442/AOA_Etude_de_cas/kernel.c:54;ADD	$0x1,%R13D;  (8) 
0x40161a;/users/user4442/AOA_Etude_de_cas/kernel.c:55;VFMADD213SS	(%RSI,%R14,4),%XMM0,%XMM1;  (8) 
0x401620;/users/user4442/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM1,(%RSI,%R14,4);  (8) 
0x401626;/users/user4442/AOA_Etude_de_cas/kernel.c:55;MOV	%R11,%R14;  (8) 
0x401629;/users/user4442/AOA_Etude_de_cas/kernel.c:55;VRCP28SS	(%RDX,%R15,4),%XMM3,%XMM3;  (8) 
0x401630;/users/user4442/AOA_Etude_de_cas/kernel.c:55;IMUL	%R15,%R14;  (8) 
0x401634;/users/user4442/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RBX,%R14,4),%XMM2;  (8) 
0x40163a;/users/user4442/AOA_Etude_de_cas/kernel.c:55;VFMADD213SS	(%RSI,%R15,4),%XMM2,%XMM3;  (8) 
0x401640;/users/user4442/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM3,(%RSI,%R15,4);  (8) 
0x401646;/users/user4442/AOA_Etude_de_cas/kernel.c:54;CMP	%R8D,%R13D;  (8) 
0x401649;/users/user4442/AOA_Etude_de_cas/kernel.c:54;JB	4015f0 <baseline+0x50>;  (8) 
0x40164b;/users/user4442/AOA_Etude_de_cas/kernel.c:55;LEA	0x1(%R13,%R13,1),%EBX;(7) 
0x401650;/users/user4442/AOA_Etude_de_cas/kernel.c:54;ADD	$-0x1,%EBX;(7) 
0x401653;/users/user4442/AOA_Etude_de_cas/kernel.c:54;CMP	%EDI,%EBX;(7) 
0x401655;/users/user4442/AOA_Etude_de_cas/kernel.c:54;JAE	40167e <baseline+0xde>;(7) 
0x401657;/users/user4442/AOA_Etude_de_cas/kernel.c:55;MOV	%RAX,%R13;(7) 
0x40165a;/users/user4442/AOA_Etude_de_cas/kernel.c:55;VXORPS	%XMM1,%XMM1,%XMM1;(7) 
0x40165e;/users/user4442/AOA_Etude_de_cas/kernel.c:55;VRCP28SS	(%RDX,%RBX,4),%XMM1,%XMM1;(7) 
0x401665;/users/user4442/AOA_Etude_de_cas/kernel.c:55;IMUL	%RBX,%R13;(7) 
0x401669;/users/user4442/AOA_Etude_de_cas/kernel.c:55;ADD	%RCX,%R13;(7) 
0x40166c;/users/user4442/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%R13,%R9,4),%XMM0;(7) 
0x401673;/users/user4442/AOA_Etude_de_cas/kernel.c:55;VFMADD213SS	(%RSI,%RBX,4),%XMM0,%XMM1;(7) 
0x401679;/users/user4442/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM1,(%RSI,%RBX,4);(7) 
0x40167e;/users/user4442/AOA_Etude_de_cas/kernel.c:53;ADD	$0x1,%R10D;(7) 
0x401682;/users/user4442/AOA_Etude_de_cas/kernel.c:53;MOV	%R10D,%R9D;(7) 
0x401685;/users/user4442/AOA_Etude_de_cas/kernel.c:53;CMP	%EDI,%R10D;(7) 
0x401688;/users/user4442/AOA_Etude_de_cas/kernel.c:53;JB	4015d3 <baseline+0x33>;(7) 
0x40168e;/users/user4442/AOA_Etude_de_cas/kernel.c:53;MOV	-0x20(%RBP),%R13;
0x401692;/users/user4442/AOA_Etude_de_cas/kernel.c:53;MOV	-0x18(%RBP),%R14;
0x401696;/users/user4442/AOA_Etude_de_cas/kernel.c:53;MOV	-0x10(%RBP),%R15;
0x40169a;/users/user4442/AOA_Etude_de_cas/kernel.c:53;MOV	-0x8(%RBP),%RBX;
0x40169e;/users/user4442/AOA_Etude_de_cas/kernel.c:58;MOV	%RBP,%RSP;
0x4016a1;/users/user4442/AOA_Etude_de_cas/kernel.c:58;POP	%RBP;
0x4016a2;/users/user4442/AOA_Etude_de_cas/kernel.c:58;RET;
0x4016a3;/users/user4442/AOA_Etude_de_cas/kernel.c:58;NOPL	(%RAX,%RAX,1);
0x4016a8;/users/user4442/AOA_Etude_de_cas/kernel.c:58;NOPL	(%RAX,%RAX,1);