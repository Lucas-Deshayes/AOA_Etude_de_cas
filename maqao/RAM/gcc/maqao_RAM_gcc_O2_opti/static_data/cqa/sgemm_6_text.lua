_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n - baseline: 1 occurrences\n - init_array: 2 occurrences\n - init_matrice: 1 occurrences\n - rdtsc: 2 occurrences\n - unknown: 8 occurrences\n",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements.",
          details = " - CVTSI2SD (INT32/64 to FP64, scalar): 7 occurrences\n",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "6 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 6 FP arithmetical operations:\n - 3: addition or subtraction\n - 2: multiply\n - 1: divide\nThe binary loop is loading 144 bytes (18 double precision FP elements).\nThe binary loop is storing 60 bytes (7 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.03 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 114\nloop length        : 424\nused x86 registers : 8\nused mmx registers : 0\nused xmm registers : 3\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 10\nADD-SUB / MUL ratio: 1.50\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 27.00 cycles\ninstruction queue    : 57.00 cycles\ndecoding             : 57.00 cycles\nmicro-operation queue: 64.00 cycles\nfront end            : 64.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2    | P3    | P4    | P5    | P6\n-----------------------------------------------------------\nuops   | 8.00 | 6.00 | 23.00 | 11.00 | 36.00 | 36.00 | 9.00\ncycles | 8.00 | 6.00 | 23.00 | 11.00 | 36.00 | 36.00 | 9.00\n\nCycles executing div or sqrt instructions: 12.00-32.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 64.00\nDispatch  : 36.00\nDIV/SQRT  : 12.00-32.00\nOverall L1: 64.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : 0%\nstore  : 0%\nmul    : 0%\nadd-sub: 0%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 14%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 100%\nINT+FP\nall     : 1%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 2%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 10%\nload   : 9%\nstore  : 10%\nmul    : 6%\nadd-sub: 12%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 10%\nFP\nall     : 14%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : 12%\nadd-sub : 12%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 12%\nother   : 25%\nINT+FP\nall     : 10%\nload    : 9%\nstore   : 10%\nmul     : 10%\nadd-sub : 12%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 12%\nother   : 10%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 64.00 cycles. At this rate:\n - 1% of peak load performance is reached (2.25 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 1% of peak store performance is reached (0.94 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 64.00 to 57.00 cycles (1.12x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 162e\n\nInstruction                     | Nb FU | P0   | P1   | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n--------------------------------------------------------------------------------------------------------------------\nMOV -0x4c(%RBP),%EAX            | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nSAL $0x2,%RAX                   | 1     | 0    | 0    | 0    | 0    | 1    | 0    | 0  | 1       | 1\nMOV %RAX,%RDI                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nCALL 1110 <.plt.sec@start+0x50> | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nMOV %RAX,-0x40(%RBP)            | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV -0x4c(%RBP),%EAX            | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nSAL $0x2,%RAX                   | 1     | 0    | 0    | 0    | 0    | 1    | 0    | 0  | 1       | 1\nMOV %RAX,%RDI                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nCALL 1110 <.plt.sec@start+0x50> | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nMOV %RAX,-0x38(%RBP)            | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV -0x4c(%RBP),%EDX            | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV %EDX,%EAX                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nSUB $0x1,%RAX                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %RAX,-0x30(%RBP)            | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %EDX,%EAX                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nMOV %RAX,%R12                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nMOV $0,%R13D                    | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV -0x4c(%RBP),%EAX            | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nIMUL %EAX,%EAX                  | 1     | 0    | 0    | 0    | 0    | 1    | 0    | 0  | 3       | 1\nMOV %EAX,%EAX                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nSAL $0x2,%RAX                   | 1     | 0    | 0    | 0    | 0    | 1    | 0    | 0  | 1       | 1\nMOV %RAX,%RDI                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nCALL 1110 <.plt.sec@start+0x50> | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nMOV %RAX,-0x28(%RBP)            | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV $0,%EDI                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCALL 10f0 <.plt.sec@start+0x30> | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nMOV -0x4c(%RBP),%EAX            | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV -0x40(%RBP),%RDX            | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV %RDX,%RSI                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nMOV %EAX,%EDI                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nCALL 12c5 <init_array>          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nMOV -0x4c(%RBP),%EAX            | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV -0x38(%RBP),%RDX            | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV %RDX,%RSI                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nMOV %EAX,%EDI                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nCALL 12c5 <init_array>          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nMOV -0x4c(%RBP),%EAX            | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV -0x28(%RBP),%RDX            | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV %RDX,%RSI                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nMOV %EAX,%EDI                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nCALL 1229 <init_matrice>        | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nCMPL $0,-0x54(%RBP)             | 1     | 0    | 0    | 1    | 0    | 0.50 | 0.50 | 0  | 1       | 1\nJNE 1512 <main+0x158>           | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOVL $0,-0x50(%RBP)             | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 1       | 1\nJMP 1508 <main+0x14e>           | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 2\nJMP 1528 <main+0x16e>           | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 2\nMOV -0x28(%RBP),%RCX            | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV -0x38(%RBP),%RDX            | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV -0x40(%RBP),%RSI            | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV -0x4c(%RBP),%EAX            | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV %EAX,%EDI                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nCALL 1650 <baseline>            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nMOV $0,%EAX                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCALL 1876 <rdtsc>               | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nMOV %RAX,-0x20(%RBP)            | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOVL $0,-0x50(%RBP)             | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 1       | 1\nJMP 1559 <main+0x19f>           | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 2\nMOV $0,%EAX                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCALL 1876 <rdtsc>               | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nMOV %RAX,-0x18(%RBP)            | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV -0x18(%RBP),%RAX            | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nSUB -0x20(%RBP),%RAX            | 1     | 0    | 0    | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 1       | 1\nTEST %RAX,%RAX                  | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJS 1583 <main+0x1c9>            | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nCVTSI2SD %RAX,%XMM0             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 5       | 1\nJMP 1598 <main+0x1de>           | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 2\nMOV %RAX,%RDX                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nSHR $0x1,%RDX                   | 1     | 0    | 0    | 0    | 0    | 1    | 0    | 0  | 1       | 1\nAND $0x1,%EAX                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nOR %RAX,%RDX                    | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCVTSI2SD %RDX,%XMM0             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 5       | 1\nADDSD %XMM0,%XMM0               | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nMOV -0x4c(%RBP),%EAX            | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nTEST %RAX,%RAX                  | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJS 15a7 <main+0x1ed>            | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nCVTSI2SD %RAX,%XMM2             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 5       | 1\nJMP 15c0 <main+0x206>           | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 2\nMOV %RAX,%RDX                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nSHR $0x1,%RDX                   | 1     | 0    | 0    | 0    | 0    | 1    | 0    | 0  | 1       | 1\nAND $0x1,%EAX                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nOR %RAX,%RDX                    | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCVTSI2SD %RDX,%XMM1             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 5       | 1\nMOVAPD %XMM1,%XMM2              | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nADDSD %XMM1,%XMM2               | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nMOV -0x4c(%RBP),%EAX            | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nTEST %RAX,%RAX                  | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJS 15cf <main+0x215>            | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nCVTSI2SD %RAX,%XMM1             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 5       | 1\nJMP 15e4 <main+0x22a>           | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 2\nMOV %RAX,%RDX                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nSHR $0x1,%RDX                   | 1     | 0    | 0    | 0    | 0    | 1    | 0    | 0  | 1       | 1\nAND $0x1,%EAX                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nOR %RAX,%RDX                    | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCVTSI2SD %RDX,%XMM1             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 5       | 1\nADDSD %XMM1,%XMM1               | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nMULSD %XMM1,%XMM2               | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nCVTSI2SDL -0x44(%RBP),%XMM1     | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 1\nMULSD %XMM2,%XMM1               | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nDIVSD %XMM1,%XMM0               | 3     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 40-42   | 12-32\nLEA 0xa54(%RIP),%RDI            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV $0x1,%EAX                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCALL 10e0 <.plt.sec@start+0x20> | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nMOV -0x40(%RBP),%RAX            | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV %RAX,%RDI                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nCALL 10c0 <.plt.sec@start>      | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nMOV -0x38(%RBP),%RAX            | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV %RAX,%RDI                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nCALL 10c0 <.plt.sec@start>      | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nMOV -0x28(%RBP),%RAX            | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV %RAX,%RDI                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nCALL 10c0 <.plt.sec@start>      | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nADDL $0x1,-0x54(%RBP)           | 1     | 0    | 0    | 1.50 | 0.50 | 0.50 | 0.50 | 1  | 7       | 1\nCMPL $0x1e,-0x54(%RBP)          | 1     | 0    | 0    | 1    | 0    | 0.50 | 0.50 | 0  | 1       | 1\nJLE 144c <main+0x92>            | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\n",
        },
      },
      header = {
        "Warnings:\nDetected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.",
        "0% of peak computational performance is used (0.09 out of 32.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 64.00 to 32.00 cycles (2.00x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA)\n",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is probably not vectorized.\nOnly 10% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 64.00 to 5.47 cycles (11.69x speedup).",
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
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n - baseline: 1 occurrences\n - init_array: 2 occurrences\n - init_matrice: 1 occurrences\n - rdtsc: 2 occurrences\n - unknown: 8 occurrences\n",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements.",
          details = " - CVTSI2SD (INT32/64 to FP64, scalar): 7 occurrences\n",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "6 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 6 FP arithmetical operations:\n - 3: addition or subtraction\n - 2: multiply\n - 1: divide\nThe binary loop is loading 144 bytes (18 double precision FP elements).\nThe binary loop is storing 60 bytes (7 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.03 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 114\nloop length        : 424\nused x86 registers : 8\nused mmx registers : 0\nused xmm registers : 3\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 10\nADD-SUB / MUL ratio: 1.50\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 27.00 cycles\ninstruction queue    : 57.00 cycles\ndecoding             : 57.00 cycles\nmicro-operation queue: 64.00 cycles\nfront end            : 64.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2    | P3    | P4    | P5    | P6\n-----------------------------------------------------------\nuops   | 8.00 | 6.00 | 23.00 | 11.00 | 36.00 | 36.00 | 9.00\ncycles | 8.00 | 6.00 | 23.00 | 11.00 | 36.00 | 36.00 | 9.00\n\nCycles executing div or sqrt instructions: 12.00-32.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 64.00\nDispatch  : 36.00\nDIV/SQRT  : 12.00-32.00\nOverall L1: 64.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : 0%\nstore  : 0%\nmul    : 0%\nadd-sub: 0%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 14%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 100%\nINT+FP\nall     : 1%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 2%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 10%\nload   : 9%\nstore  : 10%\nmul    : 6%\nadd-sub: 12%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 10%\nFP\nall     : 14%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : 12%\nadd-sub : 12%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 12%\nother   : 25%\nINT+FP\nall     : 10%\nload    : 9%\nstore   : 10%\nmul     : 10%\nadd-sub : 12%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 12%\nother   : 10%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 64.00 cycles. At this rate:\n - 1% of peak load performance is reached (2.25 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 1% of peak store performance is reached (0.94 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 64.00 to 57.00 cycles (1.12x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 162e\n\nInstruction                     | Nb FU | P0   | P1   | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n--------------------------------------------------------------------------------------------------------------------\nMOV -0x4c(%RBP),%EAX            | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nSAL $0x2,%RAX                   | 1     | 0    | 0    | 0    | 0    | 1    | 0    | 0  | 1       | 1\nMOV %RAX,%RDI                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nCALL 1110 <.plt.sec@start+0x50> | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nMOV %RAX,-0x40(%RBP)            | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV -0x4c(%RBP),%EAX            | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nSAL $0x2,%RAX                   | 1     | 0    | 0    | 0    | 0    | 1    | 0    | 0  | 1       | 1\nMOV %RAX,%RDI                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nCALL 1110 <.plt.sec@start+0x50> | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nMOV %RAX,-0x38(%RBP)            | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV -0x4c(%RBP),%EDX            | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV %EDX,%EAX                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nSUB $0x1,%RAX                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %RAX,-0x30(%RBP)            | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %EDX,%EAX                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nMOV %RAX,%R12                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nMOV $0,%R13D                    | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV -0x4c(%RBP),%EAX            | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nIMUL %EAX,%EAX                  | 1     | 0    | 0    | 0    | 0    | 1    | 0    | 0  | 3       | 1\nMOV %EAX,%EAX                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nSAL $0x2,%RAX                   | 1     | 0    | 0    | 0    | 0    | 1    | 0    | 0  | 1       | 1\nMOV %RAX,%RDI                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nCALL 1110 <.plt.sec@start+0x50> | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nMOV %RAX,-0x28(%RBP)            | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV $0,%EDI                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCALL 10f0 <.plt.sec@start+0x30> | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nMOV -0x4c(%RBP),%EAX            | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV -0x40(%RBP),%RDX            | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV %RDX,%RSI                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nMOV %EAX,%EDI                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nCALL 12c5 <init_array>          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nMOV -0x4c(%RBP),%EAX            | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV -0x38(%RBP),%RDX            | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV %RDX,%RSI                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nMOV %EAX,%EDI                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nCALL 12c5 <init_array>          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nMOV -0x4c(%RBP),%EAX            | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV -0x28(%RBP),%RDX            | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV %RDX,%RSI                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nMOV %EAX,%EDI                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nCALL 1229 <init_matrice>        | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nCMPL $0,-0x54(%RBP)             | 1     | 0    | 0    | 1    | 0    | 0.50 | 0.50 | 0  | 1       | 1\nJNE 1512 <main+0x158>           | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOVL $0,-0x50(%RBP)             | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 1       | 1\nJMP 1508 <main+0x14e>           | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 2\nJMP 1528 <main+0x16e>           | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 2\nMOV -0x28(%RBP),%RCX            | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV -0x38(%RBP),%RDX            | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV -0x40(%RBP),%RSI            | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV -0x4c(%RBP),%EAX            | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV %EAX,%EDI                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nCALL 1650 <baseline>            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nMOV $0,%EAX                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCALL 1876 <rdtsc>               | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nMOV %RAX,-0x20(%RBP)            | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOVL $0,-0x50(%RBP)             | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 1       | 1\nJMP 1559 <main+0x19f>           | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 2\nMOV $0,%EAX                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCALL 1876 <rdtsc>               | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nMOV %RAX,-0x18(%RBP)            | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV -0x18(%RBP),%RAX            | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nSUB -0x20(%RBP),%RAX            | 1     | 0    | 0    | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 1       | 1\nTEST %RAX,%RAX                  | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJS 1583 <main+0x1c9>            | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nCVTSI2SD %RAX,%XMM0             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 5       | 1\nJMP 1598 <main+0x1de>           | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 2\nMOV %RAX,%RDX                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nSHR $0x1,%RDX                   | 1     | 0    | 0    | 0    | 0    | 1    | 0    | 0  | 1       | 1\nAND $0x1,%EAX                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nOR %RAX,%RDX                    | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCVTSI2SD %RDX,%XMM0             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 5       | 1\nADDSD %XMM0,%XMM0               | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nMOV -0x4c(%RBP),%EAX            | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nTEST %RAX,%RAX                  | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJS 15a7 <main+0x1ed>            | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nCVTSI2SD %RAX,%XMM2             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 5       | 1\nJMP 15c0 <main+0x206>           | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 2\nMOV %RAX,%RDX                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nSHR $0x1,%RDX                   | 1     | 0    | 0    | 0    | 0    | 1    | 0    | 0  | 1       | 1\nAND $0x1,%EAX                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nOR %RAX,%RDX                    | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCVTSI2SD %RDX,%XMM1             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 5       | 1\nMOVAPD %XMM1,%XMM2              | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nADDSD %XMM1,%XMM2               | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nMOV -0x4c(%RBP),%EAX            | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nTEST %RAX,%RAX                  | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJS 15cf <main+0x215>            | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nCVTSI2SD %RAX,%XMM1             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 5       | 1\nJMP 15e4 <main+0x22a>           | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 2\nMOV %RAX,%RDX                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nSHR $0x1,%RDX                   | 1     | 0    | 0    | 0    | 0    | 1    | 0    | 0  | 1       | 1\nAND $0x1,%EAX                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nOR %RAX,%RDX                    | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCVTSI2SD %RDX,%XMM1             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 5       | 1\nADDSD %XMM1,%XMM1               | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nMULSD %XMM1,%XMM2               | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nCVTSI2SDL -0x44(%RBP),%XMM1     | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 1\nMULSD %XMM2,%XMM1               | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nDIVSD %XMM1,%XMM0               | 3     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 40-42   | 12-32\nLEA 0xa54(%RIP),%RDI            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV $0x1,%EAX                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCALL 10e0 <.plt.sec@start+0x20> | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nMOV -0x40(%RBP),%RAX            | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV %RAX,%RDI                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nCALL 10c0 <.plt.sec@start>      | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nMOV -0x38(%RBP),%RAX            | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV %RAX,%RDI                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nCALL 10c0 <.plt.sec@start>      | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nMOV -0x28(%RBP),%RAX            | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV %RAX,%RDI                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nCALL 10c0 <.plt.sec@start>      | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nADDL $0x1,-0x54(%RBP)           | 1     | 0    | 0    | 1.50 | 0.50 | 0.50 | 0.50 | 1  | 7       | 1\nCMPL $0x1e,-0x54(%RBP)          | 1     | 0    | 0    | 1    | 0    | 0.50 | 0.50 | 0  | 1       | 1\nJLE 144c <main+0x92>            | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\n",
        },
      },
      header = {
        "Warnings:\nDetected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.",
        "0% of peak computational performance is used (0.09 out of 32.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 64.00 to 32.00 cycles (2.00x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA)\n",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is probably not vectorized.\nOnly 10% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 64.00 to 5.47 cycles (11.69x speedup).",
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
      "",
      "Warnings:\n - Non-innermost loop: analyzing only self part (ignoring child loops).\n - Ignoring paths for analysis\n - Too many paths. Rerun with max-paths=19\n - RecMII not computed since number of paths is unknown or > max_paths\n - Streams not analyzed since number of paths is unknown or > max_paths\n",
      "Try to simplify control and/or increase the maximum number of paths per function/loop through the 'max-paths-nb' option.\n",
      "This loop has 19 execution paths.\n",
      "The presence of multiple execution paths is typically the main/first bottleneck.\nTry to simplify control inside loop: ideally, try to remove all conditional expressions, for example by (if applicable):\n - hoisting them (moving them outside the loop)\n - turning them into conditional moves, MIN or MAX\n\n",
    },
    nb_paths = 19,
  },
}
