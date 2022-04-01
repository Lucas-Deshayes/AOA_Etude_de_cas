address;source_location;insn;indent
0x1672;:0;ENDBR64;
0x1676;:0;PUSH	%RBP;
0x1677;:0;MOV	%RSP,%RBP;
0x167a;:0;MOV	%EDI,-0x14(%RBP);
0x167d;:0;MOV	%RSI,-0x20(%RBP);
0x1681;:0;MOV	%RDX,-0x28(%RBP);
0x1685;:0;MOV	%RCX,-0x30(%RBP);
0x1689;:0;MOV	-0x14(%RBP),%EAX;
0x168c;:0;MOV	%EAX,%EDX;
0x168e;:0;SUB	$0x1,%RDX;
0x1692;:0;MOV	%RDX,-0x8(%RBP);
0x1696;:0;MOV	%EAX,%EDX;
0x1698;:0;MOV	%RDX,%R8;
0x169b;:0;MOV	$0,%R9D;
0x16a1;:0;MOVL	$0,-0x10(%RBP);
0x16a8;:0;JMP	1733 <baseline+0xc1>;
0x16ad;:0;MOVL	$0,-0xc(%RBP);(9) 
0x16b4;:0;JMP	1727 <baseline+0xb5>;(9) 
0x16b6;:0;MOV	-0xc(%RBP),%EDX;  (8) 
0x16b9;:0;MOV	%EAX,%ECX;  (8) 
0x16bb;:0;IMUL	%RCX,%RDX;  (8) 
0x16bf;:0;LEA	(,%RDX,4),%RCX;  (8) 
0x16c7;:0;MOV	-0x30(%RBP),%RDX;  (8) 
0x16cb;:0;ADD	%RDX,%RCX;  (8) 
0x16ce;:0;MOV	-0x10(%RBP),%EDX;  (8) 
0x16d1;:0;MOVSS	(%RCX,%RDX,4),%XMM0;  (8) 
0x16d6;:0;MOV	-0xc(%RBP),%EDX;  (8) 
0x16d9;:0;LEA	(,%RDX,4),%RCX;  (8) 
0x16e1;:0;MOV	-0x28(%RBP),%RDX;  (8) 
0x16e5;:0;ADD	%RCX,%RDX;  (8) 
0x16e8;:0;MOVSS	(%RDX),%XMM1;  (8) 
0x16ec;:0;DIVSS	%XMM1,%XMM0;  (8) 
0x16f0;:0;MOVAPS	%XMM0,%XMM1;  (8) 
0x16f3;:0;MOV	-0xc(%RBP),%EDX;  (8) 
0x16f6;:0;LEA	(,%RDX,4),%RCX;  (8) 
0x16fe;:0;MOV	-0x20(%RBP),%RDX;  (8) 
0x1702;:0;ADD	%RCX,%RDX;  (8) 
0x1705;:0;MOVSS	(%RDX),%XMM0;  (8) 
0x1709;:0;MOV	-0xc(%RBP),%EDX;  (8) 
0x170c;:0;LEA	(,%RDX,4),%RCX;  (8) 
0x1714;:0;MOV	-0x20(%RBP),%RDX;  (8) 
0x1718;:0;ADD	%RCX,%RDX;  (8) 
0x171b;:0;ADDSS	%XMM1,%XMM0;  (8) 
0x171f;:0;MOVSS	%XMM0,(%RDX);  (8) 
0x1723;:0;ADDL	$0x1,-0xc(%RBP);  (8) 
0x1727;:0;MOV	-0xc(%RBP),%EDX;  (8) 
0x172a;:0;CMP	-0x14(%RBP),%EDX;  (8) 
0x172d;:0;JB	16b6 <baseline+0x44>;  (8) 
0x172f;:0;ADDL	$0x1,-0x10(%RBP);(9) 
0x1733;:0;MOV	-0x10(%RBP),%EDX;(9) 
0x1736;:0;CMP	-0x14(%RBP),%EDX;(9) 
0x1739;:0;JB	16ad <baseline+0x3b>;(9) 
0x173f;:0;NOP;
0x1740;:0;NOP;
0x1741;:0;POP	%RBP;
0x1742;:0;RET;
