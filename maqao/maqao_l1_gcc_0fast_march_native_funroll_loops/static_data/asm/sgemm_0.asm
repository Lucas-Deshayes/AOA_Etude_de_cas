address;source_location;insn;indent
0x1269;:0;CALL	1130 <.plt.sec@start+0x70>;
0x126e;:0;CVTSI2SS	%EAX,%XMM0;
0x1272;:0;MOV	-0x1c(%RBP),%EAX;
0x1275;:0;MOVSXD	%EAX,%RDX;
0x1278;:0;MOVSXD	%EBX,%RAX;
0x127b;:0;IMUL	%RDX,%RAX;
0x127f;:0;LEA	(,%RAX,4),%RDX;
0x1287;:0;MOV	-0x30(%RBP),%RAX;
0x128b;:0;ADD	%RAX,%RDX;
0x128e;:0;MOVSS	0x1dde(%RIP),%XMM1;
0x1296;:0;DIVSS	%XMM1,%XMM0;
0x129a;:0;MOV	-0x20(%RBP),%EAX;
0x129d;:0;CLTQ;
0x129f;:0;MOVSS	%XMM0,(%RDX,%RAX,4);
0x12a4;:0;ADDL	$0x1,-0x20(%RBP);
0x12a8;:0;MOV	-0x20(%RBP),%EAX;
0x12ab;:0;CMP	-0x24(%RBP),%EAX;
0x12ae;:0;JL	1269 <init_matrice+0x40>;
