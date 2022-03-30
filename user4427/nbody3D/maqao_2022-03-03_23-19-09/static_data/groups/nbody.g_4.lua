_group = {
  {
    group_size = 8,
    pattern = "LSLLSLLS",
    opcodes = "VFMADD213SS,VMOVSS,VMOVSS,VFMADD213SS,VMOVSS,VMOVSS,VFMADD213SS,VMOVSS,",
    offsets = "-24,-24,-8,-20,-20,-4,-16,-16,",
    addresses = "0x16c9,0x16cf,0x16d4,0x16d9,0x16df,0x16e4,0x16e9,0x16ef,",
    stride_status = "Success",
    stride = 24,
    memory_status = "Success",
    accessed_memory = 32,
    accessed_memory_nooverlap = 20,
    accessed_memory_overlap = 12,
    span = 24,
    head = 20,
    unroll_factor = 1,
  },
  {
    group_size = 1,
    pattern = "L",
    opcodes = "VMOVSS,",
    offsets = "12,",
    addresses = "0x16c0,",
    stride_status = "Success",
    stride = 24,
    memory_status = "Success",
    accessed_memory = 4,
    accessed_memory_nooverlap = 4,
    accessed_memory_overlap = 0,
    span = 4,
    head = 0,
    unroll_factor = 1,
  },
}