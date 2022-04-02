address;source_location;insn;indent
0x401410;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:39;PUSH	%RBP;
0x401411;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:39;MOV	%RSP,%RBP;
0x401414;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:39;PUSH	%R15;
0x401416;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:39;PUSH	%R14;
0x401418;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:39;PUSH	%R13;
0x40141a;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:39;PUSH	%R12;
0x40141c;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:39;PUSH	%RBX;
0x40141d;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:39;SUB	$0x48,%RSP;
0x401421;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:39;MOV	%RSI,%R14;
0x401424;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:41;CMP	$0x4,%EDI;
0x401427;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:41;JNE	4017bc <main+0x3ac>;
0x40142d;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:49;MOV	0x8(%R14),%RDI;
0x401431;/usr/include/stdlib.h:363;XOR	%ESI,%ESI;
0x401433;/usr/include/stdlib.h:363;MOV	$0xa,%EDX;
0x401438;/usr/include/stdlib.h:363;CALL	401080 <strtol@plt>;
0x40143d;/usr/include/stdlib.h:363;MOV	%RAX,%RBX;
0x401440;/usr/include/stdlib.h:363;MOV	%RAX,-0x38(%RBP);
0x401444;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:52;MOV	0x10(%R14),%RDI;
0x401448;/usr/include/stdlib.h:363;XOR	%ESI,%ESI;
0x40144a;/usr/include/stdlib.h:363;MOV	$0xa,%EDX;
0x40144f;/usr/include/stdlib.h:363;CALL	401080 <strtol@plt>;
0x401454;/usr/include/stdlib.h:0;MOV	%RAX,-0x50(%RBP);
0x401458;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:55;MOV	0x18(%R14),%RDI;
0x40145c;/usr/include/stdlib.h:363;XOR	%ESI,%ESI;
0x40145e;/usr/include/stdlib.h:363;MOV	$0xa,%EDX;
0x401463;/usr/include/stdlib.h:363;CALL	401080 <strtol@plt>;
0x401468;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%EBX,%R14D;
0x40146b;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;LEA	(,%R14,4),%RCX;
0x401473;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%RCX,-0x60(%RBP);
0x401477;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%EBX,%ECX;
0x401479;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;IMUL	%ECX,%ECX;
0x40147c;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;SAL	$0x2,%RCX;
0x401480;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%RCX,-0x70(%RBP);
0x401484;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;CVTSI2SD	%R14,%XMM0;
0x401489;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MULSD	%XMM0,%XMM0;
0x40148d;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%RAX,-0x58(%RBP);
0x401491;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;CVTSI2SD	%EAX,%XMM1;
0x401495;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MULSD	%XMM0,%XMM1;
0x401499;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOVSD	%XMM1,-0x68(%RBP);
0x40149e;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;TEST	%EBX,%EBX;
0x4014a0;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:57;JLE	40168c <main+0x27c>;
0x4014a6;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;XOR	%EAX,%EAX;
0x4014a8;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;JMP	401515 <main+0x105>;
0x4014aa;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;NOPW	(%RAX,%RAX,1);
0x4014b0;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:83;XOR	%EAX,%EAX;(10) 
0x4014b2;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:83;CALL	4017e0 <rdtsc>;(10) 
0x4014b7;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;SUB	-0x40(%RBP),%RAX;(10) 
0x4014bb;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;MOVQ	%RAX,%XMM1;(10) 
0x4014c0;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;PUNPCKLDQ	0xb78(%RIP),%XMM1;(10) 
0x4014c8;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;SUBPD	0xb80(%RIP),%XMM1;(10) 
0x4014d0;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;MOVAPD	%XMM1,%XMM0;(10) 
0x4014d4;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;UNPCKHPD	%XMM1,%XMM0;(10) 
0x4014d8;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;ADDSD	%XMM1,%XMM0;(10) 
0x4014dc;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;DIVSD	-0x68(%RBP),%XMM0;(10) 
0x4014e1;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;MOV	$0x40209d,%EDI;(10) 
0x4014e6;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;MOV	$0x1,%AL;(10) 
0x4014e8;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;CALL	401050 <printf@plt>;(10) 
0x4014ed;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:89;MOV	%R12,%RDI;(10) 
0x4014f0;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:89;CALL	401030 <free@plt>;(10) 
0x4014f5;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:90;MOV	%R13,%RDI;(10) 
0x4014f8;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:90;CALL	401030 <free@plt>;(10) 
0x4014fd;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x30(%RBP),%RDI;(10) 
0x401501;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:91;CALL	401030 <free@plt>;(10) 
0x401506;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x48(%RBP),%EAX;(10) 
0x401509;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:57;ADD	$0x1,%EAX;(10) 
0x40150c;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:57;CMP	$0x1f,%EAX;(10) 
0x40150f;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:57;JE	4017ab <main+0x39b>;(10) 
0x401515;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%EAX,-0x48(%RBP);(10) 
0x401518;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x60(%RBP),%RBX;(10) 
0x40151c;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:59;MOV	%RBX,%RDI;(10) 
0x40151f;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:59;CALL	401090 <malloc@plt>;(10) 
0x401524;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:59;MOV	%RAX,%R15;(10) 
0x401527;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:60;MOV	%RBX,%RDI;(10) 
0x40152a;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:60;CALL	401090 <malloc@plt>;(10) 
0x40152f;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:60;MOV	%RAX,%R13;(10) 
0x401532;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x70(%RBP),%RDI;(10) 
0x401536;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:61;CALL	401090 <malloc@plt>;(10) 
0x40153b;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:61;MOV	%RAX,%R12;(10) 
0x40153e;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:64;XOR	%EDI,%EDI;(10) 
0x401540;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:64;CALL	401060 <srand@plt>;(10) 
0x401545;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;XOR	%EBX,%EBX;(10) 
0x401547;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;NOPW	(%RAX,%RAX,1);(10) 
0x401550;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:27;CALL	4010a0 <rand@plt>;  (6) 
0x401555;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOVSS	0xb03(%RIP),%XMM1;  (6) 
0x40155d;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:27;XORPS	%XMM0,%XMM0;  (6) 
0x401560;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:27;CVTSI2SS	%EAX,%XMM0;  (6) 
0x401564;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:27;MULSS	%XMM1,%XMM0;  (6) 
0x401568;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:27;MOVSS	%XMM0,(%R15,%RBX,4);  (6) 
0x40156e;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:26;ADD	$0x1,%RBX;  (6) 
0x401572;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:26;CMP	%RBX,%R14;  (6) 
0x401575;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:26;JNE	401550 <main+0x140>;  (6) 
0x401577;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%R15,-0x40(%RBP);(10) 
0x40157b;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;XOR	%EBX,%EBX;(10) 
0x40157d;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;NOPL	(%RAX);(10) 
0x401580;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:27;CALL	4010a0 <rand@plt>;  (7) 
0x401585;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:27;XORPS	%XMM0,%XMM0;  (7) 
0x401588;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:27;CVTSI2SS	%EAX,%XMM0;  (7) 
0x40158c;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:27;MULSS	0xacc(%RIP),%XMM0;  (7) 
0x401594;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:27;MOVSS	%XMM0,(%R13,%RBX,4);  (7) 
0x40159b;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:26;ADD	$0x1,%RBX;  (7) 
0x40159f;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:26;CMP	%RBX,%R14;  (7) 
0x4015a2;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:26;JNE	401580 <main+0x170>;  (7) 
0x4015a4;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%R12,-0x30(%RBP);(10) 
0x4015a8;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%R12,%R15;(10) 
0x4015ab;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;XOR	%R12D,%R12D;(10) 
0x4015ae;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;XCHG	%AX,%AX;(10) 
0x4015b0;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;XOR	%EBX,%EBX;  (9) 
0x4015b2;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;NOPW	%CS:(%RAX,%RAX,1);  (9) 
0x4015bc;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;NOPL	(%RAX);  (9) 
0x4015c0;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:17;CALL	4010a0 <rand@plt>;    (8) 
0x4015c5;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:17;XORPS	%XMM0,%XMM0;    (8) 
0x4015c8;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:17;CVTSI2SS	%EAX,%XMM0;    (8) 
0x4015cc;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:17;MULSS	0xa8c(%RIP),%XMM0;    (8) 
0x4015d4;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:17;MOVSS	%XMM0,(%R15,%RBX,4);    (8) 
0x4015da;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:16;ADD	$0x1,%RBX;    (8) 
0x4015de;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:16;CMP	%RBX,%R14;    (8) 
0x4015e1;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:16;JNE	4015c0 <main+0x1b0>;    (8) 
0x4015e3;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:15;ADD	$0x1,%R12;  (9) 
0x4015e7;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:15;ADD	-0x60(%RBP),%R15;  (9) 
0x4015eb;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:15;CMP	%R14,%R12;  (9) 
0x4015ee;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:15;JNE	4015b0 <main+0x1a0>;  (9) 
0x4015f0;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:70;CMPL	$0,-0x48(%RBP);(10) 
0x4015f4;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:70;JE	401620 <main+0x210>;(10) 
0x4015f6;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x38(%RBP),%R15;(10) 
0x4015fa;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:75;MOV	%R15D,%EDI;(10) 
0x4015fd;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:75;MOV	-0x40(%RBP),%R12;(10) 
0x401601;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:75;MOV	%R12,%RSI;(10) 
0x401604;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:75;MOV	%R13,%RDX;(10) 
0x401607;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:75;MOV	-0x30(%RBP),%RCX;(10) 
0x40160b;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:75;CALL	4011a0 <baseline>;(10) 
0x401610;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;JMP	401657 <main+0x247>;(10) 
0x401612;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;NOPW	%CS:(%RAX,%RAX,1);
0x40161c;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;NOPL	(%RAX);
0x401620;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x50(%RBP),%RAX;(10) 
0x401624;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%EAX,%EBX;(10) 
0x401626;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;TEST	%EAX,%EAX;(10) 
0x401628;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x38(%RBP),%R15;(10) 
0x40162c;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x40(%RBP),%R12;(10) 
0x401630;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:71;JLE	401657 <main+0x247>;(10) 
0x401632;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:71;NOPW	%CS:(%RAX,%RAX,1);(10) 
0x40163c;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:71;NOPL	(%RAX);(10) 
0x401640;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:72;MOV	%R15D,%EDI;  (12) 
0x401643;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:72;MOV	%R12,%RSI;  (12) 
0x401646;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:72;MOV	%R13,%RDX;  (12) 
0x401649;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:72;MOV	-0x30(%RBP),%RCX;  (12) 
0x40164d;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:72;CALL	4011a0 <baseline>;  (12) 
0x401652;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:71;ADD	$-0x1,%EBX;  (12) 
0x401655;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:71;JNE	401640 <main+0x230>;  (12) 
0x401657;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:79;XOR	%EAX,%EAX;(10) 
0x401659;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:79;CALL	4017e0 <rdtsc>;(10) 
0x40165e;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%RAX,-0x40(%RBP);(10) 
0x401662;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x58(%RBP),%RAX;(10) 
0x401666;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%EAX,%EBX;(10) 
0x401668;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;TEST	%EAX,%EAX;(10) 
0x40166a;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:80;JLE	4014b0 <main+0xa0>;(10) 
0x401670;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:81;MOV	%R15D,%EDI;  (11) 
0x401673;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:81;MOV	%R12,%RSI;  (11) 
0x401676;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:81;MOV	%R13,%RDX;  (11) 
0x401679;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:81;MOV	-0x30(%RBP),%RCX;  (11) 
0x40167d;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:81;CALL	4011a0 <baseline>;  (11) 
0x401682;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:80;ADD	$-0x1,%EBX;  (11) 
0x401685;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:80;JNE	401670 <main+0x260>;  (11) 
0x401687;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:80;JMP	4014b0 <main+0xa0>;(10) 
0x40168c;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;XOR	%EBX,%EBX;
0x40168e;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;JMP	4016f4 <main+0x2e4>;
0x401690;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:83;XOR	%EAX,%EAX;(3) 
0x401692;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:83;CALL	4017e0 <rdtsc>;(3) 
0x401697;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;SUB	-0x48(%RBP),%RAX;(3) 
0x40169b;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;MOVQ	%RAX,%XMM1;(3) 
0x4016a0;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;PUNPCKLDQ	0x998(%RIP),%XMM1;(3) 
0x4016a8;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;SUBPD	0x9a0(%RIP),%XMM1;(3) 
0x4016b0;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;MOVAPD	%XMM1,%XMM0;(3) 
0x4016b4;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;UNPCKHPD	%XMM1,%XMM0;(3) 
0x4016b8;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;ADDSD	%XMM1,%XMM0;(3) 
0x4016bc;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;DIVSD	-0x68(%RBP),%XMM0;(3) 
0x4016c1;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;MOV	$0x40209d,%EDI;(3) 
0x4016c6;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;MOV	$0x1,%AL;(3) 
0x4016c8;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;CALL	401050 <printf@plt>;(3) 
0x4016cd;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:89;MOV	%R14,%RDI;(3) 
0x4016d0;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:89;CALL	401030 <free@plt>;(3) 
0x4016d5;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:90;MOV	%R15,%RDI;(3) 
0x4016d8;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:90;CALL	401030 <free@plt>;(3) 
0x4016dd;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:91;MOV	%R12,%RDI;(3) 
0x4016e0;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:91;CALL	401030 <free@plt>;(3) 
0x4016e5;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x30(%RBP),%EBX;(3) 
0x4016e8;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:57;ADD	$0x1,%EBX;(3) 
0x4016eb;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:57;CMP	$0x1f,%EBX;(3) 
0x4016ee;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:57;JE	4017ab <main+0x39b>;(3) 
0x4016f4;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x60(%RBP),%R15;(3) 
0x4016f8;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:59;MOV	%R15,%RDI;(3) 
0x4016fb;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:59;CALL	401090 <malloc@plt>;(3) 
0x401700;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:59;MOV	%RAX,%R14;(3) 
0x401703;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:60;MOV	%R15,%RDI;(3) 
0x401706;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:60;CALL	401090 <malloc@plt>;(3) 
0x40170b;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:60;MOV	%RAX,%R15;(3) 
0x40170e;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x70(%RBP),%RDI;(3) 
0x401712;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:61;CALL	401090 <malloc@plt>;(3) 
0x401717;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:61;MOV	%RAX,%R12;(3) 
0x40171a;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:64;XOR	%EDI,%EDI;(3) 
0x40171c;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:64;CALL	401060 <srand@plt>;(3) 
0x401721;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%EBX,-0x30(%RBP);(3) 
0x401724;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:70;TEST	%EBX,%EBX;(3) 
0x401726;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:70;JE	401740 <main+0x330>;(3) 
0x401728;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x38(%RBP),%R13;(3) 
0x40172c;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:75;MOV	%R13D,%EDI;(3) 
0x40172f;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:75;MOV	%R14,%RSI;(3) 
0x401732;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:75;MOV	%R15,%RDX;(3) 
0x401735;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:75;MOV	%R12,%RCX;(3) 
0x401738;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:75;CALL	4011a0 <baseline>;(3) 
0x40173d;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;JMP	401766 <main+0x356>;(3) 
0x40173f;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;NOP;
0x401740;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;CMPL	$0,-0x50(%RBP);(3) 
0x401744;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x38(%RBP),%R13;(3) 
0x401748;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:71;JLE	401766 <main+0x356>;(3) 
0x40174a;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x50(%RBP),%RAX;(3) 
0x40174e;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%EAX,%EBX;(3) 
0x401750;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:72;MOV	%R13D,%EDI;  (5) 
0x401753;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:72;MOV	%R14,%RSI;  (5) 
0x401756;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:72;MOV	%R15,%RDX;  (5) 
0x401759;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:72;MOV	%R12,%RCX;  (5) 
0x40175c;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:72;CALL	4011a0 <baseline>;  (5) 
0x401761;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:71;ADD	$-0x1,%EBX;  (5) 
0x401764;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:71;JNE	401750 <main+0x340>;  (5) 
0x401766;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:79;XOR	%EAX,%EAX;(3) 
0x401768;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:79;CALL	4017e0 <rdtsc>;(3) 
0x40176d;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%RAX,-0x48(%RBP);(3) 
0x401771;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;CMPL	$0,-0x58(%RBP);(3) 
0x401775;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:80;JLE	401690 <main+0x280>;(3) 
0x40177b;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x58(%RBP),%RAX;(3) 
0x40177f;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%EAX,%EBX;(3) 
0x401781;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;NOPW	%CS:(%RAX,%RAX,1);(3) 
0x40178b;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;NOPL	(%RAX,%RAX,1);(3) 
0x401790;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:81;MOV	%R13D,%EDI;  (4) 
0x401793;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:81;MOV	%R14,%RSI;  (4) 
0x401796;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:81;MOV	%R15,%RDX;  (4) 
0x401799;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:81;MOV	%R12,%RCX;  (4) 
0x40179c;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:81;CALL	4011a0 <baseline>;  (4) 
0x4017a1;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:80;ADD	$-0x1,%EBX;  (4) 
0x4017a4;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:80;JNE	401790 <main+0x380>;  (4) 
0x4017a6;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:80;JMP	401690 <main+0x280>;(3) 
0x4017ab;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:93;XOR	%EAX,%EAX;
0x4017ad;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:93;ADD	$0x48,%RSP;
0x4017b1;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:93;POP	%RBX;
0x4017b2;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:93;POP	%R12;
0x4017b4;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:93;POP	%R13;
0x4017b6;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:93;POP	%R14;
0x4017b8;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:93;POP	%R15;
0x4017ba;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:93;POP	%RBP;
0x4017bb;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:93;RET;
0x4017bc;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:42;MOV	0x28bd(%RIP),%RDI;
0x4017c3;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:42;MOV	(%R14),%RDX;
0x4017c6;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:42;MOV	$0x402064,%ESI;
0x4017cb;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:42;XOR	%EAX,%EAX;
0x4017cd;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:42;CALL	401070 <fprintf@plt>;
0x4017d2;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:43;CALL	401040 <abort@plt>;
0x4017d7;:0;NOPW	(%RAX,%RAX,1);
