_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          workaround = "<ul><li>Try to reorganize arrays of structures to structures of arrays</li><li>Consider to permute loops (see vectorization gain report)</li></ul>",
          details = "<ul><li>Constant unknown stride: 4 occurrence(s)</li></ul>Non-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          workaround = "<ul><li>Pass to your compiler a micro-architecture specialization option:\n<ul><li>Please read your compiler manual</li></ul></li><li>Use vector aligned instructions:\n<ol><li>align your arrays on 64 bytes boundaries</li><li>inform your compiler that your arrays are vector aligned: read your compiler manual.</li></ol></li></ul>",
          details = "<ul><li>MOVUPS: 3 occurrences</li></ul>",
          title = "Vector unaligned load/store instructions",
          txt = "Detected 3 suboptimal vector unaligned load/store instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "2 SSE or AVX instructions are processing arithmetic or math operations on single precision FP elements in vector mode (four at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 8 FP arithmetical operations:\n<ul><li>4: addition or subtraction</li><li>4: divide</li></ul>The binary loop is loading 48 bytes (12 single precision FP elements).\nThe binary loop is storing 16 bytes (4 single precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.12 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "<table><tr><td>nb instructions</td><td>17</td></tr><tr><td>loop length</td><td>64</td></tr><tr><td>used x86 registers</td><td>8</td></tr><tr><td>used mmx registers</td><td>0</td></tr><tr><td>used xmm registers</td><td>6</td></tr><tr><td>used ymm registers</td><td>0</td></tr><tr><td>used zmm registers</td><td>0</td></tr><tr><td>nb stack references</td><td>0</td></tr></table>",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\n<table><tr><td>instruction fetch</td><td>4.00 cycles</td></tr><tr><td>instruction queue</td><td>8.50 cycles</td></tr><tr><td>decoding</td><td>8.50 cycles</td></tr><tr><td>micro-operation queue</td><td>9.00 cycles</td></tr><tr><td>front end</td><td>9.00 cycles</td></tr></table>",
        },
        {
          title = "Back-end",
          txt = "<table><tr><th>      </th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>P6</th></tr><tr><td>uops</td><td>20.00</td><td>2.00</td><td>3.50</td><td>3.50</td><td>2.00</td><td>2.00</td><td>1.00</td></tr><tr><td>cycles</td><td>20.00</td><td>2.00</td><td>3.50</td><td>3.50</td><td>2.00</td><td>2.00</td><td>1.00</td></tr></table>\n<table><tr><td>Cycles executing div or sqrt instructions</td><td>17.00-18.00</td></tr><tr><td>Longest recurrence chain latency (RecMII)</td><td>1.00</td></tr></table>",
        },
        {
          title = "Cycles summary",
          txt = "<table><tr><td>Front-end</td><td>9.00</td></tr><tr><td>Dispatch</td><td>20.00</td></tr><tr><td>DIV/SQRT</td><td>17.00-18.00</td></tr><tr><td>Data deps.</td><td>1.00</td></tr><tr><td>Overall L1</td><td>20.00</td></tr></table>",
        },
        {
          title = "Vectorization ratios",
          txt = "<table><tr><td>all</td><td>69%</td></tr><tr><td>load</td><td>33%</td></tr><tr><td>store</td><td>100%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>100%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>100%</td></tr><tr><td>other</td><td>100%</td></tr></table>",
        },
        {
          title = "Vector efficiency ratios",
          txt = "<table><tr><td>all</td><td>16%</td></tr><tr><td>load</td><td>12%</td></tr><tr><td>store</td><td>25%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>25%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>25%</td></tr><tr><td>other</td><td>15%</td></tr></table>",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 20.00 cycles. At this rate:\n<ul><li>1% of peak load performance is reached (2.40 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))</li><li>1% of peak store performance is reached (0.80 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))</li></ul>",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 16b0\n\n<table><tr><th>Instruction</th><th>Nb FU</th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>P6</th><th>Latency</th><th>Recip. throughput</th></tr><tr><td>MOVSS (%RCX,%R8,1),%XMM0</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>5</td><td>0.50</td></tr><tr><td>MOVSS (%RCX),%XMM3</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>5</td><td>0.50</td></tr><tr><td>MOVSS (%RCX,%R11,1),%XMM1</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>5</td><td>0.50</td></tr><tr><td>MOVSS (%RCX,%R8,2),%XMM2</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>5</td><td>0.50</td></tr><tr><td>ADD %RDI,%RCX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>UNPCKLPS %XMM0,%XMM3</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>2</td></tr><tr><td>MOVUPS (%RDX,%RAX,1),%XMM4</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>5</td><td>0.50</td></tr><tr><td>MOVUPS (%RSI,%RAX,1),%XMM5</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>5</td><td>0.50</td></tr><tr><td>UNPCKLPS %XMM1,%XMM2</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>2</td></tr><tr><td>MOVAPS %XMM3,%XMM0</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>MOVLHPS %XMM2,%XMM0</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3-6</td><td>1</td></tr><tr><td>DIVPS %XMM4,%XMM0</td><td>17</td><td>17</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>32-70</td><td>17-18</td></tr><tr><td>ADDPS %XMM5,%XMM0</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>6</td><td>0.50</td></tr><tr><td>MOVUPS %XMM0,(%RSI,%RAX,1)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>ADD $0x10,%RAX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>CMP %R10,%RAX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>JNE 16b0 <baseline+0x140></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>1-2</td></tr></table>",
        },
      },
      header = {
        "0% of peak computational performance is used (0.40 out of 64.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = "<ul><li>Try another compiler or update/tune your current one</li><li>Remove inter-iterations dependences from your loop and make it unit-stride:\n<ul><li>If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly</li><li>If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA)</li></ul></li></ul>",
          details = "69% of SSE/AVX instructions are used in vector version (process two or more data elements in vector registers):\n<ul><li>33% of SSE/AVX loads are used in vector version.</li></ul>Since your execution units are vector units, only a fully vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is partially vectorized.\nOnly 16% of vector register length is used (average across all SSE/AVX instructions).\nBy fully vectorizing your loop, you can lower the cost of an iteration from 20.00 to 4.56 cycles (4.38x speedup).",
        },
        {
          workaround = "<ul><li>Reduce the number of division or square root instructions:\n<ul><li>If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact.</li></ul></li><li>Reduce the number of FP add instructions</li><li>Reduce arithmetical operations on array elements</li></ul>",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by:\n<ul><li>execution of divide and square root operations (the divide/square root unit is a bottleneck)</li><li>execution of FP add operations (the FP add unit is a bottleneck)</li><li>execution of INT/FP operations in vector registers (the VPU is a bottleneck)</li></ul>",
        },
      },
      potential = {
        {
          title = "Expensive FP math instructions/calls",
          txt = "Detected performance impact from expensive FP math instructions/calls.\nBy removing/reexpressing them, you can lower the cost of an iteration from 20.00 to 9.00 cycles (2.22x speedup).",
        },
        {
          details = "<ul><li>MOVLHPS: 1 occurrences</li><li>UNPCKLPS: 2 occurrences</li></ul>",
          title = "Special instructions executing on a single port",
          txt = "1.11x slowdown from special instructions executing on a single port.\n",
        },
      },
    },
  },
  AVG = {
      hint = {
        {
          workaround = "<ul><li>Try to reorganize arrays of structures to structures of arrays</li><li>Consider to permute loops (see vectorization gain report)</li></ul>",
          details = "<ul><li>Constant unknown stride: 4 occurrence(s)</li></ul>Non-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          workaround = "<ul><li>Pass to your compiler a micro-architecture specialization option:\n<ul><li>Please read your compiler manual</li></ul></li><li>Use vector aligned instructions:\n<ol><li>align your arrays on 64 bytes boundaries</li><li>inform your compiler that your arrays are vector aligned: read your compiler manual.</li></ol></li></ul>",
          details = "<ul><li>MOVUPS: 3 occurrences</li></ul>",
          title = "Vector unaligned load/store instructions",
          txt = "Detected 3 suboptimal vector unaligned load/store instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "2 SSE or AVX instructions are processing arithmetic or math operations on single precision FP elements in vector mode (four at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 8 FP arithmetical operations:\n<ul><li>4: addition or subtraction</li><li>4: divide</li></ul>The binary loop is loading 48 bytes (12 single precision FP elements).\nThe binary loop is storing 16 bytes (4 single precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.12 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "<table><tr><td>nb instructions</td><td>17</td></tr><tr><td>loop length</td><td>64</td></tr><tr><td>used x86 registers</td><td>8</td></tr><tr><td>used mmx registers</td><td>0</td></tr><tr><td>used xmm registers</td><td>6</td></tr><tr><td>used ymm registers</td><td>0</td></tr><tr><td>used zmm registers</td><td>0</td></tr><tr><td>nb stack references</td><td>0</td></tr></table>",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\n<table><tr><td>instruction fetch</td><td>4.00 cycles</td></tr><tr><td>instruction queue</td><td>8.50 cycles</td></tr><tr><td>decoding</td><td>8.50 cycles</td></tr><tr><td>micro-operation queue</td><td>9.00 cycles</td></tr><tr><td>front end</td><td>9.00 cycles</td></tr></table>",
        },
        {
          title = "Back-end",
          txt = "<table><tr><th>      </th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>P6</th></tr><tr><td>uops</td><td>20.00</td><td>2.00</td><td>3.50</td><td>3.50</td><td>2.00</td><td>2.00</td><td>1.00</td></tr><tr><td>cycles</td><td>20.00</td><td>2.00</td><td>3.50</td><td>3.50</td><td>2.00</td><td>2.00</td><td>1.00</td></tr></table>\n<table><tr><td>Cycles executing div or sqrt instructions</td><td>17.00-18.00</td></tr><tr><td>Longest recurrence chain latency (RecMII)</td><td>1.00</td></tr></table>",
        },
        {
          title = "Cycles summary",
          txt = "<table><tr><td>Front-end</td><td>9.00</td></tr><tr><td>Dispatch</td><td>20.00</td></tr><tr><td>DIV/SQRT</td><td>17.00-18.00</td></tr><tr><td>Data deps.</td><td>1.00</td></tr><tr><td>Overall L1</td><td>20.00</td></tr></table>",
        },
        {
          title = "Vectorization ratios",
          txt = "<table><tr><td>all</td><td>69%</td></tr><tr><td>load</td><td>33%</td></tr><tr><td>store</td><td>100%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>100%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>100%</td></tr><tr><td>other</td><td>100%</td></tr></table>",
        },
        {
          title = "Vector efficiency ratios",
          txt = "<table><tr><td>all</td><td>16%</td></tr><tr><td>load</td><td>12%</td></tr><tr><td>store</td><td>25%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>25%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>25%</td></tr><tr><td>other</td><td>15%</td></tr></table>",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 20.00 cycles. At this rate:\n<ul><li>1% of peak load performance is reached (2.40 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))</li><li>1% of peak store performance is reached (0.80 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))</li></ul>",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 16b0\n\n<table><tr><th>Instruction</th><th>Nb FU</th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>P6</th><th>Latency</th><th>Recip. throughput</th></tr><tr><td>MOVSS (%RCX,%R8,1),%XMM0</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>5</td><td>0.50</td></tr><tr><td>MOVSS (%RCX),%XMM3</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>5</td><td>0.50</td></tr><tr><td>MOVSS (%RCX,%R11,1),%XMM1</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>5</td><td>0.50</td></tr><tr><td>MOVSS (%RCX,%R8,2),%XMM2</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>5</td><td>0.50</td></tr><tr><td>ADD %RDI,%RCX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>UNPCKLPS %XMM0,%XMM3</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>2</td></tr><tr><td>MOVUPS (%RDX,%RAX,1),%XMM4</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>5</td><td>0.50</td></tr><tr><td>MOVUPS (%RSI,%RAX,1),%XMM5</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>5</td><td>0.50</td></tr><tr><td>UNPCKLPS %XMM1,%XMM2</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>2</td></tr><tr><td>MOVAPS %XMM3,%XMM0</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>MOVLHPS %XMM2,%XMM0</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3-6</td><td>1</td></tr><tr><td>DIVPS %XMM4,%XMM0</td><td>17</td><td>17</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>32-70</td><td>17-18</td></tr><tr><td>ADDPS %XMM5,%XMM0</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>6</td><td>0.50</td></tr><tr><td>MOVUPS %XMM0,(%RSI,%RAX,1)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>ADD $0x10,%RAX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>CMP %R10,%RAX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>JNE 16b0 <baseline+0x140></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>1-2</td></tr></table>",
        },
      },
      header = {
        "0% of peak computational performance is used (0.40 out of 64.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = "<ul><li>Try another compiler or update/tune your current one</li><li>Remove inter-iterations dependences from your loop and make it unit-stride:\n<ul><li>If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly</li><li>If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA)</li></ul></li></ul>",
          details = "69% of SSE/AVX instructions are used in vector version (process two or more data elements in vector registers):\n<ul><li>33% of SSE/AVX loads are used in vector version.</li></ul>Since your execution units are vector units, only a fully vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is partially vectorized.\nOnly 16% of vector register length is used (average across all SSE/AVX instructions).\nBy fully vectorizing your loop, you can lower the cost of an iteration from 20.00 to 4.56 cycles (4.38x speedup).",
        },
        {
          workaround = "<ul><li>Reduce the number of division or square root instructions:\n<ul><li>If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact.</li></ul></li><li>Reduce the number of FP add instructions</li><li>Reduce arithmetical operations on array elements</li></ul>",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by:\n<ul><li>execution of divide and square root operations (the divide/square root unit is a bottleneck)</li><li>execution of FP add operations (the FP add unit is a bottleneck)</li><li>execution of INT/FP operations in vector registers (the VPU is a bottleneck)</li></ul>",
        },
      },
      potential = {
        {
          title = "Expensive FP math instructions/calls",
          txt = "Detected performance impact from expensive FP math instructions/calls.\nBy removing/reexpressing them, you can lower the cost of an iteration from 20.00 to 9.00 cycles (2.22x speedup).",
        },
        {
          details = "<ul><li>MOVLHPS: 1 occurrences</li><li>UNPCKLPS: 2 occurrences</li></ul>",
          title = "Special instructions executing on a single port",
          txt = "1.11x slowdown from special instructions executing on a single port.\n",
        },
      },
    },
  common = {
    header = {
      "",
    },
    nb_paths = 1,
  },
}
