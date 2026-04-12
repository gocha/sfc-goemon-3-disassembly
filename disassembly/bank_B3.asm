org $B38000

incbin ../assets/bank_B3.bin:$0000..$7C10   ; $B38000 |

CODE_FL_B3FC10:
  PHA                                       ; $B3FC10 |
  LDA.W #$0371                              ; $B3FC11 |
  JSL.L CODE_FL_8695D1                      ; $B3FC14 |
  PLA                                       ; $B3FC18 |
  BCS CODE_B3FC2F                           ; $B3FC19 |
  STA.W $004E,Y                             ; $B3FC1B |
  JSL.L CODE_FL_869550                      ; $B3FC1E |
  PHX                                       ; $B3FC22 |
  TYX                                       ; $B3FC23 |
  STZ.B $14,X                               ; $B3FC24 |
  LDA.W #$8000                              ; $B3FC26 |
  STA.B $22,X                               ; $B3FC29 |
  STZ.B $14,X                               ; $B3FC2B |
  PLX                                       ; $B3FC2D |
  CLC                                       ; $B3FC2E |

CODE_B3FC2F:
  RTL                                       ; $B3FC2F |

CODE_JL_B3FC30:
  STA.B $4E,X                               ; $B3FC30 |
  STZ.B $02,X                               ; $B3FC32 |
  STZ.B $1A,X                               ; $B3FC34 |
  LDA.W #$0371                              ; $B3FC36 |
  STA.B $18,X                               ; $B3FC39 |

CODE_B3FC3B:
  JSL.L CODE_FL_8695B7                      ; $B3FC3B |
  BCC CODE_B3FC7B                           ; $B3FC3F |
  JSL.L CODE_FL_86C3F8                      ; $B3FC41 |
  PHX                                       ; $B3FC45 |
  ASL A                                     ; $B3FC46 |
  TAX                                       ; $B3FC47 |
  LDA.L PTR16_B3FC52,X                      ; $B3FC48 |
  PLX                                       ; $B3FC4C |
  STA.B $00                                 ; $B3FC4D |
  JMP.W ($0000)                             ; $B3FC4F |

PTR16_B3FC52:
  dw CODE_B3FC58                            ; $B3FC52 |
  dw CODE_B3FC77                            ; $B3FC54 |
  dw CODE_B3FC7B                            ; $B3FC56 |

CODE_B3FC58:
  LDA.W #$9898                              ; $B3FC58 |
  STA.B $04,X                               ; $B3FC5B |
  LDA.W #$8000                              ; $B3FC5D |
  STA.B $22,X                               ; $B3FC60 |
  STZ.B $34,X                               ; $B3FC62 |
  CLC                                       ; $B3FC64 |
  LDA.W #$8000                              ; $B3FC65 |
  ADC.B $4E,X                               ; $B3FC68 |
  JSL.L CODE_FL_86CAEE                      ; $B3FC6A |
  INC.B $1A,X                               ; $B3FC6E |
  LDA.W #$000D                              ; $B3FC70 |
  JML.L push_sound_queue                    ; $B3FC73 |

CODE_B3FC77:
  JML.L CODE_JL_86CAFC                      ; $B3FC77 |

CODE_B3FC7B:
  JML.L CODE_FL_86CA36                      ; $B3FC7B |

