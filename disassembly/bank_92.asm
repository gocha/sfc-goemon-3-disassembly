org $928000

incbin ../assets/bank_92.bin:$0000..$7D40   ; $928000 |

CODE_FL_92FD40:
  LDX.W $19CC                               ; $92FD40 |
  BNE CODE_92FD48                           ; $92FD43 |
  JMP.W CODE_JP_92FDED                      ; $92FD45 |

CODE_92FD48:
  LDA.B $09,X                               ; $92FD48 |
  CLC                                       ; $92FD4A |
  ADC.W $1662                               ; $92FD4B |
  STA.B $08                                 ; $92FD4E |
  LDA.B $0D,X                               ; $92FD50 |
  CLC                                       ; $92FD52 |
  ADC.W $1672                               ; $92FD53 |
  STA.B $0A                                 ; $92FD56 |
  LDA.B $3C,X                               ; $92FD58 |
  AND.W #$00FF                              ; $92FD5A |
  BNE CODE_92FD62                           ; $92FD5D |
  JMP.W CODE_JP_92FDED                      ; $92FD5F |

CODE_92FD62:
  DEC A                                     ; $92FD62 |
  ASL A                                     ; $92FD63 |
  TAX                                       ; $92FD64 |
  LDA.L DATA8_92FDF4,X                      ; $92FD65 |
  STA.B $00                                 ; $92FD69 |
  TAX                                       ; $92FD6B |
  LDA.L DATA8_92FE00,X                      ; $92FD6C |
  STA.B $02                                 ; $92FD70 |
  LDA.W $19CF                               ; $92FD72 |
  AND.W #$00FF                              ; $92FD75 |
  BEQ CODE_92FD7F                           ; $92FD78 |
  DEC.W $19CF                               ; $92FD7A |
  SEC                                       ; $92FD7D |
  RTL                                       ; $92FD7E |

CODE_92FD7F:
  LDA.W $19CE                               ; $92FD7F |
  AND.W #$00FF                              ; $92FD82 |
  TAX                                       ; $92FD85 |
  LDA.L CODE_92FDF1,X                       ; $92FD86 |
  AND.W #$FF00                              ; $92FD8A |
  ORA.W $19CE                               ; $92FD8D |
  STA.W $19CE                               ; $92FD90 |
  AND.W #$00FF                              ; $92FD93 |
  BNE CODE_92FDA1                           ; $92FD96 |
  PHA                                       ; $92FD98 |
  LDA.W #$0058                              ; $92FD99 |
  JSL.L CODE_FL_8089BD                      ; $92FD9C |
  PLA                                       ; $92FDA0 |

CODE_92FDA1:
  ASL A                                     ; $92FDA1 |
  CLC                                       ; $92FDA2 |
  ADC.B $00                                 ; $92FDA3 |
  TAX                                       ; $92FDA5 |
  LDA.L DATA8_92FE02,X                      ; $92FDA6 |
  CMP.W #$FFFF                              ; $92FDAA |
  BEQ CODE_JP_92FDED                        ; $92FDAD |
  STA.B $04                                 ; $92FDAF |
  LDA.B $02                                 ; $92FDB1 |
  AND.W #$00FF                              ; $92FDB3 |
  CMP.W #$0080                              ; $92FDB6 |
  BCC CODE_92FDBF                           ; $92FDB9 |
  XBA                                       ; $92FDBB |
  DEC A                                     ; $92FDBC |
  XBA                                       ; $92FDBD |
  CLC                                       ; $92FDBE |

CODE_92FDBF:
  ADC.B $08                                 ; $92FDBF |
  AND.W #$FFE0                              ; $92FDC1 |
  STA.B $10                                 ; $92FDC4 |
  LDA.B $03                                 ; $92FDC6 |
  AND.W #$00FF                              ; $92FDC8 |
  CMP.W #$0080                              ; $92FDCB |
  BCC CODE_92FDD4                           ; $92FDCE |
  XBA                                       ; $92FDD0 |
  DEC A                                     ; $92FDD1 |
  XBA                                       ; $92FDD2 |
  CLC                                       ; $92FDD3 |

