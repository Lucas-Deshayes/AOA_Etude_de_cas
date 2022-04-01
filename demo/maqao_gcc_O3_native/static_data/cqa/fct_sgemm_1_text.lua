_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n - .plt.sec@start: 3 occurrences\n - unknown: 2 occurrences\n",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements.",
          details = " - VCVTSI2SS (INT32/64 to FP32, scalar): 1 occurrences\n - VCVTUSI2SS (INT32/64 to FP32, scalar): 1 occurrences\n",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This function is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is loading 40 bytes.\nThe binary function is storing 56 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 69\nloop length        : 261\nused x86 registers : 12\nused mmx registers : 0\nused xmm registers : 2\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 14\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 17.00 cycles\ninstruction queue    : 34.50 cycles\ndecoding             : 34.50 cycles\nmicro-operation queue: 40.00 cycles\nfront end            : 40.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2    | P3    | P4    | P5    | P6\n------------------------------------------------------------\nuops   | 2.00 | 0.00 | 10.50 | 10.50 | 22.50 | 22.50 | 16.00\ncycles | 2.00 | 0.00 | 10.50 | 10.50 | 22.50 | 22.50 | 16.00\n\nCycles executing div or sqrt instructions: NA\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 40.00\nDispatch  : 22.50\nOverall L1: 40.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : 0%\nstore  : 0%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 0%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 8%\nload   : 12%\nstore  : 9%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 8%\nFP\nall     : 6%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : 6%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 8%\nload    : 12%\nstore   : 8%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 8%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 40.00 cycles. At this rate:\n - 0% of peak load performance is reached (1.00 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 2% of peak store performance is reached (1.40 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 40.00 to 34.50 cycles (1.16x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 1140\n\nInstruction                     | Nb FU | P0 | P1 | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n----------------------------------------------------------------------------------------------------------------\nENDBR64\nPUSH %R15                       | 1     | 0  | 0  | 0    | 0    | 1    | 1    | 0  | 0       | 1\nPUSH %R14                       | 1     | 0  | 0  | 0    | 0    | 1    | 1    | 0  | 0       | 1\nPUSH %R13                       | 1     | 0  | 0  | 0    | 0    | 1    | 1    | 0  | 0       | 1\nPUSH %R12                       | 1     | 0  | 0  | 0    | 0    | 1    | 1    | 0  | 0       | 1\nPUSH %RBP                       | 1     | 0  | 0  | 0    | 0    | 1    | 1    | 0  | 0       | 1\nLEA (%RSI),%RBP                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nPUSH %RBX                       | 1     | 0  | 0  | 0    | 0    | 1    | 1    | 0  | 0       | 1\nLEA -0x68(%RSP),%RSP            | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCMP $0x4,%EDI                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJNE 1451 <main+0x311>           | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOV 0x8(%RSI),%RDI              | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV $0xa,%EDX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nXOR %ESI,%ESI\nCALL 10f0 <.plt.sec@start+0x30> | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nMOV 0x10(%RBP),%RDI             | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV $0xa,%EDX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nXOR %ESI,%ESI\nLEA (%RAX),%RBX                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (%RAX),%R15D                | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (%RAX),%R14D                | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %EAX,0x1c(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nCALL 10f0 <.plt.sec@start+0x30> | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nMOV 0x18(%RBP),%RDI             | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV $0xa,%EDX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %EAX,0x5c(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nXOR %ESI,%ESI\nCALL 10f0 <.plt.sec@start+0x30> | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nMOV %EAX,0x50(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nLEA (%RAX),%ECX                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVCVTUSI2SS %R15D,%XMM4,%XMM4    | 1     | 1  | 0  | 0    | 0    | 0    | 0    | 0  | 5       | 1\nLEA (%RBX),%EAX                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nSAL $0x2,%RAX                   | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nMOV %RAX,0x40(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nLEA (%RBX),%EAX                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nIMUL %EBX,%EAX                  | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 3       | 1\nVCVTSI2SS %ECX,%XMM5,%XMM5      | 1     | 1  | 0  | 0    | 0    | 0    | 0    | 0  | 5       | 1\nMOVL $0,0x18(%RSP)              | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 1       | 1\nVMOVSS %XMM4,0x54(%RSP)         | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nSAL $0x2,%RAX                   | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nMOV %RAX,0x48(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nLEA -0x1(%RBX),%EAX             | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOVSXD %EBX,%RBX                | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nLEA 0x4(,%RAX,4),%RAX           | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVMOVSS %XMM5,0x58(%RSP)         | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nMOV %RBX,%RDX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nSAL $0x2,%RDX                   | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nMOV %RDX,0x8(%RSP)              | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %RAX,0x10(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nNOPL (%RAX)                     | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nLEA 0x68(%RSP),%RSP             | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nXOR %EAX,%EAX\nPOP %RBX                        | 2     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nPOP %RBP                        | 2     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nPOP %R12                        | 2     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nPOP %R13                        | 2     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nPOP %R14                        | 2     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nPOP %R15                        | 2     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nRET\nNOPL (%RAX)                     | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nMOV (%RSI),%RCX                 | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA 0xbad(%RIP),%RDX            | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0x2bbe(%RIP),%RDI           | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV $0x1,%ESI                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nXOR %EAX,%EAX\nCALL 1120 <.plt.sec@start+0x60> | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nCALL 10d0 <.plt.sec@start+0x10> | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nNOPW %CS:(%RAX,%RAX,1)          | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nNOPL (%RAX)                     | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\n",
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
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 40.00 to 4.00 cycles (10.00x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is not vectorized.\nOnly 8% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 40.00 to 2.72 cycles (14.72x speedup).",
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
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n - .plt.sec@start: 3 occurrences\n - unknown: 2 occurrences\n",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements.",
          details = " - VCVTSI2SS (INT32/64 to FP32, scalar): 1 occurrences\n - VCVTUSI2SS (INT32/64 to FP32, scalar): 1 occurrences\n",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This function is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is loading 40 bytes.\nThe binary function is storing 56 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 69\nloop length        : 261\nused x86 registers : 12\nused mmx registers : 0\nused xmm registers : 2\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 14\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 17.00 cycles\ninstruction queue    : 34.50 cycles\ndecoding             : 34.50 cycles\nmicro-operation queue: 40.00 cycles\nfront end            : 40.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2    | P3    | P4    | P5    | P6\n------------------------------------------------------------\nuops   | 2.00 | 0.00 | 10.50 | 10.50 | 22.50 | 22.50 | 16.00\ncycles | 2.00 | 0.00 | 10.50 | 10.50 | 22.50 | 22.50 | 16.00\n\nCycles executing div or sqrt instructions: NA\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 40.00\nDispatch  : 22.50\nOverall L1: 40.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : 0%\nstore  : 0%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 0%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 8%\nload   : 12%\nstore  : 9%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 8%\nFP\nall     : 6%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : 6%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 8%\nload    : 12%\nstore   : 8%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 8%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 40.00 cycles. At this rate:\n - 0% of peak load performance is reached (1.00 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 2% of peak store performance is reached (1.40 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 40.00 to 34.50 cycles (1.16x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 1140\n\nInstruction                     | Nb FU | P0 | P1 | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n----------------------------------------------------------------------------------------------------------------\nENDBR64\nPUSH %R15                       | 1     | 0  | 0  | 0    | 0    | 1    | 1    | 0  | 0       | 1\nPUSH %R14                       | 1     | 0  | 0  | 0    | 0    | 1    | 1    | 0  | 0       | 1\nPUSH %R13                       | 1     | 0  | 0  | 0    | 0    | 1    | 1    | 0  | 0       | 1\nPUSH %R12                       | 1     | 0  | 0  | 0    | 0    | 1    | 1    | 0  | 0       | 1\nPUSH %RBP                       | 1     | 0  | 0  | 0    | 0    | 1    | 1    | 0  | 0       | 1\nLEA (%RSI),%RBP                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nPUSH %RBX                       | 1     | 0  | 0  | 0    | 0    | 1    | 1    | 0  | 0       | 1\nLEA -0x68(%RSP),%RSP            | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCMP $0x4,%EDI                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJNE 1451 <main+0x311>           | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOV 0x8(%RSI),%RDI              | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV $0xa,%EDX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nXOR %ESI,%ESI\nCALL 10f0 <.plt.sec@start+0x30> | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nMOV 0x10(%RBP),%RDI             | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV $0xa,%EDX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nXOR %ESI,%ESI\nLEA (%RAX),%RBX                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (%RAX),%R15D                | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (%RAX),%R14D                | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %EAX,0x1c(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nCALL 10f0 <.plt.sec@start+0x30> | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nMOV 0x18(%RBP),%RDI             | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV $0xa,%EDX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %EAX,0x5c(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nXOR %ESI,%ESI\nCALL 10f0 <.plt.sec@start+0x30> | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nMOV %EAX,0x50(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nLEA (%RAX),%ECX                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVCVTUSI2SS %R15D,%XMM4,%XMM4    | 1     | 1  | 0  | 0    | 0    | 0    | 0    | 0  | 5       | 1\nLEA (%RBX),%EAX                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nSAL $0x2,%RAX                   | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nMOV %RAX,0x40(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nLEA (%RBX),%EAX                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nIMUL %EBX,%EAX                  | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 3       | 1\nVCVTSI2SS %ECX,%XMM5,%XMM5      | 1     | 1  | 0  | 0    | 0    | 0    | 0    | 0  | 5       | 1\nMOVL $0,0x18(%RSP)              | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 1       | 1\nVMOVSS %XMM4,0x54(%RSP)         | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nSAL $0x2,%RAX                   | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nMOV %RAX,0x48(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nLEA -0x1(%RBX),%EAX             | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOVSXD %EBX,%RBX                | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nLEA 0x4(,%RAX,4),%RAX           | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVMOVSS %XMM5,0x58(%RSP)         | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nMOV %RBX,%RDX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nSAL $0x2,%RDX                   | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nMOV %RDX,0x8(%RSP)              | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %RAX,0x10(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nNOPL (%RAX)                     | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nLEA 0x68(%RSP),%RSP             | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nXOR %EAX,%EAX\nPOP %RBX                        | 2     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nPOP %RBP                        | 2     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nPOP %R12                        | 2     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nPOP %R13                        | 2     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nPOP %R14                        | 2     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nPOP %R15                        | 2     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nRET\nNOPL (%RAX)                     | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nMOV (%RSI),%RCX                 | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA 0xbad(%RIP),%RDX            | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0x2bbe(%RIP),%RDI           | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV $0x1,%ESI                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nXOR %EAX,%EAX\nCALL 1120 <.plt.sec@start+0x60> | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nCALL 10d0 <.plt.sec@start+0x10> | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nNOPW %CS:(%RAX,%RAX,1)          | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nNOPL (%RAX)                     | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\n",
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
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 40.00 to 4.00 cycles (10.00x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is not vectorized.\nOnly 8% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 40.00 to 2.72 cycles (14.72x speedup).",
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
