address;source_location;insn;indent
0x12e0;:0;CALL	1130 <.plt.sec@start+0x70>;
0x12e5;:0;VCVTSI2SS	%EAX,%XMM0,%XMM0;
0x12e9;:0;LEA	0x4(%RBX),%RBX;
0x12ed;:0;VMULSS	0xd5f(%RIP),%XMM0,%XMM0;
0x12f5;:0;VMOVSS	%XMM0,-0x4(%RBX);
0x12fa;:0;CMP	%RBX,%R12;
0x12fd;:0;JNE	12e0 <main+0x1a0>;