CODE_92FDD4:
  ADC.B $0A                                 ; $92FDD4 |
  AND.W #$FFE0                              ; $92FDD6 |
  STA.B $12                                 ; $92FDD9 |
  LDA.B $04                                 ; $92FDDB |
  PHB                                       ; $92FDDD |
  PEA.W $8700                               ; $92FDDE |
  PLB                                       ; $92FDE1 |
  PLB                                       ; $92FDE2 |
  JSL.L CODE_FL_85824D                      ; $92FDE3 |
  PLB                                       ; $92FDE7 |
  INC.W $19CE                               ; $92FDE8 |
  SEC                                       ; $92FDEB |
  RTL                                       ; $92FDEC |

CODE_JP_92FDED:
  STZ.W $19CC                               ; $92FDED |
  CLC                                       ; $92FDF0 |

CODE_92FDF1:
  RTL                                       ; $92FDF1 |

  db $02,$06                                ; $92FDF2 |

DATA8_92FDF4:
  db $00,$00,$08,$00                        ; $92FDF4 |
  db $10,$00                                ; $92FDF8 |
  db $18,$00,$20,$00,$28,$00                ; $92FDFA |

DATA8_92FE00:
  db $00,$E0                                ; $92FE00 |

DATA8_92FE02:
  db $D0,$05,$D2,$05,$FF,$FF,$00,$E0        ; $92FE02 |
  db $D4,$05,$D6,$05,$FF,$FF                ; $92FE0A |
  db $00,$E0,$D8,$05,$DA,$05,$FF,$FF        ; $92FE10 |
  db $F0,$E0,$DC,$05,$DE,$05,$FF,$FF        ; $92FE18 |
  db $F0,$F0,$E0,$05,$E2,$05,$FF,$FF        ; $92FE20 |
  db $F0,$F0,$E6,$05,$E8,$05,$FF,$FF        ; $92FE28 |
  db $F0,$F0,$EA,$05,$FF,$FF                ; $92FE30 |

CODE_FL_92FE36:
  LDY.W #$B99A                              ; $92FE36 |
  JSL.L CODE_FL_80C27C                      ; $92FE39 |
  JSL.L CODE_FL_84DAA6                      ; $92FE3D |
  LDA.L DATA8_81FBF6                        ; $92FE41 |
  CLC                                       ; $92FE45 |
  ADC.W $16B2                               ; $92FE46 |
  STA.W $1C30                               ; $92FE49 |
  STZ.W $1C32                               ; $92FE4C |
  RTL                                       ; $92FE4F |

CODE_FL_92FE50:
  PHB                                       ; $92FE50 |
  LDA.W #$0081                              ; $92FE51 |
  XBA                                       ; $92FE54 |
  PHA                                       ; $92FE55 |
  PLB                                       ; $92FE56 |
  PLB                                       ; $92FE57 |
  JSL.L CODE_FL_92FE5E                      ; $92FE58 |
  PLB                                       ; $92FE5C |
  RTL                                       ; $92FE5D |

CODE_FL_92FE5E:
  LDY.W $1C32                               ; $92FE5E |
  LDA.W EMPTY_00FBF6,Y                      ; $92FE61 |
  BEQ CODE_92FEC3                           ; $92FE64 |
  LDA.W $16B0                               ; $92FE66 |
  CLC                                       ; $92FE69 |
  ADC.W #$4000                              ; $92FE6A |
  STA.W $16B0                               ; $92FE6D |
  LDA.W $16B2                               ; $92FE70 |
  ADC.W #$0000                              ; $92FE73 |
  AND.W #$00FF                              ; $92FE76 |
  STA.W $16B2                               ; $92FE79 |
  CMP.W $1C30                               ; $92FE7C |
  BEQ CODE_92FE8C                           ; $92FE7F |
  AND.W #$0007                              ; $92FE81 |
  BNE CODE_92FEC1                           ; $92FE84 |
  JSL.L CODE_FL_92FEC5                      ; $92FE86 |
  BRA CODE_92FEC1                           ; $92FE8A |

CODE_92FE8C:
  LDY.W $1C32                               ; $92FE8C |
  INY                                       ; $92FE8F |
  INY                                       ; $92FE90 |
  STY.W $1C32                               ; $92FE91 |
  LDA.W EMPTY_00FBF6,Y                      ; $92FE94 |
  BEQ CODE_92FEC1                           ; $92FE97 |
  BPL CODE_92FEB7                           ; $92FE99 |
  JSL.L CODE_FL_92FEE5                      ; $92FE9B |
  JSL.L CODE_FL_92FF9A                      ; $92FE9F |
  LDY.W $1C32                               ; $92FEA3 |
  LDA.W EMPTY_00FBF8,Y                      ; $92FEA6 |
  BEQ CODE_92FEC1                           ; $92FEA9 |
  BMI CODE_92FEB4                           ; $92FEAB |
  INY                                       ; $92FEAD |
  INY                                       ; $92FEAE |
  STY.W $1C32                               ; $92FEAF |
  BRA CODE_92FEB7                           ; $92FEB2 |

