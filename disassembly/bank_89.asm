org $898000

incbin ../assets/bank_89.bin:$0000..$7E00   ; $898000 |

CODE_FL_89FE00:
  LDX.W #$04C0                              ; $89FE00 |

CODE_89FE03:
  STX.B $94                                 ; $89FE03 |
  LDA.B $18,X                               ; $89FE05 |
  BEQ CODE_89FE0D                           ; $89FE07 |
  JSL.L CODE_FL_83DCA8                      ; $89FE09 |

CODE_89FE0D:
  CPX.W #$04C0                              ; $89FE0D |
  BNE CODE_89FE17                           ; $89FE10 |
  LDX.W #$0400                              ; $89FE12 |
  BRA CODE_89FE03                           ; $89FE15 |

CODE_89FE17:
  LDX.W #$0400                              ; $89FE17 |
  LDA.B $18,X                               ; $89FE1A |
  ORA.W $00D8,X                             ; $89FE1C |
  BNE CODE_89FE24                           ; $89FE1F |
  JMP.W CODE_JP_89FF75                      ; $89FE21 |

CODE_89FE24:
  LDA.W $00D8,X                             ; $89FE24 |
  BNE CODE_89FE36                           ; $89FE27 |
  LDA.B $3C,X                               ; $89FE29 |
  STA.W $1666                               ; $89FE2B |
  LDA.B $3E,X                               ; $89FE2E |
  STA.W $1676                               ; $89FE30 |
  JMP.W CODE_JP_89FF75                      ; $89FE33 |

CODE_89FE36:
  LDA.B $18,X                               ; $89FE36 |
  BNE CODE_89FE49                           ; $89FE38 |
  LDA.W $00FC,X                             ; $89FE3A |
  STA.W $1666                               ; $89FE3D |
  LDA.W $00FE,X                             ; $89FE40 |
  STA.W $1676                               ; $89FE43 |
  JMP.W CODE_JP_89FF75                      ; $89FE46 |

CODE_89FE49:
  LDA.B $3C,X                               ; $89FE49 |
  ORA.W $00FC,X                             ; $89FE4B |
  BNE CODE_89FE53                           ; $89FE4E |
  JMP.W CODE_JP_89FEDF                      ; $89FE50 |

CODE_89FE53:
  LDA.B $3C,X                               ; $89FE53 |
  BEQ CODE_89FEB0                           ; $89FE55 |
  LDA.W $00FC,X                             ; $89FE57 |
  BEQ CODE_89FE83                           ; $89FE5A |
  LDA.B $3C,X                               ; $89FE5C |
  EOR.W $00FC,X                             ; $89FE5E |
  ASL A                                     ; $89FE61 |
  BCS CODE_JP_89FEDF                        ; $89FE62 |
  LDA.B $3C,X                               ; $89FE64 |
  BMI CODE_89FE6F                           ; $89FE66 |
  CMP.W $00FC,X                             ; $89FE68 |
  BCS CODE_89FE74                           ; $89FE6B |
  BCC CODE_89FE7B                           ; $89FE6D |

CODE_89FE6F:
  CMP.W $00FC,X                             ; $89FE6F |
  BCS CODE_89FE7B                           ; $89FE72 |

CODE_89FE74:
  LDA.B $3C,X                               ; $89FE74 |
  STA.W $1666                               ; $89FE76 |
  BRA CODE_JP_89FEDF                        ; $89FE79 |

CODE_89FE7B:
  LDA.W $00FC,X                             ; $89FE7B |
  STA.W $1666                               ; $89FE7E |
  BRA CODE_JP_89FEDF                        ; $89FE81 |

CODE_89FE83:
  LDA.B $3C,X                               ; $89FE83 |
  STA.W $1666                               ; $89FE85 |
  BMI CODE_89FE9D                           ; $89FE88 |
  LDA.W $00C9,X                             ; $89FE8A |
  SEC                                       ; $89FE8D |
  SBC.W #$0010                              ; $89FE8E |
  BCC CODE_89FEDC                           ; $89FE91 |
  CMP.W $1666                               ; $89FE93 |
  BCS CODE_JP_89FEDF                        ; $89FE96 |
  STA.W $1666                               ; $89FE98 |
  BRA CODE_JP_89FEDF                        ; $89FE9B |

CODE_89FE9D:
  LDA.W $00C9,X                             ; $89FE9D |
  SEC                                       ; $89FEA0 |
  SBC.W #$00F0                              ; $89FEA1 |
  BCS CODE_89FEDC                           ; $89FEA4 |
  CMP.W $1666                               ; $89FEA6 |
  BCC CODE_JP_89FEDF                        ; $89FEA9 |
  STA.W $1666                               ; $89FEAB |
  BRA CODE_JP_89FEDF                        ; $89FEAE |

CODE_89FEB0:
  LDA.W $00FC,X                             ; $89FEB0 |
  STA.W $1666                               ; $89FEB3 |
  BMI CODE_89FECA                           ; $89FEB6 |
  LDA.B $09,X                               ; $89FEB8 |
  SEC                                       ; $89FEBA |
  SBC.W #$0010                              ; $89FEBB |
  BCC CODE_89FEDC                           ; $89FEBE |
  CMP.W $1666                               ; $89FEC0 |
  BCS CODE_JP_89FEDF                        ; $89FEC3 |
  STA.W $1666                               ; $89FEC5 |
  BRA CODE_JP_89FEDF                        ; $89FEC8 |

