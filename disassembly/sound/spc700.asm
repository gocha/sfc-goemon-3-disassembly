; SPC700 disassembly of Ganbare Goemon 3 - Shishijuurokubei no Karakuri Manjigatame
; Based on loveemu's disassembly, with further analysis and adjustments.
; Formatted and adapted for the Asar assembler.

; Asar setup for standalone SPC700 assembly.
; In the actual ROM, the code is stored in compressed form.
lorom
org $808000
arch 65816

; Code starts at $0200.
; The startup area is later reused for RAM variables.
arch spc700
base $0200

start:
  clrp                                      ; $0200 |
  mov   x,#$ff                              ; $0201 |
  mov   sp,x                                ; $0203 |
  mov   $f1,#$30                            ; $0204 | clear ports
  mov   a,#$00                              ; $0207 |
  mov   x,a                                 ; $0209 |

loc_020a:
  mov   (x+),a                              ; $020a | clear direct page $00-$ef
  cmp   x,#$f0                              ; $020b |
  bne   loc_020a                            ; $020d |
  mov   y,#$00                              ; $020f |
  mov   $04,#$00                            ; $0211 |
  mov   $05,#$01                            ; $0214 |

loc_0217:
  mov   ($04)+y,a                           ; $0217 |
  inc   y                                   ; $0219 |
  cmp   y,#$e0                              ; $021a |
  bne   loc_0217                            ; $021c |
  mov   a,#$00                              ; $021e |
  mov   $f2,#$7d                            ; $0220 |
  mov   $f3,a                               ; $0223 | EDL - echo delay = 0
  mov   $f2,#$6d                            ; $0225 |
  mov   $f3,a                               ; $0228 | FLG - enable echo
  set5  $13                                 ; $022a |
  mov   $19,#$4b                            ; $022c |
  mov   $f2,#$2c                            ; $022f |
  mov   $f3,a                               ; $0232 | EVOL(L) - echo volume (L) = 0
  mov   $f2,#$3c                            ; $0234 |
  mov   $f3,a                               ; $0237 | EVOL(R) - echo volume (R) = 0
  mov   $f2,#$0d                            ; $0239 |
  mov   $f3,a                               ; $023c | EFB - echo feedback = 0
  mov   y,#$71                              ; $023e |

loc_0240:
  mov   a,#$00                              ; $0240 |
  mov   $f2,y                               ; $0242 |
  mov   $f3,#$00                            ; $0244 | VOL(R) - voice volume (R) = 0
  dec   y                                   ; $0247 |
  mov   $f2,y                               ; $0248 |
  mov   $f3,#$00                            ; $024a | VOL(L) - voice volume (L) = 0
  mov   a,y                                 ; $024d |
  setc                                      ; $024e |
  sbc   a,#$0f                              ; $024f |
  mov   y,a                                 ; $0251 |
  bpl   loc_0240                            ; $0252 |
  mov   $f2,#$5c                            ; $0254 |
  mov   $f3,#$ff                            ; $0257 | KOF - key off voices
  mov   a,#$7f                              ; $025a |
  mov   $f2,#$0c                            ; $025c |
  mov   $f3,a                               ; $025f | MVOL(L) - master volume (L) = $7f
  mov   $f2,#$1c                            ; $0261 |
  mov   $f3,a                               ; $0264 | MVOL(R) - master volume (R) = $7f
  mov   $f2,#$5d                            ; $0266 |
  mov   $f3,#$04                            ; $0269 | DIR - sample dir = $0400
  mov   $fa,#$20                            ; $026c | set timer 0 frequency (4 ms)
  mov   $f1,#$01                            ; $026f | start timer 0
  jmp   main                                ; $0272 |

  fillbyte 0
  fill $0300-pc()                           ; $0275 |

pitch_table:
  dw $0042,$0046,$004b,$004f                ; $0300 | [0x00-0x03]
  dw $0054,$0059,$005e,$0064                ; $0308 | [0x04-0x07]
  dw $006a,$0070,$0077,$007e                ; $0310 | [0x08-0x0b]
  dw $0085,$008d,$0096,$009f                ; $0318 | [0x0c-0x0f]
  dw $00a8,$00b2,$00bd,$00c8                ; $0320 | [0x10-0x13]
  dw $00d4,$00e1,$00ee,$00fc                ; $0328 | [0x14-0x17]
  dw $010b,$011b,$012c,$013e                ; $0330 | [0x18-0x1b]
  dw $0151,$0165,$017a,$0191                ; $0338 | [0x1c-0x1f]
  dw $01a9,$01c2,$01dd,$01f9                ; $0340 | [0x20-0x23]
  dw $0217,$0237,$0259,$027d                ; $0348 | [0x24-0x27]
  dw $02a3,$02cb,$02f5,$0322                ; $0350 | [0x28-0x2b]
  dw $0352,$0385,$03ba,$03f3                ; $0358 | [0x2c-0x2f]
  dw $042f,$046f,$04b2,$04fa                ; $0360 | [0x30-0x33]
  dw $0546,$0596,$05eb,$0645                ; $0368 | [0x34-0x37]
  dw $06a5,$070a,$0775,$07e6                ; $0370 | [0x38-0x3b]
  dw $085f,$08de,$0965,$09f4                ; $0378 | [0x3c-0x3f]
  dw $0a8c,$0b2c,$0bd6,$0c8b                ; $0380 | [0x40-0x43]
  dw $0d4a,$0e14,$0eea,$0fcd                ; $0388 | [0x44-0x47]
  dw $10be,$11bd,$12cb,$13e9                ; $0390 | [0x48-0x4b]
  dw $1518,$1659,$17ad,$1916                ; $0398 | [0x4c-0x4f]
  dw $1a94,$1c28,$1dd5,$1f9b                ; $03a0 | [0x50-0x53]
  dw $217c,$237a,$2596,$27d2                ; $03a8 | [0x54-0x57]
  dw $2a30,$2cb2,$2f5a,$322c                ; $03b0 | [0x58-0x5b]
  dw $3528,$3850,$3bac,$3f36                ; $03b8 | [0x5c-0x5f]

data_03c0:
  dw $000b,$000c,$000d,$000e                ; $03c0 |
  dw $000e,$000f,$0010,$0010                ; $03c8 |
  dw $0012,$0013,$0014,$0015                ; $03d0 |
  dw $0016,$0018,$0019,$001b                ; $03d8 |
  dw $001c,$001e,$0020,$0021                ; $03e0 |
  dw $0023,$0026,$0028,$002a                ; $03e8 |
  dw $002d,$002f,$0032,$0035                ; $03f0 |
  dw $0038,$003c,$003f,$0042                ; $03f8 |

sample_dir:
  dw $5300,$5348                            ; $0400 | sample $00
  dw $5387,$53bd                            ; $0404 | sample $01
  dw $53fc,$5405                            ; $0408 | sample $02
  dw $540e,$5417                            ; $040c | sample $03
  dw $5420,$5429                            ; $0410 | sample $04
  dw $5432,$543b                            ; $0414 | sample $05
  dw $5444,$544d                            ; $0418 | sample $06
  dw $5456,$545f                            ; $041c | sample $07
  dw $5468,$5471                            ; $0420 | sample $08
  dw $5483,$548c                            ; $0424 | sample $09
  dw $549e,$54b9                            ; $0428 | sample $0a
  dw $54c2,$54dd                            ; $042c | sample $0b
  dw $54f8,$5513                            ; $0430 | sample $0c
  dw $5525,$5540                            ; $0434 | sample $0d
  dw $5564,$557f                            ; $0438 | sample $0e
  dw $55ac,$55c7                            ; $043c | sample $0f
  dw $55d0,$55eb                            ; $0440 | sample $10
  dw $562a,$563c                            ; $0444 | sample $11
  dw $5672,$568d                            ; $0448 | sample $12
  dw $56a8,$56ba                            ; $044c | sample $13
  dw $56d5,$56f0                            ; $0450 | sample $14
  dw $570b,$5726                            ; $0454 | sample $15
  dw $572f,$574a                            ; $0458 | sample $16
  dw $5765,$5780                            ; $045c | sample $17
  dw $579b,$5c75                            ; $0460 | sample $18
  dw $5c90,$5f84                            ; $0464 | sample $19
  dw $600b,$651b                            ; $0468 | sample $1a
  dw $655a,$670a                            ; $046c | sample $1b
  dw $6725,$6fb9                            ; $0470 | sample $1c
  dw $6fe6,$7a18                            ; $0474 | sample $1d
  dw $7a57,$80ab                            ; $0478 | sample $1e
  dw $838d,$88dc                            ; $047c | sample $1f
  dw $891b,$93d4                            ; $0480 | sample $20
  dw $97c4,$9c83                            ; $0484 | sample $21
  dw $9cd4,$9fa4                            ; $0488 | sample $22
  dw $9fa4,$a7f0                            ; $048c | sample $23
  dw $a9fa,$aca6                            ; $0490 | sample $24
  dw $aca6,$b0e7                            ; $0494 | sample $25
  dw $b687,$bc03                            ; $0498 | sample $26
  dw $c071,$c39b                            ; $049c | sample $27
  dw $c39b,$cd6a                            ; $04a0 | sample $28
  dw $cd6a,$d01f                            ; $04a4 | sample $29
  dw $db3b,$e2d3                            ; $04a8 | sample $2a
  dw $e2d3,$e588                            ; $04ac | sample $2b
  dw $e696,$ea1a                            ; $04b0 | sample $2c
  dw $f3d7,$f776                            ; $04b4 | sample $2d
  dw $f884,$fc23                            ; $04b8 | sample $2e
  dw $c39b,$c67d                            ; $04bc | sample $2f
  dw $c67d,$d301                            ; $04c0 | sample $30
  dw $e3d8,$e540                            ; $04c4 | sample $31
  dw $e9d2,$e9e4                            ; $04c8 | sample $32
  dw $c39b,$cad9                            ; $04cc | sample $33
  dw $ccad,$e2a6                            ; $04d0 | sample $34
  dw $e2a6,$e873                            ; $04d4 | sample $35
  dw $c39b,$c3ad                            ; $04d8 | sample $36
  dw $d352,$d9b8                            ; $04dc | sample $37
  dw $d9b8,$dc76                            ; $04e0 | sample $38
  dw $dc76,$ddb1                            ; $04e4 | sample $39
  dw $e135,$ea62                            ; $04e8 | sample $3a
  dw $f48b,$f71c                            ; $04ec | sample $3b
  dw $f737,$fb27                            ; $04f0 | sample $3c
  dw $fb54,$fefc                            ; $04f4 | sample $3d
  dw $c39b,$c779                            ; $04f8 | sample $3e
  dw $ce5d,$d8ce                            ; $04fc | sample $3f
  dw $d8ce,$dc52                            ; $0500 | sample $40
  dw $e228,$e3cf                            ; $0504 | sample $41
  dw $ec1b,$ee37                            ; $0508 | sample $42
  dw $f32c,$f494                            ; $050c | sample $43
  dw $c39b,$c6e0                            ; $0510 | sample $44
  dw $c6e0,$cb0f                            ; $0514 | sample $45
  dw $cc2f,$cf3e                            ; $0518 | sample $46
  dw $cf3e,$d3c7                            ; $051c | sample $47
  dw $d3c7,$d9f7                            ; $0520 | sample $48
  dw $da5a,$dcac                            ; $0524 | sample $49
  dw $e0c9,$e64e                            ; $0528 | sample $4a
  dw $e6c3,$f65f                            ; $052c | sample $4b
  dw $f833,$fefc                            ; $0530 | sample $4c
  dw $c39b,$c3ad                            ; $0534 | sample $4d
  dw $d352,$dec8                            ; $0538 | sample $4e
  dw $e363,$f8c3                            ; $053c | sample $4f
  dw $c39b,$cd6a                            ; $0540 | sample $50
  dw $cd6a,$d766                            ; $0544 | sample $51
  dw $dabd,$deec                            ; $0548 | sample $52
  dw $e00c,$e2c1                            ; $054c | sample $53
  dw $e3cf,$e76e                            ; $0550 | sample $54
  dw $e834,$ebd3                            ; $0554 | sample $55
  dw $c39b,$dd2a                            ; $0558 | sample $56
  dw $dd2a,$e927                            ; $055c | sample $57
  dw $e927,$ec09                            ; $0560 | sample $58
  dw $ec09,$f605                            ; $0564 | sample $59
  dw $f95c,$fd8b                            ; $0568 | sample $5a
  dw $3f00,$4900                            ; $056c | sample $5b (dynamic)
  dw $4900,$5300                            ; $0570 | sample $5c (dynamic)

  dw $0c9f                                  ; $0574 |
  dw $0fed                                  ; $0576 |
  dw $0bb5                                  ; $0578 |
  dw $0a56                                  ; $057a |
  dw $0add                                  ; $057c |
  dw $0ba3                                  ; $057e |
  dw $0c9f                                  ; $0580 |
  dw $0c9f                                  ; $0582 |

  db                 $90,$00,$90,$00,$e9,$07,$4b,$06,$95,$01,$36,$09 ; $0584 |
  db $59,$07,$00,$09,$20,$01,$cc,$03,$0c,$06,$9c,$06,$19,$05,$12,$00 ; $0590 |
  db $59,$07,$59,$07,$17,$01,$17,$01,$98,$07,$49,$02,$99,$09,$92,$04 ; $05a0 |
  db $bd,$00,$98,$07,$12,$00,$33,$03,$e4,$06,$5e,$08,$9c,$06,$24,$00 ; $05b0 |
  db $22,$05,$87,$09,$cc,$03,$cc,$03,$d2,$06,$44,$01,$95,$01,$e9,$07 ; $05c0 |
  db $98,$07,$d2,$06,$1f,$08,$12,$00,$1f,$08,$49,$02,$49,$02,$0c,$06 ; $05d0 |
  db $33,$03,$92,$04,$9c,$06,$f3,$09,$e1,$09,$5f,$01,$e1,$09,$f3,$09 ; $05e0 |
  db $f2,$07,$09,$00,$09,$00,$e9,$07,$f3,$09,$0c,$06,$4b,$06,$24,$00 ; $05f0 |
  db $47,$07,$41,$04,$5e,$08,$00,$00,$8f,$e0,$14,$00,$00,$00,$8f,$e0 ; $0600 |
  db $14,$00,$00,$00,$8f,$e0,$14,$00,$00,$00,$8f,$e0,$14,$00,$00,$00 ; $0610 |
  db $8f,$e0,$14,$00,$00,$00,$8f,$e0,$14,$00,$00,$00,$8f,$e0,$14,$00 ; $0620 |
  db $00,$00,$8f,$e0,$14,$00,$00,$00,$8f,$e0,$14,$00,$00,$00,$8f,$e0 ; $0630 |
  db $14,$00,$00,$00,$8f,$e0,$14,$00,$00,$00,$8f,$e0,$14,$00,$00,$00 ; $0640 |
  db $8f,$e0,$14,$00,$00,$00,$8f,$e0,$14,$00,$00,$00,$8f,$e0,$14,$00 ; $0650 |
  db $00,$00,$8f,$e0,$14,$00,$00,$00,$8f,$e0,$14,$00,$00,$00,$8f,$e0 ; $0660 |
  db $14,$00,$00,$00,$8f,$e0,$14,$00,$00,$00,$8f,$e0,$14,$00,$00,$00 ; $0670 |
  db $8f,$e0,$14,$00,$00,$00,$8f,$e0,$14,$00,$00,$00,$8f,$e0,$14,$00 ; $0680 |
  db $00,$00,$8f,$e0,$14,$00,$00,$00,$8f,$e0,$14,$00,$00,$00,$8f,$e0 ; $0690 |
  db $14,$00,$02,$80,$8f,$e0,$14,$00,$00,$00,$8f,$e0,$14,$00,$00,$00 ; $06a0 |
  db $8f,$e0,$14,$00,$00,$00,$8f,$e0,$14,$00,$00,$00,$8f,$e0,$14,$00 ; $06b0 |
  db $02,$80,$8f,$e0,$14,$00,$00,$00,$8f,$e0,$14,$00,$00,$00,$8f,$e0 ; $06c0 |
  db $14,$00,$00,$00,$8f,$e0,$14,$00,$00,$00,$8f,$e0,$14,$00,$00,$00 ; $06d0 |
  db $8f,$e0,$14,$00,$00,$00,$8f,$e0,$14,$00,$00,$00,$8f,$e0,$14,$00 ; $06e0 |
  db $00,$00,$8f,$e0,$14,$00,$00,$00,$8f,$e0,$14,$00,$00,$00,$8f,$e0 ; $06f0 |
  db $14,$00,$04,$00,$8f,$e0,$14,$00,$00,$00,$8f,$e0,$14,$00,$00,$00 ; $0700 |
  db $8f,$e0,$14,$00,$00,$00,$8f,$e0,$14,$00,$02,$80,$8f,$e0,$14,$00 ; $0710 |
  db $04,$00,$8f,$e0,$14,$00,$00,$00,$8f,$e0,$14,$00,$00,$00,$8f,$e0 ; $0720 |
  db $14,$00,$00,$00,$8f,$e0,$14,$00,$00,$00,$8f,$e0,$14,$00,$00,$00 ; $0730 |
  db $8f,$e0,$14,$00,$00,$00,$8f,$e0,$14,$00,$00,$00,$8f,$e0,$14,$00 ; $0740 |
  db $00,$00,$8f,$e0,$14,$00,$00,$00,$8f,$e0,$14,$00,$00,$00,$8f,$e0 ; $0750 |
  db $14,$00,$00,$00,$8f,$e0,$14,$00,$00,$00,$8f,$e0,$14,$00,$00,$00 ; $0760 |
  db $8f,$e0,$14,$00,$00,$00,$8f,$e0,$14,$00,$00,$00,$8f,$e0,$14,$00 ; $0770 |
  db $00,$00,$8f,$e0,$14,$00,$00,$00,$8f,$e0,$14,$00,$00,$00,$8f,$e0 ; $0780 |
  db $14,$00,$00,$00,$8f,$e0,$14,$00,$00,$00,$8f,$e0,$14,$00,$00,$00 ; $0790 |
  db $8f,$e0,$14,$00,$00,$00,$8f,$e0,$14,$00,$00,$00,$8f,$e0,$14,$00 ; $07a0 |
  db $00,$00,$8f,$e0,$14,$00,$00,$00,$8f,$e0,$14,$00                 ; $07b0 |

ptr16_07bc:
  dw $08e6                                                           ; $07bc | [0]
  dw $0917                                                           ; $07be | [1]
  dw $0933                                                           ; $07c0 | [2]
  dw $0948                                                           ; $07c2 | [3]
  dw $0980                                                           ; $07c4 | [4]
  dw $09aa                                                           ; $07c6 | [5]
  dw $09e9                                                           ; $07c8 | [6]
  dw $09fe                                                           ; $07ca | [7]
  dw $0a28                                                           ; $07cc | [8]

data_07ce:
  db $00,$16,$b2,$8f,$e0,$14,$00                                     ; $07ce | instrument $00
  db $01,$0a,$b0,$8f,$e0,$14,$00                                     ; $07d5 | instrument $01
  db $02,$00,$00,$8f,$e0,$14,$00                                     ; $07dc | instrument $02
  db $03,$00,$00,$8f,$e0,$14,$00                                     ; $07e3 | instrument $03
  db $04,$00,$00,$8f,$e0,$14,$00                                     ; $07ea | instrument $04
  db $05,$00,$00,$8f,$e0,$14,$00                                     ; $07f1 | instrument $05
  db $06,$00,$00,$8f,$e0,$14,$00                                     ; $07f8 | instrument $06
  db $07,$00,$00,$8f,$e0,$14,$00                                     ; $07ff | instrument $07
  db $08,$00,$00,$8f,$e0,$14,$00                                     ; $0806 | instrument $08
  db $09,$00,$00,$8f,$e0,$14,$00                                     ; $080d | instrument $09
  db $0a,$00,$01,$8f,$e0,$14,$00                                     ; $0814 | instrument $0a
  db $0b,$13,$02,$8f,$e0,$14,$00                                     ; $081b | instrument $0b
  db $0c,$00,$23,$8f,$e0,$14,$00                                     ; $0822 | instrument $0c
  db $0d,$0c,$14,$8f,$e0,$14,$00                                     ; $0829 | instrument $0d
  db $0e,$09,$df,$8f,$e0,$14,$00                                     ; $0830 | instrument $0e
  db $0f,$07,$07,$8f,$e0,$14,$00                                     ; $0837 | instrument $0f
  db $10,$22,$a3,$8f,$e0,$14,$00                                     ; $083e | instrument $10
  db $11,$13,$07,$8f,$e0,$14,$00                                     ; $0845 | instrument $11
  db $12,$07,$fb,$8f,$e0,$14,$00                                     ; $084c | instrument $12
  db $13,$07,$02,$8f,$e0,$14,$00                                     ; $0853 | instrument $13
  db $14,$07,$00,$8f,$e0,$14,$00                                     ; $085a | instrument $14
  db $15,$00,$00,$8f,$e0,$14,$00                                     ; $0861 | instrument $15
  db $16,$07,$fd,$8f,$e0,$14,$00                                     ; $0868 | instrument $16
  db $17,$13,$05,$8f,$e0,$14,$00                                     ; $086f | instrument $17
  db $18,$13,$00,$8f,$e0,$14,$00                                     ; $0876 | instrument $18
  db $19,$17,$e0,$8f,$e0,$14,$00                                     ; $087d | instrument $19
  db $1a,$16,$ac,$8f,$e0,$14,$00                                     ; $0884 | instrument $1a
  db $1b,$07,$fd,$8f,$e0,$14,$00                                     ; $088b | instrument $1b
  db $1c,$10,$d4,$8f,$f1,$14,$00                                     ; $0892 | instrument $1c
  db $1d,$16,$ad,$8f,$e0,$14,$00                                     ; $0899 | instrument $1d
  db $1e,$05,$83,$8f,$f1,$14,$00                                     ; $08a0 | instrument $1e
  db $1f,$16,$af,$8f,$f1,$14,$00                                     ; $08a7 | instrument $1f
  db $20,$07,$00,$8f,$11,$14,$00                                     ; $08ae | instrument $20
  db $21,$09,$06,$df,$d6,$1a,$00                                     ; $08b5 | instrument $21
  db $22,$00,$00,$8f,$e0,$12,$00                                     ; $08bc | instrument $22
  db $23,$04,$00,$8f,$f2,$14,$00                                     ; $08c3 | instrument $23
  db $24,$00,$00,$8f,$e0,$14,$00                                     ; $08ca | instrument $24
  db $25,$00,$00,$8f,$e0,$14,$00                                     ; $08d1 | instrument $25
  db $26,$00,$00,$8f,$f0,$14,$00                                     ; $08d8 | instrument $26
  db $27,$00,$00,$8f,$e0,$14,$00                                     ; $08df | instrument $27

data_08e6:
  db $28,$03,$00,$8f,$e0,$14,$00                                     ; $08e6 |
  db $29,$12,$4f,$8f,$e0,$14,$00                                     ; $08ed |
  db $2a,$02,$80,$8f,$e0,$14,$00                                     ; $08f4 |
  db $2b,$23,$00,$8f,$e0,$14,$00                                     ; $08fb |
  db $2c,$12,$20,$8f,$e0,$14,$00                                     ; $0902 |
  db $2d,$06,$00,$8f,$f9,$14,$00                                     ; $0909 |
  db $2e,$06,$00,$8f,$f9,$14,$00                                     ; $0910 |

data_0917:
  db $2f,$f3,$00,$8f,$e0,$14,$00                                     ; $0917 |
  db $30,$06,$5e,$8f,$e0,$14,$00                                     ; $091e |
  db $31,$06,$00,$8f,$f8,$14,$00                                     ; $0925 |
  db $32,$0b,$39,$8f,$e0,$14,$00                                     ; $092c |

data_0933:
  db $33,$0e,$51,$bf,$12,$14,$00                                     ; $0933 |
  db $34,$00,$00,$8f,$e0,$14,$00                                     ; $093a |
  db $35,$fc,$00,$8f,$e0,$14,$00                                     ; $0941 |

data_0948:
  db $36,$0b,$39,$8f,$e0,$14,$00                                     ; $0948 |
  db $37,$00,$00,$8f,$e0,$0e,$00                                     ; $094f |
  db $38,$00,$00,$8f,$e0,$14,$00                                     ; $0956 |
  db $39,$05,$00,$8f,$ef,$14,$00                                     ; $095d |
  db $3a,$12,$2f,$8f,$e0,$14,$00                                     ; $0964 |
  db $3b,$13,$fd,$8f,$e0,$14,$00                                     ; $096b |
  db $3c,$15,$d2,$8f,$f3,$14,$00                                     ; $0972 |
  db $3d,$13,$fc,$8f,$f3,$14,$00                                     ; $0979 |

data_0980:
  db $3e,$15,$32,$8f,$e0,$14,$00                                     ; $0980 |
  db $3f,$15,$00,$9f,$f0,$14,$00                                     ; $0987 |
  db $40,$13,$00,$8f,$e0,$14,$00                                     ; $098e |
  db $41,$00,$00,$8f,$f3,$14,$00                                     ; $0995 |
  db $42,$09,$17,$8f,$e0,$14,$00                                     ; $099c |
  db $43,$06,$00,$8f,$f8,$14,$00                                     ; $09a3 |

