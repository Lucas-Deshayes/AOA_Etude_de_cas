_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant unknown stride: 18 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          workaround = "Use vector aligned instructions:\n 1) align your arrays on 64 bytes boundaries: replace { void *p = malloc (size); } with { void *p; posix_memalign (&p, 64, size); }.\n 2) inform your compiler that your arrays are vector aligned: if array 'foo' is 64 bytes-aligned, define a pointer 'p_foo' as __builtin_assume_aligned (foo, 64) and use it instead of 'foo' in the loop.\n",
          details = " - VINSERTF128: 2 occurrences\n - VINSERTF64X4: 1 occurrences\n",
          title = "Vector unaligned load/store instructions",
          txt = "Detected 3 suboptimal vector unaligned load/store instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "2 AVX-512 instructions are processing arithmetic or math operations on single precision FP elements in vector mode (sixteen at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 32 FP arithmetical operations:\n - 16: addition or subtraction\n - 16: divide\nThe binary loop is loading 192 bytes (48 single precision FP elements).\nThe binary loop is storing 64 bytes (16 single precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.12 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 32\nloop length        : 182\nused x86 registers : 11\nused mmx registers : 0\nused xmm registers : 16\nused ymm registers : 4\nused zmm registers : 4\nnb stack references: 0\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 12.00 cycles\ninstruction queue    : 16.00 cycles\ndecoding             : 16.00 cycles\nmicro-operation queue: 16.00 cycles\nfront end            : 16.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1   | P2   | P3   | P4   | P5   | P6\n--------------------------------------------------------\nuops   | 32.00 | 1.00 | 9.50 | 9.50 | 3.00 | 3.00 | 1.00\ncycles | 32.00 | 1.00 | 9.50 | 9.50 | 3.00 | 3.00 | 1.00\n\nCycles executing div or sqrt instructions: 17.00-18.00\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 16.00\nDispatch  : 32.00\nDIV/SQRT  : 17.00-18.00\nData deps.: 1.00\nOverall L1: 32.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 38%\nload    : 11%\nstore   : 100%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 100%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 100%\nother   : 46%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 21%\nload    : 16%\nstore   : 100%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 100%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 100%\nother   : 13%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 32.00 cycles. At this rate:\n - 4% of peak load performance is reached (6.00 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 3% of peak store performance is reached (2.00 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1a00\n\nInstruction                                 | Nb FU | P0   | P1   | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n--------------------------------------------------------------------------------------------------------------------------------\nVMOVSS (%R8,%R10,1),%XMM13                  | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nLEA 0x40(%R9),%R9                           | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVMOVSS (%R8,%RDI,4),%XMM15                  | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVINSERTPS $0x10,(%R8,%R12,1),%XMM13,%XMM14  | 2     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 7\nVMOVSS (%R8,%RDI,2),%XMM0                   | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVINSERTPS $0x10,(%R8,%R11,1),%XMM15,%XMM4   | 2     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 7\nVMOVSS (%R8),%XMM1                          | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVINSERTPS $0x10,(%R8,%RBX,1),%XMM0,%XMM5    | 2     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 7\nVMOVSS (%RCX,%R10,1),%XMM3                  | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVINSERTPS $0x10,(%R8,%RDI,1),%XMM1,%XMM2    | 2     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 7\nVMOVSS (%RCX,%RDI,4),%XMM7                  | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVINSERTPS $0x10,(%RCX,%R12,1),%XMM3,%XMM6   | 2     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 7\nVMOVSS (%RCX,%RDI,2),%XMM9                  | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVINSERTPS $0x10,(%RCX,%R11,1),%XMM7,%XMM8   | 2     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 7\nVMOVSS (%RCX),%XMM11                        | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVINSERTPS $0x10,(%RCX,%RBX,1),%XMM9,%XMM10  | 2     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 7\nVINSERTPS $0x10,(%RCX,%RDI,1),%XMM11,%XMM12 | 2     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 7\nVMOVLHPS %XMM5,%XMM2,%XMM5                  | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVMOVLHPS %XMM14,%XMM4,%XMM14                | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVMOVLHPS %XMM10,%XMM12,%XMM13               | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVMOVLHPS %XMM6,%XMM8,%XMM15                 | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVINSERTF128 $0x1,%XMM14,%YMM5,%YMM0         | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVINSERTF128 $0x1,%XMM15,%YMM13,%YMM4        | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nLEA (%RCX,%R15,1),%RCX                      | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVINSERTF64X4 $0x1,%YMM0,%ZMM4,%ZMM1         | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nLEA 0x40(%R14),%R14                         | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVDIVPS -0x40(%R9),%ZMM1,%ZMM2               | 18    | 17   | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 32-70   | 17-18\nCMP %RAX,%R9                                | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (%R8,%R15,1),%R8                        | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVADDPS -0x40(%R14),%ZMM2,%ZMM3              | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVMOVAPS %ZMM3,-0x40(%R14)                   | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nJNE 1a00 <baseline+0x3b0>                   | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\n",
        },
      },
      header = {
        "1% of peak computational performance is used (1.00 out of 64.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one:\n  * recompile with fassociative-math (included in Ofast or ffast-math) to extend loop vectorization to FP reductions.\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) => for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "38% of SSE/AVX instructions are used in vector version (process two or more data elements in vector registers):\n - 11% of SSE/AVX loads are used in vector version.\n - 46% of SSE/AVX instructions that are not load, store, addition, subtraction nor multiply instructions are used in vector version.\nSince your execution units are vector units, only a fully vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is poorly vectorized.\nOnly 21% of vector register length is used (average across all SSE/AVX instructions).\nBy fully vectorizing your loop, you can lower the cost of an iteration from 32.00 to 22.50 cycles (1.42x speedup).",
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
          txt = "Detected performance impact from expensive FP math instructions/calls.\nBy removing/reexpressing them, you can lower the cost of an iteration from 32.00 to 16.00 cycles (2.00x speedup).",
        },
        {
          details = " - VINSERTF128: 2 occurrences\n - VINSERTF64X4: 1 occurrences\n - VINSERTPS: 8 occurrences\n - VMOVLHPS: 4 occurrences\n",
          title = "Special instructions executing on a single port",
          txt = "1.78x slowdown from special instructions executing on a single port.\n",
        },
      },
    },
  },
  AVG = {
      hint = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant unknown stride: 18 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          workaround = "Use vector aligned instructions:\n 1) align your arrays on 64 bytes boundaries: replace { void *p = malloc (size); } with { void *p; posix_memalign (&p, 64, size); }.\n 2) inform your compiler that your arrays are vector aligned: if array 'foo' is 64 bytes-aligned, define a pointer 'p_foo' as __builtin_assume_aligned (foo, 64) and use it instead of 'foo' in the loop.\n",
          details = " - VINSERTF128: 2 occurrences\n - VINSERTF64X4: 1 occurrences\n",
          title = "Vector unaligned load/store instructions",
          txt = "Detected 3 suboptimal vector unaligned load/store instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "2 AVX-512 instructions are processing arithmetic or math operations on single precision FP elements in vector mode (sixteen at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 32 FP arithmetical operations:\n - 16: addition or subtraction\n - 16: divide\nThe binary loop is loading 192 bytes (48 single precision FP elements).\nThe binary loop is storing 64 bytes (16 single precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.12 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 32\nloop length        : 182\nused x86 registers : 11\nused mmx registers : 0\nused xmm registers : 16\nused ymm registers : 4\nused zmm registers : 4\nnb stack references: 0\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 12.00 cycles\ninstruction queue    : 16.00 cycles\ndecoding             : 16.00 cycles\nmicro-operation queue: 16.00 cycles\nfront end            : 16.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1   | P2   | P3   | P4   | P5   | P6\n--------------------------------------------------------\nuops   | 32.00 | 1.00 | 9.50 | 9.50 | 3.00 | 3.00 | 1.00\ncycles | 32.00 | 1.00 | 9.50 | 9.50 | 3.00 | 3.00 | 1.00\n\nCycles executing div or sqrt instructions: 17.00-18.00\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 16.00\nDispatch  : 32.00\nDIV/SQRT  : 17.00-18.00\nData deps.: 1.00\nOverall L1: 32.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 38%\nload    : 11%\nstore   : 100%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 100%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 100%\nother   : 46%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 21%\nload    : 16%\nstore   : 100%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 100%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 100%\nother   : 13%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 32.00 cycles. At this rate:\n - 4% of peak load performance is reached (6.00 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 3% of peak store performance is reached (2.00 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1a00\n\nInstruction                                 | Nb FU | P0   | P1   | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n--------------------------------------------------------------------------------------------------------------------------------\nVMOVSS (%R8,%R10,1),%XMM13                  | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nLEA 0x40(%R9),%R9                           | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVMOVSS (%R8,%RDI,4),%XMM15                  | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVINSERTPS $0x10,(%R8,%R12,1),%XMM13,%XMM14  | 2     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 7\nVMOVSS (%R8,%RDI,2),%XMM0                   | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVINSERTPS $0x10,(%R8,%R11,1),%XMM15,%XMM4   | 2     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 7\nVMOVSS (%R8),%XMM1                          | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVINSERTPS $0x10,(%R8,%RBX,1),%XMM0,%XMM5    | 2     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 7\nVMOVSS (%RCX,%R10,1),%XMM3                  | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVINSERTPS $0x10,(%R8,%RDI,1),%XMM1,%XMM2    | 2     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 7\nVMOVSS (%RCX,%RDI,4),%XMM7                  | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVINSERTPS $0x10,(%RCX,%R12,1),%XMM3,%XMM6   | 2     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 7\nVMOVSS (%RCX,%RDI,2),%XMM9                  | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVINSERTPS $0x10,(%RCX,%R11,1),%XMM7,%XMM8   | 2     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 7\nVMOVSS (%RCX),%XMM11                        | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVINSERTPS $0x10,(%RCX,%RBX,1),%XMM9,%XMM10  | 2     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 7\nVINSERTPS $0x10,(%RCX,%RDI,1),%XMM11,%XMM12 | 2     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 7\nVMOVLHPS %XMM5,%XMM2,%XMM5                  | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVMOVLHPS %XMM14,%XMM4,%XMM14                | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVMOVLHPS %XMM10,%XMM12,%XMM13               | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVMOVLHPS %XMM6,%XMM8,%XMM15                 | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVINSERTF128 $0x1,%XMM14,%YMM5,%YMM0         | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVINSERTF128 $0x1,%XMM15,%YMM13,%YMM4        | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nLEA (%RCX,%R15,1),%RCX                      | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVINSERTF64X4 $0x1,%YMM0,%ZMM4,%ZMM1         | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nLEA 0x40(%R14),%R14                         | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVDIVPS -0x40(%R9),%ZMM1,%ZMM2               | 18    | 17   | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 32-70   | 17-18\nCMP %RAX,%R9                                | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (%R8,%R15,1),%R8                        | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVADDPS -0x40(%R14),%ZMM2,%ZMM3              | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVMOVAPS %ZMM3,-0x40(%R14)                   | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nJNE 1a00 <baseline+0x3b0>                   | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\n",
        },
      },
      header = {
        "1% of peak computational performance is used (1.00 out of 64.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one:\n  * recompile with fassociative-math (included in Ofast or ffast-math) to extend loop vectorization to FP reductions.\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) => for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "38% of SSE/AVX instructions are used in vector version (process two or more data elements in vector registers):\n - 11% of SSE/AVX loads are used in vector version.\n - 46% of SSE/AVX instructions that are not load, store, addition, subtraction nor multiply instructions are used in vector version.\nSince your execution units are vector units, only a fully vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is poorly vectorized.\nOnly 21% of vector register length is used (average across all SSE/AVX instructions).\nBy fully vectorizing your loop, you can lower the cost of an iteration from 32.00 to 22.50 cycles (1.42x speedup).",
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
          txt = "Detected performance impact from expensive FP math instructions/calls.\nBy removing/reexpressing them, you can lower the cost of an iteration from 32.00 to 16.00 cycles (2.00x speedup).",
        },
        {
          details = " - VINSERTF128: 2 occurrences\n - VINSERTF64X4: 1 occurrences\n - VINSERTPS: 8 occurrences\n - VMOVLHPS: 4 occurrences\n",
          title = "Special instructions executing on a single port",
          txt = "1.78x slowdown from special instructions executing on a single port.\n",
        },
      },
    },
  common = {
    header = {
      "The loop is defined in /users/user4427/AOA_Etude_de_cas/demo/kernel.c:54-55.\n",
      "It is main loop of related source loop which is unrolled by 2 (including vectorization).",
    },
    nb_paths = 1,
  },
}
