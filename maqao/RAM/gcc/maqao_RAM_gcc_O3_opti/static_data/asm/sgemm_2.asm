address;source_location;insn;indent
0x12e1;:0;CALL	1130 <.plt.sec@start+0x70>;
0x12e6;:0;CVTSI2SS	%EAX,%XMM0;
0x12ea;:0;MOV	-0x4(%RBP),%EAX;
0x12ed;:0;CLTQ;
0x12ef;:0;LEA	(,%RAX,4),%RDX;
0x12f7;:0;MOV	-0x20(%RBP),%RAX;
0x12fb;:0;ADD	%RDX,%RAX;
0x12fe;:0;MOVSS	0x1d6e(%RIP),%XMM1;
0x1306;:0;DIVSS	%XMM1,%XMM0;
0x130a;:0;MOVSS	%XMM0,(%RAX);
0x130e;:0;ADDL	$0x1,-0x4(%RBP);
0x1312;:0;MOV	-0x4(%RBP),%EAX;
0x1315;:0;CMP	-0x14(%RBP),%EAX;
0x1318;:0;JL	12e1 <init_array+0x1c>;