CODE_89FECA:
  LDA.B $09,X                               ; $89FECA |
  SEC                                       ; $89FECC |
  SBC.W #$00F0                              ; $89FECD |
  BCS CODE_89FEDC                           ; $89FED0 |
  CMP.W $1666                               ; $89FED2 |
  BCC CODE_JP_89FEDF                        ; $89FED5 |
  STA.W $1666                               ; $89FED7 |
  BRA CODE_JP_89FEDF                        ; $89FEDA |

CODE_89FEDC:
  STZ.W $1666                               ; $89FEDC |

CODE_JP_89FEDF:
  LDA.B $3E,X                               ; $89FEDF |
  ORA.W $00FE,X                             ; $89FEE1 |
  BNE CODE_89FEE9                           ; $89FEE4 |
  JMP.W CODE_JP_89FF75                      ; $89FEE6 |

CODE_89FEE9:
  LDA.B $3E,X                               ; $89FEE9 |
  BEQ CODE_89FF46                           ; $89FEEB |
  LDA.W $00FE,X                             ; $89FEED |
  BEQ CODE_89FF19                           ; $89FEF0 |
  LDA.B $3E,X                               ; $89FEF2 |
  EOR.W $00FE,X                             ; $89FEF4 |
  ASL A                                     ; $89FEF7 |
  BCS CODE_JP_89FF75                        ; $89FEF8 |
  LDA.B $3E,X                               ; $89FEFA |
  BMI CODE_89FF05                           ; $89FEFC |
  CMP.W $00FE,X                             ; $89FEFE |
  BCS CODE_89FF0A                           ; $89FF01 |
  BCC CODE_89FF11                           ; $89FF03 |

CODE_89FF05:
  CMP.W $00FE,X                             ; $89FF05 |
  BCS CODE_89FF11                           ; $89FF08 |

CODE_89FF0A:
  LDA.B $3E,X                               ; $89FF0A |
  STA.W $1676                               ; $89FF0C |
  BRA CODE_JP_89FF75                        ; $89FF0F |

CODE_89FF11:
  LDA.W $00FE,X                             ; $89FF11 |
  STA.W $1676                               ; $89FF14 |
  BRA CODE_JP_89FF75                        ; $89FF17 |

CODE_89FF19:
  LDA.B $3E,X                               ; $89FF19 |
  STA.W $1676                               ; $89FF1B |
  BMI CODE_89FF33                           ; $89FF1E |
  LDA.W $00CD,X                             ; $89FF20 |
  SEC                                       ; $89FF23 |
  SBC.W #$0020                              ; $89FF24 |
  BCC CODE_89FF72                           ; $89FF27 |
  CMP.W $1676                               ; $89FF29 |
  BCS CODE_JP_89FF75                        ; $89FF2C |
  STA.W $1676                               ; $89FF2E |
  BRA CODE_JP_89FF75                        ; $89FF31 |

CODE_89FF33:
  LDA.W $00CD,X                             ; $89FF33 |
  SEC                                       ; $89FF36 |
  SBC.W #$00C0                              ; $89FF37 |
  BCS CODE_89FF72                           ; $89FF3A |
  CMP.W $1676                               ; $89FF3C |
  BCC CODE_JP_89FF75                        ; $89FF3F |
  STA.W $1676                               ; $89FF41 |
  BRA CODE_JP_89FF75                        ; $89FF44 |

CODE_89FF46:
  LDA.W $00FE,X                             ; $89FF46 |
  STA.W $1676                               ; $89FF49 |
  BMI CODE_89FF60                           ; $89FF4C |
  LDA.B $0D,X                               ; $89FF4E |
  SEC                                       ; $89FF50 |
  SBC.W #$0020                              ; $89FF51 |
  BCC CODE_89FF72                           ; $89FF54 |
  CMP.W $1676                               ; $89FF56 |
  BCS CODE_JP_89FF75                        ; $89FF59 |
  STA.W $1676                               ; $89FF5B |
  BRA CODE_JP_89FF75                        ; $89FF5E |

CODE_89FF60:
  LDA.B $0D,X                               ; $89FF60 |
  SEC                                       ; $89FF62 |
  SBC.W #$00C0                              ; $89FF63 |
  BCS CODE_89FF72                           ; $89FF66 |
  CMP.W $1676                               ; $89FF68 |
  BCC CODE_JP_89FF75                        ; $89FF6B |
  STA.W $1676                               ; $89FF6D |
  BRA CODE_JP_89FF75                        ; $89FF70 |

CODE_89FF72:
  STZ.W $1676                               ; $89FF72 |

CODE_JP_89FF75:
  STZ.B $3C,X                               ; $89FF75 |
  STZ.W $00FC,X                             ; $89FF77 |
  STZ.B $3E,X                               ; $89FF7A |
  STZ.W $00FE,X                             ; $89FF7C |
  LDA.B $92                                 ; $89FF7F |
  BIT.W #$0010                              ; $89FF81 |
  BEQ CODE_89FF8C                           ; $89FF84 |
  LDA.W $1960                               ; $89FF86 |
  STA.W $1666                               ; $89FF89 |

CODE_89FF8C:
  LDA.B $92                                 ; $89FF8C |
  BIT.W #$0001                              ; $89FF8E |
  BEQ CODE_89FF99                           ; $89FF91 |
  LDA.W $1962                               ; $89FF93 |
  STA.W $1676                               ; $89FF96 |

CODE_89FF99:
  RTL                                       ; $89FF99 |

  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $89FF9A |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $89FFA2 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $89FFAA |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $89FFB2 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $89FFBA |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $89FFC2 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $89FFCA |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $89FFD2 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $89FFDA |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $89FFE2 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $89FFEA |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $89FFF2 |
  db $FF,$FF,$FF,$FF,$FF,$FF                ; $89FFFA |