CODE_B3FC7F:
  JSL.L CODE_FL_8695B7                      ; $B3FC7F |
  BCC CODE_B3FC7B                           ; $B3FC83 |
  CLC                                       ; $B3FC85 |
  LDA.B $28,X                               ; $B3FC86 |
  ADC.W #$0030                              ; $B3FC88 |
  STA.B $28,X                               ; $B3FC8B |
  JSL.L CODE_FL_86C3F8                      ; $B3FC8D |
  BNE CODE_B3FCD9                           ; $B3FC91 |
  LDA.W #$9898                              ; $B3FC93 |
  STA.B $04,X                               ; $B3FC96 |
  LDA.W #$8000                              ; $B3FC98 |
  STA.B $22,X                               ; $B3FC9B |
  STZ.B $34,X                               ; $B3FC9D |
  LDA.B $4E,X                               ; $B3FC9F |
  AND.W #$0007                              ; $B3FCA1 |
  CLC                                       ; $B3FCA4 |
  ADC.W #$0014                              ; $B3FCA5 |
  LDY.W #$0014                              ; $B3FCA8 |
  JSL.L CODE_FL_8AB499                      ; $B3FCAB |
  LDA.W #$005A                              ; $B3FCAF |
  STA.B $2C,X                               ; $B3FCB2 |
  JSL.L CODE_FL_86958B                      ; $B3FCB4 |
  AND.W #$0007                              ; $B3FCB8 |
  LDY.B $8E                                 ; $B3FCBB |
  CPY.W #$00FC                              ; $B3FCBD |
  BEQ CODE_B3FCC5                           ; $B3FCC0 |
  ORA.W #$0008                              ; $B3FCC2 |

CODE_B3FCC5:
  PHX                                       ; $B3FCC5 |
  TAX                                       ; $B3FCC6 |
  LDA.L DATA8_B3FCE1,X                      ; $B3FCC7 |
  AND.W #$00FF                              ; $B3FCCB |
  PLX                                       ; $B3FCCE |
  CLC                                       ; $B3FCCF |
  ADC.W #$8003                              ; $B3FCD0 |
  JSL.L CODE_FL_86CAEE                      ; $B3FCD3 |
  INC.B $1A,X                               ; $B3FCD7 |

CODE_B3FCD9:
  JSL.L CODE_FL_86C70D                      ; $B3FCD9 |
  JML.L CODE_FL_86CA57                      ; $B3FCDD |

DATA8_B3FCE1:
  db $00,$01,$00,$01,$02,$02,$02,$02        ; $B3FCE1 |
  db $03,$04,$03,$04,$03,$04,$03,$05        ; $B3FCE9 |

CODE_B3FCF1:
  JSL.L CODE_FL_8695B7                      ; $B3FCF1 |
  BCC CODE_B3FD3C                           ; $B3FCF5 |
  JSL.L CODE_FL_86C424                      ; $B3FCF7 |
  DEC.B $4E,X                               ; $B3FCFB |
  BMI CODE_B3FD3C                           ; $B3FCFD |
  LDA.B $2C,X                               ; $B3FCFF |
  BNE CODE_B3FD20                           ; $B3FD01 |
  LDA.W #$0371                              ; $B3FD03 |
  JSL.L CODE_FL_B3FC10                      ; $B3FD06 |
  BCS CODE_B3FD20                           ; $B3FD0A |
  JSL.L CODE_FL_86958B                      ; $B3FD0C |
  AND.W #$0001                              ; $B3FD10 |
  INC A                                     ; $B3FD13 |
  STA.W $004E,Y                             ; $B3FD14 |
  JSL.L CODE_FL_B3FD21                      ; $B3FD17 |
  LDA.W #$000C                              ; $B3FD1B |
  STA.B $2C,X                               ; $B3FD1E |

CODE_B3FD20:
  RTL                                       ; $B3FD20 |

CODE_FL_B3FD21:
  LDA.B $3C,X                               ; $B3FD21 |
  BEQ CODE_B3FD3B                           ; $B3FD23 |
  PHX                                       ; $B3FD25 |
  TYX                                       ; $B3FD26 |
  LDA.W #$0372                              ; $B3FD27 |
  JSL.L CODE_FL_8695CE                      ; $B3FD2A |
  BCS CODE_B3FD3A                           ; $B3FD2E |
  JSL.L CODE_FL_86958B                      ; $B3FD30 |
  AND.W #$000F                              ; $B3FD34 |
  STA.W $004E,Y                             ; $B3FD37 |

CODE_B3FD3A:
  PLX                                       ; $B3FD3A |

CODE_B3FD3B:
  RTL                                       ; $B3FD3B |