data_09aa:
  db $44,$06,$ce,$8f,$e0,$14,$00                                     ; $09aa |
  db $45,$06,$00,$8f,$f6,$14,$00                                     ; $09b1 |
  db $46,$fb,$00,$8f,$e0,$14,$00                                     ; $09b8 |
  db $47,$06,$00,$8f,$e0,$14,$00                                     ; $09bf |
  db $48,$06,$00,$8f,$f4,$14,$00                                     ; $09c6 |
  db $49,$08,$69,$8f,$f2,$14,$00                                     ; $09cd |
  db $4a,$14,$5c,$8f,$e0,$14,$00                                     ; $09d4 |
  db $4b,$06,$59,$8f,$e0,$14,$00                                     ; $09db |
  db $4c,$16,$b0,$8f,$e0,$14,$00                                     ; $09e2 |

data_09e9:
  db $4d,$0b,$39,$8f,$e0,$14,$00                                     ; $09e9 |
  db $4e,$00,$00,$8f,$e0,$14,$00                                     ; $09f0 |
  db $4f,$00,$00,$8f,$e0,$14,$00                                     ; $09f7 |

data_09fe:
  db $50,$03,$00,$8f,$e0,$14,$00                                     ; $09fe |
  db $51,$06,$00,$8f,$f1,$14,$00                                     ; $0a05 |
  db $52,$06,$00,$8f,$f6,$14,$00                                     ; $0a0c |
  db $53,$23,$00,$8f,$e0,$14,$00                                     ; $0a13 |
  db $54,$06,$00,$8f,$f9,$14,$00                                     ; $0a1a |
  db $55,$06,$00,$8f,$f9,$14,$00                                     ; $0a21 |

data_0a28:
  db $56,$00,$00,$8f,$e0,$14,$00                                     ; $0a28 |
  db $57,$00,$00,$8f,$e0,$14,$00                                     ; $0a2f |
  db $58,$f3,$00,$8f,$e0,$14,$00                                     ; $0a36 |
  db $59,$06,$00,$8f,$f1,$14,$00                                     ; $0a3d |
  db $5a,$06,$00,$8f,$f6,$14,$00                                     ; $0a44 |

data_0a4b:
  db $20,$07,$00,$8f,$11,$14,$00                                     ; $0a4b |
  db $23,$04,$00,$8f,$f2,$14,$00                                     ; $0a52 |
  db $23,$08,$00,$8f,$f1,$18,$00                                     ; $0a59 |
  db $23,$06,$00,$8f,$f0,$16,$00                                     ; $0a60 |
  db $23,$02,$00,$8f,$f0,$12,$00                                     ; $0a67 |
  db $23,$00,$00,$8f,$f0,$10,$00                                     ; $0a6e |
  db $2c,$0d,$20,$0a,$c1,$1f,$0a                                     ; $0a75 |

  db                                                 $fa,$1f,$0a,$ae ; $0a7c |
  db $1f,$3f,$85,$1f,$2c,$d4,$1f,$3f,$61,$20,$2c,$55,$1f,$0a,$00,$00 ; $0a80 |
  db $15,$b5,$20,$07,$d1,$20,$0a,$0c,$21,$04,$1f,$21,$0a,$58,$21,$0a ; $0a90 |
  db $6a,$21,$0a,$c1,$21,$07,$d4,$21,$0a,$8d,$22,$0a,$30,$21,$06,$e0 ; $0aa0 |
  db $22,$0a,$f4,$22,$2a,$3a,$22,$08,$1f,$23,$08,$34,$23,$06,$58,$23 ; $0ab0 |
  db $06,$6a,$23,$2c,$ec,$21,$0a,$41,$21,$0a,$81,$21,$0a,$ed,$20,$0a ; $0ac0 |
  db $07,$23,$03,$c1,$22,$06,$7c,$23,$0a,$ca,$24,$21,$4c,$25,$2a,$96 ; $0ad0 |
  db $24,$06,$9b,$25,$2a,$b1,$25,$0a,$e9,$23,$0a,$40,$25,$0a,$ef,$24 ; $0ae0 |
  db $0a,$08,$25,$0a,$9d,$23,$09,$2b,$24,$05,$1b,$25,$05,$db,$25,$06 ; $0af0 |
  db $2e,$25,$0a,$8b,$23,$2b,$b7,$23,$0a,$77,$24,$2a,$41,$24,$2a,$f8 ; $0b00 |
  db $25,$09,$4f,$26,$0a,$63,$26,$09,$7b,$26,$05,$9d,$26,$0a,$b4,$26 ; $0b10 |
  db $1f,$d8,$26,$0a,$e8,$26,$0a,$f8,$26,$0a,$48,$28,$0a,$0c,$27,$0a ; $0b20 |
  db $1c,$27,$0a,$32,$27,$0a,$59,$27,$06,$96,$27,$06,$b3,$27,$0a,$bf ; $0b30 |
  db $27,$0a,$dd,$27,$0b,$f4,$27,$0a,$07,$28,$0b,$21,$28,$0b,$34,$28 ; $0b40 |
  db $02,$94,$2d,$01,$6d,$31,$02,$fa,$2d,$01,$ad,$31,$02,$c7,$2d,$01 ; $0b50 |
  db $8d,$31,$05,$cc,$2c,$05,$dd,$2c,$05,$ef,$2c,$05,$ec,$2f,$08,$93 ; $0b60 |
  db $30,$0a,$07,$2b,$2c,$a2,$32,$08,$b8,$30,$09,$11,$2c,$07,$9e,$2e ; $0b70 |
  db $06,$db,$2e,$07,$99,$2a,$0b,$c0,$31,$0c,$d8,$31,$2a,$1a,$32,$07 ; $0b80 |
  db $3c,$2f,$07,$c4,$29,$27,$26,$31,$07,$53,$2f,$0a,$45,$2c,$08,$6a ; $0b90 |
  db $2f,$08,$7d,$2f,$05,$60,$2e,$08,$b5,$2f,$01,$41,$2e,$01,$15,$2d ; $0ba0 |
  db $0a,$66,$28,$2a,$52,$2b,$2a,$5e,$2c,$0c,$f6,$2e,$0a,$57,$2a,$2a ; $0bb0 |
  db $4e,$29,$0a,$72,$2d,$2c,$9d,$2c,$2c,$78,$32,$2c,$f9,$30,$0a,$4a ; $0bc0 |
  db $32,$34,$db,$29,$0a,$5c,$2d,$05,$78,$2e,$05,$8a,$2e,$06,$2c,$29 ; $0bd0 |
  db $06,$01,$2d,$0a,$b4,$2a,$07,$e1,$2a,$07,$b0,$2e,$0a,$fd,$28,$02 ; $0be0 |
  db $bf,$2b,$08,$0e,$29,$09,$d6,$2b,$2a,$94,$29,$0a,$42,$31,$0a,$ca ; $0bf0 |
  db $30,$08,$2d,$2e,$0a,$7f,$30,$0b,$a4,$2b,$0b,$36,$2d,$0a,$c2,$28 ; $0c00 |
  db $0a,$7f,$2a,$0a,$3e,$29,$0a,$1b,$30,$0a,$32,$30,$0a,$f8,$2b,$2a ; $0c10 |
  db $45,$30,$02,$da,$2a,$3e,$58,$28,$1e,$00,$00,$1e,$00,$00,$3f,$8e ; $0c20 |
  db $28,$10,$00,$00,$00,$00,$00,$06,$06,$00,$00,$02,$00,$00,$00,$08 ; $0c30 |
  db $08,$04,$04,$06,$00,$02,$02,$00,$00,$00,$02,$02,$02,$06,$06,$0a ; $0c40 |
  db $0a,$0a,$0a,$00,$02,$02,$00,$06,$06,$06,$06,$0a,$00,$00,$02,$02 ; $0c50 |
  db $00,$00,$00,$00,$00,$00,$00,$0a,$00,$00,$06,$06,$02,$02,$0c,$02 ; $0c60 |
  db $02,$02,$0e,$00,$0c,$00,$00,$00,$10,$10,$0c,$02,$06,$00,$0e,$10 ; $0c70 |
  db $00,$01,$04,$0c,$9b,$c3,$9b,$c3,$9b,$c3,$9b,$c3,$9b,$c3,$9b,$c3 ; $0c80 |
  db $9b,$c3,$9b,$c3,$9b,$c3,$9b,$c3,$9b,$c3,$9b,$c3,$9b,$c3,$9b,$c3 ; $0c90 |

  dw $3500                                  ; $0ca0 |

ptr16_0ca2:
  dw sub_0cb8                               ; $0ca2 | e5
  dw sub_0cc3                               ; $0ca4 | e6
  dw sub_0cd0                               ; $0ca6 | e7
  dw sub_0cdd                               ; $0ca8 | e8
  dw sub_0ceb                               ; $0caa | e9
  dw sub_0cee                               ; $0cac | ea
  dw sub_0d55                               ; $0cae | eb
  dw sub_0d55                               ; $0cb0 | ec
  dw sub_0d55                               ; $0cb2 | ed
  dw sub_0cf1                               ; $0cb4 | ee
  dw sub_0d1b                               ; $0cb6 | ef

sub_0cb8:
  mov   a,$2c                               ; $0cb8 |
  bne   locret_0cc2                         ; $0cba |
  mov   $2c,#$04                            ; $0cbc |
  mov   $2d,#$08                            ; $0cbf |

locret_0cc2:
  ret                                       ; $0cc2 |

sub_0cc3:
  mov   a,$2c                               ; $0cc3 |
  beq   locret_0cc2                         ; $0cc5 |
  cmp   $2d,#$ff                            ; $0cc7 |
  beq   locret_0cc2                         ; $0cca |
  mov   $2d,#$ff                            ; $0ccc |
  ret                                       ; $0ccf |

sub_0cd0:
  mov   $10,#$3f                            ; $0cd0 |
  mov   $0e,#$00                            ; $0cd3 |
  set1  $1f                                 ; $0cd6 |
  mov   a,#$4c                              ; $0cd8 |
  jmp   code_0ed7                           ; $0cda |

sub_0cdd:
  clr1  $1f                                 ; $0cdd |
  mov   a,$0f                               ; $0cdf |
  cmp   $d0,#$95                            ; $0ce1 |
  bcs   loc_0ce8                            ; $0ce4 |
  and   a,#$3f                              ; $0ce6 |

loc_0ce8:
  mov   $0e,a                               ; $0ce8 |
  ret                                       ; $0cea |

sub_0ceb:
  set0  $1f                                 ; $0ceb |
  ret                                       ; $0ced |

sub_0cee:
  clr0  $1f                                 ; $0cee |
  ret                                       ; $0cf0 |

sub_0cf1:
  call  sub_1ad1                            ; $0cf1 |

sub_0cf4:
  mov   $1c,#$00                            ; $0cf4 |
  clr2  $1f                                 ; $0cf7 |
  mov   $04,#$00                            ; $0cf9 |
  mov   $05,#$80                            ; $0cfc |
  mov   y,#$10                              ; $0cff |

loc_0d01:
  mov   a,$018f+y                           ; $0d01 |
  and   a,#$01                              ; $0d04 |
  bne   loc_0d11                            ; $0d06 |
  or    ($04),($05)                         ; $0d08 |
  mov   $00ce+y,a                           ; $0d0b |
  mov   $018e+y,a                           ; $0d0e |

loc_0d11:
  lsr   $05                                 ; $0d11 |
  dec   y                                   ; $0d13 |
  dbnz  y,loc_0d01                          ; $0d14 |
  mov   a,$04                               ; $0d16 |
  jmp   code_100d                           ; $0d18 |

sub_0d1b:
  mov   $26,#$00                            ; $0d1b |
  clr7  $1f                                 ; $0d1e |
  mov   $f1,#$00                            ; $0d20 |
  mov   $fa,#$20                            ; $0d23 |
  mov   $f1,#$01                            ; $0d26 |
  mov   a,#$7f                              ; $0d29 |
  mov   $f2,#$0c                            ; $0d2b |
  mov   $f3,a                               ; $0d2e | MVOL(L)
  mov   $f2,#$1c                            ; $0d30 |
  mov   $f3,a                               ; $0d33 | MVOL(R)

sub_0d35:
  call  sub_1ad1                            ; $0d35 |
  mov   a,#$00                              ; $0d38 |
  mov   $1c,a                               ; $0d3a |
  mov   $2a,a                               ; $0d3c |
  clr2  $1f                                 ; $0d3e |
  clr1  $1f                                 ; $0d40 |
  mov   y,#$10                              ; $0d42 |

loc_0d44:
  mov   $00ce+y,a                           ; $0d44 |
  mov   $019f+y,a                           ; $0d47 |
  mov   $018e+y,a                           ; $0d4a |
  dec   y                                   ; $0d4d |
  dbnz  y,loc_0d44                          ; $0d4e |
  mov   a,#$ff                              ; $0d50 |
  jmp   code_100d                           ; $0d52 |

sub_0d55:
  mov   a,$1c                               ; $0d55 |
  bne   locret_0d68                         ; $0d57 |
  mov   a,y                                 ; $0d59 |
  setc                                      ; $0d5a |
  sbc   a,#$eb                              ; $0d5b |
  mov   x,a                                 ; $0d5d |
  mov   a,$0c81+x                           ; $0d5e |
  mov   $1e,a                               ; $0d61 |
  mov   $1d,a                               ; $0d63 |
  mov   $1c,#$ff                            ; $0d65 |

locret_0d68:
  ret                                       ; $0d68 |

loc_0d69:
  mov   y,a                                 ; $0d69 |
  setc                                      ; $0d6a |
  sbc   a,#$e5                              ; $0d6b |
  bcc   locret_0d68                         ; $0d6d |
  asl   a                                   ; $0d6f |
  mov   x,a                                 ; $0d70 |
  jmp   (ptr16_0ca2+x)                      ; $0d71 |

sub_0d74:
  cmp   a,#$9d                              ; $0d74 |
  bcs   loc_0d7f                            ; $0d76 |
  cmp   a,#$02                              ; $0d78 |
  bcc   locret_0d68                         ; $0d7a |
  jmp   code_0ed7                           ; $0d7c |

loc_0d7f:
  cmp   a,#$f0                              ; $0d7f |
  bcc   loc_0d69                            ; $0d81 |
  cmp   a,#$ff                              ; $0d83 |
  bne   loc_0d8a                            ; $0d85 |
  jmp   code_0e5b                           ; $0d87 |

loc_0d8a:
  and   a,#$0f                              ; $0d8a |
  asl   a                                   ; $0d8c |
  mov   y,a                                 ; $0d8d |
  mov   a,$0c84+y                           ; $0d8e |
  mov   $2e,a                               ; $0d91 |
  mov   a,$0c85+y                           ; $0d93 |
  mov   $2f,a                               ; $0d96 |
  jmp   code_0e96                           ; $0d98 |

loc_0d9b:
  set7  $1f                                 ; $0d9b |
  mov   $f7,#$ff                            ; $0d9d |

locret_0da0:
  ret                                       ; $0da0 |

sub_0da1:
  cmp   a,#$4a                              ; $0da1 |
  bcs   locret_0da0                         ; $0da3 |
  mov   y,#$5b                              ; $0da5 |
  cmp   a,$27                               ; $0da7 |
  bne   loc_0daf                            ; $0da9 |
  set7  $2a                                 ; $0dab |
  bra   loc_0db6                            ; $0dad |

loc_0daf:
  cmp   a,$28                               ; $0daf |
  bne   locret_0d68                         ; $0db1 |
  set6  $2a                                 ; $0db3 |
  inc   y                                   ; $0db5 |

loc_0db6:
  mov   $09,y                               ; $0db6 |
  mov   $0c,#$01                            ; $0db8 |
  mov   $0d,a                               ; $0dbb |
  mov   $04,#$72                            ; $0dbd |
  mov   $05,#$0a                            ; $0dc0 |
  jmp   code_0f03                           ; $0dc3 |

sub_0dc6:
  mov   y,$f5                               ; $0dc6 |
  bne   sub_0dc6                            ; $0dc8 |
  mov   $f5,y                               ; $0dca |
  mov   y,$f6                               ; $0dcc |
  mov   $2b,y                               ; $0dce |
  cmp   a,#$fd                              ; $0dd0 |
  beq   loc_0d9b                            ; $0dd2 |
  cmp   a,#$ff                              ; $0dd4 |
  beq   loc_0e3b                            ; $0dd6 |
  mov   $26,#$01                            ; $0dd8 |
  cmp   y,#$09                              ; $0ddb |
  bcs   loc_0de4                            ; $0ddd |
  mov   $28,#$00                            ; $0ddf |
  bra   loc_0e04                            ; $0de2 |

loc_0de4:
  cmp   y,$27                               ; $0de4 |
  beq   loc_0dec                            ; $0de6 |
  cmp   y,$28                               ; $0de8 |
  bne   loc_0df0                            ; $0dea |

loc_0dec:
  set7  $1f                                 ; $0dec |
  bra   loc_0df8                            ; $0dee |

loc_0df0:
  mov   a,$2a                               ; $0df0 |
  asl   a                                   ; $0df2 |
  bcc   loc_0e04                            ; $0df3 |
  asl   a                                   ; $0df5 |
  bcc   loc_0e15                            ; $0df6 |

loc_0df8:
  mov   $29,#$80                            ; $0df8 |
  mov   $2e,#$ff                            ; $0dfb |
  mov   $2f,#$3e                            ; $0dfe |
  jmp   code_0e4e                           ; $0e01 |

loc_0e04:
  mov   $27,y                               ; $0e04 |
  set7  $2a                                 ; $0e06 |
  mov   $2e,#$ff                            ; $0e08 |
  mov   $2f,#$3e                            ; $0e0b |
  mov   x,#$02                              ; $0e0e |
  mov   $04,#$3f                            ; $0e10 |
  bra   loc_0e24                            ; $0e13 |

loc_0e15:
  mov   $28,y                               ; $0e15 |
  set6  $2a                                 ; $0e17 |
  mov   $2e,#$ff                            ; $0e19 |
  mov   $2f,#$48                            ; $0e1c |
  mov   x,#$06                              ; $0e1f |
  mov   $04,#$49                            ; $0e21 |

loc_0e24:
  mov   a,y                                 ; $0e24 |
  asl   a                                   ; $0e25 |
  mov   y,a                                 ; $0e26 |
  mov   a,$0574-2+y                         ; $0e27 |
  mov   $056c+x,a                           ; $0e2a |
  mov   a,$0574-1+y                         ; $0e2d |
  clrc                                      ; $0e30 |
  adc   a,$04                               ; $0e31 |
  mov   $056d+x,a                           ; $0e33 |
  mov   $29,#$08                            ; $0e36 |
  bra   code_0e4e                           ; $0e39 |

loc_0e3b:
  mov   $26,a                               ; $0e3b |
  mov   $29,#$00                            ; $0e3d |
  call  sub_0cf4                            ; $0e40 |
  mov   $f2,#$5c                            ; $0e43 |
  mov   $f3,a                               ; $0e46 | KOF
  mov   $2e,#$00                            ; $0e48 |
  mov   $2f,#$35                            ; $0e4b |

code_0e4e:
  mov   $f7,#$ff                            ; $0e4e |
  mov   $f1,#$00                            ; $0e51 |
  mov   $fa,#$1f                            ; $0e54 |
  mov   $f1,#$01                            ; $0e57 |
  ret                                       ; $0e5a |

code_0e5b:
  mov   a,#$cc                              ; $0e5b |
  cmp   a,$f4                               ; $0e5d |
  bne   code_0e5b                           ; $0e5f |
  bra   loc_0e82                            ; $0e61 |

loc_0e63:
  mov   y,$f4                               ; $0e63 |
  bne   loc_0e63                            ; $0e65 |

loc_0e67:
  cmp   y,$f4                               ; $0e67 |
  bmi   loc_0e7e                            ; $0e69 |
  bne   loc_0e67                            ; $0e6b |
  cmp   y,$f4                               ; $0e6d |
  bne   loc_0e67                            ; $0e6f |
  mov   a,$f5                               ; $0e71 |
  mov   $f4,y                               ; $0e73 |
  mov   ($04)+y,a                           ; $0e75 |
  inc   y                                   ; $0e77 |
  bne   loc_0e67                            ; $0e78 |
  inc   $05                                 ; $0e7a |
  bra   loc_0e67                            ; $0e7c |

loc_0e7e:
  cmp   y,$f4                               ; $0e7e |
  bpl   loc_0e67                            ; $0e80 |

loc_0e82:
  mov   a,$f6                               ; $0e82 |
  mov   y,$f7                               ; $0e84 |
  movw  $04,ya                              ; $0e86 |
  mov   a,$f4                               ; $0e88 |
  mov   y,$f5                               ; $0e8a |
  mov   $f4,a                               ; $0e8c |
  mov   a,y                                 ; $0e8e |
  mov   x,a                                 ; $0e8f |
  bne   loc_0e63                            ; $0e90 |
  mov   $f1,#$33                            ; $0e92 |
  ret                                       ; $0e95 |

code_0e96:
  mov   a,$f5                               ; $0e96 |
  cmp   a,#$cc                              ; $0e98 |
  bne   code_0e96                           ; $0e9a |
  cmp   a,$f5                               ; $0e9c |
  bne   code_0e96                           ; $0e9e |

loc_0ea0:
  mov   $f5,a                               ; $0ea0 |

loc_0ea2:
  mov   y,$f5                               ; $0ea2 |
  bne   loc_0ea2                            ; $0ea4 |
  cmp   y,$f5                               ; $0ea6 |
  bne   loc_0ea0                            ; $0ea8 |
  bra   loc_0eb6                            ; $0eaa |

loc_0eac:
  cmp   y,$f5                               ; $0eac |
  bmi   loc_0ec8                            ; $0eae |
  bne   loc_0eac                            ; $0eb0 |
  cmp   y,$f5                               ; $0eb2 |
  bne   loc_0eac                            ; $0eb4 |

loc_0eb6:
  mov   a,$f6                               ; $0eb6 |
  mov   ($2e)+y,a                           ; $0eb8 |
  mov   a,$f7                               ; $0eba |
  mov   $f5,y                               ; $0ebc |
  inc   y                                   ; $0ebe |
  mov   ($2e)+y,a                           ; $0ebf |
  inc   y                                   ; $0ec1 |
  bne   loc_0eac                            ; $0ec2 |
  inc   $2f                                 ; $0ec4 |
  bra   loc_0eac                            ; $0ec6 |

loc_0ec8:
  cmp   y,$f5                               ; $0ec8 |
  bpl   loc_0eac                            ; $0eca |
  mov   a,$f5                               ; $0ecc |
  mov   $f5,a                               ; $0ece |

loc_0ed0:
  mov   a,$f5                               ; $0ed0 |
  bne   loc_0ed0                            ; $0ed2 |
  mov   $f5,a                               ; $0ed4 |

locret_0ed6:
  ret                                       ; $0ed6 |

code_0ed7:
  mov   $0c,a                               ; $0ed7 |
  cmp   a,#$4a                              ; $0ed9 |
  bne   loc_0eeb                            ; $0edb |
  set2  $1f                                 ; $0edd |
  mov   a,#$ff                              ; $0edf |
  mov   $0261,a                             ; $0ee1 |
  mov   a,#$02                              ; $0ee4 |
  mov   $0263,a                             ; $0ee6 |
  bra   locret_0ed6                         ; $0ee9 |

loc_0eeb:
  cmp   a,#$4b                              ; $0eeb |
  bne   loc_0ef3                            ; $0eed |
  clr2  $1f                                 ; $0eef |
  bra   locret_0ed6                         ; $0ef1 |

loc_0ef3:
  mov   $0d,#$00                            ; $0ef3 |
  cmp   a,#$4d                              ; $0ef6 |
  bcc   loc_0efd                            ; $0ef8 |
  jmp   code_0f79                           ; $0efa |

loc_0efd:
  mov   $04,#$4a                            ; $0efd |
  mov   $05,#$0b                            ; $0f00 |

code_0f03:
  mov   y,#$03                              ; $0f03 |
  mul   ya                                  ; $0f05 |
  addw  ya,$04                              ; $0f06 |
  movw  $04,ya                              ; $0f08 |
  mov   y,#$00                              ; $0f0a |
  mov   a,($04)+y                           ; $0f0c |
  xcn   a                                   ; $0f0e |
  lsr   a                                   ; $0f0f |
  and   a,#$07                              ; $0f10 |
  mov   x,a                                 ; $0f12 |
  inc   a                                   ; $0f13 |
  mov   $07,a                               ; $0f14 |
  mov   a,$1020+x                           ; $0f16 |
  mov   $11,a                               ; $0f19 |
  mov   a,($04)+y                           ; $0f1b |
  and   a,#$1f                              ; $0f1d |
  mov   $06,a                               ; $0f1f |
  mov   x,#$0c                              ; $0f21 |
  cmp   $07,#$02                            ; $0f23 |
  beq   loc_0f5e                            ; $0f26 |
  bcs   loc_0f75                            ; $0f28 |
  mov   a,$0c                               ; $0f2a |
  cmp   a,#$01                              ; $0f2c |
  bne   loc_0f44                            ; $0f2e |
  mov   a,$0d                               ; $0f30 |
  cmp   a,$01af                             ; $0f32 |
  bne   loc_0f3d                            ; $0f35 |
  mov   x,#$0e                              ; $0f37 |
  asl   $11                                 ; $0f39 |
  bra   loc_0f66                            ; $0f3b |

