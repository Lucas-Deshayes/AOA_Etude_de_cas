_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n - unknown: 2 occurrences\n",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This function is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is loading 92 bytes.\nThe binary function is storing 8 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 74\nloop length        : 305\nused x86 registers : 16\nused mmx registers : 0\nused xmm registers : 4\nused ymm registers : 0\nused zmm registers : 2\nnb stack references: 3\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 20.00 cycles\ninstruction queue    : 37.00 cycles\ndecoding             : 37.00 cycles\nmicro-operation queue: 41.00 cycles\nfront end            : 41.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1   | P2   | P3   | P4    | P5    | P6\n----------------------------------------------------------\nuops   | 21.00 | 0.00 | 6.50 | 6.50 | 31.00 | 31.00 | 7.00\ncycles | 21.00 | 0.00 | 6.50 | 6.50 | 31.00 | 31.00 | 7.00\n\nCycles executing div or sqrt instructions: 22.00-95.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 41.00\nDispatch  : 31.00\nDIV/SQRT  : 22.00-95.00\nOverall L1: 41.00-95.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : 0%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 0%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 33%\nload    : 25%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 50%\nINT+FP\nall     : 13%\nload    : 25%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 12%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 12%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : 12%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 12%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 12%\nFP\nall     : 25%\nload    : 29%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 15%\nINT+FP\nall     : 17%\nload    : 29%\nstore   : 12%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 12%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 12%\nother   : 13%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 95.00 cycles. At this rate:\n - 0% of peak load performance is reached (0.97 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 0% of peak store performance is reached (0.08 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 1df0\n\nInstruction                               | Nb FU | P0    | P1 | P2   | P3   | P4    | P5   | P6 | Latency | Recip. throughput\n------------------------------------------------------------------------------------------------------------------------------\nENDBR64\nPUSH %RBP                                 | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nMOV %RSP,%RBP                             | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nPUSH %R15                                 | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nPUSH %R14                                 | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nPUSH %R13                                 | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nPUSH %R12                                 | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nPUSH %RBX                                 | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nAND $-0x40,%RSP                           | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nLEA -0x40(%RSP),%RSP                      | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nMOV 0x8(%RDI),%R12                        | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nTEST %R12,%R12                            | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nJE 20ee <move_particles._omp_fn.0+0x2fe>  | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 1-2\nLEA (%RDI),%R13                           | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nCALL 1120 <.plt.sec@start+0x40>           | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 2\nLEA (%RAX),%EBX                           | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nCALL 1100 <.plt.sec@start+0x20>           | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 2\nMOVSXD %EAX,%RCX                          | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 1       | 1\nXOR %EDX,%EDX\nMOVSXD %EBX,%RSI                          | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 1       | 1\nLEA (%R12),%RAX                           | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nDIV %RSI                                  | 23    | 11.50 | 0  | 0    | 0    | 11.50 | 0    | 0  | 39-95   | 22-95\nCMP %RDX,%RCX                             | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nJB 20fd <move_particles._omp_fn.0+0x30d>  | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 1-2\nIMUL %RAX,%RCX                            | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 5       | 2\nMOV %RAX,%R9                              | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nADD %RDX,%RCX                             | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nADD %RCX,%R9                              | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nCMP %R9,%RCX                              | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nJAE 20ee <move_particles._omp_fn.0+0x2fe> | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 1-2\nVMOVSS 0x10(%R13),%XMM5                   | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 0  | 5       | 0.50\nLEA -0x1(%RAX),%RDX                       | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nMOV (%R13),%RSI                           | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nCMP $0xe,%RDX                             | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nJBE 1ff4 <move_particles._omp_fn.0+0x204> | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 1-2\nLEA 0x3a980(,%RCX,4),%RDX                 | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nLEA (%RSI,%RCX,4),%R15                    | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nLEA (%RSI,%RDX,1),%R14                    | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nLEA 0x3a980(%RSI,%RDX,1),%R13             | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 1       | 1\nLEA 0x75300(%RSI,%RDX,1),%RBX             | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 1       | 1\nLEA 0xafc80(%RSI,%RDX,1),%R11             | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 1       | 1\nLEA 0xea600(%RSI,%RDX,1),%R10             | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 1       | 1\nLEA (%RAX),%RDX                           | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nSHR $0x4,%RDX                             | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 1       | 1\nVBROADCASTSS %XMM5,%ZMM14                 | 1     | 1     | 0  | 0    | 0    | 0     | 0    | 0  | 3-6     | 1\nSAL $0x6,%RDX                             | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 1       | 1\nLEA (%RSI,%R12,4),%R8                     | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nMOV %RDX,0x38(%RSP)                       | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nXOR %EDI,%EDI\nVMOVAPS 0x127e(%RIP),%ZMM13               | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 0  | 5       | 0.50\nNOPW %CS:(%RAX,%RAX,1)                    | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nNOPL (%RAX)                               | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nLEA (%RAX),%RDX                           | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nAND $-0x10,%RDX                           | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nADD %RDX,%RCX                             | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nCMP %RDX,%RAX                             | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nJE 20ee <move_particles._omp_fn.0+0x2fe>  | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 1-2\nVXORPS %XMM14,%XMM14,%XMM14\nLEA (%RSI,%R12,4),%RDX                    | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nVMOVSS 0x111f(%RIP),%XMM13                | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 0  | 5       | 0.50\nVMOVSS 0x111b(%RIP),%XMM12                | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 0  | 5       | 0.50\nNOPL (%RAX)                               | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nLEA -0x28(%RBP),%RSP                      | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nPOP %RBX                                  | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %R12                                  | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %R13                                  | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %R14                                  | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %R15                                  | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %RBP                                  | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nRET\nADD $0x1,%RAX                             | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nXOR %EDX,%EDX\nJMP 1e3e <move_particles._omp_fn.0+0x4e>  | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 2\nNOPL (%RAX,%RAX,1)                        | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\n",
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
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 95.00 to 8.00 cycles (11.87x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA)\n",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is probably not vectorized.\nOnly 17% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 95.00 to 35.04 cycles (2.71x speedup).",
        },
        {
          workaround = "Reduce the number of division or square root instructions:\n - If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact.\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 95.00 to 41.00 cycles (2.32x speedup).\n",
        },
      },
      potential = {
      },
    },
  },
  AVG = {
      hint = {
        {
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n - unknown: 2 occurrences\n",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This function is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is loading 92 bytes.\nThe binary function is storing 8 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 74\nloop length        : 305\nused x86 registers : 16\nused mmx registers : 0\nused xmm registers : 4\nused ymm registers : 0\nused zmm registers : 2\nnb stack references: 3\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 20.00 cycles\ninstruction queue    : 37.00 cycles\ndecoding             : 37.00 cycles\nmicro-operation queue: 41.00 cycles\nfront end            : 41.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1   | P2   | P3   | P4    | P5    | P6\n----------------------------------------------------------\nuops   | 21.00 | 0.00 | 6.50 | 6.50 | 31.00 | 31.00 | 7.00\ncycles | 21.00 | 0.00 | 6.50 | 6.50 | 31.00 | 31.00 | 7.00\n\nCycles executing div or sqrt instructions: 22.00-95.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 41.00\nDispatch  : 31.00\nDIV/SQRT  : 22.00-95.00\nOverall L1: 41.00-95.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : 0%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 0%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 33%\nload    : 25%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 50%\nINT+FP\nall     : 13%\nload    : 25%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 12%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 12%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : 12%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 12%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 12%\nFP\nall     : 25%\nload    : 29%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 15%\nINT+FP\nall     : 17%\nload    : 29%\nstore   : 12%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 12%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 12%\nother   : 13%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 95.00 cycles. At this rate:\n - 0% of peak load performance is reached (0.97 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 0% of peak store performance is reached (0.08 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 1df0\n\nInstruction                               | Nb FU | P0    | P1 | P2   | P3   | P4    | P5   | P6 | Latency | Recip. throughput\n------------------------------------------------------------------------------------------------------------------------------\nENDBR64\nPUSH %RBP                                 | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nMOV %RSP,%RBP                             | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nPUSH %R15                                 | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nPUSH %R14                                 | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nPUSH %R13                                 | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nPUSH %R12                                 | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nPUSH %RBX                                 | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nAND $-0x40,%RSP                           | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nLEA -0x40(%RSP),%RSP                      | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nMOV 0x8(%RDI),%R12                        | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nTEST %R12,%R12                            | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nJE 20ee <move_particles._omp_fn.0+0x2fe>  | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 1-2\nLEA (%RDI),%R13                           | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nCALL 1120 <.plt.sec@start+0x40>           | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 2\nLEA (%RAX),%EBX                           | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nCALL 1100 <.plt.sec@start+0x20>           | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 2\nMOVSXD %EAX,%RCX                          | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 1       | 1\nXOR %EDX,%EDX\nMOVSXD %EBX,%RSI                          | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 1       | 1\nLEA (%R12),%RAX                           | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nDIV %RSI                                  | 23    | 11.50 | 0  | 0    | 0    | 11.50 | 0    | 0  | 39-95   | 22-95\nCMP %RDX,%RCX                             | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nJB 20fd <move_particles._omp_fn.0+0x30d>  | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 1-2\nIMUL %RAX,%RCX                            | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 5       | 2\nMOV %RAX,%R9                              | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nADD %RDX,%RCX                             | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nADD %RCX,%R9                              | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nCMP %R9,%RCX                              | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nJAE 20ee <move_particles._omp_fn.0+0x2fe> | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 1-2\nVMOVSS 0x10(%R13),%XMM5                   | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 0  | 5       | 0.50\nLEA -0x1(%RAX),%RDX                       | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nMOV (%R13),%RSI                           | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nCMP $0xe,%RDX                             | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nJBE 1ff4 <move_particles._omp_fn.0+0x204> | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 1-2\nLEA 0x3a980(,%RCX,4),%RDX                 | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nLEA (%RSI,%RCX,4),%R15                    | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nLEA (%RSI,%RDX,1),%R14                    | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nLEA 0x3a980(%RSI,%RDX,1),%R13             | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 1       | 1\nLEA 0x75300(%RSI,%RDX,1),%RBX             | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 1       | 1\nLEA 0xafc80(%RSI,%RDX,1),%R11             | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 1       | 1\nLEA 0xea600(%RSI,%RDX,1),%R10             | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 1       | 1\nLEA (%RAX),%RDX                           | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nSHR $0x4,%RDX                             | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 1       | 1\nVBROADCASTSS %XMM5,%ZMM14                 | 1     | 1     | 0  | 0    | 0    | 0     | 0    | 0  | 3-6     | 1\nSAL $0x6,%RDX                             | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 1       | 1\nLEA (%RSI,%R12,4),%R8                     | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nMOV %RDX,0x38(%RSP)                       | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nXOR %EDI,%EDI\nVMOVAPS 0x127e(%RIP),%ZMM13               | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 0  | 5       | 0.50\nNOPW %CS:(%RAX,%RAX,1)                    | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nNOPL (%RAX)                               | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nLEA (%RAX),%RDX                           | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nAND $-0x10,%RDX                           | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nADD %RDX,%RCX                             | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nCMP %RDX,%RAX                             | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nJE 20ee <move_particles._omp_fn.0+0x2fe>  | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 1-2\nVXORPS %XMM14,%XMM14,%XMM14\nLEA (%RSI,%R12,4),%RDX                    | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nVMOVSS 0x111f(%RIP),%XMM13                | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 0  | 5       | 0.50\nVMOVSS 0x111b(%RIP),%XMM12                | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 0  | 5       | 0.50\nNOPL (%RAX)                               | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nLEA -0x28(%RBP),%RSP                      | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nPOP %RBX                                  | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %R12                                  | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %R13                                  | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %R14                                  | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %R15                                  | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %RBP                                  | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nRET\nADD $0x1,%RAX                             | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nXOR %EDX,%EDX\nJMP 1e3e <move_particles._omp_fn.0+0x4e>  | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 2\nNOPL (%RAX,%RAX,1)                        | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\n",
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
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 95.00 to 8.00 cycles (11.87x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA)\n",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is probably not vectorized.\nOnly 17% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 95.00 to 35.04 cycles (2.71x speedup).",
        },
        {
          workaround = "Reduce the number of division or square root instructions:\n - If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact.\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 95.00 to 41.00 cycles (2.32x speedup).\n",
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