CODE_B3FD3C:
  JML.L CODE_FL_86CA36                      ; $B3FD3C |

CODE_FL_B3FD40:
  LDA.W #$0378                              ; $B3FD40 |
  LDY.W $1B78                               ; $B3FD43 |
  JSL.L CODE_FL_86C9E0                      ; $B3FD46 |
  TXA                                       ; $B3FD4A |
  TYX                                       ; $B3FD4B |
  TAY                                       ; $B3FD4C |
  JSL.L CODE_FL_86C89E                      ; $B3FD4D |
  STZ.B $22,X                               ; $B3FD51 |
  LDA.W $05B0                               ; $B3FD53 |
  STA.B $3B,X                               ; $B3FD56 |
  JSL.L CODE_FL_86C849                      ; $B3FD58 |
  STZ.B $22,X                               ; $B3FD5C |
  TYX                                       ; $B3FD5E |
  ASL.B $32,X                               ; $B3FD5F |
  LSR.B $32,X                               ; $B3FD61 |
  RTL                                       ; $B3FD63 |

CODE_B3FD64:
  LDA.W #$0005                              ; $B3FD64 |
  STA.W $05B8                               ; $B3FD67 |
  JSL.L CODE_FL_97FC80                      ; $B3FD6A |
  LDY.W #$0580                              ; $B3FD6E |
  JSL.L CODE_FL_86C89E                      ; $B3FD71 |
  SEC                                       ; $B3FD75 |
  LDA.B $3A,X                               ; $B3FD76 |
  SBC.B $3E,X                               ; $B3FD78 |
  STA.B $3A,X                               ; $B3FD7A |
  LDA.B $3C,X                               ; $B3FD7C |
  SBC.W #$0000                              ; $B3FD7E |
  STA.B $3C,X                               ; $B3FD81 |
  CLC                                       ; $B3FD83 |
  LDA.B $3A,X                               ; $B3FD84 |
  ADC.B $0C,X                               ; $B3FD86 |
  STA.B $0C,X                               ; $B3FD88 |
  LDA.B $3C,X                               ; $B3FD8A |
  ADC.B $0E,X                               ; $B3FD8C |
  STA.B $0E,X                               ; $B3FD8E |
  LDA.B $1A,X                               ; $B3FD90 |
  PHX                                       ; $B3FD92 |
  ASL A                                     ; $B3FD93 |
  TAX                                       ; $B3FD94 |
  LDA.L PTR16_B3FD9F,X                      ; $B3FD95 |
  PLX                                       ; $B3FD99 |
  STA.B $00                                 ; $B3FD9A |
  JMP.W ($0000)                             ; $B3FD9C |

PTR16_B3FD9F:
  dw CODE_B3FDA5                            ; $B3FD9F |
  dw CODE_B3FDB4                            ; $B3FDA1 |
  dw CODE_B3FDD1                            ; $B3FDA3 |

CODE_B3FDA5:
  LDA.W #$8012                              ; $B3FDA5 |
  JSL.L CODE_FL_86CAEE                      ; $B3FDA8 |
  LDA.W #$0600                              ; $B3FDAC |
  STA.B $3E,X                               ; $B3FDAF |
  INC.B $1A,X                               ; $B3FDB1 |
  RTL                                       ; $B3FDB3 |

CODE_B3FDB4:
  LDA.W #$8011                              ; $B3FDB4 |
  LDY.B $3B,X                               ; $B3FDB7 |
  CPY.W #$FFA8                              ; $B3FDB9 |
  BPL CODE_B3FDD0                           ; $B3FDBC |
  JSL.L CODE_FL_86CAEE                      ; $B3FDBE |
  LDA.W #$0300                              ; $B3FDC2 |
  STA.B $3E,X                               ; $B3FDC5 |
  LDA.W #$0034                              ; $B3FDC7 |
  JSL.L push_sound_queue                    ; $B3FDCA |
  INC.B $1A,X                               ; $B3FDCE |

CODE_B3FDD0:
  RTL                                       ; $B3FDD0 |