loc_0f3d:
  cmp   a,$01ad                             ; $0f3d |
  beq   loc_0f66                            ; $0f40 |
  bra   loc_0f52                            ; $0f42 |

loc_0f44:
  cmp   a,$de                               ; $0f44 |
  bne   loc_0f4e                            ; $0f46 |
  mov   x,#$0e                              ; $0f48 |
  asl   $11                                 ; $0f4a |
  bra   loc_0f66                            ; $0f4c |

loc_0f4e:
  cmp   a,$dc                               ; $0f4e |
  beq   loc_0f66                            ; $0f50 |

loc_0f52:
  mov   a,$0192+x                           ; $0f52 |
  cmp   a,$0190+x                           ; $0f55 |
  bcs   loc_0f5e                            ; $0f58 |
  mov   x,#$0e                              ; $0f5a |
  asl   $11                                 ; $0f5c |

loc_0f5e:
  mov   a,$06                               ; $0f5e |
  cmp   a,$0190+x                           ; $0f60 |
  bcs   loc_0f66                            ; $0f63 |
  ret                                       ; $0f65 |

loc_0f66:
  inc   y                                   ; $0f66 |
  mov   a,($04)+y                           ; $0f67 |
  mov   $0a,a                               ; $0f69 |
  inc   y                                   ; $0f6b |
  mov   a,($04)+y                           ; $0f6c |
  mov   $0b,a                               ; $0f6e |
  mov   $08,#$01                            ; $0f70 |
  bra   loc_0fa8                            ; $0f73 |

loc_0f75:
  mov   x,#$00                              ; $0f75 |
  bra   loc_0f66                            ; $0f77 |

code_0f79:
  sbc   a,#$4d                              ; $0f79 |
  mov   y,a                                 ; $0f7b |
  mov   a,$0c31+y                           ; $0f7c |
  mov   $25,a                               ; $0f7f |
  call  sub_1ad1                            ; $0f81 |
  mov   a,#$08                              ; $0f84 |
  mov   y,#$ff                              ; $0f86 |
  cmp   $0c,#$95                            ; $0f88 |
  bcs   loc_0f91                            ; $0f8b |
  mov   a,#$06                              ; $0f8d |
  mov   y,#$3f                              ; $0f8f |

loc_0f91:
  mov   $07,a                               ; $0f91 |
  mov   $11,y                               ; $0f93 |
  mov   $06,#$1e                            ; $0f95 |
  mov   $0a,#$00                            ; $0f98 |
  mov   $0b,#$35                            ; $0f9b | set header address $3500 to $0a/b
  mov   x,#$00                              ; $0f9e |
  mov   $1c,x                               ; $0fa0 |
  mov   $08,x                               ; $0fa2 |
  mov   $2c,x                               ; $0fa4 |
  mov   $2d,x                               ; $0fa6 |

loc_0fa8:
  mov   y,#$00                              ; $0fa8 |

code_0faa:
  mov   a,($0a)+y                           ; $0faa |
  mov   $30+x,a                             ; $0fac |
  inc   y                                   ; $0fae |
  mov   a,($0a)+y                           ; $0faf |
  mov   $31+x,a                             ; $0fb1 | set vcmd stream pointer to $30/1+x
  mov   a,#$ff                              ; $0fb3 |
  mov   $41+x,a                             ; $0fb5 |
  inc   a                                   ; $0fb7 |
  mov   $50+x,a                             ; $0fb8 |
  mov   $51+x,a                             ; $0fba |
  mov   $0110+x,a                           ; $0fbc |
  mov   $0111+x,a                           ; $0fbf |
  mov   $0120+x,a                           ; $0fc2 |
  mov   $0121+x,a                           ; $0fc5 |
  mov   $0130+x,a                           ; $0fc8 |
  mov   $0131+x,a                           ; $0fcb |
  mov   $0140+x,a                           ; $0fce |
  mov   $0141+x,a                           ; $0fd1 |
  mov   $0280+x,a                           ; $0fd4 |
  mov   $0281+x,a                           ; $0fd7 |
  mov   $0221+x,a                           ; $0fda |
  mov   $90+x,a                             ; $0fdd |
  mov   $0220+x,a                           ; $0fdf |
  mov   $01d1+x,a                           ; $0fe2 |
  mov   $0231+x,a                           ; $0fe5 |
  mov   $01b0+x,a                           ; $0fe8 |
  inc   a                                   ; $0feb |
  mov   $60+x,a                             ; $0fec |
  mov   $40+x,a                             ; $0fee |
  mov   a,$0c                               ; $0ff0 |
  mov   $d0+x,a                             ; $0ff2 |
  mov   a,$0d                               ; $0ff4 |
  mov   $01a1+x,a                           ; $0ff6 |
  mov   a,$08                               ; $0ff9 |
  mov   $0191+x,a                           ; $0ffb |
  mov   a,$06                               ; $0ffe |
  mov   $0190+x,a                           ; $1000 |
  mov   a,$09                               ; $1003 |
  mov   $01a0+x,a                           ; $1005 |
  dbnz  $07,loc_101a                        ; $1008 |
  mov   a,$11                               ; $100b |

code_100d:
  tset  $0010,a                             ; $100d |
  tclr  $000e,a                             ; $1010 |
  tclr  $000f,a                             ; $1013 |
  tset  $001b,a                             ; $1016 |
  ret                                       ; $1019 |

loc_101a:
  inc   x                                   ; $101a |
  inc   x                                   ; $101b |
  inc   y                                   ; $101c |
  jmp   code_0faa                           ; $101d |

data_1020:
  db $40,$c0,$70,$f0,$1f,$3f,$7f,$ff        ; $1020 |

main:
  mov   a,$fd                               ; $1028 |
  beq   main                                ; $102a |

code_102c:
  bbs0  $24,loc_1041                        ; $102c |

loc_102f:
  mov   a,$f4                               ; $102f |
  cmp   a,$f4                               ; $1031 |
  bne   loc_102f                            ; $1033 |
  cmp   a,#$00                              ; $1035 |
  beq   loc_1041                            ; $1037 |
  mov   $f4,a                               ; $1039 |
  mov   $f1,#$11                            ; $103b |
  call  sub_0d74                            ; $103e |

loc_1041:
  bbc7  $1f,loc_104b                        ; $1041 |
  clr7  $1f                                 ; $1044 |
  mov   a,$2b                               ; $1046 |
  call  sub_0da1                            ; $1048 |

loc_104b:
  mov   $f2,#$5c                            ; $104b |
  mov   ($f3),($10)                         ; $104e | KOF
  mov   y,#$ff                              ; $1051 |
  cmp   $26,#$00                            ; $1053 |
  bne   loc_108c                            ; $1056 |
  mov   a,$01ad                             ; $1058 |
  beq   loc_1061                            ; $105b |
  cmp   a,#$09                              ; $105d |
  bcc   loc_108c                            ; $105f |

loc_1061:
  mov   a,$01af                             ; $1061 |
  beq   loc_106a                            ; $1064 |
  cmp   a,#$09                              ; $1066 |
  bcc   loc_108c                            ; $1068 |

loc_106a:
  mov   a,$27                               ; $106a |
  beq   loc_1078                            ; $106c |
  cmp   a,$01ad                             ; $106e |
  beq   loc_107a                            ; $1071 |
  cmp   a,$01af                             ; $1073 |
  beq   loc_107a                            ; $1076 |

loc_1078:
  clr7  $2a                                 ; $1078 |

loc_107a:
  mov   a,$28                               ; $107a |
  beq   loc_1088                            ; $107c |
  cmp   a,$01ad                             ; $107e |
  beq   loc_108a                            ; $1081 |
  cmp   a,$01af                             ; $1083 |
  beq   loc_108a                            ; $1086 |

loc_1088:
  clr6  $2a                                 ; $1088 |

loc_108a:
  mov   y,$2a                               ; $108a |

loc_108c:
  mov   $f7,y                               ; $108c |
  mov   a,#$10                              ; $108e |

loc_1090:
  dec   a                                   ; $1090 |
  bne   loc_1090                            ; $1091 |
  mov   $f2,#$2d                            ; $1093 |
  mov   $f3,a                               ; $1096 | PMON
  mov   $f2,#$3d                            ; $1098 |
  mov   $f3,a                               ; $109b | NON
  mov   a,$19                               ; $109d |
  beq   loc_10a5                            ; $109f |
  dec   $19                                 ; $10a1 |
  bra   loc_10c5                            ; $10a3 |

loc_10a5:
  mov   $f2,#$6c                            ; $10a5 |
  mov   ($f3),($13)                         ; $10a8 | set FLG
  mov   a,$1a                               ; $10ab |
  beq   loc_10c5                            ; $10ad |
  dec   $1a                                 ; $10af |
  bne   loc_10c5                            ; $10b1 |
  mov   $f2,#$2c                            ; $10b3 |
  mov   ($f3),($15)                         ; $10b6 | EVOL(L)
  mov   $f2,#$3c                            ; $10b9 |
  mov   ($f3),($16)                         ; $10bc | EVOL(R)
  mov   $f2,#$0d                            ; $10bf |
  mov   ($f3),($17)                         ; $10c2 |

loc_10c5:
  mov   a,#$00                              ; $10c5 |
  mov   $f2,#$5c                            ; $10c7 |
  mov   $f3,a                               ; $10ca | KOF
  mov   $10,a                               ; $10cc |
  mov   $f2,#$4c                            ; $10ce |
  mov   ($f3),($0e)                         ; $10d1 | KON
  mov   $0e,a                               ; $10d4 |
  bbc1  $1f,loc_10e0                        ; $10d6 |
  mov   x,#$0c                              ; $10d9 |
  mov   $11,#$40                            ; $10db |
  bra   code_113a                           ; $10de |

loc_10e0:
  bbc2  $1f,loc_10fe                        ; $10e0 |
  mov   a,$0263                             ; $10e3 |
  dec   a                                   ; $10e6 |
  bne   loc_10fb                            ; $10e7 |
  mov   a,#$02                              ; $10e9 |
  mov   $0263,a                             ; $10eb |
  mov   a,$0261                             ; $10ee |
  cmp   a,#$e0                              ; $10f1 |
  bcc   loc_10fe                            ; $10f3 |
  dec   a                                   ; $10f5 |
  mov   $0261,a                             ; $10f6 |
  bra   loc_10fe                            ; $10f9 |

loc_10fb:
  mov   $0263,a                             ; $10fb |

loc_10fe:
  mov   a,$2d                               ; $10fe |
  beq   loc_111d                            ; $1100 |
  cmp   a,#$ff                              ; $1102 |
  bne   loc_110f                            ; $1104 |
  dec   $2c                                 ; $1106 |
  bne   loc_111d                            ; $1108 |
  mov   $2d,#$00                            ; $110a |
  bra   loc_111d                            ; $110d |

loc_110f:
  dec   $2d                                 ; $110f |
  bne   loc_111d                            ; $1111 |
  inc   $2c                                 ; $1113 |
  cmp   $2c,#$28                            ; $1115 |
  bcs   loc_111d                            ; $1118 |
  mov   $2d,#$08                            ; $111a |

loc_111d:
  inc   $24                                 ; $111d |
  mov   a,$1c                               ; $111f |
  beq   loc_1135                            ; $1121 |
  dec   $1d                                 ; $1123 |
  bne   loc_1135                            ; $1125 |
  mov   ($1d),($1e)                         ; $1127 |
  dec   $1c                                 ; $112a |
  beq   loc_1132                            ; $112c |
  dec   $1c                                 ; $112e |
  bne   loc_1135                            ; $1130 |

loc_1132:
  call  sub_0cf1                            ; $1132 |

loc_1135:
  mov   $11,#$01                            ; $1135 |
  mov   x,#$00                              ; $1138 |

code_113a:
  mov   a,$d0+x                             ; $113a |
  beq   loc_1199                            ; $113c |
  mov   a,$11                               ; $113e |
  and   a,$1b                               ; $1140 |
  bne   loc_1199                            ; $1142 |
  mov   a,$0191+x                           ; $1144 |
  lsr   a                                   ; $1147 |
  bcs   loc_1152                            ; $1148 |
  mov   a,x                                 ; $114a |
  lsr   a                                   ; $114b |
  eor   a,$24                               ; $114c |
  and   a,#$01                              ; $114e |
  bne   loc_1199                            ; $1150 |

loc_1152:
  mov   $22,x                               ; $1152 |
  mov   a,x                                 ; $1154 |
  asl   a                                   ; $1155 |
  asl   a                                   ; $1156 |
  asl   a                                   ; $1157 |
  mov   $23,a                               ; $1158 |
  mov   a,$0191+x                           ; $115a |
  mov   $20,a                               ; $115d |
  mov   a,$40+x                             ; $115f |
  bbs0  $20,loc_1170                        ; $1161 |
  clrc                                      ; $1164 |
  adc   a,$2c                               ; $1165 |
  bcc   loc_1170                            ; $1167 |
  clrc                                      ; $1169 |
  adc   a,$41+x                             ; $116a |
  mov   $40+x,a                             ; $116c |
  bra   loc_1177                            ; $116e |

loc_1170:
  clrc                                      ; $1170 |
  adc   a,$41+x                             ; $1171 |
  mov   $40+x,a                             ; $1173 |
  bcc   loc_1191                            ; $1175 |

loc_1177:
  dec   $60+x                               ; $1177 | decrease wait counter (tick)
  beq   loc_1180                            ; $1179 |
  call  sub_1329                            ; $117b |
  bra   loc_1194                            ; $117e |

loc_1180:
  call  exec_vcmds                          ; $1180 |
  bbs5  $20,loc_118d                        ; $1183 |
  set7  $21                                 ; $1186 |
  call  sub_13e6                            ; $1188 |
  bra   loc_1194                            ; $118b |

loc_118d:
  clr5  $20                                 ; $118d |
  bra   loc_1194                            ; $118f |

loc_1191:
  call  sub_12dd                            ; $1191 |

loc_1194:
  mov   a,$20                               ; $1194 |
  mov   $0191+x,a                           ; $1196 |

loc_1199:
  mov   a,$26                               ; $1199 |
  beq   loc_11bd                            ; $119b |
  mov   a,$f5                               ; $119d |
  cmp   a,#$cc                              ; $119f |
  bne   loc_11bd                            ; $11a1 |
  cmp   a,$f5                               ; $11a3 |
  bne   loc_11bd                            ; $11a5 |
  push  x                                   ; $11a7 |
  bbs7  $26,loc_11b1                        ; $11a8 |
  call  sub_1257                            ; $11ab |
  pop   x                                   ; $11ae |
  bra   loc_11ce                            ; $11af |

loc_11b1:
  mov   ($12),($11)                         ; $11b1 |
  call  sub_1201                            ; $11b4 |
  mov   ($11),($12)                         ; $11b7 |
  pop   x                                   ; $11ba |
  bra   loc_11ce                            ; $11bb |

loc_11bd:
  mov   a,$f5                               ; $11bd |
  cmp   a,#$fd                              ; $11bf |
  bcc   loc_11ce                            ; $11c1 |
  cmp   a,$f5                               ; $11c3 |
  bne   loc_11ce                            ; $11c5 |
  mov   $f5,a                               ; $11c7 |
  push  x                                   ; $11c9 |
  call  sub_0dc6                            ; $11ca |
  pop   x                                   ; $11cd |

loc_11ce:
  inc   x                                   ; $11ce |
  inc   x                                   ; $11cf |
  asl   $11                                 ; $11d0 |
  beq   loc_11d7                            ; $11d2 |
  jmp   code_113a                           ; $11d4 |

loc_11d7:
  mov   $1b,#$00                            ; $11d7 |
  mov   a,$26                               ; $11da |
  bne   loc_11e1                            ; $11dc |
  jmp   main                                ; $11de |

loc_11e1:
  mov   a,$f5                               ; $11e1 |
  cmp   a,#$cc                              ; $11e3 |
  beq   loc_11ee                            ; $11e5 |
  mov   a,$fd                               ; $11e7 |
  beq   loc_11e1                            ; $11e9 |
  jmp   code_102c                           ; $11eb |

loc_11ee:
  cmp   a,$f5                               ; $11ee |
  bne   loc_11e1                            ; $11f0 |
  bbs7  $26,loc_11fb                        ; $11f2 |
  call  sub_1257                            ; $11f5 |
  jmp   main                                ; $11f8 |

loc_11fb:
  call  sub_1201                            ; $11fb |
  jmp   main                                ; $11fe |

sub_1201:
  mov   $f5,a                               ; $1201 |

loc_1203:
  mov   y,$f5                               ; $1203 |
  bne   loc_1203                            ; $1205 |
  cmp   y,$f5                               ; $1207 |
  bne   sub_1201                            ; $1209 |
  bra   loc_1217                            ; $120b |

loc_120d:
  cmp   y,$f5                               ; $120d |
  bmi   loc_1236                            ; $120f |
  bne   loc_120d                            ; $1211 |
  cmp   y,$f5                               ; $1213 |
  bne   loc_120d                            ; $1215 |

loc_1217:
  mov   a,$f6                               ; $1217 |
  cmp   a,$f6                               ; $1219 |
  bne   loc_1217                            ; $121b |
  mov   ($2e)+y,a                           ; $121d |

loc_121f:
  mov   a,$f7                               ; $121f |
  cmp   a,$f7                               ; $1221 |
  bne   loc_121f                            ; $1223 |
  mov   $f5,y                               ; $1225 |
  inc   y                                   ; $1227 |
  mov   ($2e)+y,a                           ; $1228 |
  inc   y                                   ; $122a |
  bne   loc_120d                            ; $122b |
  inc   $2f                                 ; $122d |

loc_122f:
  mov   a,$f5                               ; $122f |
  bne   loc_122f                            ; $1231 |
  mov   $f5,a                               ; $1233 |
  ret                                       ; $1235 |

loc_1236:
  cmp   y,$f5                               ; $1236 |
  bpl   loc_120d                            ; $1238 |
  mov   a,$f5                               ; $123a |
  mov   $f5,a                               ; $123c |
  mov   $f1,#$00                            ; $123e |
  mov   $fa,#$20                            ; $1241 |
  mov   $f1,#$01                            ; $1244 |

loc_1247:
  mov   a,$f5                               ; $1247 |
  bne   loc_1247                            ; $1249 |
  mov   $f5,a                               ; $124b |
  mov   $26,a                               ; $124d |
  mov   $f7,#$00                            ; $124f |
  mov   a,$2b                               ; $1252 |
  jmp   code_0ed7                           ; $1254 |

sub_1257:
  mov   $f5,a                               ; $1257 |

loc_1259:
  mov   y,$f4                               ; $1259 |
  cmp   y,#$01                              ; $125b |
  bne   loc_1259                            ; $125d |
  cmp   y,$f4                               ; $125f |
  bne   sub_1257                            ; $1261 |
  mov   $f5,#$00                            ; $1263 |
  bbc7  $29,loc_1271                        ; $1266 |
  bra   loc_12a9                            ; $1269 |

loc_126b:
  cmp   y,$f4                               ; $126b |
  bmi   loc_12b8                            ; $126d |
  bne   loc_126b                            ; $126f |

loc_1271:
  mov   a,$f5                               ; $1271 |
  mov   ($2e)+y,a                           ; $1273 |
  inc   y                                   ; $1275 |
  mov   a,$f6                               ; $1276 |
  mov   ($2e)+y,a                           ; $1278 |
  mov   a,$f7                               ; $127a |
  dec   y                                   ; $127c |
  mov   $f4,y                               ; $127d |
  inc   y                                   ; $127f |
  inc   y                                   ; $1280 |
  mov   ($2e)+y,a                           ; $1281 |
  inc   y                                   ; $1283 |
  bne   loc_126b                            ; $1284 |

loc_1286:
  clrc                                      ; $1286 |
  adc   $2e,#$ff                            ; $1287 |
  adc   $2f,#$00                            ; $128a |

loc_128d:
  mov   a,$f4                               ; $128d |
  bne   loc_128d                            ; $128f |
  mov   $f4,a                               ; $1291 |
  mov   a,$29                               ; $1293 |
  bmi   locret_12a2                               ; $1295 |
  beq   locret_12a2                         ; $1297 |
  dec   $29                                 ; $1299 |
  bne   locret_12a2                         ; $129b |
  bbs1  $1f,locret_12a2                     ; $129d |
  set7  $1f                                 ; $12a0 |

locret_12a2:
  ret                                       ; $12a2 |

loc_12a3:
  cmp   y,$f4                               ; $12a3 |
  bmi   loc_12b2                            ; $12a5 |
  bne   loc_12a3                            ; $12a7 |

loc_12a9:
  mov   $f4,y                               ; $12a9 |
  inc   y                                   ; $12ab |
  inc   y                                   ; $12ac |
  inc   y                                   ; $12ad |
  bne   loc_12a3                            ; $12ae |
  bra   loc_1286                            ; $12b0 |

loc_12b2:
  cmp   y,$f4                               ; $12b2 |
  bpl   loc_12a3                            ; $12b4 |
  bra   loc_12bc                            ; $12b6 |

loc_12b8:
  cmp   y,$f4                               ; $12b8 |
  bpl   loc_126b                            ; $12ba |

loc_12bc:
  mov   a,$f4                               ; $12bc |
  mov   $f4,a                               ; $12be |
  mov   $f1,#$00                            ; $12c0 |
  mov   $fa,#$20                            ; $12c3 |
  mov   $f1,#$01                            ; $12c6 |

loc_12c9:
  mov   a,$f4                               ; $12c9 |
  bne   loc_12c9                            ; $12cb |
  mov   $f4,a                               ; $12cd |
  mov   $26,a                               ; $12cf |
  mov   a,$29                               ; $12d1 |
  bmi   locret_12dc                         ; $12d3 |
  beq   locret_12dc                         ; $12d5 |
  bbs1  $1f,locret_12dc                     ; $12d7 |
  set7  $1f                                 ; $12da |

locret_12dc:
  ret                                       ; $12dc |

sub_12dd:
  clr0  $21                                 ; $12dd |
  mov   a,$80+x                             ; $12df |
  beq   loc_1300                            ; $12e1 |
  bbc4  $20,loc_12eb                        ; $12e3 |
  call  sub_1c52                            ; $12e6 |
  bra   loc_12fe                            ; $12e9 |

loc_12eb:
  mov   a,$81+x                             ; $12eb |
  bne   loc_1300                            ; $12ed |
  mov   a,$e0+x                             ; $12ef |
  clrc                                      ; $12f1 |
  adc   a,$02b0+x                           ; $12f2 |
  mov   $e0+x,a                             ; $12f5 |
  mov   a,$e1+x                             ; $12f7 |
  adc   a,$02b1+x                           ; $12f9 |
  mov   $e1+x,a                             ; $12fc |

loc_12fe:
  set0  $21                                 ; $12fe |

loc_1300:
  mov   y,$e1+x                             ; $1300 |
  mov   a,$e0+x                             ; $1302 |
  movw  $0a,ya                              ; $1304 |
  mov   a,$0220+x                           ; $1306 |
  beq   loc_1312                            ; $1309 |
  mov   a,$a0+x                             ; $130b |
  bne   loc_1312                            ; $130d |
  call  sub_1c98                            ; $130f |

loc_1312:
  mov   a,$01d1+x                           ; $1312 |
  beq   loc_1321                            ; $1315 |
  clrc                                      ; $1317 |
  adc   a,$d1+x                             ; $1318 |
  mov   $d1+x,a                             ; $131a |
  bcc   loc_1321                            ; $131c |
  jmp   sub_1cdc                            ; $131e |

loc_1321:
  bbc0  $21,locret_12dc                     ; $1321 |
  movw  ya,$0a                              ; $1324 |
  jmp   sub_165c                            ; $1326 |

sub_1329:
  mov   $21,#$00                            ; $1329 |
  mov   a,$0231+x                           ; $132c |
  cmp   a,#$7f                              ; $132f |
  bcs   loc_1362                            ; $1331 |
  mov   y,a                                 ; $1333 |
  mov   a,$60+x                             ; $1334 |
  cmp   a,#$01                              ; $1336 |
  beq   loc_135f                            ; $1338 |
  cmp   y,#$7d                              ; $133a |
  bcs   loc_1362                            ; $133c |
  mov   a,$61+x                             ; $133e |
  beq   loc_1362                            ; $1340 |
  dec   $61+x                               ; $1342 |
  bne   loc_1362                            ; $1344 |
  mov   a,$01c1+x                           ; $1346 |
  bpl   loc_135f                            ; $1349 |
  mov   a,#$05                              ; $134b |
  or    a,$23                               ; $134d |
  mov   $f2,a                               ; $134f |
  mov   $f3,#$00                            ; $1351 | set ADSR(1)
  inc   a                                   ; $1354 |
  inc   a                                   ; $1355 |
  mov   $f2,a                               ; $1356 |
  mov   a,$01c1+x                           ; $1358 |
  mov   $f3,a                               ; $135b | set GAIN
  bra   loc_1362                            ; $135d |

