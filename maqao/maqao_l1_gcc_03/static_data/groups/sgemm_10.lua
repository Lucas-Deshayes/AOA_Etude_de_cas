_group = {
  {
    group_size = 1,
    pattern = "L",
    opcodes = "MOVSS,",
    offsets = "0,",
    addresses = "0x1796,",
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
    group_size = 2,
    pattern = "LS",
    opcodes = "MOVUPS,MOVUPS,",
    offsets = "0,0,",
    addresses = "0x17b0,0x17c3,",
    stride_status = "Success",
    stride = 16,
    memory_status = "Success",
    accessed_memory = 32,
    accessed_memory_nooverlap = 16,
    accessed_memory_overlap = 16,
    span = 16,
    head = 16,
    unroll_factor = 1,
  },
  {
    group_size = 2,
    pattern = "LL",
    opcodes = "MOVSS,MOVSS,",
    offsets = "0,0,",
    addresses = "0x1790,0x17a0,",
    stride_status = "Iteration not constant",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 8,
    accessed_memory_nooverlap = 4,
    accessed_memory_overlap = 4,
    span = 4,
    head = 0,
    unroll_factor = 2,
  },
  {
    group_size = 1,
    pattern = "L",
    opcodes = "MOVUPS,",
    offsets = "0,",
    addresses = "0x17ac,",
    stride_status = "Success",
    stride = 16,
    memory_status = "Success",
    accessed_memory = 16,
    accessed_memory_nooverlap = 16,
    accessed_memory_overlap = 0,
    span = 16,
    head = 16,
    unroll_factor = 1,
  },
  {
    group_size = 1,
    pattern = "L",
    opcodes = "MOVSS,",
    offsets = "0,",
    addresses = "0x179a,",
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
