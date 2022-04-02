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
          workaround = "<ul><li>Recompile with march=skylake.\nCQA target is Kaby Lake but compiler target is </li><li>Use vector aligned instructions:\n<ol><li>align your arrays on 32 bytes boundaries: replace { void *p = malloc (size); } with { void *p; posix_memalign (&amp;p, 32, size); }.</li><li>inform your compiler that your arrays are vector aligned: if array 'foo' is 32 bytes-aligned, define a pointer 'p_foo' as __builtin_assume_aligned (foo, 32) and use it instead of 'foo' in the loop.</li></ol></li></ul>",
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
          txt = "<table><tr><td>nb instructions</td><td>17</td></tr><tr><td>nb uops</td><td>16</td></tr><tr><td>loop length</td><td>64</td></tr><tr><td>used x86 registers</td><td>8</td></tr><tr><td>used mmx registers</td><td>0</td></tr><tr><td>used xmm registers</td><td>6</td></tr><tr><td>used ymm registers</td><td>0</td></tr><tr><td>used zmm registers</td><td>0</td></tr><tr><td>nb stack references</td><td>0</td></tr></table>",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\n<table><tr><td>micro-operation queue</td><td>4.00 cycles</td></tr><tr><td>front end</td><td>4.00 cycles</td></tr></table>",
        },
        {
          title = "Back-end",
          txt = "<table><tr><th>      </th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>P6</th><th>P7</th></tr><tr><td>uops</td><td>1.75</td><td>1.75</td><td>3.00</td><td>3.00</td><td>1.00</td><td>3.00</td><td>1.50</td><td>1.00</td></tr><tr><td>cycles</td><td>1.75</td><td>1.75</td><td>3.00</td><td>3.00</td><td>1.00</td><td>3.00</td><td>1.50</td><td>1.00</td></tr></table>\n<table><tr><td>Cycles executing div or sqrt instructions</td><td>3.00</td></tr><tr><td>Longest recurrence chain latency (RecMII)</td><td>1.00</td></tr></table>",
        },
        {
          title = "Cycles summary",
          txt = "<table><tr><td>Front-end</td><td>4.00</td></tr><tr><td>Dispatch</td><td>3.00</td></tr><tr><td>DIV/SQRT</td><td>3.00</td></tr><tr><td>Data deps.</td><td>1.00</td></tr><tr><td>Overall L1</td><td>4.00</td></tr></table>",
        },
        {
          title = "Vectorization ratios",
          txt = "<table><tr><td>all</td><td>69%</td></tr><tr><td>load</td><td>33%</td></tr><tr><td>store</td><td>100%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>100%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>100%</td></tr><tr><td>other</td><td>100%</td></tr></table>",
        },
        {
          title = "Vector efficiency ratios",
          txt = "<table><tr><td>all</td><td>32%</td></tr><tr><td>load</td><td>25%</td></tr><tr><td>store</td><td>50%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>50%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>50%</td></tr><tr><td>other</td><td>31%</td></tr></table>",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 4.00 cycles. At this rate:\n<ul><li>18% of peak load performance is reached (12.00 out of 64.00 bytes loaded per cycle (GB/s @ 1GHz))</li><li>12% of peak store performance is reached (4.00 out of 32.00 bytes stored per cycle (GB/s @ 1GHz))</li></ul>",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 4.00 to 3.00 cycles (1.33x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1790\n\n<table><tr><th>Instruction</th><th>Nb FU</th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>P6</th><th>P7</th><th>Latency</th><th>Recip. throughput</th></tr><tr><td>MOVSS (%RCX,%R8,1),%XMM0</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>MOVSS (%RCX),%XMM3</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>MOVSS (%RCX,%R11,1),%XMM1</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>MOVSS (%RCX,%R8,2),%XMM2</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>ADD %RDI,%RCX</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>UNPCKLPS %XMM0,%XMM3</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>1</td><td>1</td></tr><tr><td>MOVUPS (%RDX,%RAX,1),%XMM4</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>MOVUPS (%RSI,%RAX,1),%XMM5</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>UNPCKLPS %XMM1,%XMM2</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>1</td><td>1</td></tr><tr><td>MOVAPS %XMM3,%XMM0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>MOVLHPS %XMM2,%XMM0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>1</td><td>1</td></tr><tr><td>DIVPS %XMM4,%XMM0</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>11</td><td>3</td></tr><tr><td>ADDPS %XMM5,%XMM0</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>MOVUPS %XMM0,(%RSI,%RAX,1)</td><td>1</td><td>0</td><td>0</td><td>0.33</td><td>0.33</td><td>1</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>1</td></tr><tr><td>ADD $0x10,%RAX</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>CMP %R10,%RAX</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>JNE 1790 <baseline+0x140></td><td>1</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0.50-1</td></tr></table>",
        },
      },
      header = {
        "6% of peak computational performance is used (2.00 out of 32.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = "<ul><li>Try to reorganize arrays of structures to structures of arrays</li><li>Consider to permute loops (see vectorization gain report)</li></ul>",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 4.00 to 3.75 cycles (1.07x speedup).",
        },
        {
          workaround = "<ul><li>Try another compiler or update/tune your current one:\n<ul><li>recompile with fassociative-math (included in Ofast or ffast-math) to extend loop vectorization to FP reductions.</li></ul></li><li>Remove inter-iterations dependences from your loop and make it unit-stride:\n<ul><li>If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) =&gt; for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)</li><li>If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) =&gt; for(i) a.x[i] = b.x[i]; (fast, stride 1)</li></ul></li></ul>",
          details = "69% of SSE/AVX instructions are used in vector version (process two or more data elements in vector registers):\n<ul><li>33% of SSE/AVX loads are used in vector version.</li></ul>Since your execution units are vector units, only a fully vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is partially vectorized.\nOnly 32% of vector register length is used (average across all SSE/AVX instructions).\nBy fully vectorizing your loop, you can lower the cost of an iteration from 4.00 to 3.00 cycles (1.33x speedup).",
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
          workaround = "<ul><li>Try to reorganize arrays of structures to structures of arrays</li><li>Consider to permute loops (see vectorization gain report)</li></ul>",
          details = "<ul><li>Constant unknown stride: 4 occurrence(s)</li></ul>Non-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          workaround = "<ul><li>Recompile with march=skylake.\nCQA target is Kaby Lake but compiler target is </li><li>Use vector aligned instructions:\n<ol><li>align your arrays on 32 bytes boundaries: replace { void *p = malloc (size); } with { void *p; posix_memalign (&amp;p, 32, size); }.</li><li>inform your compiler that your arrays are vector aligned: if array 'foo' is 32 bytes-aligned, define a pointer 'p_foo' as __builtin_assume_aligned (foo, 32) and use it instead of 'foo' in the loop.</li></ol></li></ul>",
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
          txt = "<table><tr><td>nb instructions</td><td>17</td></tr><tr><td>nb uops</td><td>16</td></tr><tr><td>loop length</td><td>64</td></tr><tr><td>used x86 registers</td><td>8</td></tr><tr><td>used mmx registers</td><td>0</td></tr><tr><td>used xmm registers</td><td>6</td></tr><tr><td>used ymm registers</td><td>0</td></tr><tr><td>used zmm registers</td><td>0</td></tr><tr><td>nb stack references</td><td>0</td></tr></table>",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\n<table><tr><td>micro-operation queue</td><td>4.00 cycles</td></tr><tr><td>front end</td><td>4.00 cycles</td></tr></table>",
        },
        {
          title = "Back-end",
          txt = "<table><tr><th>      </th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>P6</th><th>P7</th></tr><tr><td>uops</td><td>1.75</td><td>1.75</td><td>3.00</td><td>3.00</td><td>1.00</td><td>3.00</td><td>1.50</td><td>1.00</td></tr><tr><td>cycles</td><td>1.75</td><td>1.75</td><td>3.00</td><td>3.00</td><td>1.00</td><td>3.00</td><td>1.50</td><td>1.00</td></tr></table>\n<table><tr><td>Cycles executing div or sqrt instructions</td><td>3.00</td></tr><tr><td>Longest recurrence chain latency (RecMII)</td><td>1.00</td></tr></table>",
        },
        {
          title = "Cycles summary",
          txt = "<table><tr><td>Front-end</td><td>4.00</td></tr><tr><td>Dispatch</td><td>3.00</td></tr><tr><td>DIV/SQRT</td><td>3.00</td></tr><tr><td>Data deps.</td><td>1.00</td></tr><tr><td>Overall L1</td><td>4.00</td></tr></table>",
        },
        {
          title = "Vectorization ratios",
          txt = "<table><tr><td>all</td><td>69%</td></tr><tr><td>load</td><td>33%</td></tr><tr><td>store</td><td>100%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>100%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>100%</td></tr><tr><td>other</td><td>100%</td></tr></table>",
        },
        {
          title = "Vector efficiency ratios",
          txt = "<table><tr><td>all</td><td>32%</td></tr><tr><td>load</td><td>25%</td></tr><tr><td>store</td><td>50%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>50%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>50%</td></tr><tr><td>other</td><td>31%</td></tr></table>",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 4.00 cycles. At this rate:\n<ul><li>18% of peak load performance is reached (12.00 out of 64.00 bytes loaded per cycle (GB/s @ 1GHz))</li><li>12% of peak store performance is reached (4.00 out of 32.00 bytes stored per cycle (GB/s @ 1GHz))</li></ul>",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 4.00 to 3.00 cycles (1.33x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1790\n\n<table><tr><th>Instruction</th><th>Nb FU</th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>P6</th><th>P7</th><th>Latency</th><th>Recip. throughput</th></tr><tr><td>MOVSS (%RCX,%R8,1),%XMM0</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>MOVSS (%RCX),%XMM3</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>MOVSS (%RCX,%R11,1),%XMM1</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>MOVSS (%RCX,%R8,2),%XMM2</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>ADD %RDI,%RCX</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>UNPCKLPS %XMM0,%XMM3</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>1</td><td>1</td></tr><tr><td>MOVUPS (%RDX,%RAX,1),%XMM4</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>MOVUPS (%RSI,%RAX,1),%XMM5</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>UNPCKLPS %XMM1,%XMM2</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>1</td><td>1</td></tr><tr><td>MOVAPS %XMM3,%XMM0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>MOVLHPS %XMM2,%XMM0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>1</td><td>1</td></tr><tr><td>DIVPS %XMM4,%XMM0</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>11</td><td>3</td></tr><tr><td>ADDPS %XMM5,%XMM0</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>MOVUPS %XMM0,(%RSI,%RAX,1)</td><td>1</td><td>0</td><td>0</td><td>0.33</td><td>0.33</td><td>1</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>1</td></tr><tr><td>ADD $0x10,%RAX</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>CMP %R10,%RAX</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>JNE 1790 <baseline+0x140></td><td>1</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0.50-1</td></tr></table>",
        },
      },
      header = {
        "6% of peak computational performance is used (2.00 out of 32.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = "<ul><li>Try to reorganize arrays of structures to structures of arrays</li><li>Consider to permute loops (see vectorization gain report)</li></ul>",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 4.00 to 3.75 cycles (1.07x speedup).",
        },
        {
          workaround = "<ul><li>Try another compiler or update/tune your current one:\n<ul><li>recompile with fassociative-math (included in Ofast or ffast-math) to extend loop vectorization to FP reductions.</li></ul></li><li>Remove inter-iterations dependences from your loop and make it unit-stride:\n<ul><li>If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) =&gt; for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)</li><li>If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) =&gt; for(i) a.x[i] = b.x[i]; (fast, stride 1)</li></ul></li></ul>",
          details = "69% of SSE/AVX instructions are used in vector version (process two or more data elements in vector registers):\n<ul><li>33% of SSE/AVX loads are used in vector version.</li></ul>Since your execution units are vector units, only a fully vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is partially vectorized.\nOnly 32% of vector register length is used (average across all SSE/AVX instructions).\nBy fully vectorizing your loop, you can lower the cost of an iteration from 4.00 to 3.00 cycles (1.33x speedup).",
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
      "The loop is defined in /home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54-55.\n",
      "It is main loop of related source loop which is unrolled by 4 (including vectorization).",
    },
    nb_paths = 1,
  },
}
