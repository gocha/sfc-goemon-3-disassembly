org $8F8000

incbin ../assets/bank_8F.bin:$0000..$7E00   ; $8F8000 |

CODE_8FFE00:
  LDA.B $BB,X                               ; $8FFE00 |
  BEQ CODE_8FFE11                           ; $8FFE02 |
  STZ.B $BB,X                               ; $8FFE04 |
  INC.B $18                                 ; $8FFE06 |
  LDA.B #$89                                ; $8FFE08 |
  PHA                                       ; $8FFE0A |
  PLB                                       ; $8FFE0B |
  CLC                                       ; $8FFE0C |
  LDY.B $20,X                               ; $8FFE0D |
  BRA CODE_8FFE36                           ; $8FFE0F |

CODE_8FFE11:
  RTL                                       ; $8FFE11 |

CODE_FL_8FFE12:
  STZ.B $18                                 ; $8FFE12 |
  LDY.B $20,X                               ; $8FFE14 |
  BEQ CODE_8FFE11                           ; $8FFE16 |
  LDA.B $BA,X                               ; $8FFE18 |
  AND.B #$7F                                ; $8FFE1A |
  CMP.B #$7F                                ; $8FFE1C |
  BEQ CODE_8FFE00                           ; $8FFE1E |
  STA.B $BA,X                               ; $8FFE20 |
  DEC.B $BA,X                               ; $8FFE22 |
  BPL CODE_8FFE00                           ; $8FFE24 |
  LDA.B #$89                                ; $8FFE26 |
  PHA                                       ; $8FFE28 |
  PLB                                       ; $8FFE29 |
  CLC                                       ; $8FFE2A |
  LDY.B $20,X                               ; $8FFE2B |
  DEC.B $1E,X                               ; $8FFE2D |
  BPL CODE_8FFE36                           ; $8FFE2F |
  LDA.W LOOSE_OP_008366,Y                   ; $8FFE31 |
  STA.B $1E,X                               ; $8FFE34 |

CODE_8FFE36:
  REP #$20                                  ; $8FFE36 |
  LDA.B $1E,X                               ; $8FFE38 |
  ADC.W $7FFE,Y                             ; $8FFE3A |
  TAY                                       ; $8FFE3D |
  LDA.B $18                                 ; $8FFE3E |
  AND.W #$00FF                              ; $8FFE40 |
  BNE CODE_8FFE5C                           ; $8FFE43 |
  SEP #$20                                  ; $8FFE45 |
  LDA.W CODE_0086D0,Y                       ; $8FFE47 |
  ORA.B #$80                                ; $8FFE4A |
  STA.B $BA,X                               ; $8FFE4C |
  REP #$20                                  ; $8FFE4E |
  LDA.W CODE_008C86,Y                       ; $8FFE50 |
  AND.W #$00FF                              ; $8FFE53 |
  BEQ CODE_8FFE5C                           ; $8FFE56 |
  JSL.L push_sound_queue                    ; $8FFE58 |

CODE_8FFE5C:
  CPX.B $A6                                 ; $8FFE5C |
  BEQ CODE_8FFE7C                           ; $8FFE5E |
  LDA.W CODE_00923C,Y                       ; $8FFE60 |
  AND.W #$00FF                              ; $8FFE63 |
  STA.B $B6,X                               ; $8FFE66 |
  TYA                                       ; $8FFE68 |
  ASL A                                     ; $8FFE69 |
  TAY                                       ; $8FFE6A |
  LDA.W LOOSE_OP_0097F2,Y                   ; $8FFE6B |
  STA.B $B0,X                               ; $8FFE6E |
  LDA.W CODE_00A35E,Y                       ; $8FFE70 |
  STA.B $B2,X                               ; $8FFE73 |
  LDA.W CODE_00AECA,Y                       ; $8FFE75 |
  STA.B $B4,X                               ; $8FFE78 |
  BRA CODE_8FFE7F                           ; $8FFE7A |

CODE_8FFE7C:
  TYA                                       ; $8FFE7C |
  ASL A                                     ; $8FFE7D |
  TAY                                       ; $8FFE7E |

CODE_8FFE7F:
  LDA.W LOOSE_OP_00BA36,Y                   ; $8FFE7F |
  BEQ CODE_8FFED5                           ; $8FFE82 |
  TAY                                       ; $8FFE84 |
  LDA.W $0000,Y                             ; $8FFE85 |
  STA.B $1C,X                               ; $8FFE88 |
  LDA.B $06,X                               ; $8FFE8A |
  BEQ CODE_8FFE91                           ; $8FFE8C |
  LDA.W #$0014                              ; $8FFE8E |

