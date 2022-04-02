address;source_location;insn;indent
0x401410;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:39;PUSH	%RBP;
0x401411;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:39;MOV	%RSP,%RBP;
0x401414;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:39;PUSH	%R15;
0x401416;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:39;PUSH	%R14;
0x401418;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:39;PUSH	%R13;
0x40141a;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:39;PUSH	%R12;
0x40141c;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:39;PUSH	%RBX;
0x40141d;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:39;SUB	$0x58,%RSP;
0x401421;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:39;MOV	%RSI,%R14;
0x401424;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:41;CMP	$0x4,%EDI;
0x401427;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:41;JNE	4016cd <main+0x2bd>;
0x40142d;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:49;MOV	0x8(%R14),%RDI;
0x401431;/usr/include/stdlib.h:363;XOR	%ESI,%ESI;
0x401433;/usr/include/stdlib.h:363;MOV	$0xa,%EDX;
0x401438;/usr/include/stdlib.h:363;CALL	401080 <strtol@plt>;
0x40143d;/usr/include/stdlib.h:363;MOV	%RAX,%R13;
0x401440;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:52;MOV	0x10(%R14),%RDI;
0x401444;/usr/include/stdlib.h:363;XOR	%ESI,%ESI;
0x401446;/usr/include/stdlib.h:363;MOV	$0xa,%EDX;
0x40144b;/usr/include/stdlib.h:363;CALL	401080 <strtol@plt>;
0x401450;/usr/include/stdlib.h:0;MOV	%RAX,-0x58(%RBP);
0x401454;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:55;MOV	0x18(%R14),%RDI;
0x401458;/usr/include/stdlib.h:363;XOR	%ESI,%ESI;
0x40145a;/usr/include/stdlib.h:363;MOV	$0xa,%EDX;
0x40145f;/usr/include/stdlib.h:363;CALL	401080 <strtol@plt>;
0x401464;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%R13D,%R12D;
0x401467;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;LEA	(,%R12,4),%RCX;
0x40146f;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%RCX,-0x68(%RBP);
0x401473;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%R13D,%ECX;
0x401476;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;IMUL	%ECX,%ECX;
0x401479;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;SAL	$0x2,%RCX;
0x40147d;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%RCX,-0x78(%RBP);
0x401481;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;CVTSI2SD	%R12,%XMM0;
0x401486;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MULSD	%XMM0,%XMM0;
0x40148a;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%RAX,-0x60(%RBP);
0x40148e;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;CVTSI2SD	%EAX,%XMM1;
0x401492;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MULSD	%XMM0,%XMM1;
0x401496;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOVSD	%XMM1,-0x70(%RBP);
0x40149b;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;XOR	%EAX,%EAX;
0x40149d;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%R13,-0x40(%RBP);
0x4014a1;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;JMP	401518 <main+0x108>;
0x4014a3;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;NOPW	%CS:(%RAX,%RAX,1);
0x4014ad;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;NOPL	(%RAX);
0x4014b0;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:83;XOR	%EAX,%EAX;(3) 
0x4014b2;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:83;CALL	4016f0 <rdtsc>;(3) 
0x4014b7;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;SUB	-0x30(%RBP),%RAX;(3) 
0x4014bb;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;MOVQ	%RAX,%XMM1;(3) 
0x4014c0;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;PUNPCKLDQ	0xb88(%RIP),%XMM1;(3) 
0x4014c8;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;SUBPD	0xb90(%RIP),%XMM1;(3) 
0x4014d0;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;MOVAPD	%XMM1,%XMM0;(3) 
0x4014d4;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;UNPCKHPD	%XMM1,%XMM0;(3) 
0x4014d8;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;ADDSD	%XMM1,%XMM0;(3) 
0x4014dc;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;DIVSD	-0x70(%RBP),%XMM0;(3) 
0x4014e1;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;MOV	$0x4020a9,%EDI;(3) 
0x4014e6;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;MOV	$0x1,%AL;(3) 
0x4014e8;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:86;CALL	401050 <printf@plt>;(3) 
0x4014ed;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:89;MOV	%R14,%RDI;(3) 
0x4014f0;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:89;CALL	401030 <free@plt>;(3) 
0x4014f5;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:90;MOV	%R13,%RDI;(3) 
0x4014f8;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:90;CALL	401030 <free@plt>;(3) 
0x4014fd;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:91;MOV	%R15,%RDI;(3) 
0x401500;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:91;CALL	401030 <free@plt>;(3) 
0x401505;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x34(%RBP),%EAX;(3) 
0x401508;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:57;ADD	$0x1,%EAX;(3) 
0x40150b;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:57;CMP	$0x1f,%EAX;(3) 
0x40150e;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:57;MOV	-0x40(%RBP),%R13;(3) 
0x401512;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:57;JE	4016bc <main+0x2ac>;(3) 
0x401518;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%EAX,-0x34(%RBP);(3) 
0x40151b;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x68(%RBP),%RBX;(3) 
0x40151f;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:59;MOV	%RBX,%RDI;(3) 
0x401522;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:59;CALL	401090 <malloc@plt>;(3) 
0x401527;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%RAX,-0x30(%RBP);(3) 
0x40152b;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:60;MOV	%RBX,%RDI;(3) 
0x40152e;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:60;CALL	401090 <malloc@plt>;(3) 
0x401533;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%RAX,-0x48(%RBP);(3) 
0x401537;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x78(%RBP),%RDI;(3) 
0x40153b;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:61;CALL	401090 <malloc@plt>;(3) 
0x401540;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%RAX,-0x50(%RBP);(3) 
0x401544;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:64;XOR	%EDI,%EDI;(3) 
0x401546;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:64;CALL	401060 <srand@plt>;(3) 
0x40154b;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;TEST	%R13D,%R13D;(3) 
0x40154e;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:26;JLE	401610 <main+0x200>;(3) 
0x401554;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;XOR	%EBX,%EBX;(3) 
0x401556;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x30(%RBP),%R14;(3) 
0x40155a;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;NOPW	(%RAX,%RAX,1);(3) 
0x401560;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:27;CALL	4010a0 <rand@plt>;  (6) 
0x401565;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOVSS	0xad3(%RIP),%XMM1;  (6) 
0x40156d;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:27;XORPS	%XMM0,%XMM0;  (6) 
0x401570;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:27;CVTSI2SS	%EAX,%XMM0;  (6) 
0x401574;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:27;MULSS	%XMM1,%XMM0;  (6) 
0x401578;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:27;MOVSS	%XMM0,(%R14,%RBX,4);  (6) 
0x40157e;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:26;ADD	$0x1,%RBX;  (6) 
0x401582;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:26;CMP	%RBX,%R12;  (6) 
0x401585;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:26;JNE	401560 <main+0x150>;  (6) 
0x401587;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;XOR	%EBX,%EBX;(3) 
0x401589;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x50(%RBP),%R15;(3) 
0x40158d;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x48(%RBP),%R14;(3) 
0x401591;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;NOPW	%CS:(%RAX,%RAX,1);(3) 
0x40159b;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;NOPL	(%RAX,%RAX,1);(3) 
0x4015a0;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:27;CALL	4010a0 <rand@plt>;  (7) 
0x4015a5;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:27;XORPS	%XMM0,%XMM0;  (7) 
0x4015a8;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:27;CVTSI2SS	%EAX,%XMM0;  (7) 
0x4015ac;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:27;MULSS	0xa8c(%RIP),%XMM0;  (7) 
0x4015b4;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:27;MOVSS	%XMM0,(%R14,%RBX,4);  (7) 
0x4015ba;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:26;ADD	$0x1,%RBX;  (7) 
0x4015be;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:26;CMP	%RBX,%R12;  (7) 
0x4015c1;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:26;JNE	4015a0 <main+0x190>;  (7) 
0x4015c3;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;XOR	%EBX,%EBX;(3) 
0x4015c5;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;NOPW	%CS:(%RAX,%RAX,1);(3) 
0x4015cf;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;NOP;(3) 
0x4015d0;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;XOR	%R14D,%R14D;  (9) 
0x4015d3;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;NOPW	%CS:(%RAX,%RAX,1);  (9) 
0x4015dd;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;NOPL	(%RAX);  (9) 
0x4015e0;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:17;CALL	4010a0 <rand@plt>;    (8) 
0x4015e5;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:17;XORPS	%XMM0,%XMM0;    (8) 
0x4015e8;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:17;CVTSI2SS	%EAX,%XMM0;    (8) 
0x4015ec;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:17;MULSS	0xa4c(%RIP),%XMM0;    (8) 
0x4015f4;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:17;MOVSS	%XMM0,(%R15,%R14,4);    (8) 
0x4015fa;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:16;ADD	$0x1,%R14;    (8) 
0x4015fe;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:16;CMP	%R14,%R12;    (8) 
0x401601;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:16;JNE	4015e0 <main+0x1d0>;    (8) 
0x401603;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:15;ADD	$0x1,%RBX;  (9) 
0x401607;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:15;ADD	-0x68(%RBP),%R15;  (9) 
0x40160b;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:15;CMP	%R12,%RBX;  (9) 
0x40160e;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:15;JNE	4015d0 <main+0x1c0>;  (9) 
0x401610;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x34(%RBP),%EAX;(3) 
0x401613;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:70;TEST	%EAX,%EAX;(3) 
0x401615;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:70;JE	401640 <main+0x230>;(3) 
0x401617;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x40(%RBP),%RDI;(3) 
0x40161b;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x30(%RBP),%R14;(3) 
0x40161f;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:75;MOV	%R14,%RSI;(3) 
0x401622;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:75;MOV	-0x48(%RBP),%R13;(3) 
0x401626;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:75;MOV	%R13,%RDX;(3) 
0x401629;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:75;MOV	-0x50(%RBP),%R15;(3) 
0x40162d;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:75;MOV	%R15,%RCX;(3) 
0x401630;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:75;CALL	4011a0 <baseline>;(3) 
0x401635;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;JMP	401677 <main+0x267>;(3) 
0x401637;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;NOPW	(%RAX,%RAX,1);
0x401640;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;CMPL	$0,-0x58(%RBP);(3) 
0x401644;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x30(%RBP),%R14;(3) 
0x401648;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x50(%RBP),%R15;(3) 
0x40164c;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x48(%RBP),%R13;(3) 
0x401650;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:71;JLE	401677 <main+0x267>;(3) 
0x401652;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x58(%RBP),%RAX;(3) 
0x401656;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%EAX,%EBX;(3) 
0x401658;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;NOPL	(%RAX,%RAX,1);(3) 
0x401660;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x40(%RBP),%RDI;  (5) 
0x401664;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:72;MOV	%R14,%RSI;  (5) 
0x401667;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:72;MOV	%R13,%RDX;  (5) 
0x40166a;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:72;MOV	%R15,%RCX;  (5) 
0x40166d;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:72;CALL	4011a0 <baseline>;  (5) 
0x401672;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:71;ADD	$-0x1,%EBX;  (5) 
0x401675;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:71;JNE	401660 <main+0x250>;  (5) 
0x401677;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:79;XOR	%EAX,%EAX;(3) 
0x401679;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:79;CALL	4016f0 <rdtsc>;(3) 
0x40167e;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%RAX,-0x30(%RBP);(3) 
0x401682;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;CMPL	$0,-0x60(%RBP);(3) 
0x401686;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:80;JLE	4014b0 <main+0xa0>;(3) 
0x40168c;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x60(%RBP),%RAX;(3) 
0x401690;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	%EAX,%EBX;(3) 
0x401692;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;NOPW	%CS:(%RAX,%RAX,1);(3) 
0x40169c;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;NOPL	(%RAX);(3) 
0x4016a0;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:0;MOV	-0x40(%RBP),%RDI;  (4) 
0x4016a4;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:81;MOV	%R14,%RSI;  (4) 
0x4016a7;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:81;MOV	%R13,%RDX;  (4) 
0x4016aa;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:81;MOV	%R15,%RCX;  (4) 
0x4016ad;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:81;CALL	4011a0 <baseline>;  (4) 
0x4016b2;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:80;ADD	$-0x1,%EBX;  (4) 
0x4016b5;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:80;JNE	4016a0 <main+0x290>;  (4) 
0x4016b7;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:80;JMP	4014b0 <main+0xa0>;(3) 
0x4016bc;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:93;XOR	%EAX,%EAX;
0x4016be;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:93;ADD	$0x58,%RSP;
0x4016c2;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:93;POP	%RBX;
0x4016c3;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:93;POP	%R12;
0x4016c5;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:93;POP	%R13;
0x4016c7;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:93;POP	%R14;
0x4016c9;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:93;POP	%R15;
0x4016cb;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:93;POP	%RBP;
0x4016cc;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:93;RET;
0x4016cd;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:42;MOV	0x29ac(%RIP),%RDI;
0x4016d4;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:42;MOV	(%R14),%RDX;
0x4016d7;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:42;MOV	$0x402070,%ESI;
0x4016dc;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:42;XOR	%EAX,%EAX;
0x4016de;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:42;CALL	401070 <fprintf@plt>;
0x4016e3;/home/lucas/AOA/AOA_Etude_de_cas/driver_mesure.c:43;CALL	401040 <abort@plt>;
0x4016e8;:0;NOPL	(%RAX,%RAX,1);
