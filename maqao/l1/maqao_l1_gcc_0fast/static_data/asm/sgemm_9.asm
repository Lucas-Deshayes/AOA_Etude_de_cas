address;source_location;insn;indent
0x1750;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;CMPQ	$0x1e,-0x70(%RSP);
0x1756;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;SETA	%CL;
0x1759;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;CMPL	$0x2,-0x58(%RSP);
0x175e;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;SETA	%AL;
0x1761;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;TEST	%AL,%CL;
0x1763;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;JE	1870 <baseline+0x220>;
0x1769;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;MOV	-0x60(%RSP),%RAX;
0x176e;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:50;MOV	%R9,%RCX;
0x1771;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:50;ADD	%R9,%RAX;
0x1774;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:50;CMP	%RAX,%RSI;
0x1777;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:50;SETA	%R13B;
0x177b;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:50;CMP	%R9,-0x68(%RSP);
0x1780;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:50;SETB	%R12B;
0x1784;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:50;XOR	%EAX,%EAX;
0x1786;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:50;OR	%R12B,%R13B;
0x1789;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:50;JE	1870 <baseline+0x220>;
0x178f;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:50;NOP;
0x1790;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;MOVSS	(%RCX,%R11,1),%XMM1;  (10) 
0x1796;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;MOVUPS	(%RDX,%RAX,1),%XMM5;  (10) 
0x179a;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;MOVSS	(%RCX,%R8,2),%XMM3;  (10) 
0x17a0;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;MOVSS	(%RCX,%R8,1),%XMM0;  (10) 
0x17a6;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;MOVAPS	%XMM5,%XMM2;  (10) 
0x17a9;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;MOVSS	(%RCX),%XMM4;  (10) 
0x17ad;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;MOVUPS	(%RSI,%RAX,1),%XMM6;  (10) 
0x17b1;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;ADD	%RDI,%RCX;  (10) 
0x17b4;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;UNPCKLPS	%XMM1,%XMM3;  (10) 
0x17b7;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;RCPPS	%XMM5,%XMM1;  (10) 
0x17ba;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;UNPCKLPS	%XMM0,%XMM4;  (10) 
0x17bd;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;MOVAPS	%XMM4,%XMM0;  (10) 
0x17c0;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;MOVLHPS	%XMM3,%XMM0;  (10) 
0x17c3;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;MULPS	%XMM1,%XMM2;  (10) 
0x17c6;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;MULPS	%XMM1,%XMM2;  (10) 
0x17c9;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;ADDPS	%XMM1,%XMM1;  (10) 
0x17cc;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;SUBPS	%XMM2,%XMM1;  (10) 
0x17cf;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;MULPS	%XMM1,%XMM0;  (10) 
0x17d2;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;ADDPS	%XMM6,%XMM0;  (10) 
0x17d5;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;MOVUPS	%XMM0,(%RSI,%RAX,1);  (10) 
0x17d9;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;ADD	$0x10,%RAX;  (10) 
0x17dd;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;CMP	%R10,%RAX;  (10) 
0x17e0;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;JNE	1790 <baseline+0x140>;  (10) 
0x17e2;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;CMP	-0x54(%RSP),%EBX;
0x17e6;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;JE	1852 <baseline+0x202>;
0x17e8;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;MOV	-0x50(%RSP),%RCX;
0x17ed;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;MOV	%EBP,%EAX;
0x17ef;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;MOVSS	(%R15,%RAX,4),%XMM0;
0x17f5;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;DIVSS	(%RCX),%XMM0;
0x17f9;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;MOV	-0x48(%RSP),%RCX;
0x17fe;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;ADDSS	(%RCX),%XMM0;
0x1802;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;MOVSS	%XMM0,(%RCX);
0x1806;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;CMP	-0x28(%RSP),%EBX;
0x180a;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;JBE	1852 <baseline+0x202>;
0x180c;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;MOV	-0x40(%RSP),%RCX;
0x1811;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;MOVSS	(%RCX,%RAX,4),%XMM0;
0x1816;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;MOV	-0x38(%RSP),%RCX;
0x181b;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;DIVSS	(%RCX),%XMM0;
0x181f;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;MOV	-0x30(%RSP),%RCX;
0x1824;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;ADDSS	(%RCX),%XMM0;
0x1828;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;MOVSS	%XMM0,(%RCX);
0x182c;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;CMP	-0x24(%RSP),%EBX;
0x1830;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;JBE	1852 <baseline+0x202>;
0x1832;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;MOV	-0x20(%RSP),%RCX;
0x1837;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;MOVSS	(%RCX,%RAX,4),%XMM0;
0x183c;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;MOV	-0x18(%RSP),%RAX;
0x1841;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;DIVSS	(%RAX),%XMM0;
0x1845;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;MOV	-0x10(%RSP),%RAX;
0x184a;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;ADDSS	(%RAX),%XMM0;
0x184e;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;MOVSS	%XMM0,(%RAX);
0x1852;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:53;ADD	$0x1,%EBP;
0x1855;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:53;ADD	$0x4,%R9;
0x1859;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:53;CMP	%EBP,%EBX;
0x185b;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:53;JNE	1750 <baseline+0x100>;
0x1870;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:50;MOV	%R9,%RCX;
0x1873;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:50;XOR	%EAX,%EAX;
0x1875;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:50;NOPL	(%RAX);
0x1878;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;MOVSS	(%RCX),%XMM0;  (8) 
0x187c;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;DIVSS	(%RDX,%RAX,4),%XMM0;  (8) 
0x1881;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;MOV	%RAX,%R12;  (8) 
0x1884;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;ADD	%R8,%RCX;  (8) 
0x1887;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;ADDSS	(%RSI,%RAX,4),%XMM0;  (8) 
0x188c;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:55;MOVSS	%XMM0,(%RSI,%RAX,4);  (8) 
0x1891;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;ADD	$0x1,%RAX;  (8) 
0x1895;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;CMP	%R14,%R12;  (8) 
0x1898;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;JNE	1878 <baseline+0x228>;  (8) 
0x189a;/users/user4427/AOA_Etude_de_cas/demo/kernel.c:54;JMP	1852 <baseline+0x202>;
