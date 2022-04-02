_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant unknown stride: 4 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          workaround = " - Recompile with march=knm.\nCQA target is Knights Mill but compiler target is \n - Use vector aligned instructions:\n  1) align your arrays on 64 bytes boundaries: replace { void *p = malloc (size); } with { void *p; posix_memalign (&p, 64, size); }.\n  2) inform your compiler that your arrays are vector aligned: if array 'foo' is 64 bytes-aligned, define a pointer 'p_foo' as __builtin_assume_aligned (foo, 64) and use it instead of 'foo' in the loop.\n",
          details = " - MOVUPS: 3 occurrences\n",
          title = "Vector unaligned load/store instructions",
          txt = "Detected 3 suboptimal vector unaligned load/store instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "2 SSE or AVX instructions are processing arithmetic or math operations on single precision FP elements in vector mode (four at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 8 FP arithmetical operations:\n - 4: addition or subtraction\n - 4: divide\nThe binary loop is loading 48 bytes (12 single precision FP elements).\nThe binary loop is storing 16 bytes (4 single precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.12 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 17\nloop length        : 64\nused x86 registers : 8\nused mmx registers : 0\nused xmm registers : 6\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 4.00 cycles\ninstruction queue    : 8.50 cycles\ndecoding             : 8.50 cycles\nmicro-operation queue: 9.00 cycles\nfront end            : 9.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1   | P2   | P3   | P4   | P5   | P6\n--------------------------------------------------------\nuops   | 20.00 | 2.00 | 3.50 | 3.50 | 2.00 | 2.00 | 1.00\ncycles | 20.00 | 2.00 | 3.50 | 3.50 | 2.00 | 2.00 | 1.00\n\nCycles executing div or sqrt instructions: 17.00-18.00\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 9.00\nDispatch  : 20.00\nDIV/SQRT  : 17.00-18.00\nData deps.: 1.00\nOverall L1: 20.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 69%\nload    : 33%\nstore   : 100%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 100%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 100%\nother   : 100%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 16%\nload    : 12%\nstore   : 25%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 25%\nother   : 15%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 20.00 cycles. At this rate:\n - 1% of peak load performance is reached (2.40 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 1% of peak store performance is reached (0.80 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1790\n\nInstruction                | Nb FU | P0   | P1   | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n---------------------------------------------------------------------------------------------------------------\nMOVSS (%RCX,%R8,1),%XMM0   | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nMOVSS (%RCX),%XMM3         | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nMOVSS (%RCX,%R11,1),%XMM1  | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nMOVSS (%RCX,%R8,2),%XMM2   | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nADD %RDI,%RCX              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nUNPCKLPS %XMM0,%XMM3       | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 4       | 2\nMOVUPS (%RDX,%RAX,1),%XMM4 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nMOVUPS (%RSI,%RAX,1),%XMM5 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nUNPCKLPS %XMM1,%XMM2       | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 4       | 2\nMOVAPS %XMM3,%XMM0         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nMOVLHPS %XMM2,%XMM0        | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nDIVPS %XMM4,%XMM0          | 17    | 17   | 0    | 0    | 0    | 0    | 0    | 0  | 32-70   | 17-18\nADDPS %XMM5,%XMM0          | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nMOVUPS %XMM0,(%RSI,%RAX,1) | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nADD $0x10,%RAX             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCMP %R10,%RAX              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJNE 1790 <baseline+0x140>  | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.40 out of 64.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one:\n  * recompile with fassociative-math (included in Ofast or ffast-math) to extend loop vectorization to FP reductions.\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) => for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "69% of SSE/AVX instructions are used in vector version (process two or more data elements in vector registers):\n - 33% of SSE/AVX loads are used in vector version.\nSince your execution units are vector units, only a fully vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is partially vectorized.\nOnly 16% of vector register length is used (average across all SSE/AVX instructions).\nBy fully vectorizing your loop, you can lower the cost of an iteration from 20.00 to 4.56 cycles (4.38x speedup).",
        },
        {
          workaround = " -  - Reduce the number of division or square root instructions:\n  * If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast\n - If you accept to loose numerical precision up to 2 ulp, you can speedup your code by passing the following options to your compiler: (ffast-math or Ofast) and mrecip\n - Reduce the number of FP add instructions\n - Reduce arithmetical operations on array elements\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by:\n - execution of divide and square root operations (the divide/square root unit is a bottleneck)\n - execution of FP add operations (the FP add unit is a bottleneck)\n - execution of INT/FP operations in vector registers (the VPU is a bottleneck)\n",
        },
      },
      potential = {
        {
          title = "Expensive FP math instructions/calls",
          txt = "Detected performance impact from expensive FP math instructions/calls.\nBy removing/reexpressing them, you can lower the cost of an iteration from 20.00 to 9.00 cycles (2.22x speedup).",
        },
        {
          details = " - MOVLHPS: 1 occurrences\n - UNPCKLPS: 2 occurrences\n",
          title = "Special instructions executing on a single port",
          txt = "1.11x slowdown from special instructions executing on a single port.\n",
        },
      },
    },
  },
  AVG = {
      hint = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant unknown stride: 4 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          workaround = " - Recompile with march=knm.\nCQA target is Knights Mill but compiler target is \n - Use vector aligned instructions:\n  1) align your arrays on 64 bytes boundaries: replace { void *p = malloc (size); } with { void *p; posix_memalign (&p, 64, size); }.\n  2) inform your compiler that your arrays are vector aligned: if array 'foo' is 64 bytes-aligned, define a pointer 'p_foo' as __builtin_assume_aligned (foo, 64) and use it instead of 'foo' in the loop.\n",
          details = " - MOVUPS: 3 occurrences\n",
          title = "Vector unaligned load/store instructions",
          txt = "Detected 3 suboptimal vector unaligned load/store instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "2 SSE or AVX instructions are processing arithmetic or math operations on single precision FP elements in vector mode (four at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 8 FP arithmetical operations:\n - 4: addition or subtraction\n - 4: divide\nThe binary loop is loading 48 bytes (12 single precision FP elements).\nThe binary loop is storing 16 bytes (4 single precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.12 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 17\nloop length        : 64\nused x86 registers : 8\nused mmx registers : 0\nused xmm registers : 6\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 4.00 cycles\ninstruction queue    : 8.50 cycles\ndecoding             : 8.50 cycles\nmicro-operation queue: 9.00 cycles\nfront end            : 9.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1   | P2   | P3   | P4   | P5   | P6\n--------------------------------------------------------\nuops   | 20.00 | 2.00 | 3.50 | 3.50 | 2.00 | 2.00 | 1.00\ncycles | 20.00 | 2.00 | 3.50 | 3.50 | 2.00 | 2.00 | 1.00\n\nCycles executing div or sqrt instructions: 17.00-18.00\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 9.00\nDispatch  : 20.00\nDIV/SQRT  : 17.00-18.00\nData deps.: 1.00\nOverall L1: 20.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 69%\nload    : 33%\nstore   : 100%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 100%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 100%\nother   : 100%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 16%\nload    : 12%\nstore   : 25%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 25%\nother   : 15%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 20.00 cycles. At this rate:\n - 1% of peak load performance is reached (2.40 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 1% of peak store performance is reached (0.80 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1790\n\nInstruction                | Nb FU | P0   | P1   | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n---------------------------------------------------------------------------------------------------------------\nMOVSS (%RCX,%R8,1),%XMM0   | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nMOVSS (%RCX),%XMM3         | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nMOVSS (%RCX,%R11,1),%XMM1  | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nMOVSS (%RCX,%R8,2),%XMM2   | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nADD %RDI,%RCX              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nUNPCKLPS %XMM0,%XMM3       | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 4       | 2\nMOVUPS (%RDX,%RAX,1),%XMM4 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nMOVUPS (%RSI,%RAX,1),%XMM5 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nUNPCKLPS %XMM1,%XMM2       | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 4       | 2\nMOVAPS %XMM3,%XMM0         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nMOVLHPS %XMM2,%XMM0        | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nDIVPS %XMM4,%XMM0          | 17    | 17   | 0    | 0    | 0    | 0    | 0    | 0  | 32-70   | 17-18\nADDPS %XMM5,%XMM0          | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nMOVUPS %XMM0,(%RSI,%RAX,1) | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nADD $0x10,%RAX             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCMP %R10,%RAX              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJNE 1790 <baseline+0x140>  | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.40 out of 64.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one:\n  * recompile with fassociative-math (included in Ofast or ffast-math) to extend loop vectorization to FP reductions.\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) => for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "69% of SSE/AVX instructions are used in vector version (process two or more data elements in vector registers):\n - 33% of SSE/AVX loads are used in vector version.\nSince your execution units are vector units, only a fully vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is partially vectorized.\nOnly 16% of vector register length is used (average across all SSE/AVX instructions).\nBy fully vectorizing your loop, you can lower the cost of an iteration from 20.00 to 4.56 cycles (4.38x speedup).",
        },
        {
          workaround = " -  - Reduce the number of division or square root instructions:\n  * If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast\n - If you accept to loose numerical precision up to 2 ulp, you can speedup your code by passing the following options to your compiler: (ffast-math or Ofast) and mrecip\n - Reduce the number of FP add instructions\n - Reduce arithmetical operations on array elements\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by:\n - execution of divide and square root operations (the divide/square root unit is a bottleneck)\n - execution of FP add operations (the FP add unit is a bottleneck)\n - execution of INT/FP operations in vector registers (the VPU is a bottleneck)\n",
        },
      },
      potential = {
        {
          title = "Expensive FP math instructions/calls",
          txt = "Detected performance impact from expensive FP math instructions/calls.\nBy removing/reexpressing them, you can lower the cost of an iteration from 20.00 to 9.00 cycles (2.22x speedup).",
        },
        {
          details = " - MOVLHPS: 1 occurrences\n - UNPCKLPS: 2 occurrences\n",
          title = "Special instructions executing on a single port",
          txt = "1.11x slowdown from special instructions executing on a single port.\n",
        },
      },
    },
  common = {
    header = {
      "The loop is defined in /users/user4427/AOA_Etude_de_cas/kernel.c:54-55.\n",
      "It is main loop of related source loop which is unrolled by 4 (including vectorization).",
    },
    nb_paths = 1,
  },
}