CODE_B3FDD1:
  CLC                                       ; $B3FDD1 |
  LDA.B $3B,X                               ; $B3FDD2 |
  ADC.W #$00A0                              ; $B3FDD4 |
  BPL CODE_B3FDD0                           ; $B3FDD7 |

CODE_B3FDD9:
  JML.L CODE_FL_86CA36                      ; $B3FDD9 |

CODE_B3FDDD:
  LDA.B $2C,X                               ; $B3FDDD |
  BEQ CODE_B3FDD9                           ; $B3FDDF |
  JML.L CODE_FL_86C3F8                      ; $B3FDE1 |

CODE_FL_B3FDE5:
  STA.B $08                                 ; $B3FDE5 |
  LDA.W #$037A                              ; $B3FDE7 |
  JSL.L CODE_FL_8695D1                      ; $B3FDEA |
  BCS CODE_B3FDF9                           ; $B3FDEE |
  LDA.B $08                                 ; $B3FDF0 |
  STA.W $004E,Y                             ; $B3FDF2 |
  TDC                                       ; $B3FDF5 |
  STA.W $0014,Y                             ; $B3FDF6 |

CODE_B3FDF9:
  RTL                                       ; $B3FDF9 |

CODE_B3FDFA:
  JSL.L CODE_FL_86C7DF                      ; $B3FDFA |
  JSL.L CODE_FL_86C3B0                      ; $B3FDFE |
  LDA.B $1A,X                               ; $B3FE02 |
  BNE CODE_B3FE2E                           ; $B3FE04 |
  LDY.B $4E,X                               ; $B3FE06 |
  LDA.W CODE_00D457,Y                       ; $B3FE08 |
  STA.B $00,X                               ; $B3FE0B |
  CLC                                       ; $B3FE0D |
  LDA.W LOOSE_OP_00D45D,Y                   ; $B3FE0E |
  ADC.W $1CA8                               ; $B3FE11 |
  STA.W $1CA8                               ; $B3FE14 |
  LDA.W #$9898                              ; $B3FE17 |
  STA.B $04,X                               ; $B3FE1A |
  LDA.W #$0060                              ; $B3FE1C |
  STA.B $2C,X                               ; $B3FE1F |
  LDA.W #$FFA0                              ; $B3FE21 |
  STA.B $28,X                               ; $B3FE24 |
  LDA.W #$8000                              ; $B3FE26 |
  STA.B $22,X                               ; $B3FE29 |
  INC.B $1A,X                               ; $B3FE2B |
  RTL                                       ; $B3FE2D |

CODE_B3FE2E:
  LDA.B $2C,X                               ; $B3FE2E |
  CMP.W #$001E                              ; $B3FE30 |
  BCS CODE_B3FE3C                           ; $B3FE33 |
  LSR A                                     ; $B3FE35 |
  BCS CODE_B3FE3C                           ; $B3FE36 |
  JSL.L CODE_FL_86C7E7                      ; $B3FE38 |

CODE_B3FE3C:
  JSL.L CODE_FL_86C70D                      ; $B3FE3C |
  JML.L CODE_FL_86CA57                      ; $B3FE40 |

CODE_FL_B3FE44:
  TDC                                       ; $B3FE44 |

CODE_FL_B3FE45:
  LDY.W $1C5E                               ; $B3FE45 |
  BNE CODE_B3FE70                           ; $B3FE48 |
  STA.W $1C5E                               ; $B3FE4A |
  PHX                                       ; $B3FE4D |
  ASL A                                     ; $B3FE4E |
  TAX                                       ; $B3FE4F |
  LDA.L PTR16_B3FE5A,X                      ; $B3FE50 |
  PLX                                       ; $B3FE54 |
  STA.B $00                                 ; $B3FE55 |
  JMP.W ($0000)                             ; $B3FE57 |

