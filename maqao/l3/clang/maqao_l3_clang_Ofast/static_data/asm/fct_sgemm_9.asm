address;source_location;insn;indent
0x401460;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:39;PUSH	%RBP;
0x401461;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:39;MOV	%RSP,%RBP;
0x401464;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:39;PUSH	%R15;
0x401466;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:39;PUSH	%R14;
0x401468;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:39;PUSH	%R13;
0x40146a;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:39;PUSH	%R12;
0x40146c;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:39;PUSH	%RBX;
0x40146d;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:39;SUB	$0x48,%RSP;
0x401471;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:39;MOV	%RSI,%R14;
0x401474;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:41;CMP	$0x4,%EDI;
0x401477;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:41;JNE	40181c <main+0x3bc>;
0x40147d;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:49;MOV	0x8(%R14),%RDI;
0x401481;/usr/include/stdlib.h:363;XOR	%ESI,%ESI;
0x401483;/usr/include/stdlib.h:363;MOV	$0xa,%EDX;
0x401488;/usr/include/stdlib.h:363;CALL	401080 <strtol@plt>;
0x40148d;/usr/include/stdlib.h:363;MOV	%RAX,%RBX;
0x401490;/usr/include/stdlib.h:363;MOV	%RAX,-0x38(%RBP);
0x401494;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:52;MOV	0x10(%R14),%RDI;
0x401498;/usr/include/stdlib.h:363;XOR	%ESI,%ESI;
0x40149a;/usr/include/stdlib.h:363;MOV	$0xa,%EDX;
0x40149f;/usr/include/stdlib.h:363;CALL	401080 <strtol@plt>;
0x4014a4;/usr/include/stdlib.h:0;MOV	%RAX,-0x50(%RBP);
0x4014a8;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:55;MOV	0x18(%R14),%RDI;
0x4014ac;/usr/include/stdlib.h:363;XOR	%ESI,%ESI;
0x4014ae;/usr/include/stdlib.h:363;MOV	$0xa,%EDX;
0x4014b3;/usr/include/stdlib.h:363;CALL	401080 <strtol@plt>;
0x4014b8;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%EBX,%R14D;
0x4014bb;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;LEA	(,%R14,4),%RCX;
0x4014c3;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%RCX,-0x60(%RBP);
0x4014c7;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%EBX,%ECX;
0x4014c9;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;IMUL	%ECX,%ECX;
0x4014cc;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;CVTSI2SD	%R14,%XMM0;
0x4014d1;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;SAL	$0x2,%RCX;
0x4014d5;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%RCX,-0x70(%RBP);
0x4014d9;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MULSD	%XMM0,%XMM0;
0x4014dd;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%RAX,-0x58(%RBP);
0x4014e1;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;CVTSI2SD	%EAX,%XMM1;
0x4014e5;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MULSD	%XMM0,%XMM1;
0x4014e9;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOVSD	0xb4f(%RIP),%XMM0;
0x4014f1;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;DIVSD	%XMM1,%XMM0;
0x4014f5;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOVSD	%XMM0,-0x68(%RBP);
0x4014fa;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;TEST	%EBX,%EBX;
0x4014fc;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:57;JLE	4016ec <main+0x28c>;
0x401502;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;XOR	%EAX,%EAX;
0x401504;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;JMP	401575 <main+0x115>;
0x401506;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;NOPW	%CS:(%RAX,%RAX,1);
0x401510;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:83;XOR	%EAX,%EAX;(10) 
0x401512;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:83;CALL	401840 <rdtsc>;(10) 
0x401517;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;SUB	-0x40(%RBP),%RAX;(10) 
0x40151b;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;MOVQ	%RAX,%XMM1;(10) 
0x401520;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;PUNPCKLDQ	0xb28(%RIP),%XMM1;(10) 
0x401528;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;SUBPD	0xb30(%RIP),%XMM1;(10) 
0x401530;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;MOVAPD	%XMM1,%XMM0;(10) 
0x401534;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;UNPCKHPD	%XMM1,%XMM0;(10) 
0x401538;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;ADDSD	%XMM1,%XMM0;(10) 
0x40153c;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;MULSD	-0x68(%RBP),%XMM0;(10) 
0x401541;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;MOV	$0x4020ad,%EDI;(10) 
0x401546;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;MOV	$0x1,%AL;(10) 
0x401548;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;CALL	401050 <printf@plt>;(10) 
0x40154d;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:89;MOV	%R12,%RDI;(10) 
0x401550;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:89;CALL	401030 <free@plt>;(10) 
0x401555;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:90;MOV	%R13,%RDI;(10) 
0x401558;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:90;CALL	401030 <free@plt>;(10) 
0x40155d;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x30(%RBP),%RDI;(10) 
0x401561;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:91;CALL	401030 <free@plt>;(10) 
0x401566;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x48(%RBP),%EAX;(10) 
0x401569;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:57;ADD	$0x1,%EAX;(10) 
0x40156c;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:57;CMP	$0x1f,%EAX;(10) 
0x40156f;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:57;JE	40180b <main+0x3ab>;(10) 
0x401575;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%EAX,-0x48(%RBP);(10) 
0x401578;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x60(%RBP),%RBX;(10) 
0x40157c;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:59;MOV	%RBX,%RDI;(10) 
0x40157f;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:59;CALL	401090 <malloc@plt>;(10) 
0x401584;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:59;MOV	%RAX,%R15;(10) 
0x401587;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:60;MOV	%RBX,%RDI;(10) 
0x40158a;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:60;CALL	401090 <malloc@plt>;(10) 
0x40158f;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:60;MOV	%RAX,%R13;(10) 
0x401592;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x70(%RBP),%RDI;(10) 
0x401596;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:61;CALL	401090 <malloc@plt>;(10) 
0x40159b;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:61;MOV	%RAX,%R12;(10) 
0x40159e;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:64;XOR	%EDI,%EDI;(10) 
0x4015a0;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:64;CALL	401060 <srand@plt>;(10) 
0x4015a5;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;XOR	%EBX,%EBX;(10) 
0x4015a7;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;NOPW	(%RAX,%RAX,1);(10) 
0x4015b0;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:27;CALL	4010a0 <rand@plt>;  (6) 
0x4015b5;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOVSS	0xab3(%RIP),%XMM1;  (6) 
0x4015bd;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:27;XORPS	%XMM0,%XMM0;  (6) 
0x4015c0;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:27;CVTSI2SS	%EAX,%XMM0;  (6) 
0x4015c4;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:27;MULSS	%XMM1,%XMM0;  (6) 
0x4015c8;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:27;MOVSS	%XMM0,(%R15,%RBX,4);  (6) 
0x4015ce;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:26;ADD	$0x1,%RBX;  (6) 
0x4015d2;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:26;CMP	%RBX,%R14;  (6) 
0x4015d5;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:26;JNE	4015b0 <main+0x150>;  (6) 
0x4015d7;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%R15,-0x40(%RBP);(10) 
0x4015db;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;XOR	%EBX,%EBX;(10) 
0x4015dd;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;NOPL	(%RAX);(10) 
0x4015e0;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:27;CALL	4010a0 <rand@plt>;  (7) 
0x4015e5;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:27;XORPS	%XMM0,%XMM0;  (7) 
0x4015e8;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:27;CVTSI2SS	%EAX,%XMM0;  (7) 
0x4015ec;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:27;MULSS	0xa7c(%RIP),%XMM0;  (7) 
0x4015f4;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:27;MOVSS	%XMM0,(%R13,%RBX,4);  (7) 
0x4015fb;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:26;ADD	$0x1,%RBX;  (7) 
0x4015ff;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:26;CMP	%RBX,%R14;  (7) 
0x401602;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:26;JNE	4015e0 <main+0x180>;  (7) 
0x401604;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%R12,-0x30(%RBP);(10) 
0x401608;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%R12,%R15;(10) 
0x40160b;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;XOR	%R12D,%R12D;(10) 
0x40160e;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;XCHG	%AX,%AX;(10) 
0x401610;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;XOR	%EBX,%EBX;  (9) 
0x401612;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;NOPW	%CS:(%RAX,%RAX,1);  (9) 
0x40161c;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;NOPL	(%RAX);  (9) 
0x401620;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:17;CALL	4010a0 <rand@plt>;    (8) 
0x401625;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:17;XORPS	%XMM0,%XMM0;    (8) 
0x401628;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:17;CVTSI2SS	%EAX,%XMM0;    (8) 
0x40162c;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:17;MULSS	0xa3c(%RIP),%XMM0;    (8) 
0x401634;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:17;MOVSS	%XMM0,(%R15,%RBX,4);    (8) 
0x40163a;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:16;ADD	$0x1,%RBX;    (8) 
0x40163e;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:16;CMP	%RBX,%R14;    (8) 
0x401641;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:16;JNE	401620 <main+0x1c0>;    (8) 
0x401643;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:15;ADD	$0x1,%R12;  (9) 
0x401647;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:15;ADD	-0x60(%RBP),%R15;  (9) 
0x40164b;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:15;CMP	%R14,%R12;  (9) 
0x40164e;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:15;JNE	401610 <main+0x1b0>;  (9) 
0x401650;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:70;CMPL	$0,-0x48(%RBP);(10) 
0x401654;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:70;JE	401680 <main+0x220>;(10) 
0x401656;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x38(%RBP),%R15;(10) 
0x40165a;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:75;MOV	%R15D,%EDI;(10) 
0x40165d;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:75;MOV	-0x40(%RBP),%R12;(10) 
0x401661;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:75;MOV	%R12,%RSI;(10) 
0x401664;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:75;MOV	%R13,%RDX;(10) 
0x401667;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:75;MOV	-0x30(%RBP),%RCX;(10) 
0x40166b;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:75;CALL	4011c0 <baseline>;(10) 
0x401670;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;JMP	4016b7 <main+0x257>;(10) 
0x401672;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;NOPW	%CS:(%RAX,%RAX,1);
0x40167c;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;NOPL	(%RAX);
0x401680;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x50(%RBP),%RAX;(10) 
0x401684;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%EAX,%EBX;(10) 
0x401686;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;TEST	%EAX,%EAX;(10) 
0x401688;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x38(%RBP),%R15;(10) 
0x40168c;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x40(%RBP),%R12;(10) 
0x401690;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:71;JLE	4016b7 <main+0x257>;(10) 
0x401692;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:71;NOPW	%CS:(%RAX,%RAX,1);(10) 
0x40169c;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:71;NOPL	(%RAX);(10) 
0x4016a0;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:72;MOV	%R15D,%EDI;  (12) 
0x4016a3;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:72;MOV	%R12,%RSI;  (12) 
0x4016a6;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:72;MOV	%R13,%RDX;  (12) 
0x4016a9;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:72;MOV	-0x30(%RBP),%RCX;  (12) 
0x4016ad;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:72;CALL	4011c0 <baseline>;  (12) 
0x4016b2;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:71;ADD	$-0x1,%EBX;  (12) 
0x4016b5;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:71;JNE	4016a0 <main+0x240>;  (12) 
0x4016b7;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:79;XOR	%EAX,%EAX;(10) 
0x4016b9;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:79;CALL	401840 <rdtsc>;(10) 
0x4016be;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%RAX,-0x40(%RBP);(10) 
0x4016c2;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x58(%RBP),%RAX;(10) 
0x4016c6;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%EAX,%EBX;(10) 
0x4016c8;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;TEST	%EAX,%EAX;(10) 
0x4016ca;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:80;JLE	401510 <main+0xb0>;(10) 
0x4016d0;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:81;MOV	%R15D,%EDI;  (11) 
0x4016d3;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:81;MOV	%R12,%RSI;  (11) 
0x4016d6;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:81;MOV	%R13,%RDX;  (11) 
0x4016d9;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:81;MOV	-0x30(%RBP),%RCX;  (11) 
0x4016dd;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:81;CALL	4011c0 <baseline>;  (11) 
0x4016e2;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:80;ADD	$-0x1,%EBX;  (11) 
0x4016e5;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:80;JNE	4016d0 <main+0x270>;  (11) 
0x4016e7;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:80;JMP	401510 <main+0xb0>;(10) 
0x4016ec;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;XOR	%EBX,%EBX;
0x4016ee;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;JMP	401754 <main+0x2f4>;
0x4016f0;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:83;XOR	%EAX,%EAX;(3) 
0x4016f2;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:83;CALL	401840 <rdtsc>;(3) 
0x4016f7;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;SUB	-0x48(%RBP),%RAX;(3) 
0x4016fb;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;MOVQ	%RAX,%XMM1;(3) 
0x401700;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;PUNPCKLDQ	0x948(%RIP),%XMM1;(3) 
0x401708;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;SUBPD	0x950(%RIP),%XMM1;(3) 
0x401710;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;MOVAPD	%XMM1,%XMM0;(3) 
0x401714;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;UNPCKHPD	%XMM1,%XMM0;(3) 
0x401718;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;ADDSD	%XMM1,%XMM0;(3) 
0x40171c;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;MULSD	-0x68(%RBP),%XMM0;(3) 
0x401721;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;MOV	$0x4020ad,%EDI;(3) 
0x401726;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;MOV	$0x1,%AL;(3) 
0x401728;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;CALL	401050 <printf@plt>;(3) 
0x40172d;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:89;MOV	%R14,%RDI;(3) 
0x401730;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:89;CALL	401030 <free@plt>;(3) 
0x401735;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:90;MOV	%R15,%RDI;(3) 
0x401738;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:90;CALL	401030 <free@plt>;(3) 
0x40173d;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:91;MOV	%R12,%RDI;(3) 
0x401740;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:91;CALL	401030 <free@plt>;(3) 
0x401745;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x30(%RBP),%EBX;(3) 
0x401748;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:57;ADD	$0x1,%EBX;(3) 
0x40174b;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:57;CMP	$0x1f,%EBX;(3) 
0x40174e;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:57;JE	40180b <main+0x3ab>;(3) 
0x401754;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x60(%RBP),%R15;(3) 
0x401758;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:59;MOV	%R15,%RDI;(3) 
0x40175b;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:59;CALL	401090 <malloc@plt>;(3) 
0x401760;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:59;MOV	%RAX,%R14;(3) 
0x401763;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:60;MOV	%R15,%RDI;(3) 
0x401766;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:60;CALL	401090 <malloc@plt>;(3) 
0x40176b;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:60;MOV	%RAX,%R15;(3) 
0x40176e;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x70(%RBP),%RDI;(3) 
0x401772;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:61;CALL	401090 <malloc@plt>;(3) 
0x401777;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:61;MOV	%RAX,%R12;(3) 
0x40177a;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:64;XOR	%EDI,%EDI;(3) 
0x40177c;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:64;CALL	401060 <srand@plt>;(3) 
0x401781;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%EBX,-0x30(%RBP);(3) 
0x401784;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:70;TEST	%EBX,%EBX;(3) 
0x401786;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:70;JE	4017a0 <main+0x340>;(3) 
0x401788;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x38(%RBP),%R13;(3) 
0x40178c;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:75;MOV	%R13D,%EDI;(3) 
0x40178f;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:75;MOV	%R14,%RSI;(3) 
0x401792;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:75;MOV	%R15,%RDX;(3) 
0x401795;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:75;MOV	%R12,%RCX;(3) 
0x401798;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:75;CALL	4011c0 <baseline>;(3) 
0x40179d;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;JMP	4017c6 <main+0x366>;(3) 
0x40179f;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;NOP;
0x4017a0;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;CMPL	$0,-0x50(%RBP);(3) 
0x4017a4;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x38(%RBP),%R13;(3) 
0x4017a8;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:71;JLE	4017c6 <main+0x366>;(3) 
0x4017aa;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x50(%RBP),%RAX;(3) 
0x4017ae;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%EAX,%EBX;(3) 
0x4017b0;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:72;MOV	%R13D,%EDI;  (5) 
0x4017b3;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:72;MOV	%R14,%RSI;  (5) 
0x4017b6;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:72;MOV	%R15,%RDX;  (5) 
0x4017b9;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:72;MOV	%R12,%RCX;  (5) 
0x4017bc;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:72;CALL	4011c0 <baseline>;  (5) 
0x4017c1;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:71;ADD	$-0x1,%EBX;  (5) 
0x4017c4;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:71;JNE	4017b0 <main+0x350>;  (5) 
0x4017c6;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:79;XOR	%EAX,%EAX;(3) 
0x4017c8;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:79;CALL	401840 <rdtsc>;(3) 
0x4017cd;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%RAX,-0x48(%RBP);(3) 
0x4017d1;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;CMPL	$0,-0x58(%RBP);(3) 
0x4017d5;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:80;JLE	4016f0 <main+0x290>;(3) 
0x4017db;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x58(%RBP),%RAX;(3) 
0x4017df;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%EAX,%EBX;(3) 
0x4017e1;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;NOPW	%CS:(%RAX,%RAX,1);(3) 
0x4017eb;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;NOPL	(%RAX,%RAX,1);(3) 
0x4017f0;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:81;MOV	%R13D,%EDI;  (4) 
0x4017f3;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:81;MOV	%R14,%RSI;  (4) 
0x4017f6;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:81;MOV	%R15,%RDX;  (4) 
0x4017f9;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:81;MOV	%R12,%RCX;  (4) 
0x4017fc;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:81;CALL	4011c0 <baseline>;  (4) 
0x401801;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:80;ADD	$-0x1,%EBX;  (4) 
0x401804;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:80;JNE	4017f0 <main+0x390>;  (4) 
0x401806;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:80;JMP	4016f0 <main+0x290>;(3) 
0x40180b;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:93;XOR	%EAX,%EAX;
0x40180d;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:93;ADD	$0x48,%RSP;
0x401811;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:93;POP	%RBX;
0x401812;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:93;POP	%R12;
0x401814;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:93;POP	%R13;
0x401816;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:93;POP	%R14;
0x401818;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:93;POP	%R15;
0x40181a;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:93;POP	%RBP;
0x40181b;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:93;RET;
0x40181c;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:42;MOV	0x285d(%RIP),%RDI;
0x401823;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:42;MOV	(%R14),%RDX;
0x401826;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:42;MOV	$0x402074,%ESI;
0x40182b;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:42;XOR	%EAX,%EAX;
0x40182d;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:42;CALL	401070 <fprintf@plt>;
0x401832;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:43;CALL	401040 <abort@plt>;
0x401837;:0;NOPW	(%RAX,%RAX,1);
