address;source_location;insn;indent
0x1229;:0;ENDBR64;
0x122d;:0;PUSH	%RBP;
0x122e;:0;MOV	%RSP,%RBP;
0x1231;:0;PUSH	%RBX;
0x1232;:0;SUB	$0x28,%RSP;
0x1236;:0;MOV	%EDI,-0x24(%RBP);
0x1239;:0;MOV	%RSI,-0x30(%RBP);
0x123d;:0;MOV	-0x24(%RBP),%EBX;
0x1240;:0;MOVSXD	%EBX,%RAX;
0x1243;:0;SUB	$0x1,%RAX;
0x1247;:0;MOV	%RAX,-0x18(%RBP);
0x124b;:0;MOVSXD	%EBX,%RAX;
0x124e;:0;MOV	%RAX,%R8;
0x1251;:0;MOV	$0,%R9D;
0x1257;:0;MOVL	$0,-0x1c(%RBP);
0x125e;:0;JMP	12b4 <init_matrice+0x8b>;
0x1260;:0;MOVL	$0,-0x20(%RBP);(1) 
0x1267;:0;JMP	12a8 <init_matrice+0x7f>;(1) 
0x1269;:0;CALL	1130 <.plt.sec@start+0x70>;  (0) 
0x126e;:0;CVTSI2SS	%EAX,%XMM0;  (0) 
0x1272;:0;MOV	-0x1c(%RBP),%EAX;  (0) 
0x1275;:0;MOVSXD	%EAX,%RDX;  (0) 
0x1278;:0;MOVSXD	%EBX,%RAX;  (0) 
0x127b;:0;IMUL	%RDX,%RAX;  (0) 
0x127f;:0;LEA	(,%RAX,4),%RDX;  (0) 
0x1287;:0;MOV	-0x30(%RBP),%RAX;  (0) 
0x128b;:0;ADD	%RAX,%RDX;  (0) 
0x128e;:0;MOVSS	0xdc6(%RIP),%XMM1;  (0) 
0x1296;:0;DIVSS	%XMM1,%XMM0;  (0) 
0x129a;:0;MOV	-0x20(%RBP),%EAX;  (0) 
0x129d;:0;CLTQ;  (0) 
0x129f;:0;MOVSS	%XMM0,(%RDX,%RAX,4);  (0) 
0x12a4;:0;ADDL	$0x1,-0x20(%RBP);  (0) 
0x12a8;:0;MOV	-0x20(%RBP),%EAX;  (0) 
0x12ab;:0;CMP	-0x24(%RBP),%EAX;  (0) 
0x12ae;:0;JL	1269 <init_matrice+0x40>;  (0) 
0x12b0;:0;ADDL	$0x1,-0x1c(%RBP);(1) 
0x12b4;:0;MOV	-0x1c(%RBP),%EAX;(1) 
0x12b7;:0;CMP	-0x24(%RBP),%EAX;(1) 
0x12ba;:0;JL	1260 <init_matrice+0x37>;(1) 
0x12bc;:0;NOP;
0x12bd;:0;NOP;
0x12be;:0;ADD	$0x28,%RSP;
0x12c2;:0;POP	%RBX;
0x12c3;:0;POP	%RBP;
0x12c4;:0;RET;