CODE_92FEB4:
  LDA.W #$0020                              ; $92FEB4 |

CODE_92FEB7:
  CLC                                       ; $92FEB7 |
  ADC.W $1C30                               ; $92FEB8 |
  AND.W #$00FF                              ; $92FEBB |
  STA.W $1C30                               ; $92FEBE |

CODE_92FEC1:
  CLC                                       ; $92FEC1 |
  RTL                                       ; $92FEC2 |

CODE_92FEC3:
  SEC                                       ; $92FEC3 |
  RTL                                       ; $92FEC4 |

CODE_FL_92FEC5:
  REP #$30                                  ; $92FEC5 |
  PHB                                       ; $92FEC7 |
  LDA.W #$0000                              ; $92FEC8 |
  STA.L $001C40                             ; $92FECB |
  LDA.W #$00BD                              ; $92FECF |
  LDX.W #$1C41                              ; $92FED2 |
  TXY                                       ; $92FED5 |
  INY                                       ; $92FED6 |
  MVN $00,$00                               ; $92FED7 |
  PLB                                       ; $92FEDA |
  LDY.W #$0018                              ; $92FEDB |
  LDA.W #$1C40                              ; $92FEDE |
  JSR.W CODE_FN_92FFB6                      ; $92FEE1 |
  RTL                                       ; $92FEE4 |

CODE_FL_92FEE5:
  PHX                                       ; $92FEE5 |
  REP #$30                                  ; $92FEE6 |
  PHB                                       ; $92FEE8 |
  LDA.W #$0000                              ; $92FEE9 |
  STA.L $001C40                             ; $92FEEC |
  LDA.W #$00BD                              ; $92FEF0 |
  LDX.W #$1C41                              ; $92FEF3 |
  TXY                                       ; $92FEF6 |
  INY                                       ; $92FEF7 |
  MVN $00,$00                               ; $92FEF8 |
  PLB                                       ; $92FEFB |
  LDA.W #$000C                              ; $92FEFC |
  STA.B $08                                 ; $92FEFF |
  LDY.W $1C32                               ; $92FF01 |
  LDA.W EMPTY_00FBF6,Y                      ; $92FF04 |
  TAY                                       ; $92FF07 |
  CPY.W #$FF05                              ; $92FF08 |
  BNE CODE_92FF12                           ; $92FF0B |
  JSR.W CODE_FN_92FF7F                      ; $92FF0D |
  PLX                                       ; $92FF10 |
  RTL                                       ; $92FF11 |

CODE_92FF12:
  STY.B $0A                                 ; $92FF12 |
  LDA.W $0000,Y                             ; $92FF14 |
  AND.W #$00FF                              ; $92FF17 |
  CMP.W #$00FF                              ; $92FF1A |
  BEQ CODE_92FF76                           ; $92FF1D |
  CMP.W #$00C0                              ; $92FF1F |
  BCC CODE_92FF2F                           ; $92FF22 |
  SBC.W #$00C0                              ; $92FF24 |
  ASL A                                     ; $92FF27 |
  CLC                                       ; $92FF28 |
  ADC.B $08                                 ; $92FF29 |
  STA.B $08                                 ; $92FF2B |
  BRA CODE_92FF71                           ; $92FF2D |

CODE_92FF2F:
  LDY.B $08                                 ; $92FF2F |
  CMP.W #$0088                              ; $92FF31 |
  BCC CODE_92FF56                           ; $92FF34 |
  SBC.W #$0088                              ; $92FF36 |
  TAX                                       ; $92FF39 |
  LDA.L DATA8_818B09,X                      ; $92FF3A |
  AND.W #$00FF                              ; $92FF3E |
  PHA                                       ; $92FF41 |
  CPX.W #$0020                              ; $92FF42 |
  LDA.L DATA8_818AE7                        ; $92FF45 |
  BCC CODE_92FF4F                           ; $92FF49 |
  LDA.L DATA8_818ADF                        ; $92FF4B |

CODE_92FF4F:
  JSR.W CODE_FN_92FF78                      ; $92FF4F |
  STA.W $1C40,Y                             ; $92FF52 |
  PLA                                       ; $92FF55 |

