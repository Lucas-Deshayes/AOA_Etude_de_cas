_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          title = "Type of elements and instruction set",
          txt = "6 SSE or AVX instructions are processing arithmetic or math operations on single precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 6 FP arithmetical operations:\n<ul><li>3: addition or subtraction</li><li>3: divide</li></ul>The binary loop is loading 140 bytes (35 single precision FP elements).\nThe binary loop is storing 12 bytes (3 single precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.04 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "<table><tr><td>nb instructions</td><td>52</td></tr><tr><td>loop length</td><td>201</td></tr><tr><td>used x86 registers</td><td>10</td></tr><tr><td>used mmx registers</td><td>0</td></tr><tr><td>used xmm registers</td><td>1</td></tr><tr><td>used ymm registers</td><td>0</td></tr><tr><td>used zmm registers</td><td>0</td></tr><tr><td>nb stack references</td><td>15</td></tr></table>",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\n<table><tr><td>instruction fetch</td><td>13.00 cycles</td></tr><tr><td>instruction queue</td><td>26.00 cycles</td></tr><tr><td>decoding</td><td>26.00 cycles</td></tr><tr><td>micro-operation queue</td><td>26.00 cycles</td></tr><tr><td>front end</td><td>26.00 cycles</td></tr></table>",
        },
        {
          title = "Back-end",
          txt = "<table><tr><th>      </th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>P6</th></tr><tr><td>uops</td><td>9.00</td><td>3.00</td><td>15.00</td><td>12.00</td><td>16.50</td><td>16.50</td><td>3.00</td></tr><tr><td>cycles</td><td>9.00</td><td>3.00</td><td>15.00</td><td>12.00</td><td>16.50</td><td>16.50</td><td>3.00</td></tr></table>\n<table><tr><td>Cycles executing div or sqrt instructions</td><td>36.00-51.00</td></tr></table>",
        },
        {
          title = "Cycles summary",
          txt = "<table><tr><td>Front-end</td><td>26.00</td></tr><tr><td>Dispatch</td><td>16.50</td></tr><tr><td>DIV/SQRT</td><td>36.00-51.00</td></tr><tr><td>Overall L1</td><td>36.00-51.00</td></tr></table>",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\n<table><tr><td>all</td><td>0%</td></tr><tr><td>load</td><td>0%</td></tr><tr><td>store</td><td>NA (no store vectorizable/vectorized instructions)</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>0%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>0%</td></tr></table>FP\n<table><tr><td>all</td><td>0%</td></tr><tr><td>load</td><td>0%</td></tr><tr><td>store</td><td>0%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>0%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>0%</td></tr><tr><td>other</td><td>NA (no other vectorizable/vectorized instructions)</td></tr></table>INT+FP\n<table><tr><td>all</td><td>0%</td></tr><tr><td>load</td><td>0%</td></tr><tr><td>store</td><td>0%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>0%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>0%</td></tr><tr><td>other</td><td>0%</td></tr></table>",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\n<table><tr><td>all</td><td>9%</td></tr><tr><td>load</td><td>8%</td></tr><tr><td>store</td><td>NA (no store vectorizable/vectorized instructions)</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>12%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>8%</td></tr></table>FP\n<table><tr><td>all</td><td>6%</td></tr><tr><td>load</td><td>6%</td></tr><tr><td>store</td><td>6%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>6%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>6%</td></tr><tr><td>other</td><td>NA (no other vectorizable/vectorized instructions)</td></tr></table>INT+FP\n<table><tr><td>all</td><td>7%</td></tr><tr><td>load</td><td>7%</td></tr><tr><td>store</td><td>6%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>7%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>6%</td></tr><tr><td>other</td><td>8%</td></tr></table>",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 51.00 cycles. At this rate:\n<ul><li>2% of peak load performance is reached (2.75 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))</li><li>0% of peak store performance is reached (0.24 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))</li></ul>",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1670\n\n<table><tr><th>Instruction</th><th>Nb FU</th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>P6</th><th>Latency</th><th>Recip. throughput</th></tr><tr><td>CMPQ $0x1e,-0x70(%RSP)</td><td>1</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>1</td></tr><tr><td>SETA %CL</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>1</td><td>0</td><td>2</td><td>1</td></tr><tr><td>CMPL $0x2,-0x58(%RSP)</td><td>1</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>1</td></tr><tr><td>SETA %AL</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>1</td><td>0</td><td>2</td><td>1</td></tr><tr><td>TEST %AL,%CL</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>JE 1780 <baseline+0x210></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>1-2</td></tr><tr><td>MOV -0x60(%RSP),%RAX</td><td>1</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>MOV %R9,%RCX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>ADD %R9,%RAX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>CMP %RAX,%RSI</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>SETA %R13B</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>1</td><td>0</td><td>2</td><td>1</td></tr><tr><td>CMP %R9,-0x68(%RSP)</td><td>1</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>1</td></tr><tr><td>SETB %R12B</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>1</td><td>0</td><td>2</td><td>1</td></tr><tr><td>XOR %EAX,%EAX</td></tr><tr><td>OR %R12B,%R13B</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>JE 1780 <baseline+0x210></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>1-2</td></tr><tr><td>NOP</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>CMP -0x54(%RSP),%EBX</td><td>1</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>1</td></tr><tr><td>JE 1760 <baseline+0x1f0></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>1-2</td></tr><tr><td>MOV -0x50(%RSP),%RCX</td><td>1</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>MOV %EBP,%EAX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>MOVSS (%R15,%RAX,4),%XMM0</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>5</td><td>0.50</td></tr><tr><td>DIVSS (%RCX),%XMM0</td><td>4</td><td>3</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>25-27</td><td>12-17</td></tr><tr><td>MOV -0x48(%RSP),%RCX</td><td>1</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>ADDSS (%RCX),%XMM0</td><td>1</td><td>0.50</td><td>0.50</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>6</td><td>0.50</td></tr><tr><td>MOVSS %XMM0,(%RCX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>CMP -0x28(%RSP),%EBX</td><td>1</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>1</td></tr><tr><td>JBE 1760 <baseline+0x1f0></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>1-2</td></tr><tr><td>MOV -0x40(%RSP),%RCX</td><td>1</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>MOVSS (%RCX,%RAX,4),%XMM0</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>5</td><td>0.50</td></tr><tr><td>MOV -0x38(%RSP),%RCX</td><td>1</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>DIVSS (%RCX),%XMM0</td><td>4</td><td>3</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>25-27</td><td>12-17</td></tr><tr><td>MOV -0x30(%RSP),%RCX</td><td>1</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>ADDSS (%RCX),%XMM0</td><td>1</td><td>0.50</td><td>0.50</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>6</td><td>0.50</td></tr><tr><td>MOVSS %XMM0,(%RCX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>CMP -0x24(%RSP),%EBX</td><td>1</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>1</td></tr><tr><td>JBE 1760 <baseline+0x1f0></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>1-2</td></tr><tr><td>MOV -0x20(%RSP),%RCX</td><td>1</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>MOVSS (%RCX,%RAX,4),%XMM0</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>5</td><td>0.50</td></tr><tr><td>MOV -0x18(%RSP),%RAX</td><td>1</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>DIVSS (%RAX),%XMM0</td><td>4</td><td>3</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>25-27</td><td>12-17</td></tr><tr><td>MOV -0x10(%RSP),%RAX</td><td>1</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>ADDSS (%RAX),%XMM0</td><td>1</td><td>0.50</td><td>0.50</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>6</td><td>0.50</td></tr><tr><td>MOVSS %XMM0,(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>ADD $0x1,%EBP</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>ADD $0x4,%R9</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>CMP %EBP,%EBX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>JNE 1670 <baseline+0x100></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>1-2</td></tr><tr><td>MOV %R9,%RCX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>XOR %EAX,%EAX</td></tr><tr><td>NOPL (%RAX)</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>JMP 1760 <baseline+0x1f0></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>2</td></tr></table>",
        },
      },
      header = {
        "0% of peak computational performance is used (0.12 out of 64.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = "<ul><li>Try another compiler or update/tune your current one</li><li>Remove inter-iterations dependences from your loop and make it unit-stride:\n<ul><li>If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly</li><li>If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA)</li></ul></li></ul>",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 7% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 51.00 to 3.19 cycles (16.00x speedup).",
        },
        {
          workaround = "Reduce the number of division or square root instructions:\n<ul><li>If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact.</li></ul>",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 51.00 to 26.00 cycles (1.96x speedup).\n",
        },
      },
      potential = {
        {
          title = "Expensive FP math instructions/calls",
          txt = "Detected performance impact from expensive FP math instructions/calls.\nBy removing/reexpressing them, you can lower the cost of an iteration from 51.00 to 26.00 cycles (1.96x speedup).",
        },
      },
    },
  },
  AVG = {
      hint = {
        {
          title = "Type of elements and instruction set",
          txt = "6 SSE or AVX instructions are processing arithmetic or math operations on single precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 6 FP arithmetical operations:\n<ul><li>3: addition or subtraction</li><li>3: divide</li></ul>The binary loop is loading 140 bytes (35 single precision FP elements).\nThe binary loop is storing 12 bytes (3 single precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.04 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "<table><tr><td>nb instructions</td><td>52</td></tr><tr><td>loop length</td><td>201</td></tr><tr><td>used x86 registers</td><td>10</td></tr><tr><td>used mmx registers</td><td>0</td></tr><tr><td>used xmm registers</td><td>1</td></tr><tr><td>used ymm registers</td><td>0</td></tr><tr><td>used zmm registers</td><td>0</td></tr><tr><td>nb stack references</td><td>15</td></tr></table>",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\n<table><tr><td>instruction fetch</td><td>13.00 cycles</td></tr><tr><td>instruction queue</td><td>26.00 cycles</td></tr><tr><td>decoding</td><td>26.00 cycles</td></tr><tr><td>micro-operation queue</td><td>26.00 cycles</td></tr><tr><td>front end</td><td>26.00 cycles</td></tr></table>",
        },
        {
          title = "Back-end",
          txt = "<table><tr><th>      </th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>P6</th></tr><tr><td>uops</td><td>9.00</td><td>3.00</td><td>15.00</td><td>12.00</td><td>16.50</td><td>16.50</td><td>3.00</td></tr><tr><td>cycles</td><td>9.00</td><td>3.00</td><td>15.00</td><td>12.00</td><td>16.50</td><td>16.50</td><td>3.00</td></tr></table>\n<table><tr><td>Cycles executing div or sqrt instructions</td><td>36.00-51.00</td></tr></table>",
        },
        {
          title = "Cycles summary",
          txt = "<table><tr><td>Front-end</td><td>26.00</td></tr><tr><td>Dispatch</td><td>16.50</td></tr><tr><td>DIV/SQRT</td><td>36.00-51.00</td></tr><tr><td>Overall L1</td><td>36.00-51.00</td></tr></table>",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\n<table><tr><td>all</td><td>0%</td></tr><tr><td>load</td><td>0%</td></tr><tr><td>store</td><td>NA (no store vectorizable/vectorized instructions)</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>0%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>0%</td></tr></table>FP\n<table><tr><td>all</td><td>0%</td></tr><tr><td>load</td><td>0%</td></tr><tr><td>store</td><td>0%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>0%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>0%</td></tr><tr><td>other</td><td>NA (no other vectorizable/vectorized instructions)</td></tr></table>INT+FP\n<table><tr><td>all</td><td>0%</td></tr><tr><td>load</td><td>0%</td></tr><tr><td>store</td><td>0%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>0%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>0%</td></tr><tr><td>other</td><td>0%</td></tr></table>",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\n<table><tr><td>all</td><td>9%</td></tr><tr><td>load</td><td>8%</td></tr><tr><td>store</td><td>NA (no store vectorizable/vectorized instructions)</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>12%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>8%</td></tr></table>FP\n<table><tr><td>all</td><td>6%</td></tr><tr><td>load</td><td>6%</td></tr><tr><td>store</td><td>6%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>6%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>6%</td></tr><tr><td>other</td><td>NA (no other vectorizable/vectorized instructions)</td></tr></table>INT+FP\n<table><tr><td>all</td><td>7%</td></tr><tr><td>load</td><td>7%</td></tr><tr><td>store</td><td>6%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>7%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>6%</td></tr><tr><td>other</td><td>8%</td></tr></table>",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 51.00 cycles. At this rate:\n<ul><li>2% of peak load performance is reached (2.75 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))</li><li>0% of peak store performance is reached (0.24 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))</li></ul>",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1670\n\n<table><tr><th>Instruction</th><th>Nb FU</th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>P6</th><th>Latency</th><th>Recip. throughput</th></tr><tr><td>CMPQ $0x1e,-0x70(%RSP)</td><td>1</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>1</td></tr><tr><td>SETA %CL</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>1</td><td>0</td><td>2</td><td>1</td></tr><tr><td>CMPL $0x2,-0x58(%RSP)</td><td>1</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>1</td></tr><tr><td>SETA %AL</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>1</td><td>0</td><td>2</td><td>1</td></tr><tr><td>TEST %AL,%CL</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>JE 1780 <baseline+0x210></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>1-2</td></tr><tr><td>MOV -0x60(%RSP),%RAX</td><td>1</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>MOV %R9,%RCX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>ADD %R9,%RAX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>CMP %RAX,%RSI</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>SETA %R13B</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>1</td><td>0</td><td>2</td><td>1</td></tr><tr><td>CMP %R9,-0x68(%RSP)</td><td>1</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>1</td></tr><tr><td>SETB %R12B</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>1</td><td>0</td><td>2</td><td>1</td></tr><tr><td>XOR %EAX,%EAX</td></tr><tr><td>OR %R12B,%R13B</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>JE 1780 <baseline+0x210></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>1-2</td></tr><tr><td>NOP</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>CMP -0x54(%RSP),%EBX</td><td>1</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>1</td></tr><tr><td>JE 1760 <baseline+0x1f0></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>1-2</td></tr><tr><td>MOV -0x50(%RSP),%RCX</td><td>1</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>MOV %EBP,%EAX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>MOVSS (%R15,%RAX,4),%XMM0</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>5</td><td>0.50</td></tr><tr><td>DIVSS (%RCX),%XMM0</td><td>4</td><td>3</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>25-27</td><td>12-17</td></tr><tr><td>MOV -0x48(%RSP),%RCX</td><td>1</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>ADDSS (%RCX),%XMM0</td><td>1</td><td>0.50</td><td>0.50</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>6</td><td>0.50</td></tr><tr><td>MOVSS %XMM0,(%RCX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>CMP -0x28(%RSP),%EBX</td><td>1</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>1</td></tr><tr><td>JBE 1760 <baseline+0x1f0></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>1-2</td></tr><tr><td>MOV -0x40(%RSP),%RCX</td><td>1</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>MOVSS (%RCX,%RAX,4),%XMM0</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>5</td><td>0.50</td></tr><tr><td>MOV -0x38(%RSP),%RCX</td><td>1</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>DIVSS (%RCX),%XMM0</td><td>4</td><td>3</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>25-27</td><td>12-17</td></tr><tr><td>MOV -0x30(%RSP),%RCX</td><td>1</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>ADDSS (%RCX),%XMM0</td><td>1</td><td>0.50</td><td>0.50</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>6</td><td>0.50</td></tr><tr><td>MOVSS %XMM0,(%RCX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>CMP -0x24(%RSP),%EBX</td><td>1</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>1</td></tr><tr><td>JBE 1760 <baseline+0x1f0></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>1-2</td></tr><tr><td>MOV -0x20(%RSP),%RCX</td><td>1</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>MOVSS (%RCX,%RAX,4),%XMM0</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>5</td><td>0.50</td></tr><tr><td>MOV -0x18(%RSP),%RAX</td><td>1</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>DIVSS (%RAX),%XMM0</td><td>4</td><td>3</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>25-27</td><td>12-17</td></tr><tr><td>MOV -0x10(%RSP),%RAX</td><td>1</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>ADDSS (%RAX),%XMM0</td><td>1</td><td>0.50</td><td>0.50</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>6</td><td>0.50</td></tr><tr><td>MOVSS %XMM0,(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>ADD $0x1,%EBP</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>ADD $0x4,%R9</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>CMP %EBP,%EBX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>JNE 1670 <baseline+0x100></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>1-2</td></tr><tr><td>MOV %R9,%RCX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>XOR %EAX,%EAX</td></tr><tr><td>NOPL (%RAX)</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>JMP 1760 <baseline+0x1f0></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>2</td></tr></table>",
        },
      },
      header = {
        "0% of peak computational performance is used (0.12 out of 64.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = "<ul><li>Try another compiler or update/tune your current one</li><li>Remove inter-iterations dependences from your loop and make it unit-stride:\n<ul><li>If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly</li><li>If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA)</li></ul></li></ul>",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 7% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 51.00 to 3.19 cycles (16.00x speedup).",
        },
        {
          workaround = "Reduce the number of division or square root instructions:\n<ul><li>If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact.</li></ul>",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 51.00 to 26.00 cycles (1.96x speedup).\n",
        },
      },
      potential = {
        {
          title = "Expensive FP math instructions/calls",
          txt = "Detected performance impact from expensive FP math instructions/calls.\nBy removing/reexpressing them, you can lower the cost of an iteration from 51.00 to 26.00 cycles (1.96x speedup).",
        },
      },
    },
  common = {
    header = {
      "",
      "Warnings:\n<ul><li>Non-innermost loop: analyzing only self part (ignoring child loops).</li><li>Ignoring paths for analysis</li><li>Too many paths. Rerun with max-paths=6</li><li>RecMII not computed since number of paths is unknown or > max_paths</li><li>Streams not analyzed since number of paths is unknown or > max_paths</li></ul>",
      "Try to simplify control and/or increase the maximum number of paths per function/loop through the 'max-paths-nb' option.\n",
      "This loop has 6 execution paths.\n",
      "The presence of multiple execution paths is typically the main/first bottleneck.\nTry to simplify control inside loop: ideally, try to remove all conditional expressions, for example by (if applicable):\n<ul><li>hoisting them (moving them outside the loop)</li><li>turning them into conditional moves, MIN or MAX</li></ul>\n",
    },
    nb_paths = 6,
  },
}
