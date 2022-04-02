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
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is loading 4 bytes.\nThe binary function is storing 24 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 22\nloop length        : 64\nused x86 registers : 8\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 4\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 4.00 cycles\ninstruction queue    : 11.00 cycles\ndecoding             : 11.00 cycles\nmicro-operation queue: 12.00 cycles\nfront end            : 12.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6\n-------------------------------------------------------\nuops   | 0.00 | 0.00 | 3.50 | 3.50 | 7.50 | 7.50 | 6.00\ncycles | 0.00 | 0.00 | 3.50 | 3.50 | 7.50 | 7.50 | 6.00\n\nCycles executing div or sqrt instructions: NA\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 12.00\nDispatch  : 7.50\nOverall L1: 12.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 10%\nload    : 6%\nstore   : 9%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 12%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 10%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 12.00 cycles. At this rate:\n - 0% of peak load performance is reached (0.33 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 3% of peak store performance is reached (2.00 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 12.00 to 11.00 cycles (1.09x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 1229\n\nInstruction                  | Nb FU | P0 | P1 | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n-------------------------------------------------------------------------------------------------------------\nENDBR64\nPUSH %RBP                    | 1     | 0  | 0  | 0    | 0    | 1    | 1    | 0  | 0       | 1\nMOV %RSP,%RBP                | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nPUSH %RBX                    | 1     | 0  | 0  | 0    | 0    | 1    | 1    | 0  | 0       | 1\nSUB $0x28,%RSP               | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %EDI,-0x24(%RBP)         | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %RSI,-0x30(%RBP)         | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV -0x24(%RBP),%EBX         | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOVSXD %EBX,%RAX             | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nSUB $0x1,%RAX                | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %RAX,-0x18(%RBP)         | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOVSXD %EBX,%RAX             | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nMOV %RAX,%R8                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nMOV $0,%R9D                  | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOVL $0,-0x1c(%RBP)          | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 1       | 1\nJMP 12b4 <init_matrice+0x8b> | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 2\nNOP                          | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nNOP                          | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nADD $0x28,%RSP               | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nPOP %RBX                     | 2     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nPOP %RBP                     | 2     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nRET\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is not vectorized.\nOnly 10% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 12.00 to 0.85 cycles (14.08x speedup).",
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
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is loading 4 bytes.\nThe binary function is storing 24 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 22\nloop length        : 64\nused x86 registers : 8\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 4\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 4.00 cycles\ninstruction queue    : 11.00 cycles\ndecoding             : 11.00 cycles\nmicro-operation queue: 12.00 cycles\nfront end            : 12.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6\n-------------------------------------------------------\nuops   | 0.00 | 0.00 | 3.50 | 3.50 | 7.50 | 7.50 | 6.00\ncycles | 0.00 | 0.00 | 3.50 | 3.50 | 7.50 | 7.50 | 6.00\n\nCycles executing div or sqrt instructions: NA\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 12.00\nDispatch  : 7.50\nOverall L1: 12.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 10%\nload    : 6%\nstore   : 9%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 12%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 10%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 12.00 cycles. At this rate:\n - 0% of peak load performance is reached (0.33 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 3% of peak store performance is reached (2.00 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 12.00 to 11.00 cycles (1.09x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 1229\n\nInstruction                  | Nb FU | P0 | P1 | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n-------------------------------------------------------------------------------------------------------------\nENDBR64\nPUSH %RBP                    | 1     | 0  | 0  | 0    | 0    | 1    | 1    | 0  | 0       | 1\nMOV %RSP,%RBP                | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nPUSH %RBX                    | 1     | 0  | 0  | 0    | 0    | 1    | 1    | 0  | 0       | 1\nSUB $0x28,%RSP               | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %EDI,-0x24(%RBP)         | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %RSI,-0x30(%RBP)         | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV -0x24(%RBP),%EBX         | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOVSXD %EBX,%RAX             | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nSUB $0x1,%RAX                | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %RAX,-0x18(%RBP)         | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOVSXD %EBX,%RAX             | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nMOV %RAX,%R8                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nMOV $0,%R9D                  | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOVL $0,-0x1c(%RBP)          | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 1       | 1\nJMP 12b4 <init_matrice+0x8b> | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 2\nNOP                          | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nNOP                          | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nADD $0x28,%RSP               | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nPOP %RBX                     | 2     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nPOP %RBP                     | 2     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nRET\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is not vectorized.\nOnly 10% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 12.00 to 0.85 cycles (14.08x speedup).",
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
      "",
      "Warnings:\nIgnoring paths for analysis",
    },
  },
}
