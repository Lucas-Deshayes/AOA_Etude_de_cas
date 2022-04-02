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
          txt = "nb instructions    : 43\nnb uops            : 42\nloop length        : 183\nused x86 registers : 9\nused mmx registers : 0\nused xmm registers : 8\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\nADD-SUB / MUL ratio: 1.00\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 10.50 cycles\nfront end            : 10.50 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6   | P7\n--------------------------------------------------------------\nuops   | 9.50 | 9.50 | 3.00 | 3.00 | 1.00 | 9.00 | 2.00 | 1.00\ncycles | 9.50 | 9.50 | 3.00 | 3.00 | 1.00 | 9.00 | 2.00 | 1.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 10.50\nDispatch  : 9.50\nData deps.: 1.00\nOverall L1: 10.50\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 81%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : 100%\nadd-sub: 100%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 71%\nFP\nall     : 77%\nload    : 33%\nstore   : 100%\nmul     : 100%\nadd-sub : 100%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 100%\nother   : 100%\nINT+FP\nall     : 80%\nload    : 33%\nstore   : 100%\nmul     : 100%\nadd-sub : 100%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 100%\nother   : 77%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 45%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : 50%\nadd-sub: 50%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 42%\nFP\nall     : 37%\nload    : 25%\nstore   : 50%\nmul     : 50%\nadd-sub : 50%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 50%\nother   : 31%\nINT+FP\nall     : 41%\nload    : 25%\nstore   : 50%\nmul     : 50%\nadd-sub : 50%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 50%\nother   : 40%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 10.50 cycles. At this rate:\n - 7% of peak load performance is reached (4.57 out of 64.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 4% of peak store performance is reached (1.52 out of 32.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 10.50 to 9.50 cycles (1.11x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 4012e0\n\nInstruction                 | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | P6   | P7   | Latency | Recip. throughput\n-----------------------------------------------------------------------------------------------------------------------\nMOVDQA %XMM5,%XMM6          | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nPMULUDQ %XMM0,%XMM6         | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nMOVDQA %XMM5,%XMM7          | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nPSRLQ $0x20,%XMM7           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 0.50\nPMULUDQ %XMM0,%XMM7         | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nPSLLQ $0x20,%XMM7           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 0.50\nPADDQ %XMM6,%XMM7           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nMOVDQA %XMM2,%XMM6          | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nPMULUDQ %XMM0,%XMM6         | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nMOVDQA %XMM2,%XMM4          | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nPSRLQ $0x20,%XMM4           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 0.50\nPMULUDQ %XMM0,%XMM4         | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nPSLLQ $0x20,%XMM4           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 0.50\nPADDQ %XMM6,%XMM4           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nMOVQ %XMM4,%RAX             | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 1\nPSHUFD $0x4e,%XMM4,%XMM4    | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nMOVQ %XMM4,%RBX             | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 1\nMOVQ %XMM7,%R15             | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 1\nPSHUFD $0x4e,%XMM7,%XMM4    | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nMOVQ %XMM4,%R13             | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 1\nMOVSS (%R9,%RAX,4),%XMM4    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMOVSS (%R9,%RBX,4),%XMM6    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nUNPCKLPS %XMM6,%XMM4        | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nMOVSS (%R9,%R15,4),%XMM6    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMOVSS (%R9,%R13,4),%XMM7    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nUNPCKLPS %XMM7,%XMM6        | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nMOVLHPS %XMM6,%XMM4         | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nMOVUPS (%RDX,%R8,4),%XMM6   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nRCPPS %XMM6,%XMM7           | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 4       | 1\nMOVAPS %XMM4,%XMM1          | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nMULPS %XMM7,%XMM1           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 4       | 0.50\nMULPS %XMM1,%XMM6           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 4       | 0.50\nSUBPS %XMM6,%XMM4           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 4       | 1\nMULPS %XMM7,%XMM4           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 4       | 0.50\nMOVUPS (%RSI,%R8,4),%XMM6   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nADDPS %XMM1,%XMM6           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 4       | 1\nADDPS %XMM4,%XMM6           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 4       | 1\nMOVUPS %XMM6,(%RSI,%R8,4)   | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 1       | 1\nADD $0x4,%R8                | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nPADDQ %XMM3,%XMM2           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nPADDQ %XMM3,%XMM5           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nCMP %R8,%R14                | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJNE 4012e0 <baseline+0x120> | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\n",
        },
      },
      header = {
        "8% of peak computational performance is used (2.67 out of 32.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Pass to your compiler a micro-architecture specialization option:\n  * Please read your compiler manual\n - Use vector aligned instructions:\n  1) align your arrays on 32 bytes boundaries: replace { void *p = malloc (size); } with { void *p; posix_memalign (&p, 32, size); }.\n  2) inform your compiler that your arrays are vector aligned: read your compiler manual.\n",
          details = "80% of SSE/AVX instructions are used in vector version (process two or more data elements in vector registers):\n - 33% of SSE/AVX loads are used in vector version.\n - 77% of SSE/AVX instructions that are not load, store, addition, subtraction nor multiply instructions are used in vector version.\nSince your execution units are vector units, only a fully vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is partially vectorized.\nOnly 41% of vector register length is used (average across all SSE/AVX instructions).\nBy fully vectorizing your loop, you can lower the cost of an iteration from 10.50 to 4.00 cycles (2.63x speedup).",
        },
        {
          title = "Execution units bottlenecks",
          txt = "Found no such bottlenecks but see expert reports for more complex bottlenecks.",
        },
      },
      potential = {
        {
          workaround = " - Pass to your compiler a micro-architecture specialization option:\n  * Please read your compiler manual\n - Try to change order in which elements are evaluated (using parentheses) in arithmetic expressions containing both ADD/SUB and MUL operations to enable your compiler to generate FMA instructions wherever possible.\nFor instance a + b*c is a valid FMA (MUL then ADD).\nHowever (a+b)* c cannot be translated into an FMA (ADD then MUL).\n",
          title = "FMA",
          txt = "Presence of both ADD/SUB and MUL operations.",
        },
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
          txt = "nb instructions    : 43\nnb uops            : 42\nloop length        : 183\nused x86 registers : 9\nused mmx registers : 0\nused xmm registers : 8\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\nADD-SUB / MUL ratio: 1.00\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 10.50 cycles\nfront end            : 10.50 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6   | P7\n--------------------------------------------------------------\nuops   | 9.50 | 9.50 | 3.00 | 3.00 | 1.00 | 9.00 | 2.00 | 1.00\ncycles | 9.50 | 9.50 | 3.00 | 3.00 | 1.00 | 9.00 | 2.00 | 1.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 10.50\nDispatch  : 9.50\nData deps.: 1.00\nOverall L1: 10.50\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 81%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : 100%\nadd-sub: 100%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 71%\nFP\nall     : 77%\nload    : 33%\nstore   : 100%\nmul     : 100%\nadd-sub : 100%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 100%\nother   : 100%\nINT+FP\nall     : 80%\nload    : 33%\nstore   : 100%\nmul     : 100%\nadd-sub : 100%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 100%\nother   : 77%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 45%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : 50%\nadd-sub: 50%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 42%\nFP\nall     : 37%\nload    : 25%\nstore   : 50%\nmul     : 50%\nadd-sub : 50%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 50%\nother   : 31%\nINT+FP\nall     : 41%\nload    : 25%\nstore   : 50%\nmul     : 50%\nadd-sub : 50%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 50%\nother   : 40%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 10.50 cycles. At this rate:\n - 7% of peak load performance is reached (4.57 out of 64.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 4% of peak store performance is reached (1.52 out of 32.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 10.50 to 9.50 cycles (1.11x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 4012e0\n\nInstruction                 | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | P6   | P7   | Latency | Recip. throughput\n-----------------------------------------------------------------------------------------------------------------------\nMOVDQA %XMM5,%XMM6          | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nPMULUDQ %XMM0,%XMM6         | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nMOVDQA %XMM5,%XMM7          | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nPSRLQ $0x20,%XMM7           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 0.50\nPMULUDQ %XMM0,%XMM7         | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nPSLLQ $0x20,%XMM7           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 0.50\nPADDQ %XMM6,%XMM7           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nMOVDQA %XMM2,%XMM6          | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nPMULUDQ %XMM0,%XMM6         | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nMOVDQA %XMM2,%XMM4          | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nPSRLQ $0x20,%XMM4           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 0.50\nPMULUDQ %XMM0,%XMM4         | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nPSLLQ $0x20,%XMM4           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 0.50\nPADDQ %XMM6,%XMM4           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nMOVQ %XMM4,%RAX             | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 1\nPSHUFD $0x4e,%XMM4,%XMM4    | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nMOVQ %XMM4,%RBX             | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 1\nMOVQ %XMM7,%R15             | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 1\nPSHUFD $0x4e,%XMM7,%XMM4    | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nMOVQ %XMM4,%R13             | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 1\nMOVSS (%R9,%RAX,4),%XMM4    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMOVSS (%R9,%RBX,4),%XMM6    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nUNPCKLPS %XMM6,%XMM4        | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nMOVSS (%R9,%R15,4),%XMM6    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMOVSS (%R9,%R13,4),%XMM7    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nUNPCKLPS %XMM7,%XMM6        | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nMOVLHPS %XMM6,%XMM4         | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nMOVUPS (%RDX,%R8,4),%XMM6   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nRCPPS %XMM6,%XMM7           | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 4       | 1\nMOVAPS %XMM4,%XMM1          | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nMULPS %XMM7,%XMM1           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 4       | 0.50\nMULPS %XMM1,%XMM6           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 4       | 0.50\nSUBPS %XMM6,%XMM4           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 4       | 1\nMULPS %XMM7,%XMM4           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 4       | 0.50\nMOVUPS (%RSI,%R8,4),%XMM6   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nADDPS %XMM1,%XMM6           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 4       | 1\nADDPS %XMM4,%XMM6           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 4       | 1\nMOVUPS %XMM6,(%RSI,%R8,4)   | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 1       | 1\nADD $0x4,%R8                | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nPADDQ %XMM3,%XMM2           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nPADDQ %XMM3,%XMM5           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nCMP %R8,%R14                | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJNE 4012e0 <baseline+0x120> | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\n",
        },
      },
      header = {
        "8% of peak computational performance is used (2.67 out of 32.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Pass to your compiler a micro-architecture specialization option:\n  * Please read your compiler manual\n - Use vector aligned instructions:\n  1) align your arrays on 32 bytes boundaries: replace { void *p = malloc (size); } with { void *p; posix_memalign (&p, 32, size); }.\n  2) inform your compiler that your arrays are vector aligned: read your compiler manual.\n",
          details = "80% of SSE/AVX instructions are used in vector version (process two or more data elements in vector registers):\n - 33% of SSE/AVX loads are used in vector version.\n - 77% of SSE/AVX instructions that are not load, store, addition, subtraction nor multiply instructions are used in vector version.\nSince your execution units are vector units, only a fully vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is partially vectorized.\nOnly 41% of vector register length is used (average across all SSE/AVX instructions).\nBy fully vectorizing your loop, you can lower the cost of an iteration from 10.50 to 4.00 cycles (2.63x speedup).",
        },
        {
          title = "Execution units bottlenecks",
          txt = "Found no such bottlenecks but see expert reports for more complex bottlenecks.",
        },
      },
      potential = {
        {
          workaround = " - Pass to your compiler a micro-architecture specialization option:\n  * Please read your compiler manual\n - Try to change order in which elements are evaluated (using parentheses) in arithmetic expressions containing both ADD/SUB and MUL operations to enable your compiler to generate FMA instructions wherever possible.\nFor instance a + b*c is a valid FMA (MUL then ADD).\nHowever (a+b)* c cannot be translated into an FMA (ADD then MUL).\n",
          title = "FMA",
          txt = "Presence of both ADD/SUB and MUL operations.",
        },
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
