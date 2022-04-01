address;source_location;insn;indent
0x1750;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;CMPQ	$0x1e,-0x70(%RSP);
0x1756;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;SETA	%CL;
0x1759;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;CMPL	$0x2,-0x58(%RSP);
0x175e;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;SETA	%AL;
0x1761;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;TEST	%AL,%CL;
0x1763;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;JE	1860 <baseline+0x210>;
0x1769;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;MOV	-0x60(%RSP),%RAX;
0x176e;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:50;MOV	%R9,%RCX;
0x1771;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:50;ADD	%R9,%RAX;
0x1774;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:50;CMP	%RAX,%RSI;
0x1777;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:50;SETA	%R13B;
0x177b;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:50;CMP	%R9,-0x68(%RSP);
0x1780;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:50;SETB	%R12B;
0x1784;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:50;XOR	%EAX,%EAX;
0x1786;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:50;OR	%R12B,%R13B;
0x1789;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:50;JE	1860 <baseline+0x210>;
0x178f;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:50;NOP;
0x1790;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;MOVSS	(%RCX,%R8,1),%XMM0;  (10) 
0x1796;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;MOVSS	(%RCX),%XMM3;  (10) 
0x179a;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;MOVSS	(%RCX,%R11,1),%XMM1;  (10) 
0x17a0;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;MOVSS	(%RCX,%R8,2),%XMM2;  (10) 
0x17a6;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;ADD	%RDI,%RCX;  (10) 
0x17a9;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;UNPCKLPS	%XMM0,%XMM3;  (10) 
0x17ac;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;MOVUPS	(%RDX,%RAX,1),%XMM4;  (10) 
0x17b0;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;MOVUPS	(%RSI,%RAX,1),%XMM5;  (10) 
0x17b4;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;UNPCKLPS	%XMM1,%XMM2;  (10) 
0x17b7;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;MOVAPS	%XMM3,%XMM0;  (10) 
0x17ba;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;MOVLHPS	%XMM2,%XMM0;  (10) 
0x17bd;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;DIVPS	%XMM4,%XMM0;  (10) 
0x17c0;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;ADDPS	%XMM5,%XMM0;  (10) 
0x17c3;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;MOVUPS	%XMM0,(%RSI,%RAX,1);  (10) 
0x17c7;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;ADD	$0x10,%RAX;  (10) 
0x17cb;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;CMP	%R10,%RAX;  (10) 
0x17ce;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;JNE	1790 <baseline+0x140>;  (10) 
0x17d0;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;CMP	-0x54(%RSP),%EBX;
0x17d4;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;JE	1840 <baseline+0x1f0>;
0x17d6;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;MOV	-0x50(%RSP),%RCX;
0x17db;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;MOV	%EBP,%EAX;
0x17dd;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;MOVSS	(%R15,%RAX,4),%XMM0;
0x17e3;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;DIVSS	(%RCX),%XMM0;
0x17e7;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;MOV	-0x48(%RSP),%RCX;
0x17ec;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;ADDSS	(%RCX),%XMM0;
0x17f0;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;MOVSS	%XMM0,(%RCX);
0x17f4;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;CMP	-0x28(%RSP),%EBX;
0x17f8;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;JBE	1840 <baseline+0x1f0>;
0x17fa;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;MOV	-0x40(%RSP),%RCX;
0x17ff;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;MOVSS	(%RCX,%RAX,4),%XMM0;
0x1804;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;MOV	-0x38(%RSP),%RCX;
0x1809;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;DIVSS	(%RCX),%XMM0;
0x180d;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;MOV	-0x30(%RSP),%RCX;
0x1812;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;ADDSS	(%RCX),%XMM0;
0x1816;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;MOVSS	%XMM0,(%RCX);
0x181a;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;CMP	-0x24(%RSP),%EBX;
0x181e;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;JBE	1840 <baseline+0x1f0>;
0x1820;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;MOV	-0x20(%RSP),%RCX;
0x1825;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;MOVSS	(%RCX,%RAX,4),%XMM0;
0x182a;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;MOV	-0x18(%RSP),%RAX;
0x182f;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;DIVSS	(%RAX),%XMM0;
0x1833;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;MOV	-0x10(%RSP),%RAX;
0x1838;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;ADDSS	(%RAX),%XMM0;
0x183c;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;MOVSS	%XMM0,(%RAX);
0x1840;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:53;ADD	$0x1,%EBP;
0x1843;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:53;ADD	$0x4,%R9;
0x1847;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:53;CMP	%EBP,%EBX;
0x1849;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:53;JNE	1750 <baseline+0x100>;
0x1860;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:50;MOV	%R9,%RCX;
0x1863;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:50;XOR	%EAX,%EAX;
0x1865;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:50;NOPL	(%RAX);
0x1868;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;MOVSS	(%RCX),%XMM0;  (8) 
0x186c;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;DIVSS	(%RDX,%RAX,4),%XMM0;  (8) 
0x1871;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;MOV	%RAX,%R12;  (8) 
0x1874;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;ADD	%R8,%RCX;  (8) 
0x1877;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;ADDSS	(%RSI,%RAX,4),%XMM0;  (8) 
0x187c;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;MOVSS	%XMM0,(%RSI,%RAX,4);  (8) 
0x1881;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;ADD	$0x1,%RAX;  (8) 
0x1885;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;CMP	%R14,%R12;  (8) 
0x1888;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;JNE	1868 <baseline+0x218>;  (8) 
0x188a;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;JMP	1840 <baseline+0x1f0>;
