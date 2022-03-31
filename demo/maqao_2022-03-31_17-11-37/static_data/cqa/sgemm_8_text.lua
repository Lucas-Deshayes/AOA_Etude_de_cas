_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant unknown stride: 2 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          title = "Type of elements and instruction set",
          txt = "2 SSE or AVX instructions are processing arithmetic or math operations on single precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 2 FP arithmetical operations:\n - 1: addition or subtraction\n - 1: divide\nThe binary loop is loading 76 bytes (19 single precision FP elements).\nThe binary loop is storing 8 bytes (2 single precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.02 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 30\nloop length        : 121\nused x86 registers : 4\nused mmx registers : 0\nused xmm registers : 2\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 6\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 8.00 cycles\ninstruction queue    : 15.00 cycles\ndecoding             : 15.00 cycles\nmicro-operation queue: 15.00 cycles\nfront end            : 15.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2    | P3   | P4   | P5   | P6\n--------------------------------------------------------\nuops   | 3.00 | 2.00 | 12.00 | 5.00 | 6.50 | 6.50 | 2.00\ncycles | 3.00 | 2.00 | 12.00 | 5.00 | 6.50 | 6.50 | 2.00\n\nCycles executing div or sqrt instructions: 12.00-17.00\nLongest recurrence chain latency (RecMII): 0.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 15.00\nDispatch  : 12.00\nDIV/SQRT  : 12.00-17.00\nData deps.: 0.00\nOverall L1: 15.00-17.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : 0%\nstore  : 0%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : NA (no other vectorizable/vectorized instructions)\nFP\nall     : 14%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 100%\nINT+FP\nall     : 12%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 100%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 6%\nload   : 6%\nstore  : 6%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : NA (no other vectorizable/vectorized instructions)\nFP\nall     : 8%\nload    : 6%\nstore   : 6%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 6%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 6%\nother   : 25%\nINT+FP\nall     : 8%\nload    : 6%\nstore   : 6%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 6%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 6%\nother   : 25%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 17.00 cycles. At this rate:\n - 3% of peak load performance is reached (4.47 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 0% of peak store performance is reached (0.47 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1727\n\nInstruction               | Nb FU | P0   | P1   | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n--------------------------------------------------------------------------------------------------------------\nMOV -0xc(%RBP),%EDX       | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV %EAX,%ECX             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nIMUL %RCX,%RDX            | 1     | 0    | 0    | 0    | 0    | 1    | 0    | 0  | 5       | 2\nLEA (,%RDX,4),%RCX        | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV -0x30(%RBP),%RDX      | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nADD %RDX,%RCX             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV -0x10(%RBP),%EDX      | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOVSS (%RCX,%RDX,4),%XMM0 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nMOV -0xc(%RBP),%EDX       | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA (,%RDX,4),%RCX        | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV -0x28(%RBP),%RDX      | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nADD %RCX,%RDX             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOVSS (%RDX),%XMM1        | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nDIVSS %XMM1,%XMM0         | 3     | 3    | 0    | 0    | 0    | 0    | 0    | 0  | 25-27   | 12-17\nMOVAPS %XMM0,%XMM1        | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nMOV -0xc(%RBP),%EDX       | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA (,%RDX,4),%RCX        | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV -0x20(%RBP),%RDX      | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nADD %RCX,%RDX             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOVSS (%RDX),%XMM0        | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nMOV -0xc(%RBP),%EDX       | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA (,%RDX,4),%RCX        | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV -0x20(%RBP),%RDX      | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nADD %RCX,%RDX             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nADDSS %XMM1,%XMM0         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nMOVSS %XMM0,(%RDX)        | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nADDL $0x1,-0xc(%RBP)      | 1     | 0    | 0    | 1.50 | 0.50 | 0.50 | 0.50 | 1  | 7       | 1\nMOV -0xc(%RBP),%EDX       | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nCMP -0x14(%RBP),%EDX      | 1     | 0    | 0    | 1    | 0    | 0.50 | 0.50 | 0  | 1       | 1\nJB 16b6 <baseline+0x44>   | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.12 out of 64.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA)\n",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is probably not vectorized.\nOnly 8% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 17.00 to 1.06 cycles (16.00x speedup).",
        },
        {
          workaround = "Reduce the number of division or square root instructions:\n - If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact.\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 17.00 to 15.00 cycles (1.13x speedup).\n",
        },
      },
      potential = {
        {
          title = "Expensive FP math instructions/calls",
          txt = "Detected performance impact from expensive FP math instructions/calls.\nBy removing/reexpressing them, you can lower the cost of an iteration from 17.00 to 15.00 cycles (1.13x speedup).",
        },
      },
    },
  },
  AVG = {
      hint = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant unknown stride: 2 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          title = "Type of elements and instruction set",
          txt = "2 SSE or AVX instructions are processing arithmetic or math operations on single precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 2 FP arithmetical operations:\n - 1: addition or subtraction\n - 1: divide\nThe binary loop is loading 76 bytes (19 single precision FP elements).\nThe binary loop is storing 8 bytes (2 single precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.02 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 30\nloop length        : 121\nused x86 registers : 4\nused mmx registers : 0\nused xmm registers : 2\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 6\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 8.00 cycles\ninstruction queue    : 15.00 cycles\ndecoding             : 15.00 cycles\nmicro-operation queue: 15.00 cycles\nfront end            : 15.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2    | P3   | P4   | P5   | P6\n--------------------------------------------------------\nuops   | 3.00 | 2.00 | 12.00 | 5.00 | 6.50 | 6.50 | 2.00\ncycles | 3.00 | 2.00 | 12.00 | 5.00 | 6.50 | 6.50 | 2.00\n\nCycles executing div or sqrt instructions: 12.00-17.00\nLongest recurrence chain latency (RecMII): 0.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 15.00\nDispatch  : 12.00\nDIV/SQRT  : 12.00-17.00\nData deps.: 0.00\nOverall L1: 15.00-17.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : 0%\nstore  : 0%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : NA (no other vectorizable/vectorized instructions)\nFP\nall     : 14%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 100%\nINT+FP\nall     : 12%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 100%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 6%\nload   : 6%\nstore  : 6%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : NA (no other vectorizable/vectorized instructions)\nFP\nall     : 8%\nload    : 6%\nstore   : 6%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 6%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 6%\nother   : 25%\nINT+FP\nall     : 8%\nload    : 6%\nstore   : 6%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 6%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 6%\nother   : 25%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 17.00 cycles. At this rate:\n - 3% of peak load performance is reached (4.47 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 0% of peak store performance is reached (0.47 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1727\n\nInstruction               | Nb FU | P0   | P1   | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n--------------------------------------------------------------------------------------------------------------\nMOV -0xc(%RBP),%EDX       | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV %EAX,%ECX             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nIMUL %RCX,%RDX            | 1     | 0    | 0    | 0    | 0    | 1    | 0    | 0  | 5       | 2\nLEA (,%RDX,4),%RCX        | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV -0x30(%RBP),%RDX      | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nADD %RDX,%RCX             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV -0x10(%RBP),%EDX      | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOVSS (%RCX,%RDX,4),%XMM0 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nMOV -0xc(%RBP),%EDX       | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA (,%RDX,4),%RCX        | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV -0x28(%RBP),%RDX      | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nADD %RCX,%RDX             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOVSS (%RDX),%XMM1        | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nDIVSS %XMM1,%XMM0         | 3     | 3    | 0    | 0    | 0    | 0    | 0    | 0  | 25-27   | 12-17\nMOVAPS %XMM0,%XMM1        | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nMOV -0xc(%RBP),%EDX       | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA (,%RDX,4),%RCX        | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV -0x20(%RBP),%RDX      | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nADD %RCX,%RDX             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOVSS (%RDX),%XMM0        | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nMOV -0xc(%RBP),%EDX       | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA (,%RDX,4),%RCX        | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV -0x20(%RBP),%RDX      | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nADD %RCX,%RDX             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nADDSS %XMM1,%XMM0         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nMOVSS %XMM0,(%RDX)        | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nADDL $0x1,-0xc(%RBP)      | 1     | 0    | 0    | 1.50 | 0.50 | 0.50 | 0.50 | 1  | 7       | 1\nMOV -0xc(%RBP),%EDX       | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nCMP -0x14(%RBP),%EDX      | 1     | 0    | 0    | 1    | 0    | 0.50 | 0.50 | 0  | 1       | 1\nJB 16b6 <baseline+0x44>   | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.12 out of 64.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA)\n",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is probably not vectorized.\nOnly 8% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 17.00 to 1.06 cycles (16.00x speedup).",
        },
        {
          workaround = "Reduce the number of division or square root instructions:\n - If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact.\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 17.00 to 15.00 cycles (1.13x speedup).\n",
        },
      },
      potential = {
        {
          title = "Expensive FP math instructions/calls",
          txt = "Detected performance impact from expensive FP math instructions/calls.\nBy removing/reexpressing them, you can lower the cost of an iteration from 17.00 to 15.00 cycles (1.13x speedup).",
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
