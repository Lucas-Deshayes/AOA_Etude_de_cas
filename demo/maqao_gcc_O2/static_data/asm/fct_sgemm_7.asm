address;source_location;insn;indent
0x1570;:0;ENDBR64;
0x1574;:0;MOV	%EDI,%R8D;
0x1577;:0;TEST	%EDI,%EDI;
0x1579;:0;JE	15c3 <baseline+0x53>;
0x157b;:0;LEA	-0x1(%RDI),%R9D;
0x157f;:0;MOV	%RCX,%R10;
0x1582;:0;SAL	$0x2,%R8;
0x1586;:0;LEA	0x4(%RCX,%R9,4),%R11;
0x158b;:0;NOPL	(%RAX,%RAX,1);
0x1590;:0;MOV	%R10,%RCX;(8) 
0x1593;:0;XOR	%EAX,%EAX;(8) 
0x1595;:0;NOPL	(%RAX);(8) 
0x1598;:0;MOVSS	(%RCX),%XMM0;  (7) 
0x159c;:0;DIVSS	(%RDX,%RAX,4),%XMM0;  (7) 
0x15a1;:0;MOV	%RAX,%RDI;  (7) 
0x15a4;:0;ADD	%R8,%RCX;  (7) 
0x15a7;:0;ADDSS	(%RSI,%RAX,4),%XMM0;  (7) 
0x15ac;:0;MOVSS	%XMM0,(%RSI,%RAX,4);  (7) 
0x15b1;:0;ADD	$0x1,%RAX;  (7) 
0x15b5;:0;CMP	%RDI,%R9;  (7) 
0x15b8;:0;JNE	1598 <baseline+0x28>;  (7) 
0x15ba;:0;ADD	$0x4,%R10;(8) 
0x15be;:0;CMP	%R10,%R11;(8) 
0x15c1;:0;JNE	1590 <baseline+0x20>;(8) 
0x15c3;:0;RET;
0x15c4;:0;NOPW	%CS:(%RAX,%RAX,1);
0x15ce;:0;XCHG	%AX,%AX;
