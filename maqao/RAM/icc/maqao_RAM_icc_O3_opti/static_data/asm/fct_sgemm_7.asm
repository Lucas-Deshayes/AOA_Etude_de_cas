address;source_location;insn;indent
0x4015a0;/users/user4442/AOA_Etude_de_cas/kernel.c:50;PUSH	%RBP;
0x4015a1;/users/user4442/AOA_Etude_de_cas/kernel.c:50;MOV	%RSP,%RBP;
0x4015a4;/users/user4442/AOA_Etude_de_cas/kernel.c:53;XOR	%R9D,%R9D;
0x4015a7;/users/user4442/AOA_Etude_de_cas/kernel.c:53;TEST	%EDI,%EDI;
0x4015a9;/users/user4442/AOA_Etude_de_cas/kernel.c:53;JBE	401751 <baseline+0x1b1>;
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
0x4015de;/users/user4442/AOA_Etude_de_cas/kernel.c:54;JBE	4016c7 <baseline+0x127>;(7) 
0x4015e4;/users/user4442/AOA_Etude_de_cas/kernel.c:55;LEA	(%RCX,%R9,4),%RBX;(7) 
0x4015e8;/users/user4442/AOA_Etude_de_cas/kernel.c:55;MOV	%R11,%R15;  (8) 
0x4015eb;/users/user4442/AOA_Etude_de_cas/kernel.c:55;LEA	(%R13,%R13,1),%R14D;  (8) 
0x4015f0;/users/user4442/AOA_Etude_de_cas/kernel.c:55;VGETMANTSS	$0,(%RDX,%R14,4),%XMM16,%XMM16;  (8) 
0x4015f8;/users/user4442/AOA_Etude_de_cas/kernel.c:55;IMUL	%R14,%R15;  (8) 
0x4015fc;/users/user4442/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RDX,%R14,4),%XMM1;  (8) 
0x401602;/users/user4442/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RBX,%R15,4),%XMM3;  (8) 
0x401608;/users/user4442/AOA_Etude_de_cas/kernel.c:55;VRCP28SS	%XMM16,%XMM16,%XMM2;  (8) 
0x40160e;/users/user4442/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RBX,%R15,4),%XMM0;  (8) 
0x401614;/users/user4442/AOA_Etude_de_cas/kernel.c:55;VGETEXPSS	%XMM1,%XMM1,%XMM1;  (8) 
0x40161a;/users/user4442/AOA_Etude_de_cas/kernel.c:55;LEA	0x1(%R13,%R13,1),%R15D;  (8) 
0x40161f;/users/user4442/AOA_Etude_de_cas/kernel.c:54;ADD	$0x1,%R13D;  (8) 
0x401623;/users/user4442/AOA_Etude_de_cas/kernel.c:55;VGETMANTSS	$0,%XMM3,%XMM3,%XMM3;  (8) 
0x40162a;/users/user4442/AOA_Etude_de_cas/kernel.c:55;VGETEXPSS	%XMM0,%XMM0,%XMM0;  (8) 
0x401630;/users/user4442/AOA_Etude_de_cas/kernel.c:55;VMULSS	{rn-sae},%XMM3,%XMM2,%XMM4;  (8) 
0x401636;/users/user4442/AOA_Etude_de_cas/kernel.c:55;VSUBSS	%XMM1,%XMM0,%XMM5;  (8) 
0x40163a;/users/user4442/AOA_Etude_de_cas/kernel.c:55;VFNMADD231SS	{rn-sae},%XMM16,%XMM4,%XMM3;  (8) 
0x401640;/users/user4442/AOA_Etude_de_cas/kernel.c:55;VFMADD231SS	%XMM3,%XMM2,%XMM4;  (8) 
0x401645;/users/user4442/AOA_Etude_de_cas/kernel.c:55;VSCALEFSS	%XMM5,%XMM4,%XMM6;  (8) 
0x40164b;/users/user4442/AOA_Etude_de_cas/kernel.c:55;VADDSS	(%RSI,%R14,4),%XMM6,%XMM7;  (8) 
0x401651;/users/user4442/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM7,(%RSI,%R14,4);  (8) 
0x401657;/users/user4442/AOA_Etude_de_cas/kernel.c:55;MOV	%R11,%R14;  (8) 
0x40165a;/users/user4442/AOA_Etude_de_cas/kernel.c:55;VGETMANTSS	$0,(%RDX,%R15,4),%XMM17,%XMM17;  (8) 
0x401662;/users/user4442/AOA_Etude_de_cas/kernel.c:55;IMUL	%R15,%R14;  (8) 
0x401666;/users/user4442/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RBX,%R14,4),%XMM11;  (8) 
0x40166c;/users/user4442/AOA_Etude_de_cas/kernel.c:55;VRCP28SS	%XMM17,%XMM17,%XMM10;  (8) 
0x401672;/users/user4442/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RBX,%R14,4),%XMM8;  (8) 
0x401678;/users/user4442/AOA_Etude_de_cas/kernel.c:55;VGETMANTSS	$0,%XMM11,%XMM11,%XMM11;  (8) 
0x40167f;/users/user4442/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RDX,%R15,4),%XMM9;  (8) 
0x401685;/users/user4442/AOA_Etude_de_cas/kernel.c:55;VGETEXPSS	%XMM8,%XMM8,%XMM8;  (8) 
0x40168b;/users/user4442/AOA_Etude_de_cas/kernel.c:55;VMULSS	{rn-sae},%XMM11,%XMM10,%XMM12;  (8) 
0x401691;/users/user4442/AOA_Etude_de_cas/kernel.c:55;VGETEXPSS	%XMM9,%XMM9,%XMM9;  (8) 
0x401697;/users/user4442/AOA_Etude_de_cas/kernel.c:55;VFNMADD231SS	{rn-sae},%XMM17,%XMM12,%XMM11;  (8) 
0x40169d;/users/user4442/AOA_Etude_de_cas/kernel.c:55;VSUBSS	%XMM9,%XMM8,%XMM13;  (8) 
0x4016a2;/users/user4442/AOA_Etude_de_cas/kernel.c:55;VFMADD231SS	%XMM11,%XMM10,%XMM12;  (8) 
0x4016a7;/users/user4442/AOA_Etude_de_cas/kernel.c:55;VSCALEFSS	%XMM13,%XMM12,%XMM14;  (8) 
0x4016ad;/users/user4442/AOA_Etude_de_cas/kernel.c:55;VADDSS	(%RSI,%R15,4),%XMM14,%XMM15;  (8) 
0x4016b3;/users/user4442/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM15,(%RSI,%R15,4);  (8) 
0x4016b9;/users/user4442/AOA_Etude_de_cas/kernel.c:54;CMP	%R8D,%R13D;  (8) 
0x4016bc;/users/user4442/AOA_Etude_de_cas/kernel.c:54;JB	4015e8 <baseline+0x48>;  (8) 
0x4016c2;/users/user4442/AOA_Etude_de_cas/kernel.c:55;LEA	0x1(%R13,%R13,1),%EBX;(7) 
0x4016c7;/users/user4442/AOA_Etude_de_cas/kernel.c:54;ADD	$-0x1,%EBX;(7) 
0x4016ca;/users/user4442/AOA_Etude_de_cas/kernel.c:54;CMP	%EDI,%EBX;(7) 
0x4016cc;/users/user4442/AOA_Etude_de_cas/kernel.c:54;JAE	401731 <baseline+0x191>;(7) 
0x4016ce;/users/user4442/AOA_Etude_de_cas/kernel.c:55;MOV	%RAX,%R13;(7) 
0x4016d1;/users/user4442/AOA_Etude_de_cas/kernel.c:55;VGETMANTSS	$0,(%RDX,%RBX,4),%XMM16,%XMM16;(7) 
0x4016d9;/users/user4442/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RDX,%RBX,4),%XMM1;(7) 
0x4016de;/users/user4442/AOA_Etude_de_cas/kernel.c:55;IMUL	%RBX,%R13;(7) 
0x4016e2;/users/user4442/AOA_Etude_de_cas/kernel.c:55;ADD	%RCX,%R13;(7) 
0x4016e5;/users/user4442/AOA_Etude_de_cas/kernel.c:55;VRCP28SS	%XMM16,%XMM16,%XMM2;(7) 
0x4016eb;/users/user4442/AOA_Etude_de_cas/kernel.c:55;VGETEXPSS	%XMM1,%XMM1,%XMM1;(7) 
0x4016f1;/users/user4442/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%R13,%R9,4),%XMM3;(7) 
0x4016f8;/users/user4442/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%R13,%R9,4),%XMM0;(7) 
0x4016ff;/users/user4442/AOA_Etude_de_cas/kernel.c:55;VGETMANTSS	$0,%XMM3,%XMM3,%XMM3;(7) 
0x401706;/users/user4442/AOA_Etude_de_cas/kernel.c:55;VGETEXPSS	%XMM0,%XMM0,%XMM0;(7) 
0x40170c;/users/user4442/AOA_Etude_de_cas/kernel.c:55;VMULSS	{rn-sae},%XMM3,%XMM2,%XMM4;(7) 
0x401712;/users/user4442/AOA_Etude_de_cas/kernel.c:55;VSUBSS	%XMM1,%XMM0,%XMM5;(7) 
0x401716;/users/user4442/AOA_Etude_de_cas/kernel.c:55;VFNMADD231SS	{rn-sae},%XMM16,%XMM4,%XMM3;(7) 
0x40171c;/users/user4442/AOA_Etude_de_cas/kernel.c:55;VFMADD231SS	%XMM3,%XMM2,%XMM4;(7) 
0x401721;/users/user4442/AOA_Etude_de_cas/kernel.c:55;VSCALEFSS	%XMM5,%XMM4,%XMM6;(7) 
0x401727;/users/user4442/AOA_Etude_de_cas/kernel.c:55;VADDSS	(%RSI,%RBX,4),%XMM6,%XMM7;(7) 
0x40172c;/users/user4442/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM7,(%RSI,%RBX,4);(7) 
0x401731;/users/user4442/AOA_Etude_de_cas/kernel.c:53;ADD	$0x1,%R10D;(7) 
0x401735;/users/user4442/AOA_Etude_de_cas/kernel.c:53;MOV	%R10D,%R9D;(7) 
0x401738;/users/user4442/AOA_Etude_de_cas/kernel.c:53;CMP	%EDI,%R10D;(7) 
0x40173b;/users/user4442/AOA_Etude_de_cas/kernel.c:53;JB	4015d3 <baseline+0x33>;(7) 
0x401741;/users/user4442/AOA_Etude_de_cas/kernel.c:53;MOV	-0x20(%RBP),%R13;
0x401745;/users/user4442/AOA_Etude_de_cas/kernel.c:53;MOV	-0x18(%RBP),%R14;
0x401749;/users/user4442/AOA_Etude_de_cas/kernel.c:53;MOV	-0x10(%RBP),%R15;
0x40174d;/users/user4442/AOA_Etude_de_cas/kernel.c:53;MOV	-0x8(%RBP),%RBX;
0x401751;/users/user4442/AOA_Etude_de_cas/kernel.c:58;MOV	%RBP,%RSP;
0x401754;/users/user4442/AOA_Etude_de_cas/kernel.c:58;POP	%RBP;
0x401755;/users/user4442/AOA_Etude_de_cas/kernel.c:58;RET;
0x401756;/users/user4442/AOA_Etude_de_cas/kernel.c:58;NOPL	(%RAX);
0x401759;/users/user4442/AOA_Etude_de_cas/kernel.c:58;NOPL	(%RAX);
