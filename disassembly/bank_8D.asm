org $8D8000

CODE_8D8000:
  LDA.W #$0004                              ; $8D8000 |
  JSL.L CODE_FL_85B047                      ; $8D8003 |
  JSL.L CODE_FL_8CFD8F                      ; $8D8007 |
  PHX                                       ; $8D800B |
  ASL A                                     ; $8D800C |
  TAX                                       ; $8D800D |
  LDA.L PTR16_8D8018,X                      ; $8D800E |
  PLX                                       ; $8D8012 |
  STA.B $00                                 ; $8D8013 |
  JMP.W ($0000)                             ; $8D8015 |

PTR16_8D8018:
  dw CODE_8D802A                            ; $8D8018 |
  dw CODE_8D805D                            ; $8D801A |
  dw CODE_8D80BC                            ; $8D801C |
  dw CODE_8D80D5                            ; $8D801E |
  dw CODE_8D80DE                            ; $8D8020 |
  dw CODE_8D8107                            ; $8D8022 |
  dw CODE_8D8060                            ; $8D8024 |

CODE_8D8026:
  JML.L CODE_FL_86CA57                      ; $8D8026 |

CODE_8D802A:
  LDA.L $70073A                             ; $8D802A |
  BNE CODE_8D8026                           ; $8D802E |
  JSL.L CODE_FL_86C7A5                      ; $8D8030 |
  JSL.L CODE_FL_8CFF15                      ; $8D8034 |
  LDA.W #$0045                              ; $8D8038 |
  STA.B $02,X                               ; $8D803B |
  LDA.W #$1044                              ; $8D803D |
  JSL.L CODE_FL_86CAEE                      ; $8D8040 |
  JSL.L CODE_FL_85B00E                      ; $8D8044 |
  JSL.L CODE_FL_86C63A                      ; $8D8048 |
  STZ.B $3A,X                               ; $8D804C |
  STZ.B $3C,X                               ; $8D804E |
  JSR.W CODE_FN_8D815D                      ; $8D8050 |
  PHX                                       ; $8D8053 |
  LDX.W #DATA_88BB38                        ; $8D8054 |
  JSL.L sound_transfer_blocks               ; $8D8057 |
  PLX                                       ; $8D805B |
  RTL                                       ; $8D805C |

CODE_8D805D:
  JSR.W CODE_FN_8D8121                      ; $8D805D |

CODE_8D8060:
  CLC                                       ; $8D8060 |
  LDA.B $09,X                               ; $8D8061 |
  ADC.W $1662                               ; $8D8063 |
  STA.B $00                                 ; $8D8066 |
  CLC                                       ; $8D8068 |
  LDA.B $0D,X                               ; $8D8069 |
  ADC.W $1672                               ; $8D806B |
  STA.B $02                                 ; $8D806E |
  LDY.B $3A,X                               ; $8D8070 |
  LDA.W CODE_00D463,Y                       ; $8D8072 |
  DEC A                                     ; $8D8075 |
  BEQ CODE_8D8099                           ; $8D8076 |
  DEC A                                     ; $8D8078 |
  BEQ CODE_8D8090                           ; $8D8079 |
  DEC A                                     ; $8D807B |
  BEQ CODE_8D8087                           ; $8D807C |
  LDA.W LOOSE_OP_00D465,Y                   ; $8D807E |
  CMP.B $02                                 ; $8D8081 |
  BPL CODE_8D80A2                           ; $8D8083 |
  BRA CODE_8D80BB                           ; $8D8085 |

CODE_8D8087:
  LDA.W LOOSE_OP_00D465,Y                   ; $8D8087 |
  CMP.B $02                                 ; $8D808A |
  BMI CODE_8D80A2                           ; $8D808C |
  BRA CODE_8D80BB                           ; $8D808E |

CODE_8D8090:
  LDA.W LOOSE_OP_00D465,Y                   ; $8D8090 |
  CMP.B $00                                 ; $8D8093 |
  BMI CODE_8D80AA                           ; $8D8095 |
  BRA CODE_8D80BB                           ; $8D8097 |

CODE_8D8099:
  LDA.W LOOSE_OP_00D465,Y                   ; $8D8099 |
  CMP.B $00                                 ; $8D809C |
  BPL CODE_8D80AA                           ; $8D809E |
  BRA CODE_8D80BB                           ; $8D80A0 |

CODE_8D80A2:
  SEC                                       ; $8D80A2 |
  SBC.W $1672                               ; $8D80A3 |
  STA.B $0D,X                               ; $8D80A6 |
  BRA CODE_8D80B0                           ; $8D80A8 |

CODE_8D80AA:
  SEC                                       ; $8D80AA |
  SBC.W $1662                               ; $8D80AB |
  STA.B $09,X                               ; $8D80AE |

CODE_8D80B0:
  LDA.B $3A,X                               ; $8D80B0 |
  CLC                                       ; $8D80B2 |
  ADC.W #$0004                              ; $8D80B3 |
  STA.B $3A,X                               ; $8D80B6 |
  JSR.W CODE_FN_8D815D                      ; $8D80B8 |

CODE_8D80BB:
  RTL                                       ; $8D80BB |

CODE_8D80BC:
  LDA.B $2C,X                               ; $8D80BC |
  BEQ CODE_8D80C1                           ; $8D80BE |
  RTL                                       ; $8D80C0 |

CODE_8D80C1:
  LDA.W #$0001                              ; $8D80C1 |
  STA.B $1A,X                               ; $8D80C4 |
  JSR.W CODE_FN_8D8121                      ; $8D80C6 |
  LDA.B $3A,X                               ; $8D80C9 |
  CLC                                       ; $8D80CB |
  ADC.W #$0002                              ; $8D80CC |
  STA.B $3A,X                               ; $8D80CF |
  JSR.W CODE_FN_8D815D                      ; $8D80D1 |
  RTL                                       ; $8D80D4 |

CODE_8D80D5:
  LDA.B $2C,X                               ; $8D80D5 |
  BEQ CODE_8D80DA                           ; $8D80D7 |
  RTL                                       ; $8D80D9 |

CODE_8D80DA:
  JML.L CODE_FL_86CA57                      ; $8D80DA |

CODE_8D80DE:
  STZ.B $32,X                               ; $8D80DE |
  JSL.L CODE_FL_9CFF27                      ; $8D80E0 |
  LDA.W #$3A32                              ; $8D80E4 |
  STA.B $00,X                               ; $8D80E7 |
  STZ.B $26,X                               ; $8D80E9 |
  STZ.B $28,X                               ; $8D80EB |
  JSL.L CODE_FL_85B50F                      ; $8D80ED |
  LDA.W #$0020                              ; $8D80F1 |
  STA.B $2C,X                               ; $8D80F4 |
  JSL.L CODE_FL_85B016                      ; $8D80F6 |
  JSL.L CODE_FL_85A9AF                      ; $8D80FA |
  LDA.W #$011C                              ; $8D80FE |
  JSL.L CODE_FL_8089BD                      ; $8D8101 |
  INC.B $1A,X                               ; $8D8105 |

CODE_8D8107:
  LDA.B $2C,X                               ; $8D8107 |
  BEQ CODE_8D810C                           ; $8D8109 |
  RTL                                       ; $8D810B |

CODE_8D810C:
  LDA.W #$0002                              ; $8D810C |
  STA.B $3C,X                               ; $8D810F |
  LDA.W #$0006                              ; $8D8111 |
  STA.B $1A,X                               ; $8D8114 |
  JSR.W CODE_FN_8D815D                      ; $8D8116 |
  LDA.W #$0118                              ; $8D8119 |
  JSL.L CODE_FL_8089BD                      ; $8D811C |
  RTL                                       ; $8D8120 |

CODE_FN_8D8121:
  LDY.W $00DC                               ; $8D8121 |
  LDA.W $0018,Y                             ; $8D8124 |
  BEQ CODE_8D812F                           ; $8D8127 |
  LDA.W #$00DC                              ; $8D8129 |
  JSR.W CODE_FN_8D813E                      ; $8D812C |

CODE_8D812F:
  LDY.W $00DE                               ; $8D812F |
  LDA.W $0018,Y                             ; $8D8132 |
  BEQ CODE_8D813D                           ; $8D8135 |
  LDA.W #$00DE                              ; $8D8137 |
  JSR.W CODE_FN_8D813E                      ; $8D813A |

CODE_8D813D:
  RTS                                       ; $8D813D |

CODE_FN_8D813E:
  STA.B $48,X                               ; $8D813E |
  JSL.L CODE_FL_8CFE4B                      ; $8D8140 |
  LDA.B $1C                                 ; $8D8144 |
  CMP.W #$0040                              ; $8D8146 |
  BPL CODE_8D815C                           ; $8D8149 |
  LDY.B $3A,X                               ; $8D814B |
  LDA.W CODE_00D463,Y                       ; $8D814D |
  AND.W #$7FFF                              ; $8D8150 |
  CMP.B $1A                                 ; $8D8153 |
  BNE CODE_8D815C                           ; $8D8155 |
  LDA.W #$0004                              ; $8D8157 |
  STA.B $1A,X                               ; $8D815A |

CODE_8D815C:
  RTS                                       ; $8D815C |

CODE_FN_8D815D:
  LDY.B $3A,X                               ; $8D815D |
  LDA.W CODE_00D463,Y                       ; $8D815F |
  BPL CODE_8D8182                           ; $8D8162 |
  CMP.W #$FFFE                              ; $8D8164 |
  BEQ CODE_8D8173                           ; $8D8167 |
  LDY.B $3C,X                               ; $8D8169 |
  BEQ CODE_8D81A2                           ; $8D816B |
  INC.B $3A,X                               ; $8D816D |
  INC.B $3A,X                               ; $8D816F |
  BRA CODE_FN_8D815D                        ; $8D8171 |

CODE_8D8173:
  LDA.W LOOSE_OP_00D465,Y                   ; $8D8173 |
  STA.B $04,X                               ; $8D8176 |
  LDA.B $3A,X                               ; $8D8178 |
  CLC                                       ; $8D817A |
  ADC.W #$0004                              ; $8D817B |
  STA.B $3A,X                               ; $8D817E |
  BRA CODE_FN_8D815D                        ; $8D8180 |

CODE_8D8182:
  STA.B $1A                                 ; $8D8182 |
  LDY.B $3C,X                               ; $8D8184 |
  LDA.W LOOSE_OP_00D4C3,Y                   ; $8D8186 |
  JSL.L CODE_FL_85B33C                      ; $8D8189 |
  LDY.B $3A,X                               ; $8D818D |
  LDA.W CODE_00D463,Y                       ; $8D818F |
  STA.B $1A                                 ; $8D8192 |
  LDY.B $3C,X                               ; $8D8194 |
  LDA.W LOOSE_OP_00D4C7,Y                   ; $8D8196 |
  JSL.L CODE_FL_8CFE36                      ; $8D8199 |
  JSL.L CODE_FL_86C4F1                      ; $8D819D |
  RTS                                       ; $8D81A1 |

CODE_8D81A2:
  CMP.W #$FFFF                              ; $8D81A2 |
  BEQ CODE_8D81CE                           ; $8D81A5 |
  AND.W #$7FFF                              ; $8D81A7 |
  DEC A                                     ; $8D81AA |
  ASL A                                     ; $8D81AB |
  TAY                                       ; $8D81AC |
  LDA.W LOOSE_OP_00D4CB,Y                   ; $8D81AD |
  STA.B $00,X                               ; $8D81B0 |
  LDA.W CODE_00D4D3,Y                       ; $8D81B2 |
  STA.B $04,X                               ; $8D81B5 |
  JSL.L CODE_FL_9CFF27                      ; $8D81B7 |
  STZ.B $26,X                               ; $8D81BB |
  STZ.B $28,X                               ; $8D81BD |
  JSL.L CODE_FL_85B50F                      ; $8D81BF |
  LDA.W #$0040                              ; $8D81C3 |
  STA.B $2C,X                               ; $8D81C6 |
  LDA.W #$0002                              ; $8D81C8 |
  STA.B $1A,X                               ; $8D81CB |
  RTS                                       ; $8D81CD |

CODE_8D81CE:
  LDA.W #$0001                              ; $8D81CE |
  STA.W $1C8E                               ; $8D81D1 |
  LDA.W #$0020                              ; $8D81D4 |
  STA.B $2C,X                               ; $8D81D7 |
  STZ.B $26,X                               ; $8D81D9 |
  STZ.B $28,X                               ; $8D81DB |
  JSL.L CODE_FL_85B50F                      ; $8D81DD |
  LDA.W #$0003                              ; $8D81E1 |
  STA.B $1A,X                               ; $8D81E4 |
  RTS                                       ; $8D81E6 |

CODE_8D81E7:
  JSL.L CODE_FL_86C3A3                      ; $8D81E7 |
  LDA.B $1A,X                               ; $8D81EB |
  PHX                                       ; $8D81ED |
  ASL A                                     ; $8D81EE |
  TAX                                       ; $8D81EF |
  LDA.L PTR16_8D81FA,X                      ; $8D81F0 |
  PLX                                       ; $8D81F4 |
  STA.B $00                                 ; $8D81F5 |
  JMP.W ($0000)                             ; $8D81F7 |

PTR16_8D81FA:
  dw CODE_8D8204                            ; $8D81FA |
  dw CODE_8D820F                            ; $8D81FC |
  dw CODE_8D8229                            ; $8D81FE |
  dw CODE_8D823E                            ; $8D8200 |
  dw CODE_8D8262                            ; $8D8202 |

CODE_8D8204:
  STZ.W $1C8E                               ; $8D8204 |
  LDA.L $70073A                             ; $8D8207 |
  BNE CODE_8D822E                           ; $8D820B |
  INC.B $1A,X                               ; $8D820D |

CODE_8D820F:
  LDA.W $1C8E                               ; $8D820F |
  BNE CODE_8D8215                           ; $8D8212 |
  RTL                                       ; $8D8214 |

CODE_8D8215:
  LDA.W #$05E0                              ; $8D8215 |
  JSR.W CODE_FN_8D8273                      ; $8D8218 |
  LDA.W #$0004                              ; $8D821B |
  STA.B $2C,X                               ; $8D821E |
  LDA.W #$0058                              ; $8D8220 |
  JSL.L CODE_FL_8089BD                      ; $8D8223 |
  INC.B $1A,X                               ; $8D8227 |

CODE_8D8229:
  LDA.B $2C,X                               ; $8D8229 |

CODE_8D822B:
  BEQ CODE_8D822E                           ; $8D822B |
  RTL                                       ; $8D822D |

CODE_8D822E:
  LDA.W #$05E2                              ; $8D822E |
  JSR.W CODE_FN_8D8273                      ; $8D8231 |
  LDA.W #$0100                              ; $8D8234 |
  STA.B $2C,X                               ; $8D8237 |
  LDA.W #$0003                              ; $8D8239 |
  STA.B $1A,X                               ; $8D823C |

CODE_8D823E:
  LDA.B $2C,X                               ; $8D823E |
  ORA.L $70073A                             ; $8D8240 |
  BEQ CODE_8D824A                           ; $8D8244 |
  JML.L CODE_JL_85F5D3                      ; $8D8246 |

CODE_8D824A:
  LDA.W #$05E0                              ; $8D824A |
  JSR.W CODE_FN_8D8273                      ; $8D824D |
  LDA.W #$0004                              ; $8D8250 |
  STA.B $2C,X                               ; $8D8253 |
  STZ.W $1C8E                               ; $8D8255 |
  LDA.W #$0058                              ; $8D8258 |
  JSL.L CODE_FL_8089BD                      ; $8D825B |
  INC.B $1A,X                               ; $8D825F |
  RTL                                       ; $8D8261 |

CODE_8D8262:
  LDA.B $2C,X                               ; $8D8262 |
  BEQ CODE_8D8267                           ; $8D8264 |
  RTL                                       ; $8D8266 |

CODE_8D8267:
  LDA.W #$05E4                              ; $8D8267 |
  JSR.W CODE_FN_8D8273                      ; $8D826A |
  LDA.W #$0001                              ; $8D826D |
  STA.B $1A,X                               ; $8D8270 |
  RTL                                       ; $8D8272 |

CODE_FN_8D8273:
  STA.B $00                                 ; $8D8273 |
  LDA.W #$0040                              ; $8D8275 |
  STA.B $10                                 ; $8D8278 |
  LDA.W #$0540                              ; $8D827A |
  STA.B $12                                 ; $8D827D |
  LDA.B $00                                 ; $8D827F |
  JSL.L CODE_FL_85824D                      ; $8D8281 |
  RTS                                       ; $8D8285 |

CODE_8D8286:
  JSL.L CODE_FL_8D828D                      ; $8D8286 |
  JMP.W CODE_JP_8D82A8                      ; $8D828A |

CODE_FL_8D828D:
  JSL.L CODE_FL_8CFD8F                      ; $8D828D |
  PHX                                       ; $8D8291 |
  ASL A                                     ; $8D8292 |
  TAX                                       ; $8D8293 |
  LDA.L PTR16_8D829E,X                      ; $8D8294 |
  PLX                                       ; $8D8298 |
  STA.B $00                                 ; $8D8299 |
  JMP.W ($0000)                             ; $8D829B |

PTR16_8D829E:
  dw CODE_8D82C3                            ; $8D829E |
  dw CODE_8D833B                            ; $8D82A0 |
  dw CODE_8D83CF                            ; $8D82A2 |
  dw CODE_8D840C                            ; $8D82A4 |
  dw CODE_8D8429                            ; $8D82A6 |

CODE_JP_8D82A8:
  LDA.B $3E,X                               ; $8D82A8 |
  PHX                                       ; $8D82AA |
  ASL A                                     ; $8D82AB |
  TAX                                       ; $8D82AC |
  LDA.L PTR16_8D82B7,X                      ; $8D82AD |
  PLX                                       ; $8D82B1 |
  STA.B $00                                 ; $8D82B2 |
  JMP.W ($0000)                             ; $8D82B4 |

PTR16_8D82B7:
  dw CODE_8D842A                            ; $8D82B7 |
  dw CODE_8D842B                            ; $8D82B9 |

CODE_8D82BB:
  JML.L CODE_FL_86CA36                      ; $8D82BB |

CODE_8D82BF:
  JML.L CODE_FL_86CA57                      ; $8D82BF |

CODE_8D82C3:
  LDA.L $70073E                             ; $8D82C3 |
  BNE CODE_8D82BF                           ; $8D82C7 |
  LDA.W #$0712                              ; $8D82C9 |
  JSL.L CODE_FL_80A634                      ; $8D82CC |
  BCC CODE_8D8315                           ; $8D82D0 |
  LDA.W #$031A                              ; $8D82D2 |
  JSL.L CODE_FL_86C9A4                      ; $8D82D5 |
  BCS CODE_8D82BB                           ; $8D82D9 |
  JSL.L CODE_FL_85AAB6                      ; $8D82DB |
  STZ.B $3C,X                               ; $8D82DF |
  LDA.W #$9017                              ; $8D82E1 |
  JSL.L CODE_FL_86CAEE                      ; $8D82E4 |
  SEC                                       ; $8D82E8 |
  LDA.W #$0240                              ; $8D82E9 |
  SBC.W $1662                               ; $8D82EC |
  STA.B $09,X                               ; $8D82EF |
  SEC                                       ; $8D82F1 |
  LDA.W #$0160                              ; $8D82F2 |
  SBC.W $1672                               ; $8D82F5 |
  STA.B $0D,X                               ; $8D82F8 |
  LDA.W #$0001                              ; $8D82FA |
  STA.B $2C,X                               ; $8D82FD |
  LDA.B $04,X                               ; $8D82FF |
  ORA.W #$1898                              ; $8D8301 |
  STA.B $04,X                               ; $8D8304 |
  LDA.W #$8001                              ; $8D8306 |
  STA.B $E4                                 ; $8D8309 |
  JSR.W CODE_FN_8D832C                      ; $8D830B |
  JSL.L CODE_FL_83852F                      ; $8D830E |
  INC.B $1A,X                               ; $8D8312 |
  RTL                                       ; $8D8314 |

CODE_8D8315:
  LDA.W #$9015                              ; $8D8315 |
  JSL.L CODE_FL_86CAEE                      ; $8D8318 |
  JSR.W CODE_FN_8D832C                      ; $8D831C |
  LDA.B $22,X                               ; $8D831F |
  AND.W #$BFFF                              ; $8D8321 |
  STA.B $22,X                               ; $8D8324 |
  LDA.W #$0002                              ; $8D8326 |
  STA.B $1A,X                               ; $8D8329 |
  RTL                                       ; $8D832B |

CODE_FN_8D832C:
  LDA.W #$00C0                              ; $8D832C |
  STA.B $06,X                               ; $8D832F |
  JSL.L CODE_FL_8CFF15                      ; $8D8331 |
  LDA.W #$0050                              ; $8D8335 |
  STA.B $11,X                               ; $8D8338 |
  RTS                                       ; $8D833A |

CODE_8D833B:
  LDA.B $2C,X                               ; $8D833B |
  BNE CODE_8D83A1                           ; $8D833D |
  LDY.B $3C,X                               ; $8D833F |
  LDA.W CODE_00D4DB,Y                       ; $8D8341 |
  BPL CODE_8D8389                           ; $8D8344 |
  AND.W #$7FFF                              ; $8D8346 |
  BEQ CODE_8D837D                           ; $8D8349 |
  DEC A                                     ; $8D834B |
  BEQ CODE_8D836E                           ; $8D834C |
  DEC A                                     ; $8D834E |
  BEQ CODE_8D835E                           ; $8D834F |
  DEC A                                     ; $8D8351 |
  LDA.W CODE_00D4DD,Y                       ; $8D8352 |
  JSL.L CODE_FL_86CAEE                      ; $8D8355 |
  LDA.W #$0004                              ; $8D8359 |
  BRA CODE_8D8376                           ; $8D835C |

CODE_8D835E:
  LDA.W CODE_00D4DD,Y                       ; $8D835E |
  STA.W $1962                               ; $8D8361 |
  LDA.W LOOSE_OP_00D4DF,Y                   ; $8D8364 |
  STA.B $92                                 ; $8D8367 |
  LDA.W #$0006                              ; $8D8369 |
  BRA CODE_8D8376                           ; $8D836C |

CODE_8D836E:
  LDA.W CODE_00D4DD,Y                       ; $8D836E |
  STA.B $3E,X                               ; $8D8371 |
  LDA.W #$0004                              ; $8D8373 |

CODE_8D8376:
  CLC                                       ; $8D8376 |
  ADC.B $3C,X                               ; $8D8377 |
  STA.B $3C,X                               ; $8D8379 |
  BRA CODE_8D833B                           ; $8D837B |

CODE_8D837D:
  LDA.B $04,X                               ; $8D837D |
  EOR.W #$2020                              ; $8D837F |
  STA.B $04,X                               ; $8D8382 |
  LDA.W #$0002                              ; $8D8384 |
  BRA CODE_8D8376                           ; $8D8387 |

CODE_8D8389:
  STA.B $2C,X                               ; $8D8389 |
  LDA.W CODE_00D4DD,Y                       ; $8D838B |
  STA.B $26,X                               ; $8D838E |
  LDA.W LOOSE_OP_00D4DF,Y                   ; $8D8390 |
  STA.B $28,X                               ; $8D8393 |
  LDA.W CODE_00D4E1,Y                       ; $8D8395 |
  STA.B $2A,X                               ; $8D8398 |
  TYA                                       ; $8D839A |
  CLC                                       ; $8D839B |
  ADC.W #$0008                              ; $8D839C |
  STA.B $3C,X                               ; $8D839F |

CODE_8D83A1:
  LDA.B $3A,X                               ; $8D83A1 |
  AND.W #$00FF                              ; $8D83A3 |
  BNE CODE_8D83AF                           ; $8D83A6 |
  LDA.W #$002C                              ; $8D83A8 |
  JSL.L push_sound_queue                    ; $8D83AB |

CODE_8D83AF:
  INC.B $3A,X                               ; $8D83AF |
  JSR.W CODE_FN_8D83B5                      ; $8D83B1 |
  RTL                                       ; $8D83B4 |

CODE_FN_8D83B5:
  LDA.B $40,X                               ; $8D83B5 |
  CMP.W #$3C82                              ; $8D83B7 |
  BEQ CODE_8D83CA                           ; $8D83BA |
  LDA.B $00,X                               ; $8D83BC |
  CMP.W #$3C82                              ; $8D83BE |
  BNE CODE_8D83CA                           ; $8D83C1 |
  LDA.W #$0104                              ; $8D83C3 |
  JSL.L CODE_FL_8089BD                      ; $8D83C6 |

CODE_8D83CA:
  LDA.B $00,X                               ; $8D83CA |
  STA.B $40,X                               ; $8D83CC |
  RTS                                       ; $8D83CE |

CODE_8D83CF:
  LDA.B $2C,X                               ; $8D83CF |
  BEQ CODE_8D83D4                           ; $8D83D1 |
  RTL                                       ; $8D83D3 |

CODE_8D83D4:
  LDA.B $87                                 ; $8D83D4 |
  AND.W #$0004                              ; $8D83D6 |
  TAY                                       ; $8D83D9 |
  LDA.W LOOSE_OP_00D55B,Y                   ; $8D83DA |
  STA.B $26,X                               ; $8D83DD |
  LDA.W #$0100                              ; $8D83DF |
  STA.B $28,X                               ; $8D83E2 |
  LDA.W LOOSE_OP_00D55D,Y                   ; $8D83E4 |
  STA.B $09,X                               ; $8D83E7 |
  LDA.W #$0040                              ; $8D83E9 |
  STA.B $0D,X                               ; $8D83EC |
  LDA.B $04,X                               ; $8D83EE |
  CPY.W #$0000                              ; $8D83F0 |
  BEQ CODE_8D83FA                           ; $8D83F3 |
  ORA.W #$2020                              ; $8D83F5 |
  BRA CODE_8D83FD                           ; $8D83F8 |

CODE_8D83FA:
  AND.W #$DFDF                              ; $8D83FA |

CODE_8D83FD:
  ORA.W #$1898                              ; $8D83FD |
  STA.B $04,X                               ; $8D8400 |
  LDA.W #$002C                              ; $8D8402 |
  JSL.L push_sound_queue                    ; $8D8405 |
  INC.B $1A,X                               ; $8D8409 |
  RTL                                       ; $8D840B |

CODE_8D840C:
  LDA.B $09,X                               ; $8D840C |
  CLC                                       ; $8D840E |
  ADC.W #$0010                              ; $8D840F |
  CMP.W #$0120                              ; $8D8412 |
  BCS CODE_8D841B                           ; $8D8415 |
  JSR.W CODE_FN_8D83B5                      ; $8D8417 |
  RTL                                       ; $8D841A |

CODE_8D841B:
  LDA.B $86                                 ; $8D841B |
  AND.W #$03FF                              ; $8D841D |
  CLC                                       ; $8D8420 |
  ADC.W #$0200                              ; $8D8421 |
  STA.B $2C,X                               ; $8D8424 |
  DEC.B $1A,X                               ; $8D8426 |
  RTL                                       ; $8D8428 |

CODE_8D8429:
  RTL                                       ; $8D8429 |

CODE_8D842A:
  RTL                                       ; $8D842A |

CODE_8D842B:
  LDA.W $0418                               ; $8D842B |
  BEQ CODE_8D8440                           ; $8D842E |
  LDY.W #$0400                              ; $8D8430 |
  JSL.L CODE_FL_9CFF2F                      ; $8D8433 |
  SEC                                       ; $8D8437 |
  LDA.B $11,X                               ; $8D8438 |
  SBC.W #$001E                              ; $8D843A |
  STA.W $0011,Y                             ; $8D843D |

CODE_8D8440:
  LDA.W $04D8                               ; $8D8440 |
  BEQ CODE_8D8455                           ; $8D8443 |
  LDY.W #$04C0                              ; $8D8445 |
  JSL.L CODE_FL_9CFF2F                      ; $8D8448 |
  SEC                                       ; $8D844C |
  LDA.B $11,X                               ; $8D844D |
  SBC.W #$001E                              ; $8D844F |
  STA.W $0011,Y                             ; $8D8452 |

CODE_8D8455:
  RTL                                       ; $8D8455 |

CODE_8D8456:
  JSL.L CODE_FL_8CFD8F                      ; $8D8456 |
  PHX                                       ; $8D845A |
  ASL A                                     ; $8D845B |
  TAX                                       ; $8D845C |
  LDA.L PTR16_8D8467,X                      ; $8D845D |
  PLX                                       ; $8D8461 |
  STA.B $00                                 ; $8D8462 |
  JMP.W ($0000)                             ; $8D8464 |

PTR16_8D8467:
  dw CODE_8D846D                            ; $8D8467 |
  dw CODE_8D8487                            ; $8D8469 |
  dw CODE_8D84D1                            ; $8D846B |

CODE_8D846D:
  SEC                                       ; $8D846D |
  LDA.W #$0280                              ; $8D846E |
  SBC.W $1662                               ; $8D8471 |
  STA.B $09,X                               ; $8D8474 |
  SEC                                       ; $8D8476 |
  LDA.W #$030A                              ; $8D8477 |
  SBC.W $1672                               ; $8D847A |
  STA.B $0D,X                               ; $8D847D |
  LDA.W #$6000                              ; $8D847F |
  STA.B $34,X                               ; $8D8482 |
  INC.B $1A,X                               ; $8D8484 |
  RTL                                       ; $8D8486 |

CODE_8D8487:
  STZ.B $00                                 ; $8D8487 |
  LDA.W $0418                               ; $8D8489 |
  BEQ CODE_8D8493                           ; $8D848C |
  LDA.W $0411                               ; $8D848E |
  STA.B $00                                 ; $8D8491 |

CODE_8D8493:
  LDA.W $04D8                               ; $8D8493 |
  BEQ CODE_8D849F                           ; $8D8496 |
  LDA.B $00                                 ; $8D8498 |
  ORA.W $0411                               ; $8D849A |
  STA.B $00                                 ; $8D849D |

CODE_8D849F:
  LDA.B $00                                 ; $8D849F |
  BNE CODE_8D84AE                           ; $8D84A1 |
  JSL.L CODE_FL_85F885                      ; $8D84A3 |
  LDA.B $32,X                               ; $8D84A7 |
  AND.W #$4000                              ; $8D84A9 |
  BNE CODE_8D84AF                           ; $8D84AC |

CODE_8D84AE:
  RTL                                       ; $8D84AE |

CODE_8D84AF:
  STZ.B $E4                                 ; $8D84AF |
  LDA.W #$0001                              ; $8D84B1 |
  STA.L $70073E                             ; $8D84B4 |
  LDA.W #$9018                              ; $8D84B8 |
  JSL.L CODE_FL_86CAEE                      ; $8D84BB |
  LDA.W #$0010                              ; $8D84BF |
  STA.B $4C,X                               ; $8D84C2 |
  LDA.W #$03C0                              ; $8D84C4 |
  STA.B $2A,X                               ; $8D84C7 |
  LDA.W #$0050                              ; $8D84C9 |
  STA.B $2C,X                               ; $8D84CC |
  INC.B $1A,X                               ; $8D84CE |
  RTL                                       ; $8D84D0 |

CODE_8D84D1:
  LDA.B $2C,X                               ; $8D84D1 |
  BEQ CODE_8D84DA                           ; $8D84D3 |
  JSL.L CODE_FL_8CFEF6                      ; $8D84D5 |
  RTL                                       ; $8D84D9 |

CODE_8D84DA:
  JML.L CODE_FL_86CA57                      ; $8D84DA |

CODE_8D84DE:
  JSL.L CODE_FL_8CFD8F                      ; $8D84DE |
  PHX                                       ; $8D84E2 |
  ASL A                                     ; $8D84E3 |
  TAX                                       ; $8D84E4 |
  LDA.L PTR16_8D84EF,X                      ; $8D84E5 |
  PLX                                       ; $8D84E9 |
  STA.B $00                                 ; $8D84EA |
  JMP.W ($0000)                             ; $8D84EC |

PTR16_8D84EF:
  dw CODE_8D84FD                            ; $8D84EF |
  dw CODE_8D8515                            ; $8D84F1 |
  dw CODE_8D851D                            ; $8D84F3 |
  dw CODE_8D8547                            ; $8D84F5 |
  dw CODE_8D8547                            ; $8D84F7 |
  dw $575C                                  ; $8D84F9 |
  dw LOOSE_OP_8D86CA                        ; $8D84FB |

CODE_8D84FD:
  LDA.W #$3D02                              ; $8D84FD |
  STA.B $00,X                               ; $8D8500 |
  JSL.L CODE_FL_8CFF0C                      ; $8D8502 |
  JSL.L CODE_FL_85B01E                      ; $8D8506 |
  LDA.B $34,X                               ; $8D850A |
  ORA.W #$6020                              ; $8D850C |
  STA.B $34,X                               ; $8D850F |
  JML.L CODE_FL_86C63A                      ; $8D8511 |

CODE_8D8515:
  LDA.W #$0002                              ; $8D8515 |
  JSL.L CODE_FL_85B065                      ; $8D8518 |
  RTL                                       ; $8D851C |

CODE_8D851D:
  JSL.L CODE_FL_8098FD                      ; $8D851D |
  BCC CODE_8D8531                           ; $8D8521 |
  LDA.L $7E7C04                             ; $8D8523 |
  AND.W #$00FF                              ; $8D8527 |
  BNE CODE_8D8532                           ; $8D852A |
  LDA.W #$0001                              ; $8D852C |
  STA.B $1A,X                               ; $8D852F |

CODE_8D8531:
  RTL                                       ; $8D8531 |

CODE_8D8532:
  LDA.W #$0001                              ; $8D8532 |
  STA.L $700740                             ; $8D8535 |
  LDA.W #$F580                              ; $8D8539 |
  JSL.L CODE_FL_80E9EA                      ; $8D853C |
  JSL.L CODE_FL_848000                      ; $8D8540 |
  INC.B $1A,X                               ; $8D8544 |
  RTL                                       ; $8D8546 |

CODE_8D8547:
  RTL                                       ; $8D8547 |

CODE_8D8548:
  LDA.W #$0001                              ; $8D8548 |
  STA.B $E4                                 ; $8D854B |
  JSL.L CODE_FL_8CFD8F                      ; $8D854D |
  PHX                                       ; $8D8551 |
  ASL A                                     ; $8D8552 |
  TAX                                       ; $8D8553 |
  LDA.L PTR16_8D855E,X                      ; $8D8554 |
  PLX                                       ; $8D8558 |
  STA.B $00                                 ; $8D8559 |
  JMP.W ($0000)                             ; $8D855B |

PTR16_8D855E:
  dw CODE_8D8574                            ; $8D855E |
  dw CODE_8D859F                            ; $8D8560 |
  dw CODE_8D85B2                            ; $8D8562 |
  dw CODE_8D85C5                            ; $8D8564 |
  dw CODE_8D85E5                            ; $8D8566 |
  dw CODE_8D85FE                            ; $8D8568 |
  dw CODE_8D861B                            ; $8D856A |
  dw CODE_8D8629                            ; $8D856C |

CODE_8D856E:
  STZ.B $E4                                 ; $8D856E |
  JML.L CODE_FL_86CA57                      ; $8D8570 |

CODE_8D8574:
  LDA.L $700740                             ; $8D8574 |
  CMP.W #$0001                              ; $8D8578 |
  BNE CODE_8D856E                           ; $8D857B |
  LDA.W #$0070                              ; $8D857D |
  STA.B $06,X                               ; $8D8580 |
  LDA.W #$901A                              ; $8D8582 |
  JSL.L CODE_FL_86CAEE                      ; $8D8585 |
  LDA.W #$0046                              ; $8D8589 |
  STA.B $02,X                               ; $8D858C |
  JSL.L CODE_FL_8CFF0C                      ; $8D858E |
  LDA.W #$0080                              ; $8D8592 |
  STA.B $2C,X                               ; $8D8595 |
  LDA.W #$FF80                              ; $8D8597 |
  STA.B $28,X                               ; $8D859A |
  INC.B $1A,X                               ; $8D859C |
  RTL                                       ; $8D859E |

CODE_8D859F:
  LDA.B $2C,X                               ; $8D859F |
  BEQ CODE_8D85A4                           ; $8D85A1 |
  RTL                                       ; $8D85A3 |

CODE_8D85A4:
  STZ.B $28,X                               ; $8D85A4 |
  JSL.L CODE_FL_9CFF27                      ; $8D85A6 |
  LDA.W #$3D02                              ; $8D85AA |
  STA.B $00,X                               ; $8D85AD |
  INC.B $1A,X                               ; $8D85AF |
  RTL                                       ; $8D85B1 |

CODE_8D85B2:
  JSL.L CODE_FL_8098FD                      ; $8D85B2 |
  BCS CODE_8D85B9                           ; $8D85B6 |
  RTL                                       ; $8D85B8 |

CODE_8D85B9:
  LDA.W #$0040                              ; $8D85B9 |
  STA.B $2C,X                               ; $8D85BC |
  LDA.W #$3D0E                              ; $8D85BE |
  STA.B $00,X                               ; $8D85C1 |
  INC.B $1A,X                               ; $8D85C3 |

CODE_8D85C5:
  LDA.B $2C,X                               ; $8D85C5 |
  BEQ CODE_8D85CA                           ; $8D85C7 |
  RTL                                       ; $8D85C9 |

CODE_8D85CA:
  LDA.W #$0002                              ; $8D85CA |
  STA.L $700740                             ; $8D85CD |
  LDA.W #$3D10                              ; $8D85D1 |
  STA.B $00,X                               ; $8D85D4 |
  LDA.W #$00A0                              ; $8D85D6 |
  STA.B $2C,X                               ; $8D85D9 |
  LDA.W #$0020                              ; $8D85DB |
  JSL.L CODE_FL_8089BD                      ; $8D85DE |
  INC.B $1A,X                               ; $8D85E2 |
  RTL                                       ; $8D85E4 |

CODE_8D85E5:
  LDA.B $2C,X                               ; $8D85E5 |
  BEQ CODE_8D85EA                           ; $8D85E7 |
  RTL                                       ; $8D85E9 |

CODE_8D85EA:
  LDA.W #$3D02                              ; $8D85EA |
  STA.B $00,X                               ; $8D85ED |
  LDA.W #$0003                              ; $8D85EF |
  STA.L $700740                             ; $8D85F2 |
  LDA.W #$65B8                              ; $8D85F6 |
  STA.B $40,X                               ; $8D85F9 |
  INC.B $1A,X                               ; $8D85FB |
  RTL                                       ; $8D85FD |

CODE_8D85FE:
  JSL.L CODE_FL_8098FD                      ; $8D85FE |
  BCS CODE_8D8605                           ; $8D8602 |
  RTL                                       ; $8D8604 |

CODE_8D8605:
  LDA.W #$0080                              ; $8D8605 |
  STA.B $26,X                               ; $8D8608 |
  LDA.W #$901B                              ; $8D860A |
  JSL.L CODE_FL_86CAEE                      ; $8D860D |
  LDA.B $22,X                               ; $8D8611 |
  AND.W #$BFFF                              ; $8D8613 |
  STA.B $22,X                               ; $8D8616 |
  INC.B $1A,X                               ; $8D8618 |
  RTL                                       ; $8D861A |

CODE_8D861B:
  LDA.B $09,X                               ; $8D861B |
  CMP.W #$0110                              ; $8D861D |
  BPL CODE_8D8623                           ; $8D8620 |
  RTL                                       ; $8D8622 |

CODE_8D8623:
  STZ.B $E4                                 ; $8D8623 |
  JML.L CODE_FL_86CA57                      ; $8D8625 |

CODE_8D8629:
  RTL                                       ; $8D8629 |

CODE_8D862A:
  JSL.L CODE_FL_8CFD8F                      ; $8D862A |
  PHX                                       ; $8D862E |
  ASL A                                     ; $8D862F |
  TAX                                       ; $8D8630 |
  LDA.L PTR16_8D863B,X                      ; $8D8631 |
  PLX                                       ; $8D8635 |
  STA.B $00                                 ; $8D8636 |
  JMP.W ($0000)                             ; $8D8638 |

PTR16_8D863B:
  dw CODE_8D8645                            ; $8D863B |
  dw CODE_8D866C                            ; $8D863D |
  dw CODE_8D8691                            ; $8D863F |

CODE_8D8641:
  JML.L CODE_FL_86CA57                      ; $8D8641 |

CODE_8D8645:
  LDA.L $700740                             ; $8D8645 |
  CMP.W #$0003                              ; $8D8649 |
  BEQ CODE_8D8641                           ; $8D864C |
  LDA.W #$38B2                              ; $8D864E |
  STA.B $00,X                               ; $8D8651 |
  LDA.W #$0080                              ; $8D8653 |
  STA.B $06,X                               ; $8D8656 |
  JSL.L CODE_FL_8CFF1E                      ; $8D8658 |
  LDA.W #$3880                              ; $8D865C |
  STA.B $34,X                               ; $8D865F |
  LDA.B $22,X                               ; $8D8661 |
  AND.W #$BFFF                              ; $8D8663 |
  STA.B $22,X                               ; $8D8666 |
  JML.L CODE_FL_86C63A                      ; $8D8668 |

CODE_8D866C:
  JSL.L CODE_FL_85F885                      ; $8D866C |
  LDA.L $700740                             ; $8D8670 |
  CMP.W #$0002                              ; $8D8674 |
  BEQ CODE_8D867A                           ; $8D8677 |
  RTL                                       ; $8D8679 |

CODE_8D867A:
  LDA.W #$0020                              ; $8D867A |
  STA.B $4C,X                               ; $8D867D |
  LDA.W #$0400                              ; $8D867F |
  STA.B $2A,X                               ; $8D8682 |
  LDA.W #$FD00                              ; $8D8684 |
  STA.B $26,X                               ; $8D8687 |
  LDA.W #$0080                              ; $8D8689 |
  STA.B $2C,X                               ; $8D868C |
  INC.B $1A,X                               ; $8D868E |
  RTL                                       ; $8D8690 |

CODE_8D8691:
  LDA.B $2C,X                               ; $8D8691 |
  BEQ CODE_8D869A                           ; $8D8693 |
  JSL.L CODE_FL_8CFEF6                      ; $8D8695 |
  RTL                                       ; $8D8699 |

CODE_8D869A:
  LDA.W #$001B                              ; $8D869A |
  JSL.L push_sound_queue                    ; $8D869D |
  JML.L CODE_FL_86CA57                      ; $8D86A1 |

CODE_8D86A5:
  INC.W $19B2                               ; $8D86A5 |
  LDY.W #$0400                              ; $8D86A8 |
  JSR.W CODE_FN_8D86BD                      ; $8D86AB |
  BCC CODE_8D86B9                           ; $8D86AE |
  LDY.W #$04C0                              ; $8D86B0 |
  JSR.W CODE_FN_8D86BD                      ; $8D86B3 |
  BCC CODE_8D86B9                           ; $8D86B6 |
  RTL                                       ; $8D86B8 |

CODE_8D86B9:
  JML.L CODE_JL_85F69F                      ; $8D86B9 |

CODE_FN_8D86BD:
  LDA.W $0018,Y                             ; $8D86BD |
  CMP.W #$0002                              ; $8D86C0 |
  BNE CODE_8D86F4                           ; $8D86C3 |
  LDA.W $0092,Y                             ; $8D86C5 |
  AND.W #$0080                              ; $8D86C8 |
  BEQ CODE_8D86F4                           ; $8D86CB |
  LDA.W $001A,Y                             ; $8D86CD |
  CMP.W #$0001                              ; $8D86D0 |
  BNE CODE_8D86F4                           ; $8D86D3 |
  LDA.B $09,X                               ; $8D86D5 |
  CLC                                       ; $8D86D7 |
  ADC.W #$0008                              ; $8D86D8 |
  SEC                                       ; $8D86DB |
  SBC.W $0009,Y                             ; $8D86DC |
  CMP.W #$0010                              ; $8D86DF |
  BCS CODE_8D86F4                           ; $8D86E2 |
  LDA.B $0D,X                               ; $8D86E4 |
  CLC                                       ; $8D86E6 |
  ADC.W #$0008                              ; $8D86E7 |
  SEC                                       ; $8D86EA |
  SBC.W $000D,Y                             ; $8D86EB |
  CMP.W #$0010                              ; $8D86EE |
  BCS CODE_8D86F4                           ; $8D86F1 |
  RTS                                       ; $8D86F3 |

CODE_8D86F4:
  SEC                                       ; $8D86F4 |
  RTS                                       ; $8D86F5 |

CODE_8D86F6:
  JSL.L CODE_FL_86C424                      ; $8D86F6 |
  PHX                                       ; $8D86FA |
  ASL A                                     ; $8D86FB |
  TAX                                       ; $8D86FC |
  LDA.L PTR16_8D8707,X                      ; $8D86FD |
  PLX                                       ; $8D8701 |
  STA.B $00                                 ; $8D8702 |
  JMP.W ($0000)                             ; $8D8704 |

PTR16_8D8707:
  dw CODE_8D870D                            ; $8D8707 |
  dw CODE_8D875F                            ; $8D8709 |
  dw CODE_8D87B1                            ; $8D870B |

CODE_8D870D:
  LDA.W #$8100                              ; $8D870D |
  STA.B $22,X                               ; $8D8710 |
  LDA.W #$4600                              ; $8D8712 |
  STA.B $4E,X                               ; $8D8715 |
  JSL.L CODE_FL_86C7A5                      ; $8D8717 |
  LDY.W #$0022                              ; $8D871B |
  STY.B $3A,X                               ; $8D871E |

CODE_8D8720:
  TYA                                       ; $8D8720 |
  STA.W $1CAE,Y                             ; $8D8721 |
  DEY                                       ; $8D8724 |
  DEY                                       ; $8D8725 |
  BPL CODE_8D8720                           ; $8D8726 |
  LDA.W #$0020                              ; $8D8728 |
  STA.B $08                                 ; $8D872B |

CODE_8D872D:
  LDA.W #$0011                              ; $8D872D |
  JSL.L CODE_FL_86957C                      ; $8D8730 |
  ASL A                                     ; $8D8734 |
  CLC                                       ; $8D8735 |
  ADC.W #$1CAE                              ; $8D8736 |
  STA.B $0A                                 ; $8D8739 |
  LDA.W #$0011                              ; $8D873B |
  JSL.L CODE_FL_86957C                      ; $8D873E |
  ASL A                                     ; $8D8742 |
  CLC                                       ; $8D8743 |
  ADC.W #$1CAE                              ; $8D8744 |
  STA.B $0C                                 ; $8D8747 |
  LDA.B ($0C)                               ; $8D8749 |
  PHA                                       ; $8D874B |
  LDA.B ($0A)                               ; $8D874C |
  STA.B ($0C)                               ; $8D874E |
  PLA                                       ; $8D8750 |
  STA.B ($0A)                               ; $8D8751 |
  DEC.B $08                                 ; $8D8753 |
  BNE CODE_8D872D                           ; $8D8755 |
  LDA.W #$0020                              ; $8D8757 |
  STA.B $2C,X                               ; $8D875A |
  INC.B $1A,X                               ; $8D875C |
  RTL                                       ; $8D875E |

CODE_8D875F:
  JSL.L CODE_FL_86C70D                      ; $8D875F |
  LDY.B $3A,X                               ; $8D8763 |
  LDA.W $1CAE,Y                             ; $8D8765 |
  TAY                                       ; $8D8768 |
  LDA.W LOOSE_OP_00D563,Y                   ; $8D8769 |
  AND.W #$00FF                              ; $8D876C |
  ASL A                                     ; $8D876F |
  SEC                                       ; $8D8770 |
  SBC.W $1662                               ; $8D8771 |
  STA.B $3C,X                               ; $8D8774 |
  LDA.W CODE_00D564,Y                       ; $8D8776 |
  AND.W #$00FF                              ; $8D8779 |
  ASL A                                     ; $8D877C |
  SEC                                       ; $8D877D |
  SBC.W $1672                               ; $8D877E |
  STA.B $3E,X                               ; $8D8781 |
  LDA.W #$0327                              ; $8D8783 |
  JSL.L CODE_FL_86C9C2                      ; $8D8786 |
  BCS CODE_8D87A3                           ; $8D878A |
  LDA.W #$8100                              ; $8D878C |
  STA.W $0022,Y                             ; $8D878F |
  STA.W $0014,Y                             ; $8D8792 |
  LDA.B $3C,X                               ; $8D8795 |
  STA.W $0009,Y                             ; $8D8797 |
  LDA.B $3E,X                               ; $8D879A |
  STA.W $000D,Y                             ; $8D879C |
  JSL.L CODE_FL_86C7C4                      ; $8D879F |

CODE_8D87A3:
  LDA.W #$000C                              ; $8D87A3 |
  STA.B $2C,X                               ; $8D87A6 |
  DEC.B $3A,X                               ; $8D87A8 |
  DEC.B $3A,X                               ; $8D87AA |
  BPL CODE_8D87B0                           ; $8D87AC |
  INC.B $1A,X                               ; $8D87AE |

CODE_8D87B0:
  RTL                                       ; $8D87B0 |

CODE_8D87B1:
  RTL                                       ; $8D87B1 |

CODE_8D87B2:
  JSL.L CODE_FL_86C412                      ; $8D87B2 |
  PHX                                       ; $8D87B6 |
  ASL A                                     ; $8D87B7 |
  TAX                                       ; $8D87B8 |
  LDA.L PTR16_8D87C3,X                      ; $8D87B9 |
  PLX                                       ; $8D87BD |
  STA.B $00                                 ; $8D87BE |
  JMP.W ($0000)                             ; $8D87C0 |

PTR16_8D87C3:
  dw CODE_8D87C9                            ; $8D87C3 |
  dw CODE_8D87E6                            ; $8D87C5 |
  dw CODE_8D87F0                            ; $8D87C7 |

CODE_8D87C9:
  LDA.W #$0100                              ; $8D87C9 |
  STA.B $22,X                               ; $8D87CC |
  LDA.W #$901F                              ; $8D87CE |
  JSL.L CODE_FL_86CAEE                      ; $8D87D1 |
  INC.B $1A,X                               ; $8D87D5 |
  LDA.B $0D,X                               ; $8D87D7 |
  CMP.W #$00D0                              ; $8D87D9 |
  BCC CODE_8D87DF                           ; $8D87DC |
  RTL                                       ; $8D87DE |

CODE_8D87DF:
  LDA.W #$00FC                              ; $8D87DF |
  JML.L CODE_FL_8089BD                      ; $8D87E2 |

CODE_8D87E6:
  LDA.W #$0154                              ; $8D87E6 |
  JSL.L CODE_FL_858252                      ; $8D87E9 |
  INC.B $1A,X                               ; $8D87ED |
  RTL                                       ; $8D87EF |

CODE_8D87F0:
  LDA.B $20,X                               ; $8D87F0 |
  BEQ CODE_8D8827                           ; $8D87F2 |
  DEC A                                     ; $8D87F4 |
  BNE CODE_8D8826                           ; $8D87F5 |
  LDA.B $00,X                               ; $8D87F7 |
  CMP.W #$3968                              ; $8D87F9 |
  BNE CODE_8D8826                           ; $8D87FC |
  LDY.W #$0620                              ; $8D87FE |
  LDA.W #$001D                              ; $8D8801 |
  JSL.L CODE_FL_8D882B                      ; $8D8804 |
  LDY.W #$0670                              ; $8D8808 |
  LDA.W #$002D                              ; $8D880B |
  JSL.L CODE_FL_8D882B                      ; $8D880E |
  LDY.W #$08F0                              ; $8D8812 |
  LDA.W #$004D                              ; $8D8815 |
  JSL.L CODE_FL_8D882B                      ; $8D8818 |
  LDY.W #$0940                              ; $8D881C |
  LDA.W #$008D                              ; $8D881F |
  JSL.L CODE_FL_8D882B                      ; $8D8822 |

CODE_8D8826:
  RTL                                       ; $8D8826 |

CODE_8D8827:
  JML.L CODE_FL_86CA36                      ; $8D8827 |

CODE_FL_8D882B:
  STA.B $00                                 ; $8D882B |
  LDA.W $0018,Y                             ; $8D882D |
  CMP.W #$01C5                              ; $8D8830 |
  BNE CODE_8D8869                           ; $8D8833 |
  LDA.W $001A,Y                             ; $8D8835 |
  CMP.W #$0029                              ; $8D8838 |
  BCS CODE_8D8869                           ; $8D883B |
  SEC                                       ; $8D883D |
  LDA.W $0009,Y                             ; $8D883E |
  SBC.B $09,X                               ; $8D8841 |
  BPL CODE_8D8849                           ; $8D8843 |
  EOR.W #$FFFF                              ; $8D8845 |
  INC A                                     ; $8D8848 |

CODE_8D8849:
  CMP.W #$0010                              ; $8D8849 |
  BPL CODE_8D8869                           ; $8D884C |
  SEC                                       ; $8D884E |
  LDA.W $000D,Y                             ; $8D884F |
  SBC.B $0D,X                               ; $8D8852 |
  BPL CODE_8D885A                           ; $8D8854 |
  EOR.W #$FFFF                              ; $8D8856 |
  INC A                                     ; $8D8859 |

CODE_8D885A:
  CMP.W #$0010                              ; $8D885A |
  BPL CODE_8D8869                           ; $8D885D |
  LDA.B $00                                 ; $8D885F |
  ORA.L $7E7C04                             ; $8D8861 |
  STA.L $7E7C04                             ; $8D8865 |

CODE_8D8869:
  RTL                                       ; $8D8869 |

CODE_8D886A:
  LDA.B $1A,X                               ; $8D886A |
  CMP.W #$0004                              ; $8D886C |
  BCS CODE_8D8878                           ; $8D886F |
  LDA.W #$0003                              ; $8D8871 |
  JSL.L CODE_FL_85B065                      ; $8D8874 |

CODE_8D8878:
  JSL.L CODE_FL_8CFD8F                      ; $8D8878 |
  PHX                                       ; $8D887C |
  ASL A                                     ; $8D887D |
  TAX                                       ; $8D887E |
  LDA.L PTR16_8D8889,X                      ; $8D887F |
  PLX                                       ; $8D8883 |
  STA.B $00                                 ; $8D8884 |
  JMP.W ($0000)                             ; $8D8886 |

PTR16_8D8889:
  dw CODE_8D88A1                            ; $8D8889 |
  dw CODE_8D88E1                            ; $8D888B |
  dw CODE_8D8907                            ; $8D888D |
  dw CODE_8D8922                            ; $8D888F |
  dw CODE_8D8938                            ; $8D8891 |
  dw CODE_8D895E                            ; $8D8893 |
  dw CODE_8D8964                            ; $8D8895 |
  dw CODE_8D89BD                            ; $8D8897 |
  dw CODE_8D89D0                            ; $8D8899 |
  dw CODE_8D89FA                            ; $8D889B |
  dw CODE_8D8A17                            ; $8D889D |
  dw CODE_8D8A2C                            ; $8D889F |

CODE_8D88A1:
  LDA.W #$0701                              ; $8D88A1 |
  JSL.L CODE_FL_80A634                      ; $8D88A4 |
  BCC CODE_8D88AE                           ; $8D88A8 |
  JML.L CODE_FL_86CA57                      ; $8D88AA |

CODE_8D88AE:
  LDA.W #$8000                              ; $8D88AE |
  STA.B $22,X                               ; $8D88B1 |
  JSL.L CODE_FL_86C7A5                      ; $8D88B3 |
  JSL.L CODE_FL_8CFF15                      ; $8D88B7 |
  JSL.L CODE_FL_86C444                      ; $8D88BB |
  LDA.W #$FFC0                              ; $8D88BF |
  JSL.L CODE_FL_86C71F                      ; $8D88C2 |
  LDA.W #$1009                              ; $8D88C6 |
  JSL.L CODE_FL_86CAEE                      ; $8D88C9 |
  LDA.W #$0100                              ; $8D88CD |
  JSL.L CODE_FL_8CFE19                      ; $8D88D0 |
  JSL.L CODE_FL_85B01E                      ; $8D88D4 |
  LDA.W #$0011                              ; $8D88D8 |
  STA.B $4E,X                               ; $8D88DB |
  JML.L CODE_FL_86C63A                      ; $8D88DD |

CODE_8D88E1:
  JSL.L CODE_FL_85E05F                      ; $8D88E1 |
  BCS CODE_8D88F2                           ; $8D88E5 |
  LDA.W #$FFC0                              ; $8D88E7 |
  JSL.L CODE_FL_8CFDBB                      ; $8D88EA |
  JSL.L CODE_FL_86C70D                      ; $8D88EE |

CODE_8D88F2:
  LDA.W #$0040                              ; $8D88F2 |
  JSL.L CODE_FL_8CFE19                      ; $8D88F5 |
  STZ.B $26,X                               ; $8D88F9 |
  STZ.B $28,X                               ; $8D88FB |
  STZ.B $1E,X                               ; $8D88FD |
  LDA.W #$315A                              ; $8D88FF |
  STA.B $00,X                               ; $8D8902 |
  INC.B $1A,X                               ; $8D8904 |
  RTL                                       ; $8D8906 |

CODE_8D8907:
  JSL.L CODE_FL_86C70D                      ; $8D8907 |
  LDA.W #$FFD8                              ; $8D890B |
  JSL.L CODE_FL_8CFE29                      ; $8D890E |
  LDA.W #$0100                              ; $8D8912 |
  JSL.L CODE_FL_8CFE19                      ; $8D8915 |
  DEC.B $1A,X                               ; $8D8919 |
  LDA.W #$1009                              ; $8D891B |
  JML.L CODE_FL_86CAEE                      ; $8D891E |

CODE_8D8922:
  LDA.B $4E,X                               ; $8D8922 |
  JSL.L CODE_FL_85B4B4                      ; $8D8924 |
  LDA.W #$01CA                              ; $8D8928 |
  STA.B $18,X                               ; $8D892B |
  LDA.W #$0004                              ; $8D892D |
  STA.B $1A,X                               ; $8D8930 |
  TDC                                       ; $8D8932 |
  STA.L $7E7C42                             ; $8D8933 |
  RTL                                       ; $8D8937 |

CODE_8D8938:
  JSL.L CODE_FL_8098FD                      ; $8D8938 |
  BCS CODE_8D893F                           ; $8D893C |
  RTL                                       ; $8D893E |

CODE_8D893F:
  LDA.B $4E,X                               ; $8D893F |
  JSL.L CODE_FL_85B4E0                      ; $8D8941 |
  LDA.L $7E7C42                             ; $8D8945 |
  DEC A                                     ; $8D8949 |
  BEQ CODE_8D894D                           ; $8D894A |
  RTL                                       ; $8D894C |

CODE_8D894D:
  STZ.B $26,X                               ; $8D894D |
  STZ.B $28,X                               ; $8D894F |
  STZ.B $1E,X                               ; $8D8951 |
  STZ.B $34,X                               ; $8D8953 |
  LDA.W #$0005                              ; $8D8955 |
  STA.B $1A,X                               ; $8D8958 |
  JML.L CODE_FL_86C486                      ; $8D895A |

CODE_8D895E:
  JSR.W CODE_FN_8D9CB5                      ; $8D895E |
  INC.B $1A,X                               ; $8D8961 |
  RTL                                       ; $8D8963 |

CODE_8D8964:
  JSR.W CODE_FN_8D9D79                      ; $8D8964 |
  BCS CODE_8D896E                           ; $8D8967 |
  JSR.W CODE_FN_8D9DE7                      ; $8D8969 |
  BEQ CODE_8D89B8                           ; $8D896C |

CODE_8D896E:
  JSL.L CODE_FL_8CFE4B                      ; $8D896E |
  LDA.B $1A                                 ; $8D8972 |
  CMP.B $46,X                               ; $8D8974 |
  BEQ CODE_8D897F                           ; $8D8976 |
  LDA.W #$1062                              ; $8D8978 |
  JSL.L CODE_FL_8CFE36                      ; $8D897B |

CODE_8D897F:
  LDA.B $1A                                 ; $8D897F |
  STA.B $46,X                               ; $8D8981 |
  JSR.W CODE_FN_8D9DD2                      ; $8D8983 |
  JSL.L CODE_FL_86C489                      ; $8D8986 |
  LDA.B $3C,X                               ; $8D898A |
  CMP.W #$0480                              ; $8D898C |
  BCC CODE_8D89B7                           ; $8D898F |
  LDA.W #$0001                              ; $8D8991 |
  STA.B $E4                                 ; $8D8994 |
  LDA.B ($48,X)                             ; $8D8996 |
  TAY                                       ; $8D8998 |
  LDA.W $0004,Y                             ; $8D8999 |
  ORA.W #$0020                              ; $8D899C |
  STA.W $0004,Y                             ; $8D899F |
  STY.B $44,X                               ; $8D89A2 |
  STZ.B $48,X                               ; $8D89A4 |
  STZ.B $1E,X                               ; $8D89A6 |
  LDA.W #$315A                              ; $8D89A8 |
  STA.B $00,X                               ; $8D89AB |
  LDA.W #$9444                              ; $8D89AD |
  STA.B $40,X                               ; $8D89B0 |
  LDA.W #$0008                              ; $8D89B2 |
  STA.B $1A,X                               ; $8D89B5 |

CODE_8D89B7:
  RTL                                       ; $8D89B7 |

CODE_8D89B8:
  STZ.B $1E,X                               ; $8D89B8 |
  INC.B $1A,X                               ; $8D89BA |
  RTL                                       ; $8D89BC |

CODE_8D89BD:
  JSR.W CODE_FN_8D9D79                      ; $8D89BD |
  BCS CODE_8D89C8                           ; $8D89C0 |
  JSR.W CODE_FN_8D9DE7                      ; $8D89C2 |
  BNE CODE_8D89C8                           ; $8D89C5 |
  RTL                                       ; $8D89C7 |

CODE_8D89C8:
  LDA.W #$FFFF                              ; $8D89C8 |
  STA.B $46,X                               ; $8D89CB |
  DEC.B $1A,X                               ; $8D89CD |
  RTL                                       ; $8D89CF |

CODE_8D89D0:
  LDA.B $11,X                               ; $8D89D0 |
  BEQ CODE_8D89DD                           ; $8D89D2 |
  BMI CODE_8D89DD                           ; $8D89D4 |
  LDA.W #$0010                              ; $8D89D6 |
  JML.L CODE_FL_86C831                      ; $8D89D9 |

CODE_8D89DD:
  STZ.B $11,X                               ; $8D89DD |
  TDC                                       ; $8D89DF |
  STA.W $0498                               ; $8D89E0 |
  STA.W $0558                               ; $8D89E3 |
  JSL.L CODE_FL_8098FD                      ; $8D89E6 |
  BCS CODE_8D89ED                           ; $8D89EA |
  RTL                                       ; $8D89EC |

CODE_8D89ED:
  LDA.W #$0001                              ; $8D89ED |
  STA.B $E4                                 ; $8D89F0 |
  LDA.W #$9498                              ; $8D89F2 |
  STA.B $40,X                               ; $8D89F5 |
  INC.B $1A,X                               ; $8D89F7 |
  RTL                                       ; $8D89F9 |

CODE_8D89FA:
  JSL.L CODE_FL_8098FD                      ; $8D89FA |
  BCS CODE_8D8A01                           ; $8D89FE |
  RTL                                       ; $8D8A00 |

CODE_8D8A01:
  LDA.W #$0001                              ; $8D8A01 |
  STA.B $E4                                 ; $8D8A04 |
  LDA.W #$1064                              ; $8D8A06 |
  JSL.L CODE_FL_86CAEE                      ; $8D8A09 |
  LDA.W #$0100                              ; $8D8A0D |
  STA.B $26,X                               ; $8D8A10 |
  INC.B $1A,X                               ; $8D8A12 |
  BRL CODE_FL_8D9E42                        ; $8D8A14 |

CODE_8D8A17:
  LDY.B $44,X                               ; $8D8A17 |
  LDA.W $0009,Y                             ; $8D8A19 |
  CMP.B $09,X                               ; $8D8A1C |
  BCS CODE_8D8A2B                           ; $8D8A1E |
  LDA.W $0004,Y                             ; $8D8A20 |
  AND.W #$FFDF                              ; $8D8A23 |
  STA.W $0004,Y                             ; $8D8A26 |
  INC.B $1A,X                               ; $8D8A29 |

CODE_8D8A2B:
  RTL                                       ; $8D8A2B |

CODE_8D8A2C:
  LDA.B $09,X                               ; $8D8A2C |
  CMP.W #$0108                              ; $8D8A2E |
  BCS CODE_8D8A34                           ; $8D8A31 |
  RTL                                       ; $8D8A33 |

CODE_8D8A34:
  STZ.B $E4                                 ; $8D8A34 |
  JML.L CODE_FL_86CA57                      ; $8D8A36 |

CODE_8D8A3A:
  LDA.W #$0701                              ; $8D8A3A |
  JSL.L CODE_FL_80A634                      ; $8D8A3D |
  BCC CODE_8D8A4C                           ; $8D8A41 |
  LDA.W #$019F                              ; $8D8A43 |
  STA.B $18,X                               ; $8D8A46 |
  JML.L CODE_JL_85D55C                      ; $8D8A48 |

CODE_8D8A4C:
  JML.L CODE_FL_86CA57                      ; $8D8A4C |

CODE_8D8A50:
  LDA.B $1A,X                               ; $8D8A50 |
  CMP.W #$0007                              ; $8D8A52 |
  BCS CODE_8D8A5E                           ; $8D8A55 |
  LDA.W #$0006                              ; $8D8A57 |
  JSL.L CODE_FL_85B065                      ; $8D8A5A |

CODE_8D8A5E:
  JSL.L CODE_FL_8CFD8F                      ; $8D8A5E |
  PHX                                       ; $8D8A62 |
  ASL A                                     ; $8D8A63 |
  TAX                                       ; $8D8A64 |
  LDA.L PTR16_8D8A6F,X                      ; $8D8A65 |
  PLX                                       ; $8D8A69 |
  STA.B $00                                 ; $8D8A6A |
  JMP.W ($0000)                             ; $8D8A6C |

PTR16_8D8A6F:
  dw CODE_8D8A81                            ; $8D8A6F |
  dw CODE_8D8AB2                            ; $8D8A71 |
  dw CODE_8D8AD3                            ; $8D8A73 |
  dw CODE_8D8AEB                            ; $8D8A75 |
  dw CODE_8D8AF5                            ; $8D8A77 |
  dw CODE_8D8B46                            ; $8D8A79 |
  dw CODE_8D8B5E                            ; $8D8A7B |
  dw CODE_8D8B89                            ; $8D8A7D |
  dw CODE_8D8BB3                            ; $8D8A7F |

CODE_8D8A81:
  JSR.W CODE_FN_8D9CA5                      ; $8D8A81 |
  LDA.W #$8000                              ; $8D8A84 |
  STA.B $22,X                               ; $8D8A87 |
  JSL.L CODE_FL_86C7A5                      ; $8D8A89 |
  JSL.L CODE_FL_8CFF15                      ; $8D8A8D |
  JSL.L CODE_FL_85B01E                      ; $8D8A91 |
  LDA.W #$0112                              ; $8D8A95 |
  STA.B $4E,X                               ; $8D8A98 |
  JSL.L CODE_FL_86C63A                      ; $8D8A9A |
  LDA.B $04,X                               ; $8D8A9E |
  ORA.W #$1818                              ; $8D8AA0 |
  STA.B $04,X                               ; $8D8AA3 |
  LDA.W #$0702                              ; $8D8AA5 |
  JSL.L CODE_FL_80A634                      ; $8D8AA8 |
  BCC CODE_8D8AB1                           ; $8D8AAC |
  JMP.W CODE_JP_8D8BBE                      ; $8D8AAE |

CODE_8D8AB1:
  RTL                                       ; $8D8AB1 |

CODE_8D8AB2:
  STZ.B $26,X                               ; $8D8AB2 |
  STZ.B $28,X                               ; $8D8AB4 |
  STZ.B $1E,X                               ; $8D8AB6 |
  LDA.W #$0702                              ; $8D8AB8 |
  JSL.L CODE_FL_80A634                      ; $8D8ABB |
  BCC CODE_8D8AC4                           ; $8D8ABF |
  JMP.W CODE_JP_8D8BBE                      ; $8D8AC1 |

CODE_8D8AC4:
  LDA.W #$3126                              ; $8D8AC4 |
  STA.B $00,X                               ; $8D8AC7 |
  LDA.W #$0040                              ; $8D8AC9 |
  JSL.L CODE_FL_8CFE19                      ; $8D8ACC |
  INC.B $1A,X                               ; $8D8AD0 |
  RTL                                       ; $8D8AD2 |

CODE_8D8AD3:
  LDA.B $2C,X                               ; $8D8AD3 |
  BEQ CODE_8D8AE1                           ; $8D8AD5 |
  AND.W #$001F                              ; $8D8AD7 |
  BNE CODE_8D8AE0                           ; $8D8ADA |
  JSL.L CODE_FL_86C47E                      ; $8D8ADC |

CODE_8D8AE0:
  RTL                                       ; $8D8AE0 |

CODE_8D8AE1:
  LDA.W #$0010                              ; $8D8AE1 |
  JSL.L CODE_FL_8CFE19                      ; $8D8AE4 |
  INC.B $1A,X                               ; $8D8AE8 |
  RTL                                       ; $8D8AEA |

CODE_8D8AEB:
  LDA.B $2C,X                               ; $8D8AEB |
  BNE CODE_8D8AF4                           ; $8D8AED |
  LDA.W #$0001                              ; $8D8AEF |
  STA.B $1A,X                               ; $8D8AF2 |

CODE_8D8AF4:
  RTL                                       ; $8D8AF4 |

CODE_8D8AF5:
  JSL.L CODE_FL_85E05F                      ; $8D8AF5 |
  BCS CODE_8D8B27                           ; $8D8AF9 |
  JSR.W CODE_FN_8D8B36                      ; $8D8AFB |
  STZ.B $00                                 ; $8D8AFE |
  LDA.B $3A,X                               ; $8D8B00 |
  SEC                                       ; $8D8B02 |
  SBC.W $1662                               ; $8D8B03 |
  SEC                                       ; $8D8B06 |
  SBC.B $09,X                               ; $8D8B07 |
  BPL CODE_8D8B11                           ; $8D8B09 |
  EOR.W #$FFFF                              ; $8D8B0B |
  INC A                                     ; $8D8B0E |
  INC.B $00                                 ; $8D8B0F |

CODE_8D8B11:
  CMP.W #$0018                              ; $8D8B11 |
  BCS CODE_8D8B17                           ; $8D8B14 |
  RTL                                       ; $8D8B16 |

CODE_8D8B17:
  LDY.W #$FFC0                              ; $8D8B17 |
  LDA.B $00                                 ; $8D8B1A |
  BNE CODE_8D8B21                           ; $8D8B1C |
  LDY.W #$0040                              ; $8D8B1E |

CODE_8D8B21:
  STY.B $26,X                               ; $8D8B21 |
  JML.L CODE_FL_86C4F1                      ; $8D8B23 |

CODE_8D8B27:
  LDA.B $26,X                               ; $8D8B27 |
  STA.B $3C,X                               ; $8D8B29 |
  STZ.B $26,X                               ; $8D8B2B |
  INC.B $1A,X                               ; $8D8B2D |
  LDA.W #$0040                              ; $8D8B2F |
  JML.L CODE_FL_8CFE19                      ; $8D8B32 |

CODE_FN_8D8B36:
  JSL.L CODE_FL_8CFD78                      ; $8D8B36 |
  CMP.W #$FDC0                              ; $8D8B3A |
  BNE CODE_8D8B45                           ; $8D8B3D |
  LDA.W #$0200                              ; $8D8B3F |
  STA.B $2A,X                               ; $8D8B42 |
  TDC                                       ; $8D8B44 |

CODE_8D8B45:
  RTS                                       ; $8D8B45 |

CODE_8D8B46:
  JSR.W CODE_FN_8D8B36                      ; $8D8B46 |
  JSL.L CODE_FL_86C70D                      ; $8D8B49 |
  JSL.L CODE_FL_85E05F                      ; $8D8B4D |
  BCC CODE_8D8B54                           ; $8D8B51 |
  RTL                                       ; $8D8B53 |

CODE_8D8B54:
  LDA.B $3C,X                               ; $8D8B54 |
  STA.B $26,X                               ; $8D8B56 |
  LDA.W #$0004                              ; $8D8B58 |
  STA.B $1A,X                               ; $8D8B5B |
  RTL                                       ; $8D8B5D |

CODE_8D8B5E:
  LDA.W #$0001                              ; $8D8B5E |
  STA.B $E4                                 ; $8D8B61 |
  LDA.W #$0702                              ; $8D8B63 |
  JSL.L CODE_FL_80A634                      ; $8D8B66 |
  BCC CODE_8D8B72                           ; $8D8B6A |
  JSR.W CODE_FN_8D8B36                      ; $8D8B6C |
  BEQ CODE_8D8B72                           ; $8D8B6F |
  RTL                                       ; $8D8B71 |

CODE_8D8B72:
  STZ.B $11,X                               ; $8D8B72 |
  STZ.B $26,X                               ; $8D8B74 |
  STZ.B $2A,X                               ; $8D8B76 |
  LDA.B $4E,X                               ; $8D8B78 |
  JSL.L CODE_FL_85B4B4                      ; $8D8B7A |
  LDA.W #$01CD                              ; $8D8B7E |
  STA.B $18,X                               ; $8D8B81 |
  LDA.W #$0007                              ; $8D8B83 |
  STA.B $1A,X                               ; $8D8B86 |
  RTL                                       ; $8D8B88 |

CODE_8D8B89:
  JSL.L CODE_FL_8098FD                      ; $8D8B89 |
  BCS CODE_8D8B90                           ; $8D8B8D |
  RTL                                       ; $8D8B8F |

CODE_8D8B90:
  LDA.B $4E,X                               ; $8D8B90 |
  JSL.L CODE_FL_85B4E0                      ; $8D8B92 |
  LDA.L $7E7C42                             ; $8D8B96 |
  DEC A                                     ; $8D8B9A |
  BEQ CODE_8D8B9E                           ; $8D8B9B |
  RTL                                       ; $8D8B9D |

CODE_8D8B9E:
  TDC                                       ; $8D8B9E |
  STA.L $7E7C42                             ; $8D8B9F |
  LDA.W #$0001                              ; $8D8BA3 |
  STA.B $E4                                 ; $8D8BA6 |
  LDA.W #$A5DD                              ; $8D8BA8 |
  STA.B $40,X                               ; $8D8BAB |
  LDA.W #$0008                              ; $8D8BAD |
  STA.B $1A,X                               ; $8D8BB0 |
  RTL                                       ; $8D8BB2 |

CODE_8D8BB3:
  JSL.L CODE_FL_8098FD                      ; $8D8BB3 |
  BCS CODE_8D8BBA                           ; $8D8BB7 |
  RTL                                       ; $8D8BB9 |

CODE_8D8BBA:
  JSL.L CODE_FL_8D9E42                      ; $8D8BBA |

CODE_JP_8D8BBE:
  LDA.W #$0040                              ; $8D8BBE |
  STA.B $4C,X                               ; $8D8BC1 |
  LDA.W #$0200                              ; $8D8BC3 |
  STA.B $2A,X                               ; $8D8BC6 |
  LDA.W #$A50A                              ; $8D8BC8 |
  STA.B $40,X                               ; $8D8BCB |
  LDA.W #$FFC0                              ; $8D8BCD |
  JSL.L CODE_FL_86C71F                      ; $8D8BD0 |
  LDA.W #$0004                              ; $8D8BD4 |
  STA.B $1A,X                               ; $8D8BD7 |
  LDA.W #$1003                              ; $8D8BD9 |
  JML.L CODE_FL_86CAEE                      ; $8D8BDC |

CODE_8D8BE0:
  LDA.B $1A,X                               ; $8D8BE0 |
  CMP.W #$0003                              ; $8D8BE2 |
  BCS CODE_8D8BEE                           ; $8D8BE5 |
  LDA.W #$0002                              ; $8D8BE7 |
  JSL.L CODE_FL_85B065                      ; $8D8BEA |

CODE_8D8BEE:
  JSL.L CODE_FL_8CFD8F                      ; $8D8BEE |
  PHX                                       ; $8D8BF2 |
  ASL A                                     ; $8D8BF3 |
  TAX                                       ; $8D8BF4 |
  LDA.L PTR16_8D8BFF,X                      ; $8D8BF5 |
  PLX                                       ; $8D8BF9 |
  STA.B $00                                 ; $8D8BFA |
  JMP.W ($0000)                             ; $8D8BFC |

PTR16_8D8BFF:
  dw CODE_8D8C0F                            ; $8D8BFF |
  dw CODE_8D8C30                            ; $8D8C01 |
  dw CODE_8D8C31                            ; $8D8C03 |
  dw CODE_8D8C42                            ; $8D8C05 |
  dw CODE_8D8C85                            ; $8D8C07 |
  dw CODE_8D8CAE                            ; $8D8C09 |
  dw CODE_8D8D02                            ; $8D8C0B |
  dw CODE_8D8D16                            ; $8D8C0D |

CODE_8D8C0F:
  JSL.L CODE_FL_86C7A5                      ; $8D8C0F |
  JSL.L CODE_FL_8CFF15                      ; $8D8C13 |
  JSL.L CODE_FL_85B01E                      ; $8D8C17 |
  LDA.W #$0114                              ; $8D8C1B |
  STA.B $4E,X                               ; $8D8C1E |
  JSL.L CODE_FL_86C63A                      ; $8D8C20 |

CODE_JL_8D8C24:
  STZ.B $1E,X                               ; $8D8C24 |
  LDA.W #$30A6                              ; $8D8C26 |
  STA.B $00,X                               ; $8D8C29 |
  LDA.W #$0001                              ; $8D8C2B |
  STA.B $1A,X                               ; $8D8C2E |

CODE_8D8C30:
  RTL                                       ; $8D8C30 |

CODE_8D8C31:
  LDA.B $4E,X                               ; $8D8C31 |
  JSL.L CODE_FL_85B4B4                      ; $8D8C33 |
  LDA.W #$01E0                              ; $8D8C37 |
  STA.B $18,X                               ; $8D8C3A |
  LDA.W #$0003                              ; $8D8C3C |
  STA.B $1A,X                               ; $8D8C3F |
  RTL                                       ; $8D8C41 |

CODE_8D8C42:
  JSL.L CODE_FL_8098FD                      ; $8D8C42 |
  BCS CODE_8D8C49                           ; $8D8C46 |
  RTL                                       ; $8D8C48 |

CODE_8D8C49:
  LDA.B $4E,X                               ; $8D8C49 |
  JSL.L CODE_FL_85B4E0                      ; $8D8C4B |
  LDA.L $7E7C42                             ; $8D8C4F |
  DEC A                                     ; $8D8C53 |
  BEQ CODE_8D8C59                           ; $8D8C54 |
  BRL CODE_JL_8D8C24                        ; $8D8C56 |

CODE_8D8C59:
  TDC                                       ; $8D8C59 |
  STA.L $7E7C42                             ; $8D8C5A |
  LDA.W #$30B6                              ; $8D8C5E |
  STA.B $00,X                               ; $8D8C61 |
  LDA.W #$0004                              ; $8D8C63 |
  STA.B $1A,X                               ; $8D8C66 |
  LDA.W #$0001                              ; $8D8C68 |
  STA.B $E4                                 ; $8D8C6B |
  LDA.W #$003F                              ; $8D8C6D |
  STA.W $1FDE                               ; $8D8C70 |
  LDA.W #$0000                              ; $8D8C73 |
  STA.W $1FDC                               ; $8D8C76 |
  LDA.W #$0040                              ; $8D8C79 |
  STA.B $2C,X                               ; $8D8C7C |
  LDA.W #$006C                              ; $8D8C7E |
  JML.L CODE_FL_8089BD                      ; $8D8C81 |

CODE_8D8C85:
  LDA.W $1C38                               ; $8D8C85 |
  AND.W #$0001                              ; $8D8C88 |
  BEQ CODE_8D8C90                           ; $8D8C8B |
  LDA.W #$FFFF                              ; $8D8C8D |

CODE_8D8C90:
  JSL.L CODE_FL_808D48                      ; $8D8C90 |
  JSL.L CODE_FL_86C70D                      ; $8D8C94 |
  STZ.W $1FDE                               ; $8D8C98 |
  INC.B $1A,X                               ; $8D8C9B |
  LDA.W #$0200                              ; $8D8C9D |
  STA.B $2A,X                               ; $8D8CA0 |
  LDA.W #$0040                              ; $8D8CA2 |
  STA.B $4C,X                               ; $8D8CA5 |
  JSR.W CODE_FN_8D8D53                      ; $8D8CA7 |
  STZ.W $003C,X                             ; $8D8CAA |
  RTL                                       ; $8D8CAD |

CODE_8D8CAE:
  JSR.W CODE_FN_8D8CD6                      ; $8D8CAE |
  JSL.L CODE_FL_8CFD78                      ; $8D8CB1 |
  CMP.W #$FDC0                              ; $8D8CB5 |
  BNE CODE_8D8CC4                           ; $8D8CB8 |
  JSR.W CODE_FN_8D8DBE                      ; $8D8CBA |
  BCS CODE_8D8CC5                           ; $8D8CBD |
  LDA.W #$0200                              ; $8D8CBF |
  STA.B $2A,X                               ; $8D8CC2 |

CODE_8D8CC4:
  RTL                                       ; $8D8CC4 |

CODE_8D8CC5:
  STZ.B $2A,X                               ; $8D8CC5 |
  STZ.B $E4                                 ; $8D8CC7 |
  INC.B $1A,X                               ; $8D8CC9 |
  LDA.W #$AC2D                              ; $8D8CCB |
  STA.B $40,X                               ; $8D8CCE |
  LDA.W #$30A6                              ; $8D8CD0 |
  STA.B $00,X                               ; $8D8CD3 |
  RTL                                       ; $8D8CD5 |

CODE_FN_8D8CD6:
  LDA.B $3C,X                               ; $8D8CD6 |
  BEQ CODE_8D8CDD                           ; $8D8CD8 |
  DEC.B $3C,X                               ; $8D8CDA |
  RTS                                       ; $8D8CDC |

CODE_8D8CDD:
  LDA.W #$000C                              ; $8D8CDD |
  STA.B $3C,X                               ; $8D8CE0 |
  LDA.W #$00A4                              ; $8D8CE2 |
  JSL.L CODE_FL_8089BD                      ; $8D8CE5 |
  LDA.B $3A,X                               ; $8D8CE9 |
  BEQ CODE_8D8CF0                           ; $8D8CEB |
  DEC.B $3A,X                               ; $8D8CED |
  RTS                                       ; $8D8CEF |

CODE_8D8CF0:
  LDA.W #$000C                              ; $8D8CF0 |
  JSL.L CODE_FL_8089BD                      ; $8D8CF3 |
  LDA.B $86                                 ; $8D8CF7 |
  AND.W #$0001                              ; $8D8CF9 |
  ADC.W #$0003                              ; $8D8CFC |
  STA.B $3A,X                               ; $8D8CFF |
  RTS                                       ; $8D8D01 |

CODE_8D8D02:
  JSL.L CODE_FL_8098FD                      ; $8D8D02 |
  BCS CODE_8D8D09                           ; $8D8D06 |
  RTL                                       ; $8D8D08 |

CODE_8D8D09:
  LDA.W #$0001                              ; $8D8D09 |
  STA.B $E4                                 ; $8D8D0C |
  LDA.W #$AC76                              ; $8D8D0E |
  STA.B $40,X                               ; $8D8D11 |
  INC.B $1A,X                               ; $8D8D13 |
  RTL                                       ; $8D8D15 |

CODE_8D8D16:
  JSL.L CODE_FL_8098FD                      ; $8D8D16 |
  BCS CODE_8D8D1D                           ; $8D8D1A |
  RTL                                       ; $8D8D1C |

CODE_8D8D1D:
  LDA.W #$0001                              ; $8D8D1D |
  STA.B $1A,X                               ; $8D8D20 |
  LDA.W #$AB4A                              ; $8D8D22 |
  STA.B $40,X                               ; $8D8D25 |
  LDA.W #$01F1                              ; $8D8D27 |
  JSL.L CODE_FL_86C9A7                      ; $8D8D2A |
  BCS CODE_8D8D50                           ; $8D8D2E |
  LDA.W #$0158                              ; $8D8D30 |
  SEC                                       ; $8D8D33 |
  SBC.W $1662                               ; $8D8D34 |
  STA.W $0009,Y                             ; $8D8D37 |
  LDA.W #$0194                              ; $8D8D3A |
  SEC                                       ; $8D8D3D |
  SBC.W $1672                               ; $8D8D3E |
  STA.W $000D,Y                             ; $8D8D41 |
  LDA.W #$0600                              ; $8D8D44 |
  STA.W $004E,Y                             ; $8D8D47 |
  LDA.W #$8000                              ; $8D8D4A |
  STA.W $0022,Y                             ; $8D8D4D |

CODE_8D8D50:
  BRL CODE_FL_8D9E42                        ; $8D8D50 |

CODE_FN_8D8D53:
  LDA.W #$0005                              ; $8D8D53 |
  STA.W $1CF0                               ; $8D8D56 |
  STZ.W $1CEE                               ; $8D8D59 |
  PHX                                       ; $8D8D5C |
  LDX.W $1B70                               ; $8D8D5D |

CODE_8D8D60:
  LDA.B $18,X                               ; $8D8D60 |
  CMP.W #$01E1                              ; $8D8D62 |
  BNE CODE_8D8D78                           ; $8D8D65 |
  LDA.W #$0007                              ; $8D8D67 |
  STA.B $1A,X                               ; $8D8D6A |
  STZ.B $2A,X                               ; $8D8D6C |
  STZ.B $11,X                               ; $8D8D6E |
  INC.W $1CEE                               ; $8D8D70 |
  DEC.W $1CF0                               ; $8D8D73 |
  BEQ CODE_8D8DBD                           ; $8D8D76 |

CODE_8D8D78:
  LDA.B $16,X                               ; $8D8D78 |
  TAX                                       ; $8D8D7A |
  BNE CODE_8D8D60                           ; $8D8D7B |
  PLX                                       ; $8D8D7D |

CODE_8D8D7E:
  LDA.W #$01E1                              ; $8D8D7E |
  JSL.L CODE_FL_86C9A4                      ; $8D8D81 |
  BCS CODE_8D8DB8                           ; $8D8D85 |
  PHX                                       ; $8D8D87 |
  TYX                                       ; $8D8D88 |
  LDA.W $1CEE                               ; $8D8D89 |
  ASL A                                     ; $8D8D8C |
  ASL A                                     ; $8D8D8D |
  TAY                                       ; $8D8D8E |
  LDA.W LOOSE_OP_00D58F,Y                   ; $8D8D8F |
  SEC                                       ; $8D8D92 |
  SBC.W $1662                               ; $8D8D93 |
  STA.B $09,X                               ; $8D8D96 |
  LDA.W LOOSE_OP_00D591,Y                   ; $8D8D98 |
  SEC                                       ; $8D8D9B |
  SBC.W $1672                               ; $8D8D9C |
  STA.B $0D,X                               ; $8D8D9F |
  LDA.W #$0007                              ; $8D8DA1 |
  STA.B $1A,X                               ; $8D8DA4 |
  LDA.W #$1600                              ; $8D8DA6 |
  STA.B $4E,X                               ; $8D8DA9 |
  JSL.L CODE_FL_86C7A5                      ; $8D8DAB |
  LDA.W #$8000                              ; $8D8DAF |
  STA.B $22,X                               ; $8D8DB2 |
  PLX                                       ; $8D8DB4 |
  INC.W $1CEE                               ; $8D8DB5 |

CODE_8D8DB8:
  DEC.W $1CF0                               ; $8D8DB8 |
  BNE CODE_8D8D7E                           ; $8D8DBB |

CODE_8D8DBD:
  RTS                                       ; $8D8DBD |

CODE_FN_8D8DBE:
  PHX                                       ; $8D8DBE |
  LDX.W $1B70                               ; $8D8DBF |

CODE_8D8DC2:
  LDA.B $18,X                               ; $8D8DC2 |
  CMP.W #$01E1                              ; $8D8DC4 |
  BNE CODE_8D8DD0                           ; $8D8DC7 |
  LDA.B $1A,X                               ; $8D8DC9 |
  CMP.W #$0007                              ; $8D8DCB |
  BCS CODE_8D8DD8                           ; $8D8DCE |

CODE_8D8DD0:
  LDA.B $16,X                               ; $8D8DD0 |
  TAX                                       ; $8D8DD2 |
  BNE CODE_8D8DC2                           ; $8D8DD3 |
  PLX                                       ; $8D8DD5 |
  SEC                                       ; $8D8DD6 |
  RTS                                       ; $8D8DD7 |

CODE_8D8DD8:
  PLX                                       ; $8D8DD8 |
  CLC                                       ; $8D8DD9 |
  RTS                                       ; $8D8DDA |

CODE_8D8DDB:
  LDA.W #$0703                              ; $8D8DDB |
  JSL.L CODE_FL_80A634                      ; $8D8DDE |
  BCS CODE_8D8E12                           ; $8D8DE2 |
  LDA.B $1A,X                               ; $8D8DE4 |
  CMP.W #$0007                              ; $8D8DE6 |
  BCS CODE_8D8DEF                           ; $8D8DE9 |
  JML.L CODE_FL_85D761                      ; $8D8DEB |

CODE_8D8DEF:
  JSL.L CODE_FL_8CFD8F                      ; $8D8DEF |
  PHX                                       ; $8D8DF3 |
  ASL A                                     ; $8D8DF4 |
  TAX                                       ; $8D8DF5 |
  LDA.L PTR16_8D8E00,X                      ; $8D8DF6 |
  PLX                                       ; $8D8DFA |
  STA.B $00                                 ; $8D8DFB |
  JMP.W ($0000)                             ; $8D8DFD |

PTR16_8D8E00:
  dw CODE_8D8E12                            ; $8D8E00 |
  dw CODE_8D8E12                            ; $8D8E02 |
  dw CODE_8D8E12                            ; $8D8E04 |
  dw CODE_8D8E12                            ; $8D8E06 |
  dw CODE_8D8E12                            ; $8D8E08 |
  dw CODE_8D8E12                            ; $8D8E0A |
  dw CODE_8D8E12                            ; $8D8E0C |
  dw CODE_8D8E16                            ; $8D8E0E |
  dw CODE_8D8E21                            ; $8D8E10 |

CODE_8D8E12:
  JML.L CODE_FL_86CA57                      ; $8D8E12 |

CODE_8D8E16:
  STZ.B $34,X                               ; $8D8E16 |
  INC.B $1A,X                               ; $8D8E18 |
  LDA.W #$1011                              ; $8D8E1A |
  JML.L CODE_FL_86CAEE                      ; $8D8E1D |

CODE_8D8E21:
  LDA.W $1C38                               ; $8D8E21 |
  AND.W #$0007                              ; $8D8E24 |
  BNE CODE_8D8E52                           ; $8D8E27 |
  LDA.W #$0070                              ; $8D8E29 |
  STA.B $00                                 ; $8D8E2C |
  LDA.W #$0158                              ; $8D8E2E |
  STA.B $02                                 ; $8D8E31 |
  LDA.B $09,X                               ; $8D8E33 |
  CLC                                       ; $8D8E35 |
  ADC.W $1662                               ; $8D8E36 |
  STA.B $04                                 ; $8D8E39 |
  LDA.B $0D,X                               ; $8D8E3B |
  CLC                                       ; $8D8E3D |
  ADC.W $1672                               ; $8D8E3E |
  STA.B $06                                 ; $8D8E41 |
  JSL.L CODE_FL_8AB42E                      ; $8D8E43 |
  LDY.W #$0004                              ; $8D8E47 |
  JSL.L CODE_FL_8AB499                      ; $8D8E4A |
  JSL.L CODE_FL_86C4F1                      ; $8D8E4E |

CODE_8D8E52:
  LDA.B $09,X                               ; $8D8E52 |
  CLC                                       ; $8D8E54 |
  ADC.W $1662                               ; $8D8E55 |
  SEC                                       ; $8D8E58 |
  SBC.W #$0070                              ; $8D8E59 |
  BPL CODE_8D8E62                           ; $8D8E5C |
  EOR.W #$FFFF                              ; $8D8E5E |
  INC A                                     ; $8D8E61 |

CODE_8D8E62:
  CMP.W #$0020                              ; $8D8E62 |
  BCS CODE_8D8E8C                           ; $8D8E65 |
  LDA.B $0D,X                               ; $8D8E67 |
  CLC                                       ; $8D8E69 |
  ADC.W $1672                               ; $8D8E6A |
  SEC                                       ; $8D8E6D |
  SBC.W #$0158                              ; $8D8E6E |
  BPL CODE_8D8E77                           ; $8D8E71 |
  EOR.W #$FFFF                              ; $8D8E73 |
  INC A                                     ; $8D8E76 |

CODE_8D8E77:
  CMP.W #$0028                              ; $8D8E77 |
  BCS CODE_8D8E8C                           ; $8D8E7A |
  LDA.W #$01E5                              ; $8D8E7C |
  STA.B $18,X                               ; $8D8E7F |
  STZ.B $1A,X                               ; $8D8E81 |
  STZ.B $26,X                               ; $8D8E83 |
  STZ.B $28,X                               ; $8D8E85 |
  LDA.W #$1600                              ; $8D8E87 |
  STA.B $4E,X                               ; $8D8E8A |

CODE_8D8E8C:
  RTL                                       ; $8D8E8C |

CODE_8D8E8D:
  LDA.B $1A,X                               ; $8D8E8D |
  BNE CODE_8D8EA8                           ; $8D8E8F |
  LDA.W #$01E5                              ; $8D8E91 |
  JSR.W CODE_FN_8D8EB4                      ; $8D8E94 |
  BCS CODE_8D8EA4                           ; $8D8E97 |
  LDA.W #$0703                              ; $8D8E99 |
  JSL.L CODE_FL_80A634                      ; $8D8E9C |
  BCC CODE_8D8EA4                           ; $8D8EA0 |
  BRA CODE_8D8EA8                           ; $8D8EA2 |

CODE_8D8EA4:
  JML.L CODE_FL_86CA57                      ; $8D8EA4 |

CODE_8D8EA8:
  JSL.L CODE_FL_85D761                      ; $8D8EA8 |
  LDX.B $FC                                 ; $8D8EAC |
  LDA.W #$8000                              ; $8D8EAE |
  STA.B $22,X                               ; $8D8EB1 |
  RTL                                       ; $8D8EB3 |

CODE_FN_8D8EB4:
  PHX                                       ; $8D8EB4 |
  STA.B $00                                 ; $8D8EB5 |
  LDX.W $1B70                               ; $8D8EB7 |

CODE_8D8EBA:
  LDA.B $18,X                               ; $8D8EBA |
  CMP.B $00                                 ; $8D8EBC |
  BEQ CODE_8D8EC8                           ; $8D8EBE |
  LDA.B $16,X                               ; $8D8EC0 |
  TAX                                       ; $8D8EC2 |
  BNE CODE_8D8EBA                           ; $8D8EC3 |
  PLX                                       ; $8D8EC5 |
  CLC                                       ; $8D8EC6 |
  RTS                                       ; $8D8EC7 |

CODE_8D8EC8:
  PLX                                       ; $8D8EC8 |
  SEC                                       ; $8D8EC9 |
  RTS                                       ; $8D8ECA |

CODE_8D8ECB:
  LDA.B $1A,X                               ; $8D8ECB |
  CMP.W #$0007                              ; $8D8ECD |
  BCS CODE_8D8ED9                           ; $8D8ED0 |
  LDA.W #$0007                              ; $8D8ED2 |
  JSL.L CODE_FL_85B065                      ; $8D8ED5 |

CODE_8D8ED9:
  JSL.L CODE_FL_8CFD8F                      ; $8D8ED9 |
  PHX                                       ; $8D8EDD |
  ASL A                                     ; $8D8EDE |
  TAX                                       ; $8D8EDF |
  LDA.L PTR16_8D8EEA,X                      ; $8D8EE0 |
  PLX                                       ; $8D8EE4 |
  STA.B $00                                 ; $8D8EE5 |
  JMP.W ($0000)                             ; $8D8EE7 |

PTR16_8D8EEA:
  dw CODE_8D8F06                            ; $8D8EEA |
  dw CODE_8D8F60                            ; $8D8EEC |
  dw CODE_8D8F84                            ; $8D8EEE |
  dw CODE_8D8F98                            ; $8D8EF0 |
  dw CODE_8D8FAB                            ; $8D8EF2 |
  dw CODE_8D9001                            ; $8D8EF4 |
  dw CODE_8D9016                            ; $8D8EF6 |
  dw CODE_8D902C                            ; $8D8EF8 |
  dw CODE_8D9057                            ; $8D8EFA |
  dw CODE_8D906F                            ; $8D8EFC |
  dw CODE_8D90AC                            ; $8D8EFE |
  dw CODE_8D90BE                            ; $8D8F00 |
  dw CODE_8D90EB                            ; $8D8F02 |
  dw CODE_8D9106                            ; $8D8F04 |

CODE_8D8F06:
  LDA.W #$0704                              ; $8D8F06 |
  JSL.L CODE_FL_80A634                      ; $8D8F09 |
  BCS CODE_8D8F57                           ; $8D8F0D |
  LDA.W #$8000                              ; $8D8F0F |
  STA.W $0022,X                             ; $8D8F12 |
  LDA.B $44,X                               ; $8D8F15 |
  BNE CODE_8D8F3F                           ; $8D8F17 |
  LDA.W #$01D4                              ; $8D8F19 |
  JSL.L CODE_FL_86C9C2                      ; $8D8F1C |
  BCS CODE_8D8F3E                           ; $8D8F20 |
  STY.B $44,X                               ; $8D8F22 |
  LDA.W #$00F0                              ; $8D8F24 |
  SEC                                       ; $8D8F27 |
  SBC.W $1662                               ; $8D8F28 |
  STA.W $0009,Y                             ; $8D8F2B |
  LDA.W #$0358                              ; $8D8F2E |
  SEC                                       ; $8D8F31 |
  SBC.W $1672                               ; $8D8F32 |
  STA.W $000D,Y                             ; $8D8F35 |
  LDA.W #$8000                              ; $8D8F38 |
  STA.W $0022,Y                             ; $8D8F3B |

CODE_8D8F3E:
  RTL                                       ; $8D8F3E |

CODE_8D8F3F:
  JSL.L CODE_FL_86C7A5                      ; $8D8F3F |
  JSL.L CODE_FL_8CFF15                      ; $8D8F43 |
  JSL.L CODE_FL_85B01E                      ; $8D8F47 |
  LDA.W #$0113                              ; $8D8F4B |
  STA.B $4E,X                               ; $8D8F4E |
  JSR.W CODE_FN_8D9CA5                      ; $8D8F50 |
  JML.L CODE_FL_86C63A                      ; $8D8F53 |

CODE_8D8F57:
  LDA.W #$013F                              ; $8D8F57 |
  STA.B $18,X                               ; $8D8F5A |
  JML.L CODE_JL_85DBB0                      ; $8D8F5C |

CODE_8D8F60:
  LDA.W #$1043                              ; $8D8F60 |
  JSL.L CODE_FL_86CAEE                      ; $8D8F63 |
  LDA.B $04,X                               ; $8D8F67 |
  ORA.W #$2020                              ; $8D8F69 |
  STA.B $04,X                               ; $8D8F6C |
  STZ.B $26,X                               ; $8D8F6E |
  STZ.B $28,X                               ; $8D8F70 |
  LDA.B $3A,X                               ; $8D8F72 |
  SEC                                       ; $8D8F74 |
  SBC.W $1662                               ; $8D8F75 |
  CMP.B $09,X                               ; $8D8F78 |
  BCS CODE_8D8F81                           ; $8D8F7A |
  LDA.W #$FFC0                              ; $8D8F7C |
  STA.B $26,X                               ; $8D8F7F |

CODE_8D8F81:
  INC.B $1A,X                               ; $8D8F81 |
  RTL                                       ; $8D8F83 |

CODE_8D8F84:
  LDA.B $3A,X                               ; $8D8F84 |
  SEC                                       ; $8D8F86 |
  SBC.W $1662                               ; $8D8F87 |
  CMP.B $09,X                               ; $8D8F8A |
  BCC CODE_8D8F97                           ; $8D8F8C |
  STZ.B $26,X                               ; $8D8F8E |
  LDA.W #$0020                              ; $8D8F90 |
  STA.B $2C,X                               ; $8D8F93 |
  INC.B $1A,X                               ; $8D8F95 |

CODE_8D8F97:
  RTL                                       ; $8D8F97 |

CODE_8D8F98:
  LDA.B $2C,X                               ; $8D8F98 |
  BNE CODE_8D8FAA                           ; $8D8F9A |
  LDA.W #$1067                              ; $8D8F9C |
  JSL.L CODE_FL_86CAEE                      ; $8D8F9F |
  LDA.W #$0100                              ; $8D8FA3 |
  STA.B $26,X                               ; $8D8FA6 |
  INC.B $1A,X                               ; $8D8FA8 |

CODE_8D8FAA:
  RTL                                       ; $8D8FAA |

CODE_8D8FAB:
  LDA.B $3A,X                               ; $8D8FAB |
  SEC                                       ; $8D8FAD |
  SBC.W $1662                               ; $8D8FAE |
  ADC.W #$0010                              ; $8D8FB1 |
  CMP.B $09,X                               ; $8D8FB4 |
  BCC CODE_8D8FB9                           ; $8D8FB6 |
  RTL                                       ; $8D8FB8 |

CODE_8D8FB9:
  STZ.B $1E,X                               ; $8D8FB9 |
  LDA.W #$3802                              ; $8D8FBB |
  STA.B $00,X                               ; $8D8FBE |
  JSR.W CODE_FN_8D8FE8                      ; $8D8FC0 |
  LDA.B $3C,X                               ; $8D8FC3 |
  BNE CODE_8D8FD9                           ; $8D8FC5 |
  LDA.W #$FF00                              ; $8D8FC7 |
  STA.B $26,X                               ; $8D8FCA |
  LDA.W #$0200                              ; $8D8FCC |
  STA.B $2A,X                               ; $8D8FCF |
  LDA.W #$0080                              ; $8D8FD1 |
  STA.B $4C,X                               ; $8D8FD4 |
  INC.B $1A,X                               ; $8D8FD6 |
  RTL                                       ; $8D8FD8 |

CODE_8D8FD9:
  STZ.B $3C,X                               ; $8D8FD9 |
  STZ.B $26,X                               ; $8D8FDB |
  LDA.W #$007F                              ; $8D8FDD |
  STA.B $2C,X                               ; $8D8FE0 |
  LDA.W #$0009                              ; $8D8FE2 |
  STA.B $1A,X                               ; $8D8FE5 |
  RTL                                       ; $8D8FE7 |

CODE_FN_8D8FE8:
  LDA.B $0D,X                               ; $8D8FE8 |
  CMP.W #$00E0                              ; $8D8FEA |
  BCS CODE_8D9000                           ; $8D8FED |
  LDA.B $09,X                               ; $8D8FEF |
  BMI CODE_8D9000                           ; $8D8FF1 |
  JSL.L CODE_FL_86CB11                      ; $8D8FF3 |
  BCC CODE_8D9000                           ; $8D8FF7 |
  LDA.W #$001B                              ; $8D8FF9 |
  JSL.L push_sound_queue                    ; $8D8FFC |

CODE_8D9000:
  RTS                                       ; $8D9000 |

CODE_8D9001:
  JSL.L CODE_FL_8CFD78                      ; $8D9001 |
  CMP.W #$FD80                              ; $8D9005 |
  BNE CODE_8D9015                           ; $8D9008 |
  STZ.B $2A,X                               ; $8D900A |
  STZ.B $26,X                               ; $8D900C |
  LDA.W #$0040                              ; $8D900E |
  STA.B $2C,X                               ; $8D9011 |
  INC.B $1A,X                               ; $8D9013 |

CODE_8D9015:
  RTL                                       ; $8D9015 |

CODE_8D9016:
  LDA.B $2C,X                               ; $8D9016 |
  BNE CODE_8D902B                           ; $8D9018 |
  LDA.W #$1043                              ; $8D901A |
  JSL.L CODE_FL_86CAEE                      ; $8D901D |
  LDA.W #$FFC0                              ; $8D9021 |
  STA.B $26,X                               ; $8D9024 |
  LDA.W #$0002                              ; $8D9026 |
  STA.B $1A,X                               ; $8D9029 |

CODE_8D902B:
  RTL                                       ; $8D902B |

CODE_8D902C:
  STZ.B $11,X                               ; $8D902C |
  STZ.B $2A,X                               ; $8D902E |
  LDA.B $A6                                 ; $8D9030 |
  CMP.B ($48,X)                             ; $8D9032 |
  BNE CODE_8D9044                           ; $8D9034 |
  LDA.W #$0704                              ; $8D9036 |
  JSL.L CODE_FL_80A634                      ; $8D9039 |
  BCS CODE_8D9044                           ; $8D903D |
  LDA.W #$13BC                              ; $8D903F |
  STA.B $40,X                               ; $8D9042 |

CODE_8D9044:
  LDA.B $4E,X                               ; $8D9044 |
  JSL.L CODE_FL_85B4B4                      ; $8D9046 |
  LDA.W #$01CF                              ; $8D904A |
  STA.B $18,X                               ; $8D904D |
  LDA.W #$0008                              ; $8D904F |
  STA.B $1A,X                               ; $8D9052 |
  STZ.B $3C,X                               ; $8D9054 |
  RTL                                       ; $8D9056 |

CODE_8D9057:
  JSL.L CODE_FL_8098FD                      ; $8D9057 |
  BCS CODE_8D905E                           ; $8D905B |
  RTL                                       ; $8D905D |

CODE_8D905E:
  LDA.B $4E,X                               ; $8D905E |
  JSL.L CODE_FL_85B4E0                      ; $8D9060 |
  LDA.L $7E7C42                             ; $8D9064 |
  DEC A                                     ; $8D9068 |
  BNE CODE_8D906E                           ; $8D9069 |
  INC A                                     ; $8D906B |
  STA.B $3C,X                               ; $8D906C |

CODE_8D906E:
  RTL                                       ; $8D906E |

CODE_8D906F:
  JSL.L CODE_FL_86C393                      ; $8D906F |
  LDY.B $44,X                               ; $8D9073 |
  LDA.W $0032,Y                             ; $8D9075 |
  BPL CODE_8D9085                           ; $8D9078 |
  LDA.W $0037,Y                             ; $8D907A |
  AND.W #$00FF                              ; $8D907D |
  CMP.W #$000E                              ; $8D9080 |
  BEQ CODE_8D9094                           ; $8D9083 |

CODE_8D9085:
  JSL.L CODE_FL_86C70D                      ; $8D9085 |
  LDA.W #$0001                              ; $8D9089 |
  STA.B $1A,X                               ; $8D908C |
  TDC                                       ; $8D908E |
  STA.L $7E7C42                             ; $8D908F |
  RTL                                       ; $8D9093 |

CODE_8D9094:
  LDY.B $44,X                               ; $8D9094 |
  LDA.W #$0001                              ; $8D9096 |
  STA.W $003A,Y                             ; $8D9099 |
  INC.B $1A,X                               ; $8D909C |
  LDA.W #$0038                              ; $8D909E |
  JSL.L push_sound_queue                    ; $8D90A1 |
  LDA.W #$000D                              ; $8D90A5 |
  JML.L push_sound_queue                    ; $8D90A8 |

CODE_8D90AC:
  LDY.B $44,X                               ; $8D90AC |
  LDA.W $0018,Y                             ; $8D90AE |
  CMP.W #$01D4                              ; $8D90B1 |
  BEQ CODE_8D90BD                           ; $8D90B4 |
  LDA.W #$0020                              ; $8D90B6 |
  STA.B $2C,X                               ; $8D90B9 |
  INC.B $1A,X                               ; $8D90BB |

CODE_8D90BD:
  RTL                                       ; $8D90BD |

CODE_8D90BE:
  LDA.B $2C,X                               ; $8D90BE |
  BNE CODE_8D90EA                           ; $8D90C0 |
  LDA.W #$1475                              ; $8D90C2 |
  STA.B $40,X                               ; $8D90C5 |
  LDA.B ($48,X)                             ; $8D90C7 |
  TAY                                       ; $8D90C9 |
  PHY                                       ; $8D90CA |
  LDA.B $0D,X                               ; $8D90CB |
  CMP.W $000D,Y                             ; $8D90CD |
  LDA.W #$37BA                              ; $8D90D0 |
  LDY.W #$0800                              ; $8D90D3 |
  BCC CODE_8D90DE                           ; $8D90D6 |
  LDA.W #$37D6                              ; $8D90D8 |
  LDY.W #$0400                              ; $8D90DB |

CODE_8D90DE:
  STA.B $00,X                               ; $8D90DE |
  TYA                                       ; $8D90E0 |
  PLY                                       ; $8D90E1 |
  STA.W $0098,Y                             ; $8D90E2 |
  STA.W $009A,Y                             ; $8D90E5 |
  INC.B $1A,X                               ; $8D90E8 |

CODE_8D90EA:
  RTL                                       ; $8D90EA |

CODE_8D90EB:
  LDA.B ($48,X)                             ; $8D90EB |
  TAY                                       ; $8D90ED |
  TDC                                       ; $8D90EE |
  STA.W $0098,Y                             ; $8D90EF |
  JSL.L CODE_FL_8098FD                      ; $8D90F2 |
  BCS CODE_8D90F9                           ; $8D90F6 |
  RTL                                       ; $8D90F8 |

CODE_8D90F9:
  LDA.W #$0001                              ; $8D90F9 |
  STA.B $E4                                 ; $8D90FC |
  LDA.W #$14D4                              ; $8D90FE |
  STA.B $40,X                               ; $8D9101 |
  INC.B $1A,X                               ; $8D9103 |
  RTL                                       ; $8D9105 |

CODE_8D9106:
  JSL.L CODE_FL_8098FD                      ; $8D9106 |
  BCS CODE_8D910D                           ; $8D910A |
  RTL                                       ; $8D910C |

CODE_8D910D:
  LDA.W #$1344                              ; $8D910D |
  STA.B $40,X                               ; $8D9110 |
  LDA.W #$FFE0                              ; $8D9112 |
  JSL.L CODE_FL_86C71F                      ; $8D9115 |
  LDA.W #$1043                              ; $8D9119 |
  JSL.L CODE_FL_86CAEE                      ; $8D911C |
  LDA.W #$0080                              ; $8D9120 |
  JSL.L CODE_FL_8CFE19                      ; $8D9123 |
  LDA.W #$000D                              ; $8D9127 |
  STA.B $4E,X                               ; $8D912A |
  LDA.W #$0001                              ; $8D912C |
  STA.B $1A,X                               ; $8D912F |
  LDA.W #$013F                              ; $8D9131 |
  STA.B $18,X                               ; $8D9134 |
  BRL CODE_FL_8D9E42                        ; $8D9136 |

CODE_8D9139:
  JSL.L CODE_FL_8CFD8F                      ; $8D9139 |
  PHX                                       ; $8D913D |
  ASL A                                     ; $8D913E |
  TAX                                       ; $8D913F |
  LDA.L PTR16_8D914A,X                      ; $8D9140 |
  PLX                                       ; $8D9144 |
  STA.B $00                                 ; $8D9145 |
  JMP.W ($0000)                             ; $8D9147 |

PTR16_8D914A:
  dw CODE_8D9152                            ; $8D914A |
  dw CODE_8D917B                            ; $8D914C |
  dw CODE_8D9196                            ; $8D914E |
  dw CODE_8D91BE                            ; $8D9150 |

CODE_8D9152:
  LDA.W #$0C00                              ; $8D9152 |
  STA.B $4E,X                               ; $8D9155 |
  JSL.L CODE_FL_86C7A5                      ; $8D9157 |
  LDA.W #$3E40                              ; $8D915B |
  STA.B $00,X                               ; $8D915E |
  LDA.B $04,X                               ; $8D9160 |
  ORA.W #$1898                              ; $8D9162 |
  STA.B $04,X                               ; $8D9165 |
  STZ.B $3A,X                               ; $8D9167 |
  STZ.B $3C,X                               ; $8D9169 |
  INC.B $1A,X                               ; $8D916B |
  LDA.W #$01ED                              ; $8D916D |
  JSL.L CODE_FL_86C9A4                      ; $8D9170 |
  BCS CODE_8D917A                           ; $8D9174 |
  JSL.L CODE_FL_85AAB6                      ; $8D9176 |

CODE_8D917A:
  RTL                                       ; $8D917A |

CODE_8D917B:
  JSR.W CODE_FN_8D91E0                      ; $8D917B |
  LDA.B $3A,X                               ; $8D917E |
  BEQ CODE_8D9195                           ; $8D9180 |
  LDA.W #$0001                              ; $8D9182 |
  STA.B $E4                                 ; $8D9185 |
  LDA.W #$0010                              ; $8D9187 |
  STA.B $2C,X                               ; $8D918A |
  LDA.W #$0001                              ; $8D918C |
  JSL.L CODE_FL_B3FE45                      ; $8D918F |
  INC.B $1A,X                               ; $8D9193 |

CODE_8D9195:
  RTL                                       ; $8D9195 |

CODE_8D9196:
  LDA.B $2C,X                               ; $8D9196 |
  BEQ CODE_8D919B                           ; $8D9198 |
  RTL                                       ; $8D919A |

CODE_8D919B:
  LDA.W #$0038                              ; $8D919B |
  STA.B $11,X                               ; $8D919E |
  CLC                                       ; $8D91A0 |
  ADC.B $0D,X                               ; $8D91A1 |
  STA.B $0D,X                               ; $8D91A3 |
  LDA.W #$FFA0                              ; $8D91A5 |
  STA.B $26,X                               ; $8D91A8 |
  LDA.W #$0200                              ; $8D91AA |
  STA.B $2A,X                               ; $8D91AD |
  LDA.W #$0020                              ; $8D91AF |
  STA.B $4C,X                               ; $8D91B2 |
  LDA.W #$1068                              ; $8D91B4 |
  JSL.L CODE_FL_86CAEE                      ; $8D91B7 |
  INC.B $1A,X                               ; $8D91BB |
  RTL                                       ; $8D91BD |

CODE_8D91BE:
  JSL.L CODE_FL_8CFD78                      ; $8D91BE |
  LDA.B $11,X                               ; $8D91C2 |
  CMP.W #$0010                              ; $8D91C4 |
  BCC CODE_8D91D6                           ; $8D91C7 |
  CMP.W #$0028                              ; $8D91C9 |
  BCS CODE_8D91D5                           ; $8D91CC |
  STZ.B $1E,X                               ; $8D91CE |
  LDA.W #$3E50                              ; $8D91D0 |
  STA.B $00,X                               ; $8D91D3 |

CODE_8D91D5:
  RTL                                       ; $8D91D5 |

CODE_8D91D6:
  STZ.B $92                                 ; $8D91D6 |
  STZ.B $E4                                 ; $8D91D8 |
  STZ.B $2A,X                               ; $8D91DA |
  JML.L CODE_FL_86CA57                      ; $8D91DC |

CODE_FN_8D91E0:
  LDA.W #$0270                              ; $8D91E0 |
  CMP.B $3C,X                               ; $8D91E3 |
  BCC CODE_8D91F5                           ; $8D91E5 |
  CMP.W $1672                               ; $8D91E7 |
  BCS CODE_8D91F5                           ; $8D91EA |
  PHX                                       ; $8D91EC |
  LDX.W #DATA_88BB40                        ; $8D91ED |
  JSL.L sound_transfer_blocks               ; $8D91F0 |
  PLX                                       ; $8D91F4 |

CODE_8D91F5:
  LDA.W $1672                               ; $8D91F5 |
  STA.B $3C,X                               ; $8D91F8 |
  RTS                                       ; $8D91FA |

CODE_8D91FB:
  LDA.B $1A,X                               ; $8D91FB |
  BNE CODE_8D920C                           ; $8D91FD |
  LDA.W #$8020                              ; $8D91FF |
  STA.B $22,X                               ; $8D9202 |
  JSL.L CODE_FL_85A9B7                      ; $8D9204 |
  JML.L CODE_FL_86C63A                      ; $8D9208 |

CODE_8D920C:
  JSL.L CODE_FL_85AAC6                      ; $8D920C |
  JSL.L CODE_FL_86C89E                      ; $8D9210 |
  LDA.B $0D,X                               ; $8D9214 |
  CLC                                       ; $8D9216 |
  ADC.W #$0010                              ; $8D9217 |
  STA.B $0D,X                               ; $8D921A |
  LDA.B $32,X                               ; $8D921C |
  STZ.B $32,X                               ; $8D921E |
  STA.W $0032,Y                             ; $8D9220 |
  LDA.B $37,X                               ; $8D9223 |
  STZ.B $37,X                               ; $8D9225 |
  STA.W $0037,Y                             ; $8D9227 |
  RTL                                       ; $8D922A |

CODE_8D922B:
  LDA.B $1A,X                               ; $8D922B |
  CMP.W #$0004                              ; $8D922D |
  BCS CODE_8D9239                           ; $8D9230 |
  LDA.W #$0003                              ; $8D9232 |
  JSL.L CODE_FL_85B065                      ; $8D9235 |

CODE_8D9239:
  JSL.L CODE_FL_8CFD8F                      ; $8D9239 |
  PHX                                       ; $8D923D |
  ASL A                                     ; $8D923E |
  TAX                                       ; $8D923F |
  LDA.L PTR16_8D924A,X                      ; $8D9240 |
  PLX                                       ; $8D9244 |
  STA.B $00                                 ; $8D9245 |
  JMP.W ($0000)                             ; $8D9247 |

PTR16_8D924A:
  dw CODE_8D9262                            ; $8D924A |
  dw CODE_JL_8D9277                         ; $8D924C |
  dw CODE_8D9284                            ; $8D924E |
  dw CODE_8D9285                            ; $8D9250 |
  dw CODE_8D92AE                            ; $8D9252 |
  dw CODE_8D92EB                            ; $8D9254 |
  dw CODE_8D9308                            ; $8D9256 |
  dw CODE_8D9316                            ; $8D9258 |
  dw CODE_8D9327                            ; $8D925A |
  dw CODE_8D933D                            ; $8D925C |
  dw CODE_8D935A                            ; $8D925E |
  dw CODE_8D936E                            ; $8D9260 |

CODE_8D9262:
  JSL.L CODE_FL_86C7A5                      ; $8D9262 |
  JSL.L CODE_FL_8CFF15                      ; $8D9266 |
  JSL.L CODE_FL_85B01E                      ; $8D926A |
  LDA.W #$0117                              ; $8D926E |
  STA.B $4E,X                               ; $8D9271 |
  JSL.L CODE_FL_86C63A                      ; $8D9273 |

CODE_JL_8D9277:
  STZ.B $1E,X                               ; $8D9277 |
  LDA.W #$369A                              ; $8D9279 |
  STA.B $00,X                               ; $8D927C |
  LDA.W #$0002                              ; $8D927E |
  STA.B $1A,X                               ; $8D9281 |
  RTL                                       ; $8D9283 |

CODE_8D9284:
  RTL                                       ; $8D9284 |

CODE_8D9285:
  LDA.B $4E,X                               ; $8D9285 |
  JSL.L CODE_FL_85B4B4                      ; $8D9287 |
  LDA.B $00,X                               ; $8D928B |
  STA.B $3E,X                               ; $8D928D |
  LDA.W #$0705                              ; $8D928F |
  JSL.L CODE_FL_80A634                      ; $8D9292 |
  BCS CODE_8D92A2                           ; $8D9296 |
  LDA.W #$0704                              ; $8D9298 |
  JSL.L CODE_FL_80A634                      ; $8D929B |
  BCS CODE_8D92A3                           ; $8D929F |
  RTL                                       ; $8D92A1 |

CODE_8D92A2:
  RTL                                       ; $8D92A2 |

CODE_8D92A3:
  LDA.W #$01EC                              ; $8D92A3 |
  STA.B $18,X                               ; $8D92A6 |
  LDA.W #$0004                              ; $8D92A8 |
  STA.B $1A,X                               ; $8D92AB |
  RTL                                       ; $8D92AD |

CODE_8D92AE:
  JSL.L CODE_FL_8098FD                      ; $8D92AE |
  BCS CODE_8D92B5                           ; $8D92B2 |
  RTL                                       ; $8D92B4 |

CODE_8D92B5:
  LDA.B $4E,X                               ; $8D92B5 |
  JSL.L CODE_FL_85B4E0                      ; $8D92B7 |
  LDA.L $7E7C42                             ; $8D92BB |
  DEC A                                     ; $8D92BF |
  BEQ CODE_8D92C5                           ; $8D92C0 |
  BRL CODE_JL_8D9277                        ; $8D92C2 |

CODE_8D92C5:
  TDC                                       ; $8D92C5 |
  STA.L $7E7C42                             ; $8D92C6 |
  LDA.W #$0005                              ; $8D92CA |
  STA.B $1A,X                               ; $8D92CD |
  LDA.W #$0001                              ; $8D92CF |
  STA.B $E4                                 ; $8D92D2 |
  JSR.W CODE_FN_8D9CAE                      ; $8D92D4 |
  LDA.B $09,X                               ; $8D92D7 |
  STA.B $3A,X                               ; $8D92D9 |
  LDA.W #$0080                              ; $8D92DB |
  STA.B $26,X                               ; $8D92DE |
  JSL.L CODE_FL_86C4F1                      ; $8D92E0 |
  LDA.W #$106A                              ; $8D92E4 |
  JML.L CODE_FL_86CAEE                      ; $8D92E7 |

CODE_8D92EB:
  LDA.B $09,X                               ; $8D92EB |
  CLC                                       ; $8D92ED |
  ADC.W $1662                               ; $8D92EE |
  CMP.W #$03A8                              ; $8D92F1 |
  BCS CODE_8D92F7                           ; $8D92F4 |
  RTL                                       ; $8D92F6 |

CODE_8D92F7:
  STZ.B $26,X                               ; $8D92F7 |
  STZ.B $1E,X                               ; $8D92F9 |
  LDA.W #$36AE                              ; $8D92FB |
  STA.B $00,X                               ; $8D92FE |
  LDA.W #$0010                              ; $8D9300 |
  STA.B $2C,X                               ; $8D9303 |
  INC.B $1A,X                               ; $8D9305 |
  RTL                                       ; $8D9307 |

CODE_8D9308:
  JSL.L CODE_FL_86C70D                      ; $8D9308 |
  STZ.B $00,X                               ; $8D930C |
  LDA.W #$0080                              ; $8D930E |
  STA.B $2C,X                               ; $8D9311 |
  INC.B $1A,X                               ; $8D9313 |
  RTL                                       ; $8D9315 |

CODE_8D9316:
  JSL.L CODE_FL_86C70D                      ; $8D9316 |
  LDA.W #$369A                              ; $8D931A |
  STA.B $00,X                               ; $8D931D |
  LDA.W #$0010                              ; $8D931F |
  STA.B $2C,X                               ; $8D9322 |
  INC.B $1A,X                               ; $8D9324 |
  RTL                                       ; $8D9326 |

CODE_8D9327:
  JSL.L CODE_FL_86C70D                      ; $8D9327 |
  INC.B $1A,X                               ; $8D932B |
  LDA.W #$FF80                              ; $8D932D |
  STA.B $26,X                               ; $8D9330 |
  JSL.L CODE_FL_86C4F1                      ; $8D9332 |
  LDA.W #$106A                              ; $8D9336 |
  JML.L CODE_FL_86CAEE                      ; $8D9339 |

CODE_8D933D:
  LDA.B $09,X                               ; $8D933D |
  INC A                                     ; $8D933F |
  CMP.B $3A,X                               ; $8D9340 |
  BCC CODE_8D9345                           ; $8D9342 |
  RTL                                       ; $8D9344 |

CODE_8D9345:
  STZ.B $1E,X                               ; $8D9345 |
  STZ.B $26,X                               ; $8D9347 |
  LDA.B $3E,X                               ; $8D9349 |
  STA.B $00,X                               ; $8D934B |
  LDA.W #$0001                              ; $8D934D |
  STA.B $E4                                 ; $8D9350 |
  LDA.W #$CA8E                              ; $8D9352 |
  STA.B $40,X                               ; $8D9355 |
  INC.B $1A,X                               ; $8D9357 |
  RTL                                       ; $8D9359 |

CODE_8D935A:
  JSL.L CODE_FL_8098FD                      ; $8D935A |
  BCS CODE_8D9361                           ; $8D935E |
  RTL                                       ; $8D9360 |

CODE_8D9361:
  LDA.W #$0001                              ; $8D9361 |
  STA.B $E4                                 ; $8D9364 |
  LDA.W #$CAE0                              ; $8D9366 |
  STA.B $40,X                               ; $8D9369 |
  INC.B $1A,X                               ; $8D936B |
  RTL                                       ; $8D936D |

CODE_8D936E:
  JSL.L CODE_FL_8098FD                      ; $8D936E |
  BCS CODE_8D9375                           ; $8D9372 |
  RTL                                       ; $8D9374 |

CODE_8D9375:
  STZ.B $E4                                 ; $8D9375 |
  LDA.W #$C9BD                              ; $8D9377 |
  STA.B $40,X                               ; $8D937A |
  LDA.W #$0001                              ; $8D937C |
  STA.B $1A,X                               ; $8D937F |
  LDA.B $3C,X                               ; $8D9381 |
  STA.B $34,X                               ; $8D9383 |
  BRL CODE_FL_8D9E42                        ; $8D9385 |

CODE_8D9388:
  LDA.B $1A,X                               ; $8D9388 |
  CMP.W #$0004                              ; $8D938A |
  BCS CODE_8D9396                           ; $8D938D |
  LDA.W #$0003                              ; $8D938F |
  JSL.L CODE_FL_85B065                      ; $8D9392 |

CODE_8D9396:
  JSL.L CODE_FL_8CFD8F                      ; $8D9396 |
  PHX                                       ; $8D939A |
  ASL A                                     ; $8D939B |
  TAX                                       ; $8D939C |
  LDA.L PTR16_8D93A7,X                      ; $8D939D |
  PLX                                       ; $8D93A1 |
  STA.B $00                                 ; $8D93A2 |
  JMP.W ($0000)                             ; $8D93A4 |

PTR16_8D93A7:
  dw CODE_8D93BF                            ; $8D93A7 |
  dw CODE_8D93F6                            ; $8D93A9 |
  dw CODE_8D943D                            ; $8D93AB |
  dw CODE_8D9459                            ; $8D93AD |
  dw CODE_8D946F                            ; $8D93AF |
  dw CODE_8D949E                            ; $8D93B1 |
  dw CODE_8D94BB                            ; $8D93B3 |
  dw CODE_8D94D2                            ; $8D93B5 |
  dw CODE_8D94FC                            ; $8D93B7 |
  dw CODE_8D9512                            ; $8D93B9 |
  dw CODE_8D952E                            ; $8D93BB |
  dw CODE_8D9542                            ; $8D93BD |

CODE_8D93BF:
  JSR.W CODE_FN_8D9CA5                      ; $8D93BF |
  JSL.L CODE_FL_86C7A5                      ; $8D93C2 |
  JSL.L CODE_FL_8CFF1E                      ; $8D93C6 |
  LDA.W #$8000                              ; $8D93CA |
  STA.W $0022,X                             ; $8D93CD |
  LDA.W #$101B                              ; $8D93D0 |
  JSL.L CODE_FL_86CAEE                      ; $8D93D3 |
  JSL.L CODE_FL_86C444                      ; $8D93D7 |
  LDA.W #$FFC0                              ; $8D93DB |
  JSL.L CODE_FL_86C71F                      ; $8D93DE |
  LDA.W #$0040                              ; $8D93E2 |
  JSL.L CODE_FL_8CFE19                      ; $8D93E5 |
  JSL.L CODE_FL_85B01E                      ; $8D93E9 |
  LDA.W #$1015                              ; $8D93ED |
  STA.B $4E,X                               ; $8D93F0 |
  JML.L CODE_FL_86C63A                      ; $8D93F2 |

CODE_8D93F6:
  JSL.L CODE_FL_85E05F                      ; $8D93F6 |
  BCS CODE_8D9418                           ; $8D93FA |
  STZ.B $00                                 ; $8D93FC |
  LDA.B $3A,X                               ; $8D93FE |
  SEC                                       ; $8D9400 |
  SBC.W $1662                               ; $8D9401 |
  SEC                                       ; $8D9404 |
  SBC.B $09,X                               ; $8D9405 |
  BPL CODE_8D940F                           ; $8D9407 |
  EOR.W #$FFFF                              ; $8D9409 |
  INC A                                     ; $8D940C |
  INC.B $00                                 ; $8D940D |

CODE_8D940F:
  CMP.W #$0010                              ; $8D940F |
  BCS CODE_8D942D                           ; $8D9412 |
  JSL.L CODE_FL_86C70D                      ; $8D9414 |

CODE_8D9418:
  LDA.W #$0040                              ; $8D9418 |
  JSL.L CODE_FL_8CFE19                      ; $8D941B |
  STZ.B $28,X                               ; $8D941F |
  STZ.B $26,X                               ; $8D9421 |
  STZ.B $1E,X                               ; $8D9423 |
  LDA.W #$3516                              ; $8D9425 |
  STA.B $00,X                               ; $8D9428 |
  INC.B $1A,X                               ; $8D942A |
  RTL                                       ; $8D942C |

CODE_8D942D:
  LDY.W #$FFC0                              ; $8D942D |
  LDA.B $00                                 ; $8D9430 |
  BNE CODE_8D9437                           ; $8D9432 |
  LDY.W #$0040                              ; $8D9434 |

CODE_8D9437:
  STY.B $26,X                               ; $8D9437 |
  JML.L CODE_FL_86C4F1                      ; $8D9439 |

CODE_8D943D:
  JSL.L CODE_FL_86C70D                      ; $8D943D |
  LDA.W #$FFC0                              ; $8D9441 |
  JSL.L CODE_FL_8CFE29                      ; $8D9444 |
  LDA.W #$101B                              ; $8D9448 |
  JSL.L CODE_FL_86CAEE                      ; $8D944B |
  LDA.W #$0040                              ; $8D944F |
  JSL.L CODE_FL_8CFE19                      ; $8D9452 |
  DEC.B $1A,X                               ; $8D9456 |
  RTL                                       ; $8D9458 |

CODE_8D9459:
  LDA.B $4E,X                               ; $8D9459 |
  JSL.L CODE_FL_85B4B4                      ; $8D945B |
  LDA.W #$01E6                              ; $8D945F |
  STA.B $18,X                               ; $8D9462 |
  LDA.W #$0004                              ; $8D9464 |
  STA.B $1A,X                               ; $8D9467 |
  TDC                                       ; $8D9469 |
  STA.L $7E7C42                             ; $8D946A |
  RTL                                       ; $8D946E |

CODE_8D946F:
  JSL.L CODE_FL_8098FD                      ; $8D946F |
  BCS CODE_8D9476                           ; $8D9473 |
  RTL                                       ; $8D9475 |

CODE_8D9476:
  LDA.B $4E,X                               ; $8D9476 |
  JSL.L CODE_FL_85B4E0                      ; $8D9478 |
  LDA.L $7E7C42                             ; $8D947C |
  DEC A                                     ; $8D9480 |
  BEQ CODE_8D9484                           ; $8D9481 |
  RTL                                       ; $8D9483 |

CODE_8D9484:
  LDA.W #$0001                              ; $8D9484 |
  STA.B $E4                                 ; $8D9487 |
  LDA.W #$0005                              ; $8D9489 |
  STA.B $1A,X                               ; $8D948C |
  JSR.W CODE_FN_8D9CAE                      ; $8D948E |
  LDA.B $09,X                               ; $8D9491 |
  STA.B $44,X                               ; $8D9493 |
  LDA.W #$0080                              ; $8D9495 |
  STA.B $26,X                               ; $8D9498 |
  JML.L CODE_FL_86C4F1                      ; $8D949A |

CODE_8D949E:
  LDA.B $09,X                               ; $8D949E |
  CLC                                       ; $8D94A0 |
  ADC.W $1662                               ; $8D94A1 |
  CMP.W #$02AC                              ; $8D94A4 |
  BCS CODE_8D94AA                           ; $8D94A7 |
  RTL                                       ; $8D94A9 |

CODE_8D94AA:
  STZ.B $26,X                               ; $8D94AA |
  STZ.B $1E,X                               ; $8D94AC |
  LDA.W #$3516                              ; $8D94AE |
  STA.B $00,X                               ; $8D94B1 |
  LDA.W #$0020                              ; $8D94B3 |
  STA.B $2C,X                               ; $8D94B6 |
  INC.B $1A,X                               ; $8D94B8 |
  RTL                                       ; $8D94BA |

CODE_8D94BB:
  JSL.L CODE_FL_86C70D                      ; $8D94BB |
  LDA.W #$0060                              ; $8D94BF |
  STA.B $2C,X                               ; $8D94C2 |
  INC.B $1A,X                               ; $8D94C4 |
  LDA.W #$0005                              ; $8D94C6 |
  STA.B $3E,X                               ; $8D94C9 |
  LDA.W #$1069                              ; $8D94CB |
  JML.L CODE_FL_86CAEE                      ; $8D94CE |

CODE_8D94D2:
  JSR.W CODE_FN_8D94E8                      ; $8D94D2 |
  JSL.L CODE_FL_86C70D                      ; $8D94D5 |
  LDA.W #$0010                              ; $8D94D9 |
  STA.B $2C,X                               ; $8D94DC |
  STZ.B $1E,X                               ; $8D94DE |
  LDA.W #$3516                              ; $8D94E0 |
  STA.B $00,X                               ; $8D94E3 |
  INC.B $1A,X                               ; $8D94E5 |
  RTL                                       ; $8D94E7 |

CODE_FN_8D94E8:
  LDA.B $3E,X                               ; $8D94E8 |
  BEQ CODE_8D94EF                           ; $8D94EA |
  DEC.B $3E,X                               ; $8D94EC |
  RTS                                       ; $8D94EE |

CODE_8D94EF:
  LDA.W #$0005                              ; $8D94EF |
  STA.B $3E,X                               ; $8D94F2 |
  LDA.W #$0013                              ; $8D94F4 |
  JSL.L push_sound_queue                    ; $8D94F7 |
  RTS                                       ; $8D94FB |

CODE_8D94FC:
  JSL.L CODE_FL_86C70D                      ; $8D94FC |
  INC.B $1A,X                               ; $8D9500 |
  LDA.W #$101B                              ; $8D9502 |
  JSL.L CODE_FL_86CAEE                      ; $8D9505 |
  LDA.W #$FF80                              ; $8D9509 |
  STA.B $26,X                               ; $8D950C |
  JML.L CODE_FL_86C4F1                      ; $8D950E |

CODE_8D9512:
  LDA.B $09,X                               ; $8D9512 |
  INC A                                     ; $8D9514 |
  CMP.B $44,X                               ; $8D9515 |
  BCC CODE_8D951A                           ; $8D9517 |
  RTL                                       ; $8D9519 |

CODE_8D951A:
  STZ.B $26,X                               ; $8D951A |
  STZ.B $1E,X                               ; $8D951C |
  LDA.W #$3516                              ; $8D951E |
  STA.B $00,X                               ; $8D9521 |
  LDA.W #$AFD9                              ; $8D9523 |
  STA.B $40,X                               ; $8D9526 |
  INC.B $1A,X                               ; $8D9528 |
  JML.L CODE_FL_86C486                      ; $8D952A |

CODE_8D952E:
  JSL.L CODE_FL_8098FD                      ; $8D952E |
  BCS CODE_8D9535                           ; $8D9532 |
  RTL                                       ; $8D9534 |

CODE_8D9535:
  LDA.W #$0001                              ; $8D9535 |
  STA.B $E4                                 ; $8D9538 |
  LDA.W #$AFFA                              ; $8D953A |
  STA.B $40,X                               ; $8D953D |
  INC.B $1A,X                               ; $8D953F |
  RTL                                       ; $8D9541 |

CODE_8D9542:
  JSL.L CODE_FL_8098FD                      ; $8D9542 |
  BCS CODE_8D9549                           ; $8D9546 |
  RTL                                       ; $8D9548 |

CODE_8D9549:
  JSL.L CODE_FL_8D9E42                      ; $8D9549 |
  LDA.W #$AF1F                              ; $8D954D |
  STA.B $40,X                               ; $8D9550 |
  LDA.W #$101B                              ; $8D9552 |
  JSL.L CODE_FL_86CAEE                      ; $8D9555 |
  LDA.W #$FFC0                              ; $8D9559 |
  JSL.L CODE_FL_86C71F                      ; $8D955C |
  LDA.B $3C,X                               ; $8D9560 |
  STA.B $34,X                               ; $8D9562 |
  LDA.W #$0001                              ; $8D9564 |
  STA.B $1A,X                               ; $8D9567 |
  LDA.W #$0040                              ; $8D9569 |
  JML.L CODE_FL_8CFE19                      ; $8D956C |

CODE_8D9570:
  JSL.L CODE_FL_8D957E                      ; $8D9570 |
  LDX.B $FC                                 ; $8D9574 |
  LDA.B $04,X                               ; $8D9576 |
  AND.W #$BFBF                              ; $8D9578 |
  STA.B $04,X                               ; $8D957B |
  RTL                                       ; $8D957D |

CODE_FL_8D957E:
  JSL.L CODE_FL_8CFD8F                      ; $8D957E |
  PHX                                       ; $8D9582 |
  ASL A                                     ; $8D9583 |
  TAX                                       ; $8D9584 |
  LDA.L PTR16_8D958F,X                      ; $8D9585 |
  PLX                                       ; $8D9589 |
  STA.B $00                                 ; $8D958A |
  JMP.W ($0000)                             ; $8D958C |

PTR16_8D958F:
  dw CODE_8D95A7                            ; $8D958F |
  dw CODE_8D95DC                            ; $8D9591 |
  dw CODE_8D95E4                            ; $8D9593 |
  dw CODE_8D95FD                            ; $8D9595 |
  dw CODE_8D9605                            ; $8D9597 |
  dw CODE_8D961B                            ; $8D9599 |
  dw CODE_8D9638                            ; $8D959B |
  dw CODE_8D96CB                            ; $8D959D |
  dw CODE_8D96E9                            ; $8D959F |
  dw CODE_8D9732                            ; $8D95A1 |
  dw CODE_8D976D                            ; $8D95A3 |
  dw CODE_8D9796                            ; $8D95A5 |

CODE_8D95A7:
  JSL.L CODE_FL_86C7A5                      ; $8D95A7 |
  JSL.L CODE_FL_8CFF15                      ; $8D95AB |
  LDA.W #$0118                              ; $8D95AF |
  STA.B $4E,X                               ; $8D95B2 |
  JSL.L CODE_FL_86C63A                      ; $8D95B4 |
  TDC                                       ; $8D95B8 |
  STA.L $7E7C42                             ; $8D95B9 |
  LDA.W #$0708                              ; $8D95BD |
  JSL.L CODE_FL_80A634                      ; $8D95C0 |
  BCS CODE_8D95D3                           ; $8D95C4 |
  LDA.W #$3214                              ; $8D95C6 |
  STA.B $00,X                               ; $8D95C9 |
  LDA.W #$0003                              ; $8D95CB |
  STA.B $1A,X                               ; $8D95CE |
  STZ.B $3A,X                               ; $8D95D0 |
  RTL                                       ; $8D95D2 |

CODE_8D95D3:
  LDA.W #$323A                              ; $8D95D3 |
  STA.B $00,X                               ; $8D95D6 |
  JML.L CODE_FL_85B01E                      ; $8D95D8 |

CODE_8D95DC:
  LDA.W #$0002                              ; $8D95DC |
  JSL.L CODE_FL_85B065                      ; $8D95DF |
  RTL                                       ; $8D95E3 |

CODE_8D95E4:
  LDA.B $4E,X                               ; $8D95E4 |
  JSL.L CODE_FL_85B4B4                      ; $8D95E6 |
  LDA.W #$01F5                              ; $8D95EA |
  STA.B $18,X                               ; $8D95ED |
  LDA.W #$0008                              ; $8D95EF |
  STA.B $1A,X                               ; $8D95F2 |
  STZ.B $3C,X                               ; $8D95F4 |
  LDA.W #$106C                              ; $8D95F6 |
  JML.L CODE_FL_86CAEE                      ; $8D95F9 |

CODE_8D95FD:
  LDA.W #$0004                              ; $8D95FD |
  JSL.L CODE_FL_85B065                      ; $8D9600 |
  RTL                                       ; $8D9604 |

CODE_8D9605:
  JSL.L CODE_FL_86A046                      ; $8D9605 |
  BCS CODE_8D960C                           ; $8D9609 |
  RTL                                       ; $8D960B |

CODE_8D960C:
  LDA.W #$0001                              ; $8D960C |
  STA.B $E4                                 ; $8D960F |
  STA.B $3A,X                               ; $8D9611 |
  LDA.W #$0020                              ; $8D9613 |
  STA.B $2C,X                               ; $8D9616 |
  INC.B $1A,X                               ; $8D9618 |
  RTL                                       ; $8D961A |

CODE_8D961B:
  JSL.L CODE_FL_86C70D                      ; $8D961B |
  LDA.W #$323A                              ; $8D961F |
  STA.B $00,X                               ; $8D9622 |
  LDA.W #$0028                              ; $8D9624 |
  JSL.L push_sound_queue                    ; $8D9627 |
  LDA.W #$0001                              ; $8D962B |
  STA.B $E4                                 ; $8D962E |
  LDA.W #$0020                              ; $8D9630 |
  STA.B $2C,X                               ; $8D9633 |
  INC.B $1A,X                               ; $8D9635 |
  RTL                                       ; $8D9637 |

CODE_8D9638:
  JSL.L CODE_FL_86C70D                      ; $8D9638 |
  LDA.B $3E,X                               ; $8D963C |
  BNE CODE_8D9668                           ; $8D963E |
  INC.B $3E,X                               ; $8D9640 |
  LDA.B $A6                                 ; $8D9642 |
  BNE CODE_8D964E                           ; $8D9644 |
  LDA.L $7002E8                             ; $8D9646 |
  CMP.B $8E                                 ; $8D964A |
  BNE CODE_8D9652                           ; $8D964C |

CODE_8D964E:
  JSL.L CODE_FL_96FDE2                      ; $8D964E |

CODE_8D9652:
  JSL.L CODE_FL_83B38E                      ; $8D9652 |
  PHX                                       ; $8D9656 |
  LDX.W #$0B20                              ; $8D9657 |
  JSL.L CODE_FL_86CA36                      ; $8D965A |
  PLX                                       ; $8D965E |
  LDA.W #$0002                              ; $8D965F |
  STA.B $2C,X                               ; $8D9662 |
  JML.L CODE_FL_83852F                      ; $8D9664 |

CODE_8D9668:
  LDA.W #$CD6F                              ; $8D9668 |
  STA.B $40,X                               ; $8D966B |
  LDA.W #$0010                              ; $8D966D |
  STA.B $2C,X                               ; $8D9670 |
  INC.B $1A,X                               ; $8D9672 |
  JSR.W CODE_FN_8D9E25                      ; $8D9674 |
  JSR.W CODE_FN_8D967B                      ; $8D9677 |
  RTL                                       ; $8D967A |

CODE_FN_8D967B:
  LDA.W #$0400                              ; $8D967B |
  LDY.W #$0620                              ; $8D967E |
  JSR.W CODE_FN_8D969C                      ; $8D9681 |
  LDA.W #$0040                              ; $8D9684 |
  STA.W $0002,Y                             ; $8D9687 |
  LDA.W #$04C0                              ; $8D968A |
  LDY.W #$0670                              ; $8D968D |
  JSR.W CODE_FN_8D969C                      ; $8D9690 |
  BCS CODE_8D969B                           ; $8D9693 |
  LDA.W #$0041                              ; $8D9695 |
  STA.W $0002,Y                             ; $8D9698 |

CODE_8D969B:
  RTS                                       ; $8D969B |

CODE_FN_8D969C:
  PHA                                       ; $8D969C |
  PHY                                       ; $8D969D |
  TAY                                       ; $8D969E |
  LDA.W $0018,Y                             ; $8D969F |
  PLY                                       ; $8D96A2 |
  CMP.W #$0000                              ; $8D96A3 |
  BEQ CODE_8D96C8                           ; $8D96A6 |
  PHA                                       ; $8D96A8 |
  LDA.W #$01C5                              ; $8D96A9 |
  JSL.L CODE_FL_86C9E0                      ; $8D96AC |
  PLA                                       ; $8D96B0 |
  DEC A                                     ; $8D96B1 |
  ASL A                                     ; $8D96B2 |
  STA.W $003A,Y                             ; $8D96B3 |
  LDA.W #$0007                              ; $8D96B6 |
  STA.W $003C,Y                             ; $8D96B9 |
  LDA.W #$0011                              ; $8D96BC |
  STA.W $0040,Y                             ; $8D96BF |
  PLA                                       ; $8D96C2 |
  STA.W $004E,Y                             ; $8D96C3 |
  CLC                                       ; $8D96C6 |
  RTS                                       ; $8D96C7 |

CODE_8D96C8:
  PLA                                       ; $8D96C8 |
  SEC                                       ; $8D96C9 |
  RTS                                       ; $8D96CA |

CODE_8D96CB:
  JSL.L CODE_FL_86C70D                      ; $8D96CB |
  JSL.L CODE_FL_86A046                      ; $8D96CF |
  BCS CODE_8D96D6                           ; $8D96D3 |
  RTL                                       ; $8D96D5 |

CODE_8D96D6:
  LDA.W #$0001                              ; $8D96D6 |
  STA.B $E4                                 ; $8D96D9 |
  INC.B $1A,X                               ; $8D96DB |
  LDA.W #$CDD2                              ; $8D96DD |

CODE_8D96E0:
  STA.B $40,X                               ; $8D96E0 |
  LDA.W #$106C                              ; $8D96E2 |
  JML.L CODE_FL_86CAEE                      ; $8D96E5 |

CODE_8D96E9:
  JSR.W CODE_FN_8D972D                      ; $8D96E9 |
  BCS CODE_8D96EF                           ; $8D96EC |
  RTL                                       ; $8D96EE |

CODE_8D96EF:
  STZ.B $1E,X                               ; $8D96EF |
  LDA.W #$323A                              ; $8D96F1 |
  STA.B $00,X                               ; $8D96F4 |
  LDA.B $3C,X                               ; $8D96F6 |
  BEQ CODE_8D96FD                           ; $8D96F8 |
  JMP.W CODE_JP_8D977B                      ; $8D96FA |

CODE_8D96FD:
  LDA.B $3A,X                               ; $8D96FD |
  BNE CODE_8D9723                           ; $8D96FF |
  LDA.W #$0708                              ; $8D9701 |
  JSL.L CODE_FL_80A634                      ; $8D9704 |
  BCS CODE_8D9713                           ; $8D9708 |
  LDA.W #$0707                              ; $8D970A |
  JSL.L CODE_FL_80A634                      ; $8D970D |
  BCS CODE_8D971C                           ; $8D9711 |

CODE_8D9713:
  LDA.W #$0001                              ; $8D9713 |
  STA.B $1A,X                               ; $8D9716 |
  JML.L CODE_FL_85B01E                      ; $8D9718 |

CODE_8D971C:
  INC.B $3C,X                               ; $8D971C |
  LDA.W #$CE10                              ; $8D971E |
  BRA CODE_8D96E0                           ; $8D9721 |

CODE_8D9723:
  STZ.B $3A,X                               ; $8D9723 |
  LDA.W #$0001                              ; $8D9725 |
  STA.B $E4                                 ; $8D9728 |
  INC.B $1A,X                               ; $8D972A |
  RTL                                       ; $8D972C |

CODE_FN_8D972D:
  JSL.L CODE_FL_86A046                      ; $8D972D |
  RTS                                       ; $8D9731 |

CODE_8D9732:
  JSR.W CODE_FN_8D974B                      ; $8D9732 |
  BCC CODE_8D9738                           ; $8D9735 |
  RTL                                       ; $8D9737 |

CODE_8D9738:
  INC.B $1A,X                               ; $8D9738 |
  LDA.W #$0400                              ; $8D973A |
  STA.W $0498                               ; $8D973D |
  STA.W $0558                               ; $8D9740 |
  JSL.L CODE_FL_8B8000                      ; $8D9743 |
  JML.L CODE_JL_8B8094                      ; $8D9747 |

CODE_FN_8D974B:
  LDY.W #$0620                              ; $8D974B |
  JSR.W CODE_FN_8D9756                      ; $8D974E |
  BCS CODE_8D976B                           ; $8D9751 |
  LDY.W #$0670                              ; $8D9753 |

CODE_FN_8D9756:
  LDA.W $0000,Y                             ; $8D9756 |
  BEQ CODE_8D9769                           ; $8D9759 |
  LDA.W $001A,Y                             ; $8D975B |
  CMP.W #$000A                              ; $8D975E |
  BNE CODE_8D976B                           ; $8D9761 |
  LDA.W #$002C                              ; $8D9763 |
  STA.W $001A,Y                             ; $8D9766 |

CODE_8D9769:
  CLC                                       ; $8D9769 |
  RTS                                       ; $8D976A |

CODE_8D976B:
  SEC                                       ; $8D976B |
  RTS                                       ; $8D976C |

CODE_8D976D:
  JSL.L CODE_FL_86C70D                      ; $8D976D |
  STZ.W $0498                               ; $8D9771 |
  STZ.W $0558                               ; $8D9774 |
  JSL.L CODE_FL_8B8067                      ; $8D9777 |

CODE_JP_8D977B:
  LDA.L $7E7C42                             ; $8D977B |
  DEC A                                     ; $8D977F |
  BEQ CODE_8D9786                           ; $8D9780 |
  STZ.B $E4                                 ; $8D9782 |
  BRA CODE_8D979D                           ; $8D9784 |

CODE_8D9786:
  TDC                                       ; $8D9786 |
  STA.L $7E7C42                             ; $8D9787 |
  LDA.W #$CF00                              ; $8D978B |
  STA.B $40,X                               ; $8D978E |
  LDA.W #$000B                              ; $8D9790 |
  STA.B $1A,X                               ; $8D9793 |
  RTL                                       ; $8D9795 |

CODE_8D9796:
  JSL.L CODE_FL_86A046                      ; $8D9796 |
  BCS CODE_8D979D                           ; $8D979A |
  RTL                                       ; $8D979C |

CODE_8D979D:
  LDA.B $40,X                               ; $8D979D |
  CMP.W #$CF00                              ; $8D979F |
  BNE CODE_8D97A8                           ; $8D97A2 |
  JSL.L CODE_FL_8D9E42                      ; $8D97A4 |

CODE_8D97A8:
  LDA.W #$CD42                              ; $8D97A8 |
  STA.B $40,X                               ; $8D97AB |
  LDA.W #$0001                              ; $8D97AD |
  STA.B $1A,X                               ; $8D97B0 |
  JML.L CODE_FL_85B01E                      ; $8D97B2 |

CODE_8D97B6:
  LDA.W #$0703                              ; $8D97B6 |
  JSL.L CODE_FL_80A634                      ; $8D97B9 |
  BCC CODE_8D97CE                           ; $8D97BD |
  LDA.W #$01F3                              ; $8D97BF |
  JSR.W CODE_FN_8D8EB4                      ; $8D97C2 |
  BCS CODE_8D97CE                           ; $8D97C5 |
  LDA.W #$01F3                              ; $8D97C7 |
  STA.B $18,X                               ; $8D97CA |
  BRA CODE_8D97D2                           ; $8D97CC |

CODE_8D97CE:
  JML.L CODE_FL_86CA57                      ; $8D97CE |

CODE_8D97D2:
  LDA.B $1A,X                               ; $8D97D2 |
  BNE CODE_8D97FD                           ; $8D97D4 |
  JSL.L CODE_FL_86C7A5                      ; $8D97D6 |
  JSL.L CODE_FL_85B01E                      ; $8D97DA |
  LDA.W #$0008                              ; $8D97DE |
  STA.B $11,X                               ; $8D97E1 |
  LDA.W #$0703                              ; $8D97E3 |
  JSL.L CODE_FL_80A634                      ; $8D97E6 |
  LDY.W #$38D0                              ; $8D97EA |
  BCS CODE_8D97F2                           ; $8D97ED |
  LDY.W #$38D8                              ; $8D97EF |

CODE_8D97F2:
  STY.B $00,X                               ; $8D97F2 |
  LDA.W #$0212                              ; $8D97F4 |
  STA.B $18,X                               ; $8D97F7 |
  JML.L CODE_FL_86C63A                      ; $8D97F9 |

CODE_8D97FD:
  RTL                                       ; $8D97FD |

CODE_8D97FE:
  LDA.B $1A,X                               ; $8D97FE |
  CMP.W #$0004                              ; $8D9800 |
  BCS CODE_8D980C                           ; $8D9803 |
  LDA.W #$0003                              ; $8D9805 |
  JSL.L CODE_FL_85B065                      ; $8D9808 |

CODE_8D980C:
  JSL.L CODE_FL_8CFD8F                      ; $8D980C |
  PHX                                       ; $8D9810 |
  ASL A                                     ; $8D9811 |
  TAX                                       ; $8D9812 |
  LDA.L PTR16_8D981D,X                      ; $8D9813 |
  PLX                                       ; $8D9817 |
  STA.B $00                                 ; $8D9818 |
  JMP.W ($0000)                             ; $8D981A |

PTR16_8D981D:
  dw CODE_8D9837                            ; $8D981D |
  dw CODE_8D986D                            ; $8D981F |
  dw CODE_8D98C2                            ; $8D9821 |
  dw CODE_8D98CB                            ; $8D9823 |
  dw CODE_8D98DC                            ; $8D9825 |
  dw CODE_8D9944                            ; $8D9827 |
  dw CODE_8D995C                            ; $8D9829 |
  dw CODE_8D995C                            ; $8D982B |
  dw CODE_8D995C                            ; $8D982D |
  dw CODE_8D995C                            ; $8D982F |
  dw CODE_8D9982                            ; $8D9831 |
  dw CODE_8D9998                            ; $8D9833 |
  dw CODE_8D99B4                            ; $8D9835 |

CODE_8D9837:
  JSR.W CODE_FN_8D9CA5                      ; $8D9837 |
  LDA.W #$8000                              ; $8D983A |
  STA.B $22,X                               ; $8D983D |
  JSL.L CODE_FL_86C7A5                      ; $8D983F |
  JSL.L CODE_FL_8CFF15                      ; $8D9843 |
  JSL.L CODE_FL_85B01E                      ; $8D9847 |
  LDA.W #$0119                              ; $8D984B |
  STA.B $4E,X                               ; $8D984E |
  JSL.L CODE_FL_86C63A                      ; $8D9850 |

CODE_JL_8D9854:
  LDA.W #$FFC0                              ; $8D9854 |
  JSL.L CODE_FL_8CFE29                      ; $8D9857 |
  LDA.W #$0040                              ; $8D985B |
  JSL.L CODE_FL_8CFE19                      ; $8D985E |
  LDA.W #$1041                              ; $8D9862 |
  JSL.L CODE_FL_86CAEE                      ; $8D9865 |
  JML.L CODE_FL_86C4F1                      ; $8D9869 |

CODE_8D986D:
  JSL.L CODE_FL_85E05F                      ; $8D986D |
  BCS CODE_8D988F                           ; $8D9871 |
  STZ.B $00                                 ; $8D9873 |
  LDA.B $3A,X                               ; $8D9875 |
  SEC                                       ; $8D9877 |
  SBC.W $1662                               ; $8D9878 |
  SEC                                       ; $8D987B |
  SBC.B $09,X                               ; $8D987C |
  BPL CODE_8D9886                           ; $8D987E |
  EOR.W #$FFFF                              ; $8D9880 |
  INC A                                     ; $8D9883 |
  INC.B $00                                 ; $8D9884 |

CODE_8D9886:
  CMP.W #$0010                              ; $8D9886 |
  BCS CODE_8D98A9                           ; $8D9889 |
  JSL.L CODE_FL_86C70D                      ; $8D988B |

CODE_8D988F:
  LDA.W #$0040                              ; $8D988F |
  JSL.L CODE_FL_8CFE19                      ; $8D9892 |
  STZ.B $1E,X                               ; $8D9896 |
  LDY.W #$374A                              ; $8D9898 |
  LDA.B $26,X                               ; $8D989B |
  BPL CODE_8D98A2                           ; $8D989D |
  LDY.W #$3734                              ; $8D989F |

CODE_8D98A2:
  STY.B $00,X                               ; $8D98A2 |
  STZ.B $26,X                               ; $8D98A4 |
  INC.B $1A,X                               ; $8D98A6 |
  RTL                                       ; $8D98A8 |

CODE_8D98A9:
  LDA.B $00                                 ; $8D98A9 |
  BNE CODE_8D98B2                           ; $8D98AB |
  LDY.W #$0040                              ; $8D98AD |
  BRA CODE_8D98B5                           ; $8D98B0 |

CODE_8D98B2:
  LDY.W #$FFC0                              ; $8D98B2 |

CODE_8D98B5:
  STY.B $26,X                               ; $8D98B5 |
  LDA.W #$1041                              ; $8D98B7 |
  JSL.L CODE_FL_86CAEE                      ; $8D98BA |
  JML.L CODE_FL_86C4F1                      ; $8D98BE |

CODE_8D98C2:
  JSL.L CODE_FL_86C70D                      ; $8D98C2 |
  DEC.B $1A,X                               ; $8D98C6 |
  BRL CODE_JL_8D9854                        ; $8D98C8 |

CODE_8D98CB:
  LDA.B $4E,X                               ; $8D98CB |
  JSL.L CODE_FL_85B4B4                      ; $8D98CD |
  LDA.W #$01F4                              ; $8D98D1 |
  STA.B $18,X                               ; $8D98D4 |
  LDA.W #$0004                              ; $8D98D6 |
  STA.B $1A,X                               ; $8D98D9 |
  RTL                                       ; $8D98DB |

CODE_8D98DC:
  JSL.L CODE_FL_8098FD                      ; $8D98DC |
  BCS CODE_8D98E3                           ; $8D98E0 |
  RTL                                       ; $8D98E2 |

CODE_8D98E3:
  LDA.W #$01F6                              ; $8D98E3 |
  JSL.L CODE_FL_80A634                      ; $8D98E6 |
  BCS CODE_8D992D                           ; $8D98EA |
  LDA.W #$01F7                              ; $8D98EC |
  JSL.L CODE_FL_80A634                      ; $8D98EF |
  BCS CODE_JL_8D98FE                        ; $8D98F3 |
  LDA.W #$01F4                              ; $8D98F5 |
  JSL.L CODE_FL_80A634                      ; $8D98F8 |
  BCS CODE_8D990A                           ; $8D98FC |

CODE_JL_8D98FE:
  LDA.W #$0002                              ; $8D98FE |
  STA.B $1A,X                               ; $8D9901 |
  LDA.W #$0040                              ; $8D9903 |
  JML.L CODE_FL_8CFE19                      ; $8D9906 |

CODE_8D990A:
  JSR.W CODE_FN_8D9CAE                      ; $8D990A |
  LDA.B $09,X                               ; $8D990D |
  STA.B $44,X                               ; $8D990F |
  LDA.B $00,X                               ; $8D9911 |
  STA.B $46,X                               ; $8D9913 |
  LDA.W #$1041                              ; $8D9915 |
  JSL.L CODE_FL_86CAEE                      ; $8D9918 |
  LDA.W #$0080                              ; $8D991C |
  STA.B $26,X                               ; $8D991F |
  JSL.L CODE_FL_86C4F1                      ; $8D9921 |
  LDA.W #$0001                              ; $8D9925 |
  STA.B $E4                                 ; $8D9928 |
  INC.B $1A,X                               ; $8D992A |
  RTL                                       ; $8D992C |

CODE_8D992D:
  LDA.W #$01F6                              ; $8D992D |
  JSL.L CODE_FL_80ABA6                      ; $8D9930 |
  LDA.W #$0001                              ; $8D9934 |
  STA.B $E4                                 ; $8D9937 |
  LDA.W #$D36D                              ; $8D9939 |
  STA.B $40,X                               ; $8D993C |
  LDA.W #$000C                              ; $8D993E |
  STA.B $1A,X                               ; $8D9941 |
  RTL                                       ; $8D9943 |

CODE_8D9944:
  LDA.B $09,X                               ; $8D9944 |
  CLC                                       ; $8D9946 |
  ADC.W $1662                               ; $8D9947 |
  CMP.W #$0178                              ; $8D994A |
  BCS CODE_8D9950                           ; $8D994D |
  RTL                                       ; $8D994F |

CODE_8D9950:
  STZ.B $26,X                               ; $8D9950 |
  STZ.B $1E,X                               ; $8D9952 |
  LDA.W #$0020                              ; $8D9954 |
  STA.B $2C,X                               ; $8D9957 |
  INC.B $1A,X                               ; $8D9959 |
  RTL                                       ; $8D995B |

CODE_8D995C:
  JSL.L CODE_FL_86C70D                      ; $8D995C |
  LDA.W #$0030                              ; $8D9960 |
  STA.B $2C,X                               ; $8D9963 |
  JSL.L CODE_FL_86C47E                      ; $8D9965 |
  INC.B $1A,X                               ; $8D9969 |
  LDA.B $1A,X                               ; $8D996B |
  CMP.W #$0007                              ; $8D996D |
  BEQ CODE_8D9978                           ; $8D9970 |
  CMP.W #$000A                              ; $8D9972 |
  BEQ CODE_8D997F                           ; $8D9975 |
  RTL                                       ; $8D9977 |

CODE_8D9978:
  LDA.W #$1041                              ; $8D9978 |
  JML.L CODE_FL_86CAEE                      ; $8D997B |

CODE_8D997F:
  STZ.B $1E,X                               ; $8D997F |
  RTL                                       ; $8D9981 |

CODE_8D9982:
  JSL.L CODE_FL_86C70D                      ; $8D9982 |
  LDA.W #$FF80                              ; $8D9986 |
  STA.B $26,X                               ; $8D9989 |
  JSL.L CODE_FL_86C4F1                      ; $8D998B |
  INC.B $1A,X                               ; $8D998F |
  LDA.W #$1041                              ; $8D9991 |
  JML.L CODE_FL_86CAEE                      ; $8D9994 |

CODE_8D9998:
  LDA.B $09,X                               ; $8D9998 |
  INC A                                     ; $8D999A |
  CMP.B $44,X                               ; $8D999B |
  BCC CODE_8D99A0                           ; $8D999D |
  RTL                                       ; $8D999F |

CODE_8D99A0:
  STZ.B $26,X                               ; $8D99A0 |
  STZ.B $1E,X                               ; $8D99A2 |
  LDA.B $46,X                               ; $8D99A4 |
  STA.B $00,X                               ; $8D99A6 |
  LDA.B $3C,X                               ; $8D99A8 |
  STA.B $34,X                               ; $8D99AA |
  LDA.W #$D247                              ; $8D99AC |
  STA.B $40,X                               ; $8D99AF |
  INC.B $1A,X                               ; $8D99B1 |
  RTL                                       ; $8D99B3 |

CODE_8D99B4:
  JSL.L CODE_FL_8098FD                      ; $8D99B4 |
  BCS CODE_8D99BB                           ; $8D99B8 |
  RTL                                       ; $8D99BA |

CODE_8D99BB:
  LDA.B $40,X                               ; $8D99BB |
  CMP.W #$D36D                              ; $8D99BD |
  BNE CODE_8D99C6                           ; $8D99C0 |
  JSL.L CODE_FL_8D9E42                      ; $8D99C2 |

CODE_8D99C6:
  LDA.W #$CF67                              ; $8D99C6 |
  STA.B $40,X                               ; $8D99C9 |
  BRL CODE_JL_8D98FE                        ; $8D99CB |

CODE_8D99CE:
  JSL.L CODE_FL_8CFD8F                      ; $8D99CE |
  PHX                                       ; $8D99D2 |
  ASL A                                     ; $8D99D3 |
  TAX                                       ; $8D99D4 |
  LDA.L PTR16_8D99DF,X                      ; $8D99D5 |
  PLX                                       ; $8D99D9 |
  STA.B $00                                 ; $8D99DA |
  JMP.W ($0000)                             ; $8D99DC |

PTR16_8D99DF:
  dw CODE_8D99FF                            ; $8D99DF |
  dw CODE_8D9A0C                            ; $8D99E1 |
  dw CODE_8D9A28                            ; $8D99E3 |
  dw CODE_8D9A90                            ; $8D99E5 |
  dw CODE_8D9AA4                            ; $8D99E7 |
  dw CODE_8D9AF7                            ; $8D99E9 |
  dw CODE_8D9B34                            ; $8D99EB |
  dw CODE_8D9B38                            ; $8D99ED |
  dw CODE_8D9B47                            ; $8D99EF |
  dw CODE_8D9B56                            ; $8D99F1 |
  dw CODE_8D9B65                            ; $8D99F3 |
  dw CODE_8D9B81                            ; $8D99F5 |
  dw CODE_8D9BA1                            ; $8D99F7 |
  dw CODE_8D9BB0                            ; $8D99F9 |
  dw CODE_8D9BCD                            ; $8D99FB |
  dw CODE_8D9BDD                            ; $8D99FD |

CODE_8D99FF:
  JSL.L CODE_FL_86C7A5                      ; $8D99FF |
  TDC                                       ; $8D9A03 |
  STA.L $7E7C42                             ; $8D9A04 |
  JML.L CODE_FL_86C63A                      ; $8D9A08 |

CODE_8D9A0C:
  LDA.W #$0098                              ; $8D9A0C |
  JSR.W CODE_FN_8D9DF7                      ; $8D9A0F |
  BCC CODE_8D9A15                           ; $8D9A12 |
  RTL                                       ; $8D9A14 |

CODE_8D9A15:
  LDA.W #$0001                              ; $8D9A15 |
  STA.B $E4                                 ; $8D9A18 |
  LDA.W #$0001                              ; $8D9A1A |
  STA.B $92                                 ; $8D9A1D |
  LDA.W #$FFFF                              ; $8D9A1F |
  STA.W $1962                               ; $8D9A22 |
  INC.B $1A,X                               ; $8D9A25 |
  RTL                                       ; $8D9A27 |

CODE_8D9A28:
  STZ.B $00                                 ; $8D9A28 |
  LDY.W #$0400                              ; $8D9A2A |
  JSR.W CODE_FN_8D9A5C                      ; $8D9A2D |
  ROL.B $00                                 ; $8D9A30 |
  LDY.W #$04C0                              ; $8D9A32 |
  JSR.W CODE_FN_8D9A5C                      ; $8D9A35 |
  ROL.B $00                                 ; $8D9A38 |
  LDA.W $1672                               ; $8D9A3A |
  ORA.B $00                                 ; $8D9A3D |
  BEQ CODE_8D9A42                           ; $8D9A3F |
  RTL                                       ; $8D9A41 |

CODE_8D9A42:
  TDC                                       ; $8D9A42 |
  STA.W $0498                               ; $8D9A43 |
  STA.W $0558                               ; $8D9A46 |
  STA.W $049A                               ; $8D9A49 |
  STA.W $055A                               ; $8D9A4C |
  STZ.B $92                                 ; $8D9A4F |
  STZ.W $1962                               ; $8D9A51 |
  LDA.W #$0020                              ; $8D9A54 |
  STA.B $2C,X                               ; $8D9A57 |
  INC.B $1A,X                               ; $8D9A59 |
  RTL                                       ; $8D9A5B |

CODE_FN_8D9A5C:
  TDC                                       ; $8D9A5C |
  STA.W $0098,Y                             ; $8D9A5D |
  STA.W $009A,Y                             ; $8D9A60 |
  LDA.W $0018,Y                             ; $8D9A63 |
  BEQ CODE_8D9A87                           ; $8D9A66 |
  CMP.W #$0004                              ; $8D9A68 |
  BNE CODE_8D9A75                           ; $8D9A6B |
  LDA.W $0022,Y                             ; $8D9A6D |
  CMP.W #$001C                              ; $8D9A70 |
  BEQ CODE_8D9A88                           ; $8D9A73 |

CODE_8D9A75:
  LDA.W $000D,Y                             ; $8D9A75 |
  CLC                                       ; $8D9A78 |
  ADC.W $1672                               ; $8D9A79 |
  CMP.W #$0098                              ; $8D9A7C |
  BCC CODE_8D9A87                           ; $8D9A7F |
  LDA.W #$0800                              ; $8D9A81 |
  STA.W $0098,Y                             ; $8D9A84 |

CODE_8D9A87:
  RTS                                       ; $8D9A87 |

CODE_8D9A88:
  LDA.W #$0080                              ; $8D9A88 |
  STA.W $009A,Y                             ; $8D9A8B |
  SEC                                       ; $8D9A8E |
  RTS                                       ; $8D9A8F |

CODE_8D9A90:
  JSL.L CODE_FL_86C70D                      ; $8D9A90 |
  INC.B $1A,X                               ; $8D9A94 |
  LDA.W #$0004                              ; $8D9A96 |
  JSL.L CODE_FL_8089BD                      ; $8D9A99 |
  LDA.W #$106E                              ; $8D9A9D |
  JML.L CODE_FL_86CAEE                      ; $8D9AA0 |

CODE_8D9AA4:
  LDA.B $20,X                               ; $8D9AA4 |
  BEQ CODE_8D9AA9                           ; $8D9AA6 |
  RTL                                       ; $8D9AA8 |

CODE_8D9AA9:
  LDA.W #$01E9                              ; $8D9AA9 |
  JSL.L CODE_FL_86C9A4                      ; $8D9AAC |
  STY.B $44,X                               ; $8D9AB0 |
  LDA.W #$0709                              ; $8D9AB2 |
  JSL.L CODE_FL_80A634                      ; $8D9AB5 |
  BCS CODE_8D9AE4                           ; $8D9AB9 |
  JSR.W CODE_FN_8D9AD2                      ; $8D9ABB |
  BCS CODE_8D9AE4                           ; $8D9ABE |
  LDA.W #$1070                              ; $8D9AC0 |
  JSL.L CODE_FL_86CAEE                      ; $8D9AC3 |
  LDA.W #$0020                              ; $8D9AC7 |
  STA.B $2C,X                               ; $8D9ACA |
  LDA.W #$0007                              ; $8D9ACC |
  STA.B $1A,X                               ; $8D9ACF |
  RTL                                       ; $8D9AD1 |

CODE_FN_8D9AD2:
  LDY.W #$0000                              ; $8D9AD2 |

CODE_8D9AD5:
  LDA.W CODE_00D587,Y                       ; $8D9AD5 |
  SEC                                       ; $8D9AD8 |
  BEQ CODE_8D9AE3                           ; $8D9AD9 |
  JSL.L CODE_FL_80A634                      ; $8D9ADB |
  INY                                       ; $8D9ADF |
  INY                                       ; $8D9AE0 |
  BCS CODE_8D9AD5                           ; $8D9AE1 |

CODE_8D9AE3:
  RTS                                       ; $8D9AE3 |

CODE_8D9AE4:
  LDA.W #$106F                              ; $8D9AE4 |
  JSL.L CODE_FL_86CAEE                      ; $8D9AE7 |
  LDA.W #$0005                              ; $8D9AEB |
  STA.B $1A,X                               ; $8D9AEE |
  LDA.W #$0040                              ; $8D9AF0 |
  JML.L CODE_FL_8CFE19                      ; $8D9AF3 |

CODE_8D9AF7:
  JSR.W CODE_FN_8D9AFB                      ; $8D9AF7 |
  RTL                                       ; $8D9AFA |

CODE_FN_8D9AFB:
  JSL.L CODE_FL_8098FD                      ; $8D9AFB |
  BCS CODE_8D9B12                           ; $8D9AFF |
  LDA.L $7E7C34                             ; $8D9B01 |
  CMP.W #$0091                              ; $8D9B05 |
  BNE CODE_8D9B11                           ; $8D9B08 |
  LDA.W #$1070                              ; $8D9B0A |
  JSL.L CODE_FL_86CAEE                      ; $8D9B0D |

CODE_8D9B11:
  RTS                                       ; $8D9B11 |

CODE_8D9B12:
  LDY.W #$0008                              ; $8D9B12 |
  LDA.L $7E7C42                             ; $8D9B15 |
  DEC A                                     ; $8D9B19 |
  BEQ CODE_8D9B27                           ; $8D9B1A |
  JSR.W CODE_FN_8D9AD2                      ; $8D9B1C |
  LDY.W #$000A                              ; $8D9B1F |
  BCS CODE_8D9B27                           ; $8D9B22 |
  LDY.W #$000C                              ; $8D9B24 |

CODE_8D9B27:
  STY.B $1A,X                               ; $8D9B27 |
  TDC                                       ; $8D9B29 |
  STA.L $7E7C42                             ; $8D9B2A |
  LDA.W #$0001                              ; $8D9B2E |
  STA.B $E4                                 ; $8D9B31 |
  RTS                                       ; $8D9B33 |

CODE_8D9B34:
  JSR.W CODE_FN_8D9AFB                      ; $8D9B34 |
  RTL                                       ; $8D9B37 |

CODE_8D9B38:
  JSR.W CODE_FN_8D9AFB                      ; $8D9B38 |
  JSL.L CODE_FL_86C70D                      ; $8D9B3B |
  STZ.B $1E,X                               ; $8D9B3F |
  LDA.W #$3D7E                              ; $8D9B41 |
  STA.B $00,X                               ; $8D9B44 |
  RTL                                       ; $8D9B46 |

CODE_8D9B47:
  STZ.B $1E,X                               ; $8D9B47 |
  LDA.W #$3DA8                              ; $8D9B49 |
  STA.B $00,X                               ; $8D9B4C |
  LDA.W #$0040                              ; $8D9B4E |
  STA.B $2C,X                               ; $8D9B51 |
  INC.B $1A,X                               ; $8D9B53 |
  RTL                                       ; $8D9B55 |

CODE_8D9B56:
  JSL.L CODE_FL_86C70D                      ; $8D9B56 |
  LDA.W #$000F                              ; $8D9B5A |
  STA.B $1A,X                               ; $8D9B5D |
  LDA.W #$D55F                              ; $8D9B5F |
  STA.B $40,X                               ; $8D9B62 |
  RTL                                       ; $8D9B64 |

CODE_8D9B65:
  STZ.B $1E,X                               ; $8D9B65 |
  LDA.W #$3DA8                              ; $8D9B67 |
  STA.B $00,X                               ; $8D9B6A |
  LDA.W #$0020                              ; $8D9B6C |
  STA.B $2C,X                               ; $8D9B6F |
  INC.B $1A,X                               ; $8D9B71 |
  LDA.B $BA                                 ; $8D9B73 |
  CMP.B $BC                                 ; $8D9B75 |
  BEQ CODE_8D9B7A                           ; $8D9B77 |
  RTL                                       ; $8D9B79 |

CODE_8D9B7A:
  LDA.W #$0025                              ; $8D9B7A |
  JML.L push_sound_queue                    ; $8D9B7D |

CODE_8D9B81:
  LDA.B $BA                                 ; $8D9B81 |
  CMP.B $BC                                 ; $8D9B83 |
  BEQ CODE_8D9B97                           ; $8D9B85 |
  LDA.W $1C38                               ; $8D9B87 |
  AND.W #$0007                              ; $8D9B8A |
  BEQ CODE_8D9B90                           ; $8D9B8D |
  RTL                                       ; $8D9B8F |

CODE_8D9B90:
  LDA.W #$0001                              ; $8D9B90 |
  JML.L CODE_FL_83D1EA                      ; $8D9B93 |

CODE_8D9B97:
  JSL.L CODE_FL_86C70D                      ; $8D9B97 |
  LDA.W #$000C                              ; $8D9B9B |
  STA.B $1A,X                               ; $8D9B9E |
  RTL                                       ; $8D9BA0 |

CODE_8D9BA1:
  STZ.B $1E,X                               ; $8D9BA1 |
  LDA.W #$3D54                              ; $8D9BA3 |
  STA.B $00,X                               ; $8D9BA6 |
  LDA.W #$0020                              ; $8D9BA8 |
  STA.B $2C,X                               ; $8D9BAB |
  INC.B $1A,X                               ; $8D9BAD |
  RTL                                       ; $8D9BAF |

CODE_8D9BB0:
  JSL.L CODE_FL_86C70D                      ; $8D9BB0 |
  PHX                                       ; $8D9BB4 |
  LDA.B $44,X                               ; $8D9BB5 |
  TAX                                       ; $8D9BB7 |
  JSL.L CODE_FL_86CA57                      ; $8D9BB8 |
  PLX                                       ; $8D9BBC |
  INC.B $1A,X                               ; $8D9BBD |
  LDA.W #$0004                              ; $8D9BBF |
  JSL.L CODE_FL_8089BD                      ; $8D9BC2 |
  LDA.W #$1071                              ; $8D9BC6 |
  JML.L CODE_FL_86CAEE                      ; $8D9BC9 |

CODE_8D9BCD:
  LDA.B $20,X                               ; $8D9BCD |
  BEQ CODE_8D9BD2                           ; $8D9BCF |
  RTL                                       ; $8D9BD1 |

CODE_8D9BD2:
  LDA.W #$0001                              ; $8D9BD2 |
  STA.B $1A,X                               ; $8D9BD5 |
  STZ.B $E4                                 ; $8D9BD7 |
  JML.L CODE_FL_86CA57                      ; $8D9BD9 |

CODE_8D9BDD:
  JSL.L CODE_FL_8098FD                      ; $8D9BDD |
  BCS CODE_8D9BE4                           ; $8D9BE1 |
  RTL                                       ; $8D9BE3 |

CODE_8D9BE4:
  LDA.W #$000C                              ; $8D9BE4 |
  STA.B $1A,X                               ; $8D9BE7 |
  LDY.W #$00C8                              ; $8D9BE9 |
  JML.L CODE_FL_808993                      ; $8D9BEC |

CODE_8D9BF0:
  JSL.L CODE_FL_8CFD8F                      ; $8D9BF0 |
  PHX                                       ; $8D9BF4 |
  ASL A                                     ; $8D9BF5 |
  TAX                                       ; $8D9BF6 |
  LDA.L PTR16_8D9C01,X                      ; $8D9BF7 |
  PLX                                       ; $8D9BFB |
  STA.B $00                                 ; $8D9BFC |
  JMP.W ($0000)                             ; $8D9BFE |

PTR16_8D9C01:
  dw CODE_8D9C05                            ; $8D9C01 |
  dw CODE_8D9C17                            ; $8D9C03 |

CODE_8D9C05:
  LDA.W #$0800                              ; $8D9C05 |
  STA.B $4E,X                               ; $8D9C08 |
  JSL.L CODE_FL_86C7A5                      ; $8D9C0A |
  LDA.W #$1072                              ; $8D9C0E |
  JSL.L CODE_FL_86CAEE                      ; $8D9C11 |
  INC.B $1A,X                               ; $8D9C15 |

CODE_8D9C17:
  RTL                                       ; $8D9C17 |

CODE_8D9C18:
  LDA.B $1A,X                               ; $8D9C18 |
  CMP.W #$0003                              ; $8D9C1A |
  BCS CODE_8D9C26                           ; $8D9C1D |
  LDA.W #$0002                              ; $8D9C1F |
  JSL.L CODE_FL_85B065                      ; $8D9C22 |

CODE_8D9C26:
  JSL.L CODE_FL_8CFD8F                      ; $8D9C26 |
  PHX                                       ; $8D9C2A |
  ASL A                                     ; $8D9C2B |
  TAX                                       ; $8D9C2C |
  LDA.L PTR16_8D9C37,X                      ; $8D9C2D |
  PLX                                       ; $8D9C31 |
  STA.B $00                                 ; $8D9C32 |
  JMP.W ($0000)                             ; $8D9C34 |

PTR16_8D9C37:
  dw CODE_8D9C41                            ; $8D9C37 |
  dw CODE_8D9C5D                            ; $8D9C39 |
  dw CODE_8D9C5E                            ; $8D9C3B |
  dw CODE_8D9C6D                            ; $8D9C3D |
  dw CODE_8D9C93                            ; $8D9C3F |

CODE_8D9C41:
  JSL.L CODE_FL_86C7A5                      ; $8D9C41 |
  JSL.L CODE_FL_85B01E                      ; $8D9C45 |
  LDA.W #$0116                              ; $8D9C49 |
  STA.B $4E,X                               ; $8D9C4C |
  JSL.L CODE_FL_86C215                      ; $8D9C4E |
  LDA.W #$106B                              ; $8D9C52 |
  JSL.L CODE_FL_86CAEE                      ; $8D9C55 |
  JML.L CODE_FL_86C63A                      ; $8D9C59 |

CODE_8D9C5D:
  RTL                                       ; $8D9C5D |

CODE_8D9C5E:
  LDA.W #$0003                              ; $8D9C5E |
  STA.B $1A,X                               ; $8D9C61 |
  LDA.B $04,X                               ; $8D9C63 |
  AND.W #$DFDF                              ; $8D9C65 |
  STA.B $04,X                               ; $8D9C68 |
  STZ.B $26,X                               ; $8D9C6A |
  RTL                                       ; $8D9C6C |

CODE_8D9C6D:
  JSL.L CODE_FL_86A046                      ; $8D9C6D |
  BCS CODE_8D9C74                           ; $8D9C71 |
  RTL                                       ; $8D9C73 |

CODE_8D9C74:
  LDA.L $7E7C42                             ; $8D9C74 |
  DEC A                                     ; $8D9C78 |
  BEQ CODE_8D9C81                           ; $8D9C79 |
  LDA.W #$0001                              ; $8D9C7B |
  STA.B $1A,X                               ; $8D9C7E |
  RTL                                       ; $8D9C80 |

CODE_8D9C81:
  TDC                                       ; $8D9C81 |
  STA.L $7E7C42                             ; $8D9C82 |
  LDA.W #$0001                              ; $8D9C86 |
  STA.B $E4                                 ; $8D9C89 |
  LDA.W #$CCD0                              ; $8D9C8B |
  STA.B $40,X                               ; $8D9C8E |
  INC.B $1A,X                               ; $8D9C90 |
  RTL                                       ; $8D9C92 |

CODE_8D9C93:
  JSL.L CODE_FL_86A046                      ; $8D9C93 |
  BCS CODE_8D9C9A                           ; $8D9C97 |
  RTL                                       ; $8D9C99 |

CODE_8D9C9A:
  LDA.W #$CB9C                              ; $8D9C9A |
  STA.B $40,X                               ; $8D9C9D |
  JSL.L CODE_FL_8D9E42                      ; $8D9C9F |
  BRA CODE_8D9C74                           ; $8D9CA3 |

CODE_FN_8D9CA5:
  LDA.B $09,X                               ; $8D9CA5 |
  CLC                                       ; $8D9CA7 |
  ADC.W $1662                               ; $8D9CA8 |
  STA.B $3A,X                               ; $8D9CAB |
  RTS                                       ; $8D9CAD |

CODE_FN_8D9CAE:
  LDA.B $34,X                               ; $8D9CAE |
  STA.B $3C,X                               ; $8D9CB0 |
  STZ.B $34,X                               ; $8D9CB2 |
  RTS                                       ; $8D9CB4 |

CODE_FN_8D9CB5:
  STZ.B $00                                 ; $8D9CB5 |
  STZ.B $04                                 ; $8D9CB7 |
  STZ.B $08                                 ; $8D9CB9 |
  STZ.B $0A                                 ; $8D9CBB |
  STZ.B $0C                                 ; $8D9CBD |
  STZ.B $0E                                 ; $8D9CBF |
  LDA.B ($48,X)                             ; $8D9CC1 |
  TAY                                       ; $8D9CC3 |
  STZ.B $10                                 ; $8D9CC4 |
  LDA.W $0009,Y                             ; $8D9CC6 |
  CLC                                       ; $8D9CC9 |
  ADC.W $1662                               ; $8D9CCA |
  STA.B $02                                 ; $8D9CCD |
  LDA.B $09,X                               ; $8D9CCF |
  SEC                                       ; $8D9CD1 |
  SBC.W $0009,Y                             ; $8D9CD2 |
  BPL CODE_8D9CDD                           ; $8D9CD5 |
  EOR.W #$FFFF                              ; $8D9CD7 |
  INC A                                     ; $8D9CDA |
  INC.B $10                                 ; $8D9CDB |

CODE_8D9CDD:
  AND.W #$00FF                              ; $8D9CDD |
  ASL A                                     ; $8D9CE0 |
  ASL A                                     ; $8D9CE1 |
  ASL A                                     ; $8D9CE2 |
  ASL A                                     ; $8D9CE3 |
  STA.B $09                                 ; $8D9CE4 |
  LDA.B $10                                 ; $8D9CE6 |
  BEQ CODE_8D9CFD                           ; $8D9CE8 |
  LDA.B $0A                                 ; $8D9CEA |
  EOR.W #$FFFF                              ; $8D9CEC |
  STA.B $0A                                 ; $8D9CEF |
  LDA.B $08                                 ; $8D9CF1 |
  EOR.W #$FFFF                              ; $8D9CF3 |
  INC A                                     ; $8D9CF6 |
  STA.B $08                                 ; $8D9CF7 |
  BNE CODE_8D9CFD                           ; $8D9CF9 |
  INC.B $0A                                 ; $8D9CFB |

CODE_8D9CFD:
  STZ.B $10                                 ; $8D9CFD |
  LDA.W $000D,Y                             ; $8D9CFF |
  CLC                                       ; $8D9D02 |
  ADC.W $1672                               ; $8D9D03 |
  STA.B $06                                 ; $8D9D06 |
  LDA.B $0D,X                               ; $8D9D08 |
  SEC                                       ; $8D9D0A |
  SBC.W $000D,Y                             ; $8D9D0B |
  BPL CODE_8D9D16                           ; $8D9D0E |
  EOR.W #$FFFF                              ; $8D9D10 |
  INC A                                     ; $8D9D13 |
  INC.B $10                                 ; $8D9D14 |

CODE_8D9D16:
  AND.W #$00FF                              ; $8D9D16 |
  ASL A                                     ; $8D9D19 |
  ASL A                                     ; $8D9D1A |
  ASL A                                     ; $8D9D1B |
  ASL A                                     ; $8D9D1C |
  STA.B $0D                                 ; $8D9D1D |
  LDA.B $10                                 ; $8D9D1F |
  BEQ CODE_8D9D36                           ; $8D9D21 |
  LDA.B $0E                                 ; $8D9D23 |
  EOR.W #$FFFF                              ; $8D9D25 |
  STA.B $0E                                 ; $8D9D28 |
  LDA.B $0C                                 ; $8D9D2A |
  EOR.W #$FFFF                              ; $8D9D2C |
  INC A                                     ; $8D9D2F |
  STA.B $0C                                 ; $8D9D30 |
  BNE CODE_8D9D36                           ; $8D9D32 |
  INC.B $0E                                 ; $8D9D34 |

CODE_8D9D36:
  LDY.W #$001E                              ; $8D9D36 |

CODE_8D9D39:
  LDA.B $02                                 ; $8D9D39 |
  STA.W $1CAE,Y                             ; $8D9D3B |
  LDA.B $00                                 ; $8D9D3E |
  CLC                                       ; $8D9D40 |
  ADC.B $08                                 ; $8D9D41 |
  STA.B $00                                 ; $8D9D43 |
  LDA.B $02                                 ; $8D9D45 |
  ADC.B $0A                                 ; $8D9D47 |
  STA.B $02                                 ; $8D9D49 |
  LDA.B $06                                 ; $8D9D4B |
  STA.W $1CCE,Y                             ; $8D9D4D |
  LDA.B $04                                 ; $8D9D50 |
  CLC                                       ; $8D9D52 |
  ADC.B $0C                                 ; $8D9D53 |
  STA.B $04                                 ; $8D9D55 |
  LDA.B $06                                 ; $8D9D57 |
  ADC.B $0E                                 ; $8D9D59 |
  STA.B $06                                 ; $8D9D5B |
  DEY                                       ; $8D9D5D |
  DEY                                       ; $8D9D5E |
  BPL CODE_8D9D39                           ; $8D9D5F |
  STZ.B $3A,X                               ; $8D9D61 |

CODE_FN_8D9D63:
  LDA.B ($48,X)                             ; $8D9D63 |
  TAY                                       ; $8D9D65 |
  LDA.W $0009,Y                             ; $8D9D66 |
  CLC                                       ; $8D9D69 |
  ADC.W $1662                               ; $8D9D6A |
  STA.B $3C,X                               ; $8D9D6D |
  LDA.W $000D,Y                             ; $8D9D6F |
  CLC                                       ; $8D9D72 |
  ADC.W $1672                               ; $8D9D73 |
  STA.B $3E,X                               ; $8D9D76 |
  RTS                                       ; $8D9D78 |

CODE_FN_8D9D79:
  LDA.B ($48,X)                             ; $8D9D79 |
  TAY                                       ; $8D9D7B |
  LDA.B $3C,X                               ; $8D9D7C |
  SEC                                       ; $8D9D7E |
  SBC.W $1662                               ; $8D9D7F |
  SEC                                       ; $8D9D82 |
  SBC.W $0009,Y                             ; $8D9D83 |
  BNE CODE_8D9D94                           ; $8D9D86 |
  LDA.B $3E,X                               ; $8D9D88 |
  SEC                                       ; $8D9D8A |
  SBC.W $1672                               ; $8D9D8B |
  SEC                                       ; $8D9D8E |
  SBC.W $000D,Y                             ; $8D9D8F |
  BEQ CODE_8D9DCD                           ; $8D9D92 |

CODE_8D9D94:
  LDY.B $3A,X                               ; $8D9D94 |
  LDA.W $1CAE,Y                             ; $8D9D96 |
  SEC                                       ; $8D9D99 |
  SBC.W $1662                               ; $8D9D9A |
  STA.B $09,X                               ; $8D9D9D |
  LDA.W $1CCE,Y                             ; $8D9D9F |
  SEC                                       ; $8D9DA2 |
  SBC.W $1672                               ; $8D9DA3 |
  STA.B $0D,X                               ; $8D9DA6 |
  PHX                                       ; $8D9DA8 |
  LDA.B ($48,X)                             ; $8D9DA9 |
  TAX                                       ; $8D9DAB |
  LDA.B $09,X                               ; $8D9DAC |
  CLC                                       ; $8D9DAE |
  ADC.W $1662                               ; $8D9DAF |
  STA.W $1CAE,Y                             ; $8D9DB2 |
  LDA.B $0D,X                               ; $8D9DB5 |
  CLC                                       ; $8D9DB7 |
  ADC.W $1672                               ; $8D9DB8 |
  STA.W $1CCE,Y                             ; $8D9DBB |
  PLX                                       ; $8D9DBE |
  LDA.B $3A,X                               ; $8D9DBF |
  INC A                                     ; $8D9DC1 |
  INC A                                     ; $8D9DC2 |
  AND.W #$001F                              ; $8D9DC3 |
  STA.B $3A,X                               ; $8D9DC6 |
  JSR.W CODE_FN_8D9D63                      ; $8D9DC8 |
  SEC                                       ; $8D9DCB |
  RTS                                       ; $8D9DCC |

CODE_8D9DCD:
  JSR.W CODE_FN_8D9D63                      ; $8D9DCD |
  CLC                                       ; $8D9DD0 |
  RTS                                       ; $8D9DD1 |

CODE_FN_8D9DD2:
  LDA.B ($48,X)                             ; $8D9DD2 |
  TAY                                       ; $8D9DD4 |
  LDA.W $0004,Y                             ; $8D9DD5 |
  AND.W #$1818                              ; $8D9DD8 |
  STA.B $00                                 ; $8D9DDB |
  LDA.B $04,X                               ; $8D9DDD |
  AND.W #$E7E7                              ; $8D9DDF |
  ORA.B $00                                 ; $8D9DE2 |
  STA.B $04,X                               ; $8D9DE4 |
  RTS                                       ; $8D9DE6 |

CODE_FN_8D9DE7:
  PHY                                       ; $8D9DE7 |
  LDA.B $48,X                               ; $8D9DE8 |
  SEC                                       ; $8D9DEA |
  SBC.W #$00DC                              ; $8D9DEB |
  TAY                                       ; $8D9DEE |
  LDA.W $0028,Y                             ; $8D9DEF |
  PLY                                       ; $8D9DF2 |
  BIT.W #$0F00                              ; $8D9DF3 |
  RTS                                       ; $8D9DF6 |

CODE_FN_8D9DF7:
  STA.B $00                                 ; $8D9DF7 |
  LDY.W #$00DC                              ; $8D9DF9 |
  JSR.W CODE_FN_8D9E04                      ; $8D9DFC |
  BCC CODE_8D9E24                           ; $8D9DFF |
  LDY.W #$00DE                              ; $8D9E01 |

CODE_FN_8D9E04:
  LDA.W $0000,Y                             ; $8D9E04 |
  TAY                                       ; $8D9E07 |
  LDA.W $000D,Y                             ; $8D9E08 |
  CLC                                       ; $8D9E0B |
  ADC.W $1672                               ; $8D9E0C |
  CMP.B $00                                 ; $8D9E0F |
  BCS CODE_8D9E24                           ; $8D9E11 |
  LDA.W $0009,Y                             ; $8D9E13 |
  SEC                                       ; $8D9E16 |
  SBC.B $09,X                               ; $8D9E17 |
  BPL CODE_8D9E1F                           ; $8D9E19 |
  EOR.W #$FFFF                              ; $8D9E1B |
  INC A                                     ; $8D9E1E |

CODE_8D9E1F:
  CMP.W #$0020                              ; $8D9E1F |
  BCS CODE_8D9E24                           ; $8D9E22 |

CODE_8D9E24:
  RTS                                       ; $8D9E24 |

CODE_FN_8D9E25:
  TXY                                       ; $8D9E25 |
  LDX.W #$0400                              ; $8D9E26 |
  JSR.W CODE_FN_8D9E34                      ; $8D9E29 |
  LDX.W #$04C0                              ; $8D9E2C |
  JSR.W CODE_FN_8D9E34                      ; $8D9E2F |
  TYX                                       ; $8D9E32 |
  RTS                                       ; $8D9E33 |

CODE_FN_8D9E34:
  LDA.B $18,X                               ; $8D9E34 |
  BEQ CODE_8D9E41                           ; $8D9E36 |
  JSL.L CODE_FL_86C489                      ; $8D9E38 |
  EOR.W #$2020                              ; $8D9E3C |
  STA.B $04,X                               ; $8D9E3F |

CODE_8D9E41:
  RTS                                       ; $8D9E41 |

CODE_FL_8D9E42:
  LDA.W #$0015                              ; $8D9E42 |
  JML.L push_sound_queue                    ; $8D9E45 |

CODE_FL_8D9E49:
  LDA.W #$0001                              ; $8D9E49 |
  STA.L $7E7C74                             ; $8D9E4C |
  PHX                                       ; $8D9E50 |
  LDX.W #$0580                              ; $8D9E51 |

CODE_8D9E54:
  LDA.B $18,X                               ; $8D9E54 |
  BEQ CODE_8D9E6B                           ; $8D9E56 |
  CMP.W #$002B                              ; $8D9E58 |
  BEQ CODE_8D9E67                           ; $8D9E5B |
  CMP.W #$002C                              ; $8D9E5D |
  BEQ CODE_8D9E67                           ; $8D9E60 |
  CMP.W #$0060                              ; $8D9E62 |
  BNE CODE_8D9E6B                           ; $8D9E65 |

CODE_8D9E67:
  JSL.L CODE_FL_86C215                      ; $8D9E67 |

CODE_8D9E6B:
  LDA.B $16,X                               ; $8D9E6B |
  TAX                                       ; $8D9E6D |
  BNE CODE_8D9E54                           ; $8D9E6E |
  PLX                                       ; $8D9E70 |
  RTL                                       ; $8D9E71 |

CODE_FL_8D9E72:
  LDA.W #$0000                              ; $8D9E72 |
  STA.L $7E7C74                             ; $8D9E75 |
  PHX                                       ; $8D9E79 |
  LDX.W #$0580                              ; $8D9E7A |

CODE_8D9E7D:
  LDA.B $18,X                               ; $8D9E7D |
  BEQ CODE_8D9E94                           ; $8D9E7F |
  CMP.W #$002B                              ; $8D9E81 |
  BEQ CODE_8D9E90                           ; $8D9E84 |
  CMP.W #$002C                              ; $8D9E86 |
  BEQ CODE_8D9E90                           ; $8D9E89 |
  CMP.W #$0060                              ; $8D9E8B |
  BNE CODE_8D9E94                           ; $8D9E8E |

CODE_8D9E90:
  JSL.L CODE_FL_86C21D                      ; $8D9E90 |

CODE_8D9E94:
  LDA.B $16,X                               ; $8D9E94 |
  TAX                                       ; $8D9E96 |
  BNE CODE_8D9E7D                           ; $8D9E97 |
  PLX                                       ; $8D9E99 |
  RTL                                       ; $8D9E9A |

CODE_8D9E9B:
  LDA.B $1A,X                               ; $8D9E9B |
  BNE CODE_8D9EB2                           ; $8D9E9D |
  LDA.W #$0043                              ; $8D9E9F |
  STA.B $02,X                               ; $8D9EA2 |
  LDA.W #$0030                              ; $8D9EA4 |
  STA.B $2C,X                               ; $8D9EA7 |
  INC.B $1A,X                               ; $8D9EA9 |
  LDA.W #$0077                              ; $8D9EAB |
  JML.L CODE_FL_86CAEE                      ; $8D9EAE |

CODE_8D9EB2:
  JSL.L CODE_FL_97FC80                      ; $8D9EB2 |
  DEC.B $2C,X                               ; $8D9EB6 |
  BEQ CODE_8D9EBB                           ; $8D9EB8 |
  RTL                                       ; $8D9EBA |

CODE_8D9EBB:
  JML.L CODE_FL_86CA36                      ; $8D9EBB |

CODE_8D9EBF:
  JSL.L CODE_FL_86C412                      ; $8D9EBF |
  PHX                                       ; $8D9EC3 |
  ASL A                                     ; $8D9EC4 |
  TAX                                       ; $8D9EC5 |
  LDA.L PTR16_8D9ED0,X                      ; $8D9EC6 |
  PLX                                       ; $8D9ECA |
  STA.B $00                                 ; $8D9ECB |
  JMP.W ($0000)                             ; $8D9ECD |

PTR16_8D9ED0:
  dw CODE_8D9ED6                            ; $8D9ED0 |
  dw CODE_8D9EF8                            ; $8D9ED2 |
  dw CODE_8D9F1B                            ; $8D9ED4 |

CODE_8D9ED6:
  LDA.B $18,X                               ; $8D9ED6 |
  CMP.W #$021D                              ; $8D9ED8 |
  BEQ CODE_8D9EF0                           ; $8D9EDB |
  CMP.W #$0220                              ; $8D9EDD |
  BEQ CODE_8D9EE9                           ; $8D9EE0 |
  LDA.W #$DE86                              ; $8D9EE2 |
  STA.B $00,X                               ; $8D9EE5 |
  BRA CODE_8D9EF0                           ; $8D9EE7 |

CODE_8D9EE9:
  LDA.W #$1073                              ; $8D9EE9 |
  JSL.L CODE_FL_86CAEE                      ; $8D9EEC |

CODE_8D9EF0:
  JSL.L CODE_FL_86C63A                      ; $8D9EF0 |
  JML.L CODE_FL_85B01E                      ; $8D9EF4 |

CODE_8D9EF8:
  LDA.W #$0002                              ; $8D9EF8 |
  JSL.L CODE_FL_85B065                      ; $8D9EFB |
  LDA.B $18,X                               ; $8D9EFF |
  CMP.W #$0220                              ; $8D9F01 |
  BEQ CODE_8D9F1A                           ; $8D9F04 |
  TXA                                       ; $8D9F06 |
  CMP.L $7E7C72                             ; $8D9F07 |
  BNE CODE_8D9F1A                           ; $8D9F0B |
  LDA.B ($48,X)                             ; $8D9F0D |
  TAY                                       ; $8D9F0F |
  LDA.W $0094,Y                             ; $8D9F10 |
  DEC A                                     ; $8D9F13 |
  BEQ CODE_8D9F1A                           ; $8D9F14 |
  JSL.L CODE_FL_85B0C9                      ; $8D9F16 |

CODE_8D9F1A:
  RTL                                       ; $8D9F1A |

CODE_8D9F1B:
  LDA.W #$0001                              ; $8D9F1B |
  STA.L $7E7C74                             ; $8D9F1E |
  JSL.L CODE_FL_8098FD                      ; $8D9F22 |
  BCC CODE_8D9F2A                           ; $8D9F26 |
  DEC.B $1A,X                               ; $8D9F28 |

CODE_8D9F2A:
  RTL                                       ; $8D9F2A |

CODE_8D9F2B:
  JSL.L CODE_FL_86C412                      ; $8D9F2B |
  PHX                                       ; $8D9F2F |
  ASL A                                     ; $8D9F30 |
  TAX                                       ; $8D9F31 |
  LDA.L PTR16_8D9F3C,X                      ; $8D9F32 |
  PLX                                       ; $8D9F36 |
  STA.B $00                                 ; $8D9F37 |
  JMP.W ($0000)                             ; $8D9F39 |

PTR16_8D9F3C:
  dw CODE_8D9F42                            ; $8D9F3C |
  dw CODE_8D9EF8                            ; $8D9F3E |
  dw CODE_8D9F74                            ; $8D9F40 |

CODE_8D9F42:
  LDA.W #$6B8A                              ; $8D9F42 |
  STA.B $40,X                               ; $8D9F45 |
  LDA.W #$0014                              ; $8D9F47 |
  LDY.B $8E                                 ; $8D9F4A |
  CPY.W #$010B                              ; $8D9F4C |
  BEQ CODE_8D9F5C                           ; $8D9F4F |
  LDA.W #$0018                              ; $8D9F51 |
  CPY.W #$0117                              ; $8D9F54 |
  BEQ CODE_8D9F5C                           ; $8D9F57 |
  LDA.W #$0022                              ; $8D9F59 |

CODE_8D9F5C:
  JSL.L CODE_FL_87E3B2                      ; $8D9F5C |
  JSL.L CODE_FL_8CF98E                      ; $8D9F60 |
  BCC CODE_8D9F67                           ; $8D9F64 |
  RTL                                       ; $8D9F66 |

CODE_8D9F67:
  LDA.W #$DE86                              ; $8D9F67 |
  STA.B $00,X                               ; $8D9F6A |
  JSL.L CODE_FL_86C63A                      ; $8D9F6C |
  JML.L CODE_FL_85B01E                      ; $8D9F70 |

CODE_8D9F74:
  LDA.W #$8001                              ; $8D9F74 |
  STA.B $E4                                 ; $8D9F77 |
  JSL.L CODE_FL_87E3B7                      ; $8D9F79 |
  BCC CODE_8D9F86                           ; $8D9F7D |
  STZ.B $E4                                 ; $8D9F7F |
  DEC.B $1A,X                               ; $8D9F81 |
  STZ.B $32,X                               ; $8D9F83 |
  RTL                                       ; $8D9F85 |

CODE_8D9F86:
  BEQ CODE_8D9F96                           ; $8D9F86 |
  LDA.B $A6                                 ; $8D9F88 |
  BEQ CODE_8D9F96                           ; $8D9F8A |
  JSL.L CODE_FL_96FE03                      ; $8D9F8C |
  LDA.B $AC                                 ; $8D9F90 |
  JSL.L CODE_FL_96FEAF                      ; $8D9F92 |

CODE_8D9F96:
  RTL                                       ; $8D9F96 |

CODE_8D9F97:
  LDA.B $1A,X                               ; $8D9F97 |
  PHX                                       ; $8D9F99 |
  ASL A                                     ; $8D9F9A |
  TAX                                       ; $8D9F9B |
  LDA.L PTR16_8D9FA6,X                      ; $8D9F9C |
  PLX                                       ; $8D9FA0 |
  STA.B $00                                 ; $8D9FA1 |
  JMP.W ($0000)                             ; $8D9FA3 |

PTR16_8D9FA6:
  dw CODE_8D9FAC                            ; $8D9FA6 |
  dw CODE_8D9FCD                            ; $8D9FA8 |
  dw CODE_8D9FF8                            ; $8D9FAA |

CODE_8D9FAC:
  LDA.W #$4600                              ; $8D9FAC |
  STA.B $4E,X                               ; $8D9FAF |
  JSL.L CODE_FL_86C7A5                      ; $8D9FB1 |
  LDA.W #$386E                              ; $8D9FB5 |
  STA.B $00,X                               ; $8D9FB8 |
  LDA.W #$0010                              ; $8D9FBA |
  STA.B $11,X                               ; $8D9FBD |
  LDA.W #$A000                              ; $8D9FBF |
  STA.B $34,X                               ; $8D9FC2 |
  LDA.W #$8020                              ; $8D9FC4 |
  STA.B $22,X                               ; $8D9FC7 |
  JML.L CODE_FL_86C63A                      ; $8D9FC9 |

CODE_8D9FCD:
  LDA.B $32,X                               ; $8D9FCD |
  BMI CODE_8D9FD2                           ; $8D9FCF |
  RTL                                       ; $8D9FD1 |

CODE_8D9FD2:
  AND.W #$7FFF                              ; $8D9FD2 |
  STA.B $32,X                               ; $8D9FD5 |
  LDA.B $37,X                               ; $8D9FD7 |
  AND.W #$00FF                              ; $8D9FD9 |
  CMP.W #$0002                              ; $8D9FDC |
  BEQ CODE_8D9FE4                           ; $8D9FDF |
  STZ.B $3A,X                               ; $8D9FE1 |
  RTL                                       ; $8D9FE3 |

CODE_8D9FE4:
  INC.B $3A,X                               ; $8D9FE4 |
  LDA.B $3A,X                               ; $8D9FE6 |
  CMP.W #$0010                              ; $8D9FE8 |
  BCC CODE_8D9FF7                           ; $8D9FEB |
  LDY.B $44,X                               ; $8D9FED |
  LDA.W #$0001                              ; $8D9FEF |
  STA.W $003E,Y                             ; $8D9FF2 |
  INC.B $1A,X                               ; $8D9FF5 |

CODE_8D9FF7:
  RTL                                       ; $8D9FF7 |

CODE_8D9FF8:
  RTL                                       ; $8D9FF8 |

CODE_8D9FF9:
  JSL.L CODE_FL_8CFD8F                      ; $8D9FF9 |
  PHX                                       ; $8D9FFD |
  ASL A                                     ; $8D9FFE |
  TAX                                       ; $8D9FFF |
  LDA.L PTR16_8DA00A,X                      ; $8DA000 |
  PLX                                       ; $8DA004 |
  STA.B $00                                 ; $8DA005 |
  JMP.W ($0000)                             ; $8DA007 |

PTR16_8DA00A:
  dw CODE_8DA012                            ; $8DA00A |
  dw CODE_8DA045                            ; $8DA00C |
  dw CODE_8DA067                            ; $8DA00E |
  dw CODE_8DA0BC                            ; $8DA010 |

CODE_8DA012:
  LDA.W #$01FD                              ; $8DA012 |
  JSL.L CODE_FL_86C9A4                      ; $8DA015 |
  BCS CODE_8DA01F                           ; $8DA019 |
  STY.B $44,X                               ; $8DA01B |
  STX.B $44,Y                               ; $8DA01D |

CODE_8DA01F:
  STZ.B $3C,X                               ; $8DA01F |
  STZ.B $3E,X                               ; $8DA021 |
  LDA.B $04,X                               ; $8DA023 |
  ORA.W #$1818                              ; $8DA025 |
  STA.B $04,X                               ; $8DA028 |
  LDA.B $09,X                               ; $8DA02A |
  CLC                                       ; $8DA02C |
  ADC.W #$0005                              ; $8DA02D |
  STA.B $09,X                               ; $8DA030 |
  LDA.B $0D,X                               ; $8DA032 |
  CLC                                       ; $8DA034 |
  ADC.W #$FFF6                              ; $8DA035 |
  STA.B $0D,X                               ; $8DA038 |
  INC.B $1A,X                               ; $8DA03A |
  LDA.W #$4600                              ; $8DA03C |
  STA.B $4E,X                               ; $8DA03F |
  JML.L CODE_FL_86C7A5                      ; $8DA041 |

CODE_8DA045:
  LDA.B $3E,X                               ; $8DA045 |
  BNE CODE_8DA04A                           ; $8DA047 |
  RTL                                       ; $8DA049 |

CODE_8DA04A:
  JSL.L CODE_FL_86C26A                      ; $8DA04A |
  LDA.W #$1063                              ; $8DA04E |
  JSL.L CODE_FL_86CAEE                      ; $8DA051 |
  LDA.W #$0094                              ; $8DA055 |
  JSL.L CODE_FL_8089BD                      ; $8DA058 |
  STZ.B $3A,X                               ; $8DA05C |
  LDA.W #$000A                              ; $8DA05E |
  STA.B $40,X                               ; $8DA061 |
  INC.B $1A,X                               ; $8DA063 |
  BRA CODE_8DA06E                           ; $8DA065 |

CODE_8DA067:
  JSR.W CODE_FN_8DA0A8                      ; $8DA067 |
  JSL.L CODE_FL_86C70D                      ; $8DA06A |

CODE_8DA06E:
  LDA.B $3A,X                               ; $8DA06E |
  ASL A                                     ; $8DA070 |
  ASL A                                     ; $8DA071 |
  ASL A                                     ; $8DA072 |
  SEC                                       ; $8DA073 |
  SBC.B $3A,X                               ; $8DA074 |
  INC.B $3A,X                               ; $8DA076 |
  TAY                                       ; $8DA078 |
  LDA.W CODE_00D5D1,Y                       ; $8DA079 |
  AND.W #$00FF                              ; $8DA07C |
  STA.B $2C,X                               ; $8DA07F |
  BEQ CODE_8DA096                           ; $8DA081 |
  LDA.W LOOSE_OP_00D5D2,Y                   ; $8DA083 |
  STA.B $26,X                               ; $8DA086 |
  LDA.W LOOSE_OP_00D5D4,Y                   ; $8DA088 |
  STA.B $28,X                               ; $8DA08B |
  LDA.W LOOSE_OP_00D5D6,Y                   ; $8DA08D |
  LDY.B $44,X                               ; $8DA090 |
  STA.W $0000,Y                             ; $8DA092 |
  RTL                                       ; $8DA095 |

CODE_8DA096:
  LDA.W #$0001                              ; $8DA096 |
  STA.B $3C,X                               ; $8DA099 |
  STZ.B $1E,X                               ; $8DA09B |
  STZ.B $00,X                               ; $8DA09D |
  INC.B $1A,X                               ; $8DA09F |
  LDY.B $44,X                               ; $8DA0A1 |
  TDC                                       ; $8DA0A3 |
  STA.W $0000,Y                             ; $8DA0A4 |
  RTL                                       ; $8DA0A7 |

CODE_FN_8DA0A8:
  LDA.B $40,X                               ; $8DA0A8 |
  BEQ CODE_8DA0AF                           ; $8DA0AA |
  DEC.B $40,X                               ; $8DA0AC |
  RTS                                       ; $8DA0AE |

CODE_8DA0AF:
  LDA.W #$000A                              ; $8DA0AF |
  STA.B $40,X                               ; $8DA0B2 |
  LDA.W #$0013                              ; $8DA0B4 |
  JSL.L push_sound_queue                    ; $8DA0B7 |
  RTS                                       ; $8DA0BB |

CODE_8DA0BC:
  RTL                                       ; $8DA0BC |

CODE_8DA0BD:
  JSL.L CODE_FL_86C424                      ; $8DA0BD |
  PHX                                       ; $8DA0C1 |
  ASL A                                     ; $8DA0C2 |
  TAX                                       ; $8DA0C3 |
  LDA.L PTR16_8DA0CE,X                      ; $8DA0C4 |
  PLX                                       ; $8DA0C8 |
  STA.B $00                                 ; $8DA0C9 |
  JMP.W ($0000)                             ; $8DA0CB |

PTR16_8DA0CE:
  dw CODE_8DA0E4                            ; $8DA0CE |
  dw CODE_8DA111                            ; $8DA0D0 |
  dw CODE_8DA124                            ; $8DA0D2 |
  dw CODE_8DA14E                            ; $8DA0D4 |
  dw CODE_8DA198                            ; $8DA0D6 |
  dw CODE_8DA257                            ; $8DA0D8 |
  dw CODE_8DA28B                            ; $8DA0DA |
  dw CODE_8DA2C0                            ; $8DA0DC |
  dw CODE_8DA301                            ; $8DA0DE |
  dw CODE_8DA348                            ; $8DA0E0 |
  dw CODE_8DA357                            ; $8DA0E2 |

CODE_8DA0E4:
  JSL.L CODE_FL_85A8D6                      ; $8DA0E4 |
  JSL.L CODE_FL_85AD48                      ; $8DA0E8 |
  JSL.L CODE_FL_85AA07                      ; $8DA0EC |
  LDA.W #$B880                              ; $8DA0F0 |
  STA.B $34,X                               ; $8DA0F3 |
  JSL.L CODE_FL_86C63F                      ; $8DA0F5 |
  JSL.L CODE_FL_85ABE7                      ; $8DA0F9 |
  BCS CODE_8DA108                           ; $8DA0FD |
  LDA.W #$000A                              ; $8DA0FF |
  STA.B $36,X                               ; $8DA102 |
  STZ.W $1C66                               ; $8DA104 |
  RTL                                       ; $8DA107 |

CODE_8DA108:
  LDA.W #$0004                              ; $8DA108 |
  STA.W $1F38                               ; $8DA10B |
  BRL CODE_JL_8DA2ED                        ; $8DA10E |

CODE_8DA111:
  LDA.B $32,X                               ; $8DA111 |
  BPL CODE_8DA121                           ; $8DA113 |
  LDA.B $37,X                               ; $8DA115 |
  AND.W #$00FF                              ; $8DA117 |
  CMP.W #$0001                              ; $8DA11A |
  BNE CODE_8DA121                           ; $8DA11D |
  INC.B $1A,X                               ; $8DA11F |

CODE_8DA121:
  STZ.B $32,X                               ; $8DA121 |
  RTL                                       ; $8DA123 |

CODE_8DA124:
  JSL.L CODE_FL_8DA1B6                      ; $8DA124 |
  LDA.B $22,X                               ; $8DA128 |
  ORA.W #$0004                              ; $8DA12A |
  STA.B $22,X                               ; $8DA12D |
  LDA.W #$0001                              ; $8DA12F |
  STA.W $1C66                               ; $8DA132 |
  JSL.L CODE_FL_8DA18A                      ; $8DA135 |
  LDY.W #$0020                              ; $8DA139 |
  JSL.L CODE_FL_80976B                      ; $8DA13C |
  LDA.W #$0100                              ; $8DA140 |
  STA.B $2C,X                               ; $8DA143 |
  INC.B $1A,X                               ; $8DA145 |
  LDA.W #$0014                              ; $8DA147 |
  JML.L CODE_FL_8089BD                      ; $8DA14A |

CODE_8DA14E:
  JSL.L CODE_FL_8DA1B6                      ; $8DA14E |
  LDA.B $2C,X                               ; $8DA152 |
  CMP.W #$0020                              ; $8DA154 |
  BCC CODE_8DA164                           ; $8DA157 |
  CMP.W #$0040                              ; $8DA159 |
  BCC CODE_8DA169                           ; $8DA15C |
  CMP.W #$0080                              ; $8DA15E |
  BCC CODE_8DA16E                           ; $8DA161 |
  RTL                                       ; $8DA163 |

CODE_8DA164:
  LDA.W #$0002                              ; $8DA164 |
  BRA CODE_8DA171                           ; $8DA167 |

CODE_8DA169:
  LDA.W #$0004                              ; $8DA169 |
  BRA CODE_8DA171                           ; $8DA16C |

CODE_8DA16E:
  LDA.W #$0008                              ; $8DA16E |

CODE_8DA171:
  STA.B $00                                 ; $8DA171 |
  JSL.L CODE_FL_8DA17E                      ; $8DA173 |
  JSL.L CODE_FL_86C70D                      ; $8DA177 |
  INC.B $1A,X                               ; $8DA17B |
  RTL                                       ; $8DA17D |

CODE_FL_8DA17E:
  LDA.W $1C38                               ; $8DA17E |
  AND.B $00                                 ; $8DA181 |
  BNE CODE_FL_8DA18A                        ; $8DA183 |

CODE_FL_8DA185:
  LDY.W #$E8A2                              ; $8DA185 |
  BRA CODE_8DA18D                           ; $8DA188 |

CODE_FL_8DA18A:
  LDY.W #$E8C2                              ; $8DA18A |

CODE_8DA18D:
  LDA.W #$0007                              ; $8DA18D |
  ASL A                                     ; $8DA190 |
  PHX                                       ; $8DA191 |
  JSL.L CODE_FL_80C2BA                      ; $8DA192 |
  PLX                                       ; $8DA196 |
  RTL                                       ; $8DA197 |

CODE_8DA198:
  JSL.L CODE_FL_8DA1B6                      ; $8DA198 |
  JSL.L CODE_FL_8DA185                      ; $8DA19C |
  LDA.B $22,X                               ; $8DA1A0 |
  AND.W #$FFFB                              ; $8DA1A2 |
  STA.B $22,X                               ; $8DA1A5 |
  STZ.W $1C66                               ; $8DA1A7 |
  LDA.W #$0001                              ; $8DA1AA |
  STA.B $1A,X                               ; $8DA1AD |
  LDY.W #$0020                              ; $8DA1AF |
  JML.L CODE_FL_80972B                      ; $8DA1B2 |

CODE_FL_8DA1B6:
  LDA.B $38,X                               ; $8DA1B6 |
  BEQ CODE_8DA1D0                           ; $8DA1B8 |
  DEC.B $38,X                               ; $8DA1BA |
  CMP.W #$0020                              ; $8DA1BC |
  BCC CODE_8DA204                           ; $8DA1BF |
  AND.W #$0001                              ; $8DA1C1 |
  STA.B $00                                 ; $8DA1C4 |
  LDA.W $1682                               ; $8DA1C6 |
  EOR.B $00                                 ; $8DA1C9 |
  STA.W $1682                               ; $8DA1CB |
  BRA CODE_8DA204                           ; $8DA1CE |

CODE_8DA1D0:
  LDA.B $32,X                               ; $8DA1D0 |
  BPL CODE_8DA204                           ; $8DA1D2 |
  LDA.B $37,X                               ; $8DA1D4 |
  AND.W #$00FF                              ; $8DA1D6 |
  CMP.W #$0001                              ; $8DA1D9 |
  BEQ CODE_8DA204                           ; $8DA1DC |
  LDA.W #$0040                              ; $8DA1DE |
  STA.B $38,X                               ; $8DA1E1 |
  LDA.W #$0030                              ; $8DA1E3 |
  JSL.L CODE_FL_8089BD                      ; $8DA1E6 |
  STZ.B $06,X                               ; $8DA1EA |
  LDA.W #$0043                              ; $8DA1EC |
  STA.B $02,X                               ; $8DA1EF |
  JSR.W CODE_FN_8DA207                      ; $8DA1F1 |
  STZ.B $32,X                               ; $8DA1F4 |
  LDA.B $36,X                               ; $8DA1F6 |
  AND.W #$00FF                              ; $8DA1F8 |
  BEQ CODE_8DA24E                           ; $8DA1FB |
  DEC A                                     ; $8DA1FD |
  SEP #$20                                  ; $8DA1FE |
  STA.B $36,X                               ; $8DA200 |
  REP #$20                                  ; $8DA202 |

CODE_8DA204:
  STZ.B $32,X                               ; $8DA204 |
  RTL                                       ; $8DA206 |

CODE_FN_8DA207:
  LDA.B $09,X                               ; $8DA207 |
  STA.B $18                                 ; $8DA209 |
  LDA.B $0D,X                               ; $8DA20B |
  STA.B $1A                                 ; $8DA20D |
  LDY.W #$D5A3                              ; $8DA20F |

CODE_8DA212:
  LDA.W $0000,Y                             ; $8DA212 |
  CMP.W #$8000                              ; $8DA215 |
  BEQ CODE_8DA245                           ; $8DA218 |
  CLC                                       ; $8DA21A |
  ADC.B $18                                 ; $8DA21B |
  STA.B $09,X                               ; $8DA21D |
  LDA.W $0002,Y                             ; $8DA21F |
  CLC                                       ; $8DA222 |
  ADC.B $1A                                 ; $8DA223 |
  STA.B $0D,X                               ; $8DA225 |
  PHY                                       ; $8DA227 |
  LDA.W #$0002                              ; $8DA228 |
  STA.B $10                                 ; $8DA22B |
  LDA.W #$0014                              ; $8DA22D |
  STA.B $12                                 ; $8DA230 |
  STZ.B $14                                 ; $8DA232 |
  LDA.W #$003A                              ; $8DA234 |
  STA.B $16                                 ; $8DA237 |
  JSL.L CODE_FL_86B8BD                      ; $8DA239 |
  PLA                                       ; $8DA23D |
  CLC                                       ; $8DA23E |
  ADC.W #$0004                              ; $8DA23F |
  TAY                                       ; $8DA242 |
  BRA CODE_8DA212                           ; $8DA243 |

CODE_8DA245:
  LDA.B $18                                 ; $8DA245 |
  STA.B $09,X                               ; $8DA247 |
  LDA.B $1A                                 ; $8DA249 |
  STA.B $0D,X                               ; $8DA24B |
  RTS                                       ; $8DA24D |

CODE_8DA24E:
  LDA.W #$0005                              ; $8DA24E |
  STA.B $1A,X                               ; $8DA251 |
  PHP                                       ; $8DA253 |
  PLA                                       ; $8DA254 |
  PLA                                       ; $8DA255 |
  RTL                                       ; $8DA256 |

CODE_8DA257:
  JSL.L CODE_FL_85AC15                      ; $8DA257 |
  LDA.W #$0007                              ; $8DA25B |
  JSL.L CODE_FL_B3FE45                      ; $8DA25E |
  LDA.W #$0080                              ; $8DA262 |
  STA.W $1C60                               ; $8DA265 |
  LDY.W #$0020                              ; $8DA268 |
  JSL.L CODE_FL_80976B                      ; $8DA26B |
  LDA.W #$0001                              ; $8DA26F |
  STA.W $1C66                               ; $8DA272 |
  JSL.L CODE_FL_85A9BF                      ; $8DA275 |
  LDA.W #$0001                              ; $8DA279 |
  STA.B $E4                                 ; $8DA27C |
  LDA.W #$000A                              ; $8DA27E |
  STA.B $3A,X                               ; $8DA281 |
  LDA.W #$0060                              ; $8DA283 |
  STA.B $2C,X                               ; $8DA286 |
  INC.B $1A,X                               ; $8DA288 |
  RTL                                       ; $8DA28A |

CODE_8DA28B:
  JSR.W CODE_FN_8DA2AC                      ; $8DA28B |
  LDA.W $1C38                               ; $8DA28E |
  AND.W #$0001                              ; $8DA291 |
  BNE CODE_8DA29A                           ; $8DA294 |
  JSL.L CODE_FL_8CFBC6                      ; $8DA296 |

CODE_8DA29A:
  JSL.L CODE_FL_86C70D                      ; $8DA29A |
  LDA.W #$0020                              ; $8DA29E |
  STA.B $2C,X                               ; $8DA2A1 |
  INC.B $1A,X                               ; $8DA2A3 |
  LDA.W #$0023                              ; $8DA2A5 |
  JML.L push_sound_queue                    ; $8DA2A8 |

CODE_FN_8DA2AC:
  LDA.B $3A,X                               ; $8DA2AC |
  BEQ CODE_8DA2B3                           ; $8DA2AE |
  DEC.B $3A,X                               ; $8DA2B0 |
  RTS                                       ; $8DA2B2 |

CODE_8DA2B3:
  LDA.W #$000A                              ; $8DA2B3 |
  STA.B $3A,X                               ; $8DA2B6 |
  LDA.W #$0021                              ; $8DA2B8 |
  JSL.L push_sound_queue                    ; $8DA2BB |
  RTS                                       ; $8DA2BF |

CODE_8DA2C0:
  LDA.W $1C38                               ; $8DA2C0 |
  AND.W #$0001                              ; $8DA2C3 |
  BNE CODE_8DA2CE                           ; $8DA2C6 |
  JSL.L CODE_FL_8CFBAE                      ; $8DA2C8 |
  BRA CODE_8DA2DE                           ; $8DA2CC |

CODE_8DA2CE:
  LDA.B $0D,X                               ; $8DA2CE |
  PHA                                       ; $8DA2D0 |
  CLC                                       ; $8DA2D1 |
  ADC.W #$0040                              ; $8DA2D2 |
  STA.B $0D,X                               ; $8DA2D5 |
  JSL.L CODE_FL_8CFBAE                      ; $8DA2D7 |
  PLA                                       ; $8DA2DB |
  STA.B $0D,X                               ; $8DA2DC |

CODE_8DA2DE:
  JSL.L CODE_FL_86C70D                      ; $8DA2DE |
  JSL.L CODE_FL_B3FE44                      ; $8DA2E2 |
  STZ.W $0092                               ; $8DA2E6 |
  JSL.L CODE_FL_85AC15                      ; $8DA2E9 |

CODE_JL_8DA2ED:
  LDA.B $22,X                               ; $8DA2ED |
  ORA.W #$0100                              ; $8DA2EF |
  STA.B $22,X                               ; $8DA2F2 |
  LDA.B $34,X                               ; $8DA2F4 |
  AND.W #$EFFF                              ; $8DA2F6 |
  STA.B $34,X                               ; $8DA2F9 |
  LDA.W #$0008                              ; $8DA2FB |
  STA.B $1A,X                               ; $8DA2FE |
  RTL                                       ; $8DA300 |

CODE_8DA301:
  LDA.B $3E,X                               ; $8DA301 |
  ASL A                                     ; $8DA303 |
  STA.B $00                                 ; $8DA304 |
  ASL A                                     ; $8DA306 |
  CLC                                       ; $8DA307 |
  ADC.B $00                                 ; $8DA308 |
  TAY                                       ; $8DA30A |
  LDA.W LOOSE_OP_00D5B1,Y                   ; $8DA30B |
  INC A                                     ; $8DA30E |
  BEQ CODE_8DA325                           ; $8DA30F |
  DEC A                                     ; $8DA311 |
  STA.B $10                                 ; $8DA312 |
  LDA.W LOOSE_OP_00D5B3,Y                   ; $8DA314 |
  STA.B $12                                 ; $8DA317 |
  LDA.W LOOSE_OP_00D5B5,Y                   ; $8DA319 |
  JSL.L CODE_FL_8580EE                      ; $8DA31C |
  BCS CODE_8DA324                           ; $8DA320 |
  INC.B $3E,X                               ; $8DA322 |

CODE_8DA324:
  RTL                                       ; $8DA324 |

CODE_8DA325:
  LDA.W #$0020                              ; $8DA325 |
  STA.B $30,X                               ; $8DA328 |
  LDA.B $0D,X                               ; $8DA32A |
  CLC                                       ; $8DA32C |
  ADC.W #$0020                              ; $8DA32D |
  STA.B $0D,X                               ; $8DA330 |
  LDA.B $09,X                               ; $8DA332 |
  CLC                                       ; $8DA334 |
  ADC.W #$0018                              ; $8DA335 |
  STA.B $09,X                               ; $8DA338 |
  LDA.W #$0002                              ; $8DA33A |
  STA.W $1C66                               ; $8DA33D |
  LDA.W #$0004                              ; $8DA340 |
  STA.B $2C,X                               ; $8DA343 |
  INC.B $1A,X                               ; $8DA345 |
  RTL                                       ; $8DA347 |

CODE_8DA348:
  JSL.L CODE_FL_86C70D                      ; $8DA348 |
  STZ.B $E4                                 ; $8DA34C |
  LDA.B $22,X                               ; $8DA34E |
  AND.W #$FEFF                              ; $8DA350 |
  STA.B $22,X                               ; $8DA353 |
  INC.B $1A,X                               ; $8DA355 |

CODE_8DA357:
  RTL                                       ; $8DA357 |

CODE_8DA358:
  JSL.L CODE_FL_86C424                      ; $8DA358 |
  PHX                                       ; $8DA35C |
  ASL A                                     ; $8DA35D |
  TAX                                       ; $8DA35E |
  LDA.L PTR16_8DA369,X                      ; $8DA35F |
  PLX                                       ; $8DA363 |
  STA.B $00                                 ; $8DA364 |
  JMP.W ($0000)                             ; $8DA366 |

PTR16_8DA369:
  dw CODE_8DA36F                            ; $8DA369 |
  dw CODE_8DA3F1                            ; $8DA36B |
  dw CODE_8DA3F5                            ; $8DA36D |

CODE_8DA36F:
  JSL.L CODE_FL_85ABE7                      ; $8DA36F |
  BCS CODE_8DA386                           ; $8DA373 |
  JSL.L CODE_FL_85AA07                      ; $8DA375 |
  LDY.W #$0020                              ; $8DA379 |
  JSL.L CODE_FL_80972B                      ; $8DA37C |
  JSR.W CODE_FN_8DA38A                      ; $8DA380 |
  INC.B $1A,X                               ; $8DA383 |
  RTL                                       ; $8DA385 |

CODE_8DA386:
  JML.L CODE_FL_86CA57                      ; $8DA386 |

CODE_FN_8DA38A:
  PHX                                       ; $8DA38A |
  LDX.W #$DAC4                              ; $8DA38B |
  LDA.L $7EDAC0                             ; $8DA38E |
  LSR A                                     ; $8DA392 |
  BCS CODE_8DA398                           ; $8DA393 |
  LDX.W #$DCC4                              ; $8DA395 |

CODE_8DA398:
  LDA.W $1692                               ; $8DA398 |
  STA.B $18                                 ; $8DA39B |
  LDA.W $1C38                               ; $8DA39D |
  STA.B $12                                 ; $8DA3A0 |
  JSR.W CODE_FN_8DA3B7                      ; $8DA3A2 |
  TDC                                       ; $8DA3A5 |
  STA.L $7E0000,X                           ; $8DA3A6 |
  PLX                                       ; $8DA3AA |
  LDA.L $7EDAC0                             ; $8DA3AB |
  EOR.W #$0001                              ; $8DA3AF |
  STA.L $7EDAC0                             ; $8DA3B2 |
  RTS                                       ; $8DA3B6 |

CODE_FN_8DA3B7:
  LDA.W #$0020                              ; $8DA3B7 |
  STA.B $10                                 ; $8DA3BA |

CODE_8DA3BC:
  LDY.W #$0001                              ; $8DA3BC |
  CLC                                       ; $8DA3BF |
  LDA.B $12                                 ; $8DA3C0 |
  ADC.W #$0002                              ; $8DA3C2 |
  STA.B $12                                 ; $8DA3C5 |
  LDA.B $12                                 ; $8DA3C7 |
  JSL.L CODE_FL_8AB4FC                      ; $8DA3C9 |
  LDA.B $00                                 ; $8DA3CD |
  CMP.W #$8000                              ; $8DA3CF |
  ROR A                                     ; $8DA3D2 |
  CMP.W #$8000                              ; $8DA3D3 |
  ROR A                                     ; $8DA3D6 |
  CMP.W #$8000                              ; $8DA3D7 |
  ROR A                                     ; $8DA3DA |
  CMP.W #$8000                              ; $8DA3DB |
  ROR A                                     ; $8DA3DE |
  CMP.W #$8000                              ; $8DA3DF |
  ROR A                                     ; $8DA3E2 |
  CLC                                       ; $8DA3E3 |
  ADC.B $18                                 ; $8DA3E4 |
  STA.L $7E0000,X                           ; $8DA3E6 |
  INX                                       ; $8DA3EA |
  INX                                       ; $8DA3EB |
  DEC.B $10                                 ; $8DA3EC |
  BNE CODE_8DA3BC                           ; $8DA3EE |
  RTS                                       ; $8DA3F0 |

CODE_8DA3F1:
  JSR.W CODE_FN_8DA38A                      ; $8DA3F1 |
  RTL                                       ; $8DA3F4 |

CODE_8DA3F5:
  RTL                                       ; $8DA3F5 |

CODE_8DA3F6:
  JSL.L CODE_FL_86C424                      ; $8DA3F6 |
  PHX                                       ; $8DA3FA |
  ASL A                                     ; $8DA3FB |
  TAX                                       ; $8DA3FC |
  LDA.L PTR16_8DA407,X                      ; $8DA3FD |
  PLX                                       ; $8DA401 |
  STA.B $00                                 ; $8DA402 |
  JMP.W ($0000)                             ; $8DA404 |

PTR16_8DA407:
  dw CODE_8DA40D                            ; $8DA407 |
  dw CODE_8DA410                            ; $8DA409 |
  dw CODE_8DA419                            ; $8DA40B |

CODE_8DA40D:
  INC.B $1A,X                               ; $8DA40D |
  RTL                                       ; $8DA40F |

CODE_8DA410:
  JSL.L CODE_FL_85ABE7                      ; $8DA410 |
  BCS CODE_8DA418                           ; $8DA414 |
  INC.B $1A,X                               ; $8DA416 |

CODE_8DA418:
  RTL                                       ; $8DA418 |

CODE_8DA419:
  JSL.L CODE_FL_86C70D                      ; $8DA419 |
  LDY.W #$0400                              ; $8DA41D |
  JSR.W CODE_FN_8DA45B                      ; $8DA420 |
  BCC CODE_8DA432                           ; $8DA423 |
  LDY.W #$04C0                              ; $8DA425 |
  LDA.W $0018,Y                             ; $8DA428 |
  BEQ CODE_8DA45A                           ; $8DA42B |
  JSR.W CODE_FN_8DA45B                      ; $8DA42D |
  BCS CODE_8DA45A                           ; $8DA430 |

CODE_8DA432:
  LDA.W #$0080                              ; $8DA432 |
  STA.B $2C,X                               ; $8DA435 |
  LDA.W #$01A6                              ; $8DA437 |
  JSL.L CODE_FL_86C9A7                      ; $8DA43A |
  BCS CODE_8DA45A                           ; $8DA43E |
  JSL.L CODE_FL_86C7C4                      ; $8DA440 |
  LDA.W #$0080                              ; $8DA444 |
  STA.W $0006,Y                             ; $8DA447 |
  LDA.W $000D,Y                             ; $8DA44A |
  DEC A                                     ; $8DA44D |
  STA.W $000D,Y                             ; $8DA44E |
  LDA.W #$0008                              ; $8DA451 |
  STA.W $003A,Y                             ; $8DA454 |
  STA.W $003C,Y                             ; $8DA457 |

CODE_8DA45A:
  RTL                                       ; $8DA45A |

CODE_FN_8DA45B:
  LDA.B $0D,X                               ; $8DA45B |
  CMP.W $000D,Y                             ; $8DA45D |
  BCS CODE_8DA471                           ; $8DA460 |
  LDA.W $0009,Y                             ; $8DA462 |
  SEC                                       ; $8DA465 |
  SBC.B $09,X                               ; $8DA466 |
  BPL CODE_8DA46E                           ; $8DA468 |
  EOR.W #$FFFF                              ; $8DA46A |
  INC A                                     ; $8DA46D |

CODE_8DA46E:
  CMP.W #$0018                              ; $8DA46E |

CODE_8DA471:
  RTS                                       ; $8DA471 |

CODE_8DA472:
  JSL.L CODE_FL_86C424                      ; $8DA472 |
  PHX                                       ; $8DA476 |
  ASL A                                     ; $8DA477 |
  TAX                                       ; $8DA478 |
  LDA.L PTR16_8DA483,X                      ; $8DA479 |
  PLX                                       ; $8DA47D |
  STA.B $00                                 ; $8DA47E |
  JMP.W ($0000)                             ; $8DA480 |

PTR16_8DA483:
  dw CODE_8DA489                            ; $8DA483 |
  dw CODE_8DA49E                            ; $8DA485 |
  dw CODE_8DA4AE                            ; $8DA487 |

CODE_8DA489:
  LDA.W #$0001                              ; $8DA489 |
  STA.B $92                                 ; $8DA48C |
  LDA.W #$FFF8                              ; $8DA48E |
  STA.W $1962                               ; $8DA491 |
  JSL.L CODE_FL_86C7AD                      ; $8DA494 |
  INC.B $1A,X                               ; $8DA498 |
  JML.L CODE_FL_85AA07                      ; $8DA49A |

CODE_8DA49E:
  JSL.L CODE_FL_85ABE7                      ; $8DA49E |
  BCC CODE_8DA4AD                           ; $8DA4A2 |
  LDA.W #$8003                              ; $8DA4A4 |
  JSL.L CODE_FL_B3FE45                      ; $8DA4A7 |
  INC.B $1A,X                               ; $8DA4AB |

CODE_8DA4AD:
  RTL                                       ; $8DA4AD |

CODE_8DA4AE:
  JSR.W CODE_FN_8DA511                      ; $8DA4AE |
  LDA.W $1C38                               ; $8DA4B1 |
  AND.W #$003F                              ; $8DA4B4 |
  BEQ CODE_8DA4BA                           ; $8DA4B7 |
  RTL                                       ; $8DA4B9 |

CODE_8DA4BA:
  LDA.B $86                                 ; $8DA4BA |
  AND.W #$00F0                              ; $8DA4BC |
  PHA                                       ; $8DA4BF |
  CLC                                       ; $8DA4C0 |
  ADC.W $1662                               ; $8DA4C1 |
  TAY                                       ; $8DA4C4 |
  CPY.W #$0290                              ; $8DA4C5 |
  BCC CODE_8DA4D7                           ; $8DA4C8 |
  CPY.W #$03F0                              ; $8DA4CA |
  BCC CODE_8DA4D9                           ; $8DA4CD |
  CPY.W #$05C0                              ; $8DA4CF |
  BCC CODE_8DA4DE                           ; $8DA4D2 |
  BRA CODE_8DA4D7                           ; $8DA4D4 |

CODE_8DA4D6:
  PLA                                       ; $8DA4D6 |

CODE_8DA4D7:
  PLA                                       ; $8DA4D7 |
  RTL                                       ; $8DA4D8 |

CODE_8DA4D9:
  LDA.W #$0030                              ; $8DA4D9 |
  BRA CODE_8DA4E1                           ; $8DA4DC |

CODE_8DA4DE:
  LDA.W #$0020                              ; $8DA4DE |

CODE_8DA4E1:
  PHA                                       ; $8DA4E1 |
  LDA.W #$01A6                              ; $8DA4E2 |
  JSL.L CODE_FL_86C9A4                      ; $8DA4E5 |
  BCS CODE_8DA4D6                           ; $8DA4E9 |
  JSL.L CODE_FL_86C7C4                      ; $8DA4EB |
  LDA.W #$0008                              ; $8DA4EF |
  STA.W $003A,Y                             ; $8DA4F2 |
  PLA                                       ; $8DA4F5 |
  STA.W $000D,Y                             ; $8DA4F6 |
  PLA                                       ; $8DA4F9 |
  STA.B $00                                 ; $8DA4FA |
  LDA.W $1662                               ; $8DA4FC |
  EOR.W #$FFFF                              ; $8DA4FF |
  INC A                                     ; $8DA502 |
  AND.W #$000F                              ; $8DA503 |
  CLC                                       ; $8DA506 |
  ADC.B $00                                 ; $8DA507 |
  SEC                                       ; $8DA509 |
  SBC.W #$0008                              ; $8DA50A |
  STA.W $0009,Y                             ; $8DA50D |
  RTL                                       ; $8DA510 |

CODE_FN_8DA511:
  LDA.B $2C,X                               ; $8DA511 |
  BNE CODE_8DA521                           ; $8DA513 |
  LDA.W #$000A                              ; $8DA515 |
  STA.B $2C,X                               ; $8DA518 |
  LDA.W #$0021                              ; $8DA51A |
  JSL.L push_sound_queue                    ; $8DA51D |

CODE_8DA521:
  RTS                                       ; $8DA521 |

CODE_8DA522:
  JSR.W CODE_FN_8DA568                      ; $8DA522 |
  LDA.B $1A,X                               ; $8DA525 |
  BNE CODE_8DA530                           ; $8DA527 |
  INC.B $1A,X                               ; $8DA529 |
  LDA.W #$0020                              ; $8DA52B |
  STA.B $22,X                               ; $8DA52E |

CODE_8DA530:
  LDY.B $44,X                               ; $8DA530 |
  LDA.W $0018,Y                             ; $8DA532 |
  CMP.W #$00E3                              ; $8DA535 |
  BNE CODE_8DA564                           ; $8DA538 |
  LDA.W $001A,Y                             ; $8DA53A |
  CMP.W #$0005                              ; $8DA53D |
  BCS CODE_8DA564                           ; $8DA540 |
  LDY.B $44,X                               ; $8DA542 |
  LDA.W $0004,Y                             ; $8DA544 |
  AND.W #$2020                              ; $8DA547 |
  BNE CODE_8DA551                           ; $8DA54A |
  LDA.W #$0004                              ; $8DA54C |
  BRA CODE_8DA554                           ; $8DA54F |

CODE_8DA551:
  LDA.W #$FFFC                              ; $8DA551 |

CODE_8DA554:
  CLC                                       ; $8DA554 |
  ADC.W $0009,Y                             ; $8DA555 |
  STA.B $09,X                               ; $8DA558 |
  LDA.W $000D,Y                             ; $8DA55A |
  SEC                                       ; $8DA55D |
  SBC.W #$0010                              ; $8DA55E |
  STA.B $0D,X                               ; $8DA561 |
  RTL                                       ; $8DA563 |

CODE_8DA564:
  JML.L CODE_FL_86CA57                      ; $8DA564 |

CODE_FN_8DA568:
  LDA.B $2C,X                               ; $8DA568 |
  INC.B $2C,X                               ; $8DA56A |
  BIT.W #$0001                              ; $8DA56C |
  BNE CODE_8DA576                           ; $8DA56F |
  LDY.W #$0000                              ; $8DA571 |
  BRA CODE_8DA581                           ; $8DA574 |

CODE_8DA576:
  LDY.W #$DD74                              ; $8DA576 |
  AND.W #$0008                              ; $8DA579 |
  BEQ CODE_8DA581                           ; $8DA57C |
  LDY.W #$DD7D                              ; $8DA57E |

CODE_8DA581:
  STY.B $00,X                               ; $8DA581 |
  RTS                                       ; $8DA583 |

CODE_8DA584:
  LDA.W #$3600                              ; $8DA584 |
  STA.B $4E,X                               ; $8DA587 |
  JSL.L CODE_FL_86C7A5                      ; $8DA589 |
  LDA.W #$3192                              ; $8DA58D |
  STA.B $00,X                               ; $8DA590 |
  LDA.B $34,X                               ; $8DA592 |
  ORA.W #$A880                              ; $8DA594 |
  STA.B $34,X                               ; $8DA597 |
  LDA.W #$014A                              ; $8DA599 |
  STA.B $18,X                               ; $8DA59C |
  INC.B $1A,X                               ; $8DA59E |
  JML.L CODE_FL_86C63F                      ; $8DA5A0 |

CODE_FL_8DA5A4:
  LDA.W #$0018                              ; $8DA5A4 |
  JSR.W CODE_FN_8DA5BD                      ; $8DA5A7 |
  LDA.W #$0028                              ; $8DA5AA |
  JSR.W CODE_FN_8DA5BD                      ; $8DA5AD |
  LDA.W #$00D8                              ; $8DA5B0 |
  JSR.W CODE_FN_8DA5BD                      ; $8DA5B3 |
  LDA.W #$00E8                              ; $8DA5B6 |
  JSR.W CODE_FN_8DA5BD                      ; $8DA5B9 |
  RTL                                       ; $8DA5BC |

CODE_FN_8DA5BD:
  PHA                                       ; $8DA5BD |
  LDA.W #$022A                              ; $8DA5BE |
  JSL.L CODE_FL_86C9A4                      ; $8DA5C1 |
  BCS CODE_8DA5D1                           ; $8DA5C5 |
  LDA.W #$0016                              ; $8DA5C7 |
  STA.W $000D,Y                             ; $8DA5CA |
  PLA                                       ; $8DA5CD |
  STA.W $0009,Y                             ; $8DA5CE |

CODE_8DA5D1:
  RTS                                       ; $8DA5D1 |

CODE_JL_8DA5D2:
  LDA.W #$0100                              ; $8DA5D2 |
  STA.B $2C,X                               ; $8DA5D5 |
  STZ.B $3A,X                               ; $8DA5D7 |
  STZ.B $3C,X                               ; $8DA5D9 |
  INC.B $1A,X                               ; $8DA5DB |

CODE_JL_8DA5DD:
  DEC.B $3C,X                               ; $8DA5DD |
  BPL CODE_8DA5ED                           ; $8DA5DF |
  LDA.W #$000A                              ; $8DA5E1 |
  STA.B $3C,X                               ; $8DA5E4 |
  LDA.W #$0021                              ; $8DA5E6 |
  JSL.L push_sound_queue                    ; $8DA5E9 |

CODE_8DA5ED:
  DEC.B $3A,X                               ; $8DA5ED |
  BPL CODE_8DA600                           ; $8DA5EF |
  LDA.B $86                                 ; $8DA5F1 |
  AND.W #$0007                              ; $8DA5F3 |
  CLC                                       ; $8DA5F6 |
  ADC.W #$0002                              ; $8DA5F7 |
  STA.B $3A,X                               ; $8DA5FA |
  JSL.L CODE_FL_8CFBAE                      ; $8DA5FC |

CODE_8DA600:
  LDA.B $2C,X                               ; $8DA600 |
  BNE CODE_8DA60F                           ; $8DA602 |
  LDY.W #$0050                              ; $8DA604 |
  JSL.L CODE_FL_808993                      ; $8DA607 |
  INC.B $1A,X                               ; $8DA60B |
  BRA CODE_8DA622                           ; $8DA60D |

CODE_8DA60F:
  CMP.W #$00C0                              ; $8DA60F |
  BNE CODE_8DA622                           ; $8DA612 |
  LDY.W #$B9C5                              ; $8DA614 |
  JSL.L CODE_FL_80C26D                      ; $8DA617 |
  LDY.W #$B9CA                              ; $8DA61B |
  JSL.L CODE_FL_80C268                      ; $8DA61E |

CODE_8DA622:
  RTL                                       ; $8DA622 |

  JML.L CODE_FL_86CA36                      ; $8DA623 |

CODE_8DA627:
  JSL.L CODE_FL_86C412                      ; $8DA627 |
  BNE CODE_8DA644                           ; $8DA62B |
  DEC.B $3A,X                               ; $8DA62D |
  BPL CODE_8DA643                           ; $8DA62F |
  LDA.B $28,X                               ; $8DA631 |
  BNE CODE_8DA63A                           ; $8DA633 |
  LDA.W #$FF00                              ; $8DA635 |
  STA.B $28,X                               ; $8DA638 |

CODE_8DA63A:
  LDA.W #$0044                              ; $8DA63A |
  JSL.L CODE_FL_86CAEE                      ; $8DA63D |
  INC.B $1A,X                               ; $8DA641 |

CODE_8DA643:
  RTL                                       ; $8DA643 |

CODE_8DA644:
  JSL.L CODE_FL_8CFD59                      ; $8DA644 |
  LDA.B $00,X                               ; $8DA648 |
  BNE CODE_8DA650                           ; $8DA64A |
  JML.L CODE_FL_86CA36                      ; $8DA64C |

CODE_8DA650:
  RTL                                       ; $8DA650 |

CODE_8DA651:
  JSL.L CODE_FL_86C412                      ; $8DA651 |
  BNE CODE_8DA644                           ; $8DA655 |
  DEC.B $3A,X                               ; $8DA657 |
  BPL CODE_8DA66A                           ; $8DA659 |
  STZ.B $26,X                               ; $8DA65B |
  STZ.B $28,X                               ; $8DA65D |
  STZ.B $2A,X                               ; $8DA65F |
  LDA.W #$003B                              ; $8DA661 |
  JSL.L CODE_FL_86CAEE                      ; $8DA664 |
  INC.B $1A,X                               ; $8DA668 |

CODE_8DA66A:
  RTL                                       ; $8DA66A |

CODE_8DA66B:
  JSL.L CODE_FL_86C412                      ; $8DA66B |
  BNE CODE_8DA68F                           ; $8DA66F |
  DEC.B $3A,X                               ; $8DA671 |
  BPL CODE_8DA68E                           ; $8DA673 |
  LDA.B $2C,X                               ; $8DA675 |
  BNE CODE_8DA67C                           ; $8DA677 |
  LDA.W #$0020                              ; $8DA679 |

CODE_8DA67C:
  STA.B $2C,X                               ; $8DA67C |
  LDA.B $4C,X                               ; $8DA67E |
  BNE CODE_8DA685                           ; $8DA680 |
  LDA.W #$0040                              ; $8DA682 |

CODE_8DA685:
  LDA.W #$0039                              ; $8DA685 |
  JSL.L CODE_FL_86CAEE                      ; $8DA688 |
  INC.B $1A,X                               ; $8DA68C |

CODE_8DA68E:
  RTL                                       ; $8DA68E |

CODE_8DA68F:
  JSL.L CODE_FL_86C82F                      ; $8DA68F |
  JSL.L CODE_FL_8CFD59                      ; $8DA693 |
  JSL.L CODE_FL_86C70D                      ; $8DA697 |
  JML.L CODE_FL_86CA36                      ; $8DA69B |

CODE_8DA69F:
  JSL.L CODE_FL_85F885                      ; $8DA69F |
  JSL.L CODE_FL_86C3F8                      ; $8DA6A3 |
  PHX                                       ; $8DA6A7 |
  ASL A                                     ; $8DA6A8 |
  TAX                                       ; $8DA6A9 |
  LDA.L PTR16_8DA6B4,X                      ; $8DA6AA |
  PLX                                       ; $8DA6AE |
  STA.B $00                                 ; $8DA6AF |
  JMP.W ($0000)                             ; $8DA6B1 |

PTR16_8DA6B4:
  dw CODE_8DA6C6                            ; $8DA6B4 |
  dw CODE_8DA6EB                            ; $8DA6B6 |
  dw CODE_JP_8DA6EF                         ; $8DA6B8 |
  dw CODE_8DA707                            ; $8DA6BA |
  dw CODE_8DA708                            ; $8DA6BC |
  dw CODE_8DAA01                            ; $8DA6BE |
  dw CODE_8DAA05                            ; $8DA6C0 |
  dw CODE_8DAA10                            ; $8DA6C2 |
  dw CODE_8DA70F                            ; $8DA6C4 |

CODE_8DA6C6:
  JSL.L CODE_FL_86C7AD                      ; $8DA6C6 |
  JSL.L CODE_FL_86C444                      ; $8DA6CA |
  JSL.L CODE_FL_86C486                      ; $8DA6CE |
  LDA.W #$0032                              ; $8DA6D2 |
  JSL.L CODE_FL_86CAEE                      ; $8DA6D5 |
  LDA.W #$FF00                              ; $8DA6D9 |
  JSL.L CODE_FL_86C71F                      ; $8DA6DC |
  LDA.B $34,X                               ; $8DA6E0 |
  ORA.W #$C102                              ; $8DA6E2 |
  STA.B $34,X                               ; $8DA6E5 |
  JML.L CODE_FL_86C63F                      ; $8DA6E7 |

CODE_8DA6EB:
  JML.L CODE_FL_85A646                      ; $8DA6EB |

CODE_JP_8DA6EF:
  JSL.L CODE_FL_85A695                      ; $8DA6EF |
  LDA.B $4E,X                               ; $8DA6F3 |
  AND.W #$0001                              ; $8DA6F5 |
  BEQ CODE_8DA707                           ; $8DA6F8 |
  JSL.L CODE_FL_86C70D                      ; $8DA6FA |
  LDA.W #$0060                              ; $8DA6FE |
  STA.B $2C,X                               ; $8DA701 |
  JSL.L CODE_FL_86CB6A                      ; $8DA703 |

CODE_8DA707:
  RTL                                       ; $8DA707 |

CODE_8DA708:
  LDA.W #$A000                              ; $8DA708 |
  JML.L CODE_JL_85AAAA                      ; $8DA70B |

CODE_8DA70F:
  LDA.W #$3A3E                              ; $8DA70F |
  LDY.W #$3A4A                              ; $8DA712 |
  JML.L CODE_JL_85AE70                      ; $8DA715 |

CODE_8DA719:
  LDA.B $20,X                               ; $8DA719 |
  STA.W $1C3C                               ; $8DA71B |
  JSL.L CODE_FL_86C3F8                      ; $8DA71E |
  PHX                                       ; $8DA722 |
  ASL A                                     ; $8DA723 |
  TAX                                       ; $8DA724 |
  LDA.L PTR16_8DA72F,X                      ; $8DA725 |
  PLX                                       ; $8DA729 |
  STA.B $00                                 ; $8DA72A |
  JMP.W ($0000)                             ; $8DA72C |

PTR16_8DA72F:
  dw CODE_8DA741                            ; $8DA72F |
  dw CODE_8DA768                            ; $8DA731 |
  dw CODE_8DA76C                            ; $8DA733 |
  dw CODE_8DA78D                            ; $8DA735 |
  dw CODE_8DA7D0                            ; $8DA737 |
  dw CODE_8DAA01                            ; $8DA739 |
  dw CODE_8DAA05                            ; $8DA73B |
  dw CODE_8DAA10                            ; $8DA73D |
  dw CODE_8DA70F                            ; $8DA73F |

CODE_8DA741:
  JSL.L CODE_FL_86C7AD                      ; $8DA741 |
  JSL.L CODE_FL_86C444                      ; $8DA745 |
  STZ.B $02,X                               ; $8DA749 |
  LDA.B $34,X                               ; $8DA74B |
  ORA.W #$C102                              ; $8DA74D |
  STA.B $34,X                               ; $8DA750 |
  LDA.W #$0033                              ; $8DA752 |
  JSL.L CODE_FL_86CAEE                      ; $8DA755 |
  JSL.L CODE_FL_86C486                      ; $8DA759 |
  LDA.W #$FE80                              ; $8DA75D |
  JSL.L CODE_FL_86C71F                      ; $8DA760 |
  JML.L CODE_FL_86C63F                      ; $8DA764 |

CODE_8DA768:
  JML.L CODE_FL_85A646                      ; $8DA768 |

CODE_8DA76C:
  JSL.L CODE_FL_86C55C                      ; $8DA76C |
  BPL CODE_8DA776                           ; $8DA770 |
  EOR.W #$FFFF                              ; $8DA772 |
  INC A                                     ; $8DA775 |

CODE_8DA776:
  CMP.W #$0040                              ; $8DA776 |
  BCS CODE_8DA78A                           ; $8DA779 |
  LDA.W #$0034                              ; $8DA77B |
  JSL.L CODE_FL_86CAEE                      ; $8DA77E |
  STZ.B $26,X                               ; $8DA782 |
  LDA.W #$0003                              ; $8DA784 |
  STA.B $1A,X                               ; $8DA787 |
  RTL                                       ; $8DA789 |

CODE_8DA78A:
  JMP.W CODE_JP_8DA6EF                      ; $8DA78A |

CODE_8DA78D:
  LDA.W #$394A                              ; $8DA78D |
  JSL.L CODE_FL_86CADB                      ; $8DA790 |
  BNE CODE_8DA799                           ; $8DA794 |
  JSR.W CODE_FN_8DA7D1                      ; $8DA796 |

CODE_8DA799:
  LDA.B $20,X                               ; $8DA799 |
  BNE CODE_8DA7AD                           ; $8DA79B |
  JSL.L CODE_FL_86C486                      ; $8DA79D |
  LDA.W #$0034                              ; $8DA7A1 |
  JSL.L CODE_FL_86CAEE                      ; $8DA7A4 |
  LDA.W #$0006                              ; $8DA7A8 |
  STA.B $1C,X                               ; $8DA7AB |

CODE_8DA7AD:
  JSL.L CODE_FL_86C55C                      ; $8DA7AD |
  BPL CODE_8DA7B7                           ; $8DA7B1 |
  EOR.W #$FFFF                              ; $8DA7B3 |
  INC A                                     ; $8DA7B6 |

CODE_8DA7B7:
  CMP.W #$0048                              ; $8DA7B7 |
  BCC CODE_8DA7CF                           ; $8DA7BA |
  LDA.W #$0033                              ; $8DA7BC |
  JSL.L CODE_FL_86CAEE                      ; $8DA7BF |
  LDA.W #$0002                              ; $8DA7C3 |
  STA.B $1A,X                               ; $8DA7C6 |
  LDA.W #$FF00                              ; $8DA7C8 |
  JSL.L CODE_FL_86C71F                      ; $8DA7CB |

CODE_8DA7CF:
  RTL                                       ; $8DA7CF |

CODE_8DA7D0:
  RTL                                       ; $8DA7D0 |

CODE_FN_8DA7D1:
  LDA.W #$0163                              ; $8DA7D1 |
  JSL.L CODE_FL_86C9C5                      ; $8DA7D4 |
  BCS CODE_8DA7E8                           ; $8DA7D8 |
  LDA.B $04,X                               ; $8DA7DA |
  STA.W $0004,Y                             ; $8DA7DC |
  LDA.W $000D,Y                             ; $8DA7DF |
  SBC.W #$0004                              ; $8DA7E2 |
  STA.W $000D,Y                             ; $8DA7E5 |

CODE_8DA7E8:
  RTS                                       ; $8DA7E8 |

CODE_8DA7E9:
  LDA.B $1A,X                               ; $8DA7E9 |
  PHX                                       ; $8DA7EB |
  ASL A                                     ; $8DA7EC |
  TAX                                       ; $8DA7ED |
  LDA.L PTR16_8DA7F8,X                      ; $8DA7EE |
  PLX                                       ; $8DA7F2 |
  STA.B $00                                 ; $8DA7F3 |
  JMP.W ($0000)                             ; $8DA7F5 |

PTR16_8DA7F8:
  dw CODE_8DA7FC                            ; $8DA7F8 |
  dw CODE_8DA825                            ; $8DA7FA |

CODE_8DA7FC:
  JSL.L CODE_FL_85A8CE                      ; $8DA7FC |
  LDA.W #$1000                              ; $8DA800 |
  STA.W $004E,X                             ; $8DA803 |
  JSL.L CODE_FL_86C7A5                      ; $8DA806 |
  STZ.B $02,X                               ; $8DA80A |
  LDA.W #$0038                              ; $8DA80C |
  JSL.L CODE_FL_86CAEE                      ; $8DA80F |
  LDY.W #$0020                              ; $8DA813 |
  JSL.L CODE_FL_85AB99                      ; $8DA816 |
  LDA.W #$FE80                              ; $8DA81A |
  JSL.L CODE_FL_86C887                      ; $8DA81D |
  JML.L CODE_FL_86C63F                      ; $8DA821 |

CODE_8DA825:
  RTL                                       ; $8DA825 |

CODE_8DA826:
  JSL.L CODE_FL_85F885                      ; $8DA826 |
  JSL.L CODE_FL_86C3F8                      ; $8DA82A |
  PHX                                       ; $8DA82E |
  ASL A                                     ; $8DA82F |
  TAX                                       ; $8DA830 |
  LDA.L PTR16_8DA83B,X                      ; $8DA831 |
  PLX                                       ; $8DA835 |
  STA.B $00                                 ; $8DA836 |
  JMP.W ($0000)                             ; $8DA838 |

PTR16_8DA83B:
  dw CODE_8DA84D                            ; $8DA83B |
  dw CODE_8DA89D                            ; $8DA83D |
  dw CODE_8DA8A1                            ; $8DA83F |
  dw CODE_8DA8C2                            ; $8DA841 |
  dw CODE_8DA907                            ; $8DA843 |
  dw CODE_8DAA01                            ; $8DA845 |
  dw CODE_8DAA05                            ; $8DA847 |
  dw CODE_8DA936                            ; $8DA849 |
  dw CODE_8DA70F                            ; $8DA84B |

CODE_8DA84D:
  LDA.W #$00ED                              ; $8DA84D |
  JSL.L CODE_FL_86C9A4                      ; $8DA850 |
  BCS CODE_8DA899                           ; $8DA854 |
  JSL.L CODE_FL_85AAB6                      ; $8DA856 |
  LDA.W #$0008                              ; $8DA85A |
  STA.W $003C,Y                             ; $8DA85D |
  LDA.W #$0008                              ; $8DA860 |
  STA.W $003E,Y                             ; $8DA863 |
  LDA.W #$0020                              ; $8DA866 |
  STA.W $0040,Y                             ; $8DA869 |
  LDA.W #$E000                              ; $8DA86C |
  STA.W $0034,Y                             ; $8DA86F |
  JSL.L CODE_FL_86C7AD                      ; $8DA872 |

CODE_JP_8DA876:
  JSL.L CODE_FL_86C444                      ; $8DA876 |
  STZ.B $02,X                               ; $8DA87A |
  LDA.W #$0030                              ; $8DA87C |
  JSL.L CODE_FL_86CAEE                      ; $8DA87F |
  JSL.L CODE_FL_86C486                      ; $8DA883 |
  LDA.W #$FEC0                              ; $8DA887 |
  JSL.L CODE_FL_86C71F                      ; $8DA88A |
  LDA.B $34,X                               ; $8DA88E |
  ORA.W #$C102                              ; $8DA890 |
  STA.B $34,X                               ; $8DA893 |
  JML.L CODE_FL_86C63F                      ; $8DA895 |

CODE_8DA899:
  JML.L CODE_FL_86CA2D                      ; $8DA899 |

CODE_8DA89D:
  JML.L CODE_FL_85A646                      ; $8DA89D |

CODE_8DA8A1:
  JSL.L CODE_FL_86C55C                      ; $8DA8A1 |
  BPL CODE_8DA8AB                           ; $8DA8A5 |
  EOR.W #$FFFF                              ; $8DA8A7 |
  INC A                                     ; $8DA8AA |

CODE_8DA8AB:
  CMP.W #$0030                              ; $8DA8AB |
  BCS CODE_8DA8BF                           ; $8DA8AE |
  LDA.W #$0031                              ; $8DA8B0 |
  JSL.L CODE_FL_86CAEE                      ; $8DA8B3 |
  STZ.B $26,X                               ; $8DA8B7 |
  LDA.W #$0003                              ; $8DA8B9 |
  STA.B $1A,X                               ; $8DA8BC |
  RTL                                       ; $8DA8BE |

CODE_8DA8BF:
  JMP.W CODE_JP_8DA6EF                      ; $8DA8BF |

CODE_8DA8C2:
  STZ.B $3A,X                               ; $8DA8C2 |
  LDA.B $00,X                               ; $8DA8C4 |
  CMP.W #$397A                              ; $8DA8C6 |
  BNE CODE_8DA8CD                           ; $8DA8C9 |
  INC.B $3A,X                               ; $8DA8CB |

CODE_8DA8CD:
  LDA.B $20,X                               ; $8DA8CD |
  BNE CODE_8DA8E4                           ; $8DA8CF |
  JSL.L CODE_FL_86C486                      ; $8DA8D1 |
  CLC                                       ; $8DA8D5 |
  LDA.W #$0031                              ; $8DA8D6 |
  ADC.B $4E,X                               ; $8DA8D9 |
  JSL.L CODE_FL_86CAEE                      ; $8DA8DB |
  LDA.W #$0006                              ; $8DA8DF |
  STA.B $1C,X                               ; $8DA8E2 |

CODE_8DA8E4:
  JSL.L CODE_FL_86C55C                      ; $8DA8E4 |
  BPL CODE_8DA8EE                           ; $8DA8E8 |
  EOR.W #$FFFF                              ; $8DA8EA |
  INC A                                     ; $8DA8ED |

CODE_8DA8EE:
  CMP.W #$0038                              ; $8DA8EE |
  BCC CODE_8DA906                           ; $8DA8F1 |
  LDA.W #$0030                              ; $8DA8F3 |
  JSL.L CODE_FL_86CAEE                      ; $8DA8F6 |
  LDA.W #$0002                              ; $8DA8FA |
  STA.B $1A,X                               ; $8DA8FD |
  LDA.W #$FEC0                              ; $8DA8FF |
  JSL.L CODE_FL_86C71F                      ; $8DA902 |

CODE_8DA906:
  RTL                                       ; $8DA906 |

CODE_8DA907:
  LDA.W #$A000                              ; $8DA907 |
  JML.L CODE_JL_85AAAA                      ; $8DA90A |

CODE_8DA90E:
  JSL.L CODE_FL_85AAC6                      ; $8DA90E |
  LDY.W $0044,X                             ; $8DA912 |
  LDA.W $0004,Y                             ; $8DA915 |
  STA.B $04,X                               ; $8DA918 |
  JSL.L CODE_FL_86C89E                      ; $8DA91A |
  LDA.W $003A,Y                             ; $8DA91E |
  BEQ CODE_8DA935                           ; $8DA921 |
  LDA.B $3C,X                               ; $8DA923 |
  STA.B $0E                                 ; $8DA925 |
  LDA.B $3E,X                               ; $8DA927 |
  STA.B $10                                 ; $8DA929 |
  LDA.B $40,X                               ; $8DA92B |
  STA.B $0A                                 ; $8DA92D |
  STZ.B $0C                                 ; $8DA92F |
  JML.L CODE_FL_85F8A1                      ; $8DA931 |

CODE_8DA935:
  RTL                                       ; $8DA935 |

CODE_8DA936:
  JSL.L CODE_FL_85A927                      ; $8DA936 |
  STZ.B $1A,X                               ; $8DA93A |
  JMP.W CODE_JP_8DA876                      ; $8DA93C |

CODE_8DA93F:
  JSL.L CODE_FL_85F885                      ; $8DA93F |
  LDA.B $20,X                               ; $8DA943 |
  STA.W $1C3C                               ; $8DA945 |
  JSL.L CODE_FL_86C3F8                      ; $8DA948 |
  PHX                                       ; $8DA94C |
  ASL A                                     ; $8DA94D |
  TAX                                       ; $8DA94E |
  LDA.L PTR16_8DA959,X                      ; $8DA94F |
  PLX                                       ; $8DA953 |
  STA.B $00                                 ; $8DA954 |
  JMP.W ($0000)                             ; $8DA956 |

PTR16_8DA959:
  dw CODE_8DA96B                            ; $8DA959 |
  dw CODE_8DA998                            ; $8DA95B |
  dw CODE_8DA99C                            ; $8DA95D |
  dw CODE_8DA9BA                            ; $8DA95F |
  dw CODE_8DA9FA                            ; $8DA961 |
  dw CODE_8DAA01                            ; $8DA963 |
  dw CODE_8DAA05                            ; $8DA965 |
  dw CODE_8DAA10                            ; $8DA967 |
  dw CODE_8DA70F                            ; $8DA969 |

CODE_8DA96B:
  JSL.L CODE_FL_86C7AD                      ; $8DA96B |
  JSL.L CODE_FL_86C444                      ; $8DA96F |
  STZ.B $02,X                               ; $8DA973 |
  LDA.W #$0035                              ; $8DA975 |
  JSL.L CODE_FL_86CAEE                      ; $8DA978 |
  JSL.L CODE_FL_86C486                      ; $8DA97C |
  LDA.W #$FF80                              ; $8DA980 |
  JSL.L CODE_FL_86C71F                      ; $8DA983 |
  JSL.L CODE_FL_85A9B7                      ; $8DA987 |
  JSL.L CODE_FL_85A9EF                      ; $8DA98B |
  LDA.W #$0080                              ; $8DA98F |
  STA.B $2C,X                               ; $8DA992 |
  JML.L CODE_FL_86C63F                      ; $8DA994 |

CODE_8DA998:
  JML.L CODE_FL_85A646                      ; $8DA998 |

CODE_8DA99C:
  LDA.B $2C,X                               ; $8DA99C |
  BNE CODE_8DA9B5                           ; $8DA99E |
  JSL.L CODE_FL_86C486                      ; $8DA9A0 |
  STZ.B $26,X                               ; $8DA9A4 |
  LDA.W #$0036                              ; $8DA9A6 |
  JSL.L CODE_FL_86CAEE                      ; $8DA9A9 |
  STZ.B $26,X                               ; $8DA9AD |
  LDA.W #$0003                              ; $8DA9AF |
  STA.B $1A,X                               ; $8DA9B2 |
  RTL                                       ; $8DA9B4 |

CODE_8DA9B5:
  JSL.L CODE_FL_85A695                      ; $8DA9B5 |
  RTL                                       ; $8DA9B9 |

CODE_8DA9BA:
  LDA.W #$3A10                              ; $8DA9BA |
  JSL.L CODE_FL_86CADB                      ; $8DA9BD |
  BNE CODE_8DA9C6                           ; $8DA9C1 |
  JSR.W CODE_FN_8DA9E3                      ; $8DA9C3 |

CODE_8DA9C6:
  LDA.B $20,X                               ; $8DA9C6 |
  BNE CODE_8DA9E2                           ; $8DA9C8 |
  LDA.W #$0035                              ; $8DA9CA |
  JSL.L CODE_FL_86CAEE                      ; $8DA9CD |
  LDA.W #$0002                              ; $8DA9D1 |
  STA.B $1A,X                               ; $8DA9D4 |
  LDA.W #$FF80                              ; $8DA9D6 |
  JSL.L CODE_FL_86C71F                      ; $8DA9D9 |
  LDA.W #$0080                              ; $8DA9DD |
  STA.B $2C,X                               ; $8DA9E0 |

CODE_8DA9E2:
  RTL                                       ; $8DA9E2 |

CODE_FN_8DA9E3:
  LDA.W #$0165                              ; $8DA9E3 |
  JSL.L CODE_FL_86C9A7                      ; $8DA9E6 |
  BCS CODE_8DA9F9                           ; $8DA9EA |
  JSL.L CODE_FL_86C7C4                      ; $8DA9EC |
  LDA.W $000D,Y                             ; $8DA9F0 |
  SBC.W #$0004                              ; $8DA9F3 |
  STA.W $000D,Y                             ; $8DA9F6 |

CODE_8DA9F9:
  RTS                                       ; $8DA9F9 |

CODE_8DA9FA:
  LDA.W #$A000                              ; $8DA9FA |
  JML.L CODE_JL_85AAAA                      ; $8DA9FD |

CODE_8DAA01:
  JML.L CODE_FL_85A8F4                      ; $8DAA01 |

CODE_8DAA05:
  JSL.L CODE_FL_85A84D                      ; $8DAA05 |
  JSL.L CODE_FL_86C70D                      ; $8DAA09 |
  INC.B $1A,X                               ; $8DAA0D |
  RTL                                       ; $8DAA0F |

CODE_8DAA10:
  JSL.L CODE_FL_85A927                      ; $8DAA10 |
  STZ.B $1A,X                               ; $8DAA14 |
  RTL                                       ; $8DAA16 |

CODE_8DAA17:
  JSL.L CODE_FL_85F885                      ; $8DAA17 |
  JSL.L CODE_FL_86C3F8                      ; $8DAA1B |
  LDA.B $1A,X                               ; $8DAA1F |
  PHX                                       ; $8DAA21 |
  ASL A                                     ; $8DAA22 |
  TAX                                       ; $8DAA23 |
  LDA.L PTR16_8DAA2E,X                      ; $8DAA24 |
  PLX                                       ; $8DAA28 |
  STA.B $00                                 ; $8DAA29 |
  JMP.W ($0000)                             ; $8DAA2B |

PTR16_8DAA2E:
  dw CODE_8DAA34                            ; $8DAA2E |
  dw CODE_8DAA5B                            ; $8DAA30 |
  dw CODE_8DAA75                            ; $8DAA32 |

CODE_8DAA34:
  LDA.W #$0037                              ; $8DAA34 |
  JSL.L CODE_FL_86CAEE                      ; $8DAA37 |
  JSL.L CODE_FL_86C444                      ; $8DAA3B |
  LDY.W #$0018                              ; $8DAA3F |
  JSL.L CODE_FL_85AB99                      ; $8DAA42 |
  LDA.W #$0100                              ; $8DAA46 |
  STA.B $2C,X                               ; $8DAA49 |
  JSL.L CODE_FL_85A9B7                      ; $8DAA4B |
  JSL.L CODE_FL_85A9EF                      ; $8DAA4F |
  JSL.L CODE_FL_85A8CE                      ; $8DAA53 |
  JML.L CODE_FL_86C63F                      ; $8DAA57 |

CODE_8DAA5B:
  LDA.W #$0003                              ; $8DAA5B |
  LDY.W #$0007                              ; $8DAA5E |
  JSL.L CODE_FL_86C68A                      ; $8DAA61 |
  LDA.B $0D,X                               ; $8DAA65 |
  CMP.W #$0070                              ; $8DAA67 |
  BCC CODE_8DAA70                           ; $8DAA6A |
  JSL.L CODE_FL_86C70D                      ; $8DAA6C |

CODE_8DAA70:
  JML.L CODE_FL_86CA36                      ; $8DAA70 |

  RTL                                       ; $8DAA74 |

CODE_8DAA75:
  JSL.L CODE_FL_85A939                      ; $8DAA75 |
  JML.L CODE_FL_86CA36                      ; $8DAA79 |

CODE_8DAA7D:
  JSL.L CODE_FL_85F885                      ; $8DAA7D |
  JSL.L CODE_FL_86C3F8                      ; $8DAA81 |
  PHX                                       ; $8DAA85 |
  ASL A                                     ; $8DAA86 |
  TAX                                       ; $8DAA87 |
  LDA.L PTR16_8DAA92,X                      ; $8DAA88 |
  PLX                                       ; $8DAA8C |
  STA.B $00                                 ; $8DAA8D |
  JMP.W ($0000)                             ; $8DAA8F |

PTR16_8DAA92:
  dw CODE_JL_8DAAA2                         ; $8DAA92 |
  dw CODE_8DAAE3                            ; $8DAA94 |
  dw CODE_8DAB26                            ; $8DAA96 |
  dw CODE_8DAB67                            ; $8DAA98 |
  dw CODE_8DAB9E                            ; $8DAA9A |
  dw CODE_8DABAC                            ; $8DAA9C |
  dw CODE_8DABC0                            ; $8DAA9E |
  dw CODE_8DABC7                            ; $8DAAA0 |

CODE_JL_8DAAA2:
  JSL.L CODE_FL_86C7A5                      ; $8DAAA2 |
  JSL.L CODE_FL_86C444                      ; $8DAAA6 |
  JSL.L CODE_FL_85A845                      ; $8DAAAA |
  JSL.L CODE_FL_86C486                      ; $8DAAAE |
  LDA.B $4E,X                               ; $8DAAB2 |
  AND.W #$0002                              ; $8DAAB4 |
  BNE CODE_8DAAC9                           ; $8DAAB7 |
  LDA.W #$003D                              ; $8DAAB9 |
  JSL.L CODE_FL_86CAEE                      ; $8DAABC |
  LDA.W #$FF00                              ; $8DAAC0 |
  JSL.L CODE_FL_86C71F                      ; $8DAAC3 |
  BRA CODE_8DAAD8                           ; $8DAAC7 |

CODE_8DAAC9:
  LDA.W #$33C8                              ; $8DAAC9 |
  STA.B $00,X                               ; $8DAACC |
  LDA.B $04,X                               ; $8DAACE |
  AND.W #$6767                              ; $8DAAD0 |
  ORA.W #$1090                              ; $8DAAD3 |
  STA.B $04,X                               ; $8DAAD6 |

CODE_8DAAD8:
  LDA.B $34,X                               ; $8DAAD8 |
  ORA.W #$C102                              ; $8DAADA |
  STA.B $34,X                               ; $8DAADD |
  JML.L CODE_FL_86C63F                      ; $8DAADF |

CODE_8DAAE3:
  LDA.B $4E,X                               ; $8DAAE3 |
  AND.W #$0002                              ; $8DAAE5 |
  BNE CODE_8DAAEF                           ; $8DAAE8 |
  JSL.L CODE_FL_85A646                      ; $8DAAEA |
  RTL                                       ; $8DAAEE |

CODE_8DAAEF:
  LDA.W #$0040                              ; $8DAAEF |
  STA.B $28,X                               ; $8DAAF2 |
  LDY.W #$0004                              ; $8DAAF4 |
  JSL.L CODE_FL_86C514                      ; $8DAAF7 |
  JSL.L CODE_FL_85A646                      ; $8DAAFB |
  BEQ CODE_8DAB25                           ; $8DAAFF |
  LDA.B $04,X                               ; $8DAB01 |
  AND.W #$6767                              ; $8DAB03 |
  ORA.W #$1898                              ; $8DAB06 |
  STA.B $04,X                               ; $8DAB09 |
  LDA.W #$FF00                              ; $8DAB0B |
  JSL.L CODE_FL_86C71F                      ; $8DAB0E |
  STZ.B $06,X                               ; $8DAB12 |
  LDA.W #$0045                              ; $8DAB14 |
  STA.B $02,X                               ; $8DAB17 |
  LDA.W #$32F4                              ; $8DAB19 |
  STA.B $00,X                               ; $8DAB1C |
  LDA.W #$003D                              ; $8DAB1E |
  JSL.L CODE_FL_86CAEE                      ; $8DAB21 |

CODE_8DAB25:
  RTL                                       ; $8DAB25 |

CODE_8DAB26:
  LDA.B $4E,X                               ; $8DAB26 |
  AND.W #$0001                              ; $8DAB28 |
  BEQ CODE_8DAB4F                           ; $8DAB2B |
  JSL.L CODE_FL_86C526                      ; $8DAB2D |
  CMP.W #$0040                              ; $8DAB31 |
  BCS CODE_8DAB4F                           ; $8DAB34 |
  LDA.W #$330E                              ; $8DAB36 |
  STA.B $00,X                               ; $8DAB39 |
  STZ.B $1E,X                               ; $8DAB3B |
  LDA.W #$FB00                              ; $8DAB3D |
  STA.B $28,X                               ; $8DAB40 |
  LDA.W #$FF00                              ; $8DAB42 |
  JSL.L CODE_FL_86C887                      ; $8DAB45 |
  LDA.W #$0003                              ; $8DAB49 |
  STA.B $1A,X                               ; $8DAB4C |
  RTL                                       ; $8DAB4E |

CODE_8DAB4F:
  JSL.L CODE_FL_858B70                      ; $8DAB4F |
  BEQ CODE_8DAB5A                           ; $8DAB53 |
  LDA.W $1C12                               ; $8DAB55 |
  BEQ CODE_8DAB66                           ; $8DAB58 |

CODE_8DAB5A:
  JSL.L CODE_FL_86CB6A                      ; $8DAB5A |
  JSL.L CODE_FL_858B4E                      ; $8DAB5E |
  BNE CODE_8DAB66                           ; $8DAB62 |
  DEC.B $1A,X                               ; $8DAB64 |

CODE_8DAB66:
  RTL                                       ; $8DAB66 |

CODE_8DAB67:
  BIT.B $28,X                               ; $8DAB67 |
  BMI CODE_8DAB82                           ; $8DAB69 |
  BIT.B $1E,X                               ; $8DAB6B |
  BNE CODE_8DAB82                           ; $8DAB6D |
  LDA.W #$003E                              ; $8DAB6F |
  JSL.L CODE_FL_86CAEE                      ; $8DAB72 |
  LDA.W #$0080                              ; $8DAB76 |
  STA.B $4C,X                               ; $8DAB79 |
  LDA.W #$FE00                              ; $8DAB7B |
  JSL.L CODE_FL_86C887                      ; $8DAB7E |

CODE_8DAB82:
  JSL.L CODE_FL_85A646                      ; $8DAB82 |
  BEQ CODE_8DAB9D                           ; $8DAB86 |
  LDA.W #$003C                              ; $8DAB88 |
  JSL.L CODE_FL_8089BD                      ; $8DAB8B |
  LDA.W #$0010                              ; $8DAB8F |
  STA.B $2C,X                               ; $8DAB92 |
  LDA.W #$3320                              ; $8DAB94 |
  STA.B $00,X                               ; $8DAB97 |
  STZ.B $1E,X                               ; $8DAB99 |
  STZ.B $26,X                               ; $8DAB9B |

CODE_8DAB9D:
  RTL                                       ; $8DAB9D |

CODE_8DAB9E:
  JSL.L CODE_FL_86C70D                      ; $8DAB9E |
  LDA.W #$003F                              ; $8DABA2 |
  JSL.L CODE_FL_86CAEE                      ; $8DABA5 |
  INC.B $1A,X                               ; $8DABA9 |
  RTL                                       ; $8DABAB |

CODE_8DABAC:
  JSL.L CODE_FL_858AF1                      ; $8DABAC |
  BNE CODE_8DABBA                           ; $8DABB0 |
  LDA.W #$0001                              ; $8DABB2 |
  STA.B $1A,X                               ; $8DABB5 |
  STZ.B $3A,X                               ; $8DABB7 |
  RTL                                       ; $8DABB9 |

CODE_8DABBA:
  LDA.W #$0001                              ; $8DABBA |
  STA.B $3A,X                               ; $8DABBD |
  RTL                                       ; $8DABBF |

CODE_8DABC0:
  LDA.W #$A000                              ; $8DABC0 |
  JML.L CODE_JL_85AAAA                      ; $8DABC3 |

CODE_8DABC7:
  LDA.B $3A,X                               ; $8DABC7 |
  BNE CODE_8DABD5                           ; $8DABC9 |
  LDA.W #$3352                              ; $8DABCB |
  LDY.W #$334A                              ; $8DABCE |
  JML.L CODE_JL_85AE70                      ; $8DABD1 |

CODE_8DABD5:
  LDA.W #$337E                              ; $8DABD5 |
  LDY.W #$336E                              ; $8DABD8 |
  JML.L CODE_JL_85AE70                      ; $8DABDB |

CODE_8DABDF:
  JSL.L CODE_FL_85AD36                      ; $8DABDF |
  JSL.L CODE_FL_85F885                      ; $8DABE3 |
  JSL.L CODE_FL_86C412                      ; $8DABE7 |
  PHX                                       ; $8DABEB |
  ASL A                                     ; $8DABEC |
  TAX                                       ; $8DABED |
  LDA.L PTR16_8DABF8,X                      ; $8DABEE |
  PLX                                       ; $8DABF2 |
  STA.B $00                                 ; $8DABF3 |
  JMP.W ($0000)                             ; $8DABF5 |

PTR16_8DABF8:
  dw CODE_8DAC04                            ; $8DABF8 |
  dw CODE_8DAC31                            ; $8DABFA |
  dw CODE_8DAC57                            ; $8DABFC |
  dw CODE_8DAC70                            ; $8DABFE |
  dw CODE_8DABC0                            ; $8DAC00 |
  dw CODE_8DABC7                            ; $8DAC02 |

CODE_8DAC04:
  JSL.L CODE_FL_86C7A5                      ; $8DAC04 |
  JSL.L CODE_FL_86C444                      ; $8DAC08 |
  JSL.L CODE_FL_85A845                      ; $8DAC0C |
  JSL.L CODE_FL_85AA07                      ; $8DAC10 |
  LDA.W #$003D                              ; $8DAC14 |
  JSL.L CODE_FL_86CAEE                      ; $8DAC17 |
  JSL.L CODE_FL_86C486                      ; $8DAC1B |
  LDA.W #$FF00                              ; $8DAC1F |
  JSL.L CODE_FL_86C71F                      ; $8DAC22 |
  LDA.B $34,X                               ; $8DAC26 |
  ORA.W #$C102                              ; $8DAC28 |
  STA.B $34,X                               ; $8DAC2B |
  JML.L CODE_FL_86C63F                      ; $8DAC2D |

CODE_8DAC31:
  JSL.L CODE_FL_85A60F                      ; $8DAC31 |
  BEQ CODE_8DAC41                           ; $8DAC35 |
  LDA.W #$FF00                              ; $8DAC37 |
  JSL.L CODE_FL_86C71F                      ; $8DAC3A |
  INC.B $1A,X                               ; $8DAC3E |
  RTL                                       ; $8DAC40 |

CODE_8DAC41:
  JSL.L CODE_FL_A8FC80                      ; $8DAC41 |
  LDA.W $0045,X                             ; $8DAC45 |
  BPL CODE_8DAC56                           ; $8DAC48 |
  STZ.W $0046,X                             ; $8DAC4A |
  LDA.W #$FF00                              ; $8DAC4D |
  JSL.L CODE_FL_86C71F                      ; $8DAC50 |
  INC.B $1A,X                               ; $8DAC54 |

CODE_8DAC56:
  RTL                                       ; $8DAC56 |

CODE_8DAC57:
  JSL.L CODE_FL_A8FC80                      ; $8DAC57 |
  LDA.W $0045,X                             ; $8DAC5B |
  BMI CODE_8DAC62                           ; $8DAC5E |
  DEC.B $1A,X                               ; $8DAC60 |

CODE_8DAC62:
  STZ.W $0046,X                             ; $8DAC62 |
  JSL.L CODE_FL_858B64                      ; $8DAC65 |
  BEQ CODE_8DAC6F                           ; $8DAC69 |
  JML.L CODE_FL_86CB6A                      ; $8DAC6B |

CODE_8DAC6F:
  RTL                                       ; $8DAC6F |

CODE_8DAC70:
  JML.L CODE_FL_85A695                      ; $8DAC70 |

CODE_8DAC74:
  JSL.L CODE_FL_85F885                      ; $8DAC74 |
  LDA.B $20,X                               ; $8DAC78 |
  STA.W $1C3C                               ; $8DAC7A |
  JSL.L CODE_FL_86C3B0                      ; $8DAC7D |
  PHX                                       ; $8DAC81 |
  ASL A                                     ; $8DAC82 |
  TAX                                       ; $8DAC83 |
  LDA.L PTR16_8DAC8E,X                      ; $8DAC84 |
  PLX                                       ; $8DAC88 |
  STA.B $00                                 ; $8DAC89 |
  JMP.W ($0000)                             ; $8DAC8B |

PTR16_8DAC8E:
  dw CODE_8DAC98                            ; $8DAC8E |
  dw CODE_8DAD39                            ; $8DAC90 |
  dw CODE_8DAD77                            ; $8DAC92 |
  dw CODE_8DADD7                            ; $8DAC94 |
  dw CODE_8DADE6                            ; $8DAC96 |

CODE_8DAC98:
  JSL.L CODE_FL_86C7AD                      ; $8DAC98 |
  LDA.B $4E,X                               ; $8DAC9C |
  ORA.W #$0200                              ; $8DAC9E |
  STA.B $4E,X                               ; $8DACA1 |
  BRA CODE_8DACCF                           ; $8DACA3 |

CODE_8DACA5:
  JSL.L CODE_FL_85F885                      ; $8DACA5 |
  LDA.B $20,X                               ; $8DACA9 |
  STA.W $1C3C                               ; $8DACAB |
  JSL.L CODE_FL_86C3B0                      ; $8DACAE |
  PHX                                       ; $8DACB2 |
  ASL A                                     ; $8DACB3 |
  TAX                                       ; $8DACB4 |
  LDA.L PTR16_8DACBF,X                      ; $8DACB5 |
  PLX                                       ; $8DACB9 |
  STA.B $00                                 ; $8DACBA |
  JMP.W ($0000)                             ; $8DACBC |

PTR16_8DACBF:
  dw CODE_8DACC9                            ; $8DACBF |
  dw CODE_8DAD39                            ; $8DACC1 |
  dw CODE_8DAD77                            ; $8DACC3 |
  dw CODE_8DADD7                            ; $8DACC5 |
  dw CODE_8DADE6                            ; $8DACC7 |

CODE_8DACC9:
  JSL.L CODE_FL_86C7AD                      ; $8DACC9 |
  STZ.B $02,X                               ; $8DACCD |

CODE_8DACCF:
  LDA.B $4E,X                               ; $8DACCF |
  AND.W #$0200                              ; $8DACD1 |
  BEQ CODE_8DACDA                           ; $8DACD4 |
  JSL.L CODE_FL_86C47E                      ; $8DACD6 |

CODE_8DACDA:
  LDA.W #$DEB1                              ; $8DACDA |
  JSL.L CODE_FL_86CAEE                      ; $8DACDD |
  LDA.W #$0013                              ; $8DACE1 |
  JSL.L CODE_FL_86C9A4                      ; $8DACE4 |
  BCS CODE_8DAD54                           ; $8DACE8 |
  LDA.W #$0049                              ; $8DACEA |
  JSL.L CODE_FL_86CAE6                      ; $8DACED |
  JSL.L CODE_FL_85AAB6                      ; $8DACF1 |
  LDA.W $0014,Y                             ; $8DACF5 |
  DEC A                                     ; $8DACF8 |
  STA.W $0014,Y                             ; $8DACF9 |
  JSL.L CODE_FL_86C7C4                      ; $8DACFC |
  LDA.B $34,X                               ; $8DAD00 |
  ORA.W #$D082                              ; $8DAD02 |
  STA.B $34,X                               ; $8DAD05 |
  JSL.L CODE_FL_85AA07                      ; $8DAD07 |
  LDA.W #$0004                              ; $8DAD0B |
  STA.B $36,X                               ; $8DAD0E |
  JSL.L CODE_FL_86C444                      ; $8DAD10 |
  LDA.B $4E,X                               ; $8DAD14 |
  AND.W #$007F                              ; $8DAD16 |
  JSL.L CODE_FL_85AC7C                      ; $8DAD19 |
  LDA.B $4E,X                               ; $8DAD1D |
  AND.W #$0100                              ; $8DAD1F |
  BNE CODE_8DAD35                           ; $8DAD22 |
  JSR.W CODE_FN_8DAD8F                      ; $8DAD24 |
  PHY                                       ; $8DAD27 |
  LDA.B ($48,X)                             ; $8DAD28 |
  TAY                                       ; $8DAD2A |
  LDA.W $0009,Y                             ; $8DAD2B |
  ADC.W #$0100                              ; $8DAD2E |
  PLY                                       ; $8DAD31 |
  STA.W $0009,Y                             ; $8DAD32 |

CODE_8DAD35:
  JML.L CODE_FL_86C63F                      ; $8DAD35 |

CODE_8DAD39:
  JSL.L CODE_FL_85A89B                      ; $8DAD39 |
  LDA.B $4E,X                               ; $8DAD3D |
  AND.W #$0080                              ; $8DAD3F |
  BEQ CODE_8DAD58                           ; $8DAD42 |
  LDA.W #$0080                              ; $8DAD44 |
  SBC.B $0D,X                               ; $8DAD47 |
  BPL CODE_8DAD4F                           ; $8DAD49 |
  EOR.W #$FFFF                              ; $8DAD4B |
  INC A                                     ; $8DAD4E |

CODE_8DAD4F:
  CMP.W #$00B0                              ; $8DAD4F |
  BCC CODE_8DAD58                           ; $8DAD52 |

CODE_8DAD54:
  JML.L CODE_FL_86CA36                      ; $8DAD54 |

CODE_8DAD58:
  LDA.W $1C38                               ; $8DAD58 |
  LSR A                                     ; $8DAD5B |
  LDA.W #$DEB1                              ; $8DAD5C |
  BCC CODE_8DAD64                           ; $8DAD5F |
  LDA.W #$DEC3                              ; $8DAD61 |

CODE_8DAD64:
  STA.B $1E,X                               ; $8DAD64 |
  JSL.L CODE_FL_98FF18                      ; $8DAD66 |
  LDA.W #$3C04                              ; $8DAD6A |
  JSL.L CODE_FL_86CADB                      ; $8DAD6D |
  BNE CODE_8DAD76                           ; $8DAD71 |
  JSR.W CODE_FN_8DAD8F                      ; $8DAD73 |

CODE_8DAD76:
  RTL                                       ; $8DAD76 |

CODE_8DAD77:
  LDA.B $4E,X                               ; $8DAD77 |
  AND.W #$007F                              ; $8DAD79 |
  JSL.L CODE_FL_85AC8E                      ; $8DAD7C |
  LDA.W #$0009                              ; $8DAD80 |
  JSL.L CODE_FL_86C9A7                      ; $8DAD83 |
  JSL.L CODE_FL_85A71F                      ; $8DAD87 |
  JML.L CODE_FL_86CA2D                      ; $8DAD8B |

CODE_FN_8DAD8F:
  LDA.W #$0172                              ; $8DAD8F |
  JSL.L CODE_FL_86C9A4                      ; $8DAD92 |
  BCS CODE_8DADD6                           ; $8DAD96 |
  JSL.L CODE_FL_86C7C4                      ; $8DAD98 |
  LDA.W $000D,Y                             ; $8DAD9C |
  SBC.W #$0004                              ; $8DAD9F |
  STA.W $000D,Y                             ; $8DADA2 |
  LDA.W $0022,Y                             ; $8DADA5 |
  AND.W #$BFFF                              ; $8DADA8 |
  STA.W $0022,Y                             ; $8DADAB |
  LDA.B $48,X                               ; $8DADAE |
  STA.W $0048,Y                             ; $8DADB0 |
  LDA.B $06,X                               ; $8DADB3 |
  STA.W $0006,Y                             ; $8DADB5 |
  LDA.W $0002,Y                             ; $8DADB8 |
  AND.W #$FF7F                              ; $8DADBB |
  STA.W $0002,Y                             ; $8DADBE |
  LDA.B $09,X                               ; $8DADC1 |
  CMP.W #$0100                              ; $8DADC3 |
  BCS CODE_8DADD6                           ; $8DADC6 |
  LDA.B $0D,X                               ; $8DADC8 |
  CMP.W #$00C0                              ; $8DADCA |
  BCS CODE_8DADD6                           ; $8DADCD |
  LDA.W #$001C                              ; $8DADCF |
  JSL.L CODE_FL_8089BD                      ; $8DADD2 |

CODE_8DADD6:
  RTS                                       ; $8DADD6 |

CODE_8DADD7:
  JSL.L CODE_FL_85A5A7                      ; $8DADD7 |
  LDA.W #$0040                              ; $8DADDB |
  STA.B $38,X                               ; $8DADDE |
  LDA.W #$0001                              ; $8DADE0 |
  STA.B $1A,X                               ; $8DADE3 |
  RTL                                       ; $8DADE5 |

CODE_8DADE6:
  LDA.B $44,X                               ; $8DADE6 |
  TAX                                       ; $8DADE8 |
  JSL.L CODE_FL_86CA36                      ; $8DADE9 |
  LDX.B $FC                                 ; $8DADED |
  LDA.W #$3C82                              ; $8DADEF |
  LDY.W #$3C8E                              ; $8DADF2 |
  JML.L CODE_JL_85AE5A                      ; $8DADF5 |

CODE_8DADF9:
  JSL.L CODE_FL_85F885                      ; $8DADF9 |
  JSL.L CODE_FL_86C3F8                      ; $8DADFD |
  PHX                                       ; $8DAE01 |
  ASL A                                     ; $8DAE02 |
  TAX                                       ; $8DAE03 |
  LDA.L PTR16_8DAE0E,X                      ; $8DAE04 |
  PLX                                       ; $8DAE08 |
  STA.B $00                                 ; $8DAE09 |
  JMP.W ($0000)                             ; $8DAE0B |

PTR16_8DAE0E:
  dw CODE_8DAE12                            ; $8DAE0E |
  dw CODE_8DAE3C                            ; $8DAE10 |

CODE_8DAE12:
  LDA.W #$004A                              ; $8DAE12 |
  JSL.L CODE_FL_86CAEE                      ; $8DAE15 |
  STZ.B $02,X                               ; $8DAE19 |
  LDY.W #$0020                              ; $8DAE1B |
  JSL.L CODE_FL_85AB99                      ; $8DAE1E |
  LDA.B $04,X                               ; $8DAE22 |
  ORA.W #$1898                              ; $8DAE24 |
  STA.B $04,X                               ; $8DAE27 |
  LDA.W #$FE40                              ; $8DAE29 |
  JSL.L CODE_FL_86C887                      ; $8DAE2C |
  JSL.L CODE_FL_85A9EF                      ; $8DAE30 |
  JSL.L CODE_FL_85A8CE                      ; $8DAE34 |
  JML.L CODE_FL_86C63F                      ; $8DAE38 |

CODE_8DAE3C:
  JSL.L CODE_FL_85AAFC                      ; $8DAE3C |
  CMP.W #$0380                              ; $8DAE40 |
  BCC CODE_8DAE49                           ; $8DAE43 |
  JML.L CODE_FL_86CA36                      ; $8DAE45 |

CODE_8DAE49:
  RTL                                       ; $8DAE49 |

CODE_8DAE4A:
  JSL.L CODE_FL_85F885                      ; $8DAE4A |
  LDA.B $20,X                               ; $8DAE4E |
  STA.W $1C3C                               ; $8DAE50 |
  JSL.L CODE_FL_86C3F8                      ; $8DAE53 |
  PHX                                       ; $8DAE57 |
  ASL A                                     ; $8DAE58 |
  TAX                                       ; $8DAE59 |
  LDA.L PTR16_8DAE64,X                      ; $8DAE5A |
  PLX                                       ; $8DAE5E |
  STA.B $00                                 ; $8DAE5F |
  JMP.W ($0000)                             ; $8DAE61 |

PTR16_8DAE64:
  dw CODE_8DAE6E                            ; $8DAE64 |
  dw CODE_8DAEA2                            ; $8DAE66 |
  dw CODE_8DAED5                            ; $8DAE68 |
  dw CODE_8DAF0E                            ; $8DAE6A |
  dw CODE_8DAF2C                            ; $8DAE6C |

CODE_8DAE6E:
  JSL.L CODE_FL_86C7A5                      ; $8DAE6E |
  STZ.B $02,X                               ; $8DAE72 |
  LDA.W #$0187                              ; $8DAE74 |

CODE_JP_8DAE77:
  JSL.L CODE_FL_86C9A4                      ; $8DAE77 |
  BCS CODE_8DAE9E                           ; $8DAE7B |
  JSL.L CODE_FL_85AAB6                      ; $8DAE7D |
  LDA.W $0022,Y                             ; $8DAE81 |
  ORA.W #$4000                              ; $8DAE84 |
  STA.W $0022,Y                             ; $8DAE87 |
  JSL.L CODE_FL_86C7C4                      ; $8DAE8A |
  JSL.L CODE_FL_85A9B7                      ; $8DAE8E |
  JSL.L CODE_FL_85A9EF                      ; $8DAE92 |
  JSL.L CODE_FL_86C444                      ; $8DAE96 |
  JML.L CODE_FL_86C63F                      ; $8DAE9A |

CODE_8DAE9E:
  JML.L CODE_FL_86CA36                      ; $8DAE9E |

CODE_8DAEA2:
  LDA.B ($48,X)                             ; $8DAEA2 |
  TAY                                       ; $8DAEA4 |
  LDA.W $0009,Y                             ; $8DAEA5 |
  SBC.B $09,X                               ; $8DAEA8 |
  STA.B $00                                 ; $8DAEAA |
  BPL CODE_8DAEB2                           ; $8DAEAC |
  EOR.W #$FFFF                              ; $8DAEAE |
  INC A                                     ; $8DAEB1 |

CODE_8DAEB2:
  LDY.W #$33C8                              ; $8DAEB2 |
  CMP.W #$0020                              ; $8DAEB5 |
  BCC CODE_8DAEC4                           ; $8DAEB8 |
  LDY.W #$33E2                              ; $8DAEBA |
  LDA.B $00                                 ; $8DAEBD |
  BPL CODE_8DAEC4                           ; $8DAEBF |
  LDY.W #$33D4                              ; $8DAEC1 |

CODE_8DAEC4:
  TYA                                       ; $8DAEC4 |
  STA.B $00,X                               ; $8DAEC5 |
  JSL.L CODE_FL_86C70D                      ; $8DAEC7 |
  LDA.W #$004B                              ; $8DAECB |
  JSL.L CODE_FL_86CAEE                      ; $8DAECE |
  INC.B $1A,X                               ; $8DAED2 |
  RTL                                       ; $8DAED4 |

CODE_8DAED5:
  LDA.W #$3410                              ; $8DAED5 |
  JSL.L CODE_FL_86CADB                      ; $8DAED8 |
  BNE CODE_8DAEE1                           ; $8DAEDC |
  JSR.W CODE_FN_8DAEE8                      ; $8DAEDE |

CODE_8DAEE1:
  LDA.B $20,X                               ; $8DAEE1 |
  BNE CODE_8DAEE7                           ; $8DAEE3 |
  DEC.B $1A,X                               ; $8DAEE5 |

CODE_8DAEE7:
  RTL                                       ; $8DAEE7 |

CODE_FN_8DAEE8:
  LDA.W #$0188                              ; $8DAEE8 |
  JSL.L CODE_FL_86C9A7                      ; $8DAEEB |
  BCS CODE_8DAF03                           ; $8DAEEF |
  JSL.L CODE_FL_86C7C4                      ; $8DAEF1 |
  LDA.W $000D,Y                             ; $8DAEF5 |
  SBC.W #$0004                              ; $8DAEF8 |
  STA.W $000D,Y                             ; $8DAEFB |
  LDA.B $4E,X                               ; $8DAEFE |
  STA.W $004E,Y                             ; $8DAF00 |

CODE_8DAF03:
  LDA.B $86                                 ; $8DAF03 |
  AND.W #$007F                              ; $8DAF05 |
  ADC.W #$0040                              ; $8DAF08 |
  STA.B $2C,X                               ; $8DAF0B |
  RTS                                       ; $8DAF0D |

CODE_8DAF0E:
  JSL.L CODE_FL_85A9BF                      ; $8DAF0E |
  JSL.L CODE_FL_85A9F7                      ; $8DAF12 |
  INC.B $1A,X                               ; $8DAF16 |
  LDA.W #$341C                              ; $8DAF18 |
  STA.B $00,X                               ; $8DAF1B |
  STZ.B $1E,X                               ; $8DAF1D |
  LDA.W #$FC00                              ; $8DAF1F |
  STA.B $28,X                               ; $8DAF22 |
  LDA.W #$000C                              ; $8DAF24 |
  JSL.L push_sound_queue                    ; $8DAF27 |
  RTL                                       ; $8DAF2B |

CODE_8DAF2C:
  JSL.L CODE_FL_85A646                      ; $8DAF2C |
  BEQ CODE_8DAF39                           ; $8DAF30 |
  LDA.W #$A000                              ; $8DAF32 |
  JML.L CODE_JL_85AAAA                      ; $8DAF35 |

CODE_8DAF39:
  RTL                                       ; $8DAF39 |

CODE_8DAF3A:
  JSL.L CODE_FL_86C3F8                      ; $8DAF3A |
  PHX                                       ; $8DAF3E |
  ASL A                                     ; $8DAF3F |
  TAX                                       ; $8DAF40 |
  LDA.L PTR16_8DAF4B,X                      ; $8DAF41 |
  PLX                                       ; $8DAF45 |
  STA.B $00                                 ; $8DAF46 |
  JMP.W ($0000)                             ; $8DAF48 |

PTR16_8DAF4B:
  dw CODE_8DAF53                            ; $8DAF4B |
  dw CODE_JP_8DAF7C                         ; $8DAF4D |
  dw CODE_8DAFC7                            ; $8DAF4F |
  dw CODE_8DAFD1                            ; $8DAF51 |

CODE_8DAF53:
  LDA.W #$0080                              ; $8DAF53 |
  STA.B $2C,X                               ; $8DAF56 |
  JSL.L CODE_FL_86C444                      ; $8DAF58 |
  LDA.W #$FF80                              ; $8DAF5C |
  JSL.L CODE_FL_86C71F                      ; $8DAF5F |
  ASL A                                     ; $8DAF63 |
  LDY.W #$004C                              ; $8DAF64 |
  BCS CODE_8DAF6A                           ; $8DAF67 |
  INY                                       ; $8DAF69 |

CODE_8DAF6A:
  TYA                                       ; $8DAF6A |
  JSL.L CODE_FL_86CAEE                      ; $8DAF6B |
  LDA.W $1C58                               ; $8DAF6F |
  STA.B $04,X                               ; $8DAF72 |
  JSL.L CODE_FL_85A5D0                      ; $8DAF74 |
  JML.L CODE_FL_86C63F                      ; $8DAF78 |

CODE_JP_8DAF7C:
  LDY.W #$0002                              ; $8DAF7C |
  JSL.L CODE_FL_86C503                      ; $8DAF7F |
  LDY.B $44,X                               ; $8DAF83 |
  JSL.L CODE_FL_86C7D4                      ; $8DAF85 |
  LDA.W $001A,Y                             ; $8DAF89 |
  CMP.W #$0004                              ; $8DAF8C |
  BNE CODE_8DAF93                           ; $8DAF8F |
  INC.B $1A,X                               ; $8DAF91 |

CODE_8DAF93:
  JSL.L CODE_FL_86C70D                      ; $8DAF93 |
  JSL.L CODE_FL_86CB71                      ; $8DAF97 |
  BMI CODE_8DAFA2                           ; $8DAF9B |
  LDA.W #$004D                              ; $8DAF9D |
  BRA CODE_8DAFA5                           ; $8DAFA0 |

CODE_8DAFA2:
  LDA.W #$004C                              ; $8DAFA2 |

CODE_8DAFA5:
  JSL.L CODE_FL_86CAEE                      ; $8DAFA5 |
  LDA.B ($48,X)                             ; $8DAFA9 |
  TAY                                       ; $8DAFAB |
  LDA.B $09,X                               ; $8DAFAC |
  CMP.W $0009,Y                             ; $8DAFAE |
  LDA.B $26,X                               ; $8DAFB1 |
  BCS CODE_8DAFB9                           ; $8DAFB3 |
  EOR.W #$FFFF                              ; $8DAFB5 |
  INC A                                     ; $8DAFB8 |

CODE_8DAFB9:
  BPL CODE_8DAFC1                           ; $8DAFB9 |
  LDA.W #$0080                              ; $8DAFBB |
  STA.B $2C,X                               ; $8DAFBE |
  RTL                                       ; $8DAFC0 |

CODE_8DAFC1:
  LDA.W #$0040                              ; $8DAFC1 |
  STA.B $2C,X                               ; $8DAFC4 |
  RTL                                       ; $8DAFC6 |

CODE_8DAFC7:
  LDA.W #$FFA0                              ; $8DAFC7 |
  STA.B $28,X                               ; $8DAFCA |
  STZ.B $26,X                               ; $8DAFCC |
  INC.B $1A,X                               ; $8DAFCE |
  RTL                                       ; $8DAFD0 |

CODE_8DAFD1:
  LDA.W $1C38                               ; $8DAFD1 |
  LSR A                                     ; $8DAFD4 |
  LSR A                                     ; $8DAFD5 |
  STA.B $00                                 ; $8DAFD6 |
  LDY.W #$0004                              ; $8DAFD8 |
  TXA                                       ; $8DAFDB |
  ROL A                                     ; $8DAFDC |
  ROL A                                     ; $8DAFDD |
  ADC.B $00                                 ; $8DAFDE |
  JSL.L CODE_FL_8AB4FC                      ; $8DAFE0 |
  CLC                                       ; $8DAFE4 |
  LDA.B $00                                 ; $8DAFE5 |
  JML.L CODE_FL_86C85B                      ; $8DAFE7 |

CODE_8DAFEB:
  JSL.L CODE_FL_85F885                      ; $8DAFEB |
  JSL.L CODE_FL_86C3F8                      ; $8DAFEF |
  PHX                                       ; $8DAFF3 |
  ASL A                                     ; $8DAFF4 |
  TAX                                       ; $8DAFF5 |
  LDA.L PTR16_8DB000,X                      ; $8DAFF6 |
  PLX                                       ; $8DAFFA |
  STA.B $00                                 ; $8DAFFB |
  JMP.W ($0000)                             ; $8DAFFD |

PTR16_8DB000:
  dw CODE_8DB006                            ; $8DB000 |
  dw CODE_8DB024                            ; $8DB002 |
  dw CODE_8DB028                            ; $8DB004 |

CODE_8DB006:
  JSL.L CODE_FL_85A8CE                      ; $8DB006 |
  LDA.W #$34EC                              ; $8DB00A |
  STA.B $00,X                               ; $8DB00D |
  LDY.W #$0008                              ; $8DB00F |
  JSL.L CODE_FL_85AB99                      ; $8DB012 |
  LDA.B $14,X                               ; $8DB016 |
  DEC A                                     ; $8DB018 |
  DEC A                                     ; $8DB019 |
  STA.B $14,X                               ; $8DB01A |
  JSL.L CODE_FL_85A9EF                      ; $8DB01C |
  JML.L CODE_FL_86C63F                      ; $8DB020 |

CODE_8DB024:
  JML.L CODE_FL_85A646                      ; $8DB024 |

CODE_8DB028:
  JSL.L CODE_FL_85A986                      ; $8DB028 |
  LDA.B $4E,X                               ; $8DB02C |
  AND.W #$0001                              ; $8DB02E |
  BEQ CODE_8DB036                           ; $8DB031 |
  JMP.W CODE_JP_8DB0C5                      ; $8DB033 |

CODE_8DB036:
  LDA.B $4E,X                               ; $8DB036 |
  AND.W #$0002                              ; $8DB038 |
  BEQ CODE_8DB040                           ; $8DB03B |
  JMP.W CODE_JP_8DB0C9                      ; $8DB03D |

CODE_8DB040:
  CLC                                       ; $8DB040 |
  LDA.W $1662                               ; $8DB041 |
  ADC.B $09,X                               ; $8DB044 |
  STA.B $08                                 ; $8DB046 |
  SEC                                       ; $8DB048 |
  SBC.W #$0110                              ; $8DB049 |
  LDY.W #$0060                              ; $8DB04C |
  JSL.L CODE_FL_808E65                      ; $8DB04F |
  LDA.B $0D,X                               ; $8DB053 |
  STA.B $0A                                 ; $8DB055 |
  TYA                                       ; $8DB057 |
  STA.B $1A                                 ; $8DB058 |
  PHA                                       ; $8DB05A |
  SEC                                       ; $8DB05B |
  LDA.B $09,X                               ; $8DB05C |
  SBC.B $1A                                 ; $8DB05E |
  STA.B $1A                                 ; $8DB060 |
  PLA                                       ; $8DB062 |
  SEC                                       ; $8DB063 |
  SBC.W #$0010                              ; $8DB064 |
  CMP.W #$0040                              ; $8DB067 |
  BCS CODE_JP_8DB0C5                        ; $8DB06A |
  LDY.W #$0030                              ; $8DB06C |
  STY.B $18                                 ; $8DB06F |
  CMP.W #$0020                              ; $8DB071 |
  BCS CODE_8DB093                           ; $8DB074 |
  LDY.W #$0010                              ; $8DB076 |
  STY.B $18                                 ; $8DB079 |
  CLC                                       ; $8DB07B |
  LDA.B $1A                                 ; $8DB07C |
  ADC.B $18                                 ; $8DB07E |
  STA.B $08                                 ; $8DB080 |
  LDY.W #$0000                              ; $8DB082 |
  LDA.W #$0002                              ; $8DB085 |
  JSL.L CODE_FL_858000                      ; $8DB088 |
  CMP.W #$0000                              ; $8DB08C |
  BNE CODE_8DB0AB                           ; $8DB08F |
  BRA CODE_8DB0B4                           ; $8DB091 |

CODE_8DB093:
  CLC                                       ; $8DB093 |
  LDA.B $1A                                 ; $8DB094 |
  ADC.B $18                                 ; $8DB096 |
  STA.B $08                                 ; $8DB098 |
  LDY.W #$0000                              ; $8DB09A |
  LDA.W #$0004                              ; $8DB09D |
  JSL.L CODE_FL_858000                      ; $8DB0A0 |
  CMP.W #$0000                              ; $8DB0A4 |
  BNE CODE_8DB0AB                           ; $8DB0A7 |
  BRA CODE_8DB0B4                           ; $8DB0A9 |

CODE_8DB0AB:
  LDA.W #$000C                              ; $8DB0AB |
  JSL.L CODE_FL_8580F7                      ; $8DB0AE |
  BRA CODE_JP_8DB0C5                        ; $8DB0B2 |

CODE_8DB0B4:
  CLC                                       ; $8DB0B4 |
  LDA.B $08                                 ; $8DB0B5 |
  ADC.W #$0011                              ; $8DB0B7 |
  SBC.B $18                                 ; $8DB0BA |
  STA.B $08                                 ; $8DB0BC |
  LDA.W #$0012                              ; $8DB0BE |
  JSL.L CODE_FL_8580F7                      ; $8DB0C1 |

CODE_JP_8DB0C5:
  JML.L CODE_FL_86CA57                      ; $8DB0C5 |

CODE_JP_8DB0C9:
  CLC                                       ; $8DB0C9 |
  LDA.W $1662                               ; $8DB0CA |
  ADC.B $09,X                               ; $8DB0CD |
  STA.B $00                                 ; $8DB0CF |
  CMP.W #$0710                              ; $8DB0D1 |
  BCC CODE_8DB0F6                           ; $8DB0D4 |
  CMP.W #$0910                              ; $8DB0D6 |
  BCS CODE_8DB0F6                           ; $8DB0D9 |
  AND.W #$0020                              ; $8DB0DB |
  BEQ CODE_8DB0F6                           ; $8DB0DE |
  LDA.B $00                                 ; $8DB0E0 |
  AND.W #$FFE0                              ; $8DB0E2 |
  SEC                                       ; $8DB0E5 |
  SBC.W $1662                               ; $8DB0E6 |
  STA.B $08                                 ; $8DB0E9 |
  LDA.B $0D,X                               ; $8DB0EB |
  STA.B $0A                                 ; $8DB0ED |
  LDA.W #$0014                              ; $8DB0EF |
  JSL.L CODE_FL_8580F7                      ; $8DB0F2 |

CODE_8DB0F6:
  JML.L CODE_FL_86CA57                      ; $8DB0F6 |

CODE_8DB0FA:
  JSL.L CODE_FL_85F885                      ; $8DB0FA |
  LDA.B $20,X                               ; $8DB0FE |
  STA.W $1C3C                               ; $8DB100 |
  JSL.L CODE_FL_86C3F8                      ; $8DB103 |
  PHX                                       ; $8DB107 |
  ASL A                                     ; $8DB108 |
  TAX                                       ; $8DB109 |
  LDA.L PTR16_8DB114,X                      ; $8DB10A |
  PLX                                       ; $8DB10E |
  STA.B $00                                 ; $8DB10F |
  JMP.W ($0000)                             ; $8DB111 |

PTR16_8DB114:
  dw CODE_8DB126                            ; $8DB114 |
  dw CODE_8DB1E2                            ; $8DB116 |
  dw CODE_8DB14C                            ; $8DB118 |
  dw CODE_FL_8DB150                         ; $8DB11A |
  dw CODE_8DA9FA                            ; $8DB11C |
  dw CODE_8DAA01                            ; $8DB11E |
  dw CODE_8DAA05                            ; $8DB120 |
  dw CODE_8DB234                            ; $8DB122 |
  dw CODE_8DB23B                            ; $8DB124 |

CODE_8DB126:
  JSL.L CODE_FL_86C7AD                      ; $8DB126 |
  JSL.L CODE_FL_86C444                      ; $8DB12A |
  LDA.W #$002E                              ; $8DB12E |
  JSL.L CODE_FL_86CAEE                      ; $8DB131 |
  LDA.B $34,X                               ; $8DB135 |
  ORA.W #$C102                              ; $8DB137 |
  STA.B $34,X                               ; $8DB13A |
  LDA.W #$002F                              ; $8DB13C |
  JSL.L CODE_FL_86CAEE                      ; $8DB13F |
  LDA.W #$0080                              ; $8DB143 |
  STA.B $2C,X                               ; $8DB146 |
  JML.L CODE_FL_86C63F                      ; $8DB148 |

CODE_8DB14C:
  JSL.L CODE_FL_86C486                      ; $8DB14C |

CODE_FL_8DB150:
  LDA.W #$35E8                              ; $8DB150 |
  JSL.L CODE_FL_86CADB                      ; $8DB153 |
  BNE CODE_8DB177                           ; $8DB157 |
  LDA.W #$0008                              ; $8DB159 |
  STA.B $08                                 ; $8DB15C |
  LDA.W #$000C                              ; $8DB15E |
  STA.B $0A                                 ; $8DB161 |
  STZ.B $0E                                 ; $8DB163 |
  LDY.W #$0180                              ; $8DB165 |
  LDA.B $04,X                               ; $8DB168 |
  AND.W #$2000                              ; $8DB16A |
  BNE CODE_8DB172                           ; $8DB16D |
  LDY.W #$FE80                              ; $8DB16F |

CODE_8DB172:
  TYA                                       ; $8DB172 |
  JSL.L CODE_FL_85AB47                      ; $8DB173 |

CODE_8DB177:
  LDA.B $20,X                               ; $8DB177 |
  BNE CODE_8DB18B                           ; $8DB179 |
  JSL.L CODE_FL_86C486                      ; $8DB17B |
  LDA.W #$002F                              ; $8DB17F |
  JSL.L CODE_FL_86CAEE                      ; $8DB182 |
  LDA.W #$0003                              ; $8DB186 |
  STA.B $1C,X                               ; $8DB189 |

CODE_8DB18B:
  RTL                                       ; $8DB18B |

CODE_8DB18C:
  JSL.L CODE_FL_85F885                      ; $8DB18C |
  LDA.B $20,X                               ; $8DB190 |
  STA.W $1C3C                               ; $8DB192 |
  JSL.L CODE_FL_86C3F8                      ; $8DB195 |
  PHX                                       ; $8DB199 |
  ASL A                                     ; $8DB19A |
  TAX                                       ; $8DB19B |
  LDA.L PTR16_8DB1A6,X                      ; $8DB19C |
  PLX                                       ; $8DB1A0 |
  STA.B $00                                 ; $8DB1A1 |
  JMP.W ($0000)                             ; $8DB1A3 |

PTR16_8DB1A6:
  dw CODE_8DB1B8                            ; $8DB1A6 |
  dw CODE_8DB1E2                            ; $8DB1A8 |
  dw CODE_8DB1E6                            ; $8DB1AA |
  dw CODE_8DB20D                            ; $8DB1AC |
  dw CODE_8DA9FA                            ; $8DB1AE |
  dw CODE_8DAA01                            ; $8DB1B0 |
  dw CODE_8DAA05                            ; $8DB1B2 |
  dw CODE_8DB234                            ; $8DB1B4 |
  dw CODE_8DB23B                            ; $8DB1B6 |

CODE_8DB1B8:
  JSL.L CODE_FL_86C7AD                      ; $8DB1B8 |
  JSL.L CODE_FL_86C444                      ; $8DB1BC |
  LDA.W #$002E                              ; $8DB1C0 |
  JSL.L CODE_FL_86CAEE                      ; $8DB1C3 |
  JSL.L CODE_FL_86C486                      ; $8DB1C7 |
  LDA.W #$FF80                              ; $8DB1CB |
  JSL.L CODE_FL_86C71F                      ; $8DB1CE |
  LDA.B $34,X                               ; $8DB1D2 |
  ORA.W #$C102                              ; $8DB1D4 |
  STA.B $34,X                               ; $8DB1D7 |
  LDA.W #$0080                              ; $8DB1D9 |
  STA.B $2C,X                               ; $8DB1DC |
  JML.L CODE_FL_86C63F                      ; $8DB1DE |

CODE_8DB1E2:
  JML.L CODE_FL_85A646                      ; $8DB1E2 |

CODE_8DB1E6:
  JSL.L CODE_FL_86C55C                      ; $8DB1E6 |
  BPL CODE_8DB1F0                           ; $8DB1EA |
  EOR.W #$FFFF                              ; $8DB1EC |
  INC A                                     ; $8DB1EF |

CODE_8DB1F0:
  CMP.W #$0040                              ; $8DB1F0 |
  BCS CODE_8DB208                           ; $8DB1F3 |
  JSL.L CODE_FL_86C486                      ; $8DB1F5 |
  LDA.W #$002F                              ; $8DB1F9 |
  JSL.L CODE_FL_86CAEE                      ; $8DB1FC |
  STZ.B $26,X                               ; $8DB200 |
  LDA.W #$0003                              ; $8DB202 |
  STA.B $1A,X                               ; $8DB205 |
  RTL                                       ; $8DB207 |

CODE_8DB208:
  JSL.L CODE_FL_85A695                      ; $8DB208 |
  RTL                                       ; $8DB20C |

CODE_8DB20D:
  JSL.L CODE_FL_8DB150                      ; $8DB20D |
  JSL.L CODE_FL_86C55C                      ; $8DB211 |
  BPL CODE_8DB21B                           ; $8DB215 |
  EOR.W #$FFFF                              ; $8DB217 |
  INC A                                     ; $8DB21A |

CODE_8DB21B:
  CMP.W #$0048                              ; $8DB21B |
  BCC CODE_8DB233                           ; $8DB21E |
  LDA.W #$002E                              ; $8DB220 |
  JSL.L CODE_FL_86CAEE                      ; $8DB223 |
  LDA.W #$0002                              ; $8DB227 |
  STA.B $1A,X                               ; $8DB22A |
  LDA.W #$FF80                              ; $8DB22C |
  JSL.L CODE_FL_86C71F                      ; $8DB22F |

CODE_8DB233:
  RTL                                       ; $8DB233 |

CODE_8DB234:
  JSL.L CODE_FL_85A927                      ; $8DB234 |
  STZ.B $1A,X                               ; $8DB238 |
  RTL                                       ; $8DB23A |

CODE_8DB23B:
  LDA.W #$35F8                              ; $8DB23B |
  LDY.W #$3602                              ; $8DB23E |
  JML.L CODE_JL_85AE70                      ; $8DB241 |

CODE_8DB245:
  JSL.L CODE_FL_85F885                      ; $8DB245 |
  JSL.L CODE_FL_86C3F8                      ; $8DB249 |
  PHX                                       ; $8DB24D |
  ASL A                                     ; $8DB24E |
  TAX                                       ; $8DB24F |
  LDA.L PTR16_8DB25A,X                      ; $8DB250 |
  PLX                                       ; $8DB254 |
  STA.B $00                                 ; $8DB255 |
  JMP.W ($0000)                             ; $8DB257 |

PTR16_8DB25A:
  dw CODE_8DB266                            ; $8DB25A |
  dw CODE_8DB2A2                            ; $8DB25C |
  dw CODE_8DB2A6                            ; $8DB25E |
  dw CODE_8DB2F7                            ; $8DB260 |
  dw CODE_8DB31D                            ; $8DB262 |
  dw CODE_8DB324                            ; $8DB264 |

CODE_8DB266:
  JSL.L CODE_FL_86C7A5                      ; $8DB266 |
  JSL.L CODE_FL_86C444                      ; $8DB26A |
  LDA.W #$003D                              ; $8DB26E |
  JSL.L CODE_FL_86C9A4                      ; $8DB271 |
  BCS CODE_8DB29E                           ; $8DB275 |
  LDA.W #$0010                              ; $8DB277 |
  STA.W $003A,Y                             ; $8DB27A |
  JSL.L CODE_FL_85AAB6                      ; $8DB27D |
  LDA.W #$004F                              ; $8DB281 |
  JSL.L CODE_FL_86CAEE                      ; $8DB284 |
  JSL.L CODE_FL_86C486                      ; $8DB288 |
  LDA.W #$FF00                              ; $8DB28C |
  JSL.L CODE_FL_86C71F                      ; $8DB28F |
  LDA.B $34,X                               ; $8DB293 |
  ORA.W #$C102                              ; $8DB295 |
  STA.B $34,X                               ; $8DB298 |
  JML.L CODE_FL_86C63F                      ; $8DB29A |

CODE_8DB29E:
  JML.L CODE_FL_86CA36                      ; $8DB29E |

CODE_8DB2A2:
  JML.L CODE_FL_85A646                      ; $8DB2A2 |

CODE_8DB2A6:
  LDA.B $2C,X                               ; $8DB2A6 |
  BNE CODE_8DB2D2                           ; $8DB2A8 |
  JSL.L CODE_FL_86C526                      ; $8DB2AA |
  CMP.W #$0040                              ; $8DB2AE |
  BCS CODE_8DB2D2                           ; $8DB2B1 |
  CMP.W #$0030                              ; $8DB2B3 |
  BCS CODE_8DB2BD                           ; $8DB2B6 |
  LDA.W #$FE00                              ; $8DB2B8 |
  BRA CODE_8DB2C0                           ; $8DB2BB |

CODE_8DB2BD:
  LDA.W #$FC00                              ; $8DB2BD |

CODE_8DB2C0:
  STA.B $28,X                               ; $8DB2C0 |
  LDA.W #$FF00                              ; $8DB2C2 |
  JSL.L CODE_FL_86C887                      ; $8DB2C5 |
  JSR.W CODE_FN_8DB2D7                      ; $8DB2C9 |
  LDA.W #$0003                              ; $8DB2CC |
  STA.B $1A,X                               ; $8DB2CF |
  RTL                                       ; $8DB2D1 |

CODE_8DB2D2:
  JSL.L CODE_FL_85A695                      ; $8DB2D2 |
  RTL                                       ; $8DB2D6 |

CODE_FN_8DB2D7:
  LDY.B $44,X                               ; $8DB2D7 |
  LDA.B $28,X                               ; $8DB2D9 |
  BPL CODE_8DB2E9                           ; $8DB2DB |
  TDC                                       ; $8DB2DD |
  STA.W $003C,Y                             ; $8DB2DE |
  LDA.W #$3540                              ; $8DB2E1 |
  STA.B $00,X                               ; $8DB2E4 |
  STZ.B $1E,X                               ; $8DB2E6 |
  RTS                                       ; $8DB2E8 |

CODE_8DB2E9:
  LDA.W #$0001                              ; $8DB2E9 |
  STA.W $003C,Y                             ; $8DB2EC |
  LDA.W #$355A                              ; $8DB2EF |
  STA.B $00,X                               ; $8DB2F2 |
  STZ.B $1E,X                               ; $8DB2F4 |
  RTS                                       ; $8DB2F6 |

CODE_8DB2F7:
  JSR.W CODE_FN_8DB2D7                      ; $8DB2F7 |
  JSL.L CODE_FL_85A5F2                      ; $8DB2FA |
  BEQ CODE_8DB31C                           ; $8DB2FE |
  LDA.W #$004F                              ; $8DB300 |
  JSL.L CODE_FL_86CAEE                      ; $8DB303 |
  JSL.L CODE_FL_86C486                      ; $8DB307 |
  LDA.W #$FF00                              ; $8DB30B |
  JSL.L CODE_FL_86C71F                      ; $8DB30E |
  LDA.W #$0020                              ; $8DB312 |
  STA.B $2C,X                               ; $8DB315 |
  LDA.W #$0002                              ; $8DB317 |
  STA.B $1A,X                               ; $8DB31A |

CODE_8DB31C:
  RTL                                       ; $8DB31C |

CODE_8DB31D:
  LDA.W #$A000                              ; $8DB31D |
  JML.L CODE_JL_85AAAA                      ; $8DB320 |

CODE_8DB324:
  LDA.W #$3576                              ; $8DB324 |
  LDY.W #$3582                              ; $8DB327 |
  JML.L CODE_JL_85AE70                      ; $8DB32A |

CODE_8DB32E:
  STZ.B $26,X                               ; $8DB32E |
  JSL.L CODE_FL_85F885                      ; $8DB330 |
  JSL.L CODE_FL_86C3F8                      ; $8DB334 |
  PHX                                       ; $8DB338 |
  ASL A                                     ; $8DB339 |
  TAX                                       ; $8DB33A |
  LDA.L PTR16_8DB345,X                      ; $8DB33B |
  PLX                                       ; $8DB33F |
  STA.B $00                                 ; $8DB340 |
  JMP.W ($0000)                             ; $8DB342 |

PTR16_8DB345:
  dw CODE_8DB351                            ; $8DB345 |
  dw CODE_8DB364                            ; $8DB347 |
  dw CODE_8DB37C                            ; $8DB349 |
  dw CODE_8DB38F                            ; $8DB34B |
  dw CODE_8DB3C9                            ; $8DB34D |
  dw CODE_8DB3DB                            ; $8DB34F |

CODE_8DB351:
  JSL.L CODE_FL_86C7A5                      ; $8DB351 |
  LDA.W #$34BC                              ; $8DB355 |
  STA.B $00,X                               ; $8DB358 |
  STZ.B $4C,X                               ; $8DB35A |
  JSL.L CODE_FL_85A9EF                      ; $8DB35C |
  JML.L CODE_FL_86C63F                      ; $8DB360 |

CODE_8DB364:
  JSL.L CODE_FL_86C53B                      ; $8DB364 |
  CMP.W #$0030                              ; $8DB368 |
  BCS CODE_8DB37B                           ; $8DB36B |
  LDA.W #$0050                              ; $8DB36D |
  JSL.L CODE_FL_86CAEE                      ; $8DB370 |
  INC.B $1A,X                               ; $8DB374 |
  LDA.W #$0080                              ; $8DB376 |
  STA.B $4C,X                               ; $8DB379 |

CODE_8DB37B:
  RTL                                       ; $8DB37B |

CODE_8DB37C:
  LDA.B $00,X                               ; $8DB37C |
  CMP.W #$34D8                              ; $8DB37E |
  BNE CODE_8DB387                           ; $8DB381 |
  JSL.L CODE_FL_86C393                      ; $8DB383 |

CODE_8DB387:
  CMP.W #$34EE                              ; $8DB387 |
  BNE CODE_8DB38E                           ; $8DB38A |
  INC.B $1A,X                               ; $8DB38C |

CODE_8DB38E:
  RTL                                       ; $8DB38E |

CODE_8DB38F:
  JSL.L CODE_FL_85A646                      ; $8DB38F |
  BEQ CODE_8DB3C8                           ; $8DB393 |
  LDA.W #$0024                              ; $8DB395 |
  JSL.L push_sound_queue                    ; $8DB398 |
  LDA.W #$34BC                              ; $8DB39C |
  STA.B $00,X                               ; $8DB39F |
  LDA.W #$0010                              ; $8DB3A1 |
  STA.B $2C,X                               ; $8DB3A4 |
  LDA.W #$003E                              ; $8DB3A6 |
  JSL.L CODE_FL_86C9A7                      ; $8DB3A9 |
  BCS CODE_8DB3C8                           ; $8DB3AD |
  JSL.L CODE_FL_86C7C4                      ; $8DB3AF |
  LDA.W #$003E                              ; $8DB3B3 |
  JSL.L CODE_FL_86C9A7                      ; $8DB3B6 |
  BCS CODE_8DB3C8                           ; $8DB3BA |
  JSL.L CODE_FL_86C7C4                      ; $8DB3BC |
  LDA.B $04,X                               ; $8DB3C0 |
  EOR.W #$2000                              ; $8DB3C2 |
  STA.W $0004,Y                             ; $8DB3C5 |

CODE_8DB3C8:
  RTL                                       ; $8DB3C8 |

CODE_8DB3C9:
  JSL.L CODE_FL_86C393                      ; $8DB3C9 |
  JSL.L CODE_FL_86C70D                      ; $8DB3CD |
  STZ.B $4C,X                               ; $8DB3D1 |
  LDA.W #$FF80                              ; $8DB3D3 |
  STA.B $28,X                               ; $8DB3D6 |
  INC.B $1A,X                               ; $8DB3D8 |
  RTL                                       ; $8DB3DA |

CODE_8DB3DB:
  JSL.L CODE_FL_85A61D                      ; $8DB3DB |
  BEQ CODE_8DB3EB                           ; $8DB3DF |
  LDA.W #$34BC                              ; $8DB3E1 |
  STA.B $00,X                               ; $8DB3E4 |
  LDA.W #$0001                              ; $8DB3E6 |
  STA.B $1A,X                               ; $8DB3E9 |

CODE_8DB3EB:
  RTL                                       ; $8DB3EB |

CODE_8DB3EC:
  JSL.L CODE_FL_85F885                      ; $8DB3EC |
  JSL.L CODE_FL_86C407                      ; $8DB3F0 |
  PHX                                       ; $8DB3F4 |
  ASL A                                     ; $8DB3F5 |
  TAX                                       ; $8DB3F6 |
  LDA.L PTR16_8DB401,X                      ; $8DB3F7 |
  PLX                                       ; $8DB3FB |
  STA.B $00                                 ; $8DB3FC |
  JMP.W ($0000)                             ; $8DB3FE |

PTR16_8DB401:
  dw CODE_8DB405                            ; $8DB401 |
  dw CODE_8DB426                            ; $8DB403 |

CODE_8DB405:
  LDA.W #$0051                              ; $8DB405 |
  JSL.L CODE_FL_86CAEE                      ; $8DB408 |
  LDY.W #$0010                              ; $8DB40C |
  JSL.L CODE_FL_85AB99                      ; $8DB40F |
  LDA.W #$FE40                              ; $8DB413 |
  JSL.L CODE_FL_86C887                      ; $8DB416 |
  JSL.L CODE_FL_85A8CE                      ; $8DB41A |
  JSL.L CODE_FL_85A9EF                      ; $8DB41E |
  JML.L CODE_FL_86C63F                      ; $8DB422 |

CODE_8DB426:
  LDA.B $0D,X                               ; $8DB426 |
  PHA                                       ; $8DB428 |
  LDA.B $26,X                               ; $8DB429 |
  PHA                                       ; $8DB42B |
  CLC                                       ; $8DB42C |
  LDA.B $0D,X                               ; $8DB42D |
  ADC.W #$0008                              ; $8DB42F |
  STA.B $0D,X                               ; $8DB432 |
  JSL.L CODE_FL_858AF1                      ; $8DB434 |
  BEQ CODE_8DB44F                           ; $8DB438 |
  CLC                                       ; $8DB43A |
  LDA.B $0D,X                               ; $8DB43B |
  ADC.W #$FFE8                              ; $8DB43D |
  STA.B $0D,X                               ; $8DB440 |
  JSL.L CODE_FL_858AF1                      ; $8DB442 |
  BNE CODE_8DB44F                           ; $8DB446 |
  PLA                                       ; $8DB448 |
  STA.B $26,X                               ; $8DB449 |
  PLA                                       ; $8DB44B |
  STA.B $0D,X                               ; $8DB44C |
  RTL                                       ; $8DB44E |

CODE_8DB44F:
  PLA                                       ; $8DB44F |
  PLA                                       ; $8DB450 |
  JML.L CODE_FL_86CA36                      ; $8DB451 |

CODE_8DB455:
  LDA.B $4E,X                               ; $8DB455 |
  BIT.W #$0002                              ; $8DB457 |
  BEQ CODE_8DB469                           ; $8DB45A |
  LDA.B $0D,X                               ; $8DB45C |
  BMI CODE_8DB465                           ; $8DB45E |
  CMP.W #$0020                              ; $8DB460 |
  BCS CODE_8DB469                           ; $8DB463 |

CODE_8DB465:
  JML.L CODE_FL_86CA2D                      ; $8DB465 |

CODE_8DB469:
  JSL.L CODE_FL_85F885                      ; $8DB469 |
  LDA.B $0D,X                               ; $8DB46D |
  CMP.W #$00E0                              ; $8DB46F |
  BCC CODE_8DB475                           ; $8DB472 |
  RTL                                       ; $8DB474 |

CODE_8DB475:
  JSL.L CODE_FL_86C3F8                      ; $8DB475 |
  PHX                                       ; $8DB479 |
  ASL A                                     ; $8DB47A |
  TAX                                       ; $8DB47B |
  LDA.L PTR16_8DB486,X                      ; $8DB47C |
  PLX                                       ; $8DB480 |
  STA.B $00                                 ; $8DB481 |
  JMP.W ($0000)                             ; $8DB483 |

PTR16_8DB486:
  dw CODE_8DB490                            ; $8DB486 |
  dw CODE_8DB4AF                            ; $8DB488 |
  dw CODE_8DB4FF                            ; $8DB48A |
  dw CODE_8DB52D                            ; $8DB48C |
  dw CODE_8DB53C                            ; $8DB48E |

CODE_8DB490:
  JSL.L CODE_FL_86C7A5                      ; $8DB490 |
  JSL.L CODE_FL_86C444                      ; $8DB494 |
  LDA.W #$3A4E                              ; $8DB498 |
  STA.B $00,X                               ; $8DB49B |
  LDA.W #$FF00                              ; $8DB49D |
  JSL.L CODE_FL_86C71F                      ; $8DB4A0 |
  LDA.B $34,X                               ; $8DB4A4 |
  ORA.W #$C102                              ; $8DB4A6 |
  STA.B $34,X                               ; $8DB4A9 |
  JML.L CODE_FL_86C63F                      ; $8DB4AB |

CODE_8DB4AF:
  LDA.B $4E,X                               ; $8DB4AF |
  AND.W #$0001                              ; $8DB4B1 |
  BEQ CODE_8DB4D7                           ; $8DB4B4 |
  STZ.B $46,X                               ; $8DB4B6 |
  JSL.L CODE_FL_A8FC80                      ; $8DB4B8 |
  LDA.B $46,X                               ; $8DB4BC |
  BIT.W #$0100                              ; $8DB4BE |
  BEQ CODE_8DB4C6                           ; $8DB4C1 |
  INC.B $1A,X                               ; $8DB4C3 |
  RTL                                       ; $8DB4C5 |

CODE_8DB4C6:
  LDA.B $46,X                               ; $8DB4C6 |
  AND.W #$0008                              ; $8DB4C8 |
  BEQ CODE_8DB4D7                           ; $8DB4CB |
  JSL.L CODE_FL_86CB6A                      ; $8DB4CD |
  LDA.B $3A,X                               ; $8DB4D1 |
  JSL.L CODE_FL_86C887                      ; $8DB4D3 |

CODE_8DB4D7:
  LDA.B $26,X                               ; $8DB4D7 |
  PHA                                       ; $8DB4D9 |
  JSL.L CODE_FL_85A60F                      ; $8DB4DA |
  PLY                                       ; $8DB4DE |
  LDA.B $26,X                               ; $8DB4DF |
  BNE CODE_8DB4E9                           ; $8DB4E1 |
  STY.B $26,X                               ; $8DB4E3 |
  JSL.L CODE_FL_86CB6A                      ; $8DB4E5 |

CODE_8DB4E9:
  RTL                                       ; $8DB4E9 |

  LDA.B $3A,X                               ; $8DB4EA |
  EOR.W #$FFFF                              ; $8DB4EC |
  INC A                                     ; $8DB4EF |
  JSL.L CODE_FL_86C85B                      ; $8DB4F0 |
  LDA.B $28,X                               ; $8DB4F4 |
  EOR.W #$FFFF                              ; $8DB4F6 |
  INC A                                     ; $8DB4F9 |
  JSL.L CODE_FL_86C872                      ; $8DB4FA |
  RTS                                       ; $8DB4FE |

CODE_8DB4FF:
  LDA.B $2C,X                               ; $8DB4FF |
  BNE CODE_8DB513                           ; $8DB501 |
  LDA.W #$FF00                              ; $8DB503 |
  JSL.L CODE_FL_86C71F                      ; $8DB506 |
  LDA.B $26,X                               ; $8DB50A |
  STA.B $3A,X                               ; $8DB50C |
  LDA.W #$0080                              ; $8DB50E |
  STA.B $2C,X                               ; $8DB511 |

CODE_8DB513:
  LDA.W #$0052                              ; $8DB513 |
  JSL.L CODE_FL_86CAEE                      ; $8DB516 |
  JSL.L CODE_FL_86C432                      ; $8DB51A |
  AND.W #$00FF                              ; $8DB51E |
  ADC.W #$0200                              ; $8DB521 |
  EOR.W #$FFFF                              ; $8DB524 |
  INC A                                     ; $8DB527 |
  STA.B $28,X                               ; $8DB528 |
  DEC.B $1A,X                               ; $8DB52A |
  RTL                                       ; $8DB52C |

CODE_8DB52D:
  LDA.W #$0008                              ; $8DB52D |
  JSL.L CODE_FL_86C9A7                      ; $8DB530 |
  JSL.L CODE_FL_85A71F                      ; $8DB534 |
  JML.L CODE_FL_86CA2D                      ; $8DB538 |

CODE_8DB53C:
  LDA.W #$3A84                              ; $8DB53C |
  LDY.W #$3A90                              ; $8DB53F |
  JML.L CODE_JL_85AE70                      ; $8DB542 |

CODE_8DB546:
  JSL.L CODE_FL_86C424                      ; $8DB546 |
  PHX                                       ; $8DB54A |
  ASL A                                     ; $8DB54B |
  TAX                                       ; $8DB54C |
  LDA.L PTR16_8DB557,X                      ; $8DB54D |
  PLX                                       ; $8DB551 |
  STA.B $00                                 ; $8DB552 |
  JMP.W ($0000)                             ; $8DB554 |

PTR16_8DB557:
  dw CODE_8DB55B                            ; $8DB557 |
  dw CODE_8DB568                            ; $8DB559 |

CODE_8DB55B:
  LDA.W #$0010                              ; $8DB55B |
  STA.B $3A,X                               ; $8DB55E |
  LDA.W #$0020                              ; $8DB560 |
  STA.B $2C,X                               ; $8DB563 |
  INC.B $1A,X                               ; $8DB565 |
  RTL                                       ; $8DB567 |

CODE_8DB568:
  LDA.B $3C,X                               ; $8DB568 |
  BEQ CODE_8DB57A                           ; $8DB56A |
  LDY.B $44,X                               ; $8DB56C |
  LDA.W $0018,Y                             ; $8DB56E |
  BNE CODE_8DB599                           ; $8DB571 |
  STA.B $3C,X                               ; $8DB573 |
  LDA.W #$0040                              ; $8DB575 |
  STA.B $2C,X                               ; $8DB578 |

CODE_8DB57A:
  JSL.L CODE_FL_86C70D                      ; $8DB57A |
  LDA.W #$0166                              ; $8DB57E |
  JSL.L CODE_FL_86C9A4                      ; $8DB581 |
  BCS CODE_8DB599                           ; $8DB585 |
  STY.B $44,X                               ; $8DB587 |
  LDA.W #$6A02                              ; $8DB589 |
  STA.W $004E,Y                             ; $8DB58C |
  INC.B $3C,X                               ; $8DB58F |
  DEC.B $3A,X                               ; $8DB591 |
  BNE CODE_8DB599                           ; $8DB593 |
  JML.L CODE_FL_86CA36                      ; $8DB595 |

CODE_8DB599:
  RTL                                       ; $8DB599 |

CODE_8DB59A:
  JSL.L CODE_FL_85F885                      ; $8DB59A |
  LDA.B $20,X                               ; $8DB59E |
  STA.W $1C3C                               ; $8DB5A0 |
  JSL.L CODE_FL_86C3F8                      ; $8DB5A3 |
  PHX                                       ; $8DB5A7 |
  ASL A                                     ; $8DB5A8 |
  TAX                                       ; $8DB5A9 |
  LDA.L PTR16_8DB5B4,X                      ; $8DB5AA |
  PLX                                       ; $8DB5AE |
  STA.B $00                                 ; $8DB5AF |
  JMP.W ($0000)                             ; $8DB5B1 |

PTR16_8DB5B4:
  dw CODE_8DB5BE                            ; $8DB5B4 |
  dw CODE_8DAEA2                            ; $8DB5B6 |
  dw CODE_8DAED5                            ; $8DB5B8 |
  dw CODE_8DAF0E                            ; $8DB5BA |
  dw CODE_8DAF2C                            ; $8DB5BC |

CODE_8DB5BE:
  JSL.L CODE_FL_86C7A5                      ; $8DB5BE |
  LDA.B $34,X                               ; $8DB5C2 |
  ORA.W #$C100                              ; $8DB5C4 |
  STA.B $34,X                               ; $8DB5C7 |
  JSL.L CODE_FL_86C444                      ; $8DB5C9 |
  JML.L CODE_FL_86C63F                      ; $8DB5CD |

CODE_8DB5D1:
  JSL.L CODE_FL_86C3A3                      ; $8DB5D1 |
  LDA.B $0D,X                               ; $8DB5D5 |
  BMI CODE_8DB613                           ; $8DB5D7 |
  CMP.W #$0090                              ; $8DB5D9 |
  BCS CODE_8DB614                           ; $8DB5DC |
  LDA.B $3C,X                               ; $8DB5DE |
  BEQ CODE_8DB5F0                           ; $8DB5E0 |
  LDY.B $44,X                               ; $8DB5E2 |
  LDA.W $0018,Y                             ; $8DB5E4 |
  BNE CODE_8DB613                           ; $8DB5E7 |
  STA.B $3C,X                               ; $8DB5E9 |
  LDA.W #$0080                              ; $8DB5EB |
  STA.B $2C,X                               ; $8DB5EE |

CODE_8DB5F0:
  JSL.L CODE_FL_86C70D                      ; $8DB5F0 |
  LDA.W #$00B9                              ; $8DB5F4 |
  JSL.L CODE_FL_86C97C                      ; $8DB5F7 |
  BCS CODE_8DB613                           ; $8DB5FB |
  STY.B $44,X                               ; $8DB5FD |
  LDA.B $4E,X                               ; $8DB5FF |
  AND.W #$0001                              ; $8DB601 |
  BNE CODE_8DB60B                           ; $8DB604 |
  LDA.W #$0800                              ; $8DB606 |
  BRA CODE_8DB60E                           ; $8DB609 |

CODE_8DB60B:
  LDA.W #$0C01                              ; $8DB60B |

CODE_8DB60E:
  STA.W $004E,Y                             ; $8DB60E |
  INC.B $3C,X                               ; $8DB611 |

CODE_8DB613:
  RTL                                       ; $8DB613 |

CODE_8DB614:
  JML.L CODE_FL_86CA36                      ; $8DB614 |

CODE_8DB618:
  JSL.L CODE_FL_86C424                      ; $8DB618 |
  PHX                                       ; $8DB61C |
  ASL A                                     ; $8DB61D |
  TAX                                       ; $8DB61E |
  LDA.L PTR16_8DB629,X                      ; $8DB61F |
  PLX                                       ; $8DB623 |
  STA.B $00                                 ; $8DB624 |
  JMP.W ($0000)                             ; $8DB626 |

PTR16_8DB629:
  dw CODE_8DB62D                            ; $8DB629 |
  dw CODE_8DB645                            ; $8DB62B |

CODE_8DB62D:
  JSL.L CODE_FL_85AA07                      ; $8DB62D |
  LDA.W #$0133                              ; $8DB631 |
  STA.B $3A,X                               ; $8DB634 |
  LDA.B $4E,X                               ; $8DB636 |
  AND.W #$0001                              ; $8DB638 |
  BEQ CODE_8DB642                           ; $8DB63B |
  LDA.W #$0136                              ; $8DB63D |
  STA.B $3A,X                               ; $8DB640 |

CODE_8DB642:
  INC.B $1A,X                               ; $8DB642 |
  RTL                                       ; $8DB644 |

CODE_8DB645:
  JSL.L CODE_FL_86C70D                      ; $8DB645 |
  LDA.B $3A,X                               ; $8DB649 |
  JSL.L CODE_FL_86C9A4                      ; $8DB64B |
  BCS CODE_8DB662                           ; $8DB64F |
  LDA.W #$0800                              ; $8DB651 |
  STA.W $004E,Y                             ; $8DB654 |
  LDA.W #$8000                              ; $8DB657 |
  STA.W $0022,Y                             ; $8DB65A |
  LDA.W #$0080                              ; $8DB65D |
  STA.B $2C,X                               ; $8DB660 |

CODE_8DB662:
  RTL                                       ; $8DB662 |

CODE_8DB663:
  JSL.L CODE_FL_85F885                      ; $8DB663 |
  LDA.B $20,X                               ; $8DB667 |
  STA.W $1C3C                               ; $8DB669 |
  JSL.L CODE_FL_86C3F8                      ; $8DB66C |
  PHX                                       ; $8DB670 |
  ASL A                                     ; $8DB671 |
  TAX                                       ; $8DB672 |
  LDA.L PTR16_8DB67D,X                      ; $8DB673 |
  PLX                                       ; $8DB677 |
  STA.B $00                                 ; $8DB678 |
  JMP.W ($0000)                             ; $8DB67A |

PTR16_8DB67D:
  dw CODE_8DB687                            ; $8DB67D |
  dw CODE_8DAEA2                            ; $8DB67F |
  dw CODE_8DAED5                            ; $8DB681 |
  dw CODE_8DAF0E                            ; $8DB683 |
  dw CODE_8DB693                            ; $8DB685 |

CODE_8DB687:
  JSL.L CODE_FL_86C7A5                      ; $8DB687 |
  STZ.B $02,X                               ; $8DB68B |
  LDA.W #$00B5                              ; $8DB68D |
  JMP.W CODE_JP_8DAE77                      ; $8DB690 |

CODE_8DB693:
  JSL.L CODE_FL_85A646                      ; $8DB693 |
  BEQ CODE_8DB6A0                           ; $8DB697 |
  LDA.W #$0000                              ; $8DB699 |
  JML.L CODE_JL_85AAAA                      ; $8DB69C |

CODE_8DB6A0:
  RTL                                       ; $8DB6A0 |

CODE_8DB6A1:
  JSL.L CODE_FL_86C3F8                      ; $8DB6A1 |
  PHX                                       ; $8DB6A5 |
  ASL A                                     ; $8DB6A6 |
  TAX                                       ; $8DB6A7 |
  LDA.L PTR16_8DB6B2,X                      ; $8DB6A8 |
  PLX                                       ; $8DB6AC |
  STA.B $00                                 ; $8DB6AD |
  JMP.W ($0000)                             ; $8DB6AF |

PTR16_8DB6B2:
  dw CODE_8DAF53                            ; $8DB6B2 |
  dw CODE_8DB6BA                            ; $8DB6B4 |
  dw CODE_8DB6DB                            ; $8DB6B6 |
  dw CODE_8DAFD1                            ; $8DB6B8 |

CODE_8DB6BA:
  LDA.W $1672                               ; $8DB6BA |
  CMP.W #$0180                              ; $8DB6BD |
  BCC CODE_8DB6D3                           ; $8DB6C0 |
  LDA.B $0D,X                               ; $8DB6C2 |
  BMI CODE_8DB6D0                           ; $8DB6C4 |
  CMP.W #$0060                              ; $8DB6C6 |
  BCC CODE_8DB6D0                           ; $8DB6C9 |
  LDA.W #$0060                              ; $8DB6CB |
  STA.B $0D,X                               ; $8DB6CE |

CODE_8DB6D0:
  JMP.W CODE_JP_8DAF7C                      ; $8DB6D0 |

CODE_8DB6D3:
  LDA.W #$FE80                              ; $8DB6D3 |
  STA.B $28,X                               ; $8DB6D6 |
  JMP.W CODE_JP_8DAF7C                      ; $8DB6D8 |

CODE_8DB6DB:
  LDA.W #$FE80                              ; $8DB6DB |
  STA.B $28,X                               ; $8DB6DE |
  STZ.B $26,X                               ; $8DB6E0 |
  INC.B $1A,X                               ; $8DB6E2 |
  RTL                                       ; $8DB6E4 |

CODE_8DB6E5:
  LDA.B $0D,X                               ; $8DB6E5 |
  BMI CODE_8DB6F3                           ; $8DB6E7 |
  CMP.W #$0090                              ; $8DB6E9 |
  BCC CODE_8DB6F3                           ; $8DB6EC |
  LDA.W #$0090                              ; $8DB6EE |
  STA.B $0D,X                               ; $8DB6F1 |

CODE_8DB6F3:
  JSL.L CODE_FL_85F885                      ; $8DB6F3 |
  JSL.L CODE_FL_86C3F8                      ; $8DB6F7 |
  PHX                                       ; $8DB6FB |
  ASL A                                     ; $8DB6FC |
  TAX                                       ; $8DB6FD |
  LDA.L PTR16_8DB708,X                      ; $8DB6FE |
  PLX                                       ; $8DB702 |
  STA.B $00                                 ; $8DB703 |
  JMP.W ($0000)                             ; $8DB705 |

PTR16_8DB708:
  dw CODE_8DB718                            ; $8DB708 |
  dw CODE_8DAAE3                            ; $8DB70A |
  dw CODE_8DAB26                            ; $8DB70C |
  dw CODE_8DAB67                            ; $8DB70E |
  dw CODE_8DAB9E                            ; $8DB710 |
  dw CODE_8DABAC                            ; $8DB712 |
  dw CODE_8DB721                            ; $8DB714 |
  dw CODE_8DB728                            ; $8DB716 |

CODE_8DB718:
  LDA.W #$FF00                              ; $8DB718 |
  STA.B $28,X                               ; $8DB71B |
  JML.L CODE_JL_8DAAA2                      ; $8DB71D |

CODE_8DB721:
  LDA.W #$0000                              ; $8DB721 |
  JML.L CODE_JL_85AAAA                      ; $8DB724 |

CODE_8DB728:
  LDA.W #$3352                              ; $8DB728 |
  LDY.W #$334A                              ; $8DB72B |
  JML.L CODE_JL_85AE4F                      ; $8DB72E |

CODE_8DB732:
  LDA.B $1A,X                               ; $8DB732 |
  PHX                                       ; $8DB734 |
  ASL A                                     ; $8DB735 |
  TAX                                       ; $8DB736 |
  LDA.L PTR16_8DB741,X                      ; $8DB737 |
  PLX                                       ; $8DB73B |
  STA.B $00                                 ; $8DB73C |
  JMP.W ($0000)                             ; $8DB73E |

PTR16_8DB741:
  dw CODE_8DB74B                            ; $8DB741 |
  dw CODE_8DB76E                            ; $8DB743 |
  dw CODE_8DB7E2                            ; $8DB745 |
  dw CODE_8DB7F6                            ; $8DB747 |
  dw CODE_8DB7FD                            ; $8DB749 |

CODE_8DB74B:
  LDA.L $700738                             ; $8DB74B |
  AND.W #$00FF                              ; $8DB74F |
  TAY                                       ; $8DB752 |
  LDA.W LOOSE_OP_00D5FC,Y                   ; $8DB753 |
  AND.W #$00FF                              ; $8DB756 |
  CPY.W #$0003                              ; $8DB759 |
  BCC CODE_8DB762                           ; $8DB75C |
  TYA                                       ; $8DB75E |
  SBC.W #$FFF9                              ; $8DB75F |

CODE_8DB762:
  CMP.W #$0014                              ; $8DB762 |
  BCC CODE_8DB76A                           ; $8DB765 |
  LDA.W #$0014                              ; $8DB767 |

CODE_8DB76A:
  STA.B $4E,X                               ; $8DB76A |
  INC.B $1A,X                               ; $8DB76C |

CODE_8DB76E:
  STZ.B $3A,X                               ; $8DB76E |
  PHX                                       ; $8DB770 |
  LDA.B $4E,X                               ; $8DB771 |
  CMP.W #$0004                              ; $8DB773 |
  BCC CODE_8DB77A                           ; $8DB776 |
  INC A                                     ; $8DB778 |
  LSR A                                     ; $8DB779 |

CODE_8DB77A:
  TAY                                       ; $8DB77A |
  STY.B $08                                 ; $8DB77B |
  LDA.W #$0068                              ; $8DB77D |
  STA.B $12                                 ; $8DB780 |
  LDA.W #$0038                              ; $8DB782 |
  DEY                                       ; $8DB785 |
  JSL.L CODE_FL_808E65                      ; $8DB786 |
  STA.B $0A                                 ; $8DB78A |
  ASL A                                     ; $8DB78C |
  STA.B $3C,X                               ; $8DB78D |
  JSR.W CODE_FN_8DB86B                      ; $8DB78F |
  SEC                                       ; $8DB792 |
  LDA.W $0CAE                               ; $8DB793 |
  SBC.B $08                                 ; $8DB796 |
  BEQ CODE_8DB7A4                           ; $8DB798 |
  STA.B $08                                 ; $8DB79A |
  LDA.W #$0090                              ; $8DB79C |
  STA.B $12                                 ; $8DB79F |
  JSR.W CODE_FN_8DB86B                      ; $8DB7A1 |

CODE_8DB7A4:
  PLX                                       ; $8DB7A4 |
  STX.B $FC                                 ; $8DB7A5 |
  LDA.B $4E,X                               ; $8DB7A7 |
  STA.B $0E                                 ; $8DB7A9 |

CODE_8DB7AB:
  LDY.B $16,X                               ; $8DB7AB |
  TYX                                       ; $8DB7AD |
  DEC A                                     ; $8DB7AE |
  STA.B $3A,X                               ; $8DB7AF |
  BNE CODE_8DB7AB                           ; $8DB7B1 |
  LDX.B $FC                                 ; $8DB7B3 |

CODE_8DB7B5:
  LDY.B $16,X                               ; $8DB7B5 |
  TYX                                       ; $8DB7B7 |
  PHX                                       ; $8DB7B8 |
  LDA.W $0CAE                               ; $8DB7B9 |
  JSL.L CODE_FL_86957C                      ; $8DB7BC |
  LDY.W #$0050                              ; $8DB7C0 |
  JSL.L CODE_FL_808E18                      ; $8DB7C3 |
  CLC                                       ; $8DB7C7 |
  ADC.W #$0CB0                              ; $8DB7C8 |
  TAY                                       ; $8DB7CB |
  PLX                                       ; $8DB7CC |
  LDA.W $003A,Y                             ; $8DB7CD |
  PHA                                       ; $8DB7D0 |
  LDA.B $3A,X                               ; $8DB7D1 |
  STA.W $003A,Y                             ; $8DB7D3 |
  PLA                                       ; $8DB7D6 |
  STA.B $3A,X                               ; $8DB7D7 |
  DEC.B $0E                                 ; $8DB7D9 |
  BNE CODE_8DB7B5                           ; $8DB7DB |
  LDX.B $FC                                 ; $8DB7DD |
  INC.B $1A,X                               ; $8DB7DF |
  RTL                                       ; $8DB7E1 |

CODE_8DB7E2:
  LDA.L $7E7C02                             ; $8DB7E2 |
  BNE CODE_8DB7F5                           ; $8DB7E6 |
  LDA.B $3A,X                               ; $8DB7E8 |
  CMP.B $4E,X                               ; $8DB7EA |
  BNE CODE_8DB7F5                           ; $8DB7EC |
  LDA.W #$FFFF                              ; $8DB7EE |
  STA.B $3A,X                               ; $8DB7F1 |
  INC.B $1A,X                               ; $8DB7F3 |

CODE_8DB7F5:
  RTL                                       ; $8DB7F5 |

CODE_8DB7F6:
  LDA.W #$0004                              ; $8DB7F6 |
  STA.W $0C2A                               ; $8DB7F9 |
  RTL                                       ; $8DB7FC |

CODE_8DB7FD:
  LDA.B $4E,X                               ; $8DB7FD |
  PHA                                       ; $8DB7FF |
  PHX                                       ; $8DB800 |
  LDX.W #DATA_88CD40                        ; $8DB801 |
  JSL.L sound_transfer_blocks               ; $8DB804 |
  LDY.W #$B695                              ; $8DB808 |
  JSL.L CODE_FL_80C272                      ; $8DB80B |
  PHX                                       ; $8DB80F |
  PHB                                       ; $8DB810 |
  PEA.W $8A8A                               ; $8DB811 |
  PLB                                       ; $8DB814 |
  PLB                                       ; $8DB815 |
  LDY.W #$9FCD                              ; $8DB816 |
  JSL.L CODE_FL_8AAF61                      ; $8DB819 |
  PLB                                       ; $8DB81D |
  PLX                                       ; $8DB81E |
  LDY.W #$F498                              ; $8DB81F |
  LDA.W #$0004                              ; $8DB822 |
  JSL.L CODE_FL_80C2BA                      ; $8DB825 |
  LDA.W #$9898                              ; $8DB829 |
  STA.W $1C58                               ; $8DB82C |
  LDX.W #$0580                              ; $8DB82F |
  JSL.L CODE_FL_859073                      ; $8DB832 |
  LDA.W #$0011                              ; $8DB836 |
  STA.W $1FBE                               ; $8DB839 |
  STZ.W $1FC0                               ; $8DB83C |
  LDA.W #$8001                              ; $8DB83F |
  STA.B $E4                                 ; $8DB842 |
  STZ.W $0400                               ; $8DB844 |
  STZ.W $04C0                               ; $8DB847 |
  PLX                                       ; $8DB84A |
  LDA.W #$030B                              ; $8DB84B |
  LDY.W #$0C10                              ; $8DB84E |
  JSL.L CODE_FL_86C9E0                      ; $8DB851 |
  PLA                                       ; $8DB855 |
  STA.W $004E,Y                             ; $8DB856 |
  PHX                                       ; $8DB859 |
  LDX.W #$0580                              ; $8DB85A |

CODE_8DB85D:
  JSL.L CODE_FL_86CA57                      ; $8DB85D |
  LDA.B $16,X                               ; $8DB861 |
  TAX                                       ; $8DB863 |
  CMP.W #$0B70                              ; $8DB864 |
  BCC CODE_8DB85D                           ; $8DB867 |
  PLX                                       ; $8DB869 |
  RTL                                       ; $8DB86A |

CODE_FN_8DB86B:
  LDA.B $0A                                 ; $8DB86B |
  LDY.B $08                                 ; $8DB86D |
  STY.B $0E                                 ; $8DB86F |
  DEY                                       ; $8DB871 |
  JSL.L CODE_FL_808E18                      ; $8DB872 |
  EOR.W #$FFFF                              ; $8DB876 |
  SEC                                       ; $8DB879 |
  ADC.W #$0080                              ; $8DB87A |
  STA.B $10                                 ; $8DB87D |

CODE_8DB87F:
  LDA.W #$0308                              ; $8DB87F |
  LDY.B $16,X                               ; $8DB882 |
  STX.B $FC                                 ; $8DB884 |
  JSL.L CODE_FL_86C9E0                      ; $8DB886 |
  TYX                                       ; $8DB88A |
  LDA.B $10                                 ; $8DB88B |
  STA.B $09,X                               ; $8DB88D |
  CLC                                       ; $8DB88F |
  LDA.W $0C9C                               ; $8DB890 |
  ADC.B $09,X                               ; $8DB893 |
  STA.B $10                                 ; $8DB895 |
  LDA.B $12                                 ; $8DB897 |
  STA.B $0D,X                               ; $8DB899 |
  DEC.B $0E                                 ; $8DB89B |
  BNE CODE_8DB87F                           ; $8DB89D |
  RTS                                       ; $8DB89F |

CODE_8DB8A0:
  STZ.W $1C66                               ; $8DB8A0 |
  LDA.B $E4                                 ; $8DB8A3 |
  BEQ CODE_8DB8AA                           ; $8DB8A5 |
  INC.W $1C66                               ; $8DB8A7 |

CODE_8DB8AA:
  JSL.L CODE_FL_86C3F8                      ; $8DB8AA |
  PHX                                       ; $8DB8AE |
  ASL A                                     ; $8DB8AF |
  TAX                                       ; $8DB8B0 |
  LDA.L PTR16_8DB8BB,X                      ; $8DB8B1 |
  PLX                                       ; $8DB8B5 |
  STA.B $00                                 ; $8DB8B6 |
  JMP.W ($0000)                             ; $8DB8B8 |

PTR16_8DB8BB:
  dw CODE_8DB8CB                            ; $8DB8BB |
  dw CODE_8DB8F0                            ; $8DB8BD |
  dw CODE_8DB99A                            ; $8DB8BF |
  dw CODE_8DB9CE                            ; $8DB8C1 |
  dw CODE_8DB9EC                            ; $8DB8C3 |
  dw CODE_8DBA1A                            ; $8DB8C5 |
  dw CODE_8DBA23                            ; $8DB8C7 |
  dw CODE_8DBA34                            ; $8DB8C9 |

CODE_8DB8CB:
  LDA.W #$30D2                              ; $8DB8CB |
  STA.B $00,X                               ; $8DB8CE |
  JSR.W CODE_FN_8DB8E3                      ; $8DB8D0 |
  LDA.W #$3880                              ; $8DB8D3 |
  STA.B $34,X                               ; $8DB8D6 |
  LDA.W #$0100                              ; $8DB8D8 |
  ORA.B $22,X                               ; $8DB8DB |
  STA.B $22,X                               ; $8DB8DD |
  JML.L CODE_FL_86C63A                      ; $8DB8DF |

CODE_FN_8DB8E3:
  TDC                                       ; $8DB8E3 |
  LDY.W $0418                               ; $8DB8E4 |
  CMP.W #$0003                              ; $8DB8E7 |
  BNE CODE_8DB8ED                           ; $8DB8EA |
  INC A                                     ; $8DB8EC |

CODE_8DB8ED:
  STA.B $02,X                               ; $8DB8ED |
  RTS                                       ; $8DB8EF |

CODE_8DB8F0:
  LDA.W #$30D2                              ; $8DB8F0 |
  STA.B $00,X                               ; $8DB8F3 |
  STZ.B $20,X                               ; $8DB8F5 |
  LDY.W #$0400                              ; $8DB8F7 |
  JSR.W CODE_FN_8DB90A                      ; $8DB8FA |
  BCS CODE_8DB907                           ; $8DB8FD |
  LDY.W #$04C0                              ; $8DB8FF |
  JSR.W CODE_FN_8DB90A                      ; $8DB902 |
  BCC CODE_8DB909                           ; $8DB905 |

CODE_8DB907:
  INC.B $1A,X                               ; $8DB907 |

CODE_8DB909:
  RTL                                       ; $8DB909 |

CODE_FN_8DB90A:
  LDA.W #$0003                              ; $8DB90A |
  CMP.W $0018,Y                             ; $8DB90D |
  BNE CODE_8DB962                           ; $8DB910 |
  LDA.W $0022,Y                             ; $8DB912 |
  CMP.W #$0007                              ; $8DB915 |
  BEQ CODE_8DB91F                           ; $8DB918 |
  CMP.W #$0008                              ; $8DB91A |
  BNE CODE_8DB962                           ; $8DB91D |

CODE_8DB91F:
  LDA.W $0C9C                               ; $8DB91F |
  LSR A                                     ; $8DB922 |
  CMP.W #$000E                              ; $8DB923 |
  BCC CODE_8DB92B                           ; $8DB926 |
  LDA.W #$000E                              ; $8DB928 |

CODE_8DB92B:
  STA.B $00                                 ; $8DB92B |
  LDA.W $0094,Y                             ; $8DB92D |
  BEQ CODE_8DB964                           ; $8DB930 |
  LDA.W $0009,Y                             ; $8DB932 |
  SBC.B $09,X                               ; $8DB935 |
  BPL CODE_8DB93D                           ; $8DB937 |
  EOR.W #$FFFF                              ; $8DB939 |
  INC A                                     ; $8DB93C |

CODE_8DB93D:
  CMP.B $00                                 ; $8DB93D |
  BCS CODE_8DB962                           ; $8DB93F |
  SEC                                       ; $8DB941 |
  LDA.W $000D,Y                             ; $8DB942 |
  SBC.B $0D,X                               ; $8DB945 |
  STA.B $00                                 ; $8DB947 |
  BPL CODE_8DB94F                           ; $8DB949 |
  EOR.W #$FFFF                              ; $8DB94B |
  INC A                                     ; $8DB94E |

CODE_8DB94F:
  CMP.W #$001C                              ; $8DB94F |
  BCS CODE_8DB962                           ; $8DB952 |
  LDA.W $0094,Y                             ; $8DB954 |
  DEC A                                     ; $8DB957 |
  BEQ CODE_8DB95E                           ; $8DB958 |
  DEC A                                     ; $8DB95A |
  BNE CODE_8DB962                           ; $8DB95B |
  DEC A                                     ; $8DB95D |

CODE_8DB95E:
  EOR.B $00                                 ; $8DB95E |
  BPL CODE_8DB998                           ; $8DB960 |

CODE_8DB962:
  CLC                                       ; $8DB962 |
  RTS                                       ; $8DB963 |

CODE_8DB964:
  LDA.W $0003,Y                             ; $8DB964 |
  ASL A                                     ; $8DB967 |
  ASL A                                     ; $8DB968 |
  ASL A                                     ; $8DB969 |
  PHP                                       ; $8DB96A |
  SEC                                       ; $8DB96B |
  LDA.W $0009,Y                             ; $8DB96C |
  SBC.B $09,X                               ; $8DB96F |
  PLP                                       ; $8DB971 |
  BCS CODE_8DB978                           ; $8DB972 |
  EOR.W #$FFFF                              ; $8DB974 |
  INC A                                     ; $8DB977 |

CODE_8DB978:
  AND.W #$FFFF                              ; $8DB978 |
  BMI CODE_8DB962                           ; $8DB97B |
  SEC                                       ; $8DB97D |
  SBC.W #$0010                              ; $8DB97E |
  BMI CODE_8DB987                           ; $8DB981 |
  CMP.B $00                                 ; $8DB983 |
  BCS CODE_8DB962                           ; $8DB985 |

CODE_8DB987:
  SEC                                       ; $8DB987 |
  LDA.W $000D,Y                             ; $8DB988 |
  SBC.B $0D,X                               ; $8DB98B |
  BPL CODE_8DB993                           ; $8DB98D |
  EOR.W #$FFFF                              ; $8DB98F |
  INC A                                     ; $8DB992 |

CODE_8DB993:
  CMP.W #$0008                              ; $8DB993 |
  BCS CODE_8DB962                           ; $8DB996 |

CODE_8DB998:
  SEC                                       ; $8DB998 |
  RTS                                       ; $8DB999 |

CODE_8DB99A:
  LDA.W #$9005                              ; $8DB99A |
  JSL.L CODE_FL_86CAEE                      ; $8DB99D |
  LDA.B $E4                                 ; $8DB9A1 |
  BEQ CODE_8DB9AC                           ; $8DB9A3 |
  LDA.W #$0048                              ; $8DB9A5 |
  JSL.L push_sound_queue                    ; $8DB9A8 |

CODE_8DB9AC:
  LDA.W #$0094                              ; $8DB9AC |
  JSL.L CODE_FL_8089BD                      ; $8DB9AF |
  LDA.W $0C9A                               ; $8DB9B3 |
  ASL A                                     ; $8DB9B6 |
  TAY                                       ; $8DB9B7 |
  LSR A                                     ; $8DB9B8 |
  STA.B $40,X                               ; $8DB9B9 |
  INC.W $0C9A                               ; $8DB9BB |
  SEC                                       ; $8DB9BE |
  SBC.B $3A,X                               ; $8DB9BF |
  BEQ CODE_8DB9C6                           ; $8DB9C1 |
  LDA.W #$FFFF                              ; $8DB9C3 |

CODE_8DB9C6:
  STA.B $3E,X                               ; $8DB9C6 |
  STA.W $1CBE,Y                             ; $8DB9C8 |
  INC.B $1A,X                               ; $8DB9CB |
  RTL                                       ; $8DB9CD |

CODE_8DB9CE:
  LDA.W $0C7A                               ; $8DB9CE |
  CMP.W #$0003                              ; $8DB9D1 |
  BCS CODE_8DB9DE                           ; $8DB9D4 |
  LDA.W $0C9A                               ; $8DB9D6 |
  BNE CODE_8DB9DD                           ; $8DB9D9 |
  STZ.B $1A,X                               ; $8DB9DB |

CODE_8DB9DD:
  RTL                                       ; $8DB9DD |

CODE_8DB9DE:
  LDA.W #$0014                              ; $8DB9DE |
  LDY.B $40,X                               ; $8DB9E1 |
  JSL.L CODE_FL_808E18                      ; $8DB9E3 |
  STA.B $2C,X                               ; $8DB9E7 |
  INC.B $1A,X                               ; $8DB9E9 |
  RTL                                       ; $8DB9EB |

CODE_8DB9EC:
  JSL.L CODE_FL_86C70D                      ; $8DB9EC |
  LDA.W #$30D2                              ; $8DB9F0 |
  STA.B $00,X                               ; $8DB9F3 |
  STZ.B $20,X                               ; $8DB9F5 |
  JSL.L CODE_FL_8DBA35                      ; $8DB9F7 |
  BCS CODE_8DBA19                           ; $8DB9FB |
  LDA.W #$005A                              ; $8DB9FD |
  STA.B $2C,X                               ; $8DBA00 |
  INC.B $1A,X                               ; $8DBA02 |
  LDA.W #$001B                              ; $8DBA04 |
  JSL.L CODE_FL_85A989                      ; $8DBA07 |
  BCS CODE_8DBA19                           ; $8DBA0B |
  LDA.W #$0018                              ; $8DBA0D |
  STA.W $0011,Y                             ; $8DBA10 |
  LDA.W #$9898                              ; $8DBA13 |
  STA.W $0004,Y                             ; $8DBA16 |

CODE_8DBA19:
  RTL                                       ; $8DBA19 |

CODE_8DBA1A:
  INC.B $1A,X                               ; $8DBA1A |
  LDA.W #$002E                              ; $8DBA1C |
  JSL.L push_sound_queue                    ; $8DBA1F |

CODE_8DBA23:
  JSL.L CODE_FL_86C70D                      ; $8DBA23 |
  INC.B $1A,X                               ; $8DBA27 |
  LDA.B $40,X                               ; $8DBA29 |
  INC A                                     ; $8DBA2B |
  CMP.W $0CAE                               ; $8DBA2C |
  BNE CODE_8DBA34                           ; $8DBA2F |
  INC.W $0C7A                               ; $8DBA31 |

CODE_8DBA34:
  RTL                                       ; $8DBA34 |

CODE_FL_8DBA35:
  LDA.W #$0309                              ; $8DBA35 |
  JSL.L CODE_FL_86C9DA                      ; $8DBA38 |
  BCS CODE_8DBA66                           ; $8DBA3C |
  LDA.W #$0018                              ; $8DBA3E |
  STA.W $0011,Y                             ; $8DBA41 |
  TDC                                       ; $8DBA44 |
  STA.W $0014,Y                             ; $8DBA45 |
  LDA.W #$9898                              ; $8DBA48 |
  STA.W $0004,Y                             ; $8DBA4B |
  TDC                                       ; $8DBA4E |
  STA.W $0022,Y                             ; $8DBA4F |
  LDA.W #$0043                              ; $8DBA52 |
  STA.W $0002,Y                             ; $8DBA55 |
  LDA.W #$0640                              ; $8DBA58 |
  STA.W $002A,Y                             ; $8DBA5B |
  LDA.W #$004E                              ; $8DBA5E |
  JSL.L CODE_FL_86CAE6                      ; $8DBA61 |
  CLC                                       ; $8DBA65 |

CODE_8DBA66:
  RTL                                       ; $8DBA66 |

CODE_8DBA67:
  JSL.L CODE_FL_86C3F8                      ; $8DBA67 |
  SEC                                       ; $8DBA6B |
  LDA.B $0D,X                               ; $8DBA6C |
  SBC.B $11,X                               ; $8DBA6E |
  CMP.W #$FFF0                              ; $8DBA70 |
  BMI CODE_8DBA80                           ; $8DBA73 |
  LDA.B $2A,X                               ; $8DBA75 |
  ADC.W #$FFE0                              ; $8DBA77 |
  STA.B $2A,X                               ; $8DBA7A |
  JML.L CODE_FL_8CFD61                      ; $8DBA7C |

CODE_8DBA80:
  JML.L CODE_FL_86CA57                      ; $8DBA80 |

CODE_8DBA84:
  LDA.W #$0001                              ; $8DBA84 |
  STA.L $7E7D90                             ; $8DBA87 |
  JSL.L CODE_FL_8CFD8F                      ; $8DBA8B |
  PHX                                       ; $8DBA8F |
  ASL A                                     ; $8DBA90 |
  TAX                                       ; $8DBA91 |
  LDA.L PTR16_8DBA9C,X                      ; $8DBA92 |
  PLX                                       ; $8DBA96 |
  STA.B $00                                 ; $8DBA97 |
  JMP.W ($0000)                             ; $8DBA99 |

PTR16_8DBA9C:
  dw CODE_8DBABA                            ; $8DBA9C |
  dw CODE_8DBAF1                            ; $8DBA9E |
  dw CODE_8DBB1E                            ; $8DBAA0 |
  dw CODE_8DBB42                            ; $8DBAA2 |
  dw CODE_8DBB5A                            ; $8DBAA4 |
  dw CODE_8DBB69                            ; $8DBAA6 |
  dw CODE_8DBBA4                            ; $8DBAA8 |
  dw CODE_8DBBB7                            ; $8DBAAA |
  dw CODE_8DBBEE                            ; $8DBAAC |
  dw CODE_8DBC10                            ; $8DBAAE |
  dw CODE_JP_8DBC26                         ; $8DBAB0 |
  dw CODE_8DBC51                            ; $8DBAB2 |
  dw CODE_8DBC7F                            ; $8DBAB4 |
  dw CODE_8DBC9A                            ; $8DBAB6 |
  dw CODE_8DBCAA                            ; $8DBAB8 |

CODE_8DBABA:
  LDA.W #$00C0                              ; $8DBABA |
  STA.B $09,X                               ; $8DBABD |
  LDA.W #$005C                              ; $8DBABF |
  STA.B $0D,X                               ; $8DBAC2 |
  LDA.W #$0001                              ; $8DBAC4 |
  STA.B $E4                                 ; $8DBAC7 |
  JSL.L CODE_FL_8CFF15                      ; $8DBAC9 |
  LDA.W #$0046                              ; $8DBACD |
  STA.B $2C,X                               ; $8DBAD0 |
  LDA.W #$1880                              ; $8DBAD2 |
  STA.B $34,X                               ; $8DBAD5 |
  JSL.L CODE_FL_86C63A                      ; $8DBAD7 |
  LDA.L $700738                             ; $8DBADB |
  AND.W #$00FF                              ; $8DBADF |
  ASL A                                     ; $8DBAE2 |
  TAY                                       ; $8DBAE3 |
  CPY.W #$0008                              ; $8DBAE4 |
  BCC CODE_8DBAEC                           ; $8DBAE7 |
  LDY.W #$0000                              ; $8DBAE9 |

CODE_8DBAEC:
  LDA.W CODE_00D5FF,Y                       ; $8DBAEC |
  STA.B $40,X                               ; $8DBAEF |

CODE_8DBAF1:
  JSR.W CODE_FN_8DBB16                      ; $8DBAF1 |
  STZ.B $1E,X                               ; $8DBAF4 |
  JSL.L CODE_FL_86A046                      ; $8DBAF6 |
  BCC CODE_8DBB0A                           ; $8DBAFA |
  LDA.W #$FCE0                              ; $8DBAFC |
  STA.B $28,X                               ; $8DBAFF |
  LDA.W #$9002                              ; $8DBB01 |
  JSL.L CODE_FL_86CAEE                      ; $8DBB04 |
  INC.B $1A,X                               ; $8DBB08 |

CODE_8DBB0A:
  LDA.L $7E7C02                             ; $8DBB0A |
  BEQ CODE_8DBB15                           ; $8DBB0E |
  LDA.W #$0005                              ; $8DBB10 |
  STA.B $1A,X                               ; $8DBB13 |

CODE_8DBB15:
  RTL                                       ; $8DBB15 |

CODE_FN_8DBB16:
  LDA.W #$3012                              ; $8DBB16 |
  STA.B $00,X                               ; $8DBB19 |
  STZ.B $20,X                               ; $8DBB1B |
  RTS                                       ; $8DBB1D |

CODE_8DBB1E:
  LDA.B $0D,X                               ; $8DBB1E |
  CMP.W #$0048                              ; $8DBB20 |
  BCS CODE_8DBB15                           ; $8DBB23 |
  STZ.B $28,X                               ; $8DBB25 |
  JSR.W CODE_FN_8DBB16                      ; $8DBB27 |
  LDA.W #$0003                              ; $8DBB2A |
  JSL.L CODE_FL_85B065                      ; $8DBB2D |
  LDA.B $1A,X                               ; $8DBB31 |
  CMP.W #$0002                              ; $8DBB33 |
  BEQ CODE_8DBB15                           ; $8DBB36 |
  LDA.W #$0002                              ; $8DBB38 |
  STA.B $2C,X                               ; $8DBB3B |
  LDA.W #$DA3E                              ; $8DBB3D |
  STA.B $40,X                               ; $8DBB40 |

CODE_8DBB42:
  JSL.L CODE_FL_86C70D                      ; $8DBB42 |
  JSL.L CODE_FL_86A046                      ; $8DBB46 |
  BCC CODE_8DBB15                           ; $8DBB4A |
  DEC.B $1A,X                               ; $8DBB4C |
  LDA.L $7E7C04                             ; $8DBB4E |
  BEQ CODE_8DBB15                           ; $8DBB52 |
  LDY.W #$0000                              ; $8DBB54 |
  JMP.W CODE_JP_8DBD8C                      ; $8DBB57 |

CODE_8DBB5A:
  STZ.B $40,X                               ; $8DBB5A |
  LDA.W $7C16                               ; $8DBB5C |
  BNE CODE_8DBB65                           ; $8DBB5F |
  JSL.L CODE_FL_809B17                      ; $8DBB61 |

CODE_8DBB65:
  JML.L CODE_FL_86A046                      ; $8DBB65 |

CODE_8DBB69:
  LDA.W #$FFFF                              ; $8DBB69 |
  STA.B $3A,X                               ; $8DBB6C |
  LDA.W #$00C0                              ; $8DBB6E |
  STA.B $3C,X                               ; $8DBB71 |
  LDA.W #$0068                              ; $8DBB73 |
  STA.B $3E,X                               ; $8DBB76 |
  LDA.W $0CAE                               ; $8DBB78 |
  CMP.W $0C9A                               ; $8DBB7B |
  BEQ CODE_8DBBA2                           ; $8DBB7E |
  STA.B $08                                 ; $8DBB80 |
  LDX.W #$0CB0                              ; $8DBB82 |

CODE_8DBB85:
  LDA.B $3A,X                               ; $8DBB85 |
  CMP.W $0C9A                               ; $8DBB87 |
  BEQ CODE_8DBB93                           ; $8DBB8A |
  LDY.B $16,X                               ; $8DBB8C |
  TYX                                       ; $8DBB8E |
  DEC.B $08                                 ; $8DBB8F |
  BNE CODE_8DBB85                           ; $8DBB91 |

CODE_8DBB93:
  TXY                                       ; $8DBB93 |
  LDX.B $FC                                 ; $8DBB94 |
  STY.B $3A,X                               ; $8DBB96 |
  LDA.W $0009,Y                             ; $8DBB98 |
  STA.B $3C,X                               ; $8DBB9B |
  LDA.W $000D,Y                             ; $8DBB9D |
  STA.B $3E,X                               ; $8DBBA0 |

CODE_8DBBA2:
  INC.B $1A,X                               ; $8DBBA2 |

CODE_8DBBA4:
  SEC                                       ; $8DBBA4 |
  LDA.B $3E,X                               ; $8DBBA5 |
  SBC.W #$000C                              ; $8DBBA7 |
  CMP.B $0D,X                               ; $8DBBAA |
  BNE CODE_8DBBB1                           ; $8DBBAC |
  JMP.W CODE_JP_8DBC26                      ; $8DBBAE |

CODE_8DBBB1:
  JSL.L CODE_FL_8DBC2B                      ; $8DBBB1 |
  INC.B $1A,X                               ; $8DBBB5 |

CODE_8DBBB7:
  LDA.B $09,X                               ; $8DBBB7 |
  CMP.W #$00C8                              ; $8DBBB9 |
  BPL CODE_JP_8DBBE8                        ; $8DBBBC |
  CMP.W #$0038                              ; $8DBBBE |
  BMI CODE_JP_8DBBE8                        ; $8DBBC1 |
  LDY.W $0C9C                               ; $8DBBC3 |
  STY.B $00                                 ; $8DBBC6 |
  LSR.B $00                                 ; $8DBBC8 |
  CLC                                       ; $8DBBCA |
  ADC.B $00                                 ; $8DBBCB |
  SEC                                       ; $8DBBCD |
  SBC.W #$0048                              ; $8DBBCE |
  JSL.L CODE_FL_808E65                      ; $8DBBD1 |
  CPY.W #$0002                              ; $8DBBD5 |
  BMI CODE_JP_8DBBE8                        ; $8DBBD8 |
  STY.B $00                                 ; $8DBBDA |
  SEC                                       ; $8DBBDC |
  LDA.W $0C9C                               ; $8DBBDD |
  SBC.B $00                                 ; $8DBBE0 |
  CMP.W #$0002                              ; $8DBBE2 |
  BMI CODE_JP_8DBBE8                        ; $8DBBE5 |
  RTL                                       ; $8DBBE7 |

CODE_JP_8DBBE8:
  INC.B $1A,X                               ; $8DBBE8 |
  JML.L CODE_FL_86C899                      ; $8DBBEA |

CODE_8DBBEE:
  LDA.W #$0220                              ; $8DBBEE |
  STA.B $28,X                               ; $8DBBF1 |
  LDA.W #$9002                              ; $8DBBF3 |
  JSL.L CODE_FL_86CAEE                      ; $8DBBF6 |
  LDA.B $3E,X                               ; $8DBBFA |
  CMP.W #$0090                              ; $8DBBFC |
  BEQ CODE_8DBC0D                           ; $8DBBFF |
  LDA.W #$FDE0                              ; $8DBC01 |
  STA.B $28,X                               ; $8DBC04 |
  LDA.W #$9003                              ; $8DBC06 |
  JSL.L CODE_FL_86CAEE                      ; $8DBC09 |

CODE_8DBC0D:
  INC.B $1A,X                               ; $8DBC0D |

CODE_8DBC0F:
  RTL                                       ; $8DBC0F |

CODE_8DBC10:
  LDA.W #$005C                              ; $8DBC10 |
  BIT.B $28,X                               ; $8DBC13 |
  BMI CODE_8DBC1A                           ; $8DBC15 |
  LDA.W #$0084                              ; $8DBC17 |

CODE_8DBC1A:
  TAY                                       ; $8DBC1A |
  SEC                                       ; $8DBC1B |
  SBC.B $0D,X                               ; $8DBC1C |
  EOR.B $28,X                               ; $8DBC1E |
  BPL CODE_8DBC0F                           ; $8DBC20 |
  STY.B $0D,X                               ; $8DBC22 |
  BRA CODE_JP_8DBBE8                        ; $8DBC24 |

CODE_JP_8DBC26:
  LDA.W #$000B                              ; $8DBC26 |
  STA.B $1A,X                               ; $8DBC29 |

CODE_FL_8DBC2B:
  LDA.W #$9001                              ; $8DBC2B |
  CMP.B $1E,X                               ; $8DBC2E |
  BEQ CODE_8DBC36                           ; $8DBC30 |
  JSL.L CODE_FL_86CAEE                      ; $8DBC32 |

CODE_8DBC36:
  LDA.B $04,X                               ; $8DBC36 |
  AND.W #$DFFF                              ; $8DBC38 |
  STA.B $04,X                               ; $8DBC3B |
  LDA.B $3C,X                               ; $8DBC3D |
  CMP.B $09,X                               ; $8DBC3F |
  BMI CODE_8DBC4A                           ; $8DBC41 |
  LDA.B $04,X                               ; $8DBC43 |
  ORA.W #$A000                              ; $8DBC45 |
  STA.B $04,X                               ; $8DBC48 |

CODE_8DBC4A:
  LDA.W #$FDE0                              ; $8DBC4A |
  JML.L CODE_FL_86C887                      ; $8DBC4D |

CODE_8DBC51:
  LDA.W #$0038                              ; $8DBC51 |
  BIT.B $26,X                               ; $8DBC54 |
  BMI CODE_8DBC5B                           ; $8DBC56 |
  LDA.W #$00C8                              ; $8DBC58 |

CODE_8DBC5B:
  TAY                                       ; $8DBC5B |
  SEC                                       ; $8DBC5C |
  SBC.B $09,X                               ; $8DBC5D |
  EOR.B $26,X                               ; $8DBC5F |
  BPL CODE_8DBC67                           ; $8DBC61 |
  JML.L CODE_FL_86CB6A                      ; $8DBC63 |

CODE_8DBC67:
  SEC                                       ; $8DBC67 |
  LDA.B $09,X                               ; $8DBC68 |
  SBC.B $3C,X                               ; $8DBC6A |
  BPL CODE_8DBC72                           ; $8DBC6C |
  EOR.W #$FFFF                              ; $8DBC6E |
  INC A                                     ; $8DBC71 |

CODE_8DBC72:
  CMP.W #$0002                              ; $8DBC72 |
  BCC CODE_8DBC78                           ; $8DBC75 |
  RTL                                       ; $8DBC77 |

CODE_8DBC78:
  LDA.B $3C,X                               ; $8DBC78 |
  STA.B $09,X                               ; $8DBC7A |
  JMP.W CODE_JP_8DBBE8                      ; $8DBC7C |

CODE_8DBC7F:
  LDY.B $3A,X                               ; $8DBC7F |
  BMI CODE_8DBC8C                           ; $8DBC81 |
  INC.B $1A,X                               ; $8DBC83 |
  LDA.W #$9004                              ; $8DBC85 |
  JML.L CODE_FL_86CAEE                      ; $8DBC88 |

CODE_8DBC8C:
  TDC                                       ; $8DBC8C |
  STA.W $0C9A                               ; $8DBC8D |
  STA.L $7E7C02                             ; $8DBC90 |
  LDA.W #$0001                              ; $8DBC94 |
  STA.B $1A,X                               ; $8DBC97 |

CODE_8DBC99:
  RTL                                       ; $8DBC99 |

CODE_8DBC9A:
  LDA.B $20,X                               ; $8DBC9A |
  BNE CODE_8DBC99                           ; $8DBC9C |
  LDY.B $3A,X                               ; $8DBC9E |
  LDA.W #$0002                              ; $8DBCA0 |
  STA.W $001A,Y                             ; $8DBCA3 |
  INC.B $20,X                               ; $8DBCA6 |
  INC.B $1A,X                               ; $8DBCA8 |

CODE_8DBCAA:
  LDA.B $20,X                               ; $8DBCAA |
  BNE CODE_8DBC99                           ; $8DBCAC |
  LDA.W #$0005                              ; $8DBCAE |
  STA.B $1A,X                               ; $8DBCB1 |
  RTL                                       ; $8DBCB3 |

CODE_8DBCB4:
  LDA.W #$8001                              ; $8DBCB4 |
  STA.B $E4                                 ; $8DBCB7 |
  STZ.W $0400                               ; $8DBCB9 |
  STZ.W $04C0                               ; $8DBCBC |
  JSL.L CODE_FL_86C412                      ; $8DBCBF |
  PHX                                       ; $8DBCC3 |
  ASL A                                     ; $8DBCC4 |
  TAX                                       ; $8DBCC5 |
  LDA.L PTR16_8DBCD0,X                      ; $8DBCC6 |
  PLX                                       ; $8DBCCA |
  STA.B $00                                 ; $8DBCCB |
  JMP.W ($0000)                             ; $8DBCCD |

PTR16_8DBCD0:
  dw CODE_8DBCDA                            ; $8DBCD0 |
  dw CODE_8DBCEB                            ; $8DBCD2 |
  dw CODE_8DBD0D                            ; $8DBCD4 |
  dw CODE_8DBD3C                            ; $8DBCD6 |
  dw CODE_8DBD48                            ; $8DBCD8 |

CODE_8DBCDA:
  STZ.B $22,X                               ; $8DBCDA |
  STZ.B $34,X                               ; $8DBCDC |
  LDA.W #$003C                              ; $8DBCDE |
  STA.B $2C,X                               ; $8DBCE1 |
  LDA.W #$FFFF                              ; $8DBCE3 |
  STA.W $1CB0                               ; $8DBCE6 |
  INC.B $1A,X                               ; $8DBCE9 |

CODE_8DBCEB:
  JSL.L CODE_FL_86C70D                      ; $8DBCEB |
  LDA.W #$030C                              ; $8DBCEF |
  JSL.L CODE_FL_86C9DA                      ; $8DBCF2 |
  BCS CODE_FL_8DBD06                        ; $8DBCF6 |
  LDA.W #$0080                              ; $8DBCF8 |
  STA.W $0009,Y                             ; $8DBCFB |
  LDA.W #$009C                              ; $8DBCFE |
  STA.W $000D,Y                             ; $8DBD01 |
  INC.B $1A,X                               ; $8DBD04 |

CODE_FL_8DBD06:
  LDA.W #$FFFF                              ; $8DBD06 |
  STA.W $1CAE                               ; $8DBD09 |
  RTL                                       ; $8DBD0C |

CODE_8DBD0D:
  BIT.W $1CAE                               ; $8DBD0D |
  BNE CODE_8DBD34                           ; $8DBD10 |
  JSL.L CODE_FL_8DBD06                      ; $8DBD12 |
  LDY.W #$F498                              ; $8DBD16 |
  LDA.B $38,X                               ; $8DBD19 |
  BEQ CODE_8DBD23                           ; $8DBD1B |
  LSR A                                     ; $8DBD1D |
  BCC CODE_8DBD23                           ; $8DBD1E |
  LDY.W #$F4B8                              ; $8DBD20 |

CODE_8DBD23:
  TYA                                       ; $8DBD23 |
  CMP.B $3E,X                               ; $8DBD24 |
  BEQ CODE_8DBD33                           ; $8DBD26 |
  STA.B $3E,X                               ; $8DBD28 |
  PHX                                       ; $8DBD2A |
  LDA.W #$0004                              ; $8DBD2B |
  JSL.L CODE_FL_80C2BA                      ; $8DBD2E |
  PLX                                       ; $8DBD32 |

CODE_8DBD33:
  RTL                                       ; $8DBD33 |

CODE_8DBD34:
  LDA.W #$003C                              ; $8DBD34 |
  STA.B $2C,X                               ; $8DBD37 |
  INC.B $1A,X                               ; $8DBD39 |
  RTL                                       ; $8DBD3B |

CODE_8DBD3C:
  JSL.L CODE_FL_86C70D                      ; $8DBD3C |
  PHX                                       ; $8DBD40 |
  JSL.L CODE_FL_80C213                      ; $8DBD41 |
  PLX                                       ; $8DBD45 |
  INC.B $1A,X                               ; $8DBD46 |

CODE_8DBD48:
  LDA.W $1F30                               ; $8DBD48 |
  BEQ CODE_FL_8DBD06                        ; $8DBD4B |
  BIT.W $1CB0                               ; $8DBD4D |
  BMI CODE_8DBD64                           ; $8DBD50 |
  LDA.L $700324                             ; $8DBD52 |
  BEQ CODE_8DBD5B                           ; $8DBD56 |
  LDA.W #$0003                              ; $8DBD58 |

CODE_8DBD5B:
  STA.L $700738                             ; $8DBD5B |
  LDY.W #$0001                              ; $8DBD5F |
  BRA CODE_JP_8DBD8C                        ; $8DBD62 |

CODE_8DBD64:
  LDA.L $700738                             ; $8DBD64 |
  INC A                                     ; $8DBD68 |
  AND.W #$00FF                              ; $8DBD69 |
  BEQ CODE_8DBDA8                           ; $8DBD6C |
  STA.L $700738                             ; $8DBD6E |
  CMP.W #$0003                              ; $8DBD72 |
  BCC CODE_8DBDA8                           ; $8DBD75 |
  LDY.W #$0002                              ; $8DBD77 |
  LDA.L $700324                             ; $8DBD7A |
  BEQ CODE_JP_8DBD8C                        ; $8DBD7E |
  LDA.L $700738                             ; $8DBD80 |
  CMP.W #$000D                              ; $8DBD84 |
  BCC CODE_8DBDA8                           ; $8DBD87 |
  LDY.W #$0003                              ; $8DBD89 |

CODE_JP_8DBD8C:
  TYA                                       ; $8DBD8C |
  STA.L $7E7C06                             ; $8DBD8D |
  SEP #$20                                  ; $8DBD91 |
  LDA.L $700738                             ; $8DBD93 |
  PHA                                       ; $8DBD97 |
  REP #$20                                  ; $8DBD98 |
  JSL.L CODE_FL_8BE28D                      ; $8DBD9A |
  SEP #$20                                  ; $8DBD9E |
  PLA                                       ; $8DBDA0 |
  STA.L $700738                             ; $8DBDA1 |
  REP #$20                                  ; $8DBDA5 |
  RTL                                       ; $8DBDA7 |

CODE_8DBDA8:
  JML.L CODE_FL_848000                      ; $8DBDA8 |

CODE_8DBDAC:
  STZ.W $1CAE                               ; $8DBDAC |
  JSL.L CODE_FL_86C3A3                      ; $8DBDAF |
  LDA.B $1A,X                               ; $8DBDB3 |
  PHX                                       ; $8DBDB5 |
  ASL A                                     ; $8DBDB6 |
  TAX                                       ; $8DBDB7 |
  LDA.L PTR16_8DBDC2,X                      ; $8DBDB8 |
  PLX                                       ; $8DBDBC |
  STA.B $00                                 ; $8DBDBD |
  JMP.W ($0000)                             ; $8DBDBF |

PTR16_8DBDC2:
  dw CODE_8DBDCA                            ; $8DBDC2 |
  dw CODE_8DBE17                            ; $8DBDC4 |
  dw CODE_8DBE54                            ; $8DBDC6 |
  dw CODE_8DBE95                            ; $8DBDC8 |

CODE_8DBDCA:
  JSL.L CODE_FL_86C70D                      ; $8DBDCA |
  LDA.W #$0020                              ; $8DBDCE |
  JSL.L CODE_FL_86957C                      ; $8DBDD1 |
  TAY                                       ; $8DBDD5 |
  LDA.B $4E,X                               ; $8DBDD6 |
  LSR A                                     ; $8DBDD8 |
  TYA                                       ; $8DBDD9 |
  BCC CODE_8DBDDF                           ; $8DBDDA |
  EOR.W #$FFFF                              ; $8DBDDC |

CODE_8DBDDF:
  ADC.W #$0080                              ; $8DBDDF |
  STA.B $00                                 ; $8DBDE2 |
  STA.B $09,X                               ; $8DBDE4 |
  LDA.B $0D,X                               ; $8DBDE6 |
  STA.B $3A,X                               ; $8DBDE8 |
  LDA.W #$00B8                              ; $8DBDEA |
  JSL.L CODE_FL_86957C                      ; $8DBDED |
  ASL A                                     ; $8DBDF1 |
  ASL A                                     ; $8DBDF2 |
  ADC.W #$F8E0                              ; $8DBDF3 |
  STA.B $28,X                               ; $8DBDF6 |
  LDA.B $4E,X                               ; $8DBDF8 |
  INC A                                     ; $8DBDFA |
  CMP.W $0C5E                               ; $8DBDFB |
  BCS CODE_8DBE14                           ; $8DBDFE |
  LDA.B $18,X                               ; $8DBE00 |
  JSL.L CODE_FL_86C9DA                      ; $8DBE02 |
  BCS CODE_8DBE16                           ; $8DBE06 |
  LDA.B $4E,X                               ; $8DBE08 |
  INC A                                     ; $8DBE0A |
  STA.W $004E,Y                             ; $8DBE0B |
  LDA.W #$001E                              ; $8DBE0E |
  STA.W $002C,Y                             ; $8DBE11 |

CODE_8DBE14:
  INC.B $1A,X                               ; $8DBE14 |

CODE_8DBE16:
  RTL                                       ; $8DBE16 |

CODE_8DBE17:
  JSL.L CODE_FL_86C70D                      ; $8DBE17 |
  LDA.W #$9006                              ; $8DBE1B |
  JSL.L CODE_FL_86CAEE                      ; $8DBE1E |
  LDA.B $3C,X                               ; $8DBE22 |
  CMP.W #$0002                              ; $8DBE24 |
  BCS CODE_8DBE51                           ; $8DBE27 |
  LDA.B $18,X                               ; $8DBE29 |
  JSL.L CODE_FL_86C9DA                      ; $8DBE2B |
  BCS CODE_8DBE53                           ; $8DBE2F |
  LDA.B $4E,X                               ; $8DBE31 |
  STA.W $004E,Y                             ; $8DBE33 |
  LDA.W #$0003                              ; $8DBE36 |
  STA.W $002C,Y                             ; $8DBE39 |
  LDA.B $3A,X                               ; $8DBE3C |
  STA.W $003A,Y                             ; $8DBE3E |
  LDA.B $3C,X                               ; $8DBE41 |
  INC A                                     ; $8DBE43 |
  STA.W $003C,Y                             ; $8DBE44 |
  LDA.B $1A,X                               ; $8DBE47 |
  STA.W $001A,Y                             ; $8DBE49 |
  LDA.B $28,X                               ; $8DBE4C |
  STA.W $0028,Y                             ; $8DBE4E |

CODE_8DBE51:
  INC.B $1A,X                               ; $8DBE51 |

CODE_8DBE53:
  RTL                                       ; $8DBE53 |

CODE_8DBE54:
  JSL.L CODE_FL_97FC80                      ; $8DBE54 |
  JSL.L CODE_FL_86C870                      ; $8DBE58 |
  BIT.B $28,X                               ; $8DBE5C |
  BMI CODE_8DBE8E                           ; $8DBE5E |
  LDA.B $4E,X                               ; $8DBE60 |
  ASL A                                     ; $8DBE62 |
  TAY                                       ; $8DBE63 |
  LDA.W $1CBE,Y                             ; $8DBE64 |
  BPL CODE_8DBE7D                           ; $8DBE67 |
  LDA.B $04,X                               ; $8DBE69 |
  ORA.W #$4040                              ; $8DBE6B |
  STA.B $04,X                               ; $8DBE6E |
  LDA.B $3A,X                               ; $8DBE70 |
  CMP.B $0D,X                               ; $8DBE72 |
  BPL CODE_8DBE8E                           ; $8DBE74 |
  LDA.B $04,X                               ; $8DBE76 |
  AND.W #$BFBF                              ; $8DBE78 |
  STA.B $04,X                               ; $8DBE7B |

CODE_8DBE7D:
  STZ.B $28,X                               ; $8DBE7D |
  INC.B $20,X                               ; $8DBE7F |
  INC.B $1A,X                               ; $8DBE81 |
  LDA.B $3C,X                               ; $8DBE83 |
  BNE CODE_8DBE8E                           ; $8DBE85 |
  LDA.W #$0064                              ; $8DBE87 |
  JSL.L CODE_FL_8089BD                      ; $8DBE8A |

CODE_8DBE8E:
  LDA.W #$0040                              ; $8DBE8E |
  JML.L CODE_FL_86C831                      ; $8DBE91 |

CODE_8DBE95:
  JSL.L CODE_FL_97FC80                      ; $8DBE95 |
  LDA.B $00,X                               ; $8DBE99 |
  BEQ CODE_8DBEE6                           ; $8DBE9B |
  LDA.B $3C,X                               ; $8DBE9D |
  BNE CODE_8DBEE5                           ; $8DBE9F |
  LDA.B $20,X                               ; $8DBEA1 |
  DEC A                                     ; $8DBEA3 |
  BNE CODE_8DBEE5                           ; $8DBEA4 |
  LDA.B $00,X                               ; $8DBEA6 |
  STZ.B $00                                 ; $8DBEA8 |
  CMP.W #$30FE                              ; $8DBEAA |
  BEQ CODE_8DBEBC                           ; $8DBEAD |
  INC.B $00                                 ; $8DBEAF |
  CMP.W #$30EE                              ; $8DBEB1 |
  BNE CODE_8DBEE5                           ; $8DBEB4 |
  LDA.W #$000C                              ; $8DBEB6 |
  STA.W $0C48                               ; $8DBEB9 |

CODE_8DBEBC:
  LDA.B $4E,X                               ; $8DBEBC |
  ASL A                                     ; $8DBEBE |
  TAY                                       ; $8DBEBF |
  LDA.W $1CBE,Y                             ; $8DBEC0 |
  BPL CODE_8DBEE5                           ; $8DBEC3 |
  LDA.W $1CB0                               ; $8DBEC5 |
  BMI CODE_8DBECE                           ; $8DBEC8 |
  CMP.B $4E,X                               ; $8DBECA |
  BNE CODE_8DBEE5                           ; $8DBECC |

CODE_8DBECE:
  LDA.B $4E,X                               ; $8DBECE |
  STA.W $1CB0                               ; $8DBED0 |
  LDA.W #$030D                              ; $8DBED3 |
  JSL.L CODE_FL_86C9DA                      ; $8DBED6 |
  INC.B $20,X                               ; $8DBEDA |
  BCS CODE_8DBEE5                           ; $8DBEDC |
  DEC.B $20,X                               ; $8DBEDE |
  LDA.B $00                                 ; $8DBEE0 |
  STA.W $004E,Y                             ; $8DBEE2 |

CODE_8DBEE5:
  RTL                                       ; $8DBEE5 |

CODE_8DBEE6:
  JML.L CODE_FL_86CA57                      ; $8DBEE6 |

CODE_8DBEEA:
  STZ.W $1CAE                               ; $8DBEEA |
  JSL.L CODE_FL_86C3F8                      ; $8DBEED |
  PHX                                       ; $8DBEF1 |
  ASL A                                     ; $8DBEF2 |
  TAX                                       ; $8DBEF3 |
  LDA.L PTR16_8DBEFE,X                      ; $8DBEF4 |
  PLX                                       ; $8DBEF8 |
  STA.B $00                                 ; $8DBEF9 |
  JMP.W ($0000)                             ; $8DBEFB |

PTR16_8DBEFE:
  dw CODE_8DBF02                            ; $8DBEFE |
  dw CODE_8DBF2C                            ; $8DBF00 |

CODE_8DBF02:
  INC.B $1A,X                               ; $8DBF02 |
  LDA.B $0D,X                               ; $8DBF04 |
  STA.B $3A,X                               ; $8DBF06 |
  LDA.W #$9007                              ; $8DBF08 |
  JSL.L CODE_FL_86CAEE                      ; $8DBF0B |
  LDA.W #$0004                              ; $8DBF0F |
  STA.B $2C,X                               ; $8DBF12 |
  LDA.W #$FF80                              ; $8DBF14 |
  STA.B $26,X                               ; $8DBF17 |
  LDA.W #$FD60                              ; $8DBF19 |
  STA.B $28,X                               ; $8DBF1C |
  JSR.W CODE_FN_8DB8E3                      ; $8DBF1E |
  LDY.B $4E,X                               ; $8DBF21 |
  BNE CODE_8DBF2B                           ; $8DBF23 |
  INC.B $1E,X                               ; $8DBF25 |
  JSL.L CODE_FL_86CB71                      ; $8DBF27 |

CODE_8DBF2B:
  RTL                                       ; $8DBF2B |

CODE_8DBF2C:
  LDA.W #$0010                              ; $8DBF2C |
  JSL.L CODE_FL_86C831                      ; $8DBF2F |
  BIT.B $28,X                               ; $8DBF33 |
  BMI CODE_8DBF2B                           ; $8DBF35 |
  LDA.B $0D,X                               ; $8DBF37 |
  CMP.B $3A,X                               ; $8DBF39 |
  BMI CODE_8DBF2B                           ; $8DBF3B |
  JML.L CODE_FL_86CA57                      ; $8DBF3D |

CODE_8DBF41:
  JSL.L CODE_FL_8CFD8F                      ; $8DBF41 |
  PHX                                       ; $8DBF45 |
  ASL A                                     ; $8DBF46 |
  TAX                                       ; $8DBF47 |
  LDA.L PTR16_8DBF52,X                      ; $8DBF48 |
  PLX                                       ; $8DBF4C |
  STA.B $00                                 ; $8DBF4D |
  JMP.W ($0000)                             ; $8DBF4F |

PTR16_8DBF52:
  dw CODE_8DBF58                            ; $8DBF52 |
  dw CODE_8DBFA2                            ; $8DBF54 |
  dw CODE_8DBFAD                            ; $8DBF56 |

CODE_8DBF58:
  LDA.W #$3268                              ; $8DBF58 |
  JSL.L CODE_FL_8DBFEB                      ; $8DBF5B |
  LDA.W #$0080                              ; $8DBF5F |
  STA.B $06,X                               ; $8DBF62 |
  LDA.W #$1090                              ; $8DBF64 |
  STA.B $04,X                               ; $8DBF67 |
  STZ.B $14,X                               ; $8DBF69 |
  LDA.W #$0046                              ; $8DBF6B |
  STA.B $2C,X                               ; $8DBF6E |
  JSL.L CODE_FL_86C63A                      ; $8DBF70 |
  JSR.W CODE_FN_8DBF93                      ; $8DBF74 |
  JSL.L CODE_FL_85B01E                      ; $8DBF77 |
  LDA.B $34,X                               ; $8DBF7B |
  ORA.W #$2000                              ; $8DBF7D |
  STA.B $34,X                               ; $8DBF80 |
  LDA.W #$0001                              ; $8DBF82 |
  STA.L $7E7C5E                             ; $8DBF85 |
  STZ.B $46,X                               ; $8DBF89 |
  JSL.L CODE_FL_8DC048                      ; $8DBF8B |
  JML.L CODE_FL_8CFF15                      ; $8DBF8F |

CODE_FN_8DBF93:
  LDY.W #$D953                              ; $8DBF93 |
  LDA.L $700324                             ; $8DBF96 |
  BNE CODE_8DBF9F                           ; $8DBF9A |
  LDY.W #$D5E4                              ; $8DBF9C |

CODE_8DBF9F:
  STY.B $40,X                               ; $8DBF9F |
  RTS                                       ; $8DBFA1 |

CODE_8DBFA2:
  JSR.W CODE_FN_8DBF93                      ; $8DBFA2 |
  LDA.B $1A,X                               ; $8DBFA5 |
  INC A                                     ; $8DBFA7 |
  JSL.L CODE_FL_85B065                      ; $8DBFA8 |
  RTL                                       ; $8DBFAC |

CODE_8DBFAD:
  JSL.L CODE_FL_86A046                      ; $8DBFAD |
  BCS CODE_8DBFF0                           ; $8DBFB1 |
  LDA.L $7E7C04                             ; $8DBFB3 |
  BNE CODE_8DBFE3                           ; $8DBFB7 |
  LDA.B $20,X                               ; $8DBFB9 |
  BNE CODE_8DBFE2                           ; $8DBFBB |
  LDA.L $7E7C34                             ; $8DBFBD |
  CMP.W #$0005                              ; $8DBFC1 |
  BCC CODE_8DBFE2                           ; $8DBFC4 |
  TDC                                       ; $8DBFC6 |
  STA.L $7E7C34                             ; $8DBFC7 |
  LDA.B $3E,X                               ; $8DBFCB |
  INC.B $3E,X                               ; $8DBFCD |
  BIT.W #$0003                              ; $8DBFCF |
  BNE CODE_8DBFE2                           ; $8DBFD2 |
  LDY.W #$9009                              ; $8DBFD4 |
  BIT.W #$0008                              ; $8DBFD7 |
  BEQ CODE_8DBFDD                           ; $8DBFDA |
  INY                                       ; $8DBFDC |

CODE_8DBFDD:
  TYA                                       ; $8DBFDD |
  JSL.L CODE_FL_86CAEE                      ; $8DBFDE |

CODE_8DBFE2:
  RTL                                       ; $8DBFE2 |

CODE_8DBFE3:
  CMP.W #$0002                              ; $8DBFE3 |
  BNE CODE_8DBFE2                           ; $8DBFE6 |
  LDA.W #$32BA                              ; $8DBFE8 |

CODE_FL_8DBFEB:
  STA.B $00,X                               ; $8DBFEB |
  STZ.B $20,X                               ; $8DBFED |
  RTL                                       ; $8DBFEF |

CODE_8DBFF0:
  LDA.W #$0001                              ; $8DBFF0 |
  STA.B $1A,X                               ; $8DBFF3 |
  STZ.B $46,X                               ; $8DBFF5 |
  TDC                                       ; $8DBFF7 |
  STA.L $7E7C08                             ; $8DBFF8 |
  STA.L $7E7C06                             ; $8DBFFC |
  LDA.W #$3268                              ; $8DC000 |
  JSL.L CODE_FL_8DBFEB                      ; $8DC003 |
  LDA.L $7E7C04                             ; $8DC007 |
  BEQ CODE_8DBFE2                           ; $8DC00B |
  DEC A                                     ; $8DC00D |
  BEQ CODE_8DC018                           ; $8DC00E |
  LDA.W #$0001                              ; $8DC010 |
  STA.L $700324                             ; $8DC013 |
  RTL                                       ; $8DC017 |

CODE_8DC018:
  JSL.L CODE_FL_8483B4                      ; $8DC018 |
  LDA.W #$F648                              ; $8DC01C |
  PHX                                       ; $8DC01F |
  JSL.L CODE_FL_80E9EA                      ; $8DC020 |
  JSL.L CODE_FL_848000                      ; $8DC024 |
  STZ.B $E4                                 ; $8DC028 |
  PLX                                       ; $8DC02A |
  LDA.W #$0003                              ; $8DC02B |
  JSL.L CODE_FL_86A563                      ; $8DC02E |
  RTL                                       ; $8DC032 |

  LDA.W #$0003                              ; $8DC033 |
  LDY.W #$0400                              ; $8DC036 |
  CMP.W $0018,Y                             ; $8DC039 |
  BEQ CODE_8DC047                           ; $8DC03C |
  LDY.W #$04C0                              ; $8DC03E |
  CMP.W $0018,Y                             ; $8DC041 |
  BEQ CODE_8DC047                           ; $8DC044 |
  CLC                                       ; $8DC046 |

CODE_8DC047:
  RTL                                       ; $8DC047 |

CODE_FL_8DC048:
  LDA.W #$0003                              ; $8DC048 |
  PHX                                       ; $8DC04B |
  LDY.W #$00DC                              ; $8DC04C |
  LDX.B $DC                                 ; $8DC04F |
  CMP.B $18,X                               ; $8DC051 |
  BEQ CODE_8DC05E                           ; $8DC053 |
  LDY.W #$00DE                              ; $8DC055 |
  LDX.B $DE                                 ; $8DC058 |
  CMP.B $18,X                               ; $8DC05A |
  BNE CODE_8DC062                           ; $8DC05C |

CODE_8DC05E:
  PLX                                       ; $8DC05E |
  STY.B $48,X                               ; $8DC05F |
  RTL                                       ; $8DC061 |

CODE_8DC062:
  CLC                                       ; $8DC062 |
  PLX                                       ; $8DC063 |
  RTL                                       ; $8DC064 |

CODE_8DC065:
  JSL.L CODE_FL_8CFD8F                      ; $8DC065 |
  PHX                                       ; $8DC069 |
  ASL A                                     ; $8DC06A |
  TAX                                       ; $8DC06B |
  LDA.L PTR16_8DC076,X                      ; $8DC06C |
  PLX                                       ; $8DC070 |
  STA.B $00                                 ; $8DC071 |
  JMP.W ($0000)                             ; $8DC073 |

PTR16_8DC076:
  dw CODE_8DC08C                            ; $8DC076 |
  dw CODE_8DC0DF                            ; $8DC078 |
  dw CODE_JP_8DC10D                         ; $8DC07A |
  dw CODE_8DC137                            ; $8DC07C |
  dw CODE_8DC178                            ; $8DC07E |
  dw CODE_JP_8DC1A7                         ; $8DC080 |
  dw CODE_8DC1BB                            ; $8DC082 |

CODE_8DC084:
  JML.L CODE_FL_86CA36                      ; $8DC084 |

CODE_8DC088:
  JML.L CODE_FL_86CA57                      ; $8DC088 |

CODE_8DC08C:
  LDA.L $700758                             ; $8DC08C |
  CMP.W #$000C                              ; $8DC090 |
  BMI CODE_8DC088                           ; $8DC093 |
  LDA.L $70073C                             ; $8DC095 |
  CMP.W #$0002                              ; $8DC099 |
  BPL CODE_8DC088                           ; $8DC09C |
  SEC                                       ; $8DC09E |
  LDA.B $09,X                               ; $8DC09F |
  SBC.W #$0060                              ; $8DC0A1 |
  CMP.W #$0041                              ; $8DC0A4 |
  BCS CODE_8DC0B4                           ; $8DC0A7 |
  SEC                                       ; $8DC0A9 |
  LDA.B $0D,X                               ; $8DC0AA |
  SBC.W #$0060                              ; $8DC0AC |
  CMP.W #$0041                              ; $8DC0AF |
  BCC CODE_8DC084                           ; $8DC0B2 |

CODE_8DC0B4:
  LDA.W #$0314                              ; $8DC0B4 |
  JSL.L CODE_FL_86C9A4                      ; $8DC0B7 |
  BCS CODE_8DC084                           ; $8DC0BB |
  JSL.L CODE_FL_85AAB6                      ; $8DC0BD |
  LDA.W #$0000                              ; $8DC0C1 |
  STA.L $70073C                             ; $8DC0C4 |
  PHX                                       ; $8DC0C8 |
  LDX.W #DATA_88BB23                        ; $8DC0C9 |
  JSL.L sound_transfer_blocks               ; $8DC0CC |
  PLX                                       ; $8DC0D0 |

CODE_JP_8DC0D1:
  JSL.L CODE_FL_8CFF15                      ; $8DC0D1 |
  LDA.B $34,X                               ; $8DC0D5 |
  ORA.W #$6020                              ; $8DC0D7 |
  STA.B $34,X                               ; $8DC0DA |
  INC.B $1A,X                               ; $8DC0DC |
  RTL                                       ; $8DC0DE |

CODE_8DC0DF:
  JSL.L CODE_FL_85F885                      ; $8DC0DF |
  LDA.B $32,X                               ; $8DC0E3 |
  BMI CODE_8DC0E8                           ; $8DC0E5 |
  RTL                                       ; $8DC0E7 |

CODE_8DC0E8:
  LDA.W #$900C                              ; $8DC0E8 |
  JSL.L CODE_FL_86CAEE                      ; $8DC0EB |
  LDA.W #$0313                              ; $8DC0EF |
  STA.B $18,X                               ; $8DC0F2 |

CODE_JP_8DC0F4:
  LDA.B $0C,X                               ; $8DC0F4 |
  SEC                                       ; $8DC0F6 |
  SBC.W #$1800                              ; $8DC0F7 |
  STA.B $0C,X                               ; $8DC0FA |
  LDA.W #$0600                              ; $8DC0FC |
  STA.B $28,X                               ; $8DC0FF |
  LDA.B $34,X                               ; $8DC101 |
  AND.W #$FFDF                              ; $8DC103 |
  STA.B $34,X                               ; $8DC106 |
  STZ.B $32,X                               ; $8DC108 |
  INC.B $1A,X                               ; $8DC10A |
  RTL                                       ; $8DC10C |

CODE_JP_8DC10D:
  JSL.L CODE_FL_85F885                      ; $8DC10D |
  LDA.B $32,X                               ; $8DC111 |
  AND.W #$4000                              ; $8DC113 |
  BNE CODE_8DC119                           ; $8DC116 |
  RTL                                       ; $8DC118 |

CODE_8DC119:
  STZ.B $26,X                               ; $8DC119 |
  JSL.L CODE_FL_85B50F                      ; $8DC11B |
  LDA.W #$0080                              ; $8DC11F |
  STA.B $4C,X                               ; $8DC122 |
  LDA.W #$0400                              ; $8DC124 |
  STA.B $2A,X                               ; $8DC127 |
  LDA.W #$FE40                              ; $8DC129 |
  STA.B $28,X                               ; $8DC12C |
  JSL.L CODE_FL_9CFF0F                      ; $8DC12E |
  STA.B $3C,X                               ; $8DC132 |
  INC.B $1A,X                               ; $8DC134 |
  RTL                                       ; $8DC136 |

CODE_8DC137:
  LDY.B $3C,X                               ; $8DC137 |
  CLC                                       ; $8DC139 |
  LDA.W $000D,Y                             ; $8DC13A |
  ADC.W $1672                               ; $8DC13D |
  CMP.W #$022B                              ; $8DC140 |
  BPL CODE_8DC158                           ; $8DC143 |
  CMP.W #$022A                              ; $8DC145 |
  BPL CODE_8DC151                           ; $8DC148 |
  LDA.W $000D,Y                             ; $8DC14A |
  INC A                                     ; $8DC14D |
  STA.W $000D,Y                             ; $8DC14E |

CODE_8DC151:
  LDA.W $000D,Y                             ; $8DC151 |
  INC A                                     ; $8DC154 |
  STA.W $000D,Y                             ; $8DC155 |

CODE_8DC158:
  CLC                                       ; $8DC158 |
  LDA.B $0D,X                               ; $8DC159 |
  ADC.W $1672                               ; $8DC15B |
  CMP.W #$0210                              ; $8DC15E |
  BPL CODE_8DC16E                           ; $8DC161 |
  SEC                                       ; $8DC163 |
  LDA.W #$0210                              ; $8DC164 |
  SBC.W $1672                               ; $8DC167 |
  STA.B $0D,X                               ; $8DC16A |
  STZ.B $28,X                               ; $8DC16C |

CODE_8DC16E:
  JSL.L CODE_FL_8CFEF6                      ; $8DC16E |
  BMI CODE_8DC175                           ; $8DC172 |
  RTL                                       ; $8DC174 |

CODE_8DC175:
  INC.B $1A,X                               ; $8DC175 |
  RTL                                       ; $8DC177 |

CODE_8DC178:
  JSL.L CODE_FL_8098FD                      ; $8DC178 |
  BCS CODE_8DC17F                           ; $8DC17C |
  RTL                                       ; $8DC17E |

CODE_8DC17F:
  LDA.W #$FA00                              ; $8DC17F |
  STA.B $26,X                               ; $8DC182 |

CODE_JP_8DC184:
  LDA.B $22,X                               ; $8DC184 |
  AND.W #$BFFF                              ; $8DC186 |
  STA.B $22,X                               ; $8DC189 |
  LDY.B $44,X                               ; $8DC18B |
  LDA.W $001A,Y                             ; $8DC18D |
  INC A                                     ; $8DC190 |
  STA.W $001A,Y                             ; $8DC191 |
  LDA.W #$3E0A                              ; $8DC194 |
  STA.B $00,X                               ; $8DC197 |
  JSL.L CODE_FL_9CFF27                      ; $8DC199 |
  LDA.W #$0118                              ; $8DC19D |
  JSL.L CODE_FL_8089BD                      ; $8DC1A0 |
  INC.B $1A,X                               ; $8DC1A4 |
  RTL                                       ; $8DC1A6 |

CODE_JP_8DC1A7:
  JSL.L CODE_FL_86CB11                      ; $8DC1A7 |
  BCC CODE_8DC1AE                           ; $8DC1AB |
  RTL                                       ; $8DC1AD |

CODE_8DC1AE:
  STZ.B $26,X                               ; $8DC1AE |
  STZ.B $28,X                               ; $8DC1B0 |
  JSL.L CODE_FL_85B50F                      ; $8DC1B2 |
  STZ.B $00,X                               ; $8DC1B6 |
  INC.B $1A,X                               ; $8DC1B8 |
  RTL                                       ; $8DC1BA |

CODE_8DC1BB:
  RTL                                       ; $8DC1BB |

CODE_8DC1BC:
  LDA.B $1A,X                               ; $8DC1BC |
  PHX                                       ; $8DC1BE |
  ASL A                                     ; $8DC1BF |
  TAX                                       ; $8DC1C0 |
  LDA.L PTR16_8DC1CB,X                      ; $8DC1C1 |
  PLX                                       ; $8DC1C5 |
  STA.B $00                                 ; $8DC1C6 |
  JMP.W ($0000)                             ; $8DC1C8 |

PTR16_8DC1CB:
  dw CODE_JP_8DC1D5                         ; $8DC1CB |
  dw CODE_8DC1DA                            ; $8DC1CD |
  dw CODE_8DC1DB                            ; $8DC1CF |
  dw CODE_8DC203                            ; $8DC1D1 |
  dw CODE_8DC218                            ; $8DC1D3 |

CODE_JP_8DC1D5:
  STZ.B $3C,X                               ; $8DC1D5 |
  INC.B $1A,X                               ; $8DC1D7 |
  RTL                                       ; $8DC1D9 |

CODE_8DC1DA:
  RTL                                       ; $8DC1DA |

CODE_8DC1DB:
  LDA.W #$3E22                              ; $8DC1DB |

CODE_JP_8DC1DE:
  STA.B $00,X                               ; $8DC1DE |
  LDY.W $0044,X                             ; $8DC1E0 |
  JSL.L CODE_FL_86C89E                      ; $8DC1E3 |
  LDA.W #$0008                              ; $8DC1E7 |
  STA.B $11,X                               ; $8DC1EA |
  LDA.W #$0080                              ; $8DC1EC |
  STA.B $4C,X                               ; $8DC1EF |
  LDA.W #$0400                              ; $8DC1F1 |
  STA.B $2A,X                               ; $8DC1F4 |
  LDA.W #$0100                              ; $8DC1F6 |
  STA.B $26,X                               ; $8DC1F9 |
  LDA.W #$0100                              ; $8DC1FB |
  STA.B $28,X                               ; $8DC1FE |
  INC.B $1A,X                               ; $8DC200 |
  RTL                                       ; $8DC202 |

CODE_8DC203:
  JSL.L CODE_FL_8CFD59                      ; $8DC203 |
  JSL.L CODE_FL_8CFEF6                      ; $8DC207 |
  BMI CODE_8DC20E                           ; $8DC20B |
  RTL                                       ; $8DC20D |

CODE_8DC20E:
  LDA.B $34,X                               ; $8DC20E |
  ORA.W #$6020                              ; $8DC210 |
  STA.B $34,X                               ; $8DC213 |
  INC.B $1A,X                               ; $8DC215 |
  RTL                                       ; $8DC217 |

CODE_8DC218:
  JSL.L CODE_FL_85F885                      ; $8DC218 |
  LDA.B $32,X                               ; $8DC21C |
  BPL CODE_8DC250                           ; $8DC21E |
  JSL.L CODE_FL_9CFF1C                      ; $8DC220 |
  LDA.W $0011,Y                             ; $8DC224 |
  BNE CODE_8DC250                           ; $8DC227 |
  LDY.B $3C,X                               ; $8DC229 |
  LDA.W CODE_00D60A,Y                       ; $8DC22B |
  CMP.W #$FFFF                              ; $8DC22E |
  BEQ CODE_8DC253                           ; $8DC231 |
  SEC                                       ; $8DC233 |
  SBC.W $1662                               ; $8DC234 |
  STA.B $09,X                               ; $8DC237 |
  LDA.W CODE_00D60C,Y                       ; $8DC239 |
  SEC                                       ; $8DC23C |
  SBC.W $1672                               ; $8DC23D |
  STA.B $0D,X                               ; $8DC240 |
  TYA                                       ; $8DC242 |
  CLC                                       ; $8DC243 |
  ADC.W #$0004                              ; $8DC244 |
  STA.B $3C,X                               ; $8DC247 |
  LDA.W #$00F4                              ; $8DC249 |
  JSL.L CODE_FL_8089BD                      ; $8DC24C |

CODE_8DC250:
  STZ.B $32,X                               ; $8DC250 |
  RTL                                       ; $8DC252 |

CODE_8DC253:
  LDA.W #$0001                              ; $8DC253 |
  STA.L $70073C                             ; $8DC256 |
  JML.L CODE_FL_86CA57                      ; $8DC25A |

CODE_8DC25E:
  JSL.L CODE_FL_8CFD8F                      ; $8DC25E |
  PHX                                       ; $8DC262 |
  ASL A                                     ; $8DC263 |
  TAX                                       ; $8DC264 |
  LDA.L PTR16_8DC26F,X                      ; $8DC265 |
  PLX                                       ; $8DC269 |
  STA.B $00                                 ; $8DC26A |
  JMP.W ($0000)                             ; $8DC26C |

PTR16_8DC26F:
  dw CODE_8DC27B                            ; $8DC26F |
  dw CODE_8DC2A1                            ; $8DC271 |
  dw CODE_8DC2A3                            ; $8DC273 |
  dw CODE_8DC2E9                            ; $8DC275 |

CODE_8DC277:
  JML.L CODE_FL_86CA57                      ; $8DC277 |

CODE_8DC27B:
  LDA.L $70073C                             ; $8DC27B |
  CMP.W #$0001                              ; $8DC27F |
  BNE CODE_8DC277                           ; $8DC282 |
  JSL.L CODE_FL_85B01E                      ; $8DC284 |
  LDA.B $34,X                               ; $8DC288 |
  ORA.W #$2000                              ; $8DC28A |
  STA.B $34,X                               ; $8DC28D |
  STA.B $E4                                 ; $8DC28F |
  LDA.W #$900D                              ; $8DC291 |
  JSL.L CODE_FL_86CAEE                      ; $8DC294 |
  LDA.W #$0047                              ; $8DC298 |
  STA.B $02,X                               ; $8DC29B |
  JSL.L CODE_FL_86C63A                      ; $8DC29D |

CODE_8DC2A1:
  INC.B $1A,X                               ; $8DC2A1 |

CODE_8DC2A3:
  JSL.L CODE_FL_86A046                      ; $8DC2A3 |
  BCS CODE_8DC2AA                           ; $8DC2A7 |
  RTL                                       ; $8DC2A9 |

CODE_8DC2AA:
  LDA.W #$0002                              ; $8DC2AA |
  STA.L $70073C                             ; $8DC2AD |
  LDA.W #$F60C                              ; $8DC2B1 |
  JSL.L CODE_FL_80E9EA                      ; $8DC2B4 |
  JSL.L CODE_FL_84801F                      ; $8DC2B8 |
  LDA.W #$01A8                              ; $8DC2BC |
  STA.W $19BE                               ; $8DC2BF |
  LDA.W #$021C                              ; $8DC2C2 |
  STA.W $19C0                               ; $8DC2C5 |
  LDA.W #$0108                              ; $8DC2C8 |
  STA.W $19C4                               ; $8DC2CB |
  LDA.W #$0002                              ; $8DC2CE |
  STA.B $C0                                 ; $8DC2D1 |
  LDA.W #$DAD2                              ; $8DC2D3 |
  STA.W $1934                               ; $8DC2D6 |
  STZ.W $19CC                               ; $8DC2D9 |
  STZ.W $19CE                               ; $8DC2DC |
  LDA.W #$0001                              ; $8DC2DF |
  STA.L $700742                             ; $8DC2E2 |
  INC.B $1A,X                               ; $8DC2E6 |
  RTL                                       ; $8DC2E8 |

CODE_8DC2E9:
  RTL                                       ; $8DC2E9 |

CODE_8DC2EA:
  JSL.L CODE_FL_8CFD8F                      ; $8DC2EA |
  PHX                                       ; $8DC2EE |
  ASL A                                     ; $8DC2EF |
  TAX                                       ; $8DC2F0 |
  LDA.L PTR16_8DC2FB,X                      ; $8DC2F1 |
  PLX                                       ; $8DC2F5 |
  STA.B $00                                 ; $8DC2F6 |
  JMP.W ($0000)                             ; $8DC2F8 |

PTR16_8DC2FB:
  dw CODE_8DC31B                            ; $8DC2FB |
  dw CODE_8DC35E                            ; $8DC2FD |
  dw CODE_8DC376                            ; $8DC2FF |
  dw CODE_8DC379                            ; $8DC301 |
  dw CODE_8DC3A9                            ; $8DC303 |
  dw CODE_8DC3BD                            ; $8DC305 |
  dw CODE_8DC3C0                            ; $8DC307 |
  dw CODE_8DC3C1                            ; $8DC309 |
  dw CODE_8DC3E5                            ; $8DC30B |
  dw CODE_8DC406                            ; $8DC30D |
  dw CODE_8DC41C                            ; $8DC30F |
  dw CODE_8DC45A                            ; $8DC311 |

CODE_8DC313:
  JML.L CODE_FL_86CA36                      ; $8DC313 |

CODE_8DC317:
  JML.L CODE_FL_86CA57                      ; $8DC317 |

CODE_8DC31B:
  LDA.L $700784                             ; $8DC31B |
  BEQ CODE_8DC317                           ; $8DC31F |
  LDA.L $70073C                             ; $8DC321 |
  CMP.W #$0003                              ; $8DC325 |
  BPL CODE_8DC317                           ; $8DC328 |
  SEC                                       ; $8DC32A |
  LDA.B $09,X                               ; $8DC32B |
  SBC.W #$0060                              ; $8DC32D |
  CMP.W #$0041                              ; $8DC330 |
  BCS CODE_8DC340                           ; $8DC333 |
  SEC                                       ; $8DC335 |
  LDA.B $0D,X                               ; $8DC336 |
  SBC.W #$0060                              ; $8DC338 |
  CMP.W #$0041                              ; $8DC33B |
  BCC CODE_8DC313                           ; $8DC33E |

CODE_8DC340:
  LDA.W #$0318                              ; $8DC340 |
  JSL.L CODE_FL_86C9A4                      ; $8DC343 |
  BCS CODE_8DC313                           ; $8DC347 |
  JSL.L CODE_FL_85AAB6                      ; $8DC349 |
  PHX                                       ; $8DC34D |
  LDX.W #DATA_88BB30                        ; $8DC34E |
  JSL.L sound_transfer_blocks               ; $8DC351 |
  PLX                                       ; $8DC355 |
  LDA.W #$00C0                              ; $8DC356 |
  STA.B $06,X                               ; $8DC359 |
  JMP.W CODE_JP_8DC0D1                      ; $8DC35B |

CODE_8DC35E:
  JSL.L CODE_FL_85F885                      ; $8DC35E |
  LDA.B $32,X                               ; $8DC362 |
  BMI CODE_8DC367                           ; $8DC364 |
  RTL                                       ; $8DC366 |

CODE_8DC367:
  LDA.W #$900B                              ; $8DC367 |
  JSL.L CODE_FL_86CAEE                      ; $8DC36A |
  LDA.W #$0317                              ; $8DC36E |
  STA.B $18,X                               ; $8DC371 |
  JMP.W CODE_JP_8DC0F4                      ; $8DC373 |

CODE_8DC376:
  JMP.W CODE_JP_8DC10D                      ; $8DC376 |

CODE_8DC379:
  LDY.B $3C,X                               ; $8DC379 |
  LDA.W $000D,Y                             ; $8DC37B |
  INC A                                     ; $8DC37E |
  STA.W $000D,Y                             ; $8DC37F |
  LDA.W $000D,Y                             ; $8DC382 |
  INC A                                     ; $8DC385 |
  STA.W $000D,Y                             ; $8DC386 |
  CLC                                       ; $8DC389 |
  LDA.B $0D,X                               ; $8DC38A |
  ADC.W $1672                               ; $8DC38C |
  CMP.W #$0234                              ; $8DC38F |
  BPL CODE_8DC39F                           ; $8DC392 |
  SEC                                       ; $8DC394 |
  LDA.W #$0234                              ; $8DC395 |
  SBC.W $1672                               ; $8DC398 |
  STA.B $0D,X                               ; $8DC39B |
  STZ.B $28,X                               ; $8DC39D |

CODE_8DC39F:
  JSL.L CODE_FL_8CFEF6                      ; $8DC39F |
  BMI CODE_8DC3A6                           ; $8DC3A3 |
  RTL                                       ; $8DC3A5 |

CODE_8DC3A6:
  INC.B $1A,X                               ; $8DC3A6 |
  RTL                                       ; $8DC3A8 |

CODE_8DC3A9:
  JSL.L CODE_FL_8098FD                      ; $8DC3A9 |
  BCS CODE_8DC3B0                           ; $8DC3AD |
  RTL                                       ; $8DC3AF |

CODE_8DC3B0:
  LDA.W #$FA00                              ; $8DC3B0 |
  STA.B $26,X                               ; $8DC3B3 |
  LDA.W #$0600                              ; $8DC3B5 |
  STA.B $28,X                               ; $8DC3B8 |
  JMP.W CODE_JP_8DC184                      ; $8DC3BA |

CODE_8DC3BD:
  JMP.W CODE_JP_8DC1A7                      ; $8DC3BD |

CODE_8DC3C0:
  RTL                                       ; $8DC3C0 |

CODE_8DC3C1:
  SEC                                       ; $8DC3C1 |
  LDA.W #$01B0                              ; $8DC3C2 |
  SBC.W $1662                               ; $8DC3C5 |
  STA.B $09,X                               ; $8DC3C8 |
  SEC                                       ; $8DC3CA |
  LDA.W #$0328                              ; $8DC3CB |
  SBC.W $1672                               ; $8DC3CE |
  STA.B $0D,X                               ; $8DC3D1 |
  LDA.W #$900F                              ; $8DC3D3 |
  JSL.L CODE_FL_86CAEE                      ; $8DC3D6 |
  STZ.B $32,X                               ; $8DC3DA |
  LDA.W #$B880                              ; $8DC3DC |
  STA.B $34,X                               ; $8DC3DF |
  JML.L CODE_FL_86C63A                      ; $8DC3E1 |

CODE_8DC3E5:
  JSL.L CODE_FL_85F885                      ; $8DC3E5 |
  LDA.B $32,X                               ; $8DC3E9 |
  BMI CODE_8DC3EE                           ; $8DC3EB |
  RTL                                       ; $8DC3ED |

CODE_8DC3EE:
  LDA.W #$31C1                              ; $8DC3EE |
  STA.B $40,X                               ; $8DC3F1 |
  LDA.W #$3D84                              ; $8DC3F3 |
  STA.B $00,X                               ; $8DC3F6 |
  JSL.L CODE_FL_9CFF27                      ; $8DC3F8 |
  LDA.W #$000C                              ; $8DC3FC |
  JSL.L push_sound_queue                    ; $8DC3FF |
  INC.B $1A,X                               ; $8DC403 |
  RTL                                       ; $8DC405 |

CODE_8DC406:
  JSL.L CODE_FL_8098FD                      ; $8DC406 |
  BCS CODE_8DC40D                           ; $8DC40A |
  RTL                                       ; $8DC40C |

CODE_8DC40D:
  LDA.W #$31CC                              ; $8DC40D |
  STA.B $40,X                               ; $8DC410 |
  LDA.W #$900E                              ; $8DC412 |
  JSL.L CODE_FL_86CAEE                      ; $8DC415 |
  INC.B $1A,X                               ; $8DC419 |
  RTL                                       ; $8DC41B |

CODE_8DC41C:
  JSL.L CODE_FL_8098FD                      ; $8DC41C |
  BCS CODE_8DC423                           ; $8DC420 |
  RTL                                       ; $8DC422 |

CODE_8DC423:
  LDA.W #$0003                              ; $8DC423 |
  STA.L $70073C                             ; $8DC426 |
  LDA.W #$F60C                              ; $8DC42A |
  JSL.L CODE_FL_80E9EA                      ; $8DC42D |
  JSL.L CODE_FL_84801F                      ; $8DC431 |
  LDA.W #$03A8                              ; $8DC435 |
  STA.W $19BE                               ; $8DC438 |
  LDA.W #$0240                              ; $8DC43B |
  STA.W $19C0                               ; $8DC43E |
  LDA.W #$0118                              ; $8DC441 |
  STA.W $19C4                               ; $8DC444 |
  LDA.W #$0006                              ; $8DC447 |
  STA.B $C0                                 ; $8DC44A |
  LDA.W #$DC2F                              ; $8DC44C |
  STA.W $1934                               ; $8DC44F |
  STZ.W $19CC                               ; $8DC452 |
  STZ.W $19CE                               ; $8DC455 |
  INC.B $1A,X                               ; $8DC458 |

CODE_8DC45A:
  RTL                                       ; $8DC45A |

CODE_8DC45B:
  LDA.B $1A,X                               ; $8DC45B |
  PHX                                       ; $8DC45D |
  ASL A                                     ; $8DC45E |
  TAX                                       ; $8DC45F |
  LDA.L PTR16_8DC46A,X                      ; $8DC460 |
  PLX                                       ; $8DC464 |
  STA.B $00                                 ; $8DC465 |
  JMP.W ($0000)                             ; $8DC467 |

PTR16_8DC46A:
  dw CODE_8DC474                            ; $8DC46A |
  dw CODE_8DC477                            ; $8DC46C |
  dw CODE_8DC478                            ; $8DC46E |
  dw CODE_8DC488                            ; $8DC470 |
  dw CODE_8DC4A4                            ; $8DC472 |

CODE_8DC474:
  JMP.W CODE_JP_8DC1D5                      ; $8DC474 |

CODE_8DC477:
  RTL                                       ; $8DC477 |

CODE_8DC478:
  LDA.W #$1898                              ; $8DC478 |
  STA.B $04,X                               ; $8DC47B |
  LDA.W #$00C0                              ; $8DC47D |
  STA.B $06,X                               ; $8DC480 |
  LDA.W #$3E26                              ; $8DC482 |
  JMP.W CODE_JP_8DC1DE                      ; $8DC485 |

CODE_8DC488:
  JSL.L CODE_FL_8CFD59                      ; $8DC488 |
  JSL.L CODE_FL_8CFEF6                      ; $8DC48C |
  BMI CODE_8DC493                           ; $8DC490 |
  RTL                                       ; $8DC492 |

CODE_8DC493:
  LDA.B $34,X                               ; $8DC493 |
  ORA.W #$6020                              ; $8DC495 |
  STA.B $34,X                               ; $8DC498 |
  LDA.W #$009C                              ; $8DC49A |
  JSL.L CODE_FL_8089BD                      ; $8DC49D |
  INC.B $1A,X                               ; $8DC4A1 |
  RTL                                       ; $8DC4A3 |

CODE_8DC4A4:
  JSL.L CODE_FL_85F885                      ; $8DC4A4 |
  LDA.B $32,X                               ; $8DC4A8 |
  BPL CODE_8DC500                           ; $8DC4AA |
  JSL.L CODE_FL_9CFF1C                      ; $8DC4AC |
  LDA.W $0011,Y                             ; $8DC4B0 |
  BNE CODE_8DC500                           ; $8DC4B3 |
  LDY.B $3C,X                               ; $8DC4B5 |
  LDA.W LOOSE_OP_00D658,Y                   ; $8DC4B7 |
  CMP.W #$FFFF                              ; $8DC4BA |
  BEQ CODE_8DC503                           ; $8DC4BD |
  SEC                                       ; $8DC4BF |
  SBC.W $1662                               ; $8DC4C0 |
  STA.B $09,X                               ; $8DC4C3 |
  LDA.W CODE_00D65A,Y                       ; $8DC4C5 |
  SEC                                       ; $8DC4C8 |
  SBC.W $1672                               ; $8DC4C9 |
  STA.B $0D,X                               ; $8DC4CC |
  LDA.W LOOSE_OP_00D65C,Y                   ; $8DC4CE |
  STA.B $00,X                               ; $8DC4D1 |
  CMP.W #$3E26                              ; $8DC4D3 |
  BEQ CODE_8DC4E1                           ; $8DC4D6 |
  LDA.W #$00F4                              ; $8DC4D8 |
  JSL.L CODE_FL_8089BD                      ; $8DC4DB |
  BRA CODE_8DC4E8                           ; $8DC4DF |

CODE_8DC4E1:
  LDA.W #$009C                              ; $8DC4E1 |
  JSL.L CODE_FL_8089BD                      ; $8DC4E4 |

CODE_8DC4E8:
  TYA                                       ; $8DC4E8 |
  CLC                                       ; $8DC4E9 |
  ADC.W #$0006                              ; $8DC4EA |
  STA.B $3C,X                               ; $8DC4ED |
  LDA.W CODE_00D65E,Y                       ; $8DC4EF |
  CMP.W #$FFFF                              ; $8DC4F2 |
  BNE CODE_8DC500                           ; $8DC4F5 |
  LDY.B $44,X                               ; $8DC4F7 |
  LDA.W $001A,Y                             ; $8DC4F9 |
  INC A                                     ; $8DC4FC |
  STA.W $001A,Y                             ; $8DC4FD |

CODE_8DC500:
  STZ.B $32,X                               ; $8DC500 |
  RTL                                       ; $8DC502 |

CODE_8DC503:
  JML.L CODE_FL_86CA57                      ; $8DC503 |

CODE_8DC507:
  RTL                                       ; $8DC507 |

CODE_FL_8DC508:
  PHB                                       ; $8DC508 |
  PEA.W $8787                               ; $8DC509 |
  PLB                                       ; $8DC50C |
  PLB                                       ; $8DC50D |
  JSL.L CODE_FL_8DC514                      ; $8DC50E |
  PLB                                       ; $8DC512 |
  RTL                                       ; $8DC513 |

CODE_FL_8DC514:
  LDA.B $3C                                 ; $8DC514 |
  PHX                                       ; $8DC516 |
  ASL A                                     ; $8DC517 |
  TAX                                       ; $8DC518 |
  LDA.L PTR16_8DC523,X                      ; $8DC519 |
  PLX                                       ; $8DC51D |
  STA.B $00                                 ; $8DC51E |
  JMP.W ($0000)                             ; $8DC520 |

PTR16_8DC523:
  dw CODE_8DC529                            ; $8DC523 |
  dw CODE_8DC576                            ; $8DC525 |
  dw CODE_8DC596                            ; $8DC527 |

CODE_8DC529:
  LDA.W #$00FF                              ; $8DC529 |
  STA.B $46                                 ; $8DC52C |
  JSL.L CODE_FL_84C579                      ; $8DC52E |
  JSL.L CODE_FL_808302                      ; $8DC532 |
  JSL.L CODE_FL_80887C                      ; $8DC536 |
  JSL.L CODE_FL_80977D                      ; $8DC53A |
  JSL.L CODE_FL_808808                      ; $8DC53E |
  LDA.W #$0000                              ; $8DC542 |
  STA.B $5C                                 ; $8DC545 |
  SEP #$20                                  ; $8DC547 |
  LDA.B #$22                                ; $8DC549 |
  STA.W $210B                               ; $8DC54B |
  LDA.B #$44                                ; $8DC54E |
  STA.W $210C                               ; $8DC550 |
  REP #$20                                  ; $8DC553 |
  JSL.L CODE_FL_80BEC7                      ; $8DC555 |
  JSL.L CODE_FL_808CB3                      ; $8DC559 |
  JSL.L CODE_FL_808BC2                      ; $8DC55D |
  LDY.W #$8183                              ; $8DC561 |
  JSL.L CODE_FL_808D78                      ; $8DC564 |
  LDY.W #$81F7                              ; $8DC568 |
  JSL.L CODE_FL_808DBE                      ; $8DC56B |
  JSL.L CODE_FL_808D45                      ; $8DC56F |
  INC.B $3C                                 ; $8DC573 |
  RTL                                       ; $8DC575 |

CODE_8DC576:
  LDA.W #$00FF                              ; $8DC576 |
  STA.B $46                                 ; $8DC579 |
  LDX.W #DATA_888051                        ; $8DC57B |
  JSL.L sound_transfer_blocks               ; $8DC57E |
  LDY.W #$B8D0                              ; $8DC582 |
  JSL.L CODE_FL_80C27C                      ; $8DC585 |
  JSR.W CODE_FN_8DCFF9                      ; $8DC589 |
  LDY.W #$0064                              ; $8DC58C |
  JSL.L set_music                           ; $8DC58F |
  INC.B $3C                                 ; $8DC593 |
  RTL                                       ; $8DC595 |

CODE_8DC596:
  LDA.W $1C00                               ; $8DC596 |
  BEQ CODE_8DC5B5                           ; $8DC599 |
  LDA.W $1C3E                               ; $8DC59B |
  BEQ CODE_8DC5A5                           ; $8DC59E |
  DEC.W $1C3E                               ; $8DC5A0 |
  BNE CODE_8DC5B5                           ; $8DC5A3 |

CODE_8DC5A5:
  LDA.B $36                                 ; $8DC5A5 |
  BIT.W #$9000                              ; $8DC5A7 |
  BEQ CODE_8DC5B5                           ; $8DC5AA |
  LDA.W $1C3A                               ; $8DC5AC |
  BNE CODE_8DC5B5                           ; $8DC5AF |
  JSL.L CODE_FL_8DC60D                      ; $8DC5B1 |

CODE_8DC5B5:
  JSL.L CODE_FL_8DC621                      ; $8DC5B5 |
  JSL.L CODE_FL_8DD015                      ; $8DC5B9 |
  JSL.L CODE_FL_8DCFC8                      ; $8DC5BD |
  LDA.W $1C00                               ; $8DC5C1 |
  PHX                                       ; $8DC5C4 |
  ASL A                                     ; $8DC5C5 |
  TAX                                       ; $8DC5C6 |
  LDA.L PTR16_8DC5D1,X                      ; $8DC5C7 |
  PLX                                       ; $8DC5CB |
  STA.B $00                                 ; $8DC5CC |
  JMP.W ($0000)                             ; $8DC5CE |

PTR16_8DC5D1:
  dw CODE_8DC631                            ; $8DC5D1 |
  dw CODE_8DC6A5                            ; $8DC5D3 |
  dw CODE_8DC603                            ; $8DC5D5 |
  dw CODE_8DC6E8                            ; $8DC5D7 |
  dw CODE_8DC71B                            ; $8DC5D9 |
  dw CODE_8DC771                            ; $8DC5DB |
  dw CODE_8DC78C                            ; $8DC5DD |
  dw CODE_8DC7F9                            ; $8DC5DF |
  dw CODE_8DC882                            ; $8DC5E1 |
  dw CODE_8DC8C2                            ; $8DC5E3 |
  dw CODE_8DC947                            ; $8DC5E5 |
  dw CODE_8DC9BD                            ; $8DC5E7 |
  dw CODE_8DC603                            ; $8DC5E9 |
  dw CODE_8DCA6F                            ; $8DC5EB |
  dw CODE_8DC603                            ; $8DC5ED |
  dw CODE_8DCCEF                            ; $8DC5EF |
  dw CODE_8DCD05                            ; $8DC5F1 |
  dw CODE_8DCD1C                            ; $8DC5F3 |
  dw CODE_8DCD48                            ; $8DC5F5 |
  dw CODE_8DCD65                            ; $8DC5F7 |
  dw CODE_8DCDB2                            ; $8DC5F9 |
  dw CODE_8DC603                            ; $8DC5FB |
  dw CODE_8DCDDE                            ; $8DC5FD |
  dw CODE_8DCF0E                            ; $8DC5FF |
  dw CODE_8DC60C                            ; $8DC601 |

CODE_8DC603:
  DEC.W $1C16                               ; $8DC603 |
  BPL CODE_8DC60B                           ; $8DC606 |
  INC.W $1C00                               ; $8DC608 |

CODE_8DC60B:
  RTL                                       ; $8DC60B |

CODE_8DC60C:
  RTL                                       ; $8DC60C |

CODE_FL_8DC60D:
  LDA.W $1C3A                               ; $8DC60D |
  BNE CODE_8DC620                           ; $8DC610 |
  INC.W $1C3A                               ; $8DC612 |
  JSL.L CODE_FL_84C591                      ; $8DC615 |
  LDA.W #$0049                              ; $8DC619 |
  JSL.L push_sound_queue                    ; $8DC61C |

CODE_8DC620:
  RTL                                       ; $8DC620 |

CODE_FL_8DC621:
  LDA.W $1C3A                               ; $8DC621 |
  BEQ CODE_8DC630                           ; $8DC624 |
  DEC.W $1FA0                               ; $8DC626 |
  BNE CODE_8DC630                           ; $8DC629 |
  LDA.W #$0001                              ; $8DC62B |
  STA.B $3E                                 ; $8DC62E |

CODE_8DC630:
  RTL                                       ; $8DC630 |

CODE_8DC631:
  LDA.W #$00C0                              ; $8DC631 |
  STA.W $1C0E                               ; $8DC634 |
  LDA.W #$C000                              ; $8DC637 |
  STA.W $1C10                               ; $8DC63A |
  LDA.W #$0190                              ; $8DC63D |
  STA.W $1C12                               ; $8DC640 |
  LDY.W #$D6B4                              ; $8DC643 |
  JSL.L CODE_FL_8DD0FA                      ; $8DC646 |
  LDY.W #$D714                              ; $8DC64A |
  JSL.L CODE_FL_8DD0FA                      ; $8DC64D |
  LDA.W #$0090                              ; $8DC651 |
  STA.B $3A,X                               ; $8DC654 |
  JSR.W CODE_FN_8DD0DD                      ; $8DC656 |
  LDY.W #$D720                              ; $8DC659 |
  JSL.L CODE_FL_8DD0FA                      ; $8DC65C |
  LDA.W #$0060                              ; $8DC660 |
  STA.B $3A,X                               ; $8DC663 |
  JSR.W CODE_FN_8DD0DD                      ; $8DC665 |
  LDY.W #$D72C                              ; $8DC668 |
  JSL.L CODE_FL_8DD0FA                      ; $8DC66B |
  LDA.W #$0030                              ; $8DC66F |
  STA.B $3A,X                               ; $8DC672 |
  JSR.W CODE_FN_8DD0DD                      ; $8DC674 |
  LDY.W #$D738                              ; $8DC677 |
  JSL.L CODE_FL_8DD0FA                      ; $8DC67A |
  LDA.W #$0001                              ; $8DC67E |
  STA.B $3A,X                               ; $8DC681 |
  JSR.W CODE_FN_8DD0DD                      ; $8DC683 |
  LDA.W #$018F                              ; $8DC686 |
  STA.W $1672                               ; $8DC689 |
  LDA.W #$0000                              ; $8DC68C |
  STA.W $1FAC                               ; $8DC68F |
  LDA.W #$0014                              ; $8DC692 |
  STA.W $1FAE                               ; $8DC695 |
  INC.W $1C02                               ; $8DC698 |
  LDA.W #$0001                              ; $8DC69B |
  STA.W $1C04                               ; $8DC69E |
  INC.W $1C00                               ; $8DC6A1 |
  RTL                                       ; $8DC6A4 |

CODE_8DC6A5:
  LDA.B $42                                 ; $8DC6A5 |
  AND.W #$0001                              ; $8DC6A7 |
  BNE CODE_8DC6BB                           ; $8DC6AA |
  LDA.W $1C10                               ; $8DC6AC |
  CMP.W #$E000                              ; $8DC6AF |
  BCS CODE_8DC6BB                           ; $8DC6B2 |
  CLC                                       ; $8DC6B4 |
  ADC.W #$00B0                              ; $8DC6B5 |
  STA.W $1C10                               ; $8DC6B8 |

CODE_8DC6BB:
  JSL.L CODE_FL_8DC6F7                      ; $8DC6BB |
  LDA.W $1672                               ; $8DC6BF |
  CLC                                       ; $8DC6C2 |
  ADC.W #$0001                              ; $8DC6C3 |
  STA.W $1672                               ; $8DC6C6 |
  LDA.W $0E4D                               ; $8DC6C9 |
  SEC                                       ; $8DC6CC |
  SBC.W #$0001                              ; $8DC6CD |
  STA.W $0E4D                               ; $8DC6D0 |
  CMP.W #$0040                              ; $8DC6D3 |
  BCS CODE_8DC6E7                           ; $8DC6D6 |
  LDA.W #$0040                              ; $8DC6D8 |
  STA.W $0E4D                               ; $8DC6DB |
  LDA.W #$0010                              ; $8DC6DE |
  STA.W $1C16                               ; $8DC6E1 |
  INC.W $1C00                               ; $8DC6E4 |

CODE_8DC6E7:
  RTL                                       ; $8DC6E7 |

CODE_8DC6E8:
  LDA.W $1C12                               ; $8DC6E8 |
  CMP.W #$0160                              ; $8DC6EB |
  BCC CODE_8DC710                           ; $8DC6EE |
  SEC                                       ; $8DC6F0 |
  SBC.W #$0002                              ; $8DC6F1 |
  STA.W $1C12                               ; $8DC6F4 |

CODE_FL_8DC6F7:
  LDX.W #$0BC0                              ; $8DC6F7 |
  JSR.W CODE_FN_8DD0DD                      ; $8DC6FA |
  LDX.W #$0C10                              ; $8DC6FD |
  JSR.W CODE_FN_8DD0DD                      ; $8DC700 |
  LDX.W #$0C60                              ; $8DC703 |
  JSR.W CODE_FN_8DD0DD                      ; $8DC706 |
  LDX.W #$0CB0                              ; $8DC709 |
  JSR.W CODE_FN_8DD0DD                      ; $8DC70C |
  RTL                                       ; $8DC70F |

CODE_8DC710:
  LDA.W #$00A0                              ; $8DC710 |
  JSL.L CODE_FL_8089BD                      ; $8DC713 |
  INC.W $1C00                               ; $8DC717 |
  RTL                                       ; $8DC71A |

CODE_8DC71B:
  JSR.W CODE_FN_8DC757                      ; $8DC71B |
  LDX.W #$0B70                              ; $8DC71E |
  LDA.W #$1090                              ; $8DC721 |
  STA.B $04,X                               ; $8DC724 |
  LDA.W $0BC9                               ; $8DC726 |
  STA.B $09,X                               ; $8DC729 |
  LDA.W $0BCD                               ; $8DC72B |
  STA.B $0D,X                               ; $8DC72E |
  INC.W $003C,X                             ; $8DC730 |
  LDA.W $003C,X                             ; $8DC733 |
  CMP.W #$0008                              ; $8DC736 |
  BNE CODE_8DC741                           ; $8DC739 |
  STZ.W $003C,X                             ; $8DC73B |
  INC.W $003E,X                             ; $8DC73E |

CODE_8DC741:
  LDA.W $003E,X                             ; $8DC741 |
  ASL A                                     ; $8DC744 |
  TAY                                       ; $8DC745 |
  LDA.W LOOSE_OP_00D852,Y                   ; $8DC746 |
  STA.B $00,X                               ; $8DC749 |
  BNE CODE_8DC756                           ; $8DC74B |
  LDA.W #$0000                              ; $8DC74D |
  STA.W $1C16                               ; $8DC750 |
  INC.W $1C00                               ; $8DC753 |

CODE_8DC756:
  RTL                                       ; $8DC756 |

CODE_FN_8DC757:
  LDY.W #$0082                              ; $8DC757 |
  LDX.W #$01FE                              ; $8DC75A |
  LDA.B $42                                 ; $8DC75D |
  AND.W #$0001                              ; $8DC75F |
  BEQ CODE_8DC76A                           ; $8DC762 |
  LDY.W #$007E                              ; $8DC764 |
  LDX.W #$0002                              ; $8DC767 |

CODE_8DC76A:
  STY.W $0E49                               ; $8DC76A |
  STX.W $1662                               ; $8DC76D |
  RTS                                       ; $8DC770 |

CODE_8DC771:
  JSR.W CODE_FN_8DC757                      ; $8DC771 |
  LDA.W $1C12                               ; $8DC774 |
  CMP.W #$0180                              ; $8DC777 |
  BCS CODE_8DC788                           ; $8DC77A |
  CLC                                       ; $8DC77C |
  ADC.W #$0002                              ; $8DC77D |
  STA.W $1C12                               ; $8DC780 |
  JSL.L CODE_FL_8DC6F7                      ; $8DC783 |
  RTL                                       ; $8DC787 |

CODE_8DC788:
  INC.W $1C00                               ; $8DC788 |
  RTL                                       ; $8DC78B |

CODE_8DC78C:
  STZ.W $1662                               ; $8DC78C |
  LDX.W #$0E40                              ; $8DC78F |
  STZ.W $1C18                               ; $8DC792 |
  STZ.B $10                                 ; $8DC795 |

CODE_8DC797:
  JSL.L CODE_FL_8DC7A4                      ; $8DC797 |
  JSR.W CODE_FN_8DD154                      ; $8DC79B |
  CPX.W #$1020                              ; $8DC79E |
  BNE CODE_8DC797                           ; $8DC7A1 |
  RTL                                       ; $8DC7A3 |

CODE_FL_8DC7A4:
  LDA.B $1A,X                               ; $8DC7A4 |
  PHX                                       ; $8DC7A6 |
  ASL A                                     ; $8DC7A7 |
  TAX                                       ; $8DC7A8 |
  LDA.L PTR16_8DC7B3,X                      ; $8DC7A9 |
  PLX                                       ; $8DC7AD |
  STA.B $00                                 ; $8DC7AE |
  JMP.W ($0000)                             ; $8DC7B0 |

PTR16_8DC7B3:
  dw CODE_8DC7B9                            ; $8DC7B3 |
  dw CODE_8DC7D8                            ; $8DC7B5 |
  dw CODE_8DC7E3                            ; $8DC7B7 |

CODE_8DC7B9:
  LDY.W $1C18                               ; $8DC7B9 |
  LDA.W CODE_00D6C0,Y                       ; $8DC7BC |
  TAY                                       ; $8DC7BF |
  JSL.L CODE_FL_8DD0FA                      ; $8DC7C0 |
  CPX.W #$0F30                              ; $8DC7C4 |
  BCS CODE_8DC7D0                           ; $8DC7C7 |
  LDA.B $04,X                               ; $8DC7C9 |
  ORA.W #$2020                              ; $8DC7CB |
  STA.B $04,X                               ; $8DC7CE |

CODE_8DC7D0:
  LDA.W #$0020                              ; $8DC7D0 |
  STA.B $3C,X                               ; $8DC7D3 |
  INC.B $1A,X                               ; $8DC7D5 |
  RTL                                       ; $8DC7D7 |

CODE_8DC7D8:
  JSL.L CODE_FL_8DD139                      ; $8DC7D8 |
  DEC.B $3C,X                               ; $8DC7DC |
  BNE CODE_8DC7E2                           ; $8DC7DE |
  INC.B $1A,X                               ; $8DC7E0 |

CODE_8DC7E2:
  RTL                                       ; $8DC7E2 |

CODE_8DC7E3:
  INC.B $10                                 ; $8DC7E3 |
  LDA.B $10                                 ; $8DC7E5 |
  CMP.W #$0006                              ; $8DC7E7 |
  BNE CODE_8DC7F8                           ; $8DC7EA |
  PHX                                       ; $8DC7EC |
  LDY.W #$B8E0                              ; $8DC7ED |
  JSL.L CODE_FL_80C27C                      ; $8DC7F0 |
  PLX                                       ; $8DC7F4 |
  INC.W $1C00                               ; $8DC7F5 |

CODE_8DC7F8:
  RTL                                       ; $8DC7F8 |

CODE_8DC7F9:
  LDX.W #$0D00                              ; $8DC7F9 |
  STZ.W $1C18                               ; $8DC7FC |

CODE_8DC7FF:
  JSL.L CODE_FL_8DC81D                      ; $8DC7FF |
  JSR.W CODE_FN_8DD154                      ; $8DC803 |
  CPX.W #$0E40                              ; $8DC806 |
  BNE CODE_8DC7FF                           ; $8DC809 |
  LDA.W $0D0D                               ; $8DC80B |
  CMP.W #$00C0                              ; $8DC80E |
  BCC CODE_8DC81C                           ; $8DC811 |
  LDA.W #$0002                              ; $8DC813 |
  STA.W $1C04                               ; $8DC816 |
  INC.W $1C00                               ; $8DC819 |

CODE_8DC81C:
  RTL                                       ; $8DC81C |

CODE_FL_8DC81D:
  LDA.B $1A,X                               ; $8DC81D |
  PHX                                       ; $8DC81F |
  ASL A                                     ; $8DC820 |
  TAX                                       ; $8DC821 |
  LDA.L PTR16_8DC82C,X                      ; $8DC822 |
  PLX                                       ; $8DC826 |
  STA.B $00                                 ; $8DC827 |
  JMP.W ($0000)                             ; $8DC829 |

PTR16_8DC82C:
  dw CODE_8DC832                            ; $8DC82C |
  dw CODE_8DC848                            ; $8DC82E |
  dw CODE_8DC881                            ; $8DC830 |

CODE_8DC832:
  LDY.W $1C18                               ; $8DC832 |
  LDA.W LOOSE_OP_00D77C,Y                   ; $8DC835 |
  TAY                                       ; $8DC838 |
  JSL.L CODE_FL_8DD0FA                      ; $8DC839 |
  LDY.W $1C18                               ; $8DC83D |
  LDA.W LOOSE_OP_00D85A,Y                   ; $8DC840 |
  STA.B $3C,X                               ; $8DC843 |
  INC.B $1A,X                               ; $8DC845 |
  RTL                                       ; $8DC847 |

CODE_8DC848:
  DEC.B $3C,X                               ; $8DC848 |
  BPL CODE_8DC880                           ; $8DC84A |
  JSL.L CODE_FL_8DD139                      ; $8DC84C |
  LDA.B $2A,X                               ; $8DC850 |
  CLC                                       ; $8DC852 |
  ADC.W #$0040                              ; $8DC853 |
  STA.B $2A,X                               ; $8DC856 |
  LDA.B $2C,X                               ; $8DC858 |
  ADC.W #$0000                              ; $8DC85A |
  STA.B $2C,X                               ; $8DC85D |
  LDA.B $09,X                               ; $8DC85F |
  CMP.W #$0090                              ; $8DC861 |
  BCS CODE_8DC880                           ; $8DC864 |
  LDA.W #$0080                              ; $8DC866 |
  STA.B $02,X                               ; $8DC869 |
  LDA.B $00,X                               ; $8DC86B |
  STA.W $0320,X                             ; $8DC86D |
  LDA.B $09,X                               ; $8DC870 |
  STA.W $0329,X                             ; $8DC872 |
  LDA.B $0D,X                               ; $8DC875 |
  STA.W $032D,X                             ; $8DC877 |
  LDA.W #$0888                              ; $8DC87A |
  STA.W $0324,X                             ; $8DC87D |

CODE_8DC880:
  RTL                                       ; $8DC880 |

CODE_8DC881:
  RTL                                       ; $8DC881 |

CODE_8DC882:
  LDA.W $1C04                               ; $8DC882 |
  BNE CODE_8DC8C1                           ; $8DC885 |
  JSL.L CODE_FL_80887C                      ; $8DC887 |
  LDA.W #$0018                              ; $8DC88B |
  STA.W $1FAE                               ; $8DC88E |
  LDA.W #$0054                              ; $8DC891 |
  STA.W $1FB0                               ; $8DC894 |
  LDA.W #$0014                              ; $8DC897 |
  STA.W $1FBE                               ; $8DC89A |
  LDA.W #$0001                              ; $8DC89D |
  STA.W $1C04                               ; $8DC8A0 |
  LDA.W #$FFFF                              ; $8DC8A3 |
  STA.W $1C02                               ; $8DC8A6 |
  LDY.W #$B8F0                              ; $8DC8A9 |
  JSL.L CODE_FL_80C277                      ; $8DC8AC |
  LDY.W #$B94C                              ; $8DC8B0 |
  JSL.L CODE_FL_80C27C                      ; $8DC8B3 |
  LDA.W #$0029                              ; $8DC8B7 |
  JSL.L push_sound_queue                    ; $8DC8BA |
  INC.W $1C00                               ; $8DC8BE |

CODE_8DC8C1:
  RTL                                       ; $8DC8C1 |

CODE_8DC8C2:
  LDA.W $1C04                               ; $8DC8C2 |
  BNE CODE_8DC8DC                           ; $8DC8C5 |
  JSL.L CODE_FL_8DC8DD                      ; $8DC8C7 |
  LDA.W $0DFD                               ; $8DC8CB |
  CMP.W #$0090                              ; $8DC8CE |
  BCC CODE_8DC8DC                           ; $8DC8D1 |
  LDA.W #$0002                              ; $8DC8D3 |
  STA.W $1C04                               ; $8DC8D6 |
  INC.W $1C00                               ; $8DC8D9 |

CODE_8DC8DC:
  RTL                                       ; $8DC8DC |

CODE_FL_8DC8DD:
  LDX.W #$0D00                              ; $8DC8DD |
  STZ.W $1C18                               ; $8DC8E0 |

CODE_8DC8E3:
  JSL.L CODE_FL_8DC8F0                      ; $8DC8E3 |
  JSR.W CODE_FN_8DD154                      ; $8DC8E7 |
  CPX.W #$0E40                              ; $8DC8EA |
  BNE CODE_8DC8E3                           ; $8DC8ED |
  RTL                                       ; $8DC8EF |

CODE_FL_8DC8F0:
  LDA.B $1A,X                               ; $8DC8F0 |
  PHX                                       ; $8DC8F2 |
  ASL A                                     ; $8DC8F3 |
  TAX                                       ; $8DC8F4 |
  LDA.L PTR16_8DC8FF,X                      ; $8DC8F5 |
  PLX                                       ; $8DC8F9 |
  STA.B $00                                 ; $8DC8FA |
  JMP.W ($0000)                             ; $8DC8FC |

PTR16_8DC8FF:
  dw CODE_8DC903                            ; $8DC8FF |
  dw CODE_8DC92A                            ; $8DC901 |

CODE_8DC903:
  LDY.W $1C18                               ; $8DC903 |
  STY.B $3A,X                               ; $8DC906 |
  LDA.W LOOSE_OP_00D744,Y                   ; $8DC908 |
  TAY                                       ; $8DC90B |
  JSR.W CODE_FN_8DC9B3                      ; $8DC90C |
  JSL.L CODE_FL_8DD0FA                      ; $8DC90F |
  LDA.W #$C684                              ; $8DC913 |
  JSL.L CODE_FL_8B8208                      ; $8DC916 |
  LDY.W $1C18                               ; $8DC91A |
  LDA.W CODE_00D896,Y                       ; $8DC91D |
  STA.B $06,X                               ; $8DC920 |
  LDA.W CODE_00D862,Y                       ; $8DC922 |
  STA.B $02,X                               ; $8DC925 |
  INC.B $1A,X                               ; $8DC927 |
  RTL                                       ; $8DC929 |

CODE_8DC92A:
  JSL.L CODE_FL_8DD139                      ; $8DC92A |
  DEC.B $3C,X                               ; $8DC92E |
  BPL CODE_8DC946                           ; $8DC930 |
  LDA.W #$0002                              ; $8DC932 |
  STA.B $3C,X                               ; $8DC935 |
  LDA.B $3E,X                               ; $8DC937 |
  EOR.W #$0002                              ; $8DC939 |
  STA.B $3E,X                               ; $8DC93C |
  TAY                                       ; $8DC93E |
  LDA.W LOOSE_OP_00D892,Y                   ; $8DC93F |
  JSL.L CODE_FL_8B8208                      ; $8DC942 |

CODE_8DC946:
  RTL                                       ; $8DC946 |

CODE_8DC947:
  JSL.L CODE_FL_8DC8DD                      ; $8DC947 |
  LDA.W $1C04                               ; $8DC94B |
  BNE CODE_8DC9B2                           ; $8DC94E |
  LDA.W #$000C                              ; $8DC950 |
  STA.W $1FAE                               ; $8DC953 |
  LDA.W #$0012                              ; $8DC956 |
  STA.W $1FBE                               ; $8DC959 |
  STZ.W $1FDE                               ; $8DC95C |
  STZ.W $1692                               ; $8DC95F |
  JSL.L CODE_FL_80887C                      ; $8DC962 |
  LDA.W #$0001                              ; $8DC966 |
  STA.W $1C04                               ; $8DC969 |
  LDA.W #$0082                              ; $8DC96C |
  STA.W $1C1A                               ; $8DC96F |
  LDA.W #$0070                              ; $8DC972 |
  STA.W $1C1C                               ; $8DC975 |
  LDA.W #$0040                              ; $8DC978 |
  STA.W $1C1E                               ; $8DC97B |
  JSL.L CODE_FL_8DCC2D                      ; $8DC97E |
  STZ.W $1C02                               ; $8DC982 |
  LDY.W #$B8F7                              ; $8DC985 |
  JSL.L CODE_FL_80C27C                      ; $8DC988 |
  LDY.W #$D7B4                              ; $8DC98C |
  JSR.W CODE_FN_8DC9B3                      ; $8DC98F |
  LDY.W #$D7C0                              ; $8DC992 |
  JSR.W CODE_FN_8DC9B3                      ; $8DC995 |
  LDY.W #$D7CC                              ; $8DC998 |
  JSR.W CODE_FN_8DC9B3                      ; $8DC99B |
  LDY.W #$D7D8                              ; $8DC99E |
  JSR.W CODE_FN_8DC9B3                      ; $8DC9A1 |
  LDA.W #$0001                              ; $8DC9A4 |
  STA.B $5C                                 ; $8DC9A7 |
  LDA.W #$0030                              ; $8DC9A9 |
  STA.W $1C14                               ; $8DC9AC |
  INC.W $1C00                               ; $8DC9AF |

CODE_8DC9B2:
  RTL                                       ; $8DC9B2 |

CODE_FN_8DC9B3:
  JSL.L CODE_FL_8DD0FA                      ; $8DC9B3 |
  LDA.W $0149,X                             ; $8DC9B7 |
  STA.B $09,X                               ; $8DC9BA |
  RTS                                       ; $8DC9BC |

CODE_8DC9BD:
  DEC.W $1C14                               ; $8DC9BD |
  BPL CODE_8DC9D4                           ; $8DC9C0 |
  LDX.W #$0D00                              ; $8DC9C2 |
  STZ.W $1C18                               ; $8DC9C5 |

CODE_8DC9C8:
  JSL.L CODE_FL_8DC9D5                      ; $8DC9C8 |
  JSR.W CODE_FN_8DD154                      ; $8DC9CC |
  CPX.W #$0E40                              ; $8DC9CF |
  BNE CODE_8DC9C8                           ; $8DC9D2 |

CODE_8DC9D4:
  RTL                                       ; $8DC9D4 |

CODE_FL_8DC9D5:
  LDA.B $1A,X                               ; $8DC9D5 |
  PHX                                       ; $8DC9D7 |
  ASL A                                     ; $8DC9D8 |
  TAX                                       ; $8DC9D9 |
  LDA.L PTR16_8DC9E4,X                      ; $8DC9DA |
  PLX                                       ; $8DC9DE |
  STA.B $00                                 ; $8DC9DF |
  JMP.W ($0000)                             ; $8DC9E1 |

PTR16_8DC9E4:
  dw CODE_8DC9EC                            ; $8DC9E4 |
  dw CODE_8DCA32                            ; $8DC9E6 |
  dw CODE_8DCA4E                            ; $8DC9E8 |
  dw CODE_8DCA5A                            ; $8DC9EA |

CODE_8DC9EC:
  LDA.W #$1898                              ; $8DC9EC |
  STA.B $04,X                               ; $8DC9EF |
  JSL.L CODE_FL_8DD139                      ; $8DC9F1 |
  LDA.W $0154,X                             ; $8DC9F5 |
  STA.B $14,X                               ; $8DC9F8 |
  LDA.W $0144,X                             ; $8DC9FA |
  STA.B $04,X                               ; $8DC9FD |
  LDA.B $0D,X                               ; $8DC9FF |
  BMI CODE_8DCA31                           ; $8DCA01 |
  LDA.W $014D,X                             ; $8DCA03 |
  CMP.B $0D,X                               ; $8DCA06 |
  BCS CODE_8DCA31                           ; $8DCA08 |
  STA.B $0D,X                               ; $8DCA0A |
  INC.B $1A,X                               ; $8DCA0C |
  LDA.W #$0300                              ; $8DCA0E |
  STA.B $2A,X                               ; $8DCA11 |
  LDA.W #$0004                              ; $8DCA13 |
  STA.W $003E,X                             ; $8DCA16 |
  LDY.W $1C18                               ; $8DCA19 |
  LDA.W CODE_00D8B7,Y                       ; $8DCA1C |
  STA.B $00,X                               ; $8DCA1F |
  STZ.W $0140,X                             ; $8DCA21 |
  LDA.W #$0001                              ; $8DCA24 |
  STA.W $1C24                               ; $8DCA27 |
  LDA.W #$0044                              ; $8DCA2A |
  JSL.L CODE_FL_8089BD                      ; $8DCA2D |

CODE_8DCA31:
  RTL                                       ; $8DCA31 |

CODE_8DCA32:
  JSL.L CODE_FL_8DD139                      ; $8DCA32 |
  DEC.W $003E,X                             ; $8DCA36 |
  BNE CODE_8DCA4D                           ; $8DCA39 |
  LDA.W #$0004                              ; $8DCA3B |
  STA.W $003E,X                             ; $8DCA3E |
  LDA.W #$FD00                              ; $8DCA41 |
  STA.B $2A,X                               ; $8DCA44 |
  LDA.W #$FFFF                              ; $8DCA46 |
  STA.B $2C,X                               ; $8DCA49 |
  INC.B $1A,X                               ; $8DCA4B |

CODE_8DCA4D:
  RTL                                       ; $8DCA4D |

CODE_8DCA4E:
  JSL.L CODE_FL_8DD139                      ; $8DCA4E |
  DEC.W $003E,X                             ; $8DCA52 |
  BNE CODE_8DCA59                           ; $8DCA55 |
  INC.B $1A,X                               ; $8DCA57 |

CODE_8DCA59:
  RTL                                       ; $8DCA59 |

CODE_8DCA5A:
  CPX.W #$0DF0                              ; $8DCA5A |
  BNE CODE_8DCA6E                           ; $8DCA5D |
  INC.W $1C00                               ; $8DCA5F |
  LDA.W #$0020                              ; $8DCA62 |
  STA.W $1C16                               ; $8DCA65 |
  STZ.W $1694                               ; $8DCA68 |
  STZ.W $1696                               ; $8DCA6B |

CODE_8DCA6E:
  RTL                                       ; $8DCA6E |

CODE_8DCA6F:
  JSL.L CODE_FL_8DCA78                      ; $8DCA6F |
  JSL.L CODE_FL_8DCB53                      ; $8DCA73 |
  RTL                                       ; $8DCA77 |

CODE_FL_8DCA78:
  LDA.W $1C26                               ; $8DCA78 |
  CMP.W #$0003                              ; $8DCA7B |
  BCS CODE_8DCAB1                           ; $8DCA7E |
  LDA.W $1690                               ; $8DCA80 |
  CLC                                       ; $8DCA83 |
  ADC.W $1694                               ; $8DCA84 |
  STA.W $1690                               ; $8DCA87 |
  LDA.W $1692                               ; $8DCA8A |
  ADC.W $1696                               ; $8DCA8D |
  STA.W $1692                               ; $8DCA90 |
  LDA.W $1694                               ; $8DCA93 |
  SEC                                       ; $8DCA96 |
  SBC.W #$0400                              ; $8DCA97 |
  STA.W $1694                               ; $8DCA9A |
  LDA.W $1696                               ; $8DCA9D |
  SBC.W #$0000                              ; $8DCAA0 |
  STA.W $1696                               ; $8DCAA3 |
  CMP.W #$FFFB                              ; $8DCAA6 |
  BCS CODE_8DCAB1                           ; $8DCAA9 |
  LDA.W #$FFFB                              ; $8DCAAB |
  STA.W $1696                               ; $8DCAAE |

CODE_8DCAB1:
  LDA.W $1C26                               ; $8DCAB1 |
  PHX                                       ; $8DCAB4 |
  ASL A                                     ; $8DCAB5 |
  TAX                                       ; $8DCAB6 |
  LDA.L PTR16_8DCAC1,X                      ; $8DCAB7 |
  PLX                                       ; $8DCABB |
  STA.B $00                                 ; $8DCABC |
  JMP.W ($0000)                             ; $8DCABE |

PTR16_8DCAC1:
  dw CODE_8DCAC9                            ; $8DCAC1 |
  dw CODE_8DCAF3                            ; $8DCAC3 |
  dw CODE_8DCB0C                            ; $8DCAC5 |
  dw CODE_8DCB22                            ; $8DCAC7 |

CODE_8DCAC9:
  LDA.W $1692                               ; $8DCAC9 |
  BEQ CODE_8DCAE3                           ; $8DCACC |
  CMP.W #$FC00                              ; $8DCACE |
  BCS CODE_8DCAE3                           ; $8DCAD1 |
  SEC                                       ; $8DCAD3 |
  SBC.W #$0100                              ; $8DCAD4 |
  STA.W $1692                               ; $8DCAD7 |
  LDA.W #$000A                              ; $8DCADA |
  STA.W $1FAE                               ; $8DCADD |
  INC.W $1C26                               ; $8DCAE0 |

CODE_8DCAE3:
  LDA.W $1C3C                               ; $8DCAE3 |
  BNE CODE_8DCAF2                           ; $8DCAE6 |
  INC.W $1C3C                               ; $8DCAE8 |
  LDA.W #$002A                              ; $8DCAEB |
  JSL.L push_sound_queue                    ; $8DCAEE |

CODE_8DCAF2:
  RTL                                       ; $8DCAF2 |

CODE_8DCAF3:
  LDA.W $1692                               ; $8DCAF3 |
  CMP.W #$FA00                              ; $8DCAF6 |
  BCS CODE_8DCB0B                           ; $8DCAF9 |
  SEC                                       ; $8DCAFB |
  SBC.W #$0100                              ; $8DCAFC |
  STA.W $1692                               ; $8DCAFF |
  LDA.W #$0006                              ; $8DCB02 |
  STA.W $1FAE                               ; $8DCB05 |
  INC.W $1C26                               ; $8DCB08 |

CODE_8DCB0B:
  RTL                                       ; $8DCB0B |

CODE_8DCB0C:
  LDA.W $1692                               ; $8DCB0C |
  CMP.W #$F800                              ; $8DCB0F |
  BCS CODE_8DCB21                           ; $8DCB12 |
  STA.W $1C2A                               ; $8DCB14 |
  LDA.W #$002B                              ; $8DCB17 |
  JSL.L push_sound_queue                    ; $8DCB1A |
  INC.W $1C26                               ; $8DCB1E |

CODE_8DCB21:
  RTL                                       ; $8DCB21 |

CODE_8DCB22:
  LDY.W #$0002                              ; $8DCB22 |
  LDA.W $1C2C                               ; $8DCB25 |
  AND.W #$0002                              ; $8DCB28 |
  BEQ CODE_8DCB30                           ; $8DCB2B |
  LDY.W #$0000                              ; $8DCB2D |

CODE_8DCB30:
  TYA                                       ; $8DCB30 |
  CLC                                       ; $8DCB31 |
  ADC.W $1C2A                               ; $8DCB32 |
  STA.W $1692                               ; $8DCB35 |
  INC.W $1C2C                               ; $8DCB38 |
  LDA.W $1C2C                               ; $8DCB3B |
  CMP.W #$0010                              ; $8DCB3E |
  BNE CODE_8DCB52                           ; $8DCB41 |
  LDA.W $1C2A                               ; $8DCB43 |
  STA.W $1692                               ; $8DCB46 |
  INC.W $1C00                               ; $8DCB49 |
  LDA.W #$0020                              ; $8DCB4C |
  STA.W $1C16                               ; $8DCB4F |

CODE_8DCB52:
  RTL                                       ; $8DCB52 |

CODE_FL_8DCB53:
  JSL.L CODE_FL_8DCBFF                      ; $8DCB53 |
  JSL.L CODE_FL_8DCC2D                      ; $8DCB57 |
  LDX.W #$0D00                              ; $8DCB5B |
  STZ.W $1C18                               ; $8DCB5E |
  STZ.W $1C20                               ; $8DCB61 |

CODE_8DCB64:
  JSL.L CODE_FL_8DCB71                      ; $8DCB64 |
  JSR.W CODE_FN_8DD154                      ; $8DCB68 |
  CPX.W #$0E40                              ; $8DCB6B |
  BNE CODE_8DCB64                           ; $8DCB6E |
  RTL                                       ; $8DCB70 |

CODE_FL_8DCB71:
  LDA.B $40,X                               ; $8DCB71 |
  PHX                                       ; $8DCB73 |
  ASL A                                     ; $8DCB74 |
  TAX                                       ; $8DCB75 |
  LDA.L PTR16_8DCB80,X                      ; $8DCB76 |
  PLX                                       ; $8DCB7A |
  STA.B $00                                 ; $8DCB7B |
  JMP.W ($0000)                             ; $8DCB7D |

PTR16_8DCB80:
  dw CODE_8DCB86                            ; $8DCB80 |
  dw CODE_8DCBE1                            ; $8DCB82 |
  dw CODE_8DCBFE                            ; $8DCB84 |

CODE_8DCB86:
  LDA.W $0144,X                             ; $8DCB86 |
  CMP.B $04,X                               ; $8DCB89 |
  BEQ CODE_8DCB93                           ; $8DCB8B |
  STA.B $04,X                               ; $8DCB8D |
  JSL.L CODE_FL_8DCBAF                      ; $8DCB8F |

CODE_8DCB93:
  LDA.W $0154,X                             ; $8DCB93 |
  STA.B $14,X                               ; $8DCB96 |
  LDA.W $014D,X                             ; $8DCB98 |
  STA.B $0D,X                               ; $8DCB9B |
  LDA.W $0149,X                             ; $8DCB9D |
  STA.B $09,X                               ; $8DCBA0 |
  LDA.W $1692                               ; $8DCBA2 |
  BPL CODE_8DCBAE                           ; $8DCBA5 |
  CMP.W #$F830                              ; $8DCBA7 |
  BCS CODE_8DCBAE                           ; $8DCBAA |
  INC.B $40,X                               ; $8DCBAC |

CODE_8DCBAE:
  RTL                                       ; $8DCBAE |

CODE_FL_8DCBAF:
  LDY.W $1C18                               ; $8DCBAF |
  LDA.B $04,X                               ; $8DCBB2 |
  CMP.W #$1898                              ; $8DCBB4 |
  BNE CODE_8DCBC3                           ; $8DCBB7 |
  LDA.W CODE_00D8BF,Y                       ; $8DCBB9 |
  STA.B $00,X                               ; $8DCBBC |
  LDA.W CODE_00D89E,Y                       ; $8DCBBE |
  BRA CODE_8DCBCB                           ; $8DCBC1 |

CODE_8DCBC3:
  LDA.W LOOSE_OP_00D8C7,Y                   ; $8DCBC3 |
  STA.B $00,X                               ; $8DCBC6 |
  LDA.W LOOSE_OP_00D8A6,Y                   ; $8DCBC8 |

CODE_8DCBCB:
  TAY                                       ; $8DCBCB |
  PHX                                       ; $8DCBCC |
  LDX.W #$1F30                              ; $8DCBCD |
  LDA.W $1C20                               ; $8DCBD0 |
  BEQ CODE_8DCBD8                           ; $8DCBD3 |
  LDX.W #$1F40                              ; $8DCBD5 |

CODE_8DCBD8:
  JSL.L CODE_FL_80C27F                      ; $8DCBD8 |
  INC.W $1C20                               ; $8DCBDC |
  PLX                                       ; $8DCBDF |
  RTL                                       ; $8DCBE0 |

CODE_8DCBE1:
  LDA.W $1F30                               ; $8DCBE1 |
  BNE CODE_8DCBFD                           ; $8DCBE4 |
  LDY.W $1C18                               ; $8DCBE6 |
  LDA.W CODE_00D8BF,Y                       ; $8DCBE9 |
  STA.B $00,X                               ; $8DCBEC |
  LDA.W CODE_00D89E,Y                       ; $8DCBEE |
  TAY                                       ; $8DCBF1 |
  PHX                                       ; $8DCBF2 |
  LDX.W #$1F30                              ; $8DCBF3 |
  JSL.L CODE_FL_80C27F                      ; $8DCBF6 |
  PLX                                       ; $8DCBFA |
  INC.B $40,X                               ; $8DCBFB |

CODE_8DCBFD:
  RTL                                       ; $8DCBFD |

CODE_8DCBFE:
  RTL                                       ; $8DCBFE |

CODE_FL_8DCBFF:
  LDA.W $1C1E                               ; $8DCBFF |
  CMP.W #$0500                              ; $8DCC02 |
  BCS CODE_8DCC0D                           ; $8DCC05 |
  LDA.W #$0001                              ; $8DCC07 |
  STA.W $1C28                               ; $8DCC0A |

CODE_8DCC0D:
  LDA.W $1C23                               ; $8DCC0D |
  AND.W #$00FF                              ; $8DCC10 |
  CLC                                       ; $8DCC13 |
  ADC.W $1C1E                               ; $8DCC14 |
  STA.W $1C1E                               ; $8DCC17 |
  LDA.W $1C22                               ; $8DCC1A |
  CLC                                       ; $8DCC1D |
  ADC.W #$0008                              ; $8DCC1E |
  CMP.W #$0500                              ; $8DCC21 |
  BCC CODE_8DCC29                           ; $8DCC24 |
  LDA.W #$0500                              ; $8DCC26 |

CODE_8DCC29:
  STA.W $1C22                               ; $8DCC29 |
  RTL                                       ; $8DCC2C |

CODE_FL_8DCC2D:
  LDX.W #$0E40                              ; $8DCC2D |
  STZ.W $1C18                               ; $8DCC30 |

CODE_8DCC33:
  LDY.W $1C18                               ; $8DCC33 |
  LDA.W CODE_00D87A,Y                       ; $8DCC36 |
  JSL.L CODE_FL_8DCC92                      ; $8DCC39 |
  JSL.L CODE_FL_8DCCBA                      ; $8DCC3D |
  JSR.W CODE_FN_8DD154                      ; $8DCC41 |
  CPX.W #$0F80                              ; $8DCC44 |
  BNE CODE_8DCC33                           ; $8DCC47 |
  RTL                                       ; $8DCC49 |

CODE_FL_8DCC4A:
  CLC                                       ; $8DCC4A |
  ADC.W $1C1E                               ; $8DCC4B |
  STA.B $12                                 ; $8DCC4E |
  LDY.W $1C18                               ; $8DCC50 |
  LDA.W LOOSE_OP_00D88A,Y                   ; $8DCC53 |
  CMP.B $12                                 ; $8DCC56 |
  BCS CODE_8DCC5C                           ; $8DCC58 |
  STA.B $12                                 ; $8DCC5A |

CODE_8DCC5C:
  LDY.W #$0040                              ; $8DCC5C |
  LDA.B $12                                 ; $8DCC5F |
  AND.W #$01FF                              ; $8DCC61 |
  JSL.L CODE_FL_8AB51A                      ; $8DCC64 |
  LDA.W $1C1A                               ; $8DCC68 |
  CLC                                       ; $8DCC6B |
  ADC.B $01                                 ; $8DCC6C |
  STA.B $14                                 ; $8DCC6E |
  LDY.W $1C18                               ; $8DCC70 |
  LDA.W LOOSE_OP_00D882,Y                   ; $8DCC73 |
  LDY.W #$0020                              ; $8DCC76 |
  CMP.B $12                                 ; $8DCC79 |
  BCS CODE_8DCC80                           ; $8DCC7B |
  LDY.W #$0010                              ; $8DCC7D |

CODE_8DCC80:
  LDA.B $12                                 ; $8DCC80 |
  AND.W #$01FF                              ; $8DCC82 |
  JSL.L CODE_FL_8AB51A                      ; $8DCC85 |
  LDA.W $1C1C                               ; $8DCC89 |
  CLC                                       ; $8DCC8C |
  ADC.B $05                                 ; $8DCC8D |
  STA.B $16                                 ; $8DCC8F |
  RTL                                       ; $8DCC91 |

CODE_FL_8DCC92:
  JSL.L CODE_FL_8DCC4A                      ; $8DCC92 |
  LDA.B $14                                 ; $8DCC96 |
  STA.B $09,X                               ; $8DCC98 |
  LDA.B $16                                 ; $8DCC9A |
  STA.B $0D,X                               ; $8DCC9C |
  LDA.W #$0100                              ; $8DCC9E |
  SEC                                       ; $8DCCA1 |
  SBC.B $0D,X                               ; $8DCCA2 |
  STA.B $14,X                               ; $8DCCA4 |
  RTL                                       ; $8DCCA6 |

CODE_FL_8DCCA7:
  LDA.B $12                                 ; $8DCCA7 |
  AND.W #$01FF                              ; $8DCCA9 |
  CMP.W #$0138                              ; $8DCCAC |
  BCC CODE_8DCCB6                           ; $8DCCAF |
  CMP.W #$01C8                              ; $8DCCB1 |
  BCC CODE_8DCCB8                           ; $8DCCB4 |

CODE_8DCCB6:
  CLC                                       ; $8DCCB6 |
  RTL                                       ; $8DCCB7 |

CODE_8DCCB8:
  SEC                                       ; $8DCCB8 |
  RTL                                       ; $8DCCB9 |

CODE_FL_8DCCBA:
  JSL.L CODE_FL_8DCCA7                      ; $8DCCBA |
  BCC CODE_8DCCD0                           ; $8DCCBE |
  LDA.W $1C24                               ; $8DCCC0 |
  BNE CODE_8DCCCA                           ; $8DCCC3 |
  LDA.W #$308C                              ; $8DCCC5 |
  STA.B $00,X                               ; $8DCCC8 |

CODE_8DCCCA:
  LDA.W #$1090                              ; $8DCCCA |
  STA.B $04,X                               ; $8DCCCD |
  RTL                                       ; $8DCCCF |

CODE_8DCCD0:
  LDA.W $1C24                               ; $8DCCD0 |
  BNE CODE_8DCCDA                           ; $8DCCD3 |
  LDA.W #$3064                              ; $8DCCD5 |
  STA.B $00,X                               ; $8DCCD8 |

CODE_8DCCDA:
  LDA.W #$1898                              ; $8DCCDA |
  STA.B $04,X                               ; $8DCCDD |
  LDY.W $1C18                               ; $8DCCDF |
  LDA.W LOOSE_OP_00D88A,Y                   ; $8DCCE2 |
  CMP.B $12                                 ; $8DCCE5 |
  BNE CODE_8DCCEE                           ; $8DCCE7 |
  LDA.W #$1090                              ; $8DCCE9 |
  STA.B $04,X                               ; $8DCCEC |

CODE_8DCCEE:
  RTL                                       ; $8DCCEE |

CODE_8DCCEF:
  LDA.W #$0058                              ; $8DCCEF |
  STA.W $1FB0                               ; $8DCCF2 |
  LDA.W #$0016                              ; $8DCCF5 |
  STA.W $1FBE                               ; $8DCCF8 |
  STZ.W $1FFA                               ; $8DCCFB |
  STZ.W $16B2                               ; $8DCCFE |
  INC.W $1C00                               ; $8DCD01 |
  RTL                                       ; $8DCD04 |

CODE_8DCD05:
  LDA.W $1FFA                               ; $8DCD05 |
  CLC                                       ; $8DCD08 |
  ADC.W #$0001                              ; $8DCD09 |
  SEC                                       ; $8DCD0C |
  SBC.W #$0100                              ; $8DCD0D |
  STA.W $1FFA                               ; $8DCD10 |
  CMP.W #$8080                              ; $8DCD13 |
  BNE CODE_8DCD1B                           ; $8DCD16 |
  INC.W $1C00                               ; $8DCD18 |

CODE_8DCD1B:
  RTL                                       ; $8DCD1B |

CODE_8DCD1C:
  LDA.W #$0001                              ; $8DCD1C |
  STA.W $1FBE                               ; $8DCD1F |
  LDA.W #$0016                              ; $8DCD22 |
  STA.W $1FC0                               ; $8DCD25 |
  LDA.W #$1600                              ; $8DCD28 |
  STA.W $1C2E                               ; $8DCD2B |
  LDA.W #$0041                              ; $8DCD2E |
  STA.W $1FDE                               ; $8DCD31 |
  LDA.W #$001C                              ; $8DCD34 |
  STA.W $1FAC                               ; $8DCD37 |
  STZ.W $1672                               ; $8DCD3A |
  LDY.W #$BA90                              ; $8DCD3D |
  JSL.L CODE_FL_80C27C                      ; $8DCD40 |
  INC.W $1C00                               ; $8DCD44 |
  RTL                                       ; $8DCD47 |

CODE_8DCD48:
  LDA.W $1F30                               ; $8DCD48 |
  BNE CODE_8DCD64                           ; $8DCD4B |
  LDA.W #$0001                              ; $8DCD4D |
  STA.W $1FDE                               ; $8DCD50 |
  LDY.W #$BA0B                              ; $8DCD53 |
  JSL.L CODE_FL_80C27C                      ; $8DCD56 |
  LDY.W #$BA10                              ; $8DCD5A |
  JSL.L CODE_FL_80C277                      ; $8DCD5D |
  INC.W $1C00                               ; $8DCD61 |

CODE_8DCD64:
  RTL                                       ; $8DCD64 |

CODE_8DCD65:
  LDA.W $1F30                               ; $8DCD65 |
  BNE CODE_8DCDB1                           ; $8DCD68 |
  STZ.W $1FDE                               ; $8DCD6A |
  JSL.L CODE_FL_80887C                      ; $8DCD6D |
  LDA.W #$0011                              ; $8DCD71 |
  STA.W $1FBE                               ; $8DCD74 |
  LDY.W #$B90D                              ; $8DCD77 |
  JSL.L CODE_FL_80C277                      ; $8DCD7A |
  LDY.W #$D7E4                              ; $8DCD7E |
  JSL.L CODE_FL_8DD0FA                      ; $8DCD81 |
  LDY.W #$D7EE                              ; $8DCD85 |
  JSL.L CODE_FL_8DD0FA                      ; $8DCD88 |
  LDA.W #$1898                              ; $8DCD8C |
  STA.W $0D04                               ; $8DCD8F |
  STA.W $0D54                               ; $8DCD92 |
  LDX.W #DATA_8880BE                        ; $8DCD95 |
  JSL.L sound_transfer_blocks               ; $8DCD98 |
  LDA.W $1C3A                               ; $8DCD9C |
  BNE CODE_8DCDAE                           ; $8DCD9F |
  LDA.W #$00CC                              ; $8DCDA1 |
  JSL.L CODE_FL_8089BD                      ; $8DCDA4 |
  LDA.W #$0040                              ; $8DCDA8 |
  STA.W $1C3E                               ; $8DCDAB |

CODE_8DCDAE:
  INC.W $1C00                               ; $8DCDAE |

CODE_8DCDB1:
  RTL                                       ; $8DCDB1 |

CODE_8DCDB2:
  LDX.W #$0D00                              ; $8DCDB2 |
  DEC.W $003C,X                             ; $8DCDB5 |
  BPL CODE_8DCDDD                           ; $8DCDB8 |
  LDA.W #$0004                              ; $8DCDBA |
  STA.W $003C,X                             ; $8DCDBD |
  LDA.B $3E,X                               ; $8DCDC0 |
  ASL A                                     ; $8DCDC2 |
  TAY                                       ; $8DCDC3 |
  LDA.W CODE_00D8CF,Y                       ; $8DCDC4 |
  STA.B $00,X                               ; $8DCDC7 |
  STA.B $50,X                               ; $8DCDC9 |
  INC.B $3E,X                               ; $8DCDCB |
  LDA.B $3E,X                               ; $8DCDCD |
  CMP.W #$0005                              ; $8DCDCF |
  BNE CODE_8DCDDD                           ; $8DCDD2 |
  LDA.W #$0010                              ; $8DCDD4 |
  STA.W $1C16                               ; $8DCDD7 |
  INC.W $1C00                               ; $8DCDDA |

CODE_8DCDDD:
  RTL                                       ; $8DCDDD |

CODE_8DCDDE:
  LDA.W $1C30                               ; $8DCDDE |
  PHX                                       ; $8DCDE1 |
  ASL A                                     ; $8DCDE2 |
  TAX                                       ; $8DCDE3 |
  LDA.L PTR16_8DCDEE,X                      ; $8DCDE4 |
  PLX                                       ; $8DCDE8 |
  STA.B $00                                 ; $8DCDE9 |
  JMP.W ($0000)                             ; $8DCDEB |

PTR16_8DCDEE:
  dw CODE_8DCDFA                            ; $8DCDEE |
  dw CODE_8DCE17                            ; $8DCDF0 |
  dw CODE_8DCE49                            ; $8DCDF2 |
  dw CODE_8DCE77                            ; $8DCDF4 |
  dw CODE_8DCEDA                            ; $8DCDF6 |
  dw CODE_8DCEFE                            ; $8DCDF8 |

CODE_8DCDFA:
  LDY.W #$818B                              ; $8DCDFA |
  JSL.L CODE_FL_808D78                      ; $8DCDFD |
  INC.W $1C30                               ; $8DCE01 |
  LDA.W #$0020                              ; $8DCE04 |
  STA.W $1FE2                               ; $8DCE07 |
  LDA.W #$0040                              ; $8DCE0A |
  STA.W $1FE4                               ; $8DCE0D |
  LDA.W #$0080                              ; $8DCE10 |
  STA.W $1FE6                               ; $8DCE13 |
  RTL                                       ; $8DCE16 |

CODE_8DCE17:
  LDA.B $42                                 ; $8DCE17 |
  AND.W #$0001                              ; $8DCE19 |
  BNE CODE_8DCE3E                           ; $8DCE1C |
  INC.W $1C32                               ; $8DCE1E |
  LDA.W $1C32                               ; $8DCE21 |
  CMP.W #$0020                              ; $8DCE24 |
  BCS CODE_8DCE3F                           ; $8DCE27 |
  TAY                                       ; $8DCE29 |
  ORA.W #$0020                              ; $8DCE2A |
  STA.W $1FE2                               ; $8DCE2D |
  TYA                                       ; $8DCE30 |
  ORA.W #$0040                              ; $8DCE31 |
  STA.W $1FE4                               ; $8DCE34 |
  TYA                                       ; $8DCE37 |
  ORA.W #$0080                              ; $8DCE38 |
  STA.W $1FE6                               ; $8DCE3B |

CODE_8DCE3E:
  RTL                                       ; $8DCE3E |

CODE_8DCE3F:
  INC.W $1C30                               ; $8DCE3F |
  LDA.W #$0008                              ; $8DCE42 |
  STA.W $1C34                               ; $8DCE45 |
  RTL                                       ; $8DCE48 |

CODE_8DCE49:
  LDA.W #$0000                              ; $8DCE49 |
  STA.W $1FAC                               ; $8DCE4C |
  LDA.W #$0010                              ; $8DCE4F |
  STA.W $1FAE                               ; $8DCE52 |
  LDA.W #$005C                              ; $8DCE55 |
  STA.W $1FB0                               ; $8DCE58 |
  LDA.W #$0017                              ; $8DCE5B |
  STA.W $1FBE                               ; $8DCE5E |
  STZ.W $1FC2                               ; $8DCE61 |
  STZ.B $5E                                 ; $8DCE64 |
  STZ.W $1692                               ; $8DCE66 |
  LDY.W #$B8D0                              ; $8DCE69 |
  JSL.L CODE_FL_80C27C                      ; $8DCE6C |
  DEC.W $1C32                               ; $8DCE70 |
  INC.W $1C30                               ; $8DCE73 |
  RTL                                       ; $8DCE76 |

CODE_8DCE77:
  LDA.W #$041F                              ; $8DCE77 |
  STA.L $7E2C00                             ; $8DCE7A |
  LDA.W #$05FF                              ; $8DCE7E |
  STA.L $7E2C02                             ; $8DCE81 |
  LDA.W #$035F                              ; $8DCE85 |
  STA.L $7E2C04                             ; $8DCE88 |
  LDA.W #$7FFF                              ; $8DCE8C |
  STA.L $7E2C06                             ; $8DCE8F |
  JSL.L CODE_FL_80C2DC                      ; $8DCE93 |
  LDY.W #$D7F8                              ; $8DCE97 |
  STZ.W $1C18                               ; $8DCE9A |

CODE_8DCE9D:
  JSL.L CODE_FL_8DD0FA                      ; $8DCE9D |
  LDA.W #$1898                              ; $8DCEA1 |
  STA.B $04,X                               ; $8DCEA4 |
  PHY                                       ; $8DCEA6 |
  LDY.W $1C18                               ; $8DCEA7 |
  LDA.W CODE_00D8AE,Y                       ; $8DCEAA |
  AND.W #$00FF                              ; $8DCEAD |
  STA.B $02,X                               ; $8DCEB0 |
  PLY                                       ; $8DCEB2 |
  TYA                                       ; $8DCEB3 |
  CLC                                       ; $8DCEB4 |
  ADC.W #$000A                              ; $8DCEB5 |
  TAY                                       ; $8DCEB8 |
  INC.W $1C18                               ; $8DCEB9 |
  LDA.W $1C18                               ; $8DCEBC |
  CMP.W #$0009                              ; $8DCEBF |
  BNE CODE_8DCE9D                           ; $8DCEC2 |
  LDA.W $1C3A                               ; $8DCEC4 |
  BNE CODE_8DCED6                           ; $8DCEC7 |
  LDA.W #$0054                              ; $8DCEC9 |
  JSL.L CODE_FL_8089BD                      ; $8DCECC |
  LDA.W #$0040                              ; $8DCED0 |
  STA.W $1C3E                               ; $8DCED3 |

CODE_8DCED6:
  INC.W $1C30                               ; $8DCED6 |
  RTL                                       ; $8DCED9 |

CODE_8DCEDA:
  JSR.W CODE_FN_8DCF1E                      ; $8DCEDA |
  LDA.W $1C32                               ; $8DCEDD |
  TAY                                       ; $8DCEE0 |
  ORA.W #$0020                              ; $8DCEE1 |
  STA.W $1FE2                               ; $8DCEE4 |
  TYA                                       ; $8DCEE7 |
  ORA.W #$0040                              ; $8DCEE8 |
  STA.W $1FE4                               ; $8DCEEB |
  TYA                                       ; $8DCEEE |
  ORA.W #$0080                              ; $8DCEEF |
  STA.W $1FE6                               ; $8DCEF2 |
  DEC.W $1C32                               ; $8DCEF5 |
  BPL CODE_8DCEFD                           ; $8DCEF8 |
  INC.W $1C30                               ; $8DCEFA |

CODE_8DCEFD:
  RTL                                       ; $8DCEFD |

CODE_8DCEFE:
  JSR.W CODE_FN_8DCF1E                      ; $8DCEFE |
  STZ.W $1FDE                               ; $8DCF01 |
  LDA.W #$0080                              ; $8DCF04 |
  STA.W $1C38                               ; $8DCF07 |
  INC.W $1C00                               ; $8DCF0A |
  RTL                                       ; $8DCF0D |

CODE_8DCF0E:
  JSR.W CODE_FN_8DCF1E                      ; $8DCF0E |
  JSR.W CODE_FN_8DCF50                      ; $8DCF11 |
  DEC.W $1C38                               ; $8DCF14 |
  BNE CODE_8DCF1D                           ; $8DCF17 |
  JSL.L CODE_FL_8DC60D                      ; $8DCF19 |

CODE_8DCF1D:
  RTL                                       ; $8DCF1D |

CODE_FN_8DCF1E:
  DEC.W $1C36                               ; $8DCF1E |
  BPL CODE_8DCF4F                           ; $8DCF21 |
  LDA.W #$0004                              ; $8DCF23 |
  STA.W $1C36                               ; $8DCF26 |
  LDA.L $7E2C00                             ; $8DCF29 |
  TAY                                       ; $8DCF2D |
  LDA.L $7E2C02                             ; $8DCF2E |
  STA.L $7E2C00                             ; $8DCF32 |
  LDA.L $7E2C04                             ; $8DCF36 |
  STA.L $7E2C02                             ; $8DCF3A |
  LDA.L $7E2C06                             ; $8DCF3E |
  STA.L $7E2C04                             ; $8DCF42 |
  TYA                                       ; $8DCF46 |
  STA.L $7E2C06                             ; $8DCF47 |
  JSL.L CODE_FL_80C2DC                      ; $8DCF4B |

CODE_8DCF4F:
  RTS                                       ; $8DCF4F |

CODE_FN_8DCF50:
  LDA.B $42                                 ; $8DCF50 |
  AND.W #$0001                              ; $8DCF52 |
  BNE CODE_8DCFC5                           ; $8DCF55 |
  LDA.W $0E99                               ; $8DCF57 |
  STA.B $10                                 ; $8DCF5A |
  LDA.W $0E9D                               ; $8DCF5C |
  STA.B $12                                 ; $8DCF5F |
  LDA.W $1662                               ; $8DCF61 |
  STA.B $14                                 ; $8DCF64 |
  LDA.W $1672                               ; $8DCF66 |
  STA.B $16                                 ; $8DCF69 |
  LDA.B $2E                                 ; $8DCF6B |
  BIT.W #$0200                              ; $8DCF6D |
  BEQ CODE_8DCF78                           ; $8DCF70 |
  DEC.W $0E99                               ; $8DCF72 |
  INC.W $1662                               ; $8DCF75 |

CODE_8DCF78:
  BIT.W #$0100                              ; $8DCF78 |
  BEQ CODE_8DCF83                           ; $8DCF7B |
  INC.W $0E99                               ; $8DCF7D |
  DEC.W $1662                               ; $8DCF80 |

CODE_8DCF83:
  BIT.W #$0800                              ; $8DCF83 |
  BEQ CODE_8DCF8E                           ; $8DCF86 |
  DEC.W $0E9D                               ; $8DCF88 |
  INC.W $1672                               ; $8DCF8B |

CODE_8DCF8E:
  BIT.W #$0400                              ; $8DCF8E |
  BEQ CODE_8DCF99                           ; $8DCF91 |
  INC.W $0E9D                               ; $8DCF93 |
  DEC.W $1672                               ; $8DCF96 |

CODE_8DCF99:
  LDA.W $0E99                               ; $8DCF99 |
  SEC                                       ; $8DCF9C |
  SBC.W #$0072                              ; $8DCF9D |
  CMP.W #$001C                              ; $8DCFA0 |
  BCS CODE_8DCFB1                           ; $8DCFA3 |
  LDA.W $0E9D                               ; $8DCFA5 |
  SEC                                       ; $8DCFA8 |
  SBC.W #$0037                              ; $8DCFA9 |
  CMP.W #$0010                              ; $8DCFAC |
  BCC CODE_8DCFC5                           ; $8DCFAF |

CODE_8DCFB1:
  LDA.B $10                                 ; $8DCFB1 |
  STA.W $0E99                               ; $8DCFB3 |
  LDA.B $12                                 ; $8DCFB6 |
  STA.W $0E9D                               ; $8DCFB8 |
  LDA.B $14                                 ; $8DCFBB |
  STA.W $1662                               ; $8DCFBD |
  LDA.B $16                                 ; $8DCFC0 |
  STA.W $1672                               ; $8DCFC2 |

CODE_8DCFC5:
  RTS                                       ; $8DCFC5 |

  RTL                                       ; $8DCFC6 |

  NOP                                       ; $8DCFC7 |

CODE_FL_8DCFC8:
  LDA.W $1C02                               ; $8DCFC8 |
  BMI CODE_8DCFE4                           ; $8DCFCB |
  BEQ CODE_8DCFE3                           ; $8DCFCD |
  LDA.W $16B2                               ; $8DCFCF |
  SEC                                       ; $8DCFD2 |
  SBC.W #$0008                              ; $8DCFD3 |
  STA.W $16B2                               ; $8DCFD6 |
  LDA.W $1692                               ; $8DCFD9 |
  SEC                                       ; $8DCFDC |
  SBC.W #$0002                              ; $8DCFDD |
  STA.W $1692                               ; $8DCFE0 |

CODE_8DCFE3:
  RTL                                       ; $8DCFE3 |

CODE_8DCFE4:
  LDA.W $16B2                               ; $8DCFE4 |
  CLC                                       ; $8DCFE7 |
  ADC.W #$0008                              ; $8DCFE8 |
  STA.W $16B2                               ; $8DCFEB |
  LDA.W $1692                               ; $8DCFEE |
  CLC                                       ; $8DCFF1 |
  ADC.W #$0002                              ; $8DCFF2 |
  STA.W $1692                               ; $8DCFF5 |
  RTL                                       ; $8DCFF8 |

CODE_FN_8DCFF9:
  STZ.W $1C06                               ; $8DCFF9 |
  JSL.L CODE_FL_8DD022                      ; $8DCFFC |
  LDA.W #$0200                              ; $8DD000 |
  STA.W $1C2E                               ; $8DD003 |
  LDY.W #$4000                              ; $8DD006 |
  JSL.L CODE_FL_809725                      ; $8DD009 |
  LDY.W #$8000                              ; $8DD00D |
  JSL.L CODE_FL_80972B                      ; $8DD010 |
  RTS                                       ; $8DD014 |

CODE_FL_8DD015:
  JSL.L CODE_FL_8DD034                      ; $8DD015 |
  JSL.L CODE_FL_8DD022                      ; $8DD019 |
  JSL.L CODE_FL_8DD064                      ; $8DD01D |
  RTL                                       ; $8DD021 |

CODE_FL_8DD022:
  LDA.W #$0060                              ; $8DD022 |
  SEC                                       ; $8DD025 |
  SBC.W $1C06                               ; $8DD026 |
  STA.W $1C08                               ; $8DD029 |
  LDA.W $1C06                               ; $8DD02C |
  ASL A                                     ; $8DD02F |
  STA.W $1C0A                               ; $8DD030 |
  RTL                                       ; $8DD033 |

CODE_FL_8DD034:
  LDA.W $1C04                               ; $8DD034 |
  DEC A                                     ; $8DD037 |
  BMI CODE_8DD063                           ; $8DD038 |
  BNE CODE_8DD052                           ; $8DD03A |
  LDA.W $1C06                               ; $8DD03C |
  CLC                                       ; $8DD03F |
  ADC.W #$0001                              ; $8DD040 |
  CMP.W #$0030                              ; $8DD043 |
  BCC CODE_8DD04E                           ; $8DD046 |
  STZ.W $1C04                               ; $8DD048 |
  LDA.W #$0030                              ; $8DD04B |

CODE_8DD04E:
  STA.W $1C06                               ; $8DD04E |
  RTL                                       ; $8DD051 |

CODE_8DD052:
  LDA.W $1C06                               ; $8DD052 |
  SEC                                       ; $8DD055 |
  SBC.W #$0001                              ; $8DD056 |
  BPL CODE_8DD05F                           ; $8DD059 |
  STZ.W $1C04                               ; $8DD05B |
  TDC                                       ; $8DD05E |

CODE_8DD05F:
  STA.W $1C06                               ; $8DD05F |
  RTL                                       ; $8DD062 |

CODE_8DD063:
  RTL                                       ; $8DD063 |

CODE_FL_8DD064:
  JSL.L CODE_FL_808F6E                      ; $8DD064 |
  STZ.W $1FC0                               ; $8DD068 |
  LDA.W $1C0A                               ; $8DD06B |
  BEQ CODE_8DD08C                           ; $8DD06E |
  LDY.W $1C08                               ; $8DD070 |
  LDA.W $1FBE                               ; $8DD073 |
  ORA.W $1C2E                               ; $8DD076 |
  JSL.L CODE_FL_808FD5                      ; $8DD079 |
  CLC                                       ; $8DD07D |
  LDA.W $1C08                               ; $8DD07E |
  ADC.W $1C0A                               ; $8DD081 |
  TAY                                       ; $8DD084 |
  LDA.W $1FBE                               ; $8DD085 |
  JSL.L CODE_FL_808FD5                      ; $8DD088 |

CODE_8DD08C:
  SEP #$20                                  ; $8DD08C |
  PHB                                       ; $8DD08E |
  LDA.B #$7E                                ; $8DD08F |
  PHA                                       ; $8DD091 |
  PLB                                       ; $8DD092 |
  LDA.W LOOSE_OP_00D150                     ; $8DD093 |
  LSR A                                     ; $8DD096 |
  LDX.W #$D152                              ; $8DD097 |
  BCS CODE_8DD09F                           ; $8DD09A |
  LDX.W #$D322                              ; $8DD09C |

CODE_8DD09F:
  LDA.W $1C08                               ; $8DD09F |
  STA.W $0000,X                             ; $8DD0A2 |
  LDA.B #$11                                ; $8DD0A5 |
  STA.W $0001,X                             ; $8DD0A7 |
  LDA.B #$10                                ; $8DD0AA |
  STA.W $0002,X                             ; $8DD0AC |
  LDA.W $1C0A                               ; $8DD0AF |
  STA.W $0003,X                             ; $8DD0B2 |
  LDA.B #$00                                ; $8DD0B5 |
  STA.W $0004,X                             ; $8DD0B7 |
  LDA.B #$FF                                ; $8DD0BA |
  STA.W $0005,X                             ; $8DD0BC |
  LDA.B #$30                                ; $8DD0BF |
  STA.W $0006,X                             ; $8DD0C1 |
  LDA.B #$11                                ; $8DD0C4 |
  STA.W $0007,X                             ; $8DD0C6 |
  LDA.B #$10                                ; $8DD0C9 |
  STA.W $0008,X                             ; $8DD0CB |
  STZ.W $0009,X                             ; $8DD0CE |
  LDA.W LOOSE_OP_00D150                     ; $8DD0D1 |
  EOR.B #$01                                ; $8DD0D4 |
  STA.W LOOSE_OP_00D150                     ; $8DD0D6 |
  PLB                                       ; $8DD0D9 |
  REP #$20                                  ; $8DD0DA |
  RTL                                       ; $8DD0DC |

CODE_FN_8DD0DD:
  LDA.W $1C12                               ; $8DD0DD |
  LDY.B $3A,X                               ; $8DD0E0 |
  JSL.L CODE_FL_8AB51A                      ; $8DD0E2 |
  LDA.W $1C0E                               ; $8DD0E6 |
  CLC                                       ; $8DD0E9 |
  ADC.B $01                                 ; $8DD0EA |
  STA.B $09,X                               ; $8DD0EC |
  LDA.W $1C11                               ; $8DD0EE |
  AND.W #$00FF                              ; $8DD0F1 |
  CLC                                       ; $8DD0F4 |
  ADC.B $05                                 ; $8DD0F5 |
  STA.B $0D,X                               ; $8DD0F7 |
  RTS                                       ; $8DD0F9 |

CODE_FL_8DD0FA:
  LDX.W $0000,Y                             ; $8DD0FA |
  LDA.W $0002,Y                             ; $8DD0FD |
  STA.B $00,X                               ; $8DD100 |
  LDA.W $0004,Y                             ; $8DD102 |
  STA.B $09,X                               ; $8DD105 |
  LDA.W $0006,Y                             ; $8DD107 |
  STA.B $0D,X                               ; $8DD10A |
  LDA.W $0008,Y                             ; $8DD10C |
  CMP.W #$FFFF                              ; $8DD10F |
  BEQ CODE_8DD138                           ; $8DD112 |
  STA.B $26,X                               ; $8DD114 |
  STZ.B $28,X                               ; $8DD116 |
  LDA.W $0008,Y                             ; $8DD118 |
  BPL CODE_8DD122                           ; $8DD11B |
  LDA.W #$FFFF                              ; $8DD11D |
  STA.B $28,X                               ; $8DD120 |

CODE_8DD122:
  LDA.W $000A,Y                             ; $8DD122 |
  STA.B $2A,X                               ; $8DD125 |
  STZ.B $2C,X                               ; $8DD127 |
  LDA.W $000A,Y                             ; $8DD129 |
  BPL CODE_8DD133                           ; $8DD12C |
  LDA.W #$FFFF                              ; $8DD12E |
  STA.B $2C,X                               ; $8DD131 |

CODE_8DD133:
  LDA.W #$1090                              ; $8DD133 |
  STA.B $04,X                               ; $8DD136 |

CODE_8DD138:
  RTL                                       ; $8DD138 |

CODE_FL_8DD139:
  LDA.B $26,X                               ; $8DD139 |
  CLC                                       ; $8DD13B |
  ADC.B $08,X                               ; $8DD13C |
  STA.B $08,X                               ; $8DD13E |
  LDA.B $28,X                               ; $8DD140 |
  ADC.B $0A,X                               ; $8DD142 |
  STA.B $0A,X                               ; $8DD144 |
  LDA.B $2A,X                               ; $8DD146 |
  CLC                                       ; $8DD148 |
  ADC.B $0C,X                               ; $8DD149 |
  STA.B $0C,X                               ; $8DD14B |
  LDA.B $2C,X                               ; $8DD14D |
  ADC.B $0E,X                               ; $8DD14F |
  STA.B $0E,X                               ; $8DD151 |
  RTL                                       ; $8DD153 |

CODE_FN_8DD154:
  INC.W $1C18                               ; $8DD154 |
  INC.W $1C18                               ; $8DD157 |
  TXA                                       ; $8DD15A |
  CLC                                       ; $8DD15B |
  ADC.W #$0050                              ; $8DD15C |
  TAX                                       ; $8DD15F |
  RTS                                       ; $8DD160 |

CODE_FL_8DD161:
  PHB                                       ; $8DD161 |
  PEA.W $8787                               ; $8DD162 |
  PLB                                       ; $8DD165 |
  PLB                                       ; $8DD166 |
  SEC                                       ; $8DD167 |
  LDA.B $8E                                 ; $8DD168 |
  SBC.W #$00FC                              ; $8DD16A |
  ASL A                                     ; $8DD16D |
  TAX                                       ; $8DD16E |
  LDY.W LOOSE_OP_00D8D9,X                   ; $8DD16F |
  LDX.W #$0000                              ; $8DD172 |
  BRA CODE_8DD17F                           ; $8DD175 |

CODE_8DD177:
  CLC                                       ; $8DD177 |
  TYA                                       ; $8DD178 |
  ADC.W #$000A                              ; $8DD179 |
  TAY                                       ; $8DD17C |
  INX                                       ; $8DD17D |
  INX                                       ; $8DD17E |

CODE_8DD17F:
  LDA.L $7E8B80,X                           ; $8DD17F |
  BMI CODE_8DD177                           ; $8DD183 |
  BIT.W #$00FF                              ; $8DD185 |
  BEQ CODE_8DD18F                           ; $8DD188 |
  DEC A                                     ; $8DD18A |
  STA.L $7E8B80,X                           ; $8DD18B |

CODE_8DD18F:
  LDA.W $0000,Y                             ; $8DD18F |
  BPL CODE_8DD177                           ; $8DD192 |
  PLB                                       ; $8DD194 |
  RTL                                       ; $8DD195 |

CODE_FL_8DD196:
  CLC                                       ; $8DD196 |
  LDA.B $01                                 ; $8DD197 |
  ADC.B $0E                                 ; $8DD199 |
  BMI CODE_8DD1BF                           ; $8DD19B |
  SEC                                       ; $8DD19D |
  LDA.B $01                                 ; $8DD19E |
  SBC.B $0E                                 ; $8DD1A0 |
  CMP.W #$0100                              ; $8DD1A2 |
  BCS CODE_8DD1BF                           ; $8DD1A5 |
  LDA.B $04                                 ; $8DD1A7 |
  CMP.W #$00BC                              ; $8DD1A9 |
  BMI CODE_8DD1B6                           ; $8DD1AC |
  SEC                                       ; $8DD1AE |
  SBC.B $10                                 ; $8DD1AF |
  CMP.W #$00BC                              ; $8DD1B1 |
  BPL CODE_8DD1BF                           ; $8DD1B4 |

CODE_8DD1B6:
  LDA.B $2A,X                               ; $8DD1B6 |
  STA.B $14                                 ; $8DD1B8 |
  AND.W #$0300                              ; $8DD1BA |
  BNE CODE_8DD1C0                           ; $8DD1BD |

CODE_8DD1BF:
  RTL                                       ; $8DD1BF |

CODE_8DD1C0:
  LDA.B $4E,X                               ; $8DD1C0 |
  AND.W #$00FF                              ; $8DD1C2 |
  STA.B $16                                 ; $8DD1C5 |
  PHX                                       ; $8DD1C7 |
  SEC                                       ; $8DD1C8 |
  LDA.B $8E                                 ; $8DD1C9 |
  SBC.W #$00FC                              ; $8DD1CB |
  ASL A                                     ; $8DD1CE |
  TAX                                       ; $8DD1CF |
  LDY.W LOOSE_OP_00D8D9,X                   ; $8DD1D0 |
  LDX.W #$0000                              ; $8DD1D3 |
  BRA CODE_8DD1E0                           ; $8DD1D6 |

CODE_JP_8DD1D8:
  CLC                                       ; $8DD1D8 |
  TYA                                       ; $8DD1D9 |
  ADC.W #$000A                              ; $8DD1DA |
  TAY                                       ; $8DD1DD |
  INX                                       ; $8DD1DE |
  INX                                       ; $8DD1DF |

CODE_8DD1E0:
  LDA.L $7E8B80,X                           ; $8DD1E0 |
  BMI CODE_JP_8DD1D8                        ; $8DD1E4 |
  ASL A                                     ; $8DD1E6 |
  BMI CODE_8DD232                           ; $8DD1E7 |
  AND.W #$01FE                              ; $8DD1E9 |
  BNE CODE_JP_8DD1D8                        ; $8DD1EC |
  LDA.W $0000,Y                             ; $8DD1EE |
  BMI CODE_8DD257                           ; $8DD1F1 |
  SEC                                       ; $8DD1F3 |
  SBC.W $1662                               ; $8DD1F4 |
  CMP.W #$0120                              ; $8DD1F7 |
  BPL CODE_JP_8DD1D8                        ; $8DD1FA |
  SEC                                       ; $8DD1FC |
  SBC.B $01                                 ; $8DD1FD |
  BPL CODE_8DD205                           ; $8DD1FF |
  EOR.W #$FFFF                              ; $8DD201 |
  INC A                                     ; $8DD204 |

CODE_8DD205:
  SEC                                       ; $8DD205 |
  SBC.B $0E                                 ; $8DD206 |
  SBC.W $0004,Y                             ; $8DD208 |
  BPL CODE_JP_8DD1D8                        ; $8DD20B |
  SEC                                       ; $8DD20D |
  LDA.W $0002,Y                             ; $8DD20E |
  SBC.W $1672                               ; $8DD211 |
  SEC                                       ; $8DD214 |
  SBC.B $04                                 ; $8DD215 |
  BPL CODE_8DD21D                           ; $8DD217 |
  EOR.W #$FFFF                              ; $8DD219 |
  INC A                                     ; $8DD21C |

CODE_8DD21D:
  SBC.B $10                                 ; $8DD21D |
  SBC.W $0006,Y                             ; $8DD21F |
  BPL CODE_JP_8DD1D8                        ; $8DD222 |
  JSL.L CODE_FL_97FF37                      ; $8DD224 |
  JSR.W CODE_FN_8DD2E7                      ; $8DD228 |
  BCS CODE_JP_8DD1D8                        ; $8DD22B |
  JSR.W CODE_FN_8DD30A                      ; $8DD22D |
  BCS CODE_JP_8DD1D8                        ; $8DD230 |

CODE_8DD232:
  LDA.L $7E8BE0                             ; $8DD232 |
  BNE CODE_8DD24D                           ; $8DD236 |
  TYA                                       ; $8DD238 |
  STA.L $7E8BE0                             ; $8DD239 |
  LDA.W $0008,Y                             ; $8DD23D |
  STA.L $7E8BE2                             ; $8DD240 |
  LDA.W #$C000                              ; $8DD244 |
  STA.L $7E8B80,X                           ; $8DD247 |
  BRA CODE_JP_8DD1D8                        ; $8DD24B |

CODE_8DD24D:
  LDA.W #$4000                              ; $8DD24D |
  STA.L $7E8B80,X                           ; $8DD250 |
  JMP.W CODE_JP_8DD1D8                      ; $8DD254 |

CODE_8DD257:
  LDA.L $7E8BE0                             ; $8DD257 |
  BNE CODE_8DD260                           ; $8DD25B |
  JMP.W CODE_JP_8DD2E5                      ; $8DD25D |

CODE_8DD260:
  TAY                                       ; $8DD260 |
  SEC                                       ; $8DD261 |
  LDA.W $0000,Y                             ; $8DD262 |
  SBC.W $0004,Y                             ; $8DD265 |
  SEC                                       ; $8DD268 |
  SBC.W #$0010                              ; $8DD269 |
  STA.B $10                                 ; $8DD26C |
  CLC                                       ; $8DD26E |
  LDA.W $0002,Y                             ; $8DD26F |
  ADC.W $0006,Y                             ; $8DD272 |
  STA.B $12                                 ; $8DD275 |
  LDA.L $7E8BE2                             ; $8DD277 |
  TAX                                       ; $8DD27B |
  LDA.W $0000,X                             ; $8DD27C |
  BEQ CODE_8DD2DC                           ; $8DD27F |
  PHA                                       ; $8DD281 |
  LDA.W $0001,X                             ; $8DD282 |
  AND.W #$FF00                              ; $8DD285 |
  CMP.W #$8000                              ; $8DD288 |
  ROR A                                     ; $8DD28B |
  CMP.W #$8000                              ; $8DD28C |
  ROR A                                     ; $8DD28F |
  CMP.W #$8000                              ; $8DD290 |
  ROR A                                     ; $8DD293 |
  ADC.B $10                                 ; $8DD294 |
  STA.B $10                                 ; $8DD296 |
  TAY                                       ; $8DD298 |
  LDA.W $0002,X                             ; $8DD299 |
  AND.W #$FF00                              ; $8DD29C |
  CMP.W #$8000                              ; $8DD29F |
  ROR A                                     ; $8DD2A2 |
  CMP.W #$8000                              ; $8DD2A3 |
  ROR A                                     ; $8DD2A6 |
  CMP.W #$8000                              ; $8DD2A7 |
  ROR A                                     ; $8DD2AA |
  ADC.B $12                                 ; $8DD2AB |
  STA.B $12                                 ; $8DD2AD |
  PLA                                       ; $8DD2AF |
  PHY                                       ; $8DD2B0 |
  PHB                                       ; $8DD2B1 |
  PEA.W $8787                               ; $8DD2B2 |
  PLB                                       ; $8DD2B5 |
  PLB                                       ; $8DD2B6 |
  JSL.L CODE_FL_85824D                      ; $8DD2B7 |
  PLB                                       ; $8DD2BB |
  PLA                                       ; $8DD2BC |
  BCS CODE_JP_8DD2E5                        ; $8DD2BD |
  LDY.W $19AA                               ; $8DD2BF |
  BNE CODE_8DD2CA                           ; $8DD2C2 |
  SEC                                       ; $8DD2C4 |
  SBC.W $1662                               ; $8DD2C5 |
  BPL CODE_JP_8DD2E5                        ; $8DD2C8 |

CODE_8DD2CA:
  LDA.L $7E8BE2                             ; $8DD2CA |
  INC A                                     ; $8DD2CE |
  INC A                                     ; $8DD2CF |
  INC A                                     ; $8DD2D0 |
  INC A                                     ; $8DD2D1 |
  STA.L $7E8BE2                             ; $8DD2D2 |
  TAX                                       ; $8DD2D6 |
  LDA.W $0000,X                             ; $8DD2D7 |
  BNE CODE_JP_8DD2E5                        ; $8DD2DA |

CODE_8DD2DC:
  TDC                                       ; $8DD2DC |
  STA.L $7E8BE0                             ; $8DD2DD |
  STA.L $7E8BE2                             ; $8DD2E1 |

CODE_JP_8DD2E5:
  PLX                                       ; $8DD2E5 |
  RTL                                       ; $8DD2E6 |

CODE_FN_8DD2E7:
  SEP #$20                                  ; $8DD2E7 |
  LDA.L $7E8B81,X                           ; $8DD2E9 |
  BIT.B #$C0                                ; $8DD2ED |
  BNE CODE_8DD308                           ; $8DD2EF |
  CLC                                       ; $8DD2F1 |
  ADC.B $16                                 ; $8DD2F2 |
  BCS CODE_8DD308                           ; $8DD2F4 |
  CMP.B #$08                                ; $8DD2F6 |
  BCS CODE_8DD308                           ; $8DD2F8 |
  STA.L $7E8B81,X                           ; $8DD2FA |
  LDA.B #$1A                                ; $8DD2FE |
  STA.L $7E8B80,X                           ; $8DD300 |
  REP #$20                                  ; $8DD304 |
  SEC                                       ; $8DD306 |
  RTS                                       ; $8DD307 |

CODE_8DD308:
  CLC                                       ; $8DD308 |
  RTS                                       ; $8DD309 |

CODE_FN_8DD30A:
  REP #$20                                  ; $8DD30A |
  LDA.L $7E8B80,X                           ; $8DD30C |
  ORA.W #$3F00                              ; $8DD310 |
  STA.L $7E8B80,X                           ; $8DD313 |
  PHX                                       ; $8DD317 |
  PHY                                       ; $8DD318 |
  LDA.W #$0373                              ; $8DD319 |
  JSL.L CODE_FL_8695CE                      ; $8DD31C |
  BCS CODE_8DD35B                           ; $8DD320 |
  TYX                                       ; $8DD322 |
  STZ.B $0A,X                               ; $8DD323 |
  STZ.B $0E,X                               ; $8DD325 |
  PLY                                       ; $8DD327 |
  SEC                                       ; $8DD328 |
  LDA.W $0000,Y                             ; $8DD329 |
  SBC.W $1662                               ; $8DD32C |
  STA.B $09,X                               ; $8DD32F |
  LDA.W $0004,Y                             ; $8DD331 |
  STA.B $2E,X                               ; $8DD334 |
  LDA.W $0006,Y                             ; $8DD336 |
  STA.B $30,X                               ; $8DD339 |
  SEC                                       ; $8DD33B |
  LDA.W $0002,Y                             ; $8DD33C |
  SBC.W $1672                               ; $8DD33F |
  STA.B $0D,X                               ; $8DD342 |
  LDA.W #$0001                              ; $8DD344 |
  STA.B $3C,X                               ; $8DD347 |
  LDA.W #$0050                              ; $8DD349 |
  STA.B $4E,X                               ; $8DD34C |
  LDA.W #$8000                              ; $8DD34E |
  STA.B $22,X                               ; $8DD351 |
  LDA.W #$C000                              ; $8DD353 |
  STA.B $34,X                               ; $8DD356 |
  PLX                                       ; $8DD358 |
  CLC                                       ; $8DD359 |
  RTS                                       ; $8DD35A |

CODE_8DD35B:
  PLY                                       ; $8DD35B |
  PLX                                       ; $8DD35C |
  SEC                                       ; $8DD35D |
  RTS                                       ; $8DD35E |

CODE_8DD35F:
  JSL.L CODE_FL_86C3B0                      ; $8DD35F |
  PHX                                       ; $8DD363 |
  ASL A                                     ; $8DD364 |
  TAX                                       ; $8DD365 |
  LDA.L PTR16_8DD370,X                      ; $8DD366 |
  PLX                                       ; $8DD36A |
  STA.B $00                                 ; $8DD36B |
  JMP.W ($0000)                             ; $8DD36D |

PTR16_8DD370:
  dw CODE_8DD37C                            ; $8DD370 |
  dw CODE_8DD3CA                            ; $8DD372 |
  dw CODE_8DD400                            ; $8DD374 |
  dw CODE_8DD433                            ; $8DD376 |
  dw CODE_8DD451                            ; $8DD378 |
  dw CODE_8DD49D                            ; $8DD37A |

CODE_8DD37C:
  JSL.L CODE_FL_86C7A5                      ; $8DD37C |
  LDA.W #$38AA                              ; $8DD380 |
  STA.B $00,X                               ; $8DD383 |
  LDA.W #$E000                              ; $8DD385 |
  STA.B $22,X                               ; $8DD388 |
  LDA.W #$B880                              ; $8DD38A |
  STA.B $34,X                               ; $8DD38D |
  JSL.L CODE_FL_86C63A                      ; $8DD38F |
  JSL.L CODE_FL_85AC3A                      ; $8DD393 |
  BCC CODE_8DD3C9                           ; $8DD397 |
  CLC                                       ; $8DD399 |
  LDA.B $0D,X                               ; $8DD39A |
  ADC.W #$0020                              ; $8DD39C |
  STA.B $0D,X                               ; $8DD39F |
  LDA.B $4E,X                               ; $8DD3A1 |
  AND.W #$0100                              ; $8DD3A3 |
  BEQ CODE_8DD3B3                           ; $8DD3A6 |
  JSL.L CODE_FL_86C47E                      ; $8DD3A8 |
  LDA.B $0D,X                               ; $8DD3AC |
  SBC.W #$0040                              ; $8DD3AE |
  STA.B $0D,X                               ; $8DD3B1 |

CODE_8DD3B3:
  LDA.W #$0070                              ; $8DD3B3 |
  STA.B $10                                 ; $8DD3B6 |
  LDA.W #$0060                              ; $8DD3B8 |
  STA.B $12                                 ; $8DD3BB |
  LDA.W #$0092                              ; $8DD3BD |
  JSL.L CODE_FL_8580EE                      ; $8DD3C0 |
  LDA.W #$0005                              ; $8DD3C4 |
  STA.B $1A,X                               ; $8DD3C7 |

CODE_8DD3C9:
  RTL                                       ; $8DD3C9 |

CODE_8DD3CA:
  JSL.L CODE_FL_85AC3A                      ; $8DD3CA |
  BCC CODE_8DD3EC                           ; $8DD3CE |
  JSL.L CODE_FL_86C26A                      ; $8DD3D0 |
  LDA.W #$0040                              ; $8DD3D4 |
  STA.B $2C,X                               ; $8DD3D7 |
  LDA.W #$0080                              ; $8DD3D9 |
  STA.B $28,X                               ; $8DD3DC |
  LDA.B $4E,X                               ; $8DD3DE |
  AND.W #$0100                              ; $8DD3E0 |
  BEQ CODE_8DD3EA                           ; $8DD3E3 |
  LDA.W #$FF80                              ; $8DD3E5 |
  STA.B $28,X                               ; $8DD3E8 |

CODE_8DD3EA:
  INC.B $1A,X                               ; $8DD3EA |

CODE_8DD3EC:
  RTL                                       ; $8DD3EC |

CODE_FL_8DD3ED:
  INC.B $3A,X                               ; $8DD3ED |
  LDA.B $3A,X                               ; $8DD3EF |
  CMP.W #$000A                              ; $8DD3F1 |
  BCC CODE_8DD3FF                           ; $8DD3F4 |
  STZ.B $3A,X                               ; $8DD3F6 |
  LDA.W #$0017                              ; $8DD3F8 |
  JSL.L push_sound_queue                    ; $8DD3FB |

CODE_8DD3FF:
  RTL                                       ; $8DD3FF |

CODE_8DD400:
  LDA.B $4E,X                               ; $8DD400 |
  AND.W #$0100                              ; $8DD402 |
  BEQ CODE_8DD40B                           ; $8DD405 |
  JSL.L CODE_FL_8DD3ED                      ; $8DD407 |

CODE_8DD40B:
  JSL.L CODE_FL_86C70D                      ; $8DD40B |
  STZ.B $28,X                               ; $8DD40F |
  LDA.B $4E,X                               ; $8DD411 |
  AND.W #$0100                              ; $8DD413 |
  BEQ CODE_8DD432                           ; $8DD416 |

CODE_JL_8DD418:
  LDA.W #$0040                              ; $8DD418 |
  STA.B $2C,X                               ; $8DD41B |
  LDA.W #$003F                              ; $8DD41D |
  STA.W $1FDE                               ; $8DD420 |
  LDA.W #$0000                              ; $8DD423 |
  STA.W $1FDC                               ; $8DD426 |
  LDA.W #$006C                              ; $8DD429 |
  JSL.L CODE_FL_8089BD                      ; $8DD42C |
  INC.B $1A,X                               ; $8DD430 |

CODE_8DD432:
  RTL                                       ; $8DD432 |

CODE_8DD433:
  LDA.W $1C38                               ; $8DD433 |
  AND.W #$0001                              ; $8DD436 |
  BEQ CODE_JL_8DD43E                        ; $8DD439 |
  LDA.W #$001F                              ; $8DD43B |

CODE_JL_8DD43E:
  JSL.L CODE_FL_808D48                      ; $8DD43E |
  JSL.L CODE_FL_86C70D                      ; $8DD442 |
  TDC                                       ; $8DD446 |
  STA.W $1FDE                               ; $8DD447 |
  STA.L $7E7C02                             ; $8DD44A |
  INC.B $1A,X                               ; $8DD44E |
  RTL                                       ; $8DD450 |

CODE_8DD451:
  LDA.W #$0070                              ; $8DD451 |
  STA.B $10                                 ; $8DD454 |
  LDA.W #$0060                              ; $8DD456 |
  STA.B $12                                 ; $8DD459 |
  LDA.W #$0092                              ; $8DD45B |
  JSL.L CODE_FL_8580EE                      ; $8DD45E |
  BCS CODE_8DD49D                           ; $8DD462 |
  LDA.B $09,X                               ; $8DD464 |
  PHA                                       ; $8DD466 |
  LDA.W #$0080                              ; $8DD467 |
  STA.B $09,X                               ; $8DD46A |
  LDA.W #$0008                              ; $8DD46C |
  STA.B $10                                 ; $8DD46F |
  LDA.W #$0010                              ; $8DD471 |
  STA.B $12                                 ; $8DD474 |
  LDA.W #$2024                              ; $8DD476 |
  STA.B $16                                 ; $8DD479 |
  JSL.L CODE_FL_85A986                      ; $8DD47B |
  BCS CODE_8DD492                           ; $8DD47F |

CODE_8DD481:
  JSL.L CODE_FL_85AD8B                      ; $8DD481 |
  LDA.W $0004,Y                             ; $8DD485 |
  ORA.W #$1898                              ; $8DD488 |
  STA.W $0004,Y                             ; $8DD48B |
  DEC.B $10                                 ; $8DD48E |
  BNE CODE_8DD481                           ; $8DD490 |

CODE_8DD492:
  PLA                                       ; $8DD492 |
  STA.B $09,X                               ; $8DD493 |
  STZ.B $E4                                 ; $8DD495 |
  JSL.L CODE_FL_85AC4F                      ; $8DD497 |
  INC.B $1A,X                               ; $8DD49B |

CODE_8DD49D:
  RTL                                       ; $8DD49D |

CODE_8DD49E:
  JSL.L CODE_FL_86C424                      ; $8DD49E |
  PHX                                       ; $8DD4A2 |
  ASL A                                     ; $8DD4A3 |
  TAX                                       ; $8DD4A4 |
  LDA.L PTR16_8DD4AF,X                      ; $8DD4A5 |
  PLX                                       ; $8DD4A9 |
  STA.B $00                                 ; $8DD4AA |
  JMP.W ($0000)                             ; $8DD4AC |

PTR16_8DD4AF:
  dw CODE_8DD4B9                            ; $8DD4AF |
  dw CODE_8DD4DC                            ; $8DD4B1 |
  dw CODE_8DD4E7                            ; $8DD4B3 |
  dw CODE_8DD54B                            ; $8DD4B5 |
  dw CODE_8DD56C                            ; $8DD4B7 |

CODE_8DD4B9:
  LDA.W #$0001                              ; $8DD4B9 |
  STA.B $92                                 ; $8DD4BC |
  LDA.W #$FFF8                              ; $8DD4BE |
  STA.W $1962                               ; $8DD4C1 |
  JSL.L CODE_FL_85AC3A                      ; $8DD4C4 |
  BCS CODE_8DD4D8                           ; $8DD4C8 |
  LDA.W #$01FE                              ; $8DD4CA |
  JSL.L CODE_FL_86C9C2                      ; $8DD4CD |
  BCS CODE_8DD4D7                           ; $8DD4D1 |
  STY.B $44,X                               ; $8DD4D3 |
  INC.B $1A,X                               ; $8DD4D5 |

CODE_8DD4D7:
  RTL                                       ; $8DD4D7 |

CODE_8DD4D8:
  JML.L CODE_FL_86CA2D                      ; $8DD4D8 |

CODE_8DD4DC:
  LDY.B $44,X                               ; $8DD4DC |
  LDA.W $003C,Y                             ; $8DD4DE |
  BNE CODE_8DD4E4                           ; $8DD4E1 |
  RTL                                       ; $8DD4E3 |

CODE_8DD4E4:
  INC.B $1A,X                               ; $8DD4E4 |
  RTL                                       ; $8DD4E6 |

CODE_8DD4E7:
  JSL.L CODE_FL_86C26A                      ; $8DD4E7 |
  LDA.B $09,X                               ; $8DD4EB |
  PHA                                       ; $8DD4ED |
  LDA.B $0D,X                               ; $8DD4EE |
  PHA                                       ; $8DD4F0 |
  LDA.W #$0080                              ; $8DD4F1 |
  STA.B $09,X                               ; $8DD4F4 |
  LDA.W #$0000                              ; $8DD4F6 |
  STA.B $0D,X                               ; $8DD4F9 |
  LDA.W #$0002                              ; $8DD4FB |
  JSR.W CODE_FN_8DD53A                      ; $8DD4FE |
  LDA.W #$0004                              ; $8DD501 |
  JSR.W CODE_FN_8DD53A                      ; $8DD504 |
  LDA.W #$0006                              ; $8DD507 |
  JSR.W CODE_FN_8DD53A                      ; $8DD50A |
  LDA.W #$0008                              ; $8DD50D |
  JSR.W CODE_FN_8DD53A                      ; $8DD510 |
  LDA.W #$000A                              ; $8DD513 |
  JSR.W CODE_FN_8DD53A                      ; $8DD516 |
  LDA.W #$000C                              ; $8DD519 |
  JSR.W CODE_FN_8DD53A                      ; $8DD51C |
  LDA.W #$000E                              ; $8DD51F |
  JSR.W CODE_FN_8DD53A                      ; $8DD522 |
  PLA                                       ; $8DD525 |
  LDA.B $0D,X                               ; $8DD526 |
  PLA                                       ; $8DD528 |
  STA.B $09,X                               ; $8DD529 |
  LDA.W #$0023                              ; $8DD52B |
  JSL.L push_sound_queue                    ; $8DD52E |
  LDA.W #$0040                              ; $8DD532 |
  STA.B $2C,X                               ; $8DD535 |
  INC.B $1A,X                               ; $8DD537 |
  RTL                                       ; $8DD539 |

CODE_FN_8DD53A:
  STA.B $10                                 ; $8DD53A |
  LDA.W #$0192                              ; $8DD53C |
  JSL.L CODE_FL_86C9C5                      ; $8DD53F |
  BCS CODE_8DD54A                           ; $8DD543 |
  LDA.B $10                                 ; $8DD545 |
  STA.W $003A,Y                             ; $8DD547 |

CODE_8DD54A:
  RTS                                       ; $8DD54A |

CODE_8DD54B:
  LDA.W $1C38                               ; $8DD54B |
  AND.W #$0001                              ; $8DD54E |
  ASL A                                     ; $8DD551 |
  ASL A                                     ; $8DD552 |
  SEC                                       ; $8DD553 |
  SBC.W #$0002                              ; $8DD554 |
  STA.W $1962                               ; $8DD557 |
  JSL.L CODE_FL_86C70D                      ; $8DD55A |
  JSL.L CODE_FL_85AC4F                      ; $8DD55E |
  STZ.B $E4                                 ; $8DD562 |
  LDA.W #$FFF8                              ; $8DD564 |
  STA.W $1962                               ; $8DD567 |
  INC.B $1A                                 ; $8DD56A |

CODE_8DD56C:
  RTL                                       ; $8DD56C |

CODE_8DD56D:
  JSL.L CODE_FL_86C42B                      ; $8DD56D |
  PHX                                       ; $8DD571 |
  ASL A                                     ; $8DD572 |
  TAX                                       ; $8DD573 |
  LDA.L PTR16_8DD57E,X                      ; $8DD574 |
  PLX                                       ; $8DD578 |
  STA.B $00                                 ; $8DD579 |
  JMP.W ($0000)                             ; $8DD57B |

PTR16_8DD57E:
  dw CODE_8DD586                            ; $8DD57E |
  dw CODE_8DD5C1                            ; $8DD580 |
  dw CODE_8DD635                            ; $8DD582 |
  dw CODE_8DD669                            ; $8DD584 |

CODE_8DD586:
  JSL.L CODE_FL_86C7A5                      ; $8DD586 |
  TDC                                       ; $8DD58A |
  STA.L $7E7C06                             ; $8DD58B |
  JSL.L CODE_FL_85A8D6                      ; $8DD58F |
  LDA.W #$0018                              ; $8DD593 |
  JSL.L CODE_FL_86C9A4                      ; $8DD596 |
  JSL.L CODE_FL_86C7C4                      ; $8DD59A |
  JSL.L CODE_FL_85AAB6                      ; $8DD59E |
  LDA.W #$2032                              ; $8DD5A2 |
  JSL.L CODE_FL_86CAE6                      ; $8DD5A5 |
  LDA.W #$2032                              ; $8DD5A9 |
  JSL.L CODE_FL_86CAEE                      ; $8DD5AC |
  LDA.W #$6020                              ; $8DD5B0 |
  STA.B $34,X                               ; $8DD5B3 |
  CLC                                       ; $8DD5B5 |
  LDA.W $1672                               ; $8DD5B6 |
  ADC.B $0D,X                               ; $8DD5B9 |
  STA.B $3A,X                               ; $8DD5BB |
  JML.L CODE_FL_86C63A                      ; $8DD5BD |

CODE_8DD5C1:
  SEC                                       ; $8DD5C1 |
  LDA.B $3A,X                               ; $8DD5C2 |
  SBC.W $1672                               ; $8DD5C4 |
  STA.B $0D,X                               ; $8DD5C7 |
  JSL.L CODE_FL_85F7C9                      ; $8DD5C9 |
  LDA.B $32,X                               ; $8DD5CD |
  BMI CODE_8DD5E5                           ; $8DD5CF |
  LDA.W $1C38                               ; $8DD5D1 |
  PHA                                       ; $8DD5D4 |
  INC A                                     ; $8DD5D5 |
  STA.W $1C38                               ; $8DD5D6 |
  JSL.L CODE_FL_85F7C9                      ; $8DD5D9 |
  PLA                                       ; $8DD5DD |
  STA.W $1C38                               ; $8DD5DE |
  LDA.B $32,X                               ; $8DD5E1 |
  BPL CODE_8DD61E                           ; $8DD5E3 |

CODE_8DD5E5:
  INC.B $3C,X                               ; $8DD5E5 |
  LDA.B $3C,X                               ; $8DD5E7 |
  CMP.W #$0001                              ; $8DD5E9 |
  BNE CODE_8DD5F5                           ; $8DD5EC |
  LDA.W #$00B0                              ; $8DD5EE |
  JSL.L CODE_FL_8089BD                      ; $8DD5F1 |

CODE_8DD5F5:
  INC.B $3E,X                               ; $8DD5F5 |
  LDA.B $3E,X                               ; $8DD5F7 |
  CMP.W #$000A                              ; $8DD5F9 |
  BCC CODE_8DD607                           ; $8DD5FC |
  STZ.B $3E,X                               ; $8DD5FE |
  LDA.W #$0021                              ; $8DD600 |
  JSL.L push_sound_queue                    ; $8DD603 |

CODE_8DD607:
  JSL.L CODE_FL_85A8C3                      ; $8DD607 |
  SEC                                       ; $8DD60B |
  LDA.W $000D,Y                             ; $8DD60C |
  SBC.W #$0022                              ; $8DD60F |
  STA.B $0D,X                               ; $8DD612 |
  LDA.B $3C,X                               ; $8DD614 |
  CMP.W #$00C0                              ; $8DD616 |
  BCS CODE_8DD628                           ; $8DD619 |
  STZ.B $32,X                               ; $8DD61B |
  RTL                                       ; $8DD61D |

CODE_8DD61E:
  LDA.W #$00C0                              ; $8DD61E |
  STA.B $0D,X                               ; $8DD621 |
  STZ.B $3C,X                               ; $8DD623 |
  STZ.B $32,X                               ; $8DD625 |
  RTL                                       ; $8DD627 |

CODE_8DD628:
  LDA.L $7E7C06                             ; $8DD628 |
  BNE CODE_8DD632                           ; $8DD62C |
  STZ.B $3C,X                               ; $8DD62E |
  INC.B $1A,X                               ; $8DD630 |

CODE_8DD632:
  STZ.B $32,X                               ; $8DD632 |
  RTL                                       ; $8DD634 |

CODE_8DD635:
  JSL.L CODE_FL_86C239                      ; $8DD635 |
  BCC CODE_8DD668                           ; $8DD639 |
  LDA.L $7E7C04                             ; $8DD63B |
  BEQ CODE_8DD666                           ; $8DD63F |
  LDA.W #$0001                              ; $8DD641 |
  STA.L $7E7C06                             ; $8DD644 |
  LDA.W #$01BA                              ; $8DD648 |
  JSL.L CODE_FL_86C9A4                      ; $8DD64B |
  BCS CODE_8DD668                           ; $8DD64F |
  LDA.B $0D,X                               ; $8DD651 |
  CLC                                       ; $8DD653 |
  ADC.W #$0040                              ; $8DD654 |
  STA.W $000D,Y                             ; $8DD657 |
  LDA.W #$0120                              ; $8DD65A |
  STA.W $0011,Y                             ; $8DD65D |
  LDA.W #$001A                              ; $8DD660 |
  STA.W $004E,Y                             ; $8DD663 |

CODE_8DD666:
  INC.B $1A,X                               ; $8DD666 |

CODE_8DD668:
  RTL                                       ; $8DD668 |

CODE_8DD669:
  LDA.B $46,X                               ; $8DD669 |
  BMI CODE_8DD671                           ; $8DD66B |
  DEC.B $1A,X                               ; $8DD66D |
  DEC.B $1A,X                               ; $8DD66F |

CODE_8DD671:
  STZ.B $46,X                               ; $8DD671 |
  RTL                                       ; $8DD673 |

CODE_8DD674:
  RTL                                       ; $8DD674 |

CODE_8DD675:
  JSL.L CODE_FL_86C412                      ; $8DD675 |
  LDA.B $1A,X                               ; $8DD679 |
  PHX                                       ; $8DD67B |
  ASL A                                     ; $8DD67C |
  TAX                                       ; $8DD67D |
  LDA.L PTR16_8DD688,X                      ; $8DD67E |
  PLX                                       ; $8DD682 |
  STA.B $00                                 ; $8DD683 |
  JMP.W ($0000)                             ; $8DD685 |

PTR16_8DD688:
  dw CODE_8DD692                            ; $8DD688 |
  dw CODE_8DD6B0                            ; $8DD68A |
  dw CODE_8DD6B8                            ; $8DD68C |
  dw CODE_8DD6DA                            ; $8DD68E |
  dw CODE_8DD6E2                            ; $8DD690 |

CODE_8DD692:
  JSL.L CODE_FL_86C7AD                      ; $8DD692 |
  LDA.W #$3000                              ; $8DD696 |
  STA.B $00,X                               ; $8DD699 |
  LDA.W $1C42                               ; $8DD69B |
  BEQ CODE_8DD6A5                           ; $8DD69E |
  LDA.W #$3010                              ; $8DD6A0 |
  STA.B $00,X                               ; $8DD6A3 |

CODE_8DD6A5:
  LDA.B $34,X                               ; $8DD6A5 |
  ORA.W #$B880                              ; $8DD6A7 |
  STA.B $34,X                               ; $8DD6AA |
  JML.L CODE_FL_86C63F                      ; $8DD6AC |

CODE_8DD6B0:
  JSL.L CODE_FL_86C855                      ; $8DD6B0 |
  JML.L CODE_FL_85A646                      ; $8DD6B4 |

CODE_8DD6B8:
  LDA.W $1C42                               ; $8DD6B8 |
  BNE CODE_8DD6D5                           ; $8DD6BB |
  LDA.B $32,X                               ; $8DD6BD |
  BPL CODE_8DD6D4                           ; $8DD6BF |
  JSL.L CODE_FL_85A589                      ; $8DD6C1 |
  LDA.W #$0001                              ; $8DD6C5 |
  STA.W $1C42                               ; $8DD6C8 |
  LDA.W #$200A                              ; $8DD6CB |
  JSL.L CODE_FL_86CAEE                      ; $8DD6CE |
  INC.B $1A,X                               ; $8DD6D2 |

CODE_8DD6D4:
  RTL                                       ; $8DD6D4 |

CODE_8DD6D5:
  INC.B $1A,X                               ; $8DD6D5 |
  INC.B $1A,X                               ; $8DD6D7 |
  RTL                                       ; $8DD6D9 |

CODE_8DD6DA:
  JSL.L CODE_FL_86C239                      ; $8DD6DA |
  BCC CODE_8DD6E2                           ; $8DD6DE |
  INC.B $1A,X                               ; $8DD6E0 |

CODE_8DD6E2:
  JSL.L CODE_FL_85A589                      ; $8DD6E2 |
  RTL                                       ; $8DD6E6 |

CODE_8DD6E7:
  JSL.L CODE_FL_86C3F8                      ; $8DD6E7 |
  LDA.B $1A,X                               ; $8DD6EB |
  PHX                                       ; $8DD6ED |
  ASL A                                     ; $8DD6EE |
  TAX                                       ; $8DD6EF |
  LDA.L PTR16_8DD6FA,X                      ; $8DD6F0 |
  PLX                                       ; $8DD6F4 |
  STA.B $00                                 ; $8DD6F5 |
  JMP.W ($0000)                             ; $8DD6F7 |

PTR16_8DD6FA:
  dw CODE_8DD702                            ; $8DD6FA |
  dw CODE_8DD723                            ; $8DD6FC |
  dw CODE_8DD727                            ; $8DD6FE |
  dw CODE_8DD74D                            ; $8DD700 |

CODE_8DD702:
  JSL.L CODE_FL_86C7AD                      ; $8DD702 |
  SEP #$20                                  ; $8DD706 |
  LDA.B #$01                                ; $8DD708 |
  STA.W $1C76                               ; $8DD70A |
  REP #$20                                  ; $8DD70D |
  LDA.W #$3000                              ; $8DD70F |
  STA.B $00,X                               ; $8DD712 |
  JSL.L CODE_FL_85A5D0                      ; $8DD714 |
  LDA.B $34,X                               ; $8DD718 |
  ORA.W #$B880                              ; $8DD71A |
  STA.B $34,X                               ; $8DD71D |
  JML.L CODE_FL_86C63F                      ; $8DD71F |

CODE_8DD723:
  JML.L CODE_FL_85A646                      ; $8DD723 |

CODE_8DD727:
  LDA.B $32,X                               ; $8DD727 |
  BPL CODE_8DD74C                           ; $8DD729 |
  JSL.L CODE_FL_85A5A7                      ; $8DD72B |
  SEP #$20                                  ; $8DD72F |
  LDA.W $1C76                               ; $8DD731 |
  CMP.B #$01                                ; $8DD734 |
  BEQ CODE_8DD73C                           ; $8DD736 |
  LDA.B #$01                                ; $8DD738 |
  BRA CODE_8DD73E                           ; $8DD73A |

CODE_8DD73C:
  LDA.B #$02                                ; $8DD73C |

CODE_8DD73E:
  STA.W $1C76                               ; $8DD73E |
  REP #$20                                  ; $8DD741 |
  LDA.W #$200E                              ; $8DD743 |
  JSL.L CODE_FL_86CAEE                      ; $8DD746 |
  INC.B $1A,X                               ; $8DD74A |

CODE_8DD74C:
  RTL                                       ; $8DD74C |

CODE_8DD74D:
  LDA.B $20,X                               ; $8DD74D |
  BNE CODE_8DD755                           ; $8DD74F |
  STZ.B $32,X                               ; $8DD751 |
  DEC.B $1A,X                               ; $8DD753 |

CODE_8DD755:
  RTL                                       ; $8DD755 |

CODE_8DD756:
  JSL.L CODE_FL_85F885                      ; $8DD756 |
  JSL.L CODE_FL_86C424                      ; $8DD75A |
  PHX                                       ; $8DD75E |
  ASL A                                     ; $8DD75F |
  TAX                                       ; $8DD760 |
  LDA.L PTR16_8DD76B,X                      ; $8DD761 |
  PLX                                       ; $8DD765 |
  STA.B $00                                 ; $8DD766 |
  JMP.W ($0000)                             ; $8DD768 |

PTR16_8DD76B:
  dw CODE_8DD771                            ; $8DD76B |
  dw CODE_8DD77C                            ; $8DD76D |
  dw CODE_8DD7A9                            ; $8DD76F |

CODE_8DD771:
  LDA.B $34,X                               ; $8DD771 |
  ORA.W #$6020                              ; $8DD773 |
  STA.B $34,X                               ; $8DD776 |
  JML.L CODE_FL_86C63F                      ; $8DD778 |

CODE_8DD77C:
  LDA.B $4E,X                               ; $8DD77C |
  AND.W #$0100                              ; $8DD77E |
  BNE CODE_8DD78B                           ; $8DD781 |
  JSL.L CODE_FL_85ABAD                      ; $8DD783 |
  BCC CODE_8DD79B                           ; $8DD787 |
  BRA CODE_8DD791                           ; $8DD789 |

CODE_8DD78B:
  JSL.L CODE_FL_85ABAD                      ; $8DD78B |
  BCC CODE_8DD79B                           ; $8DD78F |

CODE_8DD791:
  LDA.W #$0001                              ; $8DD791 |
  STA.L $7E7C06                             ; $8DD794 |
  INC.B $1A,X                               ; $8DD798 |
  RTL                                       ; $8DD79A |

CODE_8DD79B:
  LDA.B $32,X                               ; $8DD79B |
  BPL CODE_8DD7A8                           ; $8DD79D |
  LDA.W #$0000                              ; $8DD79F |
  STA.L $7E7C06                             ; $8DD7A2 |
  INC.B $1A,X                               ; $8DD7A6 |

CODE_8DD7A8:
  RTL                                       ; $8DD7A8 |

CODE_8DD7A9:
  JSL.L CODE_FL_86C239                      ; $8DD7A9 |
  BCC CODE_8DD7B3                           ; $8DD7AD |
  JML.L CODE_FL_86CA2D                      ; $8DD7AF |

CODE_8DD7B3:
  RTL                                       ; $8DD7B3 |

CODE_8DD7B4:
  JSL.L CODE_FL_85F885                      ; $8DD7B4 |
  JSL.L CODE_FL_86C424                      ; $8DD7B8 |
  PHX                                       ; $8DD7BC |
  ASL A                                     ; $8DD7BD |
  TAX                                       ; $8DD7BE |
  LDA.L PTR16_8DD7C9,X                      ; $8DD7BF |
  PLX                                       ; $8DD7C3 |
  STA.B $00                                 ; $8DD7C4 |
  JMP.W ($0000)                             ; $8DD7C6 |

PTR16_8DD7C9:
  dw CODE_8DD771                            ; $8DD7C9 |
  dw CODE_8DD7D1                            ; $8DD7CB |
  dw CODE_8DD7D8                            ; $8DD7CD |
  dw CODE_8DD7E1                            ; $8DD7CF |

CODE_8DD7D1:
  LDA.B $32,X                               ; $8DD7D1 |
  BPL CODE_8DD7D7                           ; $8DD7D3 |
  INC.B $1A,X                               ; $8DD7D5 |

CODE_8DD7D7:
  RTL                                       ; $8DD7D7 |

CODE_8DD7D8:
  JSL.L CODE_FL_86C239                      ; $8DD7D8 |
  BCC CODE_8DD7E0                           ; $8DD7DC |
  INC.B $1A,X                               ; $8DD7DE |

CODE_8DD7E0:
  RTL                                       ; $8DD7E0 |

CODE_8DD7E1:
  LDA.B $4E,X                               ; $8DD7E1 |
  AND.W #$0100                              ; $8DD7E3 |
  BEQ CODE_8DD7F2                           ; $8DD7E6 |
  LDA.B $32,X                               ; $8DD7E8 |
  BMI CODE_8DD7F0                           ; $8DD7EA |
  DEC.B $1A,X                               ; $8DD7EC |
  DEC.B $1A,X                               ; $8DD7EE |

CODE_8DD7F0:
  STZ.B $32,X                               ; $8DD7F0 |

CODE_8DD7F2:
  RTL                                       ; $8DD7F2 |

CODE_8DD7F3:
  JSL.L CODE_FL_86C424                      ; $8DD7F3 |
  PHX                                       ; $8DD7F7 |
  ASL A                                     ; $8DD7F8 |
  TAX                                       ; $8DD7F9 |
  LDA.L PTR16_8DD804,X                      ; $8DD7FA |
  PLX                                       ; $8DD7FE |
  STA.B $00                                 ; $8DD7FF |
  JMP.W ($0000)                             ; $8DD801 |

PTR16_8DD804:
  dw CODE_8DD808                            ; $8DD804 |
  dw CODE_8DD814                            ; $8DD806 |

CODE_8DD808:
  LDA.L $700758                             ; $8DD808 |
  CMP.W #$000A                              ; $8DD80C |
  BNE CODE_8DD82E                           ; $8DD80F |
  INC.B $1A,X                               ; $8DD811 |
  RTL                                       ; $8DD813 |

CODE_8DD814:
  SEC                                       ; $8DD814 |
  LDA.B $09,X                               ; $8DD815 |
  SBC.W #$0020                              ; $8DD817 |
  STA.B $08                                 ; $8DD81A |
  SEC                                       ; $8DD81C |
  LDA.B $0D,X                               ; $8DD81D |
  SBC.W #$0020                              ; $8DD81F |
  STA.B $0A                                 ; $8DD822 |
  LDA.W #$00F0                              ; $8DD824 |
  JSL.L CODE_FL_8580F7                      ; $8DD827 |
  BCC CODE_8DD82E                           ; $8DD82B |
  RTL                                       ; $8DD82D |

CODE_8DD82E:
  JML.L CODE_FL_86CA36                      ; $8DD82E |

CODE_8DD832:
  JSL.L CODE_FL_86C424                      ; $8DD832 |
  PHX                                       ; $8DD836 |
  ASL A                                     ; $8DD837 |
  TAX                                       ; $8DD838 |
  LDA.L PTR16_8DD843,X                      ; $8DD839 |
  PLX                                       ; $8DD83D |
  STA.B $00                                 ; $8DD83E |
  JMP.W ($0000)                             ; $8DD840 |

PTR16_8DD843:
  dw CODE_8DD84B                            ; $8DD843 |
  dw CODE_8DD869                            ; $8DD845 |
  dw CODE_8DD86D                            ; $8DD847 |
  dw CODE_8DD87C                            ; $8DD849 |

CODE_8DD84B:
  JSL.L CODE_FL_85AC3A                      ; $8DD84B |
  BCS CODE_8DD860                           ; $8DD84F |
  JSL.L CODE_FL_85A8DE                      ; $8DD851 |
  LDA.B $34,X                               ; $8DD855 |
  ORA.W #$A000                              ; $8DD857 |
  STA.B $34,X                               ; $8DD85A |
  JML.L CODE_FL_86C63A                      ; $8DD85C |

CODE_8DD860:
  LDA.W #$0002                              ; $8DD860 |
  STA.B $1A,X                               ; $8DD863 |
  JML.L CODE_FL_86C63A                      ; $8DD865 |

CODE_8DD869:
  JML.L CODE_JL_85ACF8                      ; $8DD869 |

CODE_8DD86D:
  LDA.W #$0060                              ; $8DD86D |
  STA.B $2C,X                               ; $8DD870 |
  INC.B $1A,X                               ; $8DD872 |
  LDA.W #$0023                              ; $8DD874 |
  JSL.L push_sound_queue                    ; $8DD877 |
  RTL                                       ; $8DD87B |

CODE_8DD87C:
  LDA.W $1C38                               ; $8DD87C |
  AND.W #$0007                              ; $8DD87F |
  BNE CODE_8DD888                           ; $8DD882 |
  JSL.L CODE_FL_8CFBCE                      ; $8DD884 |

CODE_8DD888:
  JSL.L CODE_FL_86C70D                      ; $8DD888 |
  LDA.B $09,X                               ; $8DD88C |
  SEC                                       ; $8DD88E |
  SBC.W #$0010                              ; $8DD88F |
  STA.B $08                                 ; $8DD892 |
  LDA.B $0D,X                               ; $8DD894 |
  SEC                                       ; $8DD896 |
  SBC.W #$0020                              ; $8DD897 |
  STA.B $0A                                 ; $8DD89A |
  LDA.W #$00F2                              ; $8DD89C |
  JSL.L CODE_FL_8580F7                      ; $8DD89F |
  BCC CODE_8DD8A6                           ; $8DD8A3 |
  RTL                                       ; $8DD8A5 |

CODE_8DD8A6:
  JSL.L CODE_FL_85AC4F                      ; $8DD8A6 |
  JML.L CODE_FL_86CA36                      ; $8DD8AA |

CODE_8DD8AE:
  JSL.L CODE_FL_86C424                      ; $8DD8AE |
  PHX                                       ; $8DD8B2 |
  ASL A                                     ; $8DD8B3 |
  TAX                                       ; $8DD8B4 |
  LDA.L PTR16_8DD8BF,X                      ; $8DD8B5 |
  PLX                                       ; $8DD8B9 |
  STA.B $00                                 ; $8DD8BA |
  JMP.W ($0000)                             ; $8DD8BC |

PTR16_8DD8BF:
  dw CODE_8DD8C3                            ; $8DD8BF |
  dw CODE_8DD8CA                            ; $8DD8C1 |

CODE_8DD8C3:
  JSL.L CODE_FL_85AA07                      ; $8DD8C3 |
  INC.B $1A,X                               ; $8DD8C7 |
  RTL                                       ; $8DD8C9 |

CODE_8DD8CA:
  LDA.W $1C66                               ; $8DD8CA |
  BNE CODE_8DD8DF                           ; $8DD8CD |
  JSL.L CODE_FL_86C70D                      ; $8DD8CF |
  LDA.W #$0068                              ; $8DD8D3 |
  JSL.L CODE_FL_8089BD                      ; $8DD8D6 |
  LDA.W #$0080                              ; $8DD8DA |
  STA.B $2C,X                               ; $8DD8DD |

CODE_8DD8DF:
  RTL                                       ; $8DD8DF |

  RTL                                       ; $8DD8E0 |

  RTL                                       ; $8DD8E1 |

CODE_8DD8E2:
  LDA.B $EE                                 ; $8DD8E2 |
  CMP.W #$0078                              ; $8DD8E4 |
  BNE CODE_8DD8F0                           ; $8DD8E7 |
  LDA.W #$002C                              ; $8DD8E9 |
  JSL.L push_sound_queue                    ; $8DD8EC |

CODE_8DD8F0:
  JML.L CODE_FL_86CA2D                      ; $8DD8F0 |

CODE_8DD8F4:
  JSL.L CODE_FL_82BE73                      ; $8DD8F4 |
  LDA.B $32,X                               ; $8DD8F8 |
  AND.W #$8000                              ; $8DD8FA |
  BEQ CODE_8DD916                           ; $8DD8FD |
  LDA.W $1C98                               ; $8DD8FF |
  BNE CODE_8DD916                           ; $8DD902 |
  LDA.W #$000C                              ; $8DD904 |
  JSL.L push_sound_queue                    ; $8DD907 |
  LDA.W #$0001                              ; $8DD90B |
  STA.W $1C98                               ; $8DD90E |
  LDA.W #$0010                              ; $8DD911 |
  STA.B $38,X                               ; $8DD914 |

CODE_8DD916:
  LDA.B $38,X                               ; $8DD916 |
  BNE CODE_8DD91F                           ; $8DD918 |
  STZ.W $1C98                               ; $8DD91A |
  STZ.B $32,X                               ; $8DD91D |

CODE_8DD91F:
  JSR.W CODE_FN_8DE059                      ; $8DD91F |
  JSR.W CODE_FN_8DE06C                      ; $8DD922 |
  JSL.L CODE_FL_85F885                      ; $8DD925 |
  JSL.L CODE_FL_86C3F8                      ; $8DD929 |
  PHX                                       ; $8DD92D |
  ASL A                                     ; $8DD92E |
  TAX                                       ; $8DD92F |
  LDA.L PTR16_8DD93A,X                      ; $8DD930 |
  PLX                                       ; $8DD934 |
  STA.B $00                                 ; $8DD935 |
  JMP.W ($0000)                             ; $8DD937 |

PTR16_8DD93A:
  dw CODE_8DD94A                            ; $8DD93A |
  dw CODE_8DD9A8                            ; $8DD93C |
  dw CODE_8DDB52                            ; $8DD93E |
  dw CODE_8DDBE2                            ; $8DD940 |
  dw CODE_8DDC19                            ; $8DD942 |
  dw CODE_8DDCBF                            ; $8DD944 |
  dw CODE_8DDD4A                            ; $8DD946 |
  dw CODE_8DDDA5                            ; $8DD948 |

CODE_8DD94A:
  LDA.W #$0011                              ; $8DD94A |
  STA.W $0092                               ; $8DD94D |
  LDA.W #$0130                              ; $8DD950 |
  STA.W $1672                               ; $8DD953 |
  LDA.W #$0199                              ; $8DD956 |
  JSL.L CODE_FL_86C9A7                      ; $8DD959 |
  BCS CODE_8DD9A7                           ; $8DD95D |
  TXA                                       ; $8DD95F |
  STA.W $003A,Y                             ; $8DD960 |
  LDA.W #$019A                              ; $8DD963 |
  JSL.L CODE_FL_86C9A7                      ; $8DD966 |
  BCS CODE_8DD9A7                           ; $8DD96A |
  TXA                                       ; $8DD96C |
  STA.W $003A,Y                             ; $8DD96D |
  LDA.W #$0226                              ; $8DD970 |
  JSL.L CODE_FL_86C9A7                      ; $8DD973 |
  BCS CODE_8DD9A7                           ; $8DD977 |
  TXA                                       ; $8DD979 |
  STA.W $003A,Y                             ; $8DD97A |
  LDA.W #$0001                              ; $8DD97D |
  STA.L $7E7D90                             ; $8DD980 |
  JSL.L CODE_FL_86C7A5                      ; $8DD984 |
  PHX                                       ; $8DD988 |
  LDY.W #$9FA8                              ; $8DD989 |
  JSL.L CODE_FL_8AAF61                      ; $8DD98C |
  PLX                                       ; $8DD990 |
  STZ.W $1C8E                               ; $8DD991 |
  STZ.W $1C90                               ; $8DD994 |
  STZ.W $1C92                               ; $8DD997 |
  STZ.W $1C94                               ; $8DD99A |
  STZ.W $1C96                               ; $8DD99D |
  STZ.W $1C98                               ; $8DD9A0 |
  JML.L CODE_FL_86C63F                      ; $8DD9A3 |

CODE_8DD9A7:
  RTL                                       ; $8DD9A7 |

CODE_8DD9A8:
  LDA.B $3A,X                               ; $8DD9A8 |
  PHX                                       ; $8DD9AA |
  ASL A                                     ; $8DD9AB |
  TAX                                       ; $8DD9AC |
  LDA.L PTR16_8DD9B7,X                      ; $8DD9AD |
  PLX                                       ; $8DD9B1 |
  STA.B $00                                 ; $8DD9B2 |
  JMP.W ($0000)                             ; $8DD9B4 |

PTR16_8DD9B7:
  dw CODE_8DD9CD                            ; $8DD9B7 |
  dw CODE_8DD9E8                            ; $8DD9B9 |
  dw CODE_8DDA2C                            ; $8DD9BB |
  dw CODE_8DDA45                            ; $8DD9BD |
  dw CODE_8DDA67                            ; $8DD9BF |
  dw CODE_8DDA88                            ; $8DD9C1 |
  dw CODE_8DDA9F                            ; $8DD9C3 |
  dw CODE_8DDABD                            ; $8DD9C5 |
  dw CODE_8DDAD0                            ; $8DD9C7 |
  dw CODE_8DDB01                            ; $8DD9C9 |
  dw CODE_8DDB15                            ; $8DD9CB |

CODE_8DD9CD:
  LDA.W #$0020                              ; $8DD9CD |
  JSL.L CODE_FL_8DE009                      ; $8DD9D0 |
  LDA.W #$8001                              ; $8DD9D4 |
  STA.B $E4                                 ; $8DD9D7 |
  JSL.L CODE_FL_8B80CE                      ; $8DD9D9 |
  STZ.W $00A4                               ; $8DD9DD |
  LDA.W #$0040                              ; $8DD9E0 |
  STA.B $2C,X                               ; $8DD9E3 |
  INC.B $3A,X                               ; $8DD9E5 |
  RTL                                       ; $8DD9E7 |

CODE_8DD9E8:
  LDA.W #$0020                              ; $8DD9E8 |
  JSL.L CODE_FL_8DE009                      ; $8DD9EB |
  LDA.B $2C,X                               ; $8DD9EF |
  BEQ CODE_8DDA06                           ; $8DD9F1 |
  CMP.W #$0028                              ; $8DD9F3 |
  BCS CODE_8DD9FE                           ; $8DD9F6 |
  LDA.W #$0100                              ; $8DD9F8 |
  STA.W $0558                               ; $8DD9FB |

CODE_8DD9FE:
  LDA.W #$0100                              ; $8DD9FE |
  STA.W $0498                               ; $8DDA01 |
  BRA CODE_8DDA10                           ; $8DDA04 |

CODE_8DDA06:
  LDA.B $48,X                               ; $8DDA06 |
  BNE CODE_8DDA10                           ; $8DDA08 |
  JSL.L CODE_FL_8B80CE                      ; $8DDA0A |
  INC.B $48,X                               ; $8DDA0E |

CODE_8DDA10:
  LDA.W #$4B30                              ; $8DDA10 |
  STA.B $40,X                               ; $8DDA13 |
  JSL.L CODE_FL_8098FD                      ; $8DDA15 |
  BCC CODE_8DDA2B                           ; $8DDA19 |
  LDA.W #$8001                              ; $8DDA1B |
  STA.B $E4                                 ; $8DDA1E |
  JSL.L CODE_FL_8B80CE                      ; $8DDA20 |
  LDA.W #$0080                              ; $8DDA24 |
  STA.B $2C,X                               ; $8DDA27 |
  INC.B $3A,X                               ; $8DDA29 |

CODE_8DDA2B:
  RTL                                       ; $8DDA2B |

CODE_8DDA2C:
  LDA.W #$0020                              ; $8DDA2C |
  JSL.L CODE_FL_8DE009                      ; $8DDA2F |
  JSL.L CODE_FL_86C70D                      ; $8DDA33 |
  LDA.W #$FFFE                              ; $8DDA37 |
  STA.W $1962                               ; $8DDA3A |
  LDA.W #$0020                              ; $8DDA3D |
  STA.B $48,X                               ; $8DDA40 |
  INC.B $3A,X                               ; $8DDA42 |
  RTL                                       ; $8DDA44 |

CODE_8DDA45:
  LDA.W $1672                               ; $8DDA45 |
  CMP.W #$0100                              ; $8DDA48 |
  BNE CODE_8DDA53                           ; $8DDA4B |
  LDA.W #$0000                              ; $8DDA4D |
  STA.W $1962                               ; $8DDA50 |

CODE_8DDA53:
  LDA.B $48,X                               ; $8DDA53 |
  JSL.L CODE_FL_8DE009                      ; $8DDA55 |
  DEC.B $48,X                               ; $8DDA59 |
  BPL CODE_8DDA66                           ; $8DDA5B |
  STZ.B $48,X                               ; $8DDA5D |
  LDA.W #$0008                              ; $8DDA5F |
  STA.B $2C,X                               ; $8DDA62 |
  INC.B $3A,X                               ; $8DDA64 |

CODE_8DDA66:
  RTL                                       ; $8DDA66 |

CODE_8DDA67:
  JSL.L CODE_FL_86C70D                      ; $8DDA67 |
  JSL.L CODE_FL_808F6E                      ; $8DDA6B |
  JSL.L CODE_FL_82BE90                      ; $8DDA6F |
  LDA.W #$0003                              ; $8DDA73 |
  STA.B $48,X                               ; $8DDA76 |
  LDA.W #$0001                              ; $8DDA78 |
  STA.W $00A4                               ; $8DDA7B |
  LDA.W #$0088                              ; $8DDA7E |
  JSL.L CODE_FL_8089BD                      ; $8DDA81 |
  INC.B $3A,X                               ; $8DDA85 |
  RTL                                       ; $8DDA87 |

CODE_8DDA88:
  LDA.B $48,X                               ; $8DDA88 |
  JSL.L CODE_FL_82BEC6                      ; $8DDA8A |
  INC.B $48,X                               ; $8DDA8E |
  LDA.B $48,X                               ; $8DDA90 |
  CMP.W #$0041                              ; $8DDA92 |
  BCC CODE_8DDA9E                           ; $8DDA95 |
  LDA.W #$0020                              ; $8DDA97 |
  STA.B $2C,X                               ; $8DDA9A |
  INC.B $3A,X                               ; $8DDA9C |

CODE_8DDA9E:
  RTL                                       ; $8DDA9E |

CODE_8DDA9F:
  LDA.W #$0040                              ; $8DDA9F |
  JSL.L CODE_FL_82BEC6                      ; $8DDAA2 |
  JSL.L CODE_FL_86C70D                      ; $8DDAA6 |
  LDA.W #$0020                              ; $8DDAAA |
  STA.B $2C,X                               ; $8DDAAD |
  LDA.W #$3000                              ; $8DDAAF |
  STA.B $00,X                               ; $8DDAB2 |
  INC.B $3A,X                               ; $8DDAB4 |
  LDY.W #$BA77                              ; $8DDAB6 |
  JML.L CODE_FL_80C26D                      ; $8DDAB9 |

CODE_8DDABD:
  LDA.W #$0040                              ; $8DDABD |
  JSL.L CODE_FL_82BEC6                      ; $8DDAC0 |
  JSL.L CODE_FL_86C70D                      ; $8DDAC4 |
  LDA.W #$0080                              ; $8DDAC8 |
  STA.B $4C,X                               ; $8DDACB |
  INC.B $3A,X                               ; $8DDACD |
  RTL                                       ; $8DDACF |

CODE_8DDAD0:
  LDA.W #$0040                              ; $8DDAD0 |
  JSL.L CODE_FL_82BEC6                      ; $8DDAD3 |
  JSL.L CODE_FL_85A62E                      ; $8DDAD7 |
  BEQ CODE_8DDB00                           ; $8DDADB |
  LDA.W #$0001                              ; $8DDADD |
  JSL.L CODE_FL_B3FE45                      ; $8DDAE0 |
  LDA.W #$001B                              ; $8DDAE4 |
  JSL.L push_sound_queue                    ; $8DDAE7 |
  LDA.W #$0040                              ; $8DDAEB |
  STA.B $48,X                               ; $8DDAEE |
  LDA.W #$3038                              ; $8DDAF0 |
  JSL.L CODE_FL_86CAEE                      ; $8DDAF3 |
  LDY.W #$0170                              ; $8DDAF7 |
  JSL.L CODE_FL_808993                      ; $8DDAFA |
  INC.B $3A,X                               ; $8DDAFE |

CODE_8DDB00:
  RTL                                       ; $8DDB00 |

CODE_8DDB01:
  LDA.B $48,X                               ; $8DDB01 |
  JSL.L CODE_FL_82BEC6                      ; $8DDB03 |
  DEC.B $48,X                               ; $8DDB07 |
  BPL CODE_8DDB14                           ; $8DDB09 |
  LDA.W #$0010                              ; $8DDB0B |
  STA.B $2C,X                               ; $8DDB0E |
  STZ.B $48,X                               ; $8DDB10 |
  INC.B $3A,X                               ; $8DDB12 |

CODE_8DDB14:
  RTL                                       ; $8DDB14 |

CODE_8DDB15:
  LDA.B $48,X                               ; $8DDB15 |
  BNE CODE_8DDB22                           ; $8DDB17 |
  LDA.W #$303C                              ; $8DDB19 |
  JSL.L CODE_FL_86CAEE                      ; $8DDB1C |
  INC.B $48,X                               ; $8DDB20 |

CODE_8DDB22:
  JSL.L CODE_FL_86C70D                      ; $8DDB22 |
  LDA.W #$4BAA                              ; $8DDB26 |
  JSL.L CODE_FL_809934                      ; $8DDB29 |
  BCC CODE_8DDB51                           ; $8DDB2D |
  JSL.L CODE_FL_85A9EF                      ; $8DDB2F |
  JSL.L CODE_FL_85B00E                      ; $8DDB33 |
  LDA.B $22,X                               ; $8DDB37 |
  ORA.W #$0010                              ; $8DDB39 |
  STA.B $22,X                               ; $8DDB3C |
  LDA.W #$0020                              ; $8DDB3E |
  STA.B $2C,X                               ; $8DDB41 |
  STZ.B $E4                                 ; $8DDB43 |
  STZ.B $48,X                               ; $8DDB45 |
  STZ.B $3A,X                               ; $8DDB47 |
  STZ.W $1C96                               ; $8DDB49 |
  LDA.W #$0005                              ; $8DDB4C |
  STA.B $1A,X                               ; $8DDB4F |

CODE_8DDB51:
  RTL                                       ; $8DDB51 |

CODE_8DDB52:
  LDA.B $3A,X                               ; $8DDB52 |
  PHX                                       ; $8DDB54 |
  ASL A                                     ; $8DDB55 |
  TAX                                       ; $8DDB56 |
  LDA.L PTR16_8DDB61,X                      ; $8DDB57 |
  PLX                                       ; $8DDB5B |
  STA.B $00                                 ; $8DDB5C |
  JMP.W ($0000)                             ; $8DDB5E |

PTR16_8DDB61:
  dw CODE_8DDB67                            ; $8DDB61 |
  dw CODE_8DDB81                            ; $8DDB63 |
  dw CODE_8DDBBB                            ; $8DDB65 |

CODE_8DDB67:
  JSL.L CODE_FL_86C70D                      ; $8DDB67 |
  LDA.W #$3238                              ; $8DDB6B |
  STA.B $00,X                               ; $8DDB6E |
  LDA.B $46,X                               ; $8DDB70 |
  STA.B $26,X                               ; $8DDB72 |
  LDA.W #$F800                              ; $8DDB74 |
  STA.B $28,X                               ; $8DDB77 |
  LDA.W #$0080                              ; $8DDB79 |
  STA.B $4C,X                               ; $8DDB7C |
  INC.B $3A,X                               ; $8DDB7E |
  RTL                                       ; $8DDB80 |

CODE_8DDB81:
  SEC                                       ; $8DDB81 |
  LDA.B $09,X                               ; $8DDB82 |
  SBC.B $2E,X                               ; $8DDB84 |
  BMI CODE_8DDB92                           ; $8DDB86 |
  CLC                                       ; $8DDB88 |
  LDA.B $09,X                               ; $8DDB89 |
  ADC.B $2E,X                               ; $8DDB8B |
  CMP.W #$0100                              ; $8DDB8D |
  BCC CODE_8DDB94                           ; $8DDB90 |

CODE_8DDB92:
  STZ.B $26,X                               ; $8DDB92 |

CODE_8DDB94:
  JSL.L CODE_FL_85A603                      ; $8DDB94 |
  BEQ CODE_8DDBBA                           ; $8DDB98 |
  LDA.W #$0001                              ; $8DDB9A |
  JSL.L CODE_FL_B3FE45                      ; $8DDB9D |
  LDA.W #$001B                              ; $8DDBA1 |
  JSL.L push_sound_queue                    ; $8DDBA4 |
  LDA.W #$31F4                              ; $8DDBA8 |
  STA.B $00,X                               ; $8DDBAB |
  LDA.B $26,X                               ; $8DDBAD |
  STA.B $46,X                               ; $8DDBAF |
  STZ.B $26,X                               ; $8DDBB1 |
  LDA.W #$0010                              ; $8DDBB3 |
  STA.B $2C,X                               ; $8DDBB6 |
  INC.B $3A,X                               ; $8DDBB8 |

CODE_8DDBBA:
  RTL                                       ; $8DDBBA |

CODE_8DDBBB:
  LDA.B $46,X                               ; $8DDBBB |
  BEQ CODE_8DDBCB                           ; $8DDBBD |
  LDA.W #$0020                              ; $8DDBBF |
  STA.B $2C,X                               ; $8DDBC2 |
  LDA.W #$0000                              ; $8DDBC4 |
  STA.B $3A,X                               ; $8DDBC7 |
  BRA CODE_8DDBE1                           ; $8DDBC9 |

CODE_8DDBCB:
  JSL.L CODE_FL_86C70D                      ; $8DDBCB |
  JSR.W CODE_FN_8DE07B                      ; $8DDBCF |
  LDA.W #$3000                              ; $8DDBD2 |
  STA.B $00,X                               ; $8DDBD5 |
  LDA.W #$0020                              ; $8DDBD7 |
  STA.B $2C,X                               ; $8DDBDA |
  LDA.W #$0003                              ; $8DDBDC |
  STA.B $1A,X                               ; $8DDBDF |

CODE_8DDBE1:
  RTL                                       ; $8DDBE1 |

CODE_8DDBE2:
  JSL.L CODE_FL_86C70D                      ; $8DDBE2 |
  LDA.B $04,X                               ; $8DDBE6 |
  EOR.W #$2020                              ; $8DDBE8 |
  STA.B $04,X                               ; $8DDBEB |
  LDA.B $86                                 ; $8DDBED |
  AND.W #$0001                              ; $8DDBEF |
  BNE CODE_8DDC07                           ; $8DDBF2 |
  LDA.W #$3038                              ; $8DDBF4 |
  JSL.L CODE_FL_86CAEE                      ; $8DDBF7 |
  LDA.W #$0020                              ; $8DDBFB |
  STA.B $2C,X                               ; $8DDBFE |
  LDA.W #$0004                              ; $8DDC00 |
  STA.B $1A,X                               ; $8DDC03 |
  BRA CODE_8DDC18                           ; $8DDC05 |

CODE_8DDC07:
  LDA.W #$3038                              ; $8DDC07 |
  JSL.L CODE_FL_86CAEE                      ; $8DDC0A |
  LDA.W #$0040                              ; $8DDC0E |
  STA.B $2C,X                               ; $8DDC11 |
  LDA.W #$0005                              ; $8DDC13 |
  STA.B $1A,X                               ; $8DDC16 |

CODE_8DDC18:
  RTL                                       ; $8DDC18 |

CODE_8DDC19:
  LDA.B $3C,X                               ; $8DDC19 |
  PHX                                       ; $8DDC1B |
  ASL A                                     ; $8DDC1C |
  TAX                                       ; $8DDC1D |
  LDA.L PTR16_8DDC28,X                      ; $8DDC1E |
  PLX                                       ; $8DDC22 |
  STA.B $00                                 ; $8DDC23 |
  JMP.W ($0000)                             ; $8DDC25 |

PTR16_8DDC28:
  dw CODE_8DDC30                            ; $8DDC28 |
  dw CODE_8DDC43                            ; $8DDC2A |
  dw CODE_8DDC5A                            ; $8DDC2C |
  dw CODE_8DDC8D                            ; $8DDC2E |

CODE_8DDC30:
  JSL.L CODE_FL_86C70D                      ; $8DDC30 |
  LDA.W #$313E                              ; $8DDC34 |
  STA.B $00,X                               ; $8DDC37 |
  STZ.B $1E,X                               ; $8DDC39 |
  LDA.W #$0010                              ; $8DDC3B |
  STA.B $2C,X                               ; $8DDC3E |
  INC.B $3C,X                               ; $8DDC40 |
  RTL                                       ; $8DDC42 |

CODE_8DDC43:
  JSL.L CODE_FL_86C70D                      ; $8DDC43 |
  LDA.W #$FE00                              ; $8DDC47 |
  JSL.L CODE_FL_86C887                      ; $8DDC4A |
  JSR.W CODE_FN_8DE09C                      ; $8DDC4E |
  LDA.W #$0001                              ; $8DDC51 |
  STA.W $1C96                               ; $8DDC54 |
  INC.B $3C,X                               ; $8DDC57 |
  RTL                                       ; $8DDC59 |

CODE_8DDC5A:
  DEC.W $1C96                               ; $8DDC5A |
  BNE CODE_8DDC6C                           ; $8DDC5D |
  LDA.W #$0017                              ; $8DDC5F |
  JSL.L push_sound_queue                    ; $8DDC62 |
  LDA.W #$000A                              ; $8DDC66 |
  STA.W $1C96                               ; $8DDC69 |

CODE_8DDC6C:
  LDA.W #$01A1                              ; $8DDC6C |
  JSL.L CODE_FL_86C9A7                      ; $8DDC6F |
  BCS CODE_8DDC79                           ; $8DDC73 |
  TXA                                       ; $8DDC75 |
  STA.W $003A,Y                             ; $8DDC76 |

CODE_8DDC79:
  JSR.W CODE_FN_8DE0BB                      ; $8DDC79 |
  BCC CODE_8DDC8C                           ; $8DDC7C |
  STZ.B $26,X                               ; $8DDC7E |
  LDA.W #$303A                              ; $8DDC80 |
  JSL.L CODE_FL_86CAEE                      ; $8DDC83 |
  STZ.W $1C96                               ; $8DDC87 |
  INC.B $3C,X                               ; $8DDC8A |

CODE_8DDC8C:
  RTL                                       ; $8DDC8C |

CODE_8DDC8D:
  LDA.B $20,X                               ; $8DDC8D |
  BNE CODE_8DDCA8                           ; $8DDC8F |
  LDA.W #$31F4                              ; $8DDC91 |
  STA.B $00,X                               ; $8DDC94 |
  STZ.B $1E,X                               ; $8DDC96 |
  LDA.W #$0020                              ; $8DDC98 |
  STA.B $2C,X                               ; $8DDC9B |
  JSR.W CODE_FN_8DE085                      ; $8DDC9D |
  JSR.W CODE_FN_8DE07B                      ; $8DDCA0 |
  LDA.W #$0002                              ; $8DDCA3 |
  STA.B $1A,X                               ; $8DDCA6 |

CODE_8DDCA8:
  LDA.B $00,X                               ; $8DDCA8 |
  CMP.W #$3182                              ; $8DDCAA |
  BNE CODE_8DDCBE                           ; $8DDCAD |
  LDA.W $1C96                               ; $8DDCAF |
  BNE CODE_8DDCBE                           ; $8DDCB2 |
  LDA.W #$0038                              ; $8DDCB4 |
  JSL.L push_sound_queue                    ; $8DDCB7 |
  INC.W $1C96                               ; $8DDCBB |

CODE_8DDCBE:
  RTL                                       ; $8DDCBE |

CODE_8DDCBF:
  LDA.B $3C,X                               ; $8DDCBF |
  PHX                                       ; $8DDCC1 |
  ASL A                                     ; $8DDCC2 |
  TAX                                       ; $8DDCC3 |
  LDA.L PTR16_8DDCCE,X                      ; $8DDCC4 |
  PLX                                       ; $8DDCC8 |
  STA.B $00                                 ; $8DDCC9 |
  JMP.W ($0000)                             ; $8DDCCB |

PTR16_8DDCCE:
  dw CODE_8DDCD6                            ; $8DDCCE |
  dw CODE_8DDCF5                            ; $8DDCD0 |
  dw CODE_8DDD18                            ; $8DDCD2 |
  dw CODE_8DDD2E                            ; $8DDCD4 |

CODE_8DDCD6:
  JSL.L CODE_FL_86C70D                      ; $8DDCD6 |
  LDA.W #$30EA                              ; $8DDCDA |
  STA.B $00,X                               ; $8DDCDD |
  STZ.B $1E,X                               ; $8DDCDF |
  LDA.W #$00BC                              ; $8DDCE1 |
  JSL.L CODE_FL_8089BD                      ; $8DDCE4 |
  LDA.W #$0010                              ; $8DDCE8 |
  STA.B $2C,X                               ; $8DDCEB |
  LDA.W #$000C                              ; $8DDCED |
  STA.B $4E,X                               ; $8DDCF0 |
  INC.B $3C,X                               ; $8DDCF2 |
  RTL                                       ; $8DDCF4 |

CODE_8DDCF5:
  JSL.L CODE_FL_86C70D                      ; $8DDCF5 |
  LDA.W #$019B                              ; $8DDCF9 |
  JSL.L CODE_FL_86C9A7                      ; $8DDCFC |
  BCS CODE_8DDD17                           ; $8DDD00 |
  LDA.W #$0800                              ; $8DDD02 |
  STA.W $004E,Y                             ; $8DDD05 |
  LDA.B $04,X                               ; $8DDD08 |
  STA.W $0004,Y                             ; $8DDD0A |
  DEC.B $4E,X                               ; $8DDD0D |
  BNE CODE_8DDD17                           ; $8DDD0F |
  JSL.L CODE_FL_85AAB6                      ; $8DDD11 |
  INC.B $3C,X                               ; $8DDD15 |

CODE_8DDD17:
  RTL                                       ; $8DDD17 |

CODE_8DDD18:
  LDY.B $44,X                               ; $8DDD18 |
  LDA.W $0044,Y                             ; $8DDD1A |
  BNE CODE_8DDD2D                           ; $8DDD1D |
  LDA.W #$3000                              ; $8DDD1F |
  STA.B $00,X                               ; $8DDD22 |
  STZ.B $1E,X                               ; $8DDD24 |
  LDA.W #$0040                              ; $8DDD26 |
  STA.B $2C,X                               ; $8DDD29 |
  INC.B $3C,X                               ; $8DDD2B |

CODE_8DDD2D:
  RTL                                       ; $8DDD2D |

CODE_8DDD2E:
  JSL.L CODE_FL_86C70D                      ; $8DDD2E |
  LDA.W #$31F4                              ; $8DDD32 |
  STA.B $00,X                               ; $8DDD35 |
  STZ.B $1E,X                               ; $8DDD37 |
  LDA.W #$0020                              ; $8DDD39 |
  STA.B $2C,X                               ; $8DDD3C |
  JSR.W CODE_FN_8DE085                      ; $8DDD3E |
  JSR.W CODE_FN_8DE07B                      ; $8DDD41 |
  LDA.W #$0002                              ; $8DDD44 |
  STA.B $1A,X                               ; $8DDD47 |
  RTL                                       ; $8DDD49 |

CODE_8DDD4A:
  LDA.B $3E,X                               ; $8DDD4A |
  PHX                                       ; $8DDD4C |
  ASL A                                     ; $8DDD4D |
  TAX                                       ; $8DDD4E |
  LDA.L PTR16_8DDD59,X                      ; $8DDD4F |
  PLX                                       ; $8DDD53 |
  STA.B $00                                 ; $8DDD54 |
  JMP.W ($0000)                             ; $8DDD56 |

PTR16_8DDD59:
  dw CODE_8DDD5D                            ; $8DDD59 |
  dw CODE_8DDD70                            ; $8DDD5B |

CODE_8DDD5D:
  STZ.B $26,X                               ; $8DDD5D |
  STZ.B $28,X                               ; $8DDD5F |
  LDA.W #$3000                              ; $8DDD61 |
  STA.B $00,X                               ; $8DDD64 |
  STZ.B $1E,X                               ; $8DDD66 |
  LDA.W #$0040                              ; $8DDD68 |
  STA.B $2C,X                               ; $8DDD6B |
  INC.B $3E,X                               ; $8DDD6D |
  RTL                                       ; $8DDD6F |

CODE_8DDD70:
  LDA.W #$0008                              ; $8DDD70 |
  JSL.L CODE_FL_8CFD0B                      ; $8DDD73 |
  JSL.L CODE_FL_86C70D                      ; $8DDD77 |
  LDA.W #$0008                              ; $8DDD7B |
  JSL.L CODE_FL_8CFD3F                      ; $8DDD7E |
  LDA.B $09,X                               ; $8DDD82 |
  CMP.W #$0080                              ; $8DDD84 |
  BCS CODE_8DDD92                           ; $8DDD87 |
  LDA.B $04,X                               ; $8DDD89 |
  ORA.W #$2020                              ; $8DDD8B |
  STA.B $04,X                               ; $8DDD8E |
  BRA CODE_8DDD99                           ; $8DDD90 |

CODE_8DDD92:
  LDA.B $04,X                               ; $8DDD92 |
  AND.W #$DFDF                              ; $8DDD94 |
  STA.B $04,X                               ; $8DDD97 |

CODE_8DDD99:
  JSR.W CODE_FN_8DE07B                      ; $8DDD99 |
  STZ.W $1C8E                               ; $8DDD9C |
  LDA.W #$0004                              ; $8DDD9F |
  STA.B $1A,X                               ; $8DDDA2 |
  RTL                                       ; $8DDDA4 |

CODE_8DDDA5:
  LDA.B $3E,X                               ; $8DDDA5 |
  PHX                                       ; $8DDDA7 |
  ASL A                                     ; $8DDDA8 |
  TAX                                       ; $8DDDA9 |
  LDA.L PTR16_8DDDB4,X                      ; $8DDDAA |
  PLX                                       ; $8DDDAE |
  STA.B $00                                 ; $8DDDAF |
  JMP.W ($0000)                             ; $8DDDB1 |

PTR16_8DDDB4:
  dw CODE_8DDDC6                            ; $8DDDB4 |
  dw CODE_8DDDDD                            ; $8DDDB6 |
  dw CODE_8DDE06                            ; $8DDDB8 |
  dw CODE_8DDE4C                            ; $8DDDBA |
  dw CODE_8DDE88                            ; $8DDDBC |
  dw CODE_8DDEC9                            ; $8DDDBE |
  dw CODE_8DDEFE                            ; $8DDDC0 |
  dw CODE_8DDF2E                            ; $8DDDC2 |
  dw CODE_8DDFF6                            ; $8DDDC4 |

CODE_8DDDC6:
  JSL.L CODE_FL_85A9F7                      ; $8DDDC6 |
  STZ.B $26,X                               ; $8DDDCA |
  STZ.B $28,X                               ; $8DDDCC |
  LDA.W #$3000                              ; $8DDDCE |
  STA.B $00,X                               ; $8DDDD1 |
  STZ.B $1E,X                               ; $8DDDD3 |
  LDA.W #$0010                              ; $8DDDD5 |
  STA.B $2C,X                               ; $8DDDD8 |
  INC.B $3E,X                               ; $8DDDDA |
  RTL                                       ; $8DDDDC |

CODE_8DDDDD:
  JSL.L CODE_FL_86C70D                      ; $8DDDDD |
  STZ.B $48,X                               ; $8DDDE1 |
  STZ.B $4A,X                               ; $8DDDE3 |
  STZ.W $00A4                               ; $8DDDE5 |
  LDA.W #$0011                              ; $8DDDE8 |
  STA.W $0092                               ; $8DDDEB |
  LDA.W #$0001                              ; $8DDDEE |
  STA.W $1962                               ; $8DDDF1 |
  LDA.W #$8001                              ; $8DDDF4 |
  STA.B $E4                                 ; $8DDDF7 |
  JSL.L CODE_FL_8B80CE                      ; $8DDDF9 |
  LDA.W #$0001                              ; $8DDDFD |
  STA.W $1C96                               ; $8DDE00 |
  INC.B $3E,X                               ; $8DDE03 |
  RTL                                       ; $8DDE05 |

CODE_8DDE06:
  JSL.L CODE_FL_8DE0CC                      ; $8DDE06 |
  LDA.W $1672                               ; $8DDE0A |
  CMP.W #$0130                              ; $8DDE0D |
  BNE CODE_8DDE18                           ; $8DDE10 |
  LDA.W #$0000                              ; $8DDE12 |
  STA.W $1962                               ; $8DDE15 |

CODE_8DDE18:
  LDA.W #$0008                              ; $8DDE18 |
  JSL.L CODE_FL_8CFD0B                      ; $8DDE1B |
  LDA.W $1C38                               ; $8DDE1F |
  AND.W #$0007                              ; $8DDE22 |
  BNE CODE_8DDE2B                           ; $8DDE25 |
  JSL.L CODE_FL_8CFBB6                      ; $8DDE27 |

CODE_8DDE2B:
  LDA.B $4A,X                               ; $8DDE2B |
  BNE CODE_8DDE49                           ; $8DDE2D |
  LDA.W #$0002                              ; $8DDE2F |
  STA.B $4A,X                               ; $8DDE32 |
  LDA.B $48,X                               ; $8DDE34 |
  JSL.L CODE_FL_8DE009                      ; $8DDE36 |
  INC.B $48,X                               ; $8DDE3A |
  LDA.B $48,X                               ; $8DDE3C |
  CMP.W #$0021                              ; $8DDE3E |
  BCC CODE_8DDE49                           ; $8DDE41 |
  JSL.L CODE_FL_83852F                      ; $8DDE43 |
  INC.B $3E,X                               ; $8DDE47 |

CODE_8DDE49:
  DEC.B $4A,X                               ; $8DDE49 |
  RTL                                       ; $8DDE4B |

CODE_8DDE4C:
  JSL.L CODE_FL_8DE0CC                      ; $8DDE4C |
  LDA.W #$0008                              ; $8DDE50 |
  JSL.L CODE_FL_8CFD0B                      ; $8DDE53 |
  LDA.W #$0020                              ; $8DDE57 |
  JSL.L CODE_FL_8DE009                      ; $8DDE5A |
  LDA.W $1C38                               ; $8DDE5E |
  AND.W #$0007                              ; $8DDE61 |
  BNE CODE_8DDE6A                           ; $8DDE64 |
  JSL.L CODE_FL_8CFBB6                      ; $8DDE66 |

CODE_8DDE6A:
  LDA.B $09,X                               ; $8DDE6A |
  CMP.W #$0080                              ; $8DDE6C |
  BCS CODE_8DDE7C                           ; $8DDE6F |
  LDA.W #$00B0                              ; $8DDE71 |
  JSL.L CODE_FL_8B8156                      ; $8DDE74 |
  BNE CODE_8DDE87                           ; $8DDE78 |
  BRA CODE_8DDE85                           ; $8DDE7A |

CODE_8DDE7C:
  LDA.W #$0050                              ; $8DDE7C |
  JSL.L CODE_FL_8B8156                      ; $8DDE7F |
  BNE CODE_8DDE87                           ; $8DDE83 |

CODE_8DDE85:
  INC.B $3E,X                               ; $8DDE85 |

CODE_8DDE87:
  RTL                                       ; $8DDE87 |

CODE_8DDE88:
  JSL.L CODE_FL_8DE0CC                      ; $8DDE88 |
  LDA.W #$0008                              ; $8DDE8C |
  JSL.L CODE_FL_8CFD0B                      ; $8DDE8F |
  LDA.W #$0020                              ; $8DDE93 |
  JSL.L CODE_FL_8DE009                      ; $8DDE96 |
  LDA.W $1C38                               ; $8DDE9A |
  AND.W #$0007                              ; $8DDE9D |
  BNE CODE_8DDEA6                           ; $8DDEA0 |
  JSL.L CODE_FL_8CFBB6                      ; $8DDEA2 |

CODE_8DDEA6:
  LDA.W $04D8                               ; $8DDEA6 |
  BEQ CODE_8DDEC6                           ; $8DDEA9 |
  LDA.B $09,X                               ; $8DDEAB |
  CMP.W #$0080                              ; $8DDEAD |
  BCS CODE_8DDEBD                           ; $8DDEB0 |
  LDA.W #$00C8                              ; $8DDEB2 |
  JSL.L CODE_FL_8B81BD                      ; $8DDEB5 |
  BNE CODE_8DDEC8                           ; $8DDEB9 |
  BRA CODE_8DDEC6                           ; $8DDEBB |

CODE_8DDEBD:
  LDA.W #$0038                              ; $8DDEBD |
  JSL.L CODE_FL_8B81BD                      ; $8DDEC0 |
  BNE CODE_8DDEC8                           ; $8DDEC4 |

CODE_8DDEC6:
  INC.B $3E,X                               ; $8DDEC6 |

CODE_8DDEC8:
  RTL                                       ; $8DDEC8 |

CODE_8DDEC9:
  JSL.L CODE_FL_8DE0CC                      ; $8DDEC9 |
  LDA.W #$0008                              ; $8DDECD |
  JSL.L CODE_FL_8CFD0B                      ; $8DDED0 |
  LDA.W #$0020                              ; $8DDED4 |
  JSL.L CODE_FL_8DE009                      ; $8DDED7 |
  LDA.B $09,X                               ; $8DDEDB |
  CMP.W #$0080                              ; $8DDEDD |
  BCS CODE_8DDEED                           ; $8DDEE0 |
  LDA.W #$0200                              ; $8DDEE2 |
  STA.W $0498                               ; $8DDEE5 |
  STA.W $0558                               ; $8DDEE8 |
  BRA CODE_8DDEF6                           ; $8DDEEB |

CODE_8DDEED:
  LDA.W #$0100                              ; $8DDEED |
  STA.W $0498                               ; $8DDEF0 |
  STA.W $0558                               ; $8DDEF3 |

CODE_8DDEF6:
  LDA.W #$0020                              ; $8DDEF6 |
  STA.B $2C,X                               ; $8DDEF9 |
  INC.B $3E,X                               ; $8DDEFB |
  RTL                                       ; $8DDEFD |

CODE_8DDEFE:
  JSL.L CODE_FL_8DE0CC                      ; $8DDEFE |
  JSL.L CODE_FL_8B80CE                      ; $8DDF02 |
  LDA.W #$0008                              ; $8DDF06 |
  JSL.L CODE_FL_8CFD0B                      ; $8DDF09 |
  LDA.W #$0020                              ; $8DDF0D |
  JSL.L CODE_FL_8DE009                      ; $8DDF10 |
  LDA.W $1C38                               ; $8DDF14 |
  AND.W #$0007                              ; $8DDF17 |
  BNE CODE_8DDF20                           ; $8DDF1A |
  JSL.L CODE_FL_8CFBB6                      ; $8DDF1C |

CODE_8DDF20:
  JSL.L CODE_FL_86C70D                      ; $8DDF20 |
  LDA.W #$0300                              ; $8DDF24 |
  STA.B $2C,X                               ; $8DDF27 |
  STZ.B $3C,X                               ; $8DDF29 |
  INC.B $3E,X                               ; $8DDF2B |
  RTL                                       ; $8DDF2D |

CODE_8DDF2E:
  JSL.L CODE_FL_8DE0CC                      ; $8DDF2E |
  LDA.W #$0008                              ; $8DDF32 |
  JSL.L CODE_FL_8CFD0B                      ; $8DDF35 |
  LDA.W #$0020                              ; $8DDF39 |
  JSL.L CODE_FL_8DE009                      ; $8DDF3C |
  LDA.W $1C38                               ; $8DDF40 |
  AND.W #$0007                              ; $8DDF43 |
  BNE CODE_8DDF4C                           ; $8DDF46 |
  JSL.L CODE_FL_8CFBB6                      ; $8DDF48 |

CODE_8DDF4C:
  LDA.W #$4C52                              ; $8DDF4C |
  STA.B $40,X                               ; $8DDF4F |
  JSL.L CODE_FL_8098FD                      ; $8DDF51 |
  BCC CODE_8DDF77                           ; $8DDF55 |
  LDA.W #$8001                              ; $8DDF57 |
  STA.B $E4                                 ; $8DDF5A |
  STZ.B $26,X                               ; $8DDF5C |
  LDA.W #$0080                              ; $8DDF5E |
  STA.B $2C,X                               ; $8DDF61 |
  LDY.W #$0120                              ; $8DDF63 |
  JSL.L CODE_FL_808993                      ; $8DDF66 |
  JSL.L CODE_FL_82C1FE                      ; $8DDF6A |
  LDA.W #$0080                              ; $8DDF6E |
  STA.W $1DA6                               ; $8DDF71 |
  INC.B $3E,X                               ; $8DDF74 |
  RTL                                       ; $8DDF76 |

CODE_8DDF77:
  JSL.L CODE_FL_86C70D                      ; $8DDF77 |
  LDA.B $3C,X                               ; $8DDF7B |
  PHX                                       ; $8DDF7D |
  ASL A                                     ; $8DDF7E |
  TAX                                       ; $8DDF7F |
  LDA.L PTR16_8DDF8A,X                      ; $8DDF80 |
  PLX                                       ; $8DDF84 |
  STA.B $00                                 ; $8DDF85 |
  JMP.W ($0000)                             ; $8DDF87 |

PTR16_8DDF8A:
  dw CODE_8DDF92                            ; $8DDF8A |
  dw CODE_8DDFB7                            ; $8DDF8C |
  dw CODE_8DDFE6                            ; $8DDF8E |
  dw CODE_8DDFF1                            ; $8DDF90 |

CODE_8DDF92:
  LDA.W $0409                               ; $8DDF92 |
  CMP.W #$0080                              ; $8DDF95 |
  BCS CODE_8DDFA3                           ; $8DDF98 |
  LDA.W #$FF00                              ; $8DDF9A |
  STA.B $26,X                               ; $8DDF9D |
  STA.B $46,X                               ; $8DDF9F |
  BRA CODE_8DDFAA                           ; $8DDFA1 |

CODE_8DDFA3:
  LDA.W #$0100                              ; $8DDFA3 |
  STA.B $26,X                               ; $8DDFA6 |
  STA.B $46,X                               ; $8DDFA8 |

CODE_8DDFAA:
  LDA.W #$FC00                              ; $8DDFAA |
  STA.B $28,X                               ; $8DDFAD |
  LDA.W #$0040                              ; $8DDFAF |
  STA.B $4C,X                               ; $8DDFB2 |
  INC.B $3C,X                               ; $8DDFB4 |
  RTL                                       ; $8DDFB6 |

CODE_8DDFB7:
  JSL.L CODE_FL_85A62E                      ; $8DDFB7 |
  BEQ CODE_8DDFE0                           ; $8DDFBB |
  LDA.W #$001B                              ; $8DDFBD |
  JSL.L push_sound_queue                    ; $8DDFC0 |
  LDA.B $46,X                               ; $8DDFC4 |
  STA.B $26,X                               ; $8DDFC6 |
  SEC                                       ; $8DDFC8 |
  LDA.W $0409                               ; $8DDFC9 |
  SBC.B $09,X                               ; $8DDFCC |
  BPL CODE_8DDFD4                           ; $8DDFCE |
  EOR.W #$FFFF                              ; $8DDFD0 |
  INC A                                     ; $8DDFD3 |

CODE_8DDFD4:
  CMP.W #$0010                              ; $8DDFD4 |
  BCC CODE_8DDFE1                           ; $8DDFD7 |
  LDA.W #$0040                              ; $8DDFD9 |
  STA.B $4E,X                               ; $8DDFDC |
  INC.B $3C,X                               ; $8DDFDE |

CODE_8DDFE0:
  RTL                                       ; $8DDFE0 |

CODE_8DDFE1:
  INC.B $3C,X                               ; $8DDFE1 |
  INC.B $3C,X                               ; $8DDFE3 |
  RTL                                       ; $8DDFE5 |

CODE_8DDFE6:
  JSL.L CODE_FL_86CB71                      ; $8DDFE6 |
  DEC.B $4E,X                               ; $8DDFEA |
  BNE CODE_8DDFF0                           ; $8DDFEC |
  STZ.B $3C,X                               ; $8DDFEE |

CODE_8DDFF0:
  RTL                                       ; $8DDFF0 |

CODE_8DDFF1:
  JSL.L CODE_FL_86CB71                      ; $8DDFF1 |
  RTL                                       ; $8DDFF5 |

CODE_8DDFF6:
  JSL.L CODE_FL_85A62E                      ; $8DDFF6 |
  LDA.W #$0020                              ; $8DDFFA |
  JSL.L CODE_FL_8DE031                      ; $8DDFFD |
  JSL.L CODE_FL_86C70D                      ; $8DE001 |
  JML.L CODE_JL_80EDC1                      ; $8DE005 |

CODE_FL_8DE009:
  STA.W $1C92                               ; $8DE009 |
  ASL A                                     ; $8DE00C |
  STA.W $1C94                               ; $8DE00D |
  STZ.W $1FBE                               ; $8DE010 |
  JSL.L CODE_FL_808F6E                      ; $8DE013 |
  LDY.W $1C92                               ; $8DE017 |
  LDA.W #$0017                              ; $8DE01A |
  JSL.L CODE_FL_808FD5                      ; $8DE01D |
  SEC                                       ; $8DE021 |
  LDA.W #$00D0                              ; $8DE022 |
  SBC.W $1C94                               ; $8DE025 |
  TAY                                       ; $8DE028 |
  LDA.W #$0004                              ; $8DE029 |
  JSL.L CODE_FL_808FD5                      ; $8DE02C |
  RTL                                       ; $8DE030 |

CODE_FL_8DE031:
  STA.W $1C92                               ; $8DE031 |
  ASL A                                     ; $8DE034 |
  STA.W $1C94                               ; $8DE035 |
  STZ.W $1FBE                               ; $8DE038 |
  JSL.L CODE_FL_808F6E                      ; $8DE03B |
  LDY.W $1C92                               ; $8DE03F |
  LDA.W #$0017                              ; $8DE042 |
  JSL.L CODE_FL_808FD5                      ; $8DE045 |
  SEC                                       ; $8DE049 |
  LDA.W #$00D0                              ; $8DE04A |
  SBC.W $1C94                               ; $8DE04D |
  TAY                                       ; $8DE050 |
  LDA.W #$0000                              ; $8DE051 |
  JSL.L CODE_FL_808FD5                      ; $8DE054 |
  RTL                                       ; $8DE058 |

CODE_FN_8DE059:
  LDA.B $1A,X                               ; $8DE059 |
  BEQ CODE_8DE07A                           ; $8DE05B |
  LDA.W $1C8E                               ; $8DE05D |
  BEQ CODE_8DE07A                           ; $8DE060 |
  STZ.W $1C96                               ; $8DE062 |
  LDA.W #$0006                              ; $8DE065 |
  STA.B $1A,X                               ; $8DE068 |
  BRA CODE_8DE07A                           ; $8DE06A |

CODE_FN_8DE06C:
  LDA.B $1A,X                               ; $8DE06C |
  BEQ CODE_8DE07A                           ; $8DE06E |
  LDA.W $1C90                               ; $8DE070 |
  BEQ CODE_8DE07A                           ; $8DE073 |
  LDA.W #$0007                              ; $8DE075 |
  STA.B $1A,X                               ; $8DE078 |

CODE_8DE07A:
  RTS                                       ; $8DE07A |

CODE_FN_8DE07B:
  LDA.W #$0000                              ; $8DE07B |
  STA.B $3A,X                               ; $8DE07E |
  STA.B $3C,X                               ; $8DE080 |
  STA.B $3E,X                               ; $8DE082 |
  RTS                                       ; $8DE084 |

CODE_FN_8DE085:
  LDA.W #$FE00                              ; $8DE085 |
  STA.B $46,X                               ; $8DE088 |
  LSR A                                     ; $8DE08A |
  LSR A                                     ; $8DE08B |
  EOR.B $04,X                               ; $8DE08C |
  AND.W #$2000                              ; $8DE08E |
  BNE CODE_8DE09B                           ; $8DE091 |
  LDA.B $46,X                               ; $8DE093 |
  EOR.W #$FFFF                              ; $8DE095 |
  INC A                                     ; $8DE098 |
  STA.B $46,X                               ; $8DE099 |

CODE_8DE09B:
  RTS                                       ; $8DE09B |

CODE_FN_8DE09C:
  JSL.L CODE_FL_86C444                      ; $8DE09C |
  JSL.L CODE_FL_86C55C                      ; $8DE0A0 |
  BPL CODE_8DE0AA                           ; $8DE0A4 |
  EOR.W #$FFFF                              ; $8DE0A6 |
  INC A                                     ; $8DE0A9 |

CODE_8DE0AA:
  CMP.W #$0070                              ; $8DE0AA |
  BCS CODE_8DE0B3                           ; $8DE0AD |
  STA.B $42,X                               ; $8DE0AF |
  BRA CODE_8DE0B8                           ; $8DE0B1 |

CODE_8DE0B3:
  LDA.W #$0070                              ; $8DE0B3 |
  STA.B $42,X                               ; $8DE0B6 |

CODE_8DE0B8:
  STZ.B $4A,X                               ; $8DE0B8 |
  RTS                                       ; $8DE0BA |

CODE_FN_8DE0BB:
  LDA.B $26,X                               ; $8DE0BB |
  BPL CODE_8DE0C3                           ; $8DE0BD |
  EOR.W #$FFFF                              ; $8DE0BF |
  INC A                                     ; $8DE0C2 |

CODE_8DE0C3:
  XBA                                       ; $8DE0C3 |
  CLC                                       ; $8DE0C4 |
  ADC.B $4A,X                               ; $8DE0C5 |
  STA.B $4A,X                               ; $8DE0C7 |
  CMP.B $42,X                               ; $8DE0C9 |
  RTS                                       ; $8DE0CB |

CODE_FL_8DE0CC:
  DEC.W $1C96                               ; $8DE0CC |
  BNE CODE_8DE0DE                           ; $8DE0CF |
  LDA.W #$0021                              ; $8DE0D1 |
  JSL.L push_sound_queue                    ; $8DE0D4 |
  LDA.W #$000A                              ; $8DE0D8 |
  STA.W $1C96                               ; $8DE0DB |

CODE_8DE0DE:
  RTL                                       ; $8DE0DE |

CODE_8DE0DF:
  JSL.L CODE_FL_86C3F8                      ; $8DE0DF |
  PHX                                       ; $8DE0E3 |
  ASL A                                     ; $8DE0E4 |
  TAX                                       ; $8DE0E5 |
  LDA.L PTR16_8DE0F0,X                      ; $8DE0E6 |
  PLX                                       ; $8DE0EA |
  STA.B $00                                 ; $8DE0EB |
  JMP.W ($0000)                             ; $8DE0ED |

PTR16_8DE0F0:
  dw CODE_8DE0F8                            ; $8DE0F0 |
  dw CODE_8DE10E                            ; $8DE0F2 |
  dw CODE_8DE177                            ; $8DE0F4 |
  dw CODE_8DE1A9                            ; $8DE0F6 |

CODE_8DE0F8:
  LDA.B $22,X                               ; $8DE0F8 |
  ORA.W #$0010                              ; $8DE0FA |
  STA.B $22,X                               ; $8DE0FD |
  LDA.W #$0010                              ; $8DE0FF |
  STA.B $36,X                               ; $8DE102 |
  STZ.W $1C8E                               ; $8DE104 |
  STZ.W $1C90                               ; $8DE107 |
  JML.L CODE_FL_86C63F                      ; $8DE10A |

CODE_8DE10E:
  LDY.B $3A,X                               ; $8DE10E |
  LDA.W $001A,Y                             ; $8DE110 |
  CMP.W #$0005                              ; $8DE113 |
  BEQ CODE_8DE130                           ; $8DE116 |
  LDA.W $0000,Y                             ; $8DE118 |
  CMP.W #$3000                              ; $8DE11B |
  BEQ CODE_8DE130                           ; $8DE11E |
  CMP.W #$304E                              ; $8DE120 |
  BEQ CODE_8DE130                           ; $8DE123 |
  CMP.W #$309C                              ; $8DE125 |
  BEQ CODE_8DE130                           ; $8DE128 |
  JSL.L CODE_FL_85A9BF                      ; $8DE12A |
  BRA CODE_8DE134                           ; $8DE12E |

CODE_8DE130:
  JSL.L CODE_FL_85A9B7                      ; $8DE130 |

CODE_8DE134:
  LDA.W $0000,Y                             ; $8DE134 |
  CMP.W #$3182                              ; $8DE137 |
  BEQ CODE_8DE151                           ; $8DE13A |
  CMP.W #$31C4                              ; $8DE13C |
  BEQ CODE_8DE151                           ; $8DE13F |
  SEC                                       ; $8DE141 |
  LDA.W $000D,Y                             ; $8DE142 |
  SBC.W #$0040                              ; $8DE145 |
  STA.B $0D,X                               ; $8DE148 |
  LDA.W $0009,Y                             ; $8DE14A |
  STA.B $09,X                               ; $8DE14D |
  BRA CODE_8DE176                           ; $8DE14F |

CODE_8DE151:
  SEC                                       ; $8DE151 |
  LDA.W $000D,Y                             ; $8DE152 |
  SBC.W #$0020                              ; $8DE155 |
  STA.B $0D,X                               ; $8DE158 |
  LDA.W $0004,Y                             ; $8DE15A |
  AND.W #$2020                              ; $8DE15D |
  BEQ CODE_8DE16D                           ; $8DE160 |
  CLC                                       ; $8DE162 |
  LDA.W $0009,Y                             ; $8DE163 |
  ADC.W #$0030                              ; $8DE166 |
  STA.B $09,X                               ; $8DE169 |
  BRA CODE_8DE176                           ; $8DE16B |

CODE_8DE16D:
  SEC                                       ; $8DE16D |
  LDA.W $0009,Y                             ; $8DE16E |
  SBC.W #$0030                              ; $8DE171 |
  STA.B $09,X                               ; $8DE174 |

CODE_8DE176:
  RTL                                       ; $8DE176 |

CODE_8DE177:
  LDA.B $3C,X                               ; $8DE177 |
  PHX                                       ; $8DE179 |
  ASL A                                     ; $8DE17A |
  TAX                                       ; $8DE17B |
  LDA.L PTR16_8DE186,X                      ; $8DE17C |
  PLX                                       ; $8DE180 |
  STA.B $00                                 ; $8DE181 |
  JMP.W ($0000)                             ; $8DE183 |

PTR16_8DE186:
  dw CODE_8DE18A                            ; $8DE186 |
  dw CODE_8DE19B                            ; $8DE188 |

CODE_8DE18A:
  JSL.L CODE_FL_85A9BF                      ; $8DE18A |
  INC.W $1C8E                               ; $8DE18E |
  LDA.W #$0044                              ; $8DE191 |
  JSL.L CODE_FL_8089BD                      ; $8DE194 |
  INC.B $3C,X                               ; $8DE198 |
  RTL                                       ; $8DE19A |

CODE_8DE19B:
  LDA.W $1C8E                               ; $8DE19B |
  BNE CODE_8DE1A8                           ; $8DE19E |
  JSL.L CODE_FL_85A9B7                      ; $8DE1A0 |
  STZ.B $3C,X                               ; $8DE1A4 |
  DEC.B $1A,X                               ; $8DE1A6 |

CODE_8DE1A8:
  RTL                                       ; $8DE1A8 |

CODE_8DE1A9:
  INC.W $1C90                               ; $8DE1A9 |
  JML.L CODE_FL_86CA36                      ; $8DE1AC |

CODE_8DE1B0:
  JSL.L CODE_FL_85F885                      ; $8DE1B0 |
  JSL.L CODE_FL_86C3F8                      ; $8DE1B4 |
  PHX                                       ; $8DE1B8 |
  ASL A                                     ; $8DE1B9 |
  TAX                                       ; $8DE1BA |
  LDA.L PTR16_8DE1C5,X                      ; $8DE1BB |
  PLX                                       ; $8DE1BF |
  STA.B $00                                 ; $8DE1C0 |
  JMP.W ($0000)                             ; $8DE1C2 |

PTR16_8DE1C5:
  dw CODE_8DE1C9                            ; $8DE1C5 |
  dw CODE_8DE1CD                            ; $8DE1C7 |

CODE_8DE1C9:
  JML.L CODE_FL_86C63F                      ; $8DE1C9 |

CODE_8DE1CD:
  JSL.L CODE_FL_85A9F7                      ; $8DE1CD |
  LDY.B $3A,X                               ; $8DE1D1 |
  LDA.W $0000,Y                             ; $8DE1D3 |
  CMP.W #$3182                              ; $8DE1D6 |
  BEQ CODE_8DE1E2                           ; $8DE1D9 |
  CMP.W #$31C4                              ; $8DE1DB |
  BEQ CODE_8DE1E2                           ; $8DE1DE |
  BRA CODE_8DE202                           ; $8DE1E0 |

CODE_8DE1E2:
  JSL.L CODE_FL_85A9EF                      ; $8DE1E2 |
  LDA.W $0004,Y                             ; $8DE1E6 |
  AND.W #$2020                              ; $8DE1E9 |
  BEQ CODE_8DE1F9                           ; $8DE1EC |
  CLC                                       ; $8DE1EE |
  LDA.W $0009,Y                             ; $8DE1EF |
  ADC.W #$0054                              ; $8DE1F2 |
  STA.B $09,X                               ; $8DE1F5 |
  BRA CODE_8DE202                           ; $8DE1F7 |

CODE_8DE1F9:
  SEC                                       ; $8DE1F9 |
  LDA.W $0009,Y                             ; $8DE1FA |
  SBC.W #$0054                              ; $8DE1FD |
  STA.B $09,X                               ; $8DE200 |

CODE_8DE202:
  LDA.W $000D,Y                             ; $8DE202 |
  STA.B $0D,X                               ; $8DE205 |
  RTL                                       ; $8DE207 |

CODE_8DE208:
  JSL.L CODE_FL_85F885                      ; $8DE208 |
  JSL.L CODE_FL_86C3F8                      ; $8DE20C |
  PHX                                       ; $8DE210 |
  ASL A                                     ; $8DE211 |
  TAX                                       ; $8DE212 |
  LDA.L PTR16_8DE21D,X                      ; $8DE213 |
  PLX                                       ; $8DE217 |
  STA.B $00                                 ; $8DE218 |
  JMP.W ($0000)                             ; $8DE21A |

PTR16_8DE21D:
  dw CODE_8DE221                            ; $8DE21D |
  dw CODE_8DE225                            ; $8DE21F |

CODE_8DE221:
  JML.L CODE_FL_86C63F                      ; $8DE221 |

CODE_8DE225:
  JSL.L CODE_FL_85A9F7                      ; $8DE225 |
  LDY.B $3A,X                               ; $8DE229 |
  LDA.W $0000,Y                             ; $8DE22B |
  CMP.W #$3182                              ; $8DE22E |
  BEQ CODE_8DE23A                           ; $8DE231 |
  CMP.W #$31C4                              ; $8DE233 |
  BEQ CODE_8DE23A                           ; $8DE236 |
  BRA CODE_8DE25A                           ; $8DE238 |

CODE_8DE23A:
  JSL.L CODE_FL_85A9EF                      ; $8DE23A |
  LDA.W $0004,Y                             ; $8DE23E |
  AND.W #$2020                              ; $8DE241 |
  BEQ CODE_8DE251                           ; $8DE244 |
  CLC                                       ; $8DE246 |
  LDA.W $0009,Y                             ; $8DE247 |
  ADC.W #$003C                              ; $8DE24A |
  STA.B $09,X                               ; $8DE24D |
  BRA CODE_8DE25A                           ; $8DE24F |

CODE_8DE251:
  SEC                                       ; $8DE251 |
  LDA.W $0009,Y                             ; $8DE252 |
  SBC.W #$003C                              ; $8DE255 |
  STA.B $09,X                               ; $8DE258 |

CODE_8DE25A:
  SEC                                       ; $8DE25A |
  LDA.W $000D,Y                             ; $8DE25B |
  SBC.W #$0018                              ; $8DE25E |
  STA.B $0D,X                               ; $8DE261 |
  RTL                                       ; $8DE263 |

CODE_8DE264:
  JSL.L CODE_FL_85F885                      ; $8DE264 |
  JSL.L CODE_FL_86C3F8                      ; $8DE268 |
  PHX                                       ; $8DE26C |
  ASL A                                     ; $8DE26D |
  TAX                                       ; $8DE26E |
  LDA.L PTR16_8DE279,X                      ; $8DE26F |
  PLX                                       ; $8DE273 |
  STA.B $00                                 ; $8DE274 |
  JMP.W ($0000)                             ; $8DE276 |

PTR16_8DE279:
  dw CODE_8DE27D                            ; $8DE279 |
  dw CODE_8DE297                            ; $8DE27B |

CODE_8DE27D:
  JSL.L CODE_FL_86C7A5                      ; $8DE27D |
  LDA.W #$303B                              ; $8DE281 |
  JSL.L CODE_FL_86CAEE                      ; $8DE284 |
  JSR.W CODE_FN_8DE30A                      ; $8DE288 |
  JSL.L CODE_FL_85A5CA                      ; $8DE28B |
  JSL.L CODE_FL_85A9EF                      ; $8DE28F |
  JML.L CODE_FL_86C63F                      ; $8DE293 |

CODE_8DE297:
  LDA.B $20,X                               ; $8DE297 |
  BEQ CODE_8DE2A4                           ; $8DE299 |
  SEC                                       ; $8DE29B |
  LDA.B $28,X                               ; $8DE29C |
  SBC.W #$0010                              ; $8DE29E |
  STA.B $28,X                               ; $8DE2A1 |
  RTL                                       ; $8DE2A3 |

CODE_8DE2A4:
  JML.L CODE_FL_86CA36                      ; $8DE2A4 |

CODE_8DE2A8:
  JSL.L CODE_FL_86C3F8                      ; $8DE2A8 |
  PHX                                       ; $8DE2AC |
  ASL A                                     ; $8DE2AD |
  TAX                                       ; $8DE2AE |
  LDA.L PTR16_8DE2B9,X                      ; $8DE2AF |
  PLX                                       ; $8DE2B3 |
  STA.B $00                                 ; $8DE2B4 |
  JMP.W ($0000)                             ; $8DE2B6 |

PTR16_8DE2B9:
  dw CODE_8DE2BD                            ; $8DE2B9 |
  dw CODE_8DE301                            ; $8DE2BB |

CODE_8DE2BD:
  JSL.L CODE_FL_86C582                      ; $8DE2BD |
  LDA.W #$0044                              ; $8DE2C1 |
  JSL.L CODE_FL_86CAEE                      ; $8DE2C4 |
  JSL.L CODE_FL_85A5CA                      ; $8DE2C8 |
  LDY.B $3A,X                               ; $8DE2CC |
  LDA.W $0004,Y                             ; $8DE2CE |
  STA.B $04,X                               ; $8DE2D1 |
  LDA.W #$0200                              ; $8DE2D3 |
  JSL.L CODE_FL_86C887                      ; $8DE2D6 |
  LDA.W #$FF00                              ; $8DE2DA |
  STA.B $28,X                               ; $8DE2DD |
  LDY.B $3A,X                               ; $8DE2DF |
  LDA.B $04,X                               ; $8DE2E1 |
  AND.W #$2020                              ; $8DE2E3 |
  BEQ CODE_8DE2F3                           ; $8DE2E6 |
  SEC                                       ; $8DE2E8 |
  LDA.W $0009,Y                             ; $8DE2E9 |
  SBC.W #$0010                              ; $8DE2EC |
  STA.B $09,X                               ; $8DE2EF |
  BRA CODE_8DE2FE                           ; $8DE2F1 |

CODE_8DE2F3:
  CLC                                       ; $8DE2F3 |
  LDA.W $0009,Y                             ; $8DE2F4 |
  ADC.W #$0010                              ; $8DE2F7 |
  STA.B $09,X                               ; $8DE2FA |
  BRA CODE_8DE2FE                           ; $8DE2FC |

CODE_8DE2FE:
  INC.B $1A,X                               ; $8DE2FE |
  RTL                                       ; $8DE300 |

CODE_8DE301:
  LDA.B $20,X                               ; $8DE301 |
  BNE CODE_8DE309                           ; $8DE303 |
  JML.L CODE_FL_86CA36                      ; $8DE305 |

CODE_8DE309:
  RTL                                       ; $8DE309 |

CODE_FN_8DE30A:
  LDA.B $0D,X                               ; $8DE30A |
  SBC.W #$0040                              ; $8DE30C |
  STA.B $0D,X                               ; $8DE30F |
  LDA.W $1C38                               ; $8DE311 |
  AND.W #$0007                              ; $8DE314 |
  STA.B $00                                 ; $8DE317 |
  LDA.B $42                                 ; $8DE319 |
  LSR A                                     ; $8DE31B |
  BCS CODE_8DE324                           ; $8DE31C |
  LDA.B $0D,X                               ; $8DE31E |
  ADC.B $00                                 ; $8DE320 |
  BRA CODE_8DE328                           ; $8DE322 |

CODE_8DE324:
  LDA.B $0D,X                               ; $8DE324 |
  SBC.B $00                                 ; $8DE326 |

CODE_8DE328:
  STA.B $0D,X                               ; $8DE328 |
  LDA.W #$FD00                              ; $8DE32A |
  JSL.L CODE_FL_86C887                      ; $8DE32D |
  LDA.W #$0280                              ; $8DE331 |
  STA.B $28,X                               ; $8DE334 |
  RTS                                       ; $8DE336 |

CODE_8DE337:
  JSL.L CODE_FL_86C3F8                      ; $8DE337 |
  PHX                                       ; $8DE33B |
  ASL A                                     ; $8DE33C |
  TAX                                       ; $8DE33D |
  LDA.L PTR16_8DE348,X                      ; $8DE33E |
  PLX                                       ; $8DE342 |
  STA.B $00                                 ; $8DE343 |
  JMP.W ($0000)                             ; $8DE345 |

PTR16_8DE348:
  dw CODE_8DE35C                            ; $8DE348 |
  dw CODE_8DE376                            ; $8DE34A |
  dw CODE_8DE3C8                            ; $8DE34C |
  dw CODE_8DE3DB                            ; $8DE34E |
  dw CODE_8DE3F3                            ; $8DE350 |
  dw CODE_8DE3FD                            ; $8DE352 |
  dw CODE_8DE40E                            ; $8DE354 |
  dw CODE_8DE422                            ; $8DE356 |
  dw CODE_8DE429                            ; $8DE358 |
  dw CODE_8DE431                            ; $8DE35A |

CODE_8DE35C:
  JSL.L CODE_FL_86C7A5                      ; $8DE35C |
  LDA.W #$E000                              ; $8DE360 |
  STA.B $22,X                               ; $8DE363 |
  LDA.W #$B888                              ; $8DE365 |
  STA.B $34,X                               ; $8DE368 |
  LDA.B $4E,X                               ; $8DE36A |
  LSR A                                     ; $8DE36C |
  BCC CODE_8DE372                           ; $8DE36D |
  JSR.W CODE_FN_8DE45A                      ; $8DE36F |

CODE_8DE372:
  JML.L CODE_FL_86C63F                      ; $8DE372 |

CODE_8DE376:
  LDA.B $32,X                               ; $8DE376 |
  BPL CODE_8DE38F                           ; $8DE378 |
  STZ.B $32,X                               ; $8DE37A |
  SEP #$20                                  ; $8DE37C |
  LDA.B $37,X                               ; $8DE37E |
  CMP.B #$01                                ; $8DE380 |
  REP #$20                                  ; $8DE382 |
  BEQ CODE_8DE397                           ; $8DE384 |
  LDA.W #$0032                              ; $8DE386 |
  JSL.L push_sound_queue                    ; $8DE389 |
  BRA CODE_8DE3B4                           ; $8DE38D |

CODE_8DE38F:
  LDA.B $46,X                               ; $8DE38F |
  BIT.W #$9000                              ; $8DE391 |
  BNE CODE_8DE3B4                           ; $8DE394 |
  RTL                                       ; $8DE396 |

CODE_8DE397:
  LDA.W #$0001                              ; $8DE397 |
  STA.L $7E7C06                             ; $8DE39A |
  LDA.W #$6AE0                              ; $8DE39E |
  STA.B $40,X                               ; $8DE3A1 |
  STZ.B $46,X                               ; $8DE3A3 |
  JSL.L CODE_FL_85A8F4                      ; $8DE3A5 |
  LDA.B $34,X                               ; $8DE3A9 |
  AND.W #$FFFB                              ; $8DE3AB |
  ORA.W #$1808                              ; $8DE3AE |
  STA.B $34,X                               ; $8DE3B1 |
  RTL                                       ; $8DE3B3 |

CODE_8DE3B4:
  LDA.W #$0000                              ; $8DE3B4 |
  STA.L $7E7C06                             ; $8DE3B7 |
  LDA.W #$6AE0                              ; $8DE3BB |
  STA.B $40,X                               ; $8DE3BE |
  LDA.W #$0006                              ; $8DE3C0 |
  STA.B $1A,X                               ; $8DE3C3 |
  STZ.B $46,X                               ; $8DE3C5 |
  RTL                                       ; $8DE3C7 |

CODE_8DE3C8:
  JSL.L CODE_FL_86C239                      ; $8DE3C8 |
  BCC CODE_8DE3DA                           ; $8DE3CC |
  JSR.W CODE_FN_8DE441                      ; $8DE3CE |
  BCS CODE_8DE3DA                           ; $8DE3D1 |
  INC.B $1A,X                               ; $8DE3D3 |
  LDA.W #$35D2                              ; $8DE3D5 |
  STA.B $00,X                               ; $8DE3D8 |

CODE_8DE3DA:
  RTL                                       ; $8DE3DA |

CODE_8DE3DB:
  JSL.L CODE_FL_85A84D                      ; $8DE3DB |
  LDA.B $32,X                               ; $8DE3DF |
  BPL CODE_8DE3EA                           ; $8DE3E1 |
  LDA.W #$A000                              ; $8DE3E3 |
  JML.L CODE_JL_85AAAA                      ; $8DE3E6 |

CODE_8DE3EA:
  REP #$20                                  ; $8DE3EA |
  JSL.L CODE_FL_86C70D                      ; $8DE3EC |
  INC.B $1A,X                               ; $8DE3F0 |
  RTL                                       ; $8DE3F2 |

CODE_8DE3F3:
  JSR.W CODE_FN_8DE45A                      ; $8DE3F3 |
  BCS CODE_8DE3FC                           ; $8DE3F6 |
  INC.B $1A,X                               ; $8DE3F8 |
  STZ.B $00,X                               ; $8DE3FA |

CODE_8DE3FC:
  RTL                                       ; $8DE3FC |

CODE_8DE3FD:
  JSL.L CODE_FL_85A927                      ; $8DE3FD |
  LDA.W #$B888                              ; $8DE401 |
  STA.B $34,X                               ; $8DE404 |
  STZ.B $32,X                               ; $8DE406 |
  LDA.W #$0001                              ; $8DE408 |
  STA.B $1A,X                               ; $8DE40B |
  RTL                                       ; $8DE40D |

CODE_8DE40E:
  JSR.W CODE_FN_8DE441                      ; $8DE40E |
  BCS CODE_8DE421                           ; $8DE411 |
  INC.B $1A,X                               ; $8DE413 |
  LDA.W #$35D2                              ; $8DE415 |
  STA.B $00,X                               ; $8DE418 |
  LDA.W #$201C                              ; $8DE41A |
  JML.L CODE_FL_86CAEE                      ; $8DE41D |

CODE_8DE421:
  RTL                                       ; $8DE421 |

CODE_8DE422:
  LDA.B $20,X                               ; $8DE422 |
  BNE CODE_8DE428                           ; $8DE424 |
  INC.B $1A,X                               ; $8DE426 |

CODE_8DE428:
  RTL                                       ; $8DE428 |

CODE_8DE429:
  JSR.W CODE_FN_8DE45A                      ; $8DE429 |
  BCS CODE_8DE430                           ; $8DE42C |
  INC.B $1A,X                               ; $8DE42E |

CODE_8DE430:
  RTL                                       ; $8DE430 |

CODE_8DE431:
  JSL.L CODE_FL_86C239                      ; $8DE431 |
  BCC CODE_8DE440                           ; $8DE435 |
  LDA.W #$0001                              ; $8DE437 |
  STA.B $1A,X                               ; $8DE43A |
  STZ.B $00,X                               ; $8DE43C |
  STZ.B $46,X                               ; $8DE43E |

CODE_8DE440:
  RTL                                       ; $8DE440 |

CODE_FN_8DE441:
  LDY.W #$0110                              ; $8DE441 |

CODE_8DE444:
  LDA.B $09,X                               ; $8DE444 |
  CLC                                       ; $8DE446 |
  ADC.W #$FFF0                              ; $8DE447 |
  STA.B $08                                 ; $8DE44A |
  LDA.B $0D,X                               ; $8DE44C |
  CLC                                       ; $8DE44E |
  ADC.W #$FFE4                              ; $8DE44F |
  STA.B $0A                                 ; $8DE452 |
  TYA                                       ; $8DE454 |
  JSL.L CODE_FL_8580F7                      ; $8DE455 |
  RTS                                       ; $8DE459 |

CODE_FN_8DE45A:
  LDY.W #$0112                              ; $8DE45A |
  BRA CODE_8DE444                           ; $8DE45D |

CODE_8DE45F:
  JSL.L CODE_FL_86C3A3                      ; $8DE45F |
  JSR.W CODE_FN_8DE467                      ; $8DE463 |
  RTL                                       ; $8DE466 |

CODE_FN_8DE467:
  LDA.B $1A,X                               ; $8DE467 |
  PHX                                       ; $8DE469 |
  ASL A                                     ; $8DE46A |
  TAX                                       ; $8DE46B |
  LDA.L PTR16_8DE476,X                      ; $8DE46C |
  PLX                                       ; $8DE470 |
  STA.B $00                                 ; $8DE471 |
  JMP.W ($0000)                             ; $8DE473 |

PTR16_8DE476:
  dw CODE_8DE47E                            ; $8DE476 |
  dw CODE_8DE497                            ; $8DE478 |
  dw CODE_8DE49F                            ; $8DE47A |
  dw CODE_8DE4C5                            ; $8DE47C |

CODE_8DE47E:
  LDA.W #$8001                              ; $8DE47E |
  STA.B $22,X                               ; $8DE481 |
  LDA.W #$0000                              ; $8DE483 |
  STA.B $34,X                               ; $8DE486 |
  LDX.W #$1F70                              ; $8DE488 |
  LDY.W #$BA15                              ; $8DE48B |
  JSL.L CODE_FL_80C27F                      ; $8DE48E |
  LDX.B $FC                                 ; $8DE492 |
  INC.B $1A,X                               ; $8DE494 |
  RTS                                       ; $8DE496 |

CODE_8DE497:
  LDA.W $1F72                               ; $8DE497 |
  BNE CODE_8DE49E                           ; $8DE49A |
  INC.B $1A,X                               ; $8DE49C |

CODE_8DE49E:
  RTS                                       ; $8DE49E |

CODE_8DE49F:
  LDA.W $1F72                               ; $8DE49F |
  BEQ CODE_8DE4AF                           ; $8DE4A2 |
  LDA.B $0D,X                               ; $8DE4A4 |
  CMP.W $040D                               ; $8DE4A6 |
  BCS CODE_8DE4C4                           ; $8DE4A9 |
  STZ.W $1F78                               ; $8DE4AB |
  RTS                                       ; $8DE4AE |

CODE_8DE4AF:
  LDA.B $0D,X                               ; $8DE4AF |
  CMP.W $040D                               ; $8DE4B1 |
  BCS CODE_8DE4C4                           ; $8DE4B4 |
  LDX.W #$1F70                              ; $8DE4B6 |
  LDY.W #$BA95                              ; $8DE4B9 |
  JSL.L CODE_FL_80C27F                      ; $8DE4BC |
  LDX.B $FC                                 ; $8DE4C0 |
  INC.B $1A,X                               ; $8DE4C2 |

CODE_8DE4C4:
  RTS                                       ; $8DE4C4 |

CODE_8DE4C5:
  LDA.B $0D,X                               ; $8DE4C5 |
  CMP.W $040D                               ; $8DE4C7 |
  BCC CODE_8DE4DD                           ; $8DE4CA |
  LDX.W #$1F70                              ; $8DE4CC |
  LDY.W #$BA15                              ; $8DE4CF |
  JSL.L CODE_FL_80C27F                      ; $8DE4D2 |
  LDX.B $FC                                 ; $8DE4D6 |
  LDA.W #$0002                              ; $8DE4D8 |
  STA.B $1A,X                               ; $8DE4DB |

CODE_8DE4DD:
  RTS                                       ; $8DE4DD |

CODE_8DE4DE:
  JSL.L CODE_FL_86C3A3                      ; $8DE4DE |
  JSR.W CODE_FN_8DE4E6                      ; $8DE4E2 |
  RTL                                       ; $8DE4E5 |

CODE_FN_8DE4E6:
  LDA.B $1A,X                               ; $8DE4E6 |
  PHX                                       ; $8DE4E8 |
  ASL A                                     ; $8DE4E9 |
  TAX                                       ; $8DE4EA |
  LDA.L PTR16_8DE4F5,X                      ; $8DE4EB |
  PLX                                       ; $8DE4EF |
  STA.B $00                                 ; $8DE4F0 |
  JMP.W ($0000)                             ; $8DE4F2 |

PTR16_8DE4F5:
  dw CODE_8DE4FD                            ; $8DE4F5 |
  dw CODE_8DE504                            ; $8DE4F7 |
  dw CODE_8DE541                            ; $8DE4F9 |
  dw CODE_8DE581                            ; $8DE4FB |

CODE_8DE4FD:
  STZ.B $22,X                               ; $8DE4FD |
  STZ.B $34,X                               ; $8DE4FF |
  INC.B $1A,X                               ; $8DE501 |
  RTS                                       ; $8DE503 |

CODE_8DE504:
  JSR.W CODE_FN_8DE51D                      ; $8DE504 |
  BCS CODE_8DE51C                           ; $8DE507 |
  LDA.B $2C,X                               ; $8DE509 |
  BNE CODE_8DE51C                           ; $8DE50B |
  LDA.B $86                                 ; $8DE50D |
  AND.W #$007F                              ; $8DE50F |
  CLC                                       ; $8DE512 |
  ADC.W #$0080                              ; $8DE513 |
  STA.B $2C,X                               ; $8DE516 |
  STZ.B $3A,X                               ; $8DE518 |
  INC.B $1A,X                               ; $8DE51A |

CODE_8DE51C:
  RTS                                       ; $8DE51C |

CODE_FN_8DE51D:
  LDA.W $1682                               ; $8DE51D |
  CMP.W #$01B0                              ; $8DE520 |
  BCC CODE_8DE52C                           ; $8DE523 |
  CMP.W #$0300                              ; $8DE525 |
  BCS CODE_8DE52C                           ; $8DE528 |
  CLC                                       ; $8DE52A |
  RTS                                       ; $8DE52B |

CODE_8DE52C:
  SEC                                       ; $8DE52C |
  RTS                                       ; $8DE52D |

CODE_FL_8DE52E:
  ASL A                                     ; $8DE52E |
  TAY                                       ; $8DE52F |
  LDA.W LOOSE_OP_00DB1F,Y                   ; $8DE530 |
  LDY.W #$02C0                              ; $8DE533 |
  STY.B $10                                 ; $8DE536 |
  LDY.W #$0020                              ; $8DE538 |
  STY.B $12                                 ; $8DE53B |
  JML.L CODE_FL_85824D                      ; $8DE53D |

CODE_8DE541:
  JSR.W CODE_FN_8DE51D                      ; $8DE541 |
  BCS CODE_8DE54A                           ; $8DE544 |
  LDA.B $2C,X                               ; $8DE546 |
  BNE CODE_8DE55B                           ; $8DE548 |

CODE_8DE54A:
  LDA.W #$0001                              ; $8DE54A |
  JSL.L CODE_FL_8DE52E                      ; $8DE54D |
  LDA.B $86                                 ; $8DE551 |
  AND.W #$00FF                              ; $8DE553 |
  STA.B $2C,X                               ; $8DE556 |
  DEC.B $1A,X                               ; $8DE558 |
  RTS                                       ; $8DE55A |

CODE_8DE55B:
  LDA.W $1C38                               ; $8DE55B |
  AND.W #$000F                              ; $8DE55E |
  CMP.W #$0008                              ; $8DE561 |
  BEQ CODE_8DE575                           ; $8DE564 |
  LDA.B $86                                 ; $8DE566 |
  AND.W #$001F                              ; $8DE568 |
  BNE CODE_8DE580                           ; $8DE56B |
  LDA.W #$0004                              ; $8DE56D |
  STA.B $3C,X                               ; $8DE570 |
  INC.B $1A,X                               ; $8DE572 |
  RTS                                       ; $8DE574 |

CODE_8DE575:
  LDA.B $3A,X                               ; $8DE575 |
  EOR.W #$0001                              ; $8DE577 |
  STA.B $3A,X                               ; $8DE57A |
  JSL.L CODE_FL_8DE52E                      ; $8DE57C |

CODE_8DE580:
  RTS                                       ; $8DE580 |

CODE_8DE581:
  DEC.B $3C,X                               ; $8DE581 |
  BPL CODE_8DE588                           ; $8DE583 |
  DEC.B $1A,X                               ; $8DE585 |
  RTS                                       ; $8DE587 |

CODE_8DE588:
  LDA.W $1C38                               ; $8DE588 |
  AND.W #$0001                              ; $8DE58B |
  ASL A                                     ; $8DE58E |
  STA.B $00                                 ; $8DE58F |
  LDA.B $3A,X                               ; $8DE591 |
  ORA.B $00                                 ; $8DE593 |
  JSL.L CODE_FL_8DE52E                      ; $8DE595 |
  RTS                                       ; $8DE599 |

CODE_8DE59A:
  JSL.L CODE_FL_86C3A3                      ; $8DE59A |
  LDA.B $1A,X                               ; $8DE59E |
  PHX                                       ; $8DE5A0 |
  ASL A                                     ; $8DE5A1 |
  TAX                                       ; $8DE5A2 |
  LDA.L PTR16_8DE5AD,X                      ; $8DE5A3 |
  PLX                                       ; $8DE5A7 |
  STA.B $00                                 ; $8DE5A8 |
  JMP.W ($0000)                             ; $8DE5AA |

PTR16_8DE5AD:
  dw CODE_8DE5B7                            ; $8DE5AD |
  dw CODE_8DE5C7                            ; $8DE5AF |
  dw CODE_8DE608                            ; $8DE5B1 |
  dw CODE_8DE624                            ; $8DE5B3 |
  dw CODE_8DE658                            ; $8DE5B5 |

CODE_8DE5B7:
  LDA.W #$8100                              ; $8DE5B7 |
  STA.B $22,X                               ; $8DE5BA |
  LDA.W #$0010                              ; $8DE5BC |
  STA.W $1F38                               ; $8DE5BF |
  STA.B $2C,X                               ; $8DE5C2 |
  INC.B $1A,X                               ; $8DE5C4 |
  RTL                                       ; $8DE5C6 |

CODE_8DE5C7:
  JSL.L CODE_FL_86C70D                      ; $8DE5C7 |
  LDA.B $4E,X                               ; $8DE5CB |
  BMI CODE_8DE5D5                           ; $8DE5CD |
  JSL.L CODE_FL_85AC3A                      ; $8DE5CF |
  BRA CODE_8DE5E0                           ; $8DE5D3 |

CODE_8DE5D5:
  AND.W #$00FF                              ; $8DE5D5 |
  CLC                                       ; $8DE5D8 |
  ADC.W #$0578                              ; $8DE5D9 |
  JSL.L CODE_FL_8CF9D2                      ; $8DE5DC |

CODE_8DE5E0:
  BCS CODE_8DE5E5                           ; $8DE5E0 |
  JMP.W CODE_JP_8DE694                      ; $8DE5E2 |

CODE_8DE5E5:
  LDA.B $09,X                               ; $8DE5E5 |
  STA.B $08                                 ; $8DE5E7 |
  LDA.B $0D,X                               ; $8DE5E9 |
  STA.B $0A                                 ; $8DE5EB |
  LDA.B $4F,X                               ; $8DE5ED |
  AND.W #$007F                              ; $8DE5EF |
  ASL A                                     ; $8DE5F2 |
  STA.B $00                                 ; $8DE5F3 |
  ASL A                                     ; $8DE5F5 |
  CLC                                       ; $8DE5F6 |
  ADC.B $00                                 ; $8DE5F7 |
  TAY                                       ; $8DE5F9 |
  STA.B $3A,X                               ; $8DE5FA |
  LDA.W CODE_00DB27,Y                       ; $8DE5FC |
  JSL.L CODE_FL_8580F7                      ; $8DE5FF |
  BCS CODE_8DE607                           ; $8DE603 |
  INC.B $1A,X                               ; $8DE605 |

CODE_8DE607:
  RTL                                       ; $8DE607 |

CODE_8DE608:
  LDA.B $09,X                               ; $8DE608 |
  SEC                                       ; $8DE60A |
  SBC.W #$0020                              ; $8DE60B |
  STA.B $08                                 ; $8DE60E |
  LDA.B $0D,X                               ; $8DE610 |
  STA.B $0A                                 ; $8DE612 |
  LDY.B $3A,X                               ; $8DE614 |
  LDA.W CODE_00DB29,Y                       ; $8DE616 |
  BEQ CODE_8DE621                           ; $8DE619 |
  JSL.L CODE_FL_8580F7                      ; $8DE61B |
  BCS CODE_8DE623                           ; $8DE61F |

CODE_8DE621:
  INC.B $1A,X                               ; $8DE621 |

CODE_8DE623:
  RTL                                       ; $8DE623 |

CODE_8DE624:
  LDA.B $09,X                               ; $8DE624 |
  SEC                                       ; $8DE626 |
  SBC.W #$0040                              ; $8DE627 |
  STA.B $08                                 ; $8DE62A |
  LDA.B $0D,X                               ; $8DE62C |
  STA.B $0A                                 ; $8DE62E |
  LDY.B $3A,X                               ; $8DE630 |
  LDA.W LOOSE_OP_00DB2B,Y                   ; $8DE632 |
  BEQ CODE_8DE63D                           ; $8DE635 |
  JSL.L CODE_FL_8580F7                      ; $8DE637 |
  BCS CODE_8DE623                           ; $8DE63B |

CODE_8DE63D:
  LDA.B $8E                                 ; $8DE63D |
  CMP.W #$0120                              ; $8DE63F |
  BNE CODE_JP_8DE694                        ; $8DE642 |
  LDA.L $7008E6                             ; $8DE644 |
  BNE CODE_JP_8DE694                        ; $8DE648 |
  INC.B $1A,X                               ; $8DE64A |
  LDA.W #$0040                              ; $8DE64C |
  STA.B $2C,X                               ; $8DE64F |
  LDA.W #$0023                              ; $8DE651 |
  JML.L push_sound_queue                    ; $8DE654 |

CODE_8DE658:
  LDA.W #$0001                              ; $8DE658 |
  STA.B $E4                                 ; $8DE65B |
  STA.L $7E7C74                             ; $8DE65D |
  STA.L $7008E6                             ; $8DE661 |
  LDA.B $2C,X                               ; $8DE665 |
  BEQ CODE_8DE68D                           ; $8DE667 |
  AND.W #$0007                              ; $8DE669 |
  BNE CODE_8DE68C                           ; $8DE66C |
  JSL.L CODE_FL_8CFBCE                      ; $8DE66E |
  BCS CODE_8DE68C                           ; $8DE672 |
  LDA.W $000D,Y                             ; $8DE674 |
  ADC.W #$0030                              ; $8DE677 |
  STA.W $000D,Y                             ; $8DE67A |
  LDA.W $0009,Y                             ; $8DE67D |
  ADC.W #$0010                              ; $8DE680 |
  STA.W $0009,Y                             ; $8DE683 |
  LDA.W #$0100                              ; $8DE686 |
  STA.W $0022,Y                             ; $8DE689 |

CODE_8DE68C:
  RTL                                       ; $8DE68C |

CODE_8DE68D:
  TDC                                       ; $8DE68D |
  STA.B $E4                                 ; $8DE68E |
  STA.L $7E7C74                             ; $8DE690 |

CODE_JP_8DE694:
  JML.L CODE_FL_86CA2D                      ; $8DE694 |

CODE_8DE698:
  JSL.L CODE_FL_86C3F8                      ; $8DE698 |
  PHX                                       ; $8DE69C |
  ASL A                                     ; $8DE69D |
  TAX                                       ; $8DE69E |
  LDA.L PTR16_8DE6A9,X                      ; $8DE69F |
  PLX                                       ; $8DE6A3 |
  STA.B $00                                 ; $8DE6A4 |
  JMP.W ($0000)                             ; $8DE6A6 |

PTR16_8DE6A9:
  dw CODE_8DE6AF                            ; $8DE6A9 |
  dw CODE_8DE6C5                            ; $8DE6AB |
  dw CODE_8DE6CC                            ; $8DE6AD |

CODE_8DE6AF:
  JSL.L CODE_FL_86C7A5                      ; $8DE6AF |
  LDA.W #$8001                              ; $8DE6B3 |
  STA.B $22,X                               ; $8DE6B6 |
  JSR.W CODE_FN_8DE6CD                      ; $8DE6B8 |
  LDA.W $1C68                               ; $8DE6BB |
  STA.W $1C6A                               ; $8DE6BE |
  JML.L CODE_FL_86C63F                      ; $8DE6C1 |

CODE_8DE6C5:
  JSR.W CODE_FN_8DE6CD                      ; $8DE6C5 |
  BCC CODE_8DE6CC                           ; $8DE6C8 |
  INC.B $1A,X                               ; $8DE6CA |

CODE_8DE6CC:
  RTL                                       ; $8DE6CC |

CODE_FN_8DE6CD:
  JSL.L CODE_FL_85ABAD                      ; $8DE6CD |
  BCC CODE_8DE6E5                           ; $8DE6D1 |
  LDA.W #$0440                              ; $8DE6D3 |
  STA.W $1C68                               ; $8DE6D6 |
  LDA.W #$3576                              ; $8DE6D9 |
  STA.B $00,X                               ; $8DE6DC |
  LDA.W #$B880                              ; $8DE6DE |
  STA.B $34,X                               ; $8DE6E1 |
  SEC                                       ; $8DE6E3 |
  RTS                                       ; $8DE6E4 |

CODE_8DE6E5:
  CLC                                       ; $8DE6E5 |
  RTS                                       ; $8DE6E6 |

CODE_8DE6E7:
  JSL.L CODE_FL_86C3F8                      ; $8DE6E7 |
  PHX                                       ; $8DE6EB |
  ASL A                                     ; $8DE6EC |
  TAX                                       ; $8DE6ED |
  LDA.L PTR16_8DE6F8,X                      ; $8DE6EE |
  PLX                                       ; $8DE6F2 |
  STA.B $00                                 ; $8DE6F3 |
  JMP.W ($0000)                             ; $8DE6F5 |

PTR16_8DE6F8:
  dw CODE_8DE6FC                            ; $8DE6F8 |
  dw CODE_8DE729                            ; $8DE6FA |

CODE_8DE6FC:
  LDY.W #$E000                              ; $8DE6FC |
  JSL.L CODE_FL_80972B                      ; $8DE6FF |
  STZ.B $22,X                               ; $8DE703 |
  INC.B $1A,X                               ; $8DE705 |
  LDA.B $4E,X                               ; $8DE707 |
  AND.W #$000F                              ; $8DE709 |
  INC A                                     ; $8DE70C |
  INC A                                     ; $8DE70D |
  STA.W $1C52                               ; $8DE70E |
  LDA.B $4E,X                               ; $8DE711 |
  LSR A                                     ; $8DE713 |
  BCC CODE_8DE721                           ; $8DE714 |
  JSL.L CODE_FL_808F94                      ; $8DE716 |
  LDY.W #$9F1A                              ; $8DE71A |
  JML.L CODE_FL_8AAF61                      ; $8DE71D |

CODE_8DE721:
  JSL.L CODE_FL_808F86                      ; $8DE721 |
  JSR.W CODE_FN_8DE74A                      ; $8DE725 |
  RTL                                       ; $8DE728 |

CODE_8DE729:
  JSR.W CODE_FN_8DE72D                      ; $8DE729 |
  RTL                                       ; $8DE72C |

CODE_FN_8DE72D:
  LDA.B $4E,X                               ; $8DE72D |
  LSR A                                     ; $8DE72F |
  BCC CODE_8DE73D                           ; $8DE730 |
  LDA.B $84                                 ; $8DE732 |
  AND.W #$0003                              ; $8DE734 |
  BNE CODE_8DE73C                           ; $8DE737 |
  INC.W $16A2                               ; $8DE739 |

CODE_8DE73C:
  RTS                                       ; $8DE73C |

CODE_8DE73D:
  JSL.L CODE_FL_808F86                      ; $8DE73D |
  LDA.W $1662                               ; $8DE741 |
  JSR.W CODE_FN_8DE776                      ; $8DE744 |
  STA.W $16A2                               ; $8DE747 |

CODE_FN_8DE74A:
  LDA.W $1672                               ; $8DE74A |
  JSR.W CODE_FN_8DE776                      ; $8DE74D |
  AND.W #$00FF                              ; $8DE750 |
  STA.W $16B2                               ; $8DE753 |
  EOR.W #$FFFF                              ; $8DE756 |
  AND.W #$00FF                              ; $8DE759 |
  TAY                                       ; $8DE75C |
  CMP.W #$00C0                              ; $8DE75D |
  BCS CODE_8DE775                           ; $8DE760 |
  STA.B $00                                 ; $8DE762 |
  LDA.W #$0200                              ; $8DE764 |
  SEC                                       ; $8DE767 |
  SBC.B $00                                 ; $8DE768 |
  STA.L $7EDAC2                             ; $8DE76A |
  LDA.W #$DAC2                              ; $8DE76E |
  JSL.L CODE_FL_808FB4                      ; $8DE771 |

CODE_8DE775:
  RTS                                       ; $8DE775 |

CODE_FN_8DE776:
  LSR A                                     ; $8DE776 |
  STA.B $00                                 ; $8DE777 |
  LSR A                                     ; $8DE779 |
  CLC                                       ; $8DE77A |
  ADC.B $00                                 ; $8DE77B |
  RTS                                       ; $8DE77D |

CODE_8DE77E:
  JSL.L CODE_FL_85F885                      ; $8DE77E |
  JSL.L CODE_FL_86C424                      ; $8DE782 |
  STZ.B $22,X                               ; $8DE786 |
  JML.L CODE_FL_85A9EF                      ; $8DE788 |

CODE_8DE78C:
  LDA.W #$0001                              ; $8DE78C |
  STA.L $70073A                             ; $8DE78F |
  JML.L CODE_FL_86CA36                      ; $8DE793 |

CODE_8DE797:
  JSL.L CODE_FL_86C3F8                      ; $8DE797 |
  PHX                                       ; $8DE79B |
  ASL A                                     ; $8DE79C |
  TAX                                       ; $8DE79D |
  LDA.L PTR16_8DE7A8,X                      ; $8DE79E |
  PLX                                       ; $8DE7A2 |
  STA.B $00                                 ; $8DE7A3 |
  JMP.W ($0000)                             ; $8DE7A5 |

PTR16_8DE7A8:
  dw CODE_8DE7B2                            ; $8DE7A8 |
  dw CODE_8DE7F8                            ; $8DE7AA |
  dw CODE_8DE80A                            ; $8DE7AC |
  dw CODE_8DE846                            ; $8DE7AE |
  dw CODE_8DE84F                            ; $8DE7B0 |

CODE_8DE7B2:
  LDA.L $7002AE                             ; $8DE7B2 |
  BEQ CODE_8DE7C6                           ; $8DE7B6 |
  STZ.B $14                                 ; $8DE7B8 |
  LDA.W #$0140                              ; $8DE7BA |
  JSL.L CODE_FL_8DE7D5                      ; $8DE7BD |
  BCS CODE_8DE7C5                           ; $8DE7C1 |
  INC.B $1A,X                               ; $8DE7C3 |

CODE_8DE7C5:
  RTL                                       ; $8DE7C5 |

CODE_8DE7C6:
  LDA.W #$1880                              ; $8DE7C6 |
  STA.B $34,X                               ; $8DE7C9 |
  JSL.L CODE_FL_86C63A                      ; $8DE7CB |
  LDA.W #$0002                              ; $8DE7CF |
  STA.B $1A,X                               ; $8DE7D2 |

CODE_8DE7D4:
  RTL                                       ; $8DE7D4 |

CODE_FL_8DE7D5:
  PHA                                       ; $8DE7D5 |
  LDA.B $09,X                               ; $8DE7D6 |
  CLC                                       ; $8DE7D8 |
  ADC.W $1682                               ; $8DE7D9 |
  AND.W #$FFE0                              ; $8DE7DC |
  SEC                                       ; $8DE7DF |
  SBC.W #$0020                              ; $8DE7E0 |
  STA.B $10                                 ; $8DE7E3 |
  LDA.B $0D,X                               ; $8DE7E5 |
  CLC                                       ; $8DE7E7 |
  ADC.W $1692                               ; $8DE7E8 |
  CLC                                       ; $8DE7EB |
  ADC.B $14                                 ; $8DE7EC |
  AND.W #$FFE0                              ; $8DE7EE |
  STA.B $12                                 ; $8DE7F1 |
  PLA                                       ; $8DE7F3 |
  JML.L CODE_FL_8580EE                      ; $8DE7F4 |

CODE_8DE7F8:
  LDA.W #$0020                              ; $8DE7F8 |
  STA.B $14                                 ; $8DE7FB |
  LDA.W #$0142                              ; $8DE7FD |
  JSL.L CODE_FL_8DE7D5                      ; $8DE800 |
  BCS CODE_8DE7D4                           ; $8DE804 |
  JML.L CODE_FL_86CA2D                      ; $8DE806 |

CODE_8DE80A:
  LDA.B $46,X                               ; $8DE80A |
  BPL CODE_8DE845                           ; $8DE80C |
  TDC                                       ; $8DE80E |
  STA.L $7E7C06                             ; $8DE80F |
  JSL.L CODE_FL_86C27C                      ; $8DE813 |
  BEQ CODE_8DE821                           ; $8DE817 |
  LDA.W $0018,Y                             ; $8DE819 |
  CMP.W #$0004                              ; $8DE81C |
  BEQ CODE_8DE82F                           ; $8DE81F |

CODE_8DE821:
  JSL.L CODE_FL_86C287                      ; $8DE821 |
  BEQ CODE_8DE843                           ; $8DE825 |
  LDA.W $0018,Y                             ; $8DE827 |
  CMP.W #$0004                              ; $8DE82A |
  BNE CODE_8DE843                           ; $8DE82D |

CODE_8DE82F:
  LDA.W $0022,Y                             ; $8DE82F |
  CMP.W #$0021                              ; $8DE832 |
  BEQ CODE_8DE83C                           ; $8DE835 |
  CMP.W #$0020                              ; $8DE837 |
  BNE CODE_8DE843                           ; $8DE83A |

CODE_8DE83C:
  LDA.W #$0001                              ; $8DE83C |
  STA.L $7E7C06                             ; $8DE83F |

CODE_8DE843:
  INC.B $1A,X                               ; $8DE843 |

CODE_8DE845:
  RTL                                       ; $8DE845 |

CODE_8DE846:
  JSL.L CODE_FL_8098FD                      ; $8DE846 |
  BCC CODE_8DE84E                           ; $8DE84A |
  INC.B $1A,X                               ; $8DE84C |

CODE_8DE84E:
  RTL                                       ; $8DE84E |

CODE_8DE84F:
  LDA.B $46,X                               ; $8DE84F |
  BMI CODE_8DE862                           ; $8DE851 |
  LDA.L $7E7C06                             ; $8DE853 |
  BEQ CODE_8DE85D                           ; $8DE857 |
  JML.L CODE_JL_80EBD4                      ; $8DE859 |

CODE_8DE85D:
  LDA.W #$0002                              ; $8DE85D |
  STA.B $1A,X                               ; $8DE860 |

CODE_8DE862:
  STZ.B $46,X                               ; $8DE862 |
  RTL                                       ; $8DE864 |

CODE_8DE865:
  JSL.L CODE_FL_86C3F8                      ; $8DE865 |
  PHX                                       ; $8DE869 |
  ASL A                                     ; $8DE86A |
  TAX                                       ; $8DE86B |
  LDA.L PTR16_8DE876,X                      ; $8DE86C |
  PLX                                       ; $8DE870 |
  STA.B $00                                 ; $8DE871 |
  JMP.W ($0000)                             ; $8DE873 |

PTR16_8DE876:
  dw CODE_8DE87A                            ; $8DE876 |
  dw CODE_8DE8CC                            ; $8DE878 |

CODE_8DE87A:
  STZ.B $22,X                               ; $8DE87A |
  LDY.W #$9F7D                              ; $8DE87C |
  JSL.L CODE_FL_8AAF61                      ; $8DE87F |
  LDX.B $FC                                 ; $8DE883 |
  LDA.B $4E,X                               ; $8DE885 |
  BNE CODE_8DE8C9                           ; $8DE887 |
  SEP #$20                                  ; $8DE889 |
  LDA.B #$18                                ; $8DE88B |
  STA.L $7EFB4A                             ; $8DE88D |
  STA.L $7EFD4A                             ; $8DE891 |
  LDA.B #$30                                ; $8DE895 |
  STA.L $7EFB4D                             ; $8DE897 |
  STA.L $7EFD4D                             ; $8DE89B |
  LDA.B #$30                                ; $8DE89F |
  STA.L $7EFB50                             ; $8DE8A1 |
  STA.L $7EFD50                             ; $8DE8A5 |
  LDA.B #$01                                ; $8DE8A9 |
  STA.L $7EFB53                             ; $8DE8AB |
  STA.L $7EFD53                             ; $8DE8AF |
  LDA.B #$00                                ; $8DE8B3 |
  STA.L $7EFB56                             ; $8DE8B5 |
  STA.L $7EFD56                             ; $8DE8B9 |
  REP #$20                                  ; $8DE8BD |
  JSR.W CODE_FN_8DE8D0                      ; $8DE8BF |
  LDY.W #$0200                              ; $8DE8C2 |
  JSL.L CODE_FL_80975C                      ; $8DE8C5 |

CODE_8DE8C9:
  INC.B $1A,X                               ; $8DE8C9 |
  RTL                                       ; $8DE8CB |

CODE_8DE8CC:
  JSR.W CODE_FN_8DE8D0                      ; $8DE8CC |
  RTL                                       ; $8DE8CF |

CODE_FN_8DE8D0:
  LDA.L $7EFB48                             ; $8DE8D0 |
  LSR A                                     ; $8DE8D4 |
  LDX.W #$FB4A                              ; $8DE8D5 |
  BCS CODE_8DE8DD                           ; $8DE8D8 |
  LDX.W #$FD4A                              ; $8DE8DA |

CODE_8DE8DD:
  LDA.W $1662                               ; $8DE8DD |
  LSR A                                     ; $8DE8E0 |
  STA.L $7E0001,X                           ; $8DE8E1 |
  STA.L $7E000A,X                           ; $8DE8E5 |
  LSR A                                     ; $8DE8E9 |
  STA.L $7E0004,X                           ; $8DE8EA |
  LSR A                                     ; $8DE8EE |
  STA.L $7E0007,X                           ; $8DE8EF |
  LDA.L $7EFB48                             ; $8DE8F3 |
  EOR.W #$0001                              ; $8DE8F7 |
  STA.L $7EFB48                             ; $8DE8FA |
  LDX.B $FC                                 ; $8DE8FE |
  RTS                                       ; $8DE900 |

CODE_8DE901:
  LDA.W #$0001                              ; $8DE901 |
  LDY.B $4E,X                               ; $8DE904 |
  BNE CODE_8DE910                           ; $8DE906 |
  STA.L $7008E0                             ; $8DE908 |
  JML.L CODE_FL_86CA2D                      ; $8DE90C |

CODE_8DE910:
  STA.L $7008E2                             ; $8DE910 |

CODE_8DE914:
  JML.L CODE_FL_86CA2D                      ; $8DE914 |

CODE_8DE918:
  LDA.B $F8                                 ; $8DE918 |
  CMP.W #$0194                              ; $8DE91A |
  BNE CODE_8DE914                           ; $8DE91D |
  LDA.W #$002C                              ; $8DE91F |
  JSL.L push_sound_queue                    ; $8DE922 |
  BRA CODE_8DE914                           ; $8DE926 |

  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8DE928 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8DE930 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8DE938 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8DE940 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8DE948 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8DE950 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8DE958 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8DE960 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8DE968 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8DE970 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8DE978 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8DE980 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8DE988 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8DE990 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8DE998 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8DE9A0 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8DE9A8 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8DE9B0 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8DE9B8 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8DE9C0 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8DE9C8 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8DE9D0 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8DE9D8 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8DE9E0 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8DE9E8 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8DE9F0 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8DE9F8 |

CODE_FL_8DEA00:
  PHB                                       ; $8DEA00 |
  PEA.W $7E00                               ; $8DEA01 |
  PLB                                       ; $8DEA04 |
  PLB                                       ; $8DEA05 |
  LDX.W #$7D00                              ; $8DEA06 |

CODE_8DEA09:
  JSR.W CODE_FN_8DEA25                      ; $8DEA09 |
  TXA                                       ; $8DEA0C |
  CLC                                       ; $8DEA0D |
  ADC.W #$0018                              ; $8DEA0E |
  TAX                                       ; $8DEA11 |
  CMP.W #$7D78                              ; $8DEA12 |
  BCC CODE_8DEA09                           ; $8DEA15 |
  STZ.W $7D78                               ; $8DEA17 |
  STZ.W $7D7A                               ; $8DEA1A |
  STZ.W $7D7C                               ; $8DEA1D |
  STZ.W $7D7E                               ; $8DEA20 |
  PLB                                       ; $8DEA23 |
  RTL                                       ; $8DEA24 |

CODE_FN_8DEA25:
  STZ.W $0000,X                             ; $8DEA25 |
  STZ.W $0002,X                             ; $8DEA28 |
  STZ.W $0004,X                             ; $8DEA2B |
  STZ.W $0006,X                             ; $8DEA2E |
  STZ.W $0008,X                             ; $8DEA31 |
  STZ.W $000A,X                             ; $8DEA34 |
  STZ.W $000C,X                             ; $8DEA37 |
  STZ.W $000E,X                             ; $8DEA3A |
  RTS                                       ; $8DEA3D |

CODE_FL_8DEA3E:
  PHB                                       ; $8DEA3E |
  PEA.W $7E00                               ; $8DEA3F |
  PLB                                       ; $8DEA42 |
  PLB                                       ; $8DEA43 |
  PHX                                       ; $8DEA44 |
  PHA                                       ; $8DEA45 |
  PHY                                       ; $8DEA46 |
  LDX.W #$7D00                              ; $8DEA47 |

CODE_8DEA4A:
  LDA.W $0000,X                             ; $8DEA4A |
  BEQ CODE_8DEA5E                           ; $8DEA4D |
  TXA                                       ; $8DEA4F |
  CLC                                       ; $8DEA50 |
  ADC.W #$0018                              ; $8DEA51 |
  TAX                                       ; $8DEA54 |
  CMP.W #$7D78                              ; $8DEA55 |
  BCC CODE_8DEA4A                           ; $8DEA58 |
  PLY                                       ; $8DEA5A |
  PLA                                       ; $8DEA5B |
  BRA CODE_8DEA6A                           ; $8DEA5C |

CODE_8DEA5E:
  JSR.W CODE_FN_8DEA25                      ; $8DEA5E |
  PLY                                       ; $8DEA61 |
  PLA                                       ; $8DEA62 |
  STA.W $0000,X                             ; $8DEA63 |
  TYA                                       ; $8DEA66 |
  STA.W $0004,X                             ; $8DEA67 |

CODE_8DEA6A:
  PLX                                       ; $8DEA6A |
  PLB                                       ; $8DEA6B |
  RTL                                       ; $8DEA6C |

CODE_FL_8DEA6D:
  PHX                                       ; $8DEA6D |
  PHB                                       ; $8DEA6E |
  PEA.W $7E00                               ; $8DEA6F |
  PLB                                       ; $8DEA72 |
  PLB                                       ; $8DEA73 |
  STZ.W $7D78                               ; $8DEA74 |
  STZ.W $7D7A                               ; $8DEA77 |
  LDA.B $42                                 ; $8DEA7A |
  LSR A                                     ; $8DEA7C |
  BCS CODE_8DEA99                           ; $8DEA7D |
  LDX.W #$7D00                              ; $8DEA7F |

CODE_8DEA82:
  STX.B $FC                                 ; $8DEA82 |
  LDA.W $0000,X                             ; $8DEA84 |
  BEQ CODE_8DEA8C                           ; $8DEA87 |
  JSR.W CODE_FN_8DEAB6                      ; $8DEA89 |

CODE_8DEA8C:
  TXA                                       ; $8DEA8C |
  CLC                                       ; $8DEA8D |
  ADC.W #$0018                              ; $8DEA8E |
  TAX                                       ; $8DEA91 |
  CMP.W #$7D78                              ; $8DEA92 |
  BCC CODE_8DEA82                           ; $8DEA95 |
  BRA CODE_8DEAB1                           ; $8DEA97 |

CODE_8DEA99:
  LDX.W #$7D60                              ; $8DEA99 |

CODE_8DEA9C:
  STX.B $FC                                 ; $8DEA9C |
  LDA.W $0000,X                             ; $8DEA9E |
  BEQ CODE_8DEAA6                           ; $8DEAA1 |
  JSR.W CODE_FN_8DEAB6                      ; $8DEAA3 |

CODE_8DEAA6:
  TXA                                       ; $8DEAA6 |
  SEC                                       ; $8DEAA7 |
  SBC.W #$0018                              ; $8DEAA8 |
  TAX                                       ; $8DEAAB |
  CMP.W #$7D00                              ; $8DEAAC |
  BCS CODE_8DEA9C                           ; $8DEAAF |

CODE_8DEAB1:
  PLB                                       ; $8DEAB1 |
  PLX                                       ; $8DEAB2 |
  STX.B $FC                                 ; $8DEAB3 |
  RTL                                       ; $8DEAB5 |

CODE_FN_8DEAB6:
  DEC A                                     ; $8DEAB6 |
  PHX                                       ; $8DEAB7 |
  ASL A                                     ; $8DEAB8 |
  TAX                                       ; $8DEAB9 |
  LDA.L PTR16_8DEAC4,X                      ; $8DEABA |
  PLX                                       ; $8DEABE |
  STA.B $00                                 ; $8DEABF |
  JMP.W ($0000)                             ; $8DEAC1 |

PTR16_8DEAC4:
  dw CODE_8DEACC                            ; $8DEAC4 |
  dw CODE_8DEB8E                            ; $8DEAC6 |
  dw CODE_8DEC7A                            ; $8DEAC8 |
  dw CODE_8DED44                            ; $8DEACA |

CODE_8DEACC:
  LDA.W $0002,X                             ; $8DEACC |
  PHX                                       ; $8DEACF |
  ASL A                                     ; $8DEAD0 |
  TAX                                       ; $8DEAD1 |
  LDA.L PTR16_8DEADC,X                      ; $8DEAD2 |
  PLX                                       ; $8DEAD6 |
  STA.B $00                                 ; $8DEAD7 |
  JMP.W ($0000)                             ; $8DEAD9 |

PTR16_8DEADC:
  dw CODE_8DEAE0                            ; $8DEADC |
  dw CODE_8DEB16                            ; $8DEADE |

CODE_8DEAE0:
  LDA.W $0004,X                             ; $8DEAE0 |
  AND.W #$00FF                              ; $8DEAE3 |
  ASL A                                     ; $8DEAE6 |
  TAX                                       ; $8DEAE7 |
  LDA.L DATA8_87C9A1,X                      ; $8DEAE8 |
  STA.B $00                                 ; $8DEAEC |
  LDA.L DATA8_87C9DE,X                      ; $8DEAEE |
  STA.B $02                                 ; $8DEAF2 |
  TAX                                       ; $8DEAF4 |
  LDA.L $870000,X                           ; $8DEAF5 |
  AND.W #$00FF                              ; $8DEAF9 |
  STA.B $04                                 ; $8DEAFC |
  LDX.B $FC                                 ; $8DEAFE |
  LDA.B $00                                 ; $8DEB00 |
  STA.W $000A,X                             ; $8DEB02 |
  LDA.B $02                                 ; $8DEB05 |
  STA.W $000C,X                             ; $8DEB07 |
  LDA.B $04                                 ; $8DEB0A |
  STA.W $000E,X                             ; $8DEB0C |
  INC.W $0008,X                             ; $8DEB0F |
  INC.W $0002,X                             ; $8DEB12 |
  RTS                                       ; $8DEB15 |

CODE_8DEB16:
  LDA.W $1798                               ; $8DEB16 |
  ORA.W $17A0                               ; $8DEB19 |
  ORA.W $17A4                               ; $8DEB1C |
  ORA.W $17AC                               ; $8DEB1F |
  SEP #$20                                  ; $8DEB22 |
  STA.W $7D7C,X                             ; $8DEB24 |
  XBA                                       ; $8DEB27 |
  ORA.W $7D7C,X                             ; $8DEB28 |
  STA.W $7D7C,X                             ; $8DEB2B |
  LDA.W $0008,X                             ; $8DEB2E |
  BEQ CODE_8DEB86                           ; $8DEB31 |
  DEC.W $0008,X                             ; $8DEB33 |
  BNE CODE_8DEB86                           ; $8DEB36 |
  LDA.W $7D7A                               ; $8DEB38 |
  ORA.W $7D7C                               ; $8DEB3B |
  BNE CODE_8DEB89                           ; $8DEB3E |
  LDA.B #$87                                ; $8DEB40 |
  STA.B $02                                 ; $8DEB42 |
  STA.B $06                                 ; $8DEB44 |
  TDC                                       ; $8DEB46 |
  LDY.W $000A,X                             ; $8DEB47 |
  STY.B $00                                 ; $8DEB4A |
  LDY.W $000C,X                             ; $8DEB4C |
  STY.B $04                                 ; $8DEB4F |

CODE_8DEB51:
  LDY.W $0006,X                             ; $8DEB51 |
  LDA.B [$00],Y                             ; $8DEB54 |
  BNE CODE_8DEB60                           ; $8DEB56 |
  STZ.W $0006,X                             ; $8DEB58 |
  STZ.W $0007,X                             ; $8DEB5B |
  BRA CODE_8DEB51                           ; $8DEB5E |

CODE_8DEB60:
  CMP.B #$FF                                ; $8DEB60 |
  BNE CODE_8DEB69                           ; $8DEB62 |
  STZ.W $0008,X                             ; $8DEB64 |
  BRA CODE_8DEB86                           ; $8DEB67 |

CODE_8DEB69:
  STA.W $0008,X                             ; $8DEB69 |
  LDA.W $0006,X                             ; $8DEB6C |
  REP #$20                                  ; $8DEB6F |
  ASL A                                     ; $8DEB71 |
  INC A                                     ; $8DEB72 |
  TAY                                       ; $8DEB73 |
  LDA.B [$04],Y                             ; $8DEB74 |
  TAY                                       ; $8DEB76 |
  LDA.W $000E,X                             ; $8DEB77 |
  JSL.L CODE_FL_80C2B5                      ; $8DEB7A |
  LDX.B $FC                                 ; $8DEB7E |
  INC.W $0006,X                             ; $8DEB80 |
  INC.W $7D7A                               ; $8DEB83 |

CODE_8DEB86:
  REP #$20                                  ; $8DEB86 |
  RTS                                       ; $8DEB88 |

CODE_8DEB89:
  INC.W $0008,X                             ; $8DEB89 |
  BRA CODE_8DEB86                           ; $8DEB8C |

CODE_8DEB8E:
  LDA.W $0002,X                             ; $8DEB8E |
  PHX                                       ; $8DEB91 |
  ASL A                                     ; $8DEB92 |
  TAX                                       ; $8DEB93 |
  LDA.L PTR16_8DEB9E,X                      ; $8DEB94 |
  PLX                                       ; $8DEB98 |
  STA.B $00                                 ; $8DEB99 |
  JMP.W ($0000)                             ; $8DEB9B |

PTR16_8DEB9E:
  dw CODE_FN_8DEBA2                         ; $8DEB9E |
  dw CODE_JP_8DEBFE                         ; $8DEBA0 |

CODE_FN_8DEBA2:
  LDA.W $0004,X                             ; $8DEBA2 |
  AND.W #$FF00                              ; $8DEBA5 |
  STA.B $0A                                 ; $8DEBA8 |
  LDA.W $0004,X                             ; $8DEBAA |
  AND.W #$00FF                              ; $8DEBAD |
  ASL A                                     ; $8DEBB0 |
  TAX                                       ; $8DEBB1 |
  LDA.L DATA8_87CA34,X                      ; $8DEBB2 |
  STA.B $00                                 ; $8DEBB6 |
  LDA.L DATA8_87CA8E,X                      ; $8DEBB8 |
  STA.B $02                                 ; $8DEBBC |
  TAX                                       ; $8DEBBE |
  LDA.L $870000,X                           ; $8DEBBF |
  STA.B $04                                 ; $8DEBC3 |
  LDA.L $870002,X                           ; $8DEBC5 |
  STA.B $06                                 ; $8DEBC9 |
  LDA.L $870004,X                           ; $8DEBCB |
  STA.B $08                                 ; $8DEBCF |
  LDX.B $FC                                 ; $8DEBD1 |
  LDA.B $00                                 ; $8DEBD3 |
  STA.W $000A,X                             ; $8DEBD5 |
  LDA.B $02                                 ; $8DEBD8 |
  STA.W $000C,X                             ; $8DEBDA |
  LDA.B $04                                 ; $8DEBDD |
  AND.W #$00FF                              ; $8DEBDF |
  ASL A                                     ; $8DEBE2 |
  ASL A                                     ; $8DEBE3 |
  ASL A                                     ; $8DEBE4 |
  ASL A                                     ; $8DEBE5 |
  ASL A                                     ; $8DEBE6 |
  STA.W $000E,X                             ; $8DEBE7 |
  LDA.B $05                                 ; $8DEBEA |
  CLC                                       ; $8DEBEC |
  ADC.B $0A                                 ; $8DEBED |
  STA.W $0010,X                             ; $8DEBEF |
  LDA.B $07                                 ; $8DEBF2 |
  STA.W $0012,X                             ; $8DEBF4 |
  INC.W $0008,X                             ; $8DEBF7 |
  INC.W $0002,X                             ; $8DEBFA |
  RTS                                       ; $8DEBFD |

CODE_JP_8DEBFE:
  LDA.W $7D78                               ; $8DEBFE |
  BNE CODE_8DEC77                           ; $8DEC01 |

CODE_FN_8DEC03:
  SEP #$20                                  ; $8DEC03 |
  LDA.W $0008,X                             ; $8DEC05 |
  BEQ CODE_8DEC77                           ; $8DEC08 |
  DEC.W $0008,X                             ; $8DEC0A |
  BNE CODE_8DEC77                           ; $8DEC0D |
  LDA.B #$87                                ; $8DEC0F |
  STA.B $02                                 ; $8DEC11 |
  STA.B $06                                 ; $8DEC13 |
  TDC                                       ; $8DEC15 |
  LDY.W $000A,X                             ; $8DEC16 |
  STY.B $00                                 ; $8DEC19 |
  LDY.W $000C,X                             ; $8DEC1B |
  STY.B $04                                 ; $8DEC1E |

CODE_8DEC20:
  LDY.W $0006,X                             ; $8DEC20 |
  LDA.B [$00],Y                             ; $8DEC23 |
  BNE CODE_8DEC2F                           ; $8DEC25 |
  STZ.W $0006,X                             ; $8DEC27 |
  STZ.W $0007,X                             ; $8DEC2A |
  BRA CODE_8DEC20                           ; $8DEC2D |

CODE_8DEC2F:
  CMP.B #$FF                                ; $8DEC2F |
  BNE CODE_8DEC38                           ; $8DEC31 |
  STZ.W $0008,X                             ; $8DEC33 |
  BRA CODE_8DEC77                           ; $8DEC36 |

CODE_8DEC38:
  STA.W $0008,X                             ; $8DEC38 |
  LDA.B #$7F                                ; $8DEC3B |
  STA.B $00                                 ; $8DEC3D |
  LDA.W $0006,X                             ; $8DEC3F |
  REP #$20                                  ; $8DEC42 |
  BEQ CODE_8DEC5D                           ; $8DEC44 |
  CLC                                       ; $8DEC46 |
  ADC.W #$0004                              ; $8DEC47 |
  TAY                                       ; $8DEC4A |
  LDA.B [$04],Y                             ; $8DEC4B |
  AND.W #$00FF                              ; $8DEC4D |
  CMP.W #$0080                              ; $8DEC50 |
  BCC CODE_8DEC58                           ; $8DEC53 |
  ORA.W #$FF00                              ; $8DEC55 |

CODE_8DEC58:
  ASL A                                     ; $8DEC58 |
  ASL A                                     ; $8DEC59 |
  ASL A                                     ; $8DEC5A |
  ASL A                                     ; $8DEC5B |
  ASL A                                     ; $8DEC5C |

CODE_8DEC5D:
  CLC                                       ; $8DEC5D |
  ADC.W $0012,X                             ; $8DEC5E |
  PHA                                       ; $8DEC61 |
  LDA.W $0010,X                             ; $8DEC62 |
  TAY                                       ; $8DEC65 |
  LDA.W $000E,X                             ; $8DEC66 |
  TAX                                       ; $8DEC69 |
  PLA                                       ; $8DEC6A |
  JSL.L CODE_FL_809671                      ; $8DEC6B |
  LDX.B $FC                                 ; $8DEC6F |
  INC.W $0006,X                             ; $8DEC71 |
  INC.W $7D78                               ; $8DEC74 |

CODE_8DEC77:
  REP #$20                                  ; $8DEC77 |
  RTS                                       ; $8DEC79 |

CODE_8DEC7A:
  LDA.W $0002,X                             ; $8DEC7A |
  PHX                                       ; $8DEC7D |
  ASL A                                     ; $8DEC7E |
  TAX                                       ; $8DEC7F |
  LDA.L PTR16_8DEC8A,X                      ; $8DEC80 |
  PLX                                       ; $8DEC84 |
  STA.B $00                                 ; $8DEC85 |
  JMP.W ($0000)                             ; $8DEC87 |

PTR16_8DEC8A:
  dw CODE_8DEC8E                            ; $8DEC8A |
  dw CODE_8DECCA                            ; $8DEC8C |

CODE_8DEC8E:
  LDA.W $0004,X                             ; $8DEC8E |
  AND.W #$00FF                              ; $8DEC91 |
  STA.B $00                                 ; $8DEC94 |
  ASL A                                     ; $8DEC96 |
  CLC                                       ; $8DEC97 |
  ADC.B $00                                 ; $8DEC98 |
  TAX                                       ; $8DEC9A |
  LDA.L DATA8_87CB2E,X                      ; $8DEC9B |
  STA.B $00                                 ; $8DEC9F |
  LDA.L DATA8_87CB2F,X                      ; $8DECA1 |
  STA.B $01                                 ; $8DECA5 |
  LDX.B $FC                                 ; $8DECA7 |
  LDA.B $00                                 ; $8DECA9 |
  AND.W #$00FF                              ; $8DECAB |
  STA.W $000A,X                             ; $8DECAE |
  LDA.B $01                                 ; $8DECB1 |
  AND.W #$00FF                              ; $8DECB3 |
  ASL A                                     ; $8DECB6 |
  STA.W $000C,X                             ; $8DECB7 |
  LDA.B $02                                 ; $8DECBA |
  AND.W #$00FF                              ; $8DECBC |
  ASL A                                     ; $8DECBF |
  STA.W $000E,X                             ; $8DECC0 |
  INC.W $0008,X                             ; $8DECC3 |
  INC.W $0002,X                             ; $8DECC6 |
  RTS                                       ; $8DECC9 |

CODE_8DECCA:
  SEP #$20                                  ; $8DECCA |
  LDA.W $0008,X                             ; $8DECCC |
  BEQ CODE_8DED14                           ; $8DECCF |
  DEC.W $0008,X                             ; $8DECD1 |
  BNE CODE_8DED14                           ; $8DECD4 |
  LDA.B $49                                 ; $8DECD6 |
  ORA.B #$80                                ; $8DECD8 |
  STA.B $49                                 ; $8DECDA |
  LDA.W $000A,X                             ; $8DECDC |
  STA.W $0008,X                             ; $8DECDF |
  REP #$20                                  ; $8DECE2 |
  LDA.W $000C,X                             ; $8DECE4 |
  CMP.W $000E,X                             ; $8DECE7 |
  BCS CODE_8DED19                           ; $8DECEA |
  LDA.W $000E,X                             ; $8DECEC |
  STA.B $04                                 ; $8DECEF |
  LDA.W $000C,X                             ; $8DECF1 |
  STA.B $00                                 ; $8DECF4 |
  TAX                                       ; $8DECF6 |
  TAY                                       ; $8DECF7 |
  LDA.W $2C00,X                             ; $8DECF8 |
  STA.B $02                                 ; $8DECFB |
  INX                                       ; $8DECFD |
  INX                                       ; $8DECFE |

CODE_8DECFF:
  CPY.B $04                                 ; $8DECFF |
  BEQ CODE_8DED0F                           ; $8DED01 |
  LDA.W $2C00,X                             ; $8DED03 |
  INX                                       ; $8DED06 |
  INX                                       ; $8DED07 |
  STA.W $2C00,Y                             ; $8DED08 |
  INY                                       ; $8DED0B |
  INY                                       ; $8DED0C |
  BRA CODE_8DECFF                           ; $8DED0D |

CODE_8DED0F:
  LDA.B $02                                 ; $8DED0F |
  STA.W $2C00,Y                             ; $8DED11 |

CODE_8DED14:
  REP #$20                                  ; $8DED14 |
  LDX.B $FC                                 ; $8DED16 |
  RTS                                       ; $8DED18 |

CODE_8DED19:
  LDA.W $000C,X                             ; $8DED19 |
  STA.B $04                                 ; $8DED1C |
  LDA.W $000E,X                             ; $8DED1E |
  STA.B $00                                 ; $8DED21 |
  TAX                                       ; $8DED23 |
  TAY                                       ; $8DED24 |
  LDA.W $2C00,X                             ; $8DED25 |
  STA.B $02                                 ; $8DED28 |
  DEX                                       ; $8DED2A |
  DEX                                       ; $8DED2B |

CODE_8DED2C:
  CPY.B $04                                 ; $8DED2C |
  BEQ CODE_8DED3C                           ; $8DED2E |
  LDA.W $2C00,X                             ; $8DED30 |
  DEX                                       ; $8DED33 |
  DEX                                       ; $8DED34 |
  STA.W $2C00,Y                             ; $8DED35 |
  DEY                                       ; $8DED38 |
  DEY                                       ; $8DED39 |
  BRA CODE_8DED2C                           ; $8DED3A |

CODE_8DED3C:
  LDA.B $02                                 ; $8DED3C |
  STA.W $2C00,Y                             ; $8DED3E |
  LDX.B $FC                                 ; $8DED41 |
  RTS                                       ; $8DED43 |

CODE_8DED44:
  LDA.W $0002,X                             ; $8DED44 |
  PHX                                       ; $8DED47 |
  ASL A                                     ; $8DED48 |
  TAX                                       ; $8DED49 |
  LDA.L PTR16_8DED54,X                      ; $8DED4A |
  PLX                                       ; $8DED4E |
  STA.B $00                                 ; $8DED4F |
  JMP.W ($0000)                             ; $8DED51 |

PTR16_8DED54:
  dw CODE_8DED58                            ; $8DED54 |
  dw CODE_8DED65                            ; $8DED56 |

CODE_8DED58:
  JSR.W CODE_FN_8DEBA2                      ; $8DED58 |
  JSR.W CODE_FN_8DEC03                      ; $8DED5B |
  LDA.W $000C,X                             ; $8DED5E |
  STA.W $0014,X                             ; $8DED61 |

CODE_8DED64:
  RTS                                       ; $8DED64 |

CODE_8DED65:
  LDA.W $1C76                               ; $8DED65 |
  BEQ CODE_8DED64                           ; $8DED68 |
  DEC A                                     ; $8DED6A |
  STA.B $00                                 ; $8DED6B |
  ASL A                                     ; $8DED6D |
  CLC                                       ; $8DED6E |
  ADC.B $00                                 ; $8DED6F |
  ADC.W $0014,X                             ; $8DED71 |
  STA.W $000C,X                             ; $8DED74 |
  JMP.W CODE_JP_8DEBFE                      ; $8DED77 |

CODE_JL_8DED7A:
  PHB                                       ; $8DED7A |
  PEA.W $8181                               ; $8DED7B |
  PLB                                       ; $8DED7E |
  PLB                                       ; $8DED7F |
  JSR.W CODE_FN_8DED85                      ; $8DED80 |
  PLB                                       ; $8DED83 |
  RTL                                       ; $8DED84 |

CODE_FN_8DED85:
  LDA.B $80                                 ; $8DED85 |
  PHX                                       ; $8DED87 |
  ASL A                                     ; $8DED88 |
  TAX                                       ; $8DED89 |
  LDA.L PTR16_8DED94,X                      ; $8DED8A |
  PLX                                       ; $8DED8E |
  STA.B $00                                 ; $8DED8F |
  JMP.W ($0000)                             ; $8DED91 |

PTR16_8DED94:
  dw CODE_8DED9E                            ; $8DED94 |
  dw CODE_8DEDB5                            ; $8DED96 |
  dw CODE_8DEEC3                            ; $8DED98 |
  dw CODE_8DEEE0                            ; $8DED9A |
  dw CODE_8DEF2B                            ; $8DED9C |

CODE_8DED9E:
  LDA.W $1F30                               ; $8DED9E |
  BEQ CODE_8DEDAE                           ; $8DEDA1 |
  LDA.W $1FA0                               ; $8DEDA3 |
  AND.W #$000F                              ; $8DEDA6 |
  CMP.W #$000F                              ; $8DEDA9 |
  BNE CODE_8DEDB4                           ; $8DEDAC |

CODE_8DEDAE:
  JSL.L CODE_FL_80C213                      ; $8DEDAE |
  INC.B $80                                 ; $8DEDB2 |

CODE_8DEDB4:
  RTS                                       ; $8DEDB4 |

CODE_8DEDB5:
  LDA.W $1F30                               ; $8DEDB5 |
  BNE CODE_8DEDB4                           ; $8DEDB8 |
  LDA.W #$0001                              ; $8DEDBA |
  STA.B $C6                                 ; $8DEDBD |
  STZ.B $A4                                 ; $8DEDBF |
  JSL.L CODE_FL_8EFE80                      ; $8DEDC1 |
  JSL.L CODE_FL_808302                      ; $8DEDC5 |
  LDX.W #DATA_888903                        ; $8DEDC9 |
  JSL.L sound_transfer_blocks               ; $8DEDCC |
  LDX.W #DATA_8888FB                        ; $8DEDD0 |
  JSL.L sound_transfer_blocks               ; $8DEDD3 |
  JSR.W CODE_FN_8DEDEB                      ; $8DEDD7 |
  LDA.W #$01FC                              ; $8DEDDA |
  STA.W $16A2                               ; $8DEDDD |
  JSR.W CODE_FN_8DF05C                      ; $8DEDE0 |
  JSR.W CODE_FN_8DEEA6                      ; $8DEDE3 |
  JSL.L CODE_FL_808315                      ; $8DEDE6 |
  RTS                                       ; $8DEDEA |

CODE_FN_8DEDEB:
  LDA.B $EE                                 ; $8DEDEB |
  LSR A                                     ; $8DEDED |
  BCS CODE_8DEDF7                           ; $8DEDEE |
  LDA.W #$004A                              ; $8DEDF0 |
  JSL.L push_sound_queue                    ; $8DEDF3 |

CODE_8DEDF7:
  JSL.L CODE_FL_808302                      ; $8DEDF7 |
  LDY.W #$B6D7                              ; $8DEDFB |
  LDX.W #$1F40                              ; $8DEDFE |
  JSL.L CODE_FL_80C27F                      ; $8DEE01 |
  PHB                                       ; $8DEE05 |
  REP #$30                                  ; $8DEE06 |
  PHB                                       ; $8DEE08 |
  LDA.W #$0000                              ; $8DEE09 |
  STA.L $7E12B0                             ; $8DEE0C |
  LDA.W #$02C3                              ; $8DEE10 |
  LDX.W #$12B1                              ; $8DEE13 |
  TXY                                       ; $8DEE16 |
  INY                                       ; $8DEE17 |
  MVN $7E,$7E                               ; $8DEE18 |
  PLB                                       ; $8DEE1B |
  PLB                                       ; $8DEE1C |
  LDX.W #$12B0                              ; $8DEE1D |
  STX.W $0416                               ; $8DEE20 |
  LDA.W #$1300                              ; $8DEE23 |
  STA.B $16,X                               ; $8DEE26 |
  TAX                                       ; $8DEE28 |
  LDA.W #$132A                              ; $8DEE29 |
  STA.B $16,X                               ; $8DEE2C |
  TAX                                       ; $8DEE2E |
  LDA.W #$1354                              ; $8DEE2F |
  STA.B $16,X                               ; $8DEE32 |
  TAX                                       ; $8DEE34 |
  LDA.W #$137E                              ; $8DEE35 |
  STA.B $16,X                               ; $8DEE38 |
  TAX                                       ; $8DEE3A |
  LDA.W #$13A8                              ; $8DEE3B |
  STA.B $16,X                               ; $8DEE3E |
  TAX                                       ; $8DEE40 |
  LDA.W #$13D2                              ; $8DEE41 |
  STA.B $16,X                               ; $8DEE44 |
  TAX                                       ; $8DEE46 |
  LDA.W #$13FC                              ; $8DEE47 |
  STA.B $16,X                               ; $8DEE4A |
  TAX                                       ; $8DEE4C |
  LDA.W #$1426                              ; $8DEE4D |
  STA.B $16,X                               ; $8DEE50 |
  TAX                                       ; $8DEE52 |
  LDA.W #$1450                              ; $8DEE53 |
  STA.B $16,X                               ; $8DEE56 |
  TAX                                       ; $8DEE58 |
  LDA.W #$147A                              ; $8DEE59 |
  STA.B $16,X                               ; $8DEE5C |
  TAX                                       ; $8DEE5E |
  LDA.W #$14A4                              ; $8DEE5F |
  STA.B $16,X                               ; $8DEE62 |
  TAX                                       ; $8DEE64 |
  LDA.W #$14CE                              ; $8DEE65 |
  STA.B $16,X                               ; $8DEE68 |
  TAX                                       ; $8DEE6A |
  LDA.W #$14F8                              ; $8DEE6B |
  STA.B $16,X                               ; $8DEE6E |
  TAX                                       ; $8DEE70 |
  LDA.W #$1522                              ; $8DEE71 |
  STA.B $16,X                               ; $8DEE74 |
  TAX                                       ; $8DEE76 |
  LDA.W #$154C                              ; $8DEE77 |
  STA.B $16,X                               ; $8DEE7A |
  TAX                                       ; $8DEE7C |
  STZ.B $16,X                               ; $8DEE7D |
  STZ.W $0400                               ; $8DEE7F |
  STZ.W $04C0                               ; $8DEE82 |
  STZ.W $16A2                               ; $8DEE85 |
  LDA.W #$0100                              ; $8DEE88 |
  STA.W $16B2                               ; $8DEE8B |
  STZ.B $5E                                 ; $8DEE8E |
  STZ.B $60                                 ; $8DEE90 |
  STZ.B $62                                 ; $8DEE92 |
  LDY.W #$80D6                              ; $8DEE94 |
  JSL.L CODE_FL_808D78                      ; $8DEE97 |
  JSL.L CODE_FL_808DBB                      ; $8DEE9B |
  LDA.W #$0014                              ; $8DEE9F |
  STA.W $1FBE                               ; $8DEEA2 |
  RTS                                       ; $8DEEA5 |

CODE_FN_8DEEA6:
  STZ.W $19BA                               ; $8DEEA6 |
  LDA.W #$0005                              ; $8DEEA9 |
  STA.W $19BC                               ; $8DEEAC |

CODE_8DEEAF:
  JSL.L CODE_FL_9BFEC0                      ; $8DEEAF |
  JSL.L CODE_FL_8095B5                      ; $8DEEB3 |
  LDA.W $19BA                               ; $8DEEB7 |
  BPL CODE_8DEEAF                           ; $8DEEBA |
  JSL.L CODE_FL_80C222                      ; $8DEEBC |
  INC.B $80                                 ; $8DEEC0 |
  RTS                                       ; $8DEEC2 |

CODE_8DEEC3:
  JSL.L CODE_FL_8DFF29                      ; $8DEEC3 |
  BIT.W #$1000                              ; $8DEEC7 |
  BNE CODE_8DEED9                           ; $8DEECA |
  RTS                                       ; $8DEECC |

  BIT.W #$0040                              ; $8DEECD |
  BEQ CODE_8DEEDF                           ; $8DEED0 |
  LDA.W #$0003                              ; $8DEED2 |
  STA.B $78                                 ; $8DEED5 |
  STZ.B $80                                 ; $8DEED7 |

CODE_8DEED9:
  JSL.L CODE_FL_80C213                      ; $8DEED9 |
  INC.B $80                                 ; $8DEEDD |

CODE_8DEEDF:
  RTS                                       ; $8DEEDF |

CODE_8DEEE0:
  LDA.W $1F30                               ; $8DEEE0 |
  BNE CODE_8DEEDF                           ; $8DEEE3 |
  JSL.L CODE_FL_808302                      ; $8DEEE5 |

CODE_JP_8DEEE9:
  LDX.W #DATA_8888BB                        ; $8DEEE9 |
  JSL.L sound_transfer_blocks               ; $8DEEEC |
  JSL.L CODE_FL_80C2DC                      ; $8DEEF0 |
  JSL.L CODE_FL_808315                      ; $8DEEF4 |
  LDX.W #DATA_88821E                        ; $8DEEF8 |
  JSL.L sound_transfer_blocks               ; $8DEEFB |
  LDA.W $1C52                               ; $8DEEFF |
  BEQ CODE_8DEF0F                           ; $8DEF02 |
  ASL A                                     ; $8DEF04 |
  TAX                                       ; $8DEF05 |
  LDA.L LOOSE_OP_8DEF2A,X                   ; $8DEF06 |
  TAX                                       ; $8DEF0A |
  JSL.L sound_transfer_blocks               ; $8DEF0B |

CODE_8DEF0F:
  LDA.B $EE                                 ; $8DEF0F |
  LSR A                                     ; $8DEF11 |
  BCS CODE_8DEF1B                           ; $8DEF12 |
  LDA.W #$004B                              ; $8DEF14 |
  JSL.L push_sound_queue                    ; $8DEF17 |

CODE_8DEF1B:
  JSL.L CODE_FL_80C222                      ; $8DEF1B |
  JSL.L CODE_FL_8EFE90                      ; $8DEF1F |
  STZ.B $C6                                 ; $8DEF23 |
  INC.B $A4                                 ; $8DEF25 |
  STZ.B $80                                 ; $8DEF27 |
  STZ.B $78                                 ; $8DEF29 |

CODE_8DEF2B:
  RTS                                       ; $8DEF2B |

  dw CODE_8D822B                            ; $8DEF2C |
  dw LOOSE_OP_8D8238                        ; $8DEF2E |
  dw LOOSE_OP_8D8245                        ; $8DEF30 |

CODE_JL_8DEF32:
  PHB                                       ; $8DEF32 |
  PEA.W $8181                               ; $8DEF33 |
  PLB                                       ; $8DEF36 |
  PLB                                       ; $8DEF37 |
  JSR.W CODE_FN_8DEF3D                      ; $8DEF38 |
  PLB                                       ; $8DEF3B |
  RTL                                       ; $8DEF3C |

CODE_FN_8DEF3D:
  LDA.B $80                                 ; $8DEF3D |
  PHX                                       ; $8DEF3F |
  ASL A                                     ; $8DEF40 |
  TAX                                       ; $8DEF41 |
  LDA.L PTR16_8DEF4C,X                      ; $8DEF42 |
  PLX                                       ; $8DEF46 |
  STA.B $00                                 ; $8DEF47 |
  JMP.W ($0000)                             ; $8DEF49 |

PTR16_8DEF4C:
  dw CODE_8DEF56                            ; $8DEF4C |
  dw CODE_8DEF6D                            ; $8DEF4E |
  dw CODE_8DEF9F                            ; $8DEF50 |
  dw CODE_8DF038                            ; $8DEF52 |
  dw CODE_8DF037                            ; $8DEF54 |

CODE_8DEF56:
  LDA.W $1F30                               ; $8DEF56 |
  BEQ CODE_8DEF66                           ; $8DEF59 |
  LDA.W $1FA0                               ; $8DEF5B |
  AND.W #$000F                              ; $8DEF5E |
  CMP.W #$000F                              ; $8DEF61 |
  BNE CODE_8DEF9E                           ; $8DEF64 |

CODE_8DEF66:
  JSL.L CODE_FL_80C213                      ; $8DEF66 |
  INC.B $80                                 ; $8DEF6A |
  RTS                                       ; $8DEF6C |

CODE_8DEF6D:
  LDA.W $1F30                               ; $8DEF6D |
  BNE CODE_8DEF9E                           ; $8DEF70 |
  LDA.W #$0001                              ; $8DEF72 |
  STA.B $C6                                 ; $8DEF75 |
  STZ.B $A4                                 ; $8DEF77 |
  JSL.L CODE_FL_8EFE80                      ; $8DEF79 |
  LDX.W #DATA_88891A                        ; $8DEF7D |
  JSL.L sound_transfer_blocks               ; $8DEF80 |
  LDX.W #DATA_88890D                        ; $8DEF84 |
  JSL.L sound_transfer_blocks               ; $8DEF87 |
  LDA.W $1760                               ; $8DEF8B |
  STA.W $1924                               ; $8DEF8E |
  JSR.W CODE_FN_8DEDEB                      ; $8DEF91 |
  JSR.W CODE_FN_8DF75D                      ; $8DEF94 |
  JSR.W CODE_FN_8DEEA6                      ; $8DEF97 |
  JSL.L CODE_FL_808315                      ; $8DEF9A |

CODE_8DEF9E:
  RTS                                       ; $8DEF9E |

CODE_8DEF9F:
  JSL.L CODE_FL_8DFF29                      ; $8DEF9F |
  BIT.W #$0400                              ; $8DEFA3 |
  BEQ CODE_8DEFB9                           ; $8DEFA6 |
  LDA.L $7F4807                             ; $8DEFA8 |
  AND.W #$00FF                              ; $8DEFAC |
  CMP.W $1922                               ; $8DEFAF |
  BCC CODE_8DEFEB                           ; $8DEFB2 |
  INC.W $1922                               ; $8DEFB4 |
  BRA CODE_8DEFEB                           ; $8DEFB7 |

CODE_8DEFB9:
  BIT.W #$0800                              ; $8DEFB9 |
  BEQ CODE_8DEFC8                           ; $8DEFBC |
  LDA.W $1922                               ; $8DEFBE |
  BEQ CODE_8DEFEB                           ; $8DEFC1 |
  DEC.W $1922                               ; $8DEFC3 |
  BRA CODE_8DEFEB                           ; $8DEFC6 |

CODE_8DEFC8:
  BIT.W #$0200                              ; $8DEFC8 |
  BEQ CODE_8DEFD7                           ; $8DEFCB |
  LDA.W $1920                               ; $8DEFCD |
  BEQ CODE_8DEFEB                           ; $8DEFD0 |
  DEC.W $1920                               ; $8DEFD2 |
  BRA CODE_8DEFEB                           ; $8DEFD5 |

CODE_8DEFD7:
  BIT.W #$0100                              ; $8DEFD7 |
  BEQ CODE_8DEFEB                           ; $8DEFDA |
  LDA.L $7F4806                             ; $8DEFDC |
  AND.W #$00FF                              ; $8DEFE0 |
  CMP.W $1920                               ; $8DEFE3 |
  BCC CODE_8DEFEB                           ; $8DEFE6 |
  INC.W $1920                               ; $8DEFE8 |

CODE_8DEFEB:
  JSL.L CODE_FL_8DFF29                      ; $8DEFEB |
  BIT.W #$0080                              ; $8DEFEF |
  BEQ CODE_8DF002                           ; $8DEFF2 |
  INC.W $1924                               ; $8DEFF4 |
  LDA.W $1924                               ; $8DEFF7 |
  CMP.W $176A                               ; $8DEFFA |
  BCC CODE_8DF002                           ; $8DEFFD |
  STZ.W $1924                               ; $8DEFFF |

CODE_8DF002:
  JSR.W CODE_FN_8DFC64                      ; $8DF002 |
  JSR.W CODE_FN_8DFDC7                      ; $8DF005 |
  JSL.L CODE_FL_8DFF29                      ; $8DF008 |
  BIT.W #$0040                              ; $8DF00C |
  BNE CODE_8DF013                           ; $8DF00F |
  BRA CODE_8DF01A                           ; $8DF011 |

CODE_8DF013:
  JSL.L CODE_FL_80C213                      ; $8DF013 |
  INC.B $80                                 ; $8DF017 |
  RTS                                       ; $8DF019 |

CODE_8DF01A:
  LDA.W $1920                               ; $8DF01A |
  STA.B $00                                 ; $8DF01D |
  LDA.W $1922                               ; $8DF01F |
  STA.B $02                                 ; $8DF022 |
  JSR.W CODE_FN_8DFA57                      ; $8DF024 |
  JSR.W CODE_FN_8DFB9E                      ; $8DF027 |
  STZ.W $19BA                               ; $8DF02A |
  LDA.W #$0005                              ; $8DF02D |
  STA.W $19BC                               ; $8DF030 |
  JSL.L CODE_FL_9BFEC0                      ; $8DF033 |

CODE_8DF037:
  RTS                                       ; $8DF037 |

CODE_8DF038:
  LDA.W $1F30                               ; $8DF038 |
  BNE CODE_8DF037                           ; $8DF03B |
  JSL.L CODE_FL_808302                      ; $8DF03D |
  PHB                                       ; $8DF041 |
  PEA.W $8484                               ; $8DF042 |
  PLB                                       ; $8DF045 |
  PLB                                       ; $8DF046 |
  LDA.B $8E                                 ; $8DF047 |
  ASL A                                     ; $8DF049 |
  TAY                                       ; $8DF04A |
  LDA.W CODE_008EC9,Y                       ; $8DF04B |
  PLB                                       ; $8DF04E |
  CMP.W #$88C3                              ; $8DF04F |
  BEQ CODE_8DF059                           ; $8DF052 |
  TAX                                       ; $8DF054 |
  JSL.L sound_transfer_blocks               ; $8DF055 |

CODE_8DF059:
  JMP.W CODE_JP_8DEEE9                      ; $8DF059 |

CODE_FN_8DF05C:
  PHB                                       ; $8DF05C |
  PEA.W $8181                               ; $8DF05D |
  PLB                                       ; $8DF060 |
  PLB                                       ; $8DF061 |
  LDX.W #$12B0                              ; $8DF062 |
  LDA.W #$DF72                              ; $8DF065 |
  STA.B $00,X                               ; $8DF068 |
  LDA.W #$1898                              ; $8DF06A |
  STA.B $04,X                               ; $8DF06D |
  LDA.W #$001C                              ; $8DF06F |
  STA.B $09,X                               ; $8DF072 |
  LDA.W #$0020                              ; $8DF074 |
  STA.B $0D,X                               ; $8DF077 |
  LDY.W #$0008                              ; $8DF079 |
  LDA.L $7002FA                             ; $8DF07C |
  BEQ CODE_8DF085                           ; $8DF080 |
  LDY.W #$0010                              ; $8DF082 |

CODE_8DF085:
  STY.B $00                                 ; $8DF085 |
  LDA.W #$0018                              ; $8DF087 |
  STA.B $02                                 ; $8DF08A |
  LDA.W #$0020                              ; $8DF08C |
  STA.B $04                                 ; $8DF08F |
  LDY.W #$F9CF                              ; $8DF091 |
  LDA.L $700300                             ; $8DF094 |
  BEQ CODE_8DF09D                           ; $8DF098 |
  LDY.W #$F9D9                              ; $8DF09A |

CODE_8DF09D:
  STY.B $08                                 ; $8DF09D |
  LDX.W #$0080                              ; $8DF09F |
  JSR.W CODE_FN_8DF669                      ; $8DF0A2 |
  LDX.W #$1300                              ; $8DF0A5 |
  LDA.W #$DFA7                              ; $8DF0A8 |
  STA.B $00,X                               ; $8DF0AB |
  LDA.W #$1898                              ; $8DF0AD |
  STA.B $04,X                               ; $8DF0B0 |
  LDA.W #$006C                              ; $8DF0B2 |
  STA.B $09,X                               ; $8DF0B5 |
  LDA.W #$0020                              ; $8DF0B7 |
  STA.B $0D,X                               ; $8DF0BA |
  LDY.W #$0028                              ; $8DF0BC |
  LDA.L $70030E                             ; $8DF0BF |
  BEQ CODE_8DF0C8                           ; $8DF0C3 |
  LDY.W #$0030                              ; $8DF0C5 |

CODE_8DF0C8:
  STY.B $00                                 ; $8DF0C8 |
  LDA.W #$0038                              ; $8DF0CA |
  STA.B $02                                 ; $8DF0CD |
  LDA.L $700312                             ; $8DF0CF |
  BEQ CODE_8DF0D8                           ; $8DF0D3 |
  LDA.W #$0040                              ; $8DF0D5 |

CODE_8DF0D8:
  STA.B $04                                 ; $8DF0D8 |
  LDY.W #$F9CF                              ; $8DF0DA |
  LDA.L $700314                             ; $8DF0DD |
  BEQ CODE_8DF0E6                           ; $8DF0E1 |
  LDY.W #$F9E3                              ; $8DF0E3 |

CODE_8DF0E6:
  STY.B $08                                 ; $8DF0E6 |
  LDX.W #$0094                              ; $8DF0E8 |
  JSR.W CODE_FN_8DF669                      ; $8DF0EB |
  LDA.L $700320                             ; $8DF0EE |
  BNE CODE_8DF0F7                           ; $8DF0F2 |
  JMP.W CODE_JP_8DF13D                      ; $8DF0F4 |

CODE_8DF0F7:
  LDX.W #$132A                              ; $8DF0F7 |
  LDA.W #$DFDC                              ; $8DF0FA |
  STA.B $00,X                               ; $8DF0FD |
  LDA.W #$1898                              ; $8DF0FF |
  STA.B $04,X                               ; $8DF102 |
  LDA.W #$001C                              ; $8DF104 |
  STA.B $09,X                               ; $8DF107 |
  LDA.W #$0070                              ; $8DF109 |
  STA.B $0D,X                               ; $8DF10C |
  LDY.W #$0048                              ; $8DF10E |
  LDA.L $700322                             ; $8DF111 |
  BEQ CODE_8DF11A                           ; $8DF115 |
  LDY.W #$0050                              ; $8DF117 |

CODE_8DF11A:
  STY.B $00                                 ; $8DF11A |
  LDA.L $700324                             ; $8DF11C |
  BEQ CODE_8DF125                           ; $8DF120 |
  LDA.W #$0060                              ; $8DF122 |

CODE_8DF125:
  STA.B $02                                 ; $8DF125 |
  STZ.B $04                                 ; $8DF127 |
  LDY.W #$F9CF                              ; $8DF129 |
  LDA.L $700328                             ; $8DF12C |
  BEQ CODE_8DF135                           ; $8DF130 |
  LDY.W #$F9EC                              ; $8DF132 |

CODE_8DF135:
  STY.B $08                                 ; $8DF135 |
  LDX.W #$0300                              ; $8DF137 |
  JSR.W CODE_FN_8DF669                      ; $8DF13A |

CODE_JP_8DF13D:
  LDA.L $700334                             ; $8DF13D |
  BNE CODE_8DF146                           ; $8DF141 |
  JMP.W CODE_JP_8DF192                      ; $8DF143 |

CODE_8DF146:
  LDX.W #$1354                              ; $8DF146 |
  LDA.W #$E011                              ; $8DF149 |
  STA.B $00,X                               ; $8DF14C |
  LDA.W #$1898                              ; $8DF14E |
  STA.B $04,X                               ; $8DF151 |
  LDA.W #$006C                              ; $8DF153 |
  STA.B $09,X                               ; $8DF156 |
  LDA.W #$0070                              ; $8DF158 |
  STA.B $0D,X                               ; $8DF15B |
  LDY.W #$0068                              ; $8DF15D |
  LDA.L $700336                             ; $8DF160 |
  BEQ CODE_8DF169                           ; $8DF164 |
  LDY.W #$0070                              ; $8DF166 |

CODE_8DF169:
  STY.B $00                                 ; $8DF169 |
  LDA.L $700338                             ; $8DF16B |
  BEQ CODE_8DF174                           ; $8DF16F |
  LDA.W #$0078                              ; $8DF171 |

CODE_8DF174:
  STA.B $02                                 ; $8DF174 |
  STZ.B $04                                 ; $8DF176 |
  LDA.L $700342                             ; $8DF178 |
  STA.B $06                                 ; $8DF17C |
  LDY.W #$F9CF                              ; $8DF17E |
  LDA.L $70033C                             ; $8DF181 |
  BEQ CODE_8DF18A                           ; $8DF185 |
  LDY.W #$F9F6                              ; $8DF187 |

CODE_8DF18A:
  STY.B $08                                 ; $8DF18A |
  LDX.W #$0314                              ; $8DF18C |
  JSR.W CODE_FN_8DF669                      ; $8DF18F |

CODE_JP_8DF192:
  LDA.W #$09E5                              ; $8DF192 |
  STA.L $7F416C                             ; $8DF195 |
  STA.L $7F416E                             ; $8DF199 |
  STA.L $7F4170                             ; $8DF19D |
  STA.L $7F4172                             ; $8DF1A1 |
  STA.L $7F4174                             ; $8DF1A5 |
  STA.L $7F4176                             ; $8DF1A9 |
  STA.L $7F4178                             ; $8DF1AD |
  STA.L $7F417A                             ; $8DF1B1 |
  LDA.W #$09E7                              ; $8DF1B5 |
  STA.L $7F40AA                             ; $8DF1B8 |
  STA.L $7F40EA                             ; $8DF1BC |
  STA.L $7F412A                             ; $8DF1C0 |
  STA.L $7F40BC                             ; $8DF1C4 |
  STA.L $7F40FC                             ; $8DF1C8 |
  STA.L $7F413C                             ; $8DF1CC |
  LDA.W #$09E4                              ; $8DF1D0 |
  STA.L $7F406A                             ; $8DF1D3 |
  LDA.W #$49E4                              ; $8DF1D7 |
  STA.L $7F407C                             ; $8DF1DA |
  LDA.W #$09E6                              ; $8DF1DE |
  STA.L $7F406C                             ; $8DF1E1 |
  LDA.W #$49E6                              ; $8DF1E5 |
  STA.L $7F407A                             ; $8DF1E8 |
  LDA.W #$89E4                              ; $8DF1EC |
  STA.L $7F416A                             ; $8DF1EF |
  LDA.W #$C9E4                              ; $8DF1F3 |
  STA.L $7F417C                             ; $8DF1F6 |
  LDA.W #$0DE4                              ; $8DF1FA |
  STA.L $7F41AA                             ; $8DF1FD |
  LDA.W #$4DE4                              ; $8DF201 |
  STA.L $7F41BC                             ; $8DF204 |
  LDA.W #$0DE5                              ; $8DF208 |
  STA.L $7F42AC                             ; $8DF20B |
  STA.L $7F42AE                             ; $8DF20F |
  STA.L $7F42B0                             ; $8DF213 |
  STA.L $7F42B2                             ; $8DF217 |
  STA.L $7F42B4                             ; $8DF21B |
  STA.L $7F42B6                             ; $8DF21F |
  STA.L $7F42B8                             ; $8DF223 |
  STA.L $7F42BA                             ; $8DF227 |
  LDA.W #$0DE7                              ; $8DF22B |
  STA.L $7F41EA                             ; $8DF22E |
  STA.L $7F422A                             ; $8DF232 |
  STA.L $7F426A                             ; $8DF236 |
  STA.L $7F41FC                             ; $8DF23A |
  STA.L $7F423C                             ; $8DF23E |
  STA.L $7F427C                             ; $8DF242 |
  LDA.W #$0DE4                              ; $8DF246 |
  STA.L $7F41AA                             ; $8DF249 |
  LDA.W #$4DE4                              ; $8DF24D |
  STA.L $7F41BC                             ; $8DF250 |
  LDA.W #$0DE6                              ; $8DF254 |
  STA.L $7F41AC                             ; $8DF257 |
  LDA.W #$4DE6                              ; $8DF25B |
  STA.L $7F41BA                             ; $8DF25E |
  LDA.W #$8DE4                              ; $8DF262 |
  STA.L $7F42AA                             ; $8DF265 |
  LDA.W #$CDE4                              ; $8DF269 |
  STA.L $7F42BC                             ; $8DF26C |
  LDA.W #$85E4                              ; $8DF270 |
  STA.L $7F46AA                             ; $8DF273 |
  LDA.W #$C5E4                              ; $8DF277 |
  STA.L $7F46BC                             ; $8DF27A |
  LDA.W #$05E6                              ; $8DF27E |
  STA.L $7F45AC                             ; $8DF281 |
  LDA.W #$45E6                              ; $8DF285 |
  STA.L $7F45BA                             ; $8DF288 |
  LDA.W #$05E4                              ; $8DF28C |
  STA.L $7F45AA                             ; $8DF28F |
  LDA.W #$45E4                              ; $8DF293 |
  STA.L $7F45BC                             ; $8DF296 |
  LDA.W #$05E7                              ; $8DF29A |
  STA.L $7F45EA                             ; $8DF29D |
  STA.L $7F462A                             ; $8DF2A1 |
  STA.L $7F466A                             ; $8DF2A5 |
  STA.L $7F45FC                             ; $8DF2A9 |
  STA.L $7F463C                             ; $8DF2AD |
  STA.L $7F467C                             ; $8DF2B1 |
  LDA.W #$05E5                              ; $8DF2B5 |
  STA.L $7F46AC                             ; $8DF2B8 |
  STA.L $7F46AE                             ; $8DF2BC |
  STA.L $7F46B0                             ; $8DF2C0 |
  STA.L $7F46B2                             ; $8DF2C4 |
  STA.L $7F46B4                             ; $8DF2C8 |
  STA.L $7F46B6                             ; $8DF2CC |
  STA.L $7F46B8                             ; $8DF2D0 |
  STA.L $7F46BA                             ; $8DF2D4 |
  LDA.L $7002C8                             ; $8DF2D8 |
  BEQ CODE_8DF2EC                           ; $8DF2DC |
  LDA.W #$01DA                              ; $8DF2DE |
  STA.L $7F462C                             ; $8DF2E1 |
  LDA.W #$01DB                              ; $8DF2E5 |
  STA.L $7F466C                             ; $8DF2E8 |

CODE_8DF2EC:
  LDA.L $7002CA                             ; $8DF2EC |
  BEQ CODE_8DF300                           ; $8DF2F0 |
  LDA.W #$01DA                              ; $8DF2F2 |
  STA.L $7F462E                             ; $8DF2F5 |
  LDA.W #$01DB                              ; $8DF2F9 |
  STA.L $7F466E                             ; $8DF2FC |

CODE_8DF300:
  LDA.L $7002CC                             ; $8DF300 |
  BEQ CODE_8DF314                           ; $8DF304 |
  LDA.W #$01DA                              ; $8DF306 |
  STA.L $7F4630                             ; $8DF309 |
  LDA.W #$01DB                              ; $8DF30D |
  STA.L $7F4670                             ; $8DF310 |

CODE_8DF314:
  LDA.L $7002CE                             ; $8DF314 |
  BEQ CODE_8DF328                           ; $8DF318 |
  LDA.W #$01DA                              ; $8DF31A |
  STA.L $7F4632                             ; $8DF31D |
  LDA.W #$01DB                              ; $8DF321 |
  STA.L $7F4672                             ; $8DF324 |

CODE_8DF328:
  LDA.L $7002D0                             ; $8DF328 |
  BEQ CODE_8DF33C                           ; $8DF32C |
  LDA.W #$01DA                              ; $8DF32E |
  STA.L $7F4634                             ; $8DF331 |
  LDA.W #$01DB                              ; $8DF335 |
  STA.L $7F4674                             ; $8DF338 |

CODE_8DF33C:
  LDA.L $7002D2                             ; $8DF33C |
  BEQ CODE_8DF350                           ; $8DF340 |
  LDA.W #$01DA                              ; $8DF342 |
  STA.L $7F4636                             ; $8DF345 |
  LDA.W #$01DB                              ; $8DF349 |
  STA.L $7F4676                             ; $8DF34C |

CODE_8DF350:
  LDA.L $7002D4                             ; $8DF350 |
  BEQ CODE_8DF364                           ; $8DF354 |
  LDA.W #$01DA                              ; $8DF356 |
  STA.L $7F4638                             ; $8DF359 |
  LDA.W #$01DB                              ; $8DF35D |
  STA.L $7F4678                             ; $8DF360 |

CODE_8DF364:
  LDA.L $7002D6                             ; $8DF364 |
  BEQ CODE_8DF378                           ; $8DF368 |
  LDA.W #$01DA                              ; $8DF36A |
  STA.L $7F463A                             ; $8DF36D |
  LDA.W #$01DB                              ; $8DF371 |
  STA.L $7F467A                             ; $8DF374 |

CODE_8DF378:
  LDX.W #$00EC                              ; $8DF378 |
  LDA.L $7002A2                             ; $8DF37B |
  AND.W #$0003                              ; $8DF37F |
  ASL A                                     ; $8DF382 |
  ASL A                                     ; $8DF383 |
  ASL A                                     ; $8DF384 |
  CLC                                       ; $8DF385 |
  ADC.W #$F883                              ; $8DF386 |
  JSR.W CODE_FN_8DF620                      ; $8DF389 |
  LDX.W #$00F2                              ; $8DF38C |
  LDA.L $7002A4                             ; $8DF38F |
  AND.W #$0003                              ; $8DF393 |
  ASL A                                     ; $8DF396 |
  ASL A                                     ; $8DF397 |
  ASL A                                     ; $8DF398 |
  CLC                                       ; $8DF399 |
  ADC.W #$F8A3                              ; $8DF39A |
  JSR.W CODE_FN_8DF620                      ; $8DF39D |
  LDX.W #$00F8                              ; $8DF3A0 |
  LDA.L $7002A0                             ; $8DF3A3 |
  AND.W #$0003                              ; $8DF3A7 |
  ASL A                                     ; $8DF3AA |
  ASL A                                     ; $8DF3AB |
  ASL A                                     ; $8DF3AC |
  CLC                                       ; $8DF3AD |
  ADC.W #$F8C3                              ; $8DF3AE |
  JSR.W CODE_FN_8DF620                      ; $8DF3B1 |
  LDA.L $7002B0                             ; $8DF3B4 |
  BEQ CODE_8DF3C3                           ; $8DF3B8 |
  LDA.W #$F8E3                              ; $8DF3BA |
  LDX.W #$0232                              ; $8DF3BD |
  JSR.W CODE_FN_8DF620                      ; $8DF3C0 |

CODE_8DF3C3:
  LDX.W #$036C                              ; $8DF3C3 |
  LDA.L $7002AC                             ; $8DF3C6 |
  BEQ CODE_8DF3D2                           ; $8DF3CA |
  LDA.W #$F8F3                              ; $8DF3CC |
  JSR.W CODE_FN_8DF620                      ; $8DF3CF |

CODE_8DF3D2:
  LDX.W #$0372                              ; $8DF3D2 |
  LDA.L $7002AE                             ; $8DF3D5 |
  BEQ CODE_8DF3E1                           ; $8DF3D9 |
  LDA.W #$F8FB                              ; $8DF3DB |
  JSR.W CODE_FN_8DF620                      ; $8DF3DE |

CODE_8DF3E1:
  LDY.W #$0000                              ; $8DF3E1 |
  LDX.W #$00C6                              ; $8DF3E4 |

CODE_8DF3E7:
  LDA.L $700200,X                           ; $8DF3E7 |
  BNE CODE_8DF3F8                           ; $8DF3EB |
  CPX.W #$00B6                              ; $8DF3ED |
  BEQ CODE_8DF42F                           ; $8DF3F0 |
  DEX                                       ; $8DF3F2 |
  DEX                                       ; $8DF3F3 |
  INY                                       ; $8DF3F4 |
  INY                                       ; $8DF3F5 |
  BRA CODE_8DF3E7                           ; $8DF3F6 |

CODE_8DF3F8:
  PHX                                       ; $8DF3F8 |
  LDA.W EMPTY_00FBE4,Y                      ; $8DF3F9 |
  TAX                                       ; $8DF3FC |
  JSL.L sound_transfer_blocks               ; $8DF3FD |
  PLX                                       ; $8DF401 |
  LDA.L $7002C6                             ; $8DF402 |
  BNE CODE_8DF411                           ; $8DF406 |
  LDA.W #$01F7                              ; $8DF408 |
  JSL.L CODE_FL_80A634                      ; $8DF40B |
  BCS CODE_8DF42F                           ; $8DF40F |

CODE_8DF411:
  LDA.L $7002D6                             ; $8DF411 |
  BNE CODE_8DF42F                           ; $8DF415 |
  LDA.W #$FC25                              ; $8DF417 |
  STA.W $137E                               ; $8DF41A |
  LDA.W #$0043                              ; $8DF41D |
  STA.W $1380                               ; $8DF420 |
  LDA.W #$00E0                              ; $8DF423 |
  STA.W $1387                               ; $8DF426 |
  LDA.W #$0068                              ; $8DF429 |
  STA.W $138B                               ; $8DF42C |

CODE_8DF42F:
  SEP #$20                                  ; $8DF42F |
  LDA.L $700298                             ; $8DF431 |
  BEQ CODE_8DF45B                           ; $8DF435 |
  CMP.B #$01                                ; $8DF437 |
  BEQ CODE_8DF455                           ; $8DF439 |
  CMP.B #$02                                ; $8DF43B |
  BEQ CODE_8DF44F                           ; $8DF43D |
  CMP.B #$03                                ; $8DF43F |
  BEQ CODE_8DF449                           ; $8DF441 |
  LDA.B #$17                                ; $8DF443 |
  STA.L $7F4475                             ; $8DF445 |

CODE_8DF449:
  LDA.B #$57                                ; $8DF449 |
  STA.L $7F4435                             ; $8DF44B |

CODE_8DF44F:
  LDA.B #$17                                ; $8DF44F |
  STA.L $7F4473                             ; $8DF451 |

CODE_8DF455:
  LDA.B #$17                                ; $8DF455 |
  STA.L $7F4433                             ; $8DF457 |

CODE_8DF45B:
  LDA.L $7002E6                             ; $8DF45B |
  BEQ CODE_8DF485                           ; $8DF45F |
  CMP.B #$01                                ; $8DF461 |
  BEQ CODE_8DF47F                           ; $8DF463 |
  CMP.B #$02                                ; $8DF465 |
  BEQ CODE_8DF479                           ; $8DF467 |
  CMP.B #$03                                ; $8DF469 |
  BEQ CODE_8DF473                           ; $8DF46B |
  LDA.B #$CF                                ; $8DF46D |
  STA.L $7F447B                             ; $8DF46F |

CODE_8DF473:
  LDA.B #$4F                                ; $8DF473 |
  STA.L $7F443B                             ; $8DF475 |

CODE_8DF479:
  LDA.B #$8F                                ; $8DF479 |
  STA.L $7F4479                             ; $8DF47B |

CODE_8DF47F:
  LDA.B #$0F                                ; $8DF47F |
  STA.L $7F4439                             ; $8DF481 |

CODE_8DF485:
  REP #$20                                  ; $8DF485 |
  LDA.B $8E                                 ; $8DF487 |
  CMP.W #$0100                              ; $8DF489 |
  BCC CODE_8DF491                           ; $8DF48C |
  JMP.W CODE_JP_8DF4C8                      ; $8DF48E |

CODE_8DF491:
  LDA.B $A0                                 ; $8DF491 |
  ASL A                                     ; $8DF493 |
  TAX                                       ; $8DF494 |
  LDA.L DATA8_8DF5ED,X                      ; $8DF495 |
  BEQ CODE_8DF4AE                           ; $8DF499 |
  TAX                                       ; $8DF49B |
  LDA.L $700200,X                           ; $8DF49C |
  AND.W #$00FF                              ; $8DF4A0 |
  BEQ CODE_8DF4AE                           ; $8DF4A3 |
  LDA.W #$F913                              ; $8DF4A5 |
  LDX.W #$042C                              ; $8DF4A8 |
  JSR.W CODE_FN_8DF620                      ; $8DF4AB |

CODE_8DF4AE:
  LDA.W #$0FF5                              ; $8DF4AE |
  STA.L $7F44EC                             ; $8DF4B1 |
  LDA.W #$03AC                              ; $8DF4B5 |
  STA.L $7F44EE                             ; $8DF4B8 |
  JSL.L CODE_FL_868040                      ; $8DF4BC |
  SEP #$20                                  ; $8DF4C0 |
  ORA.B #$A0                                ; $8DF4C2 |
  STA.L $7F44F0                             ; $8DF4C4 |

CODE_JP_8DF4C8:
  SEP #$20                                  ; $8DF4C8 |
  LDA.L $700296                             ; $8DF4CA |
  LSR A                                     ; $8DF4CE |
  LSR A                                     ; $8DF4CF |
  LSR A                                     ; $8DF4D0 |
  LSR A                                     ; $8DF4D1 |
  AND.B #$0F                                ; $8DF4D2 |
  BEQ CODE_8DF4E2                           ; $8DF4D4 |
  CMP.B #$0A                                ; $8DF4D6 |
  BCC CODE_8DF4DC                           ; $8DF4D8 |
  LDA.B #$09                                ; $8DF4DA |

CODE_8DF4DC:
  ORA.B #$A0                                ; $8DF4DC |
  STA.L $7F44F8                             ; $8DF4DE |

CODE_8DF4E2:
  LDA.L $700296                             ; $8DF4E2 |
  AND.B #$0F                                ; $8DF4E6 |
  CMP.B #$0A                                ; $8DF4E8 |
  BCC CODE_8DF4EE                           ; $8DF4EA |
  LDA.B #$09                                ; $8DF4EC |

CODE_8DF4EE:
  ORA.B #$A0                                ; $8DF4EE |
  STA.L $7F44FA                             ; $8DF4F0 |
  LDA.B #$03                                ; $8DF4F4 |
  STA.L $7F44F1                             ; $8DF4F6 |
  STA.L $7F44F9                             ; $8DF4FA |
  STA.L $7F44FB                             ; $8DF4FE |
  STZ.B $00                                 ; $8DF502 |
  LDA.L $7002E3                             ; $8DF504 |
  AND.B #$0F                                ; $8DF508 |
  BEQ CODE_8DF51A                           ; $8DF50A |
  INC.B $00                                 ; $8DF50C |
  CMP.B #$0A                                ; $8DF50E |
  BCC CODE_8DF514                           ; $8DF510 |
  LDA.B #$09                                ; $8DF512 |

CODE_8DF514:
  ORA.B #$A0                                ; $8DF514 |
  STA.L $7F45C8                             ; $8DF516 |

CODE_8DF51A:
  LDA.L $7002E2                             ; $8DF51A |
  LSR A                                     ; $8DF51E |
  LSR A                                     ; $8DF51F |
  LSR A                                     ; $8DF520 |
  LSR A                                     ; $8DF521 |
  AND.B #$0F                                ; $8DF522 |
  BNE CODE_8DF52B                           ; $8DF524 |
  LDA.B $00                                 ; $8DF526 |
  BEQ CODE_8DF537                           ; $8DF528 |
  DEC A                                     ; $8DF52A |

CODE_8DF52B:
  CMP.B #$0A                                ; $8DF52B |
  BCC CODE_8DF531                           ; $8DF52D |
  LDA.B #$09                                ; $8DF52F |

CODE_8DF531:
  ORA.B #$A0                                ; $8DF531 |
  STA.L $7F45CA                             ; $8DF533 |

CODE_8DF537:
  LDA.L $7002E2                             ; $8DF537 |
  AND.B #$0F                                ; $8DF53B |
  CMP.B #$0A                                ; $8DF53D |
  BCC CODE_8DF543                           ; $8DF53F |
  LDA.B #$09                                ; $8DF541 |

CODE_8DF543:
  ORA.B #$A0                                ; $8DF543 |
  STA.L $7F45CC                             ; $8DF545 |
  STZ.B $00                                 ; $8DF549 |
  LDA.L $7002E5                             ; $8DF54B |
  AND.B #$0F                                ; $8DF54F |
  BEQ CODE_8DF561                           ; $8DF551 |
  INC.B $00                                 ; $8DF553 |
  CMP.B #$0A                                ; $8DF555 |
  BCC CODE_8DF55B                           ; $8DF557 |
  LDA.B #$09                                ; $8DF559 |

CODE_8DF55B:
  ORA.B #$A0                                ; $8DF55B |
  STA.L $7F4648                             ; $8DF55D |

CODE_8DF561:
  LDA.L $7002E4                             ; $8DF561 |
  LSR A                                     ; $8DF565 |
  LSR A                                     ; $8DF566 |
  LSR A                                     ; $8DF567 |
  LSR A                                     ; $8DF568 |
  AND.B #$0F                                ; $8DF569 |
  BNE CODE_8DF572                           ; $8DF56B |
  LDA.B $00                                 ; $8DF56D |
  BEQ CODE_8DF57E                           ; $8DF56F |
  DEC A                                     ; $8DF571 |

CODE_8DF572:
  CMP.B #$0A                                ; $8DF572 |
  BCC CODE_8DF578                           ; $8DF574 |
  LDA.B #$09                                ; $8DF576 |

CODE_8DF578:
  ORA.B #$A0                                ; $8DF578 |
  STA.L $7F464A                             ; $8DF57A |

CODE_8DF57E:
  LDA.L $7002E4                             ; $8DF57E |
  AND.B #$0F                                ; $8DF582 |
  CMP.B #$0A                                ; $8DF584 |
  BCC CODE_8DF58A                           ; $8DF586 |
  LDA.B #$09                                ; $8DF588 |

CODE_8DF58A:
  ORA.B #$A0                                ; $8DF58A |
  STA.L $7F464C                             ; $8DF58C |
  LDA.B #$03                                ; $8DF590 |
  STA.L $7F45C9                             ; $8DF592 |
  STA.L $7F45CB                             ; $8DF596 |
  STA.L $7F45CD                             ; $8DF59A |
  STA.L $7F4649                             ; $8DF59E |
  STA.L $7F464B                             ; $8DF5A2 |
  STA.L $7F464D                             ; $8DF5A6 |
  REP #$20                                  ; $8DF5AA |
  LDA.L $7002EE                             ; $8DF5AC |
  BEQ CODE_8DF5EB                           ; $8DF5B0 |
  LDY.W #$F993                              ; $8DF5B2 |
  LDX.W #$05CE                              ; $8DF5B5 |
  JSR.W CODE_FN_8DF63E                      ; $8DF5B8 |
  LDY.W #$F96B                              ; $8DF5BB |
  JSR.W CODE_FN_8DF603                      ; $8DF5BE |
  LDA.L $7002F0                             ; $8DF5C1 |
  BEQ CODE_8DF5D6                           ; $8DF5C5 |
  LDY.W #$F99F                              ; $8DF5C7 |
  LDX.W #$05D6                              ; $8DF5CA |
  JSR.W CODE_FN_8DF63E                      ; $8DF5CD |
  LDY.W #$F973                              ; $8DF5D0 |
  JSR.W CODE_FN_8DF603                      ; $8DF5D3 |

CODE_8DF5D6:
  LDA.L $7002F2                             ; $8DF5D6 |
  BEQ CODE_8DF5EB                           ; $8DF5DA |
  LDY.W #$F9AB                              ; $8DF5DC |
  LDX.W #$05DE                              ; $8DF5DF |
  JSR.W CODE_FN_8DF63E                      ; $8DF5E2 |
  LDY.W #$F97B                              ; $8DF5E5 |
  JSR.W CODE_FN_8DF603                      ; $8DF5E8 |

CODE_8DF5EB:
  PLB                                       ; $8DF5EB |
  RTS                                       ; $8DF5EC |

DATA8_8DF5ED:
  db $00,$00                                ; $8DF5ED |
  db $00,$00,$00,$00,$97,$04,$AB,$04        ; $8DF5EF |
  db $B9,$04                                ; $8DF5F7 |
  db $00,$00,$00,$00,$00,$00,$00,$00        ; $8DF5F9 |
  db $00,$00                                ; $8DF601 |

CODE_FN_8DF603:
  LDA.W $0000,Y                             ; $8DF603 |
  STA.L $7F4080,X                           ; $8DF606 |
  LDA.W $0002,Y                             ; $8DF60A |
  STA.L $7F4082,X                           ; $8DF60D |
  LDA.W $0004,Y                             ; $8DF611 |
  STA.L $7F4084,X                           ; $8DF614 |
  LDA.W $0006,Y                             ; $8DF618 |
  STA.L $7F4086,X                           ; $8DF61B |
  RTS                                       ; $8DF61F |

CODE_FN_8DF620:
  TAY                                       ; $8DF620 |
  LDA.W $0000,Y                             ; $8DF621 |
  STA.L $7F4000,X                           ; $8DF624 |
  LDA.W $0002,Y                             ; $8DF628 |
  STA.L $7F4002,X                           ; $8DF62B |
  LDA.W $0004,Y                             ; $8DF62F |
  STA.L $7F4040,X                           ; $8DF632 |
  LDA.W $0006,Y                             ; $8DF636 |
  STA.L $7F4042,X                           ; $8DF639 |
  RTS                                       ; $8DF63D |

CODE_FN_8DF63E:
  LDA.W $0000,Y                             ; $8DF63E |
  STA.L $7F4000,X                           ; $8DF641 |
  LDA.W $0002,Y                             ; $8DF645 |
  STA.L $7F4002,X                           ; $8DF648 |
  LDA.W $0004,Y                             ; $8DF64C |
  STA.L $7F4004,X                           ; $8DF64F |
  LDA.W $0006,Y                             ; $8DF653 |
  STA.L $7F4040,X                           ; $8DF656 |
  LDA.W $0008,Y                             ; $8DF65A |
  STA.L $7F4042,X                           ; $8DF65D |
  LDA.W $000A,Y                             ; $8DF661 |
  STA.L $7F4044,X                           ; $8DF664 |
  RTS                                       ; $8DF668 |

CODE_FN_8DF669:
  LDY.B $00                                 ; $8DF669 |
  LDA.W LOOSE_OP_00F769,Y                   ; $8DF66B |
  STA.L $7F400C,X                           ; $8DF66E |
  LDA.W CODE_00F76B,Y                       ; $8DF672 |
  STA.L $7F400E,X                           ; $8DF675 |
  LDA.W LOOSE_OP_00F76D,Y                   ; $8DF679 |
  STA.L $7F404C,X                           ; $8DF67C |
  LDA.W CODE_00F76F,Y                       ; $8DF680 |
  STA.L $7F404E,X                           ; $8DF683 |
  LDY.B $02                                 ; $8DF687 |
  LDA.W LOOSE_OP_00F769,Y                   ; $8DF689 |
  STA.L $7F408C,X                           ; $8DF68C |
  LDA.W CODE_00F76B,Y                       ; $8DF690 |
  STA.L $7F408E,X                           ; $8DF693 |
  LDA.W LOOSE_OP_00F76D,Y                   ; $8DF697 |
  STA.L $7F40CC,X                           ; $8DF69A |
  LDA.W CODE_00F76F,Y                       ; $8DF69E |
  STA.L $7F40CE,X                           ; $8DF6A1 |
  LDY.B $04                                 ; $8DF6A5 |
  CPX.W #$0300                              ; $8DF6A7 |
  BEQ CODE_8DF6CA                           ; $8DF6AA |
  LDA.W LOOSE_OP_00F769,Y                   ; $8DF6AC |
  STA.L $7F4090,X                           ; $8DF6AF |
  LDA.W CODE_00F76B,Y                       ; $8DF6B3 |
  STA.L $7F4092,X                           ; $8DF6B6 |
  LDA.W LOOSE_OP_00F76D,Y                   ; $8DF6BA |
  STA.L $7F40D0,X                           ; $8DF6BD |
  LDA.W CODE_00F76F,Y                       ; $8DF6C1 |
  STA.L $7F40D2,X                           ; $8DF6C4 |
  BRA CODE_8DF6E6                           ; $8DF6C8 |

CODE_8DF6CA:
  LDA.W LOOSE_OP_00F769,Y                   ; $8DF6CA |
  STA.L $7F4010,X                           ; $8DF6CD |
  LDA.W CODE_00F76B,Y                       ; $8DF6D1 |
  STA.L $7F4012,X                           ; $8DF6D4 |
  LDA.W LOOSE_OP_00F76D,Y                   ; $8DF6D8 |
  STA.L $7F4050,X                           ; $8DF6DB |
  LDA.W CODE_00F76F,Y                       ; $8DF6DF |
  STA.L $7F4052,X                           ; $8DF6E2 |

CODE_8DF6E6:
  SEP #$20                                  ; $8DF6E6 |
  CPX.W #$0094                              ; $8DF6E8 |
  BEQ CODE_8DF6F2                           ; $8DF6EB |
  CPX.W #$0314                              ; $8DF6ED |
  BEQ CODE_8DF6F2                           ; $8DF6F0 |

CODE_8DF6F2:
  LDY.B $08                                 ; $8DF6F2 |

CODE_8DF6F4:
  LDA.W $0000,Y                             ; $8DF6F4 |
  CMP.B #$FF                                ; $8DF6F7 |
  BEQ CODE_8DF75A                           ; $8DF6F9 |
  STA.L $7F4182,X                           ; $8DF6FB |
  CMP.B #$80                                ; $8DF6FF |
  BEQ CODE_8DF70F                           ; $8DF701 |
  CMP.B #$81                                ; $8DF703 |
  BEQ CODE_8DF70F                           ; $8DF705 |
  CMP.B #$8E                                ; $8DF707 |
  BCC CODE_8DF71B                           ; $8DF709 |
  LDA.B #$00                                ; $8DF70B |
  BRA CODE_8DF71D                           ; $8DF70D |

CODE_8DF70F:
  STA.L $7F41C2,X                           ; $8DF70F |
  LDA.B #$93                                ; $8DF713 |
  STA.L $7F41C3,X                           ; $8DF715 |
  BRA CODE_8DF727                           ; $8DF719 |

CODE_8DF71B:
  ORA.B #$10                                ; $8DF71B |

CODE_8DF71D:
  STA.L $7F41C2,X                           ; $8DF71D |
  LDA.B #$13                                ; $8DF721 |
  STA.L $7F41C3,X                           ; $8DF723 |

CODE_8DF727:
  LDA.B #$13                                ; $8DF727 |
  STA.L $7F4183,X                           ; $8DF729 |
  LDA.L $7F4182,X                           ; $8DF72D |
  CMP.B #$4F                                ; $8DF731 |
  BEQ CODE_8DF74F                           ; $8DF733 |
  CMP.B #$6C                                ; $8DF735 |
  BEQ CODE_8DF74F                           ; $8DF737 |
  CMP.B #$6D                                ; $8DF739 |
  BNE CODE_8DF741                           ; $8DF73B |
  LDA.B #$6C                                ; $8DF73D |
  BRA CODE_8DF751                           ; $8DF73F |

CODE_8DF741:
  CMP.B #$6E                                ; $8DF741 |
  BNE CODE_8DF755                           ; $8DF743 |
  LDA.B #$53                                ; $8DF745 |
  STA.L $7F4183,X                           ; $8DF747 |
  LDA.B #$6C                                ; $8DF74B |
  BRA CODE_8DF751                           ; $8DF74D |

CODE_8DF74F:
  LDA.B #$00                                ; $8DF74F |

CODE_8DF751:
  STA.L $7F4182,X                           ; $8DF751 |

CODE_8DF755:
  INX                                       ; $8DF755 |
  INX                                       ; $8DF756 |
  INY                                       ; $8DF757 |
  BRA CODE_8DF6F4                           ; $8DF758 |

CODE_8DF75A:
  REP #$20                                  ; $8DF75A |
  RTS                                       ; $8DF75C |

CODE_FN_8DF75D:
  PHB                                       ; $8DF75D |
  PEA.W $7F00                               ; $8DF75E |
  PLB                                       ; $8DF761 |
  PLB                                       ; $8DF762 |
  LDA.W #$0987                              ; $8DF763 |
  STA.W $4182                               ; $8DF766 |
  STA.W $41C2                               ; $8DF769 |
  STA.W $4202                               ; $8DF76C |
  STA.W $4242                               ; $8DF76F |
  STA.W $4282                               ; $8DF772 |
  STA.W $42C2                               ; $8DF775 |
  STA.W $4302                               ; $8DF778 |
  STA.W $4342                               ; $8DF77B |
  STA.W $4382                               ; $8DF77E |
  STA.W $43C2                               ; $8DF781 |
  STA.W $4402                               ; $8DF784 |
  STA.W $4442                               ; $8DF787 |
  STA.W $4482                               ; $8DF78A |
  STA.W $44C2                               ; $8DF78D |
  STA.W $4502                               ; $8DF790 |
  STA.W $4542                               ; $8DF793 |
  STA.W $4582                               ; $8DF796 |
  STA.W $45C2                               ; $8DF799 |
  STA.W $4602                               ; $8DF79C |
  STA.W $4642                               ; $8DF79F |
  INC A                                     ; $8DF7A2 |
  STA.W $4184                               ; $8DF7A3 |
  STA.W $41C4                               ; $8DF7A6 |
  STA.W $4204                               ; $8DF7A9 |
  STA.W $4244                               ; $8DF7AC |
  STA.W $4284                               ; $8DF7AF |
  STA.W $42C4                               ; $8DF7B2 |
  STA.W $4304                               ; $8DF7B5 |
  STA.W $4184                               ; $8DF7B8 |
  STA.W $4344                               ; $8DF7BB |
  STA.W $4384                               ; $8DF7BE |
  STA.W $43C4                               ; $8DF7C1 |
  STA.W $4404                               ; $8DF7C4 |
  STA.W $4444                               ; $8DF7C7 |
  STA.W $4484                               ; $8DF7CA |
  STA.W $44C4                               ; $8DF7CD |
  STA.W $4504                               ; $8DF7D0 |
  STA.W $4544                               ; $8DF7D3 |
  STA.W $4584                               ; $8DF7D6 |
  STA.W $45C4                               ; $8DF7D9 |
  STA.W $4604                               ; $8DF7DC |
  STA.W $4644                               ; $8DF7DF |
  LDA.W #$0982                              ; $8DF7E2 |
  STA.W $4186                               ; $8DF7E5 |
  STA.W $41C6                               ; $8DF7E8 |
  STA.W $4206                               ; $8DF7EB |
  STA.W $4246                               ; $8DF7EE |
  STA.W $4286                               ; $8DF7F1 |
  STA.W $42C6                               ; $8DF7F4 |
  STA.W $4306                               ; $8DF7F7 |
  STA.W $4346                               ; $8DF7FA |
  STA.W $4386                               ; $8DF7FD |
  STA.W $43C6                               ; $8DF800 |
  STA.W $4406                               ; $8DF803 |
  STA.W $4446                               ; $8DF806 |
  STA.W $4486                               ; $8DF809 |
  STA.W $44C6                               ; $8DF80C |
  STA.W $4506                               ; $8DF80F |
  STA.W $4546                               ; $8DF812 |
  STA.W $4586                               ; $8DF815 |
  STA.W $45C6                               ; $8DF818 |
  STA.W $4606                               ; $8DF81B |
  STA.W $4646                               ; $8DF81E |
  LDA.W #$09FE                              ; $8DF821 |
  STA.W $41C8                               ; $8DF824 |
  STA.W $4208                               ; $8DF827 |
  STA.W $4248                               ; $8DF82A |
  STA.W $4288                               ; $8DF82D |
  STA.W $42C8                               ; $8DF830 |
  STA.W $4308                               ; $8DF833 |
  STA.W $4348                               ; $8DF836 |
  STA.W $4388                               ; $8DF839 |
  STA.W $43C8                               ; $8DF83C |
  STA.W $4408                               ; $8DF83F |
  STA.W $4448                               ; $8DF842 |
  STA.W $4488                               ; $8DF845 |
  STA.W $44C8                               ; $8DF848 |
  STA.W $4508                               ; $8DF84B |
  STA.W $4548                               ; $8DF84E |
  STA.W $4588                               ; $8DF851 |
  STA.W $45C8                               ; $8DF854 |
  STA.W $4608                               ; $8DF857 |
  LDA.W #$0984                              ; $8DF85A |
  STA.W $41F6                               ; $8DF85D |
  STA.W $4236                               ; $8DF860 |
  STA.W $4276                               ; $8DF863 |
  STA.W $42B6                               ; $8DF866 |
  STA.W $42F6                               ; $8DF869 |
  STA.W $4336                               ; $8DF86C |
  STA.W $4376                               ; $8DF86F |
  STA.W $43B6                               ; $8DF872 |
  STA.W $43F6                               ; $8DF875 |
  STA.W $4436                               ; $8DF878 |
  STA.W $4476                               ; $8DF87B |
  STA.W $44B6                               ; $8DF87E |
  STA.W $44F6                               ; $8DF881 |
  STA.W $4536                               ; $8DF884 |
  STA.W $4576                               ; $8DF887 |
  STA.W $45B6                               ; $8DF88A |
  STA.W $45F6                               ; $8DF88D |
  STA.W $4636                               ; $8DF890 |
  DEC A                                     ; $8DF893 |
  STA.W $41F8                               ; $8DF894 |
  STA.W $4238                               ; $8DF897 |
  STA.W $4278                               ; $8DF89A |
  STA.W $42B8                               ; $8DF89D |
  STA.W $42F8                               ; $8DF8A0 |
  STA.W $4338                               ; $8DF8A3 |
  STA.W $4378                               ; $8DF8A6 |
  STA.W $43B8                               ; $8DF8A9 |
  STA.W $43F8                               ; $8DF8AC |
  STA.W $4438                               ; $8DF8AF |
  STA.W $4478                               ; $8DF8B2 |
  STA.W $44B8                               ; $8DF8B5 |
  STA.W $44F8                               ; $8DF8B8 |
  STA.W $4538                               ; $8DF8BB |
  STA.W $4578                               ; $8DF8BE |
  STA.W $45B8                               ; $8DF8C1 |
  STA.W $45F8                               ; $8DF8C4 |
  STA.W $4638                               ; $8DF8C7 |
  LDA.W #$09FF                              ; $8DF8CA |
  STA.W $41FA                               ; $8DF8CD |
  STA.W $423A                               ; $8DF8D0 |
  STA.W $427A                               ; $8DF8D3 |
  STA.W $42BA                               ; $8DF8D6 |
  STA.W $42FA                               ; $8DF8D9 |
  STA.W $433A                               ; $8DF8DC |
  STA.W $437A                               ; $8DF8DF |
  STA.W $43BA                               ; $8DF8E2 |
  STA.W $447A                               ; $8DF8E5 |
  STA.W $44BA                               ; $8DF8E8 |
  STA.W $44FA                               ; $8DF8EB |
  STA.W $453A                               ; $8DF8EE |
  STA.W $457A                               ; $8DF8F1 |
  STA.W $45BA                               ; $8DF8F4 |
  STA.W $45FA                               ; $8DF8F7 |
  STA.W $463A                               ; $8DF8FA |
  LDA.W #$0BFA                              ; $8DF8FD |
  STA.W $418A                               ; $8DF900 |
  STA.W $418C                               ; $8DF903 |
  STA.W $418E                               ; $8DF906 |
  STA.W $4190                               ; $8DF909 |
  STA.W $4192                               ; $8DF90C |
  STA.W $4194                               ; $8DF90F |
  STA.W $4196                               ; $8DF912 |
  STA.W $4198                               ; $8DF915 |
  STA.W $419A                               ; $8DF918 |
  STA.W $419C                               ; $8DF91B |
  STA.W $419E                               ; $8DF91E |
  STA.W $41A0                               ; $8DF921 |
  STA.W $41A2                               ; $8DF924 |
  STA.W $41A4                               ; $8DF927 |
  STA.W $41A6                               ; $8DF92A |
  STA.W $41A8                               ; $8DF92D |
  STA.W $41AA                               ; $8DF930 |
  STA.W $41AC                               ; $8DF933 |
  STA.W $41AE                               ; $8DF936 |
  STA.W $41B0                               ; $8DF939 |
  STA.W $41B2                               ; $8DF93C |
  STA.W $41B4                               ; $8DF93F |
  LDA.W #$8BFA                              ; $8DF942 |
  STA.W $464A                               ; $8DF945 |
  STA.W $464C                               ; $8DF948 |
  STA.W $464E                               ; $8DF94B |
  STA.W $4650                               ; $8DF94E |
  STA.W $4652                               ; $8DF951 |
  STA.W $4654                               ; $8DF954 |
  STA.W $4656                               ; $8DF957 |
  STA.W $4658                               ; $8DF95A |
  STA.W $465A                               ; $8DF95D |
  STA.W $465C                               ; $8DF960 |
  STA.W $465E                               ; $8DF963 |
  STA.W $4660                               ; $8DF966 |
  STA.W $4662                               ; $8DF969 |
  STA.W $4664                               ; $8DF96C |
  STA.W $4666                               ; $8DF96F |
  STA.W $4668                               ; $8DF972 |
  STA.W $466A                               ; $8DF975 |
  STA.W $466C                               ; $8DF978 |
  STA.W $466E                               ; $8DF97B |
  STA.W $4670                               ; $8DF97E |
  STA.W $4672                               ; $8DF981 |
  STA.W $4674                               ; $8DF984 |
  LDA.W #$0BF9                              ; $8DF987 |
  STA.W $4188                               ; $8DF98A |
  LDA.W #$8BF9                              ; $8DF98D |
  STA.W $4648                               ; $8DF990 |
  LDA.W #$0986                              ; $8DF993 |
  STA.W $41B6                               ; $8DF996 |
  LDA.W #$0980                              ; $8DF999 |
  STA.W $41B8                               ; $8DF99C |
  LDA.W #$0BFB                              ; $8DF99F |
  STA.W $41BA                               ; $8DF9A2 |
  LDA.W #$8986                              ; $8DF9A5 |
  STA.W $4676                               ; $8DF9A8 |
  LDA.W #$8980                              ; $8DF9AB |
  STA.W $4678                               ; $8DF9AE |
  LDA.W #$97FB                              ; $8DF9B1 |
  STA.W $443A                               ; $8DF9B4 |
  LDA.W #$8BFB                              ; $8DF9B7 |
  STA.W $467A                               ; $8DF9BA |
  LDA.W #$0BFB                              ; $8DF9BD |
  STA.W $41BA                               ; $8DF9C0 |
  LDA.W #$17FB                              ; $8DF9C3 |
  STA.W $43FA                               ; $8DF9C6 |
  PLB                                       ; $8DF9C9 |
  STZ.B $00                                 ; $8DF9CA |
  STZ.B $02                                 ; $8DF9CC |
  JSR.W CODE_FN_8DFA57                      ; $8DF9CE |
  JSR.W CODE_FN_8DFB9E                      ; $8DF9D1 |
  JSR.W CODE_FN_8DFCAC                      ; $8DF9D4 |
  JSR.W CODE_FN_8DFD2C                      ; $8DF9D7 |
  JSR.W CODE_FN_8DFDC7                      ; $8DF9DA |
  JSR.W CODE_FN_8DFC3B                      ; $8DF9DD |
  LDA.B $A0                                 ; $8DF9E0 |
  ASL A                                     ; $8DF9E2 |
  TAY                                       ; $8DF9E3 |
  LDA.W LOOSE_OP_00FB52,Y                   ; $8DF9E4 |
  TAY                                       ; $8DF9E7 |
  LDX.W #$0000                              ; $8DF9E8 |
  STZ.B $00                                 ; $8DF9EB |
  SEP #$20                                  ; $8DF9ED |

CODE_8DF9EF:
  STZ.B $00                                 ; $8DF9EF |
  LDA.W $0000,Y                             ; $8DF9F1 |
  CMP.B #$FF                                ; $8DF9F4 |
  BEQ CODE_8DFA54                           ; $8DF9F6 |
  CMP.B #$4F                                ; $8DF9F8 |
  BEQ CODE_8DFA36                           ; $8DF9FA |
  INC.B $00                                 ; $8DF9FC |
  CMP.B #$6C                                ; $8DF9FE |
  BEQ CODE_8DFA36                           ; $8DFA00 |
  INC.B $00                                 ; $8DFA02 |
  CMP.B #$6D                                ; $8DFA04 |
  BEQ CODE_8DFA36                           ; $8DFA06 |
  INC.B $00                                 ; $8DFA08 |
  CMP.B #$6E                                ; $8DFA0A |
  BEQ CODE_8DFA36                           ; $8DFA0C |
  INC.B $00                                 ; $8DFA0E |
  CMP.B #$6F                                ; $8DFA10 |
  BEQ CODE_8DFA36                           ; $8DFA12 |
  INC.B $00                                 ; $8DFA14 |
  CMP.B #$8E                                ; $8DFA16 |
  BEQ CODE_8DFA36                           ; $8DFA18 |
  INC.B $00                                 ; $8DFA1A |
  CMP.B #$8A                                ; $8DFA1C |
  BEQ CODE_8DFA36                           ; $8DFA1E |
  STA.L $7F408A,X                           ; $8DFA20 |
  ORA.B #$10                                ; $8DFA24 |
  STA.L $7F40CA,X                           ; $8DFA26 |
  LDA.B #$13                                ; $8DFA2A |
  STA.L $7F408B,X                           ; $8DFA2C |
  STA.L $7F40CB,X                           ; $8DFA30 |
  BRA CODE_8DFA4F                           ; $8DFA34 |

CODE_8DFA36:
  REP #$20                                  ; $8DFA36 |
  PHY                                       ; $8DFA38 |
  LDA.B $00                                 ; $8DFA39 |
  ASL A                                     ; $8DFA3B |
  ASL A                                     ; $8DFA3C |
  TAY                                       ; $8DFA3D |
  LDA.W LOOSE_OP_00FA4E,Y                   ; $8DFA3E |
  STA.L $7F408A,X                           ; $8DFA41 |
  LDA.W LOOSE_OP_00FA50,Y                   ; $8DFA45 |
  STA.L $7F40CA,X                           ; $8DFA48 |
  PLY                                       ; $8DFA4C |
  SEP #$20                                  ; $8DFA4D |

CODE_8DFA4F:
  INX                                       ; $8DFA4F |
  INX                                       ; $8DFA50 |
  INY                                       ; $8DFA51 |
  BRA CODE_8DF9EF                           ; $8DFA52 |

CODE_8DFA54:
  REP #$20                                  ; $8DFA54 |
  RTS                                       ; $8DFA56 |

CODE_FN_8DFA57:
  LDA.B $00                                 ; $8DFA57 |
  CLC                                       ; $8DFA59 |
  ADC.W #$0015                              ; $8DFA5A |
  STA.B $08                                 ; $8DFA5D |
  LDA.B $02                                 ; $8DFA5F |
  CLC                                       ; $8DFA61 |
  ADC.W #$0012                              ; $8DFA62 |
  STA.B $0A                                 ; $8DFA65 |
  LDA.L $7F4804                             ; $8DFA67 |
  AND.W #$00FF                              ; $8DFA6B |
  STA.B $10                                 ; $8DFA6E |
  CLC                                       ; $8DFA70 |
  ADC.W $1766                               ; $8DFA71 |
  STA.B $14                                 ; $8DFA74 |
  LDA.L $7F4805                             ; $8DFA76 |
  AND.W #$00FF                              ; $8DFA7A |
  STA.B $12                                 ; $8DFA7D |
  CLC                                       ; $8DFA7F |
  ADC.W $1768                               ; $8DFA80 |
  STA.B $16                                 ; $8DFA83 |
  LDX.W #$0000                              ; $8DFA85 |

CODE_8DFA88:
  LDA.B $02                                 ; $8DFA88 |
  CMP.B $12                                 ; $8DFA8A |
  BCS CODE_8DFAAD                           ; $8DFA8C |
  LDY.W #$0015                              ; $8DFA8E |
  LDA.W #$1589                              ; $8DFA91 |

CODE_8DFA94:
  STA.L $7F41CA,X                           ; $8DFA94 |
  INX                                       ; $8DFA98 |
  INX                                       ; $8DFA99 |
  DEY                                       ; $8DFA9A |
  BPL CODE_8DFA94                           ; $8DFA9B |
  INC.B $02                                 ; $8DFA9D |
  CPX.W #$046A                              ; $8DFA9F |
  BCS CODE_8DFAAC                           ; $8DFAA2 |
  TXA                                       ; $8DFAA4 |
  CLC                                       ; $8DFAA5 |
  ADC.W #$0014                              ; $8DFAA6 |
  TAX                                       ; $8DFAA9 |
  BRA CODE_8DFA88                           ; $8DFAAA |

CODE_8DFAAC:
  RTS                                       ; $8DFAAC |

CODE_8DFAAD:
  LDA.W #$007F                              ; $8DFAAD |
  STA.B $1E                                 ; $8DFAB0 |
  LDA.B $02                                 ; $8DFAB2 |
  SEC                                       ; $8DFAB4 |
  SBC.B $12                                 ; $8DFAB5 |
  AND.W #$00FF                              ; $8DFAB7 |
  SEP #$20                                  ; $8DFABA |
  STA.W $4202                               ; $8DFABC |
  LDA.W $1766                               ; $8DFABF |
  STA.W $4203                               ; $8DFAC2 |
  REP #$20                                  ; $8DFAC5 |
  LDA.W $1924                               ; $8DFAC7 |
  ASL A                                     ; $8DFACA |
  TAY                                       ; $8DFACB |
  LDA.W LOOSE_OP_00FB3C,Y                   ; $8DFACC |
  CLC                                       ; $8DFACF |
  ADC.W $4216                               ; $8DFAD0 |
  STA.B $1C                                 ; $8DFAD3 |
  TYA                                       ; $8DFAD5 |
  CLC                                       ; $8DFAD6 |
  ADC.B $A0                                 ; $8DFAD7 |
  ADC.B $A0                                 ; $8DFAD9 |
  ADC.B $A0                                 ; $8DFADB |
  ADC.B $A0                                 ; $8DFADD |
  TAY                                       ; $8DFADF |
  LDA.W CODE_00FB10,Y                       ; $8DFAE0 |
  STA.B $0C                                 ; $8DFAE3 |
  LDA.W #$0070                              ; $8DFAE5 |
  STA.B $0E                                 ; $8DFAE8 |
  LDA.W $4216                               ; $8DFAEA |
  STA.B $20                                 ; $8DFAED |

CODE_JL_8DFAEF:
  LDA.B $02                                 ; $8DFAEF |
  CMP.B $0A                                 ; $8DFAF1 |
  BCC CODE_8DFAF8                           ; $8DFAF3 |
  JMP.W CODE_JP_8DFB9D                      ; $8DFAF5 |

CODE_8DFAF8:
  CMP.B $16                                 ; $8DFAF8 |
  BCC CODE_8DFAFF                           ; $8DFAFA |
  JMP.W CODE_JP_8DFB81                      ; $8DFAFC |

CODE_8DFAFF:
  LDA.B $00                                 ; $8DFAFF |
  STA.B $18                                 ; $8DFB01 |
  LDA.W #$0015                              ; $8DFB03 |
  STA.B $1A                                 ; $8DFB06 |

CODE_8DFB08:
  LDA.B $18                                 ; $8DFB08 |
  CMP.B $14                                 ; $8DFB0A |
  BCS CODE_8DFB57                           ; $8DFB0C |
  SEC                                       ; $8DFB0E |
  SBC.B $10                                 ; $8DFB0F |
  BCC CODE_8DFB57                           ; $8DFB11 |
  TAY                                       ; $8DFB13 |
  CLC                                       ; $8DFB14 |
  ADC.B $20                                 ; $8DFB15 |
  STA.B $06                                 ; $8DFB17 |
  LDA.B [$1C],Y                             ; $8DFB19 |
  AND.W #$00FF                              ; $8DFB1B |
  CMP.W #$00FF                              ; $8DFB1E |
  BEQ CODE_8DFB57                           ; $8DFB21 |
  PHX                                       ; $8DFB23 |
  STA.B $04                                 ; $8DFB24 |
  LDA.B $06                                 ; $8DFB26 |
  AND.W #$0007                              ; $8DFB28 |
  ASL A                                     ; $8DFB2B |
  TAX                                       ; $8DFB2C |
  LDA.B $06                                 ; $8DFB2D |
  AND.W #$FFF8                              ; $8DFB2F |
  LSR A                                     ; $8DFB32 |
  LSR A                                     ; $8DFB33 |
  LSR A                                     ; $8DFB34 |
  TAY                                       ; $8DFB35 |
  LDA.B [$0C],Y                             ; $8DFB36 |
  AND.L DATA8_81FA6A,X                      ; $8DFB38 |
  BNE CODE_8DFB47                           ; $8DFB3C |
  JSR.W CODE_FN_8DFC76                      ; $8DFB3E |
  TDC                                       ; $8DFB41 |
  BCC CODE_8DFB4A                           ; $8DFB42 |
  PLX                                       ; $8DFB44 |
  BRA CODE_8DFB57                           ; $8DFB45 |

CODE_8DFB47:
  LDA.W #$0040                              ; $8DFB47 |

CODE_8DFB4A:
  ORA.B $04                                 ; $8DFB4A |
  PLX                                       ; $8DFB4C |
  TAY                                       ; $8DFB4D |
  LDA.W LOOSE_OP_00FA90,Y                   ; $8DFB4E |
  STA.L $7F41CA,X                           ; $8DFB51 |
  BRA CODE_8DFB5E                           ; $8DFB55 |

CODE_8DFB57:
  LDA.W #$1589                              ; $8DFB57 |
  STA.L $7F41CA,X                           ; $8DFB5A |

CODE_8DFB5E:
  INX                                       ; $8DFB5E |
  INX                                       ; $8DFB5F |
  INC.B $18                                 ; $8DFB60 |
  DEC.B $1A                                 ; $8DFB62 |
  BPL CODE_8DFB08                           ; $8DFB64 |
  INC.B $02                                 ; $8DFB66 |
  TXA                                       ; $8DFB68 |
  CLC                                       ; $8DFB69 |
  ADC.W #$0014                              ; $8DFB6A |
  TAX                                       ; $8DFB6D |
  LDA.B $1C                                 ; $8DFB6E |
  CLC                                       ; $8DFB70 |
  ADC.W $1766                               ; $8DFB71 |
  STA.B $1C                                 ; $8DFB74 |
  LDA.B $20                                 ; $8DFB76 |
  CLC                                       ; $8DFB78 |
  ADC.W $1766                               ; $8DFB79 |
  STA.B $20                                 ; $8DFB7C |
  BRL CODE_JL_8DFAEF                        ; $8DFB7E |

CODE_JP_8DFB81:
  LDY.W #$0015                              ; $8DFB81 |

CODE_8DFB84:
  LDA.W #$1589                              ; $8DFB84 |
  STA.L $7F41CA,X                           ; $8DFB87 |
  INX                                       ; $8DFB8B |
  INX                                       ; $8DFB8C |
  DEY                                       ; $8DFB8D |
  BPL CODE_8DFB84                           ; $8DFB8E |
  CPX.W #$046A                              ; $8DFB90 |
  BCS CODE_JP_8DFB9D                        ; $8DFB93 |
  TXA                                       ; $8DFB95 |
  CLC                                       ; $8DFB96 |
  ADC.W #$0014                              ; $8DFB97 |
  TAX                                       ; $8DFB9A |
  BRA CODE_JP_8DFB81                        ; $8DFB9B |

CODE_JP_8DFB9D:
  RTS                                       ; $8DFB9D |

CODE_FN_8DFB9E:
  LDA.W $1760                               ; $8DFB9E |
  STA.B $00                                 ; $8DFBA1 |
  LDA.W $176A                               ; $8DFBA3 |
  DEC A                                     ; $8DFBA6 |
  STA.B $02                                 ; $8DFBA7 |
  LDA.W $1924                               ; $8DFBA9 |
  STA.B $04                                 ; $8DFBAC |
  LDX.W #$00F4                              ; $8DFBAE |
  LDA.B $04                                 ; $8DFBB1 |
  BNE CODE_8DFBBA                           ; $8DFBB3 |
  JSR.W CODE_FN_8DFBEE                      ; $8DFBB5 |
  BRA CODE_8DFBBD                           ; $8DFBB8 |

CODE_8DFBBA:
  JSR.W CODE_FN_8DFBF5                      ; $8DFBBA |

CODE_8DFBBD:
  DEC.B $00                                 ; $8DFBBD |
  LDX.W #$00F8                              ; $8DFBBF |
  DEC.B $02                                 ; $8DFBC2 |
  BPL CODE_8DFBCB                           ; $8DFBC4 |
  JSR.W CODE_FN_8DFC25                      ; $8DFBC6 |
  BRA CODE_8DFBD7                           ; $8DFBC9 |

CODE_8DFBCB:
  DEC.B $04                                 ; $8DFBCB |
  BNE CODE_8DFBD4                           ; $8DFBCD |
  JSR.W CODE_FN_8DFBEE                      ; $8DFBCF |
  BRA CODE_8DFBD7                           ; $8DFBD2 |

CODE_8DFBD4:
  JSR.W CODE_FN_8DFBF5                      ; $8DFBD4 |

CODE_8DFBD7:
  DEC.B $00                                 ; $8DFBD7 |
  LDX.W #$00FC                              ; $8DFBD9 |
  DEC.B $02                                 ; $8DFBDC |
  BPL CODE_8DFBE3                           ; $8DFBDE |
  JMP.W CODE_FN_8DFC25                      ; $8DFBE0 |

CODE_8DFBE3:
  DEC.B $04                                 ; $8DFBE3 |
  BNE CODE_8DFBEA                           ; $8DFBE5 |
  JMP.W CODE_FN_8DFBEE                      ; $8DFBE7 |

CODE_8DFBEA:
  JMP.W CODE_FN_8DFBF5                      ; $8DFBEA |

  RTS                                       ; $8DFBED |

CODE_FN_8DFBEE:
  LDA.B $84                                 ; $8DFBEE |
  BIT.W #$0010                              ; $8DFBF0 |
  BEQ CODE_FN_8DFC25                        ; $8DFBF3 |

CODE_FN_8DFBF5:
  LDA.B $00                                 ; $8DFBF5 |
  BEQ CODE_8DFC0F                           ; $8DFBF7 |
  LDA.W #$15A2                              ; $8DFBF9 |
  STA.L $7F4000,X                           ; $8DFBFC |
  LDA.W #$158C                              ; $8DFC00 |
  STA.L $7F4040,X                           ; $8DFC03 |
  LDA.W #$15A4                              ; $8DFC07 |
  STA.L $7F4080,X                           ; $8DFC0A |
  RTS                                       ; $8DFC0E |

CODE_8DFC0F:
  LDA.W #$15A1                              ; $8DFC0F |
  STA.L $7F4000,X                           ; $8DFC12 |
  LDA.W #$15AC                              ; $8DFC16 |
  STA.L $7F4040,X                           ; $8DFC19 |
  LDA.W #$15A3                              ; $8DFC1D |
  STA.L $7F4080,X                           ; $8DFC20 |
  RTS                                       ; $8DFC24 |

CODE_FN_8DFC25:
  LDA.W #$15A0                              ; $8DFC25 |
  STA.L $7F4000,X                           ; $8DFC28 |
  LDA.W #$15A0                              ; $8DFC2C |
  STA.L $7F4040,X                           ; $8DFC2F |
  LDA.W #$15A0                              ; $8DFC33 |
  STA.L $7F4080,X                           ; $8DFC36 |
  RTS                                       ; $8DFC3A |

CODE_FN_8DFC3B:
  LDX.W #$12B0                              ; $8DFC3B |
  JSR.W CODE_FN_8DFC76                      ; $8DFC3E |
  BCS CODE_8DFC48                           ; $8DFC41 |
  LDA.W #$E046                              ; $8DFC43 |
  STA.B $00,X                               ; $8DFC46 |

CODE_8DFC48:
  LDA.W #$0014                              ; $8DFC48 |
  STA.B $09,X                               ; $8DFC4B |
  LDA.W #$0028                              ; $8DFC4D |
  STA.B $0D,X                               ; $8DFC50 |
  STA.B $1A,X                               ; $8DFC52 |
  LDA.W #$1898                              ; $8DFC54 |
  STA.B $04,X                               ; $8DFC57 |
  LDA.W #$0030                              ; $8DFC59 |
  STA.B $4C,X                               ; $8DFC5C |

CODE_8DFC5E:
  LDA.W #$FE00                              ; $8DFC5E |
  STA.B $28,X                               ; $8DFC61 |
  RTS                                       ; $8DFC63 |

CODE_FN_8DFC64:
  LDX.W #$12B0                              ; $8DFC64 |
  JSL.L CODE_FL_86C870                      ; $8DFC67 |
  JSL.L CODE_FL_86C82F                      ; $8DFC6B |
  LDA.B $0D,X                               ; $8DFC6F |
  CMP.B $1A,X                               ; $8DFC71 |
  BCS CODE_8DFC5E                           ; $8DFC73 |
  RTS                                       ; $8DFC75 |

CODE_FN_8DFC76:
  LDA.B $A0                                 ; $8DFC76 |
  ASL A                                     ; $8DFC78 |
  TAY                                       ; $8DFC79 |
  LDA.W LOOSE_OP_00FA7A,Y                   ; $8DFC7A |
  BEQ CODE_8DFC8D                           ; $8DFC7D |

CODE_FN_8DFC7F:
  PHX                                       ; $8DFC7F |
  TAX                                       ; $8DFC80 |
  LDA.L $700200,X                           ; $8DFC81 |
  PLX                                       ; $8DFC85 |
  AND.W #$00FF                              ; $8DFC86 |
  BEQ CODE_8DFC8D                           ; $8DFC89 |
  CLC                                       ; $8DFC8B |
  RTS                                       ; $8DFC8C |

CODE_8DFC8D:
  SEC                                       ; $8DFC8D |
  RTS                                       ; $8DFC8E |

CODE_FN_8DFC8F:
  JSR.W CODE_FN_8DFC7F                      ; $8DFC8F |
  BCS CODE_8DFCA0                           ; $8DFC92 |
  LDA.B $18,X                               ; $8DFC94 |
  AND.W #$000F                              ; $8DFC96 |
  CMP.W #$0003                              ; $8DFC99 |
  BEQ CODE_8DFCAA                           ; $8DFC9C |

CODE_8DFC9E:
  CLC                                       ; $8DFC9E |
  RTS                                       ; $8DFC9F |

CODE_8DFCA0:
  LDA.B $18,X                               ; $8DFCA0 |
  AND.W #$000F                              ; $8DFCA2 |
  CMP.W #$0003                              ; $8DFCA5 |
  BEQ CODE_8DFC9E                           ; $8DFCA8 |

CODE_8DFCAA:
  SEC                                       ; $8DFCAA |
  RTS                                       ; $8DFCAB |

CODE_FN_8DFCAC:
  JSR.W CODE_FN_8DFEF7                      ; $8DFCAC |
  LDX.W #$1300                              ; $8DFCAF |
  LDA.L $7F4803                             ; $8DFCB2 |
  AND.W #$FF00                              ; $8DFCB6 |
  CLC                                       ; $8DFCB9 |
  ADC.W $1662                               ; $8DFCBA |
  CLC                                       ; $8DFCBD |
  ADC.W $1762                               ; $8DFCBE |
  SEC                                       ; $8DFCC1 |
  SBC.W #$0A00                              ; $8DFCC2 |
  BCS CODE_8DFCCA                           ; $8DFCC5 |
  LDA.W #$0000                              ; $8DFCC7 |

CODE_8DFCCA:
  STA.B $00                                 ; $8DFCCA |
  STZ.B $02                                 ; $8DFCCC |
  LDA.L $7F4804                             ; $8DFCCE |
  AND.W #$FF00                              ; $8DFCD2 |
  CLC                                       ; $8DFCD5 |
  ADC.W $1672                               ; $8DFCD6 |
  CLC                                       ; $8DFCD9 |
  ADC.W $1764                               ; $8DFCDA |
  SEC                                       ; $8DFCDD |
  SBC.W #$0800                              ; $8DFCDE |
  BCS CODE_8DFCE6                           ; $8DFCE1 |
  LDA.W #$0000                              ; $8DFCE3 |

CODE_8DFCE6:
  STA.B $08                                 ; $8DFCE6 |
  STZ.B $0A                                 ; $8DFCE8 |
  JSR.W CODE_FN_8DFF18                      ; $8DFCEA |
  STZ.W $1920                               ; $8DFCED |
  STZ.W $1922                               ; $8DFCF0 |
  SEP #$20                                  ; $8DFCF3 |
  LDX.W #$0000                              ; $8DFCF5 |
  LDA.B $01                                 ; $8DFCF8 |

CODE_8DFCFA:
  INX                                       ; $8DFCFA |
  SEC                                       ; $8DFCFB |
  SBC.B #$05                                ; $8DFCFC |
  BCS CODE_8DFCFA                           ; $8DFCFE |
  LDA.L $7F4806                             ; $8DFD00 |
  CMP.W CODE_00FB41,X                       ; $8DFD04 |
  BCC CODE_8DFD0C                           ; $8DFD07 |
  LDA.W CODE_00FB41,X                       ; $8DFD09 |

CODE_8DFD0C:
  STA.W $1920                               ; $8DFD0C |
  LDX.W #$0000                              ; $8DFD0F |
  LDA.B $09                                 ; $8DFD12 |

CODE_8DFD14:
  INX                                       ; $8DFD14 |
  SEC                                       ; $8DFD15 |
  SBC.B #$05                                ; $8DFD16 |
  BCS CODE_8DFD14                           ; $8DFD18 |
  LDA.L $7F4807                             ; $8DFD1A |
  CMP.W CODE_00FB41,X                       ; $8DFD1E |
  BCC CODE_8DFD26                           ; $8DFD21 |
  LDA.W CODE_00FB41,X                       ; $8DFD23 |

CODE_8DFD26:
  STA.W $1922                               ; $8DFD26 |
  REP #$20                                  ; $8DFD29 |
  RTS                                       ; $8DFD2B |

CODE_FN_8DFD2C:
  JSR.W CODE_FN_8DFEF7                      ; $8DFD2C |
  LDX.W #$1300                              ; $8DFD2F |
  LDA.W #$0001                              ; $8DFD32 |
  STA.B $18,X                               ; $8DFD35 |
  LDA.W #$0024                              ; $8DFD37 |
  JSL.L CODE_FL_86CAEE                      ; $8DFD3A |
  LDA.W #$1898                              ; $8DFD3E |
  STA.B $04,X                               ; $8DFD41 |
  LDA.W #$0080                              ; $8DFD43 |
  CLC                                       ; $8DFD46 |
  ADC.W $1662                               ; $8DFD47 |
  CLC                                       ; $8DFD4A |
  ADC.W $1762                               ; $8DFD4B |
  STA.B $24,X                               ; $8DFD4E |
  LDA.W #$0080                              ; $8DFD50 |
  CLC                                       ; $8DFD53 |
  ADC.W $1672                               ; $8DFD54 |
  CLC                                       ; $8DFD57 |
  ADC.W $1764                               ; $8DFD58 |
  STA.B $26,X                               ; $8DFD5B |
  JSR.W CODE_FN_8DFF18                      ; $8DFD5D |
  JSR.W CODE_FN_8DFC76                      ; $8DFD60 |
  BCS CODE_8DFDC6                           ; $8DFD63 |
  LDA.B $A0                                 ; $8DFD65 |
  ASL A                                     ; $8DFD67 |
  TAX                                       ; $8DFD68 |
  LDA.L DATA8_8DFF3F,X                      ; $8DFD69 |
  TAX                                       ; $8DFD6D |
  LDY.W #$132A                              ; $8DFD6E |

CODE_8DFD71:
  LDA.W $0018,Y                             ; $8DFD71 |
  BNE CODE_8DFDBB                           ; $8DFD74 |
  LDA.L DATA8_8DFF3F,X                      ; $8DFD76 |
  AND.W #$00FF                              ; $8DFD7A |
  CMP.W #$00FF                              ; $8DFD7D |
  BEQ CODE_8DFDC6                           ; $8DFD80 |
  STA.W $0018,Y                             ; $8DFD82 |
  LDA.L DATA8_8DFF3F,X                      ; $8DFD85 |
  AND.W #$FF00                              ; $8DFD89 |
  STA.W $0024,Y                             ; $8DFD8C |
  LDA.L DATA8_8DFF40,X                      ; $8DFD8F |
  AND.W #$FF00                              ; $8DFD93 |
  STA.W $0026,Y                             ; $8DFD96 |
  LDA.L UNREACH_8DFF42,X                    ; $8DFD99 |
  STA.W $0028,Y                             ; $8DFD9D |
  PHX                                       ; $8DFDA0 |
  TYX                                       ; $8DFDA1 |
  LDA.B $18,X                               ; $8DFDA2 |
  AND.W #$000F                              ; $8DFDA4 |
  CLC                                       ; $8DFDA7 |
  ADC.W #$0023                              ; $8DFDA8 |
  JSL.L CODE_FL_86CAEE                      ; $8DFDAB |
  LDA.W #$1898                              ; $8DFDAF |
  STA.B $04,X                               ; $8DFDB2 |
  TXY                                       ; $8DFDB4 |
  PLX                                       ; $8DFDB5 |
  INX                                       ; $8DFDB6 |
  INX                                       ; $8DFDB7 |
  INX                                       ; $8DFDB8 |
  INX                                       ; $8DFDB9 |
  INX                                       ; $8DFDBA |

CODE_8DFDBB:
  TYA                                       ; $8DFDBB |
  CLC                                       ; $8DFDBC |
  ADC.W #$002A                              ; $8DFDBD |
  TAY                                       ; $8DFDC0 |
  CMP.W #$1576                              ; $8DFDC1 |
  BCC CODE_8DFD71                           ; $8DFDC4 |

CODE_8DFDC6:
  RTS                                       ; $8DFDC6 |

CODE_FN_8DFDC7:
  LDX.W #$1300                              ; $8DFDC7 |
  JSL.L CODE_FL_97FC80                      ; $8DFDCA |
  JSR.W CODE_FN_8DFE2F                      ; $8DFDCE |
  BCC CODE_8DFDD5                           ; $8DFDD1 |
  STZ.B $00,X                               ; $8DFDD3 |

CODE_8DFDD5:
  LDX.W #$132A                              ; $8DFDD5 |

CODE_8DFDD8:
  LDA.B $18,X                               ; $8DFDD8 |
  BEQ CODE_8DFE23                           ; $8DFDDA |
  AND.W #$00F0                              ; $8DFDDC |
  LSR A                                     ; $8DFDDF |
  LSR A                                     ; $8DFDE0 |
  LSR A                                     ; $8DFDE1 |
  LSR A                                     ; $8DFDE2 |
  CMP.W $1924                               ; $8DFDE3 |
  BNE CODE_8DFE21                           ; $8DFDE6 |
  LDA.B $28,X                               ; $8DFDE8 |
  BEQ CODE_8DFDF1                           ; $8DFDEA |
  JSR.W CODE_FN_8DFC8F                      ; $8DFDEC |
  BCC CODE_8DFE21                           ; $8DFDEF |

CODE_8DFDF1:
  JSL.L CODE_FL_97FC80                      ; $8DFDF1 |
  JSR.W CODE_FN_8DFE2F                      ; $8DFDF5 |
  BCS CODE_8DFE21                           ; $8DFDF8 |
  LDA.B $18,X                               ; $8DFDFA |
  AND.W #$000F                              ; $8DFDFC |
  CMP.W #$0005                              ; $8DFDFF |
  BNE CODE_8DFE1A                           ; $8DFE02 |
  LDA.B $42                                 ; $8DFE04 |
  CLC                                       ; $8DFE06 |
  ADC.W #$0010                              ; $8DFE07 |
  AND.W #$0010                              ; $8DFE0A |
  BEQ CODE_8DFE21                           ; $8DFE0D |
  LDA.B $42                                 ; $8DFE0F |
  LSR A                                     ; $8DFE11 |
  LDA.W #$0020                              ; $8DFE12 |
  ROL A                                     ; $8DFE15 |
  STA.B $02,X                               ; $8DFE16 |
  BRA CODE_8DFE23                           ; $8DFE18 |

CODE_8DFE1A:
  LDA.B $42                                 ; $8DFE1A |
  AND.W #$0010                              ; $8DFE1C |
  BNE CODE_8DFE23                           ; $8DFE1F |

CODE_8DFE21:
  STZ.B $00,X                               ; $8DFE21 |

CODE_8DFE23:
  TXA                                       ; $8DFE23 |
  CLC                                       ; $8DFE24 |
  ADC.W #$002A                              ; $8DFE25 |
  TAX                                       ; $8DFE28 |
  CMP.W #$1576                              ; $8DFE29 |
  BCC CODE_8DFDD8                           ; $8DFE2C |
  RTS                                       ; $8DFE2E |

CODE_FN_8DFE2F:
  LDA.L $7F4803                             ; $8DFE2F |
  AND.W #$FF00                              ; $8DFE33 |
  CLC                                       ; $8DFE36 |
  ADC.B $24,X                               ; $8DFE37 |
  STA.B $00                                 ; $8DFE39 |
  STZ.B $02                                 ; $8DFE3B |
  LDA.L $7F4804                             ; $8DFE3D |
  AND.W #$FF00                              ; $8DFE41 |
  CLC                                       ; $8DFE44 |
  ADC.B $26,X                               ; $8DFE45 |
  STA.B $08                                 ; $8DFE47 |
  STZ.B $0A                                 ; $8DFE49 |
  LDA.B $01                                 ; $8DFE4B |
  DEC A                                     ; $8DFE4D |
  SEC                                       ; $8DFE4E |
  SBC.W $1920                               ; $8DFE4F |
  BCC CODE_8DFE7B                           ; $8DFE52 |
  CMP.W #$0016                              ; $8DFE54 |
  BCS CODE_8DFE7B                           ; $8DFE57 |
  ASL A                                     ; $8DFE59 |
  ASL A                                     ; $8DFE5A |
  ASL A                                     ; $8DFE5B |
  CLC                                       ; $8DFE5C |
  ADC.W #$002C                              ; $8DFE5D |
  STA.B $09,X                               ; $8DFE60 |
  LDA.B $09                                 ; $8DFE62 |
  DEC A                                     ; $8DFE64 |
  SEC                                       ; $8DFE65 |
  SBC.W $1922                               ; $8DFE66 |
  BCC CODE_8DFE7B                           ; $8DFE69 |
  CMP.W #$0011                              ; $8DFE6B |
  BCS CODE_8DFE7B                           ; $8DFE6E |
  ASL A                                     ; $8DFE70 |
  ASL A                                     ; $8DFE71 |
  ASL A                                     ; $8DFE72 |
  CLC                                       ; $8DFE73 |
  ADC.W #$003B                              ; $8DFE74 |
  STA.B $0D,X                               ; $8DFE77 |
  CLC                                       ; $8DFE79 |
  RTS                                       ; $8DFE7A |

CODE_8DFE7B:
  SEC                                       ; $8DFE7B |
  RTS                                       ; $8DFE7C |

CODE_FL_8DFE7D:
  LDA.B $A0                                 ; $8DFE7D |
  CMP.W #$0006                              ; $8DFE7F |
  BEQ CODE_8DFEF6                           ; $8DFE82 |
  CMP.W #$0007                              ; $8DFE84 |
  BEQ CODE_8DFEF6                           ; $8DFE87 |
  CMP.W #$000B                              ; $8DFE89 |
  BEQ CODE_8DFEF6                           ; $8DFE8C |
  LDA.W #$0070                              ; $8DFE8E |
  STA.B $1A                                 ; $8DFE91 |
  LDA.B $A0                                 ; $8DFE93 |
  ASL A                                     ; $8DFE95 |
  ASL A                                     ; $8DFE96 |
  STA.B $00                                 ; $8DFE97 |
  LDA.W $1760                               ; $8DFE99 |
  ASL A                                     ; $8DFE9C |
  CLC                                       ; $8DFE9D |
  ADC.B $00                                 ; $8DFE9E |
  TAX                                       ; $8DFEA0 |
  LDA.L DATA8_81FB10,X                      ; $8DFEA1 |
  STA.B $18                                 ; $8DFEA5 |
  JSR.W CODE_FN_8DFEF7                      ; $8DFEA7 |
  LDA.W $1662                               ; $8DFEAA |
  CLC                                       ; $8DFEAD |
  ADC.W $1762                               ; $8DFEAE |
  CLC                                       ; $8DFEB1 |
  ADC.W #$0080                              ; $8DFEB2 |
  STA.B $00                                 ; $8DFEB5 |
  LDA.W $1672                               ; $8DFEB7 |
  CLC                                       ; $8DFEBA |
  ADC.W $1764                               ; $8DFEBB |
  CLC                                       ; $8DFEBE |
  ADC.W #$0080                              ; $8DFEBF |
  STA.B $04                                 ; $8DFEC2 |
  JSR.W CODE_FN_8DFF18                      ; $8DFEC4 |
  SEP #$20                                  ; $8DFEC7 |
  LDA.B $05                                 ; $8DFEC9 |
  DEC A                                     ; $8DFECB |
  STA.W $4202                               ; $8DFECC |
  LDA.W $1766                               ; $8DFECF |
  STA.W $4203                               ; $8DFED2 |
  REP #$20                                  ; $8DFED5 |
  LDA.B $01                                 ; $8DFED7 |
  AND.W #$00FF                              ; $8DFED9 |
  DEC A                                     ; $8DFEDC |
  CLC                                       ; $8DFEDD |
  ADC.W $4216                               ; $8DFEDE |
  STA.B $00                                 ; $8DFEE1 |
  AND.W #$0007                              ; $8DFEE3 |
  ASL A                                     ; $8DFEE6 |
  TAX                                       ; $8DFEE7 |
  LDA.B $00                                 ; $8DFEE8 |
  LSR A                                     ; $8DFEEA |
  LSR A                                     ; $8DFEEB |
  LSR A                                     ; $8DFEEC |
  TAY                                       ; $8DFEED |
  LDA.B [$18],Y                             ; $8DFEEE |
  ORA.L DATA8_81FA6A,X                      ; $8DFEF0 |
  STA.B [$18],Y                             ; $8DFEF4 |

CODE_8DFEF6:
  RTL                                       ; $8DFEF6 |

CODE_FN_8DFEF7:
  PHP                                       ; $8DFEF7 |
  PHA                                       ; $8DFEF8 |
  LDA.W $1662                               ; $8DFEF9 |
  STA.W $176C                               ; $8DFEFC |
  LDA.W $1672                               ; $8DFEFF |
  STA.W $176E                               ; $8DFF02 |
  LDA.B $8E                                 ; $8DFF05 |
  CMP.W #$002B                              ; $8DFF07 |
  BNE CODE_8DFF15                           ; $8DFF0A |
  LDA.W #$0100                              ; $8DFF0C |
  STA.W $1662                               ; $8DFF0F |
  STA.W $1672                               ; $8DFF12 |

CODE_8DFF15:
  PLA                                       ; $8DFF15 |
  PLP                                       ; $8DFF16 |
  RTS                                       ; $8DFF17 |

CODE_FN_8DFF18:
  PHP                                       ; $8DFF18 |
  PHA                                       ; $8DFF19 |
  LDA.W $176C                               ; $8DFF1A |
  STA.W $1662                               ; $8DFF1D |
  LDA.W $176E                               ; $8DFF20 |
  STA.W $1672                               ; $8DFF23 |
  PLA                                       ; $8DFF26 |
  PLP                                       ; $8DFF27 |
  RTS                                       ; $8DFF28 |

CODE_FL_8DFF29:
  LDA.W $04D8                               ; $8DFF29 |
  BNE CODE_8DFF31                           ; $8DFF2C |
  LDA.B $30                                 ; $8DFF2E |
  RTL                                       ; $8DFF30 |

CODE_8DFF31:
  LDA.B $36                                 ; $8DFF31 |
  RTL                                       ; $8DFF33 |

CODE_FL_8DFF34:
  LDA.W $04D8                               ; $8DFF34 |
  BNE CODE_8DFF3C                           ; $8DFF37 |
  LDA.B $28                                 ; $8DFF39 |
  RTL                                       ; $8DFF3B |

CODE_8DFF3C:
  LDA.B $2E                                 ; $8DFF3C |
  RTL                                       ; $8DFF3E |

DATA8_8DFF3F:
  db $16                                    ; $8DFF3F |

DATA8_8DFF40:
  db $00                                    ; $8DFF40 |
  db $1C                                    ; $8DFF41 |

UNREACH_8DFF42:
  db $00                                    ; $8DFF42 |
  db $1C,$00,$1E,$00,$42,$00,$8E,$00        ; $8DFF43 |
  db $1C,$00,$1C,$00,$A8,$00,$1C,$00        ; $8DFF4B |
  db $1C,$00                                ; $8DFF53 |
  db $03,$03,$02,$C4,$04,$FF,$FF,$FF        ; $8DFF55 |
  db $05,$07,$08,$00,$00,$06,$11,$07        ; $8DFF5D |
  db $8F,$04,$06,$0B,$05,$91,$04,$16        ; $8DFF65 |
  db $17,$06,$92,$04,$06,$12,$05,$96        ; $8DFF6D |
  db $04,$06,$16,$02,$CF,$04,$07,$12        ; $8DFF75 |
  db $05,$97,$04,$FF,$13,$03,$0D,$C5        ; $8DFF7D |
  db $04,$15,$04,$0F,$00,$00,$15,$09        ; $8DFF85 |
  db $13,$00,$00,$05,$04,$13,$00,$00        ; $8DFF8D |
  db $05,$06,$14,$00,$00,$05,$09,$0F        ; $8DFF95 |
  db $00,$00,$15,$05,$0A,$00,$00,$15        ; $8DFF9D |
  db $05,$0E,$00,$00,$05,$07,$0C,$00        ; $8DFFA5 |
  db $00,$05,$04,$06,$00,$00,$06,$04        ; $8DFFAD |
  db $14,$9E,$04,$06,$04,$13,$A2,$04        ; $8DFFB5 |
  db $06,$07,$0F,$A4,$04,$16,$08,$0D        ; $8DFFBD |
  db $A8,$04                                ; $8DFFC5 |
  db $07,$04,$02,$AB,$04,$FF                ; $8DFFC7 |
  db $03,$0E,$03,$C6,$04,$05,$10,$07        ; $8DFFCD |
  db $00,$00,$16,$11,$05,$B2,$04,$16        ; $8DFFD5 |
  db $06,$09,$B8,$04,$07,$0A,$0A,$CA        ; $8DFFDD |
  db $04,$FF,$05                            ; $8DFFE5 |
  db $06,$02,$00,$00                        ; $8DFFE8 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8DFFEC |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8DFFF4 |
  db $FF,$FF,$FF,$FF                        ; $8DFFFC |