CODE_92FF56:
  ASL A                                     ; $92FF56 |
  ASL A                                     ; $92FF57 |
  TAX                                       ; $92FF58 |
  LDA.L DATA8_8188E9,X                      ; $92FF59 |
  JSR.W CODE_FN_92FF78                      ; $92FF5D |
  STA.W $1C80,Y                             ; $92FF60 |
  LDA.L UNREACH_8188EB,X                    ; $92FF63 |
  JSR.W CODE_FN_92FF78                      ; $92FF67 |
  STA.W $1CC0,Y                             ; $92FF6A |
  INC.B $08                                 ; $92FF6D |
  INC.B $08                                 ; $92FF6F |

CODE_92FF71:
  LDY.B $0A                                 ; $92FF71 |
  INY                                       ; $92FF73 |
  BRA CODE_92FF12                           ; $92FF74 |

CODE_92FF76:
  PLX                                       ; $92FF76 |
  RTL                                       ; $92FF77 |

CODE_FN_92FF78:
  AND.W #$E3FF                              ; $92FF78 |
  ORA.W #$3000                              ; $92FF7B |
  RTS                                       ; $92FF7E |

CODE_FN_92FF7F:
  PHB                                       ; $92FF7F |
  LDA.W #$002B                              ; $92FF80 |
  LDX.W #$FF05                              ; $92FF83 |
  LDY.W #$1C4C                              ; $92FF86 |
  MVN $00,$81                               ; $92FF89 |
  LDA.W #$002B                              ; $92FF8C |
  LDX.W #$FF31                              ; $92FF8F |
  LDY.W #$1C8C                              ; $92FF92 |
  MVN $00,$81                               ; $92FF95 |
  PLB                                       ; $92FF98 |
  RTS                                       ; $92FF99 |

CODE_FL_92FF9A:
  LDY.W #$0000                              ; $92FF9A |
  LDA.W #$1C40                              ; $92FF9D |
  JSR.W CODE_FN_92FFB6                      ; $92FFA0 |
  LDY.W #$0008                              ; $92FFA3 |
  LDA.W #$1C80                              ; $92FFA6 |
  JSR.W CODE_FN_92FFB6                      ; $92FFA9 |
  LDY.W #$0010                              ; $92FFAC |
  LDA.W #$1CC0                              ; $92FFAF |
  JSR.W CODE_FN_92FFB6                      ; $92FFB2 |
  RTL                                       ; $92FFB5 |

CODE_FN_92FFB6:
  PHA                                       ; $92FFB6 |
  TYA                                       ; $92FFB7 |
  CLC                                       ; $92FFB8 |
  ADC.W #$00E0                              ; $92FFB9 |
  CLC                                       ; $92FFBC |
  ADC.W $16B2                               ; $92FFBD |
  AND.W #$00F8                              ; $92FFC0 |
  ASL A                                     ; $92FFC3 |
  ASL A                                     ; $92FFC4 |
  ADC.W #$5000                              ; $92FFC5 |
  TAY                                       ; $92FFC8 |
  LDA.W #$0000                              ; $92FFC9 |
  STA.B $00                                 ; $92FFCC |
  PLA                                       ; $92FFCE |
  LDX.W #$0040                              ; $92FFCF |
  JSL.L CODE_FL_809671                      ; $92FFD2 |
  RTS                                       ; $92FFD6 |

CODE_FL_92FFD7:
  LDX.W #$0580                              ; $92FFD7 |
  JSR.W CODE_FN_92FFDE                      ; $92FFDA |
  RTL                                       ; $92FFDD |

CODE_FN_92FFDE:
  BIT.B $22,X                               ; $92FFDE |
  BPL CODE_92FFF2                           ; $92FFE0 |
  SEC                                       ; $92FFE2 |
  LDA.B $09,X                               ; $92FFE3 |
  SBC.W $174C                               ; $92FFE5 |
  STA.B $09,X                               ; $92FFE8 |
  SEC                                       ; $92FFEA |
  LDA.B $0D,X                               ; $92FFEB |
  SBC.W $174E                               ; $92FFED |
  STA.B $0D,X                               ; $92FFF0 |

CODE_92FFF2:
  LDA.B $16,X                               ; $92FFF2 |
  TAX                                       ; $92FFF4 |
  BNE CODE_FN_92FFDE                        ; $92FFF5 |
  RTS                                       ; $92FFF7 |

  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $92FFF8 |