loc_135f:
  or    ($10),($11)                         ; $135f |

loc_1362:
  mov   a,$80+x                             ; $1362 |
  beq   loc_1397                            ; $1364 |
  bbc4  $20,loc_136e                        ; $1366 |
  call  sub_1c52                            ; $1369 |
  bra   loc_1395                            ; $136c |

loc_136e:
  mov   a,$81+x                             ; $136e |
  beq   loc_1376                            ; $1370 |
  dec   $81+x                               ; $1372 |
  bra   loc_1397                            ; $1374 |

loc_1376:
  dec   $80+x                               ; $1376 |
  bne   loc_1386                            ; $1378 |
  mov   a,$02c1+x                           ; $137a |
  mov   $e1+x,a                             ; $137d |
  mov   a,$02c0+x                           ; $137f |
  mov   $e0+x,a                             ; $1382 |
  bra   loc_1395                            ; $1384 |

loc_1386:
  mov   a,$e0+x                             ; $1386 |
  clrc                                      ; $1388 |
  adc   a,$02b0+x                           ; $1389 |
  mov   $e0+x,a                             ; $138c |
  mov   a,$e1+x                             ; $138e |
  adc   a,$02b1+x                           ; $1390 |
  mov   $e1+x,a                             ; $1393 |

loc_1395:
  set0  $21                                 ; $1395 |

loc_1397:
  mov   y,$e1+x                             ; $1397 |
  mov   a,$e0+x                             ; $1399 |
  movw  $0a,ya                              ; $139b |
  mov   a,$0220+x                           ; $139d |
  beq   loc_13cd                            ; $13a0 |
  mov   a,$a0+x                             ; $13a2 |
  beq   loc_13aa                            ; $13a4 |
  dec   $a0+x                               ; $13a6 |
  bra   loc_13cd                            ; $13a8 |

loc_13aa:
  mov   a,$a1+x                             ; $13aa |
  beq   loc_13ca                            ; $13ac |
  dec   $a1+x                               ; $13ae |
  bne   loc_13b7                            ; $13b0 |
  mov   a,$0220+x                           ; $13b2 |
  bra   loc_13c7                            ; $13b5 |

loc_13b7:
  mov   a,$02d0+x                           ; $13b7 |
  clrc                                      ; $13ba |
  adc   a,$02e0+x                           ; $13bb |
  mov   $02d0+x,a                           ; $13be |
  mov   a,$02d1+x                           ; $13c1 |
  adc   a,$02e1+x                           ; $13c4 |

loc_13c7:
  mov   $02d1+x,a                           ; $13c7 |

loc_13ca:
  call  sub_1c98                            ; $13ca |

loc_13cd:
  mov   a,$01d1+x                           ; $13cd |
  beq   loc_13de                            ; $13d0 |
  clrc                                      ; $13d2 |
  adc   a,$d1+x                             ; $13d3 |
  mov   $d1+x,a                             ; $13d5 |
  bcc   loc_13de                            ; $13d7 |
  call  sub_1cdc                            ; $13d9 |
  bra   sub_13e6                            ; $13dc |

loc_13de:
  bbc0  $21,sub_13e6                        ; $13de |
  movw  ya,$0a                              ; $13e1 |
  call  sub_165c                            ; $13e3 |

sub_13e6:
  mov   a,$70+x                             ; $13e6 |
  beq   loc_1408                            ; $13e8 |
  set7  $21                                 ; $13ea |
  mov   $04,a                               ; $13ec |
  mov   a,$0201+x                           ; $13ee |
  mov   $05,a                               ; $13f1 |
  mov   a,$02a1+x                           ; $13f3 | panpot
  mov   y,a                                 ; $13f6 |
  mov   a,$02a0+x                           ; $13f7 |
  call  sub_1c23                            ; $13fa |
  mov   $02a0+x,a                           ; $13fd |
  mov   a,y                                 ; $1400 |
  mov   $02a1+x,a                           ; $1401 | panpot
  mov   a,$04                               ; $1404 |
  mov   $70+x,a                             ; $1406 |

loc_1408:
  mov   a,$01c0+x                           ; $1408 | tempo fade speed
  beq   loc_1426                            ; $140b |
  mov   $04,a                               ; $140d |
  mov   a,$0250+x                           ; $140f |
  mov   $05,a                               ; $1412 |
  mov   y,$41+x                             ; $1414 |
  mov   a,$0251+x                           ; $1416 |
  call  sub_1c23                            ; $1419 |
  mov   $0251+x,a                           ; $141c |
  mov   $41+x,y                             ; $141f |
  mov   a,$04                               ; $1421 |
  mov   $01c0+x,a                           ; $1423 |

loc_1426:
  mov   a,$71+x                             ; $1426 |
  beq   loc_1448                            ; $1428 |
  set7  $21                                 ; $142a |
  mov   $04,a                               ; $142c |
  mov   a,$0200+x                           ; $142e |
  mov   $05,a                               ; $1431 |
  mov   a,$0291+x                           ; $1433 |
  mov   y,a                                 ; $1436 |
  mov   a,$0290+x                           ; $1437 |
  call  sub_1c23                            ; $143a |
  mov   $0290+x,a                           ; $143d |
  mov   a,y                                 ; $1440 |
  mov   $0291+x,a                           ; $1441 |
  mov   a,$04                               ; $1444 |
  mov   $71+x,a                             ; $1446 |

loc_1448:
  bbs7  $21,loc_1450                        ; $1448 |
  mov   a,$1c                               ; $144b |
  bne   loc_1450                            ; $144d |

locret_144f:
  ret                                       ; $144f |

loc_1450:
  mov   a,$01b1+x                           ; $1450 |
  beq   locret_144f                         ; $1453 |
  mov   a,$0110+x                           ; $1455 |
  mov   $08,a                               ; $1458 |
  mov   a,$0111+x                           ; $145a |
  mov   $09,a                               ; $145d |
  mov   a,$0120+x                           ; $145f |
  mov   $0a,a                               ; $1462 |
  mov   a,$0121+x                           ; $1464 |
  mov   $0b,a                               ; $1467 |
  mov   a,$01b1+x                           ; $1469 |
  mov   y,#$00                              ; $146c |
  addw  ya,$08                              ; $146e |
  addw  ya,$0a                              ; $1470 |
  bmi   loc_14a3                            ; $1472 |
  cmp   y,#$00                              ; $1474 |
  bne   loc_147c                            ; $1476 |
  or    a,#$00                              ; $1478 |
  bpl   loc_147e                            ; $147a |

loc_147c:
  mov   a,#$7f                              ; $147c |

loc_147e:
  mov   y,a                                 ; $147e |
  mov   a,$0291+x                           ; $147f |
  mul   ya                                  ; $1482 |
  mov   a,$1c                               ; $1483 |
  beq   loc_148b                            ; $1485 |
  bbs0  $20,loc_149c                        ; $1487 |
  mul   ya                                  ; $148a |

loc_148b:
  bbc2  $1f,loc_149c                        ; $148b |
  cmp   x,#$0c                              ; $148e |
  beq   loc_149c                            ; $1490 |
  cmp   x,#$0e                              ; $1492 |
  beq   loc_149c                            ; $1494 |
  mov   a,$0261                             ; $1496 |
  beq   loc_149c                            ; $1499 |
  mul   ya                                  ; $149b |

loc_149c:
  mov   a,y                                 ; $149c |
  setc                                      ; $149d |
  sbc   a,$01b0+x                           ; $149e | instrument-specific volume
  bcs   loc_14a5                            ; $14a1 |

loc_14a3:
  mov   a,#$00                              ; $14a3 |

loc_14a5:
  mov   y,a                                 ; $14a5 |
  mov   a,$1dfa+y                           ; $14a6 |
  mov   $05,a                               ; $14a9 |
  mov   a,#$14                              ; $14ab |
  bbs0  $1f,loc_14b9                        ; $14ad |
  mov   a,$02a1+x                           ; $14b0 | panpot
  cmp   a,#$29                              ; $14b3 |
  bcc   loc_14b9                            ; $14b5 |
  mov   a,#$28                              ; $14b7 |

loc_14b9:
  mov   $04,a                               ; $14b9 |
  mov   y,a                                 ; $14bb |
  mov   a,pan_table+y                       ; $14bc |
  mov   y,$05                               ; $14bf |
  mul   ya                                  ; $14c1 |
  mov   a,#$00                              ; $14c2 |
  or    a,$23                               ; $14c4 |
  mov   $f2,a                               ; $14c6 |
  mov   $f3,y                               ; $14c8 | set VOL(L)
  inc   a                                   ; $14ca |
  mov   $f2,a                               ; $14cb |
  mov   a,#$28                              ; $14cd |
  setc                                      ; $14cf |
  sbc   a,$04                               ; $14d0 |
  mov   y,a                                 ; $14d2 |
  mov   a,pan_table+y                       ; $14d3 |
  mov   y,$05                               ; $14d6 |
  mul   ya                                  ; $14d8 |
  mov   $f3,y                               ; $14d9 | set VOL(R)
  ret                                       ; $14db |

exec_vcmds:
  call  read_voice_byte                     ; $14dc |
  mov   $08,a                               ; $14df |
  and   a,#$7f                              ; $14e1 |
  cmp   a,#$60                              ; $14e3 |
  bcc   loc_153c                            ; $14e5 | 00-5f, 80-df
  mov   a,$08                               ; $14e7 |
  setc                                      ; $14e9 |
  sbc   a,#$e0                              ; $14ea |
  bcs   loc_1524                            ; $14ec | e0-ff - vcmd
  cmp   a,#$82                              ; $14ee |
  bcs   loc_14fb                            ; $14f0 | 62-7f

; vcmd 60,61
  set1  $20                                 ; $14f2 | rhythm channel
  lsr   a                                   ; $14f4 |
  bcc   exec_vcmds                          ; $14f5 |
  clr1  $20                                 ; $14f7 |
  bra   exec_vcmds                          ; $14f9 |

; (62-7f)
loc_14fb:
  bne   loc_1500                            ; $14fb | 63-7f
  jmp   vcmd_62                             ; $14fd |

; (63-7f)
loc_1500:
  cmp   a,#$90                              ; $1500 |
  bcc   loc_151a                            ; $1502 |

; vcmd 70-7f - instant tuning
  and   a,#$0f                              ; $1504 | tuning amount: (-8..7) * 4 / 256 semitones
  asl   a                                   ; $1506 |
  asl   a                                   ; $1507 |
  mov   y,#$00                              ; $1508 |
  cmp   a,#$20                              ; $150a |
  bcc   loc_1511                            ; $150c |
  or    a,#$e0                              ; $150e | neg ya
  dec   y                                   ; $1510 |

loc_1511:
  mov   $0280+x,a                           ; $1511 |
  mov   a,y                                 ; $1514 |
  mov   $0281+x,a                           ; $1515 |
  bra   exec_vcmds                          ; $1518 |

; vcmd 63-6f
loc_151a:
  set5  $20                                 ; $151a |
  call  sub_0d35                            ; $151c |
  mov   x,#$00                              ; $151f |
  mov   $11,x                               ; $1521 |
  ret                                       ; $1523 |

; dispatch vcmd (e0-ff)
loc_1524:
  asl   a                                   ; $1524 |
  mov   y,a                                 ; $1525 |
  mov   a,vcmd_dispatch_table+1+y           ; $1526 |\
  push  a                                   ; $1529 | | push vcmd func address, as a return address
  mov   a,vcmd_dispatch_table+y             ; $152a | |
  push  a                                   ; $152d |/
  mov   a,vcmd_length_table+y               ; $152e |
  beq   locret_153b                         ; $1531 |

; read a byte from voice stream
read_voice_byte:
  mov   a,($30+x)                           ; $1533 |

increment_voice_ptr:
  inc   $30+x                               ; $1535 |
  bne   locret_153b                         ; $1537 |
  inc   $31+x                               ; $1539 |

locret_153b:
  ret                                       ; $153b |

; vcmd 00-5f - note
; vcmd 80-df - note without length
; $08 = vcmd (note number + flag bit for length)
loc_153c:
  bbc1  $20,loc_1542                        ; $153c |
  or    ($10),($11)                         ; $153f |

loc_1542:
  bbc7  $08,loc_154a                        ; $1542 | if vcmd >= $80
  mov   a,$0230+x                           ; $1545 |   reuse last length, skip arg1
  bra   loc_1550                            ; $1548 |

loc_154a:
  call  read_voice_byte                     ; $154a | get arg1 (length in ticks)
  mov   $0230+x,a                           ; $154d | save note length

loc_1550:
  mov   $60+x,a                             ; $1550 |
  mov   a,$0231+x                           ; $1552 |
  cmp   a,#$7f                              ; $1555 |
  beq   loc_155f                            ; $1557 |
  or    ($0e),($11)                         ; $1559 |
  or    ($0f),($11)                         ; $155c |

loc_155f:
  call  read_voice_byte                     ; $155f | get arg2 (00-7f: note duration, 80-ff: note volume)
  or    a,#$00                              ; $1562 |
  bmi   loc_156c                            ; $1564 |
  mov   $0231+x,a                           ; $1566 | save note duration
  call  read_voice_byte                     ; $1569 | get arg3 (note volume) (only available if arg2 < 0x80)

loc_156c:
  and   a,#$7f                              ; $156c |
  mov   $01b1+x,a                           ; $156e | save note volume
  bne   loc_157b                            ; $1571 |
  mov   a,$11                               ; $1573 |
  tclr  $000e,a                             ; $1575 |
  tclr  $000f,a                             ; $1578 |

loc_157b:
  bbc1  $20,loc_1588                        ; $157b | skip instrument loading for rhythm channel

; rhythm channel: load sample
  mov   a,$08                               ; $157e |
  and   a,#$7f                              ; $1580 |
  call  load_percussive_instrument          ; $1582 | load instrument
  mov   $08,#$3c                            ; $1585 | note number = 60

; calc actual note length
loc_1588:
  mov   a,$0230+x                           ; $1588 | note length
  mov   y,a                                 ; $158b |
  mov   a,$0231+x                           ; $158c | note duration
  cmp   a,#$7f                              ; $158f |
  beq   loc_1599                            ; $1591 | duration $7f means full length
  asl   a                                   ; $1593 |
  mul   ya                                  ; $1594 | actual length = (length * (duration << 1)) >> 8
  mov   a,y                                 ; $1595 |
  bne   loc_1599                            ; $1596 |
  inc   y                                   ; $1598 | actual length = 1 if it was zero

loc_1599:
  mov   $61+x,y                             ; $1599 | save actual note length
  mov   y,$e1+x                             ; $159b |
  mov   a,$e0+x                             ; $159d |
  movw  $0c,ya                              ; $159f |
  mov   a,$0131+x                           ; $15a1 |
  mov   $05,a                               ; $15a4 |
  mov   a,$0130+x                           ; $15a6 |
  mov   $04,a                               ; $15a9 | $04/5 = repeat-triggered tuning #1
  mov   a,$0141+x                           ; $15ab |
  mov   $07,a                               ; $15ae |
  mov   a,$0140+x                           ; $15b0 |
  mov   $06,a                               ; $15b3 | $06/7 = repeat-triggered tuning #2
  mov   a,$0281+x                           ; $15b5 |
  mov   $0b,a                               ; $15b8 |
  mov   a,$0280+x                           ; $15ba |
  mov   $0a,a                               ; $15bd | $0a/b = tuning
  mov   a,$08                               ; $15bf | note number
  clrc                                      ; $15c1 |
  adc   a,$0221+x                           ; $15c2 | per-voice transpose
  mov   y,a                                 ; $15c5 |
  mov   a,#$00                              ; $15c6 |
  addw  ya,$04                              ; $15c8 | add repeat-triggered tuning #1
  addw  ya,$06                              ; $15ca | add repeat-triggered tuning #2
  addw  ya,$0a                              ; $15cc | add tuning
  mov   $e0+x,a                             ; $15ce | save intermediate note number (fraction)
  mov   a,y                                 ; $15d0 |
  and   a,#$7f                              ; $15d1 | note number &= 0x7f
  mov   $e1+x,a                             ; $15d3 | save intermediate note number (integer)
  mov   a,$0220+x                           ; $15d5 |
  beq   loc_1600                            ; $15d8 |
  mov   a,#$00                              ; $15da |
  mov   $b0+x,a                             ; $15dc |
  mov   $c1+x,a                             ; $15de |
  mov   a,$0210+x                           ; $15e0 |
  mov   $a0+x,a                             ; $15e3 |
  mov   a,$0211+x                           ; $15e5 |
  mov   $a1+x,a                             ; $15e8 |
  beq   loc_15f7                            ; $15ea |
  mov   a,$02e0+x                           ; $15ec |
  mov   $02d0+x,a                           ; $15ef |
  mov   a,$02e1+x                           ; $15f2 |
  bra   loc_15fd                            ; $15f5 |

loc_15f7:
  mov   $02d0+x,a                           ; $15f7 |
  mov   a,$0220+x                           ; $15fa |

loc_15fd:
  mov   $02d1+x,a                           ; $15fd |

loc_1600:
  mov   a,$01c1+x                           ; $1600 |
  bpl   loc_161d                            ; $1603 |
  mov   a,#$05                              ; $1605 |
  or    a,$23                               ; $1607 |
  mov   $f2,a                               ; $1609 |
  mov   a,$0270+x                           ; $160b |
  mov   $f3,a                               ; $160e | set ADSR(1)
  bmi   loc_161d                            ; $1610 |
  mov   a,#$07                              ; $1612 |
  or    a,$23                               ; $1614 |
  mov   $f2,a                               ; $1616 |
  mov   a,$0271+x                           ; $1618 |
  mov   $f3,a                               ; $161b | set GAIN

loc_161d:
  mov   a,$90+x                             ; $161d |
  mov   $80+x,a                             ; $161f |
  beq   loc_164f                            ; $1621 |
  bbs4  $20,loc_163d                        ; $1623 |
  mov   a,$91+x                             ; $1626 |
  mov   $81+x,a                             ; $1628 |
  mov   a,$e0+x                             ; $162a |
  mov   $02c0+x,a                           ; $162c |
  mov   a,$e1+x                             ; $162f |
  mov   $02c1+x,a                           ; $1631 |
  setc                                      ; $1634 |
  sbc   a,$0260+x                           ; $1635 |
  mov   $e1+x,a                             ; $1638 |
  mov   y,a                                 ; $163a |
  bra   loc_165a                            ; $163b |

loc_163d:
  mov   a,$e1+x                             ; $163d |
  mov   $02c1+x,a                           ; $163f |
  mov   a,$e0+x                             ; $1642 |
  mov   $02c0+x,a                           ; $1644 |
  movw  ya,$0c                              ; $1647 |
  mov   $e1+x,y                             ; $1649 |
  mov   $e0+x,a                             ; $164b |
  bra   sub_165c                            ; $164d |

; if the next is vcmd f3, handle it here somehow
loc_164f:
  mov   a,($30+x)                           ; $164f |
  cmp   a,#$f3                              ; $1651 |
  bne   loc_1658                            ; $1653 |
  call  sub_1747                            ; $1655 | dispatch vcmd f3

loc_1658:
  mov   y,$e1+x                             ; $1658 |

loc_165a:
  mov   a,$e0+x                             ; $165a |

sub_165c:
  movw  $04,ya                              ; $165c |
  mov   a,$0240+x                           ; $165e |
  mov   y,a                                 ; $1661 |
  mov   a,$0241+x                           ; $1662 |
  addw  ya,$04                              ; $1665 | add per-instrument tuning
  mov   $04,a                               ; $1667 |
  mov   a,y                                 ; $1669 |
  asl   a                                   ; $166a | ?
  mov   y,a                                 ; $166b |
  mov   a,pitch_table+y                     ; $166c | pitch table
  mov   $06,a                               ; $166f |
  mov   a,pitch_table+1+y                   ; $1671 |
  mov   $07,a                               ; $1674 |
  mov   a,pitch_scale_table+1+y             ; $1676 | pitch scale (multiplier)
  push  a                                   ; $1679 |
  mov   a,pitch_scale_table+y               ; $167a | pitch scale (fraction)
  mov   y,$04                               ; $167d |
  mul   ya                                  ; $167f |
  pop   a                                   ; $1680 |
  mul   ya                                  ; $1681 |
  addw  ya,$06                              ; $1682 | ?, ya = final pitch value
  mov   $04,a                               ; $1684 |
  mov   a,#$02                              ; $1686 |
  or    a,$23                               ; $1688 |
  mov   $f2,a                               ; $168a |
  mov   ($f3),($04)                         ; $168c | set P(L)
  inc   a                                   ; $168f |
  mov   $f2,a                               ; $1690 |
  mov   a,y                                 ; $1692 |
  and   a,#$3f                              ; $1693 |
  mov   $f3,a                               ; $1695 | set P(H)
  ret                                       ; $1697 |

vcmd_dispatch_table:
  dw vcmd_rest                              ; $1698 | e0 - rest
  dw vcmd_rest_with_duration                ; $169a | e1 - rest with duration
  dw vcmd_instrument                        ; $169c | e2 - instrument
  dw vcmd_panpot                            ; $169e | e3 - panpot
  dw vcmd_vibrato                           ; $16a0 | e4 - vibrato
  dw vcmd_e5                                ; $16a2 | e5
  dw vcmd_repeat_start                      ; $16a4 | e6 - start loop
  dw vcmd_repeat_end                        ; $16a6 | e7 - end loop
  dw vcmd_subrepeat_start                   ; $16a8 | e8 - start loop #2
  dw vcmd_subrepeat_end                     ; $16aa | e9 - end loop #2
  dw vcmd_tempo                             ; $16ac | ea - set tempo (per track)
  dw vcmd_eb                                ; $16ae | eb
  dw vcmd_transpose                         ; $16b0 | ec - per-voice transpose
  dw vcmd_ed                                ; $16b2 | ed
  dw vcmd_volume                            ; $16b4 | ee - set volume
  dw vcmd_ef                                ; $16b6 | ef
  dw vcmd_f0                                ; $16b8 | f0
  dw vcmd_f1                                ; $16ba | f1
  dw vcmd_tuning                            ; $16bc | f2 - tuning
  dw vcmd_f3                                ; $16be | f3
  dw vcmd_f4                                ; $16b0 | f4
  dw vcmd_echo_params                       ; $16c2 | f5 - echo params
  dw vcmd_complexed_repeat_start            ; $16c4 | f6 - start complexed loop
  dw vcmd_complexed_repeat_end              ; $16c6 | f7 - end complexed loop
  dw vcmd_f8                                ; $16c8 | f8
  dw vcmd_vibrato_depth_fade_length         ; $16ca | f9 - vibrato depth fade length
  dw vcmd_fa                                ; $16cc | fa
  dw vcmd_fb                                ; $16ce | fb
  dw vcmd_volume_and_instrument             ; $16d0 | fc - volume and instrument
  dw vcmd_goto                              ; $16d2 | fd - goto
  dw vcmd_subroutine                        ; $16d4 | fe - subroutine
  dw vcmd_finish                            ; $16d6 | ff - end of track / end subroutine

; Byte counts intended as a rough indication of argument usage; not fully reliable.
vcmd_length_table:
  dw $0001,$0002,$0001,$0001                ; $16d8 | e0-e3
  dw $0003,$0003,$0000,$0003                ; $16e0 | e4-e7
  dw $0000,$0003,$0001,$0002                ; $16e8 | e8-eb
  dw $0001,$0001,$0001,$0002                ; $16f0 | ec-ef
  dw $0001,$0003,$0001,$0003                ; $16f8 | f0-f3
  dw $0003,$0003,$0000,$0000                ; $1700 | f4-f7
  dw $0002,$0001,$0003,$0001                ; $1708 | f8-fb
  dw $0001,$0002,$0002,$0000                ; $1710 | fc-ff

vcmd_rest:
  mov   $0230+x,a                           ; $1718 |
  mov   $60+x,a                             ; $171b |
  or    ($10),($11)                         ; $171d |
  mov   a,#$00                              ; $1720 |
  mov   $0231+x,a                           ; $1722 |
  mov   $61+x,a                             ; $1725 |
  mov   $01b1+x,a                           ; $1727 |
  bra   loc_1741                            ; $172a |

vcmd_rest_with_duration:
  mov   $0230+x,a                           ; $172c |
  mov   $60+x,a                             ; $172f |
  call  read_voice_byte                     ; $1731 | arg2
  mov   $0231+x,a                           ; $1734 |
  asl   a                                   ; $1737 |
  mov   y,$60+x                             ; $1738 |
  mul   ya                                  ; $173a |
  mov   a,y                                 ; $173b |
  bne   loc_173f                            ; $173c |
  inc   a                                   ; $173e |

loc_173f:
  mov   $61+x,a                             ; $173f |

; if the next is vcmd f3, handle it here somehow
loc_1741:
  mov   a,($30+x)                           ; $1741 |
  cmp   a,#$f3                              ; $1743 |
  bne   locret_1771                         ; $1745 |