PTR16_B3FE5A:
  dw CODE_JP_B3FEA3                         ; $B3FE5A |
  dw CODE_B3FEB0                            ; $B3FE5C |
  dw CODE_B3FED1                            ; $B3FE5E |
  dw CODE_B3FEF2                            ; $B3FE60 |
  dw CODE_B3FF0C                            ; $B3FE62 |
  dw CODE_B3FF2D                            ; $B3FE64 |
  dw CODE_B3FF4A                            ; $B3FE66 |
  dw CODE_B3FF7A                            ; $B3FE68 |
  dw CODE_B3FF97                            ; $B3FE6A |
  dw CODE_JP_B3FEA3                         ; $B3FE6C |
  dw CODE_JP_B3FEA3                         ; $B3FE6E |

CODE_B3FE70:
  RTL                                       ; $B3FE70 |

CODE_FL_B3FE71:
  LDA.W $1C5E                               ; $B3FE71 |
  BEQ CODE_B3FEAF                           ; $B3FE74 |
  BMI CODE_FL_B3FE7D                        ; $B3FE76 |
  DEC.W $1C60                               ; $B3FE78 |
  BMI CODE_JP_B3FEA3                        ; $B3FE7B |

CODE_FL_B3FE7D:
  AND.W #$00FF                              ; $B3FE7D |
  PHX                                       ; $B3FE80 |
  ASL A                                     ; $B3FE81 |
  TAX                                       ; $B3FE82 |
  LDA.L PTR16_B3FE8D,X                      ; $B3FE83 |
  PLX                                       ; $B3FE87 |
  STA.B $00                                 ; $B3FE88 |
  JMP.W ($0000)                             ; $B3FE8A |

PTR16_B3FE8D:
  dw CODE_B3FEAF                            ; $B3FE8D |
  dw CODE_B3FEBE                            ; $B3FE8F |
  dw CODE_B3FEDF                            ; $B3FE91 |
  dw CODE_B3FEFA                            ; $B3FE93 |
  dw CODE_B3FF1A                            ; $B3FE95 |
  dw CODE_B3FF35                            ; $B3FE97 |
  dw CODE_B3FF58                            ; $B3FE99 |
  dw CODE_B3FF82                            ; $B3FE9B |
  dw CODE_B3FFA3                            ; $B3FE9D |
  dw CODE_B3FEAF                            ; $B3FE9F |
  dw CODE_B3FEAF                            ; $B3FEA1 |

CODE_JP_B3FEA3:
  STZ.W $1C5E                               ; $B3FEA3 |
  STZ.W $1C60                               ; $B3FEA6 |
  STZ.W $1C62                               ; $B3FEA9 |
  STZ.W $1962                               ; $B3FEAC |

CODE_B3FEAF:
  RTL                                       ; $B3FEAF |

CODE_B3FEB0:
  LDA.W #$0010                              ; $B3FEB0 |
  STA.W $1C60                               ; $B3FEB3 |
  LDA.B $92                                 ; $B3FEB6 |
  ORA.W #$0001                              ; $B3FEB8 |
  STA.B $92                                 ; $B3FEBB |
  RTL                                       ; $B3FEBD |

CODE_B3FEBE:
  PHB                                       ; $B3FEBE |
  PEA.W $8A8A                               ; $B3FEBF |
  PLB                                       ; $B3FEC2 |
  PLB                                       ; $B3FEC3 |
  LDA.W $1C60                               ; $B3FEC4 |
  ASL A                                     ; $B3FEC7 |
  TAY                                       ; $B3FEC8 |
  LDA.W LOOSE_OP_00935A,Y                   ; $B3FEC9 |
  STA.W $1962                               ; $B3FECC |
  PLB                                       ; $B3FECF |
  RTL                                       ; $B3FED0 |

CODE_B3FED1:
  LDA.W #$0004                              ; $B3FED1 |
  STA.W $1C60                               ; $B3FED4 |
  LDA.B $92                                 ; $B3FED7 |
  ORA.W #$0001                              ; $B3FED9 |
  STA.B $92                                 ; $B3FEDC |
  RTL                                       ; $B3FEDE |

