address;source_location;insn;indent
0x1650;/users/user4442/AOA_Etude_de_cas/kernel.c:50;ENDBR64;
0x1654;/users/user4442/AOA_Etude_de_cas/kernel.c:50;MOV	%EDI,%R8D;
0x1657;/users/user4442/AOA_Etude_de_cas/kernel.c:53;TEST	%EDI,%EDI;
0x1659;/users/user4442/AOA_Etude_de_cas/kernel.c:53;JE	16a3 <baseline+0x53>;
0x165b;/users/user4442/AOA_Etude_de_cas/kernel.c:53;LEA	-0x1(%RDI),%R9D;
0x165f;/users/user4442/AOA_Etude_de_cas/kernel.c:53;MOV	%RCX,%R10;
0x1662;/users/user4442/AOA_Etude_de_cas/kernel.c:53;SAL	$0x2,%R8;
0x1666;/users/user4442/AOA_Etude_de_cas/kernel.c:53;LEA	0x4(%RCX,%R9,4),%R11;
0x166b;/users/user4442/AOA_Etude_de_cas/kernel.c:53;NOPL	(%RAX,%RAX,1);
0x1670;/users/user4442/AOA_Etude_de_cas/kernel.c:50;MOV	%R10,%RCX;(9) 
0x1673;/users/user4442/AOA_Etude_de_cas/kernel.c:50;XOR	%EAX,%EAX;(9) 
0x1675;/users/user4442/AOA_Etude_de_cas/kernel.c:50;NOPL	(%RAX);(9) 
0x1678;/users/user4442/AOA_Etude_de_cas/kernel.c:55;MOVSS	(%RCX),%XMM0;  (8) 
0x167c;/users/user4442/AOA_Etude_de_cas/kernel.c:55;DIVSS	(%RDX,%RAX,4),%XMM0;  (8) 
0x1681;/users/user4442/AOA_Etude_de_cas/kernel.c:55;MOV	%RAX,%RDI;  (8) 
0x1684;/users/user4442/AOA_Etude_de_cas/kernel.c:55;ADD	%R8,%RCX;  (8) 
0x1687;/users/user4442/AOA_Etude_de_cas/kernel.c:55;ADDSS	(%RSI,%RAX,4),%XMM0;  (8) 
0x168c;/users/user4442/AOA_Etude_de_cas/kernel.c:55;MOVSS	%XMM0,(%RSI,%RAX,4);  (8) 
0x1691;/users/user4442/AOA_Etude_de_cas/kernel.c:54;ADD	$0x1,%RAX;  (8) 
0x1695;/users/user4442/AOA_Etude_de_cas/kernel.c:54;CMP	%RDI,%R9;  (8) 
0x1698;/users/user4442/AOA_Etude_de_cas/kernel.c:54;JNE	1678 <baseline+0x28>;  (8) 
0x169a;/users/user4442/AOA_Etude_de_cas/kernel.c:53;ADD	$0x4,%R10;(9) 
0x169e;/users/user4442/AOA_Etude_de_cas/kernel.c:53;CMP	%R10,%R11;(9) 
0x16a1;/users/user4442/AOA_Etude_de_cas/kernel.c:53;JNE	1670 <baseline+0x20>;(9) 
0x16a3;/users/user4442/AOA_Etude_de_cas/kernel.c:58;RET;
