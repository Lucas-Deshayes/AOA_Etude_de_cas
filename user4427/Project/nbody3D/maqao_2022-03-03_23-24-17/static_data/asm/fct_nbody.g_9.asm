address;source_location;insn;indent
0x1720;:0;ENDBR64;
0x1724;:0;PUSH	%RBP;
0x1725;:0;MOV	%RSP,%RBP;
0x1728;:0;PUSH	%R13;
0x172a;:0;PUSH	%R12;
0x172c;:0;PUSH	%RBX;
0x172d;:0;MOV	0x8(%RDI),%RBX;
0x1731;:0;AND	$-0x40,%RSP;
0x1735;:0;TEST	%RBX,%RBX;
0x1738;:0;JE	1dc0 <move_particles._omp_fn.1+0x6a0>;
0x173e;:0;LEA	(%RDI),%R13;
0x1741;:0;CALL	1120 <.plt.sec@start+0x40>;
0x1746;:0;LEA	(%RAX),%R12D;
0x1749;:0;CALL	1100 <.plt.sec@start+0x20>;
0x174e;:0;MOVSXD	%EAX,%RCX;
0x1751;:0;XOR	%EDX,%EDX;
0x1753;:0;MOVSXD	%R12D,%RSI;
0x1756;:0;LEA	(%RBX),%RAX;
0x1759;:0;DIV	%RSI;
0x175c;:0;CMP	%RDX,%RCX;
0x175f;:0;JB	1dd0 <move_particles._omp_fn.1+0x6b0>;
0x1765;:0;IMUL	%RAX,%RCX;
0x1769;:0;MOV	%RAX,%R8;
0x176c;:0;ADD	%RCX,%RDX;
0x176f;:0;ADD	%RDX,%R8;
0x1772;:0;CMP	%R8,%RDX;
0x1775;:0;JAE	1dc0 <move_particles._omp_fn.1+0x6a0>;
0x177b;:0;MOV	(%R13),%RSI;
0x177f;:0;LEA	(%RDX),%RDI;
0x1782;:0;SAL	$0x2,%RDI;
0x1786;:0;MOV	$0x17,%R11D;
0x178c;:0;VMOVSS	0x10(%R13),%XMM0;
0x1792;:0;LEA	-0x1(%RAX),%R10;
0x1796;:0;ADD	%RSI,%RDI;
0x1799;:0;MOV	%RDI,%RCX;
0x179c;:0;SHR	$0x2,%RCX;
0x17a0;:0;NEG	%RCX;
0x17a3;:0;AND	$0xf,%ECX;
0x17a6;:0;MOV	%RCX,%R9;
0x17a9;:0;ADD	$0xf,%R9;
0x17ad;:0;CMP	$0x17,%R9;
0x17b1;:0;CMOVB	%R11,%R9;
0x17b5;:0;CMP	%R9,%R10;
0x17b8;:0;JB	1d6b <move_particles._omp_fn.1+0x64b>;
0x17be;:0;TEST	%RCX,%RCX;
0x17c1;:0;JE	1ddb <move_particles._omp_fn.1+0x6bb>;
0x17c7;:0;VMOVSS	0xafc80(%RDI),%XMM1;
0x17cf;:0;CMP	$0x1,%RCX;
0x17d3;:0;VFMADD213SS	(%RDI),%XMM0,%XMM1;
0x17d8;:0;VMOVSS	%XMM1,(%RDI);
0x17dc;:0;VMOVSS	0xea600(%RDI),%XMM1;
0x17e4;:0;VFMADD213SS	0x3a980(%RDI),%XMM0,%XMM1;
0x17ed;:0;VMOVSS	%XMM1,0x3a980(%RDI);
0x17f5;:0;VMOVSS	0x124f80(%RDI),%XMM1;
0x17fd;:0;VFMADD213SS	0x75300(%RDI),%XMM0,%XMM1;
0x1806;:0;VMOVSS	%XMM1,0x75300(%RDI);
0x180e;:0;LEA	0x1(%RDX),%RDI;
0x1812;:0;JE	1cb0 <move_particles._omp_fn.1+0x590>;
0x1818;:0;LEA	(%RSI,%RDI,4),%RDI;
0x181c;:0;CMP	$0x2,%RCX;
0x1820;:0;VMOVSS	0xafc80(%RDI),%XMM1;
0x1828;:0;VFMADD213SS	(%RDI),%XMM0,%XMM1;
0x182d;:0;VMOVSS	%XMM1,(%RDI);
0x1831;:0;VMOVSS	0xea600(%RDI),%XMM1;
0x1839;:0;VFMADD213SS	0x3a980(%RDI),%XMM0,%XMM1;
0x1842;:0;VMOVSS	%XMM1,0x3a980(%RDI);
0x184a;:0;VMOVSS	0x124f80(%RDI),%XMM1;
0x1852;:0;VFMADD213SS	0x75300(%RDI),%XMM0,%XMM1;
0x185b;:0;VMOVSS	%XMM1,0x75300(%RDI);
0x1863;:0;LEA	0x2(%RDX),%RDI;
0x1867;:0;JE	1cb0 <move_particles._omp_fn.1+0x590>;
0x186d;:0;LEA	(%RSI,%RDI,4),%RDI;
0x1871;:0;CMP	$0x3,%RCX;
0x1875;:0;VMOVSS	0xafc80(%RDI),%XMM1;
0x187d;:0;VFMADD213SS	(%RDI),%XMM0,%XMM1;
0x1882;:0;VMOVSS	%XMM1,(%RDI);
0x1886;:0;VMOVSS	0xea600(%RDI),%XMM1;
0x188e;:0;VFMADD213SS	0x3a980(%RDI),%XMM0,%XMM1;
0x1897;:0;VMOVSS	%XMM1,0x3a980(%RDI);
0x189f;:0;VMOVSS	0x124f80(%RDI),%XMM1;
0x18a7;:0;VFMADD213SS	0x75300(%RDI),%XMM0,%XMM1;
0x18b0;:0;VMOVSS	%XMM1,0x75300(%RDI);
0x18b8;:0;LEA	0x3(%RDX),%RDI;
0x18bc;:0;JE	1cb0 <move_particles._omp_fn.1+0x590>;
0x18c2;:0;LEA	(%RSI,%RDI,4),%RDI;
0x18c6;:0;CMP	$0x4,%RCX;
0x18ca;:0;VMOVSS	0xafc80(%RDI),%XMM1;
0x18d2;:0;VFMADD213SS	(%RDI),%XMM0,%XMM1;
0x18d7;:0;VMOVSS	%XMM1,(%RDI);
0x18db;:0;VMOVSS	0xea600(%RDI),%XMM1;
0x18e3;:0;VFMADD213SS	0x3a980(%RDI),%XMM0,%XMM1;
0x18ec;:0;VMOVSS	%XMM1,0x3a980(%RDI);
0x18f4;:0;VMOVSS	0x124f80(%RDI),%XMM1;
0x18fc;:0;VFMADD213SS	0x75300(%RDI),%XMM0,%XMM1;
0x1905;:0;VMOVSS	%XMM1,0x75300(%RDI);
0x190d;:0;LEA	0x4(%RDX),%RDI;
0x1911;:0;JE	1cb0 <move_particles._omp_fn.1+0x590>;
0x1917;:0;LEA	(%RSI,%RDI,4),%RDI;
0x191b;:0;CMP	$0x5,%RCX;
0x191f;:0;VMOVSS	0xafc80(%RDI),%XMM1;
0x1927;:0;VFMADD213SS	(%RDI),%XMM0,%XMM1;
0x192c;:0;VMOVSS	%XMM1,(%RDI);
0x1930;:0;VMOVSS	0xea600(%RDI),%XMM1;
0x1938;:0;VFMADD213SS	0x3a980(%RDI),%XMM0,%XMM1;
0x1941;:0;VMOVSS	%XMM1,0x3a980(%RDI);
0x1949;:0;VMOVSS	0x124f80(%RDI),%XMM1;
0x1951;:0;VFMADD213SS	0x75300(%RDI),%XMM0,%XMM1;
0x195a;:0;VMOVSS	%XMM1,0x75300(%RDI);
0x1962;:0;LEA	0x5(%RDX),%RDI;
0x1966;:0;JE	1cb0 <move_particles._omp_fn.1+0x590>;
0x196c;:0;LEA	(%RSI,%RDI,4),%RDI;
0x1970;:0;CMP	$0x6,%RCX;
0x1974;:0;VMOVSS	0xafc80(%RDI),%XMM1;
0x197c;:0;VFMADD213SS	(%RDI),%XMM0,%XMM1;
0x1981;:0;VMOVSS	%XMM1,(%RDI);
0x1985;:0;VMOVSS	0xea600(%RDI),%XMM1;
0x198d;:0;VFMADD213SS	0x3a980(%RDI),%XMM0,%XMM1;
0x1996;:0;VMOVSS	%XMM1,0x3a980(%RDI);
0x199e;:0;VMOVSS	0x124f80(%RDI),%XMM1;
0x19a6;:0;VFMADD213SS	0x75300(%RDI),%XMM0,%XMM1;
0x19af;:0;VMOVSS	%XMM1,0x75300(%RDI);
0x19b7;:0;LEA	0x6(%RDX),%RDI;
0x19bb;:0;JE	1cb0 <move_particles._omp_fn.1+0x590>;
0x19c1;:0;LEA	(%RSI,%RDI,4),%RDI;
0x19c5;:0;CMP	$0x7,%RCX;
0x19c9;:0;VMOVSS	0xafc80(%RDI),%XMM1;
0x19d1;:0;VFMADD213SS	(%RDI),%XMM0,%XMM1;
0x19d6;:0;VMOVSS	%XMM1,(%RDI);
0x19da;:0;VMOVSS	0xea600(%RDI),%XMM1;
0x19e2;:0;VFMADD213SS	0x3a980(%RDI),%XMM0,%XMM1;
0x19eb;:0;VMOVSS	%XMM1,0x3a980(%RDI);
0x19f3;:0;VMOVSS	0x124f80(%RDI),%XMM1;
0x19fb;:0;VFMADD213SS	0x75300(%RDI),%XMM0,%XMM1;
0x1a04;:0;VMOVSS	%XMM1,0x75300(%RDI);
0x1a0c;:0;LEA	0x7(%RDX),%RDI;
0x1a10;:0;JE	1cb0 <move_particles._omp_fn.1+0x590>;
0x1a16;:0;LEA	(%RSI,%RDI,4),%RDI;
0x1a1a;:0;CMP	$0x8,%RCX;
0x1a1e;:0;VMOVSS	0xafc80(%RDI),%XMM1;
0x1a26;:0;VFMADD213SS	(%RDI),%XMM0,%XMM1;
0x1a2b;:0;VMOVSS	%XMM1,(%RDI);
0x1a2f;:0;VMOVSS	0xea600(%RDI),%XMM1;
0x1a37;:0;VFMADD213SS	0x3a980(%RDI),%XMM0,%XMM1;
0x1a40;:0;VMOVSS	%XMM1,0x3a980(%RDI);
0x1a48;:0;VMOVSS	0x124f80(%RDI),%XMM1;
0x1a50;:0;VFMADD213SS	0x75300(%RDI),%XMM0,%XMM1;
0x1a59;:0;VMOVSS	%XMM1,0x75300(%RDI);
0x1a61;:0;LEA	0x8(%RDX),%RDI;
0x1a65;:0;JE	1cb0 <move_particles._omp_fn.1+0x590>;
0x1a6b;:0;LEA	(%RSI,%RDI,4),%RDI;
0x1a6f;:0;CMP	$0x9,%RCX;
0x1a73;:0;VMOVSS	0xafc80(%RDI),%XMM1;
0x1a7b;:0;VFMADD213SS	(%RDI),%XMM0,%XMM1;
0x1a80;:0;VMOVSS	%XMM1,(%RDI);
0x1a84;:0;VMOVSS	0xea600(%RDI),%XMM1;
0x1a8c;:0;VFMADD213SS	0x3a980(%RDI),%XMM0,%XMM1;
0x1a95;:0;VMOVSS	%XMM1,0x3a980(%RDI);
0x1a9d;:0;VMOVSS	0x124f80(%RDI),%XMM1;
0x1aa5;:0;VFMADD213SS	0x75300(%RDI),%XMM0,%XMM1;
0x1aae;:0;VMOVSS	%XMM1,0x75300(%RDI);
0x1ab6;:0;LEA	0x9(%RDX),%RDI;
0x1aba;:0;JE	1cb0 <move_particles._omp_fn.1+0x590>;
0x1ac0;:0;LEA	(%RSI,%RDI,4),%RDI;
0x1ac4;:0;CMP	$0xa,%RCX;
0x1ac8;:0;VMOVSS	0xafc80(%RDI),%XMM1;
0x1ad0;:0;VFMADD213SS	(%RDI),%XMM0,%XMM1;
0x1ad5;:0;VMOVSS	%XMM1,(%RDI);
0x1ad9;:0;VMOVSS	0xea600(%RDI),%XMM1;
0x1ae1;:0;VFMADD213SS	0x3a980(%RDI),%XMM0,%XMM1;
0x1aea;:0;VMOVSS	%XMM1,0x3a980(%RDI);
0x1af2;:0;VMOVSS	0x124f80(%RDI),%XMM1;
0x1afa;:0;VFMADD213SS	0x75300(%RDI),%XMM0,%XMM1;
0x1b03;:0;VMOVSS	%XMM1,0x75300(%RDI);
0x1b0b;:0;LEA	0xa(%RDX),%RDI;
0x1b0f;:0;JE	1cb0 <move_particles._omp_fn.1+0x590>;
0x1b15;:0;LEA	(%RSI,%RDI,4),%RDI;
0x1b19;:0;CMP	$0xb,%RCX;
0x1b1d;:0;VMOVSS	0xafc80(%RDI),%XMM1;
0x1b25;:0;VFMADD213SS	(%RDI),%XMM0,%XMM1;
0x1b2a;:0;VMOVSS	%XMM1,(%RDI);
0x1b2e;:0;VMOVSS	0xea600(%RDI),%XMM1;
0x1b36;:0;VFMADD213SS	0x3a980(%RDI),%XMM0,%XMM1;
0x1b3f;:0;VMOVSS	%XMM1,0x3a980(%RDI);
0x1b47;:0;VMOVSS	0x124f80(%RDI),%XMM1;
0x1b4f;:0;VFMADD213SS	0x75300(%RDI),%XMM0,%XMM1;
0x1b58;:0;VMOVSS	%XMM1,0x75300(%RDI);
0x1b60;:0;LEA	0xb(%RDX),%RDI;
0x1b64;:0;JE	1cb0 <move_particles._omp_fn.1+0x590>;
0x1b6a;:0;LEA	(%RSI,%RDI,4),%RDI;
0x1b6e;:0;CMP	$0xc,%RCX;
0x1b72;:0;VMOVSS	0xafc80(%RDI),%XMM1;
0x1b7a;:0;VFMADD213SS	(%RDI),%XMM0,%XMM1;
0x1b7f;:0;VMOVSS	%XMM1,(%RDI);
0x1b83;:0;VMOVSS	0xea600(%RDI),%XMM1;
0x1b8b;:0;VFMADD213SS	0x3a980(%RDI),%XMM0,%XMM1;
0x1b94;:0;VMOVSS	%XMM1,0x3a980(%RDI);
0x1b9c;:0;VMOVSS	0x124f80(%RDI),%XMM1;
0x1ba4;:0;VFMADD213SS	0x75300(%RDI),%XMM0,%XMM1;
0x1bad;:0;VMOVSS	%XMM1,0x75300(%RDI);
0x1bb5;:0;LEA	0xc(%RDX),%RDI;
0x1bb9;:0;JE	1cb0 <move_particles._omp_fn.1+0x590>;
0x1bbf;:0;LEA	(%RSI,%RDI,4),%RDI;
0x1bc3;:0;CMP	$0xd,%RCX;
0x1bc7;:0;VMOVSS	0xafc80(%RDI),%XMM1;
0x1bcf;:0;VFMADD213SS	(%RDI),%XMM0,%XMM1;
0x1bd4;:0;VMOVSS	%XMM1,(%RDI);
0x1bd8;:0;VMOVSS	0xea600(%RDI),%XMM1;
0x1be0;:0;VFMADD213SS	0x3a980(%RDI),%XMM0,%XMM1;
0x1be9;:0;VMOVSS	%XMM1,0x3a980(%RDI);
0x1bf1;:0;VMOVSS	0x124f80(%RDI),%XMM1;
0x1bf9;:0;VFMADD213SS	0x75300(%RDI),%XMM0,%XMM1;
0x1c02;:0;VMOVSS	%XMM1,0x75300(%RDI);
0x1c0a;:0;LEA	0xd(%RDX),%RDI;
0x1c0e;:0;JE	1cb0 <move_particles._omp_fn.1+0x590>;
0x1c14;:0;LEA	(%RSI,%RDI,4),%RDI;
0x1c18;:0;CMP	$0xf,%RCX;
0x1c1c;:0;VMOVSS	0xafc80(%RDI),%XMM1;
0x1c24;:0;VFMADD213SS	(%RDI),%XMM0,%XMM1;
0x1c29;:0;VMOVSS	%XMM1,(%RDI);
0x1c2d;:0;VMOVSS	0xea600(%RDI),%XMM1;
0x1c35;:0;VFMADD213SS	0x3a980(%RDI),%XMM0,%XMM1;
0x1c3e;:0;VMOVSS	%XMM1,0x3a980(%RDI);
0x1c46;:0;VMOVSS	0x124f80(%RDI),%XMM1;
0x1c4e;:0;VFMADD213SS	0x75300(%RDI),%XMM0,%XMM1;
0x1c57;:0;VMOVSS	%XMM1,0x75300(%RDI);
0x1c5f;:0;LEA	0xe(%RDX),%RDI;
0x1c63;:0;JNE	1cb0 <move_particles._omp_fn.1+0x590>;
0x1c65;:0;LEA	(%RSI,%RDI,4),%RDI;
0x1c69;:0;VMOVSS	0xafc80(%RDI),%XMM1;
0x1c71;:0;VFMADD213SS	(%RDI),%XMM0,%XMM1;
0x1c76;:0;VMOVSS	%XMM1,(%RDI);
0x1c7a;:0;VMOVSS	0xea600(%RDI),%XMM1;
0x1c82;:0;VFMADD213SS	0x3a980(%RDI),%XMM0,%XMM1;
0x1c8b;:0;VMOVSS	%XMM1,0x3a980(%RDI);
0x1c93;:0;VMOVSS	0x124f80(%RDI),%XMM1;
0x1c9b;:0;VFMADD213SS	0x75300(%RDI),%XMM0,%XMM1;
0x1ca4;:0;VMOVSS	%XMM1,0x75300(%RDI);
0x1cac;:0;LEA	0xf(%RDX),%RDI;
0x1cb0;:0;LEA	(%RDX,%RCX,1),%R9;
0x1cb4;:0;SUB	%RCX,%RAX;
0x1cb7;:0;LEA	(%RSI,%R9,4),%R11;
0x1cbb;:0;LEA	0x2bf20(%RDX,%RCX,1),%R9;
0x1cc3;:0;LEA	(%RSI,%R9,4),%R12;
0x1cc7;:0;LEA	0xea60(%RDX,%RCX,1),%R9;
0x1ccf;:0;LEA	(%RSI,%R9,4),%R10;
0x1cd3;:0;LEA	0x3a980(%RDX,%RCX,1),%R9;
0x1cdb;:0;LEA	(%RSI,%R9,4),%RBX;
0x1cdf;:0;LEA	0x1d4c0(%RDX,%RCX,1),%R9;
0x1ce7;:0;LEA	0x493e0(%RDX,%RCX,1),%RDX;
0x1cef;:0;LEA	(%RAX),%RCX;
0x1cf2;:0;SHR	$0x4,%RCX;
0x1cf6;:0;LEA	(%RSI,%RDX,4),%R13;
0x1cfa;:0;VBROADCASTSS	%XMM0,%ZMM1;
0x1d00;:0;LEA	(%RSI,%R9,4),%R9;
0x1d04;:0;SAL	$0x6,%RCX;
0x1d08;:0;XOR	%EDX,%EDX;
0x1d0a;:0;NOPW	(%RAX,%RAX,1);
0x1d10;:0;VMOVUPS	(%R12,%RDX,1),%ZMM2;(4) 
0x1d17;:0;VFMADD213PS	(%R11,%RDX,1),%ZMM1,%ZMM2;(4) 
0x1d1e;:0;VMOVAPS	%ZMM2,(%R11,%RDX,1);(4) 
0x1d25;:0;VMOVUPS	(%RBX,%RDX,1),%ZMM2;(4) 
0x1d2c;:0;VFMADD213PS	(%R10,%RDX,1),%ZMM1,%ZMM2;(4) 
0x1d33;:0;VMOVUPS	%ZMM2,(%R10,%RDX,1);(4) 
0x1d3a;:0;VMOVUPS	(%R13,%RDX,1),%ZMM2;(4) 
0x1d42;:0;VFMADD213PS	(%R9,%RDX,1),%ZMM1,%ZMM2;(4) 
0x1d49;:0;VMOVUPS	%ZMM2,(%R9,%RDX,1);(4) 
0x1d50;:0;LEA	0x40(%RDX),%RDX;(4) 
0x1d54;:0;CMP	%RCX,%RDX;(4) 
0x1d57;:0;JNE	1d10 <move_particles._omp_fn.1+0x5f0>;(4) 
0x1d59;:0;LEA	(%RAX),%RCX;
0x1d5c;:0;LEA	(%RDI),%RDX;
0x1d5f;:0;AND	$-0x10,%RCX;
0x1d63;:0;ADD	%RCX,%RDX;
0x1d66;:0;CMP	%RCX,%RAX;
0x1d69;:0;JE	1dc0 <move_particles._omp_fn.1+0x6a0>;
0x1d6b;:0;LEA	(%RSI,%RDX,4),%RCX;
0x1d6f;:0;NOP;
0x1d70;:0;VMOVSS	0xafc80(%RCX),%XMM1;(3) 
0x1d78;:0;LEA	0x1(%RDX),%RDX;(3) 
0x1d7c;:0;VFMADD213SS	(%RCX),%XMM0,%XMM1;(3) 
0x1d81;:0;VMOVSS	%XMM1,(%RCX);(3) 
0x1d85;:0;VMOVSS	0xea600(%RCX),%XMM1;(3) 
0x1d8d;:0;CMP	%RDX,%R8;(3) 
0x1d90;:0;VFMADD213SS	0x3a980(%RCX),%XMM0,%XMM1;(3) 
0x1d99;:0;VMOVSS	%XMM1,0x3a980(%RCX);(3) 
0x1da1;:0;VMOVSS	0x124f80(%RCX),%XMM1;(3) 
0x1da9;:0;LEA	0x4(%RCX),%RCX;(3) 
0x1dad;:0;VFMADD213SS	0x752fc(%RCX),%XMM0,%XMM1;(3) 
0x1db6;:0;VMOVSS	%XMM1,0x752fc(%RCX);(3) 
0x1dbe;:0;JA	1d70 <move_particles._omp_fn.1+0x650>;(3) 
0x1dc0;:0;LEA	-0x18(%RBP),%RSP;
0x1dc4;:0;POP	%RBX;
0x1dc5;:0;POP	%R12;
0x1dc7;:0;POP	%R13;
0x1dc9;:0;POP	%RBP;
0x1dca;:0;RET;
0x1dcb;:0;NOPL	(%RAX,%RAX,1);
0x1dd0;:0;ADD	$0x1,%RAX;
0x1dd4;:0;XOR	%EDX,%EDX;
0x1dd6;:0;JMP	1765 <move_particles._omp_fn.1+0x45>;
0x1ddb;:0;LEA	(%RDX),%RDI;
0x1dde;:0;JMP	1cb0 <move_particles._omp_fn.1+0x590>;
0x1de3;:0;NOPW	%CS:(%RAX,%RAX,1);
0x1dee;:0;XCHG	%AX,%AX;
