_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - ADD: 1 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This loop is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 12 bytes.\nThe binary loop is storing 8 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 6\nnb uops            : 6\nloop length        : 21\nused x86 registers : 2\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 3\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 1.50 cycles\nfront end            : 1.50 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6   | P7\n--------------------------------------------------------------\nuops   | 1.00 | 1.00 | 1.83 | 1.50 | 2.00 | 1.00 | 1.00 | 1.67\ncycles | 1.00 | 1.00 | 1.83 | 1.50 | 2.00 | 1.00 | 1.00 | 1.67\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 0.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 1.50\nDispatch  : 2.00\nData deps.: 0.00\nOverall L1: 2.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 12%\nload    : 12%\nstore   : 12%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 2.00 cycles. At this rate:\n - 9% of peak load performance is reached (6.00 out of 64.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 12% of peak store performance is reached (4.00 out of 32.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 12b4\n\nInstruction                  | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | P6   | P7   | Latency | Recip. throughput\n------------------------------------------------------------------------------------------------------------------------\nMOVL $0,-0x20(%RBP)          | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 2       | 1\nJMP 12a8 <init_matrice+0x7f> | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 1    | 0    | 0       | 1-2\nADDL $0x1,-0x1c(%RBP)        | 2     | 0.50 | 0.50 | 0.83 | 0.83 | 1  | 0.50 | 0.50 | 0.33 | 5       | 1\nMOV -0x1c(%RBP),%EAX         | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nCMP -0x24(%RBP),%EAX         | 1     | 0.25 | 0.25 | 0.50 | 0.50 | 0  | 0.25 | 0.25 | 0    | 1       | 0.50\nJL 1260 <init_matrice+0x37>  | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\n8 data elements could be processed at once in vector registers.\nBy vectorizing your loop, you can lower the cost of an iteration from 2.00 to 0.25 cycles (8.00x speedup).",
        },
        {
          workaround = " - Write less array elements\n - Provide more information to your compiler:\n  * hardcode the bounds of the corresponding 'for' loop\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by writing data to caches/RAM (the store unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 2.00 to 1.83 cycles (1.09x speedup).\n",
        },
      },
      potential = {
      },
    },
    {
      hint = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant unknown stride: 1 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This loop is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 8 bytes.\nThe binary loop is storing 4 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 5\nnb uops            : 4\nloop length        : 17\nused x86 registers : 2\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 3\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 1.00 cycles\nfront end            : 1.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6   | P7\n--------------------------------------------------------------\nuops   | 1.00 | 0.00 | 1.00 | 1.00 | 1.00 | 0.00 | 1.00 | 1.00\ncycles | 1.00 | 0.00 | 1.00 | 1.00 | 1.00 | 0.00 | 1.00 | 1.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 0.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 1.00\nDispatch  : 1.00\nData deps.: 0.00\nOverall L1: 1.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 12%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : 12%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 1.00 cycles. At this rate:\n - 12% of peak load performance is reached (8.00 out of 64.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 12% of peak store performance is reached (4.00 out of 32.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 12b4\n\nInstruction                  | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | P6   | P7   | Latency | Recip. throughput\n------------------------------------------------------------------------------------------------------------------------\nMOVL $0,-0x20(%RBP)          | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 2       | 1\nJMP 12a8 <init_matrice+0x7f> | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 1    | 0    | 0       | 1-2\nMOV -0x1c(%RBP),%EAX         | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nCMP -0x24(%RBP),%EAX         | 1     | 0.25 | 0.25 | 0.50 | 0.50 | 0  | 0.25 | 0.25 | 0    | 1       | 0.50\nJL 1260 <init_matrice+0x37>  | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\n8 data elements could be processed at once in vector registers.\nBy vectorizing your loop, you can lower the cost of an iteration from 1.00 to 0.12 cycles (8.00x speedup).",
        },
        {
          workaround = " - Read less array elements\n - Write less array elements\n - Provide more information to your compiler:\n  * hardcode the bounds of the corresponding 'for' loop\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by:\n - reading data from caches/RAM (load units are a bottleneck)\n - writing data to caches/RAM (the store unit is a bottleneck)\n",
        },
      },
      potential = {
      },
    },
  },
  AVG = {
      hint = {
        {
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - ADD: 1 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This loop is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 10 bytes.\nThe binary loop is storing 6 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 5.50\nnb uops            : 5\nloop length        : 19\nused x86 registers : 2\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 3\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nmicro-operation queue: 1.25 cycles\nfront end            : 1.25 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6   | P7\n--------------------------------------------------------------\nuops   | 1.00 | 0.50 | 1.42 | 1.25 | 1.50 | 0.50 | 1.00 | 1.33\ncycles | 1.00 | 0.50 | 1.42 | 1.25 | 1.50 | 0.50 | 1.00 | 1.33\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 0.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 1.25\nDispatch  : 1.50\nData deps.: 0.00\nOverall L1: 1.50\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 12%\nload    : 12%\nstore   : 12%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 1.50 cycles. At this rate:\n - 10% of peak load performance is reached (7.00 out of 64.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 12% of peak store performance is reached (4.00 out of 32.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\n8 data elements could be processed at once in vector registers.\nBy vectorizing your loop, you can lower the cost of an iteration from 1.50 to 0.19 cycles (8.00x speedup).",
        },
      },
      potential = {
      },
    },
  common = {
    header = {
      "",
      "Warnings:\nNon-innermost loop: analyzing only self part (ignoring child loops).",
      "The structure of this loop is probably <if then [else] end>.\n",
      "The presence of multiple execution paths is typically the main/first bottleneck.\nTry to simplify control inside loop: ideally, try to remove all conditional expressions, for example by (if applicable):\n - hoisting them (moving them outside the loop)\n - turning them into conditional moves, MIN or MAX\n\n",
    },
    nb_paths = 2,
  },
}
