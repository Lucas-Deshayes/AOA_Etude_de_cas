address;source_location;insn;indent
0x1570;:0;ENDBR64;
0x1574;:0;MOV	%EDI,%EAX;
0x1576;:0;TEST	%EAX,%EAX;
0x1578;:0;JE	17ac <baseline+0x23c>;
0x157e;:0;MOV	%RCX,%R9;
0x1581;:0;LEA	-0x1(%RAX),%RCX;
0x1585;:0;PUSH	%R15;
0x1587;:0;MOV	%EAX,%R10D;
0x158a;:0;MOV	%RCX,%RDI;
0x158d;:0;PUSH	%R14;
0x158f;:0;LEA	(,%RAX,4),%R8;
0x1597;:0;MOV	%EAX,%R14D;
0x159a;:0;PUSH	%R13;
0x159c;:0;IMUL	%R8,%RDI;
0x15a0;:0;AND	$-0x4,%R14D;
0x15a4;:0;LEA	(%RAX,%RAX,2),%R11;
0x15a8;:0;PUSH	%R12;
0x15aa;:0;SHR	$0x2,%R10D;
0x15ae;:0;SAL	$0x2,%R11;
0x15b2;:0;PUSH	%RBP;
0x15b3;:0;SAL	$0x4,%R10;
0x15b7;:0;XOR	%EBP,%EBP;
0x15b9;:0;PUSH	%RBX;
0x15ba;:0;MOV	%RAX,%RBX;
0x15bd;:0;MOV	%RDI,-0x60(%RSP);
0x15c2;:0;LEA	(%RSI,%RCX,4),%RDI;
0x15c6;:0;MOV	%RDI,-0x68(%RSP);
0x15cb;:0;MOV	%RAX,%RDI;
0x15ce;:0;MOV	%R14D,%EAX;
0x15d1;:0;MOV	%RAX,%R15;
0x15d4;:0;SAL	$0x2,%RAX;
0x15d8;:0;MOV	%R14D,-0x54(%RSP);
0x15dd;:0;IMUL	%R8,%R15;
0x15e1;:0;LEA	(%RDX,%RAX,1),%RCX;
0x15e5;:0;ADD	%RSI,%RAX;
0x15e8;:0;SAL	$0x4,%RDI;
0x15ec;:0;MOV	%RAX,-0x48(%RSP);
0x15f1;:0;LEA	0x1(%R14),%EAX;
0x15f5;:0;MOV	%RCX,-0x50(%RSP);
0x15fa;:0;MOV	%RAX,%RCX;
0x15fd;:0;IMUL	%R8,%RCX;
0x1601;:0;MOV	%EAX,-0x28(%RSP);
0x1605;:0;SAL	$0x2,%RAX;
0x1609;:0;ADD	%R9,%R15;
0x160c;:0;ADD	%R9,%RCX;
0x160f;:0;MOV	%RCX,-0x40(%RSP);
0x1614;:0;LEA	(%RDX,%RAX,1),%RCX;
0x1618;:0;ADD	%RSI,%RAX;
0x161b;:0;MOV	%RCX,-0x38(%RSP);
0x1620;:0;MOV	%R8,%RCX;
0x1623;:0;MOV	%RAX,-0x30(%RSP);
0x1628;:0;LEA	0x2(%R14),%EAX;
0x162c;:0;LEA	-0x1(%RBX),%R14D;
0x1630;:0;IMUL	%RAX,%RCX;
0x1634;:0;MOV	%EAX,-0x24(%RSP);
0x1638;:0;SAL	$0x2,%RAX;
0x163c;:0;MOV	%R14D,-0x58(%RSP);
0x1641;:0;ADD	%R9,%RCX;
0x1644;:0;MOV	%RCX,-0x20(%RSP);
0x1649;:0;LEA	(%RDX,%RAX,1),%RCX;
0x164d;:0;ADD	%RSI,%RAX;
0x1650;:0;MOV	%RAX,-0x10(%RSP);
0x1655;:0;LEA	0xf(%RDX),%RAX;
0x1659;:0;SUB	%RSI,%RAX;
0x165c;:0;MOV	%RCX,-0x18(%RSP);
0x1661;:0;MOV	%RAX,-0x70(%RSP);
0x1666;:0;NOPW	%CS:(%RAX,%RAX,1);
0x1670;:0;CMPQ	$0x1e,-0x70(%RSP);(8) 
0x1676;:0;SETA	%CL;(8) 
0x1679;:0;CMPL	$0x2,-0x58(%RSP);(8) 
0x167e;:0;SETA	%AL;(8) 
0x1681;:0;TEST	%AL,%CL;(8) 
0x1683;:0;JE	1780 <baseline+0x210>;(8) 
0x1689;:0;MOV	-0x60(%RSP),%RAX;(8) 
0x168e;:0;MOV	%R9,%RCX;(8) 
0x1691;:0;ADD	%R9,%RAX;(8) 
0x1694;:0;CMP	%RAX,%RSI;(8) 
0x1697;:0;SETA	%R13B;(8) 
0x169b;:0;CMP	%R9,-0x68(%RSP);(8) 
0x16a0;:0;SETB	%R12B;(8) 
0x16a4;:0;XOR	%EAX,%EAX;(8) 
0x16a6;:0;OR	%R12B,%R13B;(8) 
0x16a9;:0;JE	1780 <baseline+0x210>;(8) 
0x16af;:0;NOP;(8) 
0x16b0;:0;MOVSS	(%RCX,%R8,1),%XMM0;  (9) 
0x16b6;:0;MOVSS	(%RCX),%XMM3;  (9) 
0x16ba;:0;MOVSS	(%RCX,%R11,1),%XMM1;  (9) 
0x16c0;:0;MOVSS	(%RCX,%R8,2),%XMM2;  (9) 
0x16c6;:0;ADD	%RDI,%RCX;  (9) 
0x16c9;:0;UNPCKLPS	%XMM0,%XMM3;  (9) 
0x16cc;:0;MOVUPS	(%RDX,%RAX,1),%XMM4;  (9) 
0x16d0;:0;MOVUPS	(%RSI,%RAX,1),%XMM5;  (9) 
0x16d4;:0;UNPCKLPS	%XMM1,%XMM2;  (9) 
0x16d7;:0;MOVAPS	%XMM3,%XMM0;  (9) 
0x16da;:0;MOVLHPS	%XMM2,%XMM0;  (9) 
0x16dd;:0;DIVPS	%XMM4,%XMM0;  (9) 
0x16e0;:0;ADDPS	%XMM5,%XMM0;  (9) 
0x16e3;:0;MOVUPS	%XMM0,(%RSI,%RAX,1);  (9) 
0x16e7;:0;ADD	$0x10,%RAX;  (9) 
0x16eb;:0;CMP	%R10,%RAX;  (9) 
0x16ee;:0;JNE	16b0 <baseline+0x140>;  (9) 
0x16f0;:0;CMP	-0x54(%RSP),%EBX;(8) 
0x16f4;:0;JE	1760 <baseline+0x1f0>;(8) 
0x16f6;:0;MOV	-0x50(%RSP),%RCX;(8) 
0x16fb;:0;MOV	%EBP,%EAX;(8) 
0x16fd;:0;MOVSS	(%R15,%RAX,4),%XMM0;(8) 
0x1703;:0;DIVSS	(%RCX),%XMM0;(8) 
0x1707;:0;MOV	-0x48(%RSP),%RCX;(8) 
0x170c;:0;ADDSS	(%RCX),%XMM0;(8) 
0x1710;:0;MOVSS	%XMM0,(%RCX);(8) 
0x1714;:0;CMP	-0x28(%RSP),%EBX;(8) 
0x1718;:0;JBE	1760 <baseline+0x1f0>;(8) 
0x171a;:0;MOV	-0x40(%RSP),%RCX;(8) 
0x171f;:0;MOVSS	(%RCX,%RAX,4),%XMM0;(8) 
0x1724;:0;MOV	-0x38(%RSP),%RCX;(8) 
0x1729;:0;DIVSS	(%RCX),%XMM0;(8) 
0x172d;:0;MOV	-0x30(%RSP),%RCX;(8) 
0x1732;:0;ADDSS	(%RCX),%XMM0;(8) 
0x1736;:0;MOVSS	%XMM0,(%RCX);(8) 
0x173a;:0;CMP	-0x24(%RSP),%EBX;(8) 
0x173e;:0;JBE	1760 <baseline+0x1f0>;(8) 
0x1740;:0;MOV	-0x20(%RSP),%RCX;(8) 
0x1745;:0;MOVSS	(%RCX,%RAX,4),%XMM0;(8) 
0x174a;:0;MOV	-0x18(%RSP),%RAX;(8) 
0x174f;:0;DIVSS	(%RAX),%XMM0;(8) 
0x1753;:0;MOV	-0x10(%RSP),%RAX;(8) 
0x1758;:0;ADDSS	(%RAX),%XMM0;(8) 
0x175c;:0;MOVSS	%XMM0,(%RAX);(8) 
0x1760;:0;ADD	$0x1,%EBP;(8) 
0x1763;:0;ADD	$0x4,%R9;(8) 
0x1767;:0;CMP	%EBP,%EBX;(8) 
0x1769;:0;JNE	1670 <baseline+0x100>;(8) 
0x176f;:0;POP	%RBX;
0x1770;:0;POP	%RBP;
0x1771;:0;POP	%R12;
0x1773;:0;POP	%R13;
0x1775;:0;POP	%R14;
0x1777;:0;POP	%R15;
0x1779;:0;RET;
0x177a;:0;NOPW	(%RAX,%RAX,1);
0x1780;:0;MOV	%R9,%RCX;(8) 
0x1783;:0;XOR	%EAX,%EAX;(8) 
0x1785;:0;NOPL	(%RAX);(8) 
0x1788;:0;MOVSS	(%RCX),%XMM0;  (7) 
0x178c;:0;DIVSS	(%RDX,%RAX,4),%XMM0;  (7) 
0x1791;:0;MOV	%RAX,%R12;  (7) 
0x1794;:0;ADD	%R8,%RCX;  (7) 
0x1797;:0;ADDSS	(%RSI,%RAX,4),%XMM0;  (7) 
0x179c;:0;MOVSS	%XMM0,(%RSI,%RAX,4);  (7) 
0x17a1;:0;ADD	$0x1,%RAX;  (7) 
0x17a5;:0;CMP	%R14,%R12;  (7) 
0x17a8;:0;JNE	1788 <baseline+0x218>;  (7) 
0x17aa;:0;JMP	1760 <baseline+0x1f0>;(8) 
0x17ac;:0;RET;
0x17ad;:0;NOPL	(%RAX);
