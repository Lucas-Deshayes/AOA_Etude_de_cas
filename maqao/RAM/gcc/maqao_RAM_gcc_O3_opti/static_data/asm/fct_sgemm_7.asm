address;source_location;insn;indent
0x12c5;:0;ENDBR64;
0x12c9;:0;PUSH	%RBP;
0x12ca;:0;MOV	%RSP,%RBP;
0x12cd;:0;SUB	$0x20,%RSP;
0x12d1;:0;MOV	%EDI,-0x14(%RBP);
0x12d4;:0;MOV	%RSI,-0x20(%RBP);
0x12d8;:0;MOVL	$0,-0x4(%RBP);
0x12df;:0;JMP	1312 <init_array+0x4d>;
0x12e1;:0;CALL	1130 <.plt.sec@start+0x70>;(2) 
0x12e6;:0;CVTSI2SS	%EAX,%XMM0;(2) 
0x12ea;:0;MOV	-0x4(%RBP),%EAX;(2) 
0x12ed;:0;CLTQ;(2) 
0x12ef;:0;LEA	(,%RAX,4),%RDX;(2) 
0x12f7;:0;MOV	-0x20(%RBP),%RAX;(2) 
0x12fb;:0;ADD	%RDX,%RAX;(2) 
0x12fe;:0;MOVSS	0x1d6e(%RIP),%XMM1;(2) 
0x1306;:0;DIVSS	%XMM1,%XMM0;(2) 
0x130a;:0;MOVSS	%XMM0,(%RAX);(2) 
0x130e;:0;ADDL	$0x1,-0x4(%RBP);(2) 
0x1312;:0;MOV	-0x4(%RBP),%EAX;(2) 
0x1315;:0;CMP	-0x14(%RBP),%EAX;(2) 
0x1318;:0;JL	12e1 <init_array+0x1c>;(2) 
0x131a;:0;NOP;
0x131b;:0;NOP;
0x131c;:0;LEAVE;
0x131d;:0;RET;
