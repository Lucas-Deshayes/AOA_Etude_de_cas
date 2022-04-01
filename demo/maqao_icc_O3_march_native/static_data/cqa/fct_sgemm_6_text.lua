_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n - __intel_new_feature_proc_init: 1 occurrences\n - abort@plt: 1 occurrences\n - fprintf@plt: 1 occurrences\n - unknown: 3 occurrences\n",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements.",
          details = " - VCVTSI2SS (INT32/64 to FP32, scalar): 1 occurrences\n - VCVTUSI2SS (INT32/64 to FP32, scalar): 1 occurrences\n - VGETEXPSS: 1 occurrences\n - VGETMANTSS: 1 occurrences\n",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "4 SSE or AVX instructions are processing arithmetic or math operations on single precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function is composed of 4 FP arithmetical operations:\n - 3: multiply\n - 1: fast reciprocal\nThe binary function is loading 116 bytes (29 single precision FP elements).\nThe binary function is storing 88 bytes (22 single precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.02 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 72\nloop length        : 319\nused x86 registers : 13\nused mmx registers : 0\nused xmm registers : 7\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 13\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 20.00 cycles\ninstruction queue    : 36.00 cycles\ndecoding             : 36.00 cycles\nmicro-operation queue: 38.00 cycles\nfront end            : 38.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2    | P3    | P4    | P5    | P6\n------------------------------------------------------------\nuops   | 4.00 | 4.00 | 16.00 | 16.00 | 20.00 | 20.00 | 16.00\ncycles | 4.00 | 4.00 | 16.00 | 16.00 | 20.00 | 20.00 | 16.00\n\nCycles executing div or sqrt instructions: NA\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 38.00\nDispatch  : 20.00\nOverall L1: 38.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : 0%\nstore  : 0%\nmul    : 0%\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 16%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 50%\nINT+FP\nall     : 4%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 11%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 9%\nload   : 11%\nstore  : 10%\nmul    : 6%\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 8%\nFP\nall     : 9%\nload    : 6%\nstore   : 6%\nmul     : 6%\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 6%\nother   : 15%\nINT+FP\nall     : 9%\nload    : 11%\nstore   : 9%\nmul     : 6%\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 6%\nother   : 9%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 38.00 cycles. At this rate:\n - 2% of peak load performance is reached (3.05 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 3% of peak store performance is reached (2.32 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 38.00 to 36.00 cycles (1.06x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 401280\n\nInstruction                                 | Nb FU | P0   | P1   | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n--------------------------------------------------------------------------------------------------------------------------------\nPUSH %RBP                                   | 1     | 0    | 0    | 0    | 0    | 1    | 1    | 0  | 0       | 1\nMOV %RSP,%RBP                               | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nAND $-0x80,%RSP                             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nSUB $0x100,%RSP                             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %RBX,0x20(%RSP)                         | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %RSI,%RBX                               | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nMOV %R15,0x18(%RSP)                         | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %EDI,%R15D                              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nMOV $0x3,%EDI                               | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nXOR %ESI,%ESI\nCALL 401800 <__intel_new_feature_proc_init> | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nVSTMXCSR (%RSP)                             | 1     | 0    | 0    | 0.50 | 0.50 | 0.50 | 0.50 | 1  | 0       | 1\nORL $0x8040,(%RSP)                          | 1     | 0    | 0    | 1.50 | 0.50 | 0.50 | 0.50 | 1  | 6       | 1\nVLDMXCSR (%RSP)                             | 6     | 0    | 0    | 0.50 | 0.50 | 2.50 | 2.50 | 0  | 0       | 21\nCMP $0x4,%R15D                              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJNE 401611 <main+0x391>                     | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOV 0x8(%RBX),%RCX                          | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nCALLQ 0x7ce8(%RIP)                          | 3     | 0    | 0    | 0.50 | 0.50 | 1    | 1    | 0  | 0       | 14\nMOV %RAX,%RSI                               | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nMOV 0x10(%RBX),%RCX                         | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV %ESI,%R15D                              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nCALLQ 0x7cd8(%RIP)                          | 3     | 0    | 0    | 0.50 | 0.50 | 1    | 1    | 0  | 0       | 14\nMOV 0x18(%RBX),%RCX                         | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV %EAX,%EDI                               | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nCALLQ 0x7ccc(%RIP)                          | 3     | 0    | 0    | 0.50 | 0.50 | 1    | 1    | 0  | 0       | 14\nVXORPS %XMM0,%XMM0,%XMM0\nMOV %EDI,0x28(%RSP)                         | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %R15D,0x88(%RSP)                        | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nVCVTUSI2SS %R15D,%XMM0,%XMM0                | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 5       | 1\nMOV %R12,(%RSP)                             | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nVMULSS %XMM0,%XMM0,%XMM1                    | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nMOV %R13,0x8(%RSP)                          | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %EAX,%R8D                               | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nMOV %R8D,0x78(%RSP)                         | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nVXORPS %XMM3,%XMM3,%XMM3\nMOV %R14,0x10(%RSP)                         | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %R15D,%EDX                              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nMOV %ESI,%ECX                               | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nVCVTSI2SS %R8D,%XMM3,%XMM3                  | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 5       | 1\nIMUL %R15D,%EDX                             | 1     | 0    | 0    | 0    | 0    | 1    | 0    | 0  | 3       | 1\nXOR %AL,%AL\nVMULSS %XMM1,%XMM0,%XMM2                    | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nSAL $0x2,%RCX                               | 1     | 0    | 0    | 0    | 0    | 1    | 0    | 0  | 1       | 1\nMOV %RCX,0x70(%RSP)                         | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nSAL $0x2,%RDX                               | 1     | 0    | 0    | 0    | 0    | 1    | 0    | 0  | 1       | 1\nMOV %RDX,0x68(%RSP)                         | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOVSXD %ESI,%RBX                            | 1     | 0    | 0    | 0    | 0    | 1    | 0    | 0  | 1       | 1\nVMOVSS 0x3cb3(%RIP),%XMM0                   | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nMOV %AL,%R13B                               | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nVMULSS %XMM3,%XMM2,%XMM4                    | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVGETMANTSS $0,%XMM4,%XMM4,%XMM17            | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVSS %XMM17,0x50(%RSP)                    | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVRCP28SS %XMM17,%XMM17,%XMM16               | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 7       | 2\nVMOVSS %XMM16,0x60(%RSP)                    | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVGETEXPSS %XMM4,%XMM4,%XMM4                 | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVSS %XMM4,0x58(%RSP)                     | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nMOV (%RSP),%R12                             | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV 0x8(%RSP),%R13                          | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nXOR %EAX,%EAX\nMOV 0x10(%RSP),%R14                         | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV 0x20(%RSP),%RBX                         | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV 0x18(%RSP),%R15                         | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV %RBP,%RSP                               | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nPOP %RBP                                    | 2     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nRET\nMOV 0x7ac8(%RIP),%RDI                       | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV $0x40501c,%ESI                          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV (%RBX),%RDX                             | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nXOR %EAX,%EAX\nCALL 4010e0 <fprintf@plt>                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nCALL 401050 <abort@plt>                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nNOPL (%RAX)                                 | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\n",
        },
      },
      header = {
        "Warnings:\nDetected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.",
        "0% of peak computational performance is used (0.11 out of 64.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 38.00 to 10.00 cycles (3.80x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA)\n",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is probably not vectorized.\nOnly 9% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 38.00 to 2.94 cycles (12.94x speedup).",
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
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n - __intel_new_feature_proc_init: 1 occurrences\n - abort@plt: 1 occurrences\n - fprintf@plt: 1 occurrences\n - unknown: 3 occurrences\n",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements.",
          details = " - VCVTSI2SS (INT32/64 to FP32, scalar): 1 occurrences\n - VCVTUSI2SS (INT32/64 to FP32, scalar): 1 occurrences\n - VGETEXPSS: 1 occurrences\n - VGETMANTSS: 1 occurrences\n",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "4 SSE or AVX instructions are processing arithmetic or math operations on single precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function is composed of 4 FP arithmetical operations:\n - 3: multiply\n - 1: fast reciprocal\nThe binary function is loading 116 bytes (29 single precision FP elements).\nThe binary function is storing 88 bytes (22 single precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.02 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 72\nloop length        : 319\nused x86 registers : 13\nused mmx registers : 0\nused xmm registers : 7\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 13\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 20.00 cycles\ninstruction queue    : 36.00 cycles\ndecoding             : 36.00 cycles\nmicro-operation queue: 38.00 cycles\nfront end            : 38.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2    | P3    | P4    | P5    | P6\n------------------------------------------------------------\nuops   | 4.00 | 4.00 | 16.00 | 16.00 | 20.00 | 20.00 | 16.00\ncycles | 4.00 | 4.00 | 16.00 | 16.00 | 20.00 | 20.00 | 16.00\n\nCycles executing div or sqrt instructions: NA\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 38.00\nDispatch  : 20.00\nOverall L1: 38.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : 0%\nstore  : 0%\nmul    : 0%\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 16%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 50%\nINT+FP\nall     : 4%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 11%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 9%\nload   : 11%\nstore  : 10%\nmul    : 6%\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 8%\nFP\nall     : 9%\nload    : 6%\nstore   : 6%\nmul     : 6%\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 6%\nother   : 15%\nINT+FP\nall     : 9%\nload    : 11%\nstore   : 9%\nmul     : 6%\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 6%\nother   : 9%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 38.00 cycles. At this rate:\n - 2% of peak load performance is reached (3.05 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 3% of peak store performance is reached (2.32 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 38.00 to 36.00 cycles (1.06x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 401280\n\nInstruction                                 | Nb FU | P0   | P1   | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n--------------------------------------------------------------------------------------------------------------------------------\nPUSH %RBP                                   | 1     | 0    | 0    | 0    | 0    | 1    | 1    | 0  | 0       | 1\nMOV %RSP,%RBP                               | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nAND $-0x80,%RSP                             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nSUB $0x100,%RSP                             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %RBX,0x20(%RSP)                         | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %RSI,%RBX                               | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nMOV %R15,0x18(%RSP)                         | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %EDI,%R15D                              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nMOV $0x3,%EDI                               | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nXOR %ESI,%ESI\nCALL 401800 <__intel_new_feature_proc_init> | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nVSTMXCSR (%RSP)                             | 1     | 0    | 0    | 0.50 | 0.50 | 0.50 | 0.50 | 1  | 0       | 1\nORL $0x8040,(%RSP)                          | 1     | 0    | 0    | 1.50 | 0.50 | 0.50 | 0.50 | 1  | 6       | 1\nVLDMXCSR (%RSP)                             | 6     | 0    | 0    | 0.50 | 0.50 | 2.50 | 2.50 | 0  | 0       | 21\nCMP $0x4,%R15D                              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJNE 401611 <main+0x391>                     | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOV 0x8(%RBX),%RCX                          | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nCALLQ 0x7ce8(%RIP)                          | 3     | 0    | 0    | 0.50 | 0.50 | 1    | 1    | 0  | 0       | 14\nMOV %RAX,%RSI                               | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nMOV 0x10(%RBX),%RCX                         | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV %ESI,%R15D                              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nCALLQ 0x7cd8(%RIP)                          | 3     | 0    | 0    | 0.50 | 0.50 | 1    | 1    | 0  | 0       | 14\nMOV 0x18(%RBX),%RCX                         | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV %EAX,%EDI                               | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nCALLQ 0x7ccc(%RIP)                          | 3     | 0    | 0    | 0.50 | 0.50 | 1    | 1    | 0  | 0       | 14\nVXORPS %XMM0,%XMM0,%XMM0\nMOV %EDI,0x28(%RSP)                         | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %R15D,0x88(%RSP)                        | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nVCVTUSI2SS %R15D,%XMM0,%XMM0                | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 5       | 1\nMOV %R12,(%RSP)                             | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nVMULSS %XMM0,%XMM0,%XMM1                    | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nMOV %R13,0x8(%RSP)                          | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %EAX,%R8D                               | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nMOV %R8D,0x78(%RSP)                         | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nVXORPS %XMM3,%XMM3,%XMM3\nMOV %R14,0x10(%RSP)                         | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %R15D,%EDX                              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nMOV %ESI,%ECX                               | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nVCVTSI2SS %R8D,%XMM3,%XMM3                  | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 5       | 1\nIMUL %R15D,%EDX                             | 1     | 0    | 0    | 0    | 0    | 1    | 0    | 0  | 3       | 1\nXOR %AL,%AL\nVMULSS %XMM1,%XMM0,%XMM2                    | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nSAL $0x2,%RCX                               | 1     | 0    | 0    | 0    | 0    | 1    | 0    | 0  | 1       | 1\nMOV %RCX,0x70(%RSP)                         | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nSAL $0x2,%RDX                               | 1     | 0    | 0    | 0    | 0    | 1    | 0    | 0  | 1       | 1\nMOV %RDX,0x68(%RSP)                         | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOVSXD %ESI,%RBX                            | 1     | 0    | 0    | 0    | 0    | 1    | 0    | 0  | 1       | 1\nVMOVSS 0x3cb3(%RIP),%XMM0                   | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nMOV %AL,%R13B                               | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nVMULSS %XMM3,%XMM2,%XMM4                    | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVGETMANTSS $0,%XMM4,%XMM4,%XMM17            | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVSS %XMM17,0x50(%RSP)                    | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVRCP28SS %XMM17,%XMM17,%XMM16               | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 7       | 2\nVMOVSS %XMM16,0x60(%RSP)                    | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVGETEXPSS %XMM4,%XMM4,%XMM4                 | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVSS %XMM4,0x58(%RSP)                     | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nMOV (%RSP),%R12                             | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV 0x8(%RSP),%R13                          | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nXOR %EAX,%EAX\nMOV 0x10(%RSP),%R14                         | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV 0x20(%RSP),%RBX                         | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV 0x18(%RSP),%R15                         | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV %RBP,%RSP                               | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nPOP %RBP                                    | 2     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nRET\nMOV 0x7ac8(%RIP),%RDI                       | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV $0x40501c,%ESI                          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV (%RBX),%RDX                             | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nXOR %EAX,%EAX\nCALL 4010e0 <fprintf@plt>                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nCALL 401050 <abort@plt>                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nNOPL (%RAX)                                 | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\n",
        },
      },
      header = {
        "Warnings:\nDetected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.",
        "0% of peak computational performance is used (0.11 out of 64.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 38.00 to 10.00 cycles (3.80x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA)\n",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is probably not vectorized.\nOnly 9% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 38.00 to 2.94 cycles (12.94x speedup).",
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
