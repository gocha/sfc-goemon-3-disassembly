org $8A8000

incbin ../assets/bank_8A.bin:$0000..$2E00   ; $8A8000 |

CODE_FL_8AAE00:
  LDA.W #$0001                              ; $8AAE00 |
  STA.B $76                                 ; $8AAE03 |
  LDA.B $80                                 ; $8AAE05 |
  ASL A                                     ; $8AAE07 |
  TAX                                       ; $8AAE08 |
  JMP.W (PTR16_8AAE0C,X)                    ; $8AAE09 |

PTR16_8AAE0C:
  dw CODE_8AAE12                            ; $8AAE0C |
  dw CODE_8AAE31                            ; $8AAE0E |
  dw CODE_8AAE55                            ; $8AAE10 |

CODE_8AAE12:
  LDA.W $1F30                               ; $8AAE12 |
  BNE CODE_8AAE28                           ; $8AAE15 |
  LDA.B $DA                                 ; $8AAE17 |
  BMI CODE_8AAE2A                           ; $8AAE19 |
  JSL.L CODE_FL_80BED7                      ; $8AAE1B |
  LDX.W #DATA_88801C                        ; $8AAE1F |
  JSL.L sound_transfer_blocks               ; $8AAE22 |
  INC.B $80                                 ; $8AAE26 |

CODE_8AAE28:
  CLC                                       ; $8AAE28 |
  RTL                                       ; $8AAE29 |

CODE_8AAE2A:
  AND.W #$00FF                              ; $8AAE2A |
  STA.B $DA                                 ; $8AAE2D |
  SEC                                       ; $8AAE2F |
  RTL                                       ; $8AAE30 |

CODE_8AAE31:
  STZ.B $DA                                 ; $8AAE31 |
  LDA.B $90                                 ; $8AAE33 |
  CMP.W #$0002                              ; $8AAE35 |
  BEQ CODE_8AAE45                           ; $8AAE38 |
  CMP.W #$0004                              ; $8AAE3A |
  BEQ CODE_8AAE45                           ; $8AAE3D |
  LDA.W #$8000                              ; $8AAE3F |
  STA.B $DA                                 ; $8AAE42 |
  TDC                                       ; $8AAE44 |

CODE_8AAE45:
  TAY                                       ; $8AAE45 |
  LDX.W LOOSE_OP_0097B0,Y                   ; $8AAE46 |
  JSL.L CODE_FL_80BF9A                      ; $8AAE49 |
  INC.B $80                                 ; $8AAE4D |
  JSL.L CODE_FL_80C222                      ; $8AAE4F |
  CLC                                       ; $8AAE53 |
  RTL                                       ; $8AAE54 |

CODE_8AAE55:
  LDA.B $DA                                 ; $8AAE55 |
  BMI CODE_8AAE28                           ; $8AAE57 |
  LDA.W #$0000                              ; $8AAE59 |
  JSR.W CODE_FN_8AAEAD                      ; $8AAE5C |
  LDA.B $36                                 ; $8AAE5F |
  BIT.W #$1000                              ; $8AAE61 |
  BNE CODE_8AAEA7                           ; $8AAE64 |
  BIT.W #$0800                              ; $8AAE66 |
  BEQ CODE_8AAE6D                           ; $8AAE69 |
  DEC.B $DA                                 ; $8AAE6B |

CODE_8AAE6D:
  BIT.W #$0400                              ; $8AAE6D |
  BEQ CODE_8AAE74                           ; $8AAE70 |
  INC.B $DA                                 ; $8AAE72 |

CODE_8AAE74:
  LDA.B $DA                                 ; $8AAE74 |
  AND.W #$0007                              ; $8AAE76 |
  STA.B $DA                                 ; $8AAE79 |
  LDA.W #$004F                              ; $8AAE7B |
  JSR.W CODE_FN_8AAEAD                      ; $8AAE7E |
  LDA.B $36                                 ; $8AAE81 |
  BIT.W #$0300                              ; $8AAE83 |
  BEQ CODE_8AAE96                           ; $8AAE86 |
  LDA.W $1994                               ; $8AAE88 |
  BNE CODE_8AAE92                           ; $8AAE8B |
  LDA.W #$0001                              ; $8AAE8D |
  BRA CODE_8AAE93                           ; $8AAE90 |

CODE_8AAE92:
  TDC                                       ; $8AAE92 |

CODE_8AAE93:
  STA.W $1994                               ; $8AAE93 |

CODE_8AAE96:
  LDX.W #$8D8C                              ; $8AAE96 |
  LDA.W $1994                               ; $8AAE99 |
  BEQ CODE_8AAEA1                           ; $8AAE9C |
  LDX.W #$8D7A                              ; $8AAE9E |

CODE_8AAEA1:
  JSL.L CODE_FL_80BF9A                      ; $8AAEA1 |
  CLC                                       ; $8AAEA5 |
  RTL                                       ; $8AAEA6 |

CODE_8AAEA7:
  JSL.L CODE_FL_80C213                      ; $8AAEA7 |
  SEC                                       ; $8AAEAB |
  RTL                                       ; $8AAEAC |

CODE_FN_8AAEAD:
  STA.B $00                                 ; $8AAEAD |
  LDA.B $DA                                 ; $8AAEAF |
  ASL A                                     ; $8AAEB1 |
  ASL A                                     ; $8AAEB2 |
  ASL A                                     ; $8AAEB3 |
  ASL A                                     ; $8AAEB4 |
  ASL A                                     ; $8AAEB5 |
  ASL A                                     ; $8AAEB6 |
  CLC                                       ; $8AAEB7 |
  ADC.W #$50C9                              ; $8AAEB8 |
  TAY                                       ; $8AAEBB |
  JSL.L CODE_FL_809622                      ; $8AAEBC |
  LDA.B $00                                 ; $8AAEC0 |
  JSL.L CODE_FL_809658                      ; $8AAEC2 |
  JSL.L CODE_FL_809663                      ; $8AAEC6 |
  RTS                                       ; $8AAECA |

CODE_FL_8AAECB:
  LDA.W $19B8                               ; $8AAECB |
  CMP.W #$0001                              ; $8AAECE |
  BNE CODE_8AAED6                           ; $8AAED1 |
  JMP.W CODE_JP_8AB166                      ; $8AAED3 |

CODE_8AAED6:
  CMP.W #$0002                              ; $8AAED6 |
  BNE CODE_8AAEDE                           ; $8AAED9 |
  JMP.W CODE_JP_8AB2BA                      ; $8AAEDB |

CODE_8AAEDE:
  RTL                                       ; $8AAEDE |

CODE_8AAEDF:
  LDA.B $5E                                 ; $8AAEDF |
  BIT.W #$0400                              ; $8AAEE1 |
  BNE CODE_8AAF03                           ; $8AAEE4 |
  BIT.W #$0010                              ; $8AAEE6 |
  BNE CODE_8AAF03                           ; $8AAEE9 |
  BIT.W #$0200                              ; $8AAEEB |
  BNE CODE_8AAF03                           ; $8AAEEE |
  PHB                                       ; $8AAEF0 |
  PEA.W $8A00                               ; $8AAEF1 |
  PLB                                       ; $8AAEF4 |
  PLB                                       ; $8AAEF5 |
  PHX                                       ; $8AAEF6 |
  LDY.B $4E,X                               ; $8AAEF7 |
  LDA.W LOOSE_OP_0098DE,Y                   ; $8AAEF9 |
  TAY                                       ; $8AAEFC |
  JSL.L CODE_FL_8AAF61                      ; $8AAEFD |
  PLX                                       ; $8AAF01 |
  PLB                                       ; $8AAF02 |

CODE_8AAF03:
  JML.L CODE_FL_86CA2D                      ; $8AAF03 |

  LDA.B $5E                                 ; $8AAF07 |
  BIT.W #$0400                              ; $8AAF09 |
  BNE CODE_8AAF2B                           ; $8AAF0C |
  BIT.W #$0010                              ; $8AAF0E |
  BNE CODE_8AAF2B                           ; $8AAF11 |
  BIT.W #$0200                              ; $8AAF13 |
  BNE CODE_8AAF2B                           ; $8AAF16 |
  PHB                                       ; $8AAF18 |
  PEA.W $8A00                               ; $8AAF19 |
  PLB                                       ; $8AAF1C |
  PLB                                       ; $8AAF1D |
  PHX                                       ; $8AAF1E |
  LDY.B $4E,X                               ; $8AAF1F |
  LDA.W LOOSE_OP_0098DE,Y                   ; $8AAF21 |
  TAY                                       ; $8AAF24 |
  JSL.L CODE_FL_8AB06F                      ; $8AAF25 |
  PLX                                       ; $8AAF29 |
  PLB                                       ; $8AAF2A |

CODE_8AAF2B:
  JML.L CODE_FL_86CA2D                      ; $8AAF2B |

CODE_8AAF2F:
  LDA.B $1A,X                               ; $8AAF2F |
  BNE CODE_8AAF56                           ; $8AAF31 |
  PHB                                       ; $8AAF33 |
  PEA.W $8A00                               ; $8AAF34 |
  PLB                                       ; $8AAF37 |
  PLB                                       ; $8AAF38 |
  LDA.B $4F,X                               ; $8AAF39 |
  AND.W #$00FF                              ; $8AAF3B |
  ASL A                                     ; $8AAF3E |
  TAY                                       ; $8AAF3F |
  LDA.W CODE_009904,Y                       ; $8AAF40 |
  STA.B $3C,X                               ; $8AAF43 |
  LDA.B $4E,X                               ; $8AAF45 |
  AND.W #$00FF                              ; $8AAF47 |
  TAY                                       ; $8AAF4A |
  LDA.W LOOSE_OP_0098DE,Y                   ; $8AAF4B |
  TAY                                       ; $8AAF4E |
  JSL.L CODE_FL_8AB1AB                      ; $8AAF4F |
  PLB                                       ; $8AAF53 |
  INC.B $1A,X                               ; $8AAF54 |

CODE_8AAF56:
  LDA.W $1692                               ; $8AAF56 |
  CLC                                       ; $8AAF59 |
  ADC.B $3C,X                               ; $8AAF5A |
  JSL.L CODE_FL_8AB25A                      ; $8AAF5C |
  RTL                                       ; $8AAF60 |

CODE_FL_8AAF61:
  LDA.W #$00BC                              ; $8AAF61 |

CODE_FL_8AAF64:
  STA.B $08                                 ; $8AAF64 |
  PHB                                       ; $8AAF66 |
  PEA.W $8A8A                               ; $8AAF67 |
  PLB                                       ; $8AAF6A |
  PLB                                       ; $8AAF6B |
  LDA.W #$EF48                              ; $8AAF6C |
  STA.B $06                                 ; $8AAF6F |
  LDA.W #$0003                              ; $8AAF71 |
  STA.B $04                                 ; $8AAF74 |
  STY.B $00                                 ; $8AAF76 |
  LDA.W $0002,Y                             ; $8AAF78 |
  AND.W #$00FF                              ; $8AAF7B |
  STA.B $0A                                 ; $8AAF7E |
  LDA.W $0001,Y                             ; $8AAF80 |
  AND.W #$00FF                              ; $8AAF83 |
  STA.B $02                                 ; $8AAF86 |
  LDA.W $0000,Y                             ; $8AAF88 |
  AND.W #$00FF                              ; $8AAF8B |
  CMP.W #$0078                              ; $8AAF8E |
  BEQ CODE_8AAFB1                           ; $8AAF91 |
  BCC CODE_8AAFB1                           ; $8AAF93 |
  LDA.W #$0078                              ; $8AAF95 |
  JSR.W CODE_FN_8AB0EA                      ; $8AAF98 |
  LDA.B $08                                 ; $8AAF9B |
  SEC                                       ; $8AAF9D |
  SBC.W #$0078                              ; $8AAF9E |
  STA.B $08                                 ; $8AAFA1 |
  LDY.B $00                                 ; $8AAFA3 |
  LDA.W $0000,Y                             ; $8AAFA5 |
  AND.W #$00FF                              ; $8AAFA8 |
  SEC                                       ; $8AAFAB |
  SBC.W #$0078                              ; $8AAFAC |
  BRA CODE_8AAFC2                           ; $8AAFAF |

CODE_8AAFB1:
  LDA.W #$0001                              ; $8AAFB1 |
  JSR.W CODE_FN_8AB0EA                      ; $8AAFB4 |
  DEC.B $08                                 ; $8AAFB7 |
  LDY.B $00                                 ; $8AAFB9 |
  LDA.W $0000,Y                             ; $8AAFBB |
  AND.W #$00FF                              ; $8AAFBE |
  DEC A                                     ; $8AAFC1 |

CODE_8AAFC2:
  STA.B $0E                                 ; $8AAFC2 |
  LDA.B $08                                 ; $8AAFC4 |
  SEC                                       ; $8AAFC6 |
  SBC.B $0E                                 ; $8AAFC7 |
  BCC CODE_8AB008                           ; $8AAFC9 |
  STA.B $08                                 ; $8AAFCB |
  LDA.B $0E                                 ; $8AAFCD |
  JSR.W CODE_FN_8AB0EA                      ; $8AAFCF |

CODE_8AAFD2:
  LDY.B $04                                 ; $8AAFD2 |
  LDA.B ($00),Y                             ; $8AAFD4 |
  BMI CODE_8AAFEC                           ; $8AAFD6 |
  LDA.B $08                                 ; $8AAFD8 |
  SEC                                       ; $8AAFDA |
  SBC.B $02                                 ; $8AAFDB |
  BCC CODE_8AB008                           ; $8AAFDD |
  STA.B $08                                 ; $8AAFDF |
  LDA.B $02                                 ; $8AAFE1 |
  JSR.W CODE_FN_8AB0EA                      ; $8AAFE3 |

CODE_8AAFE6:
  INC.B $04                                 ; $8AAFE6 |
  INC.B $04                                 ; $8AAFE8 |
  BRA CODE_8AAFD2                           ; $8AAFEA |

CODE_8AAFEC:
  CMP.W #$FFFF                              ; $8AAFEC |
  BEQ CODE_8AB004                           ; $8AAFEF |
  BIT.W #$4000                              ; $8AAFF1 |
  BNE CODE_8AAFFD                           ; $8AAFF4 |
  AND.W #$00FF                              ; $8AAFF6 |
  STA.B $02                                 ; $8AAFF9 |
  BRA CODE_8AAFE6                           ; $8AAFFB |

CODE_8AAFFD:
  AND.W #$00FF                              ; $8AAFFD |
  STA.B $0A                                 ; $8AB000 |
  BRA CODE_8AAFE6                           ; $8AB002 |

CODE_8AB004:
  DEC.B $04                                 ; $8AB004 |
  DEC.B $04                                 ; $8AB006 |

CODE_8AB008:
  LDA.B $08                                 ; $8AB008 |
  BEQ CODE_8AB022                           ; $8AB00A |
  CMP.W #$0078                              ; $8AB00C |
  BCC CODE_8AB01F                           ; $8AB00F |
  LDA.W #$0078                              ; $8AB011 |
  JSR.W CODE_FN_8AB0EA                      ; $8AB014 |
  LDA.B $08                                 ; $8AB017 |
  SEC                                       ; $8AB019 |
  SBC.W #$0078                              ; $8AB01A |
  STA.B $08                                 ; $8AB01D |

CODE_8AB01F:
  JSR.W CODE_FN_8AB0EA                      ; $8AB01F |

CODE_8AB022:
  LDX.B $06                                 ; $8AB022 |
  SEP #$20                                  ; $8AB024 |
  LDA.B #$01                                ; $8AB026 |
  STA.L $7E0000,X                           ; $8AB028 |
  STA.L $7E0400,X                           ; $8AB02C |
  REP #$20                                  ; $8AB030 |
  TDC                                       ; $8AB032 |
  STA.L $7E0001,X                           ; $8AB033 |
  STA.L $7E0401,X                           ; $8AB037 |
  STA.L $7E0003,X                           ; $8AB03B |
  STA.L $7E0403,X                           ; $8AB03F |
  STA.L $7E0005,X                           ; $8AB043 |
  STA.L $7E0405,X                           ; $8AB047 |
  STA.L $7E0006,X                           ; $8AB04B |
  STA.L $7E0406,X                           ; $8AB04F |
  STA.L $7E0008,X                           ; $8AB053 |
  STA.L $7E0408,X                           ; $8AB057 |
  PLB                                       ; $8AB05B |
  TDC                                       ; $8AB05C |
  STA.L $7EEF44                             ; $8AB05D |
  LDY.W #$0400                              ; $8AB061 |
  JSL.L CODE_FL_809725                      ; $8AB064 |
  LDA.W #$0001                              ; $8AB068 |
  STA.W $19B8                               ; $8AB06B |
  RTL                                       ; $8AB06E |

CODE_FL_8AB06F:
  LDA.W #$F748                              ; $8AB06F |
  STA.B $06                                 ; $8AB072 |
  LDA.W #$0003                              ; $8AB074 |
  STA.B $04                                 ; $8AB077 |
  STY.B $00                                 ; $8AB079 |
  LDA.W $0002,Y                             ; $8AB07B |
  AND.W #$00FF                              ; $8AB07E |
  STA.B $0A                                 ; $8AB081 |
  LDA.W $0001,Y                             ; $8AB083 |
  AND.W #$00FF                              ; $8AB086 |
  STA.B $02                                 ; $8AB089 |
  LDA.W $0000,Y                             ; $8AB08B |
  AND.W #$00FF                              ; $8AB08E |
  JSR.W CODE_FN_8AB0EA                      ; $8AB091 |

CODE_8AB094:
  LDY.B $04                                 ; $8AB094 |
  LDA.B ($00),Y                             ; $8AB096 |
  BMI CODE_8AB0A5                           ; $8AB098 |
  LDA.B $02                                 ; $8AB09A |
  JSR.W CODE_FN_8AB0EA                      ; $8AB09C |

CODE_8AB09F:
  INC.B $04                                 ; $8AB09F |
  INC.B $04                                 ; $8AB0A1 |
  BRA CODE_8AB094                           ; $8AB0A3 |

CODE_8AB0A5:
  CMP.W #$FFFF                              ; $8AB0A5 |
  BEQ CODE_8AB0BD                           ; $8AB0A8 |
  BIT.W #$4000                              ; $8AB0AA |
  BNE CODE_8AB0B6                           ; $8AB0AD |
  AND.W #$00FF                              ; $8AB0AF |
  STA.B $02                                 ; $8AB0B2 |
  BRA CODE_8AB09F                           ; $8AB0B4 |

CODE_8AB0B6:
  AND.W #$00FF                              ; $8AB0B6 |
  STA.B $0A                                 ; $8AB0B9 |
  BRA CODE_8AB09F                           ; $8AB0BB |

CODE_8AB0BD:
  LDX.B $06                                 ; $8AB0BD |
  STA.L $7E0000,X                           ; $8AB0BF |
  STA.L $7E0400,X                           ; $8AB0C3 |
  STA.L $7E0002,X                           ; $8AB0C7 |
  STA.L $7E0402,X                           ; $8AB0CB |
  STA.L $7E0004,X                           ; $8AB0CF |
  STA.L $7E0404,X                           ; $8AB0D3 |
  TDC                                       ; $8AB0D7 |
  STA.L $7EEF46                             ; $8AB0D8 |
  LDY.W #$0010                              ; $8AB0DC |
  JSL.L CODE_FL_809725                      ; $8AB0DF |
  LDA.W #$0001                              ; $8AB0E3 |
  STA.W $19B8                               ; $8AB0E6 |
  RTL                                       ; $8AB0E9 |

CODE_FN_8AB0EA:
  LDX.B $06                                 ; $8AB0EA |
  STA.L $7E0000,X                           ; $8AB0EC |
  STA.L $7E0400,X                           ; $8AB0F0 |
  SEP #$20                                  ; $8AB0F4 |
  LDA.B $0A                                 ; $8AB0F6 |
  STA.L $7E0001,X                           ; $8AB0F8 |
  STA.L $7E0401,X                           ; $8AB0FC |
  STA.L $7E0002,X                           ; $8AB100 |
  STA.L $7E0402,X                           ; $8AB104 |
  REP #$20                                  ; $8AB108 |
  LDY.B $04                                 ; $8AB10A |
  LDA.B ($00),Y                             ; $8AB10C |
  STA.L $7E0003,X                           ; $8AB10E |
  STA.L $7E0403,X                           ; $8AB112 |
  TXA                                       ; $8AB116 |
  CLC                                       ; $8AB117 |
  ADC.W #$0005                              ; $8AB118 |
  STA.B $06                                 ; $8AB11B |
  RTS                                       ; $8AB11D |

CODE_FL_8AB11E:
  STA.B $00                                 ; $8AB11E |
  BEQ CODE_8AB165                           ; $8AB120 |
  BMI CODE_8AB165                           ; $8AB122 |
  SEC                                       ; $8AB124 |
  SBC.W #$0078                              ; $8AB125 |
  BEQ CODE_8AB135                           ; $8AB128 |
  BMI CODE_8AB135                           ; $8AB12A |
  STA.B $02                                 ; $8AB12C |
  LDA.W #$0078                              ; $8AB12E |
  STA.B $00                                 ; $8AB131 |
  BRA CODE_8AB13C                           ; $8AB133 |

CODE_8AB135:
  DEC.B $00                                 ; $8AB135 |
  LDA.W #$0001                              ; $8AB137 |
  STA.B $02                                 ; $8AB13A |

CODE_8AB13C:
  PHX                                       ; $8AB13C |
  LDX.W #$EF48                              ; $8AB13D |
  LDA.L $7EEF44                             ; $8AB140 |
  BNE CODE_8AB149                           ; $8AB144 |
  LDX.W #$F348                              ; $8AB146 |

CODE_8AB149:
  SEP #$20                                  ; $8AB149 |
  LDA.B $00                                 ; $8AB14B |
  STA.L $7E0000,X                           ; $8AB14D |
  LDA.B $02                                 ; $8AB151 |
  STA.L $7E0005,X                           ; $8AB153 |
  REP #$20                                  ; $8AB157 |
  LDA.L $7EEF44                             ; $8AB159 |
  EOR.W #$0001                              ; $8AB15D |
  STA.L $7EEF44                             ; $8AB160 |
  PLX                                       ; $8AB164 |

CODE_8AB165:
  RTL                                       ; $8AB165 |

CODE_JP_8AB166:
  PHX                                       ; $8AB166 |
  PHB                                       ; $8AB167 |
  PEA.W $7E00                               ; $8AB168 |
  PLB                                       ; $8AB16B |
  PLB                                       ; $8AB16C |
  LDX.W #$EF48                              ; $8AB16D |

CODE_8AB170:
  LDA.W $0000,X                             ; $8AB170 |
  BEQ CODE_8AB1A8                           ; $8AB173 |
  LDA.W $0003,X                             ; $8AB175 |
  TAY                                       ; $8AB178 |
  AND.W #$001F                              ; $8AB179 |
  BEQ CODE_8AB17F                           ; $8AB17C |
  DEC A                                     ; $8AB17E |

CODE_8AB17F:
  STA.B $00                                 ; $8AB17F |
  TYA                                       ; $8AB181 |
  AND.W #$03E0                              ; $8AB182 |
  BEQ CODE_8AB18B                           ; $8AB185 |
  SEC                                       ; $8AB187 |
  SBC.W #$0020                              ; $8AB188 |

CODE_8AB18B:
  ORA.B $00                                 ; $8AB18B |
  STA.B $00                                 ; $8AB18D |
  TYA                                       ; $8AB18F |
  AND.W #$7C00                              ; $8AB190 |
  BEQ CODE_8AB199                           ; $8AB193 |
  SEC                                       ; $8AB195 |
  SBC.W #$0400                              ; $8AB196 |

CODE_8AB199:
  ORA.B $00                                 ; $8AB199 |
  STA.W $0003,X                             ; $8AB19B |
  STA.W $0403,X                             ; $8AB19E |
  INX                                       ; $8AB1A1 |
  INX                                       ; $8AB1A2 |
  INX                                       ; $8AB1A3 |
  INX                                       ; $8AB1A4 |
  INX                                       ; $8AB1A5 |
  BRA CODE_8AB170                           ; $8AB1A6 |

CODE_8AB1A8:
  PLB                                       ; $8AB1A8 |
  PLX                                       ; $8AB1A9 |
  RTL                                       ; $8AB1AA |

CODE_FL_8AB1AB:
  LDA.W #$0400                              ; $8AB1AB |
  STA.B $08                                 ; $8AB1AE |
  STY.B $00                                 ; $8AB1B0 |
  PHB                                       ; $8AB1B2 |
  PEA.W $8A8A                               ; $8AB1B3 |
  PLB                                       ; $8AB1B6 |
  PLB                                       ; $8AB1B7 |
  LDA.W #$0003                              ; $8AB1B8 |
  STA.B $04                                 ; $8AB1BB |
  STZ.B $06                                 ; $8AB1BD |
  LDA.W $0001,Y                             ; $8AB1BF |
  AND.W #$00FF                              ; $8AB1C2 |
  STA.B $02                                 ; $8AB1C5 |
  LDA.W $0002,Y                             ; $8AB1C7 |
  AND.W #$00FF                              ; $8AB1CA |
  STA.B $0A                                 ; $8AB1CD |
  LDA.W $0003,Y                             ; $8AB1CF |
  STA.B $0C                                 ; $8AB1D2 |
  LDA.W $0000,Y                             ; $8AB1D4 |
  AND.W #$00FF                              ; $8AB1D7 |
  JSR.W CODE_FN_8AB224                      ; $8AB1DA |

CODE_8AB1DD:
  LDA.B $08                                 ; $8AB1DD |
  BEQ CODE_8AB20E                           ; $8AB1DF |
  LDY.B $04                                 ; $8AB1E1 |
  LDA.B ($00),Y                             ; $8AB1E3 |
  BPL CODE_8AB1F3                           ; $8AB1E5 |
  CMP.W #$FFFF                              ; $8AB1E7 |
  BEQ CODE_8AB200                           ; $8AB1EA |
  AND.W #$00FF                              ; $8AB1EC |
  STA.B $02                                 ; $8AB1EF |
  BRA CODE_8AB1FA                           ; $8AB1F1 |

CODE_8AB1F3:
  STA.B $0C                                 ; $8AB1F3 |
  LDA.B $02                                 ; $8AB1F5 |
  JSR.W CODE_FN_8AB224                      ; $8AB1F7 |

CODE_8AB1FA:
  INC.B $04                                 ; $8AB1FA |
  INC.B $04                                 ; $8AB1FC |
  BRA CODE_8AB1DD                           ; $8AB1FE |

CODE_8AB200:
  LDA.B $08                                 ; $8AB200 |
  JSR.W CODE_FN_8AB224                      ; $8AB202 |
  TDC                                       ; $8AB205 |
  STA.L $7EFFC6                             ; $8AB206 |
  STA.L $7EFFC8                             ; $8AB20A |

CODE_8AB20E:
  PLB                                       ; $8AB20E |
  LDY.W #$0200                              ; $8AB20F |
  JSL.L CODE_FL_809725                      ; $8AB212 |
  LDA.W #$0002                              ; $8AB216 |
  STA.W $19B8                               ; $8AB219 |
  TDC                                       ; $8AB21C |
  STA.L $7EEF44                             ; $8AB21D |
  JMP.W CODE_FL_8AB25A                      ; $8AB221 |

CODE_FN_8AB224:
  STA.B $0E                                 ; $8AB224 |
  LDA.B $08                                 ; $8AB226 |
  SEC                                       ; $8AB228 |
  SBC.B $0E                                 ; $8AB229 |
  BPL CODE_8AB233                           ; $8AB22B |
  CLC                                       ; $8AB22D |
  ADC.B $0E                                 ; $8AB22E |
  STA.B $0E                                 ; $8AB230 |
  TDC                                       ; $8AB232 |

CODE_8AB233:
  STA.B $08                                 ; $8AB233 |
  LDY.B $06                                 ; $8AB235 |
  PHB                                       ; $8AB237 |
  PEA.W $7E00                               ; $8AB238 |
  PLB                                       ; $8AB23B |
  PLB                                       ; $8AB23C |

CODE_8AB23D:
  SEP #$20                                  ; $8AB23D |
  LDA.B $0A                                 ; $8AB23F |
  STA.W PTR16_00EFC6,Y                      ; $8AB241 |
  STA.W PTR16_00EFC7,Y                      ; $8AB244 |
  REP #$20                                  ; $8AB247 |
  LDA.B $0C                                 ; $8AB249 |
  STA.W PTR16_00EFC8,Y                      ; $8AB24B |
  INY                                       ; $8AB24E |
  INY                                       ; $8AB24F |
  INY                                       ; $8AB250 |
  INY                                       ; $8AB251 |
  DEC.B $0E                                 ; $8AB252 |
  BNE CODE_8AB23D                           ; $8AB254 |
  PLB                                       ; $8AB256 |
  STY.B $06                                 ; $8AB257 |
  RTS                                       ; $8AB259 |

CODE_FL_8AB25A:
  PHX                                       ; $8AB25A |
  BPL CODE_8AB25E                           ; $8AB25B |
  TDC                                       ; $8AB25D |

CODE_8AB25E:
  CMP.W #$0300                              ; $8AB25E |
  BMI CODE_8AB266                           ; $8AB261 |
  LDA.W #$0300                              ; $8AB263 |

CODE_8AB266:
  ASL A                                     ; $8AB266 |
  ASL A                                     ; $8AB267 |
  CLC                                       ; $8AB268 |
  ADC.W #$EFC6                              ; $8AB269 |
  STA.B $00                                 ; $8AB26C |
  CLC                                       ; $8AB26E |
  ADC.W #$01C0                              ; $8AB26F |
  STA.B $02                                 ; $8AB272 |
  LDX.W #$EF46                              ; $8AB274 |
  LDA.L $7EEF44                             ; $8AB277 |
  BNE CODE_8AB280                           ; $8AB27B |
  LDX.W #$EF86                              ; $8AB27D |

CODE_8AB280:
  LDA.W #$00F0                              ; $8AB280 |
  STA.L $7E0000,X                           ; $8AB283 |
  LDA.B $00                                 ; $8AB287 |
  STA.L $7E0001,X                           ; $8AB289 |
  LDA.W #$00CC                              ; $8AB28D |
  STA.L $7E0003,X                           ; $8AB290 |
  LDA.B $02                                 ; $8AB294 |
  STA.L $7E0004,X                           ; $8AB296 |
  LDA.W #$0001                              ; $8AB29A |
  STA.L $7E0006,X                           ; $8AB29D |
  LDA.W #$FFC6                              ; $8AB2A1 |
  STA.L $7E0007,X                           ; $8AB2A4 |
  TDC                                       ; $8AB2A8 |
  STA.L $7E0009,X                           ; $8AB2A9 |
  LDA.L $7EEF44                             ; $8AB2AD |
  EOR.W #$0001                              ; $8AB2B1 |
  STA.L $7EEF44                             ; $8AB2B4 |
  PLX                                       ; $8AB2B8 |
  RTL                                       ; $8AB2B9 |

CODE_JP_8AB2BA:
  PHX                                       ; $8AB2BA |
  PHB                                       ; $8AB2BB |
  PEA.W $7E00                               ; $8AB2BC |
  PLB                                       ; $8AB2BF |
  PLB                                       ; $8AB2C0 |
  LDX.W #$EFC6                              ; $8AB2C1 |
  LDY.W #$0400                              ; $8AB2C4 |

CODE_8AB2C7:
  LDA.W $0002,X                             ; $8AB2C7 |
  AND.W #$001F                              ; $8AB2CA |
  BEQ CODE_8AB2D0                           ; $8AB2CD |
  DEC A                                     ; $8AB2CF |

CODE_8AB2D0:
  STA.B $00                                 ; $8AB2D0 |
  LDA.W $0002,X                             ; $8AB2D2 |
  AND.W #$03E0                              ; $8AB2D5 |
  BEQ CODE_8AB2DE                           ; $8AB2D8 |
  SEC                                       ; $8AB2DA |
  SBC.W #$0020                              ; $8AB2DB |

CODE_8AB2DE:
  ORA.B $00                                 ; $8AB2DE |
  STA.B $00                                 ; $8AB2E0 |
  LDA.W $0002,X                             ; $8AB2E2 |
  AND.W #$7C00                              ; $8AB2E5 |
  BEQ CODE_8AB2EE                           ; $8AB2E8 |
  SEC                                       ; $8AB2EA |
  SBC.W #$0400                              ; $8AB2EB |

CODE_8AB2EE:
  ORA.B $00                                 ; $8AB2EE |
  STA.W $0002,X                             ; $8AB2F0 |
  INX                                       ; $8AB2F3 |
  INX                                       ; $8AB2F4 |
  INX                                       ; $8AB2F5 |
  INX                                       ; $8AB2F6 |
  DEY                                       ; $8AB2F7 |
  BNE CODE_8AB2C7                           ; $8AB2F8 |
  PLB                                       ; $8AB2FA |
  PLX                                       ; $8AB2FB |
  RTL                                       ; $8AB2FC |

CODE_FL_8AB2FD:
  PHX                                       ; $8AB2FD |
  LDX.W #$0000                              ; $8AB2FE |
  STY.W $1CA2                               ; $8AB301 |
  TAY                                       ; $8AB304 |
  CLC                                       ; $8AB305 |
  ADC.W #$0003                              ; $8AB306 |
  STA.B $00                                 ; $8AB309 |
  LDA.W $0000,Y                             ; $8AB30B |
  AND.W #$00FF                              ; $8AB30E |
  STA.L $7EEF48,X                           ; $8AB311 |
  STA.L $7EF348,X                           ; $8AB315 |
  STA.W $1CAA                               ; $8AB319 |
  STA.W $1CAC                               ; $8AB31C |
  TDC                                       ; $8AB31F |
  STA.L $7EEF49,X                           ; $8AB320 |
  STA.L $7EF349,X                           ; $8AB324 |
  LDA.W $0003,Y                             ; $8AB328 |
  STA.L $7EEF4B,X                           ; $8AB32B |
  STA.L $7EF34B,X                           ; $8AB32F |
  LDA.W $0001,Y                             ; $8AB333 |
  AND.W #$00FF                              ; $8AB336 |
  STA.B $02                                 ; $8AB339 |
  LDY.B $00                                 ; $8AB33B |
  TXA                                       ; $8AB33D |
  CLC                                       ; $8AB33E |
  ADC.W #$0005                              ; $8AB33F |
  TAX                                       ; $8AB342 |

CODE_8AB343:
  LDA.B $02                                 ; $8AB343 |
  STA.L $7EEF48,X                           ; $8AB345 |
  STA.L $7EF348,X                           ; $8AB349 |
  TDC                                       ; $8AB34D |
  STA.L $7EEF49,X                           ; $8AB34E |
  STA.L $7EF349,X                           ; $8AB352 |
  LDA.W $0000,Y                             ; $8AB356 |
  BMI CODE_8AB36D                           ; $8AB359 |
  STA.L $7EEF4B,X                           ; $8AB35B |
  STA.L $7EF34B,X                           ; $8AB35F |
  TXA                                       ; $8AB363 |
  CLC                                       ; $8AB364 |
  ADC.W #$0005                              ; $8AB365 |
  TAX                                       ; $8AB368 |

CODE_8AB369:
  INY                                       ; $8AB369 |
  INY                                       ; $8AB36A |
  BRA CODE_8AB343                           ; $8AB36B |

CODE_8AB36D:
  CMP.W #$FFFF                              ; $8AB36D |
  BEQ CODE_8AB379                           ; $8AB370 |
  AND.W #$00FF                              ; $8AB372 |
  STA.B $02                                 ; $8AB375 |
  BRA CODE_8AB369                           ; $8AB377 |

CODE_8AB379:
  STX.W $1CA4                               ; $8AB379 |
  LDY.W #$0000                              ; $8AB37C |

CODE_8AB37F:
  LDA.W CODE_0097B6,Y                       ; $8AB37F |
  AND.W #$00FF                              ; $8AB382 |
  BEQ CODE_8AB3A1                           ; $8AB385 |
  STA.L $7EEF48,X                           ; $8AB387 |
  STA.L $7EF348,X                           ; $8AB38B |
  TDC                                       ; $8AB38F |
  STA.L $7EEF49,X                           ; $8AB390 |
  STA.L $7EF349,X                           ; $8AB394 |
  TXA                                       ; $8AB398 |
  CLC                                       ; $8AB399 |
  ADC.W #$0005                              ; $8AB39A |
  TAX                                       ; $8AB39D |
  INY                                       ; $8AB39E |
  BRA CODE_8AB37F                           ; $8AB39F |

CODE_8AB3A1:
  LDA.W #$0001                              ; $8AB3A1 |
  STA.L $7EEF48,X                           ; $8AB3A4 |
  STA.L $7EF348,X                           ; $8AB3A8 |
  TDC                                       ; $8AB3AC |
  STA.L $7EEF49,X                           ; $8AB3AD |
  STA.L $7EF349,X                           ; $8AB3B1 |
  STA.L $7EEF4B,X                           ; $8AB3B5 |
  STA.L $7EF34B,X                           ; $8AB3B9 |
  STA.L $7EEF4D,X                           ; $8AB3BD |
  STA.L $7EF34D,X                           ; $8AB3C1 |
  TDC                                       ; $8AB3C5 |
  STA.L $7EEF44                             ; $8AB3C6 |
  PLX                                       ; $8AB3CA |
  RTL                                       ; $8AB3CB |

CODE_FL_8AB3CC:
  PHX                                       ; $8AB3CC |
  STY.B $00                                 ; $8AB3CD |
  LDX.W $1CA4                               ; $8AB3CF |
  SEP #$20                                  ; $8AB3D2 |
  LDA.W $1CAC                               ; $8AB3D4 |
  STA.L $7EEF48                             ; $8AB3D7 |
  LDA.W $1CA8                               ; $8AB3DB |
  STA.L $7EEF43,X                           ; $8AB3DE |
  REP #$20                                  ; $8AB3E2 |
  LDY.W $1CA2                               ; $8AB3E4 |
  LDA.W #$0017                              ; $8AB3E7 |
  STA.B $02                                 ; $8AB3EA |

CODE_8AB3EC:
  LDA.W $0000,Y                             ; $8AB3EC |
  CMP.W #$FFFF                              ; $8AB3EF |
  BNE CODE_8AB3F8                           ; $8AB3F2 |
  LDY.B $00                                 ; $8AB3F4 |
  BRA CODE_8AB3EC                           ; $8AB3F6 |

CODE_8AB3F8:
  STA.L $7EEF4B,X                           ; $8AB3F8 |
  INY                                       ; $8AB3FC |
  INY                                       ; $8AB3FD |
  TXA                                       ; $8AB3FE |
  CLC                                       ; $8AB3FF |
  ADC.W #$0005                              ; $8AB400 |
  TAX                                       ; $8AB403 |
  DEC.B $02                                 ; $8AB404 |
  BNE CODE_8AB3EC                           ; $8AB406 |
  LDY.W $1CA2                               ; $8AB408 |
  INY                                       ; $8AB40B |
  INY                                       ; $8AB40C |
  LDA.W $0000,Y                             ; $8AB40D |
  CMP.W #$FFFF                              ; $8AB410 |
  BNE CODE_8AB417                           ; $8AB413 |
  LDY.B $00                                 ; $8AB415 |

CODE_8AB417:
  STY.W $1CA2                               ; $8AB417 |
  PLX                                       ; $8AB41A |
  RTL                                       ; $8AB41B |

CODE_FL_8AB41C:
  LDA.W $0009,Y                             ; $8AB41C |
  STA.B $00                                 ; $8AB41F |
  LDA.W $000D,Y                             ; $8AB421 |
  STA.B $02                                 ; $8AB424 |

CODE_FL_8AB426:
  LDA.B $09,X                               ; $8AB426 |
  STA.B $04                                 ; $8AB428 |
  LDA.B $0D,X                               ; $8AB42A |
  STA.B $06                                 ; $8AB42C |

CODE_FL_8AB42E:
  PHX                                       ; $8AB42E |
  LDX.W #$0000                              ; $8AB42F |
  LDA.B $00                                 ; $8AB432 |
  SEC                                       ; $8AB434 |
  SBC.B $04                                 ; $8AB435 |
  BPL CODE_8AB43E                           ; $8AB437 |
  EOR.W #$FFFF                              ; $8AB439 |
  INC A                                     ; $8AB43C |
  INX                                       ; $8AB43D |

CODE_8AB43E:
  STA.B $04                                 ; $8AB43E |
  LDA.B $02                                 ; $8AB440 |
  SEC                                       ; $8AB442 |
  SBC.B $06                                 ; $8AB443 |
  BPL CODE_8AB44D                           ; $8AB445 |
  EOR.W #$FFFF                              ; $8AB447 |
  INC A                                     ; $8AB44A |
  INX                                       ; $8AB44B |
  INX                                       ; $8AB44C |

CODE_8AB44D:
  STA.B $02                                 ; $8AB44D |
  STX.B $06                                 ; $8AB44F |
  CMP.B $04                                 ; $8AB451 |
  BCS CODE_8AB45C                           ; $8AB453 |
  LDA.B $04                                 ; $8AB455 |
  BRA CODE_8AB468                           ; $8AB457 |

CODE_8AB459:
  LSR A                                     ; $8AB459 |
  LSR.B $04                                 ; $8AB45A |

CODE_8AB45C:
  CMP.W #$0008                              ; $8AB45C |
  BCS CODE_8AB459                           ; $8AB45F |
  STA.B $02                                 ; $8AB461 |
  BRA CODE_8AB46F                           ; $8AB463 |

CODE_8AB465:
  LSR A                                     ; $8AB465 |
  LSR.B $02                                 ; $8AB466 |

CODE_8AB468:
  CMP.W #$0008                              ; $8AB468 |
  BCS CODE_8AB465                           ; $8AB46B |
  STA.B $04                                 ; $8AB46D |

CODE_8AB46F:
  SEP #$20                                  ; $8AB46F |
  LDA.B $02                                 ; $8AB471 |
  ASL A                                     ; $8AB473 |
  ASL A                                     ; $8AB474 |
  ASL A                                     ; $8AB475 |
  ORA.B $04                                 ; $8AB476 |
  TAX                                       ; $8AB478 |
  LDA.L $8A9FF6,X                           ; $8AB479 |
  STA.B $04                                 ; $8AB47D |
  LDX.B $06                                 ; $8AB47F |
  TXA                                       ; $8AB481 |
  INC A                                     ; $8AB482 |
  LSR A                                     ; $8AB483 |
  LSR A                                     ; $8AB484 |
  LDA.B $04                                 ; $8AB485 |
  BCC CODE_8AB48D                           ; $8AB487 |
  ADC.B #$F6                                ; $8AB489 |
  EOR.B #$FF                                ; $8AB48B |

CODE_8AB48D:
  ADC.L $8A9FF2,X                           ; $8AB48D |
  AND.B #$1F                                ; $8AB491 |
  REP #$20                                  ; $8AB493 |
  STA.B $00                                 ; $8AB495 |
  PLX                                       ; $8AB497 |
  RTL                                       ; $8AB498 |

CODE_FL_8AB499:
  JSL.L CODE_FL_8AB4B3                      ; $8AB499 |

CODE_JL_8AB49D:
  LDA.B $00                                 ; $8AB49D |
  STA.B $26,X                               ; $8AB49F |
  LDA.B $02                                 ; $8AB4A1 |
  STA.B $28,X                               ; $8AB4A3 |
  RTL                                       ; $8AB4A5 |

CODE_FL_8AB4A6:
  JSL.L CODE_FL_8AB4B3                      ; $8AB4A6 |

CODE_JL_8AB4AA:
  LDA.B $00                                 ; $8AB4AA |
  STA.B $26,X                               ; $8AB4AC |
  LDA.B $02                                 ; $8AB4AE |
  STA.B $28,X                               ; $8AB4B0 |
  RTL                                       ; $8AB4B2 |

CODE_FL_8AB4B3:
  PHX                                       ; $8AB4B3 |
  AND.W #$001F                              ; $8AB4B4 |
  TAX                                       ; $8AB4B7 |
  SEP #$20                                  ; $8AB4B8 |
  TYA                                       ; $8AB4BA |
  STA.W $4202                               ; $8AB4BB |
  LDA.L $8AA036,X                           ; $8AB4BE |
  STA.W $4203                               ; $8AB4C2 |
  REP #$20                                  ; $8AB4C5 |
  NOP                                       ; $8AB4C7 |
  NOP                                       ; $8AB4C8 |
  CPX.W #$0010                              ; $8AB4C9 |
  LDA.W $4216                               ; $8AB4CC |
  BCC CODE_8AB4D5                           ; $8AB4CF |
  EOR.W #$FFFF                              ; $8AB4D1 |
  INC A                                     ; $8AB4D4 |

CODE_8AB4D5:
  STA.B $02                                 ; $8AB4D5 |
  TXA                                       ; $8AB4D7 |
  CLC                                       ; $8AB4D8 |
  ADC.W #$0008                              ; $8AB4D9 |
  AND.W #$001F                              ; $8AB4DC |
  TAX                                       ; $8AB4DF |

CODE_8AB4E0:
  LDA.L $8AA036,X                           ; $8AB4E0 |
  STA.W $4203                               ; $8AB4E4 |
  NOP                                       ; $8AB4E7 |
  REP #$20                                  ; $8AB4E8 |
  NOP                                       ; $8AB4EA |
  NOP                                       ; $8AB4EB |
  CPX.W #$0010                              ; $8AB4EC |
  LDA.W $4216                               ; $8AB4EF |
  BCC CODE_8AB4F8                           ; $8AB4F2 |
  EOR.W #$FFFF                              ; $8AB4F4 |
  INC A                                     ; $8AB4F7 |

CODE_8AB4F8:
  STA.B $00                                 ; $8AB4F8 |
  PLX                                       ; $8AB4FA |
  RTL                                       ; $8AB4FB |

CODE_FL_8AB4FC:
  PHX                                       ; $8AB4FC |
  AND.W #$001F                              ; $8AB4FD |
  TAX                                       ; $8AB500 |
  SEP #$20                                  ; $8AB501 |
  TYA                                       ; $8AB503 |
  STA.W $4202                               ; $8AB504 |
  BRA CODE_8AB4E0                           ; $8AB507 |

CODE_FL_8AB509:
  LDA.W $0009,Y                             ; $8AB509 |
  CLC                                       ; $8AB50C |
  ADC.B $01                                 ; $8AB50D |
  STA.B $09,X                               ; $8AB50F |
  LDA.W $000D,Y                             ; $8AB511 |
  CLC                                       ; $8AB514 |
  ADC.B $05                                 ; $8AB515 |
  STA.B $0D,X                               ; $8AB517 |
  RTL                                       ; $8AB519 |

CODE_FL_8AB51A:
  PHX                                       ; $8AB51A |
  ASL A                                     ; $8AB51B |
  TAX                                       ; $8AB51C |
  SEP #$20                                  ; $8AB51D |
  TYA                                       ; $8AB51F |
  STA.W $4202                               ; $8AB520 |
  LDA.L DATA8_978000,X                      ; $8AB523 |
  STA.W $4203                               ; $8AB527 |
  LDA.L DATA8_978101,X                      ; $8AB52A |
  STA.B $02                                 ; $8AB52E |
  STZ.B $03                                 ; $8AB530 |
  LDY.W $4216                               ; $8AB532 |
  LDA.L DATA8_978100,X                      ; $8AB535 |
  STA.W $4203                               ; $8AB539 |
  REP #$20                                  ; $8AB53C |
  LDA.L DATA8_978001,X                      ; $8AB53E |
  AND.W #$00FF                              ; $8AB542 |
  STA.B $06                                 ; $8AB545 |
  BEQ CODE_8AB54F                           ; $8AB547 |
  TYA                                       ; $8AB549 |
  EOR.W #$FFFF                              ; $8AB54A |
  INC A                                     ; $8AB54D |
  TAY                                       ; $8AB54E |

CODE_8AB54F:
  STY.B $04                                 ; $8AB54F |
  LDY.W $4216                               ; $8AB551 |
  LDA.B $02                                 ; $8AB554 |
  BEQ CODE_8AB55E                           ; $8AB556 |
  TYA                                       ; $8AB558 |
  EOR.W #$FFFF                              ; $8AB559 |
  INC A                                     ; $8AB55C |
  TAY                                       ; $8AB55D |

CODE_8AB55E:
  STY.B $00                                 ; $8AB55E |
  PLX                                       ; $8AB560 |
  RTL                                       ; $8AB561 |

CODE_FL_8AB562:
  ASL A                                     ; $8AB562 |
  ASL A                                     ; $8AB563 |
  ASL A                                     ; $8AB564 |
  ASL A                                     ; $8AB565 |
  JSL.L CODE_FL_8AB51A                      ; $8AB566 |
  LDA.B $02                                 ; $8AB56A |
  CMP.W #$8000                              ; $8AB56C |
  ROR.B $02                                 ; $8AB56F |
  ROR.B $00                                 ; $8AB571 |
  LDA.B $06                                 ; $8AB573 |
  CMP.W #$8000                              ; $8AB575 |
  ROR.B $06                                 ; $8AB578 |
  ROR.B $04                                 ; $8AB57A |
  JML.L CODE_JL_8AB49D                      ; $8AB57C |

  ASL A                                     ; $8AB580 |
  ASL A                                     ; $8AB581 |
  ASL A                                     ; $8AB582 |
  ASL A                                     ; $8AB583 |
  JSL.L CODE_FL_8AB51A                      ; $8AB584 |
  LDA.B $02                                 ; $8AB588 |
  CMP.W #$8000                              ; $8AB58A |
  ROR.B $02                                 ; $8AB58D |
  ROR.B $00                                 ; $8AB58F |
  LDA.B $06                                 ; $8AB591 |
  CMP.W #$8000                              ; $8AB593 |
  ROR.B $06                                 ; $8AB596 |
  ROR.B $04                                 ; $8AB598 |
  JML.L CODE_JL_8AB4AA                      ; $8AB59A |

  LDA.W $002D,Y                             ; $8AB59E |
  STA.B $00                                 ; $8AB5A1 |
  LDA.W $0035,Y                             ; $8AB5A3 |
  STA.B $02                                 ; $8AB5A6 |
  LDA.B $2D,X                               ; $8AB5A8 |
  STA.B $04                                 ; $8AB5AA |
  LDA.B $35,X                               ; $8AB5AC |
  STA.B $06                                 ; $8AB5AE |
  JML.L CODE_FL_8AB42E                      ; $8AB5B0 |

  LDA.W $0031,Y                             ; $8AB5B4 |
  STA.B $00                                 ; $8AB5B7 |
  LDA.W $0035,Y                             ; $8AB5B9 |
  STA.B $02                                 ; $8AB5BC |
  LDA.B $31,X                               ; $8AB5BE |
  STA.B $04                                 ; $8AB5C0 |
  LDA.B $35,X                               ; $8AB5C2 |
  STA.B $06                                 ; $8AB5C4 |
  JML.L CODE_FL_8AB42E                      ; $8AB5C6 |

  JSL.L CODE_FL_8AB4B3                      ; $8AB5CA |
  LDA.B $01                                 ; $8AB5CE |
  STA.B $26,X                               ; $8AB5D0 |
  ASL.B $04                                 ; $8AB5D2 |
  ROL.B $06                                 ; $8AB5D4 |
  ASL.B $04                                 ; $8AB5D6 |
  ROL.B $06                                 ; $8AB5D8 |
  LDA.B $18                                 ; $8AB5DA |
  LDY.B $06                                 ; $8AB5DC |
  JSL.L CODE_FL_8AB4B3                      ; $8AB5DE |
  LDA.B $01                                 ; $8AB5E2 |
  STA.B $28,X                               ; $8AB5E4 |
  LDA.B $05                                 ; $8AB5E6 |
  STA.B $2A,X                               ; $8AB5E8 |
  RTL                                       ; $8AB5EA |

CODE_FL_8AB5EB:
  PHX                                       ; $8AB5EB |
  STA.B $02                                 ; $8AB5EC |
  LDA.B $02                                 ; $8AB5EE |
  BPL CODE_8AB5F6                           ; $8AB5F0 |
  EOR.W #$FFFF                              ; $8AB5F2 |
  INC A                                     ; $8AB5F5 |

CODE_8AB5F6:
  STA.B $00                                 ; $8AB5F6 |
  TYA                                       ; $8AB5F8 |
  STA.B $06                                 ; $8AB5F9 |
  LDA.B $06                                 ; $8AB5FB |
  BPL CODE_8AB603                           ; $8AB5FD |
  EOR.W #$FFFF                              ; $8AB5FF |
  INC A                                     ; $8AB602 |

CODE_8AB603:
  STA.B $04                                 ; $8AB603 |
  CMP.B $00                                 ; $8AB605 |
  BPL CODE_8AB61E                           ; $8AB607 |
  LDA.B $00                                 ; $8AB609 |
  LDY.W #$0080                              ; $8AB60B |
  JSL.L CODE_FL_808E65                      ; $8AB60E |
  TAY                                       ; $8AB612 |
  LDA.B $04                                 ; $8AB613 |
  JSL.L CODE_FL_808E65                      ; $8AB615 |
  TAX                                       ; $8AB619 |
  STZ.B $08                                 ; $8AB61A |
  BRA CODE_8AB634                           ; $8AB61C |

CODE_8AB61E:
  LDA.B $04                                 ; $8AB61E |
  LDY.W #$0080                              ; $8AB620 |
  JSL.L CODE_FL_808E65                      ; $8AB623 |
  TAY                                       ; $8AB627 |
  LDA.B $00                                 ; $8AB628 |
  JSL.L CODE_FL_808E65                      ; $8AB62A |
  TAX                                       ; $8AB62E |
  LDA.W #$0001                              ; $8AB62F |
  STA.B $08                                 ; $8AB632 |

CODE_8AB634:
  LDA.L UNREACH_978500,X                    ; $8AB634 |
  AND.W #$00FF                              ; $8AB638 |
  STA.B $0F                                 ; $8AB63B |
  BIT.B $06                                 ; $8AB63D |
  BMI CODE_8AB66B                           ; $8AB63F |
  BIT.B $02                                 ; $8AB641 |
  BMI CODE_8AB657                           ; $8AB643 |
  LDA.B $08                                 ; $8AB645 |
  BEQ CODE_8AB67B                           ; $8AB647 |
  LDA.W #$007F                              ; $8AB649 |
  SEC                                       ; $8AB64C |
  SBC.B $0F                                 ; $8AB64D |
  BRA CODE_8AB695                           ; $8AB64F |

  TDC                                       ; $8AB651 |
  CLC                                       ; $8AB652 |
  ADC.B $0F                                 ; $8AB653 |
  BRA CODE_8AB695                           ; $8AB655 |

CODE_8AB657:
  LDA.B $08                                 ; $8AB657 |
  BEQ CODE_8AB663                           ; $8AB659 |
  LDA.W #$0080                              ; $8AB65B |
  CLC                                       ; $8AB65E |
  ADC.B $0F                                 ; $8AB65F |
  BRA CODE_8AB695                           ; $8AB661 |

CODE_8AB663:
  LDA.W #$00FF                              ; $8AB663 |
  SEC                                       ; $8AB666 |
  SBC.B $0F                                 ; $8AB667 |
  BRA CODE_8AB695                           ; $8AB669 |

CODE_8AB66B:
  BIT.B $02                                 ; $8AB66B |
  BPL CODE_8AB683                           ; $8AB66D |
  LDA.B $08                                 ; $8AB66F |
  BEQ CODE_8AB67B                           ; $8AB671 |
  LDA.W #$017F                              ; $8AB673 |
  SEC                                       ; $8AB676 |
  SBC.B $0F                                 ; $8AB677 |
  BRA CODE_8AB695                           ; $8AB679 |

CODE_8AB67B:
  LDA.W #$0100                              ; $8AB67B |
  CLC                                       ; $8AB67E |
  ADC.B $0F                                 ; $8AB67F |
  BRA CODE_8AB695                           ; $8AB681 |

CODE_8AB683:
  LDA.B $08                                 ; $8AB683 |
  BEQ CODE_8AB68F                           ; $8AB685 |
  LDA.W #$0180                              ; $8AB687 |
  CLC                                       ; $8AB68A |
  ADC.B $0F                                 ; $8AB68B |
  BRA CODE_8AB695                           ; $8AB68D |

CODE_8AB68F:
  LDA.W #$01FF                              ; $8AB68F |
  SEC                                       ; $8AB692 |
  SBC.B $0F                                 ; $8AB693 |

CODE_8AB695:
  AND.W #$01FF                              ; $8AB695 |
  PLX                                       ; $8AB698 |
  RTL                                       ; $8AB699 |

CODE_FL_8AB69A:
  LDA.B $7E                                 ; $8AB69A |
  ASL A                                     ; $8AB69C |
  TAX                                       ; $8AB69D |
  JMP.W (PTR16_8AB6A1,X)                    ; $8AB69E |

PTR16_8AB6A1:
  dw CODE_8AB6B5                            ; $8AB6A1 |
  dw CODE_8AB6C2                            ; $8AB6A3 |
  dw CODE_8AB6D8                            ; $8AB6A5 |
  dw CODE_8AB766                            ; $8AB6A7 |
  dw CODE_8AB77D                            ; $8AB6A9 |
  dw CODE_8AB799                            ; $8AB6AB |
  dw CODE_JP_8AB7BD                         ; $8AB6AD |
  dw CODE_8AB82D                            ; $8AB6AF |
  dw CODE_8AB839                            ; $8AB6B1 |
  dw CODE_8AB84A                            ; $8AB6B3 |

CODE_8AB6B5:
  STZ.B $A4                                 ; $8AB6B5 |
  JSL.L CODE_FL_8AAE00                      ; $8AB6B7 |
  BCC CODE_8AB6C1                           ; $8AB6BB |
  JML.L CODE_FL_80C873                      ; $8AB6BD |

CODE_8AB6C1:
  RTL                                       ; $8AB6C1 |

CODE_8AB6C2:
  STZ.B $A4                                 ; $8AB6C2 |
  LDA.W $1F30                               ; $8AB6C4 |
  BNE CODE_8AB6D7                           ; $8AB6C7 |
  JSL.L CODE_FL_80977D                      ; $8AB6C9 |
  JSL.L CODE_FL_808CB3                      ; $8AB6CD |
  STZ.B $E4                                 ; $8AB6D1 |
  JML.L CODE_FL_80C873                      ; $8AB6D3 |

CODE_8AB6D7:
  RTL                                       ; $8AB6D7 |

CODE_8AB6D8:
  LDY.W #$9268                              ; $8AB6D8 |
  JSL.L CODE_FL_82D49F                      ; $8AB6DB |
  JSL.L CODE_FL_82D4CF                      ; $8AB6DF |
  JSL.L CODE_FL_848629                      ; $8AB6E3 |
  LDY.W #$810E                              ; $8AB6E7 |
  JSL.L CODE_FL_808D78                      ; $8AB6EA |
  JSL.L CODE_FL_82B994                      ; $8AB6EE |
  LDA.W #$00C0                              ; $8AB6F2 |
  STA.W $1FC6                               ; $8AB6F5 |
  STZ.W $0400                               ; $8AB6F8 |
  STZ.W $04C0                               ; $8AB6FB |
  STZ.W $1662                               ; $8AB6FE |
  STZ.W $1672                               ; $8AB701 |
  STZ.W $1C06                               ; $8AB704 |
  STZ.W $1C08                               ; $8AB707 |
  JSL.L CODE_FL_808BC2                      ; $8AB70A |
  LDA.W #$00FF                              ; $8AB70E |
  STA.W $1FF8                               ; $8AB711 |
  STA.W $1FFA                               ; $8AB714 |
  LDA.W #$0080                              ; $8AB717 |
  STA.W $1FD0                               ; $8AB71A |
  LDA.W #$0080                              ; $8AB71D |
  STA.W $1FD2                               ; $8AB720 |
  LDA.W #$0120                              ; $8AB723 |
  STA.W $1CB8                               ; $8AB726 |
  LDA.W #$0DC0                              ; $8AB729 |
  STA.W $1C16                               ; $8AB72C |
  LDA.W #$0003                              ; $8AB72F |
  STA.B $5C                                 ; $8AB732 |
  JSL.L CODE_FL_82CC68                      ; $8AB734 |
  LDY.W #$006C                              ; $8AB738 |
  JSL.L set_music                           ; $8AB73B |
  LDA.W #$1000                              ; $8AB73F |
  STA.B $A2                                 ; $8AB742 |
  LDA.W #$8000                              ; $8AB744 |
  STA.W $1CBC                               ; $8AB747 |
  JSR.W CODE_FN_8AB8A6                      ; $8AB74A |
  LDX.W #DATA_8888DA                        ; $8AB74D |
  JSL.L sound_transfer_blocks               ; $8AB750 |
  LDX.W #DATA_88829A                        ; $8AB754 |
  JSL.L sound_transfer_blocks               ; $8AB757 |
  LDY.W #$B8B6                              ; $8AB75B |
  JSL.L CODE_FL_80C27C                      ; $8AB75E |
  JML.L CODE_FL_80C873                      ; $8AB762 |

CODE_8AB766:
  LDA.B $DA                                 ; $8AB766 |
  ASL A                                     ; $8AB768 |
  ADC.B $DA                                 ; $8AB769 |
  TAY                                       ; $8AB76B |
  LDA.W LOOSE_OP_00A058,Y                   ; $8AB76C |
  STA.B $02                                 ; $8AB76F |
  LDA.W LOOSE_OP_00A056,Y                   ; $8AB771 |
  STA.B $00                                 ; $8AB774 |
  JSL.L CODE_FL_80C873                      ; $8AB776 |
  JML.W [$0000]                             ; $8AB77A |

CODE_8AB77D:
  JSL.L CODE_FL_80C873                      ; $8AB77D |
  TDC                                       ; $8AB781 |
  STA.L $7EDAC0                             ; $8AB782 |
  LDA.B $DA                                 ; $8AB786 |
  ASL A                                     ; $8AB788 |
  ADC.B $DA                                 ; $8AB789 |
  TAY                                       ; $8AB78B |
  LDA.W CODE_00A070,Y                       ; $8AB78C |
  STA.B $02                                 ; $8AB78F |
  LDA.W LOOSE_OP_00A06E,Y                   ; $8AB791 |
  STA.B $00                                 ; $8AB794 |
  JML.W [$0000]                             ; $8AB796 |

CODE_8AB799:
  JSL.L CODE_FL_84A1ED                      ; $8AB799 |
  LDY.W #$C800                              ; $8AB79D |
  JSL.L CODE_FL_80972B                      ; $8AB7A0 |
  LDA.W #$0016                              ; $8AB7A4 |
  STA.W $1CA0                               ; $8AB7A7 |
  JSR.W CODE_FN_8AB892                      ; $8AB7AA |
  LDA.W #$0001                              ; $8AB7AD |
  STA.B $A4                                 ; $8AB7B0 |
  STZ.W $1CF6                               ; $8AB7B2 |
  JSL.L CODE_FL_80C222                      ; $8AB7B5 |
  JML.L CODE_FL_80C873                      ; $8AB7B9 |

CODE_JP_8AB7BD:
  STZ.B $76                                 ; $8AB7BD |
  JSL.L CODE_FL_8380F8                      ; $8AB7BF |
  LDA.W $1CBC                               ; $8AB7C3 |
  BNE CODE_8AB7DE                           ; $8AB7C6 |
  LDA.W $04D8                               ; $8AB7C8 |
  BEQ CODE_8AB7DE                           ; $8AB7CB |
  LDA.W $0778                               ; $8AB7CD |
  BNE CODE_8AB7DE                           ; $8AB7D0 |
  LDA.W #$4060                              ; $8AB7D2 |
  STA.W $0778                               ; $8AB7D5 |
  LDA.W #$0002                              ; $8AB7D8 |
  STA.W $0798                               ; $8AB7DB |

CODE_8AB7DE:
  JSL.L CODE_FL_8AB958                      ; $8AB7DE |
  JSL.L CODE_FL_82895F                      ; $8AB7E2 |
  JSL.L CODE_FL_828987                      ; $8AB7E6 |
  LDA.B $7E                                 ; $8AB7EA |
  CMP.W #$0007                              ; $8AB7EC |
  BPL CODE_8AB81A                           ; $8AB7EF |
  LDA.W $1CBE                               ; $8AB7F1 |
  BNE CODE_8AB816                           ; $8AB7F4 |
  LDA.W $1CBC                               ; $8AB7F6 |
  BNE CODE_8AB81A                           ; $8AB7F9 |
  LDA.B $42                                 ; $8AB7FB |
  AND.W #$0003                              ; $8AB7FD |
  BNE CODE_8AB81A                           ; $8AB800 |
  SED                                       ; $8AB802 |
  LDA.B $A2                                 ; $8AB803 |
  SEC                                       ; $8AB805 |
  SBC.W #$0001                              ; $8AB806 |
  STA.B $A2                                 ; $8AB809 |
  CLD                                       ; $8AB80B |
  LDA.B $A2                                 ; $8AB80C |
  BNE CODE_8AB81A                           ; $8AB80E |
  LDA.W #$0060                              ; $8AB810 |
  STA.W $1CBE                               ; $8AB813 |

CODE_8AB816:
  JSL.L CODE_FL_80C873                      ; $8AB816 |

CODE_8AB81A:
  JSL.L CODE_FL_84A2E9                      ; $8AB81A |
  JSR.W CODE_FN_8AB892                      ; $8AB81E |
  LDA.L $7EDAC0                             ; $8AB821 |
  EOR.W #$0001                              ; $8AB825 |
  STA.L $7EDAC0                             ; $8AB828 |
  RTL                                       ; $8AB82C |

CODE_8AB82D:
  DEC.W $1CBE                               ; $8AB82D |
  BMI CODE_8AB835                           ; $8AB830 |
  JMP.W CODE_JP_8AB7BD                      ; $8AB832 |

CODE_8AB835:
  JML.L CODE_FL_8285F8                      ; $8AB835 |

CODE_8AB839:
  LDA.L $001F60                             ; $8AB839 |
  BEQ CODE_8AB842                           ; $8AB83D |
  JMP.W CODE_JP_8AB7BD                      ; $8AB83F |

CODE_8AB842:
  JSL.L CODE_FL_80977D                      ; $8AB842 |
  JML.L CODE_FL_80C873                      ; $8AB846 |

CODE_8AB84A:
  JSL.L CODE_FL_82D51F                      ; $8AB84A |
  LDA.B $A2                                 ; $8AB84E |
  BEQ CODE_8AB874                           ; $8AB850 |
  LDA.B $DA                                 ; $8AB852 |
  BNE CODE_8AB85F                           ; $8AB854 |
  LDA.W #$0001                              ; $8AB856 |
  STA.L $70078C                             ; $8AB859 |
  BRA CODE_8AB866                           ; $8AB85D |

CODE_8AB85F:
  LDA.W #$0001                              ; $8AB85F |
  STA.L $70078E                             ; $8AB862 |

CODE_8AB866:
  LDA.B $DA                                 ; $8AB866 |
  ORA.W #$8000                              ; $8AB868 |
  STA.B $DA                                 ; $8AB86B |
  LDA.W #$000B                              ; $8AB86D |
  JML.L CODE_FL_8085F6                      ; $8AB870 |

CODE_8AB874:
  LDA.B $DA                                 ; $8AB874 |
  BNE CODE_8AB883                           ; $8AB876 |
  LDA.W #$058C                              ; $8AB878 |
  JSL.L CODE_FL_8CF9C3                      ; $8AB87B |
  JML.L CODE_JL_80EB85                      ; $8AB87F |

CODE_8AB883:
  LDA.W #$058E                              ; $8AB883 |
  JSL.L CODE_FL_8CF9C3                      ; $8AB886 |
  JSL.L CODE_FL_8482E4                      ; $8AB88A |
  JML.L CODE_JL_80ECB1                      ; $8AB88E |

CODE_FN_8AB892:
  JSL.L CODE_FL_808F6E                      ; $8AB892 |
  LDA.W $1CA8                               ; $8AB896 |
  CLC                                       ; $8AB899 |
  ADC.W #$006F                              ; $8AB89A |
  TAY                                       ; $8AB89D |
  LDA.W $1CA0                               ; $8AB89E |
  JSL.L CODE_FL_808FD5                      ; $8AB8A1 |
  RTS                                       ; $8AB8A5 |

CODE_FN_8AB8A6:
  LDA.B $DA                                 ; $8AB8A6 |
  CMP.W #$0001                              ; $8AB8A8 |
  BEQ CODE_8AB918                           ; $8AB8AB |
  LDA.W #$4060                              ; $8AB8AD |
  STA.W $0718                               ; $8AB8B0 |
  TDC                                       ; $8AB8B3 |
  STA.W $0738                               ; $8AB8B4 |
  LDA.W $04D8                               ; $8AB8B7 |
  BEQ CODE_FN_8AB8C8                        ; $8AB8BA |
  LDA.W #$4060                              ; $8AB8BC |
  STA.W $0778                               ; $8AB8BF |
  LDA.W #$0002                              ; $8AB8C2 |
  STA.W $0798                               ; $8AB8C5 |

CODE_FN_8AB8C8:
  LDA.W #$8062                              ; $8AB8C8 |
  STA.W $0598                               ; $8AB8CB |
  STA.W $05F8                               ; $8AB8CE |
  STA.W $0658                               ; $8AB8D1 |
  TDC                                       ; $8AB8D4 |
  STA.W $05B8                               ; $8AB8D5 |
  LDA.W #$0001                              ; $8AB8D8 |
  STA.W $0618                               ; $8AB8DB |
  LDA.W #$0002                              ; $8AB8DE |
  STA.W $0678                               ; $8AB8E1 |
  LDA.W #$C064                              ; $8AB8E4 |
  STA.W $07D8                               ; $8AB8E7 |
  STA.W $0838                               ; $8AB8EA |
  STA.W $0898                               ; $8AB8ED |
  LDA.W #$8061                              ; $8AB8F0 |
  STA.W $0958                               ; $8AB8F3 |
  STA.W $09B8                               ; $8AB8F6 |
  STA.W $0A18                               ; $8AB8F9 |
  LDA.W #$0580                              ; $8AB8FC |
  STA.W $07F8                               ; $8AB8FF |
  STA.W $0978                               ; $8AB902 |
  LDA.W #$05E0                              ; $8AB905 |
  STA.W $0858                               ; $8AB908 |
  STA.W $09D8                               ; $8AB90B |
  LDA.W #$0640                              ; $8AB90E |
  STA.W $08B8                               ; $8AB911 |
  STA.W $0A38                               ; $8AB914 |
  RTS                                       ; $8AB917 |

CODE_8AB918:
  LDA.W #$4060                              ; $8AB918 |
  STA.W $0718                               ; $8AB91B |
  TDC                                       ; $8AB91E |
  STA.W $0738                               ; $8AB91F |
  LDA.W $04D8                               ; $8AB922 |
  BEQ CODE_8AB933                           ; $8AB925 |
  LDA.W #$4060                              ; $8AB927 |
  STA.W $0778                               ; $8AB92A |
  LDA.W #$0002                              ; $8AB92D |
  STA.W $0798                               ; $8AB930 |

CODE_8AB933:
  JSR.W CODE_FN_8AB8C8                      ; $8AB933 |
  LDA.W #$8062                              ; $8AB936 |
  STA.W $06B8                               ; $8AB939 |
  LDA.W #$0003                              ; $8AB93C |
  STA.W $06D8                               ; $8AB93F |
  LDA.W #$C064                              ; $8AB942 |
  STA.W $08F8                               ; $8AB945 |
  LDA.W #$8061                              ; $8AB948 |
  STA.W $0A78                               ; $8AB94B |
  LDA.W #$06A0                              ; $8AB94E |
  STA.W $0918                               ; $8AB951 |
  STA.W $0A98                               ; $8AB954 |
  RTS                                       ; $8AB957 |

CODE_FL_8AB958:
  LDA.W $1CAE                               ; $8AB958 |
  BEQ CODE_8AB967                           ; $8AB95B |
  DEC.W $1CAE                               ; $8AB95D |
  BNE CODE_8AB972                           ; $8AB960 |
  STZ.W $1CB0                               ; $8AB962 |
  BRA CODE_8AB972                           ; $8AB965 |

CODE_8AB967:
  LDA.W $1CB0                               ; $8AB967 |
  BEQ CODE_8AB972                           ; $8AB96A |
  LDA.W #$0010                              ; $8AB96C |
  STA.W $1CAE                               ; $8AB96F |

CODE_8AB972:
  LDA.W LOOSE_OP_00A086                     ; $8AB972 |
  AND.W #$00FF                              ; $8AB975 |
  STA.B $00                                 ; $8AB978 |
  LDY.W $1CAE                               ; $8AB97A |
  LDA.W LOOSE_OP_00A086,Y                   ; $8AB97D |
  AND.W #$00FF                              ; $8AB980 |
  STA.W $1CA8                               ; $8AB983 |
  SEC                                       ; $8AB986 |
  SBC.B $00                                 ; $8AB987 |
  STA.W $1C2F                               ; $8AB989 |
  LDA.W $1CB2                               ; $8AB98C |
  BMI CODE_8AB9A0                           ; $8AB98F |
  DEC.W $1CB4                               ; $8AB991 |
  BPL CODE_8AB9A0                           ; $8AB994 |
  STA.W $1CB4                               ; $8AB996 |
  LDY.W $1CA6                               ; $8AB999 |
  JSL.L CODE_FL_8AB3CC                      ; $8AB99C |

CODE_8AB9A0:
  LDA.B $DA                                 ; $8AB9A0 |
  ASL A                                     ; $8AB9A2 |
  TAX                                       ; $8AB9A3 |
  JMP.W (PTR16_8AB9A7,X)                    ; $8AB9A4 |

PTR16_8AB9A7:
  dw CODE_8AB9B4                            ; $8AB9A7 |
  dw CODE_8AB9CB                            ; $8AB9A9 |
  dw CODE_8AB9B3                            ; $8AB9AB |
  dw CODE_8AB9B3                            ; $8AB9AD |
  dw CODE_8AB9B3                            ; $8AB9AF |
  dw CODE_8AB9B3                            ; $8AB9B1 |

CODE_8AB9B3:
  RTL                                       ; $8AB9B3 |

CODE_8AB9B4:
  DEC.W $1CBA                               ; $8AB9B4 |
  BPL CODE_8AB9CA                           ; $8AB9B7 |
  LDA.W $1CB4                               ; $8AB9B9 |
  ASL A                                     ; $8AB9BC |
  ADC.W #$0020                              ; $8AB9BD |
  STA.W $1CBA                               ; $8AB9C0 |
  LDA.W #$8065                              ; $8AB9C3 |
  JSL.L CODE_FL_82CD2F                      ; $8AB9C6 |

CODE_8AB9CA:
  RTL                                       ; $8AB9CA |

CODE_8AB9CB:
  DEC.W $1CBA                               ; $8AB9CB |
  BPL CODE_8AB9E1                           ; $8AB9CE |
  LDA.W $1CB4                               ; $8AB9D0 |
  ASL A                                     ; $8AB9D3 |
  ADC.W #$0018                              ; $8AB9D4 |
  STA.W $1CBA                               ; $8AB9D7 |
  LDA.W #$8066                              ; $8AB9DA |
  JSL.L CODE_FL_82CD2F                      ; $8AB9DD |

CODE_8AB9E1:
  RTL                                       ; $8AB9E1 |

CODE_FL_8AB9E2:
  LDA.W $0598                               ; $8AB9E2 |
  BEQ CODE_8AB9ED                           ; $8AB9E5 |
  LDA.W #$0001                              ; $8AB9E7 |
  STA.W $05BA                               ; $8AB9EA |

CODE_8AB9ED:
  LDA.W $05F8                               ; $8AB9ED |
  BEQ CODE_8AB9F8                           ; $8AB9F0 |
  LDA.W #$0001                              ; $8AB9F2 |
  STA.W $061A                               ; $8AB9F5 |

CODE_8AB9F8:
  LDA.W $0658                               ; $8AB9F8 |
  BEQ CODE_8ABA03                           ; $8AB9FB |
  LDA.W #$0001                              ; $8AB9FD |
  STA.W $067A                               ; $8ABA00 |

CODE_8ABA03:
  LDA.W $06B8                               ; $8ABA03 |
  BEQ CODE_8ABA0E                           ; $8ABA06 |
  LDA.W #$0001                              ; $8ABA08 |
  STA.W $06DA                               ; $8ABA0B |

CODE_8ABA0E:
  PHX                                       ; $8ABA0E |
  LDX.W #DATA_8882BC                        ; $8ABA0F |
  JSL.L sound_transfer_blocks               ; $8ABA12 |
  PLX                                       ; $8ABA16 |
  RTL                                       ; $8ABA17 |

  dw CODE_8ABA22                            ; $8ABA18 |
  dw CODE_8ABA7A                            ; $8ABA1A |
  dw CODE_8ABAA5                            ; $8ABA1C |
  dw CODE_JP_8ABB04                         ; $8ABA1E |
  dw CODE_8ABB30                            ; $8ABA20 |

CODE_8ABA22:
  LDA.W #$1898                              ; $8ABA22 |
  STA.B $04,X                               ; $8ABA25 |
  LDA.W #$0010                              ; $8ABA27 |
  CLC                                       ; $8ABA2A |
  ADC.B $38,X                               ; $8ABA2B |
  STA.B $14,X                               ; $8ABA2D |
  LDA.W #$0080                              ; $8ABA2F |
  LDY.W $0778                               ; $8ABA32 |
  BEQ CODE_8ABA41                           ; $8ABA35 |
  LDA.W #$0060                              ; $8ABA37 |
  LDY.B $38,X                               ; $8ABA3A |
  BEQ CODE_8ABA41                           ; $8ABA3C |
  LDA.W #$00A0                              ; $8ABA3E |

CODE_8ABA41:
  STA.B $09,X                               ; $8ABA41 |
  LDA.W #$00A8                              ; $8ABA43 |
  LDY.B $38,X                               ; $8ABA46 |
  BEQ CODE_8ABA4D                           ; $8ABA48 |
  LDA.W #$00B0                              ; $8ABA4A |

CODE_8ABA4D:
  STA.B $0D,X                               ; $8ABA4D |
  LDA.W #$0040                              ; $8ABA4F |
  LDY.B $38,X                               ; $8ABA52 |
  BEQ CODE_8ABA59                           ; $8ABA54 |
  LDA.W #$0041                              ; $8ABA56 |

CODE_8ABA59:
  STA.B $02,X                               ; $8ABA59 |
  LDA.W #$F000                              ; $8ABA5B |
  LDY.B $38,X                               ; $8ABA5E |
  BEQ CODE_8ABA65                           ; $8ABA60 |
  LDA.W #$1000                              ; $8ABA62 |

CODE_8ABA65:
  STA.B $26,X                               ; $8ABA65 |
  LDA.W #$3672                              ; $8ABA67 |
  STA.B $00,X                               ; $8ABA6A |
  LDA.B $DA                                 ; $8ABA6C |
  BEQ CODE_8ABA78                           ; $8ABA6E |
  LDA.W #$0003                              ; $8ABA70 |
  STA.B $1A,X                               ; $8ABA73 |
  JMP.W CODE_JP_8ABB04                      ; $8ABA75 |

CODE_8ABA78:
  INC.B $1A,X                               ; $8ABA78 |

CODE_8ABA7A:
  JSL.L CODE_FL_82C842                      ; $8ABA7A |
  LDA.B $09,X                               ; $8ABA7E |
  CMP.W #$0030                              ; $8ABA80 |
  BEQ CODE_8ABAA0                           ; $8ABA83 |
  BMI CODE_8ABA94                           ; $8ABA85 |
  CMP.W #$0080                              ; $8ABA87 |
  BEQ CODE_8ABAA0                           ; $8ABA8A |
  CMP.W #$00D0                              ; $8ABA8C |
  BEQ CODE_8ABAA0                           ; $8ABA8F |
  BPL CODE_8ABA9B                           ; $8ABA91 |
  RTL                                       ; $8ABA93 |

CODE_8ABA94:
  LDA.W #$0030                              ; $8ABA94 |
  STA.B $09,X                               ; $8ABA97 |
  BRA CODE_8ABAA0                           ; $8ABA99 |

CODE_8ABA9B:
  LDA.W #$00D0                              ; $8ABA9B |
  STA.B $09,X                               ; $8ABA9E |

CODE_8ABAA0:
  STZ.B $26,X                               ; $8ABAA0 |
  INC.B $1A,X                               ; $8ABAA2 |
  RTL                                       ; $8ABAA4 |

CODE_8ABAA5:
  LDY.B $38,X                               ; $8ABAA5 |
  LDA.W $0030,Y                             ; $8ABAA7 |
  BIT.W #$0100                              ; $8ABAAA |
  BEQ CODE_8ABAB8                           ; $8ABAAD |
  LDA.W #$1000                              ; $8ABAAF |
  STA.B $26,X                               ; $8ABAB2 |
  DEC.B $1A,X                               ; $8ABAB4 |
  BRA CODE_8ABAC4                           ; $8ABAB6 |

CODE_8ABAB8:
  BIT.W #$0200                              ; $8ABAB8 |
  BEQ CODE_8ABAC4                           ; $8ABABB |
  LDA.W #$F000                              ; $8ABABD |
  STA.B $26,X                               ; $8ABAC0 |
  DEC.B $1A,X                               ; $8ABAC2 |

CODE_8ABAC4:
  LDA.W $1CBC                               ; $8ABAC4 |
  BMI CODE_8ABAED                           ; $8ABAC7 |
  LDA.W $0028,Y                             ; $8ABAC9 |
  BIT.W #$8000                              ; $8ABACC |
  BEQ CODE_8ABADC                           ; $8ABACF |
  JSR.W CODE_FN_8ABAEE                      ; $8ABAD1 |
  LDA.W #$0006                              ; $8ABAD4 |
  STA.W $003A,Y                             ; $8ABAD7 |
  BRA CODE_8ABAED                           ; $8ABADA |

CODE_8ABADC:
  BIT.W #$4080                              ; $8ABADC |
  BEQ CODE_8ABAED                           ; $8ABADF |
  LDA.W #$0008                              ; $8ABAE1 |
  STA.W $05BA                               ; $8ABAE4 |
  STA.W $061A                               ; $8ABAE7 |
  STA.W $067A                               ; $8ABAEA |

CODE_8ABAED:
  RTL                                       ; $8ABAED |

CODE_FN_8ABAEE:
  LDA.B $09,X                               ; $8ABAEE |
  LDY.W #$0580                              ; $8ABAF0 |
  CMP.W #$0058                              ; $8ABAF3 |
  BMI CODE_8ABB03                           ; $8ABAF6 |
  LDY.W #$05E0                              ; $8ABAF8 |
  CMP.W #$00A8                              ; $8ABAFB |
  BMI CODE_8ABB03                           ; $8ABAFE |
  LDY.W #$0640                              ; $8ABB00 |

CODE_8ABB03:
  RTS                                       ; $8ABB03 |

CODE_JP_8ABB04:
  JSL.L CODE_FL_82C842                      ; $8ABB04 |
  LDA.B $09,X                               ; $8ABB08 |
  CMP.W #$0060                              ; $8ABB0A |
  BEQ CODE_8ABB2B                           ; $8ABB0D |
  CMP.W #$00A0                              ; $8ABB0F |
  BEQ CODE_8ABB2B                           ; $8ABB12 |
  CMP.W #$00E0                              ; $8ABB14 |
  BPL CODE_8ABB26                           ; $8ABB17 |
  CMP.W #$0020                              ; $8ABB19 |
  BMI CODE_8ABB1F                           ; $8ABB1C |
  RTL                                       ; $8ABB1E |

CODE_8ABB1F:
  LDA.W #$0020                              ; $8ABB1F |
  STA.B $09,X                               ; $8ABB22 |
  BRA CODE_8ABB2B                           ; $8ABB24 |

CODE_8ABB26:
  LDA.W #$00E0                              ; $8ABB26 |
  STA.B $09,X                               ; $8ABB29 |

CODE_8ABB2B:
  STZ.B $26,X                               ; $8ABB2B |
  INC.B $1A,X                               ; $8ABB2D |
  RTL                                       ; $8ABB2F |

CODE_8ABB30:
  LDY.B $38,X                               ; $8ABB30 |
  LDA.W $0030,Y                             ; $8ABB32 |
  BIT.W #$0100                              ; $8ABB35 |
  BEQ CODE_8ABB43                           ; $8ABB38 |
  LDA.W #$0800                              ; $8ABB3A |
  STA.B $26,X                               ; $8ABB3D |
  DEC.B $1A,X                               ; $8ABB3F |
  BRA CODE_8ABB4F                           ; $8ABB41 |

CODE_8ABB43:
  BIT.W #$0200                              ; $8ABB43 |
  BEQ CODE_8ABB4F                           ; $8ABB46 |
  LDA.W #$F800                              ; $8ABB48 |
  STA.B $26,X                               ; $8ABB4B |
  DEC.B $1A,X                               ; $8ABB4D |

CODE_8ABB4F:
  LDA.W $1CBC                               ; $8ABB4F |
  BMI CODE_8ABB7B                           ; $8ABB52 |
  LDA.W $0028,Y                             ; $8ABB54 |
  BIT.W #$8000                              ; $8ABB57 |
  BEQ CODE_8ABB67                           ; $8ABB5A |
  JSR.W CODE_FN_8ABB7C                      ; $8ABB5C |
  LDA.W #$0006                              ; $8ABB5F |
  STA.W $003A,Y                             ; $8ABB62 |
  BRA CODE_8ABB7B                           ; $8ABB65 |

CODE_8ABB67:
  BIT.W #$4080                              ; $8ABB67 |
  BEQ CODE_8ABB7B                           ; $8ABB6A |
  LDA.W #$0008                              ; $8ABB6C |
  STA.W $05BA                               ; $8ABB6F |
  STA.W $061A                               ; $8ABB72 |
  STA.W $067A                               ; $8ABB75 |
  STA.W $06DA                               ; $8ABB78 |

CODE_8ABB7B:
  RTL                                       ; $8ABB7B |

CODE_FN_8ABB7C:
  LDA.B $09,X                               ; $8ABB7C |
  LDY.W #$0580                              ; $8ABB7E |
  CMP.W #$0040                              ; $8ABB81 |
  BMI CODE_8ABB99                           ; $8ABB84 |
  LDY.W #$05E0                              ; $8ABB86 |
  CMP.W #$0080                              ; $8ABB89 |
  BMI CODE_8ABB99                           ; $8ABB8C |
  LDY.W #$0640                              ; $8ABB8E |
  CMP.W #$00C0                              ; $8ABB91 |
  BMI CODE_8ABB99                           ; $8ABB94 |
  LDY.W #$06A0                              ; $8ABB96 |

CODE_8ABB99:
  RTS                                       ; $8ABB99 |

  LDY.B $38,X                               ; $8ABB9A |
  LDA.B $1A,X                               ; $8ABB9C |
  BEQ CODE_8ABBA5                           ; $8ABB9E |
  DEC A                                     ; $8ABBA0 |
  BEQ CODE_8ABBBB                           ; $8ABBA1 |
  BRA CODE_8ABBD4                           ; $8ABBA3 |

CODE_8ABBA5:
  LDA.W $0018,Y                             ; $8ABBA5 |
  STA.B $3A,X                               ; $8ABBA8 |
  INC.B $1A,X                               ; $8ABBAA |
  LDA.B $3C,X                               ; $8ABBAC |
  BNE CODE_8ABBB7                           ; $8ABBAE |
  LDY.W #$85B6                              ; $8ABBB0 |
  JML.L CODE_FL_828AC3                      ; $8ABBB3 |

CODE_8ABBB7:
  JML.L CODE_JL_82C0DD                      ; $8ABBB7 |

CODE_8ABBBB:
  LDA.W $0018,Y                             ; $8ABBBB |
  CMP.B $3A,X                               ; $8ABBBE |
  BNE CODE_8ABBD4                           ; $8ABBC0 |
  LDA.W $002D,Y                             ; $8ABBC2 |
  STA.B $2D,X                               ; $8ABBC5 |
  LDA.W $0035,Y                             ; $8ABBC7 |
  STA.B $35,X                               ; $8ABBCA |
  BMI CODE_8ABBD4                           ; $8ABBCC |
  LDA.W #$0040                              ; $8ABBCE |
  STA.B $31,X                               ; $8ABBD1 |
  RTL                                       ; $8ABBD3 |

CODE_8ABBD4:
  LDA.B $3C,X                               ; $8ABBD4 |
  BEQ CODE_8ABBDC                           ; $8ABBD6 |
  JSL.L CODE_FL_82B994                      ; $8ABBD8 |

CODE_8ABBDC:
  JML.L CODE_FL_82CC9F                      ; $8ABBDC |

  LDA.B $1A,X                               ; $8ABBE0 |
  PHX                                       ; $8ABBE2 |
  ASL A                                     ; $8ABBE3 |
  TAX                                       ; $8ABBE4 |
  LDA.L PTR16_8ABBEF,X                      ; $8ABBE5 |
  PLX                                       ; $8ABBE9 |
  STA.B $00                                 ; $8ABBEA |
  JMP.W ($0000)                             ; $8ABBEC |

PTR16_8ABBEF:
  dw CODE_8ABC15                            ; $8ABBEF |
  dw CODE_8ABC54                            ; $8ABBF1 |
  dw CODE_8ABC59                            ; $8ABBF3 |
  dw CODE_8ABC95                            ; $8ABBF5 |
  dw CODE_8ABCAF                            ; $8ABBF7 |
  dw CODE_8ABCB8                            ; $8ABBF9 |
  dw CODE_8ABCED                            ; $8ABBFB |
  dw CODE_8ABD00                            ; $8ABBFD |
  dw CODE_8ABD15                            ; $8ABBFF |
  dw CODE_8ABD1C                            ; $8ABC01 |
  dw CODE_8ABD36                            ; $8ABC03 |
  dw CODE_8ABD4B                            ; $8ABC05 |
  dw CODE_8ABD7D                            ; $8ABC07 |
  dw CODE_8ABDA2                            ; $8ABC09 |
  dw CODE_8ABDA9                            ; $8ABC0B |
  dw CODE_8ABDBA                            ; $8ABC0D |
  dw CODE_8ABE42                            ; $8ABC0F |
  dw CODE_8ABE67                            ; $8ABC11 |
  dw CODE_8ABE7B                            ; $8ABC13 |

CODE_8ABC15:
  LDA.W #$1898                              ; $8ABC15 |
  STA.B $04,X                               ; $8ABC18 |
  LDY.W #$8BCE                              ; $8ABC1A |
  JSL.L CODE_FL_82B81C                      ; $8ABC1D |
  LDA.B $DA                                 ; $8ABC21 |
  BNE CODE_8ABC3A                           ; $8ABC23 |
  LDA.B $38,X                               ; $8ABC25 |
  ASL A                                     ; $8ABC27 |
  TAY                                       ; $8ABC28 |
  LDA.W LOOSE_OP_00A097,Y                   ; $8ABC29 |
  STA.B $2D,X                               ; $8ABC2C |
  LDA.W #$0040                              ; $8ABC2E |
  STA.B $31,X                               ; $8ABC31 |
  LDA.W #$00A0                              ; $8ABC33 |
  STA.B $35,X                               ; $8ABC36 |
  BRA CODE_8ABC4D                           ; $8ABC38 |

CODE_8ABC3A:
  LDA.B $38,X                               ; $8ABC3A |
  ASL A                                     ; $8ABC3C |
  TAY                                       ; $8ABC3D |
  LDA.W CODE_00A09D,Y                       ; $8ABC3E |
  STA.B $2D,X                               ; $8ABC41 |
  LDA.W #$0040                              ; $8ABC43 |
  STA.B $31,X                               ; $8ABC46 |
  LDA.W #$00A0                              ; $8ABC48 |
  STA.B $35,X                               ; $8ABC4B |

CODE_8ABC4D:
  LDA.W #$FF00                              ; $8ABC4D |
  STA.B $2A,X                               ; $8ABC50 |
  INC.B $1A,X                               ; $8ABC52 |

CODE_8ABC54:
  JSR.W CODE_FN_8ABE99                      ; $8ABC54 |
  INC.B $1A,X                               ; $8ABC57 |

CODE_8ABC59:
  LDA.W #$000C                              ; $8ABC59 |
  JSR.W CODE_FN_8ABEC7                      ; $8ABC5C |
  LDA.B $35,X                               ; $8ABC5F |
  CMP.W #$0098                              ; $8ABC61 |
  BPL CODE_8ABC6B                           ; $8ABC64 |
  LDY.W #$0080                              ; $8ABC66 |
  STY.B $2A,X                               ; $8ABC69 |

CODE_8ABC6B:
  CMP.W #$00C0                              ; $8ABC6B |
  BMI CODE_8ABC75                           ; $8ABC6E |
  LDY.W #$FF80                              ; $8ABC70 |
  STY.B $2A,X                               ; $8ABC73 |

CODE_8ABC75:
  LDA.B $3A,X                               ; $8ABC75 |
  BEQ CODE_8ABC91                           ; $8ABC77 |
  LDA.W #$0020                              ; $8ABC79 |
  STA.B $40,X                               ; $8ABC7C |
  LDA.W #$FA00                              ; $8ABC7E |
  STA.B $28,X                               ; $8ABC81 |
  LDA.W #$3392                              ; $8ABC83 |
  STA.B $00,X                               ; $8ABC86 |
  LDA.W #$0002                              ; $8ABC88 |
  JSL.L push_sound_queue                    ; $8ABC8B |
  INC.B $1A,X                               ; $8ABC8F |

CODE_8ABC91:
  JML.L CODE_FL_82C8C4                      ; $8ABC91 |

CODE_8ABC95:
  JSL.L CODE_FL_82CAD8                      ; $8ABC95 |
  BNE CODE_8ABCAE                           ; $8ABC99 |
  LDA.W #$0037                              ; $8ABC9B |
  JSL.L push_sound_queue                    ; $8ABC9E |
  STZ.B $40,X                               ; $8ABCA2 |
  STZ.W $1CB2                               ; $8ABCA4 |
  STZ.B $3A,X                               ; $8ABCA7 |
  LDA.W #$0004                              ; $8ABCA9 |
  STA.B $1A,X                               ; $8ABCAC |

CODE_8ABCAE:
  RTL                                       ; $8ABCAE |

CODE_8ABCAF:
  JSR.W CODE_FN_8ABE99                      ; $8ABCAF |
  STZ.B $3A,X                               ; $8ABCB2 |
  STZ.B $5C,X                               ; $8ABCB4 |
  INC.B $1A,X                               ; $8ABCB6 |

CODE_8ABCB8:
  LDA.B $A2                                 ; $8ABCB8 |
  BNE CODE_8ABCC3                           ; $8ABCBA |
  LDA.W #$000D                              ; $8ABCBC |
  STA.B $1A,X                               ; $8ABCBF |
  BRA CODE_8ABCC9                           ; $8ABCC1 |

CODE_8ABCC3:
  LDA.B $3A,X                               ; $8ABCC3 |
  BEQ CODE_8ABCC9                           ; $8ABCC5 |
  STA.B $1A,X                               ; $8ABCC7 |

CODE_8ABCC9:
  LDA.B $35,X                               ; $8ABCC9 |
  CMP.W #$0098                              ; $8ABCCB |
  BPL CODE_8ABCD5                           ; $8ABCCE |
  LDY.W #$0100                              ; $8ABCD0 |
  STY.B $2A,X                               ; $8ABCD3 |

CODE_8ABCD5:
  CMP.W #$00C0                              ; $8ABCD5 |
  BMI CODE_8ABCDF                           ; $8ABCD8 |
  LDY.W #$FF00                              ; $8ABCDA |
  STY.B $2A,X                               ; $8ABCDD |

CODE_8ABCDF:
  JSL.L CODE_FL_82C8C4                      ; $8ABCDF |
  LDA.W #$0003                              ; $8ABCE3 |
  JSR.W CODE_FN_8ABEA4                      ; $8ABCE6 |
  JML.L CODE_JL_82B98A                      ; $8ABCE9 |

CODE_8ABCED:
  LDA.W #$FA00                              ; $8ABCED |
  STA.B $28,X                               ; $8ABCF0 |
  LDA.W #$3392                              ; $8ABCF2 |
  STA.B $00,X                               ; $8ABCF5 |
  LDA.W #$0002                              ; $8ABCF7 |
  JSL.L push_sound_queue                    ; $8ABCFA |
  INC.B $1A,X                               ; $8ABCFE |

CODE_8ABD00:
  JSL.L CODE_FL_82CAD8                      ; $8ABD00 |
  BNE CODE_8ABD14                           ; $8ABD04 |
  LDA.W #$0037                              ; $8ABD06 |
  JSL.L push_sound_queue                    ; $8ABD09 |
  STZ.B $3A,X                               ; $8ABD0D |
  LDA.W #$0004                              ; $8ABD0F |
  STA.B $1A,X                               ; $8ABD12 |

CODE_8ABD14:
  RTL                                       ; $8ABD14 |

CODE_8ABD15:
  LDA.W #$FD00                              ; $8ABD15 |
  STA.B $2A,X                               ; $8ABD18 |
  INC.B $1A,X                               ; $8ABD1A |

CODE_8ABD1C:
  LDA.W #$0001                              ; $8ABD1C |
  JSR.W CODE_FN_8ABEA4                      ; $8ABD1F |
  JSL.L CODE_FL_82C8C4                      ; $8ABD22 |
  CMP.W #$0078                              ; $8ABD26 |
  BPL CODE_8ABD32                           ; $8ABD29 |
  LDA.W #$0060                              ; $8ABD2B |
  STA.B $42,X                               ; $8ABD2E |
  INC.B $1A,X                               ; $8ABD30 |

CODE_8ABD32:
  JML.L CODE_JL_82B98A                      ; $8ABD32 |

CODE_8ABD36:
  LDA.W #$0001                              ; $8ABD36 |
  JSR.W CODE_FN_8ABEA4                      ; $8ABD39 |
  DEC.B $42,X                               ; $8ABD3C |
  BPL CODE_8ABD47                           ; $8ABD3E |
  STZ.B $3A,X                               ; $8ABD40 |
  LDA.W #$0004                              ; $8ABD42 |
  STA.B $1A,X                               ; $8ABD45 |

CODE_8ABD47:
  JML.L CODE_JL_82B98A                      ; $8ABD47 |

CODE_8ABD4B:
  LDA.W #$0001                              ; $8ABD4B |
  LDY.W #$85C6                              ; $8ABD4E |
  JSL.L CODE_FL_828AD9                      ; $8ABD51 |
  LDA.W #$0020                              ; $8ABD55 |
  STA.B $40,X                               ; $8ABD58 |
  LDA.W $1994                               ; $8ABD5A |
  BNE CODE_8ABD6A                           ; $8ABD5D |
  LDA.W #$0001                              ; $8ABD5F |
  JSL.L CODE_FL_83D212                      ; $8ABD62 |
  LDA.B $BA                                 ; $8ABD66 |
  BEQ CODE_8ABDBA                           ; $8ABD68 |

CODE_8ABD6A:
  LDA.W #$0090                              ; $8ABD6A |
  JSL.L CODE_FL_8089BD                      ; $8ABD6D |
  LDA.W #$FA00                              ; $8ABD71 |
  STA.B $28,X                               ; $8ABD74 |
  LDA.W #$0080                              ; $8ABD76 |
  STA.B $2A,X                               ; $8ABD79 |
  INC.B $1A,X                               ; $8ABD7B |

CODE_8ABD7D:
  JSL.L CODE_FL_82C8C4                      ; $8ABD7D |
  CMP.W #$0070                              ; $8ABD81 |
  BPL CODE_8ABD8D                           ; $8ABD84 |
  LDA.W #$0070                              ; $8ABD86 |
  STA.B $35,X                               ; $8ABD89 |
  STZ.B $2A,X                               ; $8ABD8B |

CODE_8ABD8D:
  JSL.L CODE_FL_82CAD8                      ; $8ABD8D |
  BNE CODE_8ABDA1                           ; $8ABD91 |
  DEC.B $40,X                               ; $8ABD93 |
  BNE CODE_8ABDA1                           ; $8ABD95 |
  JSR.W CODE_FN_8ABE99                      ; $8ABD97 |
  STZ.B $3A,X                               ; $8ABD9A |
  LDA.W #$0004                              ; $8ABD9C |
  STA.B $1A,X                               ; $8ABD9F |

CODE_8ABDA1:
  RTL                                       ; $8ABDA1 |

CODE_8ABDA2:
  LDA.W #$FD00                              ; $8ABDA2 |
  STA.B $2A,X                               ; $8ABDA5 |
  INC.B $1A,X                               ; $8ABDA7 |

CODE_8ABDA9:
  LDA.W #$0001                              ; $8ABDA9 |
  JSR.W CODE_FN_8ABEA4                      ; $8ABDAC |
  JSL.L CODE_FL_82C8C4                      ; $8ABDAF |
  BPL CODE_8ABDB9                           ; $8ABDB3 |
  JML.L CODE_FL_82CC9F                      ; $8ABDB5 |

CODE_8ABDB9:
  RTL                                       ; $8ABDB9 |

CODE_8ABDBA:
  LDA.W #$0060                              ; $8ABDBA |
  LDY.W #$0580                              ; $8ABDBD |
  JSR.W CODE_FN_8ABE2F                      ; $8ABDC0 |
  LDA.W #$0068                              ; $8ABDC3 |
  LDY.W #$05E0                              ; $8ABDC6 |
  JSR.W CODE_FN_8ABE2F                      ; $8ABDC9 |
  LDA.W #$0070                              ; $8ABDCC |
  LDY.W #$0640                              ; $8ABDCF |
  JSR.W CODE_FN_8ABE2F                      ; $8ABDD2 |
  LDA.W #$0078                              ; $8ABDD5 |
  LDY.W #$06A0                              ; $8ABDD8 |
  JSR.W CODE_FN_8ABE2F                      ; $8ABDDB |
  LDY.W #$0700                              ; $8ABDDE |
  JSL.L CODE_FL_82CC97                      ; $8ABDE1 |
  LDY.W #$0760                              ; $8ABDE5 |
  JSL.L CODE_FL_82CC97                      ; $8ABDE8 |
  LDA.W #$F400                              ; $8ABDEC |
  STA.B $28,X                               ; $8ABDEF |
  LDA.B $2D,X                               ; $8ABDF1 |
  EOR.W #$FFFF                              ; $8ABDF3 |
  INC A                                     ; $8ABDF6 |
  CMP.W #$8000                              ; $8ABDF7 |
  ROR A                                     ; $8ABDFA |
  CMP.W #$8000                              ; $8ABDFB |
  ROR A                                     ; $8ABDFE |
  CMP.W #$8000                              ; $8ABDFF |
  ROR A                                     ; $8ABE02 |
  CMP.W #$8000                              ; $8ABE03 |
  ROR A                                     ; $8ABE06 |
  CMP.W #$8000                              ; $8ABE07 |
  ROR A                                     ; $8ABE0A |
  CMP.W #$8000                              ; $8ABE0B |
  ROR A                                     ; $8ABE0E |
  XBA                                       ; $8ABE0F |
  STA.B $26,X                               ; $8ABE10 |
  JSL.L CODE_FL_82B31C                      ; $8ABE12 |
  LDA.W #$0023                              ; $8ABE16 |
  JSL.L push_sound_queue                    ; $8ABE19 |
  LDA.W #$0010                              ; $8ABE1D |
  STA.B $1A,X                               ; $8ABE20 |
  LDA.W #$0001                              ; $8ABE22 |
  STA.W $1CBC                               ; $8ABE25 |
  LDA.W #$00C0                              ; $8ABE28 |
  STA.W $1CBE                               ; $8ABE2B |
  RTL                                       ; $8ABE2E |

CODE_FN_8ABE2F:
  STA.B $00                                 ; $8ABE2F |
  LDA.W $0018,Y                             ; $8ABE31 |
  BEQ CODE_8ABE41                           ; $8ABE34 |
  LDA.W #$0011                              ; $8ABE36 |
  STA.W $001A,Y                             ; $8ABE39 |
  LDA.B $00                                 ; $8ABE3C |
  STA.W $0042,Y                             ; $8ABE3E |

CODE_8ABE41:
  RTS                                       ; $8ABE41 |

CODE_8ABE42:
  JSL.L CODE_FL_82D1BF                      ; $8ABE42 |
  LDA.B $42                                 ; $8ABE46 |
  AND.W #$0003                              ; $8ABE48 |
  BNE CODE_8ABE54                           ; $8ABE4B |
  LDY.W #$0002                              ; $8ABE4D |
  JSL.L CODE_FL_82B14B                      ; $8ABE50 |

CODE_8ABE54:
  JSL.L CODE_FL_82C87C                      ; $8ABE54 |
  JSL.L CODE_FL_82CAD8                      ; $8ABE58 |
  BNE CODE_8ABE66                           ; $8ABE5C |
  JSL.L CODE_FL_82B31C                      ; $8ABE5E |
  JML.L CODE_FL_82CC9F                      ; $8ABE62 |

CODE_8ABE66:
  RTL                                       ; $8ABE66 |

CODE_8ABE67:
  JSL.L CODE_FL_82D1BF                      ; $8ABE67 |
  JSL.L CODE_FL_82CAD8                      ; $8ABE6B |
  BNE CODE_8ABE98                           ; $8ABE6F |
  LDA.W #$0020                              ; $8ABE71 |
  STA.B $40,X                               ; $8ABE74 |
  JSR.W CODE_FN_8ABE99                      ; $8ABE76 |
  INC.B $1A,X                               ; $8ABE79 |

CODE_8ABE7B:
  LDA.W #$0002                              ; $8ABE7B |
  JSR.W CODE_FN_8ABEA4                      ; $8ABE7E |
  JSL.L CODE_FL_82D1BF                      ; $8ABE81 |
  DEC.B $42,X                               ; $8ABE85 |
  BPL CODE_8ABE98                           ; $8ABE87 |
  JSL.L CODE_FL_82B31C                      ; $8ABE89 |
  LDA.W #$0023                              ; $8ABE8D |
  JSL.L push_sound_queue                    ; $8ABE90 |
  JML.L CODE_FL_82CC9F                      ; $8ABE94 |

CODE_8ABE98:
  RTL                                       ; $8ABE98 |

CODE_FN_8ABE99:
  STZ.B $1C,X                               ; $8ABE99 |
  STZ.B $1E,X                               ; $8ABE9B |
  STZ.B $20,X                               ; $8ABE9D |
  STZ.B $22,X                               ; $8ABE9F |
  STZ.B $24,X                               ; $8ABEA1 |
  RTS                                       ; $8ABEA3 |

CODE_FN_8ABEA4:
  DEC.B $1E,X                               ; $8ABEA4 |
  BPL CODE_8ABEC6                           ; $8ABEA6 |
  STA.B $1E,X                               ; $8ABEA8 |
  LDA.B $22,X                               ; $8ABEAA |
  INC A                                     ; $8ABEAC |
  AND.W #$0003                              ; $8ABEAD |
  STA.B $22,X                               ; $8ABEB0 |
  ASL A                                     ; $8ABEB2 |
  STA.B $24,X                               ; $8ABEB3 |
  ASL A                                     ; $8ABEB5 |
  TAY                                       ; $8ABEB6 |
  LDA.W LOOSE_OP_00A0AD,Y                   ; $8ABEB7 |
  STA.B $00,X                               ; $8ABEBA |
  LDA.B $04,X                               ; $8ABEBC |
  AND.W #$DFDF                              ; $8ABEBE |
  ORA.W CODE_00A0AF,Y                       ; $8ABEC1 |
  STA.B $04,X                               ; $8ABEC4 |

CODE_8ABEC6:
  RTS                                       ; $8ABEC6 |

CODE_FN_8ABEC7:
  DEC.B $1E,X                               ; $8ABEC7 |
  BPL CODE_8ABEE2                           ; $8ABEC9 |
  STA.B $1E,X                               ; $8ABECB |
  LDA.B $24,X                               ; $8ABECD |
  INC A                                     ; $8ABECF |
  INC A                                     ; $8ABED0 |
  AND.W #$0006                              ; $8ABED1 |
  STA.B $24,X                               ; $8ABED4 |
  LDA.W #$337A                              ; $8ABED6 |
  STA.B $00,X                               ; $8ABED9 |
  LDA.B $04,X                               ; $8ABEDB |
  EOR.W #$2020                              ; $8ABEDD |
  STA.B $04,X                               ; $8ABEE0 |

CODE_8ABEE2:
  RTS                                       ; $8ABEE2 |

  LDY.B $38,X                               ; $8ABEE3 |
  LDA.W $0018,X                             ; $8ABEE5 |
  BNE CODE_8ABEEE                           ; $8ABEE8 |
  JML.L CODE_FL_82CC9F                      ; $8ABEEA |

CODE_8ABEEE:
  LDA.W $0002,Y                             ; $8ABEEE |
  AND.W #$0080                              ; $8ABEF1 |
  STA.B $02,X                               ; $8ABEF4 |
  LDA.W $0004,Y                             ; $8ABEF6 |
  AND.W #$1898                              ; $8ABEF9 |
  STA.B $04,X                               ; $8ABEFC |
  LDA.W $0014,Y                             ; $8ABEFE |
  INC A                                     ; $8ABF01 |
  STA.B $14,X                               ; $8ABF02 |
  LDA.W $0009,Y                             ; $8ABF04 |
  STA.B $09,X                               ; $8ABF07 |
  LDA.W $000D,Y                             ; $8ABF09 |
  STA.B $0D,X                               ; $8ABF0C |
  LDA.W $0040,Y                             ; $8ABF0E |
  BNE CODE_8ABF22                           ; $8ABF11 |
  LDA.W $0038,Y                             ; $8ABF13 |
  ASL A                                     ; $8ABF16 |
  ASL A                                     ; $8ABF17 |
  ASL A                                     ; $8ABF18 |
  ADC.W $0024,Y                             ; $8ABF19 |
  TAY                                       ; $8ABF1C |
  LDA.W LOOSE_OP_00A0BD,Y                   ; $8ABF1D |
  BRA CODE_8ABF2A                           ; $8ABF20 |

CODE_8ABF22:
  LDA.W $0038,Y                             ; $8ABF22 |
  ASL A                                     ; $8ABF25 |
  TAY                                       ; $8ABF26 |
  LDA.W CODE_00A0DD,Y                       ; $8ABF27 |

CODE_8ABF2A:
  STA.B $00,X                               ; $8ABF2A |
  RTL                                       ; $8ABF2C |

  LDA.B $1A,X                               ; $8ABF2D |
  BNE CODE_8ABF49                           ; $8ABF2F |
  LDA.W #$FE00                              ; $8ABF31 |
  STA.B $28,X                               ; $8ABF34 |
  LDY.W #$83EC                              ; $8ABF36 |
  LDA.W #$0004                              ; $8ABF39 |
  JSL.L CODE_FL_828AD9                      ; $8ABF3C |
  LDY.W #$8BD1                              ; $8ABF40 |
  JSL.L CODE_FL_82B81C                      ; $8ABF43 |
  INC.B $1A,X                               ; $8ABF47 |

CODE_8ABF49:
  JSL.L CODE_FL_82C89B                      ; $8ABF49 |
  LDA.B $1C,X                               ; $8ABF4D |
  BNE CODE_8ABF55                           ; $8ABF4F |
  JML.L CODE_FL_82CC9F                      ; $8ABF51 |

CODE_8ABF55:
  LDA.B $38,X                               ; $8ABF55 |
  BNE CODE_8ABF5F                           ; $8ABF57 |
  JSL.L CODE_FL_82B940                      ; $8ABF59 |
  INC.B $38,X                               ; $8ABF5D |

CODE_8ABF5F:
  RTL                                       ; $8ABF5F |

  LDA.B $1A,X                               ; $8ABF60 |
  BNE CODE_8ABF82                           ; $8ABF62 |
  LDY.W #$85CC                              ; $8ABF64 |
  JSL.L CODE_FL_828AC3                      ; $8ABF67 |
  LDA.W #$0040                              ; $8ABF6B |
  STA.B $31,X                               ; $8ABF6E |
  LDA.W #$0040                              ; $8ABF70 |
  STA.B $35,X                               ; $8ABF73 |
  LDA.B $86                                 ; $8ABF75 |
  AND.W #$0002                              ; $8ABF77 |
  TAY                                       ; $8ABF7A |
  LDA.W LOOSE_OP_00A105,Y                   ; $8ABF7B |
  STA.B $2D,X                               ; $8ABF7E |
  INC.B $1A,X                               ; $8ABF80 |

CODE_8ABF82:
  LDA.W #$0008                              ; $8ABF82 |
  SEC                                       ; $8ABF85 |
  SBC.W $1CB2                               ; $8ABF86 |
  BPL CODE_8ABF8E                           ; $8ABF89 |
  LDA.W #$0008                              ; $8ABF8B |

CODE_8ABF8E:
  ASL A                                     ; $8ABF8E |
  CLC                                       ; $8ABF8F |
  ADC.B $35,X                               ; $8ABF90 |
  STA.B $35,X                               ; $8ABF92 |
  CMP.W #$0280                              ; $8ABF94 |
  BMI CODE_8ABF9D                           ; $8ABF97 |
  JML.L CODE_FL_82CC9F                      ; $8ABF99 |

CODE_8ABF9D:
  RTL                                       ; $8ABF9D |

  LDA.B $1A,X                               ; $8ABF9E |
  BNE CODE_8ABFC9                           ; $8ABFA0 |
  LDA.B $2A,X                               ; $8ABFA2 |
  ASL A                                     ; $8ABFA4 |
  ASL A                                     ; $8ABFA5 |
  ASL A                                     ; $8ABFA6 |
  TAY                                       ; $8ABFA7 |
  LDA.W CODE_00A109,Y                       ; $8ABFA8 |
  STA.B $00,X                               ; $8ABFAB |
  LDA.B $04,X                               ; $8ABFAD |
  ORA.W CODE_00A10B,Y                       ; $8ABFAF |
  STA.B $04,X                               ; $8ABFB2 |
  LDA.W LOOSE_OP_00A10D,Y                   ; $8ABFB4 |
  STA.B $26,X                               ; $8ABFB7 |
  LDA.W CODE_00A10F,Y                       ; $8ABFB9 |
  STA.B $28,X                               ; $8ABFBC |
  LDA.B $2C,X                               ; $8ABFBE |
  BNE CODE_8ABFC7                           ; $8ABFC0 |
  LDA.W #$0020                              ; $8ABFC2 |
  STA.B $2C,X                               ; $8ABFC5 |

CODE_8ABFC7:
  INC.B $1A,X                               ; $8ABFC7 |

CODE_8ABFC9:
  DEC.B $2C,X                               ; $8ABFC9 |
  BPL CODE_8ABFD1                           ; $8ABFCB |
  JML.L CODE_FL_82CCD2                      ; $8ABFCD |

CODE_8ABFD1:
  JSL.L CODE_FL_82C842                      ; $8ABFD1 |
  JML.L CODE_FL_82CB09                      ; $8ABFD5 |

  LDA.B $1A,X                               ; $8ABFD9 |
  BNE CODE_8AC002                           ; $8ABFDB |
  LDY.W #$85FC                              ; $8ABFDD |
  JSL.L CODE_FL_828AC3                      ; $8ABFE0 |
  LDA.W #$0040                              ; $8ABFE4 |
  STA.B $31,X                               ; $8ABFE7 |
  LDA.W #$0040                              ; $8ABFE9 |
  STA.B $35,X                               ; $8ABFEC |
  LDA.B $86                                 ; $8ABFEE |
  AND.W #$0002                              ; $8ABFF0 |
  TAY                                       ; $8ABFF3 |
  LDA.W LOOSE_OP_00A105,Y                   ; $8ABFF4 |
  STA.B $2D,X                               ; $8ABFF7 |
  BPL CODE_8AC000                           ; $8ABFF9 |
  LDA.W #$2020                              ; $8ABFFB |
  STA.B $04,X                               ; $8ABFFE |

CODE_8AC000:
  INC.B $1A,X                               ; $8AC000 |

CODE_8AC002:
  LDA.W #$0008                              ; $8AC002 |
  SEC                                       ; $8AC005 |
  SBC.W $1CB2                               ; $8AC006 |
  BPL CODE_8AC00E                           ; $8AC009 |
  LDA.W #$0008                              ; $8AC00B |

CODE_8AC00E:
  ASL A                                     ; $8AC00E |
  CLC                                       ; $8AC00F |
  ADC.B $35,X                               ; $8AC010 |
  STA.B $35,X                               ; $8AC012 |
  CMP.W #$0280                              ; $8AC014 |
  BMI CODE_8AC01D                           ; $8AC017 |
  JML.L CODE_FL_82CC9F                      ; $8AC019 |

CODE_8AC01D:
  RTL                                       ; $8AC01D |

  LDA.B $1A,X                               ; $8AC01E |
  PHX                                       ; $8AC020 |
  ASL A                                     ; $8AC021 |
  TAX                                       ; $8AC022 |
  LDA.L PTR16_8AC02D,X                      ; $8AC023 |
  PLX                                       ; $8AC027 |
  STA.B $00                                 ; $8AC028 |
  JMP.W ($0000)                             ; $8AC02A |

PTR16_8AC02D:
  dw CODE_8AC033                            ; $8AC02D |
  dw CODE_8AC053                            ; $8AC02F |
  dw CODE_8AC069                            ; $8AC031 |

CODE_8AC033:
  LDY.B $38,X                               ; $8AC033 |
  LDA.W LOOSE_OP_00A171,Y                   ; $8AC035 |
  STA.B $3A,X                               ; $8AC038 |
  LDA.W CODE_00A173,Y                       ; $8AC03A |
  CLC                                       ; $8AC03D |
  ADC.B $2D,X                               ; $8AC03E |
  STA.B $2D,X                               ; $8AC040 |
  LDA.B $31,X                               ; $8AC042 |
  SEC                                       ; $8AC044 |
  SBC.W #$00A0                              ; $8AC045 |
  STA.B $31,X                               ; $8AC048 |
  LDY.W #$8BD4                              ; $8AC04A |
  JSL.L CODE_FL_82B81C                      ; $8AC04D |
  INC.B $1A,X                               ; $8AC051 |

CODE_8AC053:
  DEC.B $3A,X                               ; $8AC053 |
  BPL CODE_8AC068                           ; $8AC055 |
  LDA.W #$0002                              ; $8AC057 |
  LDY.W #$861E                              ; $8AC05A |
  JSL.L CODE_FL_828ACB                      ; $8AC05D |
  LDA.W #$FD00                              ; $8AC061 |
  STA.B $2A,X                               ; $8AC064 |
  INC.B $1A,X                               ; $8AC066 |

CODE_8AC068:
  RTL                                       ; $8AC068 |

CODE_8AC069:
  JSL.L CODE_FL_82C8C4                      ; $8AC069 |
  JSL.L CODE_FL_82CAD8                      ; $8AC06D |
  BNE CODE_8AC07F                           ; $8AC071 |
  LDA.B $35,X                               ; $8AC073 |
  CMP.W #$0180                              ; $8AC075 |
  BMI CODE_8AC07F                           ; $8AC078 |
  LDA.W #$FC00                              ; $8AC07A |
  STA.B $28,X                               ; $8AC07D |

CODE_8AC07F:
  LDA.B $35,X                               ; $8AC07F |
  CMP.W #$0070                              ; $8AC081 |
  BPL CODE_8AC08A                           ; $8AC084 |
  JML.L CODE_FL_82CC9F                      ; $8AC086 |

CODE_8AC08A:
  JML.L CODE_FL_82B940                      ; $8AC08A |

  dw CODE_8AC094                            ; $8AC08E |
  dw CODE_8AC120                            ; $8AC090 |
  dw CODE_8AC165                            ; $8AC092 |

CODE_8AC094:
  LDA.W #$000C                              ; $8AC094 |
  STA.B $3A,X                               ; $8AC097 |
  LDA.B $3E,X                               ; $8AC099 |
  STA.B $00                                 ; $8AC09B |
  LDA.B $40,X                               ; $8AC09D |
  STA.B $02                                 ; $8AC09F |
  LDA.B $42,X                               ; $8AC0A1 |
  STA.B $04                                 ; $8AC0A3 |
  LDA.W #$0006                              ; $8AC0A5 |
  JSL.L CODE_FL_82D136                      ; $8AC0A8 |
  LDA.W #$0013                              ; $8AC0AC |
  STA.W $0078,X                             ; $8AC0AF |
  STA.W $00D8,X                             ; $8AC0B2 |
  STA.W $0138,X                             ; $8AC0B5 |
  STA.W $0198,X                             ; $8AC0B8 |
  LDA.B $2D,X                               ; $8AC0BB |
  SEC                                       ; $8AC0BD |
  SBC.B $3A,X                               ; $8AC0BE |
  STA.W $008D,X                             ; $8AC0C0 |
  STA.W $014D,X                             ; $8AC0C3 |
  LDA.B $2D,X                               ; $8AC0C6 |
  CLC                                       ; $8AC0C8 |
  ADC.B $3A,X                               ; $8AC0C9 |
  STA.W $00ED,X                             ; $8AC0CB |
  STA.W $01AD,X                             ; $8AC0CE |
  LDA.B $31,X                               ; $8AC0D1 |
  STA.W $0091,X                             ; $8AC0D3 |
  STA.W $00F1,X                             ; $8AC0D6 |
  STA.W $0151,X                             ; $8AC0D9 |
  STA.W $01B1,X                             ; $8AC0DC |
  LDA.B $35,X                               ; $8AC0DF |
  STA.W $0095,X                             ; $8AC0E1 |
  STA.W $00F5,X                             ; $8AC0E4 |
  STA.W $0155,X                             ; $8AC0E7 |
  STA.W $01B5,X                             ; $8AC0EA |
  LDA.B $26,X                               ; $8AC0ED |
  STA.W $0146,X                             ; $8AC0EF |
  STA.W $01A6,X                             ; $8AC0F2 |
  LDA.B $28,X                               ; $8AC0F5 |
  STA.W $0148,X                             ; $8AC0F7 |
  STA.W $01A8,X                             ; $8AC0FA |
  LDA.B $2A,X                               ; $8AC0FD |
  STA.W $014A,X                             ; $8AC0FF |
  STA.W $01AA,X                             ; $8AC102 |
  LDA.W #$0010                              ; $8AC105 |
  STA.W $015A,X                             ; $8AC108 |
  STA.W $01BA,X                             ; $8AC10B |
  LDA.W #$0001                              ; $8AC10E |
  STA.W $013A,X                             ; $8AC111 |
  STA.W $019A,X                             ; $8AC114 |
  JSL.L CODE_FL_82C3BD                      ; $8AC117 |
  STZ.B $44,X                               ; $8AC11B |
  INC.B $1A,X                               ; $8AC11D |
  RTL                                       ; $8AC11F |

CODE_8AC120:
  JSL.L CODE_FL_82C8BC                      ; $8AC120 |
  CMP.W #$00A0                              ; $8AC124 |
  BPL CODE_8AC133                           ; $8AC127 |
  LDA.W #$00A0                              ; $8AC129 |
  STA.B $35,X                               ; $8AC12C |
  LDA.W #$0002                              ; $8AC12E |
  STA.B $1A,X                               ; $8AC131 |

CODE_8AC133:
  LDA.B $31,X                               ; $8AC133 |
  CMP.W #$0040                              ; $8AC135 |
  BMI CODE_8AC144                           ; $8AC138 |
  LDA.W #$003F                              ; $8AC13A |
  STA.B $31,X                               ; $8AC13D |
  LDA.W #$0002                              ; $8AC13F |
  STA.B $1A,X                               ; $8AC142 |

CODE_8AC144:
  LDA.B $2D,X                               ; $8AC144 |
  SEC                                       ; $8AC146 |
  SBC.B $3A,X                               ; $8AC147 |
  STA.W $008D,X                             ; $8AC149 |
  LDA.B $2D,X                               ; $8AC14C |
  CLC                                       ; $8AC14E |
  ADC.B $3A,X                               ; $8AC14F |
  STA.W $00ED,X                             ; $8AC151 |
  LDA.B $31,X                               ; $8AC154 |
  STA.W $0091,X                             ; $8AC156 |
  STA.W $00F1,X                             ; $8AC159 |
  LDA.B $35,X                               ; $8AC15C |
  STA.W $0095,X                             ; $8AC15E |
  STA.W $00F5,X                             ; $8AC161 |
  RTL                                       ; $8AC164 |

CODE_8AC165:
  LDA.B $44,X                               ; $8AC165 |
  BNE CODE_8AC172                           ; $8AC167 |
  INC.B $44,X                               ; $8AC169 |
  LDA.W #$000D                              ; $8AC16B |
  JSL.L push_sound_queue                    ; $8AC16E |

CODE_8AC172:
  LDA.W #$0001                              ; $8AC172 |
  STA.W $1CB0                               ; $8AC175 |
  LDA.B $3C,X                               ; $8AC178 |
  AND.W #$0003                              ; $8AC17A |
  BNE CODE_8AC18E                           ; $8AC17D |
  LDA.W #$0DC0                              ; $8AC17F |
  STA.B $02                                 ; $8AC182 |
  LDA.W #$8072                              ; $8AC184 |
  LDY.W #$0AC0                              ; $8AC187 |
  JSL.L CODE_FL_82CD4C                      ; $8AC18A |

CODE_8AC18E:
  INC.B $3C,X                               ; $8AC18E |
  LDA.W $0155,X                             ; $8AC190 |
  CMP.B $35,X                               ; $8AC193 |
  BEQ CODE_8AC19E                           ; $8AC195 |
  LDA.W $0151,X                             ; $8AC197 |
  CMP.B $31,X                               ; $8AC19A |
  BNE CODE_8AC1A2                           ; $8AC19C |

CODE_8AC19E:
  JML.L CODE_FL_82CD05                      ; $8AC19E |

CODE_8AC1A2:
  RTL                                       ; $8AC1A2 |

  dw CODE_8AC1A7                            ; $8AC1A3 |
  dw CODE_8AC1A8                            ; $8AC1A5 |

CODE_8AC1A7:
  RTL                                       ; $8AC1A7 |

CODE_8AC1A8:
  DEC.B $3A,X                               ; $8AC1A8 |
  BPL CODE_8AC1C8                           ; $8AC1AA |
  STZ.B $3A,X                               ; $8AC1AC |
  JSL.L CODE_FL_82C8BC                      ; $8AC1AE |
  CMP.W #$00A0                              ; $8AC1B2 |
  BPL CODE_8AC1BC                           ; $8AC1B5 |
  LDA.W #$00A0                              ; $8AC1B7 |
  STA.B $35,X                               ; $8AC1BA |

CODE_8AC1BC:
  LDA.B $31,X                               ; $8AC1BC |
  CMP.W #$0040                              ; $8AC1BE |
  BMI CODE_8AC1C8                           ; $8AC1C1 |
  LDA.W #$003F                              ; $8AC1C3 |
  STA.B $31,X                               ; $8AC1C6 |

CODE_8AC1C8:
  RTL                                       ; $8AC1C8 |

  LDX.W #DATA_8883E5                        ; $8AC1C9 |
  JSL.L sound_transfer_blocks               ; $8AC1CC |
  LDX.W #DATA_8883ED                        ; $8AC1D0 |
  JSL.L sound_transfer_blocks               ; $8AC1D3 |
  LDX.W #DATA_888414                        ; $8AC1D7 |
  JSL.L sound_transfer_blocks               ; $8AC1DA |
  LDA.W #$00C0                              ; $8AC1DE |
  JSL.L CODE_FL_8AF606                      ; $8AC1E1 |
  LDY.W #$8DF4                              ; $8AC1E5 |
  LDA.W #$000C                              ; $8AC1E8 |
  JSL.L CODE_FL_80C2C9                      ; $8AC1EB |
  LDY.W #$8E94                              ; $8AC1EF |
  LDA.W #$001A                              ; $8AC1F2 |
  JSL.L CODE_FL_80C2C4                      ; $8AC1F5 |
  LDA.W #$0005                              ; $8AC1F9 |
  STA.W $1CB2                               ; $8AC1FC |
  LDX.W #$0DC0                              ; $8AC1FF |
  LDA.W #$8070                              ; $8AC202 |
  STA.B $18,X                               ; $8AC205 |
  LDA.W #$1000                              ; $8AC207 |
  STA.B $10,X                               ; $8AC20A |
  LDA.W #$0160                              ; $8AC20C |
  STA.W $1CB8                               ; $8AC20F |
  LDY.W #$0016                              ; $8AC212 |
  STY.W $1CA0                               ; $8AC215 |
  LDX.W #$1630                              ; $8AC218 |
  LDA.W #$0007                              ; $8AC21B |
  STA.B $18,X                               ; $8AC21E |
  RTL                                       ; $8AC220 |

  LDY.W #$0400                              ; $8AC221 |
  JSL.L CODE_FL_809725                      ; $8AC224 |
  LDA.W #$97CE                              ; $8AC228 |
  LDY.W #$9815                              ; $8AC22B |
  STY.W $1CA6                               ; $8AC22E |
  JSL.L CODE_FL_8AB2FD                      ; $8AC231 |
  RTL                                       ; $8AC235 |

  LDY.W #$928A                              ; $8AC236 |
  LDA.W #$8E74                              ; $8AC239 |
  JSL.L CODE_FL_82D181                      ; $8AC23C |
  LDA.B $1A,X                               ; $8AC240 |
  PHX                                       ; $8AC242 |
  ASL A                                     ; $8AC243 |
  TAX                                       ; $8AC244 |
  LDA.L PTR16_8AC24F,X                      ; $8AC245 |
  PLX                                       ; $8AC249 |
  STA.B $00                                 ; $8AC24A |
  JMP.W ($0000)                             ; $8AC24C |

PTR16_8AC24F:
  dw CODE_8AC275                            ; $8AC24F |
  dw CODE_8AC295                            ; $8AC251 |
  dw CODE_8AC2A4                            ; $8AC253 |
  dw CODE_8AC2B5                            ; $8AC255 |
  dw CODE_8AC2D3                            ; $8AC257 |
  dw CODE_8AC331                            ; $8AC259 |
  dw CODE_8AC353                            ; $8AC25B |
  dw CODE_8AC445                            ; $8AC25D |
  dw CODE_8AC44A                            ; $8AC25F |
  dw CODE_8AC46F                            ; $8AC261 |
  dw CODE_8AC4A2                            ; $8AC263 |
  dw CODE_8AC39F                            ; $8AC265 |
  dw CODE_8AC3A4                            ; $8AC267 |
  dw CODE_8AC3D2                            ; $8AC269 |
  dw CODE_8AC3E4                            ; $8AC26B |
  dw CODE_8AC4ED                            ; $8AC26D |
  dw CODE_8AC504                            ; $8AC26F |
  dw CODE_8AC538                            ; $8AC271 |
  dw CODE_8AC566                            ; $8AC273 |

CODE_8AC275:
  STZ.B $2D,X                               ; $8AC275 |
  LDA.W #$0150                              ; $8AC277 |
  STA.B $31,X                               ; $8AC27A |
  LDA.W #$03F0                              ; $8AC27C |
  STA.B $35,X                               ; $8AC27F |
  LDA.W #$01D0                              ; $8AC281 |
  STA.W $1FD4                               ; $8AC284 |
  LDY.W #$8BD7                              ; $8AC287 |
  JSL.L CODE_FL_82B81C                      ; $8AC28A |
  LDA.W #$0060                              ; $8AC28E |
  STA.B $38,X                               ; $8AC291 |
  INC.B $1A,X                               ; $8AC293 |

CODE_8AC295:
  DEC.B $38,X                               ; $8AC295 |
  BPL CODE_8AC2A0                           ; $8AC297 |
  LDA.W #$0060                              ; $8AC299 |
  STA.B $44,X                               ; $8AC29C |
  INC.B $1A,X                               ; $8AC29E |

CODE_8AC2A0:
  JML.L CODE_JL_82CF65                      ; $8AC2A0 |

CODE_8AC2A4:
  LDA.W #$80C7                              ; $8AC2A4 |
  JSL.L CODE_FL_809934                      ; $8AC2A7 |
  BCC CODE_8AC2B4                           ; $8AC2AB |
  LDA.W #$0040                              ; $8AC2AD |
  STA.B $38,X                               ; $8AC2B0 |
  INC.B $1A,X                               ; $8AC2B2 |

CODE_8AC2B4:
  RTL                                       ; $8AC2B4 |

CODE_8AC2B5:
  LDA.L $7E7C04                             ; $8AC2B5 |
  BEQ CODE_8AC2C2                           ; $8AC2B9 |
  JSL.L CODE_FL_82D565                      ; $8AC2BB |
  INC.W $1CB0                               ; $8AC2BF |

CODE_8AC2C2:
  LDA.W #$812D                              ; $8AC2C2 |
  JSL.L CODE_FL_809934                      ; $8AC2C5 |
  BCC CODE_8AC2D2                           ; $8AC2C9 |
  LDA.W #$0060                              ; $8AC2CB |
  STA.B $38,X                               ; $8AC2CE |
  INC.B $1A,X                               ; $8AC2D0 |

CODE_8AC2D2:
  RTL                                       ; $8AC2D2 |

CODE_8AC2D3:
  LDA.B $38,X                               ; $8AC2D3 |
  CMP.W #$0030                              ; $8AC2D5 |
  BNE CODE_8AC2DE                           ; $8AC2D8 |
  JSL.L CODE_FL_80893F                      ; $8AC2DA |

CODE_8AC2DE:
  LDA.B $38,X                               ; $8AC2DE |
  CMP.W #$0001                              ; $8AC2E0 |
  BNE CODE_8AC2EC                           ; $8AC2E3 |
  LDY.W #$002C                              ; $8AC2E5 |
  JSL.L CODE_FL_808993                      ; $8AC2E8 |

CODE_8AC2EC:
  DEC.B $38,X                               ; $8AC2EC |
  BPL CODE_8AC307                           ; $8AC2EE |
  LDA.W #$FF00                              ; $8AC2F0 |
  LDY.W #$1000                              ; $8AC2F3 |
  JSL.L CODE_FL_82CB4A                      ; $8AC2F6 |
  LDA.W #$0001                              ; $8AC2FA |
  JSL.L CODE_FL_82D03F                      ; $8AC2FD |
  BCC CODE_8AC312                           ; $8AC301 |
  JML.L CODE_JL_82CF65                      ; $8AC303 |

CODE_8AC307:
  JSL.L CODE_FL_82D565                      ; $8AC307 |
  INC.W $1CB0                               ; $8AC30B |
  JML.L CODE_JL_82CF65                      ; $8AC30E |

CODE_8AC312:
  LDA.W #$0088                              ; $8AC312 |
  JSL.L CODE_FL_8089BD                      ; $8AC315 |
  JSL.L CODE_FL_8AB9E2                      ; $8AC319 |
  STZ.W $1CBC                               ; $8AC31D |
  PHX                                       ; $8AC320 |
  LDX.W #DATA_8882BC                        ; $8AC321 |
  JSL.L sound_transfer_blocks               ; $8AC324 |
  PLX                                       ; $8AC328 |
  LDY.W #$0017                              ; $8AC329 |
  STY.W $1CA0                               ; $8AC32C |
  INC.B $1A,X                               ; $8AC32F |

CODE_8AC331:
  LDY.W #$0800                              ; $8AC331 |
  LDA.W #$01C0                              ; $8AC334 |
  JSL.L CODE_FL_82CB77                      ; $8AC337 |
  BNE CODE_8AC349                           ; $8AC33B |
  LDA.W #$0080                              ; $8AC33D |
  STA.B $4E,X                               ; $8AC340 |
  LDA.W #$0200                              ; $8AC342 |
  STA.B $26,X                               ; $8AC345 |
  INC.B $1A,X                               ; $8AC347 |

CODE_8AC349:
  LDA.W #$0003                              ; $8AC349 |
  JSR.W CODE_FN_8AC585                      ; $8AC34C |
  JML.L CODE_JL_82CF65                      ; $8AC34F |

CODE_8AC353:
  LDA.B $A2                                 ; $8AC353 |
  BEQ CODE_JP_8AC360                        ; $8AC355 |
  LDA.W $1CBC                               ; $8AC357 |
  BNE CODE_JP_8AC360                        ; $8AC35A |
  DEC.B $4E,X                               ; $8AC35C |
  BMI CODE_8AC386                           ; $8AC35E |

CODE_JP_8AC360:
  LDA.W #$FF40                              ; $8AC360 |
  LDY.W #$0400                              ; $8AC363 |
  JSL.L CODE_FL_82C9A6                      ; $8AC366 |
  TDC                                       ; $8AC36A |
  LDY.W #$0A00                              ; $8AC36B |
  JSL.L CODE_FL_82C957                      ; $8AC36E |
  LDA.W #$0290                              ; $8AC372 |
  LDY.W #$0200                              ; $8AC375 |
  JSL.L CODE_FL_82C9EF                      ; $8AC378 |
  LDA.B $27,X                               ; $8AC37C |
  JSL.L CODE_FL_82D02E                      ; $8AC37E |
  JML.L CODE_JL_82CF65                      ; $8AC382 |

CODE_8AC386:
  LDA.B $52,X                               ; $8AC386 |
  INC A                                     ; $8AC388 |
  AND.W #$0007                              ; $8AC389 |
  STA.B $52,X                               ; $8AC38C |
  ASL A                                     ; $8AC38E |
  ASL A                                     ; $8AC38F |
  TAY                                       ; $8AC390 |
  LDA.W LOOSE_OP_00A181,Y                   ; $8AC391 |
  STA.B $00                                 ; $8AC394 |
  LDA.W LOOSE_OP_00A183,Y                   ; $8AC396 |
  STA.W $004E,X                             ; $8AC399 |
  JMP.W ($0000)                             ; $8AC39C |

CODE_8AC39F:
  LDA.W #$000C                              ; $8AC39F |
  STA.B $1A,X                               ; $8AC3A2 |

CODE_8AC3A4:
  LDY.W #$0800                              ; $8AC3A4 |
  LDA.W #$0220                              ; $8AC3A7 |
  JSL.L CODE_FL_82CB77                      ; $8AC3AA |
  BNE CODE_8AC3BD                           ; $8AC3AE |
  LDA.B $86                                 ; $8AC3B0 |
  AND.W #$000E                              ; $8AC3B2 |
  TAY                                       ; $8AC3B5 |
  LDA.W LOOSE_OP_00A1B1,Y                   ; $8AC3B6 |
  STA.B $3A,X                               ; $8AC3B9 |
  INC.B $1A,X                               ; $8AC3BB |

CODE_8AC3BD:
  LDA.W #$FF40                              ; $8AC3BD |
  LDY.W #$0300                              ; $8AC3C0 |
  JSL.L CODE_FL_82C9A6                      ; $8AC3C3 |
  LDA.W #$0003                              ; $8AC3C7 |
  JSL.L CODE_FL_82D03F                      ; $8AC3CA |
  JML.L CODE_JL_82CF65                      ; $8AC3CE |

CODE_8AC3D2:
  LDY.W #$0400                              ; $8AC3D2 |
  LDA.B $3A,X                               ; $8AC3D5 |
  JSL.L CODE_FL_82CB1D                      ; $8AC3D7 |
  BNE CODE_8AC3BD                           ; $8AC3DB |
  LDA.W #$0010                              ; $8AC3DD |
  STA.B $38,X                               ; $8AC3E0 |
  INC.B $1A,X                               ; $8AC3E2 |

CODE_8AC3E4:
  DEC.B $38,X                               ; $8AC3E4 |
  BPL CODE_8AC433                           ; $8AC3E6 |
  LDA.W #$0A00                              ; $8AC3E8 |
  STA.B $2A,X                               ; $8AC3EB |
  LDA.W #$002C                              ; $8AC3ED |
  JSL.L CODE_FL_8089BD                      ; $8AC3F0 |
  LDA.W #$8074                              ; $8AC3F4 |
  JSL.L CODE_FL_82CD2F                      ; $8AC3F7 |
  BCC CODE_8AC42E                           ; $8AC3FB |
  TDC                                       ; $8AC3FD |
  STA.W $0038,Y                             ; $8AC3FE |
  LDA.W #$8074                              ; $8AC401 |
  JSL.L CODE_FL_82CD2F                      ; $8AC404 |
  BCC CODE_8AC42E                           ; $8AC408 |
  LDA.W #$0004                              ; $8AC40A |
  STA.W $0038,Y                             ; $8AC40D |
  LDA.W #$8074                              ; $8AC410 |
  JSL.L CODE_FL_82CD2F                      ; $8AC413 |
  BCC CODE_8AC42E                           ; $8AC417 |
  LDA.W #$0008                              ; $8AC419 |
  STA.W $0038,Y                             ; $8AC41C |
  LDA.W #$8074                              ; $8AC41F |
  JSL.L CODE_FL_82CD2F                      ; $8AC422 |
  BCC CODE_8AC42E                           ; $8AC426 |
  LDA.W #$000C                              ; $8AC428 |
  STA.W $0038,Y                             ; $8AC42B |

CODE_8AC42E:
  LDA.W #$0006                              ; $8AC42E |
  STA.B $1A,X                               ; $8AC431 |

CODE_8AC433:
  LDA.W #$FF40                              ; $8AC433 |
  LDY.W #$0300                              ; $8AC436 |
  JSL.L CODE_FL_82C9A6                      ; $8AC439 |
  JSL.L CODE_FL_82D1BF                      ; $8AC43D |
  JML.L CODE_JL_82CF65                      ; $8AC441 |

CODE_8AC445:
  LDA.W #$0008                              ; $8AC445 |
  STA.B $1A,X                               ; $8AC448 |

CODE_8AC44A:
  LDY.W #$0080                              ; $8AC44A |
  LDA.W #$FF00                              ; $8AC44D |
  JSL.L CODE_FL_82CB4A                      ; $8AC450 |
  LDY.W #$0800                              ; $8AC454 |
  LDA.W #$02D0                              ; $8AC457 |
  JSL.L CODE_FL_82CB77                      ; $8AC45A |
  BNE CODE_8AC46C                           ; $8AC45E |
  LDA.W #$0080                              ; $8AC460 |
  STA.B $38,X                               ; $8AC463 |
  LDA.W #$0003                              ; $8AC465 |
  STA.B $3A,X                               ; $8AC468 |
  INC.B $1A,X                               ; $8AC46A |

CODE_8AC46C:
  JMP.W CODE_JP_8AC360                      ; $8AC46C |

CODE_8AC46F:
  DEC.B $38,X                               ; $8AC46F |
  BPL CODE_8AC489                           ; $8AC471 |
  LDY.W #$0AC0                              ; $8AC473 |
  LDA.W $0018,Y                             ; $8AC476 |
  BNE CODE_8AC489                           ; $8AC479 |
  JSR.W CODE_FN_8AC4AF                      ; $8AC47B |
  DEC.B $3A,X                               ; $8AC47E |
  BNE CODE_8AC489                           ; $8AC480 |
  LDA.W #$0030                              ; $8AC482 |
  STA.B $38,X                               ; $8AC485 |
  INC.B $1A,X                               ; $8AC487 |

CODE_8AC489:
  JSL.L CODE_FL_82D1BF                      ; $8AC489 |
  LDA.W #$FF10                              ; $8AC48D |
  LDY.W #$0300                              ; $8AC490 |
  JSL.L CODE_FL_82C9A6                      ; $8AC493 |
  LDA.W #$0003                              ; $8AC497 |
  JSL.L CODE_FL_82D03F                      ; $8AC49A |
  JML.L CODE_JL_82CF65                      ; $8AC49E |

CODE_8AC4A2:
  DEC.B $38,X                               ; $8AC4A2 |
  BPL CODE_8AC489                           ; $8AC4A4 |
  LDA.W #$0006                              ; $8AC4A6 |
  STA.B $1A,X                               ; $8AC4A9 |
  JML.L CODE_JL_82CF65                      ; $8AC4AB |

CODE_FN_8AC4AF:
  LDA.W #$001C                              ; $8AC4AF |
  JSL.L CODE_FL_8089BD                      ; $8AC4B2 |
  PHX                                       ; $8AC4B6 |
  TYX                                       ; $8AC4B7 |
  JSL.L CODE_FL_82CD05                      ; $8AC4B8 |
  LDA.W #$0012                              ; $8AC4BC |
  STA.B $18,X                               ; $8AC4BF |
  LDY.W #$0DC0                              ; $8AC4C1 |
  JSL.L CODE_FL_82CDF8                      ; $8AC4C4 |
  LDA.B $31,X                               ; $8AC4C8 |
  CLC                                       ; $8AC4CA |
  ADC.W #$FF60                              ; $8AC4CB |
  STA.B $31,X                               ; $8AC4CE |
  LDA.W $0E00                               ; $8AC4D0 |
  INC A                                     ; $8AC4D3 |
  AND.W #$0007                              ; $8AC4D4 |
  STA.W $0E00                               ; $8AC4D7 |
  ASL A                                     ; $8AC4DA |
  TAY                                       ; $8AC4DB |
  LDA.W LOOSE_OP_00A1A1,Y                   ; $8AC4DC |
  STA.B $3E,X                               ; $8AC4DF |
  LDA.W #$0040                              ; $8AC4E1 |
  STA.B $40,X                               ; $8AC4E4 |
  LDA.W #$00B0                              ; $8AC4E6 |
  STA.B $42,X                               ; $8AC4E9 |
  PLX                                       ; $8AC4EB |
  RTS                                       ; $8AC4EC |

CODE_8AC4ED:
  LDY.W #$0E20                              ; $8AC4ED |
  LDA.W #$8061                              ; $8AC4F0 |
  JSL.L CODE_FL_82CD78                      ; $8AC4F3 |
  STX.B $38,Y                               ; $8AC4F7 |
  LDA.W #$0001                              ; $8AC4F9 |
  STA.W $003C,Y                             ; $8AC4FC |
  LDA.W #$0010                              ; $8AC4FF |
  STA.B $1A,X                               ; $8AC502 |

CODE_8AC504:
  TDC                                       ; $8AC504 |
  LDY.W #$1000                              ; $8AC505 |
  JSL.L CODE_FL_82CB1D                      ; $8AC508 |
  LDA.W #$FF10                              ; $8AC50C |
  LDY.W #$1000                              ; $8AC50F |
  JSL.L CODE_FL_82CB4A                      ; $8AC512 |
  LDA.W #$0110                              ; $8AC516 |
  LDY.W #$1000                              ; $8AC519 |
  JSL.L CODE_FL_82CB77                      ; $8AC51C |
  BNE CODE_8AC529                           ; $8AC520 |
  LDA.W #$FC00                              ; $8AC522 |
  STA.B $28,X                               ; $8AC525 |
  INC.B $1A,X                               ; $8AC527 |

CODE_8AC529:
  LDA.W #$0002                              ; $8AC529 |
  JSL.L CODE_FL_82D03F                      ; $8AC52C |
  JSL.L CODE_FL_82B940                      ; $8AC530 |
  JML.L CODE_JL_82CF65                      ; $8AC534 |

CODE_8AC538:
  LDY.W #$0200                              ; $8AC538 |
  JSL.L CODE_FL_82CAD5                      ; $8AC53B |
  BNE CODE_8AC529                           ; $8AC53F |
  LDA.W #$008C                              ; $8AC541 |
  JSL.L CODE_FL_8089BD                      ; $8AC544 |
  INC.W $1CB0                               ; $8AC548 |
  LDA.B $28,X                               ; $8AC54B |
  SEC                                       ; $8AC54D |
  SBC.W #$0400                              ; $8AC54E |
  BMI CODE_8AC55B                           ; $8AC551 |
  EOR.W #$FFFF                              ; $8AC553 |
  INC A                                     ; $8AC556 |
  STA.B $28,X                               ; $8AC557 |
  BRA CODE_8AC529                           ; $8AC559 |

CODE_8AC55B:
  INC.B $1A,X                               ; $8AC55B |
  LDY.W #$0E20                              ; $8AC55D |
  LDA.W #$0002                              ; $8AC560 |
  STA.W $001A,Y                             ; $8AC563 |

CODE_8AC566:
  LDA.W #$0200                              ; $8AC566 |
  LDY.W #$0400                              ; $8AC569 |
  JSL.L CODE_FL_82CB77                      ; $8AC56C |
  LDA.W #$FE80                              ; $8AC570 |
  LDY.W #$0800                              ; $8AC573 |
  JSL.L CODE_FL_82CB4A                      ; $8AC576 |
  BNE CODE_8AC581                           ; $8AC57A |
  LDA.W #$0006                              ; $8AC57C |
  STA.B $1A,X                               ; $8AC57F |

CODE_8AC581:
  JML.L CODE_JL_82CF65                      ; $8AC581 |

CODE_FN_8AC585:
  DEC.B $3E,X                               ; $8AC585 |
  BPL CODE_8AC5A3                           ; $8AC587 |
  STA.B $3E,X                               ; $8AC589 |
  LDA.B $3C,X                               ; $8AC58B |
  DEC A                                     ; $8AC58D |
  JSL.L CODE_FL_82D023                      ; $8AC58E |
  CMP.W #$0004                              ; $8AC592 |
  BCC CODE_8AC5A3                           ; $8AC595 |
  CMP.W #$01FC                              ; $8AC597 |
  BCS CODE_8AC5A3                           ; $8AC59A |
  LDA.B $3C,X                               ; $8AC59C |
  EOR.W #$0002                              ; $8AC59E |
  STA.B $3C,X                               ; $8AC5A1 |

CODE_8AC5A3:
  LDA.B $3C,X                               ; $8AC5A3 |
  ASL A                                     ; $8AC5A5 |
  DEC A                                     ; $8AC5A6 |
  DEC A                                     ; $8AC5A7 |
  CLC                                       ; $8AC5A8 |
  ADC.B $2D,X                               ; $8AC5A9 |
  STA.B $2D,X                               ; $8AC5AB |
  RTS                                       ; $8AC5AD |

  LDA.B $1A,X                               ; $8AC5AE |
  BNE CODE_8AC5C8                           ; $8AC5B0 |
  LDA.W #$3478                              ; $8AC5B2 |
  STA.B $00,X                               ; $8AC5B5 |
  LDA.W #$8000                              ; $8AC5B7 |
  STA.B $14,X                               ; $8AC5BA |
  LDA.W #$0062                              ; $8AC5BC |
  STA.B $0D,X                               ; $8AC5BF |
  LDA.W #$0080                              ; $8AC5C1 |
  STA.B $09,X                               ; $8AC5C4 |
  INC.B $1A,X                               ; $8AC5C6 |

CODE_8AC5C8:
  LDA.W #$0062                              ; $8AC5C8 |
  CLC                                       ; $8AC5CB |
  ADC.W $1C80                               ; $8AC5CC |
  STA.B $0D,X                               ; $8AC5CF |
  RTL                                       ; $8AC5D1 |

  LDX.W #DATA_888431                        ; $8AC5D2 |
  JSL.L sound_transfer_blocks               ; $8AC5D5 |
  LDX.W #DATA_888439                        ; $8AC5D9 |
  JSL.L sound_transfer_blocks               ; $8AC5DC |
  LDX.W #DATA_888470                        ; $8AC5E0 |
  JSL.L sound_transfer_blocks               ; $8AC5E3 |
  LDA.W #$001A                              ; $8AC5E7 |
  JSL.L CODE_FL_8AF69F                      ; $8AC5EA |
  LDY.W #$B8C0                              ; $8AC5EE |
  JSL.L CODE_FL_80C277                      ; $8AC5F1 |
  LDA.W #$0005                              ; $8AC5F5 |
  STA.W $1CB2                               ; $8AC5F8 |
  LDX.W #$0DC0                              ; $8AC5FB |
  LDA.W #$8075                              ; $8AC5FE |
  STA.B $18,X                               ; $8AC601 |
  LDA.W #$1000                              ; $8AC603 |
  STA.B $10,X                               ; $8AC606 |
  LDX.W #$0E20                              ; $8AC608 |
  LDA.W #$C076                              ; $8AC60B |
  STA.B $18,X                               ; $8AC60E |
  LDX.W #$1630                              ; $8AC610 |
  LDA.W #$0008                              ; $8AC613 |
  STA.B $18,X                               ; $8AC616 |
  LDA.W #$0058                              ; $8AC618 |
  STA.B $2A,X                               ; $8AC61B |
  LDY.W #$0016                              ; $8AC61D |
  STY.W $1CA0                               ; $8AC620 |
  RTL                                       ; $8AC623 |

  LDY.W #$0400                              ; $8AC624 |
  JSL.L CODE_FL_809725                      ; $8AC627 |
  LDA.W #$9857                              ; $8AC62B |
  LDY.W #$989C                              ; $8AC62E |
  STY.W $1CA6                               ; $8AC631 |
  JSL.L CODE_FL_8AB2FD                      ; $8AC634 |
  RTL                                       ; $8AC638 |

  LDY.W #$92AA                              ; $8AC639 |
  LDA.W #$9448                              ; $8AC63C |
  JSL.L CODE_FL_82D181                      ; $8AC63F |
  LDA.B $1A,X                               ; $8AC643 |
  PHX                                       ; $8AC645 |
  ASL A                                     ; $8AC646 |
  TAX                                       ; $8AC647 |
  LDA.L PTR16_8AC652,X                      ; $8AC648 |
  PLX                                       ; $8AC64C |
  STA.B $00                                 ; $8AC64D |
  JMP.W ($0000)                             ; $8AC64F |

PTR16_8AC652:
  dw CODE_8AC676                            ; $8AC652 |
  dw CODE_8AC69D                            ; $8AC654 |
  dw CODE_8AC6A7                            ; $8AC656 |
  dw CODE_8AC6BC                            ; $8AC658 |
  dw CODE_8AC72D                            ; $8AC65A |
  dw CODE_8AC73F                            ; $8AC65C |
  dw CODE_8AC77D                            ; $8AC65E |
  dw CODE_8AC788                            ; $8AC660 |
  dw CODE_8AC78C                            ; $8AC662 |
  dw CODE_8AC7D5                            ; $8AC664 |
  dw CODE_8AC850                            ; $8AC666 |
  dw CODE_8AC876                            ; $8AC668 |
  dw CODE_8AC87F                            ; $8AC66A |
  dw CODE_8AC8BE                            ; $8AC66C |
  dw CODE_8AC8F2                            ; $8AC66E |
  dw CODE_8AC906                            ; $8AC670 |
  dw CODE_8AC91E                            ; $8AC672 |
  dw CODE_8AC954                            ; $8AC674 |

CODE_8AC676:
  LDA.W #$FE80                              ; $8AC676 |
  STA.B $2D,X                               ; $8AC679 |
  LDA.W #$01C0                              ; $8AC67B |
  STA.B $31,X                               ; $8AC67E |
  LDA.W #$03D0                              ; $8AC680 |
  STA.B $35,X                               ; $8AC683 |
  LDA.W #$EF00                              ; $8AC685 |
  STA.B $28,X                               ; $8AC688 |
  LDA.W #$0200                              ; $8AC68A |
  STA.B $26,X                               ; $8AC68D |
  LDA.W #$004E                              ; $8AC68F |
  JSL.L CODE_FL_8AF69F                      ; $8AC692 |
  LDA.W #$0040                              ; $8AC696 |
  STA.B $38,X                               ; $8AC699 |
  INC.B $1A,X                               ; $8AC69B |

CODE_8AC69D:
  DEC.B $38,X                               ; $8AC69D |
  BPL CODE_8AC6A3                           ; $8AC69F |
  INC.B $1A,X                               ; $8AC6A1 |

CODE_8AC6A3:
  JML.L CODE_JL_82CF65                      ; $8AC6A3 |

CODE_8AC6A7:
  LDA.W #$2978                              ; $8AC6A7 |
  JSL.L CODE_FL_809934                      ; $8AC6AA |
  BCC CODE_8AC6BB                           ; $8AC6AE |
  JSL.L CODE_FL_80893F                      ; $8AC6B0 |
  LDA.W #$0040                              ; $8AC6B4 |
  STA.B $38,X                               ; $8AC6B7 |
  INC.B $1A,X                               ; $8AC6B9 |

CODE_8AC6BB:
  RTL                                       ; $8AC6BB |

CODE_8AC6BC:
  LDA.B $38,X                               ; $8AC6BC |
  CMP.W #$0001                              ; $8AC6BE |
  BNE CODE_8AC6CA                           ; $8AC6C1 |
  LDY.W #$002C                              ; $8AC6C3 |
  JSL.L CODE_FL_808993                      ; $8AC6C6 |

CODE_8AC6CA:
  DEC.B $38,X                               ; $8AC6CA |
  BPL CODE_8AC729                           ; $8AC6CC |
  STZ.W $1CBC                               ; $8AC6CE |
  LDA.B $28,X                               ; $8AC6D1 |
  CMP.W #$FD00                              ; $8AC6D3 |
  BNE CODE_8AC6E1                           ; $8AC6D6 |
  LDA.W #$0034                              ; $8AC6D8 |
  JSL.L CODE_FL_8AF69F                      ; $8AC6DB |
  BRA CODE_8AC6F9                           ; $8AC6DF |

CODE_8AC6E1:
  CMP.W #$0000                              ; $8AC6E1 |
  BNE CODE_8AC6F9                           ; $8AC6E4 |
  LDA.W #$0000                              ; $8AC6E6 |
  JSL.L CODE_FL_8AF69F                      ; $8AC6E9 |
  LDA.W #$3710                              ; $8AC6ED |
  STA.W $0E20                               ; $8AC6F0 |
  LDY.W #$0017                              ; $8AC6F3 |
  STY.W $1CA0                               ; $8AC6F6 |

CODE_8AC6F9:
  JSL.L CODE_FL_82C87C                      ; $8AC6F9 |
  JSL.L CODE_FL_82CAD8                      ; $8AC6FD |
  BNE CODE_8AC729                           ; $8AC701 |
  JSL.L CODE_FL_8AB9E2                      ; $8AC703 |
  STZ.W $1CBC                               ; $8AC707 |
  PHX                                       ; $8AC70A |
  LDX.W #DATA_8882BC                        ; $8AC70B |
  JSL.L sound_transfer_blocks               ; $8AC70E |
  PLX                                       ; $8AC712 |
  INC.W $1CB0                               ; $8AC713 |
  LDA.W #$0088                              ; $8AC716 |
  JSL.L CODE_FL_8089BD                      ; $8AC719 |
  JSL.L CODE_FL_82BFF4                      ; $8AC71D |
  LDA.W #$3742                              ; $8AC721 |
  STA.W $0E20                               ; $8AC724 |
  INC.B $1A,X                               ; $8AC727 |

CODE_8AC729:
  JML.L CODE_JL_82CF65                      ; $8AC729 |

CODE_8AC72D:
  LDA.W $1DE2                               ; $8AC72D |
  BNE CODE_8AC73B                           ; $8AC730 |
  LDY.W #$9550                              ; $8AC732 |
  JSL.L CODE_FL_82D20D                      ; $8AC735 |
  INC.B $1A,X                               ; $8AC739 |

CODE_8AC73B:
  JML.L CODE_JL_82CF65                      ; $8AC73B |

CODE_8AC73F:
  LDA.W #$0006                              ; $8AC73F |
  JSL.L CODE_FL_82D219                      ; $8AC742 |
  LDY.W #$0200                              ; $8AC746 |
  LDA.W #$0200                              ; $8AC749 |
  JSL.L CODE_FL_82CB77                      ; $8AC74C |
  JSL.L CODE_FL_82CAD8                      ; $8AC750 |
  LDA.B $A2                                 ; $8AC754 |
  BEQ CODE_8AC779                           ; $8AC756 |
  LDA.W $1CBC                               ; $8AC758 |
  BNE CODE_8AC779                           ; $8AC75B |
  DEC.B $4E,X                               ; $8AC75D |
  BPL CODE_8AC779                           ; $8AC75F |
  LDA.B $52,X                               ; $8AC761 |
  INC A                                     ; $8AC763 |
  AND.W #$000F                              ; $8AC764 |
  STA.B $52,X                               ; $8AC767 |
  ASL A                                     ; $8AC769 |
  ASL A                                     ; $8AC76A |
  TAY                                       ; $8AC76B |
  LDA.W CODE_00A1C1,Y                       ; $8AC76C |
  STA.B $1A,X                               ; $8AC76F |
  LDA.W LOOSE_OP_00A1C3,Y                   ; $8AC771 |
  STA.W $004E,X                             ; $8AC774 |
  BRA CODE_8AC779                           ; $8AC777 |

CODE_8AC779:
  JML.L CODE_JL_82CF65                      ; $8AC779 |

CODE_8AC77D:
  LDA.W #$0004                              ; $8AC77D |
  STA.B $3A,X                               ; $8AC780 |
  INC.B $1A,X                               ; $8AC782 |
  INC.B $1A,X                               ; $8AC784 |
  BRA CODE_8AC78C                           ; $8AC786 |

CODE_8AC788:
  STZ.B $3A,X                               ; $8AC788 |
  INC.B $1A,X                               ; $8AC78A |

CODE_8AC78C:
  LDA.W #$0005                              ; $8AC78C |
  JSL.L CODE_FL_82D219                      ; $8AC78F |
  TDC                                       ; $8AC793 |
  LDY.W #$0800                              ; $8AC794 |
  JSL.L CODE_FL_82CB1D                      ; $8AC797 |
  LDA.W #$0300                              ; $8AC79B |
  LDY.W #$0800                              ; $8AC79E |
  JSL.L CODE_FL_82CB77                      ; $8AC7A1 |
  BNE CODE_8AC7D1                           ; $8AC7A5 |
  LDA.B $86                                 ; $8AC7A7 |
  ASL A                                     ; $8AC7A9 |
  BCC CODE_8AC7B2                           ; $8AC7AA |
  JSL.L CODE_FL_82CFDF                      ; $8AC7AC |
  BRA CODE_8AC7B6                           ; $8AC7B0 |

CODE_8AC7B2:
  JSL.L CODE_FL_82CFD5                      ; $8AC7B2 |

CODE_8AC7B6:
  LDA.W #$0004                              ; $8AC7B6 |
  STA.B $38,X                               ; $8AC7B9 |
  LDA.W #$F300                              ; $8AC7BB |
  STA.B $28,X                               ; $8AC7BE |
  LDA.W #$0200                              ; $8AC7C0 |
  STA.B $2A,X                               ; $8AC7C3 |

CODE_JP_8AC7C5:
  LDA.W #$001A                              ; $8AC7C5 |
  JSL.L CODE_FL_8AF69F                      ; $8AC7C8 |
  LDA.W #$0009                              ; $8AC7CC |
  STA.B $1A,X                               ; $8AC7CF |

CODE_8AC7D1:
  JML.L CODE_JL_82CF65                      ; $8AC7D1 |

CODE_8AC7D5:
  LDA.B $29,X                               ; $8AC7D5 |
  CMP.W #$0001                              ; $8AC7D7 |
  BNE CODE_8AC844                           ; $8AC7DA |
  LDA.B $38,X                               ; $8AC7DC |
  CMP.W #$0004                              ; $8AC7DE |
  BNE CODE_8AC7EA                           ; $8AC7E1 |
  LDA.W #$0034                              ; $8AC7E3 |
  JSL.L CODE_FL_8AF69F                      ; $8AC7E6 |

CODE_8AC7EA:
  DEC.B $38,X                               ; $8AC7EA |
  BPL CODE_8AC84C                           ; $8AC7EC |
  LDA.W #$004E                              ; $8AC7EE |
  JSL.L CODE_FL_8AF69F                      ; $8AC7F1 |
  LDA.W #$0077                              ; $8AC7F5 |
  JSL.L CODE_FL_82CD2F                      ; $8AC7F8 |
  BCC CODE_8AC831                           ; $8AC7FC |
  LDA.W #$0040                              ; $8AC7FE |
  JSL.L CODE_FL_8089BD                      ; $8AC801 |
  LDA.W $0031,Y                             ; $8AC805 |
  SEC                                       ; $8AC808 |
  SBC.W #$0100                              ; $8AC809 |
  STA.W $0031,Y                             ; $8AC80C |
  PHX                                       ; $8AC80F |
  TYX                                       ; $8AC810 |
  LDA.W $1FC6                               ; $8AC811 |
  AND.W #$0001                              ; $8AC814 |
  ASL A                                     ; $8AC817 |
  STA.B $00                                 ; $8AC818 |
  LDA.B $86                                 ; $8AC81A |
  AND.W #$0001                              ; $8AC81C |
  CLC                                       ; $8AC81F |
  ADC.B $00                                 ; $8AC820 |
  ASL A                                     ; $8AC822 |
  TAY                                       ; $8AC823 |
  LDA.W CODE_00A201,Y                       ; $8AC824 |
  TAY                                       ; $8AC827 |
  LDA.W #$0006                              ; $8AC828 |
  JSL.L CODE_FL_82D0E8                      ; $8AC82B |
  TXY                                       ; $8AC82F |
  PLX                                       ; $8AC830 |

CODE_8AC831:
  STZ.B $38,X                               ; $8AC831 |
  DEC.B $3A,X                               ; $8AC833 |
  BMI CODE_8AC842                           ; $8AC835 |
  LDA.W #$0030                              ; $8AC837 |
  STA.B $38,X                               ; $8AC83A |
  INC.B $1A,X                               ; $8AC83C |
  JML.L CODE_JL_82CF65                      ; $8AC83E |

CODE_8AC842:
  INC.B $1A,X                               ; $8AC842 |

CODE_8AC844:
  JSL.L CODE_FL_82C8C4                      ; $8AC844 |
  JSL.L CODE_FL_82CAD8                      ; $8AC848 |

CODE_8AC84C:
  JML.L CODE_JL_82CF65                      ; $8AC84C |

CODE_8AC850:
  DEC.B $38,X                               ; $8AC850 |
  BMI CODE_8AC85D                           ; $8AC852 |
  BNE CODE_8AC872                           ; $8AC854 |
  JSL.L CODE_FL_82CFE9                      ; $8AC856 |
  JMP.W CODE_JP_8AC7C5                      ; $8AC85A |

CODE_8AC85D:
  JSL.L CODE_FL_82CAD8                      ; $8AC85D |
  BNE CODE_8AC872                           ; $8AC861 |
  LDA.W #$001B                              ; $8AC863 |
  JSL.L push_sound_queue                    ; $8AC866 |
  INC.W $1CB0                               ; $8AC86A |
  LDA.W #$0005                              ; $8AC86D |
  STA.B $1A,X                               ; $8AC870 |

CODE_8AC872:
  JML.L CODE_JL_82CF65                      ; $8AC872 |

CODE_8AC876:
  LDY.W #$1000                              ; $8AC876 |
  JSL.L CODE_FL_82C936                      ; $8AC879 |
  INC.B $1A,X                               ; $8AC87D |

CODE_8AC87F:
  LDA.W #$0004                              ; $8AC87F |
  JSL.L CODE_FL_82D219                      ; $8AC882 |
  LDA.W #$00FF                              ; $8AC886 |
  LDY.W #$FF01                              ; $8AC889 |
  JSL.L CODE_FL_82CBA4                      ; $8AC88C |
  LDY.W #$0600                              ; $8AC890 |
  LDA.W #$03D0                              ; $8AC893 |
  JSL.L CODE_FL_82CB77                      ; $8AC896 |
  BNE CODE_8AC8BA                           ; $8AC89A |
  JSL.L CODE_FL_82CFCF                      ; $8AC89C |
  LDA.W #$0000                              ; $8AC8A0 |
  JSL.L CODE_FL_8AF69F                      ; $8AC8A3 |
  LDA.W #$36EC                              ; $8AC8A7 |
  STA.W $0E20                               ; $8AC8AA |
  LDA.W #$0001                              ; $8AC8AD |
  STA.W $1C9A                               ; $8AC8B0 |
  LDA.W #$0020                              ; $8AC8B3 |
  STA.B $38,X                               ; $8AC8B6 |
  INC.B $1A,X                               ; $8AC8B8 |

CODE_8AC8BA:
  JML.L CODE_JL_82CF65                      ; $8AC8BA |

CODE_8AC8BE:
  LDA.B $38,X                               ; $8AC8BE |
  CMP.W #$0008                              ; $8AC8C0 |
  BEQ CODE_8AC8CB                           ; $8AC8C3 |
  LDY.W #$3766                              ; $8AC8C5 |
  STY.W $0E20                               ; $8AC8C8 |

CODE_8AC8CB:
  DEC.B $38,X                               ; $8AC8CB |
  BPL CODE_8AC8F1                           ; $8AC8CD |
  LDA.W #$0079                              ; $8AC8CF |
  LDY.W #$0E80                              ; $8AC8D2 |
  JSL.L CODE_FL_82CD78                      ; $8AC8D5 |
  LDA.B $04,X                               ; $8AC8D9 |
  STA.W $0004,Y                             ; $8AC8DB |
  JSL.L CODE_FL_82EA3B                      ; $8AC8DE |
  LDA.W #$0020                              ; $8AC8E2 |
  JSL.L CODE_FL_8089BD                      ; $8AC8E5 |
  LDY.W #$37AC                              ; $8AC8E9 |
  STY.W $0E20                               ; $8AC8EC |
  INC.B $1A,X                               ; $8AC8EF |

CODE_8AC8F1:
  RTL                                       ; $8AC8F1 |

CODE_8AC8F2:
  LDA.W $1C16                               ; $8AC8F2 |
  BNE CODE_8AC905                           ; $8AC8F5 |
  LDA.W #$0120                              ; $8AC8F7 |
  STA.W $1CB8                               ; $8AC8FA |
  STZ.W $1C9A                               ; $8AC8FD |
  LDA.W #$0005                              ; $8AC900 |
  STA.B $1A,X                               ; $8AC903 |

CODE_8AC905:
  RTL                                       ; $8AC905 |

CODE_8AC906:
  TDC                                       ; $8AC906 |
  STA.B $00                                 ; $8AC907 |
  LDA.W #$0040                              ; $8AC909 |
  STA.B $02                                 ; $8AC90C |
  LDA.W #$00A0                              ; $8AC90E |
  STA.B $04                                 ; $8AC911 |
  LDA.W #$0006                              ; $8AC913 |
  JSL.L CODE_FL_82D136                      ; $8AC916 |
  STZ.B $44,X                               ; $8AC91A |
  INC.B $1A,X                               ; $8AC91C |

CODE_8AC91E:
  LDA.W #$0008                              ; $8AC91E |
  JSR.W CODE_FN_8AC992                      ; $8AC921 |
  INC.W $1CB0                               ; $8AC924 |
  LDA.W #$0004                              ; $8AC927 |
  JSL.L CODE_FL_82D219                      ; $8AC92A |
  JSL.L CODE_FL_82CAD8                      ; $8AC92E |
  JSL.L CODE_FL_82C8C0                      ; $8AC932 |
  CMP.W #$00A0                              ; $8AC936 |
  BPL CODE_8AC950                           ; $8AC939 |
  LDA.W #$00A0                              ; $8AC93B |
  STA.B $35,X                               ; $8AC93E |
  STZ.B $2A,X                               ; $8AC940 |
  LDA.W #$0040                              ; $8AC942 |
  STA.B $38,X                               ; $8AC945 |
  LDY.W #$0800                              ; $8AC947 |
  JSL.L CODE_FL_82C936                      ; $8AC94A |
  INC.B $1A,X                               ; $8AC94E |

CODE_8AC950:
  JML.L CODE_JL_82CF65                      ; $8AC950 |

CODE_8AC954:
  LDA.W #$0006                              ; $8AC954 |
  JSR.W CODE_FN_8AC992                      ; $8AC957 |
  INC.W $1CB0                               ; $8AC95A |
  LDA.W #$0002                              ; $8AC95D |
  JSL.L CODE_FL_82D219                      ; $8AC960 |
  JSL.L CODE_FL_82C87C                      ; $8AC964 |
  CMP.W #$FF70                              ; $8AC968 |
  BPL CODE_8AC972                           ; $8AC96B |
  LDY.W #$0C00                              ; $8AC96D |
  STY.B $26,X                               ; $8AC970 |

CODE_8AC972:
  CMP.W #$0090                              ; $8AC972 |
  BMI CODE_8AC97C                           ; $8AC975 |
  LDA.W #$F400                              ; $8AC977 |
  STA.B $26,X                               ; $8AC97A |

CODE_8AC97C:
  DEC.B $38,X                               ; $8AC97C |
  BPL CODE_8AC98A                           ; $8AC97E |
  LDA.W #$0400                              ; $8AC980 |
  STA.B $2A,X                               ; $8AC983 |
  LDA.W #$0005                              ; $8AC985 |
  STA.B $1A,X                               ; $8AC988 |

CODE_8AC98A:
  JSL.L CODE_FL_82B940                      ; $8AC98A |
  JML.L CODE_JL_82CF65                      ; $8AC98E |

CODE_FN_8AC992:
  DEC.B $42,X                               ; $8AC992 |
  BPL CODE_8AC99F                           ; $8AC994 |
  STA.B $42,X                               ; $8AC996 |
  LDA.W #$001B                              ; $8AC998 |
  JSL.L push_sound_queue                    ; $8AC99B |

CODE_8AC99F:
  RTS                                       ; $8AC99F |

  LDA.W $0DC9                               ; $8AC9A0 |
  STA.B $09,X                               ; $8AC9A3 |
  LDA.W $0DCD                               ; $8AC9A5 |
  SEC                                       ; $8AC9A8 |
  SBC.W #$0024                              ; $8AC9A9 |
  STA.B $0D,X                               ; $8AC9AC |
  LDA.W #$8080                              ; $8AC9AE |
  ORA.W $0DC4                               ; $8AC9B1 |
  STA.B $04,X                               ; $8AC9B4 |
  LDA.W #$03D0                              ; $8AC9B6 |
  STA.B $14,X                               ; $8AC9B9 |
  LDY.W #$0000                              ; $8AC9BB |
  LDA.W $1C16                               ; $8AC9BE |
  CMP.W #$0DC0                              ; $8AC9C1 |
  BNE CODE_8AC9CE                           ; $8AC9C4 |
  LDA.W $1C92                               ; $8AC9C6 |
  BEQ CODE_8AC9CE                           ; $8AC9C9 |
  LDY.W #$0080                              ; $8AC9CB |

CODE_8AC9CE:
  STY.B $02,X                               ; $8AC9CE |
  RTL                                       ; $8AC9D0 |

  dw CODE_8AC9D7                            ; $8AC9D1 |
  dw CODE_8AC9EE                            ; $8AC9D3 |
  dw CODE_8ACA0D                            ; $8AC9D5 |

CODE_8AC9D7:
  LDA.W #$00C0                              ; $8AC9D7 |
  STA.B $06,X                               ; $8AC9DA |
  LDY.W #$8BDA                              ; $8AC9DC |
  JSL.L CODE_FL_82B81C                      ; $8AC9DF |
  LDY.W #$8664                              ; $8AC9E3 |
  JSL.L CODE_FL_828AC3                      ; $8AC9E6 |
  STZ.B $38,X                               ; $8AC9EA |
  INC.B $1A,X                               ; $8AC9EC |

CODE_8AC9EE:
  DEC.B $38,X                               ; $8AC9EE |
  BPL CODE_8AC9F2                           ; $8AC9F0 |

CODE_8AC9F2:
  JSL.L CODE_FL_82C8BC                      ; $8AC9F2 |
  CMP.W #$0070                              ; $8AC9F6 |
  BPL CODE_8AC9FF                           ; $8AC9F9 |
  JML.L CODE_FL_82CC9F                      ; $8AC9FB |

CODE_8AC9FF:
  LDA.B $31,X                               ; $8AC9FF |
  CMP.W #$0040                              ; $8ACA01 |
  BMI CODE_8ACA0C                           ; $8ACA04 |
  JSL.L CODE_FL_82B940                      ; $8ACA06 |
  INC.B $1A,X                               ; $8ACA0A |

CODE_8ACA0C:
  RTL                                       ; $8ACA0C |

CODE_8ACA0D:
  LDA.W #$000D                              ; $8ACA0D |
  JSL.L push_sound_queue                    ; $8ACA10 |
  LDA.W #$8072                              ; $8ACA14 |
  JSL.L CODE_FL_82CD96                      ; $8ACA17 |
  LDA.W #$0001                              ; $8ACA1B |
  STA.B $38,X                               ; $8ACA1E |
  RTL                                       ; $8ACA20 |

  AND.B $CA                                 ; $8ACA21 |
  ROL.B $CA,X                               ; $8ACA23 |
  LDA.W #$00C0                              ; $8ACA25 |
  STA.B $06,X                               ; $8ACA28 |
  LDY.W #$86AC                              ; $8ACA2A |
  LDA.W #$0001                              ; $8ACA2D |
  JSL.L CODE_FL_828ACB                      ; $8ACA30 |
  INC.B $1A,X                               ; $8ACA34 |
  LDA.B $1C,X                               ; $8ACA36 |
  BNE CODE_8ACA3E                           ; $8ACA38 |
  JML.L CODE_FL_82CC9F                      ; $8ACA3A |

CODE_8ACA3E:
  RTL                                       ; $8ACA3E |

  dw CODE_8ACA47                            ; $8ACA3F |
  dw CODE_8ACAAF                            ; $8ACA41 |
  dw CODE_8ACADF                            ; $8ACA43 |
  dw CODE_8ACB0F                            ; $8ACA45 |

CODE_8ACA47:
  LDA.W #$00E0                              ; $8ACA47 |
  STA.W $1CB8                               ; $8ACA4A |
  LDY.W #$8BDA                              ; $8ACA4D |
  JSL.L CODE_FL_82B81C                      ; $8ACA50 |
  LDA.W #$00D0                              ; $8ACA54 |
  JSL.L CODE_FL_8AF69F                      ; $8ACA57 |
  SEC                                       ; $8ACA5B |
  SBC.W #$003C                              ; $8ACA5C |
  STA.W $1FD2                               ; $8ACA5F |
  LDY.W #$FFD4                              ; $8ACA62 |
  LDA.B $04,X                               ; $8ACA65 |
  AND.W #$2020                              ; $8ACA67 |
  STA.B $18                                 ; $8ACA6A |
  BNE CODE_8ACA71                           ; $8ACA6C |
  LDY.W #$002C                              ; $8ACA6E |

CODE_8ACA71:
  STY.B $3A,X                               ; $8ACA71 |
  TYA                                       ; $8ACA73 |
  CLC                                       ; $8ACA74 |
  ADC.W $0DED                               ; $8ACA75 |
  STA.B $2D,X                               ; $8ACA78 |
  LDA.W #$FEC0                              ; $8ACA7A |
  STA.B $3C,X                               ; $8ACA7D |
  CLC                                       ; $8ACA7F |
  ADC.W $0DF1                               ; $8ACA80 |
  STA.B $31,X                               ; $8ACA83 |
  LDA.W #$FFFF                              ; $8ACA85 |
  STA.B $3E,X                               ; $8ACA88 |
  CLC                                       ; $8ACA8A |
  ADC.W $0DF5                               ; $8ACA8B |
  STA.B $35,X                               ; $8ACA8E |
  LDA.W #$FE40                              ; $8ACA90 |
  LDY.B $18                                 ; $8ACA93 |
  BNE CODE_8ACA9A                           ; $8ACA95 |
  LDA.W #$01C0                              ; $8ACA97 |

CODE_8ACA9A:
  STA.B $00                                 ; $8ACA9A |
  LDA.W #$0040                              ; $8ACA9C |
  STA.B $02                                 ; $8ACA9F |
  LDA.W #$00B0                              ; $8ACAA1 |
  STA.B $04                                 ; $8ACAA4 |
  LDA.W #$0006                              ; $8ACAA6 |
  JSL.L CODE_FL_82D136                      ; $8ACAA9 |
  INC.B $1A,X                               ; $8ACAAD |

CODE_8ACAAF:
  JSL.L CODE_FL_82C8BC                      ; $8ACAAF |
  CMP.W #$00B0                              ; $8ACAB3 |
  BPL CODE_JP_8ACACB                        ; $8ACAB6 |
  LDA.W #$00B0                              ; $8ACAB8 |
  STA.B $35,X                               ; $8ACABB |
  LDY.W #$0500                              ; $8ACABD |
  JSL.L CODE_FL_82C94B                      ; $8ACAC0 |
  LDA.W #$00B0                              ; $8ACAC4 |
  STA.B $38,X                               ; $8ACAC7 |
  INC.B $1A,X                               ; $8ACAC9 |

CODE_JP_8ACACB:
  PHX                                       ; $8ACACB |
  LDY.W #$929A                              ; $8ACACC |
  LDA.W #$000C                              ; $8ACACF |
  JSL.L CODE_FL_82D19E                      ; $8ACAD2 |
  PLX                                       ; $8ACAD6 |
  JSL.L CODE_FL_82F02D                      ; $8ACAD7 |
  JML.L CODE_JL_82CF65                      ; $8ACADB |

CODE_8ACADF:
  JSL.L CODE_FL_82C87C                      ; $8ACADF |
  DEC.B $38,X                               ; $8ACAE3 |
  BPL CODE_8ACB08                           ; $8ACAE5 |
  LDA.W $0DED                               ; $8ACAE7 |
  CLC                                       ; $8ACAEA |
  ADC.B $3A,X                               ; $8ACAEB |
  STA.B $00                                 ; $8ACAED |
  LDA.W $0DF1                               ; $8ACAEF |
  CLC                                       ; $8ACAF2 |
  ADC.B $3C,X                               ; $8ACAF3 |
  STA.B $02                                 ; $8ACAF5 |
  LDA.W $0DF5                               ; $8ACAF7 |
  CLC                                       ; $8ACAFA |
  ADC.B $3E,X                               ; $8ACAFB |
  STA.B $04                                 ; $8ACAFD |
  LDA.W #$0005                              ; $8ACAFF |
  JSL.L CODE_FL_82D136                      ; $8ACB02 |
  INC.B $1A,X                               ; $8ACB06 |

CODE_8ACB08:
  JSL.L CODE_FL_82B940                      ; $8ACB08 |
  JMP.W CODE_JP_8ACACB                      ; $8ACB0C |

CODE_8ACB0F:
  JSL.L CODE_FL_82C8BC                      ; $8ACB0F |
  CMP.W $0DF5                               ; $8ACB13 |
  BPL CODE_8ACB1B                           ; $8ACB16 |
  JMP.W CODE_JP_8ACACB                      ; $8ACB18 |

CODE_8ACB1B:
  LDA.W #$0000                              ; $8ACB1B |
  JSL.L CODE_FL_8AF69F                      ; $8ACB1E |
  STZ.W $1C16                               ; $8ACB22 |
  JML.L CODE_JP_82F128                      ; $8ACB25 |

  LDX.W #$0DC0                              ; $8ACB29 |
  LDA.W #$C030                              ; $8ACB2C |
  STA.B $18,X                               ; $8ACB2F |
  LDA.W #$1000                              ; $8ACB31 |
  STA.B $10,X                               ; $8ACB34 |
  RTL                                       ; $8ACB36 |

  INC.W $1C24                               ; $8ACB37 |
  LDY.W #$9937                              ; $8ACB3A |
  JSL.L CODE_FL_8AAF61                      ; $8ACB3D |
  LDA.W #$0040                              ; $8ACB41 |
  JSL.L CODE_FL_8AB11E                      ; $8ACB44 |
  RTL                                       ; $8ACB48 |

  LDA.B $1A,X                               ; $8ACB49 |
  PHX                                       ; $8ACB4B |
  ASL A                                     ; $8ACB4C |
  TAX                                       ; $8ACB4D |
  LDA.L PTR16_8ACB58,X                      ; $8ACB4E |
  PLX                                       ; $8ACB52 |
  STA.B $00                                 ; $8ACB53 |
  JMP.W ($0000)                             ; $8ACB55 |

PTR16_8ACB58:
  dw CODE_8ACB5C                            ; $8ACB58 |
  dw CODE_8ACB61                            ; $8ACB5A |

CODE_8ACB5C:
  STZ.W $1C6A                               ; $8ACB5C |
  INC.B $1A,X                               ; $8ACB5F |

CODE_8ACB61:
  LDA.B $36                                 ; $8ACB61 |
  BIT.W #$1000                              ; $8ACB63 |
  BEQ CODE_8ACB6C                           ; $8ACB66 |
  JSL.L CODE_FL_8285F8                      ; $8ACB68 |

CODE_8ACB6C:
  RTL                                       ; $8ACB6C |

  LDX.W #DATA_8884D2                        ; $8ACB6D |
  JSL.L sound_transfer_blocks               ; $8ACB70 |
  LDX.W #DATA_8884E9                        ; $8ACB74 |
  JSL.L sound_transfer_blocks               ; $8ACB77 |
  LDX.W #$84DC                              ; $8ACB7B |
  LDA.L $700796                             ; $8ACB7E |
  BIT.W #$0080                              ; $8ACB82 |
  BNE CODE_8ACB8A                           ; $8ACB85 |
  LDX.W #DATA_8884BA                        ; $8ACB87 |

CODE_8ACB8A:
  JSL.L sound_transfer_blocks               ; $8ACB8A |
  LDY.W #$B86E                              ; $8ACB8E |
  JSL.L CODE_FL_80C277                      ; $8ACB91 |
  LDX.W #$0DC0                              ; $8ACB95 |
  LDA.W #$8047                              ; $8ACB98 |
  STA.B $18,X                               ; $8ACB9B |
  LDA.W #$0700                              ; $8ACB9D |
  STA.B $10,X                               ; $8ACBA0 |
  JSL.L CODE_FL_82CE46                      ; $8ACBA2 |
  LDX.W #$15D0                              ; $8ACBA6 |
  LDA.W #$0008                              ; $8ACBA9 |
  STA.B $18,X                               ; $8ACBAC |
  LDA.W #$0060                              ; $8ACBAE |
  STA.B $2A,X                               ; $8ACBB1 |
  LDX.W #$1600                              ; $8ACBB3 |
  LDA.W #$0008                              ; $8ACBB6 |
  STA.B $18,X                               ; $8ACBB9 |
  LDA.W #$0068                              ; $8ACBBB |
  STA.B $2A,X                               ; $8ACBBE |
  LDX.W #$1630                              ; $8ACBC0 |
  LDA.W #$0008                              ; $8ACBC3 |
  STA.B $18,X                               ; $8ACBC6 |
  LDA.W #$0070                              ; $8ACBC8 |
  STA.B $2A,X                               ; $8ACBCB |
  RTL                                       ; $8ACBCD |

  LDY.W #$9E84                              ; $8ACBCE |
  JSL.L CODE_FL_8AAF61                      ; $8ACBD1 |
  LDA.W #$0038                              ; $8ACBD5 |
  JSL.L CODE_FL_8AB11E                      ; $8ACBD8 |
  RTL                                       ; $8ACBDC |

  LDA.W #$003F                              ; $8ACBDD |
  LDY.B $3C,X                               ; $8ACBE0 |
  BNE CODE_8ACBE7                           ; $8ACBE2 |
  LDA.W #$0014                              ; $8ACBE4 |

CODE_8ACBE7:
  JSL.L CODE_FL_82D348                      ; $8ACBE7 |
  CPX.W $1C16                               ; $8ACBEB |
  BNE CODE_8ACC06                           ; $8ACBEE |
  LDA.B $3C,X                               ; $8ACBF0 |
  BEQ CODE_8ACBFC                           ; $8ACBF2 |
  LDY.W #$92DA                              ; $8ACBF4 |
  LDA.W #$9948                              ; $8ACBF7 |
  BRA CODE_8ACC02                           ; $8ACBFA |

CODE_8ACBFC:
  LDY.W #$92EA                              ; $8ACBFC |
  LDA.W #$990A                              ; $8ACBFF |

CODE_8ACC02:
  JSL.L CODE_FL_82D181                      ; $8ACC02 |

CODE_8ACC06:
  LDA.B $1A,X                               ; $8ACC06 |
  PHX                                       ; $8ACC08 |
  ASL A                                     ; $8ACC09 |
  TAX                                       ; $8ACC0A |
  LDA.L PTR16_8ACC15,X                      ; $8ACC0B |
  PLX                                       ; $8ACC0F |
  STA.B $00                                 ; $8ACC10 |
  JMP.W ($0000)                             ; $8ACC12 |

PTR16_8ACC15:
  dw CODE_8ACCB5                            ; $8ACC15 |
  dw CODE_8ACD44                            ; $8ACC17 |
  dw CODE_8ACD7E                            ; $8ACC19 |
  dw CODE_8ACDB3                            ; $8ACC1B |
  dw CODE_8ACDC3                            ; $8ACC1D |
  dw CODE_8ACDC5                            ; $8ACC1F |
  dw CODE_8ACDFF                            ; $8ACC21 |
  dw CODE_8ACE18                            ; $8ACC23 |
  dw CODE_8ACE72                            ; $8ACC25 |
  dw CODE_8ACE93                            ; $8ACC27 |
  dw CODE_8ACEE3                            ; $8ACC29 |
  dw CODE_8ACF18                            ; $8ACC2B |
  dw CODE_8ACFAE                            ; $8ACC2D |
  dw CODE_8ACFBF                            ; $8ACC2F |
  dw CODE_8ACFE1                            ; $8ACC31 |
  dw CODE_8ACFF3                            ; $8ACC33 |
  dw CODE_8AD006                            ; $8ACC35 |
  dw CODE_8AD040                            ; $8ACC37 |
  dw CODE_8AD05B                            ; $8ACC39 |
  dw CODE_8AD066                            ; $8ACC3B |
  dw CODE_8AD066                            ; $8ACC3D |
  dw CODE_8AD08E                            ; $8ACC3F |
  dw CODE_8AD09E                            ; $8ACC41 |
  dw CODE_8AD0BC                            ; $8ACC43 |
  dw CODE_8AD0FE                            ; $8ACC45 |
  dw CODE_8AD120                            ; $8ACC47 |
  dw CODE_8AD13F                            ; $8ACC49 |
  dw CODE_8AD18E                            ; $8ACC4B |
  dw CODE_8AD1A3                            ; $8ACC4D |
  dw CODE_8AD1D2                            ; $8ACC4F |
  dw CODE_8AD1EE                            ; $8ACC51 |
  dw CODE_8AD214                            ; $8ACC53 |
  dw CODE_8AD225                            ; $8ACC55 |
  dw CODE_8AD23A                            ; $8ACC57 |
  dw CODE_8AD269                            ; $8ACC59 |
  dw CODE_8AD2AD                            ; $8ACC5B |
  dw CODE_8AD2C9                            ; $8ACC5D |
  dw CODE_8AD2E8                            ; $8ACC5F |
  dw CODE_8AD2FA                            ; $8ACC61 |
  dw CODE_8AD338                            ; $8ACC63 |
  dw CODE_8AD34F                            ; $8ACC65 |
  dw CODE_8AD36F                            ; $8ACC67 |
  dw CODE_8AD385                            ; $8ACC69 |
  dw CODE_8AD399                            ; $8ACC6B |
  dw CODE_8AD413                            ; $8ACC6D |
  dw CODE_8AD437                            ; $8ACC6F |
  dw CODE_8AD458                            ; $8ACC71 |
  dw CODE_8AD466                            ; $8ACC73 |
  dw CODE_8AD484                            ; $8ACC75 |
  dw CODE_8AD4AD                            ; $8ACC77 |
  dw CODE_8AD504                            ; $8ACC79 |
  dw CODE_8AD511                            ; $8ACC7B |
  dw CODE_8AD539                            ; $8ACC7D |
  dw CODE_8AD585                            ; $8ACC7F |
  dw CODE_8AD5A2                            ; $8ACC81 |
  dw CODE_8AD5D0                            ; $8ACC83 |
  dw CODE_8AD600                            ; $8ACC85 |
  dw CODE_8AD661                            ; $8ACC87 |
  dw CODE_8AD68E                            ; $8ACC89 |
  dw CODE_8AD6A1                            ; $8ACC8B |
  dw CODE_8AD6D5                            ; $8ACC8D |
  dw CODE_8AD70A                            ; $8ACC8F |
  dw CODE_8AD720                            ; $8ACC91 |
  dw CODE_8AD772                            ; $8ACC93 |
  dw CODE_8AD09A                            ; $8ACC95 |
  dw CODE_8AD7A1                            ; $8ACC97 |
  dw CODE_8AD7DB                            ; $8ACC99 |
  dw CODE_8AD806                            ; $8ACC9B |
  dw CODE_8AD834                            ; $8ACC9D |
  dw CODE_8AD84C                            ; $8ACC9F |
  dw CODE_8AD85B                            ; $8ACCA1 |
  dw CODE_8AD85F                            ; $8ACCA3 |
  dw CODE_8AD88A                            ; $8ACCA5 |
  dw CODE_8AD89E                            ; $8ACCA7 |
  dw CODE_8AD8AB                            ; $8ACCA9 |
  dw CODE_8AD8AC                            ; $8ACCAB |
  dw CODE_8AD8CA                            ; $8ACCAD |
  dw CODE_8AD909                            ; $8ACCAF |
  dw CODE_8AD929                            ; $8ACCB1 |
  dw CODE_FN_8AD96F                         ; $8ACCB3 |

CODE_8ACCB5:
  LDA.L $700796                             ; $8ACCB5 |
  BIT.W #$0080                              ; $8ACCB9 |
  BNE CODE_8ACD0D                           ; $8ACCBC |
  LDA.W #$0042                              ; $8ACCBE |
  JSL.L CODE_FL_8AF776                      ; $8ACCC1 |
  LDA.W #$01A0                              ; $8ACCC5 |
  STA.B $2D,X                               ; $8ACCC8 |
  STZ.B $31,X                               ; $8ACCCA |
  LDA.W #$0410                              ; $8ACCCC |
  STA.B $35,X                               ; $8ACCCF |
  LDA.W #$F800                              ; $8ACCD1 |
  STA.B $26,X                               ; $8ACCD4 |
  LDA.W #$EC00                              ; $8ACCD6 |
  STA.B $28,X                               ; $8ACCD9 |
  LDA.W #$FB00                              ; $8ACCDB |
  STA.B $2A,X                               ; $8ACCDE |
  LDA.W #$0080                              ; $8ACCE0 |
  STA.B $38,X                               ; $8ACCE3 |
  LDA.W #$0002                              ; $8ACCE5 |
  STA.B $3A,X                               ; $8ACCE8 |
  STZ.W $1FD4                               ; $8ACCEA |
  LDY.W #$0E20                              ; $8ACCED |
  LDA.W #$8048                              ; $8ACCF0 |
  STA.W $0018,Y                             ; $8ACCF3 |
  LDY.W #$0E80                              ; $8ACCF6 |
  LDA.W #$8048                              ; $8ACCF9 |
  STA.W $0018,Y                             ; $8ACCFC |
  LDA.W #$0002                              ; $8ACCFF |
  STA.W $003C,Y                             ; $8ACD02 |
  STZ.B $3C,X                               ; $8ACD05 |
  INC.B $1A,X                               ; $8ACD07 |
  JML.L CODE_FL_82CEC6                      ; $8ACD09 |

CODE_8ACD0D:
  LDA.W #$0030                              ; $8ACD0D |
  STA.B $2D,X                               ; $8ACD10 |
  LDA.W #$FE00                              ; $8ACD12 |
  STA.B $31,X                               ; $8ACD15 |
  LDA.W #$0140                              ; $8ACD17 |
  STA.B $35,X                               ; $8ACD1A |
  STZ.B $26,X                               ; $8ACD1C |
  STZ.B $28,X                               ; $8ACD1E |
  STZ.B $2A,X                               ; $8ACD20 |
  STZ.W $1FD4                               ; $8ACD22 |
  LDA.W #$0001                              ; $8ACD25 |
  STA.B $3C,X                               ; $8ACD28 |
  LDA.W #$0080                              ; $8ACD2A |
  STA.B $38,X                               ; $8ACD2D |
  LDA.W #$0126                              ; $8ACD2F |
  JSL.L CODE_FL_8AF70B                      ; $8ACD32 |
  LDA.W #$1500                              ; $8ACD36 |
  STA.B $10,X                               ; $8ACD39 |
  LDA.W #$0027                              ; $8ACD3B |
  STA.B $1A,X                               ; $8ACD3E |
  JML.L CODE_FL_82CEC6                      ; $8ACD40 |

CODE_8ACD44:
  DEC.B $38,X                               ; $8ACD44 |
  BMI CODE_8ACD51                           ; $8ACD46 |
  LDA.W #$0001                              ; $8ACD48 |
  STA.W $1C7C                               ; $8ACD4B |
  JMP.W CODE_JP_8ACED1                      ; $8ACD4E |

CODE_8ACD51:
  JSL.L CODE_FL_82C8C0                      ; $8ACD51 |
  LDY.W #$00C0                              ; $8ACD55 |
  LDA.W #$0010                              ; $8ACD58 |
  JSL.L CODE_FL_82CAE3                      ; $8ACD5B |
  BEQ CODE_8ACD64                           ; $8ACD5F |
  JMP.W CODE_JP_8ACEB4                      ; $8ACD61 |

CODE_8ACD64:
  LDA.W #$0038                              ; $8ACD64 |
  JSL.L push_sound_queue                    ; $8ACD67 |
  LDA.W #$8000                              ; $8ACD6B |
  STA.W $1C7C                               ; $8ACD6E |
  JSL.L CODE_FL_82CFBD                      ; $8ACD71 |
  LDA.W #$0016                              ; $8ACD75 |
  JSL.L CODE_FL_8AF776                      ; $8ACD78 |
  INC.B $1A,X                               ; $8ACD7C |

CODE_8ACD7E:
  LDA.W #$0080                              ; $8ACD7E |
  JSL.L CODE_FL_82C8F3                      ; $8ACD81 |
  BCC CODE_8ACD8A                           ; $8ACD85 |
  JMP.W CODE_JP_8ACED1                      ; $8ACD87 |

CODE_8ACD8A:
  DEC.B $3A,X                               ; $8ACD8A |
  BMI CODE_8ACDA6                           ; $8ACD8C |
  LDA.W #$EC00                              ; $8ACD8E |
  STA.B $28,X                               ; $8ACD91 |
  LDY.W #$0800                              ; $8ACD93 |
  JSL.L CODE_FL_82C94B                      ; $8ACD96 |
  LDA.W #$0042                              ; $8ACD9A |
  JSL.L CODE_FL_8AF776                      ; $8ACD9D |
  DEC.B $1A,X                               ; $8ACDA1 |
  JMP.W CODE_JP_8ACEB4                      ; $8ACDA3 |

CODE_8ACDA6:
  INC.W $0E3A                               ; $8ACDA6 |
  INC.W $0E9A                               ; $8ACDA9 |
  LDA.W #$0040                              ; $8ACDAC |
  STA.B $38,X                               ; $8ACDAF |
  INC.B $1A,X                               ; $8ACDB1 |

CODE_8ACDB3:
  DEC.B $38,X                               ; $8ACDB3 |
  BPL CODE_8ACDC0                           ; $8ACDB5 |
  LDA.W #$0005                              ; $8ACDB7 |
  JSL.L CODE_FL_82E1E3                      ; $8ACDBA |
  INC.B $1A,X                               ; $8ACDBE |

CODE_8ACDC0:
  JMP.W CODE_JP_8ACED1                      ; $8ACDC0 |

CODE_8ACDC3:
  INC.B $1A,X                               ; $8ACDC3 |

CODE_8ACDC5:
  LDA.W #$0596                              ; $8ACDC5 |
  JSL.L CODE_FL_8CF9DB                      ; $8ACDC8 |
  LDA.W #$8C4F                              ; $8ACDCC |
  BCC CODE_8ACDD4                           ; $8ACDCF |
  LDA.W #$8975                              ; $8ACDD1 |

CODE_8ACDD4:
  JSL.L CODE_FL_809934                      ; $8ACDD4 |
  BCC CODE_8ACDFB                           ; $8ACDD8 |
  JSL.L CODE_FL_82E225                      ; $8ACDDA |
  PHX                                       ; $8ACDDE |
  LDX.W #DATA_88850B                        ; $8ACDDF |
  JSL.L sound_transfer_blocks               ; $8ACDE2 |
  PLX                                       ; $8ACDE6 |
  STZ.W $1C6A                               ; $8ACDE7 |
  STZ.W $1C24                               ; $8ACDEA |
  LDA.W #$0006                              ; $8ACDED |
  STA.B $1A,X                               ; $8ACDF0 |
  STA.B $50,X                               ; $8ACDF2 |
  LDA.W #$0060                              ; $8ACDF4 |
  STA.B $4E,X                               ; $8ACDF7 |
  STZ.B $52,X                               ; $8ACDF9 |

CODE_8ACDFB:
  JML.L CODE_FL_82CEC6                      ; $8ACDFB |

CODE_8ACDFF:
  LDY.W #$8B98                              ; $8ACDFF |
  JSL.L CODE_FL_82B81C                      ; $8ACE02 |
  STZ.B $5E,X                               ; $8ACE06 |
  LDA.W #$F000                              ; $8ACE08 |
  STA.B $28,X                               ; $8ACE0B |
  LDA.W #$0042                              ; $8ACE0D |
  JSL.L CODE_FL_8AF776                      ; $8ACE10 |
  STZ.B $00,X                               ; $8ACE14 |
  INC.B $1A,X                               ; $8ACE16 |

CODE_8ACE18:
  LDY.W #$0600                              ; $8ACE18 |
  LDA.W #$01E0                              ; $8ACE1B |
  JSL.L CODE_FL_82CB77                      ; $8ACE1E |
  LDY.W #$0080                              ; $8ACE22 |
  LDA.W #$0010                              ; $8ACE25 |
  JSL.L CODE_FL_82CAE3                      ; $8ACE28 |
  BEQ CODE_8ACE39                           ; $8ACE2C |
  LDA.W #$0004                              ; $8ACE2E |
  JSL.L CODE_FL_82D03F                      ; $8ACE31 |
  JML.L CODE_FL_82CEC6                      ; $8ACE35 |

CODE_8ACE39:
  LDA.W #$0038                              ; $8ACE39 |
  JSL.L push_sound_queue                    ; $8ACE3C |
  LDA.B $10,X                               ; $8ACE40 |
  CMP.W #$0400                              ; $8ACE42 |
  BPL CODE_8ACE6D                           ; $8ACE45 |
  LDA.L $700796                             ; $8ACE47 |
  ORA.W #$0080                              ; $8ACE4B |
  STA.L $700796                             ; $8ACE4E |
  LDA.W #$0060                              ; $8ACE52 |
  STA.B $38,X                               ; $8ACE55 |
  LDA.W #$0016                              ; $8ACE57 |
  STA.B $1A,X                               ; $8ACE5A |
  INC.W $1C6A                               ; $8ACE5C |
  STZ.W $1C72                               ; $8ACE5F |
  LDA.W #$0016                              ; $8ACE62 |
  JSL.L CODE_FL_8AF776                      ; $8ACE65 |
  JML.L CODE_FL_82CEC6                      ; $8ACE69 |

CODE_8ACE6D:
  LDA.W #$0008                              ; $8ACE6D |
  STA.B $1A,X                               ; $8ACE70 |

CODE_8ACE72:
  LDY.W #$8B98                              ; $8ACE72 |
  JSL.L CODE_FL_82B81C                      ; $8ACE75 |
  LDA.W #$0006                              ; $8ACE79 |
  STA.B $5E,X                               ; $8ACE7C |
  LDA.W #$358E                              ; $8ACE7E |
  STA.B $00,X                               ; $8ACE81 |
  LDA.W #$0000                              ; $8ACE83 |
  JSL.L CODE_FL_8AF776                      ; $8ACE86 |
  STZ.W $1C16                               ; $8ACE8A |
  LDA.W #$0009                              ; $8ACE8D |
  STA.B $1A,X                               ; $8ACE90 |
  RTL                                       ; $8ACE92 |

CODE_8ACE93:
  DEC.B $4E,X                               ; $8ACE93 |
  BMI CODE_8ACE99                           ; $8ACE95 |
  BRA CODE_JP_8ACED1                        ; $8ACE97 |

CODE_8ACE99:
  LDA.W $0052,X                             ; $8ACE99 |
  INC A                                     ; $8ACE9C |
  AND.W #$0007                              ; $8ACE9D |
  STA.W $0052,X                             ; $8ACEA0 |
  ASL A                                     ; $8ACEA3 |
  ASL A                                     ; $8ACEA4 |
  TAY                                       ; $8ACEA5 |
  LDA.W LOOSE_OP_00A209,Y                   ; $8ACEA6 |
  STA.B $00                                 ; $8ACEA9 |
  LDA.W LOOSE_OP_00A20B,Y                   ; $8ACEAB |
  STA.W $004E,X                             ; $8ACEAE |
  JMP.W ($0000)                             ; $8ACEB1 |

CODE_JP_8ACEB4:
  LDA.B $27,X                               ; $8ACEB4 |
  BIT.W #$0080                              ; $8ACEB6 |
  BEQ CODE_8ACEBE                           ; $8ACEB9 |
  ORA.W #$FF00                              ; $8ACEBB |

CODE_8ACEBE:
  CMP.W #$8000                              ; $8ACEBE |
  ROR A                                     ; $8ACEC1 |
  JSL.L CODE_FL_82D02E                      ; $8ACEC2 |
  LDA.W #$0014                              ; $8ACEC6 |
  JSL.L CODE_FL_82B42F                      ; $8ACEC9 |
  JML.L CODE_FL_82CEC6                      ; $8ACECD |

CODE_JP_8ACED1:
  LDA.W #$0004                              ; $8ACED1 |
  JSL.L CODE_FL_82D03F                      ; $8ACED4 |
  LDA.W #$0014                              ; $8ACED8 |
  JSL.L CODE_FL_82B42F                      ; $8ACEDB |
  JML.L CODE_FL_82CEC6                      ; $8ACEDF |

CODE_8ACEE3:
  LDY.W #$1000                              ; $8ACEE3 |
  JSL.L CODE_FL_82C936                      ; $8ACEE6 |
  LDA.W #$F000                              ; $8ACEEA |
  STA.B $28,X                               ; $8ACEED |
  LDA.W #$F000                              ; $8ACEEF |
  STA.B $2A,X                               ; $8ACEF2 |
  LDA.B $86                                 ; $8ACEF4 |
  AND.W #$003F                              ; $8ACEF6 |
  CLC                                       ; $8ACEF9 |
  ADC.W #$0080                              ; $8ACEFA |
  STA.B $38,X                               ; $8ACEFD |
  LDA.W #$002C                              ; $8ACEFF |
  JSL.L CODE_FL_8AF776                      ; $8ACF02 |
  JSL.L CODE_FL_82CFD5                      ; $8ACF06 |
  STZ.B $00,X                               ; $8ACF0A |
  LDA.W #$00B8                              ; $8ACF0C |
  JSL.L CODE_FL_8089BD                      ; $8ACF0F |
  LDA.W #$000B                              ; $8ACF13 |
  STA.B $1A,X                               ; $8ACF16 |

CODE_8ACF18:
  DEC.B $38,X                               ; $8ACF18 |
  LDA.W #$1000                              ; $8ACF1A |
  JSL.L CODE_FL_82CC3A                      ; $8ACF1D |
  LDA.B $0D,X                               ; $8ACF21 |
  CMP.W #$0090                              ; $8ACF23 |
  BMI CODE_8ACF36                           ; $8ACF26 |
  LDY.W #$F000                              ; $8ACF28 |
  STY.B $28,X                               ; $8ACF2B |
  LDA.W #$0037                              ; $8ACF2D |
  JSL.L push_sound_queue                    ; $8ACF30 |
  BRA CODE_8ACF6F                           ; $8ACF34 |

CODE_8ACF36:
  CMP.W #$0030                              ; $8ACF36 |
  BPL CODE_8ACF49                           ; $8ACF39 |
  LDY.W #$1000                              ; $8ACF3B |
  STY.B $28,X                               ; $8ACF3E |
  LDA.W #$0037                              ; $8ACF40 |
  JSL.L push_sound_queue                    ; $8ACF43 |
  BRA CODE_8ACF6F                           ; $8ACF47 |

CODE_8ACF49:
  LDA.B $35,X                               ; $8ACF49 |
  CMP.W #$0070                              ; $8ACF4B |
  BPL CODE_8ACF5E                           ; $8ACF4E |
  LDY.W #$1000                              ; $8ACF50 |
  STY.B $2A,X                               ; $8ACF53 |
  LDA.W #$0037                              ; $8ACF55 |
  JSL.L push_sound_queue                    ; $8ACF58 |
  BRA CODE_8ACF6F                           ; $8ACF5C |

CODE_8ACF5E:
  CMP.W #$0200                              ; $8ACF5E |
  BMI CODE_8ACF6F                           ; $8ACF61 |
  LDY.W #$F000                              ; $8ACF63 |
  STY.B $2A,X                               ; $8ACF66 |
  LDA.W #$0037                              ; $8ACF68 |
  JSL.L push_sound_queue                    ; $8ACF6B |

CODE_8ACF6F:
  JSL.L CODE_FL_82C8BC                      ; $8ACF6F |
  CMP.W #$0140                              ; $8ACF73 |
  BMI CODE_8ACF91                           ; $8ACF76 |
  LDA.B $38,X                               ; $8ACF78 |
  BPL CODE_8ACF91                           ; $8ACF7A |
  LDA.W #$0042                              ; $8ACF7C |
  JSL.L CODE_FL_8AF776                      ; $8ACF7F |
  STZ.B $00,X                               ; $8ACF83 |
  LDY.W #$FFC0                              ; $8ACF85 |
  LDA.W #$0004                              ; $8ACF88 |
  JSL.L CODE_FL_82D063                      ; $8ACF8B |
  INC.B $1A,X                               ; $8ACF8F |

CODE_8ACF91:
  LDA.B $26,X                               ; $8ACF91 |
  LDY.B $28,X                               ; $8ACF93 |
  JSL.L CODE_FL_8AB5EB                      ; $8ACF95 |
  CLC                                       ; $8ACF99 |
  ADC.W #$00C0                              ; $8ACF9A |
  AND.W #$01FF                              ; $8ACF9D |
  STA.W $1FD4                               ; $8ACFA0 |
  LDA.W #$0014                              ; $8ACFA3 |
  JSL.L CODE_FL_82B42F                      ; $8ACFA6 |
  JML.L CODE_FL_82CEC6                      ; $8ACFAA |

CODE_8ACFAE:
  JSL.L CODE_FL_82C8BC                      ; $8ACFAE |
  CMP.W #$0060                              ; $8ACFB2 |
  BPL CODE_8ACFBC                           ; $8ACFB5 |
  LDA.W #$000F                              ; $8ACFB7 |
  STA.B $1A,X                               ; $8ACFBA |

CODE_8ACFBC:
  JMP.W CODE_JP_8ACEB4                      ; $8ACFBC |

CODE_8ACFBF:
  LDA.W #$0006                              ; $8ACFBF |
  STA.B $5E,X                               ; $8ACFC2 |
  LDA.W #$0042                              ; $8ACFC4 |
  JSL.L CODE_FL_8AF776                      ; $8ACFC7 |
  STZ.B $00,X                               ; $8ACFCB |
  LDY.W #$FFC0                              ; $8ACFCD |
  LDA.W #$0004                              ; $8ACFD0 |
  JSL.L CODE_FL_82D063                      ; $8ACFD3 |
  LDA.W #$F900                              ; $8ACFD7 |
  STA.B $28,X                               ; $8ACFDA |
  LDA.W #$000E                              ; $8ACFDC |
  STA.B $1A,X                               ; $8ACFDF |

CODE_8ACFE1:
  JSL.L CODE_FL_82CAC7                      ; $8ACFE1 |
  JSL.L CODE_FL_82C8C0                      ; $8ACFE5 |
  CMP.W #$0060                              ; $8ACFE9 |
  BPL CODE_8ACFF0                           ; $8ACFEC |
  INC.B $1A,X                               ; $8ACFEE |

CODE_8ACFF0:
  JMP.W CODE_JP_8ACEB4                      ; $8ACFF0 |

CODE_8ACFF3:
  LDA.W #$0060                              ; $8ACFF3 |
  STA.B $38,X                               ; $8ACFF6 |
  STZ.B $3A,X                               ; $8ACFF8 |
  LDY.W #$A269                              ; $8ACFFA |
  JSL.L CODE_FL_82D20D                      ; $8ACFFD |
  LDA.W #$0010                              ; $8AD001 |
  STA.B $1A,X                               ; $8AD004 |

CODE_8AD006:
  LDA.W #$0006                              ; $8AD006 |
  JSL.L CODE_FL_82D219                      ; $8AD009 |
  LDA.B $1E,X                               ; $8AD00D |
  CMP.W #$0006                              ; $8AD00F |
  BNE CODE_8AD028                           ; $8AD012 |
  LDA.W $1C92                               ; $8AD014 |
  CMP.W #$0058                              ; $8AD017 |
  BNE CODE_8AD028                           ; $8AD01A |
  LDA.W #$0003                              ; $8AD01C |
  STA.B $5E,X                               ; $8AD01F |
  LDA.W #$0060                              ; $8AD021 |
  STA.B $58,X                               ; $8AD024 |
  BRA CODE_8AD034                           ; $8AD026 |

CODE_8AD028:
  LDA.W #$0006                              ; $8AD028 |
  STA.B $5E,X                               ; $8AD02B |
  LDY.W #$8BB9                              ; $8AD02D |
  JSL.L CODE_FL_82B81C                      ; $8AD030 |

CODE_8AD034:
  DEC.B $38,X                               ; $8AD034 |
  BPL CODE_8AD03D                           ; $8AD036 |
  LDA.W #$0006                              ; $8AD038 |
  STA.B $1A,X                               ; $8AD03B |

CODE_8AD03D:
  JMP.W CODE_JP_8ACED1                      ; $8AD03D |

CODE_8AD040:
  LDA.B $86                                 ; $8AD040 |
  LSR A                                     ; $8AD042 |
  LDY.W #$0E20                              ; $8AD043 |
  BCC CODE_8AD04B                           ; $8AD046 |
  LDY.W #$0E80                              ; $8AD048 |

CODE_8AD04B:
  STY.B $42,X                               ; $8AD04B |
  LDA.W #$0007                              ; $8AD04D |
  STA.W $0052,Y                             ; $8AD050 |
  LDA.W #$0012                              ; $8AD053 |
  STA.B $1A,X                               ; $8AD056 |
  INC.W $1C16                               ; $8AD058 |

CODE_8AD05B:
  LDA.W $1C16                               ; $8AD05B |
  BNE CODE_8AD065                           ; $8AD05E |
  LDA.W #$0008                              ; $8AD060 |
  STA.B $1A,X                               ; $8AD063 |

CODE_8AD065:
  RTL                                       ; $8AD065 |

CODE_8AD066:
  LDA.W #$0042                              ; $8AD066 |
  JSL.L CODE_FL_8AF776                      ; $8AD069 |
  STZ.B $1C,X                               ; $8AD06D |
  STZ.B $00,X                               ; $8AD06F |
  LDA.W #$0001                              ; $8AD071 |
  STA.W $1C74                               ; $8AD074 |
  STZ.W $1FD4                               ; $8AD077 |
  LDA.W #$0006                              ; $8AD07A |
  STA.B $5E,X                               ; $8AD07D |
  STZ.B $5A,X                               ; $8AD07F |
  STZ.B $38,X                               ; $8AD081 |
  STZ.B $3A,X                               ; $8AD083 |
  LDY.W #$8BB9                              ; $8AD085 |
  JSL.L CODE_FL_82B81C                      ; $8AD088 |
  INC.B $1A,X                               ; $8AD08C |

CODE_8AD08E:
  LDA.B $10,X                               ; $8AD08E |
  CMP.W #$0390                              ; $8AD090 |
  BPL CODE_8AD09A                           ; $8AD093 |
  LDA.W #$0390                              ; $8AD095 |
  STA.B $10,X                               ; $8AD098 |

CODE_8AD09A:
  JML.L CODE_JL_82A9F6                      ; $8AD09A |

CODE_8AD09E:
  LDA.B $38,X                               ; $8AD09E |
  CMP.W #$0010                              ; $8AD0A0 |
  BNE CODE_8AD0AE                           ; $8AD0A3 |
  PHX                                       ; $8AD0A5 |
  LDX.W #DATA_888513                        ; $8AD0A6 |
  JSL.L sound_transfer_blocks               ; $8AD0A9 |
  PLX                                       ; $8AD0AD |

CODE_8AD0AE:
  DEC.B $38,X                               ; $8AD0AE |
  BPL CODE_8AD0BB                           ; $8AD0B0 |
  LDA.W #$0005                              ; $8AD0B2 |
  JSL.L CODE_FL_82E1E3                      ; $8AD0B5 |
  INC.B $1A,X                               ; $8AD0B9 |

CODE_8AD0BB:
  RTL                                       ; $8AD0BB |

CODE_8AD0BC:
  LDA.W #$88EC                              ; $8AD0BC |
  JSL.L CODE_FL_809934                      ; $8AD0BF |
  BCC CODE_8AD0FD                           ; $8AD0C3 |
  JSL.L CODE_FL_82E225                      ; $8AD0C5 |
  LDA.W #$0010                              ; $8AD0C9 |
  STA.W $0E3A                               ; $8AD0CC |
  STA.W $0E9A                               ; $8AD0CF |
  LDA.W #$0042                              ; $8AD0D2 |
  JSL.L CODE_FL_8AF776                      ; $8AD0D5 |
  STZ.B $00,X                               ; $8AD0D9 |
  LDY.W #$FFF0                              ; $8AD0DB |
  LDA.W #$0004                              ; $8AD0DE |
  JSL.L CODE_FL_82D063                      ; $8AD0E1 |
  LDA.B $28,X                               ; $8AD0E5 |
  SEC                                       ; $8AD0E7 |
  SBC.W #$0100                              ; $8AD0E8 |
  STA.B $28,X                               ; $8AD0EB |
  INC.B $1A,X                               ; $8AD0ED |
  STZ.W $1FD4                               ; $8AD0EF |
  LDA.W #$0035                              ; $8AD0F2 |
  JSL.L push_sound_queue                    ; $8AD0F5 |
  JML.L CODE_FL_82CEC6                      ; $8AD0F9 |

CODE_8AD0FD:
  RTL                                       ; $8AD0FD |

CODE_8AD0FE:
  JSL.L CODE_FL_82C8BC                      ; $8AD0FE |
  CMP.W #$00C0                              ; $8AD102 |
  BPL CODE_8AD115                           ; $8AD105 |
  STZ.W $1FD4                               ; $8AD107 |
  LDA.W #$0010                              ; $8AD10A |
  STA.B $38,X                               ; $8AD10D |
  INC.B $1A,X                               ; $8AD10F |
  JML.L CODE_FL_82CEC6                      ; $8AD111 |

CODE_8AD115:
  LDA.W #$0040                              ; $8AD115 |
  JSL.L CODE_FL_82D023                      ; $8AD118 |
  JML.L CODE_FL_82CEC6                      ; $8AD11C |

CODE_8AD120:
  LDA.B $38,X                               ; $8AD120 |
  CMP.W #$0008                              ; $8AD122 |
  BNE CODE_8AD12E                           ; $8AD125 |
  LDA.W #$0058                              ; $8AD127 |
  JSL.L CODE_FL_8AF776                      ; $8AD12A |

CODE_8AD12E:
  DEC.B $38,X                               ; $8AD12E |
  BPL CODE_8AD13B                           ; $8AD130 |
  INC.B $1A,X                               ; $8AD132 |
  LDA.W #$0035                              ; $8AD134 |
  JSL.L push_sound_queue                    ; $8AD137 |

CODE_8AD13B:
  JML.L CODE_FL_82CEC6                      ; $8AD13B |

CODE_8AD13F:
  TDC                                       ; $8AD13F |
  LDY.W #$0400                              ; $8AD140 |
  JSL.L CODE_FL_82CB1D                      ; $8AD143 |
  TDC                                       ; $8AD147 |
  LDY.W #$0400                              ; $8AD148 |
  JSL.L CODE_FL_82CB4A                      ; $8AD14B |
  LDA.W #$01E0                              ; $8AD14F |
  LDY.W #$0600                              ; $8AD152 |
  JSL.L CODE_FL_82CB77                      ; $8AD155 |
  BNE CODE_8AD183                           ; $8AD159 |
  LDA.W #$0000                              ; $8AD15B |
  JSL.L CODE_FL_8AF776                      ; $8AD15E |
  LDA.W #$3612                              ; $8AD162 |
  STA.B $00,X                               ; $8AD165 |
  PHX                                       ; $8AD167 |
  LDX.W #DATA_8884C2                        ; $8AD168 |
  JSL.L sound_transfer_blocks               ; $8AD16B |
  PLX                                       ; $8AD16F |
  INC.B $3C,X                               ; $8AD170 |
  STZ.W $1C72                               ; $8AD172 |
  LDA.W #$0010                              ; $8AD175 |
  STA.B $38,X                               ; $8AD178 |
  STZ.W $1FD4                               ; $8AD17A |
  INC.B $1A,X                               ; $8AD17D |
  JML.L CODE_FL_82CEC6                      ; $8AD17F |

CODE_8AD183:
  LDA.W #$0040                              ; $8AD183 |
  JSL.L CODE_FL_82D023                      ; $8AD186 |
  JML.L CODE_FL_82CEC6                      ; $8AD18A |

CODE_8AD18E:
  JSL.L CODE_FL_82D1BF                      ; $8AD18E |
  DEC.B $38,X                               ; $8AD192 |
  BPL CODE_8AD1A2                           ; $8AD194 |
  LDY.W #$8536                              ; $8AD196 |
  LDA.W #$0008                              ; $8AD199 |
  JSL.L CODE_FL_828AD9                      ; $8AD19C |
  INC.B $1A,X                               ; $8AD1A0 |

CODE_8AD1A2:
  RTL                                       ; $8AD1A2 |

CODE_8AD1A3:
  LDA.B $00,X                               ; $8AD1A3 |
  CMP.W #$3692                              ; $8AD1A5 |
  BEQ CODE_8AD1B4                           ; $8AD1A8 |
  CMP.W #$36EE                              ; $8AD1AA |
  BEQ CODE_8AD1B4                           ; $8AD1AD |
  CMP.W #$3752                              ; $8AD1AF |
  BNE CODE_8AD1C2                           ; $8AD1B2 |

CODE_8AD1B4:
  LDA.B $1E,X                               ; $8AD1B4 |
  CMP.W #$0008                              ; $8AD1B6 |
  BNE CODE_8AD1C2                           ; $8AD1B9 |
  LDA.W #$0038                              ; $8AD1BB |
  JSL.L CODE_FL_8089BD                      ; $8AD1BE |

CODE_8AD1C2:
  LDA.B $1C,X                               ; $8AD1C2 |
  BNE CODE_8AD1D1                           ; $8AD1C4 |
  LDA.W #$0011                              ; $8AD1C6 |
  STA.W $0E3A                               ; $8AD1C9 |
  STA.W $0E9A                               ; $8AD1CC |
  INC.B $1A,X                               ; $8AD1CF |

CODE_8AD1D1:
  RTL                                       ; $8AD1D1 |

CODE_8AD1D2:
  LDA.B $00,X                               ; $8AD1D2 |
  CMP.W #$337A                              ; $8AD1D4 |
  BNE CODE_8AD1ED                           ; $8AD1D7 |
  LDA.W #$00CC                              ; $8AD1D9 |
  JSL.L CODE_FL_8089BD                      ; $8AD1DC |
  LDA.W #$8000                              ; $8AD1E0 |
  STA.W $1C7C                               ; $8AD1E3 |
  LDA.W #$0080                              ; $8AD1E6 |
  STA.B $38,X                               ; $8AD1E9 |
  INC.B $1A,X                               ; $8AD1EB |

CODE_8AD1ED:
  RTL                                       ; $8AD1ED |

CODE_8AD1EE:
  JSR.W CODE_FN_8AD96F                      ; $8AD1EE |
  LDA.B $38,X                               ; $8AD1F1 |
  CMP.W #$0030                              ; $8AD1F3 |
  BMI CODE_8AD1FC                           ; $8AD1F6 |
  JSL.L CODE_FL_82D1BF                      ; $8AD1F8 |

CODE_8AD1FC:
  DEC.B $38,X                               ; $8AD1FC |
  BPL CODE_8AD213                           ; $8AD1FE |
  LDY.W #$855A                              ; $8AD200 |
  LDA.W #$000A                              ; $8AD203 |
  JSL.L CODE_FL_828AD9                      ; $8AD206 |
  LDA.W #$0038                              ; $8AD20A |
  JSL.L CODE_FL_8089BD                      ; $8AD20D |
  INC.B $1A,X                               ; $8AD211 |

CODE_8AD213:
  RTL                                       ; $8AD213 |

CODE_8AD214:
  JSR.W CODE_FN_8AD96F                      ; $8AD214 |
  LDA.B $1C,X                               ; $8AD217 |
  BNE CODE_8AD224                           ; $8AD219 |
  LDA.W #$0005                              ; $8AD21B |
  JSL.L CODE_FL_82E1E3                      ; $8AD21E |
  INC.B $1A,X                               ; $8AD222 |

CODE_8AD224:
  RTL                                       ; $8AD224 |

CODE_8AD225:
  LDA.W #$8A2E                              ; $8AD225 |
  JSL.L CODE_FL_809934                      ; $8AD228 |
  BCC CODE_8AD239                           ; $8AD22C |
  JSL.L CODE_FL_82E225                      ; $8AD22E |
  LDA.W #$0040                              ; $8AD232 |
  STA.B $38,X                               ; $8AD235 |
  INC.B $1A,X                               ; $8AD237 |

CODE_8AD239:
  RTL                                       ; $8AD239 |

CODE_8AD23A:
  JSR.W CODE_FN_8AD96F                      ; $8AD23A |
  DEC.B $38,X                               ; $8AD23D |
  BPL CODE_8AD268                           ; $8AD23F |
  PHX                                       ; $8AD241 |
  LDX.W #DATA_888520                        ; $8AD242 |
  JSL.L sound_transfer_blocks               ; $8AD245 |
  PLX                                       ; $8AD249 |
  LDA.W #$002A                              ; $8AD24A |
  JSL.L CODE_FL_8AF70B                      ; $8AD24D |
  STZ.B $00,X                               ; $8AD251 |
  LDY.W #$A273                              ; $8AD253 |
  JSL.L CODE_FL_82D20D                      ; $8AD256 |
  STZ.W $1CF0                               ; $8AD25A |
  LDA.W #$FE00                              ; $8AD25D |
  STA.B $2A,X                               ; $8AD260 |
  INC.B $1A,X                               ; $8AD262 |
  JML.L CODE_FL_82CEC6                      ; $8AD264 |

CODE_8AD268:
  RTL                                       ; $8AD268 |

CODE_8AD269:
  JSR.W CODE_FN_8AD96F                      ; $8AD269 |
  INC.W $1CF0                               ; $8AD26C |
  LDA.W $1CF0                               ; $8AD26F |
  CMP.W #$0040                              ; $8AD272 |
  BEQ CODE_8AD27C                           ; $8AD275 |
  CMP.W #$0080                              ; $8AD277 |
  BNE CODE_8AD286                           ; $8AD27A |

CODE_8AD27C:
  LDA.W #$0038                              ; $8AD27C |
  JSL.L CODE_FL_8089BD                      ; $8AD27F |
  INC.W $1C7C                               ; $8AD283 |

CODE_8AD286:
  LDA.W #$0020                              ; $8AD286 |
  JSL.L CODE_FL_82D219                      ; $8AD289 |
  JSL.L CODE_FL_82C8C4                      ; $8AD28D |
  CMP.W #$00C0                              ; $8AD291 |
  BNE CODE_8AD2A2                           ; $8AD294 |
  LDA.W #$4049                              ; $8AD296 |
  LDY.W #$0E20                              ; $8AD299 |
  JSL.L CODE_FL_82CD78                      ; $8AD29C |
  BRA CODE_8AD2A9                           ; $8AD2A0 |

CODE_8AD2A2:
  CMP.W #$0060                              ; $8AD2A2 |
  BNE CODE_8AD2A9                           ; $8AD2A5 |
  INC.B $1A,X                               ; $8AD2A7 |

CODE_8AD2A9:
  JML.L CODE_FL_82CEC6                      ; $8AD2A9 |

CODE_8AD2AD:
  JSR.W CODE_FN_8AD96F                      ; $8AD2AD |
  LDA.W $0E38                               ; $8AD2B0 |
  BNE CODE_8AD2C5                           ; $8AD2B3 |
  PHX                                       ; $8AD2B5 |
  LDX.W #DATA_888513                        ; $8AD2B6 |
  JSL.L sound_transfer_blocks               ; $8AD2B9 |
  PLX                                       ; $8AD2BD |
  LDA.W #$0040                              ; $8AD2BE |
  STA.B $38,X                               ; $8AD2C1 |
  INC.B $1A,X                               ; $8AD2C3 |

CODE_8AD2C5:
  JML.L CODE_FL_82CEC6                      ; $8AD2C5 |

CODE_8AD2C9:
  LDA.B $38,X                               ; $8AD2C9 |
  CMP.W #$0020                              ; $8AD2CB |
  BPL CODE_8AD2DA                           ; $8AD2CE |
  LDY.W #$0080                              ; $8AD2D0 |
  LDA.W #$00D0                              ; $8AD2D3 |
  JSL.L CODE_FL_82CB77                      ; $8AD2D6 |

CODE_8AD2DA:
  JSL.L CODE_FL_82D1BF                      ; $8AD2DA |
  DEC.B $38,X                               ; $8AD2DE |
  BPL CODE_8AD2E4                           ; $8AD2E0 |
  INC.B $1A,X                               ; $8AD2E2 |

CODE_8AD2E4:
  JML.L CODE_FL_82CEC6                      ; $8AD2E4 |

CODE_8AD2E8:
  LDY.W #$0100                              ; $8AD2E8 |
  LDA.W #$00D0                              ; $8AD2EB |
  JSL.L CODE_FL_82CB77                      ; $8AD2EE |
  BNE CODE_8AD2F6                           ; $8AD2F2 |
  INC.B $1A,X                               ; $8AD2F4 |

CODE_8AD2F6:
  JML.L CODE_FL_82CEC6                      ; $8AD2F6 |

CODE_8AD2FA:
  LDA.W #$8A68                              ; $8AD2FA |
  JSL.L CODE_FL_809934                      ; $8AD2FD |
  BCC CODE_8AD330                           ; $8AD301 |
  LDA.W #$FC00                              ; $8AD303 |
  STA.B $28,X                               ; $8AD306 |
  LDA.W #$0200                              ; $8AD308 |
  STA.B $26,X                               ; $8AD30B |
  LDA.W #$0400                              ; $8AD30D |
  STA.B $2A,X                               ; $8AD310 |
  LDA.W #$002A                              ; $8AD312 |
  STA.B $1A,X                               ; $8AD315 |
  STA.B $50,X                               ; $8AD317 |
  STZ.W $1C6A                               ; $8AD319 |
  STZ.W $1C24                               ; $8AD31C |
  JSL.L CODE_FL_82E225                      ; $8AD31F |
  PHX                                       ; $8AD323 |
  LDX.W #DATA_88850B                        ; $8AD324 |
  JSL.L sound_transfer_blocks               ; $8AD327 |
  PLX                                       ; $8AD32B |
  JML.L CODE_FL_82CEC6                      ; $8AD32C |

CODE_8AD330:
  JSL.L CODE_FL_82EE46                      ; $8AD330 |
  JML.L CODE_FL_82CEC6                      ; $8AD334 |

CODE_8AD338:
  DEC.B $38,X                               ; $8AD338 |
  BPL CODE_8AD34B                           ; $8AD33A |
  JSL.L CODE_FL_82CAD2                      ; $8AD33C |
  BNE CODE_8AD34B                           ; $8AD340 |
  LDA.W #$0038                              ; $8AD342 |
  JSL.L push_sound_queue                    ; $8AD345 |
  INC.B $1A,X                               ; $8AD349 |

CODE_8AD34B:
  JML.L CODE_FL_82CEC6                      ; $8AD34B |

CODE_8AD34F:
  LDA.W #$8CC5                              ; $8AD34F |
  JSL.L CODE_FL_809934                      ; $8AD352 |
  BCC CODE_8AD367                           ; $8AD356 |
  JSL.L CODE_FL_82E225                      ; $8AD358 |
  PHX                                       ; $8AD35C |
  LDX.W #DATA_88850B                        ; $8AD35D |
  JSL.L sound_transfer_blocks               ; $8AD360 |
  PLX                                       ; $8AD364 |
  INC.B $1A,X                               ; $8AD365 |

CODE_8AD367:
  JSL.L CODE_FL_82EE46                      ; $8AD367 |
  JML.L CODE_FL_82CEC6                      ; $8AD36B |

CODE_8AD36F:
  LDA.W #$0030                              ; $8AD36F |
  STA.B $4E,X                               ; $8AD372 |
  LDA.W #$002A                              ; $8AD374 |
  STA.B $1A,X                               ; $8AD377 |
  STA.B $50,X                               ; $8AD379 |
  STZ.W $1C6A                               ; $8AD37B |
  STZ.W $1C24                               ; $8AD37E |
  JML.L CODE_FL_82CEC6                      ; $8AD381 |

CODE_8AD385:
  LDA.W #$0006                              ; $8AD385 |
  STA.B $5E,X                               ; $8AD388 |
  LDY.W #$8BBC                              ; $8AD38A |
  JSL.L CODE_FL_82B81C                      ; $8AD38D |
  STZ.W $1CF0                               ; $8AD391 |
  LDA.W #$002B                              ; $8AD394 |
  STA.B $1A,X                               ; $8AD397 |

CODE_8AD399:
  JSL.L CODE_FL_82C8C0                      ; $8AD399 |
  JSL.L CODE_FL_82CAD2                      ; $8AD39D |
  BNE CODE_8AD3CE                           ; $8AD3A1 |
  LDA.W $1CF0                               ; $8AD3A3 |
  BNE CODE_8AD3C3                           ; $8AD3A6 |
  INC.W $1CF0                               ; $8AD3A8 |
  LDA.W #$0038                              ; $8AD3AB |
  JSL.L push_sound_queue                    ; $8AD3AE |
  LDA.W #$8000                              ; $8AD3B2 |
  STA.W $1C7C                               ; $8AD3B5 |
  LDA.W #$0800                              ; $8AD3B8 |
  JSL.L CODE_FL_82C94B                      ; $8AD3BB |
  STZ.B $2A,X                               ; $8AD3BF |
  BRA CODE_8AD3CE                           ; $8AD3C1 |

CODE_8AD3C3:
  DEC.B $4E,X                               ; $8AD3C3 |
  BMI CODE_8AD3D5                           ; $8AD3C5 |
  LDA.W #$0800                              ; $8AD3C7 |
  JSL.L CODE_FL_82CC3A                      ; $8AD3CA |

CODE_8AD3CE:
  JSR.W CODE_FN_8AD987                      ; $8AD3CE |
  JML.L CODE_FL_82CEC6                      ; $8AD3D1 |

CODE_8AD3D5:
  LDA.W $0052,X                             ; $8AD3D5 |
  INC A                                     ; $8AD3D8 |
  AND.W #$000F                              ; $8AD3D9 |
  STA.W $0052,X                             ; $8AD3DC |
  ASL A                                     ; $8AD3DF |
  ASL A                                     ; $8AD3E0 |
  TAY                                       ; $8AD3E1 |
  LDA.W LOOSE_OP_00A229,Y                   ; $8AD3E2 |
  STA.B $00                                 ; $8AD3E5 |
  LDA.W CODE_00A22B,Y                       ; $8AD3E7 |
  STA.W $004E,X                             ; $8AD3EA |
  JMP.W ($0000)                             ; $8AD3ED |

  LDA.B $27,X                               ; $8AD3F0 |
  JSL.L CODE_FL_82D02E                      ; $8AD3F2 |
  LDA.W #$003F                              ; $8AD3F6 |
  JSL.L CODE_FL_82B42F                      ; $8AD3F9 |
  JML.L CODE_FL_82CEC6                      ; $8AD3FD |

CODE_JP_8AD401:
  LDA.W #$0004                              ; $8AD401 |
  JSL.L CODE_FL_82D03F                      ; $8AD404 |
  LDA.W #$003F                              ; $8AD408 |
  JSL.L CODE_FL_82B42F                      ; $8AD40B |
  JML.L CODE_FL_82CEC6                      ; $8AD40F |

CODE_8AD413:
  LDA.W #$0126                              ; $8AD413 |
  JSL.L CODE_FL_8AF70B                      ; $8AD416 |
  STZ.B $26,X                               ; $8AD41A |
  LDA.W #$FA00                              ; $8AD41C |
  STA.B $28,X                               ; $8AD41F |
  LDA.W #$0600                              ; $8AD421 |
  LDY.B $35,X                               ; $8AD424 |
  CPY.W #$0200                              ; $8AD426 |
  BMI CODE_8AD42E                           ; $8AD429 |
  LDA.W #$FE00                              ; $8AD42B |

CODE_8AD42E:
  STA.B $2A,X                               ; $8AD42E |
  LDA.W #$002D                              ; $8AD430 |
  STA.B $1A,X                               ; $8AD433 |
  BRA CODE_8AD455                           ; $8AD435 |

CODE_8AD437:
  JSL.L CODE_FL_82C8C4                      ; $8AD437 |
  JSL.L CODE_FL_82CAD2                      ; $8AD43B |
  BNE CODE_8AD455                           ; $8AD43F |
  LDA.W #$0038                              ; $8AD441 |
  JSL.L push_sound_queue                    ; $8AD444 |
  LDA.W #$8000                              ; $8AD448 |
  STA.W $1C7C                               ; $8AD44B |
  LDA.W #$E800                              ; $8AD44E |
  STA.B $28,X                               ; $8AD451 |
  INC.B $1A,X                               ; $8AD453 |

CODE_8AD455:
  JMP.W CODE_JP_8AD401                      ; $8AD455 |

CODE_8AD458:
  JSL.L CODE_FL_82C89B                      ; $8AD458 |
  CMP.W #$FE10                              ; $8AD45C |
  BPL CODE_8AD463                           ; $8AD45F |
  INC.B $1A,X                               ; $8AD461 |

CODE_8AD463:
  JMP.W CODE_JP_8AD401                      ; $8AD463 |

CODE_8AD466:
  LDY.W #$1000                              ; $8AD466 |
  TDC                                       ; $8AD469 |
  JSL.L CODE_FL_82CB1D                      ; $8AD46A |
  LDY.W #$1000                              ; $8AD46E |
  LDA.W #$0070                              ; $8AD471 |
  JSL.L CODE_FL_82CB77                      ; $8AD474 |
  BNE CODE_8AD481                           ; $8AD478 |
  LDA.W #$0C00                              ; $8AD47A |
  STA.B $28,X                               ; $8AD47D |
  INC.B $1A,X                               ; $8AD47F |

CODE_8AD481:
  JMP.W CODE_JP_8AD401                      ; $8AD481 |

CODE_8AD484:
  JSL.L CODE_FL_82C89B                      ; $8AD484 |
  BMI CODE_8AD4AA                           ; $8AD488 |
  LDA.W #$0038                              ; $8AD48A |
  JSL.L push_sound_queue                    ; $8AD48D |
  LDA.W #$8000                              ; $8AD491 |
  STA.W $1C7C                               ; $8AD494 |
  STZ.B $31,X                               ; $8AD497 |
  LDY.W #$A289                              ; $8AD499 |
  LDA.W #$0004                              ; $8AD49C |
  JSL.L CODE_FL_82D210                      ; $8AD49F |
  LDA.W #$00C0                              ; $8AD4A3 |
  STA.B $38,X                               ; $8AD4A6 |
  INC.B $1A,X                               ; $8AD4A8 |

CODE_8AD4AA:
  JMP.W CODE_JP_8AD401                      ; $8AD4AA |

CODE_8AD4AD:
  LDA.W #$8000                              ; $8AD4AD |
  STA.W $1C7C                               ; $8AD4B0 |
  LDA.W #$0003                              ; $8AD4B3 |
  JSL.L CODE_FL_82D219                      ; $8AD4B6 |
  LDA.B $1E,X                               ; $8AD4BA |
  CMP.W #$0003                              ; $8AD4BC |
  BNE CODE_8AD4EC                           ; $8AD4BF |
  LDA.W $1C92                               ; $8AD4C1 |
  CMP.W #$0150                              ; $8AD4C4 |
  BNE CODE_8AD4EC                           ; $8AD4C7 |
  LDA.W #$8033                              ; $8AD4C9 |
  LDY.W #$0EE0                              ; $8AD4CC |
  JSL.L CODE_FL_82CD78                      ; $8AD4CF |
  LDA.W $0035,Y                             ; $8AD4D3 |
  SEC                                       ; $8AD4D6 |
  SBC.W #$0020                              ; $8AD4D7 |
  STA.W $0035,Y                             ; $8AD4DA |
  LDA.W $1FC6                               ; $8AD4DD |
  LSR A                                     ; $8AD4E0 |
  LDA.W #$0006                              ; $8AD4E1 |
  BCC CODE_8AD4E9                           ; $8AD4E4 |
  LDA.W #$0005                              ; $8AD4E6 |

CODE_8AD4E9:
  STA.W $0038,Y                             ; $8AD4E9 |

CODE_8AD4EC:
  DEC.B $38,X                               ; $8AD4EC |
  BPL CODE_8AD501                           ; $8AD4EE |
  LDA.W #$FA00                              ; $8AD4F0 |
  STA.B $28,X                               ; $8AD4F3 |
  STZ.B $26,X                               ; $8AD4F5 |
  LDA.W #$0400                              ; $8AD4F7 |
  STA.B $2A,X                               ; $8AD4FA |
  LDA.W #$002A                              ; $8AD4FC |
  STA.B $1A,X                               ; $8AD4FF |

CODE_8AD501:
  JMP.W CODE_JP_8AD401                      ; $8AD501 |

CODE_8AD504:
  LDY.W #$0800                              ; $8AD504 |
  JSL.L CODE_FL_82C936                      ; $8AD507 |
  LDA.W #$0033                              ; $8AD50B |
  STA.B $1A,X                               ; $8AD50E |
  RTL                                       ; $8AD510 |

CODE_8AD511:
  LDA.W #$0C00                              ; $8AD511 |
  JSL.L CODE_FL_82CC3A                      ; $8AD514 |
  LDA.W #$0800                              ; $8AD518 |
  TDC                                       ; $8AD51B |
  JSL.L CODE_FL_82CB4A                      ; $8AD51C |
  LDY.W #$0200                              ; $8AD520 |
  LDA.W #$0120                              ; $8AD523 |
  JSL.L CODE_FL_82CB77                      ; $8AD526 |
  BNE CODE_8AD533                           ; $8AD52A |
  LDA.W #$0080                              ; $8AD52C |
  STA.B $38,X                               ; $8AD52F |
  INC.B $1A,X                               ; $8AD531 |

CODE_8AD533:
  JSR.W CODE_FN_8AD987                      ; $8AD533 |
  JMP.W CODE_JP_8AD401                      ; $8AD536 |

CODE_8AD539:
  LDA.W #$0400                              ; $8AD539 |
  JSL.L CODE_FL_82CC3A                      ; $8AD53C |
  LDA.B $42                                 ; $8AD540 |
  AND.W #$0007                              ; $8AD542 |
  BNE CODE_8AD562                           ; $8AD545 |
  LDA.W #$0036                              ; $8AD547 |
  JSL.L CODE_FL_82CD2F                      ; $8AD54A |
  BCC CODE_8AD562                           ; $8AD54E |
  LDA.W #$850E                              ; $8AD550 |
  STA.W $0038,Y                             ; $8AD553 |
  LDA.W #$0010                              ; $8AD556 |
  STA.W $003C,Y                             ; $8AD559 |
  LDA.W #$8004                              ; $8AD55C |
  STA.W $003E,Y                             ; $8AD55F |

CODE_8AD562:
  DEC.B $38,X                               ; $8AD562 |
  BPL CODE_8AD57F                           ; $8AD564 |
  LDY.W #$0200                              ; $8AD566 |
  JSL.L CODE_FL_82C94B                      ; $8AD569 |
  LDA.W #$FC00                              ; $8AD56D |
  STA.B $28,X                               ; $8AD570 |
  LDA.W #$0400                              ; $8AD572 |
  STA.B $2A,X                               ; $8AD575 |
  LDA.W #$002A                              ; $8AD577 |
  STA.B $1A,X                               ; $8AD57A |
  JMP.W CODE_JP_8AD401                      ; $8AD57C |

CODE_8AD57F:
  JSR.W CODE_FN_8AD987                      ; $8AD57F |
  JMP.W CODE_JP_8AD401                      ; $8AD582 |

CODE_8AD585:
  LDA.W #$0126                              ; $8AD585 |
  JSL.L CODE_FL_8AF70B                      ; $8AD588 |
  JSL.L CODE_FL_82CFC3                      ; $8AD58C |
  LDA.B $86                                 ; $8AD590 |
  AND.W #$01FF                              ; $8AD592 |
  SEC                                       ; $8AD595 |
  SBC.W #$0100                              ; $8AD596 |
  STA.B $38,X                               ; $8AD599 |
  LDA.W #$0036                              ; $8AD59B |
  STA.B $1A,X                               ; $8AD59E |
  BRA CODE_8AD5CD                           ; $8AD5A0 |

CODE_8AD5A2:
  LDA.B $38,X                               ; $8AD5A2 |
  LDY.W #$0800                              ; $8AD5A4 |
  JSL.L CODE_FL_82CB1D                      ; $8AD5A7 |
  LDA.W #$0800                              ; $8AD5AB |
  TDC                                       ; $8AD5AE |
  JSL.L CODE_FL_82CB4A                      ; $8AD5AF |
  LDA.W #$0180                              ; $8AD5B3 |
  LDY.W #$0800                              ; $8AD5B6 |
  JSL.L CODE_FL_82CB77                      ; $8AD5B9 |
  BNE CODE_8AD5CD                           ; $8AD5BD |
  LDA.W #$F000                              ; $8AD5BF |
  STA.B $28,X                               ; $8AD5C2 |
  LDA.W #$017A                              ; $8AD5C4 |
  JSL.L CODE_FL_8AF70B                      ; $8AD5C7 |
  INC.B $1A,X                               ; $8AD5CB |

CODE_8AD5CD:
  JMP.W CODE_JP_8AD401                      ; $8AD5CD |

CODE_8AD5D0:
  JSL.L CODE_FL_82C89B                      ; $8AD5D0 |
  CMP.W #$FF40                              ; $8AD5D4 |
  BPL CODE_8AD5FD                           ; $8AD5D7 |
  LDA.W #$0003                              ; $8AD5D9 |
  STA.B $5E,X                               ; $8AD5DC |
  LDA.W #$0060                              ; $8AD5DE |
  STA.B $58,X                               ; $8AD5E1 |
  LDA.W #$0150                              ; $8AD5E3 |
  JSL.L CODE_FL_8AF70B                      ; $8AD5E6 |
  JSL.L CODE_FL_82CFE9                      ; $8AD5EA |
  LDA.W #$0005                              ; $8AD5EE |
  LDY.W #$FFC0                              ; $8AD5F1 |
  JSL.L CODE_FL_82D063                      ; $8AD5F4 |
  STZ.W $1CF0                               ; $8AD5F8 |
  INC.B $1A,X                               ; $8AD5FB |

CODE_8AD5FD:
  JMP.W CODE_JP_8AD401                      ; $8AD5FD |

CODE_8AD600:
  LDA.W $1CF0                               ; $8AD600 |
  BNE CODE_8AD616                           ; $8AD603 |
  LDA.B $35,X                               ; $8AD605 |
  CMP.W #$00A0                              ; $8AD607 |
  BPL CODE_8AD616                           ; $8AD60A |
  INC.W $1CF0                               ; $8AD60C |
  LDA.W #$003C                              ; $8AD60F |
  JSL.L CODE_FL_8089BD                      ; $8AD612 |

CODE_8AD616:
  JSL.L CODE_FL_82C8BC                      ; $8AD616 |
  CMP.W #$0060                              ; $8AD61A |
  BPL CODE_JP_8AD631                        ; $8AD61D |
  LDA.W #$0060                              ; $8AD61F |
  STA.B $35,X                               ; $8AD622 |
  LDA.W #$8000                              ; $8AD624 |
  STA.W $1C7C                               ; $8AD627 |
  LDA.W #$0040                              ; $8AD62A |
  STA.B $38,X                               ; $8AD62D |
  INC.B $1A,X                               ; $8AD62F |

CODE_JP_8AD631:
  JSL.L CODE_FL_82B45B                      ; $8AD631 |
  LDA.B $5C,X                               ; $8AD635 |
  BEQ CODE_8AD65D                           ; $8AD637 |
  AND.W #$00FF                              ; $8AD639 |
  CMP.W #$000F                              ; $8AD63C |
  BEQ CODE_8AD64F                           ; $8AD63F |
  CMP.W #$000E                              ; $8AD641 |
  BEQ CODE_8AD64F                           ; $8AD644 |
  LDA.W #$003F                              ; $8AD646 |
  JSL.L CODE_FL_82B840                      ; $8AD649 |
  BRA CODE_8AD65D                           ; $8AD64D |

CODE_8AD64F:
  LDA.W #$0006                              ; $8AD64F |
  STA.B $5E,X                               ; $8AD652 |
  LDY.W #$8BBC                              ; $8AD654 |
  JSL.L CODE_FL_82B81C                      ; $8AD657 |
  STZ.B $5C,X                               ; $8AD65B |

CODE_8AD65D:
  JML.L CODE_FL_82CEC6                      ; $8AD65D |

CODE_8AD661:
  LDA.W #$0006                              ; $8AD661 |
  STA.B $5E,X                               ; $8AD664 |
  LDY.W #$8BBC                              ; $8AD666 |
  JSL.L CODE_FL_82B81C                      ; $8AD669 |
  JSL.L CODE_FL_82D1BF                      ; $8AD66D |
  DEC.B $38,X                               ; $8AD671 |
  BPL CODE_8AD68B                           ; $8AD673 |
  LDY.W #$0200                              ; $8AD675 |
  JSL.L CODE_FL_82C94B                      ; $8AD678 |
  LDA.W #$FD00                              ; $8AD67C |
  STA.B $28,X                               ; $8AD67F |
  LDA.W #$0400                              ; $8AD681 |
  STA.B $2A,X                               ; $8AD684 |
  LDA.W #$002A                              ; $8AD686 |
  STA.B $1A,X                               ; $8AD689 |

CODE_8AD68B:
  JMP.W CODE_JP_8AD631                      ; $8AD68B |

CODE_8AD68E:
  LDA.W #$0126                              ; $8AD68E |
  JSL.L CODE_FL_8AF70B                      ; $8AD691 |
  JSL.L CODE_FL_82CFBD                      ; $8AD695 |
  LDA.W #$003B                              ; $8AD699 |
  STA.B $1A,X                               ; $8AD69C |
  JMP.W CODE_JP_8AD401                      ; $8AD69E |

CODE_8AD6A1:
  TDC                                       ; $8AD6A1 |
  LDY.W #$0800                              ; $8AD6A2 |
  JSL.L CODE_FL_82CB1D                      ; $8AD6A5 |
  TDC                                       ; $8AD6A9 |
  LDY.W #$0800                              ; $8AD6AA |
  JSL.L CODE_FL_82CB4A                      ; $8AD6AD |
  LDA.W #$01E0                              ; $8AD6B1 |
  LDY.W #$0800                              ; $8AD6B4 |
  JSL.L CODE_FL_82CB77                      ; $8AD6B7 |
  BNE CODE_8AD6D2                           ; $8AD6BB |
  LDA.W #$3494                              ; $8AD6BD |
  STA.B $00,X                               ; $8AD6C0 |
  STZ.W $1CF8                               ; $8AD6C2 |
  LDA.W #$0000                              ; $8AD6C5 |
  JSL.L CODE_FL_8AF70B                      ; $8AD6C8 |
  JSL.L CODE_FL_82CFD5                      ; $8AD6CC |
  INC.B $1A,X                               ; $8AD6D0 |

CODE_8AD6D2:
  JMP.W CODE_JP_8AD401                      ; $8AD6D2 |

CODE_8AD6D5:
  INC.W $1CF8                               ; $8AD6D5 |
  JSR.W CODE_FN_8AD751                      ; $8AD6D8 |
  CMP.W #$0054                              ; $8AD6DB |
  BNE CODE_8AD6FC                           ; $8AD6DE |
  LDA.W #$804A                              ; $8AD6E0 |
  LDY.W #$0EE0                              ; $8AD6E3 |
  JSL.L CODE_FL_82CD78                      ; $8AD6E6 |
  LDA.B $40,X                               ; $8AD6EA |
  EOR.W #$0001                              ; $8AD6EC |
  STA.B $40,X                               ; $8AD6EF |
  LSR A                                     ; $8AD6F1 |
  TDC                                       ; $8AD6F2 |
  BCC CODE_8AD6F8                           ; $8AD6F3 |
  LDA.W #$0005                              ; $8AD6F5 |

CODE_8AD6F8:
  STA.W $001A,Y                             ; $8AD6F8 |
  RTL                                       ; $8AD6FB |

CODE_8AD6FC:
  CMP.W #$0085                              ; $8AD6FC |
  BNE CODE_JP_8AD703                        ; $8AD6FF |
  INC.B $1A,X                               ; $8AD701 |

CODE_JP_8AD703:
  LDA.W #$003F                              ; $8AD703 |
  JML.L CODE_FL_82B42F                      ; $8AD706 |

CODE_8AD70A:
  LDA.W $0EF8                               ; $8AD70A |
  BNE CODE_8AD71E                           ; $8AD70D |
  LDA.W #$0014                              ; $8AD70F |
  JSL.L CODE_FL_8089BD                      ; $8AD712 |
  LDA.W #$0054                              ; $8AD716 |
  STA.W $1CF8                               ; $8AD719 |
  INC.B $1A,X                               ; $8AD71C |

CODE_8AD71E:
  BRA CODE_JP_8AD703                        ; $8AD71E |

CODE_8AD720:
  DEC.W $1CF8                               ; $8AD720 |
  JSR.W CODE_FN_8AD751                      ; $8AD723 |
  CMP.W #$0000                              ; $8AD726 |
  BNE CODE_8AD74E                           ; $8AD729 |
  LDA.W #$0126                              ; $8AD72B |
  JSL.L CODE_FL_8AF70B                      ; $8AD72E |
  STZ.B $00,X                               ; $8AD732 |
  JSL.L CODE_FL_82CFD5                      ; $8AD734 |
  LDY.W #$0200                              ; $8AD738 |
  JSL.L CODE_FL_82C94B                      ; $8AD73B |
  LDA.W #$FD00                              ; $8AD73F |
  STA.B $28,X                               ; $8AD742 |
  STZ.B $2A,X                               ; $8AD744 |
  LDA.W #$002A                              ; $8AD746 |
  STA.B $1A,X                               ; $8AD749 |
  JMP.W CODE_JP_8AD401                      ; $8AD74B |

CODE_8AD74E:
  JMP.W CODE_JP_8AD703                      ; $8AD74E |

CODE_FN_8AD751:
  LDA.W $1CF8                               ; $8AD751 |
  LDY.W #$3494                              ; $8AD754 |
  CMP.W #$0021                              ; $8AD757 |
  BMI CODE_8AD76F                           ; $8AD75A |
  LDY.W #$351A                              ; $8AD75C |
  CMP.W #$0027                              ; $8AD75F |
  BMI CODE_8AD76F                           ; $8AD762 |
  LDY.W #$37EE                              ; $8AD764 |
  CMP.W #$0054                              ; $8AD767 |
  BMI CODE_8AD76F                           ; $8AD76A |
  LDY.W #$3832                              ; $8AD76C |

CODE_8AD76F:
  STY.B $00,X                               ; $8AD76F |
  RTS                                       ; $8AD771 |

CODE_8AD772:
  LDA.W #$01CE                              ; $8AD772 |
  JSL.L CODE_FL_8AF70B                      ; $8AD775 |
  STZ.B $00,X                               ; $8AD779 |
  STZ.B $1C,X                               ; $8AD77B |
  STZ.W $1C9A                               ; $8AD77D |
  LDA.W #$0001                              ; $8AD780 |
  STA.W $1C74                               ; $8AD783 |
  STZ.W $1FD4                               ; $8AD786 |
  LDA.W #$0006                              ; $8AD789 |
  STA.B $5E,X                               ; $8AD78C |
  STZ.B $5A,X                               ; $8AD78E |
  STZ.B $38,X                               ; $8AD790 |
  STZ.B $3A,X                               ; $8AD792 |
  LDY.W #$8BBC                              ; $8AD794 |
  JSL.L CODE_FL_82B81C                      ; $8AD797 |
  INC.B $1A,X                               ; $8AD79B |
  JML.L CODE_JL_82A9F6                      ; $8AD79D |

CODE_8AD7A1:
  LDA.W $1C16                               ; $8AD7A1 |
  BEQ CODE_8AD7AC                           ; $8AD7A4 |
  CMP.W #$0DC0                              ; $8AD7A6 |
  BEQ CODE_8AD7AC                           ; $8AD7A9 |
  RTL                                       ; $8AD7AB |

CODE_8AD7AC:
  LDA.B $3C,X                               ; $8AD7AC |
  BNE CODE_8AD7BE                           ; $8AD7AE |
  LDA.W #$0016                              ; $8AD7B0 |
  JSL.L CODE_FL_8AF776                      ; $8AD7B3 |
  LDA.W #$0047                              ; $8AD7B7 |
  STA.B $1A,X                               ; $8AD7BA |
  BRA CODE_8AD7C7                           ; $8AD7BC |

CODE_8AD7BE:
  LDA.W #$0126                              ; $8AD7BE |
  JSL.L CODE_FL_8AF70B                      ; $8AD7C1 |
  INC.B $1A,X                               ; $8AD7C5 |

CODE_8AD7C7:
  STZ.B $00,X                               ; $8AD7C7 |
  JSL.L CODE_FL_82CFD5                      ; $8AD7C9 |
  LDA.W #$0001                              ; $8AD7CD |
  STA.W $1C6A                               ; $8AD7D0 |
  STZ.B $5E,X                               ; $8AD7D3 |
  LDA.W #$0080                              ; $8AD7D5 |
  STA.B $38,X                               ; $8AD7D8 |
  RTL                                       ; $8AD7DA |

CODE_8AD7DB:
  LDA.W #$FFC0                              ; $8AD7DB |
  LDY.W #$0A00                              ; $8AD7DE |
  JSL.L CODE_FL_82CB1D                      ; $8AD7E1 |
  LDA.W #$01E0                              ; $8AD7E5 |
  LDY.W #$0A00                              ; $8AD7E8 |
  JSL.L CODE_FL_82CB77                      ; $8AD7EB |
  JSL.L CODE_FL_82CAD2                      ; $8AD7EF |
  BNE CODE_8AD7FB                           ; $8AD7F3 |
  DEC.B $38,X                               ; $8AD7F5 |
  BPL CODE_8AD7FB                           ; $8AD7F7 |
  INC.B $1A,X                               ; $8AD7F9 |

CODE_8AD7FB:
  LDA.W #$0004                              ; $8AD7FB |
  JSL.L CODE_FL_82D03F                      ; $8AD7FE |
  JML.L CODE_FL_82CEC6                      ; $8AD802 |

CODE_8AD806:
  LDA.W #$89B6                              ; $8AD806 |
  JSL.L CODE_FL_809934                      ; $8AD809 |
  BCC CODE_8AD830                           ; $8AD80D |
  LDA.W #$3832                              ; $8AD80F |
  STA.B $00,X                               ; $8AD812 |
  LDA.W #$804A                              ; $8AD814 |
  LDY.W #$0EE0                              ; $8AD817 |
  JSL.L CODE_FL_82CD78                      ; $8AD81A |
  LDA.W #$000D                              ; $8AD81E |
  STA.W $001A,Y                             ; $8AD821 |
  LDA.W #$FF00                              ; $8AD824 |
  STA.B $26,X                               ; $8AD827 |
  LDA.W #$0080                              ; $8AD829 |
  STA.B $38,X                               ; $8AD82C |
  INC.B $1A,X                               ; $8AD82E |

CODE_8AD830:
  JML.L CODE_FL_82CEC6                      ; $8AD830 |

CODE_8AD834:
  JSL.L CODE_FL_82C87C                      ; $8AD834 |
  DEC.B $38,X                               ; $8AD838 |
  BPL CODE_8AD84B                           ; $8AD83A |
  LDA.W #$386C                              ; $8AD83C |
  STA.B $00,X                               ; $8AD83F |
  INC.W $0EFA                               ; $8AD841 |
  LDA.W #$0040                              ; $8AD844 |
  STA.B $38,X                               ; $8AD847 |
  INC.B $1A,X                               ; $8AD849 |

CODE_8AD84B:
  RTL                                       ; $8AD84B |

CODE_8AD84C:
  DEC.B $38,X                               ; $8AD84C |
  BPL CODE_8AD857                           ; $8AD84E |
  LDA.W #$3832                              ; $8AD850 |
  STA.B $00,X                               ; $8AD853 |
  INC.B $1A,X                               ; $8AD855 |

CODE_8AD857:
  JML.L CODE_FL_82C87C                      ; $8AD857 |

CODE_8AD85B:
  JML.L CODE_FL_82C87C                      ; $8AD85B |

CODE_8AD85F:
  LDA.W #$0040                              ; $8AD85F |
  LDY.W #$0A00                              ; $8AD862 |
  JSL.L CODE_FL_82CB1D                      ; $8AD865 |
  LDA.W #$01E0                              ; $8AD869 |
  LDY.W #$0A00                              ; $8AD86C |
  JSL.L CODE_FL_82CB77                      ; $8AD86F |
  JSL.L CODE_FL_82CAD2                      ; $8AD873 |
  BNE CODE_8AD87F                           ; $8AD877 |
  DEC.B $38,X                               ; $8AD879 |
  BPL CODE_8AD87F                           ; $8AD87B |
  INC.B $1A,X                               ; $8AD87D |

CODE_8AD87F:
  LDA.W #$0004                              ; $8AD87F |
  JSL.L CODE_FL_82D03F                      ; $8AD882 |
  JML.L CODE_FL_82CEC6                      ; $8AD886 |

CODE_8AD88A:
  LDA.W #$8941                              ; $8AD88A |
  JSL.L CODE_FL_809934                      ; $8AD88D |
  BCC CODE_8AD89A                           ; $8AD891 |
  LDA.W #$0040                              ; $8AD893 |
  STA.B $38,X                               ; $8AD896 |
  INC.B $1A,X                               ; $8AD898 |

CODE_8AD89A:
  JML.L CODE_FL_82CEC6                      ; $8AD89A |

CODE_8AD89E:
  DEC.B $38,X                               ; $8AD89E |
  BPL CODE_8AD830                           ; $8AD8A0 |
  LDA.W #$8000                              ; $8AD8A2 |
  STA.W $1C68                               ; $8AD8A5 |
  INC.B $1A,X                               ; $8AD8A8 |
  RTL                                       ; $8AD8AA |

CODE_8AD8AB:
  RTL                                       ; $8AD8AB |

CODE_8AD8AC:
  LDY.W #$0000                              ; $8AD8AC |
  JSL.L CODE_FL_82B31F                      ; $8AD8AF |
  LDA.W #$000D                              ; $8AD8B3 |
  JSL.L push_sound_queue                    ; $8AD8B6 |
  LDA.W #$01CE                              ; $8AD8BA |
  JSL.L CODE_FL_8AF70B                      ; $8AD8BD |
  STZ.B $26,X                               ; $8AD8C1 |
  LDA.W #$F400                              ; $8AD8C3 |
  STA.B $28,X                               ; $8AD8C6 |
  INC.B $1A,X                               ; $8AD8C8 |

CODE_8AD8CA:
  LDA.B $35,X                               ; $8AD8CA |
  CMP.W #$00D0                              ; $8AD8CC |
  BPL CODE_8AD8DB                           ; $8AD8CF |
  LDA.W #$00D0                              ; $8AD8D1 |
  LDY.W #$0400                              ; $8AD8D4 |
  JSL.L CODE_FL_82CB77                      ; $8AD8D7 |

CODE_8AD8DB:
  JSL.L CODE_FL_82CAD2                      ; $8AD8DB |
  BNE CODE_8AD901                           ; $8AD8DF |
  STZ.B $31,X                               ; $8AD8E1 |
  LDY.W #$0001                              ; $8AD8E3 |
  JSL.L CODE_FL_82B31F                      ; $8AD8E6 |
  PHX                                       ; $8AD8EA |
  LDX.W #DATA_888520                        ; $8AD8EB |
  JSL.L sound_transfer_blocks               ; $8AD8EE |
  PLX                                       ; $8AD8F2 |
  LDA.W #$0002                              ; $8AD8F3 |
  STA.W $1C68                               ; $8AD8F6 |
  LDA.W #$0001                              ; $8AD8F9 |
  STA.W $1C66                               ; $8AD8FC |
  INC.B $1A,X                               ; $8AD8FF |

CODE_8AD901:
  JSL.L CODE_FL_82D1BF                      ; $8AD901 |
  JML.L CODE_FL_82CEC6                      ; $8AD905 |

CODE_8AD909:
  LDA.W #$8A0C                              ; $8AD909 |
  JSL.L CODE_FL_809934                      ; $8AD90C |
  BCC CODE_8AD921                           ; $8AD910 |
  LDA.W #$0002                              ; $8AD912 |
  STA.W $1C5E                               ; $8AD915 |
  STA.W $1C60                               ; $8AD918 |
  JSL.L CODE_FL_82C13A                      ; $8AD91B |
  INC.B $1A,X                               ; $8AD91F |

CODE_8AD921:
  JSL.L CODE_FL_82D1BF                      ; $8AD921 |
  JML.L CODE_FL_82CEC6                      ; $8AD925 |

CODE_8AD929:
  LDA.W $1DE0                               ; $8AD929 |
  CMP.W #$0002                              ; $8AD92C |
  BMI CODE_8AD921                           ; $8AD92F |
  LDA.W #$0000                              ; $8AD931 |
  JSL.L CODE_FL_8AF70B                      ; $8AD934 |
  STZ.B $00,X                               ; $8AD938 |
  INC.W $1C9A                               ; $8AD93A |
  LDA.W #$4049                              ; $8AD93D |
  LDY.W #$0E20                              ; $8AD940 |
  JSL.L CODE_FL_82CD78                      ; $8AD943 |
  LDA.W #$0001                              ; $8AD947 |
  STA.W $003C,Y                             ; $8AD94A |
  PHX                                       ; $8AD94D |
  LDA.B $12,X                               ; $8AD94E |
  TAX                                       ; $8AD950 |
  JSL.L CODE_FL_82CCD2                      ; $8AD951 |
  LDX.W #$0700                              ; $8AD955 |
  JSL.L CODE_FL_82CC9F                      ; $8AD958 |
  LDX.W #$0E80                              ; $8AD95C |
  JSL.L CODE_FL_82CC9F                      ; $8AD95F |
  LDX.W #$0EE0                              ; $8AD963 |
  JSL.L CODE_FL_82CC9F                      ; $8AD966 |
  PLX                                       ; $8AD96A |
  JML.L CODE_FL_82CC9F                      ; $8AD96B |

CODE_FN_8AD96F:
  LDA.B $10,X                               ; $8AD96F |
  CMP.W #$1500                              ; $8AD971 |
  BPL CODE_8AD981                           ; $8AD974 |
  SED                                       ; $8AD976 |
  LDA.B $10,X                               ; $8AD977 |
  CLC                                       ; $8AD979 |
  ADC.W #$0010                              ; $8AD97A |
  STA.B $10,X                               ; $8AD97D |
  CLD                                       ; $8AD97F |
  RTS                                       ; $8AD980 |

CODE_8AD981:
  LDA.W #$1500                              ; $8AD981 |
  STA.B $10,X                               ; $8AD984 |
  RTS                                       ; $8AD986 |

CODE_FN_8AD987:
  LDA.B $09,X                               ; $8AD987 |
  CMP.W #$0090                              ; $8AD989 |
  BPL CODE_8AD9B9                           ; $8AD98C |
  CMP.W #$0070                              ; $8AD98E |
  BMI CODE_8AD9A4                           ; $8AD991 |
  LDA.W $1C92                               ; $8AD993 |
  CMP.W #$00FC                              ; $8AD996 |
  BEQ CODE_8AD9C8                           ; $8AD999 |
  LDA.W #$00FC                              ; $8AD99B |
  JSL.L CODE_FL_8AF70B                      ; $8AD99E |
  BRA CODE_8AD9C8                           ; $8AD9A2 |

CODE_8AD9A4:
  LDA.W $1C92                               ; $8AD9A4 |
  CMP.W #$0126                              ; $8AD9A7 |
  BEQ CODE_8AD9B3                           ; $8AD9AA |
  LDA.W #$0126                              ; $8AD9AC |
  JSL.L CODE_FL_8AF70B                      ; $8AD9AF |

CODE_8AD9B3:
  JSL.L CODE_FL_82CFDF                      ; $8AD9B3 |
  BRA CODE_8AD9CC                           ; $8AD9B7 |

CODE_8AD9B9:
  LDA.W $1C92                               ; $8AD9B9 |
  CMP.W #$0126                              ; $8AD9BC |
  BEQ CODE_8AD9C8                           ; $8AD9BF |
  LDA.W #$0126                              ; $8AD9C1 |
  JSL.L CODE_FL_8AF70B                      ; $8AD9C4 |

CODE_8AD9C8:
  JSL.L CODE_FL_82CFD5                      ; $8AD9C8 |

CODE_8AD9CC:
  RTS                                       ; $8AD9CC |

  LDA.W #$000E                              ; $8AD9CD |
  JSL.L CODE_FL_82D348                      ; $8AD9D0 |
  CPX.W $1C16                               ; $8AD9D4 |
  BNE CODE_8AD9E3                           ; $8AD9D7 |
  LDY.W #$92EA                              ; $8AD9D9 |
  LDA.W #$990A                              ; $8AD9DC |
  JSL.L CODE_FL_82D181                      ; $8AD9DF |

CODE_8AD9E3:
  LDA.B $1A,X                               ; $8AD9E3 |
  PHX                                       ; $8AD9E5 |
  ASL A                                     ; $8AD9E6 |
  TAX                                       ; $8AD9E7 |
  LDA.L PTR16_8AD9F2,X                      ; $8AD9E8 |
  PLX                                       ; $8AD9EC |
  STA.B $00                                 ; $8AD9ED |
  JMP.W ($0000)                             ; $8AD9EF |

PTR16_8AD9F2:
  dw CODE_8ADA20                            ; $8AD9F2 |
  dw CODE_8ADA67                            ; $8AD9F4 |
  dw CODE_8ADA68                            ; $8AD9F6 |
  dw CODE_8ADA85                            ; $8AD9F8 |
  dw CODE_8ADA93                            ; $8AD9FA |
  dw CODE_8ADAB3                            ; $8AD9FC |
  dw CODE_8ADACE                            ; $8AD9FE |
  dw CODE_8ADAF5                            ; $8ADA00 |
  dw CODE_8ADB5E                            ; $8ADA02 |
  dw CODE_8ADBFE                            ; $8ADA04 |
  dw CODE_8ADBFE                            ; $8ADA06 |
  dw CODE_8ADC21                            ; $8ADA08 |
  dw CODE_8ADC2F                            ; $8ADA0A |
  dw CODE_8ADC46                            ; $8ADA0C |
  dw CODE_8ADC4A                            ; $8ADA0E |
  dw CODE_8ADC75                            ; $8ADA10 |
  dw CODE_8ADC96                            ; $8ADA12 |
  dw CODE_8ADCB4                            ; $8ADA14 |
  dw CODE_8ADCCF                            ; $8ADA16 |
  dw CODE_8ADCE5                            ; $8ADA18 |
  dw CODE_8ADD02                            ; $8ADA1A |
  dw CODE_8ADD17                            ; $8ADA1C |
  dw CODE_8ADD32                            ; $8ADA1E |

CODE_8ADA20:
  JSL.L CODE_FL_8ADA2B                      ; $8ADA20 |
  JSL.L CODE_FL_82CE4B                      ; $8ADA24 |
  INC.B $1A,X                               ; $8ADA28 |
  RTL                                       ; $8ADA2A |

CODE_FL_8ADA2B:
  LDA.W #$01E0                              ; $8ADA2B |
  STA.B $35,X                               ; $8ADA2E |
  LDA.W #$FFC0                              ; $8ADA30 |
  STA.B $31,X                               ; $8ADA33 |
  LDA.B $3C,X                               ; $8ADA35 |
  BNE CODE_8ADA47                           ; $8ADA37 |
  LDA.W #$0280                              ; $8ADA39 |
  STA.B $2D,X                               ; $8ADA3C |
  STZ.B $04,X                               ; $8ADA3E |
  LDA.W #$00C0                              ; $8ADA40 |
  STA.B $3E,X                               ; $8ADA43 |
  BRA CODE_8ADA56                           ; $8ADA45 |

CODE_8ADA47:
  LDA.W #$FD80                              ; $8ADA47 |
  STA.B $2D,X                               ; $8ADA4A |
  LDA.W #$2020                              ; $8ADA4C |
  STA.B $04,X                               ; $8ADA4F |
  LDA.W #$FF40                              ; $8ADA51 |
  STA.B $3E,X                               ; $8ADA54 |

CODE_8ADA56:
  LDY.W #$0400                              ; $8ADA56 |
  JSL.L CODE_FL_82C94B                      ; $8ADA59 |
  LDY.W #$84F8                              ; $8ADA5D |
  LDA.W #$0004                              ; $8ADA60 |
  JML.L CODE_FL_828AD9                      ; $8ADA63 |

CODE_8ADA67:
  RTL                                       ; $8ADA67 |

CODE_8ADA68:
  LDY.W #$0400                              ; $8ADA68 |
  LDA.W #$FFA0                              ; $8ADA6B |
  JSL.L CODE_FL_82C9A6                      ; $8ADA6E |
  JSL.L CODE_FL_82C87C                      ; $8ADA72 |
  CMP.B $3E,X                               ; $8ADA76 |
  BNE CODE_8ADA84                           ; $8ADA78 |
  LDA.W #$0005                              ; $8ADA7A |
  STA.B $1A,X                               ; $8ADA7D |
  LDA.W #$0003                              ; $8ADA7F |
  STA.B $50,X                               ; $8ADA82 |

CODE_8ADA84:
  RTL                                       ; $8ADA84 |

CODE_8ADA85:
  LDA.W #$00F2                              ; $8ADA85 |
  JSL.L CODE_FL_8AF776                      ; $8ADA88 |
  LDA.W #$F800                              ; $8ADA8C |
  STA.B $28,X                               ; $8ADA8F |
  INC.B $1A,X                               ; $8ADA91 |

CODE_8ADA93:
  JSL.L CODE_FL_82CAD2                      ; $8ADA93 |
  LDY.W #$0800                              ; $8ADA97 |
  LDA.W #$01E0                              ; $8ADA9A |
  JSL.L CODE_FL_82CB77                      ; $8ADA9D |
  BNE CODE_8ADAAF                           ; $8ADAA1 |
  LDA.W #$0000                              ; $8ADAA3 |
  JSL.L CODE_FL_8AF776                      ; $8ADAA6 |
  STZ.W $1C16                               ; $8ADAAA |
  BRA CODE_8ADAB3                           ; $8ADAAD |

CODE_8ADAAF:
  JML.L CODE_FL_82CEC6                      ; $8ADAAF |

CODE_8ADAB3:
  LDA.W #$0001                              ; $8ADAB3 |
  STA.B $5E,X                               ; $8ADAB6 |
  LDY.W #$8BC5                              ; $8ADAB8 |
  JSL.L CODE_FL_82B81C                      ; $8ADABB |
  LDY.W #$84F8                              ; $8ADABF |
  LDA.W #$0008                              ; $8ADAC2 |
  JSL.L CODE_FL_828AD9                      ; $8ADAC5 |
  LDA.W #$0006                              ; $8ADAC9 |
  STA.B $1A,X                               ; $8ADACC |

CODE_8ADACE:
  LDY.W #$0400                              ; $8ADACE |
  LDA.W #$FFA0                              ; $8ADAD1 |
  JSL.L CODE_FL_82C9A6                      ; $8ADAD4 |
  LDA.W #$0010                              ; $8ADAD8 |
  STA.B $06                                 ; $8ADADB |
  LDY.W #$0400                              ; $8ADADD |
  LDA.B $3E,X                               ; $8ADAE0 |
  JSL.L CODE_FL_82C951                      ; $8ADAE2 |
  LDA.B $52,X                               ; $8ADAE6 |
  BEQ CODE_8ADAEE                           ; $8ADAE8 |
  STA.B $1A,X                               ; $8ADAEA |
  STZ.B $52,X                               ; $8ADAEC |

CODE_8ADAEE:
  LDA.W #$000A                              ; $8ADAEE |
  JML.L CODE_FL_82B42F                      ; $8ADAF1 |

CODE_8ADAF5:
  LDA.B $35,X                               ; $8ADAF5 |
  BPL CODE_8ADAFD                           ; $8ADAF7 |
  EOR.W #$FFFF                              ; $8ADAF9 |
  INC A                                     ; $8ADAFC |

CODE_8ADAFD:
  LSR A                                     ; $8ADAFD |
  LSR A                                     ; $8ADAFE |
  EOR.W #$FFFF                              ; $8ADAFF |
  INC A                                     ; $8ADB02 |
  LDY.W #$0400                              ; $8ADB03 |
  JSL.L CODE_FL_82CB4A                      ; $8ADB06 |
  LDY.W #$0800                              ; $8ADB0A |
  TDC                                       ; $8ADB0D |
  JSL.L CODE_FL_82CB1D                      ; $8ADB0E |
  LDY.W #$0800                              ; $8ADB12 |
  LDA.W #$01E0                              ; $8ADB15 |
  JSL.L CODE_FL_82CB77                      ; $8ADB18 |
  BNE CODE_8ADB5D                           ; $8ADB1C |
  LDA.B $2D,X                               ; $8ADB1E |
  BNE CODE_8ADB5D                           ; $8ADB20 |
  LDA.W #$0080                              ; $8ADB22 |
  STA.B $40,X                               ; $8ADB25 |
  LDA.W #$00F0                              ; $8ADB27 |
  STA.B $42,X                               ; $8ADB2A |
  LDA.W #$0180                              ; $8ADB2C |
  STA.B $38,X                               ; $8ADB2F |
  LDA.W #$FFFE                              ; $8ADB31 |
  STA.B $3A,X                               ; $8ADB34 |
  LDY.W #$A2AB                              ; $8ADB36 |
  JSL.L CODE_FL_82D20D                      ; $8ADB39 |
  STZ.B $1C,X                               ; $8ADB3D |
  STZ.B $00,X                               ; $8ADB3F |
  INC.B $1A,X                               ; $8ADB41 |
  LDA.B $3C,X                               ; $8ADB43 |
  BNE CODE_8ADB52                           ; $8ADB45 |
  JSL.L CODE_FL_82CFD5                      ; $8ADB47 |
  LDA.W #$FFFD                              ; $8ADB4B |
  STA.B $44,X                               ; $8ADB4E |
  BRA CODE_8ADB5E                           ; $8ADB50 |

CODE_8ADB52:
  JSL.L CODE_FL_82CFDF                      ; $8ADB52 |
  LDA.W #$0003                              ; $8ADB56 |
  STA.B $44,X                               ; $8ADB59 |
  BRA CODE_8ADB5E                           ; $8ADB5B |

CODE_8ADB5D:
  RTL                                       ; $8ADB5D |

CODE_8ADB5E:
  LDA.B $44,X                               ; $8ADB5E |
  CLC                                       ; $8ADB60 |
  ADC.B $40,X                               ; $8ADB61 |
  STA.B $40,X                               ; $8ADB63 |
  LDA.B $3A,X                               ; $8ADB65 |
  CLC                                       ; $8ADB67 |
  ADC.B $42,X                               ; $8ADB68 |
  STA.B $42,X                               ; $8ADB6A |
  CMP.W #$00F0                              ; $8ADB6C |
  BPL CODE_8ADB76                           ; $8ADB6F |
  CMP.W #$0040                              ; $8ADB71 |
  BPL CODE_8ADB7E                           ; $8ADB74 |

CODE_8ADB76:
  LDA.B $3A,X                               ; $8ADB76 |
  EOR.W #$FFFF                              ; $8ADB78 |
  INC A                                     ; $8ADB7B |
  STA.B $3A,X                               ; $8ADB7C |

CODE_8ADB7E:
  LDA.B $09,X                               ; $8ADB7E |
  CMP.W #$00E0                              ; $8ADB80 |
  BPL CODE_8ADBB3                           ; $8ADB83 |
  CMP.W #$0020                              ; $8ADB85 |
  BMI CODE_8ADBB3                           ; $8ADB88 |
  LDA.B $42                                 ; $8ADB8A |
  AND.W #$0007                              ; $8ADB8C |
  BNE CODE_8ADBB3                           ; $8ADB8F |
  LDA.W #$0036                              ; $8ADB91 |
  JSL.L CODE_FL_82CD2F                      ; $8ADB94 |
  BCC CODE_8ADBB3                           ; $8ADB98 |
  LDA.W #$850E                              ; $8ADB9A |
  STA.W $0038,Y                             ; $8ADB9D |
  LDA.W #$FFE0                              ; $8ADBA0 |
  STA.W $003A,Y                             ; $8ADBA3 |
  LDA.W #$8004                              ; $8ADBA6 |
  STA.W $003E,Y                             ; $8ADBA9 |
  LDA.W #$00BC                              ; $8ADBAC |
  JSL.L CODE_FL_8089BD                      ; $8ADBAF |

CODE_8ADBB3:
  DEC.B $38,X                               ; $8ADBB3 |
  BPL CODE_8ADBBC                           ; $8ADBB5 |
  LDY.W #$0003                              ; $8ADBB7 |
  STY.B $1A,X                               ; $8ADBBA |

CODE_8ADBBC:
  LDA.W #$0006                              ; $8ADBBC |
  JSL.L CODE_FL_82D219                      ; $8ADBBF |
  LDA.B $35,X                               ; $8ADBC3 |
  BPL CODE_8ADBCB                           ; $8ADBC5 |
  EOR.W #$FFFF                              ; $8ADBC7 |
  INC A                                     ; $8ADBCA |

CODE_8ADBCB:
  LSR A                                     ; $8ADBCB |
  LSR A                                     ; $8ADBCC |
  EOR.W #$FFFF                              ; $8ADBCD |
  INC A                                     ; $8ADBD0 |
  LDY.W #$0400                              ; $8ADBD1 |
  JSL.L CODE_FL_82CB4A                      ; $8ADBD4 |
  LDA.B $40,X                               ; $8ADBD8 |
  AND.W #$01FF                              ; $8ADBDA |
  LDY.B $42,X                               ; $8ADBDD |
  JSL.L CODE_FL_8AB51A                      ; $8ADBDF |
  ASL.B $00                                 ; $8ADBE3 |
  ROL.B $02                                 ; $8ADBE5 |
  ASL.B $04                                 ; $8ADBE7 |
  ROL.B $06                                 ; $8ADBE9 |
  LDA.B $01                                 ; $8ADBEB |
  STA.B $2D,X                               ; $8ADBED |
  LDA.B $05                                 ; $8ADBEF |
  STA.B $35,X                               ; $8ADBF1 |
  LDA.W #$000A                              ; $8ADBF3 |
  JSL.L CODE_FL_82B42F                      ; $8ADBF6 |
  JML.L CODE_FL_82CEC6                      ; $8ADBFA |

CODE_8ADBFE:
  STZ.B $5E,X                               ; $8ADBFE |
  LDY.W #$8BC5                              ; $8ADC00 |
  JSL.L CODE_FL_82B81C                      ; $8ADC03 |
  CPX.W $1C16                               ; $8ADC07 |
  BEQ CODE_8ADC2F                           ; $8ADC0A |
  LDY.W #$0002                              ; $8ADC0C |
  JSL.L CODE_FL_82B0E1                      ; $8ADC0F |
  LDA.W #$F800                              ; $8ADC13 |
  STA.B $28,X                               ; $8ADC16 |
  STZ.B $2A,X                               ; $8ADC18 |
  STZ.B $26,X                               ; $8ADC1A |
  LDA.W #$000B                              ; $8ADC1C |
  STA.B $1A,X                               ; $8ADC1F |

CODE_8ADC21:
  JSL.L CODE_FL_82CAD2                      ; $8ADC21 |
  BNE CODE_8ADC2E                           ; $8ADC25 |
  STZ.B $5C,X                               ; $8ADC27 |
  LDA.W #$0005                              ; $8ADC29 |
  STA.B $1A,X                               ; $8ADC2C |

CODE_8ADC2E:
  RTL                                       ; $8ADC2E |

CODE_8ADC2F:
  LDA.W #$000D                              ; $8ADC2F |
  STA.B $1A,X                               ; $8ADC32 |
  LDA.W #$009A                              ; $8ADC34 |
  JSL.L CODE_FL_8AF776                      ; $8ADC37 |
  STZ.B $00,X                               ; $8ADC3B |
  STZ.W $1FD4                               ; $8ADC3D |
  STZ.B $5A,X                               ; $8ADC40 |
  STZ.B $38,X                               ; $8ADC42 |
  STZ.B $3A,X                               ; $8ADC44 |

CODE_8ADC46:
  JML.L CODE_JL_82A9F6                      ; $8ADC46 |

CODE_8ADC4A:
  STZ.B $5E,X                               ; $8ADC4A |
  LDY.W #$8BC5                              ; $8ADC4C |
  JSL.L CODE_FL_82B81C                      ; $8ADC4F |
  LDA.W #$35AA                              ; $8ADC53 |
  STA.B $00,X                               ; $8ADC56 |
  LDY.W #$0002                              ; $8ADC58 |
  JSL.L CODE_FL_82B0E1                      ; $8ADC5B |
  LDA.W #$FB00                              ; $8ADC5F |
  STA.B $28,X                               ; $8ADC62 |
  LDY.W #$FD80                              ; $8ADC64 |
  LDA.B $3C,X                               ; $8ADC67 |
  BNE CODE_8ADC6E                           ; $8ADC69 |
  LDY.W #$0500                              ; $8ADC6B |

CODE_8ADC6E:
  STY.B $2D,X                               ; $8ADC6E |
  LDA.W #$000F                              ; $8ADC70 |
  STA.B $1A,X                               ; $8ADC73 |

CODE_8ADC75:
  LDY.W #$1000                              ; $8ADC75 |
  LDA.W #$01E0                              ; $8ADC78 |
  JSL.L CODE_FL_82CB77                      ; $8ADC7B |
  JSL.L CODE_FL_82C897                      ; $8ADC7F |
  LDA.B $09,X                               ; $8ADC83 |
  CMP.W #$0100                              ; $8ADC85 |
  BCC CODE_8ADC95                           ; $8ADC88 |
  JSL.L CODE_FL_8ADA2B                      ; $8ADC8A |
  STZ.B $5C,X                               ; $8ADC8E |
  LDA.W #$0005                              ; $8ADC90 |
  STA.B $1A,X                               ; $8ADC93 |

CODE_8ADC95:
  RTL                                       ; $8ADC95 |

CODE_8ADC96:
  LDY.W #$0100                              ; $8ADC96 |
  LDA.B $3E,X                               ; $8ADC99 |
  JSL.L CODE_FL_82CB1D                      ; $8ADC9B |
  LDY.W #$0100                              ; $8ADC9F |
  LDA.W #$FF80                              ; $8ADCA2 |
  JSL.L CODE_FL_82CB4A                      ; $8ADCA5 |
  LDY.W #$0100                              ; $8ADCA9 |
  LDA.W #$01E0                              ; $8ADCAC |
  JSL.L CODE_FL_82CB77                      ; $8ADCAF |
  RTL                                       ; $8ADCB3 |

CODE_8ADCB4:
  LDY.W #$0400                              ; $8ADCB4 |
  LDA.W #$FFE0                              ; $8ADCB7 |
  JSL.L CODE_FL_82CB4A                      ; $8ADCBA |
  BNE CODE_8ADCCE                           ; $8ADCBE |
  LDY.W #$FC00                              ; $8ADCC0 |
  LDA.B $3E,X                               ; $8ADCC3 |
  BMI CODE_8ADCCA                           ; $8ADCC5 |
  LDY.W #$0400                              ; $8ADCC7 |

CODE_8ADCCA:
  STY.B $26,X                               ; $8ADCCA |
  INC.B $1A,X                               ; $8ADCCC |

CODE_8ADCCE:
  RTL                                       ; $8ADCCE |

CODE_8ADCCF:
  JSL.L CODE_FL_82C87C                      ; $8ADCCF |
  CMP.W #$0140                              ; $8ADCD3 |
  BPL CODE_8ADCDE                           ; $8ADCD6 |
  CMP.W #$FEC0                              ; $8ADCD8 |
  BMI CODE_8ADCDE                           ; $8ADCDB |
  RTL                                       ; $8ADCDD |

CODE_8ADCDE:
  LDA.W #$0020                              ; $8ADCDE |
  STA.B $38,X                               ; $8ADCE1 |
  INC.B $1A,X                               ; $8ADCE3 |

CODE_8ADCE5:
  DEC.B $38,X                               ; $8ADCE5 |
  BPL CODE_8ADD01                           ; $8ADCE7 |
  LDY.W #$8548                              ; $8ADCE9 |
  LDA.W #$0006                              ; $8ADCEC |
  JSL.L CODE_FL_828AD9                      ; $8ADCEF |
  CPX.W #$0E20                              ; $8ADCF3 |
  BNE CODE_8ADCFF                           ; $8ADCF6 |
  LDA.W #$0038                              ; $8ADCF8 |
  JSL.L CODE_FL_8089BD                      ; $8ADCFB |

CODE_8ADCFF:
  INC.B $1A,X                               ; $8ADCFF |

CODE_8ADD01:
  RTL                                       ; $8ADD01 |

CODE_8ADD02:
  LDA.B $1C,X                               ; $8ADD02 |
  BNE CODE_8ADD16                           ; $8ADD04 |
  LDA.W #$0010                              ; $8ADD06 |
  STA.B $38,X                               ; $8ADD09 |
  LDA.B $26,X                               ; $8ADD0B |
  EOR.W #$FFFF                              ; $8ADD0D |
  INC A                                     ; $8ADD10 |
  ASL A                                     ; $8ADD11 |
  STA.B $26,X                               ; $8ADD12 |
  INC.B $1A,X                               ; $8ADD14 |

CODE_8ADD16:
  RTL                                       ; $8ADD16 |

CODE_8ADD17:
  DEC.B $38,X                               ; $8ADD17 |
  BPL CODE_8ADD31                           ; $8ADD19 |
  JSL.L CODE_FL_82C87C                      ; $8ADD1B |
  CMP.W #$0020                              ; $8ADD1F |
  BPL CODE_8ADD31                           ; $8ADD22 |
  CMP.W #$FFE0                              ; $8ADD24 |
  BMI CODE_8ADD31                           ; $8ADD27 |
  LDA.W #$337A                              ; $8ADD29 |
  STA.W $0DC0                               ; $8ADD2C |
  INC.B $1A,X                               ; $8ADD2F |

CODE_8ADD31:
  RTL                                       ; $8ADD31 |

CODE_8ADD32:
  JML.L CODE_FL_82CC9F                      ; $8ADD32 |

  JSL.L CODE_FL_82D331                      ; $8ADD36 |
  PHX                                       ; $8ADD3A |
  ASL A                                     ; $8ADD3B |
  TAX                                       ; $8ADD3C |
  LDA.L PTR16_8ADD47,X                      ; $8ADD3D |
  PLX                                       ; $8ADD41 |
  STA.B $00                                 ; $8ADD42 |
  JMP.W ($0000)                             ; $8ADD44 |

PTR16_8ADD47:
  dw CODE_8ADD6B                            ; $8ADD47 |
  dw CODE_8ADDAD                            ; $8ADD49 |
  dw CODE_8ADDDB                            ; $8ADD4B |
  dw CODE_8ADDF4                            ; $8ADD4D |
  dw CODE_8ADE0D                            ; $8ADD4F |
  dw CODE_8ADE34                            ; $8ADD51 |
  dw CODE_8ADE5D                            ; $8ADD53 |
  dw CODE_8ADEA2                            ; $8ADD55 |
  dw CODE_8ADEB2                            ; $8ADD57 |
  dw CODE_8ADED8                            ; $8ADD59 |
  dw CODE_8ADF07                            ; $8ADD5B |
  dw CODE_8ADF1A                            ; $8ADD5D |
  dw CODE_8ADF31                            ; $8ADD5F |
  dw CODE_8ADD6B                            ; $8ADD61 |
  dw CODE_8ADF75                            ; $8ADD63 |
  dw CODE_8ADF87                            ; $8ADD65 |
  dw CODE_8ADF8E                            ; $8ADD67 |
  dw CODE_8ADFD5                            ; $8ADD69 |

CODE_8ADD6B:
  LDY.W #$8BBF                              ; $8ADD6B |
  JSL.L CODE_FL_82B81C                      ; $8ADD6E |
  LDA.W #$0003                              ; $8ADD72 |
  STA.B $5E,X                               ; $8ADD75 |
  LDA.W #$01F8                              ; $8ADD77 |
  JSL.L CODE_FL_8AF70B                      ; $8ADD7A |
  INC.B $1A,X                               ; $8ADD7E |
  LDY.W #$00F0                              ; $8ADD80 |
  LDA.B $86                                 ; $8ADD83 |
  LSR A                                     ; $8ADD85 |
  BCC CODE_8ADD8B                           ; $8ADD86 |
  LDY.W #$FF10                              ; $8ADD88 |

CODE_8ADD8B:
  STY.B $00                                 ; $8ADD8B |
  LDA.W #$FFE0                              ; $8ADD8D |
  STA.B $02                                 ; $8ADD90 |
  LDA.W #$0100                              ; $8ADD92 |
  STA.B $04                                 ; $8ADD95 |
  LDA.W #$0005                              ; $8ADD97 |
  JSL.L CODE_FL_82D136                      ; $8ADD9A |
  LDA.W #$0060                              ; $8ADD9E |
  STA.B $38,X                               ; $8ADDA1 |
  LDA.W #$0010                              ; $8ADDA3 |
  STA.W $1FD4                               ; $8ADDA6 |
  JML.L CODE_FL_82CEC6                      ; $8ADDA9 |

CODE_8ADDAD:
  JSL.L CODE_FL_8BCF2B                      ; $8ADDAD |
  JSL.L CODE_FL_82C8BC                      ; $8ADDB1 |
  CMP.W #$0100                              ; $8ADDB5 |
  BPL CODE_8ADDC6                           ; $8ADDB8 |
  LDA.W #$0004                              ; $8ADDBA |
  LDY.W #$FFB0                              ; $8ADDBD |
  JSL.L CODE_FL_82D063                      ; $8ADDC0 |
  INC.B $1A,X                               ; $8ADDC4 |

CODE_8ADDC6:
  LDA.W #$000A                              ; $8ADDC6 |
  JSL.L CODE_FL_82B438                      ; $8ADDC9 |
  LDA.W #$0020                              ; $8ADDCD |
  JSL.L CODE_FL_82D023                      ; $8ADDD0 |
  JSL.L CODE_FL_82CEC6                      ; $8ADDD4 |
  JMP.W CODE_JP_8ADFDD                      ; $8ADDD8 |

CODE_8ADDDB:
  JSL.L CODE_FL_8BCF2B                      ; $8ADDDB |
  JSL.L CODE_FL_82C8BC                      ; $8ADDDF |
  CMP.W #$0058                              ; $8ADDE3 |
  BPL CODE_8ADDC6                           ; $8ADDE6 |
  STZ.B $5E,X                               ; $8ADDE8 |
  JSL.L CODE_FL_82CA8E                      ; $8ADDEA |
  JSL.L CODE_FL_82CAA5                      ; $8ADDEE |
  INC.B $1A,X                               ; $8ADDF2 |

CODE_8ADDF4:
  JSL.L CODE_FL_8BCF2B                      ; $8ADDF4 |
  JSL.L CODE_FL_82C8BC                      ; $8ADDF8 |
  CMP.W #$0100                              ; $8ADDFC |
  BMI CODE_8ADDC6                           ; $8ADDFF |
  LDY.W #$0DC0                              ; $8ADE01 |
  LDA.W #$0005                              ; $8ADE04 |
  JSL.L CODE_FL_82D0E8                      ; $8ADE07 |
  INC.B $1A,X                               ; $8ADE0B |

CODE_8ADE0D:
  JSL.L CODE_FL_8BCF2B                      ; $8ADE0D |
  STZ.B $5E,X                               ; $8ADE11 |
  JSL.L CODE_FL_82C8BC                      ; $8ADE13 |
  CLC                                       ; $8ADE17 |
  ADC.W #$0010                              ; $8ADE18 |
  CMP.W $0DF5                               ; $8ADE1B |
  BMI CODE_8ADDC6                           ; $8ADE1E |
  LDY.W #$37EE                              ; $8ADE20 |
  STY.W $0DC0                               ; $8ADE23 |
  LDA.W #$0000                              ; $8ADE26 |
  JSL.L CODE_FL_8AF70B                      ; $8ADE29 |
  STZ.W $1C16                               ; $8ADE2D |
  JML.L CODE_FL_82CC9F                      ; $8ADE30 |

CODE_8ADE34:
  LDY.W #$8B95                              ; $8ADE34 |
  JSL.L CODE_FL_82B81C                      ; $8ADE37 |
  LDA.W #$0003                              ; $8ADE3B |
  STA.B $5E,X                               ; $8ADE3E |
  LDA.W #$01F8                              ; $8ADE40 |
  JSL.L CODE_FL_8AF70B                      ; $8ADE43 |
  LDA.W #$0010                              ; $8ADE47 |
  STA.W $1FD4                               ; $8ADE4A |
  LDA.W #$FF80                              ; $8ADE4D |
  STA.B $2A,X                               ; $8ADE50 |
  LDA.W #$0030                              ; $8ADE52 |
  STA.B $38,X                               ; $8ADE55 |
  INC.B $1A,X                               ; $8ADE57 |
  JML.L CODE_FL_82CEC6                      ; $8ADE59 |

CODE_8ADE5D:
  JSL.L CODE_FL_82C8C4                      ; $8ADE5D |
  DEC.B $38,X                               ; $8ADE61 |
  BPL CODE_8ADE79                           ; $8ADE63 |
  LDA.W #$0004                              ; $8ADE65 |
  LDY.W #$FFB0                              ; $8ADE68 |
  JSL.L CODE_FL_82D063                      ; $8ADE6B |
  LDA.B $28,X                               ; $8ADE6F |
  SEC                                       ; $8ADE71 |
  SBC.W #$0080                              ; $8ADE72 |
  STA.B $28,X                               ; $8ADE75 |
  INC.B $1A,X                               ; $8ADE77 |

CODE_8ADE79:
  LDA.W $1FD4                               ; $8ADE79 |
  LSR A                                     ; $8ADE7C |
  CLC                                       ; $8ADE7D |
  ADC.W #$0010                              ; $8ADE7E |
  CMP.W #$0100                              ; $8ADE81 |
  BMI CODE_8ADE8D                           ; $8ADE84 |
  LDA.W #$00BC                              ; $8ADE86 |
  JSL.L CODE_FL_8089BD                      ; $8ADE89 |

CODE_8ADE8D:
  LDA.W #$0010                              ; $8ADE8D |
  JSL.L CODE_FL_82D023                      ; $8ADE90 |
  LDA.W #$000A                              ; $8ADE94 |
  JSL.L CODE_FL_82B42F                      ; $8ADE97 |
  JSR.W CODE_FN_8AE004                      ; $8ADE9B |
  JML.L CODE_FL_82CEC6                      ; $8ADE9E |

CODE_8ADEA2:
  JSL.L CODE_FL_82C8BC                      ; $8ADEA2 |
  CMP.W #$0058                              ; $8ADEA6 |
  BPL CODE_8ADE79                           ; $8ADEA9 |
  LDA.W #$0040                              ; $8ADEAB |
  STA.B $38,X                               ; $8ADEAE |
  INC.B $1A,X                               ; $8ADEB0 |

CODE_8ADEB2:
  LDA.B $42                                 ; $8ADEB2 |
  AND.W #$000F                              ; $8ADEB4 |
  BNE CODE_8ADEC9                           ; $8ADEB7 |
  LDA.W #$8033                              ; $8ADEB9 |
  LDY.W #$1360                              ; $8ADEBC |
  JSL.L CODE_FL_82CD78                      ; $8ADEBF |
  LDA.W #$0007                              ; $8ADEC3 |
  STA.W $0038,Y                             ; $8ADEC6 |

CODE_8ADEC9:
  JSL.L CODE_FL_82D1BF                      ; $8ADEC9 |
  DEC.B $38,X                               ; $8ADECD |
  BPL CODE_8ADE79                           ; $8ADECF |
  LDA.W #$F000                              ; $8ADED1 |
  STA.B $28,X                               ; $8ADED4 |
  INC.B $1A,X                               ; $8ADED6 |

CODE_8ADED8:
  LDY.W #$0800                              ; $8ADED8 |
  LDA.W #$01E0                              ; $8ADEDB |
  JSL.L CODE_FL_82CB77                      ; $8ADEDE |
  LDY.W #$0800                              ; $8ADEE2 |
  TDC                                       ; $8ADEE5 |
  JSL.L CODE_FL_82CB1D                      ; $8ADEE6 |
  JSL.L CODE_FL_82CAC7                      ; $8ADEEA |
  CMP.W #$FFE0                              ; $8ADEEE |
  BMI CODE_8ADE79                           ; $8ADEF1 |
  LDY.W #$37EE                              ; $8ADEF3 |
  STY.W $0DC0                               ; $8ADEF6 |
  LDA.W #$0000                              ; $8ADEF9 |
  JSL.L CODE_FL_8AF70B                      ; $8ADEFC |
  STZ.W $1C16                               ; $8ADF00 |
  JML.L CODE_FL_82CC9F                      ; $8ADF03 |

CODE_8ADF07:
  LDY.W #$0003                              ; $8ADF07 |
  JSL.L CODE_FL_82B31F                      ; $8ADF0A |
  LDA.W #$0200                              ; $8ADF0E |
  STA.B $2A,X                               ; $8ADF11 |
  LDA.W #$F800                              ; $8ADF13 |
  STA.B $28,X                               ; $8ADF16 |
  INC.B $1A,X                               ; $8ADF18 |

CODE_8ADF1A:
  JSL.L CODE_FL_82C8C4                      ; $8ADF1A |
  JSL.L CODE_FL_82CAD2                      ; $8ADF1E |
  BNE CODE_8ADF26                           ; $8ADF22 |
  INC.B $1A,X                               ; $8ADF24 |

CODE_8ADF26:
  LDA.W #$0020                              ; $8ADF26 |
  JSL.L CODE_FL_82D023                      ; $8ADF29 |
  JML.L CODE_FL_82CEC6                      ; $8ADF2D |

CODE_8ADF31:
  JSL.L CODE_FL_82D1BF                      ; $8ADF31 |
  LDY.W #$0800                              ; $8ADF35 |
  TDC                                       ; $8ADF38 |
  JSL.L CODE_FL_82CB1D                      ; $8ADF39 |
  LDY.W #$0800                              ; $8ADF3D |
  TDC                                       ; $8ADF40 |
  JSL.L CODE_FL_82CB4A                      ; $8ADF41 |
  LDY.W #$0800                              ; $8ADF45 |
  LDA.W #$01E0                              ; $8ADF48 |
  JSL.L CODE_FL_82CB77                      ; $8ADF4B |
  BNE CODE_8ADF6A                           ; $8ADF4F |
  LDA.B $31,X                               ; $8ADF51 |
  BNE CODE_8ADF6A                           ; $8ADF53 |
  LDA.B $2D,X                               ; $8ADF55 |
  BNE CODE_8ADF6A                           ; $8ADF57 |
  LDY.W #$37EE                              ; $8ADF59 |
  STY.W $0DC0                               ; $8ADF5C |
  LDA.W #$0000                              ; $8ADF5F |
  JSL.L CODE_FL_8AF70B                      ; $8ADF62 |
  JML.L CODE_FL_82CC9F                      ; $8ADF66 |

CODE_8ADF6A:
  LDA.W #$0020                              ; $8ADF6A |
  JSL.L CODE_FL_82D023                      ; $8ADF6D |
  JML.L CODE_FL_82CEC6                      ; $8ADF71 |

CODE_8ADF75:
  LDY.W #$0DC0                              ; $8ADF75 |
  JSL.L CODE_FL_82CDF8                      ; $8ADF78 |
  LDA.W #$0020                              ; $8ADF7C |
  JSL.L CODE_FL_82D023                      ; $8ADF7F |
  JML.L CODE_FL_82CEC6                      ; $8ADF83 |

CODE_8ADF87:
  LDA.W #$F200                              ; $8ADF87 |
  STA.B $28,X                               ; $8ADF8A |
  INC.B $1A,X                               ; $8ADF8C |

CODE_8ADF8E:
  LDY.W #$0800                              ; $8ADF8E |
  LDA.W #$0060                              ; $8ADF91 |
  JSL.L CODE_FL_82CB77                      ; $8ADF94 |
  LDY.W #$0800                              ; $8ADF98 |
  TDC                                       ; $8ADF9B |
  JSL.L CODE_FL_82CB1D                      ; $8ADF9C |
  JSL.L CODE_FL_82CAC7                      ; $8ADFA0 |
  LDY.B $28,X                               ; $8ADFA4 |
  BMI CODE_8ADFC7                           ; $8ADFA6 |
  CMP.W #$FFF0                              ; $8ADFA8 |
  BMI CODE_8ADFC7                           ; $8ADFAB |
  LDA.W #$FFF0                              ; $8ADFAD |
  STA.B $31,X                               ; $8ADFB0 |
  LDA.W #$0190                              ; $8ADFB2 |
  STA.W $1FD4                               ; $8ADFB5 |
  LDA.W #$8000                              ; $8ADFB8 |
  STA.W $1C68                               ; $8ADFBB |
  LDA.W #$008C                              ; $8ADFBE |
  JSL.L CODE_FL_8089BD                      ; $8ADFC1 |
  INC.B $1A,X                               ; $8ADFC5 |

CODE_8ADFC7:
  LDA.W #$0020                              ; $8ADFC7 |
  JSL.L CODE_FL_82D023                      ; $8ADFCA |
  JSL.L CODE_FL_82CEC6                      ; $8ADFCE |
  JMP.W CODE_JP_8ADFDD                      ; $8ADFD2 |

CODE_8ADFD5:
  JSL.L CODE_FL_82D1BF                      ; $8ADFD5 |
  JML.L CODE_FL_82CEC6                      ; $8ADFD9 |

CODE_JP_8ADFDD:
  PHX                                       ; $8ADFDD |
  LDA.W $1D64                               ; $8ADFDE |
  CLC                                       ; $8ADFE1 |
  ADC.W #$00FF                              ; $8ADFE2 |
  STA.B $00                                 ; $8ADFE5 |
  LDA.W $1FD4                               ; $8ADFE7 |
  ASL A                                     ; $8ADFEA |
  TAX                                       ; $8ADFEB |
  LDA.L DATA8_978000,X                      ; $8ADFEC |
  AND.W #$00FF                              ; $8ADFF0 |
  LDY.B $00                                 ; $8ADFF3 |
  JSL.L CODE_FL_808E18                      ; $8ADFF5 |
  LDA.B $01                                 ; $8ADFF9 |
  CLC                                       ; $8ADFFB |
  ADC.W $1D64                               ; $8ADFFC |
  STA.W $1D64                               ; $8ADFFF |
  PLX                                       ; $8AE002 |
  RTL                                       ; $8AE003 |

CODE_FN_8AE004:
  LDA.W #$804B                              ; $8AE004 |
  JSL.L CODE_FL_82CD2F                      ; $8AE007 |
  BCC CODE_8AE021                           ; $8AE00B |
  LDA.B $42                                 ; $8AE00D |
  AND.W #$0001                              ; $8AE00F |
  XBA                                       ; $8AE012 |
  CLC                                       ; $8AE013 |
  ADC.W $1FD4                               ; $8AE014 |
  AND.W #$01FF                              ; $8AE017 |
  STA.W $003C,Y                             ; $8AE01A |
  TXA                                       ; $8AE01D |
  STA.W $003E,Y                             ; $8AE01E |

CODE_8AE021:
  RTS                                       ; $8AE021 |

  LDA.B $1A,X                               ; $8AE022 |
  BNE CODE_8AE060                           ; $8AE024 |
  LDA.B $3C,X                               ; $8AE026 |
  LDY.W #$0040                              ; $8AE028 |
  JSL.L CODE_FL_8AB51A                      ; $8AE02B |
  LDY.B $3E,X                               ; $8AE02F |
  LDA.W $002D,Y                             ; $8AE031 |
  CLC                                       ; $8AE034 |
  ADC.B $01                                 ; $8AE035 |
  STA.B $2D,X                               ; $8AE037 |
  LDA.W $0031,Y                             ; $8AE039 |
  CLC                                       ; $8AE03C |
  ADC.B $05                                 ; $8AE03D |
  STA.B $31,X                               ; $8AE03F |
  LDY.W #$850E                              ; $8AE041 |
  JSL.L CODE_FL_828AC3                      ; $8AE044 |
  LDY.W #$2020                              ; $8AE048 |
  LDA.B $86                                 ; $8AE04B |
  LSR A                                     ; $8AE04D |
  BCC CODE_8AE053                           ; $8AE04E |
  LDY.W #$0000                              ; $8AE050 |

CODE_8AE053:
  TYA                                       ; $8AE053 |
  ORA.W #$8888                              ; $8AE054 |
  STA.B $04,X                               ; $8AE057 |
  LDA.W #$000A                              ; $8AE059 |
  STA.B $38,X                               ; $8AE05C |
  INC.B $1A,X                               ; $8AE05E |

CODE_8AE060:
  LDY.B $3E,X                               ; $8AE060 |
  LDA.W $0035,Y                             ; $8AE062 |
  STA.B $35,X                               ; $8AE065 |
  DEC.B $38,X                               ; $8AE067 |
  BPL CODE_8AE06F                           ; $8AE069 |
  JML.L CODE_FL_82CC9F                      ; $8AE06B |

CODE_8AE06F:
  RTL                                       ; $8AE06F |

  dw CODE_8AE0A6                            ; $8AE070 |
  dw CODE_8AE0EC                            ; $8AE072 |
  dw CODE_8AE10D                            ; $8AE074 |
  dw CODE_8AE155                            ; $8AE076 |
  dw CODE_8AE170                            ; $8AE078 |
  dw CODE_8AE18B                            ; $8AE07A |
  dw CODE_8AE19A                            ; $8AE07C |
  dw CODE_8AE1EC                            ; $8AE07E |
  dw CODE_8AE20F                            ; $8AE080 |
  dw CODE_8AE21D                            ; $8AE082 |
  dw CODE_8AE241                            ; $8AE084 |
  dw CODE_8AE170                            ; $8AE086 |
  dw CODE_8AE25E                            ; $8AE088 |
  dw CODE_8AE271                            ; $8AE08A |
  dw CODE_8AE286                            ; $8AE08C |
  dw CODE_8AE29F                            ; $8AE08E |
  dw CODE_8AE2B4                            ; $8AE090 |
  dw CODE_8AE2D0                            ; $8AE092 |
  dw CODE_8AE2D4                            ; $8AE094 |
  dw CODE_8AE2D8                            ; $8AE096 |
  dw CODE_8AE30D                            ; $8AE098 |
  dw CODE_8AE313                            ; $8AE09A |
  dw CODE_8AE33A                            ; $8AE09C |
  dw CODE_8AE3A5                            ; $8AE09E |
  dw CODE_8AE3B4                            ; $8AE0A0 |
  dw CODE_8AE3F0                            ; $8AE0A2 |
  dw CODE_8AE40A                            ; $8AE0A4 |

CODE_8AE0A6:
  LDA.W #$0080                              ; $8AE0A6 |
  STA.B $09,X                               ; $8AE0A9 |
  LDA.W #$8888                              ; $8AE0AB |
  STA.B $04,X                               ; $8AE0AE |
  LDY.W #$8502                              ; $8AE0B0 |
  LDA.W #$0003                              ; $8AE0B3 |
  JSL.L CODE_FL_828AD9                      ; $8AE0B6 |
  LDA.W #$0080                              ; $8AE0BA |
  STA.B $14,X                               ; $8AE0BD |
  LDA.B $3C,X                               ; $8AE0BF |
  PHX                                       ; $8AE0C1 |
  ASL A                                     ; $8AE0C2 |
  TAX                                       ; $8AE0C3 |
  LDA.L PTR16_8AE0CE,X                      ; $8AE0C4 |
  PLX                                       ; $8AE0C8 |
  STA.B $00                                 ; $8AE0C9 |
  JMP.W ($0000)                             ; $8AE0CB |

PTR16_8AE0CE:
  dw CODE_8AE0D4                            ; $8AE0CE |
  dw CODE_8AE155                            ; $8AE0D0 |
  dw CODE_8AE21D                            ; $8AE0D2 |

CODE_8AE0D4:
  PHX                                       ; $8AE0D4 |
  LDY.W #$9AA4                              ; $8AE0D5 |
  LDA.W #$0018                              ; $8AE0D8 |
  JSL.L CODE_FL_80C2BA                      ; $8AE0DB |
  PLX                                       ; $8AE0DF |
  LDA.W #$0100                              ; $8AE0E0 |
  STA.B $0D,X                               ; $8AE0E3 |
  LDA.W #$FC00                              ; $8AE0E5 |
  STA.B $28,X                               ; $8AE0E8 |
  INC.B $1A,X                               ; $8AE0EA |

CODE_8AE0EC:
  JSL.L CODE_FL_82D565                      ; $8AE0EC |
  JSL.L CODE_FL_82C861                      ; $8AE0F0 |
  CMP.W #$FFC0                              ; $8AE0F4 |
  BPL CODE_8AE10C                           ; $8AE0F7 |
  STZ.B $1C,X                               ; $8AE0F9 |
  LDA.W #$326E                              ; $8AE0FB |
  STA.B $00,X                               ; $8AE0FE |
  LDA.W #$0040                              ; $8AE100 |
  STA.B $38,X                               ; $8AE103 |
  LDA.W #$0600                              ; $8AE105 |
  STA.B $28,X                               ; $8AE108 |
  INC.B $1A,X                               ; $8AE10A |

CODE_8AE10C:
  RTL                                       ; $8AE10C |

CODE_8AE10D:
  JSL.L CODE_FL_82D565                      ; $8AE10D |
  DEC.B $38,X                               ; $8AE111 |
  BPL CODE_8AE154                           ; $8AE113 |
  JSL.L CODE_FL_82C861                      ; $8AE115 |
  CMP.W #$0050                              ; $8AE119 |
  BMI CODE_8AE154                           ; $8AE11C |
  PHX                                       ; $8AE11E |
  LDY.W #$99C4                              ; $8AE11F |
  LDA.W #$0018                              ; $8AE122 |
  JSL.L CODE_FL_80C2BA                      ; $8AE125 |
  LDX.W #DATA_8884CA                        ; $8AE129 |
  JSL.L sound_transfer_blocks               ; $8AE12C |
  LDX.W #DATA_88850B                        ; $8AE130 |
  JSL.L sound_transfer_blocks               ; $8AE133 |
  PLX                                       ; $8AE137 |
  LDA.W #$008C                              ; $8AE138 |
  JSL.L CODE_FL_8089BD                      ; $8AE13B |
  LDA.W #$8000                              ; $8AE13F |
  STA.W $1C7C                               ; $8AE142 |
  JSL.L CODE_FL_82B31C                      ; $8AE145 |
  LDA.W #$00FC                              ; $8AE149 |
  JSL.L CODE_FL_8AF70B                      ; $8AE14C |
  JML.L CODE_FL_82CC9F                      ; $8AE150 |

CODE_8AE154:
  RTL                                       ; $8AE154 |

CODE_8AE155:
  PHX                                       ; $8AE155 |
  LDY.W #$9AA4                              ; $8AE156 |
  LDA.W #$0018                              ; $8AE159 |
  JSL.L CODE_FL_80C2BA                      ; $8AE15C |
  PLX                                       ; $8AE160 |
  LDA.W #$FEC0                              ; $8AE161 |
  STA.B $0D,X                               ; $8AE164 |
  LDA.W #$0200                              ; $8AE166 |
  STA.B $28,X                               ; $8AE169 |
  LDA.W #$0004                              ; $8AE16B |
  STA.B $1A,X                               ; $8AE16E |

CODE_8AE170:
  JSL.L CODE_FL_82C861                      ; $8AE170 |
  CMP.W #$0060                              ; $8AE174 |
  BMI CODE_8AE17F                           ; $8AE177 |
  JSL.L CODE_FL_82C81E                      ; $8AE179 |
  INC.B $1A,X                               ; $8AE17D |

CODE_8AE17F:
  LDA.B $0D,X                               ; $8AE17F |
  CMP.W #$FFE0                              ; $8AE181 |
  BPL CODE_8AE187                           ; $8AE184 |
  RTL                                       ; $8AE186 |

CODE_8AE187:
  JML.L CODE_FL_82D565                      ; $8AE187 |

CODE_8AE18B:
  LDA.W #$8B1B                              ; $8AE18B |
  JSL.L CODE_FL_809934                      ; $8AE18E |
  BCC CODE_JP_8AE1C7                        ; $8AE192 |
  JSL.L CODE_FL_82C832                      ; $8AE194 |
  INC.B $1A,X                               ; $8AE198 |

CODE_8AE19A:
  LDY.W $1C20                               ; $8AE19A |
  LDA.W LOOSE_OP_00A30B,Y                   ; $8AE19D |
  JSL.L CODE_FL_809934                      ; $8AE1A0 |
  BCC CODE_JP_8AE1C7                        ; $8AE1A4 |
  LDA.W #$0300                              ; $8AE1A6 |
  STA.B $28,X                               ; $8AE1A9 |
  LDA.W #$0003                              ; $8AE1AB |
  STA.B $38,X                               ; $8AE1AE |
  LDA.W #$F800                              ; $8AE1B0 |
  STA.B $28,X                               ; $8AE1B3 |
  JSL.L CODE_FL_82B31C                      ; $8AE1B5 |
  JSL.L CODE_FL_8293BF                      ; $8AE1B9 |
  LDA.W #$00A0                              ; $8AE1BD |
  JSL.L CODE_FL_8089BD                      ; $8AE1C0 |
  INC.B $1A,X                               ; $8AE1C4 |
  RTL                                       ; $8AE1C6 |

CODE_JP_8AE1C7:
  JSL.L CODE_FL_82D565                      ; $8AE1C7 |
  LDY.W #$0200                              ; $8AE1CB |
  LDA.W #$0060                              ; $8AE1CE |
  JSL.L CODE_FL_82CA38                      ; $8AE1D1 |
  LDA.B $09,X                               ; $8AE1D5 |
  CMP.W #$0068                              ; $8AE1D7 |
  BPL CODE_8AE1E1                           ; $8AE1DA |
  LDY.W #$0100                              ; $8AE1DC |
  STY.B $26,X                               ; $8AE1DF |

CODE_8AE1E1:
  CMP.W #$0098                              ; $8AE1E1 |
  BPL CODE_8AE1EB                           ; $8AE1E4 |
  LDY.W #$FF00                              ; $8AE1E6 |
  STY.B $26,X                               ; $8AE1E9 |

CODE_8AE1EB:
  RTL                                       ; $8AE1EB |

CODE_8AE1EC:
  DEC.B $38,X                               ; $8AE1EC |
  BPL CODE_8AE20E                           ; $8AE1EE |
  LDA.B $38,X                               ; $8AE1F0 |
  CMP.W #$FFFF                              ; $8AE1F2 |
  BNE CODE_8AE1FE                           ; $8AE1F5 |
  LDY.W #$0030                              ; $8AE1F7 |
  JSL.L CODE_FL_808993                      ; $8AE1FA |

CODE_8AE1FE:
  JSL.L CODE_FL_82C861                      ; $8AE1FE |
  CMP.W #$FEB0                              ; $8AE202 |
  BPL CODE_8AE20E                           ; $8AE205 |
  LDA.W #$0080                              ; $8AE207 |
  STA.B $38,X                               ; $8AE20A |
  INC.B $1A,X                               ; $8AE20C |

CODE_8AE20E:
  RTL                                       ; $8AE20E |

CODE_8AE20F:
  DEC.B $38,X                               ; $8AE20F |
  BPL CODE_8AE20E                           ; $8AE211 |
  LDA.W #$804F                              ; $8AE213 |
  STA.W $0DD8                               ; $8AE216 |
  JML.L CODE_FL_82CC9F                      ; $8AE219 |

CODE_8AE21D:
  PHX                                       ; $8AE21D |
  LDY.W #$9AC4                              ; $8AE21E |
  LDA.W #$0018                              ; $8AE221 |
  JSL.L CODE_FL_80C2BA                      ; $8AE224 |
  PLX                                       ; $8AE228 |
  LDA.W #$FF80                              ; $8AE229 |
  STA.B $0D,X                               ; $8AE22C |
  LDA.W #$0200                              ; $8AE22E |
  STA.B $28,X                               ; $8AE231 |
  LDA.W #$000A                              ; $8AE233 |
  STA.B $1A,X                               ; $8AE236 |
  INC.W $1C6A                               ; $8AE238 |
  LDA.W #$00C0                              ; $8AE23B |
  STA.B $38,X                               ; $8AE23E |
  RTL                                       ; $8AE240 |

CODE_8AE241:
  LDA.B $38,X                               ; $8AE241 |
  CMP.W #$0050                              ; $8AE243 |
  BNE CODE_8AE24C                           ; $8AE246 |
  JSL.L CODE_FL_80893F                      ; $8AE248 |

CODE_8AE24C:
  DEC.B $38,X                               ; $8AE24C |
  BPL CODE_8AE25D                           ; $8AE24E |
  LDY.W #$0118                              ; $8AE250 |
  JSL.L CODE_FL_808993                      ; $8AE253 |
  INC.B $1A,X                               ; $8AE257 |
  JSL.L CODE_FL_82C81E                      ; $8AE259 |

CODE_8AE25D:
  RTL                                       ; $8AE25D |

CODE_8AE25E:
  LDA.W #$827D                              ; $8AE25E |
  JSL.L CODE_FL_809934                      ; $8AE261 |
  BCC CODE_8AE26E                           ; $8AE265 |
  LDA.W #$0020                              ; $8AE267 |
  STA.B $38,X                               ; $8AE26A |
  INC.B $1A,X                               ; $8AE26C |

CODE_8AE26E:
  JMP.W CODE_JP_8AE1C7                      ; $8AE26E |

CODE_8AE271:
  DEC.B $38,X                               ; $8AE271 |
  BPL CODE_8AE283                           ; $8AE273 |
  LDA.W #$0300                              ; $8AE275 |
  STA.B $28,X                               ; $8AE278 |
  LDA.W #$00B8                              ; $8AE27A |
  JSL.L CODE_FL_8089BD                      ; $8AE27D |
  INC.B $1A,X                               ; $8AE281 |

CODE_8AE283:
  JMP.W CODE_JP_8AE1C7                      ; $8AE283 |

CODE_8AE286:
  LDA.W #$FF80                              ; $8AE286 |
  JSL.L CODE_FL_82CB0C                      ; $8AE289 |
  CMP.W #$FE00                              ; $8AE28D |
  BPL CODE_8AE29E                           ; $8AE290 |
  STZ.B $1C,X                               ; $8AE292 |
  STZ.B $00,X                               ; $8AE294 |
  LDA.W #$0008                              ; $8AE296 |
  STA.W $1C5E                               ; $8AE299 |
  INC.B $1A,X                               ; $8AE29C |

CODE_8AE29E:
  RTL                                       ; $8AE29E |

CODE_8AE29F:
  LDY.W $1C20                               ; $8AE29F |
  LDA.W LOOSE_OP_00A2EB,Y                   ; $8AE2A2 |
  JSL.L CODE_FL_809934                      ; $8AE2A5 |
  BCC CODE_8AE2B3                           ; $8AE2A9 |
  LDA.W #$0002                              ; $8AE2AB |
  STA.W $1C60                               ; $8AE2AE |
  INC.B $1A,X                               ; $8AE2B1 |

CODE_8AE2B3:
  RTL                                       ; $8AE2B3 |

CODE_8AE2B4:
  LDY.W $1C22                               ; $8AE2B4 |
  LDA.W CODE_00A2F3,Y                       ; $8AE2B7 |
  JSL.L CODE_FL_809934                      ; $8AE2BA |
  BCC CODE_8AE2CF                           ; $8AE2BE |
  JSL.L CODE_FL_82C82D                      ; $8AE2C0 |
  JSL.L CODE_FL_80893F                      ; $8AE2C4 |
  LDA.W #$0008                              ; $8AE2C8 |
  STA.B $3A,X                               ; $8AE2CB |
  INC.B $1A,X                               ; $8AE2CD |

CODE_8AE2CF:
  RTL                                       ; $8AE2CF |

CODE_8AE2D0:
  JML.L CODE_JL_8AE7A7                      ; $8AE2D0 |

CODE_8AE2D4:
  JML.L CODE_JL_8AE805                      ; $8AE2D4 |

CODE_8AE2D8:
  LDA.B $00,X                               ; $8AE2D8 |
  BNE CODE_8AE2FF                           ; $8AE2DA |
  LDY.W #$8508                              ; $8AE2DC |
  LDA.W #$0003                              ; $8AE2DF |
  JSL.L CODE_FL_828AD9                      ; $8AE2E2 |
  LDA.W #$0068                              ; $8AE2E6 |
  STA.B $09,X                               ; $8AE2E9 |
  LDA.W #$0050                              ; $8AE2EB |
  STA.B $0D,X                               ; $8AE2EE |
  LDA.W #$0300                              ; $8AE2F0 |
  STA.B $26,X                               ; $8AE2F3 |
  LDA.W #$0200                              ; $8AE2F5 |
  STA.B $28,X                               ; $8AE2F8 |
  LDA.W #$1898                              ; $8AE2FA |
  STA.B $04,X                               ; $8AE2FD |

CODE_8AE2FF:
  JSL.L CODE_FL_8AE841                      ; $8AE2FF |

CODE_JP_8AE303:
  LDY.W #$0180                              ; $8AE303 |
  LDA.W #$0050                              ; $8AE306 |
  JML.L CODE_FL_82CA38                      ; $8AE309 |

CODE_8AE30D:
  JSL.L CODE_FL_8AE867                      ; $8AE30D |
  BRA CODE_JP_8AE303                        ; $8AE311 |

CODE_8AE313:
  LDA.W #$0002                              ; $8AE313 |
  STA.W $1C60                               ; $8AE316 |
  LDY.W $1C22                               ; $8AE319 |
  LDA.W CODE_00A2FB,Y                       ; $8AE31C |
  JSL.L CODE_FL_809934                      ; $8AE31F |
  BCC CODE_8AE330                           ; $8AE323 |
  JSL.L CODE_FL_82C81E                      ; $8AE325 |
  LDA.W #$0060                              ; $8AE329 |
  STA.B $38,X                               ; $8AE32C |
  INC.B $1A,X                               ; $8AE32E |

CODE_8AE330:
  JSL.L CODE_FL_828572                      ; $8AE330 |
  JSL.L CODE_FL_828500                      ; $8AE334 |
  BRA CODE_JP_8AE303                        ; $8AE338 |

CODE_8AE33A:
  DEC.B $38,X                               ; $8AE33A |
  BMI CODE_8AE371                           ; $8AE33C |
  LDA.B $38,X                               ; $8AE33E |
  LSR A                                     ; $8AE340 |
  BCC CODE_8AE369                           ; $8AE341 |
  STZ.B $00                                 ; $8AE343 |
  LDA.B $09,X                               ; $8AE345 |
  CMP.W #$0080                              ; $8AE347 |
  BPL CODE_8AE350                           ; $8AE34A |
  INC.B $09,X                               ; $8AE34C |
  INC.B $00                                 ; $8AE34E |

CODE_8AE350:
  LDA.B $0D,X                               ; $8AE350 |
  CMP.W #$0060                              ; $8AE352 |
  BEQ CODE_8AE361                           ; $8AE355 |
  BMI CODE_8AE35D                           ; $8AE357 |
  DEC.B $0D,X                               ; $8AE359 |
  BRA CODE_8AE35F                           ; $8AE35B |

CODE_8AE35D:
  INC.B $0D,X                               ; $8AE35D |

CODE_8AE35F:
  INC.B $00                                 ; $8AE35F |

CODE_8AE361:
  LDA.B $00                                 ; $8AE361 |
  BNE CODE_8AE369                           ; $8AE363 |
  STZ.B $00,X                               ; $8AE365 |
  STZ.B $1C,X                               ; $8AE367 |

CODE_8AE369:
  JSL.L CODE_FL_828572                      ; $8AE369 |
  JML.L CODE_FL_828500                      ; $8AE36D |

CODE_8AE371:
  JSL.L CODE_FL_82C82D                      ; $8AE371 |
  STZ.B $1C,X                               ; $8AE375 |
  STZ.B $00,X                               ; $8AE377 |
  STZ.B $38,X                               ; $8AE379 |
  LDY.W $1C22                               ; $8AE37B |
  LDA.W LOOSE_OP_00A303,Y                   ; $8AE37E |
  JSL.L CODE_FL_809934                      ; $8AE381 |
  BCC CODE_8AE330                           ; $8AE385 |
  LDA.W #$0040                              ; $8AE387 |
  STA.B $38,X                               ; $8AE38A |
  STZ.W $1CA4                               ; $8AE38C |
  LDA.W #$401E                              ; $8AE38F |
  LDY.W #$0700                              ; $8AE392 |
  JSL.L CODE_FL_82CD78                      ; $8AE395 |
  LDA.W #$401E                              ; $8AE399 |
  LDY.W #$0760                              ; $8AE39C |
  JSL.L CODE_FL_82CD78                      ; $8AE39F |
  INC.B $1A,X                               ; $8AE3A3 |

CODE_8AE3A5:
  JSR.W CODE_FN_8AE40B                      ; $8AE3A5 |
  JSL.L CODE_FL_82D565                      ; $8AE3A8 |
  DEC.B $38,X                               ; $8AE3AC |
  BPL CODE_8AE330                           ; $8AE3AE |
  STZ.B $38,X                               ; $8AE3B0 |
  INC.B $1A,X                               ; $8AE3B2 |

CODE_8AE3B4:
  JSL.L CODE_FL_828530                      ; $8AE3B4 |
  INC.B $38,X                               ; $8AE3B8 |
  LDA.B $38,X                               ; $8AE3BA |
  CMP.W #$00C0                              ; $8AE3BC |
  BNE CODE_8AE3D4                           ; $8AE3BF |
  LDY.W #$0120                              ; $8AE3C1 |
  JSL.L CODE_FL_808993                      ; $8AE3C4 |
  JSL.L CODE_FL_82C1FE                      ; $8AE3C8 |
  LDA.W #$0060                              ; $8AE3CC |
  STA.W $1DA6                               ; $8AE3CF |
  INC.B $1A,X                               ; $8AE3D2 |

CODE_8AE3D4:
  LDA.W #$0001                              ; $8AE3D4 |
  STA.W $1C28                               ; $8AE3D7 |
  JSR.W CODE_FN_8AE40B                      ; $8AE3DA |
  JSL.L CODE_FL_82D565                      ; $8AE3DD |
  LDA.B $38,X                               ; $8AE3E1 |
  LSR A                                     ; $8AE3E3 |
  LSR A                                     ; $8AE3E4 |
  JSL.L CODE_FL_828575                      ; $8AE3E5 |
  JSL.L CODE_FL_828500                      ; $8AE3E9 |
  JMP.W CODE_JP_8AE303                      ; $8AE3ED |

CODE_8AE3F0:
  LDA.W $1DAA                               ; $8AE3F0 |
  CMP.W #$0080                              ; $8AE3F3 |
  BMI CODE_8AE3FB                           ; $8AE3F6 |
  STA.W $1CA4                               ; $8AE3F8 |

CODE_8AE3FB:
  LDA.W $1DE0                               ; $8AE3FB |
  CMP.W #$0002                              ; $8AE3FE |
  BNE CODE_8AE3D4                           ; $8AE401 |
  LDA.W #$FFFF                              ; $8AE403 |
  STA.W $1C68                               ; $8AE406 |
  RTL                                       ; $8AE409 |

CODE_8AE40A:
  RTL                                       ; $8AE40A |

CODE_FN_8AE40B:
  LDA.B $42                                 ; $8AE40B |
  AND.W #$0007                              ; $8AE40D |
  ASL A                                     ; $8AE410 |
  TAY                                       ; $8AE411 |
  LDA.W LOOSE_OP_00A313,Y                   ; $8AE412 |
  STA.W $1692                               ; $8AE415 |
  LSR A                                     ; $8AE418 |
  STA.W $1662                               ; $8AE419 |
  RTS                                       ; $8AE41C |

  LDY.W #$930A                              ; $8AE41D |
  LDA.W #$9948                              ; $8AE420 |
  JSL.L CODE_FL_82D181                      ; $8AE423 |
  LDA.B $1A,X                               ; $8AE427 |
  PHX                                       ; $8AE429 |
  ASL A                                     ; $8AE42A |
  TAX                                       ; $8AE42B |
  LDA.L PTR16_8AE436,X                      ; $8AE42C |
  PLX                                       ; $8AE430 |
  STA.B $00                                 ; $8AE431 |
  JMP.W ($0000)                             ; $8AE433 |

PTR16_8AE436:
  dw CODE_8AE444                            ; $8AE436 |
  dw CODE_8AE47A                            ; $8AE438 |
  dw CODE_8AE4A0                            ; $8AE43A |
  dw CODE_8AE4BC                            ; $8AE43C |
  dw CODE_8AE4D8                            ; $8AE43E |
  dw CODE_8AE528                            ; $8AE440 |
  dw CODE_8AE537                            ; $8AE442 |

CODE_8AE444:
  PHX                                       ; $8AE444 |
  LDX.W #DATA_88855F                        ; $8AE445 |
  JSL.L sound_transfer_blocks               ; $8AE448 |
  LDX.W #DATA_888567                        ; $8AE44C |
  JSL.L sound_transfer_blocks               ; $8AE44F |
  PLX                                       ; $8AE453 |
  LDA.W #$0280                              ; $8AE454 |
  STA.B $2D,X                               ; $8AE457 |
  STZ.B $31,X                               ; $8AE459 |
  LDA.W #$0180                              ; $8AE45B |
  STA.B $35,X                               ; $8AE45E |
  LDA.W #$0080                              ; $8AE460 |
  STA.W $1FD0                               ; $8AE463 |
  STA.W $1FD2                               ; $8AE466 |
  LDA.W #$00C0                              ; $8AE469 |
  STA.B $38,X                               ; $8AE46C |
  STZ.W $1C9A                               ; $8AE46E |
  STZ.W $1C66                               ; $8AE471 |
  JSL.L CODE_FL_82C81E                      ; $8AE474 |
  INC.B $1A,X                               ; $8AE478 |

CODE_8AE47A:
  DEC.B $38,X                               ; $8AE47A |
  BPL CODE_JP_8AE49C                        ; $8AE47C |
  LDY.W #$0178                              ; $8AE47E |
  JSL.L CODE_FL_808993                      ; $8AE481 |
  LDA.W #$FFA0                              ; $8AE485 |
  STA.W $15F6                               ; $8AE488 |
  INC.W $15FE                               ; $8AE48B |
  STA.W $1626                               ; $8AE48E |
  INC.W $162E                               ; $8AE491 |
  STA.W $1656                               ; $8AE494 |
  INC.W $165E                               ; $8AE497 |
  INC.B $1A,X                               ; $8AE49A |

CODE_JP_8AE49C:
  JML.L CODE_FL_82CEC6                      ; $8AE49C |

CODE_8AE4A0:
  LDA.W #$0001                              ; $8AE4A0 |
  STA.W $1C7C                               ; $8AE4A3 |
  TDC                                       ; $8AE4A6 |
  LDY.W #$0300                              ; $8AE4A7 |
  JSL.L CODE_FL_82CB1D                      ; $8AE4AA |
  BNE CODE_JP_8AE49C                        ; $8AE4AE |
  TDC                                       ; $8AE4B0 |
  STA.W $15F6                               ; $8AE4B1 |
  STA.W $1626                               ; $8AE4B4 |
  STA.W $1656                               ; $8AE4B7 |
  INC.B $1A,X                               ; $8AE4BA |

CODE_8AE4BC:
  LDA.W #$8D1C                              ; $8AE4BC |
  JSL.L CODE_FL_809934                      ; $8AE4BF |
  BCC CODE_JP_8AE49C                        ; $8AE4C3 |
  LDY.W #$00F8                              ; $8AE4C5 |
  JSL.L CODE_FL_808993                      ; $8AE4C8 |
  LDA.W #$FF00                              ; $8AE4CC |
  STA.B $2A,X                               ; $8AE4CF |
  LDA.W #$0040                              ; $8AE4D1 |
  STA.B $38,X                               ; $8AE4D4 |
  INC.B $1A,X                               ; $8AE4D6 |

CODE_8AE4D8:
  LDA.W #$0001                              ; $8AE4D8 |
  STA.W $1C7C                               ; $8AE4DB |
  JSL.L CODE_FL_82C8C4                      ; $8AE4DE |
  CMP.W #$0050                              ; $8AE4E2 |
  BPL CODE_JP_8AE49C                        ; $8AE4E5 |
  STZ.B $2A,X                               ; $8AE4E7 |
  DEC.B $38,X                               ; $8AE4E9 |
  BPL CODE_JP_8AE49C                        ; $8AE4EB |
  LDA.W #$200E                              ; $8AE4ED |
  JSL.L CODE_FL_829322                      ; $8AE4F0 |
  LDA.W #$1000                              ; $8AE4F4 |
  STA.W $003A,Y                             ; $8AE4F7 |
  LDY.W #$0030                              ; $8AE4FA |
  JSL.L CODE_FL_808993                      ; $8AE4FD |
  JSL.L CODE_FL_82B31C                      ; $8AE501 |
  LDY.W #$0E20                              ; $8AE505 |
  LDA.W #$8021                              ; $8AE508 |
  JSL.L CODE_FL_82CD78                      ; $8AE50B |
  LDA.W #$0002                              ; $8AE50F |
  STA.W $0038,Y                             ; $8AE512 |
  LDA.W #$0003                              ; $8AE515 |
  STA.W $003C,Y                             ; $8AE518 |
  LDA.W #$0001                              ; $8AE51B |
  STA.W $0040,Y                             ; $8AE51E |
  LDA.W #$00E0                              ; $8AE521 |
  STA.B $38,X                               ; $8AE524 |
  INC.B $1A,X                               ; $8AE526 |

CODE_8AE528:
  DEC.B $38,X                               ; $8AE528 |
  BMI CODE_8AE52F                           ; $8AE52A |
  JMP.W CODE_JP_8AE49C                      ; $8AE52C |

CODE_8AE52F:
  LDA.W #$FFFF                              ; $8AE52F |
  STA.W $1C68                               ; $8AE532 |
  INC.B $1A,X                               ; $8AE535 |

CODE_8AE537:
  RTL                                       ; $8AE537 |

  LDX.W #DATA_888530                        ; $8AE538 |
  JSL.L sound_transfer_blocks               ; $8AE53B |
  LDX.W #DATA_888538                        ; $8AE53F |
  JSL.L sound_transfer_blocks               ; $8AE542 |
  LDX.W #DATA_888542                        ; $8AE546 |
  JSL.L sound_transfer_blocks               ; $8AE549 |
  LDY.W #$B8AC                              ; $8AE54D |
  JSL.L CODE_FL_80C27C                      ; $8AE550 |
  LDA.W #$001E                              ; $8AE554 |
  JSL.L CODE_FL_82D4FE                      ; $8AE557 |
  INC.W $1C9A                               ; $8AE55B |
  LDX.W #$0DC0                              ; $8AE55E |
  LDA.W #$804C                              ; $8AE561 |
  STA.B $18,X                               ; $8AE564 |
  LDA.W #$1000                              ; $8AE566 |
  STA.B $10,X                               ; $8AE569 |
  LDX.W #$0E80                              ; $8AE56B |
  LDA.W #$C037                              ; $8AE56E |
  STA.B $18,X                               ; $8AE571 |
  LDX.W #$1630                              ; $8AE573 |
  LDA.W #$0008                              ; $8AE576 |
  STA.B $18,X                               ; $8AE579 |
  LDA.W #$0040                              ; $8AE57B |
  STA.B $2A,X                               ; $8AE57E |
  LDX.W #$1600                              ; $8AE580 |
  LDA.W #$0008                              ; $8AE583 |
  STA.B $18,X                               ; $8AE586 |
  LDA.W #$0048                              ; $8AE588 |
  STA.B $2A,X                               ; $8AE58B |
  LDX.W #$15D0                              ; $8AE58D |
  LDA.W #$0008                              ; $8AE590 |
  STA.B $18,X                               ; $8AE593 |
  LDA.W #$0050                              ; $8AE595 |
  STA.B $2A,X                               ; $8AE598 |
  RTL                                       ; $8AE59A |

  LDY.W #$9DFA                              ; $8AE59B |
  JSL.L CODE_FL_8AAF61                      ; $8AE59E |
  LDA.W #$0050                              ; $8AE5A2 |
  JSL.L CODE_FL_8AB11E                      ; $8AE5A5 |
  RTL                                       ; $8AE5A9 |

  LDA.W #$0041                              ; $8AE5AA |
  JSL.L CODE_FL_82D348                      ; $8AE5AD |
  LDY.W #$92FA                              ; $8AE5B1 |
  LDA.W #$9B64                              ; $8AE5B4 |
  JSL.L CODE_FL_82D181                      ; $8AE5B7 |
  LDA.B $1A,X                               ; $8AE5BB |
  PHX                                       ; $8AE5BD |
  ASL A                                     ; $8AE5BE |
  TAX                                       ; $8AE5BF |
  LDA.L PTR16_8AE5CA,X                      ; $8AE5C0 |
  PLX                                       ; $8AE5C4 |
  STA.B $00                                 ; $8AE5C5 |
  JMP.W ($0000)                             ; $8AE5C7 |

PTR16_8AE5CA:
  dw CODE_8AE666                            ; $8AE5CA |
  dw CODE_8AE69B                            ; $8AE5CC |
  dw CODE_8AE6A4                            ; $8AE5CE |
  dw CODE_8AE6C8                            ; $8AE5D0 |
  dw CODE_8AE712                            ; $8AE5D2 |
  dw CODE_8AE731                            ; $8AE5D4 |
  dw CODE_8AE75C                            ; $8AE5D6 |
  dw CODE_8AE77D                            ; $8AE5D8 |
  dw CODE_JL_8AE7A7                         ; $8AE5DA |
  dw CODE_JL_8AE805                         ; $8AE5DC |
  dw CODE_FL_8AE841                         ; $8AE5DE |
  dw CODE_FL_8AE867                         ; $8AE5E0 |
  dw CODE_8AE87C                            ; $8AE5E2 |
  dw CODE_8AE893                            ; $8AE5E4 |
  dw CODE_8AE8AC                            ; $8AE5E6 |
  dw CODE_8AE8C3                            ; $8AE5E8 |
  dw CODE_8AE8C4                            ; $8AE5EA |
  dw CODE_8AE8C4                            ; $8AE5EC |
  dw CODE_8AE8C4                            ; $8AE5EE |
  dw CODE_8AE8C4                            ; $8AE5F0 |
  dw CODE_8AE8C4                            ; $8AE5F2 |
  dw CODE_8AE8C4                            ; $8AE5F4 |
  dw CODE_8AE8C5                            ; $8AE5F6 |
  dw CODE_8AE937                            ; $8AE5F8 |
  dw CODE_8AE947                            ; $8AE5FA |
  dw CODE_8AE97A                            ; $8AE5FC |
  dw CODE_8AE9A4                            ; $8AE5FE |
  dw CODE_8AE9D7                            ; $8AE600 |
  dw CODE_8AEA00                            ; $8AE602 |
  dw CODE_8AEA95                            ; $8AE604 |
  dw CODE_8AEAA1                            ; $8AE606 |
  dw CODE_8AEAD9                            ; $8AE608 |
  dw CODE_8AEAEF                            ; $8AE60A |
  dw CODE_8AEB03                            ; $8AE60C |
  dw CODE_8AEB19                            ; $8AE60E |
  dw CODE_8AEB4F                            ; $8AE610 |
  dw CODE_8AEB6C                            ; $8AE612 |
  dw CODE_8AEBB7                            ; $8AE614 |
  dw CODE_8AEBC6                            ; $8AE616 |
  dw CODE_8AEBE9                            ; $8AE618 |
  dw CODE_8AEBFC                            ; $8AE61A |
  dw CODE_8AEC0E                            ; $8AE61C |
  dw CODE_8AEC49                            ; $8AE61E |
  dw CODE_8AEC8A                            ; $8AE620 |
  dw CODE_8AECC2                            ; $8AE622 |
  dw CODE_8AECCC                            ; $8AE624 |
  dw CODE_8AECDB                            ; $8AE626 |
  dw CODE_8AECFE                            ; $8AE628 |
  dw CODE_8AED20                            ; $8AE62A |
  dw CODE_8AED58                            ; $8AE62C |
  dw CODE_8AED6D                            ; $8AE62E |
  dw CODE_8AEE35                            ; $8AE630 |
  dw CODE_8AEE3F                            ; $8AE632 |
  dw CODE_8AEE6B                            ; $8AE634 |
  dw CODE_8AED95                            ; $8AE636 |
  dw CODE_8AECDB                            ; $8AE638 |
  dw CODE_8AEDA4                            ; $8AE63A |
  dw CODE_8AEDBB                            ; $8AE63C |
  dw CODE_8AEDE8                            ; $8AE63E |
  dw CODE_8AEE0B                            ; $8AE640 |
  dw CODE_8AEE7F                            ; $8AE642 |
  dw CODE_8AEEAB                            ; $8AE644 |
  dw CODE_8AEEC8                            ; $8AE646 |
  dw CODE_8AEEEE                            ; $8AE648 |
  dw CODE_8AEF16                            ; $8AE64A |
  dw CODE_8AEF20                            ; $8AE64C |
  dw CODE_8AEF4B                            ; $8AE64E |
  dw CODE_8AEF4F                            ; $8AE650 |
  dw CODE_8AEF72                            ; $8AE652 |
  dw CODE_8AEF9C                            ; $8AE654 |
  dw CODE_8AEFAF                            ; $8AE656 |
  dw CODE_8AEFC0                            ; $8AE658 |
  dw CODE_8AEFC4                            ; $8AE65A |
  dw CODE_8AEFFD                            ; $8AE65C |
  dw CODE_8AF01F                            ; $8AE65E |
  dw CODE_8AF04A                            ; $8AE660 |
  dw CODE_8AF07D                            ; $8AE662 |
  dw CODE_8AF0D7                            ; $8AE664 |

CODE_8AE666:
  LDA.W #$0040                              ; $8AE666 |
  STA.B $38,X                               ; $8AE669 |
  LDY.W #$8BBC                              ; $8AE66B |
  JSL.L CODE_FL_82B81C                      ; $8AE66E |
  LDA.W #$0006                              ; $8AE672 |
  STA.B $5E,X                               ; $8AE675 |
  LDA.W #$0080                              ; $8AE677 |
  STA.B $38,X                               ; $8AE67A |
  LDA.B $DA                                 ; $8AE67C |
  CMP.W #$0006                              ; $8AE67E |
  BEQ CODE_8AE693                           ; $8AE681 |
  STZ.B $2D,X                               ; $8AE683 |
  STZ.B $31,X                               ; $8AE685 |
  LDA.W #$0100                              ; $8AE687 |
  STA.B $35,X                               ; $8AE68A |
  LDA.W #$0001                              ; $8AE68C |
  STA.B $1A,X                               ; $8AE68F |
  BRA CODE_8AE69B                           ; $8AE691 |

CODE_8AE693:
  LDA.W #$0016                              ; $8AE693 |
  STA.B $1A,X                               ; $8AE696 |
  JMP.W CODE_JP_8AE8C7                      ; $8AE698 |

CODE_8AE69B:
  DEC.B $38,X                               ; $8AE69B |
  BPL CODE_8AE6A3                           ; $8AE69D |
  STZ.B $3A,X                               ; $8AE69F |
  INC.B $1A,X                               ; $8AE6A1 |

CODE_8AE6A3:
  RTL                                       ; $8AE6A3 |

CODE_8AE6A4:
  DEC.B $38,X                               ; $8AE6A4 |
  BPL CODE_8AE6B3                           ; $8AE6A6 |
  LDA.W #$0002                              ; $8AE6A8 |
  STA.B $38,X                               ; $8AE6AB |
  INC.B $3A,X                               ; $8AE6AD |
  JSL.L CODE_FL_8AAECB                      ; $8AE6AF |

CODE_8AE6B3:
  LDA.B $3A,X                               ; $8AE6B3 |
  CMP.W #$000C                              ; $8AE6B5 |
  BNE CODE_8AE6C7                           ; $8AE6B8 |
  LDA.W #$0080                              ; $8AE6BA |
  STA.B $38,X                               ; $8AE6BD |
  STZ.B $3A,X                               ; $8AE6BF |
  INC.B $1A,X                               ; $8AE6C1 |
  JSL.L CODE_FL_82CE46                      ; $8AE6C3 |

CODE_8AE6C7:
  RTL                                       ; $8AE6C7 |

CODE_8AE6C8:
  DEC.B $38,X                               ; $8AE6C8 |
  BPL CODE_8AE6EF                           ; $8AE6CA |
  LDY.B $3A,X                               ; $8AE6CC |
  CPY.W #$0003                              ; $8AE6CE |
  BEQ CODE_8AE6F3                           ; $8AE6D1 |
  LDA.W LOOSE_OP_00A3A3,Y                   ; $8AE6D3 |
  AND.W #$00FF                              ; $8AE6D6 |
  STA.B $38,X                               ; $8AE6D9 |
  INC.B $3A,X                               ; $8AE6DB |
  JSL.L CODE_FL_82BED6                      ; $8AE6DD |
  LDA.W #$0040                              ; $8AE6E1 |
  JSL.L push_sound_queue                    ; $8AE6E4 |
  LDA.W #$001C                              ; $8AE6E8 |
  JSL.L CODE_FL_8AF7C5                      ; $8AE6EB |

CODE_8AE6EF:
  JML.L CODE_FL_82CEC6                      ; $8AE6EF |

CODE_8AE6F3:
  PHX                                       ; $8AE6F3 |
  JSL.L CODE_FL_82BED6                      ; $8AE6F4 |
  LDA.W #$0040                              ; $8AE6F8 |
  JSL.L push_sound_queue                    ; $8AE6FB |
  LDY.W #$9DFA                              ; $8AE6FF |
  JSL.L CODE_FL_8AAF61                      ; $8AE702 |
  PLX                                       ; $8AE706 |
  LDA.W #$0040                              ; $8AE707 |
  STA.B $38,X                               ; $8AE70A |
  INC.B $1A,X                               ; $8AE70C |
  JML.L CODE_FL_82CEC6                      ; $8AE70E |

CODE_8AE712:
  LDA.B $38,X                               ; $8AE712 |
  CMP.W #$0020                              ; $8AE714 |
  BNE CODE_8AE722                           ; $8AE717 |
  PHX                                       ; $8AE719 |
  LDY.W #$BA8B                              ; $8AE71A |
  JSL.L CODE_FL_80C27C                      ; $8AE71D |
  PLX                                       ; $8AE721 |

CODE_8AE722:
  DEC.B $38,X                               ; $8AE722 |
  BPL CODE_8AE72D                           ; $8AE724 |
  LDA.W #$0020                              ; $8AE726 |
  STA.B $38,X                               ; $8AE729 |
  INC.B $1A,X                               ; $8AE72B |

CODE_8AE72D:
  JML.L CODE_FL_82CEC6                      ; $8AE72D |

CODE_8AE731:
  LDA.W $1F30                               ; $8AE731 |
  BNE CODE_8AE758                           ; $8AE734 |
  DEC.B $38,X                               ; $8AE736 |
  BPL CODE_8AE758                           ; $8AE738 |
  STZ.W $1C9A                               ; $8AE73A |
  LDA.W #$00A0                              ; $8AE73D |
  JSL.L CODE_FL_8089BD                      ; $8AE740 |
  LDA.W #$0070                              ; $8AE744 |
  JSL.L CODE_FL_8AF7C5                      ; $8AE747 |
  LDA.W #$8000                              ; $8AE74B |
  STA.W $1C7C                               ; $8AE74E |
  LDA.W #$0020                              ; $8AE751 |
  STA.B $38,X                               ; $8AE754 |
  INC.B $1A,X                               ; $8AE756 |

CODE_8AE758:
  JML.L CODE_FL_82CEC6                      ; $8AE758 |

CODE_8AE75C:
  DEC.B $38,X                               ; $8AE75C |
  BPL CODE_8AE779                           ; $8AE75E |
  STZ.B $38,X                               ; $8AE760 |
  LDA.W #$8DE6                              ; $8AE762 |
  JSL.L CODE_FL_809934                      ; $8AE765 |
  BCC CODE_8AE779                           ; $8AE769 |
  LDY.W #$A3A6                              ; $8AE76B |
  JSL.L CODE_FL_82D20D                      ; $8AE76E |
  LDA.W #$FD00                              ; $8AE772 |
  STA.B $2A,X                               ; $8AE775 |
  INC.B $1A,X                               ; $8AE777 |

CODE_8AE779:
  JML.L CODE_FL_82CEC6                      ; $8AE779 |

CODE_8AE77D:
  JSR.W CODE_FN_8AF0EB                      ; $8AE77D |
  LDA.W #$0008                              ; $8AE780 |
  JSL.L CODE_FL_82D219                      ; $8AE783 |
  LDA.W $1C92                               ; $8AE787 |
  CMP.W #$0038                              ; $8AE78A |
  BNE CODE_8AE7A3                           ; $8AE78D |
  JSL.L CODE_FL_82C8C4                      ; $8AE78F |
  CMP.W #$0048                              ; $8AE793 |
  BPL CODE_8AE7A3                           ; $8AE796 |
  JSL.L CODE_FL_82C82D                      ; $8AE798 |
  LDA.W #$0008                              ; $8AE79C |
  STA.B $3A,X                               ; $8AE79F |
  INC.B $1A,X                               ; $8AE7A1 |

CODE_8AE7A3:
  JML.L CODE_FL_82CEC6                      ; $8AE7A3 |

CODE_JL_8AE7A7:
  JSL.L CODE_FL_82D1BF                      ; $8AE7A7 |
  LDA.W #$8000                              ; $8AE7AB |
  STA.W $1C7C                               ; $8AE7AE |
  JSL.L CODE_FL_82D565                      ; $8AE7B1 |
  DEC.B $38,X                               ; $8AE7B5 |
  BPL CODE_8AE801                           ; $8AE7B7 |
  DEC.B $3A,X                               ; $8AE7B9 |
  BMI CODE_8AE7E4                           ; $8AE7BB |
  LDA.B $DA                                 ; $8AE7BD |
  CMP.W #$0001                              ; $8AE7BF |
  BEQ CODE_8AE7DD                           ; $8AE7C2 |
  JSL.L CODE_FL_82BF55                      ; $8AE7C4 |
  LDA.W #$0034                              ; $8AE7C8 |
  JSL.L push_sound_queue                    ; $8AE7CB |
  LDA.B $3A,X                               ; $8AE7CF |
  AND.W #$0003                              ; $8AE7D1 |
  ASL A                                     ; $8AE7D4 |
  TAY                                       ; $8AE7D5 |
  LDA.W LOOSE_OP_00A3CA,Y                   ; $8AE7D6 |
  JSL.L CODE_FL_808D48                      ; $8AE7D9 |

CODE_8AE7DD:
  LDA.W #$0010                              ; $8AE7DD |
  STA.B $38,X                               ; $8AE7E0 |
  BRA CODE_8AE801                           ; $8AE7E2 |

CODE_8AE7E4:
  INC.W $1C9A                               ; $8AE7E4 |
  LDY.W #$0120                              ; $8AE7E7 |
  JSL.L CODE_FL_808993                      ; $8AE7EA |
  JSL.L CODE_FL_82C1FE                      ; $8AE7EE |
  LDA.W #$0037                              ; $8AE7F2 |
  JSL.L CODE_FL_82D2D7                      ; $8AE7F5 |
  LDA.W #$0070                              ; $8AE7F9 |
  STA.W $1DA6                               ; $8AE7FC |
  INC.B $1A,X                               ; $8AE7FF |

CODE_8AE801:
  JML.L CODE_FL_82CEC6                      ; $8AE801 |

CODE_JL_8AE805:
  JSL.L CODE_FL_82D1BF                      ; $8AE805 |
  LDA.W $1DE0                               ; $8AE809 |
  CMP.W #$0002                              ; $8AE80C |
  BNE CODE_8AE83D                           ; $8AE80F |
  PHX                                       ; $8AE811 |
  LDA.B $12,X                               ; $8AE812 |
  BEQ CODE_8AE81B                           ; $8AE814 |
  TAX                                       ; $8AE816 |
  JSL.L CODE_FL_82CCD2                      ; $8AE817 |

CODE_8AE81B:
  PLX                                       ; $8AE81B |
  JSL.L CODE_FL_82BED6                      ; $8AE81C |
  LDA.W #$0002                              ; $8AE820 |
  STA.W $1DE0                               ; $8AE823 |
  JSL.L CODE_FL_80893F                      ; $8AE826 |
  JSL.L CODE_FL_8284D0                      ; $8AE82A |
  INC.B $1A,X                               ; $8AE82E |
  JSL.L CODE_FL_82C81E                      ; $8AE830 |
  LDA.W #$0100                              ; $8AE834 |
  STA.B $35,X                               ; $8AE837 |
  STZ.B $31,X                               ; $8AE839 |
  STZ.B $2D,X                               ; $8AE83B |

CODE_8AE83D:
  JML.L CODE_FL_82CEC6                      ; $8AE83D |

CODE_FL_8AE841:
  LDA.L $7E0100                             ; $8AE841 |
  ORA.L $7E1F00                             ; $8AE845 |
  ORA.L $7E0130                             ; $8AE849 |
  BNE CODE_8AE866                           ; $8AE84D |
  JSL.L CODE_FL_82847E                      ; $8AE84F |
  JSL.L CODE_FL_828559                      ; $8AE853 |
  STZ.W $1CFC                               ; $8AE857 |
  INC.W $1DE0                               ; $8AE85A |
  INC.B $1A,X                               ; $8AE85D |
  LDY.W #$011C                              ; $8AE85F |
  JSL.L CODE_FL_808993                      ; $8AE862 |

CODE_8AE866:
  RTL                                       ; $8AE866 |

CODE_FL_8AE867:
  LDA.W $1DE2                               ; $8AE867 |
  BNE CODE_8AE874                           ; $8AE86A |
  JSL.L CODE_FL_828543                      ; $8AE86C |
  BCC CODE_8AE874                           ; $8AE870 |
  INC.B $1A,X                               ; $8AE872 |

CODE_8AE874:
  JSL.L CODE_FL_828572                      ; $8AE874 |
  JML.L CODE_FL_828500                      ; $8AE878 |

CODE_8AE87C:
  JSL.L CODE_FL_82C82D                      ; $8AE87C |
  LDA.W #$8E70                              ; $8AE880 |
  JSL.L CODE_FL_809934                      ; $8AE883 |
  BCC CODE_8AE88B                           ; $8AE887 |
  INC.B $1A,X                               ; $8AE889 |

CODE_8AE88B:
  JSL.L CODE_FL_828572                      ; $8AE88B |
  JML.L CODE_FL_828500                      ; $8AE88F |

CODE_8AE893:
  JSL.L CODE_FL_828530                      ; $8AE893 |
  BCC CODE_8AE88B                           ; $8AE897 |
  LDY.W #$0120                              ; $8AE899 |
  JSL.L CODE_FL_808993                      ; $8AE89C |
  JSL.L CODE_FL_82C1FE                      ; $8AE8A0 |
  LDA.W #$0060                              ; $8AE8A4 |
  STA.W $1DA6                               ; $8AE8A7 |
  INC.B $1A,X                               ; $8AE8AA |

CODE_8AE8AC:
  LDA.W $1DE0                               ; $8AE8AC |
  CMP.W #$0002                              ; $8AE8AF |
  BNE CODE_8AE88B                           ; $8AE8B2 |
  INC.B $1A,X                               ; $8AE8B4 |
  LDA.W #$FFFF                              ; $8AE8B6 |
  STA.W $1C68                               ; $8AE8B9 |
  PHX                                       ; $8AE8BC |
  JSL.L CODE_FL_8285F8                      ; $8AE8BD |
  PLX                                       ; $8AE8C1 |
  RTL                                       ; $8AE8C2 |

CODE_8AE8C3:
  RTL                                       ; $8AE8C3 |

CODE_8AE8C4:
  RTL                                       ; $8AE8C4 |

CODE_8AE8C5:
  STZ.B $38,X                               ; $8AE8C5 |

CODE_JP_8AE8C7:
  STZ.B $2D,X                               ; $8AE8C7 |
  LDA.W #$FE80                              ; $8AE8C9 |
  STA.B $31,X                               ; $8AE8CC |
  LDA.W #$0100                              ; $8AE8CE |
  STA.B $35,X                               ; $8AE8D1 |
  LDA.W #$00E0                              ; $8AE8D3 |
  JSL.L CODE_FL_8AF7C5                      ; $8AE8D6 |
  STZ.W $1C9A                               ; $8AE8DA |
  JSL.L CODE_FL_82BED6                      ; $8AE8DD |
  LDA.W #$0002                              ; $8AE8E1 |
  STA.W $1DE0                               ; $8AE8E4 |
  LDA.W #$0037                              ; $8AE8E7 |
  JSL.L CODE_FL_82D2D7                      ; $8AE8EA |
  PHX                                       ; $8AE8EE |
  LDY.W #$9D95                              ; $8AE8EF |
  JSL.L CODE_FL_8AAF61                      ; $8AE8F2 |
  LDY.W #$9BA4                              ; $8AE8F6 |
  LDA.W #$001C                              ; $8AE8F9 |
  JSL.L CODE_FL_80C2BA                      ; $8AE8FC |
  PLX                                       ; $8AE900 |
  LDY.W #$1630                              ; $8AE901 |
  LDA.W #$0008                              ; $8AE904 |
  JSL.L CODE_FL_82CD80                      ; $8AE907 |
  LDA.W #$0028                              ; $8AE90B |
  STA.W $002A,Y                             ; $8AE90E |
  LDY.W #$1600                              ; $8AE911 |
  LDA.W #$0008                              ; $8AE914 |
  JSL.L CODE_FL_82CD80                      ; $8AE917 |
  LDA.W #$0030                              ; $8AE91B |
  STA.W $002A,Y                             ; $8AE91E |
  LDY.W #$15D0                              ; $8AE921 |
  LDA.W #$0008                              ; $8AE924 |
  JSL.L CODE_FL_82CD80                      ; $8AE927 |
  LDA.W #$0038                              ; $8AE92B |
  STA.W $002A,Y                             ; $8AE92E |
  INC.B $1A,X                               ; $8AE931 |
  JML.L CODE_FL_82CEC6                      ; $8AE933 |

CODE_8AE937:
  DEC.B $38,X                               ; $8AE937 |
  BPL CODE_8AE943                           ; $8AE939 |
  STZ.W $1C9A                               ; $8AE93B |
  INC.W $1DE0                               ; $8AE93E |
  INC.B $1A,X                               ; $8AE941 |

CODE_8AE943:
  JML.L CODE_FL_82CEC6                      ; $8AE943 |

CODE_8AE947:
  LDA.W $1DE2                               ; $8AE947 |
  BNE CODE_8AE976                           ; $8AE94A |
  JSL.L CODE_FL_82CE46                      ; $8AE94C |
  TDC                                       ; $8AE950 |
  JSL.L CODE_FL_82D2D7                      ; $8AE951 |
  JSL.L CODE_FL_82CAD2                      ; $8AE955 |
  BNE CODE_8AE976                           ; $8AE959 |
  LDA.W #$001C                              ; $8AE95B |
  JSL.L CODE_FL_8AF7C5                      ; $8AE95E |
  LDA.W #$8000                              ; $8AE962 |
  STA.W $1C7C                               ; $8AE965 |
  LDA.W #$0038                              ; $8AE968 |
  JSL.L push_sound_queue                    ; $8AE96B |
  LDA.W #$0060                              ; $8AE96F |
  STA.B $38,X                               ; $8AE972 |
  INC.B $1A,X                               ; $8AE974 |

CODE_8AE976:
  JML.L CODE_FL_82CEC6                      ; $8AE976 |

CODE_8AE97A:
  DEC.B $38,X                               ; $8AE97A |
  BPL CODE_8AE9A0                           ; $8AE97C |
  STZ.W $1C9A                               ; $8AE97E |
  LDA.W #$00A0                              ; $8AE981 |
  JSL.L CODE_FL_8089BD                      ; $8AE984 |
  LDA.W #$0070                              ; $8AE988 |
  JSL.L CODE_FL_8AF7C5                      ; $8AE98B |
  JSL.L CODE_FL_82CFDF                      ; $8AE98F |
  LDA.W #$8000                              ; $8AE993 |
  STA.W $1C7C                               ; $8AE996 |
  LDA.W #$0020                              ; $8AE999 |
  STA.B $38,X                               ; $8AE99C |
  INC.B $1A,X                               ; $8AE99E |

CODE_8AE9A0:
  JML.L CODE_FL_82CEC6                      ; $8AE9A0 |

CODE_8AE9A4:
  DEC.B $38,X                               ; $8AE9A4 |
  BPL CODE_8AE9D3                           ; $8AE9A6 |
  STZ.B $38,X                               ; $8AE9A8 |
  LDA.W #$0598                              ; $8AE9AA |
  JSL.L CODE_FL_8CF9DB                      ; $8AE9AD |
  LDA.W #$8EF5                              ; $8AE9B1 |
  BCC CODE_8AE9B9                           ; $8AE9B4 |
  LDA.W #$9098                              ; $8AE9B6 |

CODE_8AE9B9:
  JSL.L CODE_FL_809934                      ; $8AE9B9 |
  BCC CODE_8AE9D3                           ; $8AE9BD |
  LDY.W #$A3A6                              ; $8AE9BF |
  JSL.L CODE_FL_82D20D                      ; $8AE9C2 |
  LDA.W #$001B                              ; $8AE9C6 |
  STA.B $1A,X                               ; $8AE9C9 |
  STA.B $50,X                               ; $8AE9CB |
  STZ.W $1C6A                               ; $8AE9CD |
  STZ.W $1C24                               ; $8AE9D0 |

CODE_8AE9D3:
  JML.L CODE_FL_82CEC6                      ; $8AE9D3 |

CODE_8AE9D7:
  LDY.W #$8BBC                              ; $8AE9D7 |
  JSL.L CODE_FL_82B81C                      ; $8AE9DA |
  LDA.W #$0006                              ; $8AE9DE |
  STA.B $5E,X                               ; $8AE9E1 |
  LDA.W #$0800                              ; $8AE9E3 |
  STA.B $2A,X                               ; $8AE9E6 |
  LDY.W #$0300                              ; $8AE9E8 |
  JSL.L CODE_FL_82C936                      ; $8AE9EB |
  LDY.W #$A3A6                              ; $8AE9EF |
  JSL.L CODE_FL_82D20D                      ; $8AE9F2 |
  STZ.B $00,X                               ; $8AE9F6 |
  STZ.W $1CF0                               ; $8AE9F8 |
  LDA.W #$001C                              ; $8AE9FB |
  INC.B $1A,X                               ; $8AE9FE |

CODE_8AEA00:
  JSL.L CODE_FL_82B8D1                      ; $8AEA00 |
  JSL.L CODE_FL_82CAD2                      ; $8AEA04 |
  BNE CODE_8AEA1F                           ; $8AEA08 |
  LDA.W $1CF0                               ; $8AEA0A |
  BNE CODE_8AEA1F                           ; $8AEA0D |
  LDA.W #$0038                              ; $8AEA0F |
  JSL.L push_sound_queue                    ; $8AEA12 |
  INC.W $1CF0                               ; $8AEA16 |
  LDA.W #$8000                              ; $8AEA19 |
  STA.W $1C7C                               ; $8AEA1C |

CODE_8AEA1F:
  JSR.W CODE_FN_8AF0EB                      ; $8AEA1F |
  LDA.W #$0008                              ; $8AEA22 |
  JSL.L CODE_FL_82D219                      ; $8AEA25 |
  LDA.W $1C92                               ; $8AEA29 |
  CMP.W #$0038                              ; $8AEA2C |
  BNE CODE_JP_8AEA72                        ; $8AEA2F |
  LDY.W #$0600                              ; $8AEA31 |
  LDA.W #$0120                              ; $8AEA34 |
  JSL.L CODE_FL_82C9EF                      ; $8AEA37 |
  LDA.W #$0600                              ; $8AEA3B |
  JSL.L CODE_FL_82CC3A                      ; $8AEA3E |
  BNE CODE_JP_8AEA72                        ; $8AEA42 |
  LDA.B $31,X                               ; $8AEA44 |
  BMI CODE_JP_8AEA72                        ; $8AEA46 |
  DEC.B $4E,X                               ; $8AEA48 |
  BPL CODE_JP_8AEA72                        ; $8AEA4A |
  LDA.W $0052,X                             ; $8AEA4C |
  INC A                                     ; $8AEA4F |
  AND.W #$000F                              ; $8AEA50 |
  STA.W $0052,X                             ; $8AEA53 |
  LDY.B $10,X                               ; $8AEA56 |
  CPY.W #$0600                              ; $8AEA58 |
  BPL CODE_8AEA61                           ; $8AEA5B |
  CLC                                       ; $8AEA5D |
  ADC.W #$0010                              ; $8AEA5E |

CODE_8AEA61:
  ASL A                                     ; $8AEA61 |
  ASL A                                     ; $8AEA62 |
  TAY                                       ; $8AEA63 |
  LDA.W CODE_00A323,Y                       ; $8AEA64 |
  STA.B $00                                 ; $8AEA67 |
  LDA.W CODE_00A325,Y                       ; $8AEA69 |
  STA.W $004E,X                             ; $8AEA6C |
  JMP.W ($0000)                             ; $8AEA6F |

CODE_JP_8AEA72:
  LDA.B $27,X                               ; $8AEA72 |
  JSL.L CODE_FL_82D02E                      ; $8AEA74 |
  LDA.W #$0041                              ; $8AEA78 |
  JSL.L CODE_FL_82B42F                      ; $8AEA7B |
  JML.L CODE_FL_82CEC6                      ; $8AEA7F |

CODE_FL_8AEA83:
  LDA.W #$0004                              ; $8AEA83 |
  JSL.L CODE_FL_82D03F                      ; $8AEA86 |
  LDA.W #$0041                              ; $8AEA8A |
  JSL.L CODE_FL_82B42F                      ; $8AEA8D |
  JML.L CODE_FL_82CEC6                      ; $8AEA91 |

CODE_8AEA95:
  LDY.W #$A3A6                              ; $8AEA95 |
  JSL.L CODE_FL_82D20D                      ; $8AEA98 |
  LDA.W #$001E                              ; $8AEA9C |
  STA.B $1A,X                               ; $8AEA9F |

CODE_8AEAA1:
  JSL.L CODE_FL_82B8D1                      ; $8AEAA1 |
  JSR.W CODE_FN_8AF0EB                      ; $8AEAA5 |
  LDA.W #$0004                              ; $8AEAA8 |
  JSL.L CODE_FL_82D219                      ; $8AEAAB |
  LDA.W $1C92                               ; $8AEAAF |
  CMP.W #$0038                              ; $8AEAB2 |
  BNE CODE_8AEAD6                           ; $8AEAB5 |
  LDY.W #$0600                              ; $8AEAB7 |
  LDA.W #$0100                              ; $8AEABA |
  JSL.L CODE_FL_82CB77                      ; $8AEABD |
  BNE CODE_8AEAD6                           ; $8AEAC1 |
  LDY.W #$FFD0                              ; $8AEAC3 |
  LDA.W #$0004                              ; $8AEAC6 |
  JSL.L CODE_FL_82D063                      ; $8AEAC9 |
  LDY.W #$A3C0                              ; $8AEACD |
  JSL.L CODE_FL_82D20D                      ; $8AEAD0 |
  INC.B $1A,X                               ; $8AEAD4 |

CODE_8AEAD6:
  JMP.W CODE_FL_8AEA83                      ; $8AEAD6 |

CODE_8AEAD9:
  JSR.W CODE_FN_8AF101                      ; $8AEAD9 |
  JSL.L CODE_FL_82C8BC                      ; $8AEADC |
  CMP.W #$0058                              ; $8AEAE0 |
  BPL CODE_8AEAEC                           ; $8AEAE3 |
  LDA.W #$0080                              ; $8AEAE5 |
  STA.B $38,X                               ; $8AEAE8 |
  INC.B $1A,X                               ; $8AEAEA |

CODE_8AEAEC:
  JMP.W CODE_JP_8AEA72                      ; $8AEAEC |

CODE_8AEAEF:
  JSR.W CODE_FN_8AF101                      ; $8AEAEF |
  DEC.B $38,X                               ; $8AEAF2 |
  BPL CODE_8AEB00                           ; $8AEAF4 |
  LDA.W #$FD00                              ; $8AEAF6 |
  STA.B $28,X                               ; $8AEAF9 |
  LDA.W #$001B                              ; $8AEAFB |
  STA.B $1A,X                               ; $8AEAFE |

CODE_8AEB00:
  JMP.W CODE_FL_8AEA83                      ; $8AEB00 |

CODE_8AEB03:
  LDY.W #$0800                              ; $8AEB03 |
  JSL.L CODE_FL_82C936                      ; $8AEB06 |
  LDY.W #$A3A6                              ; $8AEB0A |
  JSL.L CODE_FL_82D20D                      ; $8AEB0D |
  LDA.W #$0022                              ; $8AEB11 |
  STA.B $1A,X                               ; $8AEB14 |
  JMP.W CODE_JP_8AEA72                      ; $8AEB16 |

CODE_8AEB19:
  JSR.W CODE_FN_8AF0EB                      ; $8AEB19 |
  LDA.W #$0006                              ; $8AEB1C |
  JSL.L CODE_FL_82D219                      ; $8AEB1F |
  LDA.W $1C92                               ; $8AEB23 |
  CMP.W #$0038                              ; $8AEB26 |
  BNE CODE_8AEB4C                           ; $8AEB29 |
  LDA.W #$0800                              ; $8AEB2B |
  JSL.L CODE_FL_82CC3A                      ; $8AEB2E |
  LDY.W #$0600                              ; $8AEB32 |
  LDA.W #$0100                              ; $8AEB35 |
  JSL.L CODE_FL_82CB77                      ; $8AEB38 |
  BNE CODE_8AEB4C                           ; $8AEB3C |
  LDA.W #$001C                              ; $8AEB3E |
  JSL.L CODE_FL_8AF7C5                      ; $8AEB41 |
  LDA.W #$0020                              ; $8AEB45 |
  STA.B $38,X                               ; $8AEB48 |
  INC.B $1A,X                               ; $8AEB4A |

CODE_8AEB4C:
  JMP.W CODE_JP_8AEA72                      ; $8AEB4C |

CODE_8AEB4F:
  DEC.B $38,X                               ; $8AEB4F |
  BPL CODE_8AEB69                           ; $8AEB51 |
  LDA.W #$8000                              ; $8AEB53 |
  STA.W $1C7C                               ; $8AEB56 |
  LDA.W #$008C                              ; $8AEB59 |
  JSL.L CODE_FL_8AF7C5                      ; $8AEB5C |
  LDA.W #$00C0                              ; $8AEB60 |
  STA.B $38,X                               ; $8AEB63 |
  STZ.B $3A,X                               ; $8AEB65 |
  INC.B $1A,X                               ; $8AEB67 |

CODE_8AEB69:
  JMP.W CODE_FL_8AEA83                      ; $8AEB69 |

CODE_8AEB6C:
  LDA.B $42                                 ; $8AEB6C |
  AND.W #$0007                              ; $8AEB6E |
  BNE CODE_8AEBAB                           ; $8AEB71 |
  LDA.W #$0036                              ; $8AEB73 |
  JSL.L CODE_FL_82CD2F                      ; $8AEB76 |
  BCC CODE_8AEBAB                           ; $8AEB7A |
  LDA.W #$833C                              ; $8AEB7C |
  STA.W $0038,Y                             ; $8AEB7F |
  INC.B $3A,X                               ; $8AEB82 |
  LDA.B $3A,X                               ; $8AEB84 |
  LSR A                                     ; $8AEB86 |
  LDA.W #$0008                              ; $8AEB87 |
  BCC CODE_8AEB8F                           ; $8AEB8A |
  LDA.W #$FFF8                              ; $8AEB8C |

CODE_8AEB8F:
  STA.W $003A,Y                             ; $8AEB8F |
  LDA.W #$FFEE                              ; $8AEB92 |
  STA.W $003C,Y                             ; $8AEB95 |
  LDA.W #$8004                              ; $8AEB98 |
  STA.W $003E,Y                             ; $8AEB9B |
  LDA.W #$0042                              ; $8AEB9E |
  STA.W $0002,Y                             ; $8AEBA1 |
  LDA.W #$0024                              ; $8AEBA4 |
  JSL.L CODE_FL_8089BD                      ; $8AEBA7 |

CODE_8AEBAB:
  DEC.B $38,X                               ; $8AEBAB |
  BPL CODE_8AEBB4                           ; $8AEBAD |
  LDA.W #$001B                              ; $8AEBAF |
  STA.B $1A,X                               ; $8AEBB2 |

CODE_8AEBB4:
  JMP.W CODE_FL_8AEA83                      ; $8AEBB4 |

CODE_8AEBB7:
  LDY.W #$A3A6                              ; $8AEBB7 |
  JSL.L CODE_FL_82D20D                      ; $8AEBBA |
  LDA.W #$0026                              ; $8AEBBE |
  STA.B $1A,X                               ; $8AEBC1 |
  JMP.W CODE_FL_8AEA83                      ; $8AEBC3 |

CODE_8AEBC6:
  JSR.W CODE_FN_8AF0EB                      ; $8AEBC6 |
  LDA.W #$0004                              ; $8AEBC9 |
  JSL.L CODE_FL_82D219                      ; $8AEBCC |
  LDA.W $1C92                               ; $8AEBD0 |
  CMP.W #$0038                              ; $8AEBD3 |
  BNE CODE_8AEBE6                           ; $8AEBD6 |
  LDY.W #$0C00                              ; $8AEBD8 |
  LDA.W #$01E0                              ; $8AEBDB |
  JSL.L CODE_FL_82CB77                      ; $8AEBDE |
  BNE CODE_8AEBE6                           ; $8AEBE2 |
  INC.B $1A,X                               ; $8AEBE4 |

CODE_8AEBE6:
  JMP.W CODE_FL_8AEA83                      ; $8AEBE6 |

CODE_8AEBE9:
  LDA.W #$0000                              ; $8AEBE9 |
  JSL.L CODE_FL_8AF7C5                      ; $8AEBEC |
  LDY.W #$8564                              ; $8AEBF0 |
  LDA.W #$0006                              ; $8AEBF3 |
  JSL.L CODE_FL_828AD9                      ; $8AEBF6 |
  INC.B $1A,X                               ; $8AEBFA |

CODE_8AEBFC:
  LDA.B $1C,X                               ; $8AEBFC |
  BNE CODE_8AEC0D                           ; $8AEBFE |
  LDA.W #$F500                              ; $8AEC00 |
  STA.B $28,X                               ; $8AEC03 |
  LDA.W #$8000                              ; $8AEC05 |
  STA.W $1C7C                               ; $8AEC08 |
  INC.B $1A,X                               ; $8AEC0B |

CODE_8AEC0D:
  RTL                                       ; $8AEC0D |

CODE_8AEC0E:
  JSL.L CODE_FL_82CAC7                      ; $8AEC0E |
  LDA.B $28,X                               ; $8AEC12 |
  BEQ CODE_8AEC21                           ; $8AEC14 |
  CMP.W #$FE00                              ; $8AEC16 |
  BMI CODE_8AEC20                           ; $8AEC19 |
  LDA.W #$33F2                              ; $8AEC1B |
  STA.B $00,X                               ; $8AEC1E |

CODE_8AEC20:
  RTL                                       ; $8AEC20 |

CODE_8AEC21:
  LDA.W #$0004                              ; $8AEC21 |
  LDY.W #$FFB0                              ; $8AEC24 |
  JSL.L CODE_FL_82D063                      ; $8AEC27 |
  LDY.W #$8BCB                              ; $8AEC2B |
  JSL.L CODE_FL_82B81C                      ; $8AEC2E |
  LDA.W #$0003                              ; $8AEC32 |
  STA.B $5E,X                               ; $8AEC35 |
  LDA.W #$00E0                              ; $8AEC37 |
  JSL.L CODE_FL_8AF7C5                      ; $8AEC3A |
  STZ.B $00,X                               ; $8AEC3E |
  INC.B $1A,X                               ; $8AEC40 |
  LDA.W #$0035                              ; $8AEC42 |
  JSL.L push_sound_queue                    ; $8AEC45 |

CODE_8AEC49:
  JSL.L CODE_FL_82C8BC                      ; $8AEC49 |
  CMP.W #$0048                              ; $8AEC4D |
  BPL CODE_8AEC5B                           ; $8AEC50 |
  LDA.W #$F800                              ; $8AEC52 |
  STA.B $28,X                               ; $8AEC55 |
  INC.B $1A,X                               ; $8AEC57 |
  BRA CODE_8AEC78                           ; $8AEC59 |

CODE_8AEC5B:
  LDA.W #$0020                              ; $8AEC5B |
  JSL.L CODE_FL_82D023                      ; $8AEC5E |

CODE_JP_8AEC62:
  JSL.L CODE_FL_82B45B                      ; $8AEC62 |
  LDA.B $5C,X                               ; $8AEC66 |
  BEQ CODE_8AEC86                           ; $8AEC68 |
  CMP.W #$000F                              ; $8AEC6A |
  BEQ CODE_8AEC78                           ; $8AEC6D |
  LDA.W #$0041                              ; $8AEC6F |
  JSL.L CODE_FL_82B840                      ; $8AEC72 |
  BRA CODE_8AEC86                           ; $8AEC76 |

CODE_8AEC78:
  LDY.W #$8BBC                              ; $8AEC78 |
  JSL.L CODE_FL_82B81C                      ; $8AEC7B |
  LDA.W #$0006                              ; $8AEC7F |
  STA.B $5E,X                               ; $8AEC82 |
  STZ.B $5C,X                               ; $8AEC84 |

CODE_8AEC86:
  JML.L CODE_FL_82CEC6                      ; $8AEC86 |

CODE_8AEC8A:
  LDA.W #$01E0                              ; $8AEC8A |
  LDY.W #$0800                              ; $8AEC8D |
  JSL.L CODE_FL_82CB77                      ; $8AEC90 |
  JSL.L CODE_FL_82CAD2                      ; $8AEC94 |
  BNE CODE_8AECBF                           ; $8AEC98 |
  LDA.W #$0038                              ; $8AEC9A |
  JSL.L push_sound_queue                    ; $8AEC9D |
  LDA.W #$8000                              ; $8AECA1 |
  STA.W $1C7C                               ; $8AECA4 |
  LDA.W #$0000                              ; $8AECA7 |
  JSL.L CODE_FL_8AF7C5                      ; $8AECAA |
  LDY.W #$856C                              ; $8AECAE |
  LDA.W #$0008                              ; $8AECB1 |
  JSL.L CODE_FL_828AD9                      ; $8AECB4 |
  LDA.W #$0002                              ; $8AECB8 |
  STA.B $1E,X                               ; $8AECBB |
  INC.B $1A,X                               ; $8AECBD |

CODE_8AECBF:
  JMP.W CODE_FL_8AEA83                      ; $8AECBF |

CODE_8AECC2:
  LDA.B $1C,X                               ; $8AECC2 |
  BNE CODE_8AECCB                           ; $8AECC4 |
  LDA.W #$001B                              ; $8AECC6 |
  STA.B $1A,X                               ; $8AECC9 |

CODE_8AECCB:
  RTL                                       ; $8AECCB |

CODE_8AECCC:
  LDY.W #$A3A6                              ; $8AECCC |
  JSL.L CODE_FL_82D20D                      ; $8AECCF |
  LDA.W #$002E                              ; $8AECD3 |
  STA.B $1A,X                               ; $8AECD6 |
  JMP.W CODE_FL_8AEA83                      ; $8AECD8 |

CODE_8AECDB:
  JSR.W CODE_FN_8AF0EB                      ; $8AECDB |
  LDA.W #$0004                              ; $8AECDE |
  JSL.L CODE_FL_82D219                      ; $8AECE1 |
  LDA.W $1C92                               ; $8AECE5 |
  CMP.W #$0038                              ; $8AECE8 |
  BNE CODE_8AECFB                           ; $8AECEB |
  LDY.W #$0800                              ; $8AECED |
  LDA.W #$01E0                              ; $8AECF0 |
  JSL.L CODE_FL_82CB77                      ; $8AECF3 |
  BNE CODE_8AECFB                           ; $8AECF7 |
  INC.B $1A,X                               ; $8AECF9 |

CODE_8AECFB:
  JMP.W CODE_FL_8AEA83                      ; $8AECFB |

CODE_8AECFE:
  INC.B $44,X                               ; $8AECFE |
  LDA.B $44,X                               ; $8AED00 |
  LSR A                                     ; $8AED02 |
  LDA.W #$2020                              ; $8AED03 |
  BCC CODE_8AED09                           ; $8AED06 |
  TDC                                       ; $8AED08 |

CODE_8AED09:
  ORA.B $04,X                               ; $8AED09 |
  STA.B $04,X                               ; $8AED0B |
  LDA.W #$0008                              ; $8AED0D |
  LDY.W #$8574                              ; $8AED10 |
  JSL.L CODE_FL_828AD9                      ; $8AED13 |
  LDA.W #$0000                              ; $8AED17 |
  JSL.L CODE_FL_8AF7C5                      ; $8AED1A |
  INC.B $1A,X                               ; $8AED1E |

CODE_8AED20:
  LDA.B $1C,X                               ; $8AED20 |
  BNE CODE_8AED51                           ; $8AED22 |
  LDA.W #$804D                              ; $8AED24 |
  LDY.W #$0F40                              ; $8AED27 |
  JSL.L CODE_FL_82CD78                      ; $8AED2A |
  JSL.L CODE_FL_82EA3B                      ; $8AED2E |
  LDA.W #$00A0                              ; $8AED32 |
  JSL.L CODE_FL_82EAAB                      ; $8AED35 |
  LDA.B $44,X                               ; $8AED39 |
  LSR A                                     ; $8AED3B |
  LDA.W #$0003                              ; $8AED3C |
  BCC CODE_8AED44                           ; $8AED3F |
  LDA.W #$0000                              ; $8AED41 |

CODE_8AED44:
  STA.W $001A,Y                             ; $8AED44 |
  LDA.W #$0020                              ; $8AED47 |
  JSL.L CODE_FL_8089BD                      ; $8AED4A |
  INC.B $1A,X                               ; $8AED4E |
  RTL                                       ; $8AED50 |

CODE_8AED51:
  LDA.W #$0041                              ; $8AED51 |
  JML.L CODE_FL_82B42F                      ; $8AED54 |

CODE_8AED58:
  LDA.W $1C16                               ; $8AED58 |
  BNE CODE_8AED66                           ; $8AED5B |
  LDY.W #$857A                              ; $8AED5D |
  JSL.L CODE_FL_828AD9                      ; $8AED60 |
  INC.B $1A,X                               ; $8AED64 |

CODE_8AED66:
  LDA.W #$0041                              ; $8AED66 |
  JML.L CODE_FL_82B42F                      ; $8AED69 |

CODE_8AED6D:
  LDA.B $1C,X                               ; $8AED6D |
  BNE CODE_8AED8E                           ; $8AED6F |
  LDA.W #$001C                              ; $8AED71 |
  JSL.L CODE_FL_8AF7C5                      ; $8AED74 |
  LDA.W #$0038                              ; $8AED78 |
  JSL.L push_sound_queue                    ; $8AED7B |
  LDA.W #$0001                              ; $8AED7F |
  STA.W $1C7C                               ; $8AED82 |
  LDA.W #$001B                              ; $8AED85 |
  STA.B $1A,X                               ; $8AED88 |
  JSL.L CODE_FL_8AEA83                      ; $8AED8A |

CODE_8AED8E:
  LDA.W #$0041                              ; $8AED8E |
  JML.L CODE_FL_82B42F                      ; $8AED91 |

CODE_8AED95:
  LDY.W #$A3A6                              ; $8AED95 |
  JSL.L CODE_FL_82D20D                      ; $8AED98 |
  LDA.W #$0037                              ; $8AED9C |
  STA.B $1A,X                               ; $8AED9F |
  JMP.W CODE_FL_8AEA83                      ; $8AEDA1 |

CODE_8AEDA4:
  LDA.W #$0008                              ; $8AEDA4 |
  LDY.W #$8580                              ; $8AEDA7 |
  JSL.L CODE_FL_828AD9                      ; $8AEDAA |
  LDA.W #$0000                              ; $8AEDAE |
  JSL.L CODE_FL_8AF7C5                      ; $8AEDB1 |
  JSL.L CODE_FL_82CFD5                      ; $8AEDB5 |
  INC.B $1A,X                               ; $8AEDB9 |

CODE_8AEDBB:
  LDA.B $1C,X                               ; $8AEDBB |
  BNE CODE_8AEDE1                           ; $8AEDBD |
  LDA.W #$3480                              ; $8AEDBF |
  STA.B $00,X                               ; $8AEDC2 |
  LDA.W #$804E                              ; $8AEDC4 |
  LDY.W #$0F40                              ; $8AEDC7 |
  JSL.L CODE_FL_82CD78                      ; $8AEDCA |
  JSL.L CODE_FL_82EA3B                      ; $8AEDCE |
  LDA.W #$00A0                              ; $8AEDD2 |
  JSL.L CODE_FL_82EAAB                      ; $8AEDD5 |
  LDA.W #$0008                              ; $8AEDD9 |
  STA.B $38,X                               ; $8AEDDC |
  INC.B $1A,X                               ; $8AEDDE |
  RTL                                       ; $8AEDE0 |

CODE_8AEDE1:
  LDA.W #$0041                              ; $8AEDE1 |
  JML.L CODE_FL_82B42F                      ; $8AEDE4 |

CODE_8AEDE8:
  DEC.B $38,X                               ; $8AEDE8 |
  BPL CODE_8AEDF3                           ; $8AEDEA |
  STZ.B $38,X                               ; $8AEDEC |
  LDA.W #$34B4                              ; $8AEDEE |
  STA.B $00,X                               ; $8AEDF1 |

CODE_8AEDF3:
  LDA.W $1C16                               ; $8AEDF3 |
  BNE CODE_8AEE04                           ; $8AEDF6 |
  LDA.W #$0004                              ; $8AEDF8 |
  LDY.W #$8586                              ; $8AEDFB |
  JSL.L CODE_FL_828AD9                      ; $8AEDFE |
  INC.B $1A,X                               ; $8AEE02 |

CODE_8AEE04:
  LDA.W #$0041                              ; $8AEE04 |
  JML.L CODE_FL_82B42F                      ; $8AEE07 |

CODE_8AEE0B:
  LDA.B $00,X                               ; $8AEE0B |
  CMP.W #$3480                              ; $8AEE0D |
  BNE CODE_8AEE25                           ; $8AEE10 |
  LDA.B $20,X                               ; $8AEE12 |
  CMP.B $1E,X                               ; $8AEE14 |
  BNE CODE_8AEE25                           ; $8AEE16 |
  LDA.W #$0038                              ; $8AEE18 |
  JSL.L push_sound_queue                    ; $8AEE1B |
  LDA.W #$0001                              ; $8AEE1F |
  STA.W $1C7C                               ; $8AEE22 |

CODE_8AEE25:
  LDA.B $1C,X                               ; $8AEE25 |
  BNE CODE_8AEE2E                           ; $8AEE27 |
  LDA.W #$001B                              ; $8AEE29 |
  STA.B $1A,X                               ; $8AEE2C |

CODE_8AEE2E:
  LDA.W #$0041                              ; $8AEE2E |
  JML.L CODE_FL_82B42F                      ; $8AEE31 |

CODE_8AEE35:
  LDA.W #$0C00                              ; $8AEE35 |
  STA.B $2A,X                               ; $8AEE38 |
  LDA.W #$0034                              ; $8AEE3A |
  STA.B $1A,X                               ; $8AEE3D |

CODE_8AEE3F:
  JSL.L CODE_FL_82C913                      ; $8AEE3F |
  BCS CODE_8AEE68                           ; $8AEE43 |
  JSL.L CODE_FL_82CFC3                      ; $8AEE45 |
  LDA.W #$0070                              ; $8AEE49 |
  JSL.L CODE_FL_8AF7C5                      ; $8AEE4C |
  LDA.W #$0005                              ; $8AEE50 |
  LDY.W #$0050                              ; $8AEE53 |
  JSL.L CODE_FL_82D063                      ; $8AEE56 |
  LDY.W #$8BCB                              ; $8AEE5A |
  JSL.L CODE_FL_82B81C                      ; $8AEE5D |
  LDA.W #$0003                              ; $8AEE61 |
  STA.B $5E,X                               ; $8AEE64 |
  INC.B $1A,X                               ; $8AEE66 |

CODE_8AEE68:
  JMP.W CODE_JP_8AEA72                      ; $8AEE68 |

CODE_8AEE6B:
  JSL.L CODE_FL_82C8BC                      ; $8AEE6B |
  CMP.W #$0040                              ; $8AEE6F |
  BMI CODE_8AEE77                           ; $8AEE72 |
  JMP.W CODE_JP_8AEC62                      ; $8AEE74 |

CODE_8AEE77:
  LDA.W #$001B                              ; $8AEE77 |
  STA.B $1A,X                               ; $8AEE7A |
  JMP.W CODE_JP_8AEC62                      ; $8AEE7C |

CODE_8AEE7F:
  LDA.W #$001C                              ; $8AEE7F |
  JSL.L CODE_FL_8AF7C5                      ; $8AEE82 |
  LDA.W #$0008                              ; $8AEE86 |
  STA.B $38,X                               ; $8AEE89 |
  LDA.B $42,X                               ; $8AEE8B |
  INC A                                     ; $8AEE8D |
  AND.W #$0007                              ; $8AEE8E |
  STA.B $42,X                               ; $8AEE91 |
  CMP.W #$0004                              ; $8AEE93 |
  BPL CODE_8AEE9D                           ; $8AEE96 |
  LDY.W #$F400                              ; $8AEE98 |
  BRA CODE_8AEEA0                           ; $8AEE9B |

CODE_8AEE9D:
  LDY.W #$0C00                              ; $8AEE9D |

CODE_8AEEA0:
  STY.B $26,X                               ; $8AEEA0 |
  STZ.B $28,X                               ; $8AEEA2 |
  STZ.B $2A,X                               ; $8AEEA4 |
  LDA.W #$003D                              ; $8AEEA6 |
  STA.B $1A,X                               ; $8AEEA9 |

CODE_8AEEAB:
  JSL.L CODE_FL_82C8C0                      ; $8AEEAB |
  JSL.L CODE_FL_82CAD2                      ; $8AEEAF |
  DEC.B $38,X                               ; $8AEEB3 |
  BMI CODE_8AEEBA                           ; $8AEEB5 |
  JMP.W CODE_JP_8AEA72                      ; $8AEEB7 |

CODE_8AEEBA:
  LDA.B $31,X                               ; $8AEEBA |
  BPL CODE_8AEEC1                           ; $8AEEBC |
  JMP.W CODE_JP_8AEA72                      ; $8AEEBE |

CODE_8AEEC1:
  LDA.B $50,X                               ; $8AEEC1 |
  STA.B $1A,X                               ; $8AEEC3 |
  JMP.W CODE_JP_8AEA72                      ; $8AEEC5 |

CODE_8AEEC8:
  LDA.W #$0010                              ; $8AEEC8 |
  STA.B $38,X                               ; $8AEECB |
  STZ.W $1FD4                               ; $8AEECD |
  LDA.W #$0054                              ; $8AEED0 |
  JSL.L CODE_FL_8AF7C5                      ; $8AEED3 |
  LDY.W #$0100                              ; $8AEED7 |
  JSL.L CODE_FL_82C936                      ; $8AEEDA |
  JSL.L CODE_FL_82CFC9                      ; $8AEEDE |
  LDA.W #$0004                              ; $8AEEE2 |
  STA.B $5E,X                               ; $8AEEE5 |
  STZ.B $2A,X                               ; $8AEEE7 |
  LDA.W #$003F                              ; $8AEEE9 |
  STA.B $1A,X                               ; $8AEEEC |

CODE_8AEEEE:
  DEC.B $38,X                               ; $8AEEEE |
  BPL CODE_8AEF07                           ; $8AEEF0 |
  LDA.W $1C70                               ; $8AEEF2 |
  BEQ CODE_8AEEF9                           ; $8AEEF5 |
  INC.B $1A,X                               ; $8AEEF7 |

CODE_8AEEF9:
  LDA.W #$0008                              ; $8AEEF9 |
  STA.B $38,X                               ; $8AEEFC |
  LDY.W $0EDC                               ; $8AEEFE |
  BNE CODE_8AEF07                           ; $8AEF01 |
  LDA.B $50,X                               ; $8AEF03 |
  STA.B $1A,X                               ; $8AEF05 |

CODE_8AEF07:
  LDA.W #$0041                              ; $8AEF07 |
  JSL.L CODE_FL_82B452                      ; $8AEF0A |
  JSL.L CODE_FL_82C913                      ; $8AEF0E |
  JML.L CODE_FL_82CEC6                      ; $8AEF12 |

CODE_8AEF16:
  LDA.W $1C70                               ; $8AEF16 |
  BNE CODE_8AEF07                           ; $8AEF19 |
  LDA.B $50,X                               ; $8AEF1B |
  STA.B $1A,X                               ; $8AEF1D |
  RTL                                       ; $8AEF1F |

CODE_8AEF20:
  LDA.W #$008C                              ; $8AEF20 |
  JSL.L CODE_FL_8AF7C5                      ; $8AEF23 |
  STZ.B $1C,X                               ; $8AEF27 |
  STZ.B $00,X                               ; $8AEF29 |
  STZ.W $1C9A                               ; $8AEF2B |
  LDA.W #$0001                              ; $8AEF2E |
  STA.W $1C74                               ; $8AEF31 |
  STZ.W $1FD4                               ; $8AEF34 |
  LDA.W #$0006                              ; $8AEF37 |
  STA.B $5E,X                               ; $8AEF3A |
  STZ.B $5A,X                               ; $8AEF3C |
  STZ.B $38,X                               ; $8AEF3E |
  STZ.B $3A,X                               ; $8AEF40 |
  LDY.W #$8BBC                              ; $8AEF42 |
  JSL.L CODE_FL_82B81C                      ; $8AEF45 |
  INC.B $1A,X                               ; $8AEF49 |

CODE_8AEF4B:
  JML.L CODE_JL_82A9F6                      ; $8AEF4B |

CODE_8AEF4F:
  LDA.W $1C16                               ; $8AEF4F |
  BEQ CODE_8AEF5A                           ; $8AEF52 |
  CMP.W #$0DC0                              ; $8AEF54 |
  BEQ CODE_8AEF5A                           ; $8AEF57 |
  RTL                                       ; $8AEF59 |

CODE_8AEF5A:
  LDA.W #$001C                              ; $8AEF5A |
  JSL.L CODE_FL_8AF7C5                      ; $8AEF5D |
  STZ.B $00,X                               ; $8AEF61 |
  STZ.W $1FD4                               ; $8AEF63 |
  LDA.W #$0080                              ; $8AEF66 |
  STA.B $38,X                               ; $8AEF69 |
  LDA.W #$F900                              ; $8AEF6B |
  STA.B $28,X                               ; $8AEF6E |
  INC.B $1A,X                               ; $8AEF70 |

CODE_8AEF72:
  TDC                                       ; $8AEF72 |
  LDY.W #$0800                              ; $8AEF73 |
  JSL.L CODE_FL_82CB1D                      ; $8AEF76 |
  LDA.W #$0120                              ; $8AEF7A |
  LDY.W #$0800                              ; $8AEF7D |
  JSL.L CODE_FL_82CB77                      ; $8AEF80 |
  JSL.L CODE_FL_82CAD2                      ; $8AEF84 |
  BNE CODE_8AEF98                           ; $8AEF88 |
  LDA.W #$0038                              ; $8AEF8A |
  JSL.L push_sound_queue                    ; $8AEF8D |
  LDA.W #$0040                              ; $8AEF91 |
  STA.B $38,X                               ; $8AEF94 |
  INC.B $1A,X                               ; $8AEF96 |

CODE_8AEF98:
  JML.L CODE_FL_82CEC6                      ; $8AEF98 |

CODE_8AEF9C:
  DEC.B $38,X                               ; $8AEF9C |
  BPL CODE_8AEF98                           ; $8AEF9E |
  LDA.W #$0070                              ; $8AEFA0 |
  JSL.L CODE_FL_8AF7C5                      ; $8AEFA3 |
  LDA.W #$8000                              ; $8AEFA7 |
  STA.W $1C7C                               ; $8AEFAA |
  INC.B $1A,X                               ; $8AEFAD |

CODE_8AEFAF:
  LDA.W #$9056                              ; $8AEFAF |
  JSL.L CODE_FL_809934                      ; $8AEFB2 |
  BCC CODE_8AEFC0                           ; $8AEFB6 |
  LDA.W #$8000                              ; $8AEFB8 |
  STA.W $1C68                               ; $8AEFBB |
  INC.B $1A,X                               ; $8AEFBE |

CODE_8AEFC0:
  JML.L CODE_FL_82CEC6                      ; $8AEFC0 |

CODE_8AEFC4:
  LDY.W #$0000                              ; $8AEFC4 |
  JSL.L CODE_FL_82B31F                      ; $8AEFC7 |
  LDA.W #$000D                              ; $8AEFCB |
  JSL.L push_sound_queue                    ; $8AEFCE |
  LDA.W #$008C                              ; $8AEFD2 |
  JSL.L CODE_FL_8AF7C5                      ; $8AEFD5 |
  STZ.B $00,X                               ; $8AEFD9 |
  STZ.B $26,X                               ; $8AEFDB |
  STZ.B $2A,X                               ; $8AEFDD |
  LDA.W #$F400                              ; $8AEFDF |
  STA.B $28,X                               ; $8AEFE2 |
  TDC                                       ; $8AEFE4 |
  STA.B $31,X                               ; $8AEFE5 |
  INC.B $1A,X                               ; $8AEFE7 |
  PHX                                       ; $8AEFE9 |
  LDX.W #DATA_888577                        ; $8AEFEA |
  JSL.L sound_transfer_blocks               ; $8AEFED |
  LDY.W #$9FE6                              ; $8AEFF1 |
  LDA.W #$0018                              ; $8AEFF4 |
  JSL.L CODE_FL_80C2BA                      ; $8AEFF7 |
  PLX                                       ; $8AEFFB |
  RTL                                       ; $8AEFFC |

CODE_8AEFFD:
  LDA.B $35,X                               ; $8AEFFD |
  CMP.W #$00D0                              ; $8AEFFF |
  BPL CODE_8AF00E                           ; $8AF002 |
  LDA.W #$00D0                              ; $8AF004 |
  LDY.W #$0600                              ; $8AF007 |
  JSL.L CODE_FL_82CB77                      ; $8AF00A |

CODE_8AF00E:
  JSL.L CODE_FL_82CAD2                      ; $8AF00E |
  BNE CODE_8AF046                           ; $8AF012 |
  LDA.W #$0038                              ; $8AF014 |
  JSL.L push_sound_queue                    ; $8AF017 |
  INC.B $1A,X                               ; $8AF01B |
  BRA CODE_8AF046                           ; $8AF01D |

CODE_8AF01F:
  LDA.W #$8F99                              ; $8AF01F |
  JSL.L CODE_FL_809934                      ; $8AF022 |
  BCC CODE_8AF046                           ; $8AF026 |
  LDA.W #$0002                              ; $8AF028 |
  STA.W $1C68                               ; $8AF02B |
  LDA.W #$0001                              ; $8AF02E |
  STA.W $1C66                               ; $8AF031 |
  LDA.W #$0006                              ; $8AF034 |
  STA.W $1C5E                               ; $8AF037 |
  STA.W $1C60                               ; $8AF03A |
  LDY.W #$A3A6                              ; $8AF03D |
  JSL.L CODE_FL_82D20D                      ; $8AF040 |
  INC.B $1A,X                               ; $8AF044 |

CODE_8AF046:
  JML.L CODE_FL_82CEC6                      ; $8AF046 |

CODE_8AF04A:
  LDA.W #$0006                              ; $8AF04A |
  JSL.L CODE_FL_82D219                      ; $8AF04D |
  LDY.W #$0300                              ; $8AF051 |
  TDC                                       ; $8AF054 |
  JSL.L CODE_FL_82CB1D                      ; $8AF055 |
  LDY.W #$0300                              ; $8AF059 |
  LDA.W #$0060                              ; $8AF05C |
  JSL.L CODE_FL_82CB77                      ; $8AF05F |
  BNE CODE_8AF046                           ; $8AF063 |
  LDY.W #$0002                              ; $8AF065 |
  JSL.L CODE_FL_82B31F                      ; $8AF068 |
  LDA.W #$0002                              ; $8AF06C |
  STA.W $1C5E                               ; $8AF06F |
  STA.W $1C60                               ; $8AF072 |
  JSL.L CODE_FL_82C13A                      ; $8AF075 |
  INC.B $1A,X                               ; $8AF079 |
  BRA CODE_8AF046                           ; $8AF07B |

CODE_8AF07D:
  LDA.W $1DE0                               ; $8AF07D |
  CMP.W #$0002                              ; $8AF080 |
  BMI CODE_8AF046                           ; $8AF083 |
  STZ.W $1C66                               ; $8AF085 |
  LDA.W #$0000                              ; $8AF088 |
  JSL.L CODE_FL_8AF7C5                      ; $8AF08B |
  PHX                                       ; $8AF08F |
  LDA.B $12,X                               ; $8AF090 |
  TAX                                       ; $8AF092 |
  JSL.L CODE_FL_82CCD2                      ; $8AF093 |
  LDX.W #$0700                              ; $8AF097 |
  JSL.L CODE_FL_82CC9F                      ; $8AF09A |
  LDX.W #$0E20                              ; $8AF09E |
  JSL.L CODE_FL_82CC9F                      ; $8AF0A1 |
  LDX.W #$0E80                              ; $8AF0A5 |
  JSL.L CODE_FL_82CC9F                      ; $8AF0A8 |
  LDX.W #$0EE0                              ; $8AF0AC |
  JSL.L CODE_FL_82CC9F                      ; $8AF0AF |
  PLX                                       ; $8AF0B3 |
  INC.B $1A,X                               ; $8AF0B4 |
  PHX                                       ; $8AF0B6 |
  LDX.W #DATA_88856F                        ; $8AF0B7 |
  JSL.L sound_transfer_blocks               ; $8AF0BA |
  LDY.W #$9FC6                              ; $8AF0BE |
  LDA.W #$000C                              ; $8AF0C1 |
  JSL.L CODE_FL_80C2B5                      ; $8AF0C4 |
  PLX                                       ; $8AF0C8 |
  INC.W $1C9A                               ; $8AF0C9 |
  LDY.W #$0E20                              ; $8AF0CC |
  LDA.W #$4050                              ; $8AF0CF |
  JSL.L CODE_FL_82CD78                      ; $8AF0D2 |
  RTL                                       ; $8AF0D6 |

CODE_8AF0D7:
  LDA.W #$0100                              ; $8AF0D7 |
  LDY.W #$0800                              ; $8AF0DA |
  JSL.L CODE_FL_82CB77                      ; $8AF0DD |
  BNE CODE_8AF0E7                           ; $8AF0E1 |
  JML.L CODE_FL_82CC9F                      ; $8AF0E3 |

CODE_8AF0E7:
  JML.L CODE_FL_82CEC6                      ; $8AF0E7 |

CODE_FN_8AF0EB:
  LDA.W $1C92                               ; $8AF0EB |
  CMP.W #$001C                              ; $8AF0EE |
  BNE CODE_8AF100                           ; $8AF0F1 |
  LDA.B $20,X                               ; $8AF0F3 |
  CMP.B $1E,X                               ; $8AF0F5 |
  BNE CODE_8AF100                           ; $8AF0F7 |
  LDA.W #$0038                              ; $8AF0F9 |
  JSL.L push_sound_queue                    ; $8AF0FC |

CODE_8AF100:
  RTS                                       ; $8AF100 |

CODE_FN_8AF101:
  LDA.W #$0004                              ; $8AF101 |
  PHA                                       ; $8AF104 |
  JSL.L CODE_FL_82D219                      ; $8AF105 |
  PLA                                       ; $8AF109 |
  CMP.B $1E,X                               ; $8AF10A |
  BNE CODE_8AF13D                           ; $8AF10C |
  LDA.W #$0001                              ; $8AF10E |
  STA.W $1C7C                               ; $8AF111 |
  LDA.W #$8033                              ; $8AF114 |
  LDY.W #$0EE0                              ; $8AF117 |
  JSL.L CODE_FL_82CD78                      ; $8AF11A |
  LDA.W $1FC6                               ; $8AF11E |
  LSR A                                     ; $8AF121 |
  LDA.W #$FFEC                              ; $8AF122 |
  BCC CODE_8AF12A                           ; $8AF125 |
  LDA.W #$0014                              ; $8AF127 |

CODE_8AF12A:
  STA.W $002D,Y                             ; $8AF12A |
  LDA.W $0035,Y                             ; $8AF12D |
  SEC                                       ; $8AF130 |
  SBC.W #$0020                              ; $8AF131 |
  STA.W $0035,Y                             ; $8AF134 |
  LDA.W #$0008                              ; $8AF137 |
  STA.W $0038,Y                             ; $8AF13A |

CODE_8AF13D:
  RTS                                       ; $8AF13D |

  JSL.L CODE_FL_82D314                      ; $8AF13E |
  PHX                                       ; $8AF142 |
  ASL A                                     ; $8AF143 |
  TAX                                       ; $8AF144 |
  LDA.L PTR16_8AF14F,X                      ; $8AF145 |
  PLX                                       ; $8AF149 |
  STA.B $00                                 ; $8AF14A |
  JMP.W ($0000)                             ; $8AF14C |

PTR16_8AF14F:
  dw CODE_8AF161                            ; $8AF14F |
  dw CODE_8AF183                            ; $8AF151 |
  dw CODE_8AF1A8                            ; $8AF153 |
  dw CODE_8AF1C7                            ; $8AF155 |
  dw CODE_8AF1D9                            ; $8AF157 |
  dw CODE_8AF1F7                            ; $8AF159 |
  dw CODE_FL_8AF214                         ; $8AF15B |
  dw CODE_8AF23D                            ; $8AF15D |
  dw CODE_8AF256                            ; $8AF15F |

CODE_8AF161:
  LDA.W #$343C                              ; $8AF161 |
  STA.W $0DC0                               ; $8AF164 |
  LDA.W #$00FC                              ; $8AF167 |
  JSL.L CODE_FL_8AF7C5                      ; $8AF16A |
  LDA.W #$0028                              ; $8AF16E |
  JSR.W CODE_FN_8AF26A                      ; $8AF171 |
  LDA.W #$0003                              ; $8AF174 |
  STA.B $40,X                               ; $8AF177 |

CODE_8AF179:
  LDA.W #$0003                              ; $8AF179 |
  STA.B $5E,X                               ; $8AF17C |
  LDA.W #$0001                              ; $8AF17E |
  STA.B $1A,X                               ; $8AF181 |

CODE_8AF183:
  JSL.L CODE_FL_82C8BC                      ; $8AF183 |
  CMP.W #$0040                              ; $8AF187 |
  BPL CODE_8AF199                           ; $8AF18A |
  DEC.B $40,X                               ; $8AF18C |
  BEQ CODE_8AF194                           ; $8AF18E |
  INC.B $1A,X                               ; $8AF190 |
  BRA CODE_8AF199                           ; $8AF192 |

CODE_8AF194:
  LDA.W #$0006                              ; $8AF194 |
  STA.B $1A,X                               ; $8AF197 |

CODE_8AF199:
  JSL.L CODE_FL_82F02D                      ; $8AF199 |
  LDA.W #$0007                              ; $8AF19D |
  JSL.L CODE_FL_82B42F                      ; $8AF1A0 |
  JML.L CODE_FL_82CEC6                      ; $8AF1A4 |

CODE_8AF1A8:
  LDA.W #$0003                              ; $8AF1A8 |
  LDY.W #$0DC0                              ; $8AF1AB |
  JSL.L CODE_FL_82D0E8                      ; $8AF1AE |
  JSL.L CODE_FL_82C8BC                      ; $8AF1B2 |
  CMP.W #$0180                              ; $8AF1B6 |
  BMI CODE_8AF199                           ; $8AF1B9 |
  LDY.W #$FFD0                              ; $8AF1BB |
  LDA.W #$0005                              ; $8AF1BE |
  JSL.L CODE_FL_82D063                      ; $8AF1C1 |
  BRA CODE_8AF179                           ; $8AF1C5 |

CODE_8AF1C7:
  LDY.W #$8590                              ; $8AF1C7 |
  LDA.W #$0004                              ; $8AF1CA |
  JSL.L CODE_FL_828AD9                      ; $8AF1CD |
  LDA.W #$FFD8                              ; $8AF1D1 |
  JSR.W CODE_FN_8AF26A                      ; $8AF1D4 |
  INC.B $1A,X                               ; $8AF1D7 |

CODE_8AF1D9:
  LDA.B $1C,X                               ; $8AF1D9 |
  BNE CODE_8AF1F3                           ; $8AF1DB |
  STZ.B $00,X                               ; $8AF1DD |
  LDA.W #$343C                              ; $8AF1DF |
  STA.W $0DC0                               ; $8AF1E2 |
  LDA.W #$00FC                              ; $8AF1E5 |
  JSL.L CODE_FL_8AF7C5                      ; $8AF1E8 |
  LDA.W #$0006                              ; $8AF1EC |
  STA.B $5E,X                               ; $8AF1EF |
  INC.B $1A,X                               ; $8AF1F1 |

CODE_8AF1F3:
  JSR.W CODE_FN_8AF297                      ; $8AF1F3 |
  RTL                                       ; $8AF1F6 |

CODE_8AF1F7:
  JSL.L CODE_FL_82C8BC                      ; $8AF1F7 |
  CMP.W #$0040                              ; $8AF1FB |
  BPL CODE_8AF205                           ; $8AF1FE |
  LDA.W #$0006                              ; $8AF200 |
  STA.B $1A,X                               ; $8AF203 |

CODE_8AF205:
  JSL.L CODE_FL_82F02D                      ; $8AF205 |
  LDA.W #$0007                              ; $8AF209 |
  JSL.L CODE_FL_82B42F                      ; $8AF20C |
  JML.L CODE_FL_82CEC6                      ; $8AF210 |

CODE_FL_8AF214:
  LDA.W #$0003                              ; $8AF214 |
  LDY.W #$0DC0                              ; $8AF217 |
  JSL.L CODE_FL_82D0E8                      ; $8AF21A |
  JSL.L CODE_FL_82C8BC                      ; $8AF21E |
  CMP.W #$01D0                              ; $8AF222 |
  BMI CODE_8AF235                           ; $8AF225 |
  LDA.W #$0000                              ; $8AF227 |
  JSL.L CODE_FL_8AF7C5                      ; $8AF22A |
  STZ.W $1C16                               ; $8AF22E |
  JML.L CODE_JP_82F128                      ; $8AF231 |

CODE_8AF235:
  JSL.L CODE_FL_82F02D                      ; $8AF235 |
  JML.L CODE_FL_82CEC6                      ; $8AF239 |

CODE_8AF23D:
  LDY.W #$0001                              ; $8AF23D |
  JSL.L CODE_FL_82B31F                      ; $8AF240 |
  JSL.L CODE_FL_82F130                      ; $8AF244 |
  LDA.W #$0000                              ; $8AF248 |
  JSL.L CODE_FL_8AF7C5                      ; $8AF24B |
  LDA.W #$1000                              ; $8AF24F |
  STA.B $2A,X                               ; $8AF252 |
  INC.B $1A,X                               ; $8AF254 |

CODE_8AF256:
  JSL.L CODE_FL_82C8C4                      ; $8AF256 |
  CMP.W #$0180                              ; $8AF25A |
  BMI CODE_8AF266                           ; $8AF25D |
  STZ.W $1C16                               ; $8AF25F |
  JML.L CODE_FL_82CC9F                      ; $8AF262 |

CODE_8AF266:
  JML.L CODE_FL_82CEC6                      ; $8AF266 |

CODE_FN_8AF26A:
  STA.B $3A,X                               ; $8AF26A |
  CLC                                       ; $8AF26C |
  ADC.B $2D,X                               ; $8AF26D |
  STA.B $2D,X                               ; $8AF26F |
  LDA.W #$000C                              ; $8AF271 |
  STA.B $3C,X                               ; $8AF274 |
  CLC                                       ; $8AF276 |
  ADC.B $31,X                               ; $8AF277 |
  STA.B $31,X                               ; $8AF279 |
  LDA.W #$FFFE                              ; $8AF27B |
  STA.B $3E,X                               ; $8AF27E |
  CLC                                       ; $8AF280 |
  ADC.B $35,X                               ; $8AF281 |
  STA.B $35,X                               ; $8AF283 |
  LDY.W #$8BC8                              ; $8AF285 |
  JSL.L CODE_FL_82B81C                      ; $8AF288 |
  LDY.W #$FFD0                              ; $8AF28C |
  LDA.W #$0005                              ; $8AF28F |
  JSL.L CODE_FL_82D063                      ; $8AF292 |
  RTS                                       ; $8AF296 |

CODE_FN_8AF297:
  LDA.B $3A,X                               ; $8AF297 |
  CLC                                       ; $8AF299 |
  ADC.W $0DED                               ; $8AF29A |
  STA.B $2D,X                               ; $8AF29D |
  LDA.B $3C,X                               ; $8AF29F |
  CLC                                       ; $8AF2A1 |
  ADC.W $0DF1                               ; $8AF2A2 |
  STA.B $31,X                               ; $8AF2A5 |
  LDA.B $3E,X                               ; $8AF2A7 |
  CLC                                       ; $8AF2A9 |
  ADC.W $0DF5                               ; $8AF2AA |
  STA.B $35,X                               ; $8AF2AD |
  RTS                                       ; $8AF2AF |

  JSL.L CODE_FL_82D314                      ; $8AF2B0 |
  PHX                                       ; $8AF2B4 |
  ASL A                                     ; $8AF2B5 |
  TAX                                       ; $8AF2B6 |
  LDA.L PTR16_8AF2C1,X                      ; $8AF2B7 |
  PLX                                       ; $8AF2BB |
  STA.B $00                                 ; $8AF2BC |
  JMP.W ($0000)                             ; $8AF2BE |

PTR16_8AF2C1:
  dw CODE_8AF2CD                            ; $8AF2C1 |
  dw CODE_8AF314                            ; $8AF2C3 |
  dw CODE_8AF335                            ; $8AF2C5 |
  dw CODE_8AF34F                            ; $8AF2C7 |
  dw CODE_8AF36A                            ; $8AF2C9 |
  dw CODE_FL_8AF214                         ; $8AF2CB |

CODE_8AF2CD:
  LDA.W #$0118                              ; $8AF2CD |
  JSL.L CODE_FL_8AF7C5                      ; $8AF2D0 |
  LDY.W #$8BC8                              ; $8AF2D4 |
  JSL.L CODE_FL_82B81C                      ; $8AF2D7 |
  LDA.W #$0003                              ; $8AF2DB |
  STA.B $5E,X                               ; $8AF2DE |
  LDA.W #$FF00                              ; $8AF2E0 |
  STA.B $26,X                               ; $8AF2E3 |
  LDA.W #$F900                              ; $8AF2E5 |
  STA.B $28,X                               ; $8AF2E8 |
  LDA.W #$0080                              ; $8AF2EA |
  STA.B $2A,X                               ; $8AF2ED |
  LDA.W #$FFC8                              ; $8AF2EF |
  STA.B $3A,X                               ; $8AF2F2 |
  CLC                                       ; $8AF2F4 |
  ADC.B $2D,X                               ; $8AF2F5 |
  STA.B $2D,X                               ; $8AF2F7 |
  LDA.W #$0010                              ; $8AF2F9 |
  STA.B $3C,X                               ; $8AF2FC |
  CLC                                       ; $8AF2FE |
  ADC.B $31,X                               ; $8AF2FF |
  STA.B $31,X                               ; $8AF301 |
  LDA.W #$FFFE                              ; $8AF303 |
  STA.B $3E,X                               ; $8AF306 |
  CLC                                       ; $8AF308 |
  ADC.B $35,X                               ; $8AF309 |
  STA.B $35,X                               ; $8AF30B |
  LDA.W #$0010                              ; $8AF30D |
  STA.B $38,X                               ; $8AF310 |
  INC.B $1A,X                               ; $8AF312 |

CODE_8AF314:
  JSL.L CODE_FL_82C8BC                      ; $8AF314 |
  DEC.B $38,X                               ; $8AF318 |
  BPL CODE_8AF32D                           ; $8AF31A |
  LDA.W #$FC00                              ; $8AF31C |
  STA.B $2A,X                               ; $8AF31F |
  LDA.W #$0800                              ; $8AF321 |
  STA.B $28,X                               ; $8AF324 |
  LDA.W #$0080                              ; $8AF326 |
  STA.B $26,X                               ; $8AF329 |
  INC.B $1A,X                               ; $8AF32B |

CODE_8AF32D:
  JSL.L CODE_FL_82F02D                      ; $8AF32D |
  JML.L CODE_FL_82CEC6                      ; $8AF331 |

CODE_8AF335:
  JSL.L CODE_FL_82C8BC                      ; $8AF335 |
  LDA.B $31,X                               ; $8AF339 |
  CMP.W #$0010                              ; $8AF33B |
  BMI CODE_8AF347                           ; $8AF33E |
  LDA.W #$0010                              ; $8AF340 |
  STA.B $38,X                               ; $8AF343 |
  INC.B $1A,X                               ; $8AF345 |

CODE_8AF347:
  JSL.L CODE_FL_82F02D                      ; $8AF347 |
  JML.L CODE_FL_82CEC6                      ; $8AF34B |

CODE_8AF34F:
  DEC.B $38,X                               ; $8AF34F |
  BPL CODE_8AF347                           ; $8AF351 |
  LDA.W #$8051                              ; $8AF353 |
  JSL.L CODE_FL_82CD2F                      ; $8AF356 |
  LDA.W #$001A                              ; $8AF35A |
  JSL.L CODE_FL_82CD2F                      ; $8AF35D |
  LDA.W #$0040                              ; $8AF361 |
  STA.B $38,X                               ; $8AF364 |
  INC.B $1A,X                               ; $8AF366 |
  BRA CODE_8AF347                           ; $8AF368 |

CODE_8AF36A:
  DEC.B $38,X                               ; $8AF36A |
  BPL CODE_8AF347                           ; $8AF36C |
  INC.B $1A,X                               ; $8AF36E |
  RTL                                       ; $8AF370 |

  JSL.L CODE_FL_8AF214                      ; $8AF371 |
  JSL.L CODE_FL_82D338                      ; $8AF375 |
  PHX                                       ; $8AF379 |
  ASL A                                     ; $8AF37A |
  TAX                                       ; $8AF37B |
  LDA.L PTR16_8AF386,X                      ; $8AF37C |
  PLX                                       ; $8AF380 |
  STA.B $00                                 ; $8AF381 |
  JMP.W ($0000)                             ; $8AF383 |

PTR16_8AF386:
  dw CODE_8AF392                            ; $8AF386 |
  dw CODE_8AF3AF                            ; $8AF388 |
  dw CODE_8AF3C2                            ; $8AF38A |
  dw CODE_8AF40D                            ; $8AF38C |
  dw CODE_8AF446                            ; $8AF38E |
  dw CODE_8AF44A                            ; $8AF390 |

CODE_8AF392:
  LDA.W #$3224                              ; $8AF392 |
  STA.B $00,X                               ; $8AF395 |
  JSL.L CODE_FL_82CE4B                      ; $8AF397 |
  LDA.W #$F600                              ; $8AF39B |
  STA.B $28,X                               ; $8AF39E |
  LDA.W #$FF00                              ; $8AF3A0 |
  STA.B $2A,X                               ; $8AF3A3 |
  LDA.W #$003C                              ; $8AF3A5 |
  JSL.L push_sound_queue                    ; $8AF3A8 |
  INC.B $1A,X                               ; $8AF3AC |
  RTL                                       ; $8AF3AE |

CODE_8AF3AF:
  JSL.L CODE_FL_82C89B                      ; $8AF3AF |
  LDA.B $0D,X                               ; $8AF3B3 |
  BPL CODE_8AF3C1                           ; $8AF3B5 |
  LDA.B $86                                 ; $8AF3B7 |
  AND.W #$0003                              ; $8AF3B9 |
  ASL A                                     ; $8AF3BC |
  STA.B $3A,X                               ; $8AF3BD |
  INC.B $1A,X                               ; $8AF3BF |

CODE_8AF3C1:
  RTL                                       ; $8AF3C1 |

CODE_8AF3C2:
  STZ.B $18                                 ; $8AF3C2 |
  LDY.B $3A,X                               ; $8AF3C4 |
  LDA.W CODE_00A3D2,Y                       ; $8AF3C6 |
  LDY.W #$0800                              ; $8AF3C9 |
  JSL.L CODE_FL_82CB1D                      ; $8AF3CC |
  BEQ CODE_8AF3D4                           ; $8AF3D0 |
  INC.B $18                                 ; $8AF3D2 |

CODE_8AF3D4:
  LDA.W #$FF40                              ; $8AF3D4 |
  LDY.W #$1000                              ; $8AF3D7 |
  JSL.L CODE_FL_82CB4A                      ; $8AF3DA |
  BEQ CODE_8AF3E2                           ; $8AF3DE |
  INC.B $18                                 ; $8AF3E0 |

CODE_8AF3E2:
  LDA.W #$0080                              ; $8AF3E2 |
  LDY.W #$0800                              ; $8AF3E5 |
  JSL.L CODE_FL_82CB77                      ; $8AF3E8 |
  BEQ CODE_8AF3F0                           ; $8AF3EC |
  INC.B $18                                 ; $8AF3EE |

CODE_8AF3F0:
  LDA.B $18                                 ; $8AF3F0 |
  BNE CODE_8AF40C                           ; $8AF3F2 |
  LDA.W #$321A                              ; $8AF3F4 |
  STA.B $00,X                               ; $8AF3F7 |
  LDA.W #$0300                              ; $8AF3F9 |
  STA.B $28,X                               ; $8AF3FC |
  INC.B $1A,X                               ; $8AF3FE |
  LDY.W #$8B9B                              ; $8AF400 |
  JSL.L CODE_FL_82B81C                      ; $8AF403 |
  LDA.W #$0005                              ; $8AF407 |
  STA.B $5E,X                               ; $8AF40A |

CODE_8AF40C:
  RTL                                       ; $8AF40C |

CODE_8AF40D:
  JSL.L CODE_FL_82C89B                      ; $8AF40D |
  LDA.B $0D,X                               ; $8AF411 |
  CMP.W #$00C0                              ; $8AF413 |
  BMI CODE_8AF43F                           ; $8AF416 |
  LDA.W #$000D                              ; $8AF418 |
  JSL.L push_sound_queue                    ; $8AF41B |
  JSL.L CODE_FL_82C27C                      ; $8AF41F |
  LDA.W #$00A0                              ; $8AF423 |
  STA.W $1DA6                               ; $8AF426 |
  STA.W $1DC6                               ; $8AF429 |
  LDY.W #$0F40                              ; $8AF42C |
  LDA.W #$8033                              ; $8AF42F |
  JSL.L CODE_FL_82CD78                      ; $8AF432 |
  LDA.W #$0009                              ; $8AF436 |
  STA.W $0038,Y                             ; $8AF439 |
  INC.B $1A,X                               ; $8AF43C |
  RTL                                       ; $8AF43E |

CODE_8AF43F:
  LDA.W #$0005                              ; $8AF43F |
  JML.L CODE_FL_82B42F                      ; $8AF442 |

CODE_8AF446:
  JML.L CODE_FL_82CC9F                      ; $8AF446 |

CODE_8AF44A:
  LDY.W #$0D00                              ; $8AF44A |
  LDA.W #$000A                              ; $8AF44D |
  JSL.L CODE_FL_82CD78                      ; $8AF450 |
  LDA.W #$0007                              ; $8AF454 |
  STA.W $0038,Y                             ; $8AF457 |
  JML.L CODE_FL_82CC9F                      ; $8AF45A |

  dw CODE_8AF472                            ; $8AF45E |
  dw CODE_8AF499                            ; $8AF460 |
  dw CODE_8AF4AA                            ; $8AF462 |
  dw CODE_8AF4CA                            ; $8AF464 |
  dw CODE_8AF4EA                            ; $8AF466 |
  dw CODE_8AF4F9                            ; $8AF468 |
  dw CODE_8AF534                            ; $8AF46A |
  dw CODE_8AF56E                            ; $8AF46C |
  dw CODE_8AF5E3                            ; $8AF46E |
  dw CODE_8AF5EF                            ; $8AF470 |

CODE_8AF472:
  LDA.W #$0080                              ; $8AF472 |
  STA.B $09,X                               ; $8AF475 |
  LDA.W #$0080                              ; $8AF477 |
  STA.B $0D,X                               ; $8AF47A |
  LDA.W #$00A0                              ; $8AF47C |
  STA.B $06,X                               ; $8AF47F |
  JSL.L CODE_FL_82CFD5                      ; $8AF481 |
  LDA.W #$00B8                              ; $8AF485 |
  JSL.L CODE_FL_8089BD                      ; $8AF488 |
  LDA.W #$FE00                              ; $8AF48C |
  STA.B $28,X                               ; $8AF48F |
  LDA.W #$35A8                              ; $8AF491 |
  STA.B $00,X                               ; $8AF494 |
  INC.B $1A,X                               ; $8AF496 |
  RTL                                       ; $8AF498 |

CODE_8AF499:
  JSL.L CODE_FL_82C861                      ; $8AF499 |
  CMP.W #$FFD0                              ; $8AF49D |
  BPL CODE_8AF4A9                           ; $8AF4A0 |
  LDA.W #$0040                              ; $8AF4A2 |
  STA.B $38,X                               ; $8AF4A5 |
  INC.B $1A,X                               ; $8AF4A7 |

CODE_8AF4A9:
  RTL                                       ; $8AF4A9 |

CODE_8AF4AA:
  DEC.B $38,X                               ; $8AF4AA |
  BPL CODE_8AF4A9                           ; $8AF4AC |
  INC.B $38,X                               ; $8AF4AE |
  LDA.W #$FFC0                              ; $8AF4B0 |
  STA.B $09,X                               ; $8AF4B3 |
  LDA.W #$008E                              ; $8AF4B5 |
  STA.B $0D,X                               ; $8AF4B8 |
  LDA.W #$3562                              ; $8AF4BA |
  STA.B $00,X                               ; $8AF4BD |
  LDA.W #$0800                              ; $8AF4BF |
  STA.B $26,X                               ; $8AF4C2 |
  JSL.L CODE_FL_80893F                      ; $8AF4C4 |
  INC.B $1A,X                               ; $8AF4C8 |

CODE_8AF4CA:
  JSL.L CODE_FL_82C842                      ; $8AF4CA |
  CMP.W #$0080                              ; $8AF4CE |
  BMI CODE_8AF4A9                           ; $8AF4D1 |
  LDA.W #$0014                              ; $8AF4D3 |
  JSL.L CODE_FL_8089BD                      ; $8AF4D6 |
  LDA.W #$0006                              ; $8AF4DA |
  STA.W $1C5E                               ; $8AF4DD |
  STA.W $1C60                               ; $8AF4E0 |
  LDA.W #$0020                              ; $8AF4E3 |
  STA.B $38,X                               ; $8AF4E6 |
  INC.B $1A,X                               ; $8AF4E8 |

CODE_8AF4EA:
  DEC.B $38,X                               ; $8AF4EA |
  BPL CODE_8AF4A9                           ; $8AF4EC |
  LDA.W #$0000                              ; $8AF4EE |
  STA.W $1C5E                               ; $8AF4F1 |
  STA.W $1C60                               ; $8AF4F4 |
  INC.B $1A,X                               ; $8AF4F7 |

CODE_8AF4F9:
  LDA.L $7E7C04                             ; $8AF4F9 |
  BEQ CODE_8AF50B                           ; $8AF4FD |
  TDC                                       ; $8AF4FF |
  STA.L $7E7C04                             ; $8AF500 |
  LDY.W #$017C                              ; $8AF504 |
  JSL.L CODE_FL_808993                      ; $8AF507 |

CODE_8AF50B:
  LDA.W #$8FB1                              ; $8AF50B |
  JSL.L CODE_FL_809934                      ; $8AF50E |
  BCC CODE_8AF524                           ; $8AF512 |
  JSL.L CODE_FL_80893F                      ; $8AF514 |
  LDA.W #$0008                              ; $8AF518 |
  STA.B $38,X                               ; $8AF51B |
  LDA.W #$0008                              ; $8AF51D |
  STA.B $3A,X                               ; $8AF520 |
  INC.B $1A,X                               ; $8AF522 |

CODE_8AF524:
  LDA.L $7E7C34                             ; $8AF524 |
  LSR A                                     ; $8AF528 |
  LDA.W #$3522                              ; $8AF529 |
  BCC CODE_8AF531                           ; $8AF52C |
  LDA.W #$3562                              ; $8AF52E |

CODE_8AF531:
  STA.B $00,X                               ; $8AF531 |
  RTL                                       ; $8AF533 |

CODE_8AF534:
  JSR.W CODE_FN_8AF5F0                      ; $8AF534 |
  DEC.B $38,X                               ; $8AF537 |
  BPL CODE_8AF56D                           ; $8AF539 |
  TDC                                       ; $8AF53B |
  STA.B $2D,X                               ; $8AF53C |
  LDA.W #$0000                              ; $8AF53E |
  STA.B $31,X                               ; $8AF541 |
  LDA.W #$0050                              ; $8AF543 |
  STA.B $35,X                               ; $8AF546 |
  LDA.W #$FA00                              ; $8AF548 |
  STA.B $28,X                               ; $8AF54B |
  LDA.W #$0400                              ; $8AF54D |
  STA.B $2A,X                               ; $8AF550 |
  STA.B $26,X                               ; $8AF552 |
  LDA.B $18,X                               ; $8AF554 |
  EOR.W #$4000                              ; $8AF556 |
  STA.B $18,X                               ; $8AF559 |
  STZ.B $00,X                               ; $8AF55B |
  JSL.L CODE_FL_8AF805                      ; $8AF55D |
  STZ.B $38,X                               ; $8AF561 |
  INC.B $1A,X                               ; $8AF563 |
  JSL.L CODE_FL_82CEC6                      ; $8AF565 |
  STZ.W $1C00                               ; $8AF569 |
  RTL                                       ; $8AF56C |

CODE_8AF56D:
  RTL                                       ; $8AF56D |

CODE_8AF56E:
  JSR.W CODE_FN_8AF5F0                      ; $8AF56E |
  JSL.L CODE_FL_82C8C4                      ; $8AF571 |
  LDY.W #$0020                              ; $8AF575 |
  LDA.W #$0080                              ; $8AF578 |
  JSL.L CODE_FL_82CAE3                      ; $8AF57B |
  BNE CODE_8AF5C5                           ; $8AF57F |
  STZ.B $26,X                               ; $8AF581 |
  STZ.B $28,X                               ; $8AF583 |
  STZ.B $2A,X                               ; $8AF585 |
  LDA.B $38,X                               ; $8AF587 |
  BEQ CODE_8AF59D                           ; $8AF589 |
  CMP.W #$0060                              ; $8AF58B |
  BEQ CODE_8AF5B3                           ; $8AF58E |
  CMP.W #$0090                              ; $8AF590 |
  BNE CODE_8AF5C3                           ; $8AF593 |
  INC.B $1A,X                               ; $8AF595 |
  LDA.W #$0060                              ; $8AF597 |
  STA.B $38,X                               ; $8AF59A |
  RTL                                       ; $8AF59C |

CODE_8AF59D:
  LDA.W #$C015                              ; $8AF59D |
  JSL.L CODE_FL_82CD2F                      ; $8AF5A0 |
  LDA.W #$FFFF                              ; $8AF5A4 |
  STA.W $1C66                               ; $8AF5A7 |
  LDA.W #$000D                              ; $8AF5AA |
  JSL.L push_sound_queue                    ; $8AF5AD |
  BRA CODE_8AF5C3                           ; $8AF5B1 |

CODE_8AF5B3:
  LDA.W #$00A0                              ; $8AF5B3 |
  JSL.L CODE_FL_8089BD                      ; $8AF5B6 |
  LDY.W #$0004                              ; $8AF5BA |
  STY.W $1C5E                               ; $8AF5BD |
  STY.W $1C60                               ; $8AF5C0 |

CODE_8AF5C3:
  INC.B $38,X                               ; $8AF5C3 |

CODE_8AF5C5:
  LDA.W #$0010                              ; $8AF5C5 |
  JSL.L CODE_FL_82D023                      ; $8AF5C8 |
  JSL.L CODE_FL_82CEC6                      ; $8AF5CC |
  STZ.W $1C00                               ; $8AF5D0 |
  LDA.B $3C,X                               ; $8AF5D3 |
  BNE CODE_8AF5E2                           ; $8AF5D5 |
  LDA.W #$903D                              ; $8AF5D7 |
  JSL.L CODE_FL_809929                      ; $8AF5DA |
  BCC CODE_8AF5E2                           ; $8AF5DE |
  INC.B $3C,X                               ; $8AF5E0 |

CODE_8AF5E2:
  RTL                                       ; $8AF5E2 |

CODE_8AF5E3:
  DEC.B $38,X                               ; $8AF5E3 |
  BPL CODE_8AF5EF                           ; $8AF5E5 |
  INC.B $1A,X                               ; $8AF5E7 |
  LDA.W #$FFFF                              ; $8AF5E9 |
  STA.W $1C68                               ; $8AF5EC |

CODE_8AF5EF:
  RTL                                       ; $8AF5EF |

CODE_FN_8AF5F0:
  LDA.B $42,X                               ; $8AF5F0 |
  CMP.W #$0008                              ; $8AF5F2 |
  BEQ CODE_8AF603                           ; $8AF5F5 |
  DEC.B $3A,X                               ; $8AF5F7 |
  BNE CODE_8AF5FF                           ; $8AF5F9 |
  JSL.L CODE_FL_829219                      ; $8AF5FB |

CODE_8AF5FF:
  LDA.W #$0001                              ; $8AF5FF |
  RTS                                       ; $8AF602 |

CODE_8AF603:
  TDC                                       ; $8AF603 |
  RTS                                       ; $8AF604 |

CODE_8AF605:
  TYA                                       ; $8AF605 |

CODE_FL_8AF606:
  STA.W $1C92                               ; $8AF606 |
  PHB                                       ; $8AF609 |
  PEA.W $8A8A                               ; $8AF60A |
  PLB                                       ; $8AF60D |
  PLB                                       ; $8AF60E |
  STA.B $1C                                 ; $8AF60F |
  CLC                                       ; $8AF611 |
  ADC.W #$A3EA                              ; $8AF612 |
  TAY                                       ; $8AF615 |
  STY.B $1E                                 ; $8AF616 |
  LDA.W #$0412                              ; $8AF618 |
  JSL.L CODE_FL_A0F887                      ; $8AF61B |
  LDA.B $1E                                 ; $8AF61F |
  CLC                                       ; $8AF621 |
  ADC.W #$0004                              ; $8AF622 |
  TAY                                       ; $8AF625 |
  LDA.W #$060A                              ; $8AF626 |
  JSL.L CODE_FL_A0F887                      ; $8AF629 |
  PLB                                       ; $8AF62D |
  LDA.B $1C                                 ; $8AF62E |
  CMP.W #$0108                              ; $8AF630 |
  BEQ CODE_8AF659                           ; $8AF633 |
  CMP.W #$00F0                              ; $8AF635 |
  BEQ CODE_8AF65E                           ; $8AF638 |
  CMP.W #$00D8                              ; $8AF63A |
  BEQ CODE_8AF663                           ; $8AF63D |
  CMP.W #$00C0                              ; $8AF63F |
  BEQ CODE_8AF668                           ; $8AF642 |
  LDA.W #$0080                              ; $8AF644 |

CODE_8AF647:
  STA.W $1FD2                               ; $8AF647 |
  LDY.B $90                                 ; $8AF64A |
  CPY.W #$0002                              ; $8AF64C |
  BNE CODE_8AF658                           ; $8AF64F |
  CLC                                       ; $8AF651 |
  ADC.W #$0020                              ; $8AF652 |
  STA.W $1FD2                               ; $8AF655 |

CODE_8AF658:
  RTL                                       ; $8AF658 |

CODE_8AF659:
  LDA.W #$0084                              ; $8AF659 |
  BRA CODE_8AF647                           ; $8AF65C |

CODE_8AF65E:
  LDA.W #$0088                              ; $8AF65E |
  BRA CODE_8AF647                           ; $8AF661 |

CODE_8AF663:
  LDA.W #$008C                              ; $8AF663 |
  BRA CODE_8AF647                           ; $8AF666 |

CODE_8AF668:
  LDA.W #$0090                              ; $8AF668 |
  BRA CODE_8AF647                           ; $8AF66B |

  LDA.B $42                                 ; $8AF66D |
  AND.W #$0007                              ; $8AF66F |
  BNE CODE_8AF69D                           ; $8AF672 |
  PHB                                       ; $8AF674 |
  PEA.W $8A8A                               ; $8AF675 |
  PLB                                       ; $8AF678 |
  PLB                                       ; $8AF679 |
  LDA.B $42                                 ; $8AF67A |
  AND.W #$0008                              ; $8AF67C |
  LSR A                                     ; $8AF67F |
  CLC                                       ; $8AF680 |
  ADC.W #$A3DA                              ; $8AF681 |
  STA.B $1E                                 ; $8AF684 |
  TAY                                       ; $8AF686 |
  LDA.W #$0A0A                              ; $8AF687 |
  JSL.L CODE_FL_A0F887                      ; $8AF68A |
  LDA.B $1E                                 ; $8AF68E |
  CLC                                       ; $8AF690 |
  ADC.W #$0004                              ; $8AF691 |
  TAY                                       ; $8AF694 |
  LDA.W #$0A12                              ; $8AF695 |
  JSL.L CODE_FL_A0F887                      ; $8AF698 |
  PLB                                       ; $8AF69C |

CODE_8AF69D:
  RTL                                       ; $8AF69D |

CODE_8AF69E:
  TYA                                       ; $8AF69E |

CODE_FL_8AF69F:
  STA.W $1C92                               ; $8AF69F |
  BNE CODE_8AF6A7                           ; $8AF6A2 |
  STZ.W $1FD4                               ; $8AF6A4 |

CODE_8AF6A7:
  PHB                                       ; $8AF6A7 |
  PEA.W $8A8A                               ; $8AF6A8 |
  PLB                                       ; $8AF6AB |
  PLB                                       ; $8AF6AC |
  CLC                                       ; $8AF6AD |
  ADC.W #$A522                              ; $8AF6AE |
  TAY                                       ; $8AF6B1 |
  STY.B $1E                                 ; $8AF6B2 |
  LDA.W #$040E                              ; $8AF6B4 |
  JSL.L CODE_FL_A0F887                      ; $8AF6B7 |
  LDA.B $1E                                 ; $8AF6BB |
  CLC                                       ; $8AF6BD |
  ADC.W #$0004                              ; $8AF6BE |
  TAY                                       ; $8AF6C1 |
  LDA.W #$060A                              ; $8AF6C2 |
  JSL.L CODE_FL_A0F887                      ; $8AF6C5 |
  LDY.B $1E                                 ; $8AF6C9 |
  LDA.W $0018,Y                             ; $8AF6CB |
  AND.W #$00FF                              ; $8AF6CE |
  STA.W $1FD0                               ; $8AF6D1 |
  LDA.W $0019,Y                             ; $8AF6D4 |
  AND.W #$00FF                              ; $8AF6D7 |
  STA.W $1FD2                               ; $8AF6DA |
  LDY.B $90                                 ; $8AF6DD |
  CPY.W #$0002                              ; $8AF6DF |
  BNE CODE_8AF6EB                           ; $8AF6E2 |
  CLC                                       ; $8AF6E4 |
  ADC.W #$0040                              ; $8AF6E5 |
  STA.W $1FD2                               ; $8AF6E8 |

CODE_8AF6EB:
  PLB                                       ; $8AF6EB |
  RTL                                       ; $8AF6EC |

CODE_8AF6ED:
  TYA                                       ; $8AF6ED |

CODE_FL_8AF6EE:
  STA.W $1C92                               ; $8AF6EE |
  PHB                                       ; $8AF6F1 |
  PEA.W $8A8A                               ; $8AF6F2 |
  PLB                                       ; $8AF6F5 |
  PLB                                       ; $8AF6F6 |
  CLC                                       ; $8AF6F7 |
  ADC.W #$A68E                              ; $8AF6F8 |
  TAY                                       ; $8AF6FB |
  LDA.W #$0414                              ; $8AF6FC |
  JSL.L CODE_FL_A0F887                      ; $8AF6FF |
  PLB                                       ; $8AF703 |
  RTL                                       ; $8AF704 |

CODE_8AF705:
  TYA                                       ; $8AF705 |
  LDY.W $0DFC                               ; $8AF706 |
  BEQ CODE_FL_8AF776                        ; $8AF709 |

CODE_FL_8AF70B:
  STA.W $1C92                               ; $8AF70B |
  BNE CODE_8AF713                           ; $8AF70E |
  STZ.W $1FD4                               ; $8AF710 |

CODE_8AF713:
  PHB                                       ; $8AF713 |
  PEA.W $8A8A                               ; $8AF714 |
  PLB                                       ; $8AF717 |
  PLB                                       ; $8AF718 |
  CLC                                       ; $8AF719 |
  ADC.W #$A7E4                              ; $8AF71A |
  TAY                                       ; $8AF71D |
  STY.B $1E                                 ; $8AF71E |
  LDA.W #$020E                              ; $8AF720 |
  JSL.L CODE_FL_A0F887                      ; $8AF723 |
  LDA.B $1E                                 ; $8AF727 |
  CLC                                       ; $8AF729 |
  ADC.W #$0006                              ; $8AF72A |
  TAY                                       ; $8AF72D |
  LDA.W #$040A                              ; $8AF72E |
  JSL.L CODE_FL_A0F887                      ; $8AF731 |
  LDA.B $1E                                 ; $8AF735 |
  CLC                                       ; $8AF737 |
  ADC.W #$000E                              ; $8AF738 |
  TAY                                       ; $8AF73B |
  LDA.W #$0606                              ; $8AF73C |
  JSL.L CODE_FL_A0F887                      ; $8AF73F |
  LDA.B $1E                                 ; $8AF743 |
  CLC                                       ; $8AF745 |
  ADC.W #$001A                              ; $8AF746 |
  TAY                                       ; $8AF749 |
  LDA.W #$080A                              ; $8AF74A |
  JSL.L CODE_FL_A0F887                      ; $8AF74D |
  LDY.B $1E                                 ; $8AF751 |
  LDA.W $0028,Y                             ; $8AF753 |
  AND.W #$00FF                              ; $8AF756 |
  STA.W $1FD0                               ; $8AF759 |
  LDA.W $0029,Y                             ; $8AF75C |
  AND.W #$00FF                              ; $8AF75F |
  STA.W $1FD2                               ; $8AF762 |
  LDY.B $90                                 ; $8AF765 |
  CPY.W #$0002                              ; $8AF767 |
  BNE CODE_8AF773                           ; $8AF76A |
  CLC                                       ; $8AF76C |
  ADC.W #$0040                              ; $8AF76D |
  STA.W $1FD2                               ; $8AF770 |

CODE_8AF773:
  PLB                                       ; $8AF773 |
  RTL                                       ; $8AF774 |

CODE_8AF775:
  TYA                                       ; $8AF775 |

CODE_FL_8AF776:
  STA.W $1C92                               ; $8AF776 |
  BNE CODE_8AF77E                           ; $8AF779 |
  STZ.W $1FD4                               ; $8AF77B |

CODE_8AF77E:
  PHB                                       ; $8AF77E |
  PEA.W $8A8A                               ; $8AF77F |
  PLB                                       ; $8AF782 |
  PLB                                       ; $8AF783 |
  CLC                                       ; $8AF784 |
  ADC.W #$AA06                              ; $8AF785 |
  TAY                                       ; $8AF788 |
  STY.B $1E                                 ; $8AF789 |
  LDA.W #$040E                              ; $8AF78B |
  JSL.L CODE_FL_A0F887                      ; $8AF78E |
  LDA.B $1E                                 ; $8AF792 |
  CLC                                       ; $8AF794 |
  ADC.W #$0006                              ; $8AF795 |
  TAY                                       ; $8AF798 |
  LDA.W #$060A                              ; $8AF799 |
  JSL.L CODE_FL_A0F887                      ; $8AF79C |
  LDY.B $1E                                 ; $8AF7A0 |
  LDA.W $0014,Y                             ; $8AF7A2 |
  AND.W #$00FF                              ; $8AF7A5 |
  STA.W $1FD0                               ; $8AF7A8 |
  LDA.W $0015,Y                             ; $8AF7AB |
  AND.W #$00FF                              ; $8AF7AE |
  STA.W $1FD2                               ; $8AF7B1 |
  LDY.B $90                                 ; $8AF7B4 |
  CPY.W #$0002                              ; $8AF7B6 |
  BNE CODE_8AF7C2                           ; $8AF7B9 |
  CLC                                       ; $8AF7BB |
  ADC.W #$0020                              ; $8AF7BC |
  STA.W $1FD2                               ; $8AF7BF |

CODE_8AF7C2:
  PLB                                       ; $8AF7C2 |
  RTL                                       ; $8AF7C3 |

CODE_8AF7C4:
  TYA                                       ; $8AF7C4 |

CODE_FL_8AF7C5:
  STA.W $1C92                               ; $8AF7C5 |
  BNE CODE_8AF7CD                           ; $8AF7C8 |
  STZ.W $1FD4                               ; $8AF7CA |

CODE_8AF7CD:
  PHB                                       ; $8AF7CD |
  PEA.W $8A8A                               ; $8AF7CE |
  PLB                                       ; $8AF7D1 |
  PLB                                       ; $8AF7D2 |
  CLC                                       ; $8AF7D3 |
  ADC.W #$AB24                              ; $8AF7D4 |
  TAY                                       ; $8AF7D7 |
  STY.B $1E                                 ; $8AF7D8 |
  LDA.W #$040A                              ; $8AF7DA |
  JSL.L CODE_FL_A0F887                      ; $8AF7DD |
  LDY.B $1E                                 ; $8AF7E1 |
  LDA.W $001A,Y                             ; $8AF7E3 |
  AND.W #$00FF                              ; $8AF7E6 |
  STA.W $1FD0                               ; $8AF7E9 |
  LDA.W $001B,Y                             ; $8AF7EC |
  AND.W #$00FF                              ; $8AF7EF |
  STA.W $1FD2                               ; $8AF7F2 |
  LDY.B $90                                 ; $8AF7F5 |
  CPY.W #$0002                              ; $8AF7F7 |
  BNE CODE_8AF803                           ; $8AF7FA |
  CLC                                       ; $8AF7FC |
  ADC.W #$0040                              ; $8AF7FD |
  STA.W $1FD2                               ; $8AF800 |

CODE_8AF803:
  PLB                                       ; $8AF803 |
  RTL                                       ; $8AF804 |

CODE_FL_8AF805:
  PHX                                       ; $8AF805 |
  LDY.W #$068E                              ; $8AF806 |
  STZ.B $00                                 ; $8AF809 |

CODE_8AF80B:
  STY.B $02                                 ; $8AF80B |
  JSL.L CODE_FL_80960F                      ; $8AF80D |
  SEP #$20                                  ; $8AF811 |
  LDY.B $00                                 ; $8AF813 |
  LDA.W LOOSE_OP_00AC58,Y                   ; $8AF815 |
  JSL.L CODE_FL_80964E                      ; $8AF818 |
  LDA.W CODE_00AC59,Y                       ; $8AF81C |
  JSL.L CODE_FL_80964E                      ; $8AF81F |
  LDA.W LOOSE_OP_00AC5A,Y                   ; $8AF823 |
  JSL.L CODE_FL_80964E                      ; $8AF826 |
  LDA.W CODE_00AC5B,Y                       ; $8AF82A |
  JSL.L CODE_FL_80964E                      ; $8AF82D |
  REP #$20                                  ; $8AF831 |
  JSL.L CODE_FL_809663                      ; $8AF833 |
  LDA.B $02                                 ; $8AF837 |
  CLC                                       ; $8AF839 |
  ADC.W #$0080                              ; $8AF83A |
  TAY                                       ; $8AF83D |
  LDA.B $00                                 ; $8AF83E |
  CLC                                       ; $8AF840 |
  ADC.W #$0004                              ; $8AF841 |
  STA.B $00                                 ; $8AF844 |
  CMP.W #$0014                              ; $8AF846 |
  BMI CODE_8AF80B                           ; $8AF849 |
  LDA.W #$0080                              ; $8AF84B |
  STA.W $1FD0                               ; $8AF84E |
  STA.W $1FD2                               ; $8AF851 |
  PLX                                       ; $8AF854 |
  RTL                                       ; $8AF855 |

  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8AF856 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8AF85E |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8AF866 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8AF86E |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8AF876 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8AF87E |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8AF886 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8AF88E |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8AF896 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8AF89E |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8AF8A6 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8AF8AE |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8AF8B6 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8AF8BE |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8AF8C6 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8AF8CE |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8AF8D6 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8AF8DE |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8AF8E6 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8AF8EE |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8AF8F6 |
  db $FF,$FF                                ; $8AF8FE |

CODE_8AF900:
  JSL.L CODE_FL_85AAC6                      ; $8AF900 |
  JSL.L CODE_FL_86C424                      ; $8AF904 |
  JSL.L CODE_FL_86C70D                      ; $8AF908 |
  LDA.W #$00B2                              ; $8AF90C |
  JSL.L CODE_FL_86C9C5                      ; $8AF90F |
  BCS CODE_8AF938                           ; $8AF913 |
  LDA.W #$0044                              ; $8AF915 |
  JSL.L CODE_FL_86CAE6                      ; $8AF918 |
  LDA.W #$FF00                              ; $8AF91C |
  STA.W $0028,Y                             ; $8AF91F |
  LDA.W #$0043                              ; $8AF922 |
  STA.W $0002,Y                             ; $8AF925 |
  LDA.W #$1898                              ; $8AF928 |
  STA.W $0004,Y                             ; $8AF92B |
  LDA.B $86                                 ; $8AF92E |
  AND.W #$000F                              ; $8AF930 |
  ADC.B $0D,X                               ; $8AF933 |
  STA.W $000D,Y                             ; $8AF935 |

CODE_8AF938:
  LDA.W #$0010                              ; $8AF938 |
  STA.B $2C,X                               ; $8AF93B |
  RTL                                       ; $8AF93D |

CODE_FL_8AF93E:
  LDA.W $1C66                               ; $8AF93E |
  SBC.B $0D,X                               ; $8AF941 |
  SBC.W #$0020                              ; $8AF943 |
  CMP.W #$0020                              ; $8AF946 |
  BCS CODE_8AF94E                           ; $8AF949 |
  PHB                                       ; $8AF94B |
  PLA                                       ; $8AF94C |
  PLA                                       ; $8AF94D |

CODE_8AF94E:
  RTL                                       ; $8AF94E |

CODE_8AF94F:
  JSL.L CODE_FL_86C424                      ; $8AF94F |
  PHX                                       ; $8AF953 |
  ASL A                                     ; $8AF954 |
  TAX                                       ; $8AF955 |
  LDA.L PTR16_8AF960,X                      ; $8AF956 |
  PLX                                       ; $8AF95A |
  STA.B $00                                 ; $8AF95B |
  JMP.W ($0000)                             ; $8AF95D |

PTR16_8AF960:
  dw CODE_8AF968                            ; $8AF960 |
  dw CODE_8AF982                            ; $8AF962 |
  dw CODE_8AF986                            ; $8AF964 |
  dw CODE_8AF990                            ; $8AF966 |

CODE_8AF968:
  JSL.L CODE_FL_85AC3A                      ; $8AF968 |
  BCS CODE_8AF979                           ; $8AF96C |
  LDA.B $34,X                               ; $8AF96E |
  ORA.W #$B800                              ; $8AF970 |
  STA.B $34,X                               ; $8AF973 |
  JML.L CODE_FL_86C63A                      ; $8AF975 |

CODE_8AF979:
  LDA.W #$0002                              ; $8AF979 |
  STA.B $1A,X                               ; $8AF97C |
  JML.L CODE_FL_86C63A                      ; $8AF97E |

CODE_8AF982:
  JML.L CODE_JL_85ACD3                      ; $8AF982 |

CODE_8AF986:
  LDA.W #$0060                              ; $8AF986 |
  STA.B $2C,X                               ; $8AF989 |
  STZ.B $34,X                               ; $8AF98B |
  INC.B $1A,X                               ; $8AF98D |
  RTL                                       ; $8AF98F |

CODE_8AF990:
  LDA.W $1C38                               ; $8AF990 |
  AND.W #$000F                              ; $8AF993 |
  BNE CODE_8AF9AB                           ; $8AF996 |
  JSL.L CODE_FL_8CFBCE                      ; $8AF998 |
  LDA.W $1C38                               ; $8AF99C |
  AND.W #$001F                              ; $8AF99F |
  BNE CODE_8AF9AB                           ; $8AF9A2 |
  LDA.W #$000D                              ; $8AF9A4 |
  JSL.L push_sound_queue                    ; $8AF9A7 |

CODE_8AF9AB:
  JSL.L CODE_FL_86C70D                      ; $8AF9AB |
  LDA.B $3A,X                               ; $8AF9AF |
  CMP.W #$0001                              ; $8AF9B1 |
  BEQ CODE_8AF9DD                           ; $8AF9B4 |
  CMP.W #$0002                              ; $8AF9B6 |
  BEQ CODE_8AFA04                           ; $8AF9B9 |
  LDA.B $09,X                               ; $8AF9BB |
  SEC                                       ; $8AF9BD |
  SBC.W #$0030                              ; $8AF9BE |
  STA.B $08                                 ; $8AF9C1 |
  LDA.B $0D,X                               ; $8AF9C3 |
  SEC                                       ; $8AF9C5 |
  SBC.W #$0030                              ; $8AF9C6 |
  STA.B $0A                                 ; $8AF9C9 |
  LDA.B $4E,X                               ; $8AF9CB |
  XBA                                       ; $8AF9CD |
  AND.W #$00FF                              ; $8AF9CE |
  ASL A                                     ; $8AF9D1 |
  CLC                                       ; $8AF9D2 |
  ADC.W #$00F4                              ; $8AF9D3 |
  JSL.L CODE_FL_8580F7                      ; $8AF9D6 |
  BCC CODE_8AF9DD                           ; $8AF9DA |
  RTL                                       ; $8AF9DC |

CODE_8AF9DD:
  LDA.W #$0001                              ; $8AF9DD |
  STA.B $3A,X                               ; $8AF9E0 |
  LDA.B $09,X                               ; $8AF9E2 |
  SEC                                       ; $8AF9E4 |
  SBC.W #$0030                              ; $8AF9E5 |
  STA.B $08                                 ; $8AF9E8 |
  LDA.B $0D,X                               ; $8AF9EA |
  SEC                                       ; $8AF9EC |
  SBC.W #$0030                              ; $8AF9ED |
  STA.B $0A                                 ; $8AF9F0 |
  LDA.B $4E,X                               ; $8AF9F2 |
  XBA                                       ; $8AF9F4 |
  AND.W #$00FF                              ; $8AF9F5 |
  ASL A                                     ; $8AF9F8 |
  CLC                                       ; $8AF9F9 |
  ADC.W #$00FA                              ; $8AF9FA |
  JSL.L CODE_FL_8580F7                      ; $8AF9FD |
  BCC CODE_8AFA04                           ; $8AFA01 |
  RTL                                       ; $8AFA03 |

CODE_8AFA04:
  LDA.W #$0002                              ; $8AFA04 |
  STA.B $3A,X                               ; $8AFA07 |
  LDA.B $4E,X                               ; $8AFA09 |
  XBA                                       ; $8AFA0B |
  AND.W #$00FF                              ; $8AFA0C |
  ASL A                                     ; $8AFA0F |
  CMP.W #$0004                              ; $8AFA10 |
  BNE CODE_8AFA2F                           ; $8AFA13 |
  LDA.B $09,X                               ; $8AFA15 |
  SEC                                       ; $8AFA17 |
  SBC.W #$0030                              ; $8AFA18 |
  STA.B $08                                 ; $8AFA1B |
  LDA.B $0D,X                               ; $8AFA1D |
  SEC                                       ; $8AFA1F |
  SBC.W #$0070                              ; $8AFA20 |
  STA.B $0A                                 ; $8AFA23 |
  LDA.W #$0100                              ; $8AFA25 |
  JSL.L CODE_FL_8580F7                      ; $8AFA28 |
  BCC CODE_8AFA2F                           ; $8AFA2C |
  RTL                                       ; $8AFA2E |

CODE_8AFA2F:
  JSL.L CODE_FL_85AC4F                      ; $8AFA2F |
  JML.L CODE_FL_86CA36                      ; $8AFA33 |

CODE_8AFA37:
  LDA.B $1A,X                               ; $8AFA37 |
  BNE CODE_8AFA54                           ; $8AFA39 |
  INC.B $1A,X                               ; $8AFA3B |
  JSL.L CODE_FL_86C7AD                      ; $8AFA3D |
  LDA.B $4E,X                               ; $8AFA41 |
  AND.W #$0001                              ; $8AFA43 |
  BNE CODE_8AFA4E                           ; $8AFA46 |
  LDA.W #$3996                              ; $8AFA48 |
  STA.B $00,X                               ; $8AFA4B |
  RTL                                       ; $8AFA4D |

CODE_8AFA4E:
  LDA.W #$39A6                              ; $8AFA4E |
  STA.B $00,X                               ; $8AFA51 |
  RTL                                       ; $8AFA53 |

CODE_8AFA54:
  RTL                                       ; $8AFA54 |

CODE_8AFA55:
  JSL.L CODE_FL_86C3C9                      ; $8AFA55 |
  PHX                                       ; $8AFA59 |
  ASL A                                     ; $8AFA5A |
  TAX                                       ; $8AFA5B |
  LDA.L PTR16_8AFA66,X                      ; $8AFA5C |
  PLX                                       ; $8AFA60 |
  STA.B $00                                 ; $8AFA61 |
  JMP.W ($0000)                             ; $8AFA63 |

PTR16_8AFA66:
  dw CODE_8AFA6C                            ; $8AFA66 |
  dw CODE_8AFA9F                            ; $8AFA68 |
  dw CODE_8AFAA8                            ; $8AFA6A |

CODE_8AFA6C:
  JSL.L CODE_FL_85AC3A                      ; $8AFA6C |
  BCS CODE_8AFA9B                           ; $8AFA70 |
  JSL.L CODE_FL_86C7AD                      ; $8AFA72 |
  LDA.W #$018D                              ; $8AFA76 |
  JSL.L CODE_FL_86C9C2                      ; $8AFA79 |
  BCC CODE_8AFA80                           ; $8AFA7D |
  RTL                                       ; $8AFA7F |

CODE_8AFA80:
  JSL.L CODE_FL_86C7C4                      ; $8AFA80 |
  JSL.L CODE_FL_85AAB6                      ; $8AFA84 |
  LDA.W #$3898                              ; $8AFA88 |
  STA.B $00,X                               ; $8AFA8B |
  LDA.W #$E000                              ; $8AFA8D |
  STA.B $22,X                               ; $8AFA90 |
  LDA.W #$B880                              ; $8AFA92 |
  STA.B $34,X                               ; $8AFA95 |
  JML.L CODE_FL_86C63A                      ; $8AFA97 |

CODE_8AFA9B:
  JML.L CODE_FL_86CA36                      ; $8AFA9B |

CODE_8AFA9F:
  LDA.W #$0030                              ; $8AFA9F |
  STA.B $2C,X                               ; $8AFAA2 |
  JML.L CODE_JL_85ACD3                      ; $8AFAA4 |

CODE_8AFAA8:
  JSL.L CODE_FL_85AC4F                      ; $8AFAA8 |
  LDA.B $2C,X                               ; $8AFAAC |
  CMP.W #$0010                              ; $8AFAAE |
  BCC CODE_8AFAB7                           ; $8AFAB1 |
  JSL.L CODE_FL_85A893                      ; $8AFAB3 |

CODE_8AFAB7:
  JSL.L CODE_FL_86C70D                      ; $8AFAB7 |
  JML.L CODE_FL_86CA2D                      ; $8AFABB |

CODE_8AFABF:
  JSL.L CODE_FL_85AAC6                      ; $8AFABF |
  JSL.L CODE_FL_86C3C9                      ; $8AFAC3 |
  PHX                                       ; $8AFAC7 |
  ASL A                                     ; $8AFAC8 |
  TAX                                       ; $8AFAC9 |
  LDA.L PTR16_8AFAD4,X                      ; $8AFACA |
  PLX                                       ; $8AFACE |
  STA.B $00                                 ; $8AFACF |
  JMP.W ($0000)                             ; $8AFAD1 |

PTR16_8AFAD4:
  dw CODE_8AFADC                            ; $8AFAD4 |
  dw CODE_8AFAE4                            ; $8AFAD6 |
  dw CODE_8AFAFE                            ; $8AFAD8 |
  dw CODE_JL_8AFB07                         ; $8AFADA |

CODE_8AFADC:
  LDA.W #$3888                              ; $8AFADC |
  STA.B $00,X                               ; $8AFADF |
  INC.B $1A,X                               ; $8AFAE1 |
  RTL                                       ; $8AFAE3 |

CODE_8AFAE4:
  LDY.W $0044,X                             ; $8AFAE4 |
  LDA.W $001A,Y                             ; $8AFAE7 |
  CMP.W #$0002                              ; $8AFAEA |
  BNE CODE_8AFAFD                           ; $8AFAED |
  LDA.W #$0100                              ; $8AFAEF |
  STA.B $26,X                               ; $8AFAF2 |
  STA.B $28,X                               ; $8AFAF4 |
  LDA.W #$0010                              ; $8AFAF6 |
  STA.B $2C,X                               ; $8AFAF9 |
  INC.B $1A,X                               ; $8AFAFB |

CODE_8AFAFD:
  RTL                                       ; $8AFAFD |

CODE_8AFAFE:
  JSL.L CODE_FL_86C70D                      ; $8AFAFE |
  STZ.B $26,X                               ; $8AFB02 |
  INC.B $1A,X                               ; $8AFB04 |
  RTL                                       ; $8AFB06 |

CODE_JL_8AFB07:
  JSL.L CODE_FL_85A62E                      ; $8AFB07 |
  STZ.B $26,X                               ; $8AFB0B |
  STZ.B $28,X                               ; $8AFB0D |
  LDA.W #$0008                              ; $8AFB0F |
  STA.B $10                                 ; $8AFB12 |
  LDA.W #$0010                              ; $8AFB14 |
  STA.B $12                                 ; $8AFB17 |
  LDA.W #$2024                              ; $8AFB19 |
  STA.B $16                                 ; $8AFB1C |
  JSL.L CODE_FL_85A986                      ; $8AFB1E |
  BCS CODE_8AFB35                           ; $8AFB22 |

CODE_8AFB24:
  JSL.L CODE_FL_85AD8B                      ; $8AFB24 |
  LDA.W $0004,Y                             ; $8AFB28 |
  ORA.W #$1898                              ; $8AFB2B |
  STA.W $0004,Y                             ; $8AFB2E |
  DEC.B $10                                 ; $8AFB31 |
  BNE CODE_8AFB24                           ; $8AFB33 |

CODE_8AFB35:
  JML.L CODE_FL_86CA36                      ; $8AFB35 |

CODE_8AFB39:
  JSL.L CODE_FL_86C3B0                      ; $8AFB39 |
  PHX                                       ; $8AFB3D |
  ASL A                                     ; $8AFB3E |
  TAX                                       ; $8AFB3F |
  LDA.L PTR16_8AFB4A,X                      ; $8AFB40 |
  PLX                                       ; $8AFB44 |
  STA.B $00                                 ; $8AFB45 |
  JMP.W ($0000)                             ; $8AFB47 |

PTR16_8AFB4A:
  dw CODE_8AFB52                            ; $8AFB4A |
  dw CODE_8AFB70                            ; $8AFB4C |
  dw CODE_8AFB9F                            ; $8AFB4E |
  dw CODE_8AFBE3                            ; $8AFB50 |

CODE_8AFB52:
  JSL.L CODE_FL_86C7A5                      ; $8AFB52 |
  JSL.L CODE_FL_85AC3A                      ; $8AFB56 |
  BCS CODE_8AFB6C                           ; $8AFB5A |
  LDA.W #$38E2                              ; $8AFB5C |
  STA.B $00,X                               ; $8AFB5F |
  LDA.B $34,X                               ; $8AFB61 |
  ORA.W #$B880                              ; $8AFB63 |
  STA.B $34,X                               ; $8AFB66 |
  JML.L CODE_FL_86C63A                      ; $8AFB68 |

CODE_8AFB6C:
  JML.L CODE_FL_86CA2D                      ; $8AFB6C |

CODE_8AFB70:
  LDA.B $32,X                               ; $8AFB70 |
  BPL CODE_8AFB7D                           ; $8AFB72 |
  STZ.B $32,X                               ; $8AFB74 |
  LDA.W #$000C                              ; $8AFB76 |
  JSL.L push_sound_queue                    ; $8AFB79 |

CODE_8AFB7D:
  JSL.L CODE_FL_85AC3A                      ; $8AFB7D |
  BCC CODE_8AFB9E                           ; $8AFB81 |
  LDA.W #$0023                              ; $8AFB83 |
  JSL.L push_sound_queue                    ; $8AFB86 |
  LDA.W #$0001                              ; $8AFB8A |
  STA.B $E4                                 ; $8AFB8D |
  JSL.L CODE_FL_8D9E49                      ; $8AFB8F |
  JSL.L CODE_FL_86C215                      ; $8AFB93 |
  LDA.W #$0080                              ; $8AFB97 |
  STA.B $2C,X                               ; $8AFB9A |
  INC.B $1A,X                               ; $8AFB9C |

CODE_8AFB9E:
  RTL                                       ; $8AFB9E |

CODE_8AFB9F:
  LDA.B $42                                 ; $8AFB9F |
  AND.W #$0007                              ; $8AFBA1 |
  BNE CODE_8AFBA9                           ; $8AFBA4 |
  JSR.W CODE_FN_8AFBC8                      ; $8AFBA6 |

CODE_8AFBA9:
  JSL.L CODE_FL_86C70D                      ; $8AFBA9 |
  JSL.L CODE_FL_85AC4F                      ; $8AFBAD |
  JSR.W CODE_FN_8AFBC8                      ; $8AFBB1 |
  JSR.W CODE_FN_8AFBC8                      ; $8AFBB4 |
  JSR.W CODE_FN_8AFBC8                      ; $8AFBB7 |
  JSR.W CODE_FN_8AFBC8                      ; $8AFBBA |
  INC.B $1A,X                               ; $8AFBBD |
  STZ.B $00,X                               ; $8AFBBF |
  LDA.W #$0001                              ; $8AFBC1 |
  JML.L CODE_FL_B3FE45                      ; $8AFBC4 |

CODE_FN_8AFBC8:
  JSL.L CODE_FL_86C432                      ; $8AFBC8 |
  JSL.L CODE_FL_8CFBCE                      ; $8AFBCC |
  BCS CODE_8AFBE2                           ; $8AFBD0 |
  LDA.W #$8100                              ; $8AFBD2 |
  STA.W $0022,Y                             ; $8AFBD5 |
  LDA.W $000D,Y                             ; $8AFBD8 |
  CLC                                       ; $8AFBDB |
  ADC.W #$0020                              ; $8AFBDC |
  STA.W $000D,Y                             ; $8AFBDF |

CODE_8AFBE2:
  RTS                                       ; $8AFBE2 |

CODE_8AFBE3:
  LDA.W $1C5E                               ; $8AFBE3 |
  BNE CODE_8AFBF4                           ; $8AFBE6 |
  STZ.B $92                                 ; $8AFBE8 |
  JSL.L CODE_FL_86CA2D                      ; $8AFBEA |
  STZ.B $E4                                 ; $8AFBEE |
  JSL.L CODE_FL_8D9E72                      ; $8AFBF0 |

CODE_8AFBF4:
  RTL                                       ; $8AFBF4 |

  RTL                                       ; $8AFBF5 |

CODE_8AFBF6:
  JSL.L CODE_FL_86C412                      ; $8AFBF6 |
  LDA.B $1A,X                               ; $8AFBFA |
  PHX                                       ; $8AFBFC |
  ASL A                                     ; $8AFBFD |
  TAX                                       ; $8AFBFE |
  LDA.L PTR16_8AFC09,X                      ; $8AFBFF |
  PLX                                       ; $8AFC03 |
  STA.B $00                                 ; $8AFC04 |
  JMP.W ($0000)                             ; $8AFC06 |

PTR16_8AFC09:
  dw CODE_8AFC15                            ; $8AFC09 |
  dw CODE_8AFC40                            ; $8AFC0B |
  dw CODE_8AFC41                            ; $8AFC0D |
  dw CODE_8AFC52                            ; $8AFC0F |
  dw CODE_8AFC93                            ; $8AFC11 |
  dw CODE_8AFCBD                            ; $8AFC13 |

CODE_8AFC15:
  JSL.L CODE_FL_86C7AD                      ; $8AFC15 |
  LDA.B $34,X                               ; $8AFC19 |
  ORA.W #$9888                              ; $8AFC1B |
  STA.B $34,X                               ; $8AFC1E |
  JSL.L CODE_FL_85AA07                      ; $8AFC20 |
  JSL.L CODE_FL_85AC3A                      ; $8AFC24 |
  BCS CODE_JL_8AFC33                        ; $8AFC28 |
  LDA.W #$382A                              ; $8AFC2A |
  STA.B $00,X                               ; $8AFC2D |
  JML.L CODE_FL_86C63A                      ; $8AFC2F |

CODE_JL_8AFC33:
  LDA.W #$384C                              ; $8AFC33 |
  STA.B $00,X                               ; $8AFC36 |
  STZ.B $34,X                               ; $8AFC38 |
  LDA.W #$0004                              ; $8AFC3A |
  STA.B $1A,X                               ; $8AFC3D |
  RTL                                       ; $8AFC3F |

CODE_8AFC40:
  RTL                                       ; $8AFC40 |

CODE_8AFC41:
  LDA.W #$2025                              ; $8AFC41 |
  JSL.L CODE_FL_86CAEE                      ; $8AFC44 |
  LDA.W #$000C                              ; $8AFC48 |
  JSL.L push_sound_queue                    ; $8AFC4B |
  INC.B $1A,X                               ; $8AFC4F |
  RTL                                       ; $8AFC51 |

CODE_8AFC52:
  LDA.B $20,X                               ; $8AFC52 |
  BNE CODE_8AFC92                           ; $8AFC54 |
  LDA.B $09,X                               ; $8AFC56 |
  PHA                                       ; $8AFC58 |
  SBC.W #$0020                              ; $8AFC59 |
  STA.B $09,X                               ; $8AFC5C |
  LDA.W #$0004                              ; $8AFC5E |
  JSR.W CODE_FN_8AFCBE                      ; $8AFC61 |
  LDA.W #$0008                              ; $8AFC64 |
  JSR.W CODE_FN_8AFCBE                      ; $8AFC67 |
  LDA.W #$000C                              ; $8AFC6A |
  JSR.W CODE_FN_8AFCBE                      ; $8AFC6D |
  LDA.W #$0014                              ; $8AFC70 |
  JSR.W CODE_FN_8AFCBE                      ; $8AFC73 |
  LDA.W #$0018                              ; $8AFC76 |
  JSR.W CODE_FN_8AFCBE                      ; $8AFC79 |
  LDA.W #$001C                              ; $8AFC7C |
  JSR.W CODE_FN_8AFCBE                      ; $8AFC7F |
  PLA                                       ; $8AFC82 |
  STA.B $09,X                               ; $8AFC83 |
  LDA.W #$001B                              ; $8AFC85 |
  JSL.L push_sound_queue                    ; $8AFC88 |
  STZ.B $34,X                               ; $8AFC8C |
  JML.L CODE_JL_8AFC33                      ; $8AFC8E |

CODE_8AFC92:
  RTL                                       ; $8AFC92 |

CODE_8AFC93:
  LDA.B $09,X                               ; $8AFC93 |
  SEC                                       ; $8AFC95 |
  SBC.W #$0030                              ; $8AFC96 |
  STA.B $08                                 ; $8AFC99 |
  LDA.B $0D,X                               ; $8AFC9B |
  SEC                                       ; $8AFC9D |
  SBC.W #$0010                              ; $8AFC9E |
  STA.B $0A                                 ; $8AFCA1 |
  LDA.W #$011C                              ; $8AFCA3 |
  JSL.L CODE_FL_8580F7                      ; $8AFCA6 |
  BCC CODE_8AFCAD                           ; $8AFCAA |
  RTL                                       ; $8AFCAC |

CODE_8AFCAD:
  JSL.L CODE_FL_85AC4F                      ; $8AFCAD |
  INC.B $1A,X                               ; $8AFCB1 |
  LDA.W #$FFF0                              ; $8AFCB3 |
  STA.B $11,X                               ; $8AFCB6 |
  CLC                                       ; $8AFCB8 |
  ADC.B $0D,X                               ; $8AFCB9 |
  STA.B $0D,X                               ; $8AFCBB |

CODE_8AFCBD:
  RTL                                       ; $8AFCBD |

CODE_FN_8AFCBE:
  STA.B $10                                 ; $8AFCBE |
  LDA.W #$0192                              ; $8AFCC0 |
  JSL.L CODE_FL_86C9C5                      ; $8AFCC3 |
  BCS CODE_8AFCCE                           ; $8AFCC7 |
  LDA.B $10                                 ; $8AFCC9 |
  STA.W $003A,Y                             ; $8AFCCB |

CODE_8AFCCE:
  RTS                                       ; $8AFCCE |

CODE_8AFCCF:
  JSL.L CODE_FL_86C3F8                      ; $8AFCCF |
  LDA.B $1A,X                               ; $8AFCD3 |
  PHX                                       ; $8AFCD5 |
  ASL A                                     ; $8AFCD6 |
  TAX                                       ; $8AFCD7 |
  LDA.L PTR16_8AFCE2,X                      ; $8AFCD8 |
  PLX                                       ; $8AFCDC |
  STA.B $00                                 ; $8AFCDD |
  JMP.W ($0000)                             ; $8AFCDF |

PTR16_8AFCE2:
  dw CODE_8AFCE6                            ; $8AFCE2 |
  dw CODE_8AFD08                            ; $8AFCE4 |

CODE_8AFCE6:
  LDA.W #$0044                              ; $8AFCE6 |
  JSL.L CODE_FL_86CAEE                      ; $8AFCE9 |
  LDY.W #$0008                              ; $8AFCED |
  LDA.B $3A,X                               ; $8AFCF0 |
  JSL.L CODE_FL_8AB499                      ; $8AFCF2 |
  LDA.W #$0043                              ; $8AFCF6 |
  STA.B $02,X                               ; $8AFCF9 |
  LDA.W #$1898                              ; $8AFCFB |
  STA.B $04,X                               ; $8AFCFE |
  LDA.W #$0010                              ; $8AFD00 |
  STA.B $2C,X                               ; $8AFD03 |
  INC.B $1A,X                               ; $8AFD05 |
  RTL                                       ; $8AFD07 |

CODE_8AFD08:
  JSL.L CODE_FL_86C70D                      ; $8AFD08 |
  JML.L CODE_FL_86CA36                      ; $8AFD0C |

CODE_8AFD10:
  JSL.L CODE_FL_85F885                      ; $8AFD10 |
  JSL.L CODE_FL_86C412                      ; $8AFD14 |
  PHX                                       ; $8AFD18 |
  ASL A                                     ; $8AFD19 |
  TAX                                       ; $8AFD1A |
  LDA.L PTR16_8AFD25,X                      ; $8AFD1B |
  PLX                                       ; $8AFD1F |
  STA.B $00                                 ; $8AFD20 |
  JMP.W ($0000)                             ; $8AFD22 |

PTR16_8AFD25:
  dw CODE_8AFD29                            ; $8AFD25 |
  dw CODE_8AFD35                            ; $8AFD27 |

CODE_8AFD29:
  JSL.L CODE_FL_86C7AD                      ; $8AFD29 |
  JSL.L CODE_FL_85A9EF                      ; $8AFD2D |
  JML.L CODE_FL_86C63A                      ; $8AFD31 |

CODE_8AFD35:
  JSL.L CODE_FL_85A9F7                      ; $8AFD35 |
  LDA.W $1C38                               ; $8AFD39 |
  AND.W #$0080                              ; $8AFD3C |
  BNE CODE_8AFD82                           ; $8AFD3F |
  LDA.W $1C38                               ; $8AFD41 |
  AND.W #$00FF                              ; $8AFD44 |
  BNE CODE_8AFD57                           ; $8AFD47 |
  LDA.B $09,X                               ; $8AFD49 |
  CMP.W #$0100                              ; $8AFD4B |
  BCS CODE_8AFD57                           ; $8AFD4E |
  LDA.W #$00BC                              ; $8AFD50 |
  JSL.L CODE_FL_8089BD                      ; $8AFD53 |

CODE_8AFD57:
  JSL.L CODE_FL_85A9EF                      ; $8AFD57 |
  JSL.L CODE_FL_8AFD83                      ; $8AFD5B |
  JSL.L CODE_FL_86C70D                      ; $8AFD5F |
  LDA.W #$0194                              ; $8AFD63 |
  JSL.L CODE_FL_86C9C2                      ; $8AFD66 |
  BCS CODE_8AFD82                           ; $8AFD6A |
  JSL.L CODE_FL_85AAB6                      ; $8AFD6C |
  JSL.L CODE_FL_86C7C4                      ; $8AFD70 |
  CLC                                       ; $8AFD74 |
  LDA.W $1672                               ; $8AFD75 |
  ADC.B $0D,X                               ; $8AFD78 |
  STA.W $004A,Y                             ; $8AFD7A |
  LDA.W #$000C                              ; $8AFD7D |
  STA.B $2C,X                               ; $8AFD80 |

CODE_8AFD82:
  RTL                                       ; $8AFD82 |

CODE_FL_8AFD83:
  LDA.B $09,X                               ; $8AFD83 |
  CMP.W #$0100                              ; $8AFD85 |
  BCS CODE_8AFD9C                           ; $8AFD88 |
  INC.B $3A,X                               ; $8AFD8A |
  LDA.B $3A,X                               ; $8AFD8C |
  CMP.W #$000A                              ; $8AFD8E |
  BCC CODE_8AFD9C                           ; $8AFD91 |
  STZ.B $3A,X                               ; $8AFD93 |
  LDA.W #$0021                              ; $8AFD95 |
  JSL.L push_sound_queue                    ; $8AFD98 |

CODE_8AFD9C:
  RTL                                       ; $8AFD9C |

CODE_8AFD9D:
  JSL.L CODE_FL_86C3F8                      ; $8AFD9D |
  PHX                                       ; $8AFDA1 |
  ASL A                                     ; $8AFDA2 |
  TAX                                       ; $8AFDA3 |
  LDA.L PTR16_8AFDAE,X                      ; $8AFDA4 |
  PLX                                       ; $8AFDA8 |
  STA.B $00                                 ; $8AFDA9 |
  JMP.W ($0000)                             ; $8AFDAB |

PTR16_8AFDAE:
  dw CODE_8AFDB2                            ; $8AFDAE |
  dw CODE_8AFDC8                            ; $8AFDB0 |

CODE_8AFDB2:
  LDA.W #$1058                              ; $8AFDB2 |
  JSL.L CODE_FL_86CAEE                      ; $8AFDB5 |
  LDA.B $0D,X                               ; $8AFDB9 |
  SBC.W #$0018                              ; $8AFDBB |
  STA.B $0D,X                               ; $8AFDBE |
  LDA.W #$0080                              ; $8AFDC0 |
  STA.B $28,X                               ; $8AFDC3 |
  INC.B $1A,X                               ; $8AFDC5 |
  RTL                                       ; $8AFDC7 |

CODE_8AFDC8:
  LDA.B $4A,X                               ; $8AFDC8 |
  SBC.W $1672                               ; $8AFDCA |
  CMP.B $0D,X                               ; $8AFDCD |
  BCS CODE_8AFDD5                           ; $8AFDCF |
  JSL.L CODE_FL_86CA36                      ; $8AFDD1 |

CODE_8AFDD5:
  RTL                                       ; $8AFDD5 |

CODE_8AFDD6:
  JSL.L CODE_FL_86C412                      ; $8AFDD6 |
  PHX                                       ; $8AFDDA |
  ASL A                                     ; $8AFDDB |
  TAX                                       ; $8AFDDC |
  LDA.L PTR16_8AFDE7,X                      ; $8AFDDD |
  PLX                                       ; $8AFDE1 |
  STA.B $00                                 ; $8AFDE2 |
  JMP.W ($0000)                             ; $8AFDE4 |

PTR16_8AFDE7:
  dw CODE_8AFDED                            ; $8AFDE7 |
  dw CODE_8AFE03                            ; $8AFDE9 |
  dw CODE_8AFE17                            ; $8AFDEB |

CODE_8AFDED:
  JSL.L CODE_FL_86C7AD                      ; $8AFDED |
  JSL.L CODE_FL_85AA07                      ; $8AFDF1 |
  LDA.W #$8000                              ; $8AFDF5 |
  STA.B $22,X                               ; $8AFDF8 |
  LDA.W #$8000                              ; $8AFDFA |
  STA.B $34,X                               ; $8AFDFD |
  JML.L CODE_FL_86C63A                      ; $8AFDFF |

CODE_8AFE03:
  JSL.L CODE_FL_86C70D                      ; $8AFE03 |
  LDA.W #$FFA0                              ; $8AFE07 |
  JSL.L CODE_FL_86CB2D                      ; $8AFE0A |
  BCC CODE_8AFE16                           ; $8AFE0E |
  STZ.B $32,X                               ; $8AFE10 |
  STZ.B $2C,X                               ; $8AFE12 |
  INC.B $1A,X                               ; $8AFE14 |

CODE_8AFE16:
  RTL                                       ; $8AFE16 |

CODE_8AFE17:
  BIT.B $32,X                               ; $8AFE17 |
  STZ.B $32,X                               ; $8AFE19 |
  BPL CODE_8AFE25                           ; $8AFE1B |
  LDA.W #$0060                              ; $8AFE1D |
  STA.B $2C,X                               ; $8AFE20 |
  DEC.B $1A,X                               ; $8AFE22 |
  RTL                                       ; $8AFE24 |

CODE_8AFE25:
  LDA.W #$FFA0                              ; $8AFE25 |
  JSL.L CODE_FL_86CB2D                      ; $8AFE28 |
  BCS CODE_8AFE33                           ; $8AFE2C |
  STZ.B $2C,X                               ; $8AFE2E |
  DEC.B $1A,X                               ; $8AFE30 |
  RTL                                       ; $8AFE32 |

CODE_8AFE33:
  LDA.W $1C38                               ; $8AFE33 |
  AND.W #$000F                              ; $8AFE36 |
  BNE CODE_8AFE58                           ; $8AFE39 |
  LDA.B $09,X                               ; $8AFE3B |
  CLC                                       ; $8AFE3D |
  ADC.W #$0010                              ; $8AFE3E |
  CMP.W #$0120                              ; $8AFE41 |
  BCS CODE_8AFE58                           ; $8AFE44 |
  LDA.B $0D,X                               ; $8AFE46 |
  CLC                                       ; $8AFE48 |
  ADC.W #$0050                              ; $8AFE49 |
  CMP.W #$0120                              ; $8AFE4C |
  BCS CODE_8AFE58                           ; $8AFE4F |
  LDA.W #$00BC                              ; $8AFE51 |
  JSL.L CODE_FL_8089BD                      ; $8AFE54 |

CODE_8AFE58:
  JSL.L CODE_FL_86C70D                      ; $8AFE58 |
  LDA.W #$0008                              ; $8AFE5C |
  STA.B $2C,X                               ; $8AFE5F |
  LDA.W #$0196                              ; $8AFE61 |
  JSL.L CODE_FL_86C9A4                      ; $8AFE64 |
  BCS CODE_8AFE80                           ; $8AFE68 |
  JSL.L CODE_FL_85AAB6                      ; $8AFE6A |
  LDA.B $09,X                               ; $8AFE6E |
  STA.W $0009,Y                             ; $8AFE70 |
  LDA.B $0D,X                               ; $8AFE73 |
  CLC                                       ; $8AFE75 |
  ADC.W #$0038                              ; $8AFE76 |
  STA.W $000D,Y                             ; $8AFE79 |
  JSL.L CODE_FL_86C7C4                      ; $8AFE7C |

CODE_8AFE80:
  RTL                                       ; $8AFE80 |

CODE_8AFE81:
  JSL.L CODE_FL_86C3F8                      ; $8AFE81 |
  PHX                                       ; $8AFE85 |
  ASL A                                     ; $8AFE86 |
  TAX                                       ; $8AFE87 |
  LDA.L PTR16_8AFE92,X                      ; $8AFE88 |
  PLX                                       ; $8AFE8C |
  STA.B $00                                 ; $8AFE8D |
  JMP.W ($0000)                             ; $8AFE8F |

PTR16_8AFE92:
  dw CODE_8AFE96                            ; $8AFE92 |
  dw CODE_8AFEC4                            ; $8AFE94 |

CODE_8AFE96:
  LDA.W #$8000                              ; $8AFE96 |
  STA.B $22,X                               ; $8AFE99 |
  LDA.W #$4000                              ; $8AFE9B |
  STA.B $34,X                               ; $8AFE9E |
  LDA.W #$1059                              ; $8AFEA0 |
  JSL.L CODE_FL_86CAEE                      ; $8AFEA3 |
  LDA.W #$FFA0                              ; $8AFEA7 |
  JSL.L CODE_FL_86CB2D                      ; $8AFEAA |
  BCS CODE_8AFEB4                           ; $8AFEAE |
  JML.L CODE_FL_86CA36                      ; $8AFEB0 |

CODE_8AFEB4:
  LDA.W #$000C                              ; $8AFEB4 |
  STA.B $2C,X                               ; $8AFEB7 |
  LDA.W #$0400                              ; $8AFEB9 |
  STA.B $28,X                               ; $8AFEBC |
  INC.B $1A,X                               ; $8AFEBE |
  JML.L CODE_FL_85F885                      ; $8AFEC0 |

CODE_8AFEC4:
  JSL.L CODE_FL_85F885                      ; $8AFEC4 |
  JSL.L CODE_FL_86C70D                      ; $8AFEC8 |
  JML.L CODE_FL_86CA36                      ; $8AFECC |

CODE_8AFED0:
  JSL.L CODE_FL_86C424                      ; $8AFED0 |
  PHX                                       ; $8AFED4 |
  ASL A                                     ; $8AFED5 |
  TAX                                       ; $8AFED6 |
  LDA.L PTR16_8AFEE1,X                      ; $8AFED7 |
  PLX                                       ; $8AFEDB |
  STA.B $00                                 ; $8AFEDC |
  JMP.W ($0000)                             ; $8AFEDE |

PTR16_8AFEE1:
  dw CODE_8AFEE5                            ; $8AFEE1 |
  dw CODE_8AFF10                            ; $8AFEE3 |

CODE_8AFEE5:
  JSL.L CODE_FL_85ABE7                      ; $8AFEE5 |
  BCC CODE_8AFEF5                           ; $8AFEE9 |
  LDA.W #$0015                              ; $8AFEEB |
  STA.W $1FBE                               ; $8AFEEE |
  JML.L CODE_FL_86CA2D                      ; $8AFEF1 |

CODE_8AFEF5:
  LDA.W #$0015                              ; $8AFEF5 |
  STA.W $1FBE                               ; $8AFEF8 |
  LDA.W #$0002                              ; $8AFEFB |
  STA.W $1FC0                               ; $8AFEFE |
  LDA.W #$0001                              ; $8AFF01 |
  STA.W $1FDE                               ; $8AFF04 |
  LDA.W #$0002                              ; $8AFF07 |
  STA.W $1FDC                               ; $8AFF0A |
  INC.B $1A,X                               ; $8AFF0D |
  RTL                                       ; $8AFF0F |

CODE_8AFF10:
  LDA.B $42                                 ; $8AFF10 |
  AND.W #$0007                              ; $8AFF12 |
  BNE CODE_8AFF5A                           ; $8AFF15 |
  LDA.L $7E2CC2                             ; $8AFF17 |
  STA.B $00                                 ; $8AFF1B |
  LDA.L $7E2CC4                             ; $8AFF1D |
  STA.L $7E2CC2                             ; $8AFF21 |
  LDA.L $7E2CC6                             ; $8AFF25 |
  STA.L $7E2CC4                             ; $8AFF29 |
  LDA.L $7E2CC8                             ; $8AFF2D |
  STA.L $7E2CC6                             ; $8AFF31 |
  LDA.L $7E2CCA                             ; $8AFF35 |
  STA.L $7E2CC8                             ; $8AFF39 |
  LDA.L $7E2CCC                             ; $8AFF3D |
  STA.L $7E2CCA                             ; $8AFF41 |
  LDA.L $7E2CCE                             ; $8AFF45 |
  STA.L $7E2CCC                             ; $8AFF49 |
  LDA.B $00                                 ; $8AFF4D |
  STA.L $7E2CCE                             ; $8AFF4F |
  LDA.B $48                                 ; $8AFF53 |
  ORA.W #$8000                              ; $8AFF55 |
  STA.B $48                                 ; $8AFF58 |

CODE_8AFF5A:
  RTL                                       ; $8AFF5A |

CODE_8AFF5B:
  JSL.L CODE_FL_86C424                      ; $8AFF5B |
  PHX                                       ; $8AFF5F |
  ASL A                                     ; $8AFF60 |
  TAX                                       ; $8AFF61 |
  LDA.L PTR16_8AFF6C,X                      ; $8AFF62 |
  PLX                                       ; $8AFF66 |
  STA.B $00                                 ; $8AFF67 |
  JMP.W ($0000)                             ; $8AFF69 |

PTR16_8AFF6C:
  dw CODE_8AFF76                            ; $8AFF6C |
  dw CODE_8AFF86                            ; $8AFF6E |
  dw CODE_8AFF8A                            ; $8AFF70 |
  dw CODE_8AFF9D                            ; $8AFF72 |
  dw CODE_8AFFAA                            ; $8AFF74 |

CODE_8AFF76:
  JSL.L CODE_FL_85AC07                      ; $8AFF76 |
  JSL.L CODE_FL_85A9EF                      ; $8AFF7A |
  JSL.L CODE_FL_85A9FF                      ; $8AFF7E |
  JML.L CODE_FL_86C63F                      ; $8AFF82 |

CODE_8AFF86:
  JML.L CODE_FL_85F885                      ; $8AFF86 |

CODE_8AFF8A:
  LDA.W #$0050                              ; $8AFF8A |
  STA.B $92                                 ; $8AFF8D |
  LDA.W #$FFFF                              ; $8AFF8F |
  STA.W $1960                               ; $8AFF92 |
  LDA.W #$0080                              ; $8AFF95 |
  STA.B $2C,X                               ; $8AFF98 |
  INC.B $1A,X                               ; $8AFF9A |
  RTL                                       ; $8AFF9C |

CODE_8AFF9D:
  JSL.L CODE_FL_86C70D                      ; $8AFF9D |
  LDA.W #$000E                              ; $8AFFA1 |
  JSL.L CODE_FL_85AC8E                      ; $8AFFA4 |
  INC.B $1A,X                               ; $8AFFA8 |

CODE_8AFFAA:
  RTL                                       ; $8AFFAA |

  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8AFFAB |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8AFFB3 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8AFFBB |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8AFFC3 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8AFFCB |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8AFFD3 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8AFFDB |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8AFFE3 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8AFFEB |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8AFFF3 |
  db $FF,$FF,$FF,$FF,$FF                    ; $8AFFFB |
