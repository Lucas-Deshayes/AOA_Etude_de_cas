_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant unknown stride: 9 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements.",
          details = " - VGETEXPSS: 2 occurrences\n - VGETMANTSS: 2 occurrences\n",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "7 SSE or AVX instructions are processing arithmetic or math operations on single precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 8 FP arithmetical operations:\n - 4: addition or subtraction (2 inside FMA instructions)\n - 3: multiply (2 inside FMA instructions)\n - 1: fast reciprocal\nThe binary loop is loading 20 bytes (5 single precision FP elements).\nThe binary loop is storing 4 bytes (1 single precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.33 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 31\nloop length        : 146\nused x86 registers : 10\nused mmx registers : 0\nused xmm registers : 9\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\nADD-SUB / MUL ratio: 2.00\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 10.00 cycles\ninstruction queue    : 15.50 cycles\ndecoding             : 15.50 cycles\nmicro-operation queue: 16.00 cycles\nfront end            : 16.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6\n-------------------------------------------------------\nuops   | 5.50 | 5.50 | 3.00 | 3.00 | 7.50 | 7.50 | 1.00\ncycles | 5.50 | 5.50 | 3.00 | 3.00 | 7.50 | 7.50 | 1.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 0.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 16.00\nDispatch  : 7.50\nData deps.: 0.00\nOverall L1: 16.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : 0%\ndiv/sqrt: 0%\nother   : 0%\nINT+FP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : 0%\ndiv/sqrt: 0%\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 6%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 6%\nFP\nall     : 6%\nload    : 6%\nstore   : 6%\nmul     : 6%\nadd-sub : 6%\nfma     : 6%\ndiv/sqrt: 6%\nother   : 6%\nINT+FP\nall     : 6%\nload    : 6%\nstore   : 6%\nmul     : 6%\nadd-sub : 6%\nfma     : 6%\ndiv/sqrt: 6%\nother   : 6%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 16.00 cycles. At this rate:\n - 0% of peak load performance is reached (1.25 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 0% of peak store performance is reached (0.25 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 401663\n\nInstruction                               | Nb FU | P0   | P1   | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n------------------------------------------------------------------------------------------------------------------------------\nMOV $0x1,%EBX                             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nXOR %EBP,%EBP\nTEST %R8D,%R8D                            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJBE 401754 <baseline+0x124>               | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nLEA (%RCX,%R9,4),%RBX                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA 0x1(%RBP,%RBP,1),%EBX                 | 1     | 0    | 0    | 0    | 0    | 1    | 0    | 0  | 1       | 1\nADD $-0x1,%EBX                            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCMP %EDI,%EBX                             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJAE 4017be <baseline+0x18e>               | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOV %RAX,%RBP                             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nVGETMANTSS $0,(%RDX,%RBX,4),%XMM16,%XMM16 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVMOVSS (%RDX,%RBX,4),%XMM1                | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nIMUL %RBX,%RBP                            | 1     | 0    | 0    | 0    | 0    | 1    | 0    | 0  | 5       | 2\nADD %RCX,%RBP                             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVRCP28SS %XMM16,%XMM16,%XMM2              | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 7       | 2\nVGETEXPSS %XMM1,%XMM1,%XMM1               | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVSS (%RBP,%R9,4),%XMM3                 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVSS (%RBP,%R9,4),%XMM0                 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVGETMANTSS $0,%XMM3,%XMM3,%XMM3           | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVGETEXPSS %XMM0,%XMM0,%XMM0               | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMULSS {rn-sae},%XMM3,%XMM2,%XMM4         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVSUBSS %XMM1,%XMM0,%XMM5                  | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFNMADD231SS {rn-sae},%XMM16,%XMM4,%XMM3  | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFMADD231SS %XMM3,%XMM2,%XMM4             | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVSCALEFSS %XMM5,%XMM4,%XMM6               | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVADDSS (%RSI,%RBX,4),%XMM6,%XMM7          | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVMOVSS %XMM7,(%RSI,%RBX,4)                | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nADD $0x1,%R10D                            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %R10D,%R9D                            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nCMP %EDI,%R10D                            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJB 401663 <baseline+0x33>                 | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.50 out of 64.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 16.00 to 10.00 cycles (1.60x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\n16 data elements could be processed at once in vector registers.\nBy vectorizing your loop, you can lower the cost of an iteration from 16.00 to 1.00 cycles (16.00x speedup).",
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
          txt = "Detected 2 FMA (fused multiply-add) operations.\nPresence of both ADD/SUB and MUL operations.",
        },
      },
    },
    {
      hint = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant unknown stride: 6 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This loop is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop does not load or store any data.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 13\nloop length        : 47\nused x86 registers : 7\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 3.00 cycles\ninstruction queue    : 6.50 cycles\ndecoding             : 6.50 cycles\nmicro-operation queue: 7.00 cycles\nfront end            : 7.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6\n-------------------------------------------------------\nuops   | 0.00 | 0.00 | 0.00 | 0.00 | 6.00 | 6.00 | 0.00\ncycles | 0.00 | 0.00 | 0.00 | 0.00 | 6.00 | 6.00 | 0.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 0.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 7.00\nDispatch  : 6.00\nData deps.: 0.00\nOverall L1: 7.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 6%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 6%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 6%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 7.00 cycles. At this rate:\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 7.00 to 6.50 cycles (1.08x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 401663\n\nInstruction                 | Nb FU | P0 | P1 | P2 | P3 | P4   | P5   | P6 | Latency | Recip. throughput\n--------------------------------------------------------------------------------------------------------\nMOV $0x1,%EBX               | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nXOR %EBP,%EBP\nTEST %R8D,%R8D              | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nJBE 401754 <baseline+0x124> | 1     | 0  | 0  | 0  | 0  | 0    | 1    | 0  | 0       | 1-2\nLEA (%RCX,%R9,4),%RBX       | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA 0x1(%RBP,%RBP,1),%EBX   | 1     | 0  | 0  | 0  | 0  | 1    | 0    | 0  | 1       | 1\nADD $-0x1,%EBX              | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nCMP %EDI,%EBX               | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nJAE 4017be <baseline+0x18e> | 1     | 0  | 0  | 0  | 0  | 0    | 1    | 0  | 0       | 1-2\nADD $0x1,%R10D              | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %R10D,%R9D              | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 0       | 0.50\nCMP %EDI,%R10D              | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nJB 401663 <baseline+0x33>   | 1     | 0  | 0  | 0  | 0  | 0    | 1    | 0  | 0       | 1-2\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\n16 data elements could be processed at once in vector registers.\nBy vectorizing your loop, you can lower the cost of an iteration from 7.00 to 0.44 cycles (16.00x speedup).",
        },
        {
          title = "Execution units bottlenecks",
          txt = "Found no such bottlenecks but see expert reports for more complex bottlenecks.",
        },
      },
      potential = {
      },
    },
    {
      hint = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant unknown stride: 3 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements.",
          details = " - VGETEXPSS: 2 occurrences\n - VGETMANTSS: 2 occurrences\n",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "7 SSE or AVX instructions are processing arithmetic or math operations on single precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 8 FP arithmetical operations:\n - 4: addition or subtraction (2 inside FMA instructions)\n - 3: multiply (2 inside FMA instructions)\n - 1: fast reciprocal\nThe binary loop is loading 20 bytes (5 single precision FP elements).\nThe binary loop is storing 4 bytes (1 single precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.33 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 29\nloop length        : 138\nused x86 registers : 10\nused mmx registers : 0\nused xmm registers : 9\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\nADD-SUB / MUL ratio: 2.00\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 9.00 cycles\ninstruction queue    : 14.50 cycles\ndecoding             : 14.50 cycles\nmicro-operation queue: 15.00 cycles\nfront end            : 15.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6\n-------------------------------------------------------\nuops   | 5.50 | 5.50 | 3.00 | 3.00 | 6.50 | 6.50 | 1.00\ncycles | 5.50 | 5.50 | 3.00 | 3.00 | 6.50 | 6.50 | 1.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 0.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 15.00\nDispatch  : 6.50\nData deps.: 0.00\nOverall L1: 15.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : 0%\ndiv/sqrt: 0%\nother   : 0%\nINT+FP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : 0%\ndiv/sqrt: 0%\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 6%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 6%\nFP\nall     : 6%\nload    : 6%\nstore   : 6%\nmul     : 6%\nadd-sub : 6%\nfma     : 6%\ndiv/sqrt: 6%\nother   : 6%\nINT+FP\nall     : 6%\nload    : 6%\nstore   : 6%\nmul     : 6%\nadd-sub : 6%\nfma     : 6%\ndiv/sqrt: 6%\nother   : 6%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 15.00 cycles. At this rate:\n - 1% of peak load performance is reached (1.33 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 0% of peak store performance is reached (0.27 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 401663\n\nInstruction                               | Nb FU | P0   | P1   | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n------------------------------------------------------------------------------------------------------------------------------\nMOV $0x1,%EBX                             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nXOR %EBP,%EBP\nTEST %R8D,%R8D                            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJBE 401754 <baseline+0x124>               | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nADD $-0x1,%EBX                            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCMP %EDI,%EBX                             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJAE 4017be <baseline+0x18e>               | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOV %RAX,%RBP                             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nVGETMANTSS $0,(%RDX,%RBX,4),%XMM16,%XMM16 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVMOVSS (%RDX,%RBX,4),%XMM1                | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nIMUL %RBX,%RBP                            | 1     | 0    | 0    | 0    | 0    | 1    | 0    | 0  | 5       | 2\nADD %RCX,%RBP                             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVRCP28SS %XMM16,%XMM16,%XMM2              | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 7       | 2\nVGETEXPSS %XMM1,%XMM1,%XMM1               | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVSS (%RBP,%R9,4),%XMM3                 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVSS (%RBP,%R9,4),%XMM0                 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVGETMANTSS $0,%XMM3,%XMM3,%XMM3           | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVGETEXPSS %XMM0,%XMM0,%XMM0               | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMULSS {rn-sae},%XMM3,%XMM2,%XMM4         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVSUBSS %XMM1,%XMM0,%XMM5                  | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFNMADD231SS {rn-sae},%XMM16,%XMM4,%XMM3  | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFMADD231SS %XMM3,%XMM2,%XMM4             | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVSCALEFSS %XMM5,%XMM4,%XMM6               | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVADDSS (%RSI,%RBX,4),%XMM6,%XMM7          | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVMOVSS %XMM7,(%RSI,%RBX,4)                | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nADD $0x1,%R10D                            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %R10D,%R9D                            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nCMP %EDI,%R10D                            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJB 401663 <baseline+0x33>                 | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.53 out of 64.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 15.00 to 10.00 cycles (1.50x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\n16 data elements could be processed at once in vector registers.\nBy vectorizing your loop, you can lower the cost of an iteration from 15.00 to 0.94 cycles (16.00x speedup).",
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
          txt = "Detected 2 FMA (fused multiply-add) operations.\nPresence of both ADD/SUB and MUL operations.",
        },
      },
    },
    {
      hint = {
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This loop is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop does not load or store any data.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 11\nloop length        : 39\nused x86 registers : 6\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 3.00 cycles\ninstruction queue    : 5.50 cycles\ndecoding             : 5.50 cycles\nmicro-operation queue: 6.00 cycles\nfront end            : 6.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6\n-------------------------------------------------------\nuops   | 0.00 | 0.00 | 0.00 | 0.00 | 5.00 | 5.00 | 0.00\ncycles | 0.00 | 0.00 | 0.00 | 0.00 | 5.00 | 5.00 | 0.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 0.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 6.00\nDispatch  : 5.00\nData deps.: 0.00\nOverall L1: 6.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 6%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 6%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 6%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 6.00 cycles. At this rate:\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 6.00 to 5.50 cycles (1.09x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 401663\n\nInstruction                 | Nb FU | P0 | P1 | P2 | P3 | P4   | P5   | P6 | Latency | Recip. throughput\n--------------------------------------------------------------------------------------------------------\nMOV $0x1,%EBX               | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nXOR %EBP,%EBP\nTEST %R8D,%R8D              | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nJBE 401754 <baseline+0x124> | 1     | 0  | 0  | 0  | 0  | 0    | 1    | 0  | 0       | 1-2\nADD $-0x1,%EBX              | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nCMP %EDI,%EBX               | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nJAE 4017be <baseline+0x18e> | 1     | 0  | 0  | 0  | 0  | 0    | 1    | 0  | 0       | 1-2\nADD $0x1,%R10D              | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %R10D,%R9D              | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 0       | 0.50\nCMP %EDI,%R10D              | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nJB 401663 <baseline+0x33>   | 1     | 0  | 0  | 0  | 0  | 0    | 1    | 0  | 0       | 1-2\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\n16 data elements could be processed at once in vector registers.\nBy vectorizing your loop, you can lower the cost of an iteration from 6.00 to 0.37 cycles (16.00x speedup).",
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
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements.",
          details = " - VGETEXPSS: 2 occurrences\n - VGETMANTSS: 2 occurrences\n",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "3 SSE or AVX instructions are processing arithmetic or math operations on single precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 4 FP arithmetical operations:\n - 2: addition or subtraction (1 inside FMA instructions)\n - 1.50: multiply (1 inside FMA instructions)\n - 0.50: fast reciprocal\nThe binary loop is loading 10 bytes (2 single precision FP elements).\nThe binary loop is storing 2 bytes (0 single precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.33 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 21\nloop length        : 92.50\nused x86 registers : 8.25\nused mmx registers : 0\nused xmm registers : 4.50\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\nADD-SUB / MUL ratio: 2.00\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 6.25 cycles\ninstruction queue    : 10.50 cycles\ndecoding             : 10.50 cycles\nmicro-operation queue: 11.00 cycles\nfront end            : 11.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6\n-------------------------------------------------------\nuops   | 2.75 | 2.75 | 1.50 | 1.50 | 6.25 | 6.25 | 0.50\ncycles | 2.75 | 2.75 | 1.50 | 1.50 | 6.25 | 6.25 | 0.50\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 0.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 11.00\nDispatch  : 6.25\nData deps.: 0.00\nOverall L1: 11.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 0%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : 0%\ndiv/sqrt: 0%\nother   : 0%\nINT+FP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : 0%\ndiv/sqrt: 0%\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 6%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 6%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 6%\nFP\nall     : 6%\nload    : 6%\nstore   : 6%\nmul     : 6%\nadd-sub : 6%\nfma     : 6%\ndiv/sqrt: 6%\nother   : 6%\nINT+FP\nall     : 6%\nload    : 6%\nstore   : 6%\nmul     : 6%\nadd-sub : 6%\nfma     : 6%\ndiv/sqrt: 6%\nother   : 6%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 11.00 cycles. At this rate:\n - 0% of peak load performance is reached (0.65 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 0% of peak store performance is reached (0.13 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.26 out of 64.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\n16 data elements could be processed at once in vector registers.\nBy vectorizing your loop, you can lower the cost of an iteration from 11.00 to 0.69 cycles (16.00x speedup).",
        },
      },
      potential = {
        {
          workaround = "Try to change order in which elements are evaluated (using parentheses) in arithmetic expressions containing both ADD/SUB and MUL operations to enable your compiler to generate FMA instructions wherever possible.\nFor instance a + b*c is a valid FMA (MUL then ADD).\nHowever (a+b)* c cannot be translated into an FMA (ADD then MUL).",
          title = "FMA",
          txt = "Detected 1 FMA (fused multiply-add) operations.\nPresence of both ADD/SUB and MUL operations.",
        },
      },
    },
  common = {
    header = {
      "",
      "Warnings:\nNon-innermost loop: analyzing only self part (ignoring child loops).",
      "This loop has 4 execution paths.\n",
      "The presence of multiple execution paths is typically the main/first bottleneck.\nTry to simplify control inside loop: ideally, try to remove all conditional expressions, for example by (if applicable):\n - hoisting them (moving them outside the loop)\n - turning them into conditional moves, MIN or MAX\n\n",
    },
    nb_paths = 4,
  },
}
