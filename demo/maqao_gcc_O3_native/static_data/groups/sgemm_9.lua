_group = {
  {
    group_size = 1,
    pattern = "L",
    opcodes = "VMOVSS,",
    offsets = "0,",
    addresses = "0x1961,",
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
    group_size = 3,
    pattern = "LLL",
    opcodes = "VMOVSS,VMOVSS,VINSERTPS,",
    offsets = "0,0,0,",
    addresses = "0x192a,0x195b,0x1972,",
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
    addresses = "0x1979,",
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
    addresses = "0x1930,",
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
    addresses = "0x1949,",
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
    addresses = "0x1920,",
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
    addresses = "0x193d,",
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
    addresses = "0x1937,",
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
    addresses = "0x1950,",
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
    addresses = "0x1944,0x196d,0x1984,",
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
    opcodes = "VDIVPS,",
    offsets = "-64,",
    addresses = "0x19b6,",
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
    opcodes = "VINSERTPS,",
    offsets = "0,",
    addresses = "0x1966,",
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
    addresses = "0x197d,",
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
    addresses = "0x19c0,0x19c7,",
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
}
