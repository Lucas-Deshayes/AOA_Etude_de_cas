_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n<ul><li>VINSERTPS: 8 occurrences</li></ul>",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          workaround = "<ul><li>Try to reorganize arrays of structures to structures of arrays</li><li>Consider to permute loops (see vectorization gain report)</li></ul>",
          details = "<ul><li>Constant unknown stride: 8 occurrence(s)</li></ul>Non-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          workaround = "Use vector aligned instructions:\n<ol><li>align your arrays on 32 bytes boundaries: replace { void *p = malloc (size); } with { void *p; posix_memalign (&amp;p, 32, size); }.</li><li>inform your compiler that your arrays are vector aligned: if array 'foo' is 32 bytes-aligned, define a pointer 'p_foo' as __builtin_assume_aligned (foo, 32) and use it instead of 'foo' in the loop.</li></ol>",
          details = "<ul><li>VINSERTF128: 2 occurrences</li></ul>",
          title = "Vector unaligned load/store instructions",
          txt = "Detected 2 suboptimal vector unaligned load/store instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "4 AVX instructions are processing arithmetic or math operations on single precision FP elements in vector mode (eight at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 32 FP arithmetical operations:\n<ul><li>16: addition or subtraction</li><li>16: divide</li></ul>The binary loop is loading 192 bytes (48 single precision FP elements).\nThe binary loop is storing 64 bytes (16 single precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.12 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "<table><tr><td>nb instructions</td><td>36</td></tr><tr><td>nb uops</td><td>43</td></tr><tr><td>loop length</td><td>189</td></tr><tr><td>used x86 registers</td><td>8</td></tr><tr><td>used mmx registers</td><td>0</td></tr><tr><td>used xmm registers</td><td>13</td></tr><tr><td>used ymm registers</td><td>7</td></tr><tr><td>used zmm registers</td><td>0</td></tr><tr><td>nb stack references</td><td>0</td></tr></table>",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\n<table><tr><td>micro-operation queue</td><td>10.75 cycles</td></tr><tr><td>front end</td><td>10.75 cycles</td></tr></table>",
        },
        {
          title = "Back-end",
          txt = "<table><tr><th>      </th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>P6</th><th>P7</th></tr><tr><td>uops</td><td>3.75</td><td>3.75</td><td>10.00</td><td>10.00</td><td>2.00</td><td>14.00</td><td>3.50</td><td>2.00</td></tr><tr><td>cycles</td><td>3.75</td><td>3.75</td><td>10.00</td><td>10.00</td><td>2.00</td><td>14.00</td><td>3.50</td><td>2.00</td></tr></table>\n<table><tr><td>Cycles executing div or sqrt instructions</td><td>10.00</td></tr><tr><td>Longest recurrence chain latency (RecMII)</td><td>2.00</td></tr></table>",
        },
        {
          title = "Cycles summary",
          txt = "<table><tr><td>Front-end</td><td>10.75</td></tr><tr><td>Dispatch</td><td>14.00</td></tr><tr><td>DIV/SQRT</td><td>10.00</td></tr><tr><td>Data deps.</td><td>2.00</td></tr><tr><td>Overall L1</td><td>14.00</td></tr></table>",
        },
        {
          title = "Vectorization ratios",
          txt = "<table><tr><td>all</td><td>42%</td></tr><tr><td>load</td><td>20%</td></tr><tr><td>store</td><td>100%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>100%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>100%</td></tr><tr><td>other</td><td>42%</td></tr></table>",
        },
        {
          title = "Vector efficiency ratios",
          txt = "<table><tr><td>all</td><td>35%</td></tr><tr><td>load</td><td>30%</td></tr><tr><td>store</td><td>100%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>100%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>100%</td></tr><tr><td>other</td><td>21%</td></tr></table>",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 14.00 cycles. At this rate:\n<ul><li>21% of peak load performance is reached (13.71 out of 64.00 bytes loaded per cycle (GB/s @ 1GHz))</li><li>14% of peak store performance is reached (4.57 out of 32.00 bytes stored per cycle (GB/s @ 1GHz))</li></ul>",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1898\n\n<table><tr><th>Instruction</th><th>Nb FU</th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>P6</th><th>P7</th><th>Latency</th><th>Recip. throughput</th></tr><tr><td>VMOVSS (%RAX,%R8,2),%XMM13</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>VMOVSS (%RAX),%XMM15</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>VMOVSS (%RCX,%R8,2),%XMM2</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>VMOVSS (%RCX),%XMM0</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>VINSERTPS $0x10,(%RAX,%R11,1),%XMM13,%XMM14</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>VINSERTPS $0x10,(%RAX,%R8,1),%XMM15,%XMM1</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>VINSERTPS $0x10,(%RCX,%R11,1),%XMM2,%XMM4</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>VINSERTPS $0x10,(%RCX,%R8,1),%XMM0,%XMM3</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>VMOVLHPS %XMM14,%XMM1,%XMM6</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>1</td><td>1</td></tr><tr><td>VMOVLHPS %XMM4,%XMM3,%XMM5</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>1</td><td>1</td></tr><tr><td>VINSERTF128 $0x1,%XMM6,%YMM5,%YMM7</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VDIVPS (%R10),%YMM7,%YMM8</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>11</td><td>5</td></tr><tr><td>VADDPS (%R9),%YMM8,%YMM9</td><td>1</td><td>0.50</td><td>0.50</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>ADD %RSI,%RCX</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>ADD %RSI,%RAX</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>VMOVUPS %YMM9,(%R9)</td><td>1</td><td>0</td><td>0</td><td>0.33</td><td>0.33</td><td>1</td><td>0</td><td>0</td><td>0.33</td><td>3</td><td>1</td></tr><tr><td>VMOVSS (%RAX,%R8,2),%XMM10</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>VMOVSS (%RAX),%XMM12</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>VMOVSS (%RCX,%R8,2),%XMM14</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>VMOVSS (%RCX),%XMM1</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>VINSERTPS $0x10,(%RAX,%R11,1),%XMM10,%XMM11</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>VINSERTPS $0x10,(%RAX,%R8,1),%XMM12,%XMM13</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>VINSERTPS $0x10,(%RCX,%R11,1),%XMM14,%XMM15</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>VINSERTPS $0x10,(%RCX,%R8,1),%XMM1,%XMM2</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>VMOVLHPS %XMM11,%XMM13,%XMM0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>1</td><td>1</td></tr><tr><td>VMOVLHPS %XMM15,%XMM2,%XMM4</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>1</td><td>1</td></tr><tr><td>VINSERTF128 $0x1,%XMM0,%YMM4,%YMM3</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VDIVPS 0x20(%R10),%YMM3,%YMM5</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>11</td><td>5</td></tr><tr><td>VADDPS 0x20(%R9),%YMM5,%YMM6</td><td>1</td><td>0.50</td><td>0.50</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>ADD $0x40,%R10</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>ADD %RSI,%RCX</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>VMOVUPS %YMM6,0x20(%R9)</td><td>1</td><td>0</td><td>0</td><td>0.33</td><td>0.33</td><td>1</td><td>0</td><td>0</td><td>0.33</td><td>3</td><td>1</td></tr><tr><td>ADD %RSI,%RAX</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>ADD $0x40,%R9</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>CMP %R13,%R10</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>JNE 1898 <baseline+0x248></td><td>1</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0.50-1</td></tr></table>",
        },
      },
      header = {
        "7% of peak computational performance is used (2.29 out of 32.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = "<ul><li>Try another compiler or update/tune your current one:\n<ul><li>recompile with fassociative-math (included in Ofast or ffast-math) to extend loop vectorization to FP reductions.</li></ul></li><li>Remove inter-iterations dependences from your loop and make it unit-stride:\n<ul><li>If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) =&gt; for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)</li><li>If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) =&gt; for(i) a.x[i] = b.x[i]; (fast, stride 1)</li></ul></li></ul>",
          details = "42% of SSE/AVX instructions are used in vector version (process two or more data elements in vector registers):\n<ul><li>20% of SSE/AVX loads are used in vector version.</li><li>42% of SSE/AVX instructions that are not load, store, addition, subtraction nor multiply instructions are used in vector version.</li></ul>Since your execution units are vector units, only a fully vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is poorly vectorized.\nOnly 35% of vector register length is used (average across all SSE/AVX instructions).\nBy fully vectorizing your loop, you can lower the cost of an iteration from 14.00 to 10.00 cycles (1.40x speedup).",
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
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n<ul><li>VINSERTPS: 8 occurrences</li></ul>",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          workaround = "<ul><li>Try to reorganize arrays of structures to structures of arrays</li><li>Consider to permute loops (see vectorization gain report)</li></ul>",
          details = "<ul><li>Constant unknown stride: 8 occurrence(s)</li></ul>Non-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          workaround = "Use vector aligned instructions:\n<ol><li>align your arrays on 32 bytes boundaries: replace { void *p = malloc (size); } with { void *p; posix_memalign (&amp;p, 32, size); }.</li><li>inform your compiler that your arrays are vector aligned: if array 'foo' is 32 bytes-aligned, define a pointer 'p_foo' as __builtin_assume_aligned (foo, 32) and use it instead of 'foo' in the loop.</li></ol>",
          details = "<ul><li>VINSERTF128: 2 occurrences</li></ul>",
          title = "Vector unaligned load/store instructions",
          txt = "Detected 2 suboptimal vector unaligned load/store instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "4 AVX instructions are processing arithmetic or math operations on single precision FP elements in vector mode (eight at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 32 FP arithmetical operations:\n<ul><li>16: addition or subtraction</li><li>16: divide</li></ul>The binary loop is loading 192 bytes (48 single precision FP elements).\nThe binary loop is storing 64 bytes (16 single precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.12 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "<table><tr><td>nb instructions</td><td>36</td></tr><tr><td>nb uops</td><td>43</td></tr><tr><td>loop length</td><td>189</td></tr><tr><td>used x86 registers</td><td>8</td></tr><tr><td>used mmx registers</td><td>0</td></tr><tr><td>used xmm registers</td><td>13</td></tr><tr><td>used ymm registers</td><td>7</td></tr><tr><td>used zmm registers</td><td>0</td></tr><tr><td>nb stack references</td><td>0</td></tr></table>",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\n<table><tr><td>micro-operation queue</td><td>10.75 cycles</td></tr><tr><td>front end</td><td>10.75 cycles</td></tr></table>",
        },
        {
          title = "Back-end",
          txt = "<table><tr><th>      </th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>P6</th><th>P7</th></tr><tr><td>uops</td><td>3.75</td><td>3.75</td><td>10.00</td><td>10.00</td><td>2.00</td><td>14.00</td><td>3.50</td><td>2.00</td></tr><tr><td>cycles</td><td>3.75</td><td>3.75</td><td>10.00</td><td>10.00</td><td>2.00</td><td>14.00</td><td>3.50</td><td>2.00</td></tr></table>\n<table><tr><td>Cycles executing div or sqrt instructions</td><td>10.00</td></tr><tr><td>Longest recurrence chain latency (RecMII)</td><td>2.00</td></tr></table>",
        },
        {
          title = "Cycles summary",
          txt = "<table><tr><td>Front-end</td><td>10.75</td></tr><tr><td>Dispatch</td><td>14.00</td></tr><tr><td>DIV/SQRT</td><td>10.00</td></tr><tr><td>Data deps.</td><td>2.00</td></tr><tr><td>Overall L1</td><td>14.00</td></tr></table>",
        },
        {
          title = "Vectorization ratios",
          txt = "<table><tr><td>all</td><td>42%</td></tr><tr><td>load</td><td>20%</td></tr><tr><td>store</td><td>100%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>100%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>100%</td></tr><tr><td>other</td><td>42%</td></tr></table>",
        },
        {
          title = "Vector efficiency ratios",
          txt = "<table><tr><td>all</td><td>35%</td></tr><tr><td>load</td><td>30%</td></tr><tr><td>store</td><td>100%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>100%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>100%</td></tr><tr><td>other</td><td>21%</td></tr></table>",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 14.00 cycles. At this rate:\n<ul><li>21% of peak load performance is reached (13.71 out of 64.00 bytes loaded per cycle (GB/s @ 1GHz))</li><li>14% of peak store performance is reached (4.57 out of 32.00 bytes stored per cycle (GB/s @ 1GHz))</li></ul>",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1898\n\n<table><tr><th>Instruction</th><th>Nb FU</th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>P6</th><th>P7</th><th>Latency</th><th>Recip. throughput</th></tr><tr><td>VMOVSS (%RAX,%R8,2),%XMM13</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>VMOVSS (%RAX),%XMM15</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>VMOVSS (%RCX,%R8,2),%XMM2</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>VMOVSS (%RCX),%XMM0</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>VINSERTPS $0x10,(%RAX,%R11,1),%XMM13,%XMM14</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>VINSERTPS $0x10,(%RAX,%R8,1),%XMM15,%XMM1</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>VINSERTPS $0x10,(%RCX,%R11,1),%XMM2,%XMM4</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>VINSERTPS $0x10,(%RCX,%R8,1),%XMM0,%XMM3</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>VMOVLHPS %XMM14,%XMM1,%XMM6</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>1</td><td>1</td></tr><tr><td>VMOVLHPS %XMM4,%XMM3,%XMM5</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>1</td><td>1</td></tr><tr><td>VINSERTF128 $0x1,%XMM6,%YMM5,%YMM7</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VDIVPS (%R10),%YMM7,%YMM8</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>11</td><td>5</td></tr><tr><td>VADDPS (%R9),%YMM8,%YMM9</td><td>1</td><td>0.50</td><td>0.50</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>ADD %RSI,%RCX</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>ADD %RSI,%RAX</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>VMOVUPS %YMM9,(%R9)</td><td>1</td><td>0</td><td>0</td><td>0.33</td><td>0.33</td><td>1</td><td>0</td><td>0</td><td>0.33</td><td>3</td><td>1</td></tr><tr><td>VMOVSS (%RAX,%R8,2),%XMM10</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>VMOVSS (%RAX),%XMM12</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>VMOVSS (%RCX,%R8,2),%XMM14</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>VMOVSS (%RCX),%XMM1</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>VINSERTPS $0x10,(%RAX,%R11,1),%XMM10,%XMM11</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>VINSERTPS $0x10,(%RAX,%R8,1),%XMM12,%XMM13</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>VINSERTPS $0x10,(%RCX,%R11,1),%XMM14,%XMM15</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>VINSERTPS $0x10,(%RCX,%R8,1),%XMM1,%XMM2</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>VMOVLHPS %XMM11,%XMM13,%XMM0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>1</td><td>1</td></tr><tr><td>VMOVLHPS %XMM15,%XMM2,%XMM4</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>1</td><td>1</td></tr><tr><td>VINSERTF128 $0x1,%XMM0,%YMM4,%YMM3</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VDIVPS 0x20(%R10),%YMM3,%YMM5</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>11</td><td>5</td></tr><tr><td>VADDPS 0x20(%R9),%YMM5,%YMM6</td><td>1</td><td>0.50</td><td>0.50</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>ADD $0x40,%R10</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>ADD %RSI,%RCX</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>VMOVUPS %YMM6,0x20(%R9)</td><td>1</td><td>0</td><td>0</td><td>0.33</td><td>0.33</td><td>1</td><td>0</td><td>0</td><td>0.33</td><td>3</td><td>1</td></tr><tr><td>ADD %RSI,%RAX</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>ADD $0x40,%R9</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>CMP %R13,%R10</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>JNE 1898 <baseline+0x248></td><td>1</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0.50-1</td></tr></table>",
        },
      },
      header = {
        "7% of peak computational performance is used (2.29 out of 32.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = "<ul><li>Try another compiler or update/tune your current one:\n<ul><li>recompile with fassociative-math (included in Ofast or ffast-math) to extend loop vectorization to FP reductions.</li></ul></li><li>Remove inter-iterations dependences from your loop and make it unit-stride:\n<ul><li>If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) =&gt; for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)</li><li>If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) =&gt; for(i) a.x[i] = b.x[i]; (fast, stride 1)</li></ul></li></ul>",
          details = "42% of SSE/AVX instructions are used in vector version (process two or more data elements in vector registers):\n<ul><li>20% of SSE/AVX loads are used in vector version.</li><li>42% of SSE/AVX instructions that are not load, store, addition, subtraction nor multiply instructions are used in vector version.</li></ul>Since your execution units are vector units, only a fully vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is poorly vectorized.\nOnly 35% of vector register length is used (average across all SSE/AVX instructions).\nBy fully vectorizing your loop, you can lower the cost of an iteration from 14.00 to 10.00 cycles (1.40x speedup).",
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
      "It is main loop of related source loop which is unrolled by 2 (including vectorization).",
    },
    nb_paths = 1,
  },
}
