address;source_location;insn;indent
0x1140;:0;ENDBR64;
0x1144;:0;PUSH	%R15;
0x1146;:0;PUSH	%R14;
0x1148;:0;PUSH	%R13;
0x114a;:0;PUSH	%R12;
0x114c;:0;PUSH	%RBP;
0x114d;:0;LEA	(%RSI),%RBP;
0x1150;:0;PUSH	%RBX;
0x1151;:0;LEA	-0x68(%RSP),%RSP;
0x1156;:0;CMP	$0x4,%EDI;
0x1159;:0;JNE	1451 <main+0x311>;
0x115f;:0;MOV	0x8(%RSI),%RDI;
0x1163;:0;MOV	$0xa,%EDX;
0x1168;:0;XOR	%ESI,%ESI;
0x116a;:0;CALL	10f0 <.plt.sec@start+0x30>;
0x116f;:0;MOV	0x10(%RBP),%RDI;
0x1173;:0;MOV	$0xa,%EDX;
0x1178;:0;XOR	%ESI,%ESI;
0x117a;:0;LEA	(%RAX),%RBX;
0x117d;:0;LEA	(%RAX),%R15D;
0x1180;:0;LEA	(%RAX),%R14D;
0x1183;:0;MOV	%EAX,0x1c(%RSP);
0x1187;:0;CALL	10f0 <.plt.sec@start+0x30>;
0x118c;:0;MOV	0x18(%RBP),%RDI;
0x1190;:0;MOV	$0xa,%EDX;
0x1195;:0;MOV	%EAX,0x5c(%RSP);
0x1199;:0;XOR	%ESI,%ESI;
0x119b;:0;CALL	10f0 <.plt.sec@start+0x30>;
0x11a0;:0;MOV	%EAX,0x50(%RSP);
0x11a4;:0;LEA	(%RAX),%ECX;
0x11a6;:0;VCVTUSI2SS	%R15D,%XMM4,%XMM4;
0x11ac;:0;LEA	(%RBX),%EAX;
0x11ae;:0;SAL	$0x2,%RAX;
0x11b2;:0;MOV	%RAX,0x40(%RSP);
0x11b7;:0;LEA	(%RBX),%EAX;
0x11b9;:0;IMUL	%EBX,%EAX;
0x11bc;:0;VCVTSI2SS	%ECX,%XMM5,%XMM5;
0x11c0;:0;MOVL	$0,0x18(%RSP);
0x11c8;:0;VMOVSS	%XMM4,0x54(%RSP);
0x11ce;:0;SAL	$0x2,%RAX;
0x11d2;:0;MOV	%RAX,0x48(%RSP);
0x11d7;:0;LEA	-0x1(%RBX),%EAX;
0x11da;:0;MOVSXD	%EBX,%RBX;
0x11dd;:0;LEA	0x4(,%RAX,4),%RAX;
0x11e5;:0;VMOVSS	%XMM5,0x58(%RSP);
0x11eb;:0;MOV	%RBX,%RDX;
0x11ee;:0;SAL	$0x2,%RDX;
0x11f2;:0;MOV	%RDX,0x8(%RSP);
0x11f7;:0;MOV	%RAX,0x10(%RSP);
0x11fc;:0;NOPL	(%RAX);
0x1200;:0;MOV	0x40(%RSP),%RBX;(0) 
0x1205;:0;MOV	%RBX,%RDI;(0) 
0x1208;:0;CALL	1100 <.plt.sec@start+0x40>;(0) 
0x120d;:0;MOV	%RBX,%RDI;(0) 
0x1210;:0;LEA	(%RAX),%R12;(0) 
0x1213;:0;CALL	1100 <.plt.sec@start+0x40>;(0) 
0x1218;:0;MOV	0x48(%RSP),%RDI;(0) 
0x121d;:0;LEA	(%RAX),%RBP;(0) 
0x1220;:0;CALL	1100 <.plt.sec@start+0x40>;(0) 
0x1225;:0;XOR	%EDI,%EDI;(0) 
0x1227;:0;LEA	(%RAX),%R13;(0) 
0x122a;:0;CALL	10e0 <.plt.sec@start+0x20>;(0) 
0x122f;:0;MOV	0x1c(%RSP),%EDX;(0) 
0x1233;:0;TEST	%EDX,%EDX;(0) 
0x1235;:0;JLE	1321 <main+0x1e1>;(0) 
0x123b;:0;MOV	0x10(%RSP),%RAX;(0) 
0x1240;:0;LEA	(%R12),%R15;(0) 
0x1244;:0;MOV	%RAX,%RBX;(0) 
0x1247;:0;ADD	%R12,%RBX;(0) 
0x124a;:0;NOPW	(%RAX,%RAX,1);(0) 
0x1250;:0;CALL	1130 <.plt.sec@start+0x70>;  (3) 
0x1255;:0;VCVTSI2SS	%EAX,%XMM0,%XMM0;  (3) 
0x1259;:0;LEA	0x4(%R15),%R15;  (3) 
0x125d;:0;VMULSS	0xdef(%RIP),%XMM0,%XMM0;  (3) 
0x1265;:0;VMOVSS	%XMM0,-0x4(%R15);  (3) 
0x126b;:0;CMP	%RBX,%R15;  (3) 
0x126e;:0;JNE	1250 <main+0x110>;  (3) 
0x1270;:0;MOV	0x10(%RSP),%RAX;(0) 
0x1275;:0;LEA	(%RBP),%RBX;(0) 
0x1279;:0;LEA	(%RBP),%R15;(0) 
0x127d;:0;ADD	%RAX,%RBX;(0) 
0x1280;:0;CALL	1130 <.plt.sec@start+0x70>;  (4) 
0x1285;:0;VCVTSI2SS	%EAX,%XMM0,%XMM0;  (4) 
0x1289;:0;LEA	0x4(%R15),%R15;  (4) 
0x128d;:0;VMULSS	0xdbf(%RIP),%XMM0,%XMM0;  (4) 
0x1295;:0;VMOVSS	%XMM0,-0x4(%R15);  (4) 
0x129b;:0;CMP	%RBX,%R15;  (4) 
0x129e;:0;JNE	1280 <main+0x140>;  (4) 
0x12a0;:0;MOV	%R14D,0x20(%RSP);(0) 
0x12a5;:0;XOR	%R15D,%R15D;(0) 
0x12a8;:0;MOV	%RBP,0x30(%RSP);(0) 
0x12ad;:0;LEA	(%R13),%RBP;(0) 
0x12b1;:0;MOV	%R13,0x38(%RSP);(0) 
0x12b6;:0;MOV	%R15D,%R13D;(0) 
0x12b9;:0;MOV	%R12,0x28(%RSP);(0) 
0x12be;:0;MOV	0x1c(%RSP),%R14D;(0) 
0x12c3;:0;MOV	0x10(%RSP),%R15;(0) 
0x12c8;:0;NOPL	(%RAX,%RAX,1);(0) 
0x12d0;:0;MOV	%R15,%R12;  (6) 
0x12d3;:0;MOV	%RBP,%RBX;  (6) 
0x12d6;:0;ADD	%RBP,%R12;  (6) 
0x12d9;:0;NOPL	(%RAX);  (6) 
0x12e0;:0;CALL	1130 <.plt.sec@start+0x70>;    (5) 
0x12e5;:0;VCVTSI2SS	%EAX,%XMM0,%XMM0;    (5) 
0x12e9;:0;LEA	0x4(%RBX),%RBX;    (5) 
0x12ed;:0;VMULSS	0xd5f(%RIP),%XMM0,%XMM0;    (5) 
0x12f5;:0;VMOVSS	%XMM0,-0x4(%RBX);    (5) 
0x12fa;:0;CMP	%RBX,%R12;    (5) 
0x12fd;:0;JNE	12e0 <main+0x1a0>;    (5) 
0x12ff;:0;LEA	0x1(%R13),%R13D;  (6) 
0x1303;:0;ADD	0x8(%RSP),%RBP;  (6) 
0x1308;:0;CMP	%R13D,%R14D;  (6) 
0x130b;:0;JNE	12d0 <main+0x190>;  (6) 
0x130d;:0;MOV	0x20(%RSP),%R14D;(0) 
0x1312;:0;MOV	0x28(%RSP),%R12;(0) 
0x1317;:0;MOV	0x30(%RSP),%RBP;(0) 
0x131c;:0;MOV	0x38(%RSP),%R13;(0) 
0x1321;:0;MOV	0x18(%RSP),%EAX;(0) 
0x1325;:0;TEST	%EAX,%EAX;(0) 
0x1327;:0;JE	1418 <main+0x2d8>;(0) 
0x132d;:0;LEA	(%R13),%RCX;(0) 
0x1331;:0;LEA	(%RBP),%RDX;(0) 
0x1335;:0;LEA	(%R12),%RSI;(0) 
0x1339;:0;LEA	(%R14),%EDI;(0) 
0x133c;:0;CALL	1570 <baseline>;(0) 
0x1341;:0;XOR	%EAX,%EAX;(0) 
0x1343;:0;CALL	1de0 <rdtsc>;(0) 
0x1348;:0;MOV	%RAX,%R15;(0) 
0x134b;:0;MOV	0x50(%RSP),%EAX;(0) 
0x134f;:0;TEST	%EAX,%EAX;(0) 
0x1351;:0;JLE	1393 <main+0x253>;(0) 
0x1353;:0;MOV	%R15,0x20(%RSP);(0) 
0x1358;:0;XOR	%EBX,%EBX;(0) 
0x135a;:0;LEA	(%R13),%R15;(0) 
0x135e;:0;LEA	(%RAX),%R13D;(0) 
0x1361;:0;NOPW	%CS:(%RAX,%RAX,1);(0) 
0x136c;:0;NOPL	(%RAX);(0) 
0x1370;:0;LEA	(%R15),%RCX;  (1) 
0x1373;:0;LEA	(%RBP),%RDX;  (1) 
0x1377;:0;LEA	(%R12),%RSI;  (1) 
0x137b;:0;LEA	(%R14),%EDI;  (1) 
0x137e;:0;LEA	0x1(%RBX),%EBX;  (1) 
0x1381;:0;CALL	1570 <baseline>;  (1) 
0x1386;:0;CMP	%R13D,%EBX;  (1) 
0x1389;:0;JNE	1370 <main+0x230>;  (1) 
0x138b;:0;LEA	(%R15),%R13;(0) 
0x138e;:0;MOV	0x20(%RSP),%R15;(0) 
0x1393;:0;XOR	%EAX,%EAX;(0) 
0x1395;:0;CALL	1de0 <rdtsc>;(0) 
0x139a;:0;VMOVSS	0x54(%RSP),%XMM2;(0) 
0x13a0;:0;SUB	%R15,%RAX;(0) 
0x13a3;:0;VMULSS	%XMM2,%XMM2,%XMM1;(0) 
0x13a7;:0;LEA	0xc93(%RIP),%RSI;(0) 
0x13ae;:0;VCVTUSI2SS	%RAX,%XMM0,%XMM0;(0) 
0x13b4;:0;MOV	$0x1,%EDI;(0) 
0x13b9;:0;MOV	$0x1,%EAX;(0) 
0x13be;:0;VMULSS	%XMM2,%XMM1,%XMM1;(0) 
0x13c2;:0;VMULSS	0x58(%RSP),%XMM1,%XMM1;(0) 
0x13c8;:0;VDIVSS	%XMM1,%XMM0,%XMM0;(0) 
0x13cc;:0;VCVTSS2SD	%XMM0,%XMM0,%XMM0;(0) 
0x13d0;:0;CALL	1110 <.plt.sec@start+0x50>;(0) 
0x13d5;:0;LEA	(%R12),%RDI;(0) 
0x13d9;:0;CALL	10c0 <.plt.sec@start>;(0) 
0x13de;:0;LEA	(%RBP),%RDI;(0) 
0x13e2;:0;CALL	10c0 <.plt.sec@start>;(0) 
0x13e7;:0;LEA	(%R13),%RDI;(0) 
0x13eb;:0;CALL	10c0 <.plt.sec@start>;(0) 
0x13f0;:0;ADDL	$0x1,0x18(%RSP);(0) 
0x13f5;:0;MOV	0x18(%RSP),%EAX;(0) 
0x13f9;:0;CMP	$0x1f,%EAX;(0) 
0x13fc;:0;JNE	1200 <main+0xc0>;(0) 
0x1402;:0;LEA	0x68(%RSP),%RSP;
0x1407;:0;XOR	%EAX,%EAX;
0x1409;:0;POP	%RBX;
0x140a;:0;POP	%RBP;
0x140b;:0;POP	%R12;
0x140d;:0;POP	%R13;
0x140f;:0;POP	%R14;
0x1411;:0;POP	%R15;
0x1413;:0;RET;
0x1414;:0;NOPL	(%RAX);
0x1418;:0;MOV	0x5c(%RSP),%R15D;(0) 
0x141d;:0;XOR	%EBX,%EBX;(0) 
0x141f;:0;TEST	%R15D,%R15D;(0) 
0x1422;:0;JLE	1341 <main+0x201>;(0) 
0x1428;:0;NOPL	(%RAX,%RAX,1);(0) 
0x1430;:0;LEA	(%R13),%RCX;  (2) 
0x1434;:0;LEA	(%RBP),%RDX;  (2) 
0x1438;:0;LEA	(%R12),%RSI;  (2) 
0x143c;:0;LEA	(%R14),%EDI;  (2) 
0x143f;:0;LEA	0x1(%RBX),%EBX;  (2) 
0x1442;:0;CALL	1570 <baseline>;  (2) 
0x1447;:0;CMP	%R15D,%EBX;  (2) 
0x144a;:0;JNE	1430 <main+0x2f0>;  (2) 
0x144c;:0;JMP	1341 <main+0x201>;(0) 
0x1451;:0;MOV	(%RSI),%RCX;
0x1454;:0;LEA	0xbad(%RIP),%RDX;
0x145b;:0;MOV	0x2bbe(%RIP),%RDI;
0x1462;:0;MOV	$0x1,%ESI;
0x1467;:0;XOR	%EAX,%EAX;
0x1469;:0;CALL	1120 <.plt.sec@start+0x60>;
0x146e;:0;CALL	10d0 <.plt.sec@start+0x10>;
0x1473;:0;NOPW	%CS:(%RAX,%RAX,1);
0x147d;:0;NOPL	(%RAX);
