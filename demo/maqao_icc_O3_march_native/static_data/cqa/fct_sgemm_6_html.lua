_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n<ul><li>__intel_new_feature_proc_init: 1 occurrences</li><li>abort@plt: 1 occurrences</li><li>fprintf@plt: 1 occurrences</li><li>unknown: 3 occurrences</li></ul>",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements.",
          details = "<ul><li>VCVTSI2SS (INT32/64 to FP32, scalar): 1 occurrences</li><li>VCVTUSI2SS (INT32/64 to FP32, scalar): 1 occurrences</li><li>VGETEXPSS: 1 occurrences</li><li>VGETMANTSS: 1 occurrences</li></ul>",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "4 SSE or AVX instructions are processing arithmetic or math operations on single precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function is composed of 4 FP arithmetical operations:\n<ul><li>3: multiply</li><li>1: fast reciprocal</li></ul>The binary function is loading 116 bytes (29 single precision FP elements).\nThe binary function is storing 88 bytes (22 single precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.02 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "<table><tr><td>nb instructions</td><td>72</td></tr><tr><td>loop length</td><td>319</td></tr><tr><td>used x86 registers</td><td>13</td></tr><tr><td>used mmx registers</td><td>0</td></tr><tr><td>used xmm registers</td><td>7</td></tr><tr><td>used ymm registers</td><td>0</td></tr><tr><td>used zmm registers</td><td>0</td></tr><tr><td>nb stack references</td><td>13</td></tr></table>",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\n<table><tr><td>instruction fetch</td><td>20.00 cycles</td></tr><tr><td>instruction queue</td><td>36.00 cycles</td></tr><tr><td>decoding</td><td>36.00 cycles</td></tr><tr><td>micro-operation queue</td><td>38.00 cycles</td></tr><tr><td>front end</td><td>38.00 cycles</td></tr></table>",
        },
        {
          title = "Back-end",
          txt = "<table><tr><th>      </th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>P6</th></tr><tr><td>uops</td><td>4.00</td><td>4.00</td><td>16.00</td><td>16.00</td><td>20.00</td><td>20.00</td><td>16.00</td></tr><tr><td>cycles</td><td>4.00</td><td>4.00</td><td>16.00</td><td>16.00</td><td>20.00</td><td>20.00</td><td>16.00</td></tr></table>\n<table><tr><td>Cycles executing div or sqrt instructions</td><td>NA</td></tr></table>",
        },
        {
          title = "Cycles summary",
          txt = "<table><tr><td>Front-end</td><td>38.00</td></tr><tr><td>Dispatch</td><td>20.00</td></tr><tr><td>Overall L1</td><td>38.00</td></tr></table>",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\n<table><tr><td>all</td><td>0%</td></tr><tr><td>load</td><td>0%</td></tr><tr><td>store</td><td>0%</td></tr><tr><td>mul</td><td>0%</td></tr><tr><td>add-sub</td><td>NA (no add-sub vectorizable/vectorized instructions)</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>0%</td></tr></table>FP\n<table><tr><td>all</td><td>16%</td></tr><tr><td>load</td><td>0%</td></tr><tr><td>store</td><td>0%</td></tr><tr><td>mul</td><td>0%</td></tr><tr><td>add-sub</td><td>NA (no add-sub vectorizable/vectorized instructions)</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>0%</td></tr><tr><td>other</td><td>50%</td></tr></table>INT+FP\n<table><tr><td>all</td><td>4%</td></tr><tr><td>load</td><td>0%</td></tr><tr><td>store</td><td>0%</td></tr><tr><td>mul</td><td>0%</td></tr><tr><td>add-sub</td><td>NA (no add-sub vectorizable/vectorized instructions)</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>0%</td></tr><tr><td>other</td><td>11%</td></tr></table>",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\n<table><tr><td>all</td><td>9%</td></tr><tr><td>load</td><td>11%</td></tr><tr><td>store</td><td>10%</td></tr><tr><td>mul</td><td>6%</td></tr><tr><td>add-sub</td><td>NA (no add-sub vectorizable/vectorized instructions)</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>8%</td></tr></table>FP\n<table><tr><td>all</td><td>9%</td></tr><tr><td>load</td><td>6%</td></tr><tr><td>store</td><td>6%</td></tr><tr><td>mul</td><td>6%</td></tr><tr><td>add-sub</td><td>NA (no add-sub vectorizable/vectorized instructions)</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>6%</td></tr><tr><td>other</td><td>15%</td></tr></table>INT+FP\n<table><tr><td>all</td><td>9%</td></tr><tr><td>load</td><td>11%</td></tr><tr><td>store</td><td>9%</td></tr><tr><td>mul</td><td>6%</td></tr><tr><td>add-sub</td><td>NA (no add-sub vectorizable/vectorized instructions)</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>6%</td></tr><tr><td>other</td><td>9%</td></tr></table>",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 38.00 cycles. At this rate:\n<ul><li>2% of peak load performance is reached (3.05 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))</li><li>3% of peak store performance is reached (2.32 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))</li></ul>",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 38.00 to 36.00 cycles (1.06x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 401280\n\n<table><tr><th>Instruction</th><th>Nb FU</th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>P6</th><th>Latency</th><th>Recip. throughput</th></tr><tr><td>PUSH %RBP</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>1</td><td>0</td><td>0</td><td>1</td></tr><tr><td>MOV %RSP,%RBP</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>AND $-0x80,%RSP</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>SUB $0x100,%RSP</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOV %RBX,0x20(%RSP)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>0</td><td>1</td></tr><tr><td>MOV %RSI,%RBX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>MOV %R15,0x18(%RSP)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>0</td><td>1</td></tr><tr><td>MOV %EDI,%R15D</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>MOV $0x3,%EDI</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>XOR %ESI,%ESI</td></tr><tr><td>CALL 401800 <__intel_new_feature_proc_init></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>2</td></tr><tr><td>VSTMXCSR (%RSP)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>1</td></tr><tr><td>ORL $0x8040,(%RSP)</td><td>1</td><td>0</td><td>0</td><td>1.50</td><td>0.50</td><td>0.50</td><td>0.50</td><td>1</td><td>6</td><td>1</td></tr><tr><td>VLDMXCSR (%RSP)</td><td>6</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>2.50</td><td>2.50</td><td>0</td><td>0</td><td>21</td></tr><tr><td>CMP $0x4,%R15D</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>JNE 401611 <main+0x391></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>1-2</td></tr><tr><td>MOV 0x8(%RBX),%RCX</td><td>1</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>CALLQ 0x7ce8(%RIP)</td><td>3</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>1</td><td>0</td><td>0</td><td>14</td></tr><tr><td>MOV %RAX,%RSI</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>MOV 0x10(%RBX),%RCX</td><td>1</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>MOV %ESI,%R15D</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>CALLQ 0x7cd8(%RIP)</td><td>3</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>1</td><td>0</td><td>0</td><td>14</td></tr><tr><td>MOV 0x18(%RBX),%RCX</td><td>1</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>MOV %EAX,%EDI</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>CALLQ 0x7ccc(%RIP)</td><td>3</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>1</td><td>0</td><td>0</td><td>14</td></tr><tr><td>VXORPS %XMM0,%XMM0,%XMM0</td></tr><tr><td>MOV %EDI,0x28(%RSP)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>0</td><td>1</td></tr><tr><td>MOV %R15D,0x88(%RSP)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>0</td><td>1</td></tr><tr><td>VCVTUSI2SS %R15D,%XMM0,%XMM0</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>MOV %R12,(%RSP)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>0</td><td>1</td></tr><tr><td>VMULSS %XMM0,%XMM0,%XMM1</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>6</td><td>0.50</td></tr><tr><td>MOV %R13,0x8(%RSP)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>0</td><td>1</td></tr><tr><td>MOV %EAX,%R8D</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>MOV %R8D,0x78(%RSP)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>0</td><td>1</td></tr><tr><td>VXORPS %XMM3,%XMM3,%XMM3</td></tr><tr><td>MOV %R14,0x10(%RSP)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>0</td><td>1</td></tr><tr><td>MOV %R15D,%EDX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>MOV %ESI,%ECX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>VCVTSI2SS %R8D,%XMM3,%XMM3</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>IMUL %R15D,%EDX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>XOR %AL,%AL</td></tr><tr><td>VMULSS %XMM1,%XMM0,%XMM2</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>6</td><td>0.50</td></tr><tr><td>SAL $0x2,%RCX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>1</td><td>1</td></tr><tr><td>MOV %RCX,0x70(%RSP)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>0</td><td>1</td></tr><tr><td>SAL $0x2,%RDX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>1</td><td>1</td></tr><tr><td>MOV %RDX,0x68(%RSP)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>0</td><td>1</td></tr><tr><td>MOVSXD %ESI,%RBX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>1</td><td>1</td></tr><tr><td>VMOVSS 0x3cb3(%RIP),%XMM0</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>5</td><td>0.50</td></tr><tr><td>MOV %AL,%R13B</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>VMULSS %XMM3,%XMM2,%XMM4</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>6</td><td>0.50</td></tr><tr><td>VGETMANTSS $0,%XMM4,%XMM4,%XMM17</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>6</td><td>0.50</td></tr><tr><td>VMOVSS %XMM17,0x50(%RSP)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VRCP28SS %XMM17,%XMM17,%XMM16</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>7</td><td>2</td></tr><tr><td>VMOVSS %XMM16,0x60(%RSP)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VGETEXPSS %XMM4,%XMM4,%XMM4</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>6</td><td>0.50</td></tr><tr><td>VMOVSS %XMM4,0x58(%RSP)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>MOV (%RSP),%R12</td><td>1</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>MOV 0x8(%RSP),%R13</td><td>1</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>XOR %EAX,%EAX</td></tr><tr><td>MOV 0x10(%RSP),%R14</td><td>1</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>MOV 0x20(%RSP),%RBX</td><td>1</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>MOV 0x18(%RSP),%R15</td><td>1</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>MOV %RBP,%RSP</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>POP %RBP</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>0</td><td>1</td></tr><tr><td>RET</td></tr><tr><td>MOV 0x7ac8(%RIP),%RDI</td><td>1</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>MOV $0x40501c,%ESI</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOV (%RBX),%RDX</td><td>1</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>XOR %EAX,%EAX</td></tr><tr><td>CALL 4010e0 <fprintf@plt></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>2</td></tr><tr><td>CALL 401050 <abort@plt></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>2</td></tr><tr><td>NOPL (%RAX)</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td></tr></table>",
        },
      },
      header = {
        "Warnings:\nDetected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.",
        "0% of peak computational performance is used (0.11 out of 64.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = "<ul><li>Try to reorganize arrays of structures to structures of arrays</li><li>Consider to permute loops (see vectorization gain report)</li></ul>",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 38.00 to 10.00 cycles (3.80x speedup).",
        },
        {
          workaround = "<ul><li>Try another compiler or update/tune your current one</li><li>Make array accesses unit-stride:\n<ul><li>If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA)</li></ul></li></ul>",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is probably not vectorized.\nOnly 9% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 38.00 to 2.94 cycles (12.94x speedup).",
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
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n<ul><li>__intel_new_feature_proc_init: 1 occurrences</li><li>abort@plt: 1 occurrences</li><li>fprintf@plt: 1 occurrences</li><li>unknown: 3 occurrences</li></ul>",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements.",
          details = "<ul><li>VCVTSI2SS (INT32/64 to FP32, scalar): 1 occurrences</li><li>VCVTUSI2SS (INT32/64 to FP32, scalar): 1 occurrences</li><li>VGETEXPSS: 1 occurrences</li><li>VGETMANTSS: 1 occurrences</li></ul>",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "4 SSE or AVX instructions are processing arithmetic or math operations on single precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function is composed of 4 FP arithmetical operations:\n<ul><li>3: multiply</li><li>1: fast reciprocal</li></ul>The binary function is loading 116 bytes (29 single precision FP elements).\nThe binary function is storing 88 bytes (22 single precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.02 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "<table><tr><td>nb instructions</td><td>72</td></tr><tr><td>loop length</td><td>319</td></tr><tr><td>used x86 registers</td><td>13</td></tr><tr><td>used mmx registers</td><td>0</td></tr><tr><td>used xmm registers</td><td>7</td></tr><tr><td>used ymm registers</td><td>0</td></tr><tr><td>used zmm registers</td><td>0</td></tr><tr><td>nb stack references</td><td>13</td></tr></table>",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\n<table><tr><td>instruction fetch</td><td>20.00 cycles</td></tr><tr><td>instruction queue</td><td>36.00 cycles</td></tr><tr><td>decoding</td><td>36.00 cycles</td></tr><tr><td>micro-operation queue</td><td>38.00 cycles</td></tr><tr><td>front end</td><td>38.00 cycles</td></tr></table>",
        },
        {
          title = "Back-end",
          txt = "<table><tr><th>      </th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>P6</th></tr><tr><td>uops</td><td>4.00</td><td>4.00</td><td>16.00</td><td>16.00</td><td>20.00</td><td>20.00</td><td>16.00</td></tr><tr><td>cycles</td><td>4.00</td><td>4.00</td><td>16.00</td><td>16.00</td><td>20.00</td><td>20.00</td><td>16.00</td></tr></table>\n<table><tr><td>Cycles executing div or sqrt instructions</td><td>NA</td></tr></table>",
        },
        {
          title = "Cycles summary",
          txt = "<table><tr><td>Front-end</td><td>38.00</td></tr><tr><td>Dispatch</td><td>20.00</td></tr><tr><td>Overall L1</td><td>38.00</td></tr></table>",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\n<table><tr><td>all</td><td>0%</td></tr><tr><td>load</td><td>0%</td></tr><tr><td>store</td><td>0%</td></tr><tr><td>mul</td><td>0%</td></tr><tr><td>add-sub</td><td>NA (no add-sub vectorizable/vectorized instructions)</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>0%</td></tr></table>FP\n<table><tr><td>all</td><td>16%</td></tr><tr><td>load</td><td>0%</td></tr><tr><td>store</td><td>0%</td></tr><tr><td>mul</td><td>0%</td></tr><tr><td>add-sub</td><td>NA (no add-sub vectorizable/vectorized instructions)</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>0%</td></tr><tr><td>other</td><td>50%</td></tr></table>INT+FP\n<table><tr><td>all</td><td>4%</td></tr><tr><td>load</td><td>0%</td></tr><tr><td>store</td><td>0%</td></tr><tr><td>mul</td><td>0%</td></tr><tr><td>add-sub</td><td>NA (no add-sub vectorizable/vectorized instructions)</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>0%</td></tr><tr><td>other</td><td>11%</td></tr></table>",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\n<table><tr><td>all</td><td>9%</td></tr><tr><td>load</td><td>11%</td></tr><tr><td>store</td><td>10%</td></tr><tr><td>mul</td><td>6%</td></tr><tr><td>add-sub</td><td>NA (no add-sub vectorizable/vectorized instructions)</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>8%</td></tr></table>FP\n<table><tr><td>all</td><td>9%</td></tr><tr><td>load</td><td>6%</td></tr><tr><td>store</td><td>6%</td></tr><tr><td>mul</td><td>6%</td></tr><tr><td>add-sub</td><td>NA (no add-sub vectorizable/vectorized instructions)</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>6%</td></tr><tr><td>other</td><td>15%</td></tr></table>INT+FP\n<table><tr><td>all</td><td>9%</td></tr><tr><td>load</td><td>11%</td></tr><tr><td>store</td><td>9%</td></tr><tr><td>mul</td><td>6%</td></tr><tr><td>add-sub</td><td>NA (no add-sub vectorizable/vectorized instructions)</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>6%</td></tr><tr><td>other</td><td>9%</td></tr></table>",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 38.00 cycles. At this rate:\n<ul><li>2% of peak load performance is reached (3.05 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))</li><li>3% of peak store performance is reached (2.32 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))</li></ul>",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 38.00 to 36.00 cycles (1.06x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 401280\n\n<table><tr><th>Instruction</th><th>Nb FU</th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>P6</th><th>Latency</th><th>Recip. throughput</th></tr><tr><td>PUSH %RBP</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>1</td><td>0</td><td>0</td><td>1</td></tr><tr><td>MOV %RSP,%RBP</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>AND $-0x80,%RSP</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>SUB $0x100,%RSP</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOV %RBX,0x20(%RSP)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>0</td><td>1</td></tr><tr><td>MOV %RSI,%RBX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>MOV %R15,0x18(%RSP)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>0</td><td>1</td></tr><tr><td>MOV %EDI,%R15D</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>MOV $0x3,%EDI</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>XOR %ESI,%ESI</td></tr><tr><td>CALL 401800 <__intel_new_feature_proc_init></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>2</td></tr><tr><td>VSTMXCSR (%RSP)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>1</td></tr><tr><td>ORL $0x8040,(%RSP)</td><td>1</td><td>0</td><td>0</td><td>1.50</td><td>0.50</td><td>0.50</td><td>0.50</td><td>1</td><td>6</td><td>1</td></tr><tr><td>VLDMXCSR (%RSP)</td><td>6</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>2.50</td><td>2.50</td><td>0</td><td>0</td><td>21</td></tr><tr><td>CMP $0x4,%R15D</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>JNE 401611 <main+0x391></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>1-2</td></tr><tr><td>MOV 0x8(%RBX),%RCX</td><td>1</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>CALLQ 0x7ce8(%RIP)</td><td>3</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>1</td><td>0</td><td>0</td><td>14</td></tr><tr><td>MOV %RAX,%RSI</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>MOV 0x10(%RBX),%RCX</td><td>1</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>MOV %ESI,%R15D</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>CALLQ 0x7cd8(%RIP)</td><td>3</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>1</td><td>0</td><td>0</td><td>14</td></tr><tr><td>MOV 0x18(%RBX),%RCX</td><td>1</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>MOV %EAX,%EDI</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>CALLQ 0x7ccc(%RIP)</td><td>3</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>1</td><td>0</td><td>0</td><td>14</td></tr><tr><td>VXORPS %XMM0,%XMM0,%XMM0</td></tr><tr><td>MOV %EDI,0x28(%RSP)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>0</td><td>1</td></tr><tr><td>MOV %R15D,0x88(%RSP)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>0</td><td>1</td></tr><tr><td>VCVTUSI2SS %R15D,%XMM0,%XMM0</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>MOV %R12,(%RSP)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>0</td><td>1</td></tr><tr><td>VMULSS %XMM0,%XMM0,%XMM1</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>6</td><td>0.50</td></tr><tr><td>MOV %R13,0x8(%RSP)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>0</td><td>1</td></tr><tr><td>MOV %EAX,%R8D</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>MOV %R8D,0x78(%RSP)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>0</td><td>1</td></tr><tr><td>VXORPS %XMM3,%XMM3,%XMM3</td></tr><tr><td>MOV %R14,0x10(%RSP)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>0</td><td>1</td></tr><tr><td>MOV %R15D,%EDX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>MOV %ESI,%ECX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>VCVTSI2SS %R8D,%XMM3,%XMM3</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>IMUL %R15D,%EDX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>XOR %AL,%AL</td></tr><tr><td>VMULSS %XMM1,%XMM0,%XMM2</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>6</td><td>0.50</td></tr><tr><td>SAL $0x2,%RCX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>1</td><td>1</td></tr><tr><td>MOV %RCX,0x70(%RSP)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>0</td><td>1</td></tr><tr><td>SAL $0x2,%RDX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>1</td><td>1</td></tr><tr><td>MOV %RDX,0x68(%RSP)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>0</td><td>1</td></tr><tr><td>MOVSXD %ESI,%RBX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>1</td><td>1</td></tr><tr><td>VMOVSS 0x3cb3(%RIP),%XMM0</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>5</td><td>0.50</td></tr><tr><td>MOV %AL,%R13B</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>VMULSS %XMM3,%XMM2,%XMM4</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>6</td><td>0.50</td></tr><tr><td>VGETMANTSS $0,%XMM4,%XMM4,%XMM17</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>6</td><td>0.50</td></tr><tr><td>VMOVSS %XMM17,0x50(%RSP)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VRCP28SS %XMM17,%XMM17,%XMM16</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>7</td><td>2</td></tr><tr><td>VMOVSS %XMM16,0x60(%RSP)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VGETEXPSS %XMM4,%XMM4,%XMM4</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>6</td><td>0.50</td></tr><tr><td>VMOVSS %XMM4,0x58(%RSP)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>MOV (%RSP),%R12</td><td>1</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>MOV 0x8(%RSP),%R13</td><td>1</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>XOR %EAX,%EAX</td></tr><tr><td>MOV 0x10(%RSP),%R14</td><td>1</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>MOV 0x20(%RSP),%RBX</td><td>1</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>MOV 0x18(%RSP),%R15</td><td>1</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>MOV %RBP,%RSP</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>POP %RBP</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>0</td><td>1</td></tr><tr><td>RET</td></tr><tr><td>MOV 0x7ac8(%RIP),%RDI</td><td>1</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>MOV $0x40501c,%ESI</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOV (%RBX),%RDX</td><td>1</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>XOR %EAX,%EAX</td></tr><tr><td>CALL 4010e0 <fprintf@plt></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>2</td></tr><tr><td>CALL 401050 <abort@plt></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>2</td></tr><tr><td>NOPL (%RAX)</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td></tr></table>",
        },
      },
      header = {
        "Warnings:\nDetected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.",
        "0% of peak computational performance is used (0.11 out of 64.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = "<ul><li>Try to reorganize arrays of structures to structures of arrays</li><li>Consider to permute loops (see vectorization gain report)</li></ul>",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 38.00 to 10.00 cycles (3.80x speedup).",
        },
        {
          workaround = "<ul><li>Try another compiler or update/tune your current one</li><li>Make array accesses unit-stride:\n<ul><li>If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA)</li></ul></li></ul>",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is probably not vectorized.\nOnly 9% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 38.00 to 2.94 cycles (12.94x speedup).",
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
