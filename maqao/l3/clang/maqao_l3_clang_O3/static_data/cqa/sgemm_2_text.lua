_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          workaround = "Try to remove indirect accesses. If applicable, precompute elements out of the innermost loop.",
          details = " - Irregular (variable stride) or indirect: 4 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          workaround = " - Pass to your compiler a micro-architecture specialization option:\n  * Please read your compiler manual\n - Use vector aligned instructions:\n  1) align your arrays on 32 bytes boundaries: replace { void *p = malloc (size); } with { void *p; posix_memalign (&p, 32, size); }.\n  2) inform your compiler that your arrays are vector aligned: read your compiler manual.\n",
          details = " - MOVUPS: 3 occurrences\n",
          title = "Vector unaligned load/store instructions",
          txt = "Detected 3 suboptimal vector unaligned load/store instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "2 SSE or AVX instructions are processing arithmetic or math operations on single precision FP elements in vector mode (four at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 8 FP arithmetical operations:\n - 4: addition or subtraction\n - 4: divide\nThe binary loop is loading 48 bytes (12 single precision FP elements).\nThe binary loop is storing 16 bytes (4 single precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.12 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 37\nnb uops            : 36\nloop length        : 162\nused x86 registers : 9\nused mmx registers : 0\nused xmm registers : 7\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 9.00 cycles\nfront end            : 9.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6   | P7\n--------------------------------------------------------------\nuops   | 7.67 | 7.67 | 3.00 | 3.00 | 1.00 | 7.67 | 2.00 | 1.00\ncycles | 7.67 | 7.67 | 3.00 | 3.00 | 1.00 | 7.67 | 2.00 | 1.00\n\nCycles executing div or sqrt instructions: 3.00\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 9.00\nDispatch  : 7.67\nDIV/SQRT  : 3.00\nData deps.: 1.00\nOverall L1: 9.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 81%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : 100%\nadd-sub: 100%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 71%\nFP\nall     : 66%\nload    : 33%\nstore   : 100%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 100%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 100%\nother   : 100%\nINT+FP\nall     : 76%\nload    : 33%\nstore   : 100%\nmul     : 100%\nadd-sub : 100%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 100%\nother   : 76%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 45%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : 50%\nadd-sub: 50%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 42%\nFP\nall     : 31%\nload    : 25%\nstore   : 50%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 50%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 50%\nother   : 25%\nINT+FP\nall     : 40%\nload    : 25%\nstore   : 50%\nmul     : 50%\nadd-sub : 50%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 50%\nother   : 39%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 9.00 cycles. At this rate:\n - 8% of peak load performance is reached (5.33 out of 64.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 5% of peak store performance is reached (1.78 out of 32.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 9.00 to 7.67 cycles (1.17x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 401340\n\nInstruction                 | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | P6   | P7   | Latency | Recip. throughput\n-----------------------------------------------------------------------------------------------------------------------\nMOVDQA %XMM5,%XMM6          | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nPMULUDQ %XMM0,%XMM6         | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nMOVDQA %XMM5,%XMM7          | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nPSRLQ $0x20,%XMM7           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 0.50\nPMULUDQ %XMM0,%XMM7         | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nPSLLQ $0x20,%XMM7           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 0.50\nPADDQ %XMM6,%XMM7           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nMOVDQA %XMM2,%XMM6          | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nPMULUDQ %XMM0,%XMM6         | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nMOVDQA %XMM2,%XMM4          | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nPSRLQ $0x20,%XMM4           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 0.50\nPMULUDQ %XMM0,%XMM4         | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nPSLLQ $0x20,%XMM4           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 0.50\nPADDQ %XMM6,%XMM4           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nMOVQ %XMM4,%R11             | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 1\nPSHUFD $0x4e,%XMM4,%XMM4    | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nMOVQ %XMM4,%RAX             | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 1\nMOVQ %XMM7,%R15             | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 1\nPSHUFD $0x4e,%XMM7,%XMM4    | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nMOVQ %XMM4,%R13             | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 1\nMOVSS (%R9,%R11,4),%XMM4    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMOVSS (%R9,%RAX,4),%XMM6    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nUNPCKLPS %XMM6,%XMM4        | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nMOVSS (%R9,%R15,4),%XMM6    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMOVSS (%R9,%R13,4),%XMM7    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nUNPCKLPS %XMM7,%XMM6        | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nMOVLHPS %XMM6,%XMM4         | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nMOVUPS (%RDX,%RBX,4),%XMM6  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nDIVPS %XMM6,%XMM4           | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 11      | 3\nMOVUPS (%RSI,%RBX,4),%XMM6  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nADDPS %XMM4,%XMM6           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 4       | 1\nMOVUPS %XMM6,(%RSI,%RBX,4)  | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 1       | 1\nADD $0x4,%RBX               | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nPADDQ %XMM3,%XMM2           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nPADDQ %XMM3,%XMM5           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nCMP %RBX,%R14               | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJNE 401340 <baseline+0x1a0> | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\n",
        },
      },
      header = {
        "2% of peak computational performance is used (0.89 out of 32.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) => for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "76% of SSE/AVX instructions are used in vector version (process two or more data elements in vector registers):\n - 33% of SSE/AVX loads are used in vector version.\n - 76% of SSE/AVX instructions that are not load, store, addition, subtraction nor multiply instructions are used in vector version.\nSince your execution units are vector units, only a fully vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is partially vectorized.\nOnly 40% of vector register length is used (average across all SSE/AVX instructions).\nBy fully vectorizing your loop, you can lower the cost of an iteration from 9.00 to 3.08 cycles (2.92x speedup).",
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
          workaround = "Try to remove indirect accesses. If applicable, precompute elements out of the innermost loop.",
          details = " - Irregular (variable stride) or indirect: 4 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          workaround = " - Pass to your compiler a micro-architecture specialization option:\n  * Please read your compiler manual\n - Use vector aligned instructions:\n  1) align your arrays on 32 bytes boundaries: replace { void *p = malloc (size); } with { void *p; posix_memalign (&p, 32, size); }.\n  2) inform your compiler that your arrays are vector aligned: read your compiler manual.\n",
          details = " - MOVUPS: 3 occurrences\n",
          title = "Vector unaligned load/store instructions",
          txt = "Detected 3 suboptimal vector unaligned load/store instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "2 SSE or AVX instructions are processing arithmetic or math operations on single precision FP elements in vector mode (four at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 8 FP arithmetical operations:\n - 4: addition or subtraction\n - 4: divide\nThe binary loop is loading 48 bytes (12 single precision FP elements).\nThe binary loop is storing 16 bytes (4 single precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.12 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 37\nnb uops            : 36\nloop length        : 162\nused x86 registers : 9\nused mmx registers : 0\nused xmm registers : 7\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 9.00 cycles\nfront end            : 9.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6   | P7\n--------------------------------------------------------------\nuops   | 7.67 | 7.67 | 3.00 | 3.00 | 1.00 | 7.67 | 2.00 | 1.00\ncycles | 7.67 | 7.67 | 3.00 | 3.00 | 1.00 | 7.67 | 2.00 | 1.00\n\nCycles executing div or sqrt instructions: 3.00\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 9.00\nDispatch  : 7.67\nDIV/SQRT  : 3.00\nData deps.: 1.00\nOverall L1: 9.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 81%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : 100%\nadd-sub: 100%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 71%\nFP\nall     : 66%\nload    : 33%\nstore   : 100%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 100%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 100%\nother   : 100%\nINT+FP\nall     : 76%\nload    : 33%\nstore   : 100%\nmul     : 100%\nadd-sub : 100%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 100%\nother   : 76%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 45%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : 50%\nadd-sub: 50%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 42%\nFP\nall     : 31%\nload    : 25%\nstore   : 50%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 50%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 50%\nother   : 25%\nINT+FP\nall     : 40%\nload    : 25%\nstore   : 50%\nmul     : 50%\nadd-sub : 50%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 50%\nother   : 39%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 9.00 cycles. At this rate:\n - 8% of peak load performance is reached (5.33 out of 64.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 5% of peak store performance is reached (1.78 out of 32.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 9.00 to 7.67 cycles (1.17x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 401340\n\nInstruction                 | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | P6   | P7   | Latency | Recip. throughput\n-----------------------------------------------------------------------------------------------------------------------\nMOVDQA %XMM5,%XMM6          | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nPMULUDQ %XMM0,%XMM6         | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nMOVDQA %XMM5,%XMM7          | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nPSRLQ $0x20,%XMM7           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 0.50\nPMULUDQ %XMM0,%XMM7         | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nPSLLQ $0x20,%XMM7           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 0.50\nPADDQ %XMM6,%XMM7           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nMOVDQA %XMM2,%XMM6          | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nPMULUDQ %XMM0,%XMM6         | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nMOVDQA %XMM2,%XMM4          | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nPSRLQ $0x20,%XMM4           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 0.50\nPMULUDQ %XMM0,%XMM4         | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nPSLLQ $0x20,%XMM4           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 0.50\nPADDQ %XMM6,%XMM4           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nMOVQ %XMM4,%R11             | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 1\nPSHUFD $0x4e,%XMM4,%XMM4    | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nMOVQ %XMM4,%RAX             | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 1\nMOVQ %XMM7,%R15             | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 1\nPSHUFD $0x4e,%XMM7,%XMM4    | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nMOVQ %XMM4,%R13             | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 1\nMOVSS (%R9,%R11,4),%XMM4    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMOVSS (%R9,%RAX,4),%XMM6    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nUNPCKLPS %XMM6,%XMM4        | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nMOVSS (%R9,%R15,4),%XMM6    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMOVSS (%R9,%R13,4),%XMM7    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nUNPCKLPS %XMM7,%XMM6        | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nMOVLHPS %XMM6,%XMM4         | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nMOVUPS (%RDX,%RBX,4),%XMM6  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nDIVPS %XMM6,%XMM4           | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 11      | 3\nMOVUPS (%RSI,%RBX,4),%XMM6  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nADDPS %XMM4,%XMM6           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 4       | 1\nMOVUPS %XMM6,(%RSI,%RBX,4)  | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 1       | 1\nADD $0x4,%RBX               | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nPADDQ %XMM3,%XMM2           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nPADDQ %XMM3,%XMM5           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nCMP %RBX,%R14               | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJNE 401340 <baseline+0x1a0> | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\n",
        },
      },
      header = {
        "2% of peak computational performance is used (0.89 out of 32.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) => for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "76% of SSE/AVX instructions are used in vector version (process two or more data elements in vector registers):\n - 33% of SSE/AVX loads are used in vector version.\n - 76% of SSE/AVX instructions that are not load, store, addition, subtraction nor multiply instructions are used in vector version.\nSince your execution units are vector units, only a fully vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is partially vectorized.\nOnly 40% of vector register length is used (average across all SSE/AVX instructions).\nBy fully vectorizing your loop, you can lower the cost of an iteration from 9.00 to 3.08 cycles (2.92x speedup).",
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