sub_1747:
  clr4  $20                                 ; $1747 |
  call  increment_voice_ptr                 ; $1749 | strip $f3
  call  read_voice_byte                     ; $174c | arg1 - pitch slide delay
  mov   $81+x,a                             ; $174f |
  call  read_voice_byte                     ; $1751 | arg2 - pitch slide length
  mov   $80+x,a                             ; $1754 |
  call  read_voice_byte                     ; $1756 | arg3 - note number after the slide
  clrc                                      ; $1759 |
  adc   a,$0221+x                           ; $175a |
  mov   $02c1+x,a                           ; $175d |
  mov   a,#$00                              ; $1760 |
  mov   $02c0+x,a                           ; $1762 |
  call  read_voice_byte                     ; $1765 |\
  mov   $02b0+x,a                           ; $1768 | | arg4/arg5 - pitch delta (in semitones, signed 8-bit integer + fraction)
  call  read_voice_byte                     ; $176b | |
  mov   $02b1+x,a                           ; $176e |/

locret_1771:
  ret                                       ; $1771 |

vcmd_instrument:
  or    ($10),($11)                         ; $1772 |
  mov   y,a                                 ; $1775 |
  mov   a,$01a1+x                           ; $1776 |
  bne   loc_17a2                            ; $1779 |
  mov   a,y                                 ; $177b |
  cmp   a,#$28                              ; $177c |
  bcs   loc_178c                            ; $177e | branch if arg1 (patch) >= 0x28
  mov   $04,#$ce                            ; $1780 |
  mov   $05,#$07                            ; $1783 | $04 = #$07ce
  call  load_instrument                     ; $1786 |
  jmp   exec_vcmds                          ; $1789 |

; when patch >= 0x28:
loc_178c:
  sbc   a,#$28                              ; $178c | patch -= 0x28
  push  a                                   ; $178e |
  mov   y,$25                               ; $178f |
  mov   a,ptr16_07bc+y                      ; $1791 |
  mov   $04,a                               ; $1794 |
  mov   a,ptr16_07bc+1+y                    ; $1796 |
  mov   $05,a                               ; $1799 | $04 = *(u16)($07bc + $25 * 2)
  pop   a                                   ; $179b |
  call  load_instrument                     ; $179c |
  jmp   exec_vcmds                          ; $179f |

loc_17a2:
  mov   y,a                                 ; $17a2 |
  mov   a,#$04                              ; $17a3 |
  or    a,$23                               ; $17a5 |
  mov   $06,a                               ; $17a7 |
  mov   $f2,a                               ; $17a9 |
  mov   a,$01a0+x                           ; $17ab |
  mov   $f3,a                               ; $17ae | set SRCN
  mov   $04,#$00                            ; $17b0 |
  mov   $05,#$06                            ; $17b3 | $04 = #$0600
  mov   a,#$06                              ; $17b6 |
  mul   ya                                  ; $17b8 |
  addw  ya,$04                              ; $17b9 |
  movw  $04,ya                              ; $17bb |
  mov   y,#$00                              ; $17bd |
  call  sub_17e1                            ; $17bf |
  jmp   exec_vcmds                          ; $17c2 |

; load instrument for percussive note
load_percussive_instrument:
  mov   $04,#$4b                            ; $17c5 |
  mov   $05,#$0a                            ; $17c8 | $04 = #$0a4b

; load instrument attributes from instrument table
; a = patch number, $04 = instrument table address
load_instrument:
  mov   y,#$07                              ; $17cb |
  mul   ya                                  ; $17cd |
  addw  ya,$04                              ; $17ce |
  movw  $04,ya                              ; $17d0 | load address by index `$04 += (patch * 7)`
  mov   y,#$00                              ; $17d2 |
  mov   a,#$04                              ; $17d4 |
  or    a,$23                               ; $17d6 |
  mov   $06,a                               ; $17d8 |
  mov   $f2,a                               ; $17da |
  mov   a,($04)+y                           ; $17dc |
  mov   $f3,a                               ; $17de | [0] set SRCN
  inc   y                                   ; $17e0 |

sub_17e1:
  mov   a,($04)+y                           ; $17e1 |
  mov   $0240+x,a                           ; $17e3 | [1] tuning in semitones (signed)
  inc   y                                   ; $17e6 |
  mov   a,($04)+y                           ; $17e7 |
  mov   $0241+x,a                           ; $17e9 | [2] tuning in semitones/256 (signed)
  bpl   loc_17f5                            ; $17ec |
  mov   a,$0240+x                           ; $17ee |
  dec   a                                   ; $17f1 |
  mov   $0240+x,a                           ; $17f2 |

loc_17f5:
  inc   y                                   ; $17f5 |
  inc   $06                                 ; $17f6 |
  mov   ($f2),($06)                         ; $17f8 |
  inc   $06                                 ; $17fb |
  mov   a,($04)+y                           ; $17fd |
  mov   $f3,a                               ; $17ff | [3] set ADSR(1)
  mov   $0270+x,a                           ; $1801 | save ADSR(1)
  bmi   loc_1808                            ; $1804 |
  inc   $06                                 ; $1806 |

loc_1808:
  inc   y                                   ; $1808 |
  mov   ($f2),($06)                         ; $1809 |
  mov   a,($04)+y                           ; $180c |
  mov   $f3,a                               ; $180e | [4] set ADSR(2) or GAIN (depends on ADSR(1))
  mov   $0271+x,a                           ; $1810 |
  mov   a,#$00                              ; $1813 |
  mov   $01c1+x,a                           ; $1815 |
  inc   y                                   ; $1818 |
  bbs3  $20,loc_1825                        ; $1819 |
  mov   a,($04)+y                           ; $181c |
  mov   $02a1+x,a                           ; $181e | [5] panpot
  mov   a,#$00                              ; $1821 |
  mov   $70+x,a                             ; $1823 |

loc_1825:
  inc   y                                   ; $1825 |
  mov   a,($04)+y                           ; $1826 |
  mov   $01b0+x,a                           ; $1828 | [6] volume delta (decreased)
  ret                                       ; $182b |

vcmd_panpot:
  cmp   a,#$2a                              ; $182c |
  beq   loc_183e                            ; $182e |
  cmp   a,#$2c                              ; $1830 |
  beq   loc_1843                            ; $1832 |
  mov   $02a1+x,a                           ; $1834 |
  mov   a,#$00                              ; $1837 |
  mov   $70+x,a                             ; $1839 |
  jmp   exec_vcmds                          ; $183b |

loc_183e:
  set3  $20                                 ; $183e |
  jmp   exec_vcmds                          ; $1840 |

loc_1843:
  clr3  $20                                 ; $1843 |
  jmp   exec_vcmds                          ; $1845 |

vcmd_vibrato:
  push  a                                   ; $1848 |
  call  read_voice_byte                     ; $1849 | arg2 - vibrato rate
  cmp   a,#$80                              ; $184c |
  bcs   loc_1863                            ; $184e |
  asl   a                                   ; $1850 |
  bmi   loc_185f                            ; $1851 |
  asl   a                                   ; $1853 |
  bmi   loc_185b                            ; $1854 |
  asl   a                                   ; $1856 |
  mov   y,#$01                              ; $1857 | arg2 is in 0x00..0x1f
  bra   loc_186b                            ; $1859 |

loc_185b:
  mov   y,#$02                              ; $185b | arg2 is in 0x20..0x3f
  bra   loc_186b                            ; $185d |

loc_185f:
  mov   y,#$04                              ; $185f | arg2 is in 0x40..0x7f
  bra   loc_186b                            ; $1861 |

loc_1863:
  mov   y,#$08                              ; $1863 | arg2 is in 0x80..0xfe
  cmp   a,#$ff                              ; $1865 |
  bne   loc_186b                            ; $1867 |
  mov   y,#$10                              ; $1869 | arg2 == 0xff

loc_186b:
  mov   $b1+x,a                             ; $186b |
  mov   $c0+x,y                             ; $186d |
  call  read_voice_byte                     ; $186f | arg3 - vibrato depth
  mov   $0220+x,a                           ; $1872 |
  pop   a                                   ; $1875 |
  cmp   a,#$c8                              ; $1876 | arg1 - vibrato delay or vibrato fade length
  bcs   loc_1885                            ; $1878 |
; if arg1 < 200
  mov   $0210+x,a                           ; $187a | set vibrato delay
  mov   a,#$00                              ; $187d |
  mov   $0211+x,a                           ; $187f | zero vibrato depth fade length
  jmp   exec_vcmds                          ; $1882 |

; else # arg1 >= 200
loc_1885:
  mov   y,a                                 ; $1885 |
  mov   a,#$00                              ; $1886 |
  mov   $0210+x,a                           ; $1888 | zero vibrato delay
  mov   a,y                                 ; $188b |
  setc                                      ; $188c |
  sbc   a,#$c7                              ; $188d | vibrato depth fade length = arg1 - 199

vcmd_vibrato_depth_fade_length:
  mov   $0211+x,a                           ; $188f |
  push  a                                   ; $1892 |
  mov   y,#$00                              ; $1893 |
  mov   a,$0220+x                           ; $1895 |
  pop   x                                   ; $1898 |
  div   ya,x                                ; $1899 |
  push  a                                   ; $189a |
  mov   a,#$00                              ; $189b |
  div   ya,x                                ; $189d |
  mov   x,$22                               ; $189e |
  mov   $02e0+x,a                           ; $18a0 |
  pop   a                                   ; $18a3 |
  mov   $02e1+x,a                           ; $18a4 |
  jmp   exec_vcmds                          ; $18a7 |

vcmd_e5:
  mov   $01d1+x,a                           ; $18aa |
  call  read_voice_byte                     ; $18ad |
  mov   $02f1+x,a                           ; $18b0 |
  call  read_voice_byte                     ; $18b3 |
  mov   $02f0+x,a                           ; $18b6 |
  mov   a,#$00                              ; $18b9 |
  mov   $d1+x,a                             ; $18bb |
  mov   $01d0+x,a                           ; $18bd |
  jmp   exec_vcmds                          ; $18c0 |

vcmd_repeat_start:
  mov   a,$30+x                             ; $18c3 |
  mov   $0150+x,a                           ; $18c5 |
  mov   a,$31+x                             ; $18c8 |
  mov   $0151+x,a                           ; $18ca | save return address
  jmp   exec_vcmds                          ; $18cd |

vcmd_repeat_end:
  cmp   a,#$00                              ; $18d0 | arg1: repeat count
  beq   loc_18f2                            ; $18d2 | $0 => infinite loop
  inc   $50+x                               ; $18d4 | increment repeat counter
  cbne  $50+x,loc_18f2                      ; $18d6 |
; repeat end
  call  increment_voice_ptr                 ; $18d9 |
  call  increment_voice_ptr                 ; $18dc |
  mov   a,#$00                              ; $18df |
  mov   $50+x,a                             ; $18e1 |
  mov   $0110+x,a                           ; $18e3 |
  mov   $0111+x,a                           ; $18e6 |
  mov   $0130+x,a                           ; $18e9 |
  mov   $0131+x,a                           ; $18ec |
  jmp   exec_vcmds                          ; $18ef |

; repeat again
loc_18f2:
  call  read_voice_byte                     ; $18f2 |
  mov   y,#$00                              ; $18f5 |
  or    a,#$00                              ; $18f7 |
  beq   loc_1910                            ; $18f9 |
  bpl   loc_18fe                            ; $18fb |
  dec   y                                   ; $18fd |

loc_18fe:
  movw  $04,ya                              ; $18fe |
  mov   a,$0111+x                           ; $1900 |
  mov   y,a                                 ; $1903 |
  mov   a,$0110+x                           ; $1904 |
  addw  ya,$04                              ; $1907 |
  mov   $0110+x,a                           ; $1909 |
  mov   a,y                                 ; $190c |
  mov   $0111+x,a                           ; $190d | add arg2 to $0110/1

; adjust pitch by repeat count
loc_1910:
  call  read_voice_byte                     ; $1910 | get arg3 (delta pitch, signed)
  or    a,#$00                              ; $1913 |
  beq   loc_1934                            ; $1915 | do nothing if arg3 == 0
  mov   y,#$00                              ; $1917 |
  asl   a                                   ; $1919 |
  bcc   loc_191d                            ; $191a |
  dec   y                                   ; $191c |

loc_191d:
  mov   $04,y                               ; $191d |
  asl   a                                   ; $191f |
  rol   $04                                 ; $1920 |
  asl   a                                   ; $1922 |
  rol   $04                                 ; $1923 |
  clrc                                      ; $1925 |
  adc   a,$0130+x                           ; $1926 |
  mov   $0130+x,a                           ; $1929 |
  mov   a,$04                               ; $192c |
  adc   a,$0131+x                           ; $192e |
  mov   $0131+x,a                           ; $1931 | add (arg3 * 8) to $0130/1+x

loc_1934:
  mov   a,$0150+x                           ; $1934 |
  mov   $30+x,a                             ; $1937 |
  mov   a,$0151+x                           ; $1939 |
  mov   $31+x,a                             ; $193c | back to return address
  jmp   exec_vcmds                          ; $193e |

vcmd_subrepeat_start:
  mov   a,$30+x                             ; $1941 |
  mov   $0160+x,a                           ; $1943 |
  mov   a,$31+x                             ; $1946 |
  mov   $0161+x,a                           ; $1948 | save return address
  mov   a,#$00                              ; $194b |
  mov   $51+x,a                             ; $194d |
  mov   $0120+x,a                           ; $194f |
  mov   $0121+x,a                           ; $1952 |
  mov   $0140+x,a                           ; $1955 |
  mov   $0141+x,a                           ; $1958 |
  jmp   exec_vcmds                          ; $195b |

vcmd_subrepeat_end:
  cmp   a,#$00                              ; $195e |
  beq   loc_1970                            ; $1960 |
  inc   $51+x                               ; $1962 |
  cbne  $51+x,loc_1970                      ; $1964 |
; repeat end
  call  increment_voice_ptr                 ; $1967 |
  call  increment_voice_ptr                 ; $196a |
  jmp   exec_vcmds                          ; $196d |

; repeat again
loc_1970:
  call  read_voice_byte                     ; $1970 |
  mov   y,#$00                              ; $1973 |
  or    a,#$00                              ; $1975 |
  beq   loc_198e                            ; $1977 |
  bpl   loc_197c                            ; $1979 |
  dec   y                                   ; $197b |

loc_197c:
  movw  $04,ya                              ; $197c |
  mov   a,$0121+x                           ; $197e |
  mov   y,a                                 ; $1981 |
  mov   a,$0120+x                           ; $1982 |
  addw  ya,$04                              ; $1985 |
  mov   $0120+x,a                           ; $1987 |
  mov   a,y                                 ; $198a |
  mov   $0121+x,a                           ; $198b | add arg2 to $0120/1

; adjust pitch by repeat count
loc_198e:
  call  read_voice_byte                     ; $198e | get arg3 (delta pitch, signed)
  or    a,#$00                              ; $1991 |
  beq   loc_19b2                            ; $1993 | do nothing if arg3 == 0
  mov   y,#$00                              ; $1995 |
  asl   a                                   ; $1997 |
  bcc   loc_199b                            ; $1998 |
  dec   y                                   ; $199a |

loc_199b:
  mov   $04,y                               ; $199b |
  asl   a                                   ; $199d |
  rol   $04                                 ; $199e |
  asl   a                                   ; $19a0 |
  rol   $04                                 ; $19a1 |
  clrc                                      ; $19a3 |
  adc   a,$0140+x                           ; $19a4 |
  mov   $0140+x,a                           ; $19a7 |
  mov   a,$04                               ; $19aa |
  adc   a,$0141+x                           ; $19ac |
  mov   $0141+x,a                           ; $19af | add (arg3 * 8) to $0140/1+x

loc_19b2:
  mov   a,$0160+x                           ; $19b2 |
  mov   $30+x,a                             ; $19b5 |
  mov   a,$0161+x                           ; $19b7 |
  mov   $31+x,a                             ; $19ba | back to return address
  jmp   exec_vcmds                          ; $19bc |

vcmd_tempo:
  mov   $41+x,a                             ; $19bf |
  mov   a,#$00                              ; $19c1 |
  mov   $01c0+x,a                           ; $19c3 |
  jmp   exec_vcmds                          ; $19c6 |

vcmd_eb:
  mov   $0250+x,a                           ; $19c9 |
  call  read_voice_byte                     ; $19cc |
  mov   $01c0+x,a                           ; $19cf |
  mov   a,#$00                              ; $19d2 |
  mov   $0251+x,a                           ; $19d4 |
  jmp   exec_vcmds                          ; $19d7 |

vcmd_transpose:
  mov   $0221+x,a                           ; $19da |
  jmp   exec_vcmds                          ; $19dd |

vcmd_volume:
  mov   $0291+x,a                           ; $19e0 |
  mov   a,#$00                              ; $19e3 |
  mov   $71+x,a                             ; $19e5 |
  jmp   exec_vcmds                          ; $19e7 |

vcmd_ef:
  mov   $0200+x,a                           ; $19ea |
  call  read_voice_byte                     ; $19ed |
  mov   $71+x,a                             ; $19f0 |
  mov   a,#$00                              ; $19f2 |
  mov   $0290+x,a                           ; $19f4 |
  jmp   exec_vcmds                          ; $19f7 |

vcmd_f0:
  mov   $90+x,a                             ; $19fa |
  set4  $20                                 ; $19fc |
  jmp   exec_vcmds                          ; $19fe |

vcmd_f1:
  clr4  $20                                 ; $1a01 |
  mov   $91+x,a                             ; $1a03 |
  call  read_voice_byte                     ; $1a05 |
  mov   $90+x,a                             ; $1a08 |
  call  read_voice_byte                     ; $1a0a |
  mov   $0260+x,a                           ; $1a0d |
  call  read_voice_byte                     ; $1a10 |
  mov   $02b0+x,a                           ; $1a13 |
  call  read_voice_byte                     ; $1a16 |
  mov   $02b1+x,a                           ; $1a19 |
  jmp   exec_vcmds                          ; $1a1c |

vcmd_tuning:
  asl   a                                   ; $1a1f | arg1: tuning (signed)
  bcs   loc_1a2a                            ; $1a20 |
; when arg1 >= 0
  mov   y,#$00                              ; $1a22 |
  asl   a                                   ; $1a24 |
  bcc   loc_1a30                            ; $1a25 |
  inc   y                                   ; $1a27 |
  bra   loc_1a30                            ; $1a28 |

; when arg1 < 0
loc_1a2a:
  mov   y,#$ff                              ; $1a2a |
  asl   a                                   ; $1a2c |
  bcs   loc_1a30                            ; $1a2d |
  dec   y                                   ; $1a2f |

loc_1a30:
  mov   $0280+x,a                           ; $1a30 |
  mov   a,y                                 ; $1a33 |
  mov   $0281+x,a                           ; $1a34 | $0280/1+x = arg1 * 4
  jmp   exec_vcmds                          ; $1a37 |

vcmd_f3:
  call  increment_voice_ptr                 ; $1a3a |
  call  increment_voice_ptr                 ; $1a3d |
  call  increment_voice_ptr                 ; $1a40 |
  call  increment_voice_ptr                 ; $1a43 |
  jmp   exec_vcmds                          ; $1a46 |

vcmd_f4:
  or    a,#$00                              ; $1a49 |
  beq   loc_1a63                            ; $1a4b |
  clr5  $13                                 ; $1a4d |
  mov   $14,a                               ; $1a4f |
  mov   $f2,#$4d                            ; $1a51 |
  mov   $f3,a                               ; $1a54 | set EON
  call  read_voice_byte                     ; $1a56 |
  mov   $15,a                               ; $1a59 |
  call  read_voice_byte                     ; $1a5b |
  mov   $16,a                               ; $1a5e |
  jmp   exec_vcmds                          ; $1a60 |

loc_1a63:
  call  sub_1ad1                            ; $1a63 |

loc_1a66:
  call  increment_voice_ptr                 ; $1a66 |
  call  increment_voice_ptr                 ; $1a69 |
  jmp   exec_vcmds                          ; $1a6c |

vcmd_echo_params:
  cmp   $14,#$00                            ; $1a6f |
  beq   loc_1a66                            ; $1a72 |
  and   a,#$0f                              ; $1a74 |
  cmp   a,$18                               ; $1a76 |
  beq   loc_1aab                            ; $1a78 |
  mov   y,$18                               ; $1a7a |
  mov   $18,a                               ; $1a7c |
  mov   a,y                                 ; $1a7e |
  asl   a                                   ; $1a7f |
  asl   a                                   ; $1a80 |
  asl   a                                   ; $1a81 |
  asl   a                                   ; $1a82 |
  or    a,#$0f                              ; $1a83 |
  clrc                                      ; $1a85 |
  adc   a,$19                               ; $1a86 |
  mov   $19,a                               ; $1a88 |
  mov   $f2,#$6c                            ; $1a8a |
  mov   a,$13                               ; $1a8d |
  or    a,#$20                              ; $1a8f |
  mov   $f3,a                               ; $1a91 | set FLG
  mov   $f2,#$7d                            ; $1a93 |
  mov   ($f3),($18)                         ; $1a96 | set EDL
  mov   a,$18                               ; $1a99 |
  beq   loc_1aa6                            ; $1a9b |
  asl   a                                   ; $1a9d |
  asl   a                                   ; $1a9e |
  asl   a                                   ; $1a9f |
  eor   a,#$ff                              ; $1aa0 |
  inc   a                                   ; $1aa2 |
  clrc                                      ; $1aa3 |
  adc   a,#$00                              ; $1aa4 |

loc_1aa6:
  mov   $f2,#$6d                            ; $1aa6 |
  mov   $f3,a                               ; $1aa9 | set ESA

loc_1aab:
  mov   a,$18                               ; $1aab |
  asl   a                                   ; $1aad |
  asl   a                                   ; $1aae |
  asl   a                                   ; $1aaf |
  asl   a                                   ; $1ab0 |
  or    a,#$0f                              ; $1ab1 |
  mov   $1a,a                               ; $1ab3 |
  call  read_voice_byte                     ; $1ab5 |
  mov   $17,a                               ; $1ab8 |
  call  increment_voice_ptr                 ; $1aba |
  mov   y,#$00                              ; $1abd |

loc_1abf:
  mov   a,$1ec4+y                           ; $1abf |
  mov   $f2,a                               ; $1ac2 |
  mov   a,$1ecc+y                           ; $1ac4 |
  mov   $f3,a                               ; $1ac7 | set FIR
  inc   y                                   ; $1ac9 |
  cmp   y,#$08                              ; $1aca |
  bne   loc_1abf                            ; $1acc |
  jmp   exec_vcmds                          ; $1ace |

sub_1ad1:
  mov   a,$14                               ; $1ad1 |
  beq   locret_1b09                         ; $1ad3 |
  mov   a,$18                               ; $1ad5 |
  asl   a                                   ; $1ad7 |
  asl   a                                   ; $1ad8 |
  inc   a                                   ; $1ad9 |
  mov   $19,a                               ; $1ada |
  mov   a,#$00                              ; $1adc |
  mov   $f2,#$2c                            ; $1ade |
  mov   $f3,a                               ; $1ae1 | set EVOL(L)
  mov   $f2,#$3c                            ; $1ae3 |
  mov   $f3,a                               ; $1ae6 | set EVOL(R)
  mov   $f2,#$0d                            ; $1ae8 |
  mov   $f3,a                               ; $1aeb | set EFB
  set5  $13                                 ; $1aed |
  mov   $f2,#$6c                            ; $1aef |
  mov   ($f3),($13)                         ; $1af2 | set FLG
  mov   $14,a                               ; $1af5 |
  mov   $15,a                               ; $1af7 |
  mov   $16,a                               ; $1af9 |
  mov   $17,a                               ; $1afb |
  mov   $18,a                               ; $1afd |
  mov   $f2,#$7d                            ; $1aff |
  mov   $f3,a                               ; $1b02 | set EDL
  mov   $f2,#$6d                            ; $1b04 |
  mov   $f3,a                               ; $1b07 | set ESA

locret_1b09:
  ret                                       ; $1b09 |

vcmd_complexed_repeat_start:
  mov   a,$30+x                             ; $1b0a |
  mov   $0170+x,a                           ; $1b0c |
  mov   a,$31+x                             ; $1b0f |
  mov   $0171+x,a                           ; $1b11 | save current address to $0170/1
  mov   a,#$c0                              ; $1b14 |
  tclr  $0020,a                             ; $1b16 | reset "visited" flags
  jmp   exec_vcmds                          ; $1b19 |

vcmd_complexed_repeat_end:
  bbs6  $20,loc_1b27                        ; $1b1c |
  bbs7  $20,loc_1b42                        ; $1b1f |
; first time, do nothing
  set6  $20                                 ; $1b22 |
  jmp   exec_vcmds                          ; $1b24 |

; second time
loc_1b27:
  clr6  $20                                 ; $1b27 |
  set7  $20                                 ; $1b29 |
  mov   a,$30+x                             ; $1b2b |
  mov   $0180+x,a                           ; $1b2d |
  mov   a,$31+x                             ; $1b30 |
  mov   $0181+x,a                           ; $1b32 | save current address to $0180/1
  mov   a,$0170+x                           ; $1b35 |
  mov   $30+x,a                             ; $1b38 |
  mov   a,$0171+x                           ; $1b3a |
  mov   $31+x,a                             ; $1b3d | back to $0170/1
  jmp   exec_vcmds                          ; $1b3f |

