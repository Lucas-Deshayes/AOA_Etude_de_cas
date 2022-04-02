_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n - baseline: 1 occurrences\n",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This loop is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 40 bytes.\nThe binary loop is storing 4 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 10\nloop length        : 34\nused x86 registers : 6\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 6\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 3.00 cycles\ninstruction queue    : 5.00 cycles\ndecoding             : 5.00 cycles\nmicro-operation queue: 6.00 cycles\nfront end            : 6.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6\n-------------------------------------------------------\nuops   | 0.00 | 0.00 | 7.00 | 1.00 | 2.50 | 2.50 | 1.00\ncycles | 0.00 | 0.00 | 7.00 | 1.00 | 2.50 | 2.50 | 1.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 0.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 6.00\nDispatch  : 7.00\nData deps.: 0.00\nOverall L1: 7.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 10%\nload    : 10%\nstore   : 6%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 6%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 7.00 cycles. At this rate:\n - 4% of peak load performance is reached (5.71 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 0% of peak store performance is reached (0.57 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1559\n\nInstruction           | Nb FU | P0 | P1 | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n------------------------------------------------------------------------------------------------------\nMOV -0x28(%RBP),%RCX  | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV -0x38(%RBP),%RDX  | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV -0x40(%RBP),%RSI  | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV -0x4c(%RBP),%EAX  | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV %EAX,%EDI         | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nCALL 1650 <baseline>  | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nADDL $0x1,-0x50(%RBP) | 1     | 0  | 0  | 1.50 | 0.50 | 0.50 | 0.50 | 1  | 7       | 1\nMOV -0x50(%RBP),%EAX  | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nCMP -0x44(%RBP),%EAX  | 1     | 0  | 0  | 1    | 0    | 0.50 | 0.50 | 0  | 1       | 1\nJL 153f <main+0x185>  | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\n",
        },
      },
      header = {
        "Warnings:\nDetected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.",
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 10% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 7.00 to 0.62 cycles (11.20x speedup).",
        },
        {
          workaround = " - Read less array elements\n - Write less array elements\n - Provide more information to your compiler:\n  * hardcode the bounds of the corresponding 'for' loop\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by:\n - reading data from caches/RAM (load units are a bottleneck)\n - writing data to caches/RAM (the store unit is a bottleneck)\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 7.00 to 6.00 cycles (1.17x speedup).\n",
        },
      },
      potential = {
      },
    },
  },
  AVG = {
      hint = {
        {
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n - baseline: 1 occurrences\n",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This loop is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 40 bytes.\nThe binary loop is storing 4 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 10\nloop length        : 34\nused x86 registers : 6\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 6\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 3.00 cycles\ninstruction queue    : 5.00 cycles\ndecoding             : 5.00 cycles\nmicro-operation queue: 6.00 cycles\nfront end            : 6.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6\n-------------------------------------------------------\nuops   | 0.00 | 0.00 | 7.00 | 1.00 | 2.50 | 2.50 | 1.00\ncycles | 0.00 | 0.00 | 7.00 | 1.00 | 2.50 | 2.50 | 1.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 0.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 6.00\nDispatch  : 7.00\nData deps.: 0.00\nOverall L1: 7.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 10%\nload    : 10%\nstore   : 6%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 6%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 7.00 cycles. At this rate:\n - 4% of peak load performance is reached (5.71 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 0% of peak store performance is reached (0.57 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1559\n\nInstruction           | Nb FU | P0 | P1 | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n------------------------------------------------------------------------------------------------------\nMOV -0x28(%RBP),%RCX  | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV -0x38(%RBP),%RDX  | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV -0x40(%RBP),%RSI  | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV -0x4c(%RBP),%EAX  | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV %EAX,%EDI         | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nCALL 1650 <baseline>  | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nADDL $0x1,-0x50(%RBP) | 1     | 0  | 0  | 1.50 | 0.50 | 0.50 | 0.50 | 1  | 7       | 1\nMOV -0x50(%RBP),%EAX  | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nCMP -0x44(%RBP),%EAX  | 1     | 0  | 0  | 1    | 0    | 0.50 | 0.50 | 0  | 1       | 1\nJL 153f <main+0x185>  | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\n",
        },
      },
      header = {
        "Warnings:\nDetected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.",
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 10% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 7.00 to 0.62 cycles (11.20x speedup).",
        },
        {
          workaround = " - Read less array elements\n - Write less array elements\n - Provide more information to your compiler:\n  * hardcode the bounds of the corresponding 'for' loop\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by:\n - reading data from caches/RAM (load units are a bottleneck)\n - writing data to caches/RAM (the store unit is a bottleneck)\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 7.00 to 6.00 cycles (1.17x speedup).\n",
        },
      },
      potential = {
      },
    },
  common = {
    header = {
      "",
    },
    nb_paths = 1,
  },
}
