address;source_location;insn;indent
0x401677;:0;MOV	%R11,%R15;
0x40167a;:0;LEA	(%RBP,%RBP,1),%R14D;
0x40167f;:0;VGETMANTSS	$0,(%RDX,%R14,4),%XMM16,%XMM16;
0x401687;:0;IMUL	%R14,%R15;
0x40168b;:0;VMOVSS	(%RDX,%R14,4),%XMM1;
0x401691;:0;VMOVSS	(%RBX,%R15,4),%XMM3;
0x401697;:0;VRCP28SS	%XMM16,%XMM16,%XMM2;
0x40169d;:0;VMOVSS	(%RBX,%R15,4),%XMM0;
0x4016a3;:0;VGETEXPSS	%XMM1,%XMM1,%XMM1;
0x4016a9;:0;LEA	0x1(%RBP,%RBP,1),%R15D;
0x4016ae;:0;ADD	$0x1,%EBP;
0x4016b1;:0;VGETMANTSS	$0,%XMM3,%XMM3,%XMM3;
0x4016b8;:0;VGETEXPSS	%XMM0,%XMM0,%XMM0;
0x4016be;:0;VMULSS	{rn-sae},%XMM3,%XMM2,%XMM4;
0x4016c4;:0;VSUBSS	%XMM1,%XMM0,%XMM5;
0x4016c8;:0;VFNMADD231SS	{rn-sae},%XMM16,%XMM4,%XMM3;
0x4016ce;:0;VFMADD231SS	%XMM3,%XMM2,%XMM4;
0x4016d3;:0;VSCALEFSS	%XMM5,%XMM4,%XMM6;
0x4016d9;:0;VADDSS	(%RSI,%R14,4),%XMM6,%XMM7;
0x4016df;:0;VMOVSS	%XMM7,(%RSI,%R14,4);
0x4016e5;:0;MOV	%R11,%R14;
0x4016e8;:0;VGETMANTSS	$0,(%RDX,%R15,4),%XMM17,%XMM17;
0x4016f0;:0;IMUL	%R15,%R14;
0x4016f4;:0;VMOVSS	(%RBX,%R14,4),%XMM11;
0x4016fa;:0;VRCP28SS	%XMM17,%XMM17,%XMM10;
0x401700;:0;VMOVSS	(%RBX,%R14,4),%XMM8;
0x401706;:0;VGETMANTSS	$0,%XMM11,%XMM11,%XMM11;
0x40170d;:0;VMOVSS	(%RDX,%R15,4),%XMM9;
0x401713;:0;VGETEXPSS	%XMM8,%XMM8,%XMM8;
0x401719;:0;VMULSS	{rn-sae},%XMM11,%XMM10,%XMM12;
0x40171f;:0;VGETEXPSS	%XMM9,%XMM9,%XMM9;
0x401725;:0;VFNMADD231SS	{rn-sae},%XMM17,%XMM12,%XMM11;
0x40172b;:0;VSUBSS	%XMM9,%XMM8,%XMM13;
0x401730;:0;VFMADD231SS	%XMM11,%XMM10,%XMM12;
0x401735;:0;VSCALEFSS	%XMM13,%XMM12,%XMM14;
0x40173b;:0;VADDSS	(%RSI,%R15,4),%XMM14,%XMM15;
0x401741;:0;VMOVSS	%XMM15,(%RSI,%R15,4);
0x401747;:0;CMP	%R8D,%EBP;
0x40174a;:0;JB	401677 <baseline+0x47>;