CODE_8FFE91:
  PHX                                       ; $8FFE91 |
  TAX                                       ; $8FFE92 |
  LDA.W $0002,Y                             ; $8FFE93 |
  BEQ CODE_8FFED4                           ; $8FFE96 |
  CMP.W $1774,X                             ; $8FFE98 |
  BEQ CODE_8FFEB8                           ; $8FFE9B |
  STA.W $1774,X                             ; $8FFE9D |
  LDA.W $0004,Y                             ; $8FFEA0 |
  STA.W $1776,X                             ; $8FFEA3 |
  LDA.W $0005,Y                             ; $8FFEA6 |
  STA.W $1770,X                             ; $8FFEA9 |
  STA.W $1772,X                             ; $8FFEAC |
  LDA.W $0007,Y                             ; $8FFEAF |
  STA.W $1778,X                             ; $8FFEB2 |
  STA.W $177A,X                             ; $8FFEB5 |

CODE_8FFEB8:
  LDA.W $0009,Y                             ; $8FFEB8 |
  BEQ CODE_8FFED4                           ; $8FFEBB |
  CMP.W $1780,X                             ; $8FFEBD |
  BEQ CODE_8FFED4                           ; $8FFEC0 |
  STA.W $1780,X                             ; $8FFEC2 |
  LDA.W $000B,Y                             ; $8FFEC5 |
  STA.W $1782,X                             ; $8FFEC8 |
  LDA.W $000C,Y                             ; $8FFECB |
  STA.W $177C,X                             ; $8FFECE |
  STA.W $177E,X                             ; $8FFED1 |

CODE_8FFED4:
  PLX                                       ; $8FFED4 |

CODE_8FFED5:
  SEP #$20                                  ; $8FFED5 |
  LDA.B #$81                                ; $8FFED7 |
  PHA                                       ; $8FFED9 |
  PLB                                       ; $8FFEDA |
  RTL                                       ; $8FFEDB |

CODE_8FFEDC:
  LDA.B $21,X                               ; $8FFEDC |
  BEQ CODE_8FFEED                           ; $8FFEDE |
  STZ.B $21,X                               ; $8FFEE0 |
  INC.B $18                                 ; $8FFEE2 |
  LDA.B #$89                                ; $8FFEE4 |
  PHA                                       ; $8FFEE6 |
  PLB                                       ; $8FFEE7 |
  CLC                                       ; $8FFEE8 |
  LDY.B $1E,X                               ; $8FFEE9 |
  BRA CODE_8FFF19                           ; $8FFEEB |

CODE_8FFEED:
  REP #$20                                  ; $8FFEED |
  JMP.W CODE_JP_8FFFDE                      ; $8FFEEF |

CODE_FL_8FFEF2:
  LDX.W #$0B20                              ; $8FFEF2 |
  STZ.B $18                                 ; $8FFEF5 |
  LDY.B $1C,X                               ; $8FFEF7 |
  BEQ CODE_8FFEED                           ; $8FFEF9 |
  LDA.B $20,X                               ; $8FFEFB |
  AND.B #$7F                                ; $8FFEFD |
  CMP.B #$7F                                ; $8FFEFF |
  BEQ CODE_8FFEDC                           ; $8FFF01 |
  STA.B $20,X                               ; $8FFF03 |
  DEC.B $20,X                               ; $8FFF05 |
  BPL CODE_8FFEDC                           ; $8FFF07 |
  LDA.B #$89                                ; $8FFF09 |
  PHA                                       ; $8FFF0B |
  PLB                                       ; $8FFF0C |
  CLC                                       ; $8FFF0D |
  LDY.B $1C,X                               ; $8FFF0E |
  DEC.B $1E,X                               ; $8FFF10 |
  BPL CODE_8FFF19                           ; $8FFF12 |
  LDA.W LOOSE_OP_00C60C,Y                   ; $8FFF14 |
  STA.B $1E,X                               ; $8FFF17 |

CODE_8FFF19:
  REP #$20                                  ; $8FFF19 |
  LDA.B $1E,X                               ; $8FFF1B |
  ADC.W CODE_00C5A0,Y                       ; $8FFF1D |
  TAY                                       ; $8FFF20 |
  LDA.B $18                                 ; $8FFF21 |
  AND.W #$00FF                              ; $8FFF23 |
  BNE CODE_8FFF3F                           ; $8FFF26 |
  SEP #$20                                  ; $8FFF28 |
  LDA.W LOOSE_OP_00C67A,Y                   ; $8FFF2A |
  ORA.B #$80                                ; $8FFF2D |
  STA.B $20,X                               ; $8FFF2F |
  REP #$20                                  ; $8FFF31 |
  LDA.W LOOSE_OP_00C760,Y                   ; $8FFF33 |
  AND.W #$00FF                              ; $8FFF36 |
  BEQ CODE_8FFF3F                           ; $8FFF39 |
  JSL.L push_sound_queue                    ; $8FFF3B |

