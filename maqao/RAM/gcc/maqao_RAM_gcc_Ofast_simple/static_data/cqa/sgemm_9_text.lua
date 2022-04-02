_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          title = "Type of elements and instruction set",
          txt = "6 SSE or AVX instructions are processing arithmetic or math operations on single precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 6 FP arithmetical operations:\n - 3: addition or subtraction\n - 3: divide\nThe binary loop is loading 148 bytes (37 single precision FP elements).\nThe binary loop is storing 12 bytes (3 single precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.04 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 53\nloop length        : 208\nused x86 registers : 9\nused mmx registers : 0\nused xmm registers : 1\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 16\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 13.00 cycles\ninstruction queue    : 26.50 cycles\ndecoding             : 26.50 cycles\nmicro-operation queue: 27.00 cycles\nfront end            : 27.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2    | P3    | P4    | P5    | P6\n-----------------------------------------------------------\nuops   | 9.00 | 3.00 | 16.00 | 12.00 | 16.50 | 16.50 | 3.00\ncycles | 9.00 | 3.00 | 16.00 | 12.00 | 16.50 | 16.50 | 3.00\n\nCycles executing div or sqrt instructions: 36.00-51.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 27.00\nDispatch  : 16.50\nDIV/SQRT  : 36.00-51.00\nOverall L1: 36.00-51.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : 0%\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 0%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 9%\nload   : 8%\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 12%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 8%\nFP\nall     : 6%\nload    : 6%\nstore   : 6%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 6%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 6%\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 7%\nload    : 7%\nstore   : 6%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 7%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 6%\nother   : 8%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 51.00 cycles. At this rate:\n - 2% of peak load performance is reached (2.90 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 0% of peak store performance is reached (0.24 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1750\n\nInstruction               | Nb FU | P0   | P1   | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n--------------------------------------------------------------------------------------------------------------\nCMPQ $0x1e,-0x38(%RBP)    | 1     | 0    | 0    | 1    | 0    | 0.50 | 0.50 | 0  | 1       | 1\nSETA %CL                  | 1     | 0    | 0    | 0    | 0    | 1    | 1    | 0  | 2       | 1\nCMPL $0x2,-0x3c(%RBP)     | 1     | 0    | 0    | 1    | 0    | 0.50 | 0.50 | 0  | 1       | 1\nSETA %AL                  | 1     | 0    | 0    | 0    | 0    | 1    | 1    | 0  | 2       | 1\nTEST %AL,%CL              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJE 1878 <baseline+0x228>  | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOV -0x50(%RBP),%RAX      | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV %R9,%RCX              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nADD %R9,%RAX              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCMP %RAX,%RSI             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nSETA %R14B                | 1     | 0    | 0    | 0    | 0    | 1    | 1    | 0  | 2       | 1\nCMP %R9,-0x48(%RBP)       | 1     | 0    | 0    | 1    | 0    | 0.50 | 0.50 | 0  | 1       | 1\nSETB %R13B                | 1     | 0    | 0    | 0    | 0    | 1    | 1    | 0  | 2       | 1\nXOR %EAX,%EAX\nOR %R13B,%R14B            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJE 1878 <baseline+0x228>  | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nNOPL (%RAX,%RAX,1)        | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nCMP -0x40(%RBP),%EBX      | 1     | 0    | 0    | 1    | 0    | 0.50 | 0.50 | 0  | 1       | 1\nJE 1857 <baseline+0x207>  | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOV -0x70(%RBP),%RCX      | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV %R12D,%EAX            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nMOVSS (%RCX,%RAX,4),%XMM0 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nMOV -0x58(%RBP),%RCX      | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nDIVSS (%RCX),%XMM0        | 4     | 3    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 25-27   | 12-17\nMOV -0x60(%RBP),%RCX      | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nADDSS (%RCX),%XMM0        | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nMOVSS %XMM0,(%RCX)        | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nCMP -0x64(%RBP),%EBX      | 1     | 0    | 0    | 1    | 0    | 0.50 | 0.50 | 0  | 1       | 1\nJBE 1857 <baseline+0x207> | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOV -0x78(%RBP),%RCX      | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOVSS (%RCX,%RAX,4),%XMM0 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nMOV -0x80(%RBP),%RCX      | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nDIVSS (%RCX),%XMM0        | 4     | 3    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 25-27   | 12-17\nMOV -0x88(%RBP),%RCX      | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nADDSS (%RCX),%XMM0        | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nMOVSS %XMM0,(%RCX)        | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nCMP -0x68(%RBP),%EBX      | 1     | 0    | 0    | 1    | 0    | 0.50 | 0.50 | 0  | 1       | 1\nJBE 1857 <baseline+0x207> | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOV -0x90(%RBP),%RCX      | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOVSS (%RCX,%RAX,4),%XMM0 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nMOV -0x98(%RBP),%RAX      | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nDIVSS (%RAX),%XMM0        | 4     | 3    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 25-27   | 12-17\nMOV -0xa0(%RBP),%RAX      | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nADDSS (%RAX),%XMM0        | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nMOVSS %XMM0,(%RAX)        | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nADD $0x1,%R12D            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nADD $0x4,%R9              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCMP %R12D,%EBX            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJNE 1750 <baseline+0x100> | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOV %R9,%RCX              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nXOR %EAX,%EAX\nNOPL (%RAX)               | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nJMP 1857 <baseline+0x207> | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 2\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.12 out of 64.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) => for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 7% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 51.00 to 3.19 cycles (16.00x speedup).",
        },
        {
          workaround = " - Reduce the number of division or square root instructions:\n  * If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast\n - If you accept to loose numerical precision up to 2 ulp, you can speedup your code by passing the following options to your compiler: (ffast-math or Ofast) and mrecip\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 51.00 to 27.00 cycles (1.89x speedup).\n",
        },
      },
      potential = {
        {
          title = "Expensive FP math instructions/calls",
          txt = "Detected performance impact from expensive FP math instructions/calls.\nBy removing/reexpressing them, you can lower the cost of an iteration from 51.00 to 27.00 cycles (1.89x speedup).",
        },
      },
    },
  },
  AVG = {
      hint = {
        {
          title = "Type of elements and instruction set",
          txt = "6 SSE or AVX instructions are processing arithmetic or math operations on single precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 6 FP arithmetical operations:\n - 3: addition or subtraction\n - 3: divide\nThe binary loop is loading 148 bytes (37 single precision FP elements).\nThe binary loop is storing 12 bytes (3 single precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.04 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 53\nloop length        : 208\nused x86 registers : 9\nused mmx registers : 0\nused xmm registers : 1\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 16\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 13.00 cycles\ninstruction queue    : 26.50 cycles\ndecoding             : 26.50 cycles\nmicro-operation queue: 27.00 cycles\nfront end            : 27.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2    | P3    | P4    | P5    | P6\n-----------------------------------------------------------\nuops   | 9.00 | 3.00 | 16.00 | 12.00 | 16.50 | 16.50 | 3.00\ncycles | 9.00 | 3.00 | 16.00 | 12.00 | 16.50 | 16.50 | 3.00\n\nCycles executing div or sqrt instructions: 36.00-51.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 27.00\nDispatch  : 16.50\nDIV/SQRT  : 36.00-51.00\nOverall L1: 36.00-51.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : 0%\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 0%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 9%\nload   : 8%\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 12%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 8%\nFP\nall     : 6%\nload    : 6%\nstore   : 6%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 6%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 6%\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 7%\nload    : 7%\nstore   : 6%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 7%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 6%\nother   : 8%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 51.00 cycles. At this rate:\n - 2% of peak load performance is reached (2.90 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 0% of peak store performance is reached (0.24 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1750\n\nInstruction               | Nb FU | P0   | P1   | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n--------------------------------------------------------------------------------------------------------------\nCMPQ $0x1e,-0x38(%RBP)    | 1     | 0    | 0    | 1    | 0    | 0.50 | 0.50 | 0  | 1       | 1\nSETA %CL                  | 1     | 0    | 0    | 0    | 0    | 1    | 1    | 0  | 2       | 1\nCMPL $0x2,-0x3c(%RBP)     | 1     | 0    | 0    | 1    | 0    | 0.50 | 0.50 | 0  | 1       | 1\nSETA %AL                  | 1     | 0    | 0    | 0    | 0    | 1    | 1    | 0  | 2       | 1\nTEST %AL,%CL              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJE 1878 <baseline+0x228>  | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOV -0x50(%RBP),%RAX      | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV %R9,%RCX              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nADD %R9,%RAX              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCMP %RAX,%RSI             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nSETA %R14B                | 1     | 0    | 0    | 0    | 0    | 1    | 1    | 0  | 2       | 1\nCMP %R9,-0x48(%RBP)       | 1     | 0    | 0    | 1    | 0    | 0.50 | 0.50 | 0  | 1       | 1\nSETB %R13B                | 1     | 0    | 0    | 0    | 0    | 1    | 1    | 0  | 2       | 1\nXOR %EAX,%EAX\nOR %R13B,%R14B            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJE 1878 <baseline+0x228>  | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nNOPL (%RAX,%RAX,1)        | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nCMP -0x40(%RBP),%EBX      | 1     | 0    | 0    | 1    | 0    | 0.50 | 0.50 | 0  | 1       | 1\nJE 1857 <baseline+0x207>  | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOV -0x70(%RBP),%RCX      | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV %R12D,%EAX            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nMOVSS (%RCX,%RAX,4),%XMM0 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nMOV -0x58(%RBP),%RCX      | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nDIVSS (%RCX),%XMM0        | 4     | 3    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 25-27   | 12-17\nMOV -0x60(%RBP),%RCX      | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nADDSS (%RCX),%XMM0        | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nMOVSS %XMM0,(%RCX)        | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nCMP -0x64(%RBP),%EBX      | 1     | 0    | 0    | 1    | 0    | 0.50 | 0.50 | 0  | 1       | 1\nJBE 1857 <baseline+0x207> | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOV -0x78(%RBP),%RCX      | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOVSS (%RCX,%RAX,4),%XMM0 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nMOV -0x80(%RBP),%RCX      | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nDIVSS (%RCX),%XMM0        | 4     | 3    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 25-27   | 12-17\nMOV -0x88(%RBP),%RCX      | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nADDSS (%RCX),%XMM0        | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nMOVSS %XMM0,(%RCX)        | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nCMP -0x68(%RBP),%EBX      | 1     | 0    | 0    | 1    | 0    | 0.50 | 0.50 | 0  | 1       | 1\nJBE 1857 <baseline+0x207> | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOV -0x90(%RBP),%RCX      | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOVSS (%RCX,%RAX,4),%XMM0 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nMOV -0x98(%RBP),%RAX      | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nDIVSS (%RAX),%XMM0        | 4     | 3    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 25-27   | 12-17\nMOV -0xa0(%RBP),%RAX      | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nADDSS (%RAX),%XMM0        | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nMOVSS %XMM0,(%RAX)        | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nADD $0x1,%R12D            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nADD $0x4,%R9              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCMP %R12D,%EBX            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJNE 1750 <baseline+0x100> | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOV %R9,%RCX              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nXOR %EAX,%EAX\nNOPL (%RAX)               | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nJMP 1857 <baseline+0x207> | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 2\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.12 out of 64.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) => for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 7% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 51.00 to 3.19 cycles (16.00x speedup).",
        },
        {
          workaround = " - Reduce the number of division or square root instructions:\n  * If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast\n - If you accept to loose numerical precision up to 2 ulp, you can speedup your code by passing the following options to your compiler: (ffast-math or Ofast) and mrecip\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 51.00 to 27.00 cycles (1.89x speedup).\n",
        },
      },
      potential = {
        {
          title = "Expensive FP math instructions/calls",
          txt = "Detected performance impact from expensive FP math instructions/calls.\nBy removing/reexpressing them, you can lower the cost of an iteration from 51.00 to 27.00 cycles (1.89x speedup).",
        },
      },
    },
  common = {
    header = {
      "The loop is defined in /users/user4442/AOA_Etude_de_cas/kernel.c:50-55.\n",
      "Warnings:\n - Non-innermost loop: analyzing only self part (ignoring child loops).\n - Ignoring paths for analysis\n - Too many paths. Rerun with max-paths=6\n - RecMII not computed since number of paths is unknown or > max_paths\n - Streams not analyzed since number of paths is unknown or > max_paths\n",
      "Try to simplify control and/or increase the maximum number of paths per function/loop through the 'max-paths-nb' option.\n",
      "This loop has 6 execution paths.\n",
      "The presence of multiple execution paths is typically the main/first bottleneck.\nTry to simplify control inside loop: ideally, try to remove all conditional expressions, for example by (if applicable):\n - hoisting them (moving them outside the loop)\n - turning them into conditional moves, MIN or MAX\n\n",
      "Ex: if (x<0) x=0 => x = (x<0 ? 0 : x) (or MAX(0,x) after defining the corresponding macro)\n",
    },
    nb_paths = 6,
  },
}