; third time
loc_1b42:
  set6  $20                                 ; $1b42 |
  clr7  $20                                 ; $1b44 |
  mov   a,$0180+x                           ; $1b46 |
  mov   $30+x,a                             ; $1b49 |
  mov   a,$0181+x                           ; $1b4b |
  mov   $31+x,a                             ; $1b4e | back to $0180/1
  jmp   exec_vcmds                          ; $1b50 |

vcmd_f8:
  mov   $0201+x,a                           ; $1b53 |
  call  read_voice_byte                     ; $1b56 |
  mov   $70+x,a                             ; $1b59 |
  mov   a,#$00                              ; $1b5b |
  mov   $02a0+x,a                           ; $1b5d |
  jmp   exec_vcmds                          ; $1b60 |

vcmd_fa:
  mov   $0270+x,a                           ; $1b63 |
  mov   y,a                                 ; $1b66 |
  mov   a,#$05                              ; $1b67 |
  or    a,$23                               ; $1b69 |
  mov   $f2,a                               ; $1b6b |
  mov   $f3,y                               ; $1b6d | set ADSR(1)
  inc   a                                   ; $1b6f |
  cmp   y,#$80                              ; $1b70 |
  bcc   loc_1b7d                            ; $1b72 |
  mov   $f2,a                               ; $1b74 |
  call  read_voice_byte                     ; $1b76 |
  mov   $f3,a                               ; $1b79 | set ADSR(2)
  bra   vcmd_62                             ; $1b7b |

loc_1b7d:
  inc   a                                   ; $1b7d |
  mov   $f2,a                               ; $1b7e |
  call  read_voice_byte                     ; $1b80 |
  mov   $f3,a                               ; $1b83 | set GAIN
  mov   $0271+x,a                           ; $1b85 |

vcmd_62:
  call  read_voice_byte                     ; $1b88 |
  cmp   a,#$c8                              ; $1b8b |
  bcs   loc_1b9b                            ; $1b8d |
  cmp   a,#$64                              ; $1b8f |
  bcc   loc_1ba1                            ; $1b91 |
  sbc   a,#$64                              ; $1b93 |
  and   a,#$1f                              ; $1b95 |
  or    a,#$80                              ; $1b97 |
  bra   loc_1ba1                            ; $1b99 |

loc_1b9b:
  sbc   a,#$c8                              ; $1b9b |
  and   a,#$1f                              ; $1b9d |
  or    a,#$a0                              ; $1b9f |

loc_1ba1:
  mov   $01c1+x,a                           ; $1ba1 |
  jmp   exec_vcmds                          ; $1ba4 |

vcmd_ed:
  push  a                                   ; $1ba7 |
  mov   a,$0270+x                           ; $1ba8 |
  pop   a                                   ; $1bab |
  bpl   loc_1bba                            ; $1bac |
  mov   $0270+x,a                           ; $1bae |
  mov   y,a                                 ; $1bb1 |
  mov   a,#$05                              ; $1bb2 |

loc_1bb4:
  or    a,$23                               ; $1bb4 |
  mov   $f2,a                               ; $1bb6 |
  mov   $f3,y                               ; $1bb8 | set ADSR(1)

loc_1bba:
  jmp   exec_vcmds                          ; $1bba |

vcmd_fb:
  push  a                                   ; $1bbd |
  mov   a,$0270+x                           ; $1bbe |
  pop   y                                   ; $1bc1 |
  bpl   loc_1bba                            ; $1bc2 |
  mov   a,#$06                              ; $1bc4 |
  bra   loc_1bb4                            ; $1bc6 |

vcmd_volume_and_instrument:
  mov   $0291+x,a                           ; $1bc8 |
  mov   a,#$00                              ; $1bcb |
  mov   $71+x,a                             ; $1bcd |
  call  read_voice_byte                     ; $1bcf |
  jmp   vcmd_instrument                     ; $1bd2 | redirect to vcmd e2

vcmd_goto:
  mov   $04,a                               ; $1bd5 |
  call  read_voice_byte                     ; $1bd7 |
  mov   $31+x,a                             ; $1bda |
  mov   a,$04                               ; $1bdc |
  mov   $30+x,a                             ; $1bde |
  jmp   exec_vcmds                          ; $1be0 |

vcmd_subroutine:
  push  a                                   ; $1be3 |
  call  read_voice_byte                     ; $1be4 |
  mov   y,a                                 ; $1be7 |
  mov   a,$30+x                             ; $1be8 |
  mov   $0100+x,a                           ; $1bea |
  mov   a,$31+x                             ; $1bed |
  mov   $0101+x,a                           ; $1bef |
  pop   a                                   ; $1bf2 |
  mov   $30+x,a                             ; $1bf3 |
  mov   $31+x,y                             ; $1bf5 |
  set2  $20                                 ; $1bf7 |
  jmp   exec_vcmds                          ; $1bf9 |

vcmd_finish:
  bbc2  $20,.end_track                      ; $1bfc |

.end_subroutine
  clr2  $20                                 ; $1bff |
  mov   a,$0100+x                           ; $1c01 |
  mov   $30+x,a                             ; $1c04 |
  mov   a,$0101+x                           ; $1c06 |
  mov   $31+x,a                             ; $1c09 |
  jmp   exec_vcmds                          ; $1c0b |

.end_track
  mov   a,#$00                              ; $1c0e |
  mov   $d0+x,a                             ; $1c10 |
  mov   $01a1+x,a                           ; $1c12 |
  mov   $0190+x,a                           ; $1c15 |
  mov   a,$11                               ; $1c18 |
  tset  $0010,a                             ; $1c1a |
  tclr  $000f,a                             ; $1c1d |
  set5  $20                                 ; $1c20 |
  ret                                       ; $1c22 |

sub_1c23:
  movw  $06,ya                              ; $1c23 |
  mov   a,$04                               ; $1c25 |
  xcn   a                                   ; $1c27 |
  and   a,#$f0                              ; $1c28 |
  push  a                                   ; $1c2a |
  mov   a,$04                               ; $1c2b |
  bmi   loc_1c3e                            ; $1c2d |
  xcn   a                                   ; $1c2f |
  and   a,#$07                              ; $1c30 |
  mov   y,a                                 ; $1c32 |
  pop   a                                   ; $1c33 |
  clrc                                      ; $1c34 |
  addw  ya,$06                              ; $1c35 |
  bcs   loc_1c4c                            ; $1c37 |
  cmp   y,$05                               ; $1c39 |
  bcs   loc_1c4c                            ; $1c3b |
  ret                                       ; $1c3d |

loc_1c3e:
  xcn   a                                   ; $1c3e |
  or    a,#$f8                              ; $1c3f |
  mov   y,a                                 ; $1c41 |
  pop   a                                   ; $1c42 |
  clrc                                      ; $1c43 |
  addw  ya,$06                              ; $1c44 |
  bcc   loc_1c4c                            ; $1c46 |
  cmp   y,$05                               ; $1c48 |
  bcs   locret_1c51                         ; $1c4a |

loc_1c4c:
  mov   $04,#$00                            ; $1c4c |
  mov   y,$05                               ; $1c4f |

locret_1c51:
  ret                                       ; $1c51 |

sub_1c52:
  mov   a,$e0+x                             ; $1c52 |
  mov   y,$e1+x                             ; $1c54 |
  movw  $04,ya                              ; $1c56 |
  mov   a,$02c1+x                           ; $1c58 |
  mov   y,a                                 ; $1c5b |
  mov   a,$02c0+x                           ; $1c5c |
  subw  ya,$04                              ; $1c5f |
  beq   loc_1c95                            ; $1c61 |
  movw  $06,ya                              ; $1c63 |
  bpl   loc_1c6e                            ; $1c65 |
  mov   a,#$00                              ; $1c67 |
  mov   y,a                                 ; $1c69 |
  subw  ya,$06                              ; $1c6a |
  mov   $06,a                               ; $1c6c |

loc_1c6e:
  mov   a,$90+x                             ; $1c6e |
  mul   ya                                  ; $1c70 |
  movw  $08,ya                              ; $1c71 |
  mov   y,$06                               ; $1c73 |
  mov   a,$90+x                             ; $1c75 |
  mul   ya                                  ; $1c77 |
  mov   a,y                                 ; $1c78 |
  mov   y,#$00                              ; $1c79 |
  addw  ya,$08                              ; $1c7b |
  bne   loc_1c80                            ; $1c7d |
  inc   a                                   ; $1c7f |

loc_1c80:
  bbc7  $07,loc_1c8e                        ; $1c80 |
  movw  $06,ya                              ; $1c83 |
  movw  ya,$04                              ; $1c85 |
  subw  ya,$06                              ; $1c87 |
  mov   $e0+x,a                             ; $1c89 |
  mov   $e1+x,y                             ; $1c8b |
  ret                                       ; $1c8d |

loc_1c8e:
  addw  ya,$04                              ; $1c8e |
  mov   $e0+x,a                             ; $1c90 |
  mov   $e1+x,y                             ; $1c92 |
  ret                                       ; $1c94 |

loc_1c95:
  mov   $80+x,a                             ; $1c95 |
  ret                                       ; $1c97 |

sub_1c98:
  mov   a,$b0+x                             ; $1c98 |
  clrc                                      ; $1c9a |
  adc   a,$b1+x                             ; $1c9b |
  mov   $b0+x,a                             ; $1c9d |
  bcc   locret_1cdb                         ; $1c9f |
  set0  $21                                 ; $1ca1 |
  mov   a,$c1+x                             ; $1ca3 |
  clrc                                      ; $1ca5 |
  adc   a,$c0+x                             ; $1ca6 |
  and   a,#$3f                              ; $1ca8 |
  mov   $04,a                               ; $1caa |
  mov   $c1+x,a                             ; $1cac |
  and   a,#$1f                              ; $1cae |
  mov   y,a                                 ; $1cb0 |
  mov   a,$1e7a+y                           ; $1cb1 |
  mov   y,a                                 ; $1cb4 |
  mov   a,$02d1+x                           ; $1cb5 |
  bmi   loc_1cc3                            ; $1cb8 |
  asl   a                                   ; $1cba |
  mul   ya                                  ; $1cbb |
  mov   $08,y                               ; $1cbc |
  mov   $09,#$00                            ; $1cbe |
  bra   loc_1ccd                            ; $1cc1 |

loc_1cc3:
  setc                                      ; $1cc3 |
  sbc   a,#$7e                              ; $1cc4 |
  mul   ya                                  ; $1cc6 |
  movw  $08,ya                              ; $1cc7 |
  lsr   $09                                 ; $1cc9 |
  ror   $08                                 ; $1ccb |

loc_1ccd:
  movw  ya,$0a                              ; $1ccd |
  bbc5  $04,loc_1cd7                        ; $1ccf |
  subw  ya,$08                              ; $1cd2 |
  movw  $0a,ya                              ; $1cd4 |
  ret                                       ; $1cd6 |

loc_1cd7:
  addw  ya,$08                              ; $1cd7 |
  movw  $0a,ya                              ; $1cd9 |

locret_1cdb:
  ret                                       ; $1cdb |

sub_1cdc:
  mov   a,$01d0+x                           ; $1cdc |
  mov   y,a                                 ; $1cdf |
  inc   a                                   ; $1ce0 |
  and   a,#$7f                              ; $1ce1 |
  mov   $01d0+x,a                           ; $1ce3 |
  mov   a,$1ed4+y                           ; $1ce6 |
  and   a,$02f0+x                           ; $1ce9 |
  push  a                                   ; $1cec |
  mov   a,$1ed5+y                           ; $1ced |
  and   a,$02f1+x                           ; $1cf0 |
  mov   y,a                                 ; $1cf3 |
  pop   a                                   ; $1cf4 |
  addw  ya,$0a                              ; $1cf5 |
  jmp   sub_165c                            ; $1cf7 |

pitch_scale_table:
  ; fraction, multiplier
  db $04,$01                                ; $1cfa | [0x00] $0004
  db $05,$01                                ; $1cfc | [0x01] $0005
  db $04,$01                                ; $1cfe | [0x02] $0004
  db $05,$01                                ; $1d00 | [0x03] $0005
  db $05,$01                                ; $1d02 | [0x04] $0005
  db $05,$01                                ; $1d04 | [0x05] $0005
  db $06,$01                                ; $1d06 | [0x06] $0006
  db $06,$01                                ; $1d08 | [0x07] $0006
  db $06,$01                                ; $1d0a | [0x08] $0006
  db $07,$01                                ; $1d0c | [0x09] $0007
  db $07,$01                                ; $1d0e | [0x0a] $0007
  db $07,$01                                ; $1d10 | [0x0b] $0007
  db $08,$01                                ; $1d12 | [0x0c] $0008
  db $09,$01                                ; $1d14 | [0x0d] $0009
  db $09,$01                                ; $1d16 | [0x0e] $0009
  db $09,$01                                ; $1d18 | [0x0f] $0009
  db $0a,$01                                ; $1d1a | [0x10] $000a
  db $0b,$01                                ; $1d1c | [0x11] $000b
  db $0b,$01                                ; $1d1e | [0x12] $000b
  db $0c,$01                                ; $1d20 | [0x13] $000c
  db $0d,$01                                ; $1d22 | [0x14] $000d
  db $0d,$01                                ; $1d24 | [0x15] $000d
  db $0e,$01                                ; $1d26 | [0x16] $000e
  db $0f,$01                                ; $1d28 | [0x17] $000f
  db $10,$01                                ; $1d2a | [0x18] $0010
  db $11,$01                                ; $1d2c | [0x19] $0011
  db $12,$01                                ; $1d2e | [0x1a] $0012
  db $13,$01                                ; $1d30 | [0x1b] $0013
  db $14,$01                                ; $1d32 | [0x1c] $0014
  db $15,$01                                ; $1d34 | [0x1d] $0015
  db $17,$01                                ; $1d36 | [0x1e] $0017
  db $18,$01                                ; $1d38 | [0x1f] $0018
  db $19,$01                                ; $1d3a | [0x20] $0019
  db $1b,$01                                ; $1d3c | [0x21] $001b
  db $1c,$01                                ; $1d3e | [0x22] $001c
  db $1e,$01                                ; $1d40 | [0x23] $001e
  db $23,$01                                ; $1d42 | [0x24] $0020
  db $22,$01                                ; $1d44 | [0x25] $0022
  db $24,$01                                ; $1d46 | [0x26] $0024
  db $26,$01                                ; $1d48 | [0x27] $0026
  db $28,$01                                ; $1d4a | [0x28] $0028
  db $2a,$01                                ; $1d4c | [0x29] $002a
  db $2d,$01                                ; $1d4e | [0x2a] $002d
  db $30,$01                                ; $1d50 | [0x2b] $0030
  db $33,$01                                ; $1d52 | [0x2c] $0033
  db $35,$01                                ; $1d54 | [0x2d] $0035
  db $39,$01                                ; $1d56 | [0x2e] $0039
  db $3c,$01                                ; $1d58 | [0x2f] $003c
  db $40,$01                                ; $1d5a | [0x30] $0040
  db $43,$01                                ; $1d5c | [0x31] $0043
  db $48,$01                                ; $1d5e | [0x32] $0048
  db $4c,$01                                ; $1d60 | [0x33] $004c
  db $50,$01                                ; $1d62 | [0x34] $0050
  db $55,$01                                ; $1d64 | [0x35] $0055
  db $5a,$01                                ; $1d66 | [0x36] $005a
  db $60,$01                                ; $1d68 | [0x37] $0060
  db $65,$01                                ; $1d6a | [0x38] $0065
  db $6b,$01                                ; $1d6c | [0x39] $006b
  db $71,$01                                ; $1d6e | [0x3a] $0071
  db $79,$01                                ; $1d70 | [0x3b] $0079
  db $7f,$01                                ; $1d72 | [0x3c] $007f
  db $87,$01                                ; $1d74 | [0x3d] $0087
  db $8f,$01                                ; $1d76 | [0x3e] $008f
  db $98,$01                                ; $1d78 | [0x3f] $0098
  db $a0,$01                                ; $1d7a | [0x40] $00a0
  db $aa,$01                                ; $1d7c | [0x41] $00aa
  db $b5,$01                                ; $1d7e | [0x42] $00b5
  db $bf,$01                                ; $1d80 | [0x43] $00bf
  db $ca,$01                                ; $1d82 | [0x44] $00ca
  db $d6,$01                                ; $1d84 | [0x45] $00d6
  db $e3,$01                                ; $1d86 | [0x46] $00e3
  db $f1,$01                                ; $1d88 | [0x47] $00f1
  db $ff,$01                                ; $1d8a | [0x48] $00ff
  db $87,$02                                ; $1d8c | [0x49] $010e
  db $8f,$02                                ; $1d8e | [0x4a] $011e
  db $97,$02                                ; $1d90 | [0x4b] $012e
  db $a0,$02                                ; $1d92 | [0x4c] $0140
  db $aa,$02                                ; $1d94 | [0x4d] $0154
  db $b4,$02                                ; $1d96 | [0x4e] $0168
  db $bf,$02                                ; $1d98 | [0x4f] $017e
  db $ca,$02                                ; $1d9a | [0x50] $0194
  db $d6,$02                                ; $1d9c | [0x51] $01ac
  db $e3,$02                                ; $1d9e | [0x52] $01c6
  db $f0,$02                                ; $1da0 | [0x53] $01e0
  db $ff,$02                                ; $1da2 | [0x54] $01fe
  db $b4,$03                                ; $1da4 | [0x55] $021c
  db $be,$03                                ; $1da6 | [0x56] $023a
  db $ca,$03                                ; $1da8 | [0x57] $025e
  db $d6,$03                                ; $1daa | [0x58] $0282
  db $e2,$03                                ; $1dac | [0x59] $02a6
  db $f0,$03                                ; $1dae | [0x5a] $02d0
  db $fe,$03                                ; $1db0 | [0x5b] $02fa
  db $ca,$04                                ; $1db2 | [0x5c] $0328
  db $d7,$04                                ; $1db4 | [0x5d] $035c
  db $e2,$04                                ; $1db6 | [0x5e] $0388
  db $c9,$01                                ; $1db8 | [0x5f] $00c9

  db $01,$01,$01,$01,$01,$01,$01,$01        ; $1dba |
  db $01,$01,$01,$01,$01,$01,$02,$01        ; $1dc2 |
  db $01,$01,$01,$01,$01,$01,$01,$01        ; $1dca |
  db $02,$01,$01,$01,$02,$01,$01,$01        ; $1dd2 |
  db $02,$01,$02,$01,$01,$01,$02,$01        ; $1dda |
  db $03,$01,$02,$01,$02,$01,$03,$01        ; $1de2 |
  db $02,$01,$03,$01,$03,$01,$03,$01        ; $1dea |
  db $04,$01,$03,$01,$03,$01,$04,$01        ; $1df2 |

  db $00,$01,$01,$01,$01,$01,$01,$01        ; $1dfa |
  db $01,$01,$01,$01,$01,$01,$01,$01        ; $1e02 |
  db $01,$01,$01,$01,$01,$01,$01,$01        ; $1e0a |
  db $01,$01,$01,$01,$01,$01,$02,$02        ; $1e12 |
  db $02,$02,$02,$02,$02,$02,$02,$02        ; $1e1a |
  db $03,$03,$03,$03,$03,$03,$04,$04        ; $1e22 |
  db $04,$04,$04,$04,$05,$05,$05,$05        ; $1e2a |
  db $06,$06,$07,$07,$07,$07,$08,$08        ; $1e32 |
  db $09,$09,$0a,$0a,$0a,$0a,$0b,$0b        ; $1e3a |
  db $0c,$0c,$0d,$0d,$0e,$0f,$10,$10        ; $1e42 |
  db $11,$12,$13,$14,$15,$15,$16,$17        ; $1e4a |
  db $18,$19,$1b,$1c,$1d,$1e,$23,$22        ; $1e52 | BUG $23
  db $23,$24,$26,$28,$2a,$2c,$2d,$2f        ; $1e5a |
  db $31,$33,$35,$38,$3a,$3d,$40,$43        ; $1e62 |
  db $46,$49,$4c,$4f,$52,$56,$5a,$5e        ; $1e6a |
  db $62,$66,$6b,$6f,$73,$77,$7b,$7f        ; $1e72 |

  db $00,$20,$38,$50,$68,$80,$90,$a0        ; $1e7a |
  db $b0,$c0,$d0,$e0,$e8,$f0,$f0,$f8        ; $1e82 |
  db $ff,$f8,$f4,$f0,$e8,$e0,$d0,$c0        ; $1e8a |
  db $b0,$a0,$90,$80,$68,$50,$38,$20        ; $1e92 |

