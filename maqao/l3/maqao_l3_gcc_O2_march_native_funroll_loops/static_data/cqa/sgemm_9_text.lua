_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          title = "Type of elements and instruction set",
          txt = "14 SSE or AVX instructions are processing arithmetic or math operations on single precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 14 FP arithmetical operations:\n - 7: addition or subtraction\n - 7: divide\nThe binary loop is loading 84 bytes (21 single precision FP elements).\nThe binary loop is storing 28 bytes (7 single precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.12 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 65\nnb uops            : 64\nloop length        : 264\nused x86 registers : 9\nused mmx registers : 0\nused xmm registers : 16\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 19.00 cycles\nfront end            : 19.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4   | P5    | P6    | P7\n--------------------------------------------------------------------\nuops   | 11.75 | 11.75 | 10.50 | 10.50 | 7.00 | 11.75 | 11.75 | 7.00\ncycles | 11.75 | 11.75 | 10.50 | 10.50 | 7.00 | 11.75 | 11.75 | 7.00\n\nCycles executing div or sqrt instructions: 21.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 19.00\nDispatch  : 11.75\nDIV/SQRT  : 21.00\nOverall L1: 21.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 23%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 23%\nFP\nall     : 12%\nload    : 12%\nstore   : 12%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 12%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 12%\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 15%\nload    : 12%\nstore   : 12%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 12%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 12%\nother   : 23%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 21.00 cycles. At this rate:\n - 6% of peak load performance is reached (4.00 out of 64.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 4% of peak store performance is reached (1.33 out of 32.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1678\n\nInstruction                        | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | P6   | P7   | Latency | Recip. throughput\n------------------------------------------------------------------------------------------------------------------------------\nLEA 0x1(%R9),%R11                  | 1     | 0    | 0.50 | 0    | 0    | 0  | 0.50 | 0    | 0    | 1       | 0.50\nMOV %R8,%RCX                       | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nXOR %EAX,%EAX                      | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nAND $0x7,%R11D                     | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJE 1773 <baseline+0x123>           | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\nCMP $0x1,%R11                      | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJE 174e <baseline+0xfe>            | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\nCMP $0x2,%R11                      | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJE 1735 <baseline+0xe5>            | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\nCMP $0x3,%R11                      | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJE 171c <baseline+0xcc>            | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\nCMP $0x4,%R11                      | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJE 1703 <baseline+0xb3>            | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\nCMP $0x5,%R11                      | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJE 16ea <baseline+0x9a>            | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\nCMP $0x6,%R11                      | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJE 16d1 <baseline+0x81>            | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\nVMOVSS (%R8),%XMM0                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMOV $0x1,%EAX                      | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nVDIVSS (%RDX),%XMM0,%XMM1          | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 11      | 3\nVADDSS (%RSI),%XMM1,%XMM2          | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 4       | 0.50\nLEA (%R8,%RDI,1),%RCX              | 1     | 0    | 0.50 | 0    | 0    | 0  | 0.50 | 0    | 0    | 1       | 0.50\nVMOVSS %XMM2,(%RSI)                | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVMOVSS (%RCX),%XMM3                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nADD %RDI,%RCX                      | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nVDIVSS (%RDX,%RAX,4),%XMM3,%XMM4   | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 11      | 3\nVADDSS (%RSI,%RAX,4),%XMM4,%XMM5   | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 4       | 0.50\nVMOVSS %XMM5,(%RSI,%RAX,4)         | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nINC %RAX                           | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nVMOVSS (%RCX),%XMM6                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nADD %RDI,%RCX                      | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nVDIVSS (%RDX,%RAX,4),%XMM6,%XMM7   | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 11      | 3\nVADDSS (%RSI,%RAX,4),%XMM7,%XMM8   | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 4       | 0.50\nVMOVSS %XMM8,(%RSI,%RAX,4)         | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nINC %RAX                           | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nVMOVSS (%RCX),%XMM9                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nADD %RDI,%RCX                      | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nVDIVSS (%RDX,%RAX,4),%XMM9,%XMM10  | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 11      | 3\nVADDSS (%RSI,%RAX,4),%XMM10,%XMM11 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 4       | 0.50\nVMOVSS %XMM11,(%RSI,%RAX,4)        | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nINC %RAX                           | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nVMOVSS (%RCX),%XMM12               | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nADD %RDI,%RCX                      | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nVDIVSS (%RDX,%RAX,4),%XMM12,%XMM13 | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 11      | 3\nVADDSS (%RSI,%RAX,4),%XMM13,%XMM14 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 4       | 0.50\nVMOVSS %XMM14,(%RSI,%RAX,4)        | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nINC %RAX                           | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nVMOVSS (%RCX),%XMM15               | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nADD %RDI,%RCX                      | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nVDIVSS (%RDX,%RAX,4),%XMM15,%XMM0  | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 11      | 3\nVADDSS (%RSI,%RAX,4),%XMM0,%XMM1   | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 4       | 0.50\nVMOVSS %XMM1,(%RSI,%RAX,4)         | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nINC %RAX                           | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nVMOVSS (%RCX),%XMM2                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMOV %RAX,%R11                      | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nVDIVSS (%RDX,%RAX,4),%XMM2,%XMM3   | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 11      | 3\nVADDSS (%RSI,%RAX,4),%XMM3,%XMM4   | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 4       | 0.50\nADD %RDI,%RCX                      | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nVMOVSS %XMM4,(%RSI,%RAX,4)         | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nINC %RAX                           | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nCMP %R11,%R9                       | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJE 1849 <baseline+0x1f9>           | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\nADD $0x4,%R8                       | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nCMP %R8,%R10                       | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJNE 1678 <baseline+0x28>           | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\n",
        },
      },
      header = {
        "2% of peak computational performance is used (0.67 out of 32.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one:\n  * recompile with ftree-vectorize (included in O3) to enable loop vectorization and with fassociative-math (included in Ofast or ffast-math) to extend vectorization to FP reductions.\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) => for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 15% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 21.00 to 5.25 cycles (4.00x speedup).",
        },
        {
          workaround = " - Reduce the number of division or square root instructions:\n  * If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast\n - If you accept to loose numerical precision up to 2 ulp, you can speedup your code by passing the following options to your compiler: (ffast-math or Ofast) and mrecip\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 21.00 to 19.00 cycles (1.11x speedup).\n",
        },
      },
      potential = {
        {
          title = "Expensive FP math instructions/calls",
          txt = "Detected performance impact from expensive FP math instructions/calls.\nBy removing/reexpressing them, you can lower the cost of an iteration from 21.00 to 17.50 cycles (1.20x speedup).",
        },
      },
    },
  },
  AVG = {
      hint = {
        {
          title = "Type of elements and instruction set",
          txt = "14 SSE or AVX instructions are processing arithmetic or math operations on single precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 14 FP arithmetical operations:\n - 7: addition or subtraction\n - 7: divide\nThe binary loop is loading 84 bytes (21 single precision FP elements).\nThe binary loop is storing 28 bytes (7 single precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.12 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 65\nnb uops            : 64\nloop length        : 264\nused x86 registers : 9\nused mmx registers : 0\nused xmm registers : 16\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 19.00 cycles\nfront end            : 19.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4   | P5    | P6    | P7\n--------------------------------------------------------------------\nuops   | 11.75 | 11.75 | 10.50 | 10.50 | 7.00 | 11.75 | 11.75 | 7.00\ncycles | 11.75 | 11.75 | 10.50 | 10.50 | 7.00 | 11.75 | 11.75 | 7.00\n\nCycles executing div or sqrt instructions: 21.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 19.00\nDispatch  : 11.75\nDIV/SQRT  : 21.00\nOverall L1: 21.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 23%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 23%\nFP\nall     : 12%\nload    : 12%\nstore   : 12%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 12%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 12%\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 15%\nload    : 12%\nstore   : 12%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 12%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 12%\nother   : 23%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 21.00 cycles. At this rate:\n - 6% of peak load performance is reached (4.00 out of 64.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 4% of peak store performance is reached (1.33 out of 32.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1678\n\nInstruction                        | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | P6   | P7   | Latency | Recip. throughput\n------------------------------------------------------------------------------------------------------------------------------\nLEA 0x1(%R9),%R11                  | 1     | 0    | 0.50 | 0    | 0    | 0  | 0.50 | 0    | 0    | 1       | 0.50\nMOV %R8,%RCX                       | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nXOR %EAX,%EAX                      | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nAND $0x7,%R11D                     | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJE 1773 <baseline+0x123>           | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\nCMP $0x1,%R11                      | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJE 174e <baseline+0xfe>            | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\nCMP $0x2,%R11                      | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJE 1735 <baseline+0xe5>            | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\nCMP $0x3,%R11                      | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJE 171c <baseline+0xcc>            | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\nCMP $0x4,%R11                      | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJE 1703 <baseline+0xb3>            | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\nCMP $0x5,%R11                      | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJE 16ea <baseline+0x9a>            | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\nCMP $0x6,%R11                      | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJE 16d1 <baseline+0x81>            | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\nVMOVSS (%R8),%XMM0                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMOV $0x1,%EAX                      | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nVDIVSS (%RDX),%XMM0,%XMM1          | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 11      | 3\nVADDSS (%RSI),%XMM1,%XMM2          | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 4       | 0.50\nLEA (%R8,%RDI,1),%RCX              | 1     | 0    | 0.50 | 0    | 0    | 0  | 0.50 | 0    | 0    | 1       | 0.50\nVMOVSS %XMM2,(%RSI)                | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVMOVSS (%RCX),%XMM3                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nADD %RDI,%RCX                      | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nVDIVSS (%RDX,%RAX,4),%XMM3,%XMM4   | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 11      | 3\nVADDSS (%RSI,%RAX,4),%XMM4,%XMM5   | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 4       | 0.50\nVMOVSS %XMM5,(%RSI,%RAX,4)         | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nINC %RAX                           | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nVMOVSS (%RCX),%XMM6                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nADD %RDI,%RCX                      | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nVDIVSS (%RDX,%RAX,4),%XMM6,%XMM7   | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 11      | 3\nVADDSS (%RSI,%RAX,4),%XMM7,%XMM8   | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 4       | 0.50\nVMOVSS %XMM8,(%RSI,%RAX,4)         | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nINC %RAX                           | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nVMOVSS (%RCX),%XMM9                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nADD %RDI,%RCX                      | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nVDIVSS (%RDX,%RAX,4),%XMM9,%XMM10  | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 11      | 3\nVADDSS (%RSI,%RAX,4),%XMM10,%XMM11 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 4       | 0.50\nVMOVSS %XMM11,(%RSI,%RAX,4)        | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nINC %RAX                           | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nVMOVSS (%RCX),%XMM12               | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nADD %RDI,%RCX                      | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nVDIVSS (%RDX,%RAX,4),%XMM12,%XMM13 | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 11      | 3\nVADDSS (%RSI,%RAX,4),%XMM13,%XMM14 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 4       | 0.50\nVMOVSS %XMM14,(%RSI,%RAX,4)        | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nINC %RAX                           | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nVMOVSS (%RCX),%XMM15               | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nADD %RDI,%RCX                      | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nVDIVSS (%RDX,%RAX,4),%XMM15,%XMM0  | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 11      | 3\nVADDSS (%RSI,%RAX,4),%XMM0,%XMM1   | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 4       | 0.50\nVMOVSS %XMM1,(%RSI,%RAX,4)         | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nINC %RAX                           | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nVMOVSS (%RCX),%XMM2                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMOV %RAX,%R11                      | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nVDIVSS (%RDX,%RAX,4),%XMM2,%XMM3   | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 11      | 3\nVADDSS (%RSI,%RAX,4),%XMM3,%XMM4   | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 4       | 0.50\nADD %RDI,%RCX                      | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nVMOVSS %XMM4,(%RSI,%RAX,4)         | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nINC %RAX                           | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nCMP %R11,%R9                       | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJE 1849 <baseline+0x1f9>           | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\nADD $0x4,%R8                       | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nCMP %R8,%R10                       | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJNE 1678 <baseline+0x28>           | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\n",
        },
      },
      header = {
        "2% of peak computational performance is used (0.67 out of 32.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one:\n  * recompile with ftree-vectorize (included in O3) to enable loop vectorization and with fassociative-math (included in Ofast or ffast-math) to extend vectorization to FP reductions.\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) => for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 15% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 21.00 to 5.25 cycles (4.00x speedup).",
        },
        {
          workaround = " - Reduce the number of division or square root instructions:\n  * If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast\n - If you accept to loose numerical precision up to 2 ulp, you can speedup your code by passing the following options to your compiler: (ffast-math or Ofast) and mrecip\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 21.00 to 19.00 cycles (1.11x speedup).\n",
        },
      },
      potential = {
        {
          title = "Expensive FP math instructions/calls",
          txt = "Detected performance impact from expensive FP math instructions/calls.\nBy removing/reexpressing them, you can lower the cost of an iteration from 21.00 to 17.50 cycles (1.20x speedup).",
        },
      },
    },
  common = {
    header = {
      "The loop is defined in /home/lucas/AOA/AOA_Etude_de_cas/kernel.c:50-55.\n",
      "Warnings:\n - Non-innermost loop: analyzing only self part (ignoring child loops).\n - Ignoring paths for analysis\n - Too many paths. Rerun with max-paths=15\n - RecMII not computed since number of paths is unknown or > max_paths\n - Streams not analyzed since number of paths is unknown or > max_paths\n",
      "Try to simplify control and/or increase the maximum number of paths per function/loop through the 'max-paths-nb' option.\n",
      "This loop has 15 execution paths.\n",
      "The presence of multiple execution paths is typically the main/first bottleneck.\nTry to simplify control inside loop: ideally, try to remove all conditional expressions, for example by (if applicable):\n - hoisting them (moving them outside the loop)\n - turning them into conditional moves, MIN or MAX\n\n",
      "Ex: if (x<0) x=0 => x = (x<0 ? 0 : x) (or MAX(0,x) after defining the corresponding macro)\n",
    },
    nb_paths = 15,
  },
}
