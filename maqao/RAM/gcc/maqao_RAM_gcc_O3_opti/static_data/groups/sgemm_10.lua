_group = {
  {
    group_size = 1,
    pattern = "L",
    opcodes = "VINSERTPS,",
    offsets = "0,",
    addresses = "0x1a10,",
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
    opcodes = "VDIVPS,",
    offsets = "-64,",
    addresses = "0x1a94,",
    stride_status = "Success",
    stride = 64,
    memory_status = "Success",
    accessed_memory = 64,
    accessed_memory_nooverlap = 64,
    accessed_memory_overlap = 0,
    span = 64,
    head = 64,
    unroll_factor = 1,
  },
  {
    group_size = 1,
    pattern = "L",
    opcodes = "VMOVSS,",
    offsets = "0,",
    addresses = "0x1a55,",
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
    opcodes = "VINSERTPS,",
    offsets = "0,",
    addresses = "0x1a42,",
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
    opcodes = "VINSERTPS,",
    offsets = "0,",
    addresses = "0x1a1d,",
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
    opcodes = "VINSERTPS,",
    offsets = "0,",
    addresses = "0x1a4e,",
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
    group_size = 3,
    pattern = "LLL",
    opcodes = "VMOVSS,VMOVSS,VINSERTPS,",
    offsets = "0,0,0,",
    addresses = "0x1a3d,0x1a49,0x1a60,",
    stride_status = "Iteration not constant",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 12,
    accessed_memory_nooverlap = 4,
    accessed_memory_overlap = 8,
    span = 4,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 3,
    pattern = "LLL",
    opcodes = "VMOVSS,VMOVSS,VINSERTPS,",
    offsets = "0,0,0,",
    addresses = "0x1a0a,0x1a17,0x1a36,",
    stride_status = "Iteration not constant",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 12,
    accessed_memory_nooverlap = 4,
    accessed_memory_overlap = 8,
    span = 4,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 1,
    pattern = "L",
    opcodes = "VMOVSS,",
    offsets = "0,",
    addresses = "0x1a00,",
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
    addresses = "0x1a30,",
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
    addresses = "0x1a24,",
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
    opcodes = "VINSERTPS,",
    offsets = "0,",
    addresses = "0x1a29,",
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
    group_size = 2,
    pattern = "LS",
    opcodes = "VADDPS,VMOVAPS,",
    offsets = "-64,-64,",
    addresses = "0x1aa2,0x1aa9,",
    stride_status = "Success",
    stride = 64,
    memory_status = "Success",
    accessed_memory = 128,
    accessed_memory_nooverlap = 64,
    accessed_memory_overlap = 64,
    span = 64,
    head = 64,
    unroll_factor = 1,
  },
  {
    group_size = 1,
    pattern = "L",
    opcodes = "VINSERTPS,",
    offsets = "0,",
    addresses = "0x1a59,",
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
}