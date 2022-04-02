_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - VGATHERQPS: 8 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          workaround = "Try to remove indirect accesses. If applicable, precompute elements out of the innermost loop.",
          details = " - Irregular (variable stride) or indirect: 4 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          workaround = " - Pass to your compiler a micro-architecture specialization option:\n  * Please read your compiler manual\n - Use vector aligned instructions:\n  1) align your arrays on 32 bytes boundaries: replace { void *p = malloc (size); } with { void *p; posix_memalign (&p, 32, size); }.\n  2) inform your compiler that your arrays are vector aligned: read your compiler manual.\n",
          details = " - VINSERTF128: 4 occurrences\n",
          title = "Vector unaligned load/store instructions",
          txt = "Detected 4 suboptimal vector unaligned load/store instructions.\n",
        },
        {
          workaround = "Try to simplify your code and/or replace indirect accesses with unit-stride ones.",
          details = " - VGATHERQPS: 8 occurrences\n",
          title = "Gather/scatter instructions",
          txt = "Detected gather/scatter instructions (typically caused by indirect accesses).",
        },
        {
          title = "Type of elements and instruction set",
          txt = "8 AVX instructions are processing arithmetic or math operations on single precision FP elements in vector mode (eight at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 64 FP arithmetical operations:\n - 32: addition or subtraction\n - 32: divide\nThe binary loop is loading 384 bytes (96 single precision FP elements).\nThe binary loop is storing 128 bytes (32 single precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.12 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 99\nnb uops            : 146\nloop length        : 487\nused x86 registers : 5\nused mmx registers : 0\nused xmm registers : 5\nused ymm registers : 15\nused zmm registers : 0\nnb stack references: 0\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 38.50 cycles\nfront end            : 38.50 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4   | P5    | P6   | P7\n-------------------------------------------------------------------\nuops   | 33.33 | 33.33 | 20.00 | 20.00 | 4.00 | 33.33 | 2.00 | 4.00\ncycles | 33.33 | 33.33 | 20.00 | 20.00 | 4.00 | 33.33 | 2.00 | 4.00\n\nCycles executing div or sqrt instructions: 20.00\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 38.50\nDispatch  : 33.33\nDIV/SQRT  : 20.00\nData deps.: 1.00\nOverall L1: 38.50\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 100%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : 100%\nadd-sub: 100%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 100%\nFP\nall     : 100%\nload    : 100%\nstore   : 100%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 100%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 100%\nother   : 100%\nINT+FP\nall     : 100%\nload    : 100%\nstore   : 100%\nmul     : 100%\nadd-sub : 100%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 100%\nother   : 100%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 94%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : 100%\nadd-sub: 100%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 83%\nFP\nall     : 75%\nload    : 75%\nstore   : 100%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 100%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 100%\nother   : 50%\nINT+FP\nall     : 89%\nload    : 75%\nstore   : 100%\nmul     : 100%\nadd-sub : 100%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 100%\nother   : 72%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 38.50 cycles. At this rate:\n - 15% of peak load performance is reached (9.97 out of 64.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 10% of peak store performance is reached (3.32 out of 32.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 38.50 to 33.33 cycles (1.15x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 4013f0\n\nInstruction                            | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | P6   | P7   | Latency | Recip. throughput\n----------------------------------------------------------------------------------------------------------------------------------\nVPSRLQ $0x20,%YMM8,%YMM10              | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 0.50\nVPMULUDQ %YMM0,%YMM10,%YMM10           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nVPMULUDQ %YMM3,%YMM8,%YMM11            | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nVPADDQ %YMM10,%YMM11,%YMM10            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nVPSLLQ $0x20,%YMM10,%YMM10             | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 0.50\nVPMULUDQ %YMM0,%YMM8,%YMM11            | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nVPADDQ %YMM10,%YMM11,%YMM10            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nVPSRLQ $0x20,%YMM9,%YMM11              | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 0.50\nVPMULUDQ %YMM0,%YMM11,%YMM11           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nVPMULUDQ %YMM3,%YMM9,%YMM12            | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nVPADDQ %YMM11,%YMM12,%YMM11            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nVPSLLQ $0x20,%YMM11,%YMM11             | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 0.50\nVPMULUDQ %YMM0,%YMM9,%YMM12            | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nVPADDQ %YMM11,%YMM12,%YMM11            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nVPCMPEQD %XMM1,%XMM1,%XMM1             | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nVGATHERQPS %XMM1,(%R9,%YMM11,4),%XMM2  | 7     | 1    | 1    | 2    | 2    | 0  | 1    | 0    | 0    | 20      | 4\nVPCMPEQD %XMM1,%XMM1,%XMM1             | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nVGATHERQPS %XMM1,(%R9,%YMM10,4),%XMM11 | 7     | 1    | 1    | 2    | 2    | 0  | 1    | 0    | 0    | 20      | 4\nVINSERTF128 $0x1,%XMM2,%YMM11,%YMM1    | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 3       | 1\nVDIVPS (%RDX,%R15,4),%YMM1,%YMM1       | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 11      | 5\nVADDPS (%RSI,%R15,4),%YMM1,%YMM1       | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 4       | 0.50\nVMOVUPS %YMM1,(%RSI,%R15,4)            | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVPADDQ %YMM4,%YMM9,%YMM1               | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nVPADDQ %YMM4,%YMM8,%YMM2               | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nVPMULUDQ %YMM3,%YMM2,%YMM10            | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nVPSRLQ $0x20,%YMM2,%YMM11              | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 0.50\nVPMULUDQ %YMM0,%YMM11,%YMM11           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nVPADDQ %YMM11,%YMM10,%YMM10            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nVPSLLQ $0x20,%YMM10,%YMM10             | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 0.50\nVPMULUDQ %YMM0,%YMM2,%YMM2             | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nVPADDQ %YMM2,%YMM10,%YMM2              | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nVPMULUDQ %YMM3,%YMM1,%YMM10            | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nVPSRLQ $0x20,%YMM1,%YMM11              | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 0.50\nVPMULUDQ %YMM0,%YMM11,%YMM11           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nVPADDQ %YMM11,%YMM10,%YMM10            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nVPSLLQ $0x20,%YMM10,%YMM10             | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 0.50\nVPMULUDQ %YMM0,%YMM1,%YMM1             | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nVPADDQ %YMM1,%YMM10,%YMM1              | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nVPCMPEQD %XMM5,%XMM5,%XMM5             | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nVGATHERQPS %XMM5,(%R9,%YMM1,4),%XMM6   | 7     | 1    | 1    | 2    | 2    | 0  | 1    | 0    | 0    | 20      | 4\nVPCMPEQD %XMM1,%XMM1,%XMM1             | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nVGATHERQPS %XMM1,(%R9,%YMM2,4),%XMM5   | 7     | 1    | 1    | 2    | 2    | 0  | 1    | 0    | 0    | 20      | 4\nVINSERTF128 $0x1,%XMM6,%YMM5,%YMM1     | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 3       | 1\nVDIVPS 0x20(%RDX,%R15,4),%YMM1,%YMM1   | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 11      | 5\nVADDPS 0x20(%RSI,%R15,4),%YMM1,%YMM1   | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 4       | 0.50\nVMOVUPS %YMM1,0x20(%RSI,%R15,4)        | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVPADDQ %YMM15,%YMM9,%YMM1              | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nVPADDQ %YMM15,%YMM8,%YMM2              | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nVPMULUDQ %YMM3,%YMM2,%YMM5             | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nVPSRLQ $0x20,%YMM2,%YMM6               | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 0.50\nVPMULUDQ %YMM0,%YMM6,%YMM6             | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nVPADDQ %YMM6,%YMM5,%YMM5               | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nVPSLLQ $0x20,%YMM5,%YMM5               | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 0.50\nVPMULUDQ %YMM0,%YMM2,%YMM2             | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nVPADDQ %YMM5,%YMM2,%YMM2               | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nVPMULUDQ %YMM3,%YMM1,%YMM5             | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nVPSRLQ $0x20,%YMM1,%YMM6               | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 0.50\nVPMULUDQ %YMM0,%YMM6,%YMM6             | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nVPADDQ %YMM6,%YMM5,%YMM5               | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nVPSLLQ $0x20,%YMM5,%YMM5               | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 0.50\nVPMULUDQ %YMM0,%YMM1,%YMM1             | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nVPADDQ %YMM5,%YMM1,%YMM1               | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nVPCMPEQD %XMM5,%XMM5,%XMM5             | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nVGATHERQPS %XMM5,(%R9,%YMM1,4),%XMM6   | 7     | 1    | 1    | 2    | 2    | 0  | 1    | 0    | 0    | 20      | 4\nVPCMPEQD %XMM1,%XMM1,%XMM1             | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nVGATHERQPS %XMM1,(%R9,%YMM2,4),%XMM5   | 7     | 1    | 1    | 2    | 2    | 0  | 1    | 0    | 0    | 20      | 4\nVINSERTF128 $0x1,%XMM6,%YMM5,%YMM1     | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 3       | 1\nVDIVPS 0x40(%RDX,%R15,4),%YMM1,%YMM1   | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 11      | 5\nVADDPS 0x40(%RSI,%R15,4),%YMM1,%YMM1   | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 4       | 0.50\nVMOVUPS %YMM1,0x40(%RSI,%R15,4)        | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVPADDQ %YMM13,%YMM9,%YMM1              | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nVPADDQ %YMM13,%YMM8,%YMM2              | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nVPMULUDQ %YMM3,%YMM2,%YMM5             | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nVPSRLQ $0x20,%YMM2,%YMM6               | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 0.50\nVPMULUDQ %YMM0,%YMM6,%YMM6             | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nVPADDQ %YMM6,%YMM5,%YMM5               | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nVPSLLQ $0x20,%YMM5,%YMM5               | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 0.50\nVPMULUDQ %YMM0,%YMM2,%YMM2             | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nVPADDQ %YMM5,%YMM2,%YMM2               | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nVPMULUDQ %YMM3,%YMM1,%YMM5             | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nVPSRLQ $0x20,%YMM1,%YMM6               | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 0.50\nVPMULUDQ %YMM0,%YMM6,%YMM6             | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nVPADDQ %YMM6,%YMM5,%YMM5               | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nVPSLLQ $0x20,%YMM5,%YMM5               | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 0.50\nVPMULUDQ %YMM0,%YMM1,%YMM1             | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nVPADDQ %YMM5,%YMM1,%YMM1               | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nVPCMPEQD %XMM5,%XMM5,%XMM5             | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nVGATHERQPS %XMM5,(%R9,%YMM1,4),%XMM6   | 7     | 1    | 1    | 2    | 2    | 0  | 1    | 0    | 0    | 20      | 4\nVPCMPEQD %XMM1,%XMM1,%XMM1             | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nVGATHERQPS %XMM1,(%R9,%YMM2,4),%XMM5   | 7     | 1    | 1    | 2    | 2    | 0  | 1    | 0    | 0    | 20      | 4\nVINSERTF128 $0x1,%XMM6,%YMM5,%YMM1     | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 3       | 1\nVDIVPS 0x60(%RDX,%R15,4),%YMM1,%YMM1   | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 11      | 5\nVADDPS 0x60(%RSI,%R15,4),%YMM1,%YMM1   | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 4       | 0.50\nVMOVUPS %YMM1,0x60(%RSI,%R15,4)        | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nADD $0x20,%R15                         | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nVPADDQ %YMM7,%YMM8,%YMM8               | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nVPADDQ %YMM7,%YMM9,%YMM9               | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nADD $0x4,%R10                          | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJNE 4013f0 <baseline+0x250>            | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\n",
        },
      },
      header = {
        "5% of peak computational performance is used (1.66 out of 32.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Pass to your compiler a micro-architecture specialization option:\n  * Please read your compiler manual\n - Use vector aligned instructions:\n  1) align your arrays on 32 bytes boundaries: replace { void *p = malloc (size); } with { void *p; posix_memalign (&p, 32, size); }.\n  2) inform your compiler that your arrays are vector aligned: read your compiler manual.\n",
          details = "All SSE/AVX instructions are used in vector version (process two or more data elements in vector registers).\nSince your execution units are vector units, only a fully vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is vectorized, but using 89% register length (average across all SSE/AVX instructions).\nBy fully vectorizing your loop, you can lower the cost of an iteration from 38.50 to 34.61 cycles (1.11x speedup).",
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
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - VGATHERQPS: 8 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          workaround = "Try to remove indirect accesses. If applicable, precompute elements out of the innermost loop.",
          details = " - Irregular (variable stride) or indirect: 4 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          workaround = " - Pass to your compiler a micro-architecture specialization option:\n  * Please read your compiler manual\n - Use vector aligned instructions:\n  1) align your arrays on 32 bytes boundaries: replace { void *p = malloc (size); } with { void *p; posix_memalign (&p, 32, size); }.\n  2) inform your compiler that your arrays are vector aligned: read your compiler manual.\n",
          details = " - VINSERTF128: 4 occurrences\n",
          title = "Vector unaligned load/store instructions",
          txt = "Detected 4 suboptimal vector unaligned load/store instructions.\n",
        },
        {
          workaround = "Try to simplify your code and/or replace indirect accesses with unit-stride ones.",
          details = " - VGATHERQPS: 8 occurrences\n",
          title = "Gather/scatter instructions",
          txt = "Detected gather/scatter instructions (typically caused by indirect accesses).",
        },
        {
          title = "Type of elements and instruction set",
          txt = "8 AVX instructions are processing arithmetic or math operations on single precision FP elements in vector mode (eight at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 64 FP arithmetical operations:\n - 32: addition or subtraction\n - 32: divide\nThe binary loop is loading 384 bytes (96 single precision FP elements).\nThe binary loop is storing 128 bytes (32 single precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.12 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 99\nnb uops            : 146\nloop length        : 487\nused x86 registers : 5\nused mmx registers : 0\nused xmm registers : 5\nused ymm registers : 15\nused zmm registers : 0\nnb stack references: 0\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 38.50 cycles\nfront end            : 38.50 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4   | P5    | P6   | P7\n-------------------------------------------------------------------\nuops   | 33.33 | 33.33 | 20.00 | 20.00 | 4.00 | 33.33 | 2.00 | 4.00\ncycles | 33.33 | 33.33 | 20.00 | 20.00 | 4.00 | 33.33 | 2.00 | 4.00\n\nCycles executing div or sqrt instructions: 20.00\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 38.50\nDispatch  : 33.33\nDIV/SQRT  : 20.00\nData deps.: 1.00\nOverall L1: 38.50\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 100%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : 100%\nadd-sub: 100%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 100%\nFP\nall     : 100%\nload    : 100%\nstore   : 100%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 100%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 100%\nother   : 100%\nINT+FP\nall     : 100%\nload    : 100%\nstore   : 100%\nmul     : 100%\nadd-sub : 100%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 100%\nother   : 100%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 94%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : 100%\nadd-sub: 100%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 83%\nFP\nall     : 75%\nload    : 75%\nstore   : 100%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 100%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 100%\nother   : 50%\nINT+FP\nall     : 89%\nload    : 75%\nstore   : 100%\nmul     : 100%\nadd-sub : 100%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 100%\nother   : 72%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 38.50 cycles. At this rate:\n - 15% of peak load performance is reached (9.97 out of 64.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 10% of peak store performance is reached (3.32 out of 32.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 38.50 to 33.33 cycles (1.15x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 4013f0\n\nInstruction                            | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | P6   | P7   | Latency | Recip. throughput\n----------------------------------------------------------------------------------------------------------------------------------\nVPSRLQ $0x20,%YMM8,%YMM10              | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 0.50\nVPMULUDQ %YMM0,%YMM10,%YMM10           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nVPMULUDQ %YMM3,%YMM8,%YMM11            | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nVPADDQ %YMM10,%YMM11,%YMM10            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nVPSLLQ $0x20,%YMM10,%YMM10             | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 0.50\nVPMULUDQ %YMM0,%YMM8,%YMM11            | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nVPADDQ %YMM10,%YMM11,%YMM10            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nVPSRLQ $0x20,%YMM9,%YMM11              | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 0.50\nVPMULUDQ %YMM0,%YMM11,%YMM11           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nVPMULUDQ %YMM3,%YMM9,%YMM12            | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nVPADDQ %YMM11,%YMM12,%YMM11            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nVPSLLQ $0x20,%YMM11,%YMM11             | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 0.50\nVPMULUDQ %YMM0,%YMM9,%YMM12            | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nVPADDQ %YMM11,%YMM12,%YMM11            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nVPCMPEQD %XMM1,%XMM1,%XMM1             | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nVGATHERQPS %XMM1,(%R9,%YMM11,4),%XMM2  | 7     | 1    | 1    | 2    | 2    | 0  | 1    | 0    | 0    | 20      | 4\nVPCMPEQD %XMM1,%XMM1,%XMM1             | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nVGATHERQPS %XMM1,(%R9,%YMM10,4),%XMM11 | 7     | 1    | 1    | 2    | 2    | 0  | 1    | 0    | 0    | 20      | 4\nVINSERTF128 $0x1,%XMM2,%YMM11,%YMM1    | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 3       | 1\nVDIVPS (%RDX,%R15,4),%YMM1,%YMM1       | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 11      | 5\nVADDPS (%RSI,%R15,4),%YMM1,%YMM1       | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 4       | 0.50\nVMOVUPS %YMM1,(%RSI,%R15,4)            | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVPADDQ %YMM4,%YMM9,%YMM1               | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nVPADDQ %YMM4,%YMM8,%YMM2               | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nVPMULUDQ %YMM3,%YMM2,%YMM10            | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nVPSRLQ $0x20,%YMM2,%YMM11              | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 0.50\nVPMULUDQ %YMM0,%YMM11,%YMM11           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nVPADDQ %YMM11,%YMM10,%YMM10            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nVPSLLQ $0x20,%YMM10,%YMM10             | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 0.50\nVPMULUDQ %YMM0,%YMM2,%YMM2             | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nVPADDQ %YMM2,%YMM10,%YMM2              | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nVPMULUDQ %YMM3,%YMM1,%YMM10            | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nVPSRLQ $0x20,%YMM1,%YMM11              | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 0.50\nVPMULUDQ %YMM0,%YMM11,%YMM11           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nVPADDQ %YMM11,%YMM10,%YMM10            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nVPSLLQ $0x20,%YMM10,%YMM10             | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 0.50\nVPMULUDQ %YMM0,%YMM1,%YMM1             | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nVPADDQ %YMM1,%YMM10,%YMM1              | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nVPCMPEQD %XMM5,%XMM5,%XMM5             | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nVGATHERQPS %XMM5,(%R9,%YMM1,4),%XMM6   | 7     | 1    | 1    | 2    | 2    | 0  | 1    | 0    | 0    | 20      | 4\nVPCMPEQD %XMM1,%XMM1,%XMM1             | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nVGATHERQPS %XMM1,(%R9,%YMM2,4),%XMM5   | 7     | 1    | 1    | 2    | 2    | 0  | 1    | 0    | 0    | 20      | 4\nVINSERTF128 $0x1,%XMM6,%YMM5,%YMM1     | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 3       | 1\nVDIVPS 0x20(%RDX,%R15,4),%YMM1,%YMM1   | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 11      | 5\nVADDPS 0x20(%RSI,%R15,4),%YMM1,%YMM1   | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 4       | 0.50\nVMOVUPS %YMM1,0x20(%RSI,%R15,4)        | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVPADDQ %YMM15,%YMM9,%YMM1              | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nVPADDQ %YMM15,%YMM8,%YMM2              | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nVPMULUDQ %YMM3,%YMM2,%YMM5             | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nVPSRLQ $0x20,%YMM2,%YMM6               | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 0.50\nVPMULUDQ %YMM0,%YMM6,%YMM6             | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nVPADDQ %YMM6,%YMM5,%YMM5               | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nVPSLLQ $0x20,%YMM5,%YMM5               | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 0.50\nVPMULUDQ %YMM0,%YMM2,%YMM2             | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nVPADDQ %YMM5,%YMM2,%YMM2               | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nVPMULUDQ %YMM3,%YMM1,%YMM5             | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nVPSRLQ $0x20,%YMM1,%YMM6               | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 0.50\nVPMULUDQ %YMM0,%YMM6,%YMM6             | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nVPADDQ %YMM6,%YMM5,%YMM5               | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nVPSLLQ $0x20,%YMM5,%YMM5               | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 0.50\nVPMULUDQ %YMM0,%YMM1,%YMM1             | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nVPADDQ %YMM5,%YMM1,%YMM1               | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nVPCMPEQD %XMM5,%XMM5,%XMM5             | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nVGATHERQPS %XMM5,(%R9,%YMM1,4),%XMM6   | 7     | 1    | 1    | 2    | 2    | 0  | 1    | 0    | 0    | 20      | 4\nVPCMPEQD %XMM1,%XMM1,%XMM1             | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nVGATHERQPS %XMM1,(%R9,%YMM2,4),%XMM5   | 7     | 1    | 1    | 2    | 2    | 0  | 1    | 0    | 0    | 20      | 4\nVINSERTF128 $0x1,%XMM6,%YMM5,%YMM1     | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 3       | 1\nVDIVPS 0x40(%RDX,%R15,4),%YMM1,%YMM1   | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 11      | 5\nVADDPS 0x40(%RSI,%R15,4),%YMM1,%YMM1   | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 4       | 0.50\nVMOVUPS %YMM1,0x40(%RSI,%R15,4)        | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVPADDQ %YMM13,%YMM9,%YMM1              | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nVPADDQ %YMM13,%YMM8,%YMM2              | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nVPMULUDQ %YMM3,%YMM2,%YMM5             | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nVPSRLQ $0x20,%YMM2,%YMM6               | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 0.50\nVPMULUDQ %YMM0,%YMM6,%YMM6             | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nVPADDQ %YMM6,%YMM5,%YMM5               | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nVPSLLQ $0x20,%YMM5,%YMM5               | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 0.50\nVPMULUDQ %YMM0,%YMM2,%YMM2             | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nVPADDQ %YMM5,%YMM2,%YMM2               | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nVPMULUDQ %YMM3,%YMM1,%YMM5             | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nVPSRLQ $0x20,%YMM1,%YMM6               | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 0.50\nVPMULUDQ %YMM0,%YMM6,%YMM6             | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nVPADDQ %YMM6,%YMM5,%YMM5               | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nVPSLLQ $0x20,%YMM5,%YMM5               | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 1       | 0.50\nVPMULUDQ %YMM0,%YMM1,%YMM1             | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nVPADDQ %YMM5,%YMM1,%YMM1               | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nVPCMPEQD %XMM5,%XMM5,%XMM5             | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nVGATHERQPS %XMM5,(%R9,%YMM1,4),%XMM6   | 7     | 1    | 1    | 2    | 2    | 0  | 1    | 0    | 0    | 20      | 4\nVPCMPEQD %XMM1,%XMM1,%XMM1             | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nVGATHERQPS %XMM1,(%R9,%YMM2,4),%XMM5   | 7     | 1    | 1    | 2    | 2    | 0  | 1    | 0    | 0    | 20      | 4\nVINSERTF128 $0x1,%XMM6,%YMM5,%YMM1     | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 3       | 1\nVDIVPS 0x60(%RDX,%R15,4),%YMM1,%YMM1   | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 11      | 5\nVADDPS 0x60(%RSI,%R15,4),%YMM1,%YMM1   | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 4       | 0.50\nVMOVUPS %YMM1,0x60(%RSI,%R15,4)        | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nADD $0x20,%R15                         | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nVPADDQ %YMM7,%YMM8,%YMM8               | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nVPADDQ %YMM7,%YMM9,%YMM9               | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nADD $0x4,%R10                          | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJNE 4013f0 <baseline+0x250>            | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\n",
        },
      },
      header = {
        "5% of peak computational performance is used (1.66 out of 32.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Pass to your compiler a micro-architecture specialization option:\n  * Please read your compiler manual\n - Use vector aligned instructions:\n  1) align your arrays on 32 bytes boundaries: replace { void *p = malloc (size); } with { void *p; posix_memalign (&p, 32, size); }.\n  2) inform your compiler that your arrays are vector aligned: read your compiler manual.\n",
          details = "All SSE/AVX instructions are used in vector version (process two or more data elements in vector registers).\nSince your execution units are vector units, only a fully vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is vectorized, but using 89% register length (average across all SSE/AVX instructions).\nBy fully vectorizing your loop, you can lower the cost of an iteration from 38.50 to 34.61 cycles (1.11x speedup).",
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
      "The loop is defined in /home/lucas/AOA/AOA_Etude_de_cas/kernel.c:54-55.\n",
      "It is main loop of related source loop which is unrolled by 32 (including vectorization).",
    },
    nb_paths = 1,
  },
}
