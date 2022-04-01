_group = {
  {
    group_size = 1,
    pattern = "L",
    opcodes = "VMOVSS,",
    offsets = "0,",
    addresses = "0x180c,",
    stride_status = "Not Analyzed",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 4,
    accessed_memory_nooverlap = 4,
    accessed_memory_overlap = 0,
    span = 4,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 1,
    pattern = "S",
    opcodes = "VMOVSS,",
    offsets = "0,",
    addresses = "0x185c,",
    stride_status = "Iteration not constant",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 4,
    accessed_memory_nooverlap = 4,
    accessed_memory_overlap = 0,
    span = 4,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 1,
    pattern = "L",
    opcodes = "VMOVSS,",
    offsets = "0,",
    addresses = "0x182a,",
    stride_status = "Not Analyzed",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 4,
    accessed_memory_nooverlap = 4,
    accessed_memory_overlap = 0,
    span = 4,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 1,
    pattern = "L",
    opcodes = "VMOVSS,",
    offsets = "0,",
    addresses = "0x1787,",
    stride_status = "Not Analyzed",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 4,
    accessed_memory_nooverlap = 4,
    accessed_memory_overlap = 0,
    span = 4,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 1,
    pattern = "L",
    opcodes = "VMOVSS,",
    offsets = "0,",
    addresses = "0x1844,",
    stride_status = "Not Analyzed",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 4,
    accessed_memory_nooverlap = 4,
    accessed_memory_overlap = 0,
    span = 4,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 1,
    pattern = "L",
    opcodes = "VMOVSS,",
    offsets = "0,",
    addresses = "0x17d7,",
    stride_status = "Not Analyzed",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 4,
    accessed_memory_nooverlap = 4,
    accessed_memory_overlap = 0,
    span = 4,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 15,
    pattern = "LSLSLSLSLSLSLSL",
    opcodes = "VADDSS,VMOVSS,VADDSS,VMOVSS,VADDSS,VMOVSS,VADDSS,VMOVSS,VADDSS,VMOVSS,VADDSS,VMOVSS,VADDSS,VMOVSS,VADDSS,",
    offsets = "0,0,4,4,8,8,12,12,16,16,20,20,24,24,28,",
    addresses = "0x1798,0x179d,0x17b1,0x17b7,0x17cb,0x17d1,0x17e6,0x17ec,0x1800,0x1806,0x181e,0x1824,0x1838,0x183e,0x1852,",
    stride_status = "Success",
    stride = 32,
    memory_status = "Success",
    accessed_memory = 60,
    accessed_memory_nooverlap = 32,
    accessed_memory_overlap = 28,
    span = 32,
    head = 32,
    unroll_factor = 1,
  },
  {
    group_size = 1,
    pattern = "L",
    opcodes = "VMOVSS,",
    offsets = "0,",
    addresses = "0x17f2,",
    stride_status = "Not Analyzed",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 4,
    accessed_memory_nooverlap = 4,
    accessed_memory_overlap = 0,
    span = 4,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 8,
    pattern = "LLLLLLLL",
    opcodes = "VDIVSS,VDIVSS,VDIVSS,VDIVSS,VDIVSS,VDIVSS,VDIVSS,VDIVSS,",
    offsets = "0,4,8,12,16,20,24,28,",
    addresses = "0x178f,0x17ab,0x17c5,0x17e0,0x17fa,0x1815,0x1832,0x184c,",
    stride_status = "Success",
    stride = 32,
    memory_status = "Success",
    accessed_memory = 32,
    accessed_memory_nooverlap = 32,
    accessed_memory_overlap = 0,
    span = 32,
    head = 32,
    unroll_factor = 8,
  },
  {
    group_size = 1,
    pattern = "L",
    opcodes = "VMOVSS,",
    offsets = "0,",
    addresses = "0x17bd,",
    stride_status = "Not Analyzed",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 4,
    accessed_memory_nooverlap = 4,
    accessed_memory_overlap = 0,
    span = 4,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 1,
    pattern = "L",
    opcodes = "VMOVSS,",
    offsets = "0,",
    addresses = "0x17a2,",
    stride_status = "Not Analyzed",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 4,
    accessed_memory_nooverlap = 4,
    accessed_memory_overlap = 0,
    span = 4,
    head = 0,
    unroll_factor = 1,
  },
}
