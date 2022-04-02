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
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is storing 148 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 93\nloop length        : 343\nused x86 registers : 16\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 22\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 22.00 cycles\ninstruction queue    : 46.50 cycles\ndecoding             : 46.50 cycles\nmicro-operation queue: 50.00 cycles\nfront end            : 50.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2    | P3    | P4    | P5    | P6\n------------------------------------------------------------\nuops   | 0.00 | 0.00 | 13.50 | 13.50 | 34.50 | 34.50 | 27.00\ncycles | 0.00 | 0.00 | 13.50 | 13.50 | 34.50 | 34.50 | 27.00\n\nCycles executing div or sqrt instructions: NA\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 50.00\nDispatch  : 34.50\nOverall L1: 50.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 3%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 16%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 11%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : 10%\nmul     : 12%\nadd-sub : 9%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 13%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 50.00 cycles. At this rate:\n - 4% of peak store performance is reached (2.96 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 50.00 to 46.50 cycles (1.08x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 1650\n\nInstruction              | Nb FU | P0 | P1 | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n---------------------------------------------------------------------------------------------------------\nENDBR64\nPUSH %RBP                | 1     | 0  | 0  | 0    | 0    | 1    | 1    | 0  | 0       | 1\nLEA (%RDI),%EAX          | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %RSP,%RBP            | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nPUSH %R15                | 1     | 0  | 0  | 0    | 0    | 1    | 1    | 0  | 0       | 1\nPUSH %R14                | 1     | 0  | 0  | 0    | 0    | 1    | 1    | 0  | 0       | 1\nPUSH %R13                | 1     | 0  | 0  | 0    | 0    | 1    | 1    | 0  | 0       | 1\nPUSH %R12                | 1     | 0  | 0  | 0    | 0    | 1    | 1    | 0  | 0       | 1\nPUSH %RBX                | 1     | 0  | 0  | 0    | 0    | 1    | 1    | 0  | 0       | 1\nAND $-0x40,%RSP          | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA -0x48(%RSP),%RSP     | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nTEST %EAX,%EAX           | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %EAX,0x44(%RSP)      | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %RCX,0x30(%RSP)      | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %RAX,-0x48(%RSP)     | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nJE 1fdb <baseline+0x98b> | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nLEA (,%RAX,4),%RDI       | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (%RAX),%R8           | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nSUB $0x1,%R8             | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (%RDI),%R9           | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nIMUL %R8,%R9             | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 5       | 2\nLEA (%RAX),%RBX          | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nSAL $0x5,%RBX            | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nLEA (%RCX),%R13          | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nADD %RBX,%RCX            | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (%RAX),%R15          | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %RCX,0x10(%RSP)      | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nLEA -0x1(%RAX),%ECX      | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %R9,-0x8(%RSP)       | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nLEA (%RSI),%R9           | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nSHR $0x2,%R9             | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nLEA (%RAX),%R14          | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nNEG %R9                  | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (%RSI,%R8,4),%R10    | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %ECX,0x18(%RSP)      | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nLEA (%RAX),%R11          | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %RCX,0x20(%RSP)      | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nLEA (%R9),%ECX           | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nAND $0xf,%ECX            | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (,%RAX,8),%R12       | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nSUB %ECX,%R15D           | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %ECX,%R8D            | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nMOV %R15D,%R9D           | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nSUB %RAX,%R12            | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %R15D,-0x10(%RSP)    | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nLEA (%R14),%R15          | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nIMUL %R8,%R15            | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 5       | 2\nSAL $0x4,%R11            | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nMOV %R10,(%RSP)          | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nLEA (%RAX,%RAX,2),%R10   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %R11,-0x50(%RSP)     | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nLEA (%RDI,%RAX,1),%R11   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nSAL $0x6,%R14            | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nNEG %RAX                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nSAL $0x2,%RAX            | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nMOV %RAX,-0x58(%RSP)     | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nLEA (%R9),%EAX           | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nSAL $0x2,%R8             | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nAND $-0x10,%R9D          | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %R15,-0x20(%RSP)     | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nLEA (%R14),%R15          | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nSHR $0x4,%EAX            | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nLEA (%RDX),%R14          | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %ECX,-0xc(%RSP)      | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nADD %R8,%R14             | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nSAL $0x6,%RAX            | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nLEA (%RSI,%R8,1),%RCX    | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA 0x3f(%RDX),%R8       | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nADD %R14,%RAX            | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nSAL $0x2,%R12            | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nSUB %RSI,%R8             | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %RBX,-0x40(%RSP)     | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nLEA (,%R10,4),%RBX       | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nSAL $0x2,%R11            | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nSAL $0x3,%R10            | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nMOV %R14,-0x28(%RSP)     | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %RCX,-0x30(%RSP)     | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %RAX,-0x38(%RSP)     | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %R9D,-0x14(%RSP)     | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOVQ $0,0x38(%RSP)       | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 1       | 1\nMOV %R8,0x8(%RSP)        | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %R12,0x28(%RSP)      | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nNOP                      | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nNOPL (%RAX,%RAX,1)       | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nVZEROUPPER               | 19    | 0  | 0  | 0    | 0    | 0    | 0    | 0  | 0       | 36\nLEA -0x28(%RBP),%RSP     | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nPOP %RBX                 | 2     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nPOP %R12                 | 2     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nPOP %R13                 | 2     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nPOP %R14                 | 2     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nPOP %R15                 | 2     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nPOP %RBP                 | 2     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nRET\n",
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
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is probably not vectorized.\nOnly 11% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 50.00 to 3.93 cycles (12.72x speedup).",
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
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is storing 148 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 93\nloop length        : 343\nused x86 registers : 16\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 22\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 22.00 cycles\ninstruction queue    : 46.50 cycles\ndecoding             : 46.50 cycles\nmicro-operation queue: 50.00 cycles\nfront end            : 50.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2    | P3    | P4    | P5    | P6\n------------------------------------------------------------\nuops   | 0.00 | 0.00 | 13.50 | 13.50 | 34.50 | 34.50 | 27.00\ncycles | 0.00 | 0.00 | 13.50 | 13.50 | 34.50 | 34.50 | 27.00\n\nCycles executing div or sqrt instructions: NA\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 50.00\nDispatch  : 34.50\nOverall L1: 50.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 3%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 16%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 11%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : 10%\nmul     : 12%\nadd-sub : 9%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 13%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 50.00 cycles. At this rate:\n - 4% of peak store performance is reached (2.96 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 50.00 to 46.50 cycles (1.08x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 1650\n\nInstruction              | Nb FU | P0 | P1 | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n---------------------------------------------------------------------------------------------------------\nENDBR64\nPUSH %RBP                | 1     | 0  | 0  | 0    | 0    | 1    | 1    | 0  | 0       | 1\nLEA (%RDI),%EAX          | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %RSP,%RBP            | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nPUSH %R15                | 1     | 0  | 0  | 0    | 0    | 1    | 1    | 0  | 0       | 1\nPUSH %R14                | 1     | 0  | 0  | 0    | 0    | 1    | 1    | 0  | 0       | 1\nPUSH %R13                | 1     | 0  | 0  | 0    | 0    | 1    | 1    | 0  | 0       | 1\nPUSH %R12                | 1     | 0  | 0  | 0    | 0    | 1    | 1    | 0  | 0       | 1\nPUSH %RBX                | 1     | 0  | 0  | 0    | 0    | 1    | 1    | 0  | 0       | 1\nAND $-0x40,%RSP          | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA -0x48(%RSP),%RSP     | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nTEST %EAX,%EAX           | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %EAX,0x44(%RSP)      | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %RCX,0x30(%RSP)      | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %RAX,-0x48(%RSP)     | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nJE 1fdb <baseline+0x98b> | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nLEA (,%RAX,4),%RDI       | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (%RAX),%R8           | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nSUB $0x1,%R8             | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (%RDI),%R9           | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nIMUL %R8,%R9             | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 5       | 2\nLEA (%RAX),%RBX          | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nSAL $0x5,%RBX            | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nLEA (%RCX),%R13          | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nADD %RBX,%RCX            | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (%RAX),%R15          | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %RCX,0x10(%RSP)      | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nLEA -0x1(%RAX),%ECX      | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %R9,-0x8(%RSP)       | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nLEA (%RSI),%R9           | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nSHR $0x2,%R9             | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nLEA (%RAX),%R14          | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nNEG %R9                  | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (%RSI,%R8,4),%R10    | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %ECX,0x18(%RSP)      | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nLEA (%RAX),%R11          | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %RCX,0x20(%RSP)      | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nLEA (%R9),%ECX           | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nAND $0xf,%ECX            | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (,%RAX,8),%R12       | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nSUB %ECX,%R15D           | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %ECX,%R8D            | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nMOV %R15D,%R9D           | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nSUB %RAX,%R12            | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %R15D,-0x10(%RSP)    | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nLEA (%R14),%R15          | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nIMUL %R8,%R15            | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 5       | 2\nSAL $0x4,%R11            | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nMOV %R10,(%RSP)          | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nLEA (%RAX,%RAX,2),%R10   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %R11,-0x50(%RSP)     | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nLEA (%RDI,%RAX,1),%R11   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nSAL $0x6,%R14            | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nNEG %RAX                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nSAL $0x2,%RAX            | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nMOV %RAX,-0x58(%RSP)     | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nLEA (%R9),%EAX           | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nSAL $0x2,%R8             | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nAND $-0x10,%R9D          | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %R15,-0x20(%RSP)     | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nLEA (%R14),%R15          | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nSHR $0x4,%EAX            | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nLEA (%RDX),%R14          | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %ECX,-0xc(%RSP)      | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nADD %R8,%R14             | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nSAL $0x6,%RAX            | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nLEA (%RSI,%R8,1),%RCX    | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA 0x3f(%RDX),%R8       | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nADD %R14,%RAX            | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nSAL $0x2,%R12            | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nSUB %RSI,%R8             | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %RBX,-0x40(%RSP)     | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nLEA (,%R10,4),%RBX       | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nSAL $0x2,%R11            | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nSAL $0x3,%R10            | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nMOV %R14,-0x28(%RSP)     | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %RCX,-0x30(%RSP)     | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %RAX,-0x38(%RSP)     | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %R9D,-0x14(%RSP)     | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOVQ $0,0x38(%RSP)       | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 1       | 1\nMOV %R8,0x8(%RSP)        | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %R12,0x28(%RSP)      | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nNOP                      | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nNOPL (%RAX,%RAX,1)       | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nVZEROUPPER               | 19    | 0  | 0  | 0    | 0    | 0    | 0    | 0  | 0       | 36\nLEA -0x28(%RBP),%RSP     | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nPOP %RBX                 | 2     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nPOP %R12                 | 2     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nPOP %R13                 | 2     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nPOP %R14                 | 2     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nPOP %R15                 | 2     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nPOP %RBP                 | 2     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nRET\n",
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
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is probably not vectorized.\nOnly 11% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 50.00 to 3.93 cycles (12.72x speedup).",
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
