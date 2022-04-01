_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n<ul><li>__intel_new_feature_proc_init: 1 occurrences</li><li>abort@plt: 1 occurrences</li><li>atol@plt: 3 occurrences</li><li>fprintf@plt: 1 occurrences</li></ul>",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements.",
          details = "<ul><li>CVTSI2SS (INT32/64 to FP32, scalar): 2 occurrences</li></ul>",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "3 SSE or AVX instructions are processing arithmetic or math operations on single precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function is composed of 3 FP arithmetical operations:\n<ul><li>3: multiply</li></ul>The binary function is loading 60 bytes (15 single precision FP elements).\nThe binary function is storing 48 bytes (12 single precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.03 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "<table><tr><td>nb instructions</td><td>69</td></tr><tr><td>loop length</td><td>260</td></tr><tr><td>used x86 registers</td><td>12</td></tr><tr><td>used mmx registers</td><td>0</td></tr><tr><td>used xmm registers</td><td>3</td></tr><tr><td>used ymm registers</td><td>0</td></tr><tr><td>used zmm registers</td><td>0</td></tr><tr><td>nb stack references</td><td>7</td></tr></table>",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\n<table><tr><td>instruction fetch</td><td>17.00 cycles</td></tr><tr><td>instruction queue</td><td>34.50 cycles</td></tr><tr><td>decoding</td><td>34.50 cycles</td></tr><tr><td>micro-operation queue</td><td>40.00 cycles</td></tr><tr><td>front end</td><td>40.00 cycles</td></tr></table>",
        },
        {
          title = "Back-end",
          txt = "<table><tr><th>      </th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>P6</th></tr><tr><td>uops</td><td>3.00</td><td>3.00</td><td>11.50</td><td>11.50</td><td>24.00</td><td>24.00</td><td>14.00</td></tr><tr><td>cycles</td><td>3.00</td><td>3.00</td><td>11.50</td><td>11.50</td><td>24.00</td><td>24.00</td><td>14.00</td></tr></table>\n<table><tr><td>Cycles executing div or sqrt instructions</td><td>NA</td></tr></table>",
        },
        {
          title = "Cycles summary",
          txt = "<table><tr><td>Front-end</td><td>40.00</td></tr><tr><td>Dispatch</td><td>24.00</td></tr><tr><td>Overall L1</td><td>40.00</td></tr></table>",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\n<table><tr><td>all</td><td>6%</td></tr><tr><td>load</td><td>0%</td></tr><tr><td>store</td><td>0%</td></tr><tr><td>mul</td><td>0%</td></tr><tr><td>add-sub</td><td>NA (no add-sub vectorizable/vectorized instructions)</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>12%</td></tr></table>FP\n<table><tr><td>all</td><td>16%</td></tr><tr><td>load</td><td>0%</td></tr><tr><td>store</td><td>0%</td></tr><tr><td>mul</td><td>0%</td></tr><tr><td>add-sub</td><td>NA (no add-sub vectorizable/vectorized instructions)</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>100%</td></tr></table>INT+FP\n<table><tr><td>all</td><td>8%</td></tr><tr><td>load</td><td>0%</td></tr><tr><td>store</td><td>0%</td></tr><tr><td>mul</td><td>0%</td></tr><tr><td>add-sub</td><td>NA (no add-sub vectorizable/vectorized instructions)</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>17%</td></tr></table>",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\n<table><tr><td>all</td><td>10%</td></tr><tr><td>load</td><td>11%</td></tr><tr><td>store</td><td>8%</td></tr><tr><td>mul</td><td>6%</td></tr><tr><td>add-sub</td><td>NA (no add-sub vectorizable/vectorized instructions)</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>10%</td></tr></table>FP\n<table><tr><td>all</td><td>9%</td></tr><tr><td>load</td><td>6%</td></tr><tr><td>store</td><td>6%</td></tr><tr><td>mul</td><td>6%</td></tr><tr><td>add-sub</td><td>NA (no add-sub vectorizable/vectorized instructions)</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>25%</td></tr></table>INT+FP\n<table><tr><td>all</td><td>10%</td></tr><tr><td>load</td><td>10%</td></tr><tr><td>store</td><td>8%</td></tr><tr><td>mul</td><td>6%</td></tr><tr><td>add-sub</td><td>NA (no add-sub vectorizable/vectorized instructions)</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>11%</td></tr></table>",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 40.00 cycles. At this rate:\n<ul><li>1% of peak load performance is reached (1.50 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))</li><li>1% of peak store performance is reached (1.20 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))</li></ul>",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 40.00 to 34.50 cycles (1.16x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 401290\n\n<table><tr><th>Instruction</th><th>Nb FU</th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>P6</th><th>Latency</th><th>Recip. throughput</th></tr><tr><td>PUSH %RBP</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>1</td><td>0</td><td>0</td><td>1</td></tr><tr><td>MOV %RSP,%RBP</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>AND $-0x80,%RSP</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>PUSH %R13</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>1</td><td>0</td><td>0</td><td>1</td></tr><tr><td>PUSH %R14</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>1</td><td>0</td><td>0</td><td>1</td></tr><tr><td>PUSH %R15</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>1</td><td>0</td><td>0</td><td>1</td></tr><tr><td>PUSH %RBX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>1</td><td>0</td><td>0</td><td>1</td></tr><tr><td>SUB $0xe0,%RSP</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOV %RSI,%R14</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>MOV %EDI,%EBX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>MOV $0x3,%EDI</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>XOR %ESI,%ESI</td></tr><tr><td>CALL 4016b0 <__intel_new_feature_proc_init></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>2</td></tr><tr><td>STMXCSR (%RSP)</td><td>5</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1.50</td><td>1.50</td><td>1</td><td>0</td><td>15</td></tr><tr><td>ORL $0x8040,(%RSP)</td><td>1</td><td>0</td><td>0</td><td>1.50</td><td>0.50</td><td>0.50</td><td>0.50</td><td>1</td><td>6</td><td>1</td></tr><tr><td>LDMXCSR (%RSP)</td><td>6</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>2.50</td><td>2.50</td><td>0</td><td>0</td><td>21</td></tr><tr><td>CMP $0x4,%EBX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>JNE 40158f <main+0x2ff></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>1-2</td></tr><tr><td>MOV 0x8(%R14),%RDI</td><td>1</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>CALL 401130 <atol@plt></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>2</td></tr><tr><td>MOV %RAX,%R13</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>MOV 0x10(%R14),%RDI</td><td>1</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>MOV %R13D,%R15D</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>CALL 401130 <atol@plt></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>2</td></tr><tr><td>MOV 0x18(%R14),%RDI</td><td>1</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>MOV %EAX,%EBX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>CALL 401130 <atol@plt></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>2</td></tr><tr><td>MOV %R13D,%ECX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>PXOR %XMM2,%XMM2</td></tr><tr><td>CVTSI2SS %RCX,%XMM2</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>MOVAPS %XMM2,%XMM0</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>PXOR %XMM1,%XMM1</td></tr><tr><td>MULSS %XMM2,%XMM0</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>6</td><td>0.50</td></tr><tr><td>MOV %EAX,%EDI</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>CVTSI2SS %EDI,%XMM1</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>MULSS %XMM0,%XMM2</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>6</td><td>0.50</td></tr><tr><td>MOV %R15D,%EDX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>XOR %AL,%AL</td></tr><tr><td>IMUL %R15D,%EDX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>LEA (,%RCX,4),%RSI</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MULSS %XMM1,%XMM2</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>6</td><td>0.50</td></tr><tr><td>MOVSXD %R13D,%R14</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>1</td><td>1</td></tr><tr><td>SAL $0x2,%RDX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>1</td><td>1</td></tr><tr><td>MOVSS 0x2ccd(%RIP),%XMM0</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>5</td><td>0.50</td></tr><tr><td>MOVSS %XMM2,0x48(%RSP)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>MOV %RDX,0x30(%RSP)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>0</td><td>1</td></tr><tr><td>MOV %RSI,0x38(%RSP)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>0</td><td>1</td></tr><tr><td>MOV %EDI,0x40(%RSP)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>0</td><td>1</td></tr><tr><td>MOV %EBX,0x8(%RSP)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>0</td><td>1</td></tr><tr><td>MOV %AL,%BL</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>MOV %R15D,0x58(%RSP)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>0</td><td>1</td></tr><tr><td>MOV %R12,(%RSP)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>0</td><td>1</td></tr><tr><td>MOV (%RSP),%R12</td><td>1</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>XOR %EAX,%EAX</td></tr><tr><td>ADD $0xe0,%RSP</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>POP %RBX</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>0</td><td>1</td></tr><tr><td>POP %R15</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>0</td><td>1</td></tr><tr><td>POP %R14</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>0</td><td>1</td></tr><tr><td>POP %R13</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>0</td><td>1</td></tr><tr><td>MOV %RBP,%RSP</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>POP %RBP</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>0</td><td>1</td></tr><tr><td>RET</td></tr><tr><td>MOV $0x40401c,%ESI</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>XOR %EAX,%EAX</td></tr><tr><td>MOV 0x6b43(%RIP),%RDI</td><td>1</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>MOV (%R14),%RDX</td><td>1</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>CALL 4010e0 <fprintf@plt></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>2</td></tr><tr><td>CALL 401050 <abort@plt></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>2</td></tr><tr><td>NOPW (%RAX,%RAX,1)</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td></tr></table>",
        },
      },
      header = {
        "Warnings:\nDetected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.",
        "0% of peak computational performance is used (0.07 out of 64.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = "<ul><li>Try to reorganize arrays of structures to structures of arrays</li><li>Consider to permute loops (see vectorization gain report)</li></ul>",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 40.00 to 8.00 cycles (5.00x speedup).",
        },
        {
          workaround = "<ul><li>Try another compiler or update/tune your current one</li><li>Make array accesses unit-stride:\n<ul><li>If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA)</li></ul></li></ul>",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is probably not vectorized.\nOnly 10% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 40.00 to 2.90 cycles (13.80x speedup).",
        },
        {
          title = "Execution units bottlenecks",
          txt = "Found no such bottlenecks but see expert reports for more complex bottlenecks.",
        },
      },
      potential = {
      },
    },
  },
  AVG = {
      hint = {
        {
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n<ul><li>__intel_new_feature_proc_init: 1 occurrences</li><li>abort@plt: 1 occurrences</li><li>atol@plt: 3 occurrences</li><li>fprintf@plt: 1 occurrences</li></ul>",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements.",
          details = "<ul><li>CVTSI2SS (INT32/64 to FP32, scalar): 2 occurrences</li></ul>",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "3 SSE or AVX instructions are processing arithmetic or math operations on single precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function is composed of 3 FP arithmetical operations:\n<ul><li>3: multiply</li></ul>The binary function is loading 60 bytes (15 single precision FP elements).\nThe binary function is storing 48 bytes (12 single precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.03 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "<table><tr><td>nb instructions</td><td>69</td></tr><tr><td>loop length</td><td>260</td></tr><tr><td>used x86 registers</td><td>12</td></tr><tr><td>used mmx registers</td><td>0</td></tr><tr><td>used xmm registers</td><td>3</td></tr><tr><td>used ymm registers</td><td>0</td></tr><tr><td>used zmm registers</td><td>0</td></tr><tr><td>nb stack references</td><td>7</td></tr></table>",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\n<table><tr><td>instruction fetch</td><td>17.00 cycles</td></tr><tr><td>instruction queue</td><td>34.50 cycles</td></tr><tr><td>decoding</td><td>34.50 cycles</td></tr><tr><td>micro-operation queue</td><td>40.00 cycles</td></tr><tr><td>front end</td><td>40.00 cycles</td></tr></table>",
        },
        {
          title = "Back-end",
          txt = "<table><tr><th>      </th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>P6</th></tr><tr><td>uops</td><td>3.00</td><td>3.00</td><td>11.50</td><td>11.50</td><td>24.00</td><td>24.00</td><td>14.00</td></tr><tr><td>cycles</td><td>3.00</td><td>3.00</td><td>11.50</td><td>11.50</td><td>24.00</td><td>24.00</td><td>14.00</td></tr></table>\n<table><tr><td>Cycles executing div or sqrt instructions</td><td>NA</td></tr></table>",
        },
        {
          title = "Cycles summary",
          txt = "<table><tr><td>Front-end</td><td>40.00</td></tr><tr><td>Dispatch</td><td>24.00</td></tr><tr><td>Overall L1</td><td>40.00</td></tr></table>",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\n<table><tr><td>all</td><td>6%</td></tr><tr><td>load</td><td>0%</td></tr><tr><td>store</td><td>0%</td></tr><tr><td>mul</td><td>0%</td></tr><tr><td>add-sub</td><td>NA (no add-sub vectorizable/vectorized instructions)</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>12%</td></tr></table>FP\n<table><tr><td>all</td><td>16%</td></tr><tr><td>load</td><td>0%</td></tr><tr><td>store</td><td>0%</td></tr><tr><td>mul</td><td>0%</td></tr><tr><td>add-sub</td><td>NA (no add-sub vectorizable/vectorized instructions)</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>100%</td></tr></table>INT+FP\n<table><tr><td>all</td><td>8%</td></tr><tr><td>load</td><td>0%</td></tr><tr><td>store</td><td>0%</td></tr><tr><td>mul</td><td>0%</td></tr><tr><td>add-sub</td><td>NA (no add-sub vectorizable/vectorized instructions)</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>17%</td></tr></table>",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\n<table><tr><td>all</td><td>10%</td></tr><tr><td>load</td><td>11%</td></tr><tr><td>store</td><td>8%</td></tr><tr><td>mul</td><td>6%</td></tr><tr><td>add-sub</td><td>NA (no add-sub vectorizable/vectorized instructions)</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>10%</td></tr></table>FP\n<table><tr><td>all</td><td>9%</td></tr><tr><td>load</td><td>6%</td></tr><tr><td>store</td><td>6%</td></tr><tr><td>mul</td><td>6%</td></tr><tr><td>add-sub</td><td>NA (no add-sub vectorizable/vectorized instructions)</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>25%</td></tr></table>INT+FP\n<table><tr><td>all</td><td>10%</td></tr><tr><td>load</td><td>10%</td></tr><tr><td>store</td><td>8%</td></tr><tr><td>mul</td><td>6%</td></tr><tr><td>add-sub</td><td>NA (no add-sub vectorizable/vectorized instructions)</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>11%</td></tr></table>",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 40.00 cycles. At this rate:\n<ul><li>1% of peak load performance is reached (1.50 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))</li><li>1% of peak store performance is reached (1.20 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))</li></ul>",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 40.00 to 34.50 cycles (1.16x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 401290\n\n<table><tr><th>Instruction</th><th>Nb FU</th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>P6</th><th>Latency</th><th>Recip. throughput</th></tr><tr><td>PUSH %RBP</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>1</td><td>0</td><td>0</td><td>1</td></tr><tr><td>MOV %RSP,%RBP</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>AND $-0x80,%RSP</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>PUSH %R13</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>1</td><td>0</td><td>0</td><td>1</td></tr><tr><td>PUSH %R14</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>1</td><td>0</td><td>0</td><td>1</td></tr><tr><td>PUSH %R15</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>1</td><td>0</td><td>0</td><td>1</td></tr><tr><td>PUSH %RBX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>1</td><td>0</td><td>0</td><td>1</td></tr><tr><td>SUB $0xe0,%RSP</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOV %RSI,%R14</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>MOV %EDI,%EBX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>MOV $0x3,%EDI</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>XOR %ESI,%ESI</td></tr><tr><td>CALL 4016b0 <__intel_new_feature_proc_init></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>2</td></tr><tr><td>STMXCSR (%RSP)</td><td>5</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1.50</td><td>1.50</td><td>1</td><td>0</td><td>15</td></tr><tr><td>ORL $0x8040,(%RSP)</td><td>1</td><td>0</td><td>0</td><td>1.50</td><td>0.50</td><td>0.50</td><td>0.50</td><td>1</td><td>6</td><td>1</td></tr><tr><td>LDMXCSR (%RSP)</td><td>6</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>2.50</td><td>2.50</td><td>0</td><td>0</td><td>21</td></tr><tr><td>CMP $0x4,%EBX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>JNE 40158f <main+0x2ff></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>1-2</td></tr><tr><td>MOV 0x8(%R14),%RDI</td><td>1</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>CALL 401130 <atol@plt></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>2</td></tr><tr><td>MOV %RAX,%R13</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>MOV 0x10(%R14),%RDI</td><td>1</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>MOV %R13D,%R15D</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>CALL 401130 <atol@plt></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>2</td></tr><tr><td>MOV 0x18(%R14),%RDI</td><td>1</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>MOV %EAX,%EBX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>CALL 401130 <atol@plt></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>2</td></tr><tr><td>MOV %R13D,%ECX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>PXOR %XMM2,%XMM2</td></tr><tr><td>CVTSI2SS %RCX,%XMM2</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>MOVAPS %XMM2,%XMM0</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>PXOR %XMM1,%XMM1</td></tr><tr><td>MULSS %XMM2,%XMM0</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>6</td><td>0.50</td></tr><tr><td>MOV %EAX,%EDI</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>CVTSI2SS %EDI,%XMM1</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>MULSS %XMM0,%XMM2</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>6</td><td>0.50</td></tr><tr><td>MOV %R15D,%EDX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>XOR %AL,%AL</td></tr><tr><td>IMUL %R15D,%EDX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>LEA (,%RCX,4),%RSI</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MULSS %XMM1,%XMM2</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>6</td><td>0.50</td></tr><tr><td>MOVSXD %R13D,%R14</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>1</td><td>1</td></tr><tr><td>SAL $0x2,%RDX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>1</td><td>1</td></tr><tr><td>MOVSS 0x2ccd(%RIP),%XMM0</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>5</td><td>0.50</td></tr><tr><td>MOVSS %XMM2,0x48(%RSP)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>MOV %RDX,0x30(%RSP)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>0</td><td>1</td></tr><tr><td>MOV %RSI,0x38(%RSP)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>0</td><td>1</td></tr><tr><td>MOV %EDI,0x40(%RSP)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>0</td><td>1</td></tr><tr><td>MOV %EBX,0x8(%RSP)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>0</td><td>1</td></tr><tr><td>MOV %AL,%BL</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>MOV %R15D,0x58(%RSP)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>0</td><td>1</td></tr><tr><td>MOV %R12,(%RSP)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>0</td><td>1</td></tr><tr><td>MOV (%RSP),%R12</td><td>1</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>XOR %EAX,%EAX</td></tr><tr><td>ADD $0xe0,%RSP</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>POP %RBX</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>0</td><td>1</td></tr><tr><td>POP %R15</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>0</td><td>1</td></tr><tr><td>POP %R14</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>0</td><td>1</td></tr><tr><td>POP %R13</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>0</td><td>1</td></tr><tr><td>MOV %RBP,%RSP</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>POP %RBP</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>0</td><td>1</td></tr><tr><td>RET</td></tr><tr><td>MOV $0x40401c,%ESI</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>XOR %EAX,%EAX</td></tr><tr><td>MOV 0x6b43(%RIP),%RDI</td><td>1</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>MOV (%R14),%RDX</td><td>1</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>CALL 4010e0 <fprintf@plt></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>2</td></tr><tr><td>CALL 401050 <abort@plt></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>2</td></tr><tr><td>NOPW (%RAX,%RAX,1)</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td></tr></table>",
        },
      },
      header = {
        "Warnings:\nDetected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.",
        "0% of peak computational performance is used (0.07 out of 64.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = "<ul><li>Try to reorganize arrays of structures to structures of arrays</li><li>Consider to permute loops (see vectorization gain report)</li></ul>",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 40.00 to 8.00 cycles (5.00x speedup).",
        },
        {
          workaround = "<ul><li>Try another compiler or update/tune your current one</li><li>Make array accesses unit-stride:\n<ul><li>If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA)</li></ul></li></ul>",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is probably not vectorized.\nOnly 10% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 40.00 to 2.90 cycles (13.80x speedup).",
        },
        {
          title = "Execution units bottlenecks",
          txt = "Found no such bottlenecks but see expert reports for more complex bottlenecks.",
        },
      },
      potential = {
      },
    },
  common = {
    header = {
      "",
      "Warnings:\nIgnoring paths for analysis",
    },
  },
}
