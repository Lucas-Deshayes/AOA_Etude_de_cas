address;source_location;insn;indent
0x16b6;:0;MOV	-0xc(%RBP),%EDX;
0x16b9;:0;MOV	%EAX,%ECX;
0x16bb;:0;IMUL	%RCX,%RDX;
0x16bf;:0;LEA	(,%RDX,4),%RCX;
0x16c7;:0;MOV	-0x30(%RBP),%RDX;
0x16cb;:0;ADD	%RDX,%RCX;
0x16ce;:0;MOV	-0x10(%RBP),%EDX;
0x16d1;:0;MOVSS	(%RCX,%RDX,4),%XMM0;
0x16d6;:0;MOV	-0xc(%RBP),%EDX;
0x16d9;:0;LEA	(,%RDX,4),%RCX;
0x16e1;:0;MOV	-0x28(%RBP),%RDX;
0x16e5;:0;ADD	%RCX,%RDX;
0x16e8;:0;MOVSS	(%RDX),%XMM1;
0x16ec;:0;DIVSS	%XMM1,%XMM0;
0x16f0;:0;MOVAPS	%XMM0,%XMM1;
0x16f3;:0;MOV	-0xc(%RBP),%EDX;
0x16f6;:0;LEA	(,%RDX,4),%RCX;
0x16fe;:0;MOV	-0x20(%RBP),%RDX;
0x1702;:0;ADD	%RCX,%RDX;
0x1705;:0;MOVSS	(%RDX),%XMM0;
0x1709;:0;MOV	-0xc(%RBP),%EDX;
0x170c;:0;LEA	(,%RDX,4),%RCX;
0x1714;:0;MOV	-0x20(%RBP),%RDX;
0x1718;:0;ADD	%RCX,%RDX;
0x171b;:0;ADDSS	%XMM1,%XMM0;
0x171f;:0;MOVSS	%XMM0,(%RDX);
0x1723;:0;ADDL	$0x1,-0xc(%RBP);
0x1727;:0;MOV	-0xc(%RBP),%EDX;
0x172a;:0;CMP	-0x14(%RBP),%EDX;
0x172d;:0;JB	16b6 <baseline+0x44>;
