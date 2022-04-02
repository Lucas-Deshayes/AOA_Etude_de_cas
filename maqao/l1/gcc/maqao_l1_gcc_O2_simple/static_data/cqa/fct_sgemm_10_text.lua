_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This function is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function does not load or store any data.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 10\nloop length        : 33\nused x86 registers : 7\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 3.00 cycles\ninstruction queue    : 5.00 cycles\ndecoding             : 5.00 cycles\nmicro-operation queue: 5.00 cycles\nfront end            : 5.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6\n-------------------------------------------------------\nuops   | 0.00 | 0.00 | 0.00 | 0.00 | 4.00 | 4.00 | 0.00\ncycles | 0.00 | 0.00 | 0.00 | 0.00 | 4.00 | 4.00 | 0.00\n\nCycles executing div or sqrt instructions: NA\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 5.00\nDispatch  : 4.00\nOverall L1: 5.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 10%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 10%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 5.00 cycles. At this rate:\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 5.00 to 4.00 cycles (1.25x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 1650\n\nInstruction              | Nb FU | P0 | P1 | P2 | P3 | P4   | P5   | P6 | Latency | Recip. throughput\n-----------------------------------------------------------------------------------------------------\nENDBR64\nMOV %EDI,%R8D            | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 0       | 0.50\nTEST %EDI,%EDI           | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nJE 16a3 <baseline+0x53>  | 1     | 0  | 0  | 0  | 0  | 0    | 1    | 0  | 0       | 1-2\nLEA -0x1(%RDI),%R9D      | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %RCX,%R10            | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 0       | 0.50\nSAL $0x2,%R8             | 1     | 0  | 0  | 0  | 0  | 1    | 0    | 0  | 1       | 1\nLEA 0x4(%RCX,%R9,4),%R11 | 1     | 0  | 0  | 0  | 0  | 1    | 0    | 0  | 1       | 1\nNOPL (%RAX,%RAX,1)       | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 0       | 0.50\nRET\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is not vectorized.\nOnly 10% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 5.00 to 0.34 cycles (14.55x speedup).",
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
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This function is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function does not load or store any data.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 10\nloop length        : 33\nused x86 registers : 7\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 3.00 cycles\ninstruction queue    : 5.00 cycles\ndecoding             : 5.00 cycles\nmicro-operation queue: 5.00 cycles\nfront end            : 5.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6\n-------------------------------------------------------\nuops   | 0.00 | 0.00 | 0.00 | 0.00 | 4.00 | 4.00 | 0.00\ncycles | 0.00 | 0.00 | 0.00 | 0.00 | 4.00 | 4.00 | 0.00\n\nCycles executing div or sqrt instructions: NA\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 5.00\nDispatch  : 4.00\nOverall L1: 5.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 10%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 10%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 5.00 cycles. At this rate:\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 5.00 to 4.00 cycles (1.25x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 1650\n\nInstruction              | Nb FU | P0 | P1 | P2 | P3 | P4   | P5   | P6 | Latency | Recip. throughput\n-----------------------------------------------------------------------------------------------------\nENDBR64\nMOV %EDI,%R8D            | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 0       | 0.50\nTEST %EDI,%EDI           | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nJE 16a3 <baseline+0x53>  | 1     | 0  | 0  | 0  | 0  | 0    | 1    | 0  | 0       | 1-2\nLEA -0x1(%RDI),%R9D      | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %RCX,%R10            | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 0       | 0.50\nSAL $0x2,%R8             | 1     | 0  | 0  | 0  | 0  | 1    | 0    | 0  | 1       | 1\nLEA 0x4(%RCX,%R9,4),%R11 | 1     | 0  | 0  | 0  | 0  | 1    | 0    | 0  | 1       | 1\nNOPL (%RAX,%RAX,1)       | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 0       | 0.50\nRET\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is not vectorized.\nOnly 10% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 5.00 to 0.34 cycles (14.55x speedup).",
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
      "The function is defined in /users/user4427/AOA_Etude_de_cas/kernel.c:50-58.\n",
      "Warnings:\nIgnoring paths for analysis",
    },
  },
}