CODE_B3FEDF:
  PHB                                       ; $B3FEDF |
  PEA.W $8A8A                               ; $B3FEE0 |
  PLB                                       ; $B3FEE3 |
  PLB                                       ; $B3FEE4 |
  LDA.W $1C60                               ; $B3FEE5 |
  ASL A                                     ; $B3FEE8 |
  TAY                                       ; $B3FEE9 |
  LDA.W LOOSE_OP_0093A2,Y                   ; $B3FEEA |
  STA.W $1962                               ; $B3FEED |
  PLB                                       ; $B3FEF0 |
  RTL                                       ; $B3FEF1 |

CODE_B3FEF2:
  LDA.B $92                                 ; $B3FEF2 |
  ORA.W #$0001                              ; $B3FEF4 |
  STA.B $92                                 ; $B3FEF7 |
  RTL                                       ; $B3FEF9 |

CODE_B3FEFA:
  SEC                                       ; $B3FEFA |
  LDA.W $1C60                               ; $B3FEFB |
  INC.W $1C60                               ; $B3FEFE |
  AND.W #$0002                              ; $B3FF01 |
  SBC.W #$0001                              ; $B3FF04 |
  ASL A                                     ; $B3FF07 |
  STA.W $1962                               ; $B3FF08 |
  RTL                                       ; $B3FF0B |

CODE_B3FF0C:
  LDA.W #$0010                              ; $B3FF0C |
  STA.W $1C60                               ; $B3FF0F |
  LDA.B $92                                 ; $B3FF12 |
  ORA.W #$0001                              ; $B3FF14 |
  STA.B $92                                 ; $B3FF17 |
  RTL                                       ; $B3FF19 |

CODE_B3FF1A:
  PHB                                       ; $B3FF1A |
  PEA.W $8A8A                               ; $B3FF1B |
  PLB                                       ; $B3FF1E |
  PLB                                       ; $B3FF1F |
  LDA.W $1C60                               ; $B3FF20 |
  ASL A                                     ; $B3FF23 |
  TAY                                       ; $B3FF24 |
  LDA.W CODE_00937A,Y                       ; $B3FF25 |
  STA.W $1962                               ; $B3FF28 |
  PLB                                       ; $B3FF2B |
  RTL                                       ; $B3FF2C |

CODE_B3FF2D:
  LDA.B $92                                 ; $B3FF2D |
  ORA.W #$0001                              ; $B3FF2F |
  STA.B $92                                 ; $B3FF32 |
  RTL                                       ; $B3FF34 |

CODE_B3FF35:
  PHB                                       ; $B3FF35 |
  PEA.W $8A8A                               ; $B3FF36 |
  PLB                                       ; $B3FF39 |
  PLB                                       ; $B3FF3A |
  LDA.B $42                                 ; $B3FF3B |
  AND.W #$0003                              ; $B3FF3D |
  ASL A                                     ; $B3FF40 |
  TAY                                       ; $B3FF41 |
  LDA.W LOOSE_OP_0093A2,Y                   ; $B3FF42 |
  STA.W $1962                               ; $B3FF45 |
  PLB                                       ; $B3FF48 |
  RTL                                       ; $B3FF49 |

CODE_B3FF4A:
  LDA.W #$0010                              ; $B3FF4A |
  STA.W $1C60                               ; $B3FF4D |
  LDA.B $92                                 ; $B3FF50 |
  ORA.W #$0003                              ; $B3FF52 |
  STA.B $92                                 ; $B3FF55 |
  RTL                                       ; $B3FF57 |

CODE_B3FF58:
  DEC.W $1C60                               ; $B3FF58 |
  BPL CODE_B3FF67                           ; $B3FF5B |
  LDA.B $92                                 ; $B3FF5D |
  AND.W #$FFFC                              ; $B3FF5F |
  STA.B $92                                 ; $B3FF62 |
  JMP.W CODE_JP_B3FEA3                      ; $B3FF64 |