CODE_8FFF3F:
  PHX                                       ; $8FFF3F |
  LDX.B $A6                                 ; $8FFF40 |
  BEQ CODE_8FFF61                           ; $8FFF42 |
  LDA.W LOOSE_OP_00C846,Y                   ; $8FFF44 |
  AND.W #$00FF                              ; $8FFF47 |
  STA.B $B6,X                               ; $8FFF4A |
  TYA                                       ; $8FFF4C |
  ASL A                                     ; $8FFF4D |
  TAY                                       ; $8FFF4E |
  LDA.W LOOSE_OP_00C92C,Y                   ; $8FFF4F |
  STA.B $B0,X                               ; $8FFF52 |
  LDA.W LOOSE_OP_00CAF8,Y                   ; $8FFF54 |
  STA.B $B2,X                               ; $8FFF57 |
  LDA.W LOOSE_OP_00CCC4,Y                   ; $8FFF59 |
  STA.B $B4,X                               ; $8FFF5C |
  PLX                                       ; $8FFF5E |
  BRA CODE_8FFF65                           ; $8FFF5F |

CODE_8FFF61:
  TYA                                       ; $8FFF61 |
  ASL A                                     ; $8FFF62 |
  TAY                                       ; $8FFF63 |
  PLX                                       ; $8FFF64 |

CODE_8FFF65:
  LDA.W CODE_00CE90,Y                       ; $8FFF65 |
  BEQ CODE_JP_8FFFDE                        ; $8FFF68 |
  TAY                                       ; $8FFF6A |
  LDA.W $0000,Y                             ; $8FFF6B |
  STA.B $48,X                               ; $8FFF6E |
  STZ.B $A8                                 ; $8FFF70 |
  LDA.W $0002,Y                             ; $8FFF72 |
  STA.W $0B5A                               ; $8FFF75 |
  LDA.W $0004,Y                             ; $8FFF78 |
  STA.W $0B5E                               ; $8FFF7B |
  PHY                                       ; $8FFF7E |

CODE_8FFF7F:
  LDA.W $0006,Y                             ; $8FFF7F |
  BEQ CODE_8FFFDD                           ; $8FFF82 |
  BMI CODE_8FFF8C                           ; $8FFF84 |
  ORA.W #$8000                              ; $8FFF86 |
  TAY                                       ; $8FFF89 |
  BRA CODE_8FFF7F                           ; $8FFF8A |

CODE_8FFF8C:
  CMP.W $179C                               ; $8FFF8C |
  BEQ CODE_8FFFAE                           ; $8FFF8F |
  STA.W $179C                               ; $8FFF91 |
  STA.B $A8                                 ; $8FFF94 |
  LDA.W $0008,Y                             ; $8FFF96 |
  STA.W $179E                               ; $8FFF99 |
  LDA.W $0009,Y                             ; $8FFF9C |
  STA.W $1798                               ; $8FFF9F |
  STA.W $179A                               ; $8FFFA2 |
  LDA.W $000B,Y                             ; $8FFFA5 |
  STA.W $17A0                               ; $8FFFA8 |
  STA.W $17A2                               ; $8FFFAB |

CODE_8FFFAE:
  LDA.W $000D,Y                             ; $8FFFAE |
  BEQ CODE_8FFFDD                           ; $8FFFB1 |
  BMI CODE_8FFFBB                           ; $8FFFB3 |
  ORA.W #$8000                              ; $8FFFB5 |
  TAY                                       ; $8FFFB8 |
  BRA CODE_8FFFAE                           ; $8FFFB9 |

CODE_8FFFBB:
  CMP.W $17A8                               ; $8FFFBB |
  BEQ CODE_8FFFDD                           ; $8FFFBE |
  STA.W $17A8                               ; $8FFFC0 |
  STA.B $A8                                 ; $8FFFC3 |
  LDA.W $000F,Y                             ; $8FFFC5 |
  STA.W $17AA                               ; $8FFFC8 |
  LDA.W $0010,Y                             ; $8FFFCB |
  STA.W $17A4                               ; $8FFFCE |
  STA.W $17A6                               ; $8FFFD1 |
  LDA.W $0012,Y                             ; $8FFFD4 |
  STA.W $17AC                               ; $8FFFD7 |
  STA.W $17AE                               ; $8FFFDA |

CODE_8FFFDD:
  PLY                                       ; $8FFFDD |

CODE_JP_8FFFDE:
  LDA.B $A8                                 ; $8FFFDE |
  BEQ CODE_8FFFEA                           ; $8FFFE0 |
  LDA.W $1770                               ; $8FFFE2 |
  ORA.W $1784                               ; $8FFFE5 |
  BNE CODE_8FFFF4                           ; $8FFFE8 |

CODE_8FFFEA:
  LDA.B $48,X                               ; $8FFFEA |
  STA.B $00,X                               ; $8FFFEC |
  STZ.B $A8                                 ; $8FFFEE |
  JSL.L CODE_FL_83B3BC                      ; $8FFFF0 |

CODE_8FFFF4:
  SEP #$20                                  ; $8FFFF4 |
  LDA.B #$81                                ; $8FFFF6 |
  PHA                                       ; $8FFFF8 |
  PLB                                       ; $8FFFF9 |
  RTL                                       ; $8FFFFA |

  db $FF,$FF,$FF,$FF,$FF                    ; $8FFFFB |
