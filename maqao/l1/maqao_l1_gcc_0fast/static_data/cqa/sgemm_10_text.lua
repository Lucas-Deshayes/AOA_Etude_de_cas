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
          workaround = " - Recompile with march=knm.\nCQA target is Knights Mill but compiler target is \n - Use vector aligned instructions:\n  1) align your arrays on 64 bytes boundaries: replace { void *p = malloc (size); } with { void *p; posix_memalign (&p, 64, size); }.\n  2) inform your compiler that your arrays are vector aligned: if array 'foo' is 64 bytes-aligned, define a pointer 'p_foo' as __builtin_assume_aligned (foo, 64) and use it instead of 'foo' in the loop.\n",
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
          txt = "nb instructions    : 23\nloop length        : 82\nused x86 registers : 8\nused mmx registers : 0\nused xmm registers : 7\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\nADD-SUB / MUL ratio: 1.00\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 6.00 cycles\ninstruction queue    : 11.50 cycles\ndecoding             : 11.50 cycles\nmicro-operation queue: 12.00 cycles\nfront end            : 12.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6\n-------------------------------------------------------\nuops   | 6.00 | 6.00 | 3.50 | 3.50 | 2.00 | 2.00 | 1.00\ncycles | 6.00 | 6.00 | 3.50 | 3.50 | 2.00 | 2.00 | 1.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 12.00\nDispatch  : 6.00\nData deps.: 1.00\nOverall L1: 12.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 78%\nload    : 33%\nstore   : 100%\nmul     : 100%\nadd-sub : 100%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 100%\nother   : 100%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 19%\nload    : 12%\nstore   : 25%\nmul     : 25%\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 25%\nother   : 17%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 12.00 cycles. At this rate:\n - 3% of peak load performance is reached (4.00 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 2% of peak store performance is reached (1.33 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1790\n\nInstruction                | Nb FU | P0   | P1   | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n---------------------------------------------------------------------------------------------------------------\nMOVSS (%RCX,%R11,1),%XMM1  | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nMOVUPS (%RDX,%RAX,1),%XMM5 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nMOVSS (%RCX,%R8,2),%XMM3   | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nMOVSS (%RCX,%R8,1),%XMM0   | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nMOVAPS %XMM5,%XMM2         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nMOVSS (%RCX),%XMM4         | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nMOVUPS (%RSI,%RAX,1),%XMM6 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nADD %RDI,%RCX              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nUNPCKLPS %XMM1,%XMM3       | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 4       | 2\nRCPPS %XMM5,%XMM1          | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 7       | 2\nUNPCKLPS %XMM0,%XMM4       | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 4       | 2\nMOVAPS %XMM4,%XMM0         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nMOVLHPS %XMM3,%XMM0        | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nMULPS %XMM1,%XMM2          | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nMULPS %XMM1,%XMM2          | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nADDPS %XMM1,%XMM1          | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nSUBPS %XMM2,%XMM1          | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nMULPS %XMM1,%XMM0          | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nADDPS %XMM6,%XMM0          | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nMOVUPS %XMM0,(%RSI,%RAX,1) | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nADD $0x10,%RAX             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCMP %R10,%RAX              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJNE 1790 <baseline+0x140>  | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\n",
        },
      },
      header = {
        "3% of peak computational performance is used (2.33 out of 64.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 12.00 to 11.00 cycles (1.09x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) => for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "78% of SSE/AVX instructions are used in vector version (process two or more data elements in vector registers):\n - 33% of SSE/AVX loads are used in vector version.\nSince your execution units are vector units, only a fully vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is partially vectorized.\nOnly 19% of vector register length is used (average across all SSE/AVX instructions).\nBy fully vectorizing your loop, you can lower the cost of an iteration from 12.00 to 1.79 cycles (6.69x speedup).",
        },
        {
          title = "Execution units bottlenecks",
          txt = "Found no such bottlenecks but see expert reports for more complex bottlenecks.",
        },
      },
      potential = {
        {
          workaround = " - Recompile with march=knm.\nCQA target is Knights Mill but compiler target is \n - Try to change order in which elements are evaluated (using parentheses) in arithmetic expressions containing both ADD/SUB and MUL operations to enable your compiler to generate FMA instructions wherever possible.\nFor instance a + b*c is a valid FMA (MUL then ADD).\nHowever (a+b)* c cannot be translated into an FMA (ADD then MUL).\n",
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
          workaround = " - Recompile with march=knm.\nCQA target is Knights Mill but compiler target is \n - Use vector aligned instructions:\n  1) align your arrays on 64 bytes boundaries: replace { void *p = malloc (size); } with { void *p; posix_memalign (&p, 64, size); }.\n  2) inform your compiler that your arrays are vector aligned: if array 'foo' is 64 bytes-aligned, define a pointer 'p_foo' as __builtin_assume_aligned (foo, 64) and use it instead of 'foo' in the loop.\n",
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
          txt = "nb instructions    : 23\nloop length        : 82\nused x86 registers : 8\nused mmx registers : 0\nused xmm registers : 7\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\nADD-SUB / MUL ratio: 1.00\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 6.00 cycles\ninstruction queue    : 11.50 cycles\ndecoding             : 11.50 cycles\nmicro-operation queue: 12.00 cycles\nfront end            : 12.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6\n-------------------------------------------------------\nuops   | 6.00 | 6.00 | 3.50 | 3.50 | 2.00 | 2.00 | 1.00\ncycles | 6.00 | 6.00 | 3.50 | 3.50 | 2.00 | 2.00 | 1.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 12.00\nDispatch  : 6.00\nData deps.: 1.00\nOverall L1: 12.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 78%\nload    : 33%\nstore   : 100%\nmul     : 100%\nadd-sub : 100%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 100%\nother   : 100%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 19%\nload    : 12%\nstore   : 25%\nmul     : 25%\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 25%\nother   : 17%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 12.00 cycles. At this rate:\n - 3% of peak load performance is reached (4.00 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 2% of peak store performance is reached (1.33 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1790\n\nInstruction                | Nb FU | P0   | P1   | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n---------------------------------------------------------------------------------------------------------------\nMOVSS (%RCX,%R11,1),%XMM1  | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nMOVUPS (%RDX,%RAX,1),%XMM5 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nMOVSS (%RCX,%R8,2),%XMM3   | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nMOVSS (%RCX,%R8,1),%XMM0   | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nMOVAPS %XMM5,%XMM2         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nMOVSS (%RCX),%XMM4         | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nMOVUPS (%RSI,%RAX,1),%XMM6 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nADD %RDI,%RCX              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nUNPCKLPS %XMM1,%XMM3       | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 4       | 2\nRCPPS %XMM5,%XMM1          | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 7       | 2\nUNPCKLPS %XMM0,%XMM4       | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 4       | 2\nMOVAPS %XMM4,%XMM0         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nMOVLHPS %XMM3,%XMM0        | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nMULPS %XMM1,%XMM2          | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nMULPS %XMM1,%XMM2          | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nADDPS %XMM1,%XMM1          | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nSUBPS %XMM2,%XMM1          | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nMULPS %XMM1,%XMM0          | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nADDPS %XMM6,%XMM0          | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nMOVUPS %XMM0,(%RSI,%RAX,1) | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nADD $0x10,%RAX             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCMP %R10,%RAX              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJNE 1790 <baseline+0x140>  | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\n",
        },
      },
      header = {
        "3% of peak computational performance is used (2.33 out of 64.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 12.00 to 11.00 cycles (1.09x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) => for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "78% of SSE/AVX instructions are used in vector version (process two or more data elements in vector registers):\n - 33% of SSE/AVX loads are used in vector version.\nSince your execution units are vector units, only a fully vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is partially vectorized.\nOnly 19% of vector register length is used (average across all SSE/AVX instructions).\nBy fully vectorizing your loop, you can lower the cost of an iteration from 12.00 to 1.79 cycles (6.69x speedup).",
        },
        {
          title = "Execution units bottlenecks",
          txt = "Found no such bottlenecks but see expert reports for more complex bottlenecks.",
        },
      },
      potential = {
        {
          workaround = " - Recompile with march=knm.\nCQA target is Knights Mill but compiler target is \n - Try to change order in which elements are evaluated (using parentheses) in arithmetic expressions containing both ADD/SUB and MUL operations to enable your compiler to generate FMA instructions wherever possible.\nFor instance a + b*c is a valid FMA (MUL then ADD).\nHowever (a+b)* c cannot be translated into an FMA (ADD then MUL).\n",
          title = "FMA",
          txt = "Presence of both ADD/SUB and MUL operations.",
        },
      },
    },
  common = {
    header = {
      "The loop is defined in /users/user4427/AOA_Etude_de_cas/demo/kernel.c:54-55.\n",
      "It is main loop of related source loop which is unrolled by 4 (including vectorization).",
    },
    nb_paths = 1,
  },
}
