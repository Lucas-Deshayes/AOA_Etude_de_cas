address;source_location;insn;indent
0x401690;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:39;PUSH	%RBP;
0x401691;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:39;MOV	%RSP,%RBP;
0x401694;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:39;PUSH	%R15;
0x401696;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:39;PUSH	%R14;
0x401698;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:39;PUSH	%R13;
0x40169a;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:39;PUSH	%R12;
0x40169c;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:39;PUSH	%RBX;
0x40169d;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:39;SUB	$0x48,%RSP;
0x4016a1;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:39;MOV	%RSI,%RBX;
0x4016a4;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:41;CMP	$0x4,%EDI;
0x4016a7;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:41;JNE	401a2b <main+0x39b>;
0x4016ad;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:49;MOV	0x8(%RBX),%RDI;
0x4016b1;/usr/include/stdlib.h:363;XOR	%ESI,%ESI;
0x4016b3;/usr/include/stdlib.h:363;MOV	$0xa,%EDX;
0x4016b8;/usr/include/stdlib.h:363;CALL	401080 <strtol@plt>;
0x4016bd;/usr/include/stdlib.h:363;MOV	%RAX,%R13;
0x4016c0;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:52;MOV	0x10(%RBX),%RDI;
0x4016c4;/usr/include/stdlib.h:363;XOR	%ESI,%ESI;
0x4016c6;/usr/include/stdlib.h:363;MOV	$0xa,%EDX;
0x4016cb;/usr/include/stdlib.h:363;CALL	401080 <strtol@plt>;
0x4016d0;/usr/include/stdlib.h:0;MOV	%RAX,-0x40(%RBP);
0x4016d4;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:55;MOV	0x18(%RBX),%RDI;
0x4016d8;/usr/include/stdlib.h:363;XOR	%ESI,%ESI;
0x4016da;/usr/include/stdlib.h:363;MOV	$0xa,%EDX;
0x4016df;/usr/include/stdlib.h:363;CALL	401080 <strtol@plt>;
0x4016e4;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%R13D,%R14D;
0x4016e7;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;LEA	(,%R14,4),%RCX;
0x4016ef;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%RCX,-0x58(%RBP);
0x4016f3;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%R13D,%ECX;
0x4016f6;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;IMUL	%ECX,%ECX;
0x4016f9;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;VCVTSI2SD	%R14,%XMM0,%XMM0;
0x4016fe;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;SAL	$0x2,%RCX;
0x401702;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%RCX,-0x68(%RBP);
0x401706;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;VMULSD	%XMM0,%XMM0,%XMM0;
0x40170a;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%RAX,-0x48(%RBP);
0x40170e;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;VCVTSI2SD	%EAX,%XMM1,%XMM1;
0x401712;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;VMULSD	%XMM1,%XMM0,%XMM0;
0x401716;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;VMOVSD	%XMM0,-0x60(%RBP);
0x40171b;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;TEST	%R13D,%R13D;
0x40171e;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:57;JLE	40190c <main+0x27c>;
0x401724;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;XOR	%EAX,%EAX;
0x401726;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%R13,-0x50(%RBP);
0x40172a;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;JMP	401791 <main+0x101>;
0x40172c;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;NOPL	(%RAX);
0x401730;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:83;XOR	%EAX,%EAX;(12) 
0x401732;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:83;CALL	401a50 <rdtsc>;(12) 
0x401737;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;SUB	-0x38(%RBP),%RAX;(12) 
0x40173b;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;VMOVQ	%RAX,%XMM0;(12) 
0x401740;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;VPUNPCKLDQ	0x938(%RIP),%XMM0,%XMM0;(12) 
0x401748;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;VSUBPD	0x940(%RIP),%XMM0,%XMM0;(12) 
0x401750;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;VPERMILPD	$0x1,%XMM0,%XMM1;(12) 
0x401756;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;VADDSD	%XMM0,%XMM1,%XMM0;(12) 
0x40175a;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;VDIVSD	-0x60(%RBP),%XMM0,%XMM0;(12) 
0x40175f;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;MOV	$0x4020dd,%EDI;(12) 
0x401764;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;MOV	$0x1,%AL;(12) 
0x401766;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;CALL	401050 <printf@plt>;(12) 
0x40176b;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:89;MOV	%R12,%RDI;(12) 
0x40176e;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:89;CALL	401030 <free@plt>;(12) 
0x401773;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:90;MOV	%R13,%RDI;(12) 
0x401776;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:90;CALL	401030 <free@plt>;(12) 
0x40177b;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:91;MOV	%RBX,%RDI;(12) 
0x40177e;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:91;CALL	401030 <free@plt>;(12) 
0x401783;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x2c(%RBP),%EAX;(12) 
0x401786;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:57;INC	%EAX;(12) 
0x401788;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:57;CMP	$0x1f,%EAX;(12) 
0x40178b;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:57;JE	401a1a <main+0x38a>;(12) 
0x401791;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%EAX,-0x2c(%RBP);(12) 
0x401794;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x58(%RBP),%RBX;(12) 
0x401798;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:59;MOV	%RBX,%RDI;(12) 
0x40179b;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:59;CALL	401090 <malloc@plt>;(12) 
0x4017a0;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:59;MOV	%RAX,%R15;(12) 
0x4017a3;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:60;MOV	%RBX,%RDI;(12) 
0x4017a6;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:60;CALL	401090 <malloc@plt>;(12) 
0x4017ab;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:60;MOV	%RAX,%R13;(12) 
0x4017ae;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x68(%RBP),%RDI;(12) 
0x4017b2;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:61;CALL	401090 <malloc@plt>;(12) 
0x4017b7;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:61;MOV	%RAX,%R12;(12) 
0x4017ba;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:64;XOR	%EDI,%EDI;(12) 
0x4017bc;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:64;CALL	401060 <srand@plt>;(12) 
0x4017c1;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;XOR	%EBX,%EBX;(12) 
0x4017c3;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;NOPW	%CS:(%RAX,%RAX,1);(12) 
0x4017cd;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;NOPL	(%RAX);(12) 
0x4017d0;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:27;CALL	4010a0 <rand@plt>;  (8) 
0x4017d5;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;VMOVSS	0x8c3(%RIP),%XMM1;  (8) 
0x4017dd;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:27;VCVTSI2SS	%EAX,%XMM2,%XMM0;  (8) 
0x4017e1;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:27;VMULSS	%XMM1,%XMM0,%XMM0;  (8) 
0x4017e5;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:27;VMOVSS	%XMM0,(%R15,%RBX,4);  (8) 
0x4017eb;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:26;INC	%RBX;  (8) 
0x4017ee;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:26;CMP	%RBX,%R14;  (8) 
0x4017f1;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:26;JNE	4017d0 <main+0x140>;  (8) 
0x4017f3;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%R15,-0x38(%RBP);(12) 
0x4017f7;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;XOR	%EBX,%EBX;(12) 
0x4017f9;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;NOPL	(%RAX);(12) 
0x401800;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:27;CALL	4010a0 <rand@plt>;  (9) 
0x401805;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:27;VCVTSI2SS	%EAX,%XMM2,%XMM0;  (9) 
0x401809;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:27;VMULSS	0x88f(%RIP),%XMM0,%XMM0;  (9) 
0x401811;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:27;VMOVSS	%XMM0,(%R13,%RBX,4);  (9) 
0x401818;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:26;INC	%RBX;  (9) 
0x40181b;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:26;CMP	%RBX,%R14;  (9) 
0x40181e;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:26;JNE	401800 <main+0x170>;  (9) 
0x401820;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%R12,-0x70(%RBP);(12) 
0x401824;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%R12,%R15;(12) 
0x401827;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;XOR	%R12D,%R12D;(12) 
0x40182a;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;NOPW	(%RAX,%RAX,1);(12) 
0x401830;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;XOR	%EBX,%EBX;  (11) 
0x401832;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;NOPW	%CS:(%RAX,%RAX,1);  (11) 
0x40183c;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;NOPL	(%RAX);  (11) 
0x401840;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:17;CALL	4010a0 <rand@plt>;    (10) 
0x401845;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:17;VCVTSI2SS	%EAX,%XMM2,%XMM0;    (10) 
0x401849;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:17;VMULSS	0x84f(%RIP),%XMM0,%XMM0;    (10) 
0x401851;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:17;VMOVSS	%XMM0,(%R15,%RBX,4);    (10) 
0x401857;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:16;INC	%RBX;    (10) 
0x40185a;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:16;CMP	%RBX,%R14;    (10) 
0x40185d;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:16;JNE	401840 <main+0x1b0>;    (10) 
0x40185f;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:15;INC	%R12;  (11) 
0x401862;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:15;ADD	-0x58(%RBP),%R15;  (11) 
0x401866;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:15;CMP	%R14,%R12;  (11) 
0x401869;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:15;JNE	401830 <main+0x1a0>;  (11) 
0x40186b;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:70;CMPL	$0,-0x2c(%RBP);(12) 
0x40186f;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:70;JE	401890 <main+0x200>;(12) 
0x401871;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x50(%RBP),%RDI;(12) 
0x401875;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x38(%RBP),%R12;(12) 
0x401879;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:75;MOV	%R12,%RSI;(12) 
0x40187c;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:75;MOV	%R13,%RDX;(12) 
0x40187f;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:75;MOV	-0x70(%RBP),%RBX;(12) 
0x401883;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:75;MOV	%RBX,%RCX;(12) 
0x401886;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:75;CALL	4011a0 <baseline>;(12) 
0x40188b;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;JMP	4018c7 <main+0x237>;(12) 
0x40188d;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;NOPL	(%RAX);
0x401890;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x40(%RBP),%RAX;(12) 
0x401894;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%EAX,%R15D;(12) 
0x401897;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;TEST	%EAX,%EAX;(12) 
0x401899;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x38(%RBP),%R12;(12) 
0x40189d;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x70(%RBP),%RBX;(12) 
0x4018a1;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:71;JLE	4018c7 <main+0x237>;(12) 
0x4018a3;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:71;NOPW	%CS:(%RAX,%RAX,1);(12) 
0x4018ad;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:71;NOPL	(%RAX);(12) 
0x4018b0;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x50(%RBP),%RDI;  (14) 
0x4018b4;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:72;MOV	%R12,%RSI;  (14) 
0x4018b7;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:72;MOV	%R13,%RDX;  (14) 
0x4018ba;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:72;MOV	%RBX,%RCX;  (14) 
0x4018bd;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:72;CALL	4011a0 <baseline>;  (14) 
0x4018c2;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:71;DEC	%R15D;  (14) 
0x4018c5;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:71;JNE	4018b0 <main+0x220>;  (14) 
0x4018c7;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:79;XOR	%EAX,%EAX;(12) 
0x4018c9;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:79;CALL	401a50 <rdtsc>;(12) 
0x4018ce;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%RAX,-0x38(%RBP);(12) 
0x4018d2;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x48(%RBP),%RAX;(12) 
0x4018d6;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%EAX,%R15D;(12) 
0x4018d9;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;TEST	%EAX,%EAX;(12) 
0x4018db;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:80;JLE	401730 <main+0xa0>;(12) 
0x4018e1;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:80;NOPW	%CS:(%RAX,%RAX,1);(12) 
0x4018eb;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:80;NOPL	(%RAX,%RAX,1);(12) 
0x4018f0;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x50(%RBP),%RDI;  (13) 
0x4018f4;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:81;MOV	%R12,%RSI;  (13) 
0x4018f7;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:81;MOV	%R13,%RDX;  (13) 
0x4018fa;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:81;MOV	%RBX,%RCX;  (13) 
0x4018fd;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:81;CALL	4011a0 <baseline>;  (13) 
0x401902;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:80;DEC	%R15D;  (13) 
0x401905;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:80;JNE	4018f0 <main+0x260>;  (13) 
0x401907;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:80;JMP	401730 <main+0xa0>;(12) 
0x40190c;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;XOR	%EBX,%EBX;
0x40190e;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;JMP	401971 <main+0x2e1>;
0x401910;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:83;XOR	%EAX,%EAX;(5) 
0x401912;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:83;CALL	401a50 <rdtsc>;(5) 
0x401917;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;SUB	-0x38(%RBP),%RAX;(5) 
0x40191b;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;VMOVQ	%RAX,%XMM0;(5) 
0x401920;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;VPUNPCKLDQ	0x758(%RIP),%XMM0,%XMM0;(5) 
0x401928;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;VSUBPD	0x760(%RIP),%XMM0,%XMM0;(5) 
0x401930;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;VPERMILPD	$0x1,%XMM0,%XMM1;(5) 
0x401936;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;VADDSD	%XMM0,%XMM1,%XMM0;(5) 
0x40193a;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;VDIVSD	-0x60(%RBP),%XMM0,%XMM0;(5) 
0x40193f;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;MOV	$0x4020dd,%EDI;(5) 
0x401944;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;MOV	$0x1,%AL;(5) 
0x401946;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;CALL	401050 <printf@plt>;(5) 
0x40194b;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:89;MOV	%R14,%RDI;(5) 
0x40194e;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:89;CALL	401030 <free@plt>;(5) 
0x401953;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:90;MOV	%R15,%RDI;(5) 
0x401956;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:90;CALL	401030 <free@plt>;(5) 
0x40195b;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:91;MOV	%R12,%RDI;(5) 
0x40195e;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:91;CALL	401030 <free@plt>;(5) 
0x401963;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x2c(%RBP),%EBX;(5) 
0x401966;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:57;INC	%EBX;(5) 
0x401968;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:57;CMP	$0x1f,%EBX;(5) 
0x40196b;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:57;JE	401a1a <main+0x38a>;(5) 
0x401971;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x58(%RBP),%R15;(5) 
0x401975;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:59;MOV	%R15,%RDI;(5) 
0x401978;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:59;CALL	401090 <malloc@plt>;(5) 
0x40197d;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:59;MOV	%RAX,%R14;(5) 
0x401980;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:60;MOV	%R15,%RDI;(5) 
0x401983;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:60;CALL	401090 <malloc@plt>;(5) 
0x401988;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:60;MOV	%RAX,%R15;(5) 
0x40198b;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x68(%RBP),%RDI;(5) 
0x40198f;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:61;CALL	401090 <malloc@plt>;(5) 
0x401994;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:61;MOV	%RAX,%R12;(5) 
0x401997;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:64;XOR	%EDI,%EDI;(5) 
0x401999;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:64;CALL	401060 <srand@plt>;(5) 
0x40199e;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:70;TEST	%EBX,%EBX;(5) 
0x4019a0;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:70;MOV	%EBX,-0x2c(%RBP);(5) 
0x4019a3;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:70;JE	4019c0 <main+0x330>;(5) 
0x4019a5;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:75;MOV	%R13D,%EDI;(5) 
0x4019a8;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:75;MOV	%R14,%RSI;(5) 
0x4019ab;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:75;MOV	%R15,%RDX;(5) 
0x4019ae;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:75;MOV	%R12,%RCX;(5) 
0x4019b1;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:75;CALL	4011a0 <baseline>;(5) 
0x4019b6;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;JMP	4019e5 <main+0x355>;(5) 
0x4019b8;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;NOPL	(%RAX,%RAX,1);
0x4019c0;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;CMPL	$0,-0x40(%RBP);(5) 
0x4019c4;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:71;JLE	4019e5 <main+0x355>;(5) 
0x4019c6;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x40(%RBP),%RAX;(5) 
0x4019ca;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%EAX,%EBX;(5) 
0x4019cc;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;NOPL	(%RAX);(5) 
0x4019d0;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:72;MOV	%R13D,%EDI;  (7) 
0x4019d3;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:72;MOV	%R14,%RSI;  (7) 
0x4019d6;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:72;MOV	%R15,%RDX;  (7) 
0x4019d9;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:72;MOV	%R12,%RCX;  (7) 
0x4019dc;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:72;CALL	4011a0 <baseline>;  (7) 
0x4019e1;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:71;DEC	%EBX;  (7) 
0x4019e3;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:71;JNE	4019d0 <main+0x340>;  (7) 
0x4019e5;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:79;XOR	%EAX,%EAX;(5) 
0x4019e7;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:79;CALL	401a50 <rdtsc>;(5) 
0x4019ec;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%RAX,-0x38(%RBP);(5) 
0x4019f0;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;CMPL	$0,-0x48(%RBP);(5) 
0x4019f4;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:80;JLE	401910 <main+0x280>;(5) 
0x4019fa;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x48(%RBP),%RAX;(5) 
0x4019fe;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%EAX,%EBX;(5) 
0x401a00;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:81;MOV	%R13D,%EDI;  (6) 
0x401a03;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:81;MOV	%R14,%RSI;  (6) 
0x401a06;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:81;MOV	%R15,%RDX;  (6) 
0x401a09;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:81;MOV	%R12,%RCX;  (6) 
0x401a0c;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:81;CALL	4011a0 <baseline>;  (6) 
0x401a11;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:80;DEC	%EBX;  (6) 
0x401a13;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:80;JNE	401a00 <main+0x370>;  (6) 
0x401a15;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:80;JMP	401910 <main+0x280>;(5) 
0x401a1a;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:93;XOR	%EAX,%EAX;
0x401a1c;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:93;ADD	$0x48,%RSP;
0x401a20;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:93;POP	%RBX;
0x401a21;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:93;POP	%R12;
0x401a23;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:93;POP	%R13;
0x401a25;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:93;POP	%R14;
0x401a27;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:93;POP	%R15;
0x401a29;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:93;POP	%RBP;
0x401a2a;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:93;RET;
0x401a2b;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:42;MOV	0x264e(%RIP),%RDI;
0x401a32;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:42;MOV	(%RBX),%RDX;
0x401a35;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:42;MOV	$0x4020a4,%ESI;
0x401a3a;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:42;XOR	%EAX,%EAX;
0x401a3c;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:42;CALL	401070 <fprintf@plt>;
0x401a41;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:43;CALL	401040 <abort@plt>;
0x401a46;:0;NOPW	%CS:(%RAX,%RAX,1);
