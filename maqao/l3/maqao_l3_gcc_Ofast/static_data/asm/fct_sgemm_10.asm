address;source_location;insn;indent
0x1650;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;ENDBR64;
0x1654;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;MOV	%EDI,%EAX;
0x1656;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:53;TEST	%EAX,%EAX;
0x1658;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:53;JE	18a4 <baseline+0x254>;
0x165e;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;PUSH	%RBP;
0x165f;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;MOV	%RCX,%R9;
0x1662;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;LEA	-0x1(%RAX),%RCX;
0x1666;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;LEA	(,%RAX,4),%R8;
0x166e;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;MOV	%RCX,%RDI;
0x1671;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;MOV	%EAX,%R10D;
0x1674;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;LEA	(%RAX,%RAX,2),%R11;
0x1678;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;IMUL	%R8,%RDI;
0x167c;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;SHR	$0x2,%R10D;
0x1680;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;SAL	$0x2,%R11;
0x1684;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;MOV	%RSP,%RBP;
0x1687;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;PUSH	%R15;
0x1689;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;SAL	$0x4,%R10;
0x168d;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;PUSH	%R14;
0x168f;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;MOV	%EAX,%R14D;
0x1692;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;PUSH	%R13;
0x1694;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;AND	$-0x4,%R14D;
0x1698;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;PUSH	%R12;
0x169a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:53;XOR	%R12D,%R12D;
0x169d;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;PUSH	%RBX;
0x169e;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;MOV	%RAX,%RBX;
0x16a1;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;LEA	-0x1(%RBX),%R15D;
0x16a5;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;MOV	%RDI,-0x50(%RBP);
0x16a9;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;LEA	(%RSI,%RCX,4),%RDI;
0x16ad;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;MOV	%RDI,-0x48(%RBP);
0x16b1;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;MOV	%RAX,%RDI;
0x16b4;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	%R14D,%EAX;
0x16b7;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	%RAX,%RCX;
0x16ba;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;SAL	$0x2,%RAX;
0x16be;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	%R14D,-0x40(%RBP);
0x16c2;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;IMUL	%R8,%RCX;
0x16c6;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	%R15D,-0x3c(%RBP);
0x16ca;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;SAL	$0x4,%RDI;
0x16ce;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADD	%R9,%RCX;
0x16d1;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	%RCX,-0x70(%RBP);
0x16d5;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;LEA	(%RDX,%RAX,1),%RCX;
0x16d9;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADD	%RSI,%RAX;
0x16dc;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	%RAX,-0x60(%RBP);
0x16e0;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;LEA	0x1(%R14),%EAX;
0x16e4;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	%RCX,-0x58(%RBP);
0x16e8;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	%RAX,%RCX;
0x16eb;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;IMUL	%R8,%RCX;
0x16ef;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;MOV	%EAX,-0x64(%RBP);
0x16f2;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;SAL	$0x2,%RAX;
0x16f6;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADD	%R9,%RCX;
0x16f9;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	%RCX,-0x78(%RBP);
0x16fd;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;LEA	(%RDX,%RAX,1),%RCX;
0x1701;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADD	%RSI,%RAX;
0x1704;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	%RCX,-0x80(%RBP);
0x1708;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	%R8,%RCX;
0x170b;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	%RAX,-0x88(%RBP);
0x1712;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;LEA	0x2(%R14),%EAX;
0x1716;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;IMUL	%RAX,%RCX;
0x171a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;MOV	%EAX,-0x68(%RBP);
0x171d;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;SAL	$0x2,%RAX;
0x1721;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADD	%R9,%RCX;
0x1724;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	%RCX,-0x90(%RBP);
0x172b;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;LEA	(%RDX,%RAX,1),%RCX;
0x172f;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADD	%RSI,%RAX;
0x1732;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	%RAX,-0xa0(%RBP);
0x1739;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;LEA	0xf(%RDX),%RAX;
0x173d;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;SUB	%RSI,%RAX;
0x1740;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	%RCX,-0x98(%RBP);
0x1747;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	%RAX,-0x38(%RBP);
0x174b;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;NOPL	(%RAX,%RAX,1);
0x1750;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;CMPQ	$0x1e,-0x38(%RBP);(9) 
0x1755;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;SETA	%CL;(9) 
0x1758;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;CMPL	$0x2,-0x3c(%RBP);(9) 
0x175c;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;SETA	%AL;(9) 
0x175f;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;TEST	%AL,%CL;(9) 
0x1761;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JE	1878 <baseline+0x228>;(9) 
0x1767;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;MOV	-0x50(%RBP),%RAX;(9) 
0x176b;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;MOV	%R9,%RCX;(9) 
0x176e;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;ADD	%R9,%RAX;(9) 
0x1771;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;CMP	%RAX,%RSI;(9) 
0x1774;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;SETA	%R14B;(9) 
0x1778;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;CMP	%R9,-0x48(%RBP);(9) 
0x177c;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;SETB	%R13B;(9) 
0x1780;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;XOR	%EAX,%EAX;(9) 
0x1782;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;OR	%R13B,%R14B;(9) 
0x1785;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;JE	1878 <baseline+0x228>;(9) 
0x178b;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;NOPL	(%RAX,%RAX,1);(9) 
0x1790;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVSS	(%RCX,%R11,1),%XMM1;  (10) 
0x1796;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVUPS	(%RDX,%RAX,1),%XMM5;  (10) 
0x179a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVSS	(%RCX,%R8,2),%XMM3;  (10) 
0x17a0;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVSS	(%RCX,%R8,1),%XMM0;  (10) 
0x17a6;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVAPS	%XMM5,%XMM2;  (10) 
0x17a9;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVSS	(%RCX),%XMM4;  (10) 
0x17ad;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVUPS	(%RSI,%RAX,1),%XMM6;  (10) 
0x17b1;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADD	%RDI,%RCX;  (10) 
0x17b4;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;UNPCKLPS	%XMM1,%XMM3;  (10) 
0x17b7;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;RCPPS	%XMM5,%XMM1;  (10) 
0x17ba;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;UNPCKLPS	%XMM0,%XMM4;  (10) 
0x17bd;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVAPS	%XMM4,%XMM0;  (10) 
0x17c0;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVLHPS	%XMM3,%XMM0;  (10) 
0x17c3;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MULPS	%XMM1,%XMM2;  (10) 
0x17c6;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MULPS	%XMM1,%XMM2;  (10) 
0x17c9;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADDPS	%XMM1,%XMM1;  (10) 
0x17cc;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;SUBPS	%XMM2,%XMM1;  (10) 
0x17cf;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MULPS	%XMM1,%XMM0;  (10) 
0x17d2;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADDPS	%XMM6,%XMM0;  (10) 
0x17d5;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVUPS	%XMM0,(%RSI,%RAX,1);  (10) 
0x17d9;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;ADD	$0x10,%RAX;  (10) 
0x17dd;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;CMP	%R10,%RAX;  (10) 
0x17e0;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JNE	1790 <baseline+0x140>;  (10) 
0x17e2;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;CMP	-0x40(%RBP),%EBX;(9) 
0x17e5;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JE	1857 <baseline+0x207>;(9) 
0x17e7;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	-0x70(%RBP),%RCX;(9) 
0x17eb;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	%R12D,%EAX;(9) 
0x17ee;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVSS	(%RCX,%RAX,4),%XMM0;(9) 
0x17f3;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	-0x58(%RBP),%RCX;(9) 
0x17f7;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;DIVSS	(%RCX),%XMM0;(9) 
0x17fb;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	-0x60(%RBP),%RCX;(9) 
0x17ff;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADDSS	(%RCX),%XMM0;(9) 
0x1803;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVSS	%XMM0,(%RCX);(9) 
0x1807;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;CMP	-0x64(%RBP),%EBX;(9) 
0x180a;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JBE	1857 <baseline+0x207>;(9) 
0x180c;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	-0x78(%RBP),%RCX;(9) 
0x1810;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVSS	(%RCX,%RAX,4),%XMM0;(9) 
0x1815;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	-0x80(%RBP),%RCX;(9) 
0x1819;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;DIVSS	(%RCX),%XMM0;(9) 
0x181d;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	-0x88(%RBP),%RCX;(9) 
0x1824;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADDSS	(%RCX),%XMM0;(9) 
0x1828;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVSS	%XMM0,(%RCX);(9) 
0x182c;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;CMP	-0x68(%RBP),%EBX;(9) 
0x182f;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JBE	1857 <baseline+0x207>;(9) 
0x1831;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	-0x90(%RBP),%RCX;(9) 
0x1838;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVSS	(%RCX,%RAX,4),%XMM0;(9) 
0x183d;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	-0x98(%RBP),%RAX;(9) 
0x1844;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;DIVSS	(%RAX),%XMM0;(9) 
0x1848;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	-0xa0(%RBP),%RAX;(9) 
0x184f;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADDSS	(%RAX),%XMM0;(9) 
0x1853;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVSS	%XMM0,(%RAX);(9) 
0x1857;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:53;ADD	$0x1,%R12D;(9) 
0x185b;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:53;ADD	$0x4,%R9;(9) 
0x185f;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:53;CMP	%R12D,%EBX;(9) 
0x1862;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:53;JNE	1750 <baseline+0x100>;(9) 
0x1868;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:58;POP	%RBX;
0x1869;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:58;POP	%R12;
0x186b;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:58;POP	%R13;
0x186d;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:58;POP	%R14;
0x186f;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:58;POP	%R15;
0x1871;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:58;POP	%RBP;
0x1872;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:58;RET;
0x1873;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:58;NOPL	(%RAX,%RAX,1);
0x1878;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;MOV	%R9,%RCX;(9) 
0x187b;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;XOR	%EAX,%EAX;(9) 
0x187d;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50;NOPL	(%RAX);(9) 
0x1880;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVSS	(%RCX),%XMM0;  (8) 
0x1884;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;DIVSS	(%RDX,%RAX,4),%XMM0;  (8) 
0x1889;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOV	%RAX,%R13;  (8) 
0x188c;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADD	%R8,%RCX;  (8) 
0x188f;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;ADDSS	(%RSI,%RAX,4),%XMM0;  (8) 
0x1894;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:55;MOVSS	%XMM0,(%RSI,%RAX,4);  (8) 
0x1899;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;ADD	$0x1,%RAX;  (8) 
0x189d;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;CMP	%R15,%R13;  (8) 
0x18a0;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JNE	1880 <baseline+0x230>;  (8) 
0x18a2;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;JMP	1857 <baseline+0x207>;(9) 
0x18a4;/home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54;RET;
