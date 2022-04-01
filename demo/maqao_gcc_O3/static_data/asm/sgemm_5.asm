address;source_location;insn;indent
0x12e0;:0;CALL	1130 <.plt.sec@start+0x70>;
0x12e5;:0;PXOR	%XMM0,%XMM0;
0x12e9;:0;ADD	$0x4,%RBP;
0x12ed;:0;CVTSI2SS	%EAX,%XMM0;
0x12f1;:0;MULSS	0xd5b(%RIP),%XMM0;
0x12f9;:0;MOVSS	%XMM0,-0x4(%RBP);
0x12fe;:0;CMP	%RBP,%RBX;
0x1301;:0;JNE	12e0 <main+0x1a0>;
