address;source_location;insn;indent
0x1640;:0;CALL	1170 <.plt.sec@start+0x90>;
0x1645;:0;MOVSXD	%EAX,%R12;
0x1648;:0;CALL	1170 <.plt.sec@start+0x90>;
0x164d;:0;MOVL	$-0x50000000,0xc(%RSP);
0x1655;:0;CLTQ;
0x1657;:0;CMP	%RAX,%R12;
0x165a;:0;JBE	1664 <init._omp_fn.0+0x94>;
0x165c;:0;MOVL	$0x30000000,0xc(%RSP);
0x1664;:0;CALL	1170 <.plt.sec@start+0x90>;
0x1669;:0;VCVTSI2SS	%EAX,%XMM0,%XMM0;
0x166d;:0;LEA	0x4(%RBX),%RBX;
0x1671;:0;VMULSS	0xc(%RSP),%XMM0,%XMM0;
0x1677;:0;VMOVSS	%XMM0,-0x4(%RBX);
0x167c;:0;CALL	1170 <.plt.sec@start+0x90>;
0x1681;:0;VCVTSI2SS	%EAX,%XMM0,%XMM0;
0x1685;:0;VMULSS	0x1a93(%RIP),%XMM0,%XMM0;
0x168d;:0;VMOVSS	%XMM0,0x3a97c(%RBX);
0x1695;:0;CALL	1170 <.plt.sec@start+0x90>;
0x169a;:0;VCVTSI2SS	%EAX,%XMM0,%XMM0;
0x169e;:0;VMULSS	0xc(%RSP),%XMM0,%XMM0;
0x16a4;:0;VMOVSS	%XMM0,0x752fc(%RBX);
0x16ac;:0;CALL	1170 <.plt.sec@start+0x90>;
0x16b1;:0;VCVTSI2SS	%EAX,%XMM0,%XMM0;
0x16b5;:0;VMULSS	0x1a63(%RIP),%XMM0,%XMM0;
0x16bd;:0;VMOVSS	%XMM0,0xafc7c(%RBX);
0x16c5;:0;CALL	1170 <.plt.sec@start+0x90>;
0x16ca;:0;VCVTSI2SS	%EAX,%XMM0,%XMM0;
0x16ce;:0;VMULSS	0xc(%RSP),%XMM0,%XMM0;
0x16d4;:0;VMOVSS	%XMM0,0xea5fc(%RBX);
0x16dc;:0;CALL	1170 <.plt.sec@start+0x90>;
0x16e1;:0;VCVTSI2SS	%EAX,%XMM0,%XMM0;
0x16e5;:0;VMULSS	0x1a33(%RIP),%XMM0,%XMM0;
0x16ed;:0;VMOVSS	%XMM0,0x124f7c(%RBX);
0x16f5;:0;CMP	%RBP,%RBX;
0x16f8;:0;JNE	1640 <init._omp_fn.0+0x70>;