CODE_B3FF67:
  PHB                                       ; $B3FF67 |
  PEA.W $8A8A                               ; $B3FF68 |
  PLB                                       ; $B3FF6B |
  PLB                                       ; $B3FF6C |
  LDA.W $1C60                               ; $B3FF6D |
  ASL A                                     ; $B3FF70 |
  TAY                                       ; $B3FF71 |
  LDA.W LOOSE_OP_00935A,Y                   ; $B3FF72 |
  STA.W $1962                               ; $B3FF75 |
  PLB                                       ; $B3FF78 |
  RTL                                       ; $B3FF79 |

CODE_B3FF7A:
  LDA.B $92                                 ; $B3FF7A |
  ORA.W #$0010                              ; $B3FF7C |
  STA.B $92                                 ; $B3FF7F |
  RTL                                       ; $B3FF81 |

CODE_B3FF82:
  LDA.W $1C60                               ; $B3FF82 |
  BEQ CODE_B3FF93                           ; $B3FF85 |
  SEC                                       ; $B3FF87 |
  AND.W #$0002                              ; $B3FF88 |
  SBC.W #$0001                              ; $B3FF8B |
  ASL A                                     ; $B3FF8E |
  STA.W $1960                               ; $B3FF8F |
  RTL                                       ; $B3FF92 |

CODE_B3FF93:
  STZ.W $1960                               ; $B3FF93 |
  RTL                                       ; $B3FF96 |

CODE_B3FF97:
  LDA.W #$0010                              ; $B3FF97 |
  STA.W $1C60                               ; $B3FF9A |
  LDA.W #$0011                              ; $B3FF9D |
  STA.B $92                                 ; $B3FFA0 |
  RTL                                       ; $B3FFA2 |

CODE_B3FFA3:
  LDA.B $42                                 ; $B3FFA3 |
  AND.W #$0003                              ; $B3FFA5 |
  ORA.W #$0100                              ; $B3FFA8 |
  STA.W $1672                               ; $B3FFAB |
  RTL                                       ; $B3FFAE |

CODE_B3FFAF:
  LDA.B $1A,X                               ; $B3FFAF |
  PHX                                       ; $B3FFB1 |
  ASL A                                     ; $B3FFB2 |
  TAX                                       ; $B3FFB3 |
  LDA.L PTR16_B3FFBE,X                      ; $B3FFB4 |
  PLX                                       ; $B3FFB8 |
  STA.B $00                                 ; $B3FFB9 |
  JMP.W ($0000)                             ; $B3FFBB |

PTR16_B3FFBE:
  dw CODE_B3FFC4                            ; $B3FFBE |
  dw CODE_B3FFC5                            ; $B3FFC0 |
  dw CODE_B3FFD9                            ; $B3FFC2 |

CODE_B3FFC4:
  RTL                                       ; $B3FFC4 |

CODE_B3FFC5:
  LDA.W #$0010                              ; $B3FFC5 |
  STA.B $2E,X                               ; $B3FFC8 |
  LDA.W #$0020                              ; $B3FFCA |
  STA.B $30,X                               ; $B3FFCD |
  LDA.W #$E000                              ; $B3FFCF |
  STA.B $34,X                               ; $B3FFD2 |
  STZ.B $22,X                               ; $B3FFD4 |
  INC.B $1A,X                               ; $B3FFD6 |
  RTL                                       ; $B3FFD8 |

CODE_B3FFD9:
  PHX                                       ; $B3FFD9 |
  LDA.W #$000E                              ; $B3FFDA |
  STA.B $0E                                 ; $B3FFDD |
  LDA.W #$0010                              ; $B3FFDF |
  STA.B $10                                 ; $B3FFE2 |
  LDA.W #$0000                              ; $B3FFE4 |
  STA.B $0A                                 ; $B3FFE7 |
  STA.B $0C                                 ; $B3FFE9 |
  JSL.L CODE_FL_85F8A1                      ; $B3FFEB |
  PLX                                       ; $B3FFEF |
  RTL                                       ; $B3FFF0 |

  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $B3FFF1 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF            ; $B3FFF9 |