pan_table:
  db $00,$04,$08,$0e,$14,$1a,$20,$28        ; $1e9a |
  db $30,$38,$46,$48,$50,$5a,$64,$6e        ; $1ea2 | BUG $46
  db $78,$82,$8c,$96,$a0,$a8,$b0,$b8        ; $1eaa |
  db $c0,$c8,$d0,$d6,$dc,$e0,$e4,$e8        ; $1eb2 |
  db $ec,$f0,$f4,$f6,$f8,$fa,$fc,$fe        ; $1eba |
  db $fe,$fe                                ; $1ec2 |
 
  db $0f,$1f,$2f,$3f,$4f,$5f,$6f,$7f        ; $1ec4 |

  db $7f,$00,$00,$00,$00,$00,$00,$00        ; $1ecc |

  db                 $9f,$3c,$b2,$52,$af,$45,$c7,$89,$10,$7f,$e0,$9d ; $1ed4 |
  db $dc,$1f,$61,$16,$39,$c9,$9c,$eb,$57,$08,$66,$f8,$5a,$24,$bf,$0e ; $1ee0 |
  db $3e,$15,$4b,$db,$ab,$f5,$31,$0c,$43,$02,$55,$de,$41,$da,$bd,$ae ; $1ef0 |
  db $19,$b0,$48,$57,$ba,$a3,$36,$0b,$f9,$df,$17,$a8,$04,$0c,$e0,$91 ; $1f00 |
  db $18,$5d,$dd,$d3,$28,$8a,$f2,$11,$59,$6f,$06,$0a,$34,$2a,$79,$ac ; $1f10 |
  db $5e,$a7,$83,$c6,$39,$c1,$b4,$3a,$3f,$fe,$4f,$ef,$1f,$00,$30,$99 ; $1f20 |
  db $4c,$28,$83,$ed,$8a,$2f,$2c,$66,$3f,$d6,$6c,$b7,$49,$22,$bc,$65 ; $1f30 |
  db $fa,$cf,$02,$b1,$46,$f0,$9a,$d7,$e2,$0f,$11,$c5,$74,$f6,$7a,$2c ; $1f40 |
  db $8f,$fb,$19,$6a,$e5,$59,$1f,$6f,$1f,$ea,$40,$fc,$c8,$07,$e3,$16 ; $1f50 |
  db $f8,$22,$01,$3b,$2c,$7f,$7f,$fa,$8f,$d5,$00,$3b,$31,$ff,$ff,$ea ; $1f60 |
  db $40,$fc,$b4,$07,$e3,$12,$f8,$06,$fe,$39,$34,$7f,$7f,$fa,$8f,$d5 ; $1f70 |
  db $00,$38,$39,$ff,$ff,$89,$1f,$97,$1f,$ea,$40,$fc,$ea,$04,$e3,$16 ; $1f80 |
  db $75,$e0,$03,$fe,$a2,$1f,$ff,$ea,$40,$fc,$fe,$04,$e3,$12,$fe,$a2 ; $1f90 |
  db $1f,$ff,$34,$1a,$7f,$7f,$fa,$8f,$cf,$00,$34,$78,$ff,$ff,$b0,$1f ; $1fa0 |
  db $ea,$ff,$fc,$e0,$03,$37,$ae,$7f,$7f,$fa,$8f,$d5,$00,$37,$51,$bc ; $1fb0 |
  db $ff,$c3,$1f,$ea,$78,$fc,$e6,$01,$3a,$44,$7f,$7f,$fa,$8f,$d5,$00 ; $1fc0 |
  db $e1,$32,$7f,$ff,$d8,$1f,$e8,$1f,$ea,$40,$fc,$fe,$05,$fa,$8f,$d1 ; $1fd0 |
  db $00,$e3,$1e,$34,$45,$7f,$7f,$ff,$ea,$40,$fc,$e6,$05,$fa,$8f,$d1 ; $1fe0 |
  db $00,$f2,$32,$e3,$0a,$34,$45,$7f,$7f,$ff,$fc,$1f,$ea,$ff,$fc,$e0 ; $1ff0 |
  db $02,$38,$a8,$7f,$7f,$fa,$8f,$d6,$00,$38,$45,$bc,$ff,$11,$20,$4b ; $2000 |
  db $20,$ea,$40,$fc,$dc,$00,$e3,$16,$f8,$22,$01,$3c,$1f,$7f,$7f,$e5 ; $2010 |
  db $ff,$04,$00,$38,$0d,$ff,$e5,$ff,$03,$00,$ba,$ff,$fa,$8f,$d3,$00 ; $2020 |
  db $e5,$ff,$02,$00,$3a,$0a,$ff,$e5,$ff,$03,$00,$ba,$ff,$e5,$ff,$04 ; $2030 |
  db $00,$39,$13,$ff,$e5,$00,$00,$00,$bc,$ff,$ff,$ea,$40,$fc,$c8,$00 ; $2040 |
  db $e3,$12,$f8,$06,$ff,$3a,$39,$7f,$7f,$fa,$8f,$d3,$00,$3a,$3a,$ff ; $2050 |
  db $ff,$65,$20,$9f,$20,$ea,$40,$fc,$dc,$06,$e3,$16,$f8,$22,$01,$3c ; $2060 |
  db $1f,$7f,$7f,$e5,$ff,$04,$00,$38,$0d,$ff,$e5,$ff,$03,$00,$ba,$ff ; $2070 |
  db $fa,$8f,$d3,$00,$e5,$ff,$02,$00,$3a,$0a,$ff,$e5,$ff,$03,$00,$ba ; $2080 |
  db $ff,$e5,$ff,$04,$00,$39,$13,$ff,$e5,$00,$00,$00,$bc,$ff,$ff,$ea ; $2090 |
  db $40,$fc,$c8,$06,$e3,$12,$f8,$06,$ff,$3a,$39,$7f,$7f,$fa,$8f,$d3 ; $20a0 |
  db $00,$3a,$3a,$ff,$ff,$b7,$20,$ea,$40,$fc,$dc,$00,$3e,$14,$7f,$7f ; $20b0 |
  db $fa,$8f,$da,$00,$3e,$05,$7d,$7f,$fa,$8d,$d9,$00,$3e,$0d,$7f,$37 ; $20c0 |
  db $ff,$d3,$20,$ea,$8c,$fc,$e6,$01,$34,$1e,$7d,$7f,$f3,$00,$0a,$35 ; $20d0 |
  db $0e,$00,$36,$23,$e9,$b6,$d5,$b7,$c1,$b7,$7f,$2d,$ff,$ef,$20,$ea ; $20e0 |
  db $64,$fc,$f0,$14,$fa,$8e,$ed,$00,$2b,$2d,$7d,$7f,$f3,$28,$05,$23 ; $20f0 |
  db $56,$ff,$2b,$32,$b5,$f3,$28,$05,$23,$56,$ff,$ff,$0e,$21,$ea,$40 ; $2100 |
  db $fc,$fe,$02,$3b,$0f,$7f,$7f,$fa,$8f,$d3,$00,$e1,$2d,$7f,$ff,$21 ; $2110 |
  db $21,$ea,$40,$fc,$c6,$03,$3c,$0e,$7d,$7f,$ed,$86,$bc,$7f,$69,$ff ; $2120 |
  db $32,$21,$ea,$ff,$fc,$f0,$09,$26,$12,$7d,$7f,$ed,$84,$26,$37,$cb ; $2130 |
  db $ff,$43,$21,$ea,$40,$fc,$fe,$12,$e5,$ff,$90,$00,$15,$82,$7d,$7f ; $2140 |
  db $15,$0f,$d5,$95,$c1,$95,$ad,$ff,$5a,$21,$ea,$40,$fc,$e6,$04,$3c ; $2150 |
  db $13,$7d,$7f,$ed,$84,$3c,$16,$7f,$41,$ff,$6c,$21,$ea,$40,$fc,$d2 ; $2160 |
  db $05,$3c,$0c,$7f,$7f,$fa,$8f,$d3,$00,$bc,$ff,$bc,$e9,$3c,$18,$d5 ; $2170 |
  db $ff,$83,$21,$ea,$3c,$fc,$e6,$13,$e6,$fa,$8f,$e2,$00,$61,$40,$07 ; $2180 |
  db $7d,$7f,$fa,$8c,$d6,$00,$e4,$00,$79,$05,$f2,$ea,$43,$06,$ff,$f3 ; $2190 |
  db $00,$1e,$42,$fe,$ff,$70,$e7,$02,$00,$00,$fa,$8f,$e2,$00,$40,$07 ; $21a0 |
  db $b2,$fa,$8c,$d6,$00,$f2,$ea,$43,$1e,$b2,$f3,$00,$1e,$42,$fe,$ff ; $21b0 |
  db $ff,$c3,$21,$ea,$40,$fc,$c8,$06,$39,$16,$7f,$7f,$fa,$8f,$de,$00 ; $21c0 |
  db $e1,$04,$7f,$ff,$d6,$21,$ea,$be,$fc,$be,$07,$fa,$8c,$cf,$00,$40 ; $21d0 |
  db $24,$7f,$7f,$c0,$e9,$c0,$d5,$c0,$c1,$c0,$ad,$ff,$f0,$21,$16,$22 ; $21e0 |
  db $ea,$ff,$fc,$dc,$11,$f2,$50,$e3,$18,$3e,$0a,$7d,$78,$f3,$00,$0a ; $21f0 |
  db $11,$80,$fb,$2d,$4b,$ff,$ee,$c8,$fa,$89,$e2,$00,$ad,$e9,$ad,$d5 ; $2200 |
  db $ad,$c1,$ad,$7f,$2d,$ff,$ea,$ff,$fc,$e6,$11,$e3,$10,$3e,$08,$7d ; $2210 |
  db $7f,$f3,$00,$08,$1a,$80,$fb,$36,$46,$ff,$ee,$be,$fa,$89,$e2,$00 ; $2220 |
  db $b6,$e9,$b6,$d5,$b6,$c1,$b6,$7f,$2d,$ff,$3e,$22,$63,$22,$ea,$40 ; $2230 |
  db $fc,$c8,$0c,$e5,$ff,$0a,$00,$e6,$61,$23,$16,$7d,$7f,$23,$15,$ff ; $2240 |
  db $25,$19,$ff,$24,$1a,$ff,$e7,$02,$00,$00,$fa,$8f,$d2,$00,$22,$32 ; $2250 |
  db $7f,$7f,$ff,$ea,$40,$fc,$c8,$0c,$e5,$ff,$0b,$00,$e6,$61,$27,$12 ; $2260 |
  db $7d,$7f,$28,$11,$ff,$2a,$13,$ff,$26,$12,$7f,$7f,$28,$14,$7d,$7f ; $2270 |
  db $e7,$02,$00,$00,$fa,$8f,$d2,$00,$2a,$36,$7f,$7f,$ff,$8f,$22,$ea ; $2280 |
  db $ff,$fc,$ec,$08,$3c,$08,$7f,$7f,$f3,$00,$08,$24,$00,$fd,$e5,$16 ; $2290 |
  db $03,$00,$33,$04,$ff,$b0,$ff,$31,$0a,$ff,$b0,$ff,$b1,$ff,$fa,$8f ; $22a0 |
  db $d2,$00,$e6,$61,$31,$14,$7f,$7f,$b0,$ff,$b2,$ff,$e7,$04,$00,$00 ; $22b0 |
  db $ff,$c3,$22,$ea,$93,$fc,$ea,$16,$e4,$00,$55,$83,$33,$22,$7d,$7f ; $22c0 |
  db $f3,$00,$1e,$3c,$2c,$00,$36,$11,$ad,$f3,$00,$0f,$3c,$3b,$00,$ff ; $22d0 |
  db $e2,$22,$ea,$40,$fc,$e2,$0a,$29,$0a,$7d,$7f,$ed,$87,$a9,$e9,$a9 ; $22e0 |
  db $d5,$a9,$c1,$ff,$f6,$22,$ea,$40,$fc,$be,$0b,$3a,$1a,$7f,$7f,$fa ; $22f0 |
  db $8f,$d3,$00,$e1,$28,$7f,$ff,$09,$23,$ea,$64,$fc,$ba,$15,$41,$10 ; $2300 |
  db $7d,$78,$c1,$ff,$c1,$7f,$6e,$fa,$8f,$d6,$00,$41,$1e,$d5,$ff,$21 ; $2310 |
  db $23,$ea,$40,$fc,$e2,$0d,$fa,$86,$d2,$00,$33,$18,$7f,$7f,$33,$12 ; $2320 |
  db $e9,$b3,$d5,$ff,$36,$23,$ea,$ff,$fc,$b8,$0e,$4d,$0c,$7f,$7f,$f3 ; $2330 |
  db $00,$0c,$15,$56,$fb,$15,$24,$7d,$7f,$f3,$00,$24,$40,$31,$01,$95 ; $2340 |
  db $b7,$f3,$00,$24,$40,$31,$01,$ff,$5a,$23,$ea,$40,$fc,$e6,$0f,$30 ; $2350 |
  db $18,$7f,$7f,$30,$15,$d5,$30,$14,$ad,$ff,$6c,$23,$ea,$40,$fc,$fe ; $2360 |
  db $10,$28,$14,$7d,$7f,$a8,$d5,$a8,$c1,$a8,$ad,$ff,$7e,$23,$ea,$40 ; $2370 |
  db $fc,$d8,$00,$3a,$14,$7f,$7f,$ba,$7d,$55,$ff,$8d,$23,$ea,$40,$fc ; $2380 |
  db $fe,$0f,$fa,$8f,$d5,$00,$30,$0f,$7d,$7f,$b0,$bc,$ff,$9f,$23,$ea ; $2390 |
  db $ff,$fc,$e0,$0a,$3a,$0a,$7f,$73,$e4,$00,$5a,$7f,$3a,$64,$ff,$fa ; $23a0 |
  db $8f,$da,$00,$e1,$14,$7f,$ff,$bb,$23,$d2,$23,$ea,$40,$fc,$d8,$10 ; $23b0 |
  db $fa,$ff,$e2,$00,$e3,$16,$26,$07,$7f,$7f,$fa,$8f,$ce,$00,$e1,$82 ; $23c0 |
  db $7f,$ff,$ea,$40,$fc,$d8,$10,$fa,$ff,$e2,$00,$e3,$12,$32,$07,$7f ; $23d0 |
  db $7f,$fa,$8f,$ce,$00,$e1,$82,$7f,$ff,$eb,$23,$ea,$ff,$fc,$e0,$06 ; $23e0 |
  db $3c,$53,$7f,$7f,$fa,$8f,$d1,$00,$3c,$5a,$7d,$7f,$f3,$00,$a0,$3a ; $23f0 |
  db $fd,$ff,$3c,$46,$d0,$f3,$00,$a0,$3a,$fd,$ff,$fa,$8f,$e2,$00,$3c ; $2400 |
  db $53,$7f,$7f,$fa,$8f,$d1,$00,$3c,$5a,$7d,$7f,$f3,$00,$a0,$3a,$fd ; $2410 |
  db $ff,$3c,$ff,$c6,$f3,$00,$a0,$3a,$fd,$ff,$ff,$2d,$24,$ea,$ff,$fc ; $2420 |
  db $e6,$0b,$37,$0a,$7f,$7f,$33,$50,$ff,$fa,$8f,$d9,$00,$e1,$28,$7d ; $2430 |
  db $ff,$45,$24,$57,$24,$ea,$50,$fc,$c8,$12,$fa,$8a,$e2,$00,$e6,$fe ; $2440 |
  db $6d,$24,$e7,$0c,$f8,$00,$ff,$ea,$50,$fc,$c8,$12,$fa,$8a,$e2,$00 ; $2450 |
  db $f2,$2a,$e0,$05,$e6,$fe,$6d,$24,$e7,$0c,$f8,$00,$ff,$61,$51,$07 ; $2460 |
  db $7d,$7f,$d5,$ff,$d8,$ff,$ff,$79,$24,$ea,$40,$fc,$c0,$11,$e5,$ff ; $2470 |
  db $0c,$00,$22,$0b,$7d,$7f,$21,$11,$ff,$23,$12,$ff,$24,$17,$d5,$26 ; $2480 |
  db $10,$c1,$21,$13,$ad,$ff,$9a,$24,$af,$24,$ea,$78,$fc,$e6,$03,$42 ; $2490 |
  db $19,$7f,$7f,$fa,$8f,$d0,$00,$e4,$00,$46,$28,$42,$ae,$ee,$ff,$ea ; $24a0 |
  db $78,$fc,$e6,$03,$73,$42,$0e,$72,$73,$70,$37,$19,$7f,$7f,$fa,$8f ; $24b0 |
  db $d0,$00,$e4,$00,$3c,$1e,$37,$a0,$ff,$ff,$cc,$24,$ea,$78,$fc,$fe ; $24c0 |
  db $01,$3d,$23,$7f,$7f,$fa,$8f,$d1,$00,$3d,$1e,$ee,$3d,$0a,$7d,$69 ; $24d0 |
  db $ee,$ea,$fa,$88,$ce,$00,$e5,$ff,$c3,$00,$3b,$dc,$7f,$7f,$ff,$f1 ; $24e0 |
  db $24,$ea,$40,$fc,$d8,$08,$10,$5a,$7f,$7f,$f3,$00,$5a,$2d,$14,$00 ; $24f0 |
  db $fa,$8f,$cf,$00,$e1,$6e,$7f,$ff,$0a,$25,$ea,$40,$fc,$fa,$09,$24 ; $2500 |
  db $14,$7f,$7f,$fa,$8f,$d3,$00,$e1,$28,$7f,$ff,$1d,$25,$ea,$40,$fc ; $2510 |
  db $c8,$0c,$f2,$2d,$3d,$0e,$7d,$7f,$ed,$86,$bd,$7f,$69,$ff,$30,$25 ; $2520 |
  db $ea,$40,$fc,$e2,$0e,$32,$18,$7d,$7f,$fa,$86,$d6,$00,$b2,$ad,$ff ; $2530 |
  db $42,$25,$ea,$40,$fc,$e6,$07,$38,$1e,$7f,$7f,$ff,$50,$25,$71,$25 ; $2540 |
  db $e2,$02,$ea,$6e,$ee,$aa,$e3,$16,$39,$15,$7d,$37,$37,$2d,$ff,$b7 ; $2550 |
  db $d5,$39,$15,$b7,$37,$2d,$ff,$b7,$d5,$fa,$86,$e2,$00,$37,$2b,$b7 ; $2560 |
  db $ff,$e2,$02,$ea,$6e,$ee,$be,$e3,$12,$39,$18,$7d,$7f,$3d,$1c,$cb ; $2570 |
  db $b9,$ff,$3b,$14,$b7,$3d,$1e,$cb,$39,$1c,$ff,$3d,$1b,$cb,$39,$1a ; $2580 |
  db $ff,$3d,$1b,$cb,$fa,$86,$e2,$00,$bd,$ad,$ff,$9d,$25,$ea,$ff,$fc ; $2590 |
  db $e2,$04,$2e,$28,$7d,$7f,$fa,$89,$e2,$00,$ae,$d5,$ae,$c1,$ae,$ad ; $25a0 |
  db $ff,$b5,$25,$c8,$25,$ea,$1e,$fc,$dc,$05,$e3,$16,$37,$2a,$7f,$7f ; $25b0 |
  db $fa,$8f,$cf,$00,$37,$34,$ee,$ff,$ea,$1e,$fc,$dc,$05,$e3,$12,$30 ; $25c0 |
  db $2f,$7f,$7f,$fa,$8f,$cf,$00,$30,$34,$ee,$ff,$dd,$25,$ea,$8c,$fc ; $25d0 |
  db $dc,$0d,$fa,$8a,$e2,$00,$31,$1e,$7d,$7f,$fa,$8f,$e2,$00,$31,$1b ; $25e0 |
  db $e9,$b1,$d5,$b1,$c1,$b1,$ad,$ff,$fc,$25,$31,$26,$ea,$78,$fc,$c0 ; $25f0 |
  db $00,$e3,$12,$45,$07,$7f,$7f,$f3,$00,$07,$09,$b7,$fb,$09,$04,$ff ; $2600 |
  db $f3,$00,$04,$39,$00,$06,$39,$32,$f8,$f3,$00,$32,$5f,$5b,$00,$45 ; $2610 |
  db $19,$cb,$f3,$00,$19,$5f,$7d,$00,$c5,$b7,$f3,$00,$19,$5f,$7d,$00 ; $2620 |
  db $ff,$ea,$78,$fc,$fa,$00,$e5,$ff,$90,$00,$e3,$16,$3f,$0b,$7f,$64 ; $2630 |
  db $e5,$00,$00,$00,$28,$32,$7d,$7f,$28,$19,$d5,$a8,$7f,$41,$ff,$51 ; $2640 |
  db $26,$ea,$40,$fc,$fe,$01,$fa,$8f,$d1,$00,$e5,$ff,$90,$00,$15,$40 ; $2650 |
  db $7f,$7f,$ff,$65,$26,$ea,$40,$fc,$dc,$02,$fa,$8c,$e2,$00,$35,$0f ; $2660 |
  db $7d,$7f,$fa,$88,$e2,$00,$b5,$c1,$b5,$ad,$ff,$7d,$26,$ea,$78,$fc ; $2670 |
  db $dc,$03,$45,$10,$7f,$7f,$fa,$8f,$d7,$00,$c5,$7d,$7f,$f3,$00,$10 ; $2680 |
  db $41,$e2,$ff,$fa,$89,$d3,$00,$45,$20,$cb,$c5,$b7,$ff,$9f,$26,$ea ; $2690 |
  db $40,$fc,$f0,$04,$fa,$8f,$e2,$00,$27,$28,$7f,$7f,$fa,$8f,$d6,$00 ; $26a0 |
  db $e1,$14,$7f,$ff,$b6,$26,$ea,$ff,$fc,$fe,$05,$e5,$ff,$83,$00,$5d ; $26b0 |
  db $03,$7d,$7f,$e0,$0c,$5c,$03,$7d,$7f,$e0,$34,$ed,$8e,$5d,$03,$7d ; $26c0 |
  db $32,$e0,$0c,$5c,$03,$7d,$32,$ff,$da,$26,$ea,$40,$fc,$fe,$06,$46 ; $26d0 |
  db $0e,$7d,$7f,$ed,$8c,$c6,$ad,$ff,$ea,$26,$ea,$40,$fc,$be,$07,$3c ; $26e0 |
  db $12,$7d,$7f,$ed,$87,$bc,$ad,$ff,$fa,$26,$ea,$40,$fc,$e6,$08,$43 ; $26f0 |
  db $0b,$7d,$7f,$c3,$ff,$c3,$ff,$ed,$89,$c3,$b0,$ff,$0e,$27,$ea,$40 ; $2700 |
  db $fc,$fe,$0a,$3d,$11,$7d,$7f,$ed,$8a,$bd,$ad,$ff,$1e,$27,$ea,$40 ; $2710 |
  db $fc,$c8,$0b,$fa,$8a,$d4,$00,$39,$0e,$7d,$7f,$b9,$d2,$b9,$be,$b9 ; $2720 |
  db $ad,$ff,$34,$27,$ea,$e6,$fc,$ec,$0c,$41,$08,$7f,$7f,$42,$18,$7d ; $2730 |
  db $7f,$41,$08,$7f,$5f,$42,$18,$7d,$5f,$41,$08,$7f,$4b,$42,$18,$7d ; $2740 |
  db $4b,$41,$08,$7f,$37,$42,$18,$b7,$ff,$5b,$27,$ea,$ff,$fc,$fe,$0d ; $2750 |
  db $e5,$ff,$38,$00,$e3,$12,$3d,$03,$7f,$7f,$f3,$00,$03,$1e,$ab,$f5 ; $2760 |
  db $e5,$16,$06,$00,$3d,$04,$ff,$ba,$ff,$3b,$08,$ff,$3a,$09,$ff,$bb ; $2770 |
  db $ff,$fa,$8f,$d2,$7f,$e6,$61,$3b,$0a,$7f,$7f,$3a,$08,$ff,$3c,$0d ; $2780 |
  db $ff,$e7,$07,$00,$00,$ff,$98,$27,$ea,$7d,$fc,$dc,$0e,$fa,$8a,$e2 ; $2790 |
  db $00,$2c,$23,$7d,$7f,$fa,$8f,$e2,$00,$2c,$1b,$e4,$ac,$d0,$ac,$bc ; $27a0 |
  db $ac,$ad,$ff,$b5,$27,$ea,$7d,$fc,$ce,$0f,$3b,$2d,$7f,$7f,$ff,$c1 ; $27b0 |
  db $27,$ea,$ff,$fc,$e0,$10,$3d,$08,$7d,$7f,$e0,$0e,$3e,$08,$7d,$7f ; $27c0 |
  db $e0,$12,$3d,$08,$7d,$3c,$e0,$0e,$3e,$08,$7d,$3c,$ff,$df,$27,$ea ; $27d0 |
  db $78,$fc,$fe,$11,$26,$0c,$72,$7f,$26,$32,$7f,$7f,$fa,$8f,$d5,$00 ; $27e0 |
  db $e1,$28,$7f,$ff,$f6,$27,$ea,$1e,$fc,$e2,$12,$39,$12,$7f,$7f,$fa ; $27f0 |
  db $8f,$d0,$00,$39,$23,$ee,$ff,$09,$28,$ea,$40,$fc,$be,$13,$fa,$8f ; $2800 |
  db $cf,$00,$e4,$26,$cb,$13,$31,$73,$7f,$7f,$f3,$28,$64,$2d,$fe,$ff ; $2810 |
  db $ff,$23,$28,$ea,$7d,$fc,$f0,$14,$3a,$1d,$7f,$7f,$fa,$8f,$d5,$00 ; $2820 |
  db $3a,$37,$f3,$ff,$36,$28,$ea,$78,$fc,$fe,$15,$fa,$ff,$d0,$00,$e4 ; $2830 |
  db $18,$3c,$41,$42,$aa,$7f,$7f,$ff,$4a,$28,$ea,$40,$fc,$be,$09,$49 ; $2840 |
  db $0c,$7d,$7f,$ed,$87,$c9,$ad,$ff,$5c,$28,$61,$28,$ea,$ff,$e0,$01 ; $2850 |
  db $ff,$ea,$ff,$e0,$01,$ff,$68,$28,$ea,$96,$fc,$fe,$1e,$fa,$8f,$e2 ; $2860 |
  db $00,$e3,$12,$12,$08,$7f,$7f,$f3,$00,$08,$2a,$d8,$01,$e5,$ff,$13 ; $2870 |
  db $00,$14,$28,$7d,$7f,$94,$e9,$94,$d5,$94,$c1,$94,$b2,$ff,$92,$28 ; $2880 |
  db $a8,$28,$ea,$9b,$fc,$fa,$00,$fa,$8f,$d6,$00,$36,$0c,$7d,$78,$bd ; $2890 |
  db $f8,$ba,$f8,$42,$30,$7f,$78,$ff,$ea,$9b,$fc,$dc,$00,$fa,$8e,$d6 ; $28a0 |
  db $00,$77,$e3,$16,$36,$12,$7d,$78,$3d,$0c,$f8,$ba,$f8,$42,$30,$7f ; $28b0 |
  db $78,$ff,$c4,$28,$ea,$c8,$fc,$e0,$14,$33,$07,$72,$7f,$f3,$00,$07 ; $28c0 |
  db $27,$80,$fe,$1b,$26,$ff,$f3,$00,$26,$3f,$c0,$00,$9b,$df,$f3,$00 ; $28d0 |
  db $26,$3f,$c0,$00,$9b,$cb,$f3,$00,$26,$3f,$c0,$00,$9b,$b7,$f3,$00 ; $28e0 |
  db $26,$3f,$c0,$00,$9b,$ad,$f3,$00,$26,$3f,$c0,$00,$ff,$ff,$28,$ea ; $28f0 |
  db $40,$fc,$fe,$26,$2b,$18,$7f,$7f,$2b,$12,$e9,$ab,$d5,$ff,$10,$29 ; $2900 |
  db $ea,$8c,$fc,$f4,$26,$fa,$8f,$d1,$00,$33,$06,$7f,$7f,$f3,$00,$06 ; $2910 |
  db $27,$cd,$fe,$27,$6e,$7d,$7f,$27,$32,$7f,$37,$ff,$2e,$29,$ea,$8c ; $2920 |
  db $fc,$d6,$1e,$54,$1c,$7d,$7f,$ed,$88,$d4,$cb,$d4,$ad,$ff,$40,$29 ; $2930 |
  db $ea,$6e,$fc,$b0,$08,$fa,$8b,$e2,$00,$31,$1c,$7f,$7f,$ff,$52,$29 ; $2940 |
  db $73,$29,$ea,$3c,$fc,$c8,$14,$fa,$88,$e2,$00,$e4,$00,$1d,$82,$e3 ; $2950 |
  db $18,$30,$5a,$7f,$7f,$f3,$00,$5a,$24,$f8,$ff,$fa,$8f,$d1,$00,$e1 ; $2960 |
  db $3c,$7f,$ff,$ea,$3c,$fc,$c8,$14,$fa,$88,$e2,$00,$e4,$00,$1f,$82 ; $2970 |
  db $e3,$10,$33,$5a,$7f,$7f,$f3,$00,$5a,$27,$f8,$ff,$fa,$8f,$d1,$00 ; $2980 |
  db $e1,$3c,$7f,$ff,$98,$29,$af,$29,$ea,$78,$fc,$d2,$26,$fa,$8f,$e2 ; $2990 |
  db $00,$e0,$08,$1e,$2d,$7f,$7f,$fa,$8f,$d7,$00,$e1,$25,$7f,$ff,$ea ; $29a0 |
  db $78,$fc,$f0,$26,$fa,$8f,$d5,$00,$2a,$2d,$7d,$7f,$fa,$8c,$d5,$00 ; $29b0 |
  db $aa,$7f,$41,$ff,$c6,$29,$ea,$ff,$fc,$dc,$10,$e5,$ff,$08,$ff,$1a ; $29c0 |
  db $ff,$7f,$7f,$fa,$8f,$da,$00,$e1,$1e,$7f,$ff,$df,$29,$05,$2a,$ea ; $29d0 |
  db $78,$fc,$82,$13,$fa,$85,$d3,$00,$e3,$18,$58,$3f,$7d,$78,$f3,$00 ; $29e0 |
  db $8c,$40,$ec,$ff,$d8,$d5,$f3,$00,$8c,$40,$ec,$ff,$d8,$c1,$f3,$00 ; $29f0 |
  db $8c,$40,$ec,$ff,$ff,$ea,$78,$fc,$ce,$05,$fa,$8a,$d4,$00,$e3,$10 ; $2a00 |
  db $e6,$61,$51,$0c,$7f,$7f,$f3,$04,$08,$4d,$c4,$ff,$4d,$02,$7d,$7f ; $2a10 |
  db $f3,$00,$02,$52,$40,$01,$51,$07,$c1,$f3,$04,$08,$4d,$c4,$ff,$e7 ; $2a20 |
  db $03,$00,$00,$e6,$61,$52,$0c,$7f,$78,$f3,$00,$0c,$48,$9a,$ff,$48 ; $2a30 |
  db $02,$72,$78,$f3,$00,$02,$4d,$40,$01,$52,$07,$ad,$f3,$00,$0c,$48 ; $2a40 |
  db $9a,$ff,$e7,$06,$f4,$00,$ff,$59,$2a,$ea,$2c,$fc,$ec,$18,$fa,$84 ; $2a50 |
  db $d2,$dc,$e4,$dc,$46,$64,$3f,$32,$65,$5a,$f3,$00,$32,$39,$fb,$ff ; $2a60 |
  db $e2,$21,$fa,$84,$d2,$dc,$e5,$ff,$06,$00,$44,$28,$3f,$7f,$ff,$81 ; $2a70 |
  db $2a,$ea,$ff,$fc,$fe,$24,$1b,$6e,$7d,$7f,$e0,$1b,$1b,$6e,$7d,$7f ; $2a80 |
  db $e0,$16,$1b,$75,$7d,$7f,$9b,$bc,$ff,$9b,$2a,$ea,$ff,$fc,$d2,$25 ; $2a90 |
  db $fa,$8a,$e2,$00,$e5,$ff,$b1,$00,$54,$0c,$7f,$7f,$fa,$8f,$d3,$00 ; $2aa0 |
  db $e1,$46,$7f,$ff,$b6,$2a,$ea,$c8,$fc,$dc,$1b,$fa,$8a,$e2,$00,$e5 ; $2ab0 |
  db $4c,$83,$00,$55,$0a,$7d,$7f,$e0,$11,$59,$0a,$7d,$7f,$e0,$20,$55 ; $2ac0 |
  db $0a,$7d,$7f,$e0,$11,$59,$0c,$7d,$7f,$ff,$dc,$2a,$ea,$ff,$e0,$01 ; $2ad0 |
  db $ff,$e3,$2a,$ea,$aa,$fc,$aa,$09,$e6,$61,$49,$01,$7d,$7f,$e7,$2e ; $2ae0 |
  db $00,$f9,$e6,$61,$49,$01,$7d,$55,$e7,$2e,$00,$f9,$e6,$61,$49,$01 ; $2af0 |
  db $7d,$41,$e7,$2e,$00,$f9,$ff,$09,$2b,$ea,$78,$fc,$fe,$25,$45,$3c ; $2b00 |
  db $7d,$7f,$f3,$00,$3c,$30,$d6,$ff,$32,$1e,$ee,$f3,$00,$1e,$30,$f8 ; $2b10 |
  db $ff,$b2,$df,$f3,$00,$1e,$30,$f8,$ff,$b2,$cb,$f3,$00,$1e,$30,$f8 ; $2b20 |
  db $ff,$b2,$c1,$f3,$00,$1e,$30,$f8,$ff,$b2,$b7,$f3,$00,$1e,$30,$f8 ; $2b30 |
  db $ff,$b2,$b2,$f3,$00,$1e,$30,$f8,$ff,$b2,$ad,$f3,$00,$1e,$30,$f8 ; $2b40 |
  db $ff,$ff,$56,$2b,$82,$2b,$ea,$78,$fc,$fe,$25,$e3,$16,$4a,$3c,$7d ; $2b50 |
  db $7f,$f3,$00,$3c,$35,$d6,$ff,$37,$1e,$ff,$f3,$00,$1e,$35,$f8,$ff ; $2b60 |
  db $e3,$14,$fa,$8f,$cc,$00,$e5,$fd,$4f,$00,$33,$ff,$7f,$7f,$33,$78 ; $2b70 |
  db $ff,$ff,$ea,$78,$fc,$fe,$25,$e3,$12,$56,$28,$7f,$7f,$f3,$00,$28 ; $2b80 |
  db $3c,$b2,$ff,$fa,$8f,$cc,$00,$3c,$ff,$ff,$f3,$00,$ff,$33,$fc,$ff ; $2b90 |
  db $e1,$78,$7f,$ff,$a6,$2b,$ea,$40,$fc,$ce,$16,$fa,$8f,$e2,$00,$e4 ; $2ba0 |
  db $00,$ff,$89,$25,$1e,$7f,$7f,$fa,$8f,$d1,$00,$e1,$3c,$7f,$ff,$c1 ; $2bb0 |
  db $2b,$ea,$78,$fc,$e4,$26,$fa,$8f,$d5,$00,$2b,$2d,$7d,$7f,$fa,$8c ; $2bc0 |
  db $d5,$00,$ab,$7f,$41,$ff,$d8,$2b,$ea,$64,$fc,$fe,$26,$fa,$ff,$da ; $2bd0 |
  db $00,$e4,$d0,$64,$96,$4c,$05,$7d,$7f,$f3,$00,$05,$2f,$96,$fd,$3f ; $2be0 |
  db $0a,$ff,$bf,$d0,$bf,$7f,$32,$ff,$fa,$2b,$ea,$78,$fc,$d4,$1f,$fa ; $2bf0 |
  db $8e,$d5,$00,$4a,$05,$7f,$7f,$f3,$00,$05,$49,$e7,$ff,$e1,$35,$7f ; $2c00 |
  db $ff,$13,$2c,$ea,$8c,$fc,$e2,$27,$3f,$0f,$7d,$7f,$fc,$d2,$0c,$54 ; $2c10 |
  db $0a,$7f,$7f,$f3,$00,$0a,$23,$48,$fd,$23,$05,$ff,$f3,$00,$05,$41 ; $2c20 |
  db $55,$03,$41,$19,$72,$7f,$f3,$00,$19,$5b,$93,$00,$c1,$b2,$f3,$00 ; $2c30 |
  db $19,$5b,$93,$00,$ff,$47,$2c,$ea,$78,$fc,$fe,$25,$3c,$23,$7f,$7f ; $2c40 |
  db $f3,$00,$23,$2f,$d4,$ff,$fa,$8f,$d2,$00,$e1,$5a,$7f,$ff,$62,$2c ; $2c50 |
  db $79,$2c,$ea,$78,$fc,$fe,$25,$3c,$23,$7f,$7f,$f3,$00,$23,$2f,$d4 ; $2c60 |
  db $ff,$fa,$8f,$d2,$00,$e1,$5a,$7f,$ff,$ea,$aa,$fc,$b0,$09,$e6,$61 ; $2c70 |
  db $49,$01,$7d,$7f,$e7,$2e,$00,$f9,$e6,$61,$49,$01,$7d,$55,$e7,$2e ; $2c80 |
  db $00,$f9,$e6,$61,$49,$01,$7d,$41,$e7,$2e,$00,$f9,$ff,$a1,$2c,$ac ; $2c90 |
  db $2c,$ea,$19,$fc,$86,$05,$e3,$1e,$fe,$b9,$2c,$ff,$f2,$28,$ea,$19 ; $2ca0 |
  db $fc,$86,$05,$e3,$0a,$fe,$b9,$2c,$ff,$fa,$89,$e2,$d5,$e4,$00,$9b ; $2cb0 |
  db $32,$58,$a0,$4c,$7f,$f3,$00,$fa,$28,$fc,$ff,$ff,$ce,$2c,$ea,$50 ; $2cc0 |
  db $fc,$dc,$24,$3c,$09,$7d,$7f,$bc,$c1,$bc,$7f,$28,$ff,$df,$2c,$ea ; $2cd0 |
  db $50,$fc,$d8,$24,$39,$0b,$7d,$7f,$b9,$d5,$b9,$c1,$b9,$ad,$ff,$f1 ; $2ce0 |
  db $2c,$ea,$50,$fc,$d4,$24,$34,$0b,$7d,$7f,$b4,$d5,$b4,$c1,$b4,$ad ; $2cf0 |
  db $ff,$03,$2d,$ea,$1e,$fc,$e6,$14,$fa,$8e,$d3,$00,$e4,$00,$2d,$86 ; $2d00 |
  db $33,$19,$7f,$7f,$ff,$17,$2d,$ea,$40,$fc,$be,$09,$fa,$8f,$e2,$00 ; $2d10 |
  db $e5,$ff,$22,$00,$e3,$12,$f8,$16,$01,$02,$1e,$7f,$7f,$fa,$8f,$d0 ; $2d20 |
  db $00,$02,$50,$7d,$7f,$ff,$38,$2d,$ea,$64,$fc,$e8,$1e,$fa,$8a,$e2 ; $2d30 |
  db $da,$e5,$ff,$4a,$00,$30,$09,$7d,$64,$e5,$ff,$9e,$00,$24,$a0,$7f ; $2d40 |
  db $7f,$f3,$28,$3c,$10,$df,$ff,$10,$78,$32,$6e,$ff,$5e,$2d,$ea,$1e ; $2d50 |
  db $fc,$8c,$12,$fa,$84,$cc,$00,$58,$78,$7f,$7f,$f3,$00,$78,$4e,$fe ; $2d60 |
  db $ff,$ff,$74,$2d,$ea,$28,$fc,$dc,$18,$e4,$00,$3c,$78,$30,$3c,$7f ; $2d70 |
  db $7f,$f3,$00,$3c,$34,$02,$00,$fa,$8f,$cf,$00,$b3,$ff,$f3,$00,$3c ; $2d80 |
  db $39,$04,$00,$ff,$96,$2d,$ea,$78,$fc,$ce,$18,$fa,$89,$ce,$00,$4d ; $2d90 |
  db $03,$7f,$7f,$f3,$00,$03,$35,$00,$fc,$35,$19,$7d,$7f,$f3,$00,$19 ; $2da0 |
  db $4d,$73,$00,$ed,$85,$41,$0f,$c1,$f3,$00,$0f,$4d,$60,$00,$c1,$ad ; $2db0 |
  db $f3,$00,$0f,$4d,$60,$00,$ff,$c9,$2d,$ea,$8c,$fc,$ba,$15,$fa,$89 ; $2dc0 |
  db $ce,$00,$57,$03,$7f,$7f,$f3,$00,$03,$3f,$34,$fb,$3f,$14,$7d,$7f ; $2dd0 |
  db $f3,$00,$14,$57,$aa,$00,$ed,$89,$4b,$0f,$c1,$f3,$00,$0f,$57,$71 ; $2de0 |
  db $00,$cb,$ad,$f3,$00,$0f,$57,$71,$00,$ff,$fc,$2d,$ea,$3c,$fc,$e2 ; $2df0 |
  db $1e,$fa,$8d,$e2,$00,$5b,$03,$7d,$6e,$f3,$00,$03,$48,$6b,$fe,$fa ; $2e00 |
  db $89,$e2,$00,$48,$0b,$ff,$f3,$00,$0b,$5b,$69,$00,$c8,$e4,$f3,$00 ; $2e10 |
  db $0b,$5b,$69,$00,$c8,$c1,$f3,$00,$0b,$5b,$69,$00,$ff,$2f,$2e,$ea ; $2e20 |
  db $78,$fc,$ba,$24,$fa,$8f,$e2,$00,$43,$08,$4c,$7f,$c3,$c1,$c3,$ad ; $2e30 |
  db $ff,$43,$2e,$ea,$ff,$fc,$d8,$22,$e5,$ff,$12,$00,$e6,$61,$5c,$05 ; $2e40 |
  db $7d,$7f,$41,$0a,$ff,$55,$05,$ff,$5d,$0a,$ff,$e7,$04,$e7,$00,$ff ; $2e50 |
  db $62,$2e,$ea,$50,$fc,$cc,$15,$fa,$8d,$e2,$00,$e6,$61,$57,$05,$7d ; $2e60 |
  db $7f,$da,$ff,$e7,$06,$f1,$00,$ff,$7a,$2e,$ea,$64,$fc,$cc,$1e,$fa ; $2e70 |
  db $89,$c7,$d7,$54,$1e,$32,$7f,$d4,$c1,$ff,$8c,$2e,$ea,$64,$fc,$cc ; $2e80 |
  db $1e,$fa,$89,$c7,$d7,$f2,$08,$54,$1e,$32,$7f,$d4,$c1,$ff,$a0,$2e ; $2e90 |
  db $ea,$64,$fc,$f6,$22,$4b,$0a,$7d,$7f,$d1,$ff,$d1,$c1,$d1,$ad,$ff ; $2ea0 |
  db $b2,$2e,$ea,$7f,$fc,$fe,$26,$fa,$8f,$e2,$00,$e4,$00,$ff,$80,$12 ; $2eb0 |
  db $0a,$7d,$64,$f3,$00,$0a,$07,$74,$ff,$07,$64,$7f,$7f,$f3,$00,$64 ; $2ec0 |
  db $1b,$19,$00,$fa,$8f,$d0,$00,$e1,$b4,$7f,$ff,$dd,$2e,$ea,$40,$fc ; $2ed0 |
  db $98,$13,$fa,$8e,$e2,$00,$e4,$00,$ff,$3c,$54,$0f,$7f,$7f,$fa,$8f ; $2ee0 |
  db $d1,$00,$54,$14,$b7,$ff,$f8,$2e,$ea,$6e,$fc,$c4,$05,$fa,$8d,$e2 ; $2ef0 |
  db $00,$2b,$0a,$7d,$7f,$f3,$00,$0a,$43,$0b,$01,$ad,$ff,$f3,$00,$0a ; $2f00 |
  db $45,$0b,$01,$af,$ff,$f3,$00,$0a,$47,$0b,$01,$b1,$ff,$f3,$00,$0a ; $2f10 |
  db $49,$0b,$01,$b3,$ff,$f3,$00,$0a,$4b,$0b,$01,$b5,$ff,$f3,$00,$0a ; $2f20 |
  db $4d,$0b,$01,$b5,$b2,$f3,$00,$0a,$4d,$0b,$01,$ff,$3e,$2f,$ea,$ff ; $2f30 |
  db $fc,$f0,$16,$e5,$ff,$14,$ff,$04,$64,$7f,$7f,$fa,$8f,$d8,$00,$04 ; $2f40 |
  db $28,$ff,$ff,$55,$2f,$ea,$ff,$fc,$c2,$10,$e5,$ff,$08,$ff,$1a,$c8 ; $2f50 |
  db $7f,$7f,$fa,$8f,$da,$00,$e1,$1e,$7f,$ff,$6c,$2f,$ea,$50,$fc,$d2 ; $2f60 |
  db $24,$41,$09,$7d,$7f,$ed,$89,$c1,$c1,$c1,$7f,$28,$ff,$7f,$2f,$ea ; $2f70 |
  db $b4,$fc,$f6,$0a,$fa,$8c,$e2,$00,$4d,$05,$7f,$7f,$f3,$00,$05,$35 ; $2f80 |
  db $93,$fc,$35,$12,$7d,$64,$f3,$00,$12,$4d,$f5,$00,$b5,$d0,$f3,$00 ; $2f90 |
  db $12,$4d,$f5,$00,$b5,$bc,$f3,$00,$12,$4d,$f5,$00,$b5,$ad,$f3,$00 ; $2fa0 |
  db $12,$4d,$f5,$00,$ff,$b7,$2f,$ea,$dc,$fc,$d0,$01,$fa,$8d,$e2,$00 ; $2fb0 |
  db $2b,$0a,$7d,$7f,$f3,$00,$0a,$48,$a2,$02,$48,$1e,$ff,$f3,$00,$1e ; $2fc0 |
  db $37,$80,$ff,$c5,$e4,$f3,$00,$1e,$37,$97,$ff,$c5,$c1,$f3,$00,$1e ; $2fd0 |
  db $37,$97,$ff,$c5,$ad,$f3,$00,$1e,$37,$97,$ff,$ff,$ee,$2f,$ea,$96 ; $2fe0 |
  db $fc,$ce,$18,$4b,$05,$72,$7d,$f3,$00,$05,$3f,$80,$fe,$e2,$22,$e6 ; $2ff0 |
  db $61,$47,$02,$7d,$7f,$c2,$ff,$e7,$0b,$fe,$19,$ef,$a0,$e1,$e6,$61 ; $3000 |
  db $4e,$02,$7d,$2d,$ca,$ad,$e7,$06,$00,$00,$ff,$1d,$30,$ea,$6e,$fc ; $3010 |
  db $b0,$08,$fa,$8b,$e2,$00,$31,$40,$7f,$7f,$fa,$8f,$d5,$00,$e1,$30 ; $3020 |
  db $7f,$ff,$34,$30,$ea,$0a,$fc,$aa,$08,$31,$78,$7f,$7f,$fa,$8f,$d5 ; $3030 |
  db $00,$e1,$07,$7f,$ff,$49,$30,$5d,$30,$ea,$a0,$fc,$f8,$1f,$e3,$18 ; $3040 |
  db $fa,$8d,$e2,$00,$e6,$fe,$75,$30,$e7,$04,$e6,$00,$ff,$ea,$a0,$e2 ; $3050 |
  db $1f,$e0,$08,$ee,$cc,$73,$e3,$10,$fa,$8d,$e2,$00,$e6,$fe,$75,$30 ; $3060 |
  db $e7,$04,$e6,$00,$ff,$61,$3c,$0c,$7d,$7f,$c1,$ff,$c5,$ff,$ff,$81 ; $3070 |
  db $30,$ea,$6e,$fc,$cc,$16,$e6,$61,$45,$0a,$7d,$7f,$c1,$ff,$e7,$05 ; $3080 |
  db $ef,$00,$ff,$95,$30,$ea,$82,$fc,$f0,$23,$fa,$8f,$d8,$00,$55,$09 ; $3090 |
  db $7d,$7f,$5c,$10,$ff,$f3,$00,$10,$50,$9d,$ff,$fa,$89,$d8,$00,$dc ; $30a0 |
  db $c1,$f3,$00,$10,$50,$9d,$ff,$ff,$ba,$30,$ea,$8c,$fc,$dc,$27,$41 ; $30b0 |
  db $0a,$7d,$7f,$b9,$ff,$b9,$c1,$b9,$ad,$ff,$cc,$30,$ea,$78,$fc,$d6 ; $30c0 |
  db $14,$fa,$8c,$cd,$00,$59,$05,$7f,$7f,$f3,$00,$05,$1f,$34,$fa,$1f ; $30d0 |
  db $04,$ff,$f3,$00,$04,$45,$c0,$04,$e6,$61,$45,$1e,$7d,$7f,$f3,$00 ; $30e0 |
  db $1e,$15,$40,$ff,$e7,$03,$d8,$00,$ff,$fd,$30,$15,$31,$ea,$78,$fc ; $30f0 |
  db $fe,$26,$26,$0a,$7d,$7f,$fa,$8f,$ce,$00,$2d,$ff,$7f,$7f,$f3,$00 ; $3100 |
  db $c8,$21,$f9,$ff,$ff,$ea,$78,$fc,$fe,$26,$2b,$0a,$7f,$7f,$fa,$8f ; $3110 |
  db $ce,$00,$e1,$ff,$7f,$ff,$2a,$31,$38,$31,$ea,$78,$fc,$f0,$22,$fa ; $3120 |
  db $8f,$dd,$00,$18,$14,$7d,$7f,$ff,$ea,$78,$fc,$f0,$23,$16,$40,$7f ; $3130 |
  db $7f,$ff,$44,$31,$ea,$46,$fc,$fe,$26,$fa,$8f,$e2,$00,$ec,$fa,$13 ; $3140 |
  db $05,$7f,$7f,$05,$8a,$ff,$f3,$00,$8a,$11,$06,$00,$11,$2b,$ff,$f3 ; $3150 |
  db $00,$2b,$34,$39,$00,$fa,$8f,$d2,$00,$e1,$2d,$7d,$ff,$6f,$31,$ea ; $3160 |
  db $82,$fc,$ce,$18,$fa,$8c,$e2,$00,$49,$06,$72,$7f,$f3,$00,$06,$31 ; $3170 |
  db $d2,$fd,$31,$0a,$7d,$5a,$f3,$00,$0a,$49,$43,$01,$ff,$8f,$31,$ea ; $3180 |
  db $82,$fc,$c8,$14,$fa,$8c,$e2,$00,$5d,$03,$72,$7f,$f3,$00,$03,$45 ; $3190 |
  db $34,$fb,$45,$08,$7d,$5a,$f3,$00,$08,$5d,$99,$01,$ff,$af,$31,$ea ; $31a0 |
  db $5a,$fc,$d2,$20,$fa,$8e,$e2,$00,$50,$06,$7d,$7f,$53,$0c,$ee,$ff ; $31b0 |
  db $c2,$31,$ea,$6e,$fc,$f0,$01,$e6,$61,$3f,$04,$7d,$7f,$c3,$ff,$c6 ; $31c0 |
  db $ff,$ca,$ff,$e7,$06,$f2,$00,$ff,$da,$31,$ea,$78,$fc,$e8,$01,$21 ; $31d0 |
  db $06,$7d,$7f,$f3,$00,$06,$26,$6a,$00,$a7,$ff,$f3,$00,$06,$2c,$6a ; $31e0 |
  db $00,$ad,$ff,$f3,$00,$06,$32,$6a,$00,$b3,$ff,$f3,$00,$06,$38,$6a ; $31f0 |
  db $00,$e6,$61,$39,$06,$7d,$7f,$f3,$00,$06,$3e,$6a,$00,$bf,$ff,$f3 ; $3200 |
  db $00,$06,$44,$6a,$00,$e7,$07,$f4,$00,$ff,$1e,$32,$2c,$32,$ea,$6e ; $3210 |
  db $fc,$f0,$01,$e6,$fe,$3e,$32,$e7,$06,$f2,$00,$ff,$ea,$6e,$fc,$e6 ; $3220 |
  db $01,$f2,$0c,$e0,$03,$e6,$fe,$3e,$32,$e7,$06,$f2,$00,$ff,$61,$3f ; $3230 |
  db $04,$7d,$7f,$c3,$ff,$c6,$ff,$ca,$ff,$ff,$4c,$32,$ea,$78,$fc,$96 ; $3240 |
  db $06,$fa,$fa,$e2,$00,$e4,$00,$ff,$0b,$4e,$78,$7d,$78,$f2,$4e,$e4 ; $3250 |
  db $00,$fe,$32,$45,$05,$7f,$78,$f3,$00,$05,$43,$cd,$ff,$43,$64,$f8 ; $3260 |
  db $fa,$8f,$ce,$00,$43,$c8,$f8,$ff,$7c,$32,$8e,$32,$ea,$1e,$fc,$b0 ; $3270 |
  db $14,$e3,$18,$24,$ff,$7f,$7f,$f3,$00,$ff,$36,$02,$00,$ff,$ea,$1e ; $3280 |
  db $fc,$a6,$14,$f2,$3c,$e3,$10,$24,$ff,$7f,$7f,$f3,$00,$ff,$36,$02 ; $3290 |
  db $00,$ff,$a6,$32,$f1,$32,$ea,$78,$fc,$fe,$25,$e3,$16,$45,$3c,$7d ; $32a0 |
  db $7f,$f3,$00,$3c,$30,$d6,$ff,$32,$1e,$ee,$f3,$00,$1e,$30,$f8,$ff ; $32b0 |
  db $b2,$df,$f3,$00,$1e,$30,$f8,$ff,$b2,$cb,$f3,$00,$1e,$30,$f8,$ff ; $32c0 |
  db $b2,$c1,$f3,$00,$1e,$30,$f8,$ff,$b2,$b7,$f3,$00,$1e,$30,$f8,$ff ; $32d0 |
  db $b2,$b2,$f3,$00,$1e,$30,$f8,$ff,$b2,$ad,$f3,$00,$1e,$30,$f8,$ff ; $32e0 |
  db $ff,$ea,$78,$fc,$fe,$25,$e3,$12,$3a,$28,$7f,$7f,$f3,$00,$28,$30 ; $32f0 |
  db $e2,$ff,$fa,$8f,$ce,$00,$30,$ff,$ff,$f3,$00,$ff,$33,$01,$00,$ff ; $3300 |

  fillbyte 0
  fill $3500-pc()
