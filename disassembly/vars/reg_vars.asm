; PPU Picture Processing Unit (Write-Only)
!reg_inidisp = $2100
!reg_obsel = $2101
!reg_oamaddl = $2102
!reg_oamadd = $2103
!reg_oamdata = $2104
!reg_bgmode = $2105
!reg_mosaic = $2106
!reg_bg1sc = $2107
!reg_bg2sc = $2108
!reg_bg3sc = $2109
!reg_bg4sc = $210A
!reg_bg12nba = $210B
!reg_bg34nba = $210C
!reg_bg1hofs = $210D
!reg_bg1vofs = $210E
!reg_bg2hofs = $210F
!reg_bg2vofs = $2110
!reg_bg3hofs = $2111
!reg_bg3vofs = $2112
!reg_bg4hofs = $2113
!reg_bg4vofs = $2114
!reg_vmain = $2115
!reg_vmaddl = $2116
!reg_vmaddh = $2117
!reg_vmdatal = $2118
!reg_vmdata = $2119
!reg_m7sel = $211A
!reg_m7a = $211B
!reg_m7b = $211C
!reg_m7c = $211D
!reg_m7d = $211E
!reg_m7x = $211F
!reg_m7y = $2120
!reg_cgadd = $2121
!reg_cgdata = $2122
!reg_w12sel = $2123
!reg_w34sel = $2124
!reg_wobjsel = $2125
!reg_wh0 = $2126
!reg_wh1 = $2127
!reg_wh2 = $2128
!reg_wh3 = $2129
!reg_wbglog = $212A
!reg_wobjlog = $212B
!reg_tm = $212C
!reg_ts = $212D
!reg_tmw = $212E
!reg_tsw = $212F
!reg_cgwsel = $2130
!reg_cgadsub = $2131
!reg_coldata = $2132
!reg_setini = $2133

; PPU Picture Processing Unit (Read-Only)
!reg_mpyl = $2134
!reg_mpym = $2135
!reg_mpyh = $2136
!reg_slhv = $2137
!reg_rdoam = $2138
!reg_rdvraml = $2139
!reg_rdvram = $213A
!reg_rdcgram = $213B
!reg_ophct = $213C
!reg_opvct = $213D
!reg_stat77 = $213E
!reg_stat78 = $213F

; APU Audio Processing Unit (R/W)
!reg_apuio0 = $2140
!reg_apuio1 = $2141
!reg_apuio2 = $2142
!reg_apuio3 = $2143

; CPU On-Chip I/O Ports (Write-Only)
!reg_nmitimen = $4200
!reg_wrio = $4201
!reg_wrmpya = $4202
!reg_wrmpyb = $4203
!reg_wrdivl = $4204
!reg_wrdivh = $4205
!reg_wrdivb = $4206
!reg_htimel = $4207
!reg_htimeh = $4208
!reg_vtimel = $4209
!reg_vtimeh = $420A
!reg_mdmaen = $420B
!reg_hdmaen = $420C
!reg_memsel = $420D

; CPU On-Chip I/O Ports (Read-Only)
!reg_rdnmi = $4210
!reg_timeup = $4211
!reg_hvbjoy = $4212
!reg_rdio = $4213
!reg_rddivl = $4214
!reg_rddivh = $4215
!reg_rdmpyl = $4216
!reg_rdmpyh = $4217
!reg_joy1l = $4218
!reg_joy1h = $4219
!reg_joy2l = $421A
!reg_joy2h = $421B
!reg_joy3l = $421C
!reg_joy3h = $421D
!reg_joy4l = $421E
!reg_joy4h = $421F

; CPU DMA Channel 0 (R/W)
!reg_dmap0 = $4300
!reg_bbad0 = $4301
!reg_a1t0l = $4302
!reg_a1t0h = $4303
!reg_a1b0 = $4304
!reg_das0l = $4305
!reg_das0h = $4306
!reg_das00 = $4307
!reg_a2a0l = $4308
!reg_a2a0h = $4309
!reg_ntrl0 = $430A
!reg_mirr0 = $430F

; CPU DMA Channel 1 (R/W)
!reg_dmap1 = $4310
!reg_bbad1 = $4311
!reg_a1t1l = $4312
!reg_a1t1h = $4313
!reg_a1b1 = $4314
!reg_das1l = $4315
!reg_das1h = $4316
!reg_das10 = $4317
!reg_a2a1l = $4318
!reg_a2a1h = $4319
!reg_ntrl1 = $431A
!reg_mirr1 = $431F

; CPU DMA Channel 2 (R/W)
!reg_dmap2 = $4320
!reg_bbad2 = $4321
!reg_a1t2l = $4322
!reg_a1t2h = $4323
!reg_a1b2 = $4324
!reg_das2l = $4325
!reg_das2h = $4326
!reg_das20 = $4327
!reg_a2a2l = $4328
!reg_a2a2h = $4329
!reg_ntrl2 = $432A
!reg_mirr2 = $432F

; CPU DMA Channel 3 (R/W)
!reg_dmap3 = $4330
!reg_bbad3 = $4331
!reg_a1t3l = $4332
!reg_a1t3h = $4333
!reg_a1b3 = $4334
!reg_das3l = $4335
!reg_das3h = $4336
!reg_das30 = $4337
!reg_a2a3l = $4338
!reg_a2a3h = $4339
!reg_ntrl3 = $433A
!reg_mirr3 = $433F

; CPU DMA Channel 4 (R/W)
!reg_dmap4 = $4340
!reg_bbad4 = $4341
!reg_a1t4l = $4342
!reg_a1t4h = $4343
!reg_a1b4 = $4344
!reg_das4l = $4345
!reg_das4h = $4346
!reg_das40 = $4347
!reg_a2a4l = $4348
!reg_a2a4h = $4349
!reg_ntrl4 = $434A
!reg_mirr4 = $434F

; CPU DMA Channel 5 (R/W)
!reg_dmap5 = $4350
!reg_bbad5 = $4351
!reg_a1t5l = $4352
!reg_a1t5h = $4353
!reg_a1b5 = $4354
!reg_das5l = $4355
!reg_das5h = $4356
!reg_das50 = $4357
!reg_a2a5l = $4358
!reg_a2a5h = $4359
!reg_ntrl5 = $435A
!reg_mirr5 = $435F

; CPU DMA Channel 6 (R/W)
!reg_dmap6 = $4360
!reg_bbad6 = $4361
!reg_a1t6l = $4362
!reg_a1t6h = $4363
!reg_a1b6 = $4364
!reg_das6l = $4365
!reg_das6h = $4366
!reg_das60 = $4367
!reg_a2a6l = $4368
!reg_a2a6h = $4369
!reg_ntrl6 = $436A
!reg_mirr6 = $436F

; CPU DMA Channel 7 (R/W)
!reg_dmap7 = $4370
!reg_bbad7 = $4371
!reg_a1t7l = $4372
!reg_a1t7h = $4373
!reg_a1b7 = $4374
!reg_das7l = $4375
!reg_das7h = $4376
!reg_das70 = $4377
!reg_a2a7l = $4378
!reg_a2a7h = $4379
!reg_ntrl7 = $437A
!reg_mirr7 = $437F
