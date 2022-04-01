_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant non-unit stride: 2 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements.",
          details = " - VGETEXPSS: 4 occurrences\n - VGETMANTSS: 4 occurrences\n",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "14 SSE or AVX instructions are processing arithmetic or math operations on single precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 16 FP arithmetical operations:\n - 8: addition or subtraction (4 inside FMA instructions)\n - 6: multiply (4 inside FMA instructions)\n - 2: fast reciprocal\nThe binary loop is loading 40 bytes (10 single precision FP elements).\nThe binary loop is storing 8 bytes (2 single precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.33 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 39\nloop length        : 217\nused x86 registers : 8\nused mmx registers : 0\nused xmm registers : 18\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\nADD-SUB / MUL ratio: 2.00\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 14.00 cycles\ninstruction queue    : 19.50 cycles\ndecoding             : 19.50 cycles\nmicro-operation queue: 20.00 cycles\nfront end            : 20.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2   | P3   | P4   | P5   | P6\n---------------------------------------------------------\nuops   | 11.00 | 11.00 | 6.00 | 6.00 | 4.50 | 4.50 | 2.00\ncycles | 11.00 | 11.00 | 6.00 | 6.00 | 4.50 | 4.50 | 2.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 6.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 20.00\nDispatch  : 11.00\nData deps.: 6.00\nOverall L1: 20.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : 0%\ndiv/sqrt: 0%\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 6%\nload    : 6%\nstore   : 6%\nmul     : 6%\nadd-sub : 6%\nfma     : 6%\ndiv/sqrt: 6%\nother   : 6%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 20.00 cycles. At this rate:\n - 1% of peak load performance is reached (2.00 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 0% of peak store performance is reached (0.40 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 401677\n\nInstruction                                | Nb FU | P0   | P1   | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n-------------------------------------------------------------------------------------------------------------------------------\nMOV %R11,%R15                              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nLEA (%RBP,%RBP,1),%R14D                    | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVGETMANTSS $0,(%RDX,%R14,4),%XMM16,%XMM16  | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nIMUL %R14,%R15                             | 1     | 0    | 0    | 0    | 0    | 1    | 0    | 0  | 5       | 2\nVMOVSS (%RDX,%R14,4),%XMM1                 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVSS (%RBX,%R15,4),%XMM3                 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVRCP28SS %XMM16,%XMM16,%XMM2               | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 7       | 2\nVMOVSS (%RBX,%R15,4),%XMM0                 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVGETEXPSS %XMM1,%XMM1,%XMM1                | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nLEA 0x1(%RBP,%RBP,1),%R15D                 | 1     | 0    | 0    | 0    | 0    | 1    | 0    | 0  | 1       | 1\nADD $0x1,%EBP                              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVGETMANTSS $0,%XMM3,%XMM3,%XMM3            | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVGETEXPSS %XMM0,%XMM0,%XMM0                | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMULSS {rn-sae},%XMM3,%XMM2,%XMM4          | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVSUBSS %XMM1,%XMM0,%XMM5                   | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFNMADD231SS {rn-sae},%XMM16,%XMM4,%XMM3   | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFMADD231SS %XMM3,%XMM2,%XMM4              | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVSCALEFSS %XMM5,%XMM4,%XMM6                | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVADDSS (%RSI,%R14,4),%XMM6,%XMM7           | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVMOVSS %XMM7,(%RSI,%R14,4)                 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nMOV %R11,%R14                              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nVGETMANTSS $0,(%RDX,%R15,4),%XMM17,%XMM17  | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nIMUL %R15,%R14                             | 1     | 0    | 0    | 0    | 0    | 1    | 0    | 0  | 5       | 2\nVMOVSS (%RBX,%R14,4),%XMM11                | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVRCP28SS %XMM17,%XMM17,%XMM10              | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 7       | 2\nVMOVSS (%RBX,%R14,4),%XMM8                 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVGETMANTSS $0,%XMM11,%XMM11,%XMM11         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVSS (%RDX,%R15,4),%XMM9                 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVGETEXPSS %XMM8,%XMM8,%XMM8                | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMULSS {rn-sae},%XMM11,%XMM10,%XMM12       | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVGETEXPSS %XMM9,%XMM9,%XMM9                | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFNMADD231SS {rn-sae},%XMM17,%XMM12,%XMM11 | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVSUBSS %XMM9,%XMM8,%XMM13                  | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFMADD231SS %XMM11,%XMM10,%XMM12           | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVSCALEFSS %XMM13,%XMM12,%XMM14             | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVADDSS (%RSI,%R15,4),%XMM14,%XMM15         | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVMOVSS %XMM15,(%RSI,%R15,4)                | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nCMP %R8D,%EBP                              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJB 401677 <baseline+0x47>                  | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\n",
        },
      },
      header = {
        "1% of peak computational performance is used (0.80 out of 64.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 20.00 to 17.00 cycles (1.18x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\n16 data elements could be processed at once in vector registers.\nBy vectorizing your loop, you can lower the cost of an iteration from 20.00 to 1.25 cycles (16.00x speedup).",
        },
        {
          title = "Execution units bottlenecks",
          txt = "Found no such bottlenecks but see expert reports for more complex bottlenecks.",
        },
      },
      potential = {
        {
          workaround = "Try to change order in which elements are evaluated (using parentheses) in arithmetic expressions containing both ADD/SUB and MUL operations to enable your compiler to generate FMA instructions wherever possible.\nFor instance a + b*c is a valid FMA (MUL then ADD).\nHowever (a+b)* c cannot be translated into an FMA (ADD then MUL).",
          title = "FMA",
          txt = "Detected 4 FMA (fused multiply-add) operations.\nPresence of both ADD/SUB and MUL operations.",
        },
      },
    },
  },
  AVG = {
      hint = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant non-unit stride: 2 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements.",
          details = " - VGETEXPSS: 4 occurrences\n - VGETMANTSS: 4 occurrences\n",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "14 SSE or AVX instructions are processing arithmetic or math operations on single precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 16 FP arithmetical operations:\n - 8: addition or subtraction (4 inside FMA instructions)\n - 6: multiply (4 inside FMA instructions)\n - 2: fast reciprocal\nThe binary loop is loading 40 bytes (10 single precision FP elements).\nThe binary loop is storing 8 bytes (2 single precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.33 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 39\nloop length        : 217\nused x86 registers : 8\nused mmx registers : 0\nused xmm registers : 18\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\nADD-SUB / MUL ratio: 2.00\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 14.00 cycles\ninstruction queue    : 19.50 cycles\ndecoding             : 19.50 cycles\nmicro-operation queue: 20.00 cycles\nfront end            : 20.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2   | P3   | P4   | P5   | P6\n---------------------------------------------------------\nuops   | 11.00 | 11.00 | 6.00 | 6.00 | 4.50 | 4.50 | 2.00\ncycles | 11.00 | 11.00 | 6.00 | 6.00 | 4.50 | 4.50 | 2.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 6.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 20.00\nDispatch  : 11.00\nData deps.: 6.00\nOverall L1: 20.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : 0%\ndiv/sqrt: 0%\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 6%\nload    : 6%\nstore   : 6%\nmul     : 6%\nadd-sub : 6%\nfma     : 6%\ndiv/sqrt: 6%\nother   : 6%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 20.00 cycles. At this rate:\n - 1% of peak load performance is reached (2.00 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 0% of peak store performance is reached (0.40 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 401677\n\nInstruction                                | Nb FU | P0   | P1   | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n-------------------------------------------------------------------------------------------------------------------------------\nMOV %R11,%R15                              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nLEA (%RBP,%RBP,1),%R14D                    | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVGETMANTSS $0,(%RDX,%R14,4),%XMM16,%XMM16  | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nIMUL %R14,%R15                             | 1     | 0    | 0    | 0    | 0    | 1    | 0    | 0  | 5       | 2\nVMOVSS (%RDX,%R14,4),%XMM1                 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVSS (%RBX,%R15,4),%XMM3                 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVRCP28SS %XMM16,%XMM16,%XMM2               | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 7       | 2\nVMOVSS (%RBX,%R15,4),%XMM0                 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVGETEXPSS %XMM1,%XMM1,%XMM1                | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nLEA 0x1(%RBP,%RBP,1),%R15D                 | 1     | 0    | 0    | 0    | 0    | 1    | 0    | 0  | 1       | 1\nADD $0x1,%EBP                              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVGETMANTSS $0,%XMM3,%XMM3,%XMM3            | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVGETEXPSS %XMM0,%XMM0,%XMM0                | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMULSS {rn-sae},%XMM3,%XMM2,%XMM4          | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVSUBSS %XMM1,%XMM0,%XMM5                   | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFNMADD231SS {rn-sae},%XMM16,%XMM4,%XMM3   | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFMADD231SS %XMM3,%XMM2,%XMM4              | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVSCALEFSS %XMM5,%XMM4,%XMM6                | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVADDSS (%RSI,%R14,4),%XMM6,%XMM7           | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVMOVSS %XMM7,(%RSI,%R14,4)                 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nMOV %R11,%R14                              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nVGETMANTSS $0,(%RDX,%R15,4),%XMM17,%XMM17  | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nIMUL %R15,%R14                             | 1     | 0    | 0    | 0    | 0    | 1    | 0    | 0  | 5       | 2\nVMOVSS (%RBX,%R14,4),%XMM11                | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVRCP28SS %XMM17,%XMM17,%XMM10              | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 7       | 2\nVMOVSS (%RBX,%R14,4),%XMM8                 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVGETMANTSS $0,%XMM11,%XMM11,%XMM11         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVSS (%RDX,%R15,4),%XMM9                 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVGETEXPSS %XMM8,%XMM8,%XMM8                | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMULSS {rn-sae},%XMM11,%XMM10,%XMM12       | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVGETEXPSS %XMM9,%XMM9,%XMM9                | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFNMADD231SS {rn-sae},%XMM17,%XMM12,%XMM11 | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVSUBSS %XMM9,%XMM8,%XMM13                  | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFMADD231SS %XMM11,%XMM10,%XMM12           | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVSCALEFSS %XMM13,%XMM12,%XMM14             | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVADDSS (%RSI,%R15,4),%XMM14,%XMM15         | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVMOVSS %XMM15,(%RSI,%R15,4)                | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nCMP %R8D,%EBP                              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJB 401677 <baseline+0x47>                  | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\n",
        },
      },
      header = {
        "1% of peak computational performance is used (0.80 out of 64.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 20.00 to 17.00 cycles (1.18x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\n16 data elements could be processed at once in vector registers.\nBy vectorizing your loop, you can lower the cost of an iteration from 20.00 to 1.25 cycles (16.00x speedup).",
        },
        {
          title = "Execution units bottlenecks",
          txt = "Found no such bottlenecks but see expert reports for more complex bottlenecks.",
        },
      },
      potential = {
        {
          workaround = "Try to change order in which elements are evaluated (using parentheses) in arithmetic expressions containing both ADD/SUB and MUL operations to enable your compiler to generate FMA instructions wherever possible.\nFor instance a + b*c is a valid FMA (MUL then ADD).\nHowever (a+b)* c cannot be translated into an FMA (ADD then MUL).",
          title = "FMA",
          txt = "Detected 4 FMA (fused multiply-add) operations.\nPresence of both ADD/SUB and MUL operations.",
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
