_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - VINSERTPS: 8 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant unknown stride: 8 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          workaround = "Use vector aligned instructions:\n 1) align your arrays on 32 bytes boundaries: replace { void *p = malloc (size); } with { void *p; posix_memalign (&p, 32, size); }.\n 2) inform your compiler that your arrays are vector aligned: if array 'foo' is 32 bytes-aligned, define a pointer 'p_foo' as __builtin_assume_aligned (foo, 32) and use it instead of 'foo' in the loop.\n",
          details = " - VINSERTF128: 2 occurrences\n",
          title = "Vector unaligned load/store instructions",
          txt = "Detected 2 suboptimal vector unaligned load/store instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "14 AVX instructions are processing arithmetic or math operations on single precision FP elements in vector mode (eight at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 112 FP arithmetical operations:\n - 48: addition or subtraction\n - 48: multiply\n - 16: fast reciprocal\nThe binary loop is loading 192 bytes (48 single precision FP elements).\nThe binary loop is storing 64 bytes (16 single precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.44 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 48\nnb uops            : 55\nloop length        : 241\nused x86 registers : 8\nused mmx registers : 0\nused xmm registers : 13\nused ymm registers : 13\nused zmm registers : 0\nnb stack references: 0\nADD-SUB / MUL ratio: 1.00\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 13.75 cycles\nfront end            : 13.75 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2    | P3    | P4   | P5    | P6   | P7\n-----------------------------------------------------------------\nuops   | 7.00 | 7.00 | 10.00 | 10.00 | 2.00 | 14.00 | 7.00 | 2.00\ncycles | 7.00 | 7.00 | 10.00 | 10.00 | 2.00 | 14.00 | 7.00 | 2.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 2.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 13.75\nDispatch  : 14.00\nData deps.: 2.00\nOverall L1: 14.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 60%\nload    : 20%\nstore   : 100%\nmul     : 100%\nadd-sub : 100%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 100%\nother   : 42%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 55%\nload    : 30%\nstore   : 100%\nmul     : 100%\nadd-sub : 100%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 100%\nother   : 21%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 14.00 cycles. At this rate:\n - 21% of peak load performance is reached (13.71 out of 64.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 14% of peak store performance is reached (4.57 out of 32.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1898\n\nInstruction                                 | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | P6   | P7   | Latency | Recip. throughput\n---------------------------------------------------------------------------------------------------------------------------------------\nVMOVUPS (%R10),%YMM14                       | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nVMOVSS (%RAX,%R8,2),%XMM4                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nVRCPPS %YMM14,%YMM15                        | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 4       | 1\nVMOVSS (%RAX),%XMM3                         | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nVMOVSS (%RCX,%R8,2),%XMM7                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nVMOVSS (%RCX),%XMM9                         | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nVMULPS %YMM14,%YMM15,%YMM1                  | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 4       | 0.50\nVADDPS %YMM15,%YMM15,%YMM0                  | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 4       | 0.50\nVINSERTPS $0x10,(%RAX,%R11,1),%XMM4,%XMM5   | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 0    | 0    | 4       | 1\nVINSERTPS $0x10,(%RAX,%R8,1),%XMM3,%XMM6    | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 0    | 0    | 4       | 1\nVINSERTPS $0x10,(%RCX,%R11,1),%XMM7,%XMM8   | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 0    | 0    | 4       | 1\nVMULPS %YMM1,%YMM15,%YMM2                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 4       | 0.50\nVINSERTPS $0x10,(%RCX,%R8,1),%XMM9,%XMM10   | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 0    | 0    | 4       | 1\nVMOVLHPS %XMM5,%XMM6,%XMM12                 | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nVMOVLHPS %XMM8,%XMM10,%XMM11                | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nVINSERTF128 $0x1,%XMM12,%YMM11,%YMM13       | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 3       | 1\nVSUBPS %YMM2,%YMM0,%YMM4                    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 4       | 0.50\nADD %RSI,%RCX                               | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nADD %RSI,%RAX                               | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nVMULPS %YMM4,%YMM13,%YMM5                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 4       | 0.50\nADD $0x40,%R10                              | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nADD $0x40,%R9                               | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nVADDPS -0x40(%R9),%YMM5,%YMM3               | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 4       | 0.50\nVMOVUPS %YMM3,-0x40(%R9)                    | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVMOVUPS -0x20(%R10),%YMM2                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nVMOVSS (%RAX,%R8,2),%XMM6                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nVRCPPS %YMM2,%YMM1                          | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 4       | 1\nVMOVSS (%RAX),%XMM8                         | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nVMOVSS (%RCX,%R8,2),%XMM10                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nVMOVSS (%RCX),%XMM12                        | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nVMULPS %YMM2,%YMM1,%YMM4                    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 4       | 0.50\nVADDPS %YMM1,%YMM1,%YMM3                    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 4       | 0.50\nVINSERTPS $0x10,(%RAX,%R11,1),%XMM6,%XMM7   | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 0    | 0    | 4       | 1\nVINSERTPS $0x10,(%RAX,%R8,1),%XMM8,%XMM9    | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 0    | 0    | 4       | 1\nVINSERTPS $0x10,(%RCX,%R11,1),%XMM10,%XMM11 | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 0    | 0    | 4       | 1\nVMULPS %YMM4,%YMM1,%YMM5                    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 4       | 0.50\nVINSERTPS $0x10,(%RCX,%R8,1),%XMM12,%XMM13  | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 0    | 0    | 4       | 1\nVMOVLHPS %XMM7,%XMM9,%XMM15                 | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nVMOVLHPS %XMM11,%XMM13,%XMM14               | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nVINSERTF128 $0x1,%XMM15,%YMM14,%YMM0        | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 3       | 1\nVSUBPS %YMM5,%YMM3,%YMM6                    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 4       | 0.50\nADD %RSI,%RCX                               | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nADD %RSI,%RAX                               | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nVMULPS %YMM6,%YMM0,%YMM7                    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 4       | 0.50\nVADDPS -0x20(%R9),%YMM7,%YMM8               | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 4       | 0.50\nVMOVUPS %YMM8,-0x20(%R9)                    | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nCMP %R13,%R10                               | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJNE 1898 <baseline+0x248>                   | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\n",
        },
      },
      header = {
        "25% of peak computational performance is used (8.00 out of 32.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) => for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "60% of SSE/AVX instructions are used in vector version (process two or more data elements in vector registers):\n - 20% of SSE/AVX loads are used in vector version.\n - 42% of SSE/AVX instructions that are not load, store, addition, subtraction nor multiply instructions are used in vector version.\nSince your execution units are vector units, only a fully vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is partially vectorized.\nOnly 55% of vector register length is used (average across all SSE/AVX instructions).\nBy fully vectorizing your loop, you can lower the cost of an iteration from 14.00 to 9.45 cycles (1.48x speedup).",
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
          txt = "Presence of both ADD/SUB and MUL operations.",
        },
      },
    },
  },
  AVG = {
      hint = {
        {
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - VINSERTPS: 8 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant unknown stride: 8 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          workaround = "Use vector aligned instructions:\n 1) align your arrays on 32 bytes boundaries: replace { void *p = malloc (size); } with { void *p; posix_memalign (&p, 32, size); }.\n 2) inform your compiler that your arrays are vector aligned: if array 'foo' is 32 bytes-aligned, define a pointer 'p_foo' as __builtin_assume_aligned (foo, 32) and use it instead of 'foo' in the loop.\n",
          details = " - VINSERTF128: 2 occurrences\n",
          title = "Vector unaligned load/store instructions",
          txt = "Detected 2 suboptimal vector unaligned load/store instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "14 AVX instructions are processing arithmetic or math operations on single precision FP elements in vector mode (eight at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 112 FP arithmetical operations:\n - 48: addition or subtraction\n - 48: multiply\n - 16: fast reciprocal\nThe binary loop is loading 192 bytes (48 single precision FP elements).\nThe binary loop is storing 64 bytes (16 single precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.44 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 48\nnb uops            : 55\nloop length        : 241\nused x86 registers : 8\nused mmx registers : 0\nused xmm registers : 13\nused ymm registers : 13\nused zmm registers : 0\nnb stack references: 0\nADD-SUB / MUL ratio: 1.00\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 13.75 cycles\nfront end            : 13.75 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2    | P3    | P4   | P5    | P6   | P7\n-----------------------------------------------------------------\nuops   | 7.00 | 7.00 | 10.00 | 10.00 | 2.00 | 14.00 | 7.00 | 2.00\ncycles | 7.00 | 7.00 | 10.00 | 10.00 | 2.00 | 14.00 | 7.00 | 2.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 2.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 13.75\nDispatch  : 14.00\nData deps.: 2.00\nOverall L1: 14.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 60%\nload    : 20%\nstore   : 100%\nmul     : 100%\nadd-sub : 100%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 100%\nother   : 42%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 55%\nload    : 30%\nstore   : 100%\nmul     : 100%\nadd-sub : 100%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 100%\nother   : 21%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 14.00 cycles. At this rate:\n - 21% of peak load performance is reached (13.71 out of 64.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 14% of peak store performance is reached (4.57 out of 32.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1898\n\nInstruction                                 | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | P6   | P7   | Latency | Recip. throughput\n---------------------------------------------------------------------------------------------------------------------------------------\nVMOVUPS (%R10),%YMM14                       | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nVMOVSS (%RAX,%R8,2),%XMM4                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nVRCPPS %YMM14,%YMM15                        | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 4       | 1\nVMOVSS (%RAX),%XMM3                         | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nVMOVSS (%RCX,%R8,2),%XMM7                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nVMOVSS (%RCX),%XMM9                         | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nVMULPS %YMM14,%YMM15,%YMM1                  | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 4       | 0.50\nVADDPS %YMM15,%YMM15,%YMM0                  | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 4       | 0.50\nVINSERTPS $0x10,(%RAX,%R11,1),%XMM4,%XMM5   | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 0    | 0    | 4       | 1\nVINSERTPS $0x10,(%RAX,%R8,1),%XMM3,%XMM6    | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 0    | 0    | 4       | 1\nVINSERTPS $0x10,(%RCX,%R11,1),%XMM7,%XMM8   | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 0    | 0    | 4       | 1\nVMULPS %YMM1,%YMM15,%YMM2                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 4       | 0.50\nVINSERTPS $0x10,(%RCX,%R8,1),%XMM9,%XMM10   | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 0    | 0    | 4       | 1\nVMOVLHPS %XMM5,%XMM6,%XMM12                 | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nVMOVLHPS %XMM8,%XMM10,%XMM11                | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nVINSERTF128 $0x1,%XMM12,%YMM11,%YMM13       | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 3       | 1\nVSUBPS %YMM2,%YMM0,%YMM4                    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 4       | 0.50\nADD %RSI,%RCX                               | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nADD %RSI,%RAX                               | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nVMULPS %YMM4,%YMM13,%YMM5                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 4       | 0.50\nADD $0x40,%R10                              | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nADD $0x40,%R9                               | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nVADDPS -0x40(%R9),%YMM5,%YMM3               | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 4       | 0.50\nVMOVUPS %YMM3,-0x40(%R9)                    | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVMOVUPS -0x20(%R10),%YMM2                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nVMOVSS (%RAX,%R8,2),%XMM6                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nVRCPPS %YMM2,%YMM1                          | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 4       | 1\nVMOVSS (%RAX),%XMM8                         | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nVMOVSS (%RCX,%R8,2),%XMM10                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nVMOVSS (%RCX),%XMM12                        | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nVMULPS %YMM2,%YMM1,%YMM4                    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 4       | 0.50\nVADDPS %YMM1,%YMM1,%YMM3                    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 4       | 0.50\nVINSERTPS $0x10,(%RAX,%R11,1),%XMM6,%XMM7   | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 0    | 0    | 4       | 1\nVINSERTPS $0x10,(%RAX,%R8,1),%XMM8,%XMM9    | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 0    | 0    | 4       | 1\nVINSERTPS $0x10,(%RCX,%R11,1),%XMM10,%XMM11 | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 0    | 0    | 4       | 1\nVMULPS %YMM4,%YMM1,%YMM5                    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 4       | 0.50\nVINSERTPS $0x10,(%RCX,%R8,1),%XMM12,%XMM13  | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 0    | 0    | 4       | 1\nVMOVLHPS %XMM7,%XMM9,%XMM15                 | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nVMOVLHPS %XMM11,%XMM13,%XMM14               | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nVINSERTF128 $0x1,%XMM15,%YMM14,%YMM0        | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 3       | 1\nVSUBPS %YMM5,%YMM3,%YMM6                    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 4       | 0.50\nADD %RSI,%RCX                               | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nADD %RSI,%RAX                               | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nVMULPS %YMM6,%YMM0,%YMM7                    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 4       | 0.50\nVADDPS -0x20(%R9),%YMM7,%YMM8               | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 4       | 0.50\nVMOVUPS %YMM8,-0x20(%R9)                    | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nCMP %R13,%R10                               | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJNE 1898 <baseline+0x248>                   | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\n",
        },
      },
      header = {
        "25% of peak computational performance is used (8.00 out of 32.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) => for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "60% of SSE/AVX instructions are used in vector version (process two or more data elements in vector registers):\n - 20% of SSE/AVX loads are used in vector version.\n - 42% of SSE/AVX instructions that are not load, store, addition, subtraction nor multiply instructions are used in vector version.\nSince your execution units are vector units, only a fully vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is partially vectorized.\nOnly 55% of vector register length is used (average across all SSE/AVX instructions).\nBy fully vectorizing your loop, you can lower the cost of an iteration from 14.00 to 9.45 cycles (1.48x speedup).",
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
          txt = "Presence of both ADD/SUB and MUL operations.",
        },
      },
    },
  common = {
    header = {
      "The loop is defined in /home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54-55.\n",
      "It is main loop of related source loop which is unrolled by 2 (including vectorization).",
    },
    nb_paths = 1,
  },
}
