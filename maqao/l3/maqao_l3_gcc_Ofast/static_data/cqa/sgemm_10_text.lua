_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant unknown stride: 4 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          workaround = " - Recompile with march=skylake.\nCQA target is Kaby Lake but compiler target is \n - Use vector aligned instructions:\n  1) align your arrays on 32 bytes boundaries: replace { void *p = malloc (size); } with { void *p; posix_memalign (&p, 32, size); }.\n  2) inform your compiler that your arrays are vector aligned: if array 'foo' is 32 bytes-aligned, define a pointer 'p_foo' as __builtin_assume_aligned (foo, 32) and use it instead of 'foo' in the loop.\n",
          details = " - MOVUPS: 3 occurrences\n",
          title = "Vector unaligned load/store instructions",
          txt = "Detected 3 suboptimal vector unaligned load/store instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "7 SSE or AVX instructions are processing arithmetic or math operations on single precision FP elements in vector mode (four at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 28 FP arithmetical operations:\n - 12: addition or subtraction\n - 12: multiply\n - 4: fast reciprocal\nThe binary loop is loading 48 bytes (12 single precision FP elements).\nThe binary loop is storing 16 bytes (4 single precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.44 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 23\nnb uops            : 22\nloop length        : 82\nused x86 registers : 8\nused mmx registers : 0\nused xmm registers : 7\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\nADD-SUB / MUL ratio: 1.00\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 5.50 cycles\nfront end            : 5.50 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6   | P7\n--------------------------------------------------------------\nuops   | 3.50 | 3.50 | 3.00 | 3.00 | 1.00 | 3.00 | 3.00 | 1.00\ncycles | 3.50 | 3.50 | 3.00 | 3.00 | 1.00 | 3.00 | 3.00 | 1.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 5.50\nDispatch  : 3.50\nData deps.: 1.00\nOverall L1: 5.50\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 78%\nload    : 33%\nstore   : 100%\nmul     : 100%\nadd-sub : 100%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 100%\nother   : 100%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 38%\nload    : 25%\nstore   : 50%\nmul     : 50%\nadd-sub : 50%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 50%\nother   : 35%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 5.50 cycles. At this rate:\n - 13% of peak load performance is reached (8.73 out of 64.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 9% of peak store performance is reached (2.91 out of 32.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 5.50 to 3.50 cycles (1.57x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1790\n\nInstruction                | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | P6   | P7   | Latency | Recip. throughput\n----------------------------------------------------------------------------------------------------------------------\nMOVSS (%RCX,%R11,1),%XMM1  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMOVUPS (%RDX,%RAX,1),%XMM5 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nMOVSS (%RCX,%R8,2),%XMM3   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMOVSS (%RCX,%R8,1),%XMM0   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMOVAPS %XMM5,%XMM2         | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nMOVSS (%RCX),%XMM4         | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMOVUPS (%RSI,%RAX,1),%XMM6 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nADD %RDI,%RCX              | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nUNPCKLPS %XMM1,%XMM3       | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nRCPPS %XMM5,%XMM1          | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 4       | 1\nUNPCKLPS %XMM0,%XMM4       | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nMOVAPS %XMM4,%XMM0         | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nMOVLHPS %XMM3,%XMM0        | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nMULPS %XMM1,%XMM2          | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 4       | 0.50\nMULPS %XMM1,%XMM2          | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 4       | 0.50\nADDPS %XMM1,%XMM1          | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 4       | 1\nSUBPS %XMM2,%XMM1          | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 4       | 1\nMULPS %XMM1,%XMM0          | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 4       | 0.50\nADDPS %XMM6,%XMM0          | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 4       | 1\nMOVUPS %XMM0,(%RSI,%RAX,1) | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 1       | 1\nADD $0x10,%RAX             | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nCMP %R10,%RAX              | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJNE 1790 <baseline+0x140>  | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\n",
        },
      },
      header = {
        "15% of peak computational performance is used (5.09 out of 32.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) => for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "78% of SSE/AVX instructions are used in vector version (process two or more data elements in vector registers):\n - 33% of SSE/AVX loads are used in vector version.\nSince your execution units are vector units, only a fully vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is partially vectorized.\nOnly 38% of vector register length is used (average across all SSE/AVX instructions).\nBy fully vectorizing your loop, you can lower the cost of an iteration from 5.50 to 1.75 cycles (3.14x speedup).",
        },
        {
          title = "Execution units bottlenecks",
          txt = "Found no such bottlenecks but see expert reports for more complex bottlenecks.",
        },
      },
      potential = {
        {
          workaround = " - Recompile with march=skylake.\nCQA target is Kaby Lake but compiler target is \n - Try to change order in which elements are evaluated (using parentheses) in arithmetic expressions containing both ADD/SUB and MUL operations to enable your compiler to generate FMA instructions wherever possible.\nFor instance a + b*c is a valid FMA (MUL then ADD).\nHowever (a+b)* c cannot be translated into an FMA (ADD then MUL).\n",
          title = "FMA",
          txt = "Presence of both ADD/SUB and MUL operations.",
        },
      },
    },
  },
  AVG = {
      hint = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant unknown stride: 4 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          workaround = " - Recompile with march=skylake.\nCQA target is Kaby Lake but compiler target is \n - Use vector aligned instructions:\n  1) align your arrays on 32 bytes boundaries: replace { void *p = malloc (size); } with { void *p; posix_memalign (&p, 32, size); }.\n  2) inform your compiler that your arrays are vector aligned: if array 'foo' is 32 bytes-aligned, define a pointer 'p_foo' as __builtin_assume_aligned (foo, 32) and use it instead of 'foo' in the loop.\n",
          details = " - MOVUPS: 3 occurrences\n",
          title = "Vector unaligned load/store instructions",
          txt = "Detected 3 suboptimal vector unaligned load/store instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "7 SSE or AVX instructions are processing arithmetic or math operations on single precision FP elements in vector mode (four at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 28 FP arithmetical operations:\n - 12: addition or subtraction\n - 12: multiply\n - 4: fast reciprocal\nThe binary loop is loading 48 bytes (12 single precision FP elements).\nThe binary loop is storing 16 bytes (4 single precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.44 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 23\nnb uops            : 22\nloop length        : 82\nused x86 registers : 8\nused mmx registers : 0\nused xmm registers : 7\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\nADD-SUB / MUL ratio: 1.00\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 5.50 cycles\nfront end            : 5.50 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6   | P7\n--------------------------------------------------------------\nuops   | 3.50 | 3.50 | 3.00 | 3.00 | 1.00 | 3.00 | 3.00 | 1.00\ncycles | 3.50 | 3.50 | 3.00 | 3.00 | 1.00 | 3.00 | 3.00 | 1.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 5.50\nDispatch  : 3.50\nData deps.: 1.00\nOverall L1: 5.50\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 78%\nload    : 33%\nstore   : 100%\nmul     : 100%\nadd-sub : 100%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 100%\nother   : 100%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 38%\nload    : 25%\nstore   : 50%\nmul     : 50%\nadd-sub : 50%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 50%\nother   : 35%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 5.50 cycles. At this rate:\n - 13% of peak load performance is reached (8.73 out of 64.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 9% of peak store performance is reached (2.91 out of 32.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 5.50 to 3.50 cycles (1.57x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1790\n\nInstruction                | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | P6   | P7   | Latency | Recip. throughput\n----------------------------------------------------------------------------------------------------------------------\nMOVSS (%RCX,%R11,1),%XMM1  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMOVUPS (%RDX,%RAX,1),%XMM5 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nMOVSS (%RCX,%R8,2),%XMM3   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMOVSS (%RCX,%R8,1),%XMM0   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMOVAPS %XMM5,%XMM2         | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nMOVSS (%RCX),%XMM4         | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMOVUPS (%RSI,%RAX,1),%XMM6 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nADD %RDI,%RCX              | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nUNPCKLPS %XMM1,%XMM3       | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nRCPPS %XMM5,%XMM1          | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 4       | 1\nUNPCKLPS %XMM0,%XMM4       | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nMOVAPS %XMM4,%XMM0         | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nMOVLHPS %XMM3,%XMM0        | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nMULPS %XMM1,%XMM2          | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 4       | 0.50\nMULPS %XMM1,%XMM2          | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 4       | 0.50\nADDPS %XMM1,%XMM1          | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 4       | 1\nSUBPS %XMM2,%XMM1          | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 4       | 1\nMULPS %XMM1,%XMM0          | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 4       | 0.50\nADDPS %XMM6,%XMM0          | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 4       | 1\nMOVUPS %XMM0,(%RSI,%RAX,1) | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 1       | 1\nADD $0x10,%RAX             | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nCMP %R10,%RAX              | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJNE 1790 <baseline+0x140>  | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\n",
        },
      },
      header = {
        "15% of peak computational performance is used (5.09 out of 32.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) => for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "78% of SSE/AVX instructions are used in vector version (process two or more data elements in vector registers):\n - 33% of SSE/AVX loads are used in vector version.\nSince your execution units are vector units, only a fully vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is partially vectorized.\nOnly 38% of vector register length is used (average across all SSE/AVX instructions).\nBy fully vectorizing your loop, you can lower the cost of an iteration from 5.50 to 1.75 cycles (3.14x speedup).",
        },
        {
          title = "Execution units bottlenecks",
          txt = "Found no such bottlenecks but see expert reports for more complex bottlenecks.",
        },
      },
      potential = {
        {
          workaround = " - Recompile with march=skylake.\nCQA target is Kaby Lake but compiler target is \n - Try to change order in which elements are evaluated (using parentheses) in arithmetic expressions containing both ADD/SUB and MUL operations to enable your compiler to generate FMA instructions wherever possible.\nFor instance a + b*c is a valid FMA (MUL then ADD).\nHowever (a+b)* c cannot be translated into an FMA (ADD then MUL).\n",
          title = "FMA",
          txt = "Presence of both ADD/SUB and MUL operations.",
        },
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
