address;source_location;insn;indent
0x14e0;:0;ENDBR64;
0x14e4;:0;TEST	%RSI,%RSI;
0x14e7;:0;JE	15d0 <init+0xf0>;
0x14ed;:0;PUSH	%R12;
0x14ef;:0;LEA	(%RSI,%RSI,2),%RAX;
0x14f3;:0;PUSH	%RBP;
0x14f4;:0;LEA	(%RDI,%RAX,8),%RBP;
0x14f8;:0;PUSH	%RBX;
0x14f9;:0;LEA	(%RDI),%RBX;
0x14fc;:0;LEA	-0x10(%RSP),%RSP;
0x1501;:0;NOPW	%CS:(%RAX,%RAX,1);
0x150c;:0;NOPL	(%RAX);
0x1510;:0;CALL	1130 <.plt.sec@start+0x70>;(1) 
0x1515;:0;MOVSXD	%EAX,%R12;(1) 
0x1518;:0;CALL	1130 <.plt.sec@start+0x70>;(1) 
0x151d;:0;MOVL	$0x30000000,0xc(%RSP);(1) 
0x1525;:0;CLTQ;(1) 
0x1527;:0;CMP	%RAX,%R12;(1) 
0x152a;:0;JA	1534 <init+0x54>;(1) 
0x152c;:0;MOVL	$-0x50000000,0xc(%RSP);(1) 
0x1534;:0;CALL	1130 <.plt.sec@start+0x70>;(1) 
0x1539;:0;VCVTSI2SS	%EAX,%XMM0,%XMM0;(1) 
0x153d;:0;LEA	0x18(%RBX),%RBX;(1) 
0x1541;:0;VMULSS	0xc(%RSP),%XMM0,%XMM0;(1) 
0x1547;:0;VMOVSS	%XMM0,-0x18(%RBX);(1) 
0x154c;:0;CALL	1130 <.plt.sec@start+0x70>;(1) 
0x1551;:0;VCVTSI2SS	%EAX,%XMM0,%XMM0;(1) 
0x1555;:0;VMULSS	0xbc3(%RIP),%XMM0,%XMM0;(1) 
0x155d;:0;VMOVSS	%XMM0,-0x14(%RBX);(1) 
0x1562;:0;CALL	1130 <.plt.sec@start+0x70>;(1) 
0x1567;:0;VCVTSI2SS	%EAX,%XMM0,%XMM0;(1) 
0x156b;:0;VMULSS	0xc(%RSP),%XMM0,%XMM0;(1) 
0x1571;:0;VMOVSS	%XMM0,-0x10(%RBX);(1) 
0x1576;:0;CALL	1130 <.plt.sec@start+0x70>;(1) 
0x157b;:0;VCVTSI2SS	%EAX,%XMM0,%XMM0;(1) 
0x157f;:0;VMULSS	0xb99(%RIP),%XMM0,%XMM0;(1) 
0x1587;:0;VMOVSS	%XMM0,-0xc(%RBX);(1) 
0x158c;:0;CALL	1130 <.plt.sec@start+0x70>;(1) 
0x1591;:0;VCVTSI2SS	%EAX,%XMM0,%XMM0;(1) 
0x1595;:0;VMULSS	0xc(%RSP),%XMM0,%XMM0;(1) 
0x159b;:0;VMOVSS	%XMM0,-0x8(%RBX);(1) 
0x15a0;:0;CALL	1130 <.plt.sec@start+0x70>;(1) 
0x15a5;:0;VCVTSI2SS	%EAX,%XMM0,%XMM0;(1) 
0x15a9;:0;VMULSS	0xb6f(%RIP),%XMM0,%XMM0;(1) 
0x15b1;:0;VMOVSS	%XMM0,-0x4(%RBX);(1) 
0x15b6;:0;CMP	%RBP,%RBX;(1) 
0x15b9;:0;JNE	1510 <init+0x30>;(1) 
0x15bf;:0;LEA	0x10(%RSP),%RSP;
0x15c4;:0;POP	%RBX;
0x15c5;:0;POP	%RBP;
0x15c6;:0;POP	%R12;
0x15c8;:0;RET;
0x15c9;:0;NOPL	(%RAX);
0x15d0;:0;RET;
0x15d1;:0;NOPW	%CS:(%RAX,%RAX,1);
0x15dc;:0;NOPL	(%RAX);