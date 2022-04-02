address;source_location;insn;indent
0x401690;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:39;PUSH	%RBP;
0x401691;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:39;MOV	%RSP,%RBP;
0x401694;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:39;PUSH	%R15;
0x401696;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:39;PUSH	%R14;
0x401698;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:39;PUSH	%R13;
0x40169a;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:39;PUSH	%R12;
0x40169c;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:39;PUSH	%RBX;
0x40169d;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:39;SUB	$0x58,%RSP;
0x4016a1;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:39;MOV	%RSI,%R14;
0x4016a4;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:41;CMP	$0x4,%EDI;
0x4016a7;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:41;JNE	40193c <main+0x2ac>;
0x4016ad;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:49;MOV	0x8(%R14),%RDI;
0x4016b1;/usr/include/stdlib.h:363;XOR	%ESI,%ESI;
0x4016b3;/usr/include/stdlib.h:363;MOV	$0xa,%EDX;
0x4016b8;/usr/include/stdlib.h:363;CALL	401080 <strtol@plt>;
0x4016bd;/usr/include/stdlib.h:363;MOV	%RAX,%R13;
0x4016c0;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:52;MOV	0x10(%R14),%RDI;
0x4016c4;/usr/include/stdlib.h:363;XOR	%ESI,%ESI;
0x4016c6;/usr/include/stdlib.h:363;MOV	$0xa,%EDX;
0x4016cb;/usr/include/stdlib.h:363;CALL	401080 <strtol@plt>;
0x4016d0;/usr/include/stdlib.h:0;MOV	%RAX,-0x58(%RBP);
0x4016d4;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:55;MOV	0x18(%R14),%RDI;
0x4016d8;/usr/include/stdlib.h:363;XOR	%ESI,%ESI;
0x4016da;/usr/include/stdlib.h:363;MOV	$0xa,%EDX;
0x4016df;/usr/include/stdlib.h:363;CALL	401080 <strtol@plt>;
0x4016e4;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%R13D,%R12D;
0x4016e7;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;LEA	(,%R12,4),%RCX;
0x4016ef;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%RCX,-0x68(%RBP);
0x4016f3;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%R13D,%ECX;
0x4016f6;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;IMUL	%ECX,%ECX;
0x4016f9;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;SAL	$0x2,%RCX;
0x4016fd;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%RCX,-0x78(%RBP);
0x401701;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;VCVTSI2SD	%R12,%XMM0,%XMM0;
0x401706;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%RAX,-0x60(%RBP);
0x40170a;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;VCVTSI2SD	%EAX,%XMM1,%XMM1;
0x40170e;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;VMULSD	%XMM0,%XMM0,%XMM0;
0x401712;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;VMULSD	%XMM1,%XMM0,%XMM0;
0x401716;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;VMOVSD	%XMM0,-0x70(%RBP);
0x40171b;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;XOR	%EAX,%EAX;
0x40171d;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%R13,-0x40(%RBP);
0x401721;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;JMP	401795 <main+0x105>;
0x401723;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;NOPW	%CS:(%RAX,%RAX,1);
0x40172d;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;NOPL	(%RAX);
0x401730;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:83;XOR	%EAX,%EAX;(5) 
0x401732;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:83;CALL	401960 <rdtsc>;(5) 
0x401737;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;SUB	-0x30(%RBP),%RAX;(5) 
0x40173b;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;VMOVQ	%RAX,%XMM0;(5) 
0x401740;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;VPUNPCKLDQ	0x948(%RIP),%XMM0,%XMM0;(5) 
0x401748;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;VSUBPD	0x950(%RIP),%XMM0,%XMM0;(5) 
0x401750;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;VPERMILPD	$0x1,%XMM0,%XMM1;(5) 
0x401756;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;VADDSD	%XMM0,%XMM1,%XMM0;(5) 
0x40175a;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;VDIVSD	-0x70(%RBP),%XMM0,%XMM0;(5) 
0x40175f;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;MOV	$0x4020e9,%EDI;(5) 
0x401764;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;MOV	$0x1,%AL;(5) 
0x401766;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;CALL	401050 <printf@plt>;(5) 
0x40176b;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:89;MOV	%R14,%RDI;(5) 
0x40176e;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:89;CALL	401030 <free@plt>;(5) 
0x401773;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:90;MOV	%R13,%RDI;(5) 
0x401776;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:90;CALL	401030 <free@plt>;(5) 
0x40177b;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:91;MOV	%R15,%RDI;(5) 
0x40177e;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:91;CALL	401030 <free@plt>;(5) 
0x401783;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x34(%RBP),%EAX;(5) 
0x401786;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:57;INC	%EAX;(5) 
0x401788;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:57;CMP	$0x1f,%EAX;(5) 
0x40178b;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:57;MOV	-0x40(%RBP),%R13;(5) 
0x40178f;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:57;JE	40192b <main+0x29b>;(5) 
0x401795;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%EAX,-0x34(%RBP);(5) 
0x401798;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x68(%RBP),%RBX;(5) 
0x40179c;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:59;MOV	%RBX,%RDI;(5) 
0x40179f;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:59;CALL	401090 <malloc@plt>;(5) 
0x4017a4;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%RAX,-0x30(%RBP);(5) 
0x4017a8;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:60;MOV	%RBX,%RDI;(5) 
0x4017ab;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:60;CALL	401090 <malloc@plt>;(5) 
0x4017b0;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%RAX,-0x48(%RBP);(5) 
0x4017b4;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x78(%RBP),%RDI;(5) 
0x4017b8;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:61;CALL	401090 <malloc@plt>;(5) 
0x4017bd;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%RAX,-0x50(%RBP);(5) 
0x4017c1;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:64;XOR	%EDI,%EDI;(5) 
0x4017c3;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:64;CALL	401060 <srand@plt>;(5) 
0x4017c8;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;TEST	%R13D,%R13D;(5) 
0x4017cb;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:26;JLE	40187b <main+0x1eb>;(5) 
0x4017d1;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;XOR	%EBX,%EBX;(5) 
0x4017d3;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x30(%RBP),%R14;(5) 
0x4017d7;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;NOPW	(%RAX,%RAX,1);(5) 
0x4017e0;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:27;CALL	4010a0 <rand@plt>;  (8) 
0x4017e5;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;VMOVSS	0x893(%RIP),%XMM1;  (8) 
0x4017ed;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:27;VCVTSI2SS	%EAX,%XMM2,%XMM0;  (8) 
0x4017f1;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:27;VMULSS	%XMM1,%XMM0,%XMM0;  (8) 
0x4017f5;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:27;VMOVSS	%XMM0,(%R14,%RBX,4);  (8) 
0x4017fb;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:26;INC	%RBX;  (8) 
0x4017fe;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:26;CMP	%RBX,%R12;  (8) 
0x401801;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:26;JNE	4017e0 <main+0x150>;  (8) 
0x401803;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;XOR	%EBX,%EBX;(5) 
0x401805;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x50(%RBP),%R15;(5) 
0x401809;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x48(%RBP),%R14;(5) 
0x40180d;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;NOPL	(%RAX);(5) 
0x401810;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:27;CALL	4010a0 <rand@plt>;  (9) 
0x401815;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:27;VCVTSI2SS	%EAX,%XMM2,%XMM0;  (9) 
0x401819;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:27;VMULSS	0x85f(%RIP),%XMM0,%XMM0;  (9) 
0x401821;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:27;VMOVSS	%XMM0,(%R14,%RBX,4);  (9) 
0x401827;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:26;INC	%RBX;  (9) 
0x40182a;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:26;CMP	%RBX,%R12;  (9) 
0x40182d;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:26;JNE	401810 <main+0x180>;  (9) 
0x40182f;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;XOR	%EBX,%EBX;(5) 
0x401831;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;NOPW	%CS:(%RAX,%RAX,1);(5) 
0x40183b;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;NOPL	(%RAX,%RAX,1);(5) 
0x401840;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;XOR	%R14D,%R14D;  (11) 
0x401843;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;NOPW	%CS:(%RAX,%RAX,1);  (11) 
0x40184d;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;NOPL	(%RAX);  (11) 
0x401850;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:17;CALL	4010a0 <rand@plt>;    (10) 
0x401855;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:17;VCVTSI2SS	%EAX,%XMM2,%XMM0;    (10) 
0x401859;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:17;VMULSS	0x81f(%RIP),%XMM0,%XMM0;    (10) 
0x401861;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:17;VMOVSS	%XMM0,(%R15,%R14,4);    (10) 
0x401867;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:16;INC	%R14;    (10) 
0x40186a;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:16;CMP	%R14,%R12;    (10) 
0x40186d;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:16;JNE	401850 <main+0x1c0>;    (10) 
0x40186f;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:15;INC	%RBX;  (11) 
0x401872;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:15;ADD	-0x68(%RBP),%R15;  (11) 
0x401876;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:15;CMP	%R12,%RBX;  (11) 
0x401879;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:15;JNE	401840 <main+0x1b0>;  (11) 
0x40187b;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x34(%RBP),%EAX;(5) 
0x40187e;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:70;TEST	%EAX,%EAX;(5) 
0x401880;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:70;JE	4018b0 <main+0x220>;(5) 
0x401882;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x40(%RBP),%RDI;(5) 
0x401886;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x30(%RBP),%R14;(5) 
0x40188a;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:75;MOV	%R14,%RSI;(5) 
0x40188d;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:75;MOV	-0x48(%RBP),%R13;(5) 
0x401891;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:75;MOV	%R13,%RDX;(5) 
0x401894;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:75;MOV	-0x50(%RBP),%R15;(5) 
0x401898;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:75;MOV	%R15,%RCX;(5) 
0x40189b;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:75;CALL	4011a0 <baseline>;(5) 
0x4018a0;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;JMP	4018e6 <main+0x256>;(5) 
0x4018a2;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;NOPW	%CS:(%RAX,%RAX,1);
0x4018ac;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;NOPL	(%RAX);
0x4018b0;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;CMPL	$0,-0x58(%RBP);(5) 
0x4018b4;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x30(%RBP),%R14;(5) 
0x4018b8;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x50(%RBP),%R15;(5) 
0x4018bc;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x48(%RBP),%R13;(5) 
0x4018c0;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:71;JLE	4018e6 <main+0x256>;(5) 
0x4018c2;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x58(%RBP),%RAX;(5) 
0x4018c6;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%EAX,%EBX;(5) 
0x4018c8;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;NOPL	(%RAX,%RAX,1);(5) 
0x4018d0;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x40(%RBP),%RDI;  (7) 
0x4018d4;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:72;MOV	%R14,%RSI;  (7) 
0x4018d7;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:72;MOV	%R13,%RDX;  (7) 
0x4018da;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:72;MOV	%R15,%RCX;  (7) 
0x4018dd;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:72;CALL	4011a0 <baseline>;  (7) 
0x4018e2;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:71;DEC	%EBX;  (7) 
0x4018e4;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:71;JNE	4018d0 <main+0x240>;  (7) 
0x4018e6;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:79;XOR	%EAX,%EAX;(5) 
0x4018e8;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:79;CALL	401960 <rdtsc>;(5) 
0x4018ed;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%RAX,-0x30(%RBP);(5) 
0x4018f1;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;CMPL	$0,-0x60(%RBP);(5) 
0x4018f5;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:80;JLE	401730 <main+0xa0>;(5) 
0x4018fb;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x60(%RBP),%RAX;(5) 
0x4018ff;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%EAX,%EBX;(5) 
0x401901;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;NOPW	%CS:(%RAX,%RAX,1);(5) 
0x40190b;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;NOPL	(%RAX,%RAX,1);(5) 
0x401910;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x40(%RBP),%RDI;  (6) 
0x401914;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:81;MOV	%R14,%RSI;  (6) 
0x401917;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:81;MOV	%R13,%RDX;  (6) 
0x40191a;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:81;MOV	%R15,%RCX;  (6) 
0x40191d;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:81;CALL	4011a0 <baseline>;  (6) 
0x401922;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:80;DEC	%EBX;  (6) 
0x401924;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:80;JNE	401910 <main+0x280>;  (6) 
0x401926;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:80;JMP	401730 <main+0xa0>;(5) 
0x40192b;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:93;XOR	%EAX,%EAX;
0x40192d;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:93;ADD	$0x58,%RSP;
0x401931;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:93;POP	%RBX;
0x401932;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:93;POP	%R12;
0x401934;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:93;POP	%R13;
0x401936;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:93;POP	%R14;
0x401938;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:93;POP	%R15;
0x40193a;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:93;POP	%RBP;
0x40193b;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:93;RET;
0x40193c;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:42;MOV	0x273d(%RIP),%RDI;
0x401943;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:42;MOV	(%R14),%RDX;
0x401946;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:42;MOV	$0x4020b0,%ESI;
0x40194b;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:42;XOR	%EAX,%EAX;
0x40194d;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:42;CALL	401070 <fprintf@plt>;
0x401952;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:43;CALL	401040 <abort@plt>;
0x401957;:0;NOPW	(%RAX,%RAX,1);
