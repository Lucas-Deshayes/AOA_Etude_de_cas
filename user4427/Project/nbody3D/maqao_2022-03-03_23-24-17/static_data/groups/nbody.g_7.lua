_group = {
  {
    group_size = 2,
    pattern = "LL",
    opcodes = "VBROADCASTSS,VBROADCASTSS,",
    offsets = "-4,479996,",
    addresses = "0x1f14,0x1f21,",
    stride_status = "Success",
    stride = 4,
    memory_status = "Success",
    accessed_memory = 8,
    accessed_memory_nooverlap = 8,
    accessed_memory_overlap = 0,
    span = 480004,
    head = 8,
    unroll_factor = 2,
  },
  {
    group_size = 1,
    pattern = "L",
    opcodes = "VBROADCASTSS,",
    offsets = "240000,",
    addresses = "0x1f00,",
    stride_status = "Success",
    stride = 4,
    memory_status = "Success",
    accessed_memory = 4,
    accessed_memory_nooverlap = 4,
    accessed_memory_overlap = 0,
    span = 4,
    head = 4,
    unroll_factor = 1,
  },
}
