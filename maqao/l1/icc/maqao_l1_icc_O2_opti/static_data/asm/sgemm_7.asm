address;source_location;insn;indent
0x4015d3;/users/user4427/AOA_Etude_de_cas/kernel.c:54;MOV	$0x1,%EBX;
0x4015d8;/users/user4427/AOA_Etude_de_cas/kernel.c:54;XOR	%R13D,%R13D;
0x4015db;/users/user4427/AOA_Etude_de_cas/kernel.c:54;TEST	%R8D,%R8D;
0x4015de;/users/user4427/AOA_Etude_de_cas/kernel.c:54;JBE	4016d3 <baseline+0x133>;
0x4015e4;/users/user4427/AOA_Etude_de_cas/kernel.c:55;LEA	(%RCX,%R9,4),%RBX;
0x4015e8;/users/user4427/AOA_Etude_de_cas/kernel.c:55;LEA	(%R13,%R13,1),%R14D;  (8) 
0x4015ed;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RDX,%R14,4),%XMM2;  (8) 
0x4015f3;/users/user4427/AOA_Etude_de_cas/kernel.c:55;MOV	%R11,%R15;  (8) 
0x4015f6;/users/user4427/AOA_Etude_de_cas/kernel.c:55;IMUL	%R14,%R15;  (8) 
0x4015fa;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RDX,%R14,4),%XMM1;  (8) 
0x401600;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VGETMANTSS	$0,%XMM2,%XMM2,%XMM2;  (8) 
0x401607;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RBX,%R15,4),%XMM4;  (8) 
0x40160d;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RBX,%R15,4),%XMM0;  (8) 
0x401613;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VGETEXPSS	%XMM1,%XMM1,%XMM1;  (8) 
0x401619;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VRCP28SS	%XMM2,%XMM2,%XMM3;  (8) 
0x40161f;/users/user4427/AOA_Etude_de_cas/kernel.c:55;LEA	0x1(%R13,%R13,1),%R15D;  (8) 
0x401624;/users/user4427/AOA_Etude_de_cas/kernel.c:54;ADD	$0x1,%R13D;  (8) 
0x401628;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VGETMANTSS	$0,%XMM4,%XMM4,%XMM4;  (8) 
0x40162f;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VMULSS	{rn-sae},%XMM4,%XMM3,%XMM5;  (8) 
0x401635;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VGETEXPSS	%XMM0,%XMM0,%XMM0;  (8) 
0x40163b;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VFNMADD231SS	{rn-sae},%XMM2,%XMM5,%XMM4;  (8) 
0x401641;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VSUBSS	%XMM1,%XMM0,%XMM6;  (8) 
0x401645;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VFMADD231SS	%XMM4,%XMM3,%XMM5;  (8) 
0x40164a;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VSCALEFSS	%XMM6,%XMM5,%XMM7;  (8) 
0x401650;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VADDSS	(%RSI,%R14,4),%XMM7,%XMM8;  (8) 
0x401656;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM8,(%RSI,%R14,4);  (8) 
0x40165c;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RDX,%R15,4),%XMM11;  (8) 
0x401662;/users/user4427/AOA_Etude_de_cas/kernel.c:55;MOV	%R11,%R14;  (8) 
0x401665;/users/user4427/AOA_Etude_de_cas/kernel.c:55;IMUL	%R15,%R14;  (8) 
0x401669;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VGETMANTSS	$0,%XMM11,%XMM11,%XMM11;  (8) 
0x401670;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RBX,%R14,4),%XMM13;  (8) 
0x401676;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RBX,%R14,4),%XMM9;  (8) 
0x40167c;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VRCP28SS	%XMM11,%XMM11,%XMM12;  (8) 
0x401682;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VGETMANTSS	$0,%XMM13,%XMM13,%XMM13;  (8) 
0x401689;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RDX,%R15,4),%XMM10;  (8) 
0x40168f;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VGETEXPSS	%XMM9,%XMM9,%XMM9;  (8) 
0x401695;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VMULSS	{rn-sae},%XMM13,%XMM12,%XMM14;  (8) 
0x40169b;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VGETEXPSS	%XMM10,%XMM10,%XMM10;  (8) 
0x4016a1;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VFNMADD231SS	{rn-sae},%XMM11,%XMM14,%XMM13;  (8) 
0x4016a7;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VSUBSS	%XMM10,%XMM9,%XMM15;  (8) 
0x4016ac;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VFMADD231SS	%XMM13,%XMM12,%XMM14;  (8) 
0x4016b1;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VSCALEFSS	%XMM15,%XMM14,%XMM16;  (8) 
0x4016b7;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VADDSS	(%RSI,%R15,4),%XMM16,%XMM17;  (8) 
0x4016be;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM17,(%RSI,%R15,4);  (8) 
0x4016c5;/users/user4427/AOA_Etude_de_cas/kernel.c:54;CMP	%R8D,%R13D;  (8) 
0x4016c8;/users/user4427/AOA_Etude_de_cas/kernel.c:54;JB	4015e8 <baseline+0x48>;  (8) 
0x4016ce;/users/user4427/AOA_Etude_de_cas/kernel.c:55;LEA	0x1(%R13,%R13,1),%EBX;
0x4016d3;/users/user4427/AOA_Etude_de_cas/kernel.c:54;ADD	$-0x1,%EBX;
0x4016d6;/users/user4427/AOA_Etude_de_cas/kernel.c:54;CMP	%EDI,%EBX;
0x4016d8;/users/user4427/AOA_Etude_de_cas/kernel.c:54;JAE	401741 <baseline+0x1a1>;
0x4016da;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RDX,%RBX,4),%XMM2;
0x4016df;/users/user4427/AOA_Etude_de_cas/kernel.c:55;MOV	%RAX,%R13;
0x4016e2;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%RDX,%RBX,4),%XMM1;
0x4016e7;/users/user4427/AOA_Etude_de_cas/kernel.c:55;IMUL	%RBX,%R13;
0x4016eb;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VGETMANTSS	$0,%XMM2,%XMM2,%XMM2;
0x4016f2;/users/user4427/AOA_Etude_de_cas/kernel.c:55;ADD	%RCX,%R13;
0x4016f5;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VGETEXPSS	%XMM1,%XMM1,%XMM1;
0x4016fb;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%R13,%R9,4),%XMM4;
0x401702;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VMOVSS	(%R13,%R9,4),%XMM0;
0x401709;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VRCP28SS	%XMM2,%XMM2,%XMM3;
0x40170f;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VGETMANTSS	$0,%XMM4,%XMM4,%XMM4;
0x401716;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VMULSS	{rn-sae},%XMM4,%XMM3,%XMM5;
0x40171c;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VGETEXPSS	%XMM0,%XMM0,%XMM0;
0x401722;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VFNMADD231SS	{rn-sae},%XMM2,%XMM5,%XMM4;
0x401728;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VSUBSS	%XMM1,%XMM0,%XMM6;
0x40172c;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VFMADD231SS	%XMM4,%XMM3,%XMM5;
0x401731;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VSCALEFSS	%XMM6,%XMM5,%XMM7;
0x401737;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VADDSS	(%RSI,%RBX,4),%XMM7,%XMM8;
0x40173c;/users/user4427/AOA_Etude_de_cas/kernel.c:55;VMOVSS	%XMM8,(%RSI,%RBX,4);
0x401741;/users/user4427/AOA_Etude_de_cas/kernel.c:53;ADD	$0x1,%R10D;
0x401745;/users/user4427/AOA_Etude_de_cas/kernel.c:53;MOV	%R10D,%R9D;
0x401748;/users/user4427/AOA_Etude_de_cas/kernel.c:53;CMP	%EDI,%R10D;
0x40174b;/users/user4427/AOA_Etude_de_cas/kernel.c:53;JB	4015d3 <baseline+0x33>;
