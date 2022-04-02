address;source_location;insn;indent
0x401730;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:39;PUSH	%RBP;
0x401731;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:39;MOV	%RSP,%RBP;
0x401734;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:39;PUSH	%R15;
0x401736;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:39;PUSH	%R14;
0x401738;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:39;PUSH	%R13;
0x40173a;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:39;PUSH	%R12;
0x40173c;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:39;PUSH	%RBX;
0x40173d;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:39;SUB	$0x48,%RSP;
0x401741;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:39;MOV	%RSI,%RBX;
0x401744;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:41;CMP	$0x4,%EDI;
0x401747;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:41;JNE	401adb <main+0x3ab>;
0x40174d;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:49;MOV	0x8(%RBX),%RDI;
0x401751;/usr/include/stdlib.h:363;XOR	%ESI,%ESI;
0x401753;/usr/include/stdlib.h:363;MOV	$0xa,%EDX;
0x401758;/usr/include/stdlib.h:363;CALL	401080 <strtol@plt>;
0x40175d;/usr/include/stdlib.h:363;MOV	%RAX,%R13;
0x401760;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:52;MOV	0x10(%RBX),%RDI;
0x401764;/usr/include/stdlib.h:363;XOR	%ESI,%ESI;
0x401766;/usr/include/stdlib.h:363;MOV	$0xa,%EDX;
0x40176b;/usr/include/stdlib.h:363;CALL	401080 <strtol@plt>;
0x401770;/usr/include/stdlib.h:0;MOV	%RAX,-0x40(%RBP);
0x401774;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:55;MOV	0x18(%RBX),%RDI;
0x401778;/usr/include/stdlib.h:363;XOR	%ESI,%ESI;
0x40177a;/usr/include/stdlib.h:363;MOV	$0xa,%EDX;
0x40177f;/usr/include/stdlib.h:363;CALL	401080 <strtol@plt>;
0x401784;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%R13D,%R14D;
0x401787;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;LEA	(,%R14,4),%RCX;
0x40178f;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%RCX,-0x58(%RBP);
0x401793;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%R13D,%ECX;
0x401796;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;IMUL	%ECX,%ECX;
0x401799;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;SAL	$0x2,%RCX;
0x40179d;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%RCX,-0x68(%RBP);
0x4017a1;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;VCVTSI2SD	%R14,%XMM0,%XMM0;
0x4017a6;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;VMULSD	%XMM0,%XMM0,%XMM0;
0x4017aa;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%RAX,-0x48(%RBP);
0x4017ae;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;VCVTSI2SD	%EAX,%XMM1,%XMM1;
0x4017b2;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;VMULSD	%XMM1,%XMM0,%XMM0;
0x4017b6;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;VMOVSD	0x8c2(%RIP),%XMM1;
0x4017be;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;VDIVSD	%XMM0,%XMM1,%XMM0;
0x4017c2;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;VMOVSD	%XMM0,-0x60(%RBP);
0x4017c7;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;TEST	%R13D,%R13D;
0x4017ca;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:57;JLE	4019bc <main+0x28c>;
0x4017d0;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;XOR	%EAX,%EAX;
0x4017d2;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%R13,-0x50(%RBP);
0x4017d6;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;JMP	401841 <main+0x111>;
0x4017d8;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;NOPL	(%RAX,%RAX,1);
0x4017e0;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:83;XOR	%EAX,%EAX;(12) 
0x4017e2;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:83;CALL	401b00 <rdtsc>;(12) 
0x4017e7;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;SUB	-0x38(%RBP),%RAX;(12) 
0x4017eb;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;VMOVQ	%RAX,%XMM0;(12) 
0x4017f0;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;VPUNPCKLDQ	0x898(%RIP),%XMM0,%XMM0;(12) 
0x4017f8;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;VSUBPD	0x8a0(%RIP),%XMM0,%XMM0;(12) 
0x401800;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;VPERMILPD	$0x1,%XMM0,%XMM1;(12) 
0x401806;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;VADDSD	%XMM0,%XMM1,%XMM0;(12) 
0x40180a;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;VMULSD	-0x60(%RBP),%XMM0,%XMM0;(12) 
0x40180f;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;MOV	$0x4020ed,%EDI;(12) 
0x401814;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;MOV	$0x1,%AL;(12) 
0x401816;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;CALL	401050 <printf@plt>;(12) 
0x40181b;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:89;MOV	%R12,%RDI;(12) 
0x40181e;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:89;CALL	401030 <free@plt>;(12) 
0x401823;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:90;MOV	%R13,%RDI;(12) 
0x401826;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:90;CALL	401030 <free@plt>;(12) 
0x40182b;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:91;MOV	%RBX,%RDI;(12) 
0x40182e;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:91;CALL	401030 <free@plt>;(12) 
0x401833;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x2c(%RBP),%EAX;(12) 
0x401836;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:57;INC	%EAX;(12) 
0x401838;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:57;CMP	$0x1f,%EAX;(12) 
0x40183b;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:57;JE	401aca <main+0x39a>;(12) 
0x401841;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%EAX,-0x2c(%RBP);(12) 
0x401844;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x58(%RBP),%RBX;(12) 
0x401848;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:59;MOV	%RBX,%RDI;(12) 
0x40184b;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:59;CALL	401090 <malloc@plt>;(12) 
0x401850;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:59;MOV	%RAX,%R15;(12) 
0x401853;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:60;MOV	%RBX,%RDI;(12) 
0x401856;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:60;CALL	401090 <malloc@plt>;(12) 
0x40185b;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:60;MOV	%RAX,%R13;(12) 
0x40185e;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x68(%RBP),%RDI;(12) 
0x401862;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:61;CALL	401090 <malloc@plt>;(12) 
0x401867;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:61;MOV	%RAX,%R12;(12) 
0x40186a;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:64;XOR	%EDI,%EDI;(12) 
0x40186c;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:64;CALL	401060 <srand@plt>;(12) 
0x401871;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;XOR	%EBX,%EBX;(12) 
0x401873;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;NOPW	%CS:(%RAX,%RAX,1);(12) 
0x40187d;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;NOPL	(%RAX);(12) 
0x401880;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:27;CALL	4010a0 <rand@plt>;  (8) 
0x401885;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;VMOVSS	0x823(%RIP),%XMM1;  (8) 
0x40188d;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:27;VCVTSI2SS	%EAX,%XMM2,%XMM0;  (8) 
0x401891;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:27;VMULSS	%XMM1,%XMM0,%XMM0;  (8) 
0x401895;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:27;VMOVSS	%XMM0,(%R15,%RBX,4);  (8) 
0x40189b;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:26;INC	%RBX;  (8) 
0x40189e;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:26;CMP	%RBX,%R14;  (8) 
0x4018a1;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:26;JNE	401880 <main+0x150>;  (8) 
0x4018a3;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%R15,-0x38(%RBP);(12) 
0x4018a7;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;XOR	%EBX,%EBX;(12) 
0x4018a9;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;NOPL	(%RAX);(12) 
0x4018b0;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:27;CALL	4010a0 <rand@plt>;  (9) 
0x4018b5;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:27;VCVTSI2SS	%EAX,%XMM2,%XMM0;  (9) 
0x4018b9;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:27;VMULSS	0x7ef(%RIP),%XMM0,%XMM0;  (9) 
0x4018c1;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:27;VMOVSS	%XMM0,(%R13,%RBX,4);  (9) 
0x4018c8;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:26;INC	%RBX;  (9) 
0x4018cb;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:26;CMP	%RBX,%R14;  (9) 
0x4018ce;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:26;JNE	4018b0 <main+0x180>;  (9) 
0x4018d0;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%R12,-0x70(%RBP);(12) 
0x4018d4;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%R12,%R15;(12) 
0x4018d7;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;XOR	%R12D,%R12D;(12) 
0x4018da;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;NOPW	(%RAX,%RAX,1);(12) 
0x4018e0;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;XOR	%EBX,%EBX;  (11) 
0x4018e2;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;NOPW	%CS:(%RAX,%RAX,1);  (11) 
0x4018ec;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;NOPL	(%RAX);  (11) 
0x4018f0;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:17;CALL	4010a0 <rand@plt>;    (10) 
0x4018f5;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:17;VCVTSI2SS	%EAX,%XMM2,%XMM0;    (10) 
0x4018f9;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:17;VMULSS	0x7af(%RIP),%XMM0,%XMM0;    (10) 
0x401901;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:17;VMOVSS	%XMM0,(%R15,%RBX,4);    (10) 
0x401907;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:16;INC	%RBX;    (10) 
0x40190a;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:16;CMP	%RBX,%R14;    (10) 
0x40190d;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:16;JNE	4018f0 <main+0x1c0>;    (10) 
0x40190f;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:15;INC	%R12;  (11) 
0x401912;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:15;ADD	-0x58(%RBP),%R15;  (11) 
0x401916;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:15;CMP	%R14,%R12;  (11) 
0x401919;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:15;JNE	4018e0 <main+0x1b0>;  (11) 
0x40191b;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:70;CMPL	$0,-0x2c(%RBP);(12) 
0x40191f;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:70;JE	401940 <main+0x210>;(12) 
0x401921;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x50(%RBP),%RDI;(12) 
0x401925;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x38(%RBP),%R12;(12) 
0x401929;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:75;MOV	%R12,%RSI;(12) 
0x40192c;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:75;MOV	%R13,%RDX;(12) 
0x40192f;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:75;MOV	-0x70(%RBP),%RBX;(12) 
0x401933;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:75;MOV	%RBX,%RCX;(12) 
0x401936;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:75;CALL	4011c0 <baseline>;(12) 
0x40193b;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;JMP	401977 <main+0x247>;(12) 
0x40193d;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;NOPL	(%RAX);
0x401940;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x40(%RBP),%RAX;(12) 
0x401944;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%EAX,%R15D;(12) 
0x401947;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;TEST	%EAX,%EAX;(12) 
0x401949;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x38(%RBP),%R12;(12) 
0x40194d;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x70(%RBP),%RBX;(12) 
0x401951;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:71;JLE	401977 <main+0x247>;(12) 
0x401953;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:71;NOPW	%CS:(%RAX,%RAX,1);(12) 
0x40195d;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:71;NOPL	(%RAX);(12) 
0x401960;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x50(%RBP),%RDI;  (14) 
0x401964;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:72;MOV	%R12,%RSI;  (14) 
0x401967;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:72;MOV	%R13,%RDX;  (14) 
0x40196a;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:72;MOV	%RBX,%RCX;  (14) 
0x40196d;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:72;CALL	4011c0 <baseline>;  (14) 
0x401972;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:71;DEC	%R15D;  (14) 
0x401975;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:71;JNE	401960 <main+0x230>;  (14) 
0x401977;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:79;XOR	%EAX,%EAX;(12) 
0x401979;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:79;CALL	401b00 <rdtsc>;(12) 
0x40197e;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%RAX,-0x38(%RBP);(12) 
0x401982;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x48(%RBP),%RAX;(12) 
0x401986;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%EAX,%R15D;(12) 
0x401989;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;TEST	%EAX,%EAX;(12) 
0x40198b;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:80;JLE	4017e0 <main+0xb0>;(12) 
0x401991;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:80;NOPW	%CS:(%RAX,%RAX,1);(12) 
0x40199b;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:80;NOPL	(%RAX,%RAX,1);(12) 
0x4019a0;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x50(%RBP),%RDI;  (13) 
0x4019a4;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:81;MOV	%R12,%RSI;  (13) 
0x4019a7;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:81;MOV	%R13,%RDX;  (13) 
0x4019aa;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:81;MOV	%RBX,%RCX;  (13) 
0x4019ad;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:81;CALL	4011c0 <baseline>;  (13) 
0x4019b2;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:80;DEC	%R15D;  (13) 
0x4019b5;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:80;JNE	4019a0 <main+0x270>;  (13) 
0x4019b7;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:80;JMP	4017e0 <main+0xb0>;(12) 
0x4019bc;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;XOR	%EBX,%EBX;
0x4019be;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;JMP	401a21 <main+0x2f1>;
0x4019c0;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:83;XOR	%EAX,%EAX;(5) 
0x4019c2;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:83;CALL	401b00 <rdtsc>;(5) 
0x4019c7;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;SUB	-0x38(%RBP),%RAX;(5) 
0x4019cb;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;VMOVQ	%RAX,%XMM0;(5) 
0x4019d0;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;VPUNPCKLDQ	0x6b8(%RIP),%XMM0,%XMM0;(5) 
0x4019d8;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;VSUBPD	0x6c0(%RIP),%XMM0,%XMM0;(5) 
0x4019e0;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;VPERMILPD	$0x1,%XMM0,%XMM1;(5) 
0x4019e6;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;VADDSD	%XMM0,%XMM1,%XMM0;(5) 
0x4019ea;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;VMULSD	-0x60(%RBP),%XMM0,%XMM0;(5) 
0x4019ef;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;MOV	$0x4020ed,%EDI;(5) 
0x4019f4;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;MOV	$0x1,%AL;(5) 
0x4019f6;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;CALL	401050 <printf@plt>;(5) 
0x4019fb;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:89;MOV	%R14,%RDI;(5) 
0x4019fe;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:89;CALL	401030 <free@plt>;(5) 
0x401a03;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:90;MOV	%R15,%RDI;(5) 
0x401a06;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:90;CALL	401030 <free@plt>;(5) 
0x401a0b;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:91;MOV	%R12,%RDI;(5) 
0x401a0e;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:91;CALL	401030 <free@plt>;(5) 
0x401a13;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x2c(%RBP),%EBX;(5) 
0x401a16;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:57;INC	%EBX;(5) 
0x401a18;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:57;CMP	$0x1f,%EBX;(5) 
0x401a1b;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:57;JE	401aca <main+0x39a>;(5) 
0x401a21;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x58(%RBP),%R15;(5) 
0x401a25;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:59;MOV	%R15,%RDI;(5) 
0x401a28;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:59;CALL	401090 <malloc@plt>;(5) 
0x401a2d;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:59;MOV	%RAX,%R14;(5) 
0x401a30;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:60;MOV	%R15,%RDI;(5) 
0x401a33;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:60;CALL	401090 <malloc@plt>;(5) 
0x401a38;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:60;MOV	%RAX,%R15;(5) 
0x401a3b;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x68(%RBP),%RDI;(5) 
0x401a3f;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:61;CALL	401090 <malloc@plt>;(5) 
0x401a44;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:61;MOV	%RAX,%R12;(5) 
0x401a47;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:64;XOR	%EDI,%EDI;(5) 
0x401a49;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:64;CALL	401060 <srand@plt>;(5) 
0x401a4e;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:70;TEST	%EBX,%EBX;(5) 
0x401a50;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:70;MOV	%EBX,-0x2c(%RBP);(5) 
0x401a53;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:70;JE	401a70 <main+0x340>;(5) 
0x401a55;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:75;MOV	%R13D,%EDI;(5) 
0x401a58;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:75;MOV	%R14,%RSI;(5) 
0x401a5b;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:75;MOV	%R15,%RDX;(5) 
0x401a5e;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:75;MOV	%R12,%RCX;(5) 
0x401a61;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:75;CALL	4011c0 <baseline>;(5) 
0x401a66;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;JMP	401a95 <main+0x365>;(5) 
0x401a68;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;NOPL	(%RAX,%RAX,1);
0x401a70;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;CMPL	$0,-0x40(%RBP);(5) 
0x401a74;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:71;JLE	401a95 <main+0x365>;(5) 
0x401a76;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x40(%RBP),%RAX;(5) 
0x401a7a;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%EAX,%EBX;(5) 
0x401a7c;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;NOPL	(%RAX);(5) 
0x401a80;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:72;MOV	%R13D,%EDI;  (7) 
0x401a83;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:72;MOV	%R14,%RSI;  (7) 
0x401a86;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:72;MOV	%R15,%RDX;  (7) 
0x401a89;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:72;MOV	%R12,%RCX;  (7) 
0x401a8c;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:72;CALL	4011c0 <baseline>;  (7) 
0x401a91;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:71;DEC	%EBX;  (7) 
0x401a93;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:71;JNE	401a80 <main+0x350>;  (7) 
0x401a95;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:79;XOR	%EAX,%EAX;(5) 
0x401a97;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:79;CALL	401b00 <rdtsc>;(5) 
0x401a9c;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%RAX,-0x38(%RBP);(5) 
0x401aa0;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;CMPL	$0,-0x48(%RBP);(5) 
0x401aa4;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:80;JLE	4019c0 <main+0x290>;(5) 
0x401aaa;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x48(%RBP),%RAX;(5) 
0x401aae;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%EAX,%EBX;(5) 
0x401ab0;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:81;MOV	%R13D,%EDI;  (6) 
0x401ab3;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:81;MOV	%R14,%RSI;  (6) 
0x401ab6;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:81;MOV	%R15,%RDX;  (6) 
0x401ab9;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:81;MOV	%R12,%RCX;  (6) 
0x401abc;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:81;CALL	4011c0 <baseline>;  (6) 
0x401ac1;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:80;DEC	%EBX;  (6) 
0x401ac3;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:80;JNE	401ab0 <main+0x380>;  (6) 
0x401ac5;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:80;JMP	4019c0 <main+0x290>;(5) 
0x401aca;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:93;XOR	%EAX,%EAX;
0x401acc;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:93;ADD	$0x48,%RSP;
0x401ad0;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:93;POP	%RBX;
0x401ad1;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:93;POP	%R12;
0x401ad3;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:93;POP	%R13;
0x401ad5;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:93;POP	%R14;
0x401ad7;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:93;POP	%R15;
0x401ad9;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:93;POP	%RBP;
0x401ada;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:93;RET;
0x401adb;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:42;MOV	0x259e(%RIP),%RDI;
0x401ae2;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:42;MOV	(%RBX),%RDX;
0x401ae5;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:42;MOV	$0x4020b4,%ESI;
0x401aea;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:42;XOR	%EAX,%EAX;
0x401aec;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:42;CALL	401070 <fprintf@plt>;
0x401af1;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:43;CALL	401040 <abort@plt>;
0x401af6;:0;NOPW	%CS:(%RAX,%RAX,1);
