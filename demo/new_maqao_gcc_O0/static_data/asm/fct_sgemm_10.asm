address;source_location;insn;indent
0x15d5;:0;ENDBR64;
0x15d9;:0;PUSH	%RBP;
0x15da;:0;MOV	%RSP,%RBP;
0x15dd;:0;MOV	%EDI,-0x14(%RBP);
0x15e0;:0;MOV	%RSI,-0x20(%RBP);
0x15e4;:0;MOV	%RDX,-0x28(%RBP);
0x15e8;:0;MOV	%RCX,-0x30(%RBP);
0x15ec;:0;MOV	-0x14(%RBP),%EAX;
0x15ef;:0;MOV	%EAX,%EDX;
0x15f1;:0;SUB	$0x1,%RDX;
0x15f5;:0;MOV	%RDX,-0x8(%RBP);
0x15f9;:0;MOV	%EAX,%EDX;
0x15fb;:0;MOV	%RDX,%R8;
0x15fe;:0;MOV	$0,%R9D;
0x1604;:0;MOVL	$0,-0x10(%RBP);
0x160b;:0;JMP	1696 <baseline+0xc1>;
0x1610;:0;MOVL	$0,-0xc(%RBP);(9) 
0x1617;:0;JMP	168a <baseline+0xb5>;(9) 
0x1619;:0;MOV	-0xc(%RBP),%EDX;  (8) 
0x161c;:0;MOV	%EAX,%ECX;  (8) 
0x161e;:0;IMUL	%RCX,%RDX;  (8) 
0x1622;:0;LEA	(,%RDX,4),%RCX;  (8) 
0x162a;:0;MOV	-0x30(%RBP),%RDX;  (8) 
0x162e;:0;ADD	%RDX,%RCX;  (8) 
0x1631;:0;MOV	-0x10(%RBP),%EDX;  (8) 
0x1634;:0;MOVSS	(%RCX,%RDX,4),%XMM0;  (8) 
0x1639;:0;MOV	-0xc(%RBP),%EDX;  (8) 
0x163c;:0;LEA	(,%RDX,4),%RCX;  (8) 
0x1644;:0;MOV	-0x28(%RBP),%RDX;  (8) 
0x1648;:0;ADD	%RCX,%RDX;  (8) 
0x164b;:0;MOVSS	(%RDX),%XMM1;  (8) 
0x164f;:0;DIVSS	%XMM1,%XMM0;  (8) 
0x1653;:0;MOVAPS	%XMM0,%XMM1;  (8) 
0x1656;:0;MOV	-0xc(%RBP),%EDX;  (8) 
0x1659;:0;LEA	(,%RDX,4),%RCX;  (8) 
0x1661;:0;MOV	-0x20(%RBP),%RDX;  (8) 
0x1665;:0;ADD	%RCX,%RDX;  (8) 
0x1668;:0;MOVSS	(%RDX),%XMM0;  (8) 
0x166c;:0;MOV	-0xc(%RBP),%EDX;  (8) 
0x166f;:0;LEA	(,%RDX,4),%RCX;  (8) 
0x1677;:0;MOV	-0x20(%RBP),%RDX;  (8) 
0x167b;:0;ADD	%RCX,%RDX;  (8) 
0x167e;:0;ADDSS	%XMM1,%XMM0;  (8) 
0x1682;:0;MOVSS	%XMM0,(%RDX);  (8) 
0x1686;:0;ADDL	$0x1,-0xc(%RBP);  (8) 
0x168a;:0;MOV	-0xc(%RBP),%EDX;  (8) 
0x168d;:0;CMP	-0x14(%RBP),%EDX;  (8) 
0x1690;:0;JB	1619 <baseline+0x44>;  (8) 
0x1692;:0;ADDL	$0x1,-0x10(%RBP);(9) 
0x1696;:0;MOV	-0x10(%RBP),%EDX;(9) 
0x1699;:0;CMP	-0x14(%RBP),%EDX;(9) 
0x169c;:0;JB	1610 <baseline+0x3b>;(9) 
0x16a2;:0;NOP;
0x16a3;:0;NOP;
0x16a4;:0;POP	%RBP;
0x16a5;:0;RET;
