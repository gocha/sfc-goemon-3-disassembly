org $8C8000

CODE_8C8000:
  JSL.L CODE_FL_85F7C9                      ; $8C8000 |
  JSR.W CODE_FN_8C8969                      ; $8C8004 |
  JSR.W CODE_FN_8C8985                      ; $8C8007 |
  JSL.L CODE_FL_8CFD8F                      ; $8C800A |
  PHX                                       ; $8C800E |
  ASL A                                     ; $8C800F |
  TAX                                       ; $8C8010 |
  LDA.L PTR16_8C801B,X                      ; $8C8011 |
  PLX                                       ; $8C8015 |
  STA.B $00                                 ; $8C8016 |
  JMP.W ($0000)                             ; $8C8018 |

PTR16_8C801B:
  dw CODE_8C8033                            ; $8C801B |
  dw CODE_8C808A                            ; $8C801D |
  dw CODE_8C8188                            ; $8C801F |
  dw CODE_8C83D9                            ; $8C8021 |
  dw CODE_8C844E                            ; $8C8023 |
  dw CODE_8C84F3                            ; $8C8025 |
  dw CODE_8C85CC                            ; $8C8027 |
  dw CODE_8C85FF                            ; $8C8029 |
  dw CODE_8C86A2                            ; $8C802B |
  dw CODE_8C877B                            ; $8C802D |
  dw CODE_8C8800                            ; $8C802F |
  dw CODE_8C88DB                            ; $8C8031 |

CODE_8C8033:
  LDA.W #$057E                              ; $8C8033 |
  JSL.L CODE_FL_8CF9D2                      ; $8C8036 |
  BCS CODE_8C8086                           ; $8C803A |
  JSR.W CODE_FN_8C8997                      ; $8C803C |
  BCS CODE_8C8085                           ; $8C803F |
  JSR.W CODE_FN_8C89B1                      ; $8C8041 |
  BCS CODE_8C8085                           ; $8C8044 |
  JSR.W CODE_FN_8C89D8                      ; $8C8046 |
  BCS CODE_8C8085                           ; $8C8049 |
  LDA.W #$0012                              ; $8C804B |
  JSL.L CODE_FL_87E3B2                      ; $8C804E |
  LDA.W #$0001                              ; $8C8052 |
  STA.L $7E7D90                             ; $8C8055 |
  JSL.L CODE_FL_86C7A5                      ; $8C8059 |
  LDA.W #$3082                              ; $8C805D |
  STA.B $00,X                               ; $8C8060 |
  JSL.L CODE_FL_8CFF1E                      ; $8C8062 |
  LDA.W #$0040                              ; $8C8066 |
  STA.B $42,X                               ; $8C8069 |
  JSL.L CODE_FL_85A9EF                      ; $8C806B |
  JSL.L CODE_FL_85B00E                      ; $8C806F |
  LDA.W #$0020                              ; $8C8073 |
  STA.B $2C,X                               ; $8C8076 |
  STZ.W $1C9E                               ; $8C8078 |
  STZ.W $1CA0                               ; $8C807B |
  STZ.W $1CA4                               ; $8C807E |
  JML.L CODE_FL_86C63F                      ; $8C8081 |

CODE_8C8085:
  RTL                                       ; $8C8085 |

CODE_8C8086:
  JML.L CODE_FL_86CA2D                      ; $8C8086 |

CODE_8C808A:
  LDA.B $3A,X                               ; $8C808A |
  PHX                                       ; $8C808C |
  ASL A                                     ; $8C808D |
  TAX                                       ; $8C808E |
  LDA.L PTR16_8C8099,X                      ; $8C808F |
  PLX                                       ; $8C8093 |
  STA.B $00                                 ; $8C8094 |
  JMP.W ($0000)                             ; $8C8096 |

PTR16_8C8099:
  dw CODE_8C80A1                            ; $8C8099 |
  dw CODE_8C80AD                            ; $8C809B |
  dw CODE_8C80BE                            ; $8C809D |
  dw CODE_8C80D7                            ; $8C809F |

CODE_8C80A1:
  LDA.W #$8001                              ; $8C80A1 |
  STA.B $E4                                 ; $8C80A4 |
  JSL.L CODE_FL_8B80CE                      ; $8C80A6 |
  INC.B $3A,X                               ; $8C80AA |
  RTL                                       ; $8C80AC |

CODE_8C80AD:
  LDA.W #$00A0                              ; $8C80AD |
  JSL.L CODE_FL_8B8174                      ; $8C80B0 |
  BNE CODE_8C80BD                           ; $8C80B4 |
  LDA.W #$28A6                              ; $8C80B6 |
  STA.B $40,X                               ; $8C80B9 |
  INC.B $3A,X                               ; $8C80BB |

CODE_8C80BD:
  RTL                                       ; $8C80BD |

CODE_8C80BE:
  JSL.L CODE_FL_8098FD                      ; $8C80BE |
  BCC CODE_8C80D6                           ; $8C80C2 |
  LDA.W #$3009                              ; $8C80C4 |
  JSL.L CODE_FL_86CAEE                      ; $8C80C7 |
  LDA.W #$8001                              ; $8C80CB |
  STA.B $E4                                 ; $8C80CE |
  JSL.L CODE_FL_8B80CE                      ; $8C80D0 |
  INC.B $3A,X                               ; $8C80D4 |

CODE_8C80D6:
  RTL                                       ; $8C80D6 |

CODE_8C80D7:
  LDA.B $20,X                               ; $8C80D7 |
  BNE CODE_8C812F                           ; $8C80D9 |
  STZ.B $00                                 ; $8C80DB |
  LDA.W #$0004                              ; $8C80DD |
  STA.B $02                                 ; $8C80E0 |
  PHX                                       ; $8C80E2 |

CODE_8C80E3:
  LDA.B $00                                 ; $8C80E3 |
  ASL A                                     ; $8C80E5 |
  ASL A                                     ; $8C80E6 |
  TAY                                       ; $8C80E7 |
  PHB                                       ; $8C80E8 |
  PHK                                       ; $8C80E9 |
  PLB                                       ; $8C80EA |
  LDA.W LOOSE_OP_008130,Y                   ; $8C80EB |
  PLB                                       ; $8C80EE |
  PHY                                       ; $8C80EF |
  TAY                                       ; $8C80F0 |
  JSL.L CODE_FL_809622                      ; $8C80F1 |
  PLY                                       ; $8C80F5 |
  PHB                                       ; $8C80F6 |
  PHK                                       ; $8C80F7 |
  PLB                                       ; $8C80F8 |
  LDA.W CODE_008132,Y                       ; $8C80F9 |
  PLB                                       ; $8C80FC |
  TAY                                       ; $8C80FD |
  LDA.W #$000C                              ; $8C80FE |
  STA.B $04                                 ; $8C8101 |

CODE_8C8103:
  PHB                                       ; $8C8103 |
  PHK                                       ; $8C8104 |
  PLB                                       ; $8C8105 |
  LDA.W $0000,Y                             ; $8C8106 |
  PLB                                       ; $8C8109 |
  JSL.L CODE_FL_809658                      ; $8C810A |
  INY                                       ; $8C810E |
  INY                                       ; $8C810F |
  DEC.B $04                                 ; $8C8110 |
  BNE CODE_8C8103                           ; $8C8112 |
  JSL.L CODE_FL_809663                      ; $8C8114 |
  INC.B $00                                 ; $8C8118 |
  DEC.B $02                                 ; $8C811A |
  BNE CODE_8C80E3                           ; $8C811C |
  PLX                                       ; $8C811E |
  STZ.B $E4                                 ; $8C811F |
  LDA.W #$3000                              ; $8C8121 |
  STA.B $00,X                               ; $8C8124 |
  STZ.B $1E,X                               ; $8C8126 |
  STZ.B $3A,X                               ; $8C8128 |
  LDA.W #$0002                              ; $8C812A |
  STA.B $1A,X                               ; $8C812D |

CODE_8C812F:
  RTL                                       ; $8C812F |

  db $21,$50,$40,$81,$41,$50,$58,$81        ; $8C8130 |
  db $61,$50,$58,$81,$81,$50,$70,$81        ; $8C8138 |
  db $AD,$33,$AE,$33,$AE,$33,$AE,$33        ; $8C8140 |
  db $AE,$33,$AE,$33,$AE,$33,$AE,$33        ; $8C8148 |
  db $AE,$33,$AE,$33,$AE,$33,$AD,$73        ; $8C8150 |
  db $AF,$33,$10,$33,$10,$33,$10,$33        ; $8C8158 |
  db $10,$33,$10,$33,$10,$33,$10,$33        ; $8C8160 |
  db $10,$33,$10,$33,$10,$33,$AF,$73        ; $8C8168 |
  db $AD,$B3,$AE,$B3,$AE,$B3,$AE,$B3        ; $8C8170 |
  db $AE,$B3,$AE,$B3,$AE,$B3,$AE,$B3        ; $8C8178 |
  db $AE,$B3,$AE,$B3,$AE,$B3,$AD,$F3        ; $8C8180 |

CODE_8C8188:
  LDA.B $3A,X                               ; $8C8188 |
  PHX                                       ; $8C818A |
  ASL A                                     ; $8C818B |
  TAX                                       ; $8C818C |
  LDA.L PTR16_8C8197,X                      ; $8C818D |
  PLX                                       ; $8C8191 |
  STA.B $00                                 ; $8C8192 |
  JMP.W ($0000)                             ; $8C8194 |

PTR16_8C8197:
  dw CODE_8C81A1                            ; $8C8197 |
  dw CODE_8C81E6                            ; $8C8199 |
  dw CODE_8C822B                            ; $8C819B |
  dw CODE_8C828C                            ; $8C819D |
  dw CODE_8C82EA                            ; $8C819F |

CODE_8C81A1:
  JSL.L CODE_FL_86C70D                      ; $8C81A1 |
  LDA.W #$3008                              ; $8C81A5 |
  JSL.L CODE_FL_86CAEE                      ; $8C81A8 |
  LDA.W $1C38                               ; $8C81AC |
  AND.W #$003F                              ; $8C81AF |
  STA.B $2C,X                               ; $8C81B2 |
  CMP.W #$0020                              ; $8C81B4 |
  BCS CODE_8C81C7                           ; $8C81B7 |
  CLC                                       ; $8C81B9 |
  LDA.B $20,X                               ; $8C81BA |
  ADC.B $2C,X                               ; $8C81BC |
  STA.B $20,X                               ; $8C81BE |
  LDA.W #$0001                              ; $8C81C0 |
  STA.B $3A,X                               ; $8C81C3 |
  BRA CODE_8C81E5                           ; $8C81C5 |

CODE_8C81C7:
  STZ.W $1C98                               ; $8C81C7 |
  LDA.W #$0008                              ; $8C81CA |
  STA.W $1C9A                               ; $8C81CD |
  LDA.W #$0008                              ; $8C81D0 |
  STA.W $1C9C                               ; $8C81D3 |
  CLC                                       ; $8C81D6 |
  LDA.B $20,X                               ; $8C81D7 |
  ADC.B $2C,X                               ; $8C81D9 |
  ADC.W #$0020                              ; $8C81DB |
  STA.B $20,X                               ; $8C81DE |
  LDA.W #$0002                              ; $8C81E0 |
  STA.B $3A,X                               ; $8C81E3 |

CODE_8C81E5:
  RTL                                       ; $8C81E5 |

CODE_8C81E6:
  STZ.B $00                                 ; $8C81E6 |
  LDA.W #$0008                              ; $8C81E8 |
  STA.B $02                                 ; $8C81EB |
  PHX                                       ; $8C81ED |

CODE_8C81EE:
  LDA.B $00                                 ; $8C81EE |
  ASL A                                     ; $8C81F0 |
  ASL A                                     ; $8C81F1 |
  TAY                                       ; $8C81F2 |
  PHB                                       ; $8C81F3 |
  PHK                                       ; $8C81F4 |
  PLB                                       ; $8C81F5 |
  LDA.W LOOSE_OP_008355,Y                   ; $8C81F6 |
  PLB                                       ; $8C81F9 |
  PHY                                       ; $8C81FA |
  TAY                                       ; $8C81FB |
  JSL.L CODE_FL_80961D                      ; $8C81FC |
  PLY                                       ; $8C8200 |
  PHB                                       ; $8C8201 |
  PHK                                       ; $8C8202 |
  PLB                                       ; $8C8203 |
  LDA.W LOOSE_OP_008357,Y                   ; $8C8204 |
  PLB                                       ; $8C8207 |
  TAY                                       ; $8C8208 |
  LDA.W #$0002                              ; $8C8209 |
  STA.B $04                                 ; $8C820C |

CODE_8C820E:
  PHB                                       ; $8C820E |
  PHK                                       ; $8C820F |
  PLB                                       ; $8C8210 |
  LDA.W $0000,Y                             ; $8C8211 |
  PLB                                       ; $8C8214 |
  JSL.L CODE_FL_809658                      ; $8C8215 |
  INY                                       ; $8C8219 |
  INY                                       ; $8C821A |
  DEC.B $04                                 ; $8C821B |
  BNE CODE_8C820E                           ; $8C821D |
  JSL.L CODE_FL_809663                      ; $8C821F |
  INC.B $00                                 ; $8C8223 |
  DEC.B $02                                 ; $8C8225 |
  BNE CODE_8C81EE                           ; $8C8227 |
  BRA CODE_8C8285                           ; $8C8229 |

CODE_8C822B:
  DEC.W $1C9C                               ; $8C822B |
  BNE CODE_8C828B                           ; $8C822E |
  PHX                                       ; $8C8230 |

CODE_8C8231:
  LDA.W $1C98                               ; $8C8231 |
  ASL A                                     ; $8C8234 |
  ASL A                                     ; $8C8235 |
  TAY                                       ; $8C8236 |
  PHB                                       ; $8C8237 |
  PHK                                       ; $8C8238 |
  PLB                                       ; $8C8239 |
  LDA.W LOOSE_OP_008355,Y                   ; $8C823A |
  PLB                                       ; $8C823D |
  PHY                                       ; $8C823E |
  TAY                                       ; $8C823F |
  JSL.L CODE_FL_80961D                      ; $8C8240 |
  PLY                                       ; $8C8244 |
  PHB                                       ; $8C8245 |
  PHK                                       ; $8C8246 |
  PLB                                       ; $8C8247 |
  LDA.W LOOSE_OP_008357,Y                   ; $8C8248 |
  PLB                                       ; $8C824B |
  TAY                                       ; $8C824C |
  LDA.W #$0002                              ; $8C824D |
  STA.B $04                                 ; $8C8250 |

CODE_8C8252:
  PHB                                       ; $8C8252 |
  PHK                                       ; $8C8253 |
  PLB                                       ; $8C8254 |
  LDA.W $0000,Y                             ; $8C8255 |
  PLB                                       ; $8C8258 |
  JSL.L CODE_FL_809658                      ; $8C8259 |
  INY                                       ; $8C825D |
  INY                                       ; $8C825E |
  DEC.B $04                                 ; $8C825F |
  BNE CODE_8C8252                           ; $8C8261 |
  JSL.L CODE_FL_809663                      ; $8C8263 |
  INC.W $1C98                               ; $8C8267 |
  DEC.W $1C9A                               ; $8C826A |
  BEQ CODE_8C8285                           ; $8C826D |
  LDA.W $1C9A                               ; $8C826F |
  CMP.W #$0007                              ; $8C8272 |
  BEQ CODE_8C8231                           ; $8C8275 |
  CMP.W #$0001                              ; $8C8277 |
  BEQ CODE_8C8231                           ; $8C827A |
  PLX                                       ; $8C827C |
  LDA.W #$0008                              ; $8C827D |
  STA.W $1C9C                               ; $8C8280 |
  BRA CODE_8C828B                           ; $8C8283 |

CODE_8C8285:
  PLX                                       ; $8C8285 |
  LDA.W #$0003                              ; $8C8286 |
  STA.B $3A,X                               ; $8C8289 |

CODE_8C828B:
  RTL                                       ; $8C828B |

CODE_8C828C:
  LDA.B $20,X                               ; $8C828C |
  BNE CODE_8C82E9                           ; $8C828E |
  LDA.W #$00C0                              ; $8C8290 |
  JSL.L CODE_FL_8089BD                      ; $8C8293 |
  STZ.B $00                                 ; $8C8297 |
  LDA.W #$0008                              ; $8C8299 |
  STA.B $02                                 ; $8C829C |
  PHX                                       ; $8C829E |

CODE_8C829F:
  LDA.B $00                                 ; $8C829F |
  ASL A                                     ; $8C82A1 |
  ASL A                                     ; $8C82A2 |
  TAY                                       ; $8C82A3 |
  PHB                                       ; $8C82A4 |
  PHK                                       ; $8C82A5 |
  PLB                                       ; $8C82A6 |
  LDA.W CODE_008375,Y                       ; $8C82A7 |
  PLB                                       ; $8C82AA |
  PHY                                       ; $8C82AB |
  TAY                                       ; $8C82AC |
  JSL.L CODE_FL_80961D                      ; $8C82AD |
  PLY                                       ; $8C82B1 |
  PHB                                       ; $8C82B2 |
  PHK                                       ; $8C82B3 |
  PLB                                       ; $8C82B4 |
  LDA.W CODE_008377,Y                       ; $8C82B5 |
  PLB                                       ; $8C82B8 |
  TAY                                       ; $8C82B9 |
  LDA.W #$0002                              ; $8C82BA |
  STA.B $04                                 ; $8C82BD |

CODE_8C82BF:
  PHB                                       ; $8C82BF |
  PHK                                       ; $8C82C0 |
  PLB                                       ; $8C82C1 |
  LDA.W $0000,Y                             ; $8C82C2 |
  PLB                                       ; $8C82C5 |
  JSL.L CODE_FL_809658                      ; $8C82C6 |
  INY                                       ; $8C82CA |
  INY                                       ; $8C82CB |
  DEC.B $04                                 ; $8C82CC |
  BNE CODE_8C82BF                           ; $8C82CE |
  JSL.L CODE_FL_809663                      ; $8C82D0 |
  INC.B $00                                 ; $8C82D4 |
  DEC.B $02                                 ; $8C82D6 |
  BNE CODE_8C829F                           ; $8C82D8 |
  PLX                                       ; $8C82DA |
  LDA.W #$3009                              ; $8C82DB |
  JSL.L CODE_FL_86CAEE                      ; $8C82DE |
  LDA.W #$3082                              ; $8C82E2 |
  STA.B $00,X                               ; $8C82E5 |
  INC.B $3A,X                               ; $8C82E7 |

CODE_8C82E9:
  RTL                                       ; $8C82E9 |

CODE_8C82EA:
  LDA.B $20,X                               ; $8C82EA |
  BEQ CODE_JL_8C8310                        ; $8C82EC |
  LDA.B $1C,X                               ; $8C82EE |
  CMP.W #$0009                              ; $8C82F0 |
  BCS CODE_8C8354                           ; $8C82F3 |
  LDA.B $2E                                 ; $8C82F5 |
  BEQ CODE_8C8354                           ; $8C82F7 |
  LDA.W #$8001                              ; $8C82F9 |
  STA.B $E4                                 ; $8C82FC |
  JSL.L CODE_FL_8B80CE                      ; $8C82FE |
  LDA.W #$30CC                              ; $8C8302 |
  STA.B $00,X                               ; $8C8305 |
  STZ.B $1E,X                               ; $8C8307 |
  LDA.W #$0003                              ; $8C8309 |
  STA.B $1A,X                               ; $8C830C |
  BRA CODE_8C8354                           ; $8C830E |

CODE_JL_8C8310:
  STZ.B $00                                 ; $8C8310 |
  LDA.W #$0002                              ; $8C8312 |
  STA.B $02                                 ; $8C8315 |
  PHX                                       ; $8C8317 |

CODE_8C8318:
  LDA.B $00                                 ; $8C8318 |
  ASL A                                     ; $8C831A |
  TAY                                       ; $8C831B |
  PHB                                       ; $8C831C |
  PHK                                       ; $8C831D |
  PLB                                       ; $8C831E |
  LDA.W CODE_008395,Y                       ; $8C831F |
  PLB                                       ; $8C8322 |
  TAY                                       ; $8C8323 |
  JSL.L CODE_FL_809622                      ; $8C8324 |
  LDA.W #$0008                              ; $8C8328 |
  STA.B $04                                 ; $8C832B |

CODE_8C832D:
  LDA.W #$3310                              ; $8C832D |
  JSL.L CODE_FL_809658                      ; $8C8330 |
  DEC.B $04                                 ; $8C8334 |
  BNE CODE_8C832D                           ; $8C8336 |
  JSL.L CODE_FL_809663                      ; $8C8338 |
  INC.B $00                                 ; $8C833C |
  DEC.B $02                                 ; $8C833E |
  BNE CODE_8C8318                           ; $8C8340 |
  PLX                                       ; $8C8342 |
  LDA.W #$3000                              ; $8C8343 |
  STA.B $00,X                               ; $8C8346 |
  STZ.B $1E,X                               ; $8C8348 |
  LDA.W #$0020                              ; $8C834A |
  STA.B $2C,X                               ; $8C834D |
  LDA.W #$0000                              ; $8C834F |
  STA.B $3A,X                               ; $8C8352 |

CODE_8C8354:
  RTL                                       ; $8C8354 |

  db $43,$50,$B1,$83,$44,$50,$D5,$83        ; $8C8355 |
  db $45,$50,$C5,$83,$46,$50,$BD,$83        ; $8C835D |
  db $47,$50,$AD,$83,$48,$50,$CD,$83        ; $8C8365 |
  db $49,$50,$A5,$83,$4A,$50,$D5,$83        ; $8C836D |
  db $43,$50,$99,$83,$44,$50,$A9,$83        ; $8C8375 |
  db $45,$50,$C9,$83,$46,$50,$CD,$83        ; $8C837D |
  db $47,$50,$B1,$83,$48,$50,$D5,$83        ; $8C8385 |
  db $49,$50,$D1,$83,$4A,$50,$99,$83        ; $8C838D |
  db $43,$50,$63,$50,$10,$33,$10,$33        ; $8C8395 |
  db $03,$33,$13,$33,$05,$33,$15,$33        ; $8C839D |
  db $06,$33,$16,$33,$0A,$33,$1A,$33        ; $8C83A5 |
  db $0B,$33,$1B,$33,$20,$33,$30,$33        ; $8C83AD |
  db $23,$33,$33,$33,$24,$33,$34,$33        ; $8C83B5 |
  db $2F,$33,$3F,$33,$42,$33,$52,$33        ; $8C83BD |
  db $49,$33,$59,$33,$4B,$33,$5B,$33        ; $8C83C5 |
  db $4E,$33,$5E,$33,$8C,$33,$9B,$33        ; $8C83CD |
  db $8E,$33,$10,$33                        ; $8C83D5 |

CODE_8C83D9:
  LDA.B $3C,X                               ; $8C83D9 |
  PHX                                       ; $8C83DB |
  ASL A                                     ; $8C83DC |
  TAX                                       ; $8C83DD |
  LDA.L PTR16_8C83E8,X                      ; $8C83DE |
  PLX                                       ; $8C83E2 |
  STA.B $00                                 ; $8C83E3 |
  JMP.W ($0000)                             ; $8C83E5 |

PTR16_8C83E8:
  dw CODE_8C83EC                            ; $8C83E8 |
  dw CODE_8C83FC                            ; $8C83EA |

CODE_8C83EC:
  JSL.L CODE_FL_85B016                      ; $8C83EC |
  LDA.W #$300A                              ; $8C83F0 |
  JSL.L CODE_FL_86CAEE                      ; $8C83F3 |
  STZ.B $4E,X                               ; $8C83F7 |
  INC.B $3C,X                               ; $8C83F9 |
  RTL                                       ; $8C83FB |

CODE_8C83FC:
  LDA.B $20,X                               ; $8C83FC |
  BEQ CODE_8C843C                           ; $8C83FE |
  LDA.B $1C,X                               ; $8C8400 |
  CMP.W #$0006                              ; $8C8402 |
  BCC CODE_8C8432                           ; $8C8405 |
  CMP.W #$0021                              ; $8C8407 |
  BCS CODE_8C8432                           ; $8C840A |
  CMP.W #$0009                              ; $8C840C |
  BCC CODE_8C841A                           ; $8C840F |
  LDA.W #$0200                              ; $8C8411 |
  STA.W $0428                               ; $8C8414 |
  STA.W $04E8                               ; $8C8417 |

CODE_8C841A:
  LDA.B $20,X                               ; $8C841A |
  CMP.W #$0001                              ; $8C841C |
  BNE CODE_8C8432                           ; $8C841F |
  LDA.B $1C,X                               ; $8C8421 |
  CMP.W #$0006                              ; $8C8423 |
  BNE CODE_8C842F                           ; $8C8426 |
  LDA.W #$00A8                              ; $8C8428 |
  JSL.L CODE_FL_8089BD                      ; $8C842B |

CODE_8C842F:
  JMP.W CODE_JP_8C89F3                      ; $8C842F |

CODE_8C8432:
  LDA.B $1C,X                               ; $8C8432 |
  CMP.W #$0021                              ; $8C8434 |
  BNE CODE_8C843B                           ; $8C8437 |
  STZ.B $E4                                 ; $8C8439 |

CODE_8C843B:
  RTL                                       ; $8C843B |

CODE_8C843C:
  JSR.W CODE_FN_8C895D                      ; $8C843C |
  LDA.W #$0002                              ; $8C843F |
  STA.B $1A,X                               ; $8C8442 |
  JSL.L CODE_FL_85B00E                      ; $8C8444 |
  STZ.W $1C9E                               ; $8C8448 |
  BRL CODE_JL_8C8310                        ; $8C844B |

CODE_8C844E:
  LDA.B $3E,X                               ; $8C844E |
  PHX                                       ; $8C8450 |
  ASL A                                     ; $8C8451 |
  TAX                                       ; $8C8452 |
  LDA.L PTR16_8C845D,X                      ; $8C8453 |
  PLX                                       ; $8C8457 |
  STA.B $00                                 ; $8C8458 |
  JMP.W ($0000)                             ; $8C845A |

PTR16_8C845D:
  dw CODE_8C8461                            ; $8C845D |
  dw CODE_8C84B3                            ; $8C845F |

CODE_8C8461:
  STZ.B $00                                 ; $8C8461 |
  LDA.W #$0008                              ; $8C8463 |
  STA.B $02                                 ; $8C8466 |
  PHX                                       ; $8C8468 |

CODE_8C8469:
  LDA.B $00                                 ; $8C8469 |
  ASL A                                     ; $8C846B |
  ASL A                                     ; $8C846C |
  TAY                                       ; $8C846D |
  PHB                                       ; $8C846E |
  PHK                                       ; $8C846F |
  PLB                                       ; $8C8470 |
  LDA.W CODE_0084D3,Y                       ; $8C8471 |
  PLB                                       ; $8C8474 |
  PHY                                       ; $8C8475 |
  TAY                                       ; $8C8476 |
  JSL.L CODE_FL_80961D                      ; $8C8477 |
  PLY                                       ; $8C847B |
  PHB                                       ; $8C847C |
  PHK                                       ; $8C847D |
  PLB                                       ; $8C847E |
  LDA.W CODE_0084D5,Y                       ; $8C847F |
  PLB                                       ; $8C8482 |
  TAY                                       ; $8C8483 |
  LDA.W #$0002                              ; $8C8484 |
  STA.B $04                                 ; $8C8487 |

CODE_8C8489:
  PHB                                       ; $8C8489 |
  PHK                                       ; $8C848A |
  PLB                                       ; $8C848B |
  LDA.W $0000,Y                             ; $8C848C |
  PLB                                       ; $8C848F |
  JSL.L CODE_FL_809658                      ; $8C8490 |
  INY                                       ; $8C8494 |
  INY                                       ; $8C8495 |
  DEC.B $04                                 ; $8C8496 |
  BNE CODE_8C8489                           ; $8C8498 |
  JSL.L CODE_FL_809663                      ; $8C849A |
  INC.B $00                                 ; $8C849E |
  DEC.B $02                                 ; $8C84A0 |
  BNE CODE_8C8469                           ; $8C84A2 |
  PLX                                       ; $8C84A4 |
  JSL.L CODE_FL_85B016                      ; $8C84A5 |
  LDA.W #$310E                              ; $8C84A9 |
  STA.B $00,X                               ; $8C84AC |
  STZ.B $1E,X                               ; $8C84AE |
  INC.B $3E,X                               ; $8C84B0 |
  RTL                                       ; $8C84B2 |

CODE_8C84B3:
  LDA.W $1CA4                               ; $8C84B3 |
  BEQ CODE_8C84D2                           ; $8C84B6 |
  LDA.W #$3300                              ; $8C84B8 |
  STA.B $00,X                               ; $8C84BB |
  LDA.W #$0010                              ; $8C84BD |
  STA.B $2C,X                               ; $8C84C0 |
  LDA.W #$0005                              ; $8C84C2 |
  STA.B $4A,X                               ; $8C84C5 |
  JSR.W CODE_FN_8C895D                      ; $8C84C7 |
  STZ.W $1CA4                               ; $8C84CA |
  LDA.W #$0005                              ; $8C84CD |
  STA.B $1A,X                               ; $8C84D0 |

CODE_8C84D2:
  RTL                                       ; $8C84D2 |

  db $43,$50,$99,$83,$44,$50,$99,$83        ; $8C84D3 |
  db $45,$50,$99,$83,$46,$50,$D1,$83        ; $8C84DB |
  db $47,$50,$D1,$83,$48,$50,$D1,$83        ; $8C84E3 |
  db $49,$50,$99,$83,$4A,$50,$99,$83        ; $8C84EB |

CODE_8C84F3:
  LDA.B $3E,X                               ; $8C84F3 |
  PHX                                       ; $8C84F5 |
  ASL A                                     ; $8C84F6 |
  TAX                                       ; $8C84F7 |
  LDA.L PTR16_8C8502,X                      ; $8C84F8 |
  PLX                                       ; $8C84FC |
  STA.B $00                                 ; $8C84FD |
  JMP.W ($0000)                             ; $8C84FF |

PTR16_8C8502:
  dw CODE_8C850A                            ; $8C8502 |
  dw CODE_8C8553                            ; $8C8504 |
  dw CODE_8C8575                            ; $8C8506 |
  dw CODE_8C8587                            ; $8C8508 |

CODE_8C850A:
  JSL.L CODE_FL_86C70D                      ; $8C850A |
  STZ.B $00                                 ; $8C850E |
  LDA.W #$0004                              ; $8C8510 |
  STA.B $02                                 ; $8C8513 |
  PHX                                       ; $8C8515 |

CODE_8C8516:
  LDA.B $00                                 ; $8C8516 |
  ASL A                                     ; $8C8518 |
  TAY                                       ; $8C8519 |
  PHB                                       ; $8C851A |
  PHK                                       ; $8C851B |
  PLB                                       ; $8C851C |
  LDA.W CODE_0085C4,Y                       ; $8C851D |
  PLB                                       ; $8C8520 |
  TAY                                       ; $8C8521 |
  JSL.L CODE_FL_809622                      ; $8C8522 |
  LDA.W #$001E                              ; $8C8526 |
  STA.B $04                                 ; $8C8529 |

CODE_8C852B:
  LDA.W #$3300                              ; $8C852B |
  JSL.L CODE_FL_809658                      ; $8C852E |
  DEC.B $04                                 ; $8C8532 |
  BNE CODE_8C852B                           ; $8C8534 |
  JSL.L CODE_FL_809663                      ; $8C8536 |
  INC.B $00                                 ; $8C853A |
  DEC.B $02                                 ; $8C853C |
  BNE CODE_8C8516                           ; $8C853E |
  PLX                                       ; $8C8540 |
  LDA.W #$32BC                              ; $8C8541 |
  STA.B $00,X                               ; $8C8544 |
  LDA.W #$0400                              ; $8C8546 |
  STA.B $2A,X                               ; $8C8549 |
  LDA.W #$0080                              ; $8C854B |
  STA.B $4C,X                               ; $8C854E |
  INC.B $3E,X                               ; $8C8550 |
  RTL                                       ; $8C8552 |

CODE_8C8553:
  JSL.L CODE_FL_8CFEF6                      ; $8C8553 |
  BPL CODE_8C8574                           ; $8C8557 |
  LDA.W #$001B                              ; $8C8559 |
  JSL.L push_sound_queue                    ; $8C855C |
  LDA.W #$3300                              ; $8C8560 |
  STA.B $00,X                               ; $8C8563 |
  LDA.W #$0010                              ; $8C8565 |
  STA.B $2C,X                               ; $8C8568 |
  DEC.B $4A,X                               ; $8C856A |
  BEQ CODE_8C8572                           ; $8C856C |
  DEC.B $3E,X                               ; $8C856E |
  BRA CODE_8C8574                           ; $8C8570 |

CODE_8C8572:
  INC.B $3E,X                               ; $8C8572 |

CODE_8C8574:
  RTL                                       ; $8C8574 |

CODE_8C8575:
  JSL.L CODE_FL_85B016                      ; $8C8575 |
  JSL.L CODE_FL_86C70D                      ; $8C8579 |
  LDA.W #$300B                              ; $8C857D |
  JSL.L CODE_FL_86CAEE                      ; $8C8580 |
  INC.B $3E,X                               ; $8C8584 |
  RTL                                       ; $8C8586 |

CODE_8C8587:
  LDA.B $20,X                               ; $8C8587 |
  BNE CODE_8C85C3                           ; $8C8589 |
  JSL.L CODE_FL_85A9B7                      ; $8C858B |
  LDA.W #$33B8                              ; $8C858F |
  STA.B $00,X                               ; $8C8592 |
  STZ.B $1E,X                               ; $8C8594 |
  LDA.W #$0010                              ; $8C8596 |
  STA.B $2C,X                               ; $8C8599 |
  LDA.W #$000F                              ; $8C859B |
  STA.B $36,X                               ; $8C859E |
  STA.W $1C96                               ; $8C85A0 |
  LDA.W #$FF00                              ; $8C85A3 |
  STA.W $1C8E                               ; $8C85A6 |
  LDA.W #$0000                              ; $8C85A9 |
  STA.W $1C90                               ; $8C85AC |
  LDA.W #$0400                              ; $8C85AF |
  STA.W $1C92                               ; $8C85B2 |
  LDA.W #$0080                              ; $8C85B5 |
  STA.W $1C94                               ; $8C85B8 |
  JSR.W CODE_FN_8C895D                      ; $8C85BB |
  LDA.W #$0006                              ; $8C85BE |
  STA.B $1A,X                               ; $8C85C1 |

CODE_8C85C3:
  RTL                                       ; $8C85C3 |

  db $21,$50,$41,$50,$61,$50,$81,$50        ; $8C85C4 |

CODE_8C85CC:
  JSL.L CODE_FL_86C70D                      ; $8C85CC |
  LDA.W #$35F0                              ; $8C85D0 |
  STA.B $00,X                               ; $8C85D3 |
  LDA.W #$0010                              ; $8C85D5 |
  STA.B $2C,X                               ; $8C85D8 |
  JSL.L CODE_FL_86C4A5                      ; $8C85DA |
  JSL.L CODE_FL_86C573                      ; $8C85DE |
  BPL CODE_8C85E8                           ; $8C85E2 |
  EOR.W #$FFFF                              ; $8C85E4 |
  INC A                                     ; $8C85E7 |

CODE_8C85E8:
  CMP.W #$0010                              ; $8C85E8 |
  BCS CODE_8C85F4                           ; $8C85EB |
  LDA.W #$0007                              ; $8C85ED |
  STA.B $1A,X                               ; $8C85F0 |
  BRA CODE_8C85FE                           ; $8C85F2 |

CODE_8C85F4:
  LDA.W #$0004                              ; $8C85F4 |
  STA.B $4A,X                               ; $8C85F7 |
  LDA.W #$0008                              ; $8C85F9 |
  STA.B $1A,X                               ; $8C85FC |

CODE_8C85FE:
  RTL                                       ; $8C85FE |

CODE_8C85FF:
  LDA.B $3C,X                               ; $8C85FF |
  PHX                                       ; $8C8601 |
  ASL A                                     ; $8C8602 |
  TAX                                       ; $8C8603 |
  LDA.L PTR16_8C860E,X                      ; $8C8604 |
  PLX                                       ; $8C8608 |
  STA.B $00                                 ; $8C8609 |
  JMP.W ($0000)                             ; $8C860B |

PTR16_8C860E:
  dw CODE_8C8616                            ; $8C860E |
  dw CODE_8C862C                            ; $8C8610 |
  dw CODE_8C8641                            ; $8C8612 |
  dw CODE_8C8675                            ; $8C8614 |

CODE_8C8616:
  JSL.L CODE_FL_86C70D                      ; $8C8616 |
  LDA.W #$3624                              ; $8C861A |
  STA.B $00,X                               ; $8C861D |
  LDA.W #$0400                              ; $8C861F |
  STA.B $2A,X                               ; $8C8622 |
  LDA.W #$0080                              ; $8C8624 |
  STA.B $4C,X                               ; $8C8627 |
  INC.B $3C,X                               ; $8C8629 |
  RTL                                       ; $8C862B |

CODE_8C862C:
  JSL.L CODE_FL_8CFEF6                      ; $8C862C |
  BPL CODE_8C8640                           ; $8C8630 |
  LDA.W #$35F0                              ; $8C8632 |
  STA.B $00,X                               ; $8C8635 |
  LDA.W #$001B                              ; $8C8637 |
  JSL.L push_sound_queue                    ; $8C863A |
  INC.B $3C,X                               ; $8C863E |

CODE_8C8640:
  RTL                                       ; $8C8640 |

CODE_8C8641:
  LDA.B $04,X                               ; $8C8641 |
  AND.W #$DFDF                              ; $8C8643 |
  STA.B $04,X                               ; $8C8646 |
  JSL.L CODE_FL_85B46F                      ; $8C8648 |
  LDA.B $1A                                 ; $8C864C |
  CMP.W #$0001                              ; $8C864E |
  BEQ CODE_8C8661                           ; $8C8651 |
  LDA.W #$300C                              ; $8C8653 |
  JSL.L CODE_FL_86CAEE                      ; $8C8656 |
  LDA.W #$0100                              ; $8C865A |
  STA.B $26,X                               ; $8C865D |
  BRA CODE_8C866D                           ; $8C865F |

CODE_8C8661:
  LDA.W #$300D                              ; $8C8661 |
  JSL.L CODE_FL_86CAEE                      ; $8C8664 |
  LDA.W #$FF00                              ; $8C8668 |
  STA.B $26,X                               ; $8C866B |

CODE_8C866D:
  LDA.W #$0001                              ; $8C866D |
  STA.B $46,X                               ; $8C8670 |
  INC.B $3C,X                               ; $8C8672 |
  RTL                                       ; $8C8674 |

CODE_8C8675:
  DEC.B $46,X                               ; $8C8675 |
  BNE CODE_8C8685                           ; $8C8677 |
  LDA.W #$0017                              ; $8C8679 |
  JSL.L push_sound_queue                    ; $8C867C |
  LDA.W #$000A                              ; $8C8680 |
  STA.B $46,X                               ; $8C8683 |

CODE_8C8685:
  JSL.L CODE_FL_85B2B2                      ; $8C8685 |
  BEQ CODE_8C86A1                           ; $8C8689 |
  LDA.W #$33B8                              ; $8C868B |
  STA.B $00,X                               ; $8C868E |
  STZ.B $1E,X                               ; $8C8690 |
  LDA.W #$0010                              ; $8C8692 |
  STA.B $2C,X                               ; $8C8695 |
  STZ.B $46,X                               ; $8C8697 |
  JSR.W CODE_FN_8C895D                      ; $8C8699 |
  LDA.W #$0006                              ; $8C869C |
  STA.B $1A,X                               ; $8C869F |

CODE_8C86A1:
  RTL                                       ; $8C86A1 |

CODE_8C86A2:
  LDA.B $3C,X                               ; $8C86A2 |
  PHX                                       ; $8C86A4 |
  ASL A                                     ; $8C86A5 |
  TAX                                       ; $8C86A6 |
  LDA.L PTR16_8C86B1,X                      ; $8C86A7 |
  PLX                                       ; $8C86AB |
  STA.B $00                                 ; $8C86AC |
  JMP.W ($0000)                             ; $8C86AE |

PTR16_8C86B1:
  dw CODE_8C86B9                            ; $8C86B1 |
  dw CODE_8C8706                            ; $8C86B3 |
  dw CODE_8C8732                            ; $8C86B5 |
  dw CODE_8C873E                            ; $8C86B7 |

CODE_8C86B9:
  JSL.L CODE_FL_86C70D                      ; $8C86B9 |
  LDA.W #$3624                              ; $8C86BD |
  STA.B $00,X                               ; $8C86C0 |
  JSL.L CODE_FL_86C4A5                      ; $8C86C2 |
  JSL.L CODE_FL_86C486                      ; $8C86C6 |
  LDA.W $1C8E                               ; $8C86CA |
  JSL.L CODE_FL_86C887                      ; $8C86CD |
  LDA.W $1C90                               ; $8C86D1 |
  BEQ CODE_8C86F9                           ; $8C86D4 |
  JSL.L CODE_FL_85B51A                      ; $8C86D6 |
  BPL CODE_8C86E0                           ; $8C86DA |
  EOR.W #$FFFF                              ; $8C86DC |
  INC A                                     ; $8C86DF |

CODE_8C86E0:
  STA.B $00                                 ; $8C86E0 |
  LDA.B ($48,X)                             ; $8C86E2 |
  TAY                                       ; $8C86E4 |
  SEC                                       ; $8C86E5 |
  LDA.W $000D,Y                             ; $8C86E6 |
  SBC.B $0D,X                               ; $8C86E9 |
  BPL CODE_8C86F5                           ; $8C86EB |
  LDA.B $00                                 ; $8C86ED |
  EOR.W #$FFFF                              ; $8C86EF |
  INC A                                     ; $8C86F2 |
  STA.B $00                                 ; $8C86F3 |

CODE_8C86F5:
  LDA.B $00                                 ; $8C86F5 |
  STA.B $28,X                               ; $8C86F7 |

CODE_8C86F9:
  LDA.W $1C92                               ; $8C86F9 |
  STA.B $2A,X                               ; $8C86FC |
  LDA.W $1C94                               ; $8C86FE |
  STA.B $4C,X                               ; $8C8701 |
  INC.B $3C,X                               ; $8C8703 |
  RTL                                       ; $8C8705 |

CODE_8C8706:
  JSL.L CODE_FL_85B291                      ; $8C8706 |
  LDA.B $11,X                               ; $8C870A |
  BNE CODE_8C8731                           ; $8C870C |
  STZ.B $26,X                               ; $8C870E |
  STZ.B $28,X                               ; $8C8710 |
  JSL.L CODE_FL_85B50F                      ; $8C8712 |
  LDA.W #$35F0                              ; $8C8716 |
  STA.B $00,X                               ; $8C8719 |
  LDA.W #$001B                              ; $8C871B |
  JSL.L push_sound_queue                    ; $8C871E |
  DEC.B $4A,X                               ; $8C8722 |
  BEQ CODE_8C872F                           ; $8C8724 |
  LDA.W #$0010                              ; $8C8726 |
  STA.B $2C,X                               ; $8C8729 |
  DEC.B $3C,X                               ; $8C872B |
  BRA CODE_8C8731                           ; $8C872D |

CODE_8C872F:
  INC.B $3C,X                               ; $8C872F |

CODE_8C8731:
  RTL                                       ; $8C8731 |

CODE_8C8732:
  LDA.W #$300E                              ; $8C8732 |
  JSL.L CODE_FL_86CAEE                      ; $8C8735 |
  STZ.B $4E,X                               ; $8C8739 |
  INC.B $3C,X                               ; $8C873B |
  RTL                                       ; $8C873D |

CODE_8C873E:
  LDA.B $20,X                               ; $8C873E |
  BEQ CODE_8C8766                           ; $8C8740 |
  LDA.B $1C,X                               ; $8C8742 |
  CMP.W #$0006                              ; $8C8744 |
  BCC CODE_8C877A                           ; $8C8747 |
  CMP.W #$0021                              ; $8C8749 |
  BCS CODE_8C877A                           ; $8C874C |
  LDA.B $20,X                               ; $8C874E |
  CMP.W #$0001                              ; $8C8750 |
  BNE CODE_8C877A                           ; $8C8753 |
  LDA.B $1C,X                               ; $8C8755 |
  CMP.W #$0006                              ; $8C8757 |
  BNE CODE_8C8763                           ; $8C875A |
  LDA.W #$00A8                              ; $8C875C |
  JSL.L CODE_FL_8089BD                      ; $8C875F |

CODE_8C8763:
  JMP.W CODE_JP_8C89F3                      ; $8C8763 |

CODE_8C8766:
  LDA.W #$33B8                              ; $8C8766 |
  STA.B $00,X                               ; $8C8769 |
  STZ.B $1E,X                               ; $8C876B |
  LDA.W #$0010                              ; $8C876D |
  STA.B $2C,X                               ; $8C8770 |
  JSR.W CODE_FN_8C895D                      ; $8C8772 |
  LDA.W #$0006                              ; $8C8775 |
  STA.B $1A,X                               ; $8C8778 |

CODE_8C877A:
  RTL                                       ; $8C877A |

CODE_8C877B:
  LDA.B $44,X                               ; $8C877B |
  PHX                                       ; $8C877D |
  ASL A                                     ; $8C877E |
  TAX                                       ; $8C877F |
  LDA.L PTR16_8C878A,X                      ; $8C8780 |
  PLX                                       ; $8C8784 |
  STA.B $00                                 ; $8C8785 |
  JMP.W ($0000)                             ; $8C8787 |

PTR16_8C878A:
  dw CODE_8C8790                            ; $8C878A |
  dw CODE_8C87C1                            ; $8C878C |
  dw CODE_8C87E2                            ; $8C878E |

CODE_8C8790:
  JSL.L CODE_FL_85A5A7                      ; $8C8790 |
  LDA.W #$0060                              ; $8C8794 |
  STA.B $38,X                               ; $8C8797 |
  STZ.B $28,X                               ; $8C8799 |
  STZ.B $26,X                               ; $8C879B |
  LDA.B $11,X                               ; $8C879D |
  BNE CODE_8C87B4                           ; $8C879F |
  LDA.W #$33B8                              ; $8C87A1 |
  STA.B $00,X                               ; $8C87A4 |
  STZ.B $1E,X                               ; $8C87A6 |
  LDA.W #$0030                              ; $8C87A8 |
  STA.B $2C,X                               ; $8C87AB |
  LDA.W #$0002                              ; $8C87AD |
  STA.B $44,X                               ; $8C87B0 |
  BRA CODE_8C87C0                           ; $8C87B2 |

CODE_8C87B4:
  LDA.W #$3660                              ; $8C87B4 |
  STA.B $00,X                               ; $8C87B7 |
  STZ.B $1E,X                               ; $8C87B9 |
  LDA.W #$0001                              ; $8C87BB |
  STA.B $44,X                               ; $8C87BE |

CODE_8C87C0:
  RTL                                       ; $8C87C0 |

CODE_8C87C1:
  JSL.L CODE_FL_8CFEF6                      ; $8C87C1 |
  BPL CODE_8C87E1                           ; $8C87C5 |
  JSL.L CODE_FL_85B50F                      ; $8C87C7 |
  LDA.W #$001B                              ; $8C87CB |
  JSL.L push_sound_queue                    ; $8C87CE |
  LDA.W #$33B8                              ; $8C87D2 |
  STA.B $00,X                               ; $8C87D5 |
  LDA.W #$0030                              ; $8C87D7 |
  STA.B $2C,X                               ; $8C87DA |
  LDA.W #$0002                              ; $8C87DC |
  STA.B $44,X                               ; $8C87DF |

CODE_8C87E1:
  RTL                                       ; $8C87E1 |

CODE_8C87E2:
  LDA.W #$0002                              ; $8C87E2 |
  JSL.L CODE_FL_8CFD0B                      ; $8C87E5 |
  JSL.L CODE_FL_86C70D                      ; $8C87E9 |
  LDA.W #$0002                              ; $8C87ED |
  JSL.L CODE_FL_8CFD3F                      ; $8C87F0 |
  JSR.W CODE_FN_8C8A5D                      ; $8C87F4 |
  JSR.W CODE_FN_8C895D                      ; $8C87F7 |
  LDA.W #$0006                              ; $8C87FA |
  STA.B $1A,X                               ; $8C87FD |
  RTL                                       ; $8C87FF |

CODE_8C8800:
  LDA.B $44,X                               ; $8C8800 |
  PHX                                       ; $8C8802 |
  ASL A                                     ; $8C8803 |
  TAX                                       ; $8C8804 |
  LDA.L PTR16_8C880F,X                      ; $8C8805 |
  PLX                                       ; $8C8809 |
  STA.B $00                                 ; $8C880A |
  JMP.W ($0000)                             ; $8C880C |

PTR16_8C880F:
  dw CODE_8C8817                            ; $8C880F |
  dw CODE_8C8847                            ; $8C8811 |
  dw CODE_8C8869                            ; $8C8813 |
  dw CODE_8C88AA                            ; $8C8815 |

CODE_8C8817:
  JSL.L CODE_FL_85A9BF                      ; $8C8817 |
  JSL.L CODE_FL_85A9F7                      ; $8C881B |
  STZ.B $28,X                               ; $8C881F |
  STZ.B $26,X                               ; $8C8821 |
  LDA.B $11,X                               ; $8C8823 |
  BNE CODE_8C883A                           ; $8C8825 |
  LDA.W #$33B8                              ; $8C8827 |
  STA.B $00,X                               ; $8C882A |
  STZ.B $1E,X                               ; $8C882C |
  LDA.W #$0060                              ; $8C882E |
  STA.B $2C,X                               ; $8C8831 |
  LDA.W #$0002                              ; $8C8833 |
  STA.B $44,X                               ; $8C8836 |
  BRA CODE_8C8846                           ; $8C8838 |

CODE_8C883A:
  LDA.W #$3660                              ; $8C883A |
  STA.B $00,X                               ; $8C883D |
  STZ.B $1E,X                               ; $8C883F |
  LDA.W #$0001                              ; $8C8841 |
  STA.B $44,X                               ; $8C8844 |

CODE_8C8846:
  RTL                                       ; $8C8846 |

CODE_8C8847:
  JSL.L CODE_FL_8CFEF6                      ; $8C8847 |
  BPL CODE_8C8868                           ; $8C884B |
  LDA.W #$001B                              ; $8C884D |
  JSL.L push_sound_queue                    ; $8C8850 |
  LDA.W #$0001                              ; $8C8854 |
  STA.B $46,X                               ; $8C8857 |
  LDA.W #$33B8                              ; $8C8859 |
  STA.B $00,X                               ; $8C885C |
  LDA.W #$0060                              ; $8C885E |
  STA.B $2C,X                               ; $8C8861 |
  LDA.W #$0002                              ; $8C8863 |
  STA.B $44,X                               ; $8C8866 |

CODE_8C8868:
  RTL                                       ; $8C8868 |

CODE_8C8869:
  DEC.B $46,X                               ; $8C8869 |
  BNE CODE_8C8879                           ; $8C886B |
  LDA.W #$0021                              ; $8C886D |
  JSL.L push_sound_queue                    ; $8C8870 |
  LDA.W #$000A                              ; $8C8874 |
  STA.B $46,X                               ; $8C8877 |

CODE_8C8879:
  LDA.W $1C38                               ; $8C8879 |
  AND.W #$0007                              ; $8C887C |
  BNE CODE_8C8885                           ; $8C887F |
  JSL.L CODE_FL_8CFBB6                      ; $8C8881 |

CODE_8C8885:
  LDA.W #$0002                              ; $8C8885 |
  JSL.L CODE_FL_8CFD0B                      ; $8C8888 |
  JSL.L CODE_FL_86C70D                      ; $8C888C |
  LDA.W #$0002                              ; $8C8890 |
  JSL.L CODE_FL_8CFD3F                      ; $8C8893 |
  PHX                                       ; $8C8897 |
  LDY.W #$B9F7                              ; $8C8898 |
  JSL.L CODE_FL_80C26D                      ; $8C889B |
  PLX                                       ; $8C889F |
  STZ.B $46,X                               ; $8C88A0 |
  LDA.W #$0080                              ; $8C88A2 |
  STA.B $2C,X                               ; $8C88A5 |
  INC.B $44,X                               ; $8C88A7 |
  RTL                                       ; $8C88A9 |

CODE_8C88AA:
  LDA.B $46,X                               ; $8C88AA |
  BNE CODE_8C88B7                           ; $8C88AC |
  LDA.W #$0023                              ; $8C88AE |
  JSL.L push_sound_queue                    ; $8C88B1 |
  INC.B $46,X                               ; $8C88B5 |

CODE_8C88B7:
  LDA.W $1C38                               ; $8C88B7 |
  AND.W #$0003                              ; $8C88BA |
  BNE CODE_8C88C3                           ; $8C88BD |
  JSL.L CODE_FL_8CFBAE                      ; $8C88BF |

CODE_8C88C3:
  JSL.L CODE_FL_86C70D                      ; $8C88C3 |
  LDA.W #$000D                              ; $8C88C7 |
  JSL.L push_sound_queue                    ; $8C88CA |
  JSL.L CODE_FL_8CFAF3                      ; $8C88CE |
  STZ.B $00,X                               ; $8C88D2 |
  STZ.B $20,X                               ; $8C88D4 |
  STZ.B $1E,X                               ; $8C88D6 |
  INC.B $1A,X                               ; $8C88D8 |
  RTL                                       ; $8C88DA |

CODE_8C88DB:
  LDA.B $3A,X                               ; $8C88DB |
  PHX                                       ; $8C88DD |
  ASL A                                     ; $8C88DE |
  TAX                                       ; $8C88DF |
  LDA.L PTR16_8C88EA,X                      ; $8C88E0 |
  PLX                                       ; $8C88E4 |
  STA.B $00                                 ; $8C88E5 |
  JMP.W ($0000)                             ; $8C88E7 |

PTR16_8C88EA:
  dw CODE_8C88F6                            ; $8C88EA |
  dw CODE_8C8906                            ; $8C88EC |
  dw CODE_8C8915                            ; $8C88EE |
  dw CODE_8C891E                            ; $8C88F0 |
  dw CODE_8C8933                            ; $8C88F2 |
  dw CODE_8C8945                            ; $8C88F4 |

CODE_8C88F6:
  LDA.W #$8001                              ; $8C88F6 |
  STA.B $E4                                 ; $8C88F9 |
  JSL.L CODE_FL_8B80CE                      ; $8C88FB |
  JSL.L CODE_FL_83852F                      ; $8C88FF |
  INC.B $3A,X                               ; $8C8903 |
  RTL                                       ; $8C8905 |

CODE_8C8906:
  LDA.W #$0080                              ; $8C8906 |
  LDY.W #$00A0                              ; $8C8909 |
  JSL.L CODE_FL_8B8111                      ; $8C890C |
  BNE CODE_8C8914                           ; $8C8910 |
  INC.B $3A,X                               ; $8C8912 |

CODE_8C8914:
  RTL                                       ; $8C8914 |

CODE_8C8915:
  JSL.L CODE_FL_8B874A                      ; $8C8915 |
  BCS CODE_8C891D                           ; $8C8919 |
  INC.B $3A,X                               ; $8C891B |

CODE_8C891D:
  RTL                                       ; $8C891D |

CODE_8C891E:
  LDA.W #$290D                              ; $8C891E |
  JSL.L CODE_FL_809934                      ; $8C8921 |
  BCC CODE_8C8932                           ; $8C8925 |
  JSL.L CODE_FL_8482E4                      ; $8C8927 |
  LDA.W #$0040                              ; $8C892B |
  STA.B $2C,X                               ; $8C892E |
  INC.B $3A,X                               ; $8C8930 |

CODE_8C8932:
  RTL                                       ; $8C8932 |

CODE_8C8933:
  JSL.L CODE_FL_86C70D                      ; $8C8933 |
  JSL.L CODE_FL_87E3B7                      ; $8C8937 |
  BCC CODE_8C8944                           ; $8C893B |
  LDA.W #$0040                              ; $8C893D |
  STA.B $2C,X                               ; $8C8940 |
  INC.B $3A,X                               ; $8C8942 |

CODE_8C8944:
  RTL                                       ; $8C8944 |

CODE_8C8945:
  JSL.L CODE_FL_86C70D                      ; $8C8945 |
  LDA.W #$057E                              ; $8C8949 |
  JSL.L CODE_FL_8CF9C3                      ; $8C894C |
  LDA.L $700758                             ; $8C8950 |
  INC A                                     ; $8C8954 |
  STA.L $700758                             ; $8C8955 |
  JML.L CODE_JL_8482F8                      ; $8C8959 |

CODE_FN_8C895D:
  LDA.W #$0000                              ; $8C895D |
  STA.B $3A,X                               ; $8C8960 |
  STA.B $3C,X                               ; $8C8962 |
  STA.B $3E,X                               ; $8C8964 |
  STA.B $44,X                               ; $8C8966 |
  RTS                                       ; $8C8968 |

CODE_FN_8C8969:
  LDA.B $34,X                               ; $8C8969 |
  AND.W #$2000                              ; $8C896B |
  BEQ CODE_8C8996                           ; $8C896E |
  LDA.W $1C9E                               ; $8C8970 |
  BNE CODE_8C897C                           ; $8C8973 |
  LDA.B $32,X                               ; $8C8975 |
  CMP.W #$8000                              ; $8C8977 |
  BCC CODE_8C8996                           ; $8C897A |

CODE_8C897C:
  STZ.B $32,X                               ; $8C897C |
  LDA.W #$0003                              ; $8C897E |
  STA.B $1A,X                               ; $8C8981 |
  BRA CODE_8C8996                           ; $8C8983 |

CODE_FN_8C8985:
  LDA.B $1A,X                               ; $8C8985 |
  BEQ CODE_8C8996                           ; $8C8987 |
  LDA.W $1CA0                               ; $8C8989 |
  BEQ CODE_8C8996                           ; $8C898C |
  STZ.W $1CA0                               ; $8C898E |
  LDA.W #$0004                              ; $8C8991 |
  STA.B $1A,X                               ; $8C8994 |

CODE_8C8996:
  RTS                                       ; $8C8996 |

CODE_FN_8C8997:
  LDA.W #$00AB                              ; $8C8997 |
  JSL.L CODE_FL_86C9A7                      ; $8C899A |
  BCS CODE_8C89F2                           ; $8C899E |
  LDA.B $4E,X                               ; $8C89A0 |
  STA.W $004E,Y                             ; $8C89A2 |
  SEC                                       ; $8C89A5 |
  LDA.B $09,X                               ; $8C89A6 |
  SBC.W #$0028                              ; $8C89A8 |
  STA.W $0009,Y                             ; $8C89AB |
  CLC                                       ; $8C89AE |
  BRA CODE_8C89F2                           ; $8C89AF |

CODE_FN_8C89B1:
  LDA.W #$00AC                              ; $8C89B1 |
  JSL.L CODE_FL_86C9A7                      ; $8C89B4 |
  BCS CODE_8C89F2                           ; $8C89B8 |
  TXA                                       ; $8C89BA |
  STA.W $003A,Y                             ; $8C89BB |
  LDA.B $4E,X                               ; $8C89BE |
  STA.W $004E,Y                             ; $8C89C0 |
  SEC                                       ; $8C89C3 |
  LDA.B $09,X                               ; $8C89C4 |
  SBC.W #$0038                              ; $8C89C6 |
  STA.W $0009,Y                             ; $8C89C9 |
  CLC                                       ; $8C89CC |
  LDA.B $0D,X                               ; $8C89CD |
  ADC.W #$0001                              ; $8C89CF |
  STA.W $000D,Y                             ; $8C89D2 |
  CLC                                       ; $8C89D5 |
  BRA CODE_8C89F2                           ; $8C89D6 |

CODE_FN_8C89D8:
  LDA.W #$021F                              ; $8C89D8 |
  JSL.L CODE_FL_86C9C5                      ; $8C89DB |
  BCS CODE_8C89F2                           ; $8C89DF |
  TXA                                       ; $8C89E1 |
  STA.W $003A,Y                             ; $8C89E2 |
  LDA.W #$0060                              ; $8C89E5 |
  STA.W $0009,Y                             ; $8C89E8 |
  LDA.W #$00A0                              ; $8C89EB |
  STA.W $000D,Y                             ; $8C89EE |
  CLC                                       ; $8C89F1 |

CODE_8C89F2:
  RTS                                       ; $8C89F2 |

CODE_JP_8C89F3:
  LDA.B $4E,X                               ; $8C89F3 |
  ASL A                                     ; $8C89F5 |
  ASL A                                     ; $8C89F6 |
  TAY                                       ; $8C89F7 |
  PHB                                       ; $8C89F8 |
  PHK                                       ; $8C89F9 |
  PLB                                       ; $8C89FA |
  LDA.W LOOSE_OP_008A39,Y                   ; $8C89FB |
  PLB                                       ; $8C89FE |
  STA.B $08                                 ; $8C89FF |
  PHB                                       ; $8C8A01 |
  PHK                                       ; $8C8A02 |
  PLB                                       ; $8C8A03 |
  LDA.W LOOSE_OP_008A3B,Y                   ; $8C8A04 |
  PLB                                       ; $8C8A07 |
  STA.B $0A                                 ; $8C8A08 |
  LDA.W #$00A9                              ; $8C8A0A |
  JSL.L CODE_FL_86C9A7                      ; $8C8A0D |
  BCS CODE_8C8A36                           ; $8C8A11 |
  CLC                                       ; $8C8A13 |
  LDA.B $08                                 ; $8C8A14 |
  ADC.B $09,X                               ; $8C8A16 |
  STA.W $0009,Y                             ; $8C8A18 |
  LDA.W #$0007                              ; $8C8A1B |
  STA.W $0011,Y                             ; $8C8A1E |
  PHY                                       ; $8C8A21 |
  LDY.W #$0008                              ; $8C8A22 |
  LDA.B $0A                                 ; $8C8A25 |
  JSL.L CODE_FL_8AB4B3                      ; $8C8A27 |
  PLY                                       ; $8C8A2B |
  LDA.B $00                                 ; $8C8A2C |
  STA.W $0026,Y                             ; $8C8A2E |
  LDA.B $02                                 ; $8C8A31 |
  STA.W $0028,Y                             ; $8C8A33 |

CODE_8C8A36:
  INC.B $4E,X                               ; $8C8A36 |
  RTL                                       ; $8C8A38 |

  db $00,$00,$08,$00,$FC,$FF,$0A,$00        ; $8C8A39 |
  db $F8,$FF,$0C,$00,$FC,$FF,$0B,$00        ; $8C8A41 |
  db $00,$00,$09,$00,$04,$00,$06,$00        ; $8C8A49 |
  db $08,$00,$04,$00,$04,$00,$05,$00        ; $8C8A51 |
  db $00,$00,$07,$00                        ; $8C8A59 |

CODE_FN_8C8A5D:
  LDA.B $36,X                               ; $8C8A5D |
  EOR.W $1C96                               ; $8C8A5F |
  AND.W #$0002                              ; $8C8A62 |
  BEQ CODE_8C8A94                           ; $8C8A65 |
  CLC                                       ; $8C8A67 |
  LDA.W $1C8E                               ; $8C8A68 |
  ADC.W #$FFC0                              ; $8C8A6B |
  STA.W $1C8E                               ; $8C8A6E |
  CLC                                       ; $8C8A71 |
  LDA.W $1C90                               ; $8C8A72 |
  ADC.W #$FFC0                              ; $8C8A75 |
  STA.W $1C90                               ; $8C8A78 |
  CLC                                       ; $8C8A7B |
  LDA.W $1C92                               ; $8C8A7C |
  ADC.W #$0080                              ; $8C8A7F |
  STA.W $1C92                               ; $8C8A82 |
  CLC                                       ; $8C8A85 |
  LDA.W $1C94                               ; $8C8A86 |
  ADC.W #$0020                              ; $8C8A89 |
  STA.W $1C94                               ; $8C8A8C |
  LDA.B $36,X                               ; $8C8A8F |
  STA.W $1C96                               ; $8C8A91 |

CODE_8C8A94:
  RTS                                       ; $8C8A94 |

CODE_8C8A95:
  JSL.L CODE_FL_85F7C9                      ; $8C8A95 |
  JSL.L CODE_FL_8CFD8F                      ; $8C8A99 |
  PHX                                       ; $8C8A9D |
  ASL A                                     ; $8C8A9E |
  TAX                                       ; $8C8A9F |
  LDA.L PTR16_8C8AAA,X                      ; $8C8AA0 |
  PLX                                       ; $8C8AA4 |
  STA.B $00                                 ; $8C8AA5 |
  JMP.W ($0000)                             ; $8C8AA7 |

PTR16_8C8AAA:
  dw CODE_8C8AAE                            ; $8C8AAA |
  dw CODE_8C8AC5                            ; $8C8AAC |

CODE_8C8AAE:
  LDA.W #$DBC5                              ; $8C8AAE |
  STA.B $00,X                               ; $8C8AB1 |
  LDA.W $1C9E                               ; $8C8AB3 |
  BNE CODE_8C8ABC                           ; $8C8AB6 |
  JSL.L CODE_FL_85A9EF                      ; $8C8AB8 |

CODE_8C8ABC:
  LDA.W #$0008                              ; $8C8ABC |
  STA.B $42,X                               ; $8C8ABF |
  JML.L CODE_FL_86C63F                      ; $8C8AC1 |

CODE_8C8AC5:
  RTL                                       ; $8C8AC5 |

CODE_8C8AC6:
  JSR.W CODE_FN_8C8E02                      ; $8C8AC6 |
  LDA.B $1A,X                               ; $8C8AC9 |
  PHX                                       ; $8C8ACB |
  ASL A                                     ; $8C8ACC |
  TAX                                       ; $8C8ACD |
  LDA.L PTR16_8C8AD8,X                      ; $8C8ACE |
  PLX                                       ; $8C8AD2 |
  STA.B $00                                 ; $8C8AD3 |
  JMP.W ($0000)                             ; $8C8AD5 |

PTR16_8C8AD8:
  dw CODE_8C8ADE                            ; $8C8AD8 |
  dw CODE_8C8B9B                            ; $8C8ADA |
  dw CODE_8C8BEC                            ; $8C8ADC |

CODE_8C8ADE:
  LDA.W #$00B0                              ; $8C8ADE |
  JSL.L CODE_FL_86C9C5                      ; $8C8AE1 |
  BCS CODE_8C8B5A                           ; $8C8AE5 |
  LDA.B $4E,X                               ; $8C8AE7 |
  STA.W $004E,Y                             ; $8C8AE9 |
  CLC                                       ; $8C8AEC |
  LDA.B $09,X                               ; $8C8AED |
  ADC.W #$0004                              ; $8C8AEF |
  STA.W $0009,Y                             ; $8C8AF2 |
  SEC                                       ; $8C8AF5 |
  LDA.B $0D,X                               ; $8C8AF6 |
  SBC.W #$0002                              ; $8C8AF8 |
  STA.W $000D,Y                             ; $8C8AFB |
  JSL.L CODE_FL_85AAB6                      ; $8C8AFE |
  JSL.L CODE_FL_86C7A5                      ; $8C8B02 |
  JSL.L CODE_FL_85B00E                      ; $8C8B06 |
  SEP #$20                                  ; $8C8B0A |
  LDA.B #$04                                ; $8C8B0C |
  STA.B $36,X                               ; $8C8B0E |
  REP #$20                                  ; $8C8B10 |
  STZ.B $00                                 ; $8C8B12 |
  LDA.W #$0004                              ; $8C8B14 |
  STA.B $02                                 ; $8C8B17 |
  PHX                                       ; $8C8B19 |

CODE_8C8B1A:
  LDA.B $00                                 ; $8C8B1A |
  ASL A                                     ; $8C8B1C |
  ASL A                                     ; $8C8B1D |
  TAY                                       ; $8C8B1E |
  PHB                                       ; $8C8B1F |
  PHK                                       ; $8C8B20 |
  PLB                                       ; $8C8B21 |
  LDA.W LOOSE_OP_008B5B,Y                   ; $8C8B22 |
  PLB                                       ; $8C8B25 |
  PHY                                       ; $8C8B26 |
  TAY                                       ; $8C8B27 |
  JSL.L CODE_FL_809622                      ; $8C8B28 |
  PLY                                       ; $8C8B2C |
  PHB                                       ; $8C8B2D |
  PHK                                       ; $8C8B2E |
  PLB                                       ; $8C8B2F |
  LDA.W LOOSE_OP_008B5D,Y                   ; $8C8B30 |
  PLB                                       ; $8C8B33 |
  TAY                                       ; $8C8B34 |
  LDA.W #$000C                              ; $8C8B35 |
  STA.B $04                                 ; $8C8B38 |

CODE_8C8B3A:
  PHB                                       ; $8C8B3A |
  PHK                                       ; $8C8B3B |
  PLB                                       ; $8C8B3C |
  LDA.W $0000,Y                             ; $8C8B3D |
  PLB                                       ; $8C8B40 |
  JSL.L CODE_FL_809658                      ; $8C8B41 |
  INY                                       ; $8C8B45 |
  INY                                       ; $8C8B46 |
  DEC.B $04                                 ; $8C8B47 |
  BNE CODE_8C8B3A                           ; $8C8B49 |
  JSL.L CODE_FL_809663                      ; $8C8B4B |
  INC.B $00                                 ; $8C8B4F |
  DEC.B $02                                 ; $8C8B51 |
  BNE CODE_8C8B1A                           ; $8C8B53 |
  PLX                                       ; $8C8B55 |
  JML.L CODE_FL_86C63A                      ; $8C8B56 |

CODE_8C8B5A:
  RTL                                       ; $8C8B5A |

  db $33,$50,$40,$81,$53,$50,$6B,$8B        ; $8C8B5B |
  db $73,$50,$83,$8B,$93,$50,$70,$81        ; $8C8B63 |
  db $AF,$33,$10,$33,$01,$33,$24,$33        ; $8C8B6B |
  db $10,$33,$64,$33,$10,$33,$06,$33        ; $8C8B73 |
  db $02,$33,$10,$33,$10,$33,$AF,$73        ; $8C8B7B |
  db $AF,$33,$10,$33,$11,$33,$34,$33        ; $8C8B83 |
  db $10,$33,$74,$33,$10,$33,$16,$33        ; $8C8B8B |
  db $12,$33,$10,$33,$10,$33,$AF,$73        ; $8C8B93 |

CODE_8C8B9B:
  PHX                                       ; $8C8B9B |
  LDY.W #$5058                              ; $8C8B9C |
  JSL.L CODE_FL_80961D                      ; $8C8B9F |
  PLX                                       ; $8C8BA3 |
  SEC                                       ; $8C8BA4 |
  LDA.B $36,X                               ; $8C8BA5 |
  AND.W #$00FF                              ; $8C8BA7 |
  SBC.W #$0001                              ; $8C8BAA |
  ASL A                                     ; $8C8BAD |
  PHX                                       ; $8C8BAE |
  TAY                                       ; $8C8BAF |
  PHB                                       ; $8C8BB0 |
  PHK                                       ; $8C8BB1 |
  PLB                                       ; $8C8BB2 |
  LDA.W CODE_008BD4,Y                       ; $8C8BB3 |
  PLB                                       ; $8C8BB6 |
  TAY                                       ; $8C8BB7 |
  LDA.W #$0002                              ; $8C8BB8 |
  STA.B $04                                 ; $8C8BBB |

CODE_8C8BBD:
  PHB                                       ; $8C8BBD |
  PHK                                       ; $8C8BBE |
  PLB                                       ; $8C8BBF |
  LDA.W $0000,Y                             ; $8C8BC0 |
  PLB                                       ; $8C8BC3 |
  JSL.L CODE_FL_809658                      ; $8C8BC4 |
  INY                                       ; $8C8BC8 |
  INY                                       ; $8C8BC9 |
  DEC.B $04                                 ; $8C8BCA |
  BNE CODE_8C8BBD                           ; $8C8BCC |
  JSL.L CODE_FL_809663                      ; $8C8BCE |
  PLX                                       ; $8C8BD2 |
  RTL                                       ; $8C8BD3 |

  db $DC,$8B,$E0,$8B,$E4,$8B,$E8,$8B        ; $8C8BD4 |
  db $61,$33,$71,$33,$62,$33,$72,$33        ; $8C8BDC |
  db $63,$33,$73,$33,$64,$33,$74,$33        ; $8C8BE4 |

CODE_8C8BEC:
  STZ.B $00                                 ; $8C8BEC |
  LDA.W #$0008                              ; $8C8BEE |
  STA.B $02                                 ; $8C8BF1 |
  PHX                                       ; $8C8BF3 |

CODE_8C8BF4:
  LDA.B $00                                 ; $8C8BF4 |
  ASL A                                     ; $8C8BF6 |
  ASL A                                     ; $8C8BF7 |
  TAY                                       ; $8C8BF8 |
  PHB                                       ; $8C8BF9 |
  PHK                                       ; $8C8BFA |
  PLB                                       ; $8C8BFB |
  LDA.W LOOSE_OP_008C41,Y                   ; $8C8BFC |
  PLB                                       ; $8C8BFF |
  PHY                                       ; $8C8C00 |
  TAY                                       ; $8C8C01 |
  JSL.L CODE_FL_80961D                      ; $8C8C02 |
  PLY                                       ; $8C8C06 |
  PHB                                       ; $8C8C07 |
  PHK                                       ; $8C8C08 |
  PLB                                       ; $8C8C09 |
  LDA.W LOOSE_OP_008C43,Y                   ; $8C8C0A |
  PLB                                       ; $8C8C0D |
  TAY                                       ; $8C8C0E |
  LDA.W #$0002                              ; $8C8C0F |
  STA.B $04                                 ; $8C8C12 |

CODE_8C8C14:
  PHB                                       ; $8C8C14 |
  PHK                                       ; $8C8C15 |
  PLB                                       ; $8C8C16 |
  LDA.W $0000,Y                             ; $8C8C17 |
  PLB                                       ; $8C8C1A |
  JSL.L CODE_FL_809658                      ; $8C8C1B |
  INY                                       ; $8C8C1F |
  INY                                       ; $8C8C20 |
  DEC.B $04                                 ; $8C8C21 |
  BNE CODE_8C8C14                           ; $8C8C23 |
  JSL.L CODE_FL_809663                      ; $8C8C25 |
  INC.B $00                                 ; $8C8C29 |
  DEC.B $02                                 ; $8C8C2B |
  BNE CODE_8C8BF4                           ; $8C8C2D |
  PLX                                       ; $8C8C2F |
  LDA.W #$00DC                              ; $8C8C30 |
  JSL.L CODE_FL_8089BD                      ; $8C8C33 |
  INC.W $1CA0                               ; $8C8C37 |
  INC.W $1CA2                               ; $8C8C3A |
  JML.L CODE_FL_86CA2D                      ; $8C8C3D |

  db $55,$50,$A1,$83,$56,$50,$C1,$83        ; $8C8C41 |
  db $57,$50,$B5,$83,$58,$50,$D5,$83        ; $8C8C49 |
  db $59,$50,$B9,$83,$5A,$50,$9D,$83        ; $8C8C51 |
  db $5B,$50,$D1,$83,$5C,$50,$D1,$83        ; $8C8C59 |

CODE_8C8C61:
  JSL.L CODE_FL_85AAC6                      ; $8C8C61 |
  JSL.L CODE_FL_8CFD84                      ; $8C8C65 |
  PHX                                       ; $8C8C69 |
  ASL A                                     ; $8C8C6A |
  TAX                                       ; $8C8C6B |
  LDA.L PTR16_8C8C76,X                      ; $8C8C6C |
  PLX                                       ; $8C8C70 |
  STA.B $00                                 ; $8C8C71 |
  JMP.W ($0000)                             ; $8C8C73 |

PTR16_8C8C76:
  dw CODE_8C8C7A                            ; $8C8C76 |
  dw CODE_8C8C8B                            ; $8C8C78 |

CODE_8C8C7A:
  JSL.L CODE_FL_86C7A5                      ; $8C8C7A |
  JSL.L CODE_FL_86C582                      ; $8C8C7E |
  LDA.W #$372C                              ; $8C8C82 |
  STA.B $00,X                               ; $8C8C85 |
  JML.L CODE_FL_86C63F                      ; $8C8C87 |

CODE_8C8C8B:
  LDA.W $1C38                               ; $8C8C8B |
  AND.W #$0007                              ; $8C8C8E |
  BNE CODE_8C8C97                           ; $8C8C91 |
  JSL.L CODE_FL_85A893                      ; $8C8C93 |

CODE_8C8C97:
  RTL                                       ; $8C8C97 |

CODE_8C8C98:
  JSR.W CODE_FN_8C8E43                      ; $8C8C98 |
  JSL.L CODE_FL_8CFD8F                      ; $8C8C9B |
  PHX                                       ; $8C8C9F |
  ASL A                                     ; $8C8CA0 |
  TAX                                       ; $8C8CA1 |
  LDA.L PTR16_8C8CAC,X                      ; $8C8CA2 |
  PLX                                       ; $8C8CA6 |
  STA.B $00                                 ; $8C8CA7 |
  JMP.W ($0000)                             ; $8C8CA9 |

PTR16_8C8CAC:
  dw CODE_8C8CB8                            ; $8C8CAC |
  dw CODE_8C8CD4                            ; $8C8CAE |
  dw CODE_8C8D19                            ; $8C8CB0 |
  dw CODE_8C8D4C                            ; $8C8CB2 |
  dw CODE_8C8DA9                            ; $8C8CB4 |
  dw CODE_8C8DC1                            ; $8C8CB6 |

CODE_8C8CB8:
  JSL.L CODE_FL_86C7A5                      ; $8C8CB8 |
  JSL.L CODE_FL_86C591                      ; $8C8CBC |
  JSL.L CODE_FL_8CFF15                      ; $8C8CC0 |
  LDA.W #$300F                              ; $8C8CC4 |
  JSL.L CODE_FL_86CAEE                      ; $8C8CC7 |
  LDA.W #$23C0                              ; $8C8CCB |
  STA.B $40,X                               ; $8C8CCE |
  JML.L CODE_FL_86C63A                      ; $8C8CD0 |

CODE_8C8CD4:
  LDA.B $3C,X                               ; $8C8CD4 |
  PHX                                       ; $8C8CD6 |
  ASL A                                     ; $8C8CD7 |
  TAX                                       ; $8C8CD8 |
  LDA.L PTR16_8C8CE3,X                      ; $8C8CD9 |
  PLX                                       ; $8C8CDD |
  STA.B $00                                 ; $8C8CDE |
  JMP.W ($0000)                             ; $8C8CE0 |

PTR16_8C8CE3:
  dw CODE_8C8CE7                            ; $8C8CE3 |
  dw CODE_8C8CFB                            ; $8C8CE5 |

CODE_8C8CE7:
  LDY.B $3A,X                               ; $8C8CE7 |
  LDA.W $0000,Y                             ; $8C8CE9 |
  CMP.W #$3082                              ; $8C8CEC |
  BNE CODE_8C8CFA                           ; $8C8CEF |
  LDA.W #$36C0                              ; $8C8CF1 |
  STA.B $00,X                               ; $8C8CF4 |
  STZ.B $1E,X                               ; $8C8CF6 |
  INC.B $3C,X                               ; $8C8CF8 |

CODE_8C8CFA:
  RTL                                       ; $8C8CFA |

CODE_8C8CFB:
  LDY.B $3A,X                               ; $8C8CFB |
  LDA.W $0000,Y                             ; $8C8CFD |
  CMP.W #$3000                              ; $8C8D00 |
  BEQ CODE_8C8D0F                           ; $8C8D03 |
  CMP.W #$318E                              ; $8C8D05 |
  BNE CODE_8C8D18                           ; $8C8D08 |
  LDA.W #$36AE                              ; $8C8D0A |
  STA.B $00,X                               ; $8C8D0D |

CODE_8C8D0F:
  LDA.W #$300F                              ; $8C8D0F |
  JSL.L CODE_FL_86CAEE                      ; $8C8D12 |
  DEC.B $3C,X                               ; $8C8D16 |

CODE_8C8D18:
  RTL                                       ; $8C8D18 |

CODE_8C8D19:
  LDA.B $3E,X                               ; $8C8D19 |
  PHX                                       ; $8C8D1B |
  ASL A                                     ; $8C8D1C |
  TAX                                       ; $8C8D1D |
  LDA.L PTR16_8C8D28,X                      ; $8C8D1E |
  PLX                                       ; $8C8D22 |
  STA.B $00                                 ; $8C8D23 |
  JMP.W ($0000)                             ; $8C8D25 |

PTR16_8C8D28:
  dw CODE_8C8D2C                            ; $8C8D28 |
  dw CODE_8C8D36                            ; $8C8D2A |

CODE_8C8D2C:
  LDA.W #$3010                              ; $8C8D2C |
  JSL.L CODE_FL_86CAEE                      ; $8C8D2F |
  INC.B $3E,X                               ; $8C8D33 |
  RTL                                       ; $8C8D35 |

CODE_8C8D36:
  LDA.B $20,X                               ; $8C8D36 |
  BNE CODE_8C8D4B                           ; $8C8D38 |
  LDA.W #$36F0                              ; $8C8D3A |
  STA.B $00,X                               ; $8C8D3D |
  STZ.B $1E,X                               ; $8C8D3F |
  LDA.W #$0020                              ; $8C8D41 |
  STA.B $2C,X                               ; $8C8D44 |
  LDA.W #$0003                              ; $8C8D46 |
  STA.B $1A,X                               ; $8C8D49 |

CODE_8C8D4B:
  RTL                                       ; $8C8D4B |

CODE_8C8D4C:
  LDA.B $44,X                               ; $8C8D4C |
  PHX                                       ; $8C8D4E |
  ASL A                                     ; $8C8D4F |
  TAX                                       ; $8C8D50 |
  LDA.L PTR16_8C8D5B,X                      ; $8C8D51 |
  PLX                                       ; $8C8D55 |
  STA.B $00                                 ; $8C8D56 |
  JMP.W ($0000)                             ; $8C8D58 |

PTR16_8C8D5B:
  dw CODE_8C8D61                            ; $8C8D5B |
  dw CODE_8C8D72                            ; $8C8D5D |
  dw CODE_8C8D8D                            ; $8C8D5F |

CODE_8C8D61:
  JSL.L CODE_FL_86C70D                      ; $8C8D61 |
  LDA.W #$370E                              ; $8C8D65 |
  STA.B $00,X                               ; $8C8D68 |
  LDA.W #$0010                              ; $8C8D6A |
  STA.B $2C,X                               ; $8C8D6D |
  INC.B $44,X                               ; $8C8D6F |
  RTL                                       ; $8C8D71 |

CODE_8C8D72:
  JSL.L CODE_FL_86C70D                      ; $8C8D72 |
  LDA.W #$3722                              ; $8C8D76 |
  STA.B $00,X                               ; $8C8D79 |
  LDA.W #$0200                              ; $8C8D7B |
  STA.B $28,X                               ; $8C8D7E |
  LDA.W #$0500                              ; $8C8D80 |
  STA.B $2A,X                               ; $8C8D83 |
  LDA.W #$0060                              ; $8C8D85 |
  STA.B $4C,X                               ; $8C8D88 |
  INC.B $44,X                               ; $8C8D8A |
  RTL                                       ; $8C8D8C |

CODE_8C8D8D:
  JSL.L CODE_FL_8CFEF6                      ; $8C8D8D |
  BPL CODE_8C8DA8                           ; $8C8D91 |
  LDA.W #$0003                              ; $8C8D93 |
  JSL.L push_sound_queue                    ; $8C8D96 |
  LDA.W #$3011                              ; $8C8D9A |
  JSL.L CODE_FL_86CAEE                      ; $8C8D9D |
  STZ.B $28,X                               ; $8C8DA1 |
  LDA.W #$0004                              ; $8C8DA3 |
  STA.B $1A,X                               ; $8C8DA6 |

CODE_8C8DA8:
  RTL                                       ; $8C8DA8 |

CODE_8C8DA9:
  JSL.L CODE_FL_8098FD                      ; $8C8DA9 |
  BCC CODE_8C8DC0                           ; $8C8DAD |
  LDA.W #$370E                              ; $8C8DAF |
  STA.B $00,X                               ; $8C8DB2 |
  STZ.B $1E,X                               ; $8C8DB4 |
  LDA.W #$0010                              ; $8C8DB6 |
  STA.B $2C,X                               ; $8C8DB9 |
  LDA.W #$0005                              ; $8C8DBB |
  STA.B $1A,X                               ; $8C8DBE |

CODE_8C8DC0:
  RTL                                       ; $8C8DC0 |

CODE_8C8DC1:
  LDA.B $46,X                               ; $8C8DC1 |
  PHX                                       ; $8C8DC3 |
  ASL A                                     ; $8C8DC4 |
  TAX                                       ; $8C8DC5 |
  LDA.L PTR16_8C8DD0,X                      ; $8C8DC6 |
  PLX                                       ; $8C8DCA |
  STA.B $00                                 ; $8C8DCB |
  JMP.W ($0000)                             ; $8C8DCD |

PTR16_8C8DD0:
  dw CODE_8C8DD4                            ; $8C8DD0 |
  dw CODE_8C8DEF                            ; $8C8DD2 |

CODE_8C8DD4:
  JSL.L CODE_FL_86C70D                      ; $8C8DD4 |
  LDA.W #$3722                              ; $8C8DD8 |
  STA.B $00,X                               ; $8C8DDB |
  LDA.W #$0400                              ; $8C8DDD |
  STA.B $28,X                               ; $8C8DE0 |
  LDA.W #$0500                              ; $8C8DE2 |
  STA.B $2A,X                               ; $8C8DE5 |
  LDA.W #$0040                              ; $8C8DE7 |
  STA.B $4C,X                               ; $8C8DEA |
  INC.B $46,X                               ; $8C8DEC |
  RTL                                       ; $8C8DEE |

CODE_8C8DEF:
  JSL.L CODE_FL_8CFEF6                      ; $8C8DEF |
  LDA.B $0D,X                               ; $8C8DF3 |
  CMP.W #$00E0                              ; $8C8DF5 |
  BCS CODE_8C8DFB                           ; $8C8DF8 |
  RTL                                       ; $8C8DFA |

CODE_8C8DFB:
  INC.W $1CA4                               ; $8C8DFB |
  JML.L CODE_FL_86CA36                      ; $8C8DFE |

CODE_FN_8C8E02:
  LDA.B $38,X                               ; $8C8E02 |
  BEQ CODE_8C8E0A                           ; $8C8E04 |
  DEC.B $38,X                               ; $8C8E06 |
  BRA CODE_8C8E42                           ; $8C8E08 |

CODE_8C8E0A:
  LDA.B $32,X                               ; $8C8E0A |
  AND.W #$8000                              ; $8C8E0C |
  BEQ CODE_8C8E3C                           ; $8C8E0F |
  LDA.B $37,X                               ; $8C8E11 |
  AND.W #$00FF                              ; $8C8E13 |
  CMP.W #$0000                              ; $8C8E16 |
  BEQ CODE_8C8E20                           ; $8C8E19 |
  CMP.W #$0009                              ; $8C8E1B |
  BNE CODE_8C8E3C                           ; $8C8E1E |

CODE_8C8E20:
  INC.W $1C9E                               ; $8C8E20 |
  LDA.W #$8001                              ; $8C8E23 |
  STA.B $E4                                 ; $8C8E26 |
  SEP #$20                                  ; $8C8E28 |
  DEC.B $36,X                               ; $8C8E2A |
  BNE CODE_8C8E3E                           ; $8C8E2C |
  REP #$20                                  ; $8C8E2E |
  STZ.B $E4                                 ; $8C8E30 |
  STZ.W $1C9E                               ; $8C8E32 |
  STZ.B $2C,X                               ; $8C8E35 |
  LDA.W #$0002                              ; $8C8E37 |
  STA.B $1A,X                               ; $8C8E3A |

CODE_8C8E3C:
  STZ.B $38,X                               ; $8C8E3C |

CODE_8C8E3E:
  REP #$20                                  ; $8C8E3E |
  STZ.B $32,X                               ; $8C8E40 |

CODE_8C8E42:
  RTS                                       ; $8C8E42 |

CODE_FN_8C8E43:
  LDA.W $1CA2                               ; $8C8E43 |
  BEQ CODE_8C8E50                           ; $8C8E46 |
  STZ.W $1CA2                               ; $8C8E48 |
  LDA.W #$0002                              ; $8C8E4B |
  STA.B $1A,X                               ; $8C8E4E |

CODE_8C8E50:
  RTS                                       ; $8C8E50 |

CODE_8C8E51:
  JSL.L CODE_FL_86C424                      ; $8C8E51 |
  PHX                                       ; $8C8E55 |
  ASL A                                     ; $8C8E56 |
  TAX                                       ; $8C8E57 |
  LDA.L PTR16_8C8E62,X                      ; $8C8E58 |
  PLX                                       ; $8C8E5C |
  STA.B $00                                 ; $8C8E5D |
  JMP.W ($0000)                             ; $8C8E5F |

PTR16_8C8E62:
  dw CODE_8C8E66                            ; $8C8E62 |
  dw CODE_8C8E78                            ; $8C8E64 |

CODE_8C8E66:
  LDY.B $3A,X                               ; $8C8E66 |
  LDA.W $001A,Y                             ; $8C8E68 |
  CMP.W #$0002                              ; $8C8E6B |
  BNE CODE_8C8E77                           ; $8C8E6E |
  LDA.W #$0002                              ; $8C8E70 |
  STA.B $3A,X                               ; $8C8E73 |
  INC.B $1A,X                               ; $8C8E75 |

CODE_8C8E77:
  RTL                                       ; $8C8E77 |

CODE_8C8E78:
  JSL.L CODE_FL_86C70D                      ; $8C8E78 |
  LDA.B $09,X                               ; $8C8E7C |
  STA.B $08                                 ; $8C8E7E |
  LDA.B $0D,X                               ; $8C8E80 |
  STA.B $0A                                 ; $8C8E82 |
  LDA.W #$0106                              ; $8C8E84 |
  JSL.L CODE_FL_8580F7                      ; $8C8E87 |
  BCS CODE_8C8E9E                           ; $8C8E8B |
  CLC                                       ; $8C8E8D |
  LDA.B $09,X                               ; $8C8E8E |
  ADC.W #$0020                              ; $8C8E90 |
  STA.B $09,X                               ; $8C8E93 |
  LDA.W #$0010                              ; $8C8E95 |
  STA.B $2C,X                               ; $8C8E98 |
  DEC.B $3A,X                               ; $8C8E9A |
  BEQ CODE_8C8E9F                           ; $8C8E9C |

CODE_8C8E9E:
  RTL                                       ; $8C8E9E |

CODE_8C8E9F:
  JML.L CODE_FL_86CA36                      ; $8C8E9F |

CODE_8C8EA3:
  JSL.L CODE_FL_85F885                      ; $8C8EA3 |
  JSR.W CODE_FN_8C94B6                      ; $8C8EA7 |
  JSL.L CODE_FL_86C3F8                      ; $8C8EAA |
  PHX                                       ; $8C8EAE |
  ASL A                                     ; $8C8EAF |
  TAX                                       ; $8C8EB0 |
  LDA.L PTR16_8C8EBB,X                      ; $8C8EB1 |
  PLX                                       ; $8C8EB5 |
  STA.B $00                                 ; $8C8EB6 |
  JMP.W ($0000)                             ; $8C8EB8 |

PTR16_8C8EBB:
  dw CODE_8C8EC7                            ; $8C8EBB |
  dw CODE_8C8FA8                            ; $8C8EBD |
  dw CODE_8C8FFE                            ; $8C8EBF |
  dw CODE_8C9130                            ; $8C8EC1 |
  dw CODE_8C921D                            ; $8C8EC3 |
  dw CODE_8C92C5                            ; $8C8EC5 |

CODE_8C8EC7:
  LDA.B $A6                                 ; $8C8EC7 |
  BEQ CODE_8C8ED8                           ; $8C8EC9 |
  JSL.L CODE_FL_83B38E                      ; $8C8ECB |
  PHX                                       ; $8C8ECF |
  LDX.W #$0B20                              ; $8C8ED0 |
  JSL.L CODE_FL_86CA36                      ; $8C8ED3 |
  PLX                                       ; $8C8ED7 |

CODE_8C8ED8:
  LDA.W #$0584                              ; $8C8ED8 |
  JSL.L CODE_FL_8CF9D2                      ; $8C8EDB |
  BCC CODE_8C8EE4                           ; $8C8EDF |
  JMP.W CODE_JP_8C8F98                      ; $8C8EE1 |

CODE_8C8EE4:
  JSL.L CODE_FL_86C7A5                      ; $8C8EE4 |
  LDA.W #$00E1                              ; $8C8EE8 |
  JSL.L CODE_FL_86C9A7                      ; $8C8EEB |
  LDA.W #$00B8                              ; $8C8EEF |
  STA.W $0009,Y                             ; $8C8EF2 |
  LDA.W #$0074                              ; $8C8EF5 |
  STA.W $000D,Y                             ; $8C8EF8 |
  LDA.W #$00EF                              ; $8C8EFB |
  JSL.L CODE_FL_86C9A7                      ; $8C8EFE |
  LDA.W #$0048                              ; $8C8F02 |
  STA.W $0009,Y                             ; $8C8F05 |
  LDA.W #$0074                              ; $8C8F08 |
  STA.W $000D,Y                             ; $8C8F0B |
  LDA.W #$00F0                              ; $8C8F0E |
  JSL.L CODE_FL_86C9A7                      ; $8C8F11 |
  LDA.W #$0080                              ; $8C8F15 |
  STA.W $0009,Y                             ; $8C8F18 |
  LDA.W #$0048                              ; $8C8F1B |
  STA.W $000D,Y                             ; $8C8F1E |
  LDA.W #$0002                              ; $8C8F21 |
  STA.B $00                                 ; $8C8F24 |
  STZ.B $02                                 ; $8C8F26 |

CODE_8C8F28:
  LDA.W #$0122                              ; $8C8F28 |
  JSL.L CODE_FL_86C9A7                      ; $8C8F2B |
  LDA.B $02                                 ; $8C8F2F |
  ASL A                                     ; $8C8F31 |
  ASL A                                     ; $8C8F32 |
  PHY                                       ; $8C8F33 |
  TAY                                       ; $8C8F34 |
  PHB                                       ; $8C8F35 |
  PHK                                       ; $8C8F36 |
  PLB                                       ; $8C8F37 |
  LDA.W LOOSE_OP_008FA0,Y                   ; $8C8F38 |
  PLB                                       ; $8C8F3B |
  STY.B $04                                 ; $8C8F3C |
  PLY                                       ; $8C8F3E |
  STA.W $0009,Y                             ; $8C8F3F |
  PHY                                       ; $8C8F42 |
  LDY.B $04                                 ; $8C8F43 |
  PHB                                       ; $8C8F45 |
  PHK                                       ; $8C8F46 |
  PLB                                       ; $8C8F47 |
  LDA.W CODE_008FA2,Y                       ; $8C8F48 |
  PLB                                       ; $8C8F4B |
  PLY                                       ; $8C8F4C |
  STA.W $000D,Y                             ; $8C8F4D |
  INC.B $02                                 ; $8C8F50 |
  DEC.B $00                                 ; $8C8F52 |
  BNE CODE_8C8F28                           ; $8C8F54 |
  LDA.W #$0001                              ; $8C8F56 |
  STA.L $7E7D90                             ; $8C8F59 |
  LDA.B $4E,X                               ; $8C8F5D |
  STA.B $3A,X                               ; $8C8F5F |
  LDA.W #$0100                              ; $8C8F61 |
  STA.B $48,X                               ; $8C8F64 |
  LDA.B $22,X                               ; $8C8F66 |
  ORA.W #$0010                              ; $8C8F68 |
  STA.B $22,X                               ; $8C8F6B |
  LDA.W #$0010                              ; $8C8F6D |
  STA.B $36,X                               ; $8C8F70 |
  STZ.W $1C92                               ; $8C8F72 |
  STZ.W $1CA2                               ; $8C8F75 |
  STZ.W $1CB2                               ; $8C8F78 |
  STZ.W $1CC0                               ; $8C8F7B |
  STZ.W $1CC2                               ; $8C8F7E |
  LDA.W #$8001                              ; $8C8F81 |
  STA.B $E4                                 ; $8C8F84 |
  LDA.W #$0080                              ; $8C8F86 |
  STA.W $0409                               ; $8C8F89 |
  STA.W $04C9                               ; $8C8F8C |
  LDA.W #$0080                              ; $8C8F8F |
  STA.B $2C,X                               ; $8C8F92 |
  JML.L CODE_FL_86C63F                      ; $8C8F94 |

CODE_JP_8C8F98:
  JSL.L CODE_FL_84F1BE                      ; $8C8F98 |
  JML.L CODE_FL_86CA2D                      ; $8C8F9C |

  db $48,$00,$A0,$00,$B8,$00,$A0,$00        ; $8C8FA0 |

CODE_8C8FA8:
  LDA.B $3C,X                               ; $8C8FA8 |
  PHX                                       ; $8C8FAA |
  ASL A                                     ; $8C8FAB |
  TAX                                       ; $8C8FAC |
  LDA.L PTR16_8C8FB7,X                      ; $8C8FAD |
  PLX                                       ; $8C8FB1 |
  STA.B $00                                 ; $8C8FB2 |
  JMP.W ($0000)                             ; $8C8FB4 |

PTR16_8C8FB7:
  dw CODE_8C8FBD                            ; $8C8FB7 |
  dw CODE_8C8FD6                            ; $8C8FB9 |
  dw CODE_8C8FEF                            ; $8C8FBB |

CODE_8C8FBD:
  JSL.L CODE_FL_86C70D                      ; $8C8FBD |
  LDA.W #$FD73                              ; $8C8FC1 |
  JSL.L CODE_FL_809934                      ; $8C8FC4 |
  BCC CODE_8C8FD5                           ; $8C8FC8 |
  LDA.W #$0040                              ; $8C8FCA |
  STA.B $2C,X                               ; $8C8FCD |
  INC.B $3C,X                               ; $8C8FCF |
  JML.L CODE_FL_80893F                      ; $8C8FD1 |

CODE_8C8FD5:
  RTL                                       ; $8C8FD5 |

CODE_8C8FD6:
  JSL.L CODE_FL_86C70D                      ; $8C8FD6 |
  LDA.W #$34BC                              ; $8C8FDA |
  STA.B $00,X                               ; $8C8FDD |
  LDY.W #$004C                              ; $8C8FDF |
  JSL.L CODE_FL_808993                      ; $8C8FE2 |
  INC.B $3C,X                               ; $8C8FE6 |
  LDY.W #$BA7C                              ; $8C8FE8 |
  JML.L CODE_FL_80C26D                      ; $8C8FEB |

CODE_8C8FEF:
  JSL.L CODE_FL_86C70D                      ; $8C8FEF |
  JSL.L CODE_FL_85A9EF                      ; $8C8FF3 |
  STZ.B $E4                                 ; $8C8FF7 |
  STZ.B $3C,X                               ; $8C8FF9 |
  INC.B $1A,X                               ; $8C8FFB |
  RTL                                       ; $8C8FFD |

CODE_8C8FFE:
  JSL.L CODE_FL_85B00E                      ; $8C8FFE |
  LDA.B $3C,X                               ; $8C9002 |
  PHX                                       ; $8C9004 |
  ASL A                                     ; $8C9005 |
  TAX                                       ; $8C9006 |
  LDA.L PTR16_8C9011,X                      ; $8C9007 |
  PLX                                       ; $8C900B |
  STA.B $00                                 ; $8C900C |
  JMP.W ($0000)                             ; $8C900E |

PTR16_8C9011:
  dw CODE_8C9015                            ; $8C9011 |
  dw CODE_8C9051                            ; $8C9013 |

CODE_8C9015:
  SEC                                       ; $8C9015 |
  LDA.B $3A,X                               ; $8C9016 |
  SBC.W #$0001                              ; $8C9018 |
  PHX                                       ; $8C901B |
  ASL A                                     ; $8C901C |
  TAX                                       ; $8C901D |
  LDA.L PTR16_8C9028,X                      ; $8C901E |
  PLX                                       ; $8C9022 |
  STA.B $00                                 ; $8C9023 |
  JMP.W ($0000)                             ; $8C9025 |

PTR16_8C9028:
  dw CODE_8C902E                            ; $8C9028 |
  dw CODE_8C902E                            ; $8C902A |
  dw CODE_8C903B                            ; $8C902C |

CODE_8C902E:
  LDA.B $48,X                               ; $8C902E |
  STA.B $28,X                               ; $8C9030 |
  LDA.W #$301E                              ; $8C9032 |
  JSL.L CODE_FL_86CAEE                      ; $8C9035 |
  BRA CODE_8C9049                           ; $8C9039 |

CODE_8C903B:
  LDA.W #$0100                              ; $8C903B |
  JSL.L CODE_FL_86C887                      ; $8C903E |
  LDA.W #$301F                              ; $8C9042 |
  JSL.L CODE_FL_86CAEE                      ; $8C9045 |

CODE_8C9049:
  LDA.W #$0030                              ; $8C9049 |
  STA.B $2C,X                               ; $8C904C |
  INC.B $3C,X                               ; $8C904E |
  RTL                                       ; $8C9050 |

CODE_8C9051:
  LDA.B $1C,X                               ; $8C9051 |
  CMP.W #$0003                              ; $8C9053 |
  BNE CODE_8C9066                           ; $8C9056 |
  LDA.B $20,X                               ; $8C9058 |
  CMP.W #$0008                              ; $8C905A |
  BNE CODE_8C9066                           ; $8C905D |
  LDA.W #$00C0                              ; $8C905F |
  JSL.L CODE_FL_8089BD                      ; $8C9062 |

CODE_8C9066:
  LDA.B $28,X                               ; $8C9066 |
  STA.B $48,X                               ; $8C9068 |
  JSR.W CODE_FN_8C94E2                      ; $8C906A |
  BEQ CODE_8C90D6                           ; $8C906D |
  SEC                                       ; $8C906F |
  SBC.W #$0001                              ; $8C9070 |
  PHX                                       ; $8C9073 |
  ASL A                                     ; $8C9074 |
  TAX                                       ; $8C9075 |
  LDA.L PTR16_8C9080,X                      ; $8C9076 |
  PLX                                       ; $8C907A |
  STA.B $00                                 ; $8C907B |
  JMP.W ($0000)                             ; $8C907D |

PTR16_8C9080:
  dw CODE_8C9088                            ; $8C9080 |
  dw CODE_8C908F                            ; $8C9082 |
  dw CODE_8C90CE                            ; $8C9084 |
  dw CODE_8C9096                            ; $8C9086 |

CODE_8C9088:
  LDA.W #$0001                              ; $8C9088 |
  STA.B $3A,X                               ; $8C908B |
  BRA CODE_8C90C2                           ; $8C908D |

CODE_8C908F:
  LDA.W #$0002                              ; $8C908F |
  STA.B $3A,X                               ; $8C9092 |
  BRA CODE_8C90C2                           ; $8C9094 |

CODE_8C9096:
  SEC                                       ; $8C9096 |
  LDA.B $3A,X                               ; $8C9097 |
  SBC.W #$0001                              ; $8C9099 |
  PHX                                       ; $8C909C |
  ASL A                                     ; $8C909D |
  TAX                                       ; $8C909E |
  LDA.L PTR16_8C90A9,X                      ; $8C909F |
  PLX                                       ; $8C90A3 |
  STA.B $00                                 ; $8C90A4 |
  JMP.W ($0000)                             ; $8C90A6 |

PTR16_8C90A9:
  dw CODE_8C90AD                            ; $8C90A9 |
  dw CODE_8C90B6                            ; $8C90AB |

CODE_8C90AD:
  LDA.B $04,X                               ; $8C90AD |
  ORA.W #$2020                              ; $8C90AF |
  STA.B $04,X                               ; $8C90B2 |
  BRA CODE_8C90BD                           ; $8C90B4 |

CODE_8C90B6:
  LDA.B $04,X                               ; $8C90B6 |
  AND.W #$DFDF                              ; $8C90B8 |
  STA.B $04,X                               ; $8C90BB |

CODE_8C90BD:
  LDA.W #$0003                              ; $8C90BD |
  STA.B $3A,X                               ; $8C90C0 |

CODE_8C90C2:
  STZ.B $26,X                               ; $8C90C2 |
  STZ.B $28,X                               ; $8C90C4 |
  LDA.W #$0100                              ; $8C90C6 |
  STA.B $48,X                               ; $8C90C9 |
  DEC.B $3C,X                               ; $8C90CB |
  RTL                                       ; $8C90CD |

CODE_8C90CE:
  LDA.B $28,X                               ; $8C90CE |
  EOR.W #$FFFF                              ; $8C90D0 |
  INC A                                     ; $8C90D3 |
  STA.B $28,X                               ; $8C90D4 |

CODE_8C90D6:
  JSL.L CODE_FL_86C70D                      ; $8C90D6 |
  SEC                                       ; $8C90DA |
  LDA.B $3A,X                               ; $8C90DB |
  SBC.W #$0001                              ; $8C90DD |
  PHX                                       ; $8C90E0 |
  ASL A                                     ; $8C90E1 |
  TAX                                       ; $8C90E2 |
  LDA.L PTR16_8C90ED,X                      ; $8C90E3 |
  PLX                                       ; $8C90E7 |
  STA.B $00                                 ; $8C90E8 |
  JMP.W ($0000)                             ; $8C90EA |

PTR16_8C90ED:
  dw CODE_8C90F3                            ; $8C90ED |
  dw CODE_8C90F3                            ; $8C90EF |
  dw CODE_8C910E                            ; $8C90F1 |

CODE_8C90F3:
  SEC                                       ; $8C90F3 |
  LDA.B $0D,X                               ; $8C90F4 |
  SBC.W #$0020                              ; $8C90F6 |
  CMP.W #$0048                              ; $8C90F9 |
  BCC CODE_8C912A                           ; $8C90FC |
  LDA.B $0D,X                               ; $8C90FE |
  CMP.W #$00A0                              ; $8C9100 |
  BCS CODE_8C912A                           ; $8C9103 |
  LDA.W #$3594                              ; $8C9105 |
  STA.B $00,X                               ; $8C9108 |
  STZ.B $1E,X                               ; $8C910A |
  BRA CODE_8C9121                           ; $8C910C |

CODE_8C910E:
  LDA.B $09,X                               ; $8C910E |
  CMP.W #$0048                              ; $8C9110 |
  BCC CODE_8C912A                           ; $8C9113 |
  CMP.W #$00B8                              ; $8C9115 |
  BCS CODE_8C912A                           ; $8C9118 |
  LDA.W #$34BC                              ; $8C911A |
  STA.B $00,X                               ; $8C911D |
  STZ.B $1E,X                               ; $8C911F |

CODE_8C9121:
  STZ.B $26,X                               ; $8C9121 |
  STZ.B $28,X                               ; $8C9123 |
  LDA.W #$0003                              ; $8C9125 |
  STA.B $1A,X                               ; $8C9128 |

CODE_8C912A:
  LDA.W #$0030                              ; $8C912A |
  STA.B $2C,X                               ; $8C912D |
  RTL                                       ; $8C912F |

CODE_8C9130:
  LDA.B $3E,X                               ; $8C9130 |
  PHX                                       ; $8C9132 |
  ASL A                                     ; $8C9133 |
  TAX                                       ; $8C9134 |
  LDA.L PTR16_8C913F,X                      ; $8C9135 |
  PLX                                       ; $8C9139 |
  STA.B $00                                 ; $8C913A |
  JMP.W ($0000)                             ; $8C913C |

PTR16_8C913F:
  dw CODE_8C9143                            ; $8C913F |
  dw CODE_8C916F                            ; $8C9141 |

CODE_8C9143:
  SEC                                       ; $8C9143 |
  LDA.B $3A,X                               ; $8C9144 |
  SBC.W #$0001                              ; $8C9146 |
  PHX                                       ; $8C9149 |
  ASL A                                     ; $8C914A |
  TAX                                       ; $8C914B |
  LDA.L PTR16_8C9156,X                      ; $8C914C |
  PLX                                       ; $8C9150 |
  STA.B $00                                 ; $8C9151 |
  JMP.W ($0000)                             ; $8C9153 |

PTR16_8C9156:
  dw CODE_8C915C                            ; $8C9156 |
  dw CODE_8C915C                            ; $8C9158 |
  dw CODE_8C9165                            ; $8C915A |

CODE_8C915C:
  LDA.W #$3020                              ; $8C915C |
  JSL.L CODE_FL_86CAEE                      ; $8C915F |
  BRA CODE_8C916C                           ; $8C9163 |

CODE_8C9165:
  LDA.W #$3021                              ; $8C9165 |
  JSL.L CODE_FL_86CAEE                      ; $8C9168 |

CODE_8C916C:
  INC.B $3E,X                               ; $8C916C |
  RTL                                       ; $8C916E |

CODE_8C916F:
  LDA.B $20,X                               ; $8C916F |
  BNE CODE_8C9176                           ; $8C9171 |
  JMP.W CODE_JP_8C928C                      ; $8C9173 |

CODE_8C9176:
  LDA.B $1C,X                               ; $8C9176 |
  CMP.W #$0006                              ; $8C9178 |
  BEQ CODE_8C9180                           ; $8C917B |
  JMP.W CODE_JP_8C9204                      ; $8C917D |

CODE_8C9180:
  LDA.B $20,X                               ; $8C9180 |
  CMP.W #$0004                              ; $8C9182 |
  BEQ CODE_8C918A                           ; $8C9185 |
  JMP.W CODE_JP_8C9204                      ; $8C9187 |

CODE_8C918A:
  LDA.W $1CC0                               ; $8C918A |
  CMP.W #$0003                              ; $8C918D |
  BEQ CODE_8C91AF                           ; $8C9190 |
  LDA.W #$00F5                              ; $8C9192 |
  JSL.L CODE_FL_86C9A7                      ; $8C9195 |
  BCS CODE_8C91EA                           ; $8C9199 |
  LDA.B $3A,X                               ; $8C919B |
  STA.W $003A,Y                             ; $8C919D |
  LDA.B $06,X                               ; $8C91A0 |
  STA.W $0006,Y                             ; $8C91A2 |
  LDA.B $04,X                               ; $8C91A5 |
  STA.W $0004,Y                             ; $8C91A7 |
  INC.W $1CC0                               ; $8C91AA |
  BRA CODE_8C91B8                           ; $8C91AD |

CODE_8C91AF:
  LDA.W #$0104                              ; $8C91AF |
  JSL.L CODE_FL_86C9A7                      ; $8C91B2 |
  BCS CODE_8C91EA                           ; $8C91B6 |

CODE_8C91B8:
  LDA.W $0009,Y                             ; $8C91B8 |
  STA.B $00                                 ; $8C91BB |
  LDA.W $000D,Y                             ; $8C91BD |
  STA.B $02                                 ; $8C91C0 |
  PHY                                       ; $8C91C2 |
  LDA.B $3A,X                               ; $8C91C3 |
  ASL A                                     ; $8C91C5 |
  TAY                                       ; $8C91C6 |
  SEC                                       ; $8C91C7 |
  LDA.B $00                                 ; $8C91C8 |
  PHB                                       ; $8C91CA |
  PHK                                       ; $8C91CB |
  PLB                                       ; $8C91CC |
  SBC.W LOOSE_OP_009203,Y                   ; $8C91CD |
  PLB                                       ; $8C91D0 |
  STA.B $00                                 ; $8C91D1 |
  SEC                                       ; $8C91D3 |
  LDA.B $02                                 ; $8C91D4 |
  PHB                                       ; $8C91D6 |
  PHK                                       ; $8C91D7 |
  PLB                                       ; $8C91D8 |
  SBC.W CODE_009209,Y                       ; $8C91D9 |
  PLB                                       ; $8C91DC |
  STA.B $02                                 ; $8C91DD |
  PLY                                       ; $8C91DF |
  LDA.B $00                                 ; $8C91E0 |
  STA.W $0009,Y                             ; $8C91E2 |
  LDA.B $02                                 ; $8C91E5 |
  STA.W $000D,Y                             ; $8C91E7 |

CODE_8C91EA:
  LDA.B $3A,X                               ; $8C91EA |
  ASL A                                     ; $8C91EC |
  TAY                                       ; $8C91ED |
  PHB                                       ; $8C91EE |
  PHK                                       ; $8C91EF |
  PLB                                       ; $8C91F0 |
  LDA.W CODE_00920F,Y                       ; $8C91F1 |
  PLB                                       ; $8C91F4 |
  STA.B $08                                 ; $8C91F5 |
  PHB                                       ; $8C91F7 |
  PHK                                       ; $8C91F8 |
  PLB                                       ; $8C91F9 |
  LDA.W LOOSE_OP_009215,Y                   ; $8C91FA |
  PLB                                       ; $8C91FD |
  STA.B $0A                                 ; $8C91FE |
  JSL.L CODE_FL_85AF49                      ; $8C9200 |

CODE_JP_8C9204:
  RTL                                       ; $8C9204 |

  dw $0010,$FFF0,$0000,$0018                ; $8C9205 |
  dw $0018,$0000,$0014,$0014                ; $8C920D |
  dw $0000,$0018,$0018,$0000                ; $8C9215 |

CODE_8C921D:
  LDA.B $42,X                               ; $8C921D |
  PHX                                       ; $8C921F |
  ASL A                                     ; $8C9220 |
  TAX                                       ; $8C9221 |
  LDA.L PTR16_8C922C,X                      ; $8C9222 |
  PLX                                       ; $8C9226 |
  STA.B $00                                 ; $8C9227 |
  JMP.W ($0000)                             ; $8C9229 |

PTR16_8C922C:
  dw CODE_8C9230                            ; $8C922C |
  dw CODE_8C927A                            ; $8C922E |

CODE_8C9230:
  STZ.B $26,X                               ; $8C9230 |
  STZ.B $28,X                               ; $8C9232 |
  JSL.L CODE_FL_85B016                      ; $8C9234 |
  LDA.W #$0105                              ; $8C9238 |
  JSL.L CODE_FL_86C9C5                      ; $8C923B |
  BCS CODE_8C9279                           ; $8C923F |
  JSL.L CODE_FL_85AAB6                      ; $8C9241 |
  JSL.L CODE_FL_86C7C4                      ; $8C9245 |
  LDA.B $04,X                               ; $8C9249 |
  STA.W $0004,Y                             ; $8C924B |
  SEC                                       ; $8C924E |
  LDA.B $3A,X                               ; $8C924F |
  SBC.W #$0001                              ; $8C9251 |
  PHX                                       ; $8C9254 |
  ASL A                                     ; $8C9255 |
  TAX                                       ; $8C9256 |
  LDA.L PTR16_8C9261,X                      ; $8C9257 |
  PLX                                       ; $8C925B |
  STA.B $00                                 ; $8C925C |
  JMP.W ($0000)                             ; $8C925E |

PTR16_8C9261:
  dw CODE_8C9267                            ; $8C9261 |
  dw CODE_8C9267                            ; $8C9263 |
  dw CODE_8C9270                            ; $8C9265 |

CODE_8C9267:
  LDA.W #$3022                              ; $8C9267 |
  JSL.L CODE_FL_86CAEE                      ; $8C926A |
  BRA CODE_8C9277                           ; $8C926E |

CODE_8C9270:
  LDA.W #$3023                              ; $8C9270 |
  JSL.L CODE_FL_86CAEE                      ; $8C9273 |

CODE_8C9277:
  INC.B $42,X                               ; $8C9277 |

CODE_8C9279:
  RTL                                       ; $8C9279 |

CODE_8C927A:
  LDA.W #$0009                              ; $8C927A |
  JSL.L CODE_FL_8CFD0B                      ; $8C927D |
  LDA.B $20,X                               ; $8C9281 |
  BNE CODE_8C92C4                           ; $8C9283 |
  LDA.W #$0009                              ; $8C9285 |
  JSL.L CODE_FL_8CFD3F                      ; $8C9288 |

CODE_JP_8C928C:
  SEC                                       ; $8C928C |
  LDA.B $3A,X                               ; $8C928D |
  SBC.W #$0001                              ; $8C928F |
  PHX                                       ; $8C9292 |
  ASL A                                     ; $8C9293 |
  TAX                                       ; $8C9294 |
  LDA.L PTR16_8C929F,X                      ; $8C9295 |
  PLX                                       ; $8C9299 |
  STA.B $00                                 ; $8C929A |
  JMP.W ($0000)                             ; $8C929C |

PTR16_8C929F:
  dw CODE_8C92A5                            ; $8C929F |
  dw CODE_8C92A5                            ; $8C92A1 |
  dw CODE_8C92AE                            ; $8C92A3 |

CODE_8C92A5:
  LDA.W #$3594                              ; $8C92A5 |
  STA.B $00,X                               ; $8C92A8 |
  STZ.B $1E,X                               ; $8C92AA |
  BRA CODE_8C92B5                           ; $8C92AC |

CODE_8C92AE:
  LDA.W #$34BC                              ; $8C92AE |
  STA.B $00,X                               ; $8C92B1 |
  STZ.B $1E,X                               ; $8C92B3 |

CODE_8C92B5:
  LDA.W #$00C0                              ; $8C92B5 |
  JSL.L CODE_FL_8089BD                      ; $8C92B8 |
  JSR.W CODE_FN_8C94AC                      ; $8C92BC |
  LDA.W #$0002                              ; $8C92BF |
  STA.B $1A,X                               ; $8C92C2 |

CODE_8C92C4:
  RTL                                       ; $8C92C4 |

CODE_8C92C5:
  LDA.B $42,X                               ; $8C92C5 |
  PHX                                       ; $8C92C7 |
  ASL A                                     ; $8C92C8 |
  TAX                                       ; $8C92C9 |
  LDA.L PTR16_8C92D4,X                      ; $8C92CA |
  PLX                                       ; $8C92CE |
  STA.B $00                                 ; $8C92CF |
  JMP.W ($0000)                             ; $8C92D1 |

PTR16_8C92D4:
  dw CODE_8C92E0                            ; $8C92D4 |
  dw CODE_8C933C                            ; $8C92D6 |
  dw CODE_8C937A                            ; $8C92D8 |
  dw CODE_8C93A0                            ; $8C92DA |
  dw CODE_8C93E1                            ; $8C92DC |
  dw CODE_8C9441                            ; $8C92DE |

CODE_8C92E0:
  JSL.L CODE_FL_85B016                      ; $8C92E0 |
  JSL.L CODE_FL_85A9F7                      ; $8C92E4 |
  LDA.B $0D,X                               ; $8C92E8 |
  CMP.W #$00B0                              ; $8C92EA |
  BCC CODE_8C92F4                           ; $8C92ED |
  LDA.W #$00B0                              ; $8C92EF |
  STA.B $0D,X                               ; $8C92F2 |

CODE_8C92F4:
  LDA.W #$0105                              ; $8C92F4 |
  JSL.L CODE_FL_86C9C5                      ; $8C92F7 |
  BCS CODE_8C933B                           ; $8C92FB |
  JSL.L CODE_FL_85AAB6                      ; $8C92FD |
  JSL.L CODE_FL_86C7C4                      ; $8C9301 |
  LDA.B $04,X                               ; $8C9305 |
  STA.W $0004,Y                             ; $8C9307 |
  SEC                                       ; $8C930A |
  LDA.B $3A,X                               ; $8C930B |
  SBC.W #$0001                              ; $8C930D |
  PHX                                       ; $8C9310 |
  ASL A                                     ; $8C9311 |
  TAX                                       ; $8C9312 |
  LDA.L PTR16_8C931D,X                      ; $8C9313 |
  PLX                                       ; $8C9317 |
  STA.B $00                                 ; $8C9318 |
  JMP.W ($0000)                             ; $8C931A |

PTR16_8C931D:
  dw CODE_8C9323                            ; $8C931D |
  dw CODE_8C9323                            ; $8C931F |
  dw CODE_8C932C                            ; $8C9321 |

CODE_8C9323:
  LDA.W #$3022                              ; $8C9323 |
  JSL.L CODE_FL_86CAEE                      ; $8C9326 |
  BRA CODE_8C9333                           ; $8C932A |

CODE_8C932C:
  LDA.W #$3023                              ; $8C932C |
  JSL.L CODE_FL_86CAEE                      ; $8C932F |

CODE_8C9333:
  STZ.B $26,X                               ; $8C9333 |
  STZ.B $28,X                               ; $8C9335 |
  STZ.B $32,X                               ; $8C9337 |
  INC.B $42,X                               ; $8C9339 |

CODE_8C933B:
  RTL                                       ; $8C933B |

CODE_8C933C:
  LDA.W #$0009                              ; $8C933C |
  JSL.L CODE_FL_8CFD0B                      ; $8C933F |
  LDA.B $20,X                               ; $8C9343 |
  BNE CODE_8C9379                           ; $8C9345 |
  LDA.W #$0009                              ; $8C9347 |
  JSL.L CODE_FL_8CFD3F                      ; $8C934A |
  SEC                                       ; $8C934E |
  LDA.B $3A,X                               ; $8C934F |
  SBC.W #$0001                              ; $8C9351 |
  PHX                                       ; $8C9354 |
  ASL A                                     ; $8C9355 |
  TAX                                       ; $8C9356 |
  LDA.L PTR16_8C9361,X                      ; $8C9357 |
  PLX                                       ; $8C935B |
  STA.B $00                                 ; $8C935C |
  JMP.W ($0000)                             ; $8C935E |

PTR16_8C9361:
  dw CODE_8C9367                            ; $8C9361 |
  dw CODE_8C9367                            ; $8C9363 |
  dw CODE_8C9370                            ; $8C9365 |

CODE_8C9367:
  LDA.W #$372C                              ; $8C9367 |
  STA.B $00,X                               ; $8C936A |
  STZ.B $1E,X                               ; $8C936C |
  BRA CODE_8C9377                           ; $8C936E |

CODE_8C9370:
  LDA.W #$36AC                              ; $8C9370 |
  STA.B $00,X                               ; $8C9373 |
  STZ.B $1E,X                               ; $8C9375 |

CODE_8C9377:
  INC.B $42,X                               ; $8C9377 |

CODE_8C9379:
  RTL                                       ; $8C9379 |

CODE_8C937A:
  LDA.W $1C38                               ; $8C937A |
  AND.W #$0007                              ; $8C937D |
  BNE CODE_8C9386                           ; $8C9380 |
  JSL.L CODE_FL_8CFBB6                      ; $8C9382 |

CODE_8C9386:
  JSL.L CODE_FL_85A62E                      ; $8C9386 |
  BEQ CODE_8C939F                           ; $8C938A |
  LDA.W #$0040                              ; $8C938C |
  STA.B $2C,X                               ; $8C938F |
  LDA.W #$001B                              ; $8C9391 |
  JSL.L push_sound_queue                    ; $8C9394 |
  LDA.W #$0001                              ; $8C9398 |
  STA.B $46,X                               ; $8C939B |
  INC.B $42,X                               ; $8C939D |

CODE_8C939F:
  RTL                                       ; $8C939F |

CODE_8C93A0:
  DEC.B $46,X                               ; $8C93A0 |
  BNE CODE_8C93B0                           ; $8C93A2 |
  LDA.W #$0021                              ; $8C93A4 |
  JSL.L push_sound_queue                    ; $8C93A7 |
  LDA.W #$000A                              ; $8C93AB |
  STA.B $46,X                               ; $8C93AE |

CODE_8C93B0:
  LDA.W $1C38                               ; $8C93B0 |
  AND.W #$0007                              ; $8C93B3 |
  BNE CODE_8C93BC                           ; $8C93B6 |
  JSL.L CODE_FL_8CFBB6                      ; $8C93B8 |

CODE_8C93BC:
  LDA.W $1C38                               ; $8C93BC |
  AND.W #$0003                              ; $8C93BF |
  BNE CODE_8C93C8                           ; $8C93C2 |
  JSL.L CODE_FL_85A893                      ; $8C93C4 |

CODE_8C93C8:
  STZ.B $26,X                               ; $8C93C8 |
  JSL.L CODE_FL_86C70D                      ; $8C93CA |
  PHX                                       ; $8C93CE |
  LDY.W #$BA01                              ; $8C93CF |
  JSL.L CODE_FL_80C26D                      ; $8C93D2 |
  PLX                                       ; $8C93D6 |
  STZ.B $46,X                               ; $8C93D7 |
  LDA.W #$0080                              ; $8C93D9 |
  STA.B $2C,X                               ; $8C93DC |
  INC.B $42,X                               ; $8C93DE |
  RTL                                       ; $8C93E0 |

CODE_8C93E1:
  LDA.B $46,X                               ; $8C93E1 |
  BNE CODE_8C93EE                           ; $8C93E3 |
  LDY.W #$0030                              ; $8C93E5 |
  JSL.L CODE_FL_808993                      ; $8C93E8 |
  INC.B $46,X                               ; $8C93EC |

CODE_8C93EE:
  LDA.W $1C38                               ; $8C93EE |
  AND.W #$0003                              ; $8C93F1 |
  BNE CODE_8C93FA                           ; $8C93F4 |
  JSL.L CODE_FL_8CFBAE                      ; $8C93F6 |

CODE_8C93FA:
  STZ.B $26,X                               ; $8C93FA |
  JSL.L CODE_FL_86C70D                      ; $8C93FC |
  INC.W $1CC2                               ; $8C9400 |
  JSL.L CODE_FL_8CFAF3                      ; $8C9403 |
  LDA.W #$0023                              ; $8C9407 |
  JSL.L push_sound_queue                    ; $8C940A |
  LDY.W #$0DA0                              ; $8C940E |
  LDA.W #$0000                              ; $8C9411 |
  STA.W $0000,Y                             ; $8C9414 |
  LDA.W $0034,Y                             ; $8C9417 |
  AND.W #$7FFF                              ; $8C941A |
  STA.W $0034,Y                             ; $8C941D |
  LDY.W #$0DF0                              ; $8C9420 |
  LDA.W #$0000                              ; $8C9423 |
  STA.W $0000,Y                             ; $8C9426 |
  LDA.W $0034,Y                             ; $8C9429 |
  AND.W #$7FFF                              ; $8C942C |
  STA.W $0034,Y                             ; $8C942F |
  STZ.W $1C76                               ; $8C9432 |
  STZ.B $00,X                               ; $8C9435 |
  STZ.B $1E,X                               ; $8C9437 |
  LDA.W #$0040                              ; $8C9439 |
  STA.B $2C,X                               ; $8C943C |
  INC.B $42,X                               ; $8C943E |
  RTL                                       ; $8C9440 |

CODE_8C9441:
  JSL.L CODE_FL_86C70D                      ; $8C9441 |
  LDA.W #$0080                              ; $8C9445 |
  STA.B $09,X                               ; $8C9448 |
  LDA.W #$00A0                              ; $8C944A |
  STA.B $0D,X                               ; $8C944D |
  JSL.L CODE_FL_84F230                      ; $8C944F |
  LDA.W #$0584                              ; $8C9453 |
  JSL.L CODE_FL_8CF9C3                      ; $8C9456 |
  JML.L CODE_FL_86CA2D                      ; $8C945A |

CODE_8C945E:
  JSL.L CODE_FL_86C412                      ; $8C945E |
  PHX                                       ; $8C9462 |
  ASL A                                     ; $8C9463 |
  TAX                                       ; $8C9464 |
  LDA.L PTR16_8C946F,X                      ; $8C9465 |
  PLX                                       ; $8C9469 |
  STA.B $00                                 ; $8C946A |
  JMP.W ($0000)                             ; $8C946C |

PTR16_8C946F:
  dw CODE_8C9473                            ; $8C946F |
  dw CODE_8C94A3                            ; $8C9471 |

CODE_8C9473:
  LDY.B $44,X                               ; $8C9473 |
  SEC                                       ; $8C9475 |
  LDA.W $003A,Y                             ; $8C9476 |
  SBC.W #$0001                              ; $8C9479 |
  PHX                                       ; $8C947C |
  ASL A                                     ; $8C947D |
  TAX                                       ; $8C947E |
  LDA.L PTR16_8C9489,X                      ; $8C947F |
  PLX                                       ; $8C9483 |
  STA.B $00                                 ; $8C9484 |
  JMP.W ($0000)                             ; $8C9486 |

PTR16_8C9489:
  dw CODE_8C948F                            ; $8C9489 |
  dw CODE_8C948F                            ; $8C948B |
  dw CODE_8C9498                            ; $8C948D |

CODE_8C948F:
  LDA.W #$3028                              ; $8C948F |
  JSL.L CODE_FL_86CAEE                      ; $8C9492 |
  BRA CODE_8C949F                           ; $8C9496 |

CODE_8C9498:
  LDA.W #$3028                              ; $8C9498 |
  JSL.L CODE_FL_86CAEE                      ; $8C949B |

CODE_8C949F:
  JML.L CODE_FL_86C63F                      ; $8C949F |

CODE_8C94A3:
  LDA.B $20,X                               ; $8C94A3 |
  BEQ CODE_8C94A8                           ; $8C94A5 |
  RTL                                       ; $8C94A7 |

CODE_8C94A8:
  JML.L CODE_FL_86CA36                      ; $8C94A8 |

CODE_FN_8C94AC:
  LDA.W #$0000                              ; $8C94AC |
  STA.B $3C,X                               ; $8C94AF |
  STA.B $3E,X                               ; $8C94B1 |
  STA.B $42,X                               ; $8C94B3 |
  RTS                                       ; $8C94B5 |

CODE_FN_8C94B6:
  LDA.B $1A,X                               ; $8C94B6 |
  BEQ CODE_8C94DF                           ; $8C94B8 |
  LDA.B $32,X                               ; $8C94BA |
  AND.W #$8800                              ; $8C94BC |
  BEQ CODE_8C94DF                           ; $8C94BF |
  AND.W #$0800                              ; $8C94C1 |
  BEQ CODE_8C94DF                           ; $8C94C4 |
  SEC                                       ; $8C94C6 |
  LDA.B $36,X                               ; $8C94C7 |
  AND.W #$00FF                              ; $8C94C9 |
  SBC.W #$0001                              ; $8C94CC |
  STA.B $36,X                               ; $8C94CF |
  BEQ CODE_8C94DA                           ; $8C94D1 |
  LDA.W #$0004                              ; $8C94D3 |
  STA.B $1A,X                               ; $8C94D6 |
  BRA CODE_8C94DF                           ; $8C94D8 |

CODE_8C94DA:
  LDA.W #$0005                              ; $8C94DA |
  STA.B $1A,X                               ; $8C94DD |

CODE_8C94DF:
  STZ.B $32,X                               ; $8C94DF |
  RTS                                       ; $8C94E1 |

CODE_FN_8C94E2:
  STZ.B $00                                 ; $8C94E2 |
  CLC                                       ; $8C94E4 |
  LDA.B $09,X                               ; $8C94E5 |
  ADC.B $2E,X                               ; $8C94E7 |
  CMP.W #$00F0                              ; $8C94E9 |
  BCC CODE_8C94FC                           ; $8C94EC |
  LDA.W #$00EF                              ; $8C94EE |
  SBC.B $2E,X                               ; $8C94F1 |
  STA.B $09,X                               ; $8C94F3 |
  LDA.W #$0001                              ; $8C94F5 |
  STA.B $00                                 ; $8C94F8 |
  BRA CODE_8C9543                           ; $8C94FA |

CODE_8C94FC:
  SEC                                       ; $8C94FC |
  LDA.B $09,X                               ; $8C94FD |
  SBC.B $2E,X                               ; $8C94FF |
  CMP.W #$0010                              ; $8C9501 |
  BCS CODE_8C9515                           ; $8C9504 |
  CLC                                       ; $8C9506 |
  LDA.W #$0010                              ; $8C9507 |
  ADC.B $2E,X                               ; $8C950A |
  STA.B $09,X                               ; $8C950C |
  LDA.W #$0002                              ; $8C950E |
  STA.B $00                                 ; $8C9511 |
  BRA CODE_8C9543                           ; $8C9513 |

CODE_8C9515:
  LDA.B $0D,X                               ; $8C9515 |
  CMP.W #$00B0                              ; $8C9517 |
  BCC CODE_8C952C                           ; $8C951A |
  JSL.L CODE_FL_85FDDA                      ; $8C951C |
  LDA.W #$00B0                              ; $8C9520 |
  STA.B $0D,X                               ; $8C9523 |
  LDA.W #$0003                              ; $8C9525 |
  STA.B $00                                 ; $8C9528 |
  BRA CODE_8C9543                           ; $8C952A |

CODE_8C952C:
  SEC                                       ; $8C952C |
  LDA.B $0D,X                               ; $8C952D |
  SBC.B $30,X                               ; $8C952F |
  CMP.W #$0018                              ; $8C9531 |
  BCS CODE_8C9543                           ; $8C9534 |
  CLC                                       ; $8C9536 |
  LDA.W #$0018                              ; $8C9537 |
  ADC.B $30,X                               ; $8C953A |
  STA.B $0D,X                               ; $8C953C |
  LDA.W #$0004                              ; $8C953E |
  STA.B $00                                 ; $8C9541 |

CODE_8C9543:
  LDA.B $00                                 ; $8C9543 |
  RTS                                       ; $8C9545 |

CODE_8C9546:
  JSL.L CODE_FL_85F885                      ; $8C9546 |
  JSR.W CODE_FN_8C99A4                      ; $8C954A |
  JSL.L CODE_FL_86C3F8                      ; $8C954D |
  PHX                                       ; $8C9551 |
  ASL A                                     ; $8C9552 |
  TAX                                       ; $8C9553 |
  LDA.L PTR16_8C955E,X                      ; $8C9554 |
  PLX                                       ; $8C9558 |
  STA.B $00                                 ; $8C9559 |
  JMP.W ($0000)                             ; $8C955B |

PTR16_8C955E:
  dw CODE_8C956A                            ; $8C955E |
  dw CODE_8C95CA                            ; $8C9560 |
  dw CODE_8C9639                            ; $8C9562 |
  dw CODE_8C9794                            ; $8C9564 |
  dw CODE_8C989E                            ; $8C9566 |
  dw CODE_8C98FE                            ; $8C9568 |

CODE_8C956A:
  SEC                                       ; $8C956A |
  LDA.B $3A,X                               ; $8C956B |
  SBC.W #$0001                              ; $8C956D |
  PHX                                       ; $8C9570 |
  ASL A                                     ; $8C9571 |
  TAX                                       ; $8C9572 |
  LDA.L PTR16_8C957D,X                      ; $8C9573 |
  PLX                                       ; $8C9577 |
  STA.B $00                                 ; $8C9578 |
  JMP.W ($0000)                             ; $8C957A |

PTR16_8C957D:
  dw CODE_8C9583                            ; $8C957D |
  dw CODE_8C959A                            ; $8C957F |
  dw CODE_8C95AD                            ; $8C9581 |

CODE_8C9583:
  LDA.W $1C90                               ; $8C9583 |
  STA.B $4E,X                               ; $8C9586 |
  LDA.W #$0200                              ; $8C9588 |
  EOR.W #$FFFF                              ; $8C958B |
  INC A                                     ; $8C958E |
  STA.B $26,X                               ; $8C958F |
  LDA.W #$3024                              ; $8C9591 |
  JSL.L CODE_FL_86CAEE                      ; $8C9594 |
  BRA CODE_8C95BE                           ; $8C9598 |

CODE_8C959A:
  LDA.W $1CA0                               ; $8C959A |
  STA.B $4E,X                               ; $8C959D |
  LDA.W #$0200                              ; $8C959F |
  STA.B $26,X                               ; $8C95A2 |
  LDA.W #$3024                              ; $8C95A4 |
  JSL.L CODE_FL_86CAEE                      ; $8C95A7 |
  BRA CODE_8C95BE                           ; $8C95AB |

CODE_8C95AD:
  LDA.W $1CB0                               ; $8C95AD |
  STA.B $4E,X                               ; $8C95B0 |
  LDA.W #$0200                              ; $8C95B2 |
  STA.B $28,X                               ; $8C95B5 |
  LDA.W #$3025                              ; $8C95B7 |
  JSL.L CODE_FL_86CAEE                      ; $8C95BA |

CODE_8C95BE:
  JSL.L CODE_FL_85A5CA                      ; $8C95BE |
  JSL.L CODE_FL_86C587                      ; $8C95C2 |
  JML.L CODE_FL_86C63F                      ; $8C95C6 |

CODE_8C95CA:
  SEC                                       ; $8C95CA |
  LDA.B $3A,X                               ; $8C95CB |
  SBC.W #$0001                              ; $8C95CD |
  PHX                                       ; $8C95D0 |
  ASL A                                     ; $8C95D1 |
  TAX                                       ; $8C95D2 |
  LDA.L PTR16_8C95DD,X                      ; $8C95D3 |
  PLX                                       ; $8C95D7 |
  STA.B $00                                 ; $8C95D8 |
  JMP.W ($0000)                             ; $8C95DA |

PTR16_8C95DD:
  dw CODE_8C95E3                            ; $8C95DD |
  dw CODE_8C95F7                            ; $8C95DF |
  dw CODE_8C960B                            ; $8C95E1 |

CODE_8C95E3:
  LDA.W #$00B8                              ; $8C95E3 |
  JSR.W CODE_FN_8C9D8E                      ; $8C95E6 |
  CMP.B $09,X                               ; $8C95E9 |
  BCC CODE_8C9638                           ; $8C95EB |
  LDA.W $1C92                               ; $8C95ED |
  BEQ CODE_8C95F5                           ; $8C95F0 |
  JMP.W CODE_JP_8C9782                      ; $8C95F2 |

CODE_8C95F5:
  BRA CODE_8C961D                           ; $8C95F5 |

CODE_8C95F7:
  LDA.W #$0048                              ; $8C95F7 |
  JSR.W CODE_FN_8C9D8E                      ; $8C95FA |
  CMP.B $09,X                               ; $8C95FD |
  BCS CODE_8C9638                           ; $8C95FF |
  LDA.W $1CA2                               ; $8C9601 |
  BEQ CODE_8C9609                           ; $8C9604 |
  JMP.W CODE_JP_8C9782                      ; $8C9606 |

CODE_8C9609:
  BRA CODE_8C961D                           ; $8C9609 |

CODE_8C960B:
  LDA.W #$0048                              ; $8C960B |
  JSR.W CODE_FN_8C9DAA                      ; $8C960E |
  CMP.B $0D,X                               ; $8C9611 |
  BCS CODE_8C9638                           ; $8C9613 |
  LDA.W $1CB2                               ; $8C9615 |
  BEQ CODE_8C961D                           ; $8C9618 |
  JMP.W CODE_JP_8C9782                      ; $8C961A |

CODE_8C961D:
  JSL.L CODE_FL_85A9EF                      ; $8C961D |
  JSL.L CODE_FL_85A9B7                      ; $8C9621 |
  LDA.W #$0100                              ; $8C9625 |
  STA.B $48,X                               ; $8C9628 |
  STZ.B $28,X                               ; $8C962A |
  STZ.B $26,X                               ; $8C962C |
  LDA.W #$0030                              ; $8C962E |
  STA.B $2C,X                               ; $8C9631 |
  LDA.W #$0002                              ; $8C9633 |
  STA.B $1A,X                               ; $8C9636 |

CODE_8C9638:
  RTL                                       ; $8C9638 |

CODE_8C9639:
  LDA.B $3C,X                               ; $8C9639 |
  PHX                                       ; $8C963B |
  ASL A                                     ; $8C963C |
  TAX                                       ; $8C963D |
  LDA.L PTR16_8C9648,X                      ; $8C963E |
  PLX                                       ; $8C9642 |
  STA.B $00                                 ; $8C9643 |
  JMP.W ($0000)                             ; $8C9645 |

PTR16_8C9648:
  dw CODE_8C964C                            ; $8C9648 |
  dw CODE_8C9688                            ; $8C964A |

CODE_8C964C:
  SEC                                       ; $8C964C |
  LDA.B $3A,X                               ; $8C964D |
  SBC.W #$0001                              ; $8C964F |
  PHX                                       ; $8C9652 |
  ASL A                                     ; $8C9653 |
  TAX                                       ; $8C9654 |
  LDA.L PTR16_8C965F,X                      ; $8C9655 |
  PLX                                       ; $8C9659 |
  STA.B $00                                 ; $8C965A |
  JMP.W ($0000)                             ; $8C965C |

PTR16_8C965F:
  dw CODE_8C9665                            ; $8C965F |
  dw CODE_8C9665                            ; $8C9661 |
  dw CODE_8C9672                            ; $8C9663 |

CODE_8C9665:
  LDA.B $48,X                               ; $8C9665 |
  STA.B $28,X                               ; $8C9667 |
  LDA.W #$3024                              ; $8C9669 |
  JSL.L CODE_FL_86CAEE                      ; $8C966C |
  BRA CODE_8C9680                           ; $8C9670 |

CODE_8C9672:
  LDA.W #$0100                              ; $8C9672 |
  JSL.L CODE_FL_86C887                      ; $8C9675 |
  LDA.W #$3025                              ; $8C9679 |
  JSL.L CODE_FL_86CAEE                      ; $8C967C |

CODE_8C9680:
  LDA.W #$0030                              ; $8C9680 |
  STA.B $2C,X                               ; $8C9683 |
  INC.B $3C,X                               ; $8C9685 |
  RTL                                       ; $8C9687 |

CODE_8C9688:
  JSR.W CODE_FN_8C99C9                      ; $8C9688 |
  BEQ CODE_8C96F4                           ; $8C968B |
  SEC                                       ; $8C968D |
  SBC.W #$0001                              ; $8C968E |
  PHX                                       ; $8C9691 |
  ASL A                                     ; $8C9692 |
  TAX                                       ; $8C9693 |
  LDA.L PTR16_8C969E,X                      ; $8C9694 |
  PLX                                       ; $8C9698 |
  STA.B $00                                 ; $8C9699 |
  JMP.W ($0000)                             ; $8C969B |

PTR16_8C969E:
  dw CODE_8C96A6                            ; $8C969E |
  dw CODE_8C96AD                            ; $8C96A0 |
  dw CODE_8C96EC                            ; $8C96A2 |
  dw CODE_8C96B4                            ; $8C96A4 |

CODE_8C96A6:
  LDA.W #$0001                              ; $8C96A6 |
  STA.B $3A,X                               ; $8C96A9 |
  BRA CODE_8C96E0                           ; $8C96AB |

CODE_8C96AD:
  LDA.W #$0002                              ; $8C96AD |
  STA.B $3A,X                               ; $8C96B0 |
  BRA CODE_8C96E0                           ; $8C96B2 |

CODE_8C96B4:
  SEC                                       ; $8C96B4 |
  LDA.B $3A,X                               ; $8C96B5 |
  SBC.W #$0001                              ; $8C96B7 |
  PHX                                       ; $8C96BA |
  ASL A                                     ; $8C96BB |
  TAX                                       ; $8C96BC |
  LDA.L PTR16_8C96C7,X                      ; $8C96BD |
  PLX                                       ; $8C96C1 |
  STA.B $00                                 ; $8C96C2 |
  JMP.W ($0000)                             ; $8C96C4 |

PTR16_8C96C7:
  dw CODE_8C96CB                            ; $8C96C7 |
  dw CODE_8C96D4                            ; $8C96C9 |

CODE_8C96CB:
  LDA.B $04,X                               ; $8C96CB |
  ORA.W #$2020                              ; $8C96CD |
  STA.B $04,X                               ; $8C96D0 |
  BRA CODE_8C96DB                           ; $8C96D2 |

CODE_8C96D4:
  LDA.B $04,X                               ; $8C96D4 |
  AND.W #$DFDF                              ; $8C96D6 |
  STA.B $04,X                               ; $8C96D9 |

CODE_8C96DB:
  LDA.W #$0003                              ; $8C96DB |
  STA.B $3A,X                               ; $8C96DE |

CODE_8C96E0:
  LDA.W #$0100                              ; $8C96E0 |
  STA.B $48,X                               ; $8C96E3 |
  STZ.B $26,X                               ; $8C96E5 |
  STZ.B $28,X                               ; $8C96E7 |
  DEC.B $3C,X                               ; $8C96E9 |
  RTL                                       ; $8C96EB |

CODE_8C96EC:
  LDA.B $28,X                               ; $8C96EC |
  EOR.W #$FFFF                              ; $8C96EE |
  INC A                                     ; $8C96F1 |
  STA.B $28,X                               ; $8C96F2 |

CODE_8C96F4:
  SEC                                       ; $8C96F4 |
  LDA.B $3A,X                               ; $8C96F5 |
  SBC.W #$0001                              ; $8C96F7 |
  PHX                                       ; $8C96FA |
  ASL A                                     ; $8C96FB |
  TAX                                       ; $8C96FC |
  LDA.L PTR16_8C9707,X                      ; $8C96FD |
  PLX                                       ; $8C9701 |
  STA.B $00                                 ; $8C9702 |
  JMP.W ($0000)                             ; $8C9704 |

PTR16_8C9707:
  dw CODE_8C970D                            ; $8C9707 |
  dw CODE_8C9721                            ; $8C9709 |
  dw CODE_8C9735                            ; $8C970B |

CODE_8C970D:
  LDA.W $1C92                               ; $8C970D |
  BNE CODE_JP_8C9782                        ; $8C9710 |
  LDA.W $1C90                               ; $8C9712 |
  STA.B $4E,X                               ; $8C9715 |
  LDA.W #$00B8                              ; $8C9717 |
  JSR.W CODE_FN_8C9D8E                      ; $8C971A |
  STA.B $09,X                               ; $8C971D |
  BRA CODE_8C9747                           ; $8C971F |

CODE_8C9721:
  LDA.W $1CA2                               ; $8C9721 |
  BNE CODE_JP_8C9782                        ; $8C9724 |
  LDA.W $1CA0                               ; $8C9726 |
  STA.B $4E,X                               ; $8C9729 |
  LDA.W #$0048                              ; $8C972B |
  JSR.W CODE_FN_8C9D8E                      ; $8C972E |
  STA.B $09,X                               ; $8C9731 |
  BRA CODE_8C9747                           ; $8C9733 |

CODE_8C9735:
  LDA.W $1CB2                               ; $8C9735 |
  BNE CODE_JP_8C9782                        ; $8C9738 |
  LDA.W $1CB0                               ; $8C973A |
  STA.B $4E,X                               ; $8C973D |
  LDA.W #$0048                              ; $8C973F |
  JSR.W CODE_FN_8C9DAA                      ; $8C9742 |
  STA.B $0D,X                               ; $8C9745 |

CODE_8C9747:
  JSL.L CODE_FL_86C70D                      ; $8C9747 |
  SEC                                       ; $8C974B |
  LDA.B $3A,X                               ; $8C974C |
  SBC.W #$0001                              ; $8C974E |
  PHX                                       ; $8C9751 |
  ASL A                                     ; $8C9752 |
  TAX                                       ; $8C9753 |
  LDA.L PTR16_8C975E,X                      ; $8C9754 |
  PLX                                       ; $8C9758 |
  STA.B $00                                 ; $8C9759 |
  JMP.W ($0000)                             ; $8C975B |

PTR16_8C975E:
  dw CODE_8C9764                            ; $8C975E |
  dw CODE_8C9764                            ; $8C9760 |
  dw CODE_8C9771                            ; $8C9762 |

CODE_8C9764:
  LDA.B $28,X                               ; $8C9764 |
  STA.B $48,X                               ; $8C9766 |
  LDA.W #$37BC                              ; $8C9768 |
  STA.B $00,X                               ; $8C976B |
  STZ.B $1E,X                               ; $8C976D |
  BRA CODE_8C9778                           ; $8C976F |

CODE_8C9771:
  LDA.W #$37A4                              ; $8C9771 |
  STA.B $00,X                               ; $8C9774 |
  STZ.B $1E,X                               ; $8C9776 |

CODE_8C9778:
  STZ.B $26,X                               ; $8C9778 |
  STZ.B $28,X                               ; $8C977A |
  LDA.W #$0003                              ; $8C977C |
  STA.B $1A,X                               ; $8C977F |
  RTL                                       ; $8C9781 |

CODE_JP_8C9782:
  JSL.L CODE_FL_85A9EF                      ; $8C9782 |
  JSL.L CODE_FL_85A9BF                      ; $8C9786 |
  STZ.B $26,X                               ; $8C978A |
  STZ.B $28,X                               ; $8C978C |
  LDA.W #$0004                              ; $8C978E |
  STA.B $1A,X                               ; $8C9791 |
  RTL                                       ; $8C9793 |

CODE_8C9794:
  LDA.B $3E,X                               ; $8C9794 |
  PHX                                       ; $8C9796 |
  ASL A                                     ; $8C9797 |
  TAX                                       ; $8C9798 |
  LDA.L PTR16_8C97A3,X                      ; $8C9799 |
  PLX                                       ; $8C979D |
  STA.B $00                                 ; $8C979E |
  JMP.W ($0000)                             ; $8C97A0 |

PTR16_8C97A3:
  dw CODE_8C97A7                            ; $8C97A3 |
  dw CODE_8C97D3                            ; $8C97A5 |

CODE_8C97A7:
  SEC                                       ; $8C97A7 |
  LDA.B $3A,X                               ; $8C97A8 |
  SBC.W #$0001                              ; $8C97AA |
  PHX                                       ; $8C97AD |
  ASL A                                     ; $8C97AE |
  TAX                                       ; $8C97AF |
  LDA.L PTR16_8C97BA,X                      ; $8C97B0 |
  PLX                                       ; $8C97B4 |
  STA.B $00                                 ; $8C97B5 |
  JMP.W ($0000)                             ; $8C97B7 |

PTR16_8C97BA:
  dw CODE_8C97C0                            ; $8C97BA |
  dw CODE_8C97C0                            ; $8C97BC |
  dw CODE_8C97C9                            ; $8C97BE |

CODE_8C97C0:
  LDA.W #$3026                              ; $8C97C0 |
  JSL.L CODE_FL_86CAEE                      ; $8C97C3 |
  BRA CODE_8C97D0                           ; $8C97C7 |

CODE_8C97C9:
  LDA.W #$3027                              ; $8C97C9 |
  JSL.L CODE_FL_86CAEE                      ; $8C97CC |

CODE_8C97D0:
  INC.B $3E,X                               ; $8C97D0 |
  RTL                                       ; $8C97D2 |

CODE_8C97D3:
  SEC                                       ; $8C97D3 |
  LDA.B $3A,X                               ; $8C97D4 |
  SBC.W #$0001                              ; $8C97D6 |
  PHX                                       ; $8C97D9 |
  ASL A                                     ; $8C97DA |
  TAX                                       ; $8C97DB |
  LDA.L PTR16_8C97E6,X                      ; $8C97DC |
  PLX                                       ; $8C97E0 |
  STA.B $00                                 ; $8C97E1 |
  JMP.W ($0000)                             ; $8C97E3 |

PTR16_8C97E6:
  dw CODE_8C97EC                            ; $8C97E6 |
  dw CODE_8C9800                            ; $8C97E8 |
  dw CODE_8C9817                            ; $8C97EA |

CODE_8C97EC:
  LDA.W $1C92                               ; $8C97EC |
  BNE CODE_JP_8C9782                        ; $8C97EF |
  LDA.W $1C90                               ; $8C97F1 |
  STA.B $4E,X                               ; $8C97F4 |
  LDA.W #$00B8                              ; $8C97F6 |
  JSR.W CODE_FN_8C9D8E                      ; $8C97F9 |
  STA.B $09,X                               ; $8C97FC |
  BRA CODE_8C982C                           ; $8C97FE |

CODE_8C9800:
  LDA.W $1CA2                               ; $8C9800 |
  BEQ CODE_8C9808                           ; $8C9803 |
  JMP.W CODE_JP_8C9782                      ; $8C9805 |

CODE_8C9808:
  LDA.W $1CA0                               ; $8C9808 |
  STA.B $4E,X                               ; $8C980B |
  LDA.W #$0048                              ; $8C980D |
  JSR.W CODE_FN_8C9D8E                      ; $8C9810 |
  STA.B $09,X                               ; $8C9813 |
  BRA CODE_8C982C                           ; $8C9815 |

CODE_8C9817:
  LDA.W $1CB2                               ; $8C9817 |
  BEQ CODE_8C981F                           ; $8C981A |
  JMP.W CODE_JP_8C9782                      ; $8C981C |

CODE_8C981F:
  LDA.W $1CB0                               ; $8C981F |
  STA.B $4E,X                               ; $8C9822 |
  LDA.W #$0048                              ; $8C9824 |
  JSR.W CODE_FN_8C9DAA                      ; $8C9827 |
  STA.B $0D,X                               ; $8C982A |

CODE_8C982C:
  LDA.B $20,X                               ; $8C982C |
  BEQ CODE_8C9860                           ; $8C982E |
  LDA.B $1C,X                               ; $8C9830 |
  CMP.W #$0006                              ; $8C9832 |
  BNE CODE_8C985F                           ; $8C9835 |
  LDA.B $20,X                               ; $8C9837 |
  CMP.W #$0004                              ; $8C9839 |
  BNE CODE_8C985F                           ; $8C983C |
  LDA.W #$0104                              ; $8C983E |
  JSL.L CODE_FL_86C9A7                      ; $8C9841 |
  LDA.B $3A,X                               ; $8C9845 |
  ASL A                                     ; $8C9847 |
  TAY                                       ; $8C9848 |
  PHB                                       ; $8C9849 |
  PHK                                       ; $8C984A |
  PLB                                       ; $8C984B |
  LDA.W CODE_009890,Y                       ; $8C984C |
  PLB                                       ; $8C984F |
  STA.B $08                                 ; $8C9850 |
  PHB                                       ; $8C9852 |
  PHK                                       ; $8C9853 |
  PLB                                       ; $8C9854 |
  LDA.W CODE_009896,Y                       ; $8C9855 |
  PLB                                       ; $8C9858 |
  STA.B $0A                                 ; $8C9859 |
  JSL.L CODE_FL_85AF49                      ; $8C985B |

CODE_8C985F:
  RTL                                       ; $8C985F |

CODE_8C9860:
  SEC                                       ; $8C9860 |
  LDA.B $3A,X                               ; $8C9861 |
  SBC.W #$0001                              ; $8C9863 |
  PHX                                       ; $8C9866 |
  ASL A                                     ; $8C9867 |
  TAX                                       ; $8C9868 |
  LDA.L PTR16_8C9873,X                      ; $8C9869 |
  PLX                                       ; $8C986D |
  STA.B $00                                 ; $8C986E |
  JMP.W ($0000)                             ; $8C9870 |

PTR16_8C9873:
  dw CODE_8C9879                            ; $8C9873 |
  dw CODE_8C9879                            ; $8C9875 |
  dw CODE_8C9882                            ; $8C9877 |

CODE_8C9879:
  LDA.W #$37BC                              ; $8C9879 |
  STA.B $00,X                               ; $8C987C |
  STZ.B $1E,X                               ; $8C987E |
  BRA CODE_8C9889                           ; $8C9880 |

CODE_8C9882:
  LDA.W #$37A4                              ; $8C9882 |
  STA.B $00,X                               ; $8C9885 |
  STZ.B $1E,X                               ; $8C9887 |

CODE_8C9889:
  JSR.W CODE_FN_8C99BD                      ; $8C9889 |
  LDA.W #$0002                              ; $8C988C |
  STA.B $1A,X                               ; $8C988F |
  RTL                                       ; $8C9891 |

  dw $0004,$FFFC,$0000,$0000                ; $8C9892 |
  dw $0000,$FFFC                            ; $8C989A |

CODE_8C989E:
  JSL.L CODE_FL_85FDDA                      ; $8C989E |
  JSR.W CODE_FN_8C99B3                      ; $8C98A2 |
  BCC CODE_8C98F3                           ; $8C98A5 |
  LDA.B $40,X                               ; $8C98A7 |
  PHX                                       ; $8C98A9 |
  ASL A                                     ; $8C98AA |
  TAX                                       ; $8C98AB |
  LDA.L PTR16_8C98B6,X                      ; $8C98AC |
  PLX                                       ; $8C98B0 |
  STA.B $00                                 ; $8C98B1 |
  JMP.W ($0000)                             ; $8C98B3 |

PTR16_8C98B6:
  dw CODE_8C98BA                            ; $8C98B6 |
  dw CODE_8C98ED                            ; $8C98B8 |

CODE_8C98BA:
  SEC                                       ; $8C98BA |
  LDA.B $3A,X                               ; $8C98BB |
  SBC.W #$0001                              ; $8C98BD |
  PHX                                       ; $8C98C0 |
  ASL A                                     ; $8C98C1 |
  TAX                                       ; $8C98C2 |
  LDA.L PTR16_8C98CD,X                      ; $8C98C3 |
  PLX                                       ; $8C98C7 |
  STA.B $00                                 ; $8C98C8 |
  JMP.W ($0000)                             ; $8C98CA |

PTR16_8C98CD:
  dw CODE_8C98D3                            ; $8C98CD |
  dw CODE_8C98DE                            ; $8C98CF |
  dw CODE_8C98E5                            ; $8C98D1 |

CODE_8C98D3:
  LDA.W #$FC00                              ; $8C98D3 |
  EOR.W #$FFFF                              ; $8C98D6 |
  INC A                                     ; $8C98D9 |
  STA.B $26,X                               ; $8C98DA |
  BRA CODE_8C98EA                           ; $8C98DC |

CODE_8C98DE:
  LDA.W #$FC00                              ; $8C98DE |
  STA.B $26,X                               ; $8C98E1 |
  BRA CODE_8C98EA                           ; $8C98E3 |

CODE_8C98E5:
  LDA.W #$FC00                              ; $8C98E5 |
  STA.B $28,X                               ; $8C98E8 |

CODE_8C98EA:
  INC.B $40,X                               ; $8C98EA |
  RTL                                       ; $8C98EC |

CODE_8C98ED:
  JSR.W CODE_FN_8C94E2                      ; $8C98ED |
  BNE CODE_8C98F3                           ; $8C98F0 |
  RTL                                       ; $8C98F2 |

CODE_8C98F3:
  DEC.W $1CC0                               ; $8C98F3 |
  JSL.L CODE_FL_85A986                      ; $8C98F6 |
  JML.L CODE_FL_86CA2D                      ; $8C98FA |

CODE_8C98FE:
  LDA.B $42,X                               ; $8C98FE |
  PHX                                       ; $8C9900 |
  ASL A                                     ; $8C9901 |
  TAX                                       ; $8C9902 |
  LDA.L PTR16_8C990D,X                      ; $8C9903 |
  PLX                                       ; $8C9907 |
  STA.B $00                                 ; $8C9908 |
  JMP.W ($0000)                             ; $8C990A |

PTR16_8C990D:
  dw CODE_8C9911                            ; $8C990D |
  dw CODE_8C994E                            ; $8C990F |

CODE_8C9911:
  SEC                                       ; $8C9911 |
  LDA.B $3A,X                               ; $8C9912 |
  SBC.W #$0001                              ; $8C9914 |
  PHX                                       ; $8C9917 |
  ASL A                                     ; $8C9918 |
  TAX                                       ; $8C9919 |
  LDA.L PTR16_8C9924,X                      ; $8C991A |
  PLX                                       ; $8C991E |
  STA.B $00                                 ; $8C991F |
  JMP.W ($0000)                             ; $8C9921 |

PTR16_8C9924:
  dw CODE_8C992A                            ; $8C9924 |
  dw CODE_8C992A                            ; $8C9926 |
  dw CODE_8C9933                            ; $8C9928 |

CODE_8C992A:
  LDA.W #$37CC                              ; $8C992A |
  STA.B $00,X                               ; $8C992D |
  STZ.B $1E,X                               ; $8C992F |
  BRA CODE_8C993A                           ; $8C9931 |

CODE_8C9933:
  LDA.W #$37B4                              ; $8C9933 |
  STA.B $00,X                               ; $8C9936 |
  STZ.B $1E,X                               ; $8C9938 |

CODE_8C993A:
  JSL.L CODE_FL_85A9BF                      ; $8C993A |
  JSL.L CODE_FL_85A9F7                      ; $8C993E |
  STZ.B $26,X                               ; $8C9942 |
  STZ.B $28,X                               ; $8C9944 |
  LDA.W #$0020                              ; $8C9946 |
  STA.B $2C,X                               ; $8C9949 |
  INC.B $42,X                               ; $8C994B |
  RTL                                       ; $8C994D |

CODE_8C994E:
  JSL.L CODE_FL_85A893                      ; $8C994E |
  JSL.L CODE_FL_86C70D                      ; $8C9952 |
  DEC.W $1CC0                               ; $8C9956 |
  LDA.W #$A000                              ; $8C9959 |
  JSL.L CODE_FL_85AA0F                      ; $8C995C |
  JSL.L CODE_FL_85A986                      ; $8C9960 |
  JML.L CODE_FL_86CA2D                      ; $8C9964 |

CODE_8C9968:
  JSL.L CODE_FL_85F885                      ; $8C9968 |
  JSL.L CODE_FL_86C3F8                      ; $8C996C |
  PHX                                       ; $8C9970 |
  ASL A                                     ; $8C9971 |
  TAX                                       ; $8C9972 |
  LDA.L PTR16_8C997D,X                      ; $8C9973 |
  PLX                                       ; $8C9977 |
  STA.B $00                                 ; $8C9978 |
  JMP.W ($0000)                             ; $8C997A |

PTR16_8C997D:
  dw CODE_8C9981                            ; $8C997D |
  dw CODE_8C99A3                            ; $8C997F |

CODE_8C9981:
  JSL.L CODE_FL_86C444                      ; $8C9981 |
  JSL.L CODE_FL_86C582                      ; $8C9985 |
  LDA.W #$004E                              ; $8C9989 |
  JSL.L CODE_FL_86CAEE                      ; $8C998C |
  JSL.L CODE_FL_85A5CA                      ; $8C9990 |
  JSL.L CODE_FL_85A9EF                      ; $8C9994 |
  LDA.W #$0004                              ; $8C9998 |
  JSL.L CODE_FL_85B3A9                      ; $8C999B |
  JML.L CODE_FL_86C63F                      ; $8C999F |

CODE_8C99A3:
  RTL                                       ; $8C99A3 |

CODE_FN_8C99A4:
  LDA.B $1A,X                               ; $8C99A4 |
  BEQ CODE_8C99B2                           ; $8C99A6 |
  LDA.W $1CC2                               ; $8C99A8 |
  BEQ CODE_8C99B2                           ; $8C99AB |
  LDA.W #$0005                              ; $8C99AD |
  STA.B $1A,X                               ; $8C99B0 |

CODE_8C99B2:
  RTS                                       ; $8C99B2 |

CODE_FN_8C99B3:
  CLC                                       ; $8C99B3 |
  LDA.B $32,X                               ; $8C99B4 |
  AND.W #$2000                              ; $8C99B6 |
  BNE CODE_8C99BC                           ; $8C99B9 |
  SEC                                       ; $8C99BB |

CODE_8C99BC:
  RTS                                       ; $8C99BC |

CODE_FN_8C99BD:
  LDA.W #$0000                              ; $8C99BD |
  STA.B $3C,X                               ; $8C99C0 |
  STA.B $3E,X                               ; $8C99C2 |
  STA.B $40,X                               ; $8C99C4 |
  STA.B $42,X                               ; $8C99C6 |
  RTS                                       ; $8C99C8 |

CODE_FN_8C99C9:
  STZ.B $00                                 ; $8C99C9 |
  SEC                                       ; $8C99CB |
  LDA.B $09,X                               ; $8C99CC |
  SBC.W #$0001                              ; $8C99CE |
  CMP.W #$00B8                              ; $8C99D1 |
  BCC CODE_8C99E2                           ; $8C99D4 |
  LDA.W #$00B8                              ; $8C99D6 |
  STA.B $09,X                               ; $8C99D9 |
  LDA.W #$0001                              ; $8C99DB |
  STA.B $00                                 ; $8C99DE |
  BRA CODE_8C9A19                           ; $8C99E0 |

CODE_8C99E2:
  LDA.B $09,X                               ; $8C99E2 |
  CMP.W #$0048                              ; $8C99E4 |
  BCS CODE_8C99F5                           ; $8C99E7 |
  LDA.W #$0048                              ; $8C99E9 |
  STA.B $09,X                               ; $8C99EC |
  LDA.W #$0002                              ; $8C99EE |
  STA.B $00                                 ; $8C99F1 |
  BRA CODE_8C9A19                           ; $8C99F3 |

CODE_8C99F5:
  LDA.B $0D,X                               ; $8C99F5 |
  CMP.W #$00A0                              ; $8C99F7 |
  BCC CODE_8C9A08                           ; $8C99FA |
  LDA.W #$00A0                              ; $8C99FC |
  STA.B $0D,X                               ; $8C99FF |
  LDA.W #$0003                              ; $8C9A01 |
  STA.B $00                                 ; $8C9A04 |
  BRA CODE_8C9A19                           ; $8C9A06 |

CODE_8C9A08:
  LDA.B $0D,X                               ; $8C9A08 |
  CMP.W #$0048                              ; $8C9A0A |
  BCS CODE_8C9A19                           ; $8C9A0D |
  LDA.W #$0048                              ; $8C9A0F |
  STA.B $0D,X                               ; $8C9A12 |
  LDA.W #$0004                              ; $8C9A14 |
  STA.B $00                                 ; $8C9A17 |

CODE_8C9A19:
  LDA.B $00                                 ; $8C9A19 |
  RTS                                       ; $8C9A1B |

CODE_8C9A1C:
  LDA.W #$0004                              ; $8C9A1C |
  JSR.W CODE_FN_8C9D6A                      ; $8C9A1F |
  JSL.L CODE_FL_86C41D                      ; $8C9A22 |
  PHX                                       ; $8C9A26 |
  ASL A                                     ; $8C9A27 |
  TAX                                       ; $8C9A28 |
  LDA.L PTR16_8C9A33,X                      ; $8C9A29 |
  PLX                                       ; $8C9A2D |
  STA.B $00                                 ; $8C9A2E |
  JMP.W ($0000)                             ; $8C9A30 |

PTR16_8C9A33:
  dw CODE_8C9A3D                            ; $8C9A33 |
  dw CODE_8C9A8E                            ; $8C9A35 |
  dw CODE_8C9AAD                            ; $8C9A37 |
  dw CODE_8C9AD7                            ; $8C9A39 |
  dw CODE_8C9D3C                            ; $8C9A3B |

CODE_8C9A3D:
  JSL.L CODE_FL_86C591                      ; $8C9A3D |
  LDA.W #$37D4                              ; $8C9A41 |
  STA.B $00,X                               ; $8C9A44 |
  LDA.W #$0018                              ; $8C9A46 |
  STA.B $3E,X                               ; $8C9A49 |
  STX.W $1C90                               ; $8C9A4B |
  LDA.W #$0002                              ; $8C9A4E |
  STA.B $00                                 ; $8C9A51 |
  STZ.B $02                                 ; $8C9A53 |

CODE_8C9A55:
  LDA.W #$0109                              ; $8C9A55 |
  JSL.L CODE_FL_86C9A7                      ; $8C9A58 |
  LDA.B $02                                 ; $8C9A5C |
  ASL A                                     ; $8C9A5E |
  ASL A                                     ; $8C9A5F |
  PHY                                       ; $8C9A60 |
  TAY                                       ; $8C9A61 |
  PHB                                       ; $8C9A62 |
  PHK                                       ; $8C9A63 |
  PLB                                       ; $8C9A64 |
  LDA.W LOOSE_OP_009A86,Y                   ; $8C9A65 |
  PLB                                       ; $8C9A68 |
  STY.B $04                                 ; $8C9A69 |
  PLY                                       ; $8C9A6B |
  STA.W $0009,Y                             ; $8C9A6C |
  PHY                                       ; $8C9A6F |
  LDY.B $04                                 ; $8C9A70 |
  PHB                                       ; $8C9A72 |
  PHK                                       ; $8C9A73 |
  PLB                                       ; $8C9A74 |
  LDA.W CODE_009A88,Y                       ; $8C9A75 |
  PLB                                       ; $8C9A78 |
  PLY                                       ; $8C9A79 |
  STA.W $000D,Y                             ; $8C9A7A |
  INC.B $02                                 ; $8C9A7D |
  DEC.B $00                                 ; $8C9A7F |
  BNE CODE_8C9A55                           ; $8C9A81 |
  INC.B $1A,X                               ; $8C9A83 |
  RTL                                       ; $8C9A85 |

  dw $00B8,$005E,$00B8,$008A                ; $8C9A86 |

CODE_8C9A8E:
  STZ.W $1C92                               ; $8C9A8E |
  LDA.W $1C8E                               ; $8C9A91 |
  BEQ CODE_8C9AAC                           ; $8C9A94 |
  LDA.W #$FF80                              ; $8C9A96 |
  STA.B $26,X                               ; $8C9A99 |
  LDA.W #$0200                              ; $8C9A9B |
  STA.B $4A,X                               ; $8C9A9E |
  LDA.W #$0280                              ; $8C9AA0 |
  STA.B $42,X                               ; $8C9AA3 |
  LDA.W #$FFFF                              ; $8C9AA5 |
  STA.B $44,X                               ; $8C9AA8 |
  INC.B $1A,X                               ; $8C9AAA |

CODE_8C9AAC:
  RTL                                       ; $8C9AAC |

CODE_8C9AAD:
  LDA.W $1C8E                               ; $8C9AAD |
  BNE CODE_8C9AC7                           ; $8C9AB0 |
  LDA.B $09,X                               ; $8C9AB2 |
  CMP.W #$00B8                              ; $8C9AB4 |
  BNE CODE_8C9ABD                           ; $8C9AB7 |
  DEC.B $1A,X                               ; $8C9AB9 |
  BRA CODE_8C9AD4                           ; $8C9ABB |

CODE_8C9ABD:
  LDA.W #$0001                              ; $8C9ABD |
  STA.W $1C92                               ; $8C9AC0 |
  INC.B $1A,X                               ; $8C9AC3 |
  BRA CODE_8C9AD4                           ; $8C9AC5 |

CODE_8C9AC7:
  LDA.W #$00B8                              ; $8C9AC7 |
  STA.W $1CCE                               ; $8C9ACA |
  LDA.B $09,X                               ; $8C9ACD |
  JSR.W CODE_FN_8C9E54                      ; $8C9ACF |
  BCC CODE_8C9AD6                           ; $8C9AD2 |

CODE_8C9AD4:
  STZ.B $26,X                               ; $8C9AD4 |

CODE_8C9AD6:
  RTL                                       ; $8C9AD6 |

CODE_8C9AD7:
  LDA.W #$00B8                              ; $8C9AD7 |
  JSR.W CODE_FN_8C9DC6                      ; $8C9ADA |
  RTL                                       ; $8C9ADD |

CODE_8C9ADE:
  LDA.W #$0003                              ; $8C9ADE |
  JSR.W CODE_FN_8C9D6A                      ; $8C9AE1 |
  JSL.L CODE_FL_86C870                      ; $8C9AE4 |
  LDA.B $1A,X                               ; $8C9AE8 |
  PHX                                       ; $8C9AEA |
  ASL A                                     ; $8C9AEB |
  TAX                                       ; $8C9AEC |
  LDA.L PTR16_8C9AF7,X                      ; $8C9AED |
  PLX                                       ; $8C9AF1 |
  STA.B $00                                 ; $8C9AF2 |
  JMP.W ($0000)                             ; $8C9AF4 |

PTR16_8C9AF7:
  dw CODE_8C9AFF                            ; $8C9AF7 |
  dw CODE_8C9B10                            ; $8C9AF9 |
  dw CODE_8C9B18                            ; $8C9AFB |
  dw CODE_8C9D3C                            ; $8C9AFD |

CODE_8C9AFF:
  JSL.L CODE_FL_86C591                      ; $8C9AFF |
  LDA.W #$37D4                              ; $8C9B03 |
  STA.B $00,X                               ; $8C9B06 |
  LDA.W $1C90                               ; $8C9B08 |
  STA.B $4E,X                               ; $8C9B0B |
  INC.B $1A,X                               ; $8C9B0D |
  RTL                                       ; $8C9B0F |

CODE_8C9B10:
  LDA.W $1C8E                               ; $8C9B10 |
  BEQ CODE_8C9B17                           ; $8C9B13 |
  INC.B $1A,X                               ; $8C9B15 |

CODE_8C9B17:
  RTL                                       ; $8C9B17 |

CODE_8C9B18:
  LDA.W #$00B8                              ; $8C9B18 |
  JSR.W CODE_FN_8C9D8E                      ; $8C9B1B |
  STA.B $09,X                               ; $8C9B1E |
  JSR.W CODE_FN_8C9E67                      ; $8C9B20 |
  RTL                                       ; $8C9B23 |

CODE_8C9B24:
  LDA.W #$0004                              ; $8C9B24 |
  JSR.W CODE_FN_8C9D6A                      ; $8C9B27 |
  JSL.L CODE_FL_86C41D                      ; $8C9B2A |
  PHX                                       ; $8C9B2E |
  ASL A                                     ; $8C9B2F |
  TAX                                       ; $8C9B30 |
  LDA.L PTR16_8C9B3B,X                      ; $8C9B31 |
  PLX                                       ; $8C9B35 |
  STA.B $00                                 ; $8C9B36 |
  JMP.W ($0000)                             ; $8C9B38 |

PTR16_8C9B3B:
  dw CODE_8C9B45                            ; $8C9B3B |
  dw CODE_8C9B96                            ; $8C9B3D |
  dw CODE_8C9BB5                            ; $8C9B3F |
  dw CODE_8C9BDF                            ; $8C9B41 |
  dw CODE_8C9D3C                            ; $8C9B43 |

CODE_8C9B45:
  JSL.L CODE_FL_86C591                      ; $8C9B45 |
  LDA.W #$37D4                              ; $8C9B49 |
  STA.B $00,X                               ; $8C9B4C |
  LDA.W #$0018                              ; $8C9B4E |
  STA.B $3E,X                               ; $8C9B51 |
  STX.W $1CA0                               ; $8C9B53 |
  LDA.W #$0002                              ; $8C9B56 |
  STA.B $00                                 ; $8C9B59 |
  STZ.B $02                                 ; $8C9B5B |

CODE_8C9B5D:
  LDA.W #$0202                              ; $8C9B5D |
  JSL.L CODE_FL_86C9A7                      ; $8C9B60 |
  LDA.B $02                                 ; $8C9B64 |
  ASL A                                     ; $8C9B66 |
  ASL A                                     ; $8C9B67 |
  PHY                                       ; $8C9B68 |
  TAY                                       ; $8C9B69 |
  PHB                                       ; $8C9B6A |
  PHK                                       ; $8C9B6B |
  PLB                                       ; $8C9B6C |
  LDA.W LOOSE_OP_009B8E,Y                   ; $8C9B6D |
  PLB                                       ; $8C9B70 |
  STY.B $04                                 ; $8C9B71 |
  PLY                                       ; $8C9B73 |
  STA.W $0009,Y                             ; $8C9B74 |
  PHY                                       ; $8C9B77 |
  LDY.B $04                                 ; $8C9B78 |
  PHB                                       ; $8C9B7A |
  PHK                                       ; $8C9B7B |
  PLB                                       ; $8C9B7C |
  LDA.W CODE_009B90,Y                       ; $8C9B7D |
  PLB                                       ; $8C9B80 |
  PLY                                       ; $8C9B81 |
  STA.W $000D,Y                             ; $8C9B82 |
  INC.B $02                                 ; $8C9B85 |
  DEC.B $00                                 ; $8C9B87 |
  BNE CODE_8C9B5D                           ; $8C9B89 |
  INC.B $1A,X                               ; $8C9B8B |
  RTL                                       ; $8C9B8D |

  dw $0048,$005E,$0048,$008A                ; $8C9B8E |

CODE_8C9B96:
  STZ.W $1CA2                               ; $8C9B96 |
  LDA.W $1C9E                               ; $8C9B99 |
  BEQ CODE_8C9BB4                           ; $8C9B9C |
  LDA.W #$0080                              ; $8C9B9E |
  STA.B $26,X                               ; $8C9BA1 |
  LDA.W #$FE00                              ; $8C9BA3 |
  STA.B $4A,X                               ; $8C9BA6 |
  LDA.W #$FD80                              ; $8C9BA8 |
  STA.B $42,X                               ; $8C9BAB |
  LDA.W #$0001                              ; $8C9BAD |
  STA.B $44,X                               ; $8C9BB0 |
  INC.B $1A,X                               ; $8C9BB2 |

CODE_8C9BB4:
  RTL                                       ; $8C9BB4 |

CODE_8C9BB5:
  LDA.W $1C9E                               ; $8C9BB5 |
  BNE CODE_8C9BCF                           ; $8C9BB8 |
  LDA.B $09,X                               ; $8C9BBA |
  CMP.W #$0048                              ; $8C9BBC |
  BNE CODE_8C9BC5                           ; $8C9BBF |
  DEC.B $1A,X                               ; $8C9BC1 |
  BRA CODE_8C9BDC                           ; $8C9BC3 |

CODE_8C9BC5:
  LDA.W #$0001                              ; $8C9BC5 |
  STA.W $1CA2                               ; $8C9BC8 |
  INC.B $1A,X                               ; $8C9BCB |
  BRA CODE_8C9BDC                           ; $8C9BCD |

CODE_8C9BCF:
  LDA.W #$0048                              ; $8C9BCF |
  STA.W $1CCE                               ; $8C9BD2 |
  LDA.B $09,X                               ; $8C9BD5 |
  JSR.W CODE_FN_8C9E54                      ; $8C9BD7 |
  BCC CODE_8C9BDE                           ; $8C9BDA |

CODE_8C9BDC:
  STZ.B $26,X                               ; $8C9BDC |

CODE_8C9BDE:
  RTL                                       ; $8C9BDE |

CODE_8C9BDF:
  LDA.W #$0048                              ; $8C9BDF |
  JSR.W CODE_FN_8C9DC6                      ; $8C9BE2 |
  RTL                                       ; $8C9BE5 |

CODE_8C9BE6:
  LDA.W #$0003                              ; $8C9BE6 |
  JSR.W CODE_FN_8C9D6A                      ; $8C9BE9 |
  JSL.L CODE_FL_86C870                      ; $8C9BEC |
  LDA.B $1A,X                               ; $8C9BF0 |
  PHX                                       ; $8C9BF2 |
  ASL A                                     ; $8C9BF3 |
  TAX                                       ; $8C9BF4 |
  LDA.L PTR16_8C9BFF,X                      ; $8C9BF5 |
  PLX                                       ; $8C9BF9 |
  STA.B $00                                 ; $8C9BFA |
  JMP.W ($0000)                             ; $8C9BFC |

PTR16_8C9BFF:
  dw CODE_8C9C07                            ; $8C9BFF |
  dw CODE_8C9C18                            ; $8C9C01 |
  dw CODE_8C9C20                            ; $8C9C03 |
  dw CODE_8C9D3C                            ; $8C9C05 |

CODE_8C9C07:
  JSL.L CODE_FL_86C591                      ; $8C9C07 |
  LDA.W #$37D4                              ; $8C9C0B |
  STA.B $00,X                               ; $8C9C0E |
  LDA.W $1CA0                               ; $8C9C10 |
  STA.B $4E,X                               ; $8C9C13 |
  INC.B $1A,X                               ; $8C9C15 |
  RTL                                       ; $8C9C17 |

CODE_8C9C18:
  LDA.W $1C9E                               ; $8C9C18 |
  BEQ CODE_8C9C1F                           ; $8C9C1B |
  INC.B $1A,X                               ; $8C9C1D |

CODE_8C9C1F:
  RTL                                       ; $8C9C1F |

CODE_8C9C20:
  LDA.W #$0048                              ; $8C9C20 |
  JSR.W CODE_FN_8C9D8E                      ; $8C9C23 |
  STA.B $09,X                               ; $8C9C26 |
  JSR.W CODE_FN_8C9E67                      ; $8C9C28 |
  RTL                                       ; $8C9C2B |

CODE_8C9C2C:
  LDA.W #$0004                              ; $8C9C2C |
  JSR.W CODE_FN_8C9D6A                      ; $8C9C2F |
  JSL.L CODE_FL_86C41D                      ; $8C9C32 |
  PHX                                       ; $8C9C36 |
  ASL A                                     ; $8C9C37 |
  TAX                                       ; $8C9C38 |
  LDA.L PTR16_8C9C43,X                      ; $8C9C39 |
  PLX                                       ; $8C9C3D |
  STA.B $00                                 ; $8C9C3E |
  JMP.W ($0000)                             ; $8C9C40 |

PTR16_8C9C43:
  dw CODE_8C9C4D                            ; $8C9C43 |
  dw CODE_8C9CA6                            ; $8C9C45 |
  dw CODE_8C9CC5                            ; $8C9C47 |
  dw CODE_8C9CEF                            ; $8C9C49 |
  dw CODE_8C9D3C                            ; $8C9C4B |

CODE_8C9C4D:
  JSL.L CODE_FL_86C591                      ; $8C9C4D |
  LDA.W #$37D4                              ; $8C9C51 |
  STA.B $00,X                               ; $8C9C54 |
  LDA.W #$0018                              ; $8C9C56 |
  STA.B $3E,X                               ; $8C9C59 |
  STX.W $1CB0                               ; $8C9C5B |
  LDA.W #$0004                              ; $8C9C5E |
  STA.B $00                                 ; $8C9C61 |
  STZ.B $02                                 ; $8C9C63 |

CODE_8C9C65:
  LDA.W #$0203                              ; $8C9C65 |
  JSL.L CODE_FL_86C9A7                      ; $8C9C68 |
  LDA.B $02                                 ; $8C9C6C |
  ASL A                                     ; $8C9C6E |
  ASL A                                     ; $8C9C6F |
  PHY                                       ; $8C9C70 |
  TAY                                       ; $8C9C71 |
  PHB                                       ; $8C9C72 |
  PHK                                       ; $8C9C73 |
  PLB                                       ; $8C9C74 |
  LDA.W LOOSE_OP_009C96,Y                   ; $8C9C75 |
  PLB                                       ; $8C9C78 |
  STY.B $04                                 ; $8C9C79 |
  PLY                                       ; $8C9C7B |
  STA.W $0009,Y                             ; $8C9C7C |
  PHY                                       ; $8C9C7F |
  LDY.B $04                                 ; $8C9C80 |
  PHB                                       ; $8C9C82 |
  PHK                                       ; $8C9C83 |
  PLB                                       ; $8C9C84 |
  LDA.W LOOSE_OP_009C98,Y                   ; $8C9C85 |
  PLB                                       ; $8C9C88 |
  PLY                                       ; $8C9C89 |
  STA.W $000D,Y                             ; $8C9C8A |
  INC.B $02                                 ; $8C9C8D |
  DEC.B $00                                 ; $8C9C8F |
  BNE CODE_8C9C65                           ; $8C9C91 |
  INC.B $1A,X                               ; $8C9C93 |
  RTL                                       ; $8C9C95 |

  dw $005B,$0048,$006D,$0048                ; $8C9C96 |
  dw $0093,$0048,$00A5,$0048                ; $8C9C9E |

CODE_8C9CA6:
  STZ.W $1CB2                               ; $8C9CA6 |
  LDA.W $1CAE                               ; $8C9CA9 |
  BEQ CODE_8C9CC4                           ; $8C9CAC |
  LDA.W #$0080                              ; $8C9CAE |
  STA.B $28,X                               ; $8C9CB1 |
  LDA.W #$FE00                              ; $8C9CB3 |
  STA.B $4C,X                               ; $8C9CB6 |
  LDA.W #$FD80                              ; $8C9CB8 |
  STA.B $42,X                               ; $8C9CBB |
  LDA.W #$0001                              ; $8C9CBD |
  STA.B $44,X                               ; $8C9CC0 |
  INC.B $1A,X                               ; $8C9CC2 |

CODE_8C9CC4:
  RTL                                       ; $8C9CC4 |

CODE_8C9CC5:
  LDA.W $1CAE                               ; $8C9CC5 |
  BNE CODE_8C9CDF                           ; $8C9CC8 |
  LDA.B $0D,X                               ; $8C9CCA |
  CMP.W #$0048                              ; $8C9CCC |
  BNE CODE_8C9CD5                           ; $8C9CCF |
  DEC.B $1A,X                               ; $8C9CD1 |
  BRA CODE_8C9CEC                           ; $8C9CD3 |

CODE_8C9CD5:
  LDA.W #$0001                              ; $8C9CD5 |
  STA.W $1CB2                               ; $8C9CD8 |
  INC.B $1A,X                               ; $8C9CDB |
  BRA CODE_8C9CEC                           ; $8C9CDD |

CODE_8C9CDF:
  LDA.W #$0048                              ; $8C9CDF |
  STA.W $1CCE                               ; $8C9CE2 |
  LDA.B $0D,X                               ; $8C9CE5 |
  JSR.W CODE_FN_8C9E54                      ; $8C9CE7 |
  BCC CODE_8C9CEE                           ; $8C9CEA |

CODE_8C9CEC:
  STZ.B $28,X                               ; $8C9CEC |

CODE_8C9CEE:
  RTL                                       ; $8C9CEE |

CODE_8C9CEF:
  LDA.W #$0048                              ; $8C9CEF |
  JSR.W CODE_FN_8C9DE5                      ; $8C9CF2 |
  RTL                                       ; $8C9CF5 |

CODE_8C9CF6:
  LDA.W #$0003                              ; $8C9CF6 |
  JSR.W CODE_FN_8C9D6A                      ; $8C9CF9 |
  JSL.L CODE_FL_86C870                      ; $8C9CFC |
  LDA.B $1A,X                               ; $8C9D00 |
  PHX                                       ; $8C9D02 |
  ASL A                                     ; $8C9D03 |
  TAX                                       ; $8C9D04 |
  LDA.L PTR16_8C9D0F,X                      ; $8C9D05 |
  PLX                                       ; $8C9D09 |
  STA.B $00                                 ; $8C9D0A |
  JMP.W ($0000)                             ; $8C9D0C |

PTR16_8C9D0F:
  dw CODE_8C9D17                            ; $8C9D0F |
  dw CODE_8C9D28                            ; $8C9D11 |
  dw CODE_8C9D30                            ; $8C9D13 |
  dw CODE_8C9D3C                            ; $8C9D15 |

CODE_8C9D17:
  JSL.L CODE_FL_86C591                      ; $8C9D17 |
  LDA.W #$37D4                              ; $8C9D1B |
  STA.B $00,X                               ; $8C9D1E |
  LDA.W $1CB0                               ; $8C9D20 |
  STA.B $4E,X                               ; $8C9D23 |
  INC.B $1A,X                               ; $8C9D25 |
  RTL                                       ; $8C9D27 |

CODE_8C9D28:
  LDA.W $1CAE                               ; $8C9D28 |
  BEQ CODE_8C9D2F                           ; $8C9D2B |
  INC.B $1A,X                               ; $8C9D2D |

CODE_8C9D2F:
  RTL                                       ; $8C9D2F |

CODE_8C9D30:
  LDA.W #$0048                              ; $8C9D30 |
  JSR.W CODE_FN_8C9DAA                      ; $8C9D33 |
  STA.B $0D,X                               ; $8C9D36 |
  JSR.W CODE_FN_8C9E67                      ; $8C9D38 |
  RTL                                       ; $8C9D3B |

CODE_8C9D3C:
  JSL.L CODE_FL_85A62E                      ; $8C9D3C |
  BEQ CODE_8C9D4A                           ; $8C9D40 |
  JSL.L CODE_FL_85A986                      ; $8C9D42 |
  JML.L CODE_FL_86CA36                      ; $8C9D46 |

CODE_8C9D4A:
  RTL                                       ; $8C9D4A |

CODE_8C9D4B:
  LDA.B $1A,X                               ; $8C9D4B |
  PHX                                       ; $8C9D4D |
  ASL A                                     ; $8C9D4E |
  TAX                                       ; $8C9D4F |
  LDA.L PTR16_8C9D5A,X                      ; $8C9D50 |
  PLX                                       ; $8C9D54 |
  STA.B $00                                 ; $8C9D55 |
  JMP.W ($0000)                             ; $8C9D57 |

PTR16_8C9D5A:
  dw CODE_8C9D5E                            ; $8C9D5A |
  dw CODE_8C9D69                            ; $8C9D5C |

CODE_8C9D5E:
  LDA.B $34,X                               ; $8C9D5E |
  ORA.W #$1080                              ; $8C9D60 |
  STA.B $34,X                               ; $8C9D63 |
  JML.L CODE_FL_86C63F                      ; $8C9D65 |

CODE_8C9D69:
  RTL                                       ; $8C9D69 |

CODE_FN_8C9D6A:
  STA.B $00                                 ; $8C9D6A |
  CMP.B $1A,X                               ; $8C9D6C |
  BEQ CODE_8C9D86                           ; $8C9D6E |
  LDA.B $1A,X                               ; $8C9D70 |
  BEQ CODE_8C9D86                           ; $8C9D72 |
  LDA.W $1CC2                               ; $8C9D74 |
  BEQ CODE_8C9D86                           ; $8C9D77 |
  STZ.B $26,X                               ; $8C9D79 |
  STZ.B $28,X                               ; $8C9D7B |
  LDA.W #$0040                              ; $8C9D7D |
  STA.B $4C,X                               ; $8C9D80 |
  LDA.B $00                                 ; $8C9D82 |
  STA.B $1A,X                               ; $8C9D84 |

CODE_8C9D86:
  RTS                                       ; $8C9D86 |

  LDA.B $3A,X                               ; $8C9D87 |
  SEC                                       ; $8C9D89 |
  SBC.W #$0001                              ; $8C9D8A |
  RTS                                       ; $8C9D8D |

CODE_FN_8C9D8E:
  STA.W $1CCE                               ; $8C9D8E |
  LDY.B $4E,X                               ; $8C9D91 |
  LDA.W $000D,Y                             ; $8C9D93 |
  STA.B $08                                 ; $8C9D96 |
  LDA.B $0D,X                               ; $8C9D98 |
  STA.B $0A                                 ; $8C9D9A |
  LDA.W #$00A0                              ; $8C9D9C |
  STA.B $0C                                 ; $8C9D9F |
  LDA.W #$0048                              ; $8C9DA1 |
  STA.B $0E                                 ; $8C9DA4 |
  JSR.W CODE_FN_8C9E04                      ; $8C9DA6 |
  RTS                                       ; $8C9DA9 |

CODE_FN_8C9DAA:
  STA.W $1CCE                               ; $8C9DAA |
  LDY.B $4E,X                               ; $8C9DAD |
  LDA.W $0009,Y                             ; $8C9DAF |
  STA.B $08                                 ; $8C9DB2 |
  LDA.B $09,X                               ; $8C9DB4 |
  STA.B $0A                                 ; $8C9DB6 |
  LDA.W #$00B8                              ; $8C9DB8 |
  STA.B $0C                                 ; $8C9DBB |
  LDA.W #$0048                              ; $8C9DBD |
  STA.B $0E                                 ; $8C9DC0 |
  JSR.W CODE_FN_8C9E04                      ; $8C9DC2 |
  RTS                                       ; $8C9DC5 |

CODE_FN_8C9DC6:
  STA.W $1CCE                               ; $8C9DC6 |
  LDA.B $09,X                               ; $8C9DC9 |
  STA.B $08                                 ; $8C9DCB |
  LDA.B $26,X                               ; $8C9DCD |
  STA.B $0A                                 ; $8C9DCF |
  LDA.B $4A,X                               ; $8C9DD1 |
  STA.B $0C                                 ; $8C9DD3 |
  JSR.W CODE_FN_8C9E78                      ; $8C9DD5 |
  LDA.B $08                                 ; $8C9DD8 |
  STA.B $09,X                               ; $8C9DDA |
  LDA.B $0A                                 ; $8C9DDC |
  STA.B $26,X                               ; $8C9DDE |
  LDA.B $0C                                 ; $8C9DE0 |
  STA.B $4A,X                               ; $8C9DE2 |
  RTS                                       ; $8C9DE4 |

CODE_FN_8C9DE5:
  STA.W $1CCE                               ; $8C9DE5 |
  LDA.B $0D,X                               ; $8C9DE8 |
  STA.B $08                                 ; $8C9DEA |
  LDA.B $28,X                               ; $8C9DEC |
  STA.B $0A                                 ; $8C9DEE |
  LDA.B $4C,X                               ; $8C9DF0 |
  STA.B $0C                                 ; $8C9DF2 |
  JSR.W CODE_FN_8C9E78                      ; $8C9DF4 |
  LDA.B $08                                 ; $8C9DF7 |
  STA.B $0D,X                               ; $8C9DF9 |
  LDA.B $0A                                 ; $8C9DFB |
  STA.B $28,X                               ; $8C9DFD |
  LDA.B $0C                                 ; $8C9DFF |
  STA.B $4C,X                               ; $8C9E01 |
  RTS                                       ; $8C9E03 |

CODE_FN_8C9E04:
  LDA.B $08                                 ; $8C9E04 |
  CMP.B $0A                                 ; $8C9E06 |
  BCS CODE_8C9E1A                           ; $8C9E08 |
  LDA.B $0C                                 ; $8C9E0A |
  SEC                                       ; $8C9E0C |
  SBC.B $0A                                 ; $8C9E0D |
  STA.B $00                                 ; $8C9E0F |
  LDA.B $0C                                 ; $8C9E11 |
  SEC                                       ; $8C9E13 |
  SBC.B $08                                 ; $8C9E14 |
  STA.B $02                                 ; $8C9E16 |
  BRA CODE_8C9E28                           ; $8C9E18 |

CODE_8C9E1A:
  LDA.B $0A                                 ; $8C9E1A |
  SEC                                       ; $8C9E1C |
  SBC.B $0E                                 ; $8C9E1D |
  STA.B $00                                 ; $8C9E1F |
  LDA.B $08                                 ; $8C9E21 |
  SEC                                       ; $8C9E23 |
  SBC.B $0E                                 ; $8C9E24 |
  STA.B $02                                 ; $8C9E26 |

CODE_8C9E28:
  LDA.W $0040,Y                             ; $8C9E28 |
  STA.B $06                                 ; $8C9E2B |
  BPL CODE_8C9E33                           ; $8C9E2D |
  EOR.W #$FFFF                              ; $8C9E2F |
  INC A                                     ; $8C9E32 |

CODE_8C9E33:
  LDY.B $00                                 ; $8C9E33 |
  JSL.L CODE_FL_808DF4                      ; $8C9E35 |
  LDY.B $02                                 ; $8C9E39 |
  JSL.L CODE_FL_808E65                      ; $8C9E3B |
  STA.B $04                                 ; $8C9E3F |
  LDA.B $06                                 ; $8C9E41 |
  BPL CODE_8C9E4D                           ; $8C9E43 |
  LDA.B $04                                 ; $8C9E45 |
  EOR.W #$FFFF                              ; $8C9E47 |
  INC A                                     ; $8C9E4A |
  STA.B $04                                 ; $8C9E4B |

CODE_8C9E4D:
  LDA.W $1CCE                               ; $8C9E4D |
  SEC                                       ; $8C9E50 |
  SBC.B $04                                 ; $8C9E51 |
  RTS                                       ; $8C9E53 |

CODE_FN_8C9E54:
  STA.B $00                                 ; $8C9E54 |
  LDA.W $1CCE                               ; $8C9E56 |
  SEC                                       ; $8C9E59 |
  SBC.B $00                                 ; $8C9E5A |
  STA.B $40,X                               ; $8C9E5C |
  BPL CODE_8C9E64                           ; $8C9E5E |
  EOR.W #$FFFF                              ; $8C9E60 |
  INC A                                     ; $8C9E63 |

CODE_8C9E64:
  CMP.B $3E,X                               ; $8C9E64 |
  RTS                                       ; $8C9E66 |

CODE_FN_8C9E67:
  LDY.B $4E,X                               ; $8C9E67 |
  LDA.W $001A,Y                             ; $8C9E69 |
  CMP.W #$0001                              ; $8C9E6C |
  BNE CODE_8C9E77                           ; $8C9E6F |
  LDA.W #$0001                              ; $8C9E71 |
  STA.B $1A,X                               ; $8C9E74 |
  CLC                                       ; $8C9E76 |

CODE_8C9E77:
  RTS                                       ; $8C9E77 |

CODE_FN_8C9E78:
  LDA.W $1CCE                               ; $8C9E78 |
  SEC                                       ; $8C9E7B |
  SBC.B $08                                 ; $8C9E7C |
  STA.B $00                                 ; $8C9E7E |
  EOR.B $40,X                               ; $8C9E80 |
  AND.W #$8000                              ; $8C9E82 |
  BEQ CODE_8C9EAB                           ; $8C9E85 |
  LDA.B $0C                                 ; $8C9E87 |
  EOR.W #$FFFF                              ; $8C9E89 |
  INC A                                     ; $8C9E8C |
  STA.B $0C                                 ; $8C9E8D |
  LDA.B $42,X                               ; $8C9E8F |
  EOR.W #$FFFF                              ; $8C9E91 |
  INC A                                     ; $8C9E94 |
  STA.B $42,X                               ; $8C9E95 |
  LDA.B $0A                                 ; $8C9E97 |
  CLC                                       ; $8C9E99 |
  ADC.B $42,X                               ; $8C9E9A |
  STA.B $02                                 ; $8C9E9C |
  EOR.B $44,X                               ; $8C9E9E |
  AND.W #$8000                              ; $8C9EA0 |
  BEQ CODE_8C9EB7                           ; $8C9EA3 |
  LDA.B $02                                 ; $8C9EA5 |
  STA.B $0A                                 ; $8C9EA7 |
  STA.B $44,X                               ; $8C9EA9 |

CODE_8C9EAB:
  LDA.B $00                                 ; $8C9EAB |
  STA.B $40,X                               ; $8C9EAD |
  LDA.B $0A                                 ; $8C9EAF |
  CLC                                       ; $8C9EB1 |
  ADC.B $0C                                 ; $8C9EB2 |
  STA.B $0A                                 ; $8C9EB4 |
  RTS                                       ; $8C9EB6 |

CODE_8C9EB7:
  STZ.B $0A                                 ; $8C9EB7 |
  STZ.B $40,X                               ; $8C9EB9 |
  LDA.W $1CCE                               ; $8C9EBB |
  STA.B $08                                 ; $8C9EBE |
  LDA.W #$0001                              ; $8C9EC0 |
  STA.B $1A,X                               ; $8C9EC3 |
  RTS                                       ; $8C9EC5 |

CODE_8C9EC6:
  JSL.L CODE_FL_86C424                      ; $8C9EC6 |
  PHX                                       ; $8C9ECA |
  ASL A                                     ; $8C9ECB |
  TAX                                       ; $8C9ECC |
  LDA.L PTR16_8C9ED7,X                      ; $8C9ECD |
  PLX                                       ; $8C9ED1 |
  STA.B $00                                 ; $8C9ED2 |
  JMP.W ($0000)                             ; $8C9ED4 |

PTR16_8C9ED7:
  dw CODE_8C9EDB                            ; $8C9ED7 |
  dw CODE_8C9EE8                            ; $8C9ED9 |

CODE_8C9EDB:
  LDA.W #$0004                              ; $8C9EDB |
  STA.B $3A,X                               ; $8C9EDE |
  LDA.W #$0060                              ; $8C9EE0 |
  STA.B $2C,X                               ; $8C9EE3 |
  INC.B $1A,X                               ; $8C9EE5 |
  RTL                                       ; $8C9EE7 |

CODE_8C9EE8:
  JSL.L CODE_FL_86C70D                      ; $8C9EE8 |
  LDA.B $09,X                               ; $8C9EEC |
  STA.B $08                                 ; $8C9EEE |
  LDA.B $0D,X                               ; $8C9EF0 |
  STA.B $0A                                 ; $8C9EF2 |
  LDA.W #$0108                              ; $8C9EF4 |
  JSL.L CODE_FL_8580F7                      ; $8C9EF7 |
  BCS CODE_8C9F15                           ; $8C9EFB |
  LDA.W #$001B                              ; $8C9EFD |
  JSL.L push_sound_queue                    ; $8C9F00 |
  CLC                                       ; $8C9F04 |
  LDA.B $09,X                               ; $8C9F05 |
  ADC.W #$0020                              ; $8C9F07 |
  STA.B $09,X                               ; $8C9F0A |
  LDA.W #$0010                              ; $8C9F0C |
  STA.B $2C,X                               ; $8C9F0F |
  DEC.B $3A,X                               ; $8C9F11 |
  BEQ CODE_8C9F16                           ; $8C9F13 |

CODE_8C9F15:
  RTL                                       ; $8C9F15 |

CODE_8C9F16:
  JML.L CODE_FL_86CA36                      ; $8C9F16 |

CODE_8C9F1A:
  JSL.L CODE_FL_86C3BB                      ; $8C9F1A |
  PHX                                       ; $8C9F1E |
  ASL A                                     ; $8C9F1F |
  TAX                                       ; $8C9F20 |
  LDA.L PTR16_8C9F2B,X                      ; $8C9F21 |
  PLX                                       ; $8C9F25 |
  STA.B $00                                 ; $8C9F26 |
  JMP.W ($0000)                             ; $8C9F28 |

PTR16_8C9F2B:
  dw CODE_8C9F35                            ; $8C9F2B |
  dw CODE_8C9F5D                            ; $8C9F2D |
  dw CODE_8C9FA1                            ; $8C9F2F |
  dw CODE_8C9FF5                            ; $8C9F31 |
  dw CODE_8CA008                            ; $8C9F33 |

CODE_8C9F35:
  JSL.L CODE_FL_86C7A5                      ; $8C9F35 |
  LDA.W #$3140                              ; $8C9F39 |
  STA.B $00,X                               ; $8C9F3C |
  LDA.B $22,X                               ; $8C9F3E |
  ORA.W #$2220                              ; $8C9F40 |
  STA.B $22,X                               ; $8C9F43 |
  LDA.B $34,X                               ; $8C9F45 |
  ORA.W #$A000                              ; $8C9F47 |
  STA.B $34,X                               ; $8C9F4A |
  JSL.L CODE_FL_85AC74                      ; $8C9F4C |
  STZ.W $1C8E                               ; $8C9F50 |
  STZ.W $1C9E                               ; $8C9F53 |
  STZ.W $1CAE                               ; $8C9F56 |
  JML.L CODE_FL_86C63F                      ; $8C9F59 |

CODE_8C9F5D:
  SEP #$20                                  ; $8C9F5D |
  LDA.B $37,X                               ; $8C9F5F |
  CMP.B #$04                                ; $8C9F61 |
  BNE CODE_8C9F9C                           ; $8C9F63 |
  STZ.B $37,X                               ; $8C9F65 |
  REP #$20                                  ; $8C9F67 |
  STZ.B $38,X                               ; $8C9F69 |
  JSL.L CODE_FL_8CDA3C                      ; $8C9F6B |
  SEC                                       ; $8C9F6F |
  LDA.B $4E,X                               ; $8C9F70 |
  SBC.W #$0001                              ; $8C9F72 |
  PHX                                       ; $8C9F75 |
  ASL A                                     ; $8C9F76 |
  TAX                                       ; $8C9F77 |
  LDA.L PTR16_8C9F82,X                      ; $8C9F78 |
  PLX                                       ; $8C9F7C |
  STA.B $00                                 ; $8C9F7D |
  JMP.W ($0000)                             ; $8C9F7F |

PTR16_8C9F82:
  dw CODE_8C9F88                            ; $8C9F82 |
  dw CODE_8C9F8D                            ; $8C9F84 |
  dw CODE_8C9F92                            ; $8C9F86 |

CODE_8C9F88:
  INC.W $1C8E                               ; $8C9F88 |
  BRA CODE_8C9F95                           ; $8C9F8B |

CODE_8C9F8D:
  INC.W $1C9E                               ; $8C9F8D |
  BRA CODE_8C9F95                           ; $8C9F90 |

CODE_8C9F92:
  INC.W $1CAE                               ; $8C9F92 |

CODE_8C9F95:
  LDA.W #$0080                              ; $8C9F95 |
  STA.B $28,X                               ; $8C9F98 |
  INC.B $1A,X                               ; $8C9F9A |

CODE_8C9F9C:
  REP #$20                                  ; $8C9F9C |
  STZ.B $32,X                               ; $8C9F9E |
  RTL                                       ; $8C9FA0 |

CODE_8C9FA1:
  SEP #$20                                  ; $8C9FA1 |
  LDA.B $37,X                               ; $8C9FA3 |
  CMP.B #$04                                ; $8C9FA5 |
  BNE CODE_8C9FC3                           ; $8C9FA7 |
  STZ.B $37,X                               ; $8C9FA9 |
  REP #$20                                  ; $8C9FAB |
  STZ.B $38,X                               ; $8C9FAD |
  JSL.L CODE_FL_8CDA3C                      ; $8C9FAF |
  LDA.B $0D,X                               ; $8C9FB3 |
  CMP.W #$0068                              ; $8C9FB5 |
  BCC CODE_8C9FF2                           ; $8C9FB8 |
  STZ.B $28,X                               ; $8C9FBA |
  LDA.W #$0068                              ; $8C9FBC |
  STA.B $0D,X                               ; $8C9FBF |
  BRA CODE_8C9FF2                           ; $8C9FC1 |

CODE_8C9FC3:
  REP #$20                                  ; $8C9FC3 |
  SEC                                       ; $8C9FC5 |
  LDA.B $4E,X                               ; $8C9FC6 |
  SBC.W #$0001                              ; $8C9FC8 |
  PHX                                       ; $8C9FCB |
  ASL A                                     ; $8C9FCC |
  TAX                                       ; $8C9FCD |
  LDA.L PTR16_8C9FD8,X                      ; $8C9FCE |
  PLX                                       ; $8C9FD2 |
  STA.B $00                                 ; $8C9FD3 |
  JMP.W ($0000)                             ; $8C9FD5 |

PTR16_8C9FD8:
  dw CODE_8C9FDE                            ; $8C9FD8 |
  dw CODE_8C9FE3                            ; $8C9FDA |
  dw CODE_8C9FE8                            ; $8C9FDC |

CODE_8C9FDE:
  STZ.W $1C8E                               ; $8C9FDE |
  BRA CODE_8C9FEB                           ; $8C9FE1 |

CODE_8C9FE3:
  STZ.W $1C9E                               ; $8C9FE3 |
  BRA CODE_8C9FEB                           ; $8C9FE6 |

CODE_8C9FE8:
  STZ.W $1CAE                               ; $8C9FE8 |

CODE_8C9FEB:
  LDA.W #$FE00                              ; $8C9FEB |
  STA.B $28,X                               ; $8C9FEE |
  INC.B $1A,X                               ; $8C9FF0 |

CODE_8C9FF2:
  STZ.B $32,X                               ; $8C9FF2 |
  RTL                                       ; $8C9FF4 |

CODE_8C9FF5:
  LDA.B $0D,X                               ; $8C9FF5 |
  CMP.W #$0050                              ; $8C9FF7 |
  BCS CODE_8CA005                           ; $8C9FFA |
  STZ.B $28,X                               ; $8C9FFC |
  LDA.W #$0050                              ; $8C9FFE |
  STA.B $0D,X                               ; $8CA001 |
  INC.B $1A,X                               ; $8CA003 |

CODE_8CA005:
  STZ.B $32,X                               ; $8CA005 |
  RTL                                       ; $8CA007 |

CODE_8CA008:
  SEC                                       ; $8CA008 |
  LDA.B $4E,X                               ; $8CA009 |
  SBC.W #$0001                              ; $8CA00B |
  PHX                                       ; $8CA00E |
  ASL A                                     ; $8CA00F |
  TAX                                       ; $8CA010 |
  LDA.L PTR16_8CA01B,X                      ; $8CA011 |
  PLX                                       ; $8CA015 |
  STA.B $00                                 ; $8CA016 |
  JMP.W ($0000)                             ; $8CA018 |

PTR16_8CA01B:
  dw CODE_8CA021                            ; $8CA01B |
  dw CODE_8CA02E                            ; $8CA01D |
  dw CODE_8CA03B                            ; $8CA01F |

CODE_8CA021:
  LDY.W $1C90                               ; $8CA021 |
  LDA.W $001A,Y                             ; $8CA024 |
  CMP.W #$0001                              ; $8CA027 |
  BNE CODE_8CA04B                           ; $8CA02A |
  BRA CODE_8CA046                           ; $8CA02C |

CODE_8CA02E:
  LDY.W $1CA0                               ; $8CA02E |
  LDA.W $001A,Y                             ; $8CA031 |
  CMP.W #$0001                              ; $8CA034 |
  BNE CODE_8CA04B                           ; $8CA037 |
  BRA CODE_8CA046                           ; $8CA039 |

CODE_8CA03B:
  LDY.W $1CB0                               ; $8CA03B |
  LDA.W $001A,Y                             ; $8CA03E |
  CMP.W #$0001                              ; $8CA041 |
  BNE CODE_8CA04B                           ; $8CA044 |

CODE_8CA046:
  LDA.W #$0001                              ; $8CA046 |
  STA.B $1A,X                               ; $8CA049 |

CODE_8CA04B:
  STZ.B $32,X                               ; $8CA04B |
  RTL                                       ; $8CA04D |

CODE_FL_8CA04E:
  LDX.B $DC                                 ; $8CA04E |
  STX.B $FC                                 ; $8CA050 |
  JSR.W CODE_FN_8CA0AA                      ; $8CA052 |
  CPX.B $DE                                 ; $8CA055 |
  BEQ CODE_8CA0A9                           ; $8CA057 |
  LDX.B $DE                                 ; $8CA059 |
  STX.B $FC                                 ; $8CA05B |
  JSR.W CODE_FN_8CA0AA                      ; $8CA05D |
  LDA.W $0434                               ; $8CA060 |
  ORA.W $04F4                               ; $8CA063 |
  AND.W #$2000                              ; $8CA066 |
  BNE CODE_8CA0A9                           ; $8CA069 |
  LDA.W $048C                               ; $8CA06B |
  AND.W $054C                               ; $8CA06E |
  AND.W #$4000                              ; $8CA071 |
  BEQ CODE_8CA0A9                           ; $8CA074 |
  LDA.W $0426                               ; $8CA076 |
  AND.W $04E6                               ; $8CA079 |
  BEQ CODE_8CA089                           ; $8CA07C |
  LDA.W $0426                               ; $8CA07E |
  EOR.W $04E6                               ; $8CA081 |
  AND.W #$8000                              ; $8CA084 |
  BEQ CODE_8CA0A9                           ; $8CA087 |

CODE_8CA089:
  LDY.W $1C4A                               ; $8CA089 |
  LDA.W $0046,Y                             ; $8CA08C |
  AND.W #$0C00                              ; $8CA08F |
  CMP.W #$0C00                              ; $8CA092 |
  BNE CODE_8CA0A9                           ; $8CA095 |
  LDA.W $048C                               ; $8CA097 |
  ORA.W #$0400                              ; $8CA09A |
  STA.W $048C                               ; $8CA09D |
  LDA.W $054C                               ; $8CA0A0 |
  ORA.W #$0400                              ; $8CA0A3 |
  STA.W $054C                               ; $8CA0A6 |

CODE_8CA0A9:
  RTL                                       ; $8CA0A9 |

CODE_FN_8CA0AA:
  LDA.B $08,X                               ; $8CA0AA |
  PHA                                       ; $8CA0AC |
  LDA.B $0A,X                               ; $8CA0AD |
  PHA                                       ; $8CA0AF |
  LDA.B $0C,X                               ; $8CA0B0 |
  PHA                                       ; $8CA0B2 |
  LDA.B $0E,X                               ; $8CA0B3 |
  PHA                                       ; $8CA0B5 |
  JSL.L CODE_FL_86C855                      ; $8CA0B6 |
  LDA.B $09,X                               ; $8CA0BA |
  STA.B $01                                 ; $8CA0BC |
  LDA.B $08,X                               ; $8CA0BE |
  STA.B $00                                 ; $8CA0C0 |
  LDA.B $0D,X                               ; $8CA0C2 |
  STA.B $04                                 ; $8CA0C4 |
  LDA.B $0C,X                               ; $8CA0C6 |
  STA.B $03                                 ; $8CA0C8 |
  JSL.L CODE_FL_8CA11E                      ; $8CA0CA |
  LDA.B $8C,X                               ; $8CA0CE |
  BPL CODE_8CA0D7                           ; $8CA0D0 |
  LDA.W #$007F                              ; $8CA0D2 |
  STA.B $48,X                               ; $8CA0D5 |

CODE_8CA0D7:
  SEC                                       ; $8CA0D7 |
  LDA.B $00                                 ; $8CA0D8 |
  SBC.B $08,X                               ; $8CA0DA |
  CLC                                       ; $8CA0DC |
  ADC.B $78,X                               ; $8CA0DD |
  STA.B $00                                 ; $8CA0DF |
  LDA.B $8C,X                               ; $8CA0E1 |
  AND.W #$0800                              ; $8CA0E3 |
  BEQ CODE_8CA0F6                           ; $8CA0E6 |
  LDA.B $00                                 ; $8CA0E8 |
  BPL CODE_8CA0F1                           ; $8CA0EA |
  ORA.W #$F800                              ; $8CA0EC |
  BRA CODE_8CA0F4                           ; $8CA0EF |

CODE_8CA0F1:
  AND.W #$07FF                              ; $8CA0F1 |

CODE_8CA0F4:
  STA.B $00                                 ; $8CA0F4 |

CODE_8CA0F6:
  LDA.B $00                                 ; $8CA0F6 |
  STA.B $78,X                               ; $8CA0F8 |
  SEC                                       ; $8CA0FA |
  LDA.B $03                                 ; $8CA0FB |
  SBC.B $0C,X                               ; $8CA0FD |
  CLC                                       ; $8CA0FF |
  ADC.B $7A,X                               ; $8CA100 |
  STA.B $7A,X                               ; $8CA102 |
  PLA                                       ; $8CA104 |
  STA.B $0E,X                               ; $8CA105 |
  PLA                                       ; $8CA107 |
  STA.B $0C,X                               ; $8CA108 |
  PLA                                       ; $8CA10A |
  STA.B $0A,X                               ; $8CA10B |
  PLA                                       ; $8CA10D |
  STA.B $08,X                               ; $8CA10E |
  RTS                                       ; $8CA110 |

CODE_FL_8CA111:
  STZ.B $14                                 ; $8CA111 |
  CPX.W #$0400                              ; $8CA113 |
  BEQ CODE_8CA11D                           ; $8CA116 |
  LDA.W #$0002                              ; $8CA118 |
  STA.B $14                                 ; $8CA11B |

CODE_8CA11D:
  RTL                                       ; $8CA11D |

CODE_FL_8CA11E:
  JSL.L CODE_FL_8CA111                      ; $8CA11E |
  STZ.B $8C,X                               ; $8CA122 |
  LDA.B $2E,X                               ; $8CA124 |
  STA.B $0E                                 ; $8CA126 |
  LDA.B $30,X                               ; $8CA128 |
  STA.B $10                                 ; $8CA12A |
  LDY.B $FC                                 ; $8CA12C |
  LDA.W $1B76                               ; $8CA12E |
  STA.B $12                                 ; $8CA131 |
  LDA.W $0418                               ; $8CA133 |
  CMP.W #$0003                              ; $8CA136 |
  BNE CODE_8CA148                           ; $8CA139 |
  LDA.W $0418                               ; $8CA13B |
  CMP.W #$0003                              ; $8CA13E |
  BNE CODE_8CA148                           ; $8CA141 |
  LDA.W #$0580                              ; $8CA143 |
  BRA CODE_8CA14B                           ; $8CA146 |

CODE_8CA148:
  LDA.W $1B70                               ; $8CA148 |

CODE_8CA14B:
  LDX.W $1C3E                               ; $8CA14B |
  BPL CODE_8CA153                           ; $8CA14E |
  JMP.W CODE_JP_8CA39F                      ; $8CA150 |

CODE_8CA153:
  TAX                                       ; $8CA153 |
  LDA.B $33,X                               ; $8CA154 |
  BPL CODE_8CA15B                           ; $8CA156 |
  JSR.W CODE_FN_8CA164                      ; $8CA158 |

CODE_8CA15B:
  LDA.B $16,X                               ; $8CA15B |
  CMP.B $12                                 ; $8CA15D |
  BNE CODE_8CA153                           ; $8CA15F |
  LDX.B $FC                                 ; $8CA161 |
  RTL                                       ; $8CA163 |

CODE_FN_8CA164:
  SEC                                       ; $8CA164 |
  LDA.B $09,X                               ; $8CA165 |
  SBC.B $01                                 ; $8CA167 |
  BPL CODE_8CA16F                           ; $8CA169 |
  EOR.W #$FFFF                              ; $8CA16B |
  INC A                                     ; $8CA16E |

CODE_8CA16F:
  SEC                                       ; $8CA16F |
  SBC.B $0E                                 ; $8CA170 |
  BCC CODE_8CA17A                           ; $8CA172 |
  SBC.B $2E,X                               ; $8CA174 |
  BEQ CODE_8CA17A                           ; $8CA176 |
  BCS CODE_8CA194                           ; $8CA178 |

CODE_8CA17A:
  SEC                                       ; $8CA17A |
  LDA.B $04                                 ; $8CA17B |
  SBC.B $0D,X                               ; $8CA17D |
  BMI CODE_8CA18A                           ; $8CA17F |
  BEQ CODE_8CA195                           ; $8CA181 |
  SEC                                       ; $8CA183 |
  SBC.B $10                                 ; $8CA184 |
  BPL CODE_8CA194                           ; $8CA186 |
  BRA CODE_8CA195                           ; $8CA188 |

CODE_8CA18A:
  CLC                                       ; $8CA18A |
  ADC.B $30,X                               ; $8CA18B |
  ADC.W #$0001                              ; $8CA18D |
  BMI CODE_8CA194                           ; $8CA190 |
  BRA CODE_8CA195                           ; $8CA192 |

CODE_8CA194:
  RTS                                       ; $8CA194 |

CODE_8CA195:
  LDA.W $0034,Y                             ; $8CA195 |
  AND.W #$2000                              ; $8CA198 |
  BNE CODE_8CA194                           ; $8CA19B |
  LDA.B $46,X                               ; $8CA19D |
  CPY.W #$0400                              ; $8CA19F |
  BEQ CODE_8CA1A9                           ; $8CA1A2 |
  ORA.W #$0400                              ; $8CA1A4 |
  BRA CODE_8CA1AC                           ; $8CA1A7 |

CODE_8CA1A9:
  ORA.W #$0800                              ; $8CA1A9 |

CODE_8CA1AC:
  STA.B $46,X                               ; $8CA1AC |
  STX.B $24                                 ; $8CA1AE |
  LDA.B $34,X                               ; $8CA1B0 |
  AND.W #$0010                              ; $8CA1B2 |
  BNE CODE_8CA232                           ; $8CA1B5 |
  LDA.B $34,X                               ; $8CA1B7 |
  AND.W #$0800                              ; $8CA1B9 |
  BNE CODE_8CA1C1                           ; $8CA1BC |
  JMP.W CODE_JP_8CA294                      ; $8CA1BE |

CODE_8CA1C1:
  SEC                                       ; $8CA1C1 |
  LDA.B $0D,X                               ; $8CA1C2 |
  SBC.B $30,X                               ; $8CA1C4 |
  STA.B $26                                 ; $8CA1C6 |
  SBC.B $04                                 ; $8CA1C8 |
  CLC                                       ; $8CA1CA |
  ADC.W #$0008                              ; $8CA1CB |
  BPL CODE_8CA1D3                           ; $8CA1CE |
  JMP.W CODE_JP_8CA294                      ; $8CA1D0 |

CODE_8CA1D3:
  LDA.W $0022,Y                             ; $8CA1D3 |
  CMP.W #$0028                              ; $8CA1D6 |
  BEQ CODE_8CA205                           ; $8CA1D9 |
  LDA.B $46,X                               ; $8CA1DB |
  AND.W #$0040                              ; $8CA1DD |
  BEQ CODE_8CA205                           ; $8CA1E0 |
  LDA.B $46,X                               ; $8CA1E2 |
  AND.W #$FFBF                              ; $8CA1E4 |
  STA.B $46,X                               ; $8CA1E7 |
  SEC                                       ; $8CA1E9 |
  LDA.B $09,X                               ; $8CA1EA |
  SBC.B $01                                 ; $8CA1EC |
  BPL CODE_8CA1F4                           ; $8CA1EE |
  EOR.W #$FFFF                              ; $8CA1F0 |
  INC A                                     ; $8CA1F3 |

CODE_8CA1F4:
  SEC                                       ; $8CA1F4 |
  SBC.B $2E,X                               ; $8CA1F5 |
  SBC.B $0E                                 ; $8CA1F7 |
  EOR.W #$FFFF                              ; $8CA1F9 |
  INC A                                     ; $8CA1FC |
  CMP.W #$0003                              ; $8CA1FD |
  BCS CODE_8CA205                           ; $8CA200 |
  JMP.W CODE_JP_8CA294                      ; $8CA202 |

CODE_8CA205:
  LDA.W $0028,Y                             ; $8CA205 |
  BPL CODE_8CA20D                           ; $8CA208 |
  JMP.W CODE_JP_8CA39C                      ; $8CA20A |

CODE_8CA20D:
  LDA.B $46,X                               ; $8CA20D |
  ORA.W #$8000                              ; $8CA20F |
  STA.B $46,X                               ; $8CA212 |
  CLC                                       ; $8CA214 |
  LDA.B $01                                 ; $8CA215 |
  ADC.B $10,X                               ; $8CA217 |
  STA.B $01                                 ; $8CA219 |
  LDX.B $14                                 ; $8CA21B |
  LDA.W $008C,Y                             ; $8CA21D |
  ORA.W #$8000                              ; $8CA220 |
  STA.W $008C,Y                             ; $8CA223 |
  LDA.B $24                                 ; $8CA226 |
  STA.W $1C46,X                             ; $8CA228 |
  LDA.B $26                                 ; $8CA22B |
  STA.B $04                                 ; $8CA22D |
  JMP.W CODE_JP_8CA39C                      ; $8CA22F |

CODE_8CA232:
  LDA.B $34,X                               ; $8CA232 |
  AND.W #$1000                              ; $8CA234 |
  BEQ CODE_8CA23C                           ; $8CA237 |
  JMP.W CODE_JP_8CA2C6                      ; $8CA239 |

CODE_8CA23C:
  SEC                                       ; $8CA23C |
  LDA.B $09,X                               ; $8CA23D |
  SBC.B $01                                 ; $8CA23F |
  BPL CODE_8CA247                           ; $8CA241 |
  EOR.W #$FFFF                              ; $8CA243 |
  INC A                                     ; $8CA246 |

CODE_8CA247:
  SEC                                       ; $8CA247 |
  SBC.B $2E,X                               ; $8CA248 |
  BCC CODE_8CA255                           ; $8CA24A |
  SBC.B $0E                                 ; $8CA24C |
  BEQ CODE_JP_8CA2C6                        ; $8CA24E |
  CMP.W #$FFFC                              ; $8CA250 |
  BCS CODE_JP_8CA2C6                        ; $8CA253 |

CODE_8CA255:
  LDA.B $34,X                               ; $8CA255 |
  AND.W #$0008                              ; $8CA257 |
  BEQ CODE_8CA25F                           ; $8CA25A |
  JMP.W CODE_JP_8CA37B                      ; $8CA25C |

CODE_8CA25F:
  LDA.B $34,X                               ; $8CA25F |
  AND.W #$0800                              ; $8CA261 |
  BEQ CODE_8CA269                           ; $8CA264 |
  JMP.W CODE_JP_8CA273                      ; $8CA266 |

CODE_8CA269:
  SEC                                       ; $8CA269 |
  LDA.B $0D,X                               ; $8CA26A |
  SBC.B $04                                 ; $8CA26C |
  BCS CODE_JP_8CA273                        ; $8CA26E |
  JMP.W CODE_JP_8CA37B                      ; $8CA270 |

CODE_JP_8CA273:
  SEC                                       ; $8CA273 |
  LDA.B $0D,X                               ; $8CA274 |
  SBC.B $30,X                               ; $8CA276 |
  STA.B $04                                 ; $8CA278 |
  LDA.B $46,X                               ; $8CA27A |
  ORA.W #$8000                              ; $8CA27C |
  STA.B $46,X                               ; $8CA27F |
  LDX.B $14                                 ; $8CA281 |
  LDA.W $008C,Y                             ; $8CA283 |
  ORA.W #$8000                              ; $8CA286 |
  STA.W $008C,Y                             ; $8CA289 |
  LDA.B $24                                 ; $8CA28C |
  STA.W $1C46,X                             ; $8CA28E |
  JMP.W CODE_JP_8CA39C                      ; $8CA291 |

CODE_JP_8CA294:
  LDX.B $24                                 ; $8CA294 |
  LDA.B $34,X                               ; $8CA296 |
  AND.W #$0404                              ; $8CA298 |
  BNE CODE_8CA2FA                           ; $8CA29B |
  LDA.B $34,X                               ; $8CA29D |
  AND.W #$1000                              ; $8CA29F |
  BNE CODE_8CA2A7                           ; $8CA2A2 |
  JMP.W CODE_JP_8CA354                      ; $8CA2A4 |

CODE_8CA2A7:
  SEC                                       ; $8CA2A7 |
  LDA.B $09,X                               ; $8CA2A8 |
  SBC.B $01                                 ; $8CA2AA |
  BPL CODE_8CA2B2                           ; $8CA2AC |
  EOR.W #$FFFF                              ; $8CA2AE |
  INC A                                     ; $8CA2B1 |

CODE_8CA2B2:
  SEC                                       ; $8CA2B2 |
  SBC.B $2E,X                               ; $8CA2B3 |
  BCS CODE_8CA2BA                           ; $8CA2B5 |
  JMP.W CODE_JP_8CA354                      ; $8CA2B7 |

CODE_8CA2BA:
  SBC.B $0E                                 ; $8CA2BA |
  BEQ CODE_JP_8CA2C6                        ; $8CA2BC |
  CMP.W #$FFF8                              ; $8CA2BE |
  BCS CODE_JP_8CA2C6                        ; $8CA2C1 |
  JMP.W CODE_JP_8CA354                      ; $8CA2C3 |

CODE_JP_8CA2C6:
  LDA.W $008C,Y                             ; $8CA2C6 |
  ORA.W #$4000                              ; $8CA2C9 |
  STA.W $008C,Y                             ; $8CA2CC |
  LDA.B $46,X                               ; $8CA2CF |
  ORA.W #$4000                              ; $8CA2D1 |
  STA.B $46,X                               ; $8CA2D4 |
  LDX.B $14                                 ; $8CA2D6 |
  LDA.B $24                                 ; $8CA2D8 |
  STA.W $1C4A,X                             ; $8CA2DA |

CODE_JP_8CA2DD:
  TAX                                       ; $8CA2DD |
  LDA.B $09,X                               ; $8CA2DE |
  SEC                                       ; $8CA2E0 |
  SBC.B $01                                 ; $8CA2E1 |
  BMI CODE_8CA2EC                           ; $8CA2E3 |
  SBC.B $2E,X                               ; $8CA2E5 |
  SEC                                       ; $8CA2E7 |
  SBC.B $0E                                 ; $8CA2E8 |
  BRA CODE_8CA2F2                           ; $8CA2EA |

CODE_8CA2EC:
  CLC                                       ; $8CA2EC |
  ADC.B $2E,X                               ; $8CA2ED |
  CLC                                       ; $8CA2EF |
  ADC.B $0E                                 ; $8CA2F0 |

CODE_8CA2F2:
  CLC                                       ; $8CA2F2 |
  ADC.B $01                                 ; $8CA2F3 |
  STA.B $01                                 ; $8CA2F5 |
  JMP.W CODE_JP_8CA354                      ; $8CA2F7 |

CODE_8CA2FA:
  LDA.B $34,X                               ; $8CA2FA |
  AND.W #$0004                              ; $8CA2FC |
  BNE CODE_8CA337                           ; $8CA2FF |
  LDA.W $008C,Y                             ; $8CA301 |
  ORA.W #$4000                              ; $8CA304 |
  STA.W $008C,Y                             ; $8CA307 |
  LDA.B $09,X                               ; $8CA30A |
  BMI CODE_8CA31D                           ; $8CA30C |
  CMP.W $0009,Y                             ; $8CA30E |
  ROR A                                     ; $8CA311 |
  XBA                                       ; $8CA312 |
  ROR A                                     ; $8CA313 |
  ROR A                                     ; $8CA314 |
  EOR.W $0004,Y                             ; $8CA315 |
  AND.W #$0020                              ; $8CA318 |
  BEQ CODE_8CA32D                           ; $8CA31B |

CODE_8CA31D:
  LDA.W $008C,Y                             ; $8CA31D |
  ORA.W #$2000                              ; $8CA320 |
  STA.W $008C,Y                             ; $8CA323 |
  LDA.B $46,X                               ; $8CA326 |
  ORA.W #$2000                              ; $8CA328 |
  STA.B $46,X                               ; $8CA32B |

CODE_8CA32D:
  LDX.B $14                                 ; $8CA32D |
  LDA.B $24                                 ; $8CA32F |
  STA.W $1C4A,X                             ; $8CA331 |
  JMP.W CODE_JP_8CA2DD                      ; $8CA334 |

CODE_8CA337:
  LDA.W $008C,Y                             ; $8CA337 |
  ORA.W #$0800                              ; $8CA33A |
  STA.W $008C,Y                             ; $8CA33D |
  LDX.B $14                                 ; $8CA340 |
  LDA.B $24                                 ; $8CA342 |
  STA.W $1C4E,X                             ; $8CA344 |
  TAX                                       ; $8CA347 |
  LDA.B $34,X                               ; $8CA348 |
  AND.W #$1000                              ; $8CA34A |
  BEQ CODE_JP_8CA39C                        ; $8CA34D |
  LDA.B $24                                 ; $8CA34F |
  JMP.W CODE_JP_8CA2DD                      ; $8CA351 |

CODE_JP_8CA354:
  LDA.B $34,X                               ; $8CA354 |
  AND.W #$0008                              ; $8CA356 |
  BEQ CODE_JP_8CA39C                        ; $8CA359 |
  LDA.B $34,X                               ; $8CA35B |
  AND.W #$0004                              ; $8CA35D |
  BNE CODE_JP_8CA39C                        ; $8CA360 |
  LDA.W $0028,Y                             ; $8CA362 |
  BPL CODE_JP_8CA39C                        ; $8CA365 |
  CLC                                       ; $8CA367 |
  LDA.B $0D,X                               ; $8CA368 |
  ADC.B $10                                 ; $8CA36A |
  SBC.B $04                                 ; $8CA36C |
  CMP.W #$0006                              ; $8CA36E |
  BCS CODE_JP_8CA39C                        ; $8CA371 |
  LDA.W $008C,Y                             ; $8CA373 |
  AND.W #$1000                              ; $8CA376 |
  BNE CODE_JP_8CA39C                        ; $8CA379 |

CODE_JP_8CA37B:
  CLC                                       ; $8CA37B |
  LDA.B $0D,X                               ; $8CA37C |
  ADC.B $10                                 ; $8CA37E |
  STA.B $26                                 ; $8CA380 |
  LDA.B $46,X                               ; $8CA382 |
  ORA.W #$1000                              ; $8CA384 |
  STA.B $46,X                               ; $8CA387 |
  LDX.B $14                                 ; $8CA389 |
  LDA.W $008C,Y                             ; $8CA38B |
  ORA.W #$1000                              ; $8CA38E |
  STA.W $008C,Y                             ; $8CA391 |
  LDA.B $26                                 ; $8CA394 |
  STA.B $04                                 ; $8CA396 |
  TDC                                       ; $8CA398 |
  STA.W $0028,Y                             ; $8CA399 |

CODE_JP_8CA39C:
  LDX.B $24                                 ; $8CA39C |
  RTS                                       ; $8CA39E |

CODE_JP_8CA39F:
  TAX                                       ; $8CA39F |
  LDA.B $33,X                               ; $8CA3A0 |
  BPL CODE_8CA3A7                           ; $8CA3A2 |
  JSR.W CODE_FN_8CA3B2                      ; $8CA3A4 |

CODE_8CA3A7:
  LDA.B $16,X                               ; $8CA3A7 |
  CMP.B $12                                 ; $8CA3A9 |
  BNE CODE_JP_8CA39F                        ; $8CA3AB |
  LDX.B $14                                 ; $8CA3AD |
  LDX.B $FC                                 ; $8CA3AF |
  RTL                                       ; $8CA3B1 |

CODE_FN_8CA3B2:
  SEC                                       ; $8CA3B2 |
  LDA.B $09,X                               ; $8CA3B3 |
  SBC.B $01                                 ; $8CA3B5 |
  BPL CODE_8CA3BD                           ; $8CA3B7 |
  EOR.W #$FFFF                              ; $8CA3B9 |
  INC A                                     ; $8CA3BC |

CODE_8CA3BD:
  SEC                                       ; $8CA3BD |
  SBC.B $0E                                 ; $8CA3BE |
  BCC CODE_8CA3C6                           ; $8CA3C0 |
  SBC.B $2E,X                               ; $8CA3C2 |
  BCS CODE_8CA3E4                           ; $8CA3C4 |

CODE_8CA3C6:
  LDA.B $30,X                               ; $8CA3C6 |
  LSR A                                     ; $8CA3C8 |
  STA.B $26                                 ; $8CA3C9 |
  SEC                                       ; $8CA3CB |
  LDA.B $04                                 ; $8CA3CC |
  SBC.B $0D,X                               ; $8CA3CE |
  BMI CODE_8CA3DD                           ; $8CA3D0 |
  BEQ CODE_8CA3E5                           ; $8CA3D2 |
  SEC                                       ; $8CA3D4 |
  SBC.B $10                                 ; $8CA3D5 |
  SBC.B $26                                 ; $8CA3D7 |
  BPL CODE_8CA3E4                           ; $8CA3D9 |
  BRA CODE_8CA3E5                           ; $8CA3DB |

CODE_8CA3DD:
  CLC                                       ; $8CA3DD |
  ADC.B $26                                 ; $8CA3DE |
  BMI CODE_8CA3E4                           ; $8CA3E0 |
  BRA CODE_8CA3E5                           ; $8CA3E2 |

CODE_8CA3E4:
  RTS                                       ; $8CA3E4 |

CODE_8CA3E5:
  LDA.W $0034,Y                             ; $8CA3E5 |
  AND.W #$2000                              ; $8CA3E8 |
  BNE CODE_8CA3E4                           ; $8CA3EB |
  LDA.B $46,X                               ; $8CA3ED |
  CPY.W #$0400                              ; $8CA3EF |
  BEQ CODE_8CA3F9                           ; $8CA3F2 |
  ORA.W #$0400                              ; $8CA3F4 |
  BRA CODE_8CA3FC                           ; $8CA3F7 |

CODE_8CA3F9:
  ORA.W #$0800                              ; $8CA3F9 |

CODE_8CA3FC:
  STA.B $46,X                               ; $8CA3FC |
  SEC                                       ; $8CA3FE |
  LDA.B $04                                 ; $8CA3FF |
  SBC.B $0D,X                               ; $8CA401 |
  BCC CODE_8CA40B                           ; $8CA403 |
  SBC.B $10                                 ; $8CA405 |
  SBC.B $26                                 ; $8CA407 |
  BRA CODE_8CA40D                           ; $8CA409 |

CODE_8CA40B:
  ADC.B $26                                 ; $8CA40B |

CODE_8CA40D:
  BPL CODE_8CA413                           ; $8CA40D |
  EOR.W #$FFFF                              ; $8CA40F |
  INC A                                     ; $8CA412 |

CODE_8CA413:
  STA.B $24                                 ; $8CA413 |
  SEC                                       ; $8CA415 |
  LDA.B $01                                 ; $8CA416 |
  SBC.B $09,X                               ; $8CA418 |
  BPL CODE_8CA420                           ; $8CA41A |
  EOR.W #$FFFF                              ; $8CA41C |
  INC A                                     ; $8CA41F |

CODE_8CA420:
  SBC.B $0E                                 ; $8CA420 |
  SBC.B $2E,X                               ; $8CA422 |
  BPL CODE_8CA42A                           ; $8CA424 |
  EOR.W #$FFFF                              ; $8CA426 |
  INC A                                     ; $8CA429 |

CODE_8CA42A:
  CMP.B $24                                 ; $8CA42A |
  STX.B $24                                 ; $8CA42C |
  BCC CODE_8CA46D                           ; $8CA42E |
  LDA.B $34,X                               ; $8CA430 |
  AND.W #$0800                              ; $8CA432 |
  BEQ CODE_8CA46D                           ; $8CA435 |
  LDA.B $04                                 ; $8CA437 |
  CMP.B $0D,X                               ; $8CA439 |
  BPL CODE_8CA446                           ; $8CA43B |
  CLC                                       ; $8CA43D |
  LDA.B $0D,X                               ; $8CA43E |
  SBC.B $26                                 ; $8CA440 |
  STA.B $26                                 ; $8CA442 |
  BRA CODE_8CA44F                           ; $8CA444 |

CODE_8CA446:
  CLC                                       ; $8CA446 |
  LDA.B $0D,X                               ; $8CA447 |
  ADC.B $26                                 ; $8CA449 |
  ADC.B $10                                 ; $8CA44B |
  STA.B $26                                 ; $8CA44D |

CODE_8CA44F:
  LDA.B $46,X                               ; $8CA44F |
  ORA.W #$8000                              ; $8CA451 |
  STA.B $46,X                               ; $8CA454 |
  LDX.B $14                                 ; $8CA456 |
  LDA.W $008C,Y                             ; $8CA458 |
  ORA.W #$8000                              ; $8CA45B |
  STA.W $008C,Y                             ; $8CA45E |
  LDA.B $24                                 ; $8CA461 |
  STA.W $1C46,X                             ; $8CA463 |
  LDA.B $26                                 ; $8CA466 |
  STA.B $04                                 ; $8CA468 |
  JMP.W CODE_JP_8CA4EF                      ; $8CA46A |

CODE_8CA46D:
  LDX.B $24                                 ; $8CA46D |
  LDA.B $34,X                               ; $8CA46F |
  AND.W #$0404                              ; $8CA471 |
  BNE CODE_8CA4B3                           ; $8CA474 |
  LDA.B $34,X                               ; $8CA476 |
  AND.W #$1000                              ; $8CA478 |
  BNE CODE_8CA480                           ; $8CA47B |
  JMP.W CODE_JP_8CA4EF                      ; $8CA47D |

CODE_8CA480:
  LDA.W $008C,Y                             ; $8CA480 |
  ORA.W #$4000                              ; $8CA483 |
  STA.W $008C,Y                             ; $8CA486 |
  LDA.B $46,X                               ; $8CA489 |
  ORA.W #$4000                              ; $8CA48B |
  STA.B $46,X                               ; $8CA48E |
  LDX.B $14                                 ; $8CA490 |
  LDA.B $24                                 ; $8CA492 |
  STA.W $1C4A,X                             ; $8CA494 |

CODE_8CA497:
  TAX                                       ; $8CA497 |
  LDA.B $09,X                               ; $8CA498 |
  SEC                                       ; $8CA49A |
  SBC.B $01                                 ; $8CA49B |
  BMI CODE_8CA4A6                           ; $8CA49D |
  SBC.B $2E,X                               ; $8CA49F |
  SEC                                       ; $8CA4A1 |
  SBC.B $0E                                 ; $8CA4A2 |
  BRA CODE_8CA4AC                           ; $8CA4A4 |

CODE_8CA4A6:
  CLC                                       ; $8CA4A6 |
  ADC.B $2E,X                               ; $8CA4A7 |
  CLC                                       ; $8CA4A9 |
  ADC.B $0E                                 ; $8CA4AA |

CODE_8CA4AC:
  CLC                                       ; $8CA4AC |
  ADC.B $01                                 ; $8CA4AD |
  STA.B $01                                 ; $8CA4AF |
  BRA CODE_JP_8CA4EF                        ; $8CA4B1 |

CODE_8CA4B3:
  LDA.B $34,X                               ; $8CA4B3 |
  AND.W #$0004                              ; $8CA4B5 |
  BNE CODE_8CA4D3                           ; $8CA4B8 |
  LDA.W $008C,Y                             ; $8CA4BA |
  ORA.W #$2000                              ; $8CA4BD |
  STA.W $008C,Y                             ; $8CA4C0 |
  LDA.B $46,X                               ; $8CA4C3 |
  ORA.W #$2000                              ; $8CA4C5 |
  STA.B $46,X                               ; $8CA4C8 |
  LDX.B $14                                 ; $8CA4CA |
  LDA.B $24                                 ; $8CA4CC |
  STA.W $1C4A,X                             ; $8CA4CE |
  BRA CODE_8CA497                           ; $8CA4D1 |

CODE_8CA4D3:
  LDA.W $008C,Y                             ; $8CA4D3 |
  ORA.W #$0800                              ; $8CA4D6 |
  STA.W $008C,Y                             ; $8CA4D9 |
  LDX.B $14                                 ; $8CA4DC |
  LDA.B $24                                 ; $8CA4DE |
  STA.W $1C4E,X                             ; $8CA4E0 |
  TAX                                       ; $8CA4E3 |
  LDA.B $34,X                               ; $8CA4E4 |
  AND.W #$1000                              ; $8CA4E6 |
  BEQ CODE_JP_8CA4EF                        ; $8CA4E9 |
  LDA.B $24                                 ; $8CA4EB |
  BRA CODE_8CA497                           ; $8CA4ED |

CODE_JP_8CA4EF:
  LDX.B $24                                 ; $8CA4EF |
  RTS                                       ; $8CA4F1 |

CODE_8CA4F2:
  LDA.B $38,X                               ; $8CA4F2 |
  BEQ CODE_8CA504                           ; $8CA4F4 |
  LDY.B $44,X                               ; $8CA4F6 |
  LDA.W $003A,Y                             ; $8CA4F8 |
  BPL CODE_8CA508                           ; $8CA4FB |
  TDC                                       ; $8CA4FD |
  STA.W $0032,Y                             ; $8CA4FE |
  STA.W $0038,Y                             ; $8CA501 |

CODE_8CA504:
  JSL.L CODE_FL_86C855                      ; $8CA504 |

CODE_8CA508:
  JSL.L CODE_FL_86C3A3                      ; $8CA508 |
  JSR.W CODE_FN_8CA51B                      ; $8CA50C |
  LDA.B $03,X                               ; $8CA50F |
  AND.W #$6000                              ; $8CA511 |
  ASL A                                     ; $8CA514 |
  STA.B $46,X                               ; $8CA515 |
  JSR.W CODE_FN_8CB508                      ; $8CA517 |
  RTL                                       ; $8CA51A |

CODE_FN_8CA51B:
  LDA.B $1A,X                               ; $8CA51B |
  PHX                                       ; $8CA51D |
  ASL A                                     ; $8CA51E |
  TAX                                       ; $8CA51F |
  LDA.L PTR16_8CA52A,X                      ; $8CA520 |
  PLX                                       ; $8CA524 |
  STA.B $00                                 ; $8CA525 |
  JMP.W ($0000)                             ; $8CA527 |

PTR16_8CA52A:
  dw CODE_8CA53A                            ; $8CA52A |
  dw CODE_8CA739                            ; $8CA52C |
  dw CODE_8CA7EB                            ; $8CA52E |
  dw CODE_8CA80C                            ; $8CA530 |
  dw CODE_8CA843                            ; $8CA532 |
  dw CODE_8CA853                            ; $8CA534 |
  dw CODE_8CA5F0                            ; $8CA536 |
  dw CODE_8CA676                            ; $8CA538 |

CODE_8CA53A:
  LDA.W #$8019                              ; $8CA53A |
  STA.B $22,X                               ; $8CA53D |
  JSR.W CODE_FN_8CB727                      ; $8CA53F |
  JSR.W CODE_FN_8CB6F5                      ; $8CA542 |
  STZ.W $1CEA                               ; $8CA545 |
  STZ.B $46,X                               ; $8CA548 |
  STZ.W $1CE4                               ; $8CA54A |
  STZ.W $1CE6                               ; $8CA54D |
  STZ.W $1CDE                               ; $8CA550 |
  LDA.L $700782                             ; $8CA553 |
  BMI CODE_8CA58B                           ; $8CA557 |
  LDA.W #$003A                              ; $8CA559 |
  STA.B $3C,X                               ; $8CA55C |
  STZ.B $3A,X                               ; $8CA55E |

CODE_8CA560:
  LDA.W #$00C2                              ; $8CA560 |
  JSL.L CODE_FL_86C9A4                      ; $8CA563 |
  BCS CODE_8CA58B                           ; $8CA567 |
  TXA                                       ; $8CA569 |
  STA.W $0044,Y                             ; $8CA56A |
  CLC                                       ; $8CA56D |
  ADC.B $3C,X                               ; $8CA56E |
  STA.W $0042,Y                             ; $8CA570 |
  LDA.B $3C,X                               ; $8CA573 |
  CLC                                       ; $8CA575 |
  ADC.W #$0002                              ; $8CA576 |
  STA.B $3C,X                               ; $8CA579 |
  LDA.B $3A,X                               ; $8CA57B |
  STA.W $003A,Y                             ; $8CA57D |
  CLC                                       ; $8CA580 |
  ADC.W #$0100                              ; $8CA581 |
  STA.B $3A,X                               ; $8CA584 |
  CMP.W #$0500                              ; $8CA586 |
  BCC CODE_8CA560                           ; $8CA589 |

CODE_8CA58B:
  LDA.W #$FFF6                              ; $8CA58B |
  STA.W $1C8E                               ; $8CA58E |
  STA.W $1C98                               ; $8CA591 |
  STA.W $1CA2                               ; $8CA594 |
  STA.W $1CAC                               ; $8CA597 |
  STA.W $1CB6                               ; $8CA59A |
  LDA.W #$0160                              ; $8CA59D |
  STA.W $1CE0                               ; $8CA5A0 |
  STZ.W $1CE2                               ; $8CA5A3 |
  LDA.B $4E,X                               ; $8CA5A6 |
  BNE CODE_8CA5C9                           ; $8CA5A8 |
  LDA.W #$FFFF                              ; $8CA5AA |
  STA.B $36,X                               ; $8CA5AD |
  LDA.W #$0006                              ; $8CA5AF |
  STA.B $1A,X                               ; $8CA5B2 |
  LDA.W #$1898                              ; $8CA5B4 |
  STA.B $04,X                               ; $8CA5B7 |
  LDA.W #$0020                              ; $8CA5B9 |
  STA.B $2C,X                               ; $8CA5BC |
  LDA.L $700782                             ; $8CA5BE |
  BPL CODE_8CA5C8                           ; $8CA5C2 |
  JSL.L CODE_FL_86CA36                      ; $8CA5C4 |

CODE_8CA5C8:
  RTS                                       ; $8CA5C8 |

CODE_8CA5C9:
  LDA.W #$0001                              ; $8CA5C9 |
  STA.L $7E7D90                             ; $8CA5CC |
  LDA.W #$0012                              ; $8CA5D0 |
  STA.B $36,X                               ; $8CA5D3 |
  INC.B $1A,X                               ; $8CA5D5 |
  LDA.W #$1898                              ; $8CA5D7 |
  STA.B $04,X                               ; $8CA5DA |
  LDA.W #$0040                              ; $8CA5DC |
  STA.B $2C,X                               ; $8CA5DF |
  LDA.L $700782                             ; $8CA5E1 |
  BPL CODE_8CA5EF                           ; $8CA5E5 |
  JSL.L CODE_FL_86CA36                      ; $8CA5E7 |
  JSL.L CODE_FL_84F1E8                      ; $8CA5EB |

CODE_8CA5EF:
  RTS                                       ; $8CA5EF |

CODE_8CA5F0:
  LDA.W $1CE4                               ; $8CA5F0 |
  PHX                                       ; $8CA5F3 |
  ASL A                                     ; $8CA5F4 |
  TAX                                       ; $8CA5F5 |
  LDA.L PTR16_8CA600,X                      ; $8CA5F6 |
  PLX                                       ; $8CA5FA |
  STA.B $00                                 ; $8CA5FB |
  JMP.W ($0000)                             ; $8CA5FD |

PTR16_8CA600:
  dw CODE_8CA606                            ; $8CA600 |
  dw CODE_8CA61D                            ; $8CA602 |
  dw CODE_8CA655                            ; $8CA604 |

CODE_8CA606:
  LDA.B $2C,X                               ; $8CA606 |
  BNE CODE_8CA61C                           ; $8CA608 |
  INC.W $1CE4                               ; $8CA60A |
  STZ.W $1CE6                               ; $8CA60D |
  JSL.L CODE_FL_8CFAF3                      ; $8CA610 |
  LDA.W #$0140                              ; $8CA614 |
  STA.B $09,X                               ; $8CA617 |
  JSR.W CODE_FN_8CA87E                      ; $8CA619 |

CODE_8CA61C:
  RTS                                       ; $8CA61C |

CODE_8CA61D:
  LDA.W $1CE6                               ; $8CA61D |
  ASL A                                     ; $8CA620 |
  ASL A                                     ; $8CA621 |
  TAX                                       ; $8CA622 |
  LDA.L DATA8_8CBC42,X                      ; $8CA623 |
  AND.W #$00FF                              ; $8CA627 |
  BEQ CODE_8CA645                           ; $8CA62A |
  STA.B $10                                 ; $8CA62C |
  LDA.L DATA8_8CBC43,X                      ; $8CA62E |
  AND.W #$00FF                              ; $8CA632 |
  STA.B $12                                 ; $8CA635 |
  LDA.L DATA8_8CBC44,X                      ; $8CA637 |
  JSL.L CODE_FL_85824D                      ; $8CA63B |
  LDX.B $FC                                 ; $8CA63F |
  INC.W $1CE6                               ; $8CA641 |
  RTS                                       ; $8CA644 |

CODE_8CA645:
  LDX.B $FC                                 ; $8CA645 |
  INC.W $1CE4                               ; $8CA647 |
  LDA.W #$0030                              ; $8CA64A |
  JSL.L CODE_FL_8089BD                      ; $8CA64D |
  STZ.W $1CE6                               ; $8CA651 |
  RTS                                       ; $8CA654 |

CODE_8CA655:
  JSL.L CODE_FL_86C827                      ; $8CA655 |
  BIT.B $26,X                               ; $8CA659 |
  BMI CODE_8CA675                           ; $8CA65B |
  INC.B $1A,X                               ; $8CA65D |
  LDA.W #$0080                              ; $8CA65F |
  STA.B $09,X                               ; $8CA662 |
  STZ.W $1CE4                               ; $8CA664 |
  STZ.B $26,X                               ; $8CA667 |
  STZ.B $4A,X                               ; $8CA669 |
  LDA.W #$0100                              ; $8CA66B |
  STA.B $28,X                               ; $8CA66E |
  LDA.W #$0020                              ; $8CA670 |
  STA.B $4C,X                               ; $8CA673 |

CODE_8CA675:
  RTS                                       ; $8CA675 |

CODE_8CA676:
  LDA.W #$0008                              ; $8CA676 |
  JSR.W CODE_FN_8CB742                      ; $8CA679 |
  LDA.W $1CE4                               ; $8CA67C |
  PHX                                       ; $8CA67F |
  ASL A                                     ; $8CA680 |
  TAX                                       ; $8CA681 |
  LDA.L PTR16_8CA68C,X                      ; $8CA682 |
  PLX                                       ; $8CA686 |
  STA.B $00                                 ; $8CA687 |
  JMP.W ($0000)                             ; $8CA689 |

PTR16_8CA68C:
  dw CODE_8CA690                            ; $8CA68C |
  dw CODE_8CA6B1                            ; $8CA68E |

CODE_8CA690:
  JSL.L CODE_FL_86C82F                      ; $8CA690 |
  LDA.B $0D,X                               ; $8CA694 |
  BMI CODE_8CA6B0                           ; $8CA696 |
  CMP.W #$0070                              ; $8CA698 |
  BCC CODE_8CA6B0                           ; $8CA69B |
  INC.W $1CE4                               ; $8CA69D |
  JSR.W CODE_FN_8CB727                      ; $8CA6A0 |
  STZ.B $4C,X                               ; $8CA6A3 |
  STZ.B $28,X                               ; $8CA6A5 |
  LDA.W #$BED7                              ; $8CA6A7 |
  STA.W $1CEA                               ; $8CA6AA |
  STZ.W $1CE6                               ; $8CA6AD |

CODE_8CA6B0:
  RTS                                       ; $8CA6B0 |

CODE_8CA6B1:
  LDA.W #$0070                              ; $8CA6B1 |
  STA.B $0D,X                               ; $8CA6B4 |
  LDA.W $1CE6                               ; $8CA6B6 |
  PHX                                       ; $8CA6B9 |
  ASL A                                     ; $8CA6BA |
  TAX                                       ; $8CA6BB |
  LDA.L PTR16_8CA6C6,X                      ; $8CA6BC |
  PLX                                       ; $8CA6C0 |
  STA.B $00                                 ; $8CA6C1 |
  JMP.W ($0000)                             ; $8CA6C3 |

PTR16_8CA6C6:
  dw CODE_8CA6CA                            ; $8CA6C6 |
  dw CODE_8CA726                            ; $8CA6C8 |

CODE_8CA6CA:
  LDA.W #$0020                              ; $8CA6CA |
  JSR.W CODE_FN_8CB706                      ; $8CA6CD |
  BCS CODE_8CA6F0                           ; $8CA6D0 |
  JSR.W CODE_FN_8CB677                      ; $8CA6D2 |
  BCS CODE_8CA6DB                           ; $8CA6D5 |
  LDA.B $2C,X                               ; $8CA6D7 |
  BNE CODE_8CA6EF                           ; $8CA6D9 |

CODE_8CA6DB:
  JSL.L CODE_FL_86C444                      ; $8CA6DB |
  JSL.L CODE_FL_86C486                      ; $8CA6DF |
  LDA.W #$FE00                              ; $8CA6E3 |
  JSL.L CODE_FL_86C887                      ; $8CA6E6 |
  LDA.W #$0040                              ; $8CA6EA |
  STA.B $2C,X                               ; $8CA6ED |

CODE_8CA6EF:
  RTS                                       ; $8CA6EF |

CODE_8CA6F0:
  STZ.B $2C,X                               ; $8CA6F0 |
  LDY.W #$0001                              ; $8CA6F2 |
  JSR.W CODE_FN_8CA9C4                      ; $8CA6F5 |
  LDY.B $44,X                               ; $8CA6F8 |
  LDA.W $0032,Y                             ; $8CA6FA |
  AND.W #$00FF                              ; $8CA6FD |
  ASL A                                     ; $8CA700 |
  ASL A                                     ; $8CA701 |
  ASL A                                     ; $8CA702 |
  ASL A                                     ; $8CA703 |
  CMP.W #$0850                              ; $8CA704 |
  LDY.W #$0400                              ; $8CA707 |
  BCC CODE_8CA70F                           ; $8CA70A |
  LDY.W #$04C0                              ; $8CA70C |

CODE_8CA70F:
  LDA.W $0009,Y                             ; $8CA70F |
  CMP.B $09,X                               ; $8CA712 |
  LDA.W #$0200                              ; $8CA714 |
  LDY.W #$FFF0                              ; $8CA717 |
  BCC CODE_8CA722                           ; $8CA71A |
  LDA.W #$FE00                              ; $8CA71C |
  LDY.W #$0010                              ; $8CA71F |

CODE_8CA722:
  STA.B $26,X                               ; $8CA722 |
  STY.B $4C,X                               ; $8CA724 |

CODE_8CA726:
  JSL.L CODE_FL_86C855                      ; $8CA726 |
  JSL.L CODE_FL_86C827                      ; $8CA72A |
  JSR.W CODE_FN_8CB677                      ; $8CA72E |
  JSR.W CODE_FN_8CA9F9                      ; $8CA731 |
  BCC CODE_8CA738                           ; $8CA734 |
  STZ.B $4A,X                               ; $8CA736 |

CODE_8CA738:
  RTS                                       ; $8CA738 |

CODE_8CA739:
  LDA.B $2C,X                               ; $8CA739 |
  BEQ CODE_8CA750                           ; $8CA73B |
  CMP.W #$0001                              ; $8CA73D |
  BNE CODE_8CA74F                           ; $8CA740 |
  JSR.W CODE_FN_8CA87E                      ; $8CA742 |
  LDA.W #$0800                              ; $8CA745 |
  STA.B $28,X                               ; $8CA748 |
  LDA.W #$FFE0                              ; $8CA74A |
  STA.B $4C,X                               ; $8CA74D |

CODE_8CA74F:
  RTS                                       ; $8CA74F |

CODE_8CA750:
  LDA.W $1CE4                               ; $8CA750 |
  PHX                                       ; $8CA753 |
  ASL A                                     ; $8CA754 |
  TAX                                       ; $8CA755 |
  LDA.L PTR16_8CA760,X                      ; $8CA756 |
  PLX                                       ; $8CA75A |
  STA.B $00                                 ; $8CA75B |
  JMP.W ($0000)                             ; $8CA75D |

PTR16_8CA760:
  dw CODE_8CA764                            ; $8CA760 |
  dw CODE_8CA7D5                            ; $8CA762 |

CODE_8CA764:
  LDA.W #$0000                              ; $8CA764 |
  STA.W $1CE8                               ; $8CA767 |
  LDA.W #$01AF                              ; $8CA76A |
  JSL.L CODE_FL_8CFCD0                      ; $8CA76D |
  BNE CODE_8CA788                           ; $8CA771 |
  INC.W $1CE4                               ; $8CA773 |
  LDA.W #$001B                              ; $8CA776 |
  JSL.L push_sound_queue                    ; $8CA779 |
  STZ.B $28,X                               ; $8CA77D |
  STZ.B $4C,X                               ; $8CA77F |
  LDA.W #$0001                              ; $8CA781 |
  JSL.L CODE_FL_B3FE45                      ; $8CA784 |

CODE_8CA788:
  JSR.W CODE_FN_8CA78C                      ; $8CA788 |
  RTS                                       ; $8CA78B |

CODE_FN_8CA78C:
  LDA.B $0D,X                               ; $8CA78C |
  SEC                                       ; $8CA78E |
  SBC.W $1CE8                               ; $8CA78F |
  STA.B $08                                 ; $8CA792 |
  LSR A                                     ; $8CA794 |
  STA.B $0A                                 ; $8CA795 |
  LDA.B $08                                 ; $8CA797 |
  SEC                                       ; $8CA799 |
  SBC.B $0A                                 ; $8CA79A |
  STA.B $08                                 ; $8CA79C |
  LDX.W #$1CC2                              ; $8CA79E |
  CLC                                       ; $8CA7A1 |

CODE_8CA7A2:
  LDA.B $00,X                               ; $8CA7A2 |
  ADC.W #$003E                              ; $8CA7A4 |
  STA.B $02                                 ; $8CA7A7 |
  LDA.B $08                                 ; $8CA7A9 |
  STA.B ($02)                               ; $8CA7AB |
  INX                                       ; $8CA7AD |
  INX                                       ; $8CA7AE |
  INX                                       ; $8CA7AF |
  INX                                       ; $8CA7B0 |
  INX                                       ; $8CA7B1 |
  INX                                       ; $8CA7B2 |
  CPX.W #$1CDA                              ; $8CA7B3 |
  BCC CODE_8CA7A2                           ; $8CA7B6 |
  LDX.W #$1CC4                              ; $8CA7B8 |
  CLC                                       ; $8CA7BB |

CODE_8CA7BC:
  LDA.B $00,X                               ; $8CA7BC |
  ADC.W #$003E                              ; $8CA7BE |
  STA.B $02                                 ; $8CA7C1 |
  LDA.B $0A                                 ; $8CA7C3 |
  STA.B ($02)                               ; $8CA7C5 |
  INX                                       ; $8CA7C7 |
  INX                                       ; $8CA7C8 |
  INX                                       ; $8CA7C9 |
  INX                                       ; $8CA7CA |
  INX                                       ; $8CA7CB |
  INX                                       ; $8CA7CC |
  CPX.W #$1CDC                              ; $8CA7CD |
  BCC CODE_8CA7BC                           ; $8CA7D0 |
  LDX.B $FC                                 ; $8CA7D2 |
  RTS                                       ; $8CA7D4 |

CODE_8CA7D5:
  LDA.W $1CE8                               ; $8CA7D5 |
  INC A                                     ; $8CA7D8 |
  INC A                                     ; $8CA7D9 |
  STA.W $1CE8                               ; $8CA7DA |
  CMP.W #$0090                              ; $8CA7DD |
  BCC CODE_FN_8CA78C                        ; $8CA7E0 |
  INC.B $1A,X                               ; $8CA7E2 |
  STZ.W $1CE4                               ; $8CA7E4 |
  JSR.W CODE_FN_8CB746                      ; $8CA7E7 |
  RTS                                       ; $8CA7EA |

CODE_8CA7EB:
  LDA.L $7EDAC6                             ; $8CA7EB |
  CMP.W #$0002                              ; $8CA7EF |
  BNE CODE_8CA80B                           ; $8CA7F2 |
  INC.B $1A,X                               ; $8CA7F4 |
  JSR.W CODE_FN_8CA87E                      ; $8CA7F6 |
  LDA.W #$FFF8                              ; $8CA7F9 |
  STA.W $1C96                               ; $8CA7FC |
  STA.W $1CA0                               ; $8CA7FF |
  STA.W $1CAA                               ; $8CA802 |
  STA.W $1CB4                               ; $8CA805 |
  STA.W $1CBE                               ; $8CA808 |

CODE_8CA80B:
  RTS                                       ; $8CA80B |

CODE_8CA80C:
  LDA.W #$0001                              ; $8CA80C |
  STA.B $00                                 ; $8CA80F |
  LDA.W #$FFFF                              ; $8CA811 |
  STA.B $02                                 ; $8CA814 |
  JSR.W CODE_FN_8CB5FC                      ; $8CA816 |
  LDA.W #$0001                              ; $8CA819 |
  STA.B $E4                                 ; $8CA81C |
  LDA.B $22,X                               ; $8CA81E |
  ORA.W #$0100                              ; $8CA820 |
  STA.B $22,X                               ; $8CA823 |
  LDA.W #$FC21                              ; $8CA825 |
  JSL.L CODE_FL_809934                      ; $8CA828 |
  BCC CODE_8CA842                           ; $8CA82C |
  STZ.B $E4                                 ; $8CA82E |
  LDA.B $22,X                               ; $8CA830 |
  AND.W #$FEFF                              ; $8CA832 |
  STA.B $22,X                               ; $8CA835 |
  INC.B $1A,X                               ; $8CA837 |
  JSL.L CODE_FL_80893F                      ; $8CA839 |
  LDA.W #$0020                              ; $8CA83D |
  STA.B $2C,X                               ; $8CA840 |

CODE_8CA842:
  RTS                                       ; $8CA842 |

CODE_8CA843:
  LDA.B $2C,X                               ; $8CA843 |
  BNE CODE_8CA852                           ; $8CA845 |
  INC.B $1A,X                               ; $8CA847 |
  LDY.W #$0014                              ; $8CA849 |
  JSL.L CODE_FL_808993                      ; $8CA84C |
  BRA CODE_JL_8CA899                        ; $8CA850 |

CODE_8CA852:
  RTS                                       ; $8CA852 |

CODE_8CA853:
  LDA.B $35,X                               ; $8CA853 |
  BMI CODE_8CA85C                           ; $8CA855 |
  BNE CODE_8CA85C                           ; $8CA857 |
  JMP.W CODE_JP_8CB305                      ; $8CA859 |

CODE_8CA85C:
  LDA.W $1CE4                               ; $8CA85C |
  PHX                                       ; $8CA85F |
  ASL A                                     ; $8CA860 |
  TAX                                       ; $8CA861 |
  LDA.L PTR16_8CA86C,X                      ; $8CA862 |
  PLX                                       ; $8CA866 |
  STA.B $00                                 ; $8CA867 |
  JMP.W ($0000)                             ; $8CA869 |

PTR16_8CA86C:
  dw CODE_8CA8E1                            ; $8CA86C |
  dw CODE_8CAA36                            ; $8CA86E |
  dw CODE_8CAB41                            ; $8CA870 |
  dw CODE_8CACB3                            ; $8CA872 |
  dw CODE_8CAECE                            ; $8CA874 |
  dw CODE_8CAF40                            ; $8CA876 |
  dw CODE_8CB006                            ; $8CA878 |
  dw CODE_8CB295                            ; $8CA87A |
  dw CODE_8CB347                            ; $8CA87C |

CODE_FN_8CA87E:
  LDA.W #$0080                              ; $8CA87E |
  STA.B $14,X                               ; $8CA881 |
  LDA.W #$3000                              ; $8CA883 |
  STA.B $00,X                               ; $8CA886 |
  LDA.B $04,X                               ; $8CA888 |
  AND.W #$BFBF                              ; $8CA88A |
  STA.B $04,X                               ; $8CA88D |
  LDY.W #$BC7F                              ; $8CA88F |
  JSR.W CODE_FN_8CB4BD                      ; $8CA892 |
  JSR.W CODE_FN_8CB6A7                      ; $8CA895 |
  RTS                                       ; $8CA898 |

CODE_JL_8CA899:
  LDA.W #$0000                              ; $8CA899 |
  JSR.W CODE_FN_8CB4B6                      ; $8CA89C |
  LDA.W #$BED7                              ; $8CA89F |
  STA.W $1CEA                               ; $8CA8A2 |
  LDA.W #$0060                              ; $8CA8A5 |
  STA.B $2C,X                               ; $8CA8A8 |
  JSL.L CODE_FL_86C444                      ; $8CA8AA |
  JSL.L CODE_FL_86C486                      ; $8CA8AE |
  LDA.W #$0004                              ; $8CA8B2 |
  JSL.L CODE_FL_86C668                      ; $8CA8B5 |
  LDA.B $28,X                               ; $8CA8B9 |
  BNE CODE_8CA8C2                           ; $8CA8BB |
  LDA.W #$FE00                              ; $8CA8BD |
  STA.B $28,X                               ; $8CA8C0 |

CODE_8CA8C2:
  BIT.B $28,X                               ; $8CA8C2 |
  BPL CODE_8CA8CC                           ; $8CA8C4 |
  LDA.W #$0001                              ; $8CA8C6 |
  JSR.W CODE_FN_8CB742                      ; $8CA8C9 |

CODE_8CA8CC:
  JSR.W CODE_FN_8CA87E                      ; $8CA8CC |
  LDA.W #$FFF8                              ; $8CA8CF |
  STA.W $1C96                               ; $8CA8D2 |
  STA.W $1CA0                               ; $8CA8D5 |
  STA.W $1CAA                               ; $8CA8D8 |
  STA.W $1CB4                               ; $8CA8DB |
  STA.W $1CBE                               ; $8CA8DE |

CODE_8CA8E1:
  LDA.B $2C,X                               ; $8CA8E1 |
  BNE CODE_8CA944                           ; $8CA8E3 |
  LDA.W $1CE6                               ; $8CA8E5 |
  CMP.W #$0001                              ; $8CA8E8 |
  BEQ CODE_8CA944                           ; $8CA8EB |
  LDA.W $1CDE                               ; $8CA8ED |
  INC A                                     ; $8CA8F0 |
  AND.W #$001F                              ; $8CA8F1 |
  STA.W $1CDE                               ; $8CA8F4 |
  PHX                                       ; $8CA8F7 |
  ASL A                                     ; $8CA8F8 |
  TAX                                       ; $8CA8F9 |
  LDA.L PTR16_8CA904,X                      ; $8CA8FA |
  PLX                                       ; $8CA8FE |
  STA.B $00                                 ; $8CA8FF |
  JMP.W ($0000)                             ; $8CA901 |

PTR16_8CA904:
  dw CODE_JL_8CA899                         ; $8CA904 |
  dw CODE_8CAB1C                            ; $8CA906 |
  dw CODE_8CAA27                            ; $8CA908 |
  dw CODE_JL_8CA899                         ; $8CA90A |
  dw CODE_8CAB17                            ; $8CA90C |
  dw CODE_8CAEAF                            ; $8CA90E |
  dw CODE_8CAFE9                            ; $8CA910 |
  dw CODE_8CAA27                            ; $8CA912 |
  dw CODE_JL_8CA899                         ; $8CA914 |
  dw CODE_8CAB17                            ; $8CA916 |
  dw CODE_8CAEAF                            ; $8CA918 |
  dw CODE_8CAB1C                            ; $8CA91A |
  dw CODE_8CAA27                            ; $8CA91C |
  dw CODE_8CAC68                            ; $8CA91E |
  dw CODE_8CAFE9                            ; $8CA920 |
  dw CODE_8CAB17                            ; $8CA922 |
  dw CODE_JL_8CA899                         ; $8CA924 |
  dw CODE_8CAA27                            ; $8CA926 |
  dw CODE_8CAA27                            ; $8CA928 |
  dw CODE_8CAA27                            ; $8CA92A |
  dw CODE_8CAB17                            ; $8CA92C |
  dw CODE_JL_8CA899                         ; $8CA92E |
  dw CODE_8CAEAF                            ; $8CA930 |
  dw CODE_8CAA27                            ; $8CA932 |
  dw CODE_8CAFE9                            ; $8CA934 |
  dw CODE_8CAA27                            ; $8CA936 |
  dw CODE_8CAA27                            ; $8CA938 |
  dw CODE_8CAB1C                            ; $8CA93A |
  dw CODE_8CAB1C                            ; $8CA93C |
  dw CODE_8CAC68                            ; $8CA93E |
  dw CODE_8CAA27                            ; $8CA940 |
  dw CODE_8CAA27                            ; $8CA942 |

CODE_8CA944:
  LDA.B $42                                 ; $8CA944 |
  AND.W #$0003                              ; $8CA946 |
  BNE CODE_8CA95B                           ; $8CA949 |
  LDA.W #$0001                              ; $8CA94B |
  STA.B $00                                 ; $8CA94E |
  LDA.W #$FFFF                              ; $8CA950 |
  STA.B $02                                 ; $8CA953 |
  LDX.W #$1C8E                              ; $8CA955 |
  JSR.W CODE_FN_8CB5FC                      ; $8CA958 |

CODE_8CA95B:
  LDA.W $1CE6                               ; $8CA95B |
  PHX                                       ; $8CA95E |
  ASL A                                     ; $8CA95F |
  TAX                                       ; $8CA960 |
  LDA.L PTR16_8CA96B,X                      ; $8CA961 |
  PLX                                       ; $8CA965 |
  STA.B $00                                 ; $8CA966 |
  JMP.W ($0000)                             ; $8CA968 |

PTR16_8CA96B:
  dw CODE_8CA96F                            ; $8CA96B |
  dw CODE_8CA9B3                            ; $8CA96D |

CODE_8CA96F:
  LDA.W #$0040                              ; $8CA96F |
  JSR.W CODE_FN_8CB706                      ; $8CA972 |
  BCS CODE_8CA9AD                           ; $8CA975 |
  LDA.W #$0160                              ; $8CA977 |
  JSR.W CODE_FN_8CB647                      ; $8CA97A |
  BCC CODE_8CA98D                           ; $8CA97D |
  JSL.L CODE_FL_86CB7A                      ; $8CA97F |
  BIT.B $28,X                               ; $8CA983 |
  BPL CODE_8CA98D                           ; $8CA985 |
  LDA.W #$0001                              ; $8CA987 |
  JSR.W CODE_FN_8CB742                      ; $8CA98A |

CODE_8CA98D:
  JSR.W CODE_FN_8CB677                      ; $8CA98D |
  BCC CODE_8CA9AC                           ; $8CA990 |
  JSL.L CODE_FL_86CB6A                      ; $8CA992 |
  LDA.B $86                                 ; $8CA996 |
  AND.W #$001F                              ; $8CA998 |
  BNE CODE_8CA9AC                           ; $8CA99B |
  JSL.L CODE_FL_86C444                      ; $8CA99D |
  JSL.L CODE_FL_86C486                      ; $8CA9A1 |
  LDA.W #$0004                              ; $8CA9A5 |
  JSL.L CODE_FL_86C668                      ; $8CA9A8 |

CODE_8CA9AC:
  RTS                                       ; $8CA9AC |

CODE_8CA9AD:
  LDY.W #$0001                              ; $8CA9AD |
  JSR.W CODE_FN_8CA9C4                      ; $8CA9B0 |

CODE_8CA9B3:
  JSR.W CODE_FN_8CA9F9                      ; $8CA9B3 |
  BCC CODE_8CA9C3                           ; $8CA9B6 |
  LDA.B $2C,X                               ; $8CA9B8 |
  SEC                                       ; $8CA9BA |
  SBC.W #$0020                              ; $8CA9BB |
  BPL CODE_8CA9C1                           ; $8CA9BE |
  TDC                                       ; $8CA9C0 |

CODE_8CA9C1:
  STA.B $2C,X                               ; $8CA9C1 |

CODE_8CA9C3:
  RTS                                       ; $8CA9C3 |

CODE_FN_8CA9C4:
  LDA.W $1CE6                               ; $8CA9C4 |
  STA.W $1CEC                               ; $8CA9C7 |
  LDA.B $00,X                               ; $8CA9CA |
  STA.W $1CEE                               ; $8CA9CC |
  STY.W $1CE6                               ; $8CA9CF |
  LDA.W #$30AC                              ; $8CA9D2 |
  STA.B $00,X                               ; $8CA9D5 |
  LDA.W #$000C                              ; $8CA9D7 |
  JSL.L push_sound_queue                    ; $8CA9DA |
  BIT.B $35,X                               ; $8CA9DE |
  BMI CODE_8CA9F7                           ; $8CA9E0 |
  SEP #$20                                  ; $8CA9E2 |
  DEC.B $36,X                               ; $8CA9E4 |
  LDY.B $44,X                               ; $8CA9E6 |
  LDA.W $0037,Y                             ; $8CA9E8 |
  CMP.B #$02                                ; $8CA9EB |
  BNE CODE_8CA9F1                           ; $8CA9ED |
  DEC.B $36,X                               ; $8CA9EF |

CODE_8CA9F1:
  LDA.B $36,X                               ; $8CA9F1 |
  BPL CODE_8CA9F7                           ; $8CA9F3 |
  STZ.B $36,X                               ; $8CA9F5 |

CODE_8CA9F7:
  REP #$20                                  ; $8CA9F7 |

CODE_FN_8CA9F9:
  LDA.W #$0004                              ; $8CA9F9 |
  JSL.L CODE_FL_8CFD0B                      ; $8CA9FC |
  LDA.B $38,X                               ; $8CAA00 |
  BEQ CODE_8CAA13                           ; $8CAA02 |
  LSR A                                     ; $8CAA04 |
  BCS CODE_8CAA0D                           ; $8CAA05 |
  INC.B $09,X                               ; $8CAA07 |
  INC.B $09,X                               ; $8CAA09 |
  CLC                                       ; $8CAA0B |
  RTS                                       ; $8CAA0C |

CODE_8CAA0D:
  DEC.B $09,X                               ; $8CAA0D |
  DEC.B $09,X                               ; $8CAA0F |
  CLC                                       ; $8CAA11 |
  RTS                                       ; $8CAA12 |

CODE_8CAA13:
  LDA.W #$0004                              ; $8CAA13 |
  JSL.L CODE_FL_8CFD3F                      ; $8CAA16 |
  LDA.W $1CEC                               ; $8CAA1A |
  STA.W $1CE6                               ; $8CAA1D |
  LDA.W $1CEE                               ; $8CAA20 |
  STA.B $00,X                               ; $8CAA23 |
  SEC                                       ; $8CAA25 |
  RTS                                       ; $8CAA26 |

CODE_8CAA27:
  LDA.W #$0001                              ; $8CAA27 |
  JSR.W CODE_FN_8CB4B6                      ; $8CAA2A |
  JSR.W CODE_FN_8CA87E                      ; $8CAA2D |
  LDA.W #$BED7                              ; $8CAA30 |
  STA.W $1CEA                               ; $8CAA33 |

CODE_8CAA36:
  LDA.W #$0160                              ; $8CAA36 |
  JSR.W CODE_FN_8CB647                      ; $8CAA39 |
  BCC CODE_8CAA4C                           ; $8CAA3C |
  JSL.L CODE_FL_86CB7A                      ; $8CAA3E |
  BIT.B $28,X                               ; $8CAA42 |
  BPL CODE_8CAA4C                           ; $8CAA44 |
  LDA.W #$0002                              ; $8CAA46 |
  JSR.W CODE_FN_8CB742                      ; $8CAA49 |

CODE_8CAA4C:
  JSR.W CODE_FN_8CB677                      ; $8CAA4C |
  BCC CODE_8CAA55                           ; $8CAA4F |
  JSL.L CODE_FL_86CB6A                      ; $8CAA51 |

CODE_8CAA55:
  LDA.W $1CE6                               ; $8CAA55 |
  PHX                                       ; $8CAA58 |
  ASL A                                     ; $8CAA59 |
  TAX                                       ; $8CAA5A |
  LDA.L PTR16_8CAA65,X                      ; $8CAA5B |
  PLX                                       ; $8CAA5F |
  STA.B $00                                 ; $8CAA60 |
  JMP.W ($0000)                             ; $8CAA62 |

PTR16_8CAA65:
  dw CODE_8CAA6D                            ; $8CAA65 |
  dw CODE_8CAAC7                            ; $8CAA67 |
  dw CODE_8CAAF2                            ; $8CAA69 |
  dw CODE_8CAB13                            ; $8CAA6B |

CODE_8CAA6D:
  LDA.W #$0040                              ; $8CAA6D |
  JSR.W CODE_FN_8CB706                      ; $8CAA70 |
  BCC CODE_8CAA78                           ; $8CAA73 |
  JMP.W CODE_JP_8CAB0D                      ; $8CAA75 |

CODE_8CAA78:
  LDA.W #$0002                              ; $8CAA78 |
  STA.B $00                                 ; $8CAA7B |
  STZ.B $02                                 ; $8CAA7D |
  LDY.W #$1C8E                              ; $8CAA7F |
  JSR.W CODE_FN_8CAAB5                      ; $8CAA82 |
  LDY.W #$1C98                              ; $8CAA85 |
  JSR.W CODE_FN_8CAAB5                      ; $8CAA88 |
  LDY.W #$1CA2                              ; $8CAA8B |
  JSR.W CODE_FN_8CAAB5                      ; $8CAA8E |
  LDY.W #$1CAC                              ; $8CAA91 |
  JSR.W CODE_FN_8CAAB5                      ; $8CAA94 |
  LDY.W #$1CB6                              ; $8CAA97 |
  JSR.W CODE_FN_8CAAB5                      ; $8CAA9A |
  LDA.B $02                                 ; $8CAA9D |
  BNE CODE_8CAAB4                           ; $8CAA9F |
  INC.W $1CE6                               ; $8CAAA1 |
  LDA.B $86                                 ; $8CAAA4 |
  AND.W #$003F                              ; $8CAAA6 |
  ADC.W #$0080                              ; $8CAAA9 |
  STA.B $2C,X                               ; $8CAAAC |
  LDA.W #$BEE9                              ; $8CAAAE |
  STA.W $1CEA                               ; $8CAAB1 |

CODE_8CAAB4:
  RTS                                       ; $8CAAB4 |

CODE_FN_8CAAB5:
  LDA.B ($00),Y                             ; $8CAAB5 |
  BPL CODE_8CAABE                           ; $8CAAB7 |
  CMP.W #$FFD0                              ; $8CAAB9 |
  BCC CODE_8CAAC6                           ; $8CAABC |

CODE_8CAABE:
  SEC                                       ; $8CAABE |
  SBC.W #$0004                              ; $8CAABF |
  STA.B ($00),Y                             ; $8CAAC2 |
  INC.B $02                                 ; $8CAAC4 |

CODE_8CAAC6:
  RTS                                       ; $8CAAC6 |

CODE_8CAAC7:
  LDA.B $2C,X                               ; $8CAAC7 |
  BEQ CODE_8CAADC                           ; $8CAAC9 |
  LDA.L $7EDAC6                             ; $8CAACB |
  CMP.W #$0002                              ; $8CAACF |
  BNE CODE_8CAADB                           ; $8CAAD2 |
  LDA.W #$0003                              ; $8CAAD4 |
  STA.L $7EDAC6                             ; $8CAAD7 |

CODE_8CAADB:
  RTS                                       ; $8CAADB |

CODE_8CAADC:
  INC.W $1CE6                               ; $8CAADC |
  LDA.W #$FFF8                              ; $8CAADF |
  STA.W $1C96                               ; $8CAAE2 |
  STA.W $1CA0                               ; $8CAAE5 |
  STA.W $1CAA                               ; $8CAAE8 |
  STA.W $1CB4                               ; $8CAAEB |
  STA.W $1CBE                               ; $8CAAEE |
  RTS                                       ; $8CAAF1 |

CODE_8CAAF2:
  LDA.W #$0004                              ; $8CAAF2 |
  STA.B $00                                 ; $8CAAF5 |
  LDA.W #$FFFC                              ; $8CAAF7 |
  STA.B $02                                 ; $8CAAFA |
  JSR.W CODE_FN_8CB5FC                      ; $8CAAFC |
  BIT.W $1C90                               ; $8CAAFF |
  BPL CODE_8CAB05                           ; $8CAB02 |
  RTS                                       ; $8CAB04 |

CODE_8CAB05:
  LDA.W #$0030                              ; $8CAB05 |
  STA.B $2C,X                               ; $8CAB08 |
  BRL CODE_JL_8CA899                        ; $8CAB0A |

CODE_JP_8CAB0D:
  LDY.W #$0003                              ; $8CAB0D |
  JSR.W CODE_FN_8CA9C4                      ; $8CAB10 |

CODE_8CAB13:
  JSR.W CODE_FN_8CA9F9                      ; $8CAB13 |
  RTS                                       ; $8CAB16 |

CODE_8CAB17:
  LDA.W #$0002                              ; $8CAB17 |
  BRA CODE_8CAB1D                           ; $8CAB1A |

CODE_8CAB1C:
  TDC                                       ; $8CAB1C |

CODE_8CAB1D:
  STA.W $1CE8                               ; $8CAB1D |
  LDA.W #$0002                              ; $8CAB20 |
  JSR.W CODE_FN_8CB4B6                      ; $8CAB23 |
  JSR.W CODE_FN_8CA87E                      ; $8CAB26 |
  LDA.W #$BEE9                              ; $8CAB29 |
  STA.W $1CEA                               ; $8CAB2C |
  LDY.W #$BC7F                              ; $8CAB2F |
  JSR.W CODE_FN_8CB4BD                      ; $8CAB32 |
  STZ.B $26,X                               ; $8CAB35 |
  LDA.W #$FF00                              ; $8CAB37 |
  STA.B $28,X                               ; $8CAB3A |
  LDA.W #$FFE0                              ; $8CAB3C |
  STA.B $4C,X                               ; $8CAB3F |

CODE_8CAB41:
  LDA.W $1CE6                               ; $8CAB41 |
  PHX                                       ; $8CAB44 |
  ASL A                                     ; $8CAB45 |
  TAX                                       ; $8CAB46 |
  LDA.L PTR16_8CAB51,X                      ; $8CAB47 |
  PLX                                       ; $8CAB4B |
  STA.B $00                                 ; $8CAB4C |
  JMP.W ($0000)                             ; $8CAB4E |

PTR16_8CAB51:
  dw CODE_8CAB5B                            ; $8CAB51 |
  dw CODE_8CABA5                            ; $8CAB53 |
  dw CODE_8CABDA                            ; $8CAB55 |
  dw CODE_8CAC0F                            ; $8CAB57 |
  dw CODE_8CAC33                            ; $8CAB59 |

CODE_8CAB5B:
  JSL.L CODE_FL_86C82F                      ; $8CAB5B |
  LDA.W #$0160                              ; $8CAB5F |
  JSR.W CODE_FN_8CB647                      ; $8CAB62 |
  BCC CODE_8CABA4                           ; $8CAB65 |
  INC.W $1CE6                               ; $8CAB67 |
  STZ.B $28,X                               ; $8CAB6A |
  STZ.B $4C,X                               ; $8CAB6C |
  JSL.L CODE_FL_86C444                      ; $8CAB6E |
  JSL.L CODE_FL_86C486                      ; $8CAB72 |
  JSL.L CODE_FL_86C55C                      ; $8CAB76 |
  BPL CODE_8CAB80                           ; $8CAB7A |
  EOR.W #$FFFF                              ; $8CAB7C |
  INC A                                     ; $8CAB7F |

CODE_8CAB80:
  LSR A                                     ; $8CAB80 |
  LSR A                                     ; $8CAB81 |
  LSR A                                     ; $8CAB82 |
  LSR A                                     ; $8CAB83 |
  JSL.L CODE_FL_86C668                      ; $8CAB84 |
  STZ.B $28,X                               ; $8CAB88 |
  LDA.W #$0030                              ; $8CAB8A |
  STA.B $4C,X                               ; $8CAB8D |
  JSR.W CODE_FN_8CB6A7                      ; $8CAB8F |
  LDA.W #$FFD0                              ; $8CAB92 |
  STA.W $1C96                               ; $8CAB95 |
  STA.W $1CA0                               ; $8CAB98 |
  STA.W $1CAA                               ; $8CAB9B |
  STA.W $1CB4                               ; $8CAB9E |
  STA.W $1CBE                               ; $8CABA1 |

CODE_8CABA4:
  RTS                                       ; $8CABA4 |

CODE_8CABA5:
  LDA.W #$0002                              ; $8CABA5 |
  STA.B $00                                 ; $8CABA8 |
  LDA.W #$FFFE                              ; $8CABAA |
  STA.B $02                                 ; $8CABAD |
  JSR.W CODE_FN_8CB5FC                      ; $8CABAF |
  BIT.W $1C94                               ; $8CABB2 |
  BPL CODE_8CABD9                           ; $8CABB5 |
  INC.W $1CE6                               ; $8CABB7 |
  STZ.B $14,X                               ; $8CABBA |
  LDA.W #$3022                              ; $8CABBC |
  STA.B $00,X                               ; $8CABBF |
  LDA.B $04,X                               ; $8CABC1 |
  ORA.W #$4040                              ; $8CABC3 |
  STA.B $04,X                               ; $8CABC6 |
  LDA.B $0D,X                               ; $8CABC8 |
  CLC                                       ; $8CABCA |
  ADC.W #$FFC0                              ; $8CABCB |
  STA.B $0D,X                               ; $8CABCE |
  LDA.W #$BEFB                              ; $8CABD0 |
  STA.W $1CEA                               ; $8CABD3 |
  JSR.W CODE_FN_8CB62A                      ; $8CABD6 |

CODE_8CABD9:
  RTS                                       ; $8CABD9 |

CODE_8CABDA:
  BIT.B $28,X                               ; $8CABDA |
  BMI CODE_8CABE4                           ; $8CABDC |
  LDA.W #$0003                              ; $8CABDE |
  JSR.W CODE_FN_8CB742                      ; $8CABE1 |

CODE_8CABE4:
  JSR.W CODE_FN_8CB677                      ; $8CABE4 |
  BCC CODE_8CABED                           ; $8CABE7 |
  JSL.L CODE_FL_86CB6A                      ; $8CABE9 |

CODE_8CABED:
  LDA.W #$016F                              ; $8CABED |
  JSL.L CODE_FL_8CFCD0                      ; $8CABF0 |
  BNE CODE_8CAC0E                           ; $8CABF4 |
  INC.W $1CE6                               ; $8CABF6 |
  STZ.B $26,X                               ; $8CABF9 |
  LDA.W #$001F                              ; $8CABFB |
  STA.B $2C,X                               ; $8CABFE |
  LDA.W #$0001                              ; $8CAC00 |
  JSL.L CODE_FL_B3FE45                      ; $8CAC03 |
  LDA.W #$001B                              ; $8CAC07 |
  JSL.L push_sound_queue                    ; $8CAC0A |

CODE_8CAC0E:
  RTS                                       ; $8CAC0E |

CODE_8CAC0F:
  LDA.B $2C,X                               ; $8CAC0F |
  BNE CODE_8CAC1C                           ; $8CAC11 |
  INC.W $1CE6                               ; $8CAC13 |
  LDA.W #$0008                              ; $8CAC16 |
  STA.B $2C,X                               ; $8CAC19 |
  RTS                                       ; $8CAC1B |

CODE_8CAC1C:
  CMP.W #$0010                              ; $8CAC1C |
  BCS CODE_8CAC2A                           ; $8CAC1F |
  DEC.B $0D,X                               ; $8CAC21 |
  INC.W $1C90                               ; $8CAC23 |
  INC.W $1C9A                               ; $8CAC26 |
  RTS                                       ; $8CAC29 |

CODE_8CAC2A:
  INC.B $0D,X                               ; $8CAC2A |
  DEC.W $1C90                               ; $8CAC2C |
  DEC.W $1C9A                               ; $8CAC2F |
  RTS                                       ; $8CAC32 |

CODE_8CAC33:
  LDA.W $1CE8                               ; $8CAC33 |
  BEQ CODE_8CAC53                           ; $8CAC36 |
  LDA.W #$0002                              ; $8CAC38 |
  STA.W $1CE6                               ; $8CAC3B |
  DEC.W $1CE8                               ; $8CAC3E |
  LDA.W #$FE80                              ; $8CAC41 |
  JSL.L CODE_FL_86C887                      ; $8CAC44 |
  LDA.W #$0040                              ; $8CAC48 |
  STA.B $4C,X                               ; $8CAC4B |
  LDA.W #$FA00                              ; $8CAC4D |
  STA.B $28,X                               ; $8CAC50 |
  RTS                                       ; $8CAC52 |

CODE_8CAC53:
  LDA.B $2C,X                               ; $8CAC53 |
  BNE CODE_8CAC67                           ; $8CAC55 |
  LDA.B $0D,X                               ; $8CAC57 |
  SEC                                       ; $8CAC59 |
  SBC.W #$FFC0                              ; $8CAC5A |
  STA.B $0D,X                               ; $8CAC5D |
  LDA.W #$0060                              ; $8CAC5F |
  STA.B $2C,X                               ; $8CAC62 |
  BRL CODE_JL_8CA899                        ; $8CAC64 |

CODE_8CAC67:
  RTS                                       ; $8CAC67 |

CODE_8CAC68:
  LDA.W #$0003                              ; $8CAC68 |
  JSR.W CODE_FN_8CB4B6                      ; $8CAC6B |
  JSR.W CODE_FN_8CA87E                      ; $8CAC6E |
  LDA.W #$BF0D                              ; $8CAC71 |
  STA.W $1CEA                               ; $8CAC74 |
  LDY.W #$BC7F                              ; $8CAC77 |
  JSR.W CODE_FN_8CB4BD                      ; $8CAC7A |
  JSR.W CODE_FN_8CB6A7                      ; $8CAC7D |
  LDA.W #$FFD0                              ; $8CAC80 |
  STA.W $1C96                               ; $8CAC83 |
  STA.W $1CA0                               ; $8CAC86 |
  STA.W $1CAA                               ; $8CAC89 |
  STA.W $1CB4                               ; $8CAC8C |
  STA.W $1CBE                               ; $8CAC8F |
  JSL.L CODE_FL_86C444                      ; $8CAC92 |
  JSL.L CODE_FL_86C486                      ; $8CAC96 |
  LDA.W #$0900                              ; $8CAC9A |
  LDY.W #$FFC0                              ; $8CAC9D |
  JSR.W CODE_FN_8CB6E4                      ; $8CACA0 |
  LDA.W #$FF00                              ; $8CACA3 |
  STA.B $28,X                               ; $8CACA6 |
  LDA.W #$FFF0                              ; $8CACA8 |
  STA.B $4C,X                               ; $8CACAB |
  LDA.W #$0004                              ; $8CACAD |
  JSR.W CODE_FN_8CB742                      ; $8CACB0 |

CODE_8CACB3:
  LDA.W $1CE6                               ; $8CACB3 |
  PHX                                       ; $8CACB6 |
  ASL A                                     ; $8CACB7 |
  TAX                                       ; $8CACB8 |
  LDA.L PTR16_8CACC3,X                      ; $8CACB9 |
  PLX                                       ; $8CACBD |
  STA.B $00                                 ; $8CACBE |
  JMP.W ($0000)                             ; $8CACC0 |

PTR16_8CACC3:
  dw CODE_8CACD5                            ; $8CACC3 |
  dw CODE_8CAD2A                            ; $8CACC5 |
  dw CODE_8CAD49                            ; $8CACC7 |
  dw CODE_8CAD71                            ; $8CACC9 |
  dw CODE_8CADBA                            ; $8CACCB |
  dw CODE_8CADF6                            ; $8CACCD |
  dw CODE_8CAE2C                            ; $8CACCF |
  dw CODE_8CAE5D                            ; $8CACD1 |
  dw CODE_8CAE96                            ; $8CACD3 |

CODE_8CACD5:
  BIT.W $1C94                               ; $8CACD5 |
  BMI CODE_8CACE7                           ; $8CACD8 |
  LDA.W #$0002                              ; $8CACDA |
  STA.B $00                                 ; $8CACDD |
  LDA.W #$FFFE                              ; $8CACDF |
  STA.B $02                                 ; $8CACE2 |
  JSR.W CODE_FN_8CB5FC                      ; $8CACE4 |

CODE_8CACE7:
  JSL.L CODE_FL_86C827                      ; $8CACE7 |
  JSR.W CODE_FN_8CB677                      ; $8CACEB |
  BCC CODE_8CACF0                           ; $8CACEE |

CODE_8CACF0:
  JSL.L CODE_FL_86C82F                      ; $8CACF0 |
  LDA.W #$0120                              ; $8CACF4 |
  JSR.W CODE_FN_8CB647                      ; $8CACF7 |
  BCS CODE_8CACFD                           ; $8CACFA |
  RTS                                       ; $8CACFC |

CODE_8CACFD:
  INC.W $1CE6                               ; $8CACFD |
  STZ.B $26,X                               ; $8CAD00 |
  STZ.B $28,X                               ; $8CAD02 |
  LDA.W #$0040                              ; $8CAD04 |
  STA.B $4C,X                               ; $8CAD07 |

CODE_FN_8CAD09:
  LDY.W #$BCF7                              ; $8CAD09 |
  JSR.W CODE_FN_8CB4BD                      ; $8CAD0C |
  JSR.W CODE_FN_8CB6A7                      ; $8CAD0F |
  LDA.W #$FFD0                              ; $8CAD12 |
  STA.W $1C90                               ; $8CAD15 |
  STA.W $1C9A                               ; $8CAD18 |
  STA.W $1CA4                               ; $8CAD1B |
  STA.W $1CAE                               ; $8CAD1E |
  STA.W $1CB8                               ; $8CAD21 |
  LDA.W #$304E                              ; $8CAD24 |
  STA.B $00,X                               ; $8CAD27 |
  RTS                                       ; $8CAD29 |

CODE_8CAD2A:
  LDA.W #$018F                              ; $8CAD2A |
  JSL.L CODE_FL_8CFCD0                      ; $8CAD2D |
  BEQ CODE_8CAD39                           ; $8CAD31 |
  JSL.L CODE_FL_86C566                      ; $8CAD33 |
  BPL CODE_8CAD48                           ; $8CAD37 |

CODE_8CAD39:
  INC.W $1CE6                               ; $8CAD39 |
  LDA.W #$FE00                              ; $8CAD3C |
  STA.B $28,X                               ; $8CAD3F |
  STZ.B $4C,X                               ; $8CAD41 |
  LDA.W #$0004                              ; $8CAD43 |
  STA.B $2C,X                               ; $8CAD46 |

CODE_8CAD48:
  RTS                                       ; $8CAD48 |

CODE_8CAD49:
  LDA.W #$018F                              ; $8CAD49 |
  JSL.L CODE_FL_8CFCD0                      ; $8CAD4C |
  LDA.B $2C,X                               ; $8CAD50 |
  BNE CODE_8CAD70                           ; $8CAD52 |
  INC.W $1CE6                               ; $8CAD54 |
  LDA.W #$0040                              ; $8CAD57 |
  STA.B $2C,X                               ; $8CAD5A |
  STZ.B $28,X                               ; $8CAD5C |
  STZ.B $4C,X                               ; $8CAD5E |
  LDA.W #$FF00                              ; $8CAD60 |
  LDY.W #$0020                              ; $8CAD63 |
  JSR.W CODE_FN_8CB6E4                      ; $8CAD66 |
  LDA.W #$00BC                              ; $8CAD69 |
  JSL.L CODE_FL_8089BD                      ; $8CAD6C |

CODE_8CAD70:
  RTS                                       ; $8CAD70 |

CODE_8CAD71:
  LDA.W #$0005                              ; $8CAD71 |
  JSR.W CODE_FN_8CB742                      ; $8CAD74 |
  JSL.L CODE_FL_86C827                      ; $8CAD77 |
  JSR.W CODE_FN_8CB677                      ; $8CAD7B |
  BCC CODE_8CAD87                           ; $8CAD7E |
  STZ.B $26,X                               ; $8CAD80 |
  STZ.B $4A,X                               ; $8CAD82 |
  BRL CODE_JL_8CA899                        ; $8CAD84 |

CODE_8CAD87:
  LDY.B $DC                                 ; $8CAD87 |
  LDA.W $0009,Y                             ; $8CAD89 |
  SEC                                       ; $8CAD8C |
  SBC.B $09,X                               ; $8CAD8D |
  BPL CODE_8CAD95                           ; $8CAD8F |
  EOR.W #$FFFF                              ; $8CAD91 |
  INC A                                     ; $8CAD94 |

CODE_8CAD95:
  CMP.W #$0038                              ; $8CAD95 |
  BCS CODE_8CADB9                           ; $8CAD98 |
  LDY.B $DC                                 ; $8CAD9A |
  LDA.W $0009,Y                             ; $8CAD9C |
  SEC                                       ; $8CAD9F |
  SBC.B $09,X                               ; $8CADA0 |
  BPL CODE_8CADA8                           ; $8CADA2 |
  EOR.W #$FFFF                              ; $8CADA4 |
  INC A                                     ; $8CADA7 |

CODE_8CADA8:
  CMP.W #$0038                              ; $8CADA8 |
  BCS CODE_8CADB9                           ; $8CADAB |
  INC.W $1CE6                               ; $8CADAD |
  LDA.W #$000C                              ; $8CADB0 |
  STA.B $2C,X                               ; $8CADB3 |
  STZ.B $26,X                               ; $8CADB5 |
  STZ.B $4A,X                               ; $8CADB7 |

CODE_8CADB9:
  RTS                                       ; $8CADB9 |

CODE_8CADBA:
  LDA.B $2C,X                               ; $8CADBA |
  CMP.W #$0001                              ; $8CADBC |
  BNE CODE_8CADC8                           ; $8CADBF |
  LDA.W #$00AC                              ; $8CADC1 |
  JSL.L CODE_FL_8089BD                      ; $8CADC4 |

CODE_8CADC8:
  LDA.B $2C,X                               ; $8CADC8 |
  BNE CODE_8CADF5                           ; $8CADCA |
  LDA.W $1C90                               ; $8CADCC |
  CLC                                       ; $8CADCF |
  ADC.W #$0008                              ; $8CADD0 |
  BMI CODE_8CADE8                           ; $8CADD3 |
  CMP.W #$0008                              ; $8CADD5 |
  BCC CODE_8CADE8                           ; $8CADD8 |
  INC.W $1CE6                               ; $8CADDA |
  LDA.W #$0010                              ; $8CADDD |
  STA.B $2C,X                               ; $8CADE0 |
  STZ.W $1CE8                               ; $8CADE2 |
  LDA.W #$0008                              ; $8CADE5 |

CODE_8CADE8:
  STA.W $1C90                               ; $8CADE8 |
  LDA.W $1CB8                               ; $8CADEB |
  CLC                                       ; $8CADEE |
  ADC.W #$0008                              ; $8CADEF |
  STA.W $1CB8                               ; $8CADF2 |

CODE_8CADF5:
  RTS                                       ; $8CADF5 |

CODE_8CADF6:
  LDA.W #$BF1F                              ; $8CADF6 |
  STA.W $1CEA                               ; $8CADF9 |
  LDA.B $2C,X                               ; $8CADFC |
  BEQ CODE_8CAE1B                           ; $8CADFE |
  LSR A                                     ; $8CAE00 |
  CLC                                       ; $8CAE01 |
  BIT.W $1CE8                               ; $8CAE02 |
  BMI CODE_8CAE0B                           ; $8CAE05 |
  EOR.W #$FFFF                              ; $8CAE07 |
  SEC                                       ; $8CAE0A |

CODE_8CAE0B:
  ADC.W #$0008                              ; $8CAE0B |
  STA.W $1C90                               ; $8CAE0E |
  LDA.W $1CE8                               ; $8CAE11 |
  EOR.W #$8000                              ; $8CAE14 |
  STA.W $1CE8                               ; $8CAE17 |
  RTS                                       ; $8CAE1A |

CODE_8CAE1B:
  INC.W $1CE6                               ; $8CAE1B |
  LDA.W $1CE4                               ; $8CAE1E |
  CMP.W #$0003                              ; $8CAE21 |
  BEQ CODE_8CAE2B                           ; $8CAE24 |
  LDA.W #$0040                              ; $8CAE26 |
  STA.B $2C,X                               ; $8CAE29 |

CODE_8CAE2B:
  RTS                                       ; $8CAE2B |

CODE_8CAE2C:
  LDA.B $2C,X                               ; $8CAE2C |
  BEQ CODE_8CAE31                           ; $8CAE2E |
  RTS                                       ; $8CAE30 |

CODE_8CAE31:
  LDA.W $1CE4                               ; $8CAE31 |
  CMP.W #$0003                              ; $8CAE34 |
  BEQ CODE_8CAE41                           ; $8CAE37 |
  LDA.W #$0080                              ; $8CAE39 |
  STA.B $2C,X                               ; $8CAE3C |
  BRL CODE_JL_8CA899                        ; $8CAE3E |

CODE_8CAE41:
  LDA.W #$FFD0                              ; $8CAE41 |
  STA.W $1C90                               ; $8CAE44 |
  STA.W $1CB8                               ; $8CAE47 |
  LDA.W #$0002                              ; $8CAE4A |

CODE_FN_8CAE4D:
  STA.W $1CE8                               ; $8CAE4D |
  LDA.W #$FF00                              ; $8CAE50 |
  LDY.W #$0040                              ; $8CAE53 |
  JSR.W CODE_FN_8CB6E4                      ; $8CAE56 |
  INC.W $1CE6                               ; $8CAE59 |
  RTS                                       ; $8CAE5C |

CODE_8CAE5D:
  LDA.W #$0006                              ; $8CAE5D |
  JSR.W CODE_FN_8CB742                      ; $8CAE60 |

CODE_FN_8CAE63:
  JSL.L CODE_FL_86C827                      ; $8CAE63 |
  JSR.W CODE_FN_8CB677                      ; $8CAE67 |
  BCC CODE_8CAE88                           ; $8CAE6A |
  LDA.W #$0001                              ; $8CAE6C |
  JSL.L CODE_FL_B3FE45                      ; $8CAE6F |
  LDA.W #$001B                              ; $8CAE73 |
  JSL.L push_sound_queue                    ; $8CAE76 |
  DEC.W $1CE8                               ; $8CAE7A |
  BEQ CODE_8CAE89                           ; $8CAE7D |
  LDA.W #$0400                              ; $8CAE7F |
  LDY.W #$FFC0                              ; $8CAE82 |
  JSR.W CODE_FN_8CB6E4                      ; $8CAE85 |

CODE_8CAE88:
  RTS                                       ; $8CAE88 |

CODE_8CAE89:
  INC.W $1CE6                               ; $8CAE89 |
  LDA.W #$0800                              ; $8CAE8C |
  LDY.W #$FFC0                              ; $8CAE8F |
  JSR.W CODE_FN_8CB6E4                      ; $8CAE92 |
  RTS                                       ; $8CAE95 |

CODE_8CAE96:
  JSL.L CODE_FL_86C827                      ; $8CAE96 |
  JSR.W CODE_FN_8CB677                      ; $8CAE9A |
  LDA.B $26,X                               ; $8CAE9D |
  BPL CODE_8CAEA5                           ; $8CAE9F |
  EOR.W #$FFFF                              ; $8CAEA1 |
  INC A                                     ; $8CAEA4 |

CODE_8CAEA5:
  CMP.W #$0100                              ; $8CAEA5 |
  BCS CODE_8CAEAE                           ; $8CAEA8 |
  STZ.B $26,X                               ; $8CAEAA |
  BRA CODE_8CAEF9                           ; $8CAEAC |

CODE_8CAEAE:
  RTS                                       ; $8CAEAE |

CODE_8CAEAF:
  LDA.W #$0004                              ; $8CAEAF |
  JSR.W CODE_FN_8CB4B6                      ; $8CAEB2 |
  JSR.W CODE_FN_8CA87E                      ; $8CAEB5 |
  JSR.W CODE_FN_8CAD09                      ; $8CAEB8 |
  LDA.W #$BF0D                              ; $8CAEBB |
  STA.W $1CEA                               ; $8CAEBE |
  LDA.W #$0040                              ; $8CAEC1 |
  STA.B $2C,X                               ; $8CAEC4 |
  JSL.L CODE_FL_86C444                      ; $8CAEC6 |
  JSL.L CODE_FL_86C486                      ; $8CAECA |

CODE_8CAECE:
  LDA.W #$0160                              ; $8CAECE |
  JSR.W CODE_FN_8CB647                      ; $8CAED1 |
  BCC CODE_8CAEDA                           ; $8CAED4 |
  JSL.L CODE_FL_86CB7A                      ; $8CAED6 |

CODE_8CAEDA:
  JSR.W CODE_FN_8CB677                      ; $8CAEDA |
  BCC CODE_8CAEE3                           ; $8CAEDD |
  JSL.L CODE_FL_86CB71                      ; $8CAEDF |

CODE_8CAEE3:
  LDA.W $1CE6                               ; $8CAEE3 |
  PHX                                       ; $8CAEE6 |
  ASL A                                     ; $8CAEE7 |
  TAX                                       ; $8CAEE8 |
  LDA.L PTR16_8CAEF3,X                      ; $8CAEE9 |
  PLX                                       ; $8CAEED |
  STA.B $00                                 ; $8CAEEE |
  JMP.W ($0000)                             ; $8CAEF0 |

PTR16_8CAEF3:
  dw CODE_8CADBA                            ; $8CAEF3 |
  dw CODE_8CADF6                            ; $8CAEF5 |
  dw CODE_8CAE2C                            ; $8CAEF7 |

CODE_8CAEF9:
  LDA.W #$0005                              ; $8CAEF9 |
  JSR.W CODE_FN_8CB4B6                      ; $8CAEFC |
  JSR.W CODE_FN_8CA87E                      ; $8CAEFF |
  JSL.L CODE_FL_86C486                      ; $8CAF02 |
  LDA.W #$0100                              ; $8CAF06 |
  JSL.L CODE_FL_86C887                      ; $8CAF09 |
  LDA.W #$BED7                              ; $8CAF0D |
  STA.W $1CEA                               ; $8CAF10 |
  LDA.W #$0014                              ; $8CAF13 |
  STA.W $1C9C                               ; $8CAF16 |
  LDA.W #$000C                              ; $8CAF19 |
  STA.W $1CA6                               ; $8CAF1C |
  LDA.W #$0008                              ; $8CAF1F |
  STA.W $1CB0                               ; $8CAF22 |
  LDA.W #$0004                              ; $8CAF25 |
  STA.W $1CBA                               ; $8CAF28 |
  LDA.W #$FFD0                              ; $8CAF2B |
  STA.W $1CA0                               ; $8CAF2E |
  STA.W $1CAA                               ; $8CAF31 |
  STA.W $1CB4                               ; $8CAF34 |
  STA.W $1CBE                               ; $8CAF37 |
  LDA.W #$FFF0                              ; $8CAF3A |
  STA.W $1C96                               ; $8CAF3D |

CODE_8CAF40:
  JSR.W CODE_FN_8CB677                      ; $8CAF40 |
  BCC CODE_8CAF47                           ; $8CAF43 |
  STZ.B $26,X                               ; $8CAF45 |

CODE_8CAF47:
  LDA.W $1CE6                               ; $8CAF47 |
  PHX                                       ; $8CAF4A |
  ASL A                                     ; $8CAF4B |
  TAX                                       ; $8CAF4C |
  LDA.L PTR16_8CAF57,X                      ; $8CAF4D |
  PLX                                       ; $8CAF51 |
  STA.B $00                                 ; $8CAF52 |
  JMP.W ($0000)                             ; $8CAF54 |

PTR16_8CAF57:
  dw CODE_8CAF5D                            ; $8CAF57 |
  dw CODE_8CAFC0                            ; $8CAF59 |
  dw CODE_8CAFE5                            ; $8CAF5B |

CODE_8CAF5D:
  LDA.W #$0040                              ; $8CAF5D |
  JSR.W CODE_FN_8CB706                      ; $8CAF60 |
  BCS CODE_8CAFDF                           ; $8CAF63 |
  STZ.B $04                                 ; $8CAF65 |
  LDA.W #$0004                              ; $8CAF67 |
  STA.B $00                                 ; $8CAF6A |
  LDA.W #$FFFC                              ; $8CAF6C |
  STA.B $02                                 ; $8CAF6F |
  LDX.W #$1C98                              ; $8CAF71 |
  JSR.W CODE_FN_8CAFB4                      ; $8CAF74 |
  LDX.W #$1CA2                              ; $8CAF77 |
  JSR.W CODE_FN_8CAFB4                      ; $8CAF7A |
  LDX.W #$1CAC                              ; $8CAF7D |
  JSR.W CODE_FN_8CAFB4                      ; $8CAF80 |
  LDX.W #$1CB6                              ; $8CAF83 |
  JSR.W CODE_FN_8CAFB4                      ; $8CAF86 |
  LDA.B $04                                 ; $8CAF89 |
  BNE CODE_8CAFB3                           ; $8CAF8B |
  INC.W $1CE6                               ; $8CAF8D |
  LDA.W #$00E4                              ; $8CAF90 |
  JSL.L CODE_FL_8089BD                      ; $8CAF93 |
  STZ.B $14,X                               ; $8CAF97 |
  LDA.W #$3022                              ; $8CAF99 |
  STA.B $00,X                               ; $8CAF9C |
  LDY.W #$BD6F                              ; $8CAF9E |
  JSR.W CODE_FN_8CB4BD                      ; $8CAFA1 |
  LDA.W #$BEE9                              ; $8CAFA4 |
  STA.W $1CEA                               ; $8CAFA7 |
  STZ.B $26,X                               ; $8CAFAA |
  STZ.B $4A,X                               ; $8CAFAC |
  LDA.W #$0030                              ; $8CAFAE |
  STA.B $2C,X                               ; $8CAFB1 |

CODE_8CAFB3:
  RTS                                       ; $8CAFB3 |

CODE_FN_8CAFB4:
  BIT.B $06,X                               ; $8CAFB4 |
  BMI CODE_8CAFBD                           ; $8CAFB6 |
  DEC.B $04                                 ; $8CAFB8 |
  JSR.W CODE_FN_8CB603                      ; $8CAFBA |

CODE_8CAFBD:
  LDX.B $FC                                 ; $8CAFBD |
  RTS                                       ; $8CAFBF |

CODE_8CAFC0:
  LDA.B $2C,X                               ; $8CAFC0 |
  BEQ CODE_8CAFD7                           ; $8CAFC2 |
  LDA.W #$0002                              ; $8CAFC4 |
  STA.B $00                                 ; $8CAFC7 |
  LDA.W #$FFFE                              ; $8CAFC9 |
  STA.B $02                                 ; $8CAFCC |
  LDX.W #$1C8E                              ; $8CAFCE |
  JSR.W CODE_FN_8CB603                      ; $8CAFD1 |
  LDX.B $FC                                 ; $8CAFD4 |
  RTS                                       ; $8CAFD6 |

CODE_8CAFD7:
  LDA.W #$0040                              ; $8CAFD7 |
  STA.B $2C,X                               ; $8CAFDA |
  BRL CODE_JL_8CA899                        ; $8CAFDC |

CODE_8CAFDF:
  LDY.W #$0002                              ; $8CAFDF |
  JSR.W CODE_FN_8CA9C4                      ; $8CAFE2 |

CODE_8CAFE5:
  JSR.W CODE_FN_8CA9F9                      ; $8CAFE5 |
  RTS                                       ; $8CAFE8 |

CODE_8CAFE9:
  LDA.W #$0006                              ; $8CAFE9 |
  JSR.W CODE_FN_8CB4B6                      ; $8CAFEC |
  JSR.W CODE_FN_8CA87E                      ; $8CAFEF |
  LDA.W #$BED7                              ; $8CAFF2 |
  STA.W $1CEA                               ; $8CAFF5 |
  STZ.B $26,X                               ; $8CAFF8 |
  STZ.B $4A,X                               ; $8CAFFA |
  LDA.W #$FD00                              ; $8CAFFC |
  STA.B $28,X                               ; $8CAFFF |
  LDA.W #$0010                              ; $8CB001 |
  STA.B $4C,X                               ; $8CB004 |

CODE_8CB006:
  LDA.W $1CE6                               ; $8CB006 |
  PHX                                       ; $8CB009 |
  ASL A                                     ; $8CB00A |
  TAX                                       ; $8CB00B |
  LDA.L PTR16_8CB016,X                      ; $8CB00C |
  PLX                                       ; $8CB010 |
  STA.B $00                                 ; $8CB011 |
  JMP.W ($0000)                             ; $8CB013 |

PTR16_8CB016:
  dw CODE_8CB024                            ; $8CB016 |
  dw CODE_8CB069                            ; $8CB018 |
  dw CODE_8CB0CD                            ; $8CB01A |
  dw CODE_8CB13E                            ; $8CB01C |
  dw CODE_8CB1AB                            ; $8CB01E |
  dw CODE_8CB22B                            ; $8CB020 |
  dw CODE_8CB23D                            ; $8CB022 |

CODE_8CB024:
  LDA.W #$0040                              ; $8CB024 |
  JSR.W CODE_FN_8CB706                      ; $8CB027 |
  BCC CODE_8CB02F                           ; $8CB02A |
  JMP.W CODE_JP_8CB225                      ; $8CB02C |

CODE_8CB02F:
  LDA.W #$01AF                              ; $8CB02F |
  JSL.L CODE_FL_8CFCD0                      ; $8CB032 |
  BNE CODE_8CB068                           ; $8CB036 |
  INC.W $1CE6                               ; $8CB038 |
  LDA.W #$0080                              ; $8CB03B |
  STA.B $14,X                               ; $8CB03E |
  LDA.W #$304E                              ; $8CB040 |
  STA.B $00,X                               ; $8CB043 |
  LDY.W #$BCF7                              ; $8CB045 |
  JSR.W CODE_FN_8CB4BD                      ; $8CB048 |
  JSR.W CODE_FN_8CB6A7                      ; $8CB04B |
  LDA.W #$FFD0                              ; $8CB04E |
  STA.W $1C96                               ; $8CB051 |
  STA.W $1CA0                               ; $8CB054 |
  STA.W $1CAA                               ; $8CB057 |
  STA.W $1CB4                               ; $8CB05A |
  LDA.W #$0020                              ; $8CB05D |
  STA.B $2C,X                               ; $8CB060 |
  LDA.W #$BF31                              ; $8CB062 |
  STA.W $1CEA                               ; $8CB065 |

CODE_8CB068:
  RTS                                       ; $8CB068 |

CODE_8CB069:
  LDA.B $26,X                               ; $8CB069 |
  STA.B $FA                                 ; $8CB06B |
  LDA.B $2C,X                               ; $8CB06D |
  BNE CODE_8CB09C                           ; $8CB06F |
  JSR.W CODE_FN_8CB677                      ; $8CB071 |
  BCS CODE_8CB09D                           ; $8CB074 |
  LDA.W #$0002                              ; $8CB076 |
  STA.B $00                                 ; $8CB079 |
  LDA.W #$FFFE                              ; $8CB07B |
  STA.B $02                                 ; $8CB07E |
  JSR.W CODE_FN_8CB5EF                      ; $8CB080 |
  STZ.B $26,X                               ; $8CB083 |
  BIT.W $1C94                               ; $8CB085 |
  BMI CODE_8CB09C                           ; $8CB088 |
  LDA.B $FA                                 ; $8CB08A |
  BNE CODE_8CB095                           ; $8CB08C |
  LDA.W #$0017                              ; $8CB08E |
  JSL.L push_sound_queue                    ; $8CB091 |

CODE_8CB095:
  LDA.W #$FF00                              ; $8CB095 |
  JSL.L CODE_FL_86C887                      ; $8CB098 |

CODE_8CB09C:
  RTS                                       ; $8CB09C |

CODE_8CB09D:
  INC.W $1CE6                               ; $8CB09D |
  STZ.B $14,X                               ; $8CB0A0 |
  LDA.W #$3022                              ; $8CB0A2 |
  STA.B $00,X                               ; $8CB0A5 |
  LDY.W #$BD6F                              ; $8CB0A7 |
  JSR.W CODE_FN_8CB4BD                      ; $8CB0AA |
  STZ.B $26,X                               ; $8CB0AD |
  LDA.B $04,X                               ; $8CB0AF |
  EOR.W #$2020                              ; $8CB0B1 |
  STA.B $04,X                               ; $8CB0B4 |
  ASL A                                     ; $8CB0B6 |
  ASL A                                     ; $8CB0B7 |
  ASL A                                     ; $8CB0B8 |
  LDA.W #$FFE0                              ; $8CB0B9 |
  BCS CODE_8CB0C1                           ; $8CB0BC |
  LDA.W #$0020                              ; $8CB0BE |

CODE_8CB0C1:
  CLC                                       ; $8CB0C1 |
  ADC.B $09,X                               ; $8CB0C2 |
  STA.B $09,X                               ; $8CB0C4 |
  LDA.W #$BF43                              ; $8CB0C6 |
  STA.W $1CEA                               ; $8CB0C9 |
  RTS                                       ; $8CB0CC |

CODE_8CB0CD:
  LDA.B $28,X                               ; $8CB0CD |
  STA.B $FA                                 ; $8CB0CF |
  LDA.W #$FF00                              ; $8CB0D1 |
  STA.B $28,X                               ; $8CB0D4 |
  LDA.W #$0120                              ; $8CB0D6 |
  JSR.W CODE_FN_8CB647                      ; $8CB0D9 |
  BCS CODE_8CB103                           ; $8CB0DC |
  LDA.W #$0002                              ; $8CB0DE |
  STA.B $00                                 ; $8CB0E1 |
  LDA.W #$FFFE                              ; $8CB0E3 |
  STA.B $02                                 ; $8CB0E6 |
  JSR.W CODE_FN_8CB5EF                      ; $8CB0E8 |
  STZ.B $28,X                               ; $8CB0EB |
  BIT.W $1C94                               ; $8CB0ED |
  BMI CODE_8CB102                           ; $8CB0F0 |
  LDA.B $FA                                 ; $8CB0F2 |
  BNE CODE_8CB0FD                           ; $8CB0F4 |
  LDA.W #$0017                              ; $8CB0F6 |
  JSL.L push_sound_queue                    ; $8CB0F9 |

CODE_8CB0FD:
  LDA.W #$FF00                              ; $8CB0FD |
  STA.B $28,X                               ; $8CB100 |

CODE_8CB102:
  RTS                                       ; $8CB102 |

CODE_8CB103:
  INC.W $1CE6                               ; $8CB103 |
  LDA.W #$0080                              ; $8CB106 |
  STA.B $14,X                               ; $8CB109 |
  LDA.W #$304E                              ; $8CB10B |
  STA.B $00,X                               ; $8CB10E |
  LDY.W #$BCF7                              ; $8CB110 |
  JSR.W CODE_FN_8CB4BD                      ; $8CB113 |
  STZ.B $28,X                               ; $8CB116 |
  LDA.B $04,X                               ; $8CB118 |
  ORA.W #$4040                              ; $8CB11A |
  STA.B $04,X                               ; $8CB11D |
  ASL A                                     ; $8CB11F |
  ASL A                                     ; $8CB120 |
  ASL A                                     ; $8CB121 |
  LDA.W #$FFE0                              ; $8CB122 |
  BCC CODE_8CB12A                           ; $8CB125 |
  LDA.W #$0020                              ; $8CB127 |

CODE_8CB12A:
  CLC                                       ; $8CB12A |
  ADC.B $09,X                               ; $8CB12B |
  STA.B $09,X                               ; $8CB12D |
  LDA.W #$FFE0                              ; $8CB12F |
  CLC                                       ; $8CB132 |
  ADC.B $0D,X                               ; $8CB133 |
  STA.B $0D,X                               ; $8CB135 |
  LDA.W #$BF55                              ; $8CB137 |
  STA.W $1CEA                               ; $8CB13A |
  RTS                                       ; $8CB13D |

CODE_8CB13E:
  LDA.B $26,X                               ; $8CB13E |
  STA.B $FA                                 ; $8CB140 |
  LDA.W #$FFFF                              ; $8CB142 |
  JSL.L CODE_FL_86C887                      ; $8CB145 |
  JSR.W CODE_FN_8CB677                      ; $8CB149 |
  BCS CODE_8CB19A                           ; $8CB14C |
  LDA.W #$0002                              ; $8CB14E |
  STA.B $00                                 ; $8CB151 |
  LDA.W #$FFFE                              ; $8CB153 |
  STA.B $02                                 ; $8CB156 |
  JSR.W CODE_FN_8CB5EF                      ; $8CB158 |
  STZ.B $26,X                               ; $8CB15B |
  BIT.W $1C94                               ; $8CB15D |
  BMI CODE_8CB174                           ; $8CB160 |
  LDA.B $FA                                 ; $8CB162 |
  BNE CODE_8CB16D                           ; $8CB164 |
  LDA.W #$0017                              ; $8CB166 |
  JSL.L push_sound_queue                    ; $8CB169 |

CODE_8CB16D:
  LDA.W #$FF00                              ; $8CB16D |
  JSL.L CODE_FL_86C887                      ; $8CB170 |

CODE_8CB174:
  LDY.B $DC                                 ; $8CB174 |
  LDA.W $0009,Y                             ; $8CB176 |
  SEC                                       ; $8CB179 |
  SBC.B $09,X                               ; $8CB17A |
  BPL CODE_8CB182                           ; $8CB17C |
  EOR.W #$FFFF                              ; $8CB17E |
  INC A                                     ; $8CB181 |

CODE_8CB182:
  CMP.W #$0010                              ; $8CB182 |
  BCS CODE_8CB1AA                           ; $8CB185 |
  LDY.B $DC                                 ; $8CB187 |
  LDA.W $0009,Y                             ; $8CB189 |
  SEC                                       ; $8CB18C |
  SBC.B $09,X                               ; $8CB18D |
  BPL CODE_8CB195                           ; $8CB18F |
  EOR.W #$FFFF                              ; $8CB191 |
  INC A                                     ; $8CB194 |

CODE_8CB195:
  CMP.W #$0010                              ; $8CB195 |
  BCS CODE_8CB1AA                           ; $8CB198 |

CODE_8CB19A:
  INC.W $1CE6                               ; $8CB19A |
  STZ.B $26,X                               ; $8CB19D |
  LDA.W #$0010                              ; $8CB19F |
  STA.B $2C,X                               ; $8CB1A2 |
  LDA.W #$0002                              ; $8CB1A4 |
  STA.W $1CF0                               ; $8CB1A7 |

CODE_8CB1AA:
  RTS                                       ; $8CB1AA |

CODE_8CB1AB:
  LDA.B $2C,X                               ; $8CB1AB |
  BEQ CODE_8CB1EE                           ; $8CB1AD |
  CMP.W #$0001                              ; $8CB1AF |
  BNE CODE_8CB1ED                           ; $8CB1B2 |
  STZ.W $1C90                               ; $8CB1B4 |
  STZ.W $1C9A                               ; $8CB1B7 |
  STZ.W $1CA4                               ; $8CB1BA |
  STZ.W $1CAE                               ; $8CB1BD |
  LDA.W #$3074                              ; $8CB1C0 |
  STA.B $00,X                               ; $8CB1C3 |
  LDY.W #$BDE7                              ; $8CB1C5 |
  JSR.W CODE_FN_8CB4BD                      ; $8CB1C8 |
  JSR.W CODE_FN_8CB6A7                      ; $8CB1CB |
  LDA.B $04,X                               ; $8CB1CE |
  EOR.W #$4040                              ; $8CB1D0 |
  STA.B $04,X                               ; $8CB1D3 |
  LDA.W #$0020                              ; $8CB1D5 |
  CLC                                       ; $8CB1D8 |
  ADC.B $0D,X                               ; $8CB1D9 |
  STA.B $0D,X                               ; $8CB1DB |
  LDA.W #$0000                              ; $8CB1DD |
  STA.B $28,X                               ; $8CB1E0 |
  LDA.W #$0010                              ; $8CB1E2 |
  STA.B $4C,X                               ; $8CB1E5 |
  LDA.W #$BF67                              ; $8CB1E7 |
  STA.W $1CEA                               ; $8CB1EA |

CODE_8CB1ED:
  RTS                                       ; $8CB1ED |

CODE_8CB1EE:
  LDA.W #$0040                              ; $8CB1EE |
  JSR.W CODE_FN_8CB706                      ; $8CB1F1 |
  BCS CODE_8CB22F                           ; $8CB1F4 |
  LDY.B $44,X                               ; $8CB1F6 |
  LDA.W $0032,Y                             ; $8CB1F8 |
  ASL A                                     ; $8CB1FB |
  BMI CODE_8CB223                           ; $8CB1FC |
  JSR.W CODE_FN_8CB677                      ; $8CB1FE |
  LDA.W #$0006                              ; $8CB201 |
  LDY.W #$0000                              ; $8CB204 |
  JSL.L CODE_FL_86C68A                      ; $8CB207 |
  LDA.B $28,X                               ; $8CB20B |
  BMI CODE_8CB214                           ; $8CB20D |
  CMP.W #$0100                              ; $8CB20F |
  BCS CODE_8CB219                           ; $8CB212 |

CODE_8CB214:
  LDA.W #$0100                              ; $8CB214 |
  STA.B $28,X                               ; $8CB217 |

CODE_8CB219:
  LDA.W #$01AF                              ; $8CB219 |
  JSL.L CODE_FL_8CFCD0                      ; $8CB21C |
  BEQ CODE_8CB248                           ; $8CB220 |
  RTS                                       ; $8CB222 |

CODE_8CB223:
  BRA CODE_8CB250                           ; $8CB223 |

CODE_JP_8CB225:
  LDY.W #$0005                              ; $8CB225 |
  JSR.W CODE_FN_8CA9C4                      ; $8CB228 |

CODE_8CB22B:
  JSR.W CODE_FN_8CA9F9                      ; $8CB22B |
  RTS                                       ; $8CB22E |

CODE_8CB22F:
  DEC.W $1CF0                               ; $8CB22F |
  LDY.W #$0006                              ; $8CB232 |
  JSR.W CODE_FN_8CA9C4                      ; $8CB235 |
  LDA.W #$3074                              ; $8CB238 |
  STA.B $00,X                               ; $8CB23B |

CODE_8CB23D:
  JSR.W CODE_FN_8CA9F9                      ; $8CB23D |
  BCC CODE_8CB247                           ; $8CB240 |
  LDA.W $1CF0                               ; $8CB242 |
  BEQ CODE_8CB248                           ; $8CB245 |

CODE_8CB247:
  RTS                                       ; $8CB247 |

CODE_8CB248:
  LDA.W #$0040                              ; $8CB248 |
  STA.B $2C,X                               ; $8CB24B |
  BRL CODE_JL_8CA899                        ; $8CB24D |

CODE_8CB250:
  LDA.W #$0007                              ; $8CB250 |
  JSR.W CODE_FN_8CB4B6                      ; $8CB253 |
  JSR.W CODE_FN_8CA87E                      ; $8CB256 |
  STZ.B $26,X                               ; $8CB259 |
  STZ.B $4A,X                               ; $8CB25B |
  STZ.B $28,X                               ; $8CB25D |
  STZ.B $4C,X                               ; $8CB25F |
  LDA.B $04,X                               ; $8CB261 |
  AND.W #$BFBF                              ; $8CB263 |
  STA.B $04,X                               ; $8CB266 |
  STZ.B $14,X                               ; $8CB268 |
  LDA.W #$3094                              ; $8CB26A |
  STA.B $00,X                               ; $8CB26D |
  LDY.W #$BE5F                              ; $8CB26F |
  JSR.W CODE_FN_8CB4BD                      ; $8CB272 |
  JSR.W CODE_FN_8CB6A7                      ; $8CB275 |
  LDA.W #$FFF0                              ; $8CB278 |
  STA.W $1C96                               ; $8CB27B |
  STA.W $1CA0                               ; $8CB27E |
  STA.W $1CAA                               ; $8CB281 |
  STA.W $1CB4                               ; $8CB284 |
  STA.W $1CBE                               ; $8CB287 |
  LDA.W #$0080                              ; $8CB28A |
  STA.B $2C,X                               ; $8CB28D |
  LDA.W #$BF79                              ; $8CB28F |
  STA.W $1CEA                               ; $8CB292 |

CODE_8CB295:
  LDA.W $1CE6                               ; $8CB295 |
  PHX                                       ; $8CB298 |
  ASL A                                     ; $8CB299 |
  TAX                                       ; $8CB29A |
  LDA.L PTR16_8CB2A5,X                      ; $8CB29B |
  PLX                                       ; $8CB29F |
  STA.B $00                                 ; $8CB2A0 |
  JMP.W ($0000)                             ; $8CB2A2 |

PTR16_8CB2A5:
  dw CODE_8CB2AD                            ; $8CB2A5 |
  dw CODE_8CB2DA                            ; $8CB2A7 |
  dw CODE_8CB2FB                            ; $8CB2A9 |
  dw CODE_8CAE96                            ; $8CB2AB |

CODE_8CB2AD:
  LDA.B $2C,X                               ; $8CB2AD |
  BEQ CODE_8CB2BF                           ; $8CB2AF |
  LDA.W #$0001                              ; $8CB2B1 |
  STA.B $00                                 ; $8CB2B4 |
  LDA.W #$FFFF                              ; $8CB2B6 |
  STA.B $02                                 ; $8CB2B9 |
  JSR.W CODE_FN_8CB5FC                      ; $8CB2BB |
  RTS                                       ; $8CB2BE |

CODE_8CB2BF:
  INC.W $1CE6                               ; $8CB2BF |
  LDA.W #$0020                              ; $8CB2C2 |
  STA.W $1C90                               ; $8CB2C5 |
  STA.W $1C9A                               ; $8CB2C8 |
  STA.W $1CA4                               ; $8CB2CB |
  STA.W $1CAE                               ; $8CB2CE |
  STA.W $1CB8                               ; $8CB2D1 |
  LDA.W #$0018                              ; $8CB2D4 |
  STA.B $2C,X                               ; $8CB2D7 |
  RTS                                       ; $8CB2D9 |

CODE_8CB2DA:
  LDA.B $2C,X                               ; $8CB2DA |
  BEQ CODE_8CB2DF                           ; $8CB2DC |
  RTS                                       ; $8CB2DE |

CODE_8CB2DF:
  LDA.W #$0080                              ; $8CB2DF |
  STA.B $14,X                               ; $8CB2E2 |
  LDA.B $04,X                               ; $8CB2E4 |
  EOR.W #$2020                              ; $8CB2E6 |
  STA.B $04,X                               ; $8CB2E9 |
  JSR.W CODE_FN_8CAD09                      ; $8CB2EB |
  LDA.W #$0001                              ; $8CB2EE |
  JSR.W CODE_FN_8CAE4D                      ; $8CB2F1 |
  LDA.W #$BF0D                              ; $8CB2F4 |
  STA.W $1CEA                               ; $8CB2F7 |
  RTS                                       ; $8CB2FA |

CODE_8CB2FB:
  LDA.W #$0007                              ; $8CB2FB |
  JSR.W CODE_FN_8CB742                      ; $8CB2FE |
  JSR.W CODE_FN_8CAE63                      ; $8CB301 |
  RTS                                       ; $8CB304 |

CODE_JP_8CB305:
  SEP #$20                                  ; $8CB305 |
  DEC.B $36,X                               ; $8CB307 |
  REP #$20                                  ; $8CB309 |
  LDA.W #$0008                              ; $8CB30B |
  JSR.W CODE_FN_8CB4B6                      ; $8CB30E |
  JSR.W CODE_FN_8CA87E                      ; $8CB311 |
  LDA.W #$BF8B                              ; $8CB314 |
  STA.W $1CEA                               ; $8CB317 |
  LDY.B $44,X                               ; $8CB31A |
  LDA.W #$FFFF                              ; $8CB31C |
  STA.W $0038,Y                             ; $8CB31F |
  STA.B $38,X                               ; $8CB322 |
  LDA.W #$FFD0                              ; $8CB324 |
  STA.W $1C96                               ; $8CB327 |
  STA.W $1CA0                               ; $8CB32A |
  STA.W $1CAA                               ; $8CB32D |
  STA.W $1CB4                               ; $8CB330 |
  STA.W $1CBE                               ; $8CB333 |
  STZ.B $26,X                               ; $8CB336 |
  STZ.B $4A,X                               ; $8CB338 |
  LDA.W #$FC00                              ; $8CB33A |
  STA.B $28,X                               ; $8CB33D |
  LDA.W #$0020                              ; $8CB33F |
  STA.B $4C,X                               ; $8CB342 |
  STZ.W $1CF0                               ; $8CB344 |

CODE_8CB347:
  INC.W $1CF0                               ; $8CB347 |
  LDA.W $1CF0                               ; $8CB34A |
  CMP.W #$000A                              ; $8CB34D |
  BCC CODE_8CB364                           ; $8CB350 |
  STZ.W $1CF0                               ; $8CB352 |
  LDA.W $1CE6                               ; $8CB355 |
  CMP.W #$000D                              ; $8CB358 |
  BPL CODE_8CB364                           ; $8CB35B |
  LDA.W #$0021                              ; $8CB35D |
  JSL.L push_sound_queue                    ; $8CB360 |

CODE_8CB364:
  LDA.B $42                                 ; $8CB364 |
  AND.W #$001F                              ; $8CB366 |
  BNE CODE_8CB377                           ; $8CB369 |
  JSL.L CODE_FL_8CFBAE                      ; $8CB36B |
  JSL.L CODE_FL_86C432                      ; $8CB36F |
  JSL.L CODE_FL_8CFBB6                      ; $8CB373 |

CODE_8CB377:
  JSL.L CODE_FL_86C855                      ; $8CB377 |
  LDA.W $1CE6                               ; $8CB37B |
  CMP.W #$000D                              ; $8CB37E |
  BCS CODE_8CB386                           ; $8CB381 |
  JSR.W CODE_FN_8CA9F9                      ; $8CB383 |

CODE_8CB386:
  LDA.W #$0002                              ; $8CB386 |
  STA.B $00                                 ; $8CB389 |
  LDA.W #$FFFE                              ; $8CB38B |
  STA.B $02                                 ; $8CB38E |
  LDA.W $1CE6                               ; $8CB390 |
  PHX                                       ; $8CB393 |
  ASL A                                     ; $8CB394 |
  TAX                                       ; $8CB395 |
  LDA.L PTR16_8CB39E,X                      ; $8CB396 |
  PLX                                       ; $8CB39A |
  DEC A                                     ; $8CB39B |
  PHA                                       ; $8CB39C |
  RTS                                       ; $8CB39D |

PTR16_8CB39E:
  dw CODE_8CB3BE                            ; $8CB39E |
  dw CODE_8CB3F1                            ; $8CB3A0 |
  dw CODE_8CB441                            ; $8CB3A2 |
  dw CODE_8CB405                            ; $8CB3A4 |
  dw CODE_8CB42A                            ; $8CB3A6 |
  dw CODE_8CB441                            ; $8CB3A8 |
  dw CODE_8CB40B                            ; $8CB3AA |
  dw CODE_8CB42D                            ; $8CB3AC |
  dw CODE_8CB441                            ; $8CB3AE |
  dw CODE_8CB40E                            ; $8CB3B0 |
  dw CODE_8CB430                            ; $8CB3B2 |
  dw CODE_8CB441                            ; $8CB3B4 |
  dw CODE_8CB411                            ; $8CB3B6 |
  dw CODE_8CB44E                            ; $8CB3B8 |
  dw CODE_8CB46D                            ; $8CB3BA |
  dw CODE_8CB4AD                            ; $8CB3BC |

CODE_8CB3BE:
  LDA.W #$0080                              ; $8CB3BE |
  STA.B $00                                 ; $8CB3C1 |
  LDA.W #$01AF                              ; $8CB3C3 |
  STA.B $02                                 ; $8CB3C6 |
  JSL.L CODE_FL_8AB426                      ; $8CB3C8 |
  LDY.W #$0010                              ; $8CB3CC |
  JSL.L CODE_FL_8AB4B3                      ; $8CB3CF |
  LDA.B $00                                 ; $8CB3D3 |
  STA.B $26,X                               ; $8CB3D5 |
  LDA.W #$01AF                              ; $8CB3D7 |
  JSL.L CODE_FL_8CFCD0                      ; $8CB3DA |
  BNE CODE_8CB3F0                           ; $8CB3DE |
  INC.W $1CE6                               ; $8CB3E0 |
  LDA.W #$001B                              ; $8CB3E3 |
  JSL.L push_sound_queue                    ; $8CB3E6 |
  STZ.B $26,X                               ; $8CB3EA |
  STZ.B $28,X                               ; $8CB3EC |
  STZ.B $2C,X                               ; $8CB3EE |

CODE_8CB3F0:
  RTS                                       ; $8CB3F0 |

CODE_8CB3F1:
  LDA.W #$0001                              ; $8CB3F1 |
  STA.B $E4                                 ; $8CB3F4 |
  LDA.W #$FCC5                              ; $8CB3F6 |
  JSL.L CODE_FL_809934                      ; $8CB3F9 |
  BCC CODE_8CB404                           ; $8CB3FD |
  STZ.B $E4                                 ; $8CB3FF |
  INC.W $1CE6                               ; $8CB401 |

CODE_8CB404:
  RTS                                       ; $8CB404 |

CODE_8CB405:
  JSR.W CODE_FN_8CB5E6                      ; $8CB405 |
  JSR.W CODE_FN_8CB5DD                      ; $8CB408 |

CODE_8CB40B:
  JSR.W CODE_FN_8CB5D4                      ; $8CB40B |

CODE_8CB40E:
  JSR.W CODE_FN_8CB5CB                      ; $8CB40E |

CODE_8CB411:
  JSR.W CODE_FN_8CB5C2                      ; $8CB411 |
  BIT.W $1C94                               ; $8CB414 |
  BPL CODE_8CB423                           ; $8CB417 |
  LDA.W #$00AC                              ; $8CB419 |
  JSL.L CODE_FL_8089BD                      ; $8CB41C |
  INC.W $1CE6                               ; $8CB420 |

CODE_8CB423:
  RTS                                       ; $8CB423 |

  JSR.W CODE_FN_8CB5E6                      ; $8CB424 |
  JSR.W CODE_FN_8CB5DD                      ; $8CB427 |

CODE_8CB42A:
  JSR.W CODE_FN_8CB5D4                      ; $8CB42A |

CODE_8CB42D:
  JSR.W CODE_FN_8CB5CB                      ; $8CB42D |

CODE_8CB430:
  JSR.W CODE_FN_8CB5C2                      ; $8CB430 |
  BIT.W $1C94                               ; $8CB433 |
  BMI CODE_8CB440                           ; $8CB436 |
  INC.W $1CE6                               ; $8CB438 |
  LDA.W #$0020                              ; $8CB43B |
  STA.B $2C,X                               ; $8CB43E |

CODE_8CB440:
  RTS                                       ; $8CB440 |

CODE_8CB441:
  LDA.B $2C,X                               ; $8CB441 |
  BNE CODE_8CB44D                           ; $8CB443 |
  INC.W $1CE6                               ; $8CB445 |
  LDA.W #$0100                              ; $8CB448 |
  STA.B $2C,X                               ; $8CB44B |

CODE_8CB44D:
  RTS                                       ; $8CB44D |

CODE_8CB44E:
  INC.W $1CE6                               ; $8CB44E |
  LDY.W #$0030                              ; $8CB451 |
  JSL.L CODE_FL_808993                      ; $8CB454 |
  LDA.W #$0001                              ; $8CB458 |
  JSL.L CODE_FL_B3FE45                      ; $8CB45B |
  JSL.L CODE_FL_8CFAF3                      ; $8CB45F |
  LDY.W #$B9D9                              ; $8CB463 |
  JSL.L CODE_FL_80C26D                      ; $8CB466 |
  LDX.B $FC                                 ; $8CB46A |
  RTS                                       ; $8CB46C |

CODE_8CB46D:
  LDA.W $1F62                               ; $8CB46D |
  BNE CODE_8CB476                           ; $8CB470 |
  INC.W $1CE6                               ; $8CB472 |
  RTS                                       ; $8CB475 |

CODE_8CB476:
  DEC.W $1C90                               ; $8CB476 |
  DEC.W $1C90                               ; $8CB479 |
  DEC.W $1C9A                               ; $8CB47C |
  DEC.W $1C9A                               ; $8CB47F |
  DEC.W $1CA4                               ; $8CB482 |
  DEC.W $1CA4                               ; $8CB485 |
  DEC.W $1CAE                               ; $8CB488 |
  DEC.W $1CAE                               ; $8CB48B |
  DEC.W $1CB8                               ; $8CB48E |
  DEC.W $1CB8                               ; $8CB491 |
  LDX.W #$1CC0                              ; $8CB494 |
  CLC                                       ; $8CB497 |

CODE_8CB498:
  LDA.B $00,X                               ; $8CB498 |
  ADC.W #$003E                              ; $8CB49A |
  STA.B $02                                 ; $8CB49D |
  LDA.B ($02)                               ; $8CB49F |
  INC A                                     ; $8CB4A1 |
  INC A                                     ; $8CB4A2 |
  STA.B ($02)                               ; $8CB4A3 |
  INX                                       ; $8CB4A5 |
  INX                                       ; $8CB4A6 |
  CPX.W #$1CDE                              ; $8CB4A7 |
  BCC CODE_8CB498                           ; $8CB4AA |
  RTS                                       ; $8CB4AC |

CODE_8CB4AD:
  JSL.L CODE_FL_84F21B                      ; $8CB4AD |
  JSL.L CODE_FL_86CA36                      ; $8CB4B1 |
  RTS                                       ; $8CB4B5 |

CODE_FN_8CB4B6:
  STA.W $1CE4                               ; $8CB4B6 |
  STZ.W $1CE6                               ; $8CB4B9 |
  RTS                                       ; $8CB4BC |

CODE_FN_8CB4BD:
  STY.B $00                                 ; $8CB4BD |
  PHB                                       ; $8CB4BF |
  PHK                                       ; $8CB4C0 |
  PLB                                       ; $8CB4C1 |
  LDX.W #$1CC0                              ; $8CB4C2 |
  LDY.W #$0000                              ; $8CB4C5 |

CODE_8CB4C8:
  CLC                                       ; $8CB4C8 |
  LDA.B $00,X                               ; $8CB4C9 |
  ADC.W #$003E                              ; $8CB4CB |
  STA.B $02                                 ; $8CB4CE |
  LDA.B ($00),Y                             ; $8CB4D0 |
  STA.B ($02)                               ; $8CB4D2 |
  INY                                       ; $8CB4D4 |
  INY                                       ; $8CB4D5 |
  LDA.B $00,X                               ; $8CB4D6 |
  ADC.W #$003C                              ; $8CB4D8 |
  STA.B $02                                 ; $8CB4DB |
  LDA.B ($00),Y                             ; $8CB4DD |
  STA.B ($02)                               ; $8CB4DF |
  INY                                       ; $8CB4E1 |
  INY                                       ; $8CB4E2 |
  LDA.B $00,X                               ; $8CB4E3 |
  ADC.W #$0040                              ; $8CB4E5 |
  STA.B $02                                 ; $8CB4E8 |
  LDA.B ($00),Y                             ; $8CB4EA |
  STA.B ($02)                               ; $8CB4EC |
  INY                                       ; $8CB4EE |
  INY                                       ; $8CB4EF |
  LDA.B $00,X                               ; $8CB4F0 |
  ADC.W #$0014                              ; $8CB4F2 |
  STA.B $02                                 ; $8CB4F5 |
  LDA.B ($00),Y                             ; $8CB4F7 |
  STA.B ($02)                               ; $8CB4F9 |
  INY                                       ; $8CB4FB |
  INY                                       ; $8CB4FC |
  INX                                       ; $8CB4FD |
  INX                                       ; $8CB4FE |
  CPX.W #$1CDE                              ; $8CB4FF |
  BCC CODE_8CB4C8                           ; $8CB502 |
  PLB                                       ; $8CB504 |
  LDX.B $FC                                 ; $8CB505 |
  RTS                                       ; $8CB507 |

CODE_FN_8CB508:
  LDA.W #$003A                              ; $8CB508 |
  STA.B $00                                 ; $8CB50B |
  LDX.W #$1C8E                              ; $8CB50D |
  JSR.W CODE_FN_8CB537                      ; $8CB510 |
  LDX.W #$1C98                              ; $8CB513 |
  JSR.W CODE_FN_8CB537                      ; $8CB516 |
  LDX.W #$1CA2                              ; $8CB519 |
  JSR.W CODE_FN_8CB537                      ; $8CB51C |
  LDX.W #$1CAC                              ; $8CB51F |
  JSR.W CODE_FN_8CB537                      ; $8CB522 |
  LDX.W #$1CB6                              ; $8CB525 |
  JSR.W CODE_FN_8CB537                      ; $8CB528 |
  LDX.B $FC                                 ; $8CB52B |
  LDA.W $1CE0                               ; $8CB52D |
  CLC                                       ; $8CB530 |
  ADC.W $1CE2                               ; $8CB531 |
  STA.B $4E,X                               ; $8CB534 |
  RTS                                       ; $8CB536 |

CODE_FN_8CB537:
  LDA.B $00,X                               ; $8CB537 |
  CLC                                       ; $8CB539 |
  ADC.B $02,X                               ; $8CB53A |
  LDY.B $FC                                 ; $8CB53C |
  STA.B ($00),Y                             ; $8CB53E |
  INC.B $00                                 ; $8CB540 |
  INC.B $00                                 ; $8CB542 |
  RTS                                       ; $8CB544 |

  LDA.B $09,X                               ; $8CB545 |
  STA.B $00                                 ; $8CB547 |
  LDA.B $04,X                               ; $8CB549 |
  STA.B $08                                 ; $8CB54B |
  XBA                                       ; $8CB54D |
  AND.W #$2000                              ; $8CB54E |
  ASL A                                     ; $8CB551 |
  ASL A                                     ; $8CB552 |
  STA.B $02                                 ; $8CB553 |
  LDX.W #$0400                              ; $8CB555 |
  LDY.W #$05D0                              ; $8CB558 |
  LDA.W #$0850                              ; $8CB55B |
  JSR.W CODE_FN_8CB57A                      ; $8CB55E |
  BCS CODE_8CB575                           ; $8CB561 |
  LDX.W #$04C0                              ; $8CB563 |
  LDY.W #$08A0                              ; $8CB566 |
  LDA.W #$0B20                              ; $8CB569 |
  JSR.W CODE_FN_8CB57A                      ; $8CB56C |
  BCS CODE_8CB575                           ; $8CB56F |
  CLC                                       ; $8CB571 |
  LDX.B $FC                                 ; $8CB572 |
  RTS                                       ; $8CB574 |

CODE_8CB575:
  SEC                                       ; $8CB575 |
  TXY                                       ; $8CB576 |
  LDX.B $FC                                 ; $8CB577 |
  RTS                                       ; $8CB579 |

CODE_FN_8CB57A:
  STA.B $06                                 ; $8CB57A |
  BIT.B $34,X                               ; $8CB57C |
  BPL CODE_8CB585                           ; $8CB57E |
  LDA.B $09,X                               ; $8CB580 |
  JSR.W CODE_FN_8CB5A8                      ; $8CB582 |

CODE_8CB585:
  TYX                                       ; $8CB585 |

CODE_8CB586:
  LDA.B $18,X                               ; $8CB586 |
  BEQ CODE_8CB59A                           ; $8CB588 |
  LDA.B $04,X                               ; $8CB58A |
  EOR.B $08                                 ; $8CB58C |
  AND.W #$0020                              ; $8CB58E |
  BNE CODE_8CB59A                           ; $8CB591 |
  LDA.B $09,X                               ; $8CB593 |
  JSR.W CODE_FN_8CB5A8                      ; $8CB595 |
  BCS CODE_8CB5A6                           ; $8CB598 |

CODE_8CB59A:
  TXA                                       ; $8CB59A |
  CLC                                       ; $8CB59B |
  ADC.W #$0050                              ; $8CB59C |
  TAX                                       ; $8CB59F |
  CMP.B $06                                 ; $8CB5A0 |
  BCC CODE_8CB586                           ; $8CB5A2 |
  CLC                                       ; $8CB5A4 |
  RTS                                       ; $8CB5A5 |

CODE_8CB5A6:
  SEC                                       ; $8CB5A6 |
  RTS                                       ; $8CB5A7 |

CODE_FN_8CB5A8:
  SEC                                       ; $8CB5A8 |
  SBC.B $00                                 ; $8CB5A9 |
  STA.B $04                                 ; $8CB5AB |
  EOR.B $02                                 ; $8CB5AD |
  BPL CODE_8CB5BE                           ; $8CB5AF |
  LDA.B $04                                 ; $8CB5B1 |
  BPL CODE_8CB5B9                           ; $8CB5B3 |
  EOR.W #$FFFF                              ; $8CB5B5 |
  INC A                                     ; $8CB5B8 |

CODE_8CB5B9:
  CMP.W #$0060                              ; $8CB5B9 |
  BCC CODE_8CB5C0                           ; $8CB5BC |

CODE_8CB5BE:
  CLC                                       ; $8CB5BE |
  RTS                                       ; $8CB5BF |

CODE_8CB5C0:
  SEC                                       ; $8CB5C0 |
  RTS                                       ; $8CB5C1 |

CODE_FN_8CB5C2:
  LDX.W #$1C8E                              ; $8CB5C2 |
  JSR.W CODE_FN_8CB603                      ; $8CB5C5 |
  LDX.B $FC                                 ; $8CB5C8 |
  RTS                                       ; $8CB5CA |

CODE_FN_8CB5CB:
  LDX.W #$1C98                              ; $8CB5CB |
  JSR.W CODE_FN_8CB603                      ; $8CB5CE |
  LDX.B $FC                                 ; $8CB5D1 |
  RTS                                       ; $8CB5D3 |

CODE_FN_8CB5D4:
  LDX.W #$1CA2                              ; $8CB5D4 |
  JSR.W CODE_FN_8CB603                      ; $8CB5D7 |
  LDX.B $FC                                 ; $8CB5DA |
  RTS                                       ; $8CB5DC |

CODE_FN_8CB5DD:
  LDX.W #$1CAC                              ; $8CB5DD |
  JSR.W CODE_FN_8CB603                      ; $8CB5E0 |
  LDX.B $FC                                 ; $8CB5E3 |
  RTS                                       ; $8CB5E5 |

CODE_FN_8CB5E6:
  LDX.W #$1CB6                              ; $8CB5E6 |
  JSR.W CODE_FN_8CB603                      ; $8CB5E9 |
  LDX.B $FC                                 ; $8CB5EC |
  RTS                                       ; $8CB5EE |

CODE_FN_8CB5EF:
  JSR.W CODE_FN_8CB5C2                      ; $8CB5EF |
  JSR.W CODE_FN_8CB5CB                      ; $8CB5F2 |
  JSR.W CODE_FN_8CB5D4                      ; $8CB5F5 |
  JSR.W CODE_FN_8CB5DD                      ; $8CB5F8 |
  RTS                                       ; $8CB5FB |

CODE_FN_8CB5FC:
  JSR.W CODE_FN_8CB5EF                      ; $8CB5FC |
  JSR.W CODE_FN_8CB5E6                      ; $8CB5FF |
  RTS                                       ; $8CB602 |

CODE_FN_8CB603:
  LDA.B $04,X                               ; $8CB603 |
  BEQ CODE_8CB60B                           ; $8CB605 |
  DEC.B $04,X                               ; $8CB607 |
  BRA CODE_8CB629                           ; $8CB609 |

CODE_8CB60B:
  CLC                                       ; $8CB60B |
  LDA.B $02,X                               ; $8CB60C |
  BIT.B $06,X                               ; $8CB60E |
  BMI CODE_8CB61C                           ; $8CB610 |
  ADC.B $02                                 ; $8CB612 |
  STA.B $02,X                               ; $8CB614 |
  CMP.B $08,X                               ; $8CB616 |
  BCS CODE_8CB629                           ; $8CB618 |
  BRA CODE_8CB622                           ; $8CB61A |

CODE_8CB61C:
  ADC.B $00                                 ; $8CB61C |
  STA.B $02,X                               ; $8CB61E |
  BMI CODE_8CB629                           ; $8CB620 |

CODE_8CB622:
  LDA.B $06,X                               ; $8CB622 |
  EOR.W #$8000                              ; $8CB624 |
  STA.B $06,X                               ; $8CB627 |

CODE_8CB629:
  RTS                                       ; $8CB629 |

CODE_FN_8CB62A:
  LDX.W #$1CC0                              ; $8CB62A |
  LDY.W #$0014                              ; $8CB62D |

CODE_8CB630:
  CLC                                       ; $8CB630 |
  LDA.B $00,X                               ; $8CB631 |
  STA.B $00                                 ; $8CB633 |
  LDA.W #$0010                              ; $8CB635 |
  SEC                                       ; $8CB638 |
  SBC.B ($00),Y                             ; $8CB639 |
  STA.B ($00),Y                             ; $8CB63B |
  INX                                       ; $8CB63D |
  INX                                       ; $8CB63E |
  CPX.W #$1CDE                              ; $8CB63F |
  BCC CODE_8CB630                           ; $8CB642 |
  LDX.B $FC                                 ; $8CB644 |
  RTS                                       ; $8CB646 |

CODE_FN_8CB647:
  STA.B $00                                 ; $8CB647 |
  LDA.B $0D,X                               ; $8CB649 |
  CLC                                       ; $8CB64B |
  ADC.W $1672                               ; $8CB64C |
  CMP.B $00                                 ; $8CB64F |
  BCC CODE_8CB65A                           ; $8CB651 |
  CMP.W #$0190                              ; $8CB653 |
  BCS CODE_8CB668                           ; $8CB656 |

CODE_8CB658:
  CLC                                       ; $8CB658 |
  RTS                                       ; $8CB659 |

CODE_8CB65A:
  BIT.B $28,X                               ; $8CB65A |
  BPL CODE_8CB658                           ; $8CB65C |
  LDA.B $00                                 ; $8CB65E |
  SEC                                       ; $8CB660 |
  SBC.W $1672                               ; $8CB661 |
  STA.B $0D,X                               ; $8CB664 |
  SEC                                       ; $8CB666 |
  RTS                                       ; $8CB667 |

CODE_8CB668:
  BIT.B $28,X                               ; $8CB668 |
  BMI CODE_8CB658                           ; $8CB66A |
  LDA.W #$0190                              ; $8CB66C |
  SEC                                       ; $8CB66F |
  SBC.W $1672                               ; $8CB670 |
  STA.B $0D,X                               ; $8CB673 |
  SEC                                       ; $8CB675 |
  RTS                                       ; $8CB676 |

CODE_FN_8CB677:
  LDA.B $09,X                               ; $8CB677 |
  CLC                                       ; $8CB679 |
  ADC.W $1662                               ; $8CB67A |
  CMP.W #$0120                              ; $8CB67D |
  BCC CODE_8CB689                           ; $8CB680 |
  CMP.W #$01E0                              ; $8CB682 |
  BCS CODE_8CB698                           ; $8CB685 |

CODE_8CB687:
  CLC                                       ; $8CB687 |
  RTS                                       ; $8CB688 |

CODE_8CB689:
  BIT.B $26,X                               ; $8CB689 |
  BPL CODE_8CB687                           ; $8CB68B |
  LDA.W #$0120                              ; $8CB68D |
  SEC                                       ; $8CB690 |
  SBC.W $1662                               ; $8CB691 |
  STA.B $09,X                               ; $8CB694 |
  SEC                                       ; $8CB696 |
  RTS                                       ; $8CB697 |

CODE_8CB698:
  BIT.B $26,X                               ; $8CB698 |
  BMI CODE_8CB687                           ; $8CB69A |
  LDA.W #$01E0                              ; $8CB69C |
  SEC                                       ; $8CB69F |
  SBC.W $1662                               ; $8CB6A0 |
  STA.B $09,X                               ; $8CB6A3 |
  SEC                                       ; $8CB6A5 |
  RTS                                       ; $8CB6A6 |

CODE_FN_8CB6A7:
  STZ.W $1C90                               ; $8CB6A7 |
  STZ.W $1C9A                               ; $8CB6AA |
  STZ.W $1CA4                               ; $8CB6AD |
  STZ.W $1CAE                               ; $8CB6B0 |
  STZ.W $1CB8                               ; $8CB6B3 |
  STZ.W $1C92                               ; $8CB6B6 |
  STZ.W $1C9C                               ; $8CB6B9 |
  STZ.W $1CA6                               ; $8CB6BC |
  STZ.W $1CB0                               ; $8CB6BF |
  STZ.W $1CBA                               ; $8CB6C2 |
  STZ.W $1C94                               ; $8CB6C5 |
  STZ.W $1C9E                               ; $8CB6C8 |
  STZ.W $1CA8                               ; $8CB6CB |
  STZ.W $1CB2                               ; $8CB6CE |
  STZ.W $1CBC                               ; $8CB6D1 |
  STZ.W $1C96                               ; $8CB6D4 |
  STZ.W $1CA0                               ; $8CB6D7 |
  STZ.W $1CAA                               ; $8CB6DA |
  STZ.W $1CB4                               ; $8CB6DD |
  STZ.W $1CBE                               ; $8CB6E0 |
  RTS                                       ; $8CB6E3 |

CODE_FN_8CB6E4:
  PHY                                       ; $8CB6E4 |
  JSL.L CODE_FL_86C887                      ; $8CB6E5 |
  PLA                                       ; $8CB6E9 |
  BIT.B $26,X                               ; $8CB6EA |
  BPL CODE_8CB6F2                           ; $8CB6EC |
  EOR.W #$FFFF                              ; $8CB6EE |
  INC A                                     ; $8CB6F1 |

CODE_8CB6F2:
  STA.B $4A,X                               ; $8CB6F2 |
  RTS                                       ; $8CB6F4 |

CODE_FN_8CB6F5:
  STZ.W $1CEA                               ; $8CB6F5 |
  LDA.W #$00F4                              ; $8CB6F8 |
  JSL.L CODE_FL_86C9A4                      ; $8CB6FB |
  STY.B $44,X                               ; $8CB6FF |
  TXA                                       ; $8CB701 |
  STA.W $0044,Y                             ; $8CB702 |
  RTS                                       ; $8CB705 |

CODE_FN_8CB706:
  STA.B $00                                 ; $8CB706 |
  LDY.B $44,X                               ; $8CB708 |
  LDA.W $0032,Y                             ; $8CB70A |
  BPL CODE_8CB725                           ; $8CB70D |
  LDA.B $00                                 ; $8CB70F |
  STA.W $0038,Y                             ; $8CB711 |
  SEC                                       ; $8CB714 |
  SBC.W #$0010                              ; $8CB715 |
  STA.B $38,X                               ; $8CB718 |
  LDA.W $0032,Y                             ; $8CB71A |
  AND.W #$00FF                              ; $8CB71D |
  STA.W $0032,Y                             ; $8CB720 |
  SEC                                       ; $8CB723 |
  RTS                                       ; $8CB724 |

CODE_8CB725:
  CLC                                       ; $8CB725 |
  RTS                                       ; $8CB726 |

CODE_FN_8CB727:
  STZ.W $1CF2                               ; $8CB727 |
  LDA.W #$00FF                              ; $8CB72A |
  JSL.L CODE_FL_86C9C2                      ; $8CB72D |
  TXA                                       ; $8CB731 |
  STA.W $0044,Y                             ; $8CB732 |
  LDA.W #$8000                              ; $8CB735 |
  STA.W $0022,Y                             ; $8CB738 |
  LDA.W #$0082                              ; $8CB73B |
  STA.W $0014,Y                             ; $8CB73E |
  RTS                                       ; $8CB741 |

CODE_FN_8CB742:
  STA.W $1CF2                               ; $8CB742 |
  RTS                                       ; $8CB745 |

CODE_FN_8CB746:
  TDC                                       ; $8CB746 |
  STA.L $7EDAC6                             ; $8CB747 |
  LDA.W #$0124                              ; $8CB74B |
  JSL.L CODE_FL_86C9A4                      ; $8CB74E |
  TXA                                       ; $8CB752 |
  STA.W $0044,Y                             ; $8CB753 |
  LDA.W #$8000                              ; $8CB756 |
  STA.W $0022,Y                             ; $8CB759 |
  RTS                                       ; $8CB75C |

CODE_8CB75D:
  LDY.B $44,X                               ; $8CB75D |
  LDA.W $001A,Y                             ; $8CB75F |
  CMP.W #$0003                              ; $8CB762 |
  BNE CODE_8CB76E                           ; $8CB765 |
  LDA.B $22,X                               ; $8CB767 |
  ORA.W #$0100                              ; $8CB769 |
  STA.B $22,X                               ; $8CB76C |

CODE_8CB76E:
  LDA.B $22,X                               ; $8CB76E |
  AND.W #$FEFF                              ; $8CB770 |
  STA.B $22,X                               ; $8CB773 |
  LDA.B $3E,X                               ; $8CB775 |
  CMP.W #$0100                              ; $8CB777 |
  BCC CODE_8CB77F                           ; $8CB77A |
  JMP.W CODE_JP_8CB8B0                      ; $8CB77C |

CODE_8CB77F:
  LDY.B $44,X                               ; $8CB77F |
  LDA.W $0018,Y                             ; $8CB781 |
  BNE CODE_8CB78A                           ; $8CB784 |
  JML.L CODE_FL_86CA36                      ; $8CB786 |

CODE_8CB78A:
  LDA.W $0004,Y                             ; $8CB78A |
  STA.B $04,X                               ; $8CB78D |
  LDA.W $0046,Y                             ; $8CB78F |
  STA.B $46,X                               ; $8CB792 |
  LDA.B $1A,X                               ; $8CB794 |
  PHX                                       ; $8CB796 |
  ASL A                                     ; $8CB797 |
  TAX                                       ; $8CB798 |
  LDA.L PTR16_8CB7A3,X                      ; $8CB799 |
  PLX                                       ; $8CB79D |
  STA.B $00                                 ; $8CB79E |
  JMP.W ($0000)                             ; $8CB7A0 |

PTR16_8CB7A3:
  dw CODE_8CB7A7                            ; $8CB7A3 |
  dw CODE_8CB805                            ; $8CB7A5 |

CODE_8CB7A7:
  INC.B $1A,X                               ; $8CB7A7 |
  LDA.B $3A,X                               ; $8CB7A9 |
  AND.W #$00FF                              ; $8CB7AB |
  CMP.W #$0002                              ; $8CB7AE |
  BCS CODE_8CB7CB                           ; $8CB7B1 |
  LDA.W #$00C2                              ; $8CB7B3 |
  JSL.L CODE_FL_86C9A4                      ; $8CB7B6 |
  BCS CODE_8CB7CB                           ; $8CB7BA |
  TXA                                       ; $8CB7BC |
  STA.W $0044,Y                             ; $8CB7BD |
  LDA.B $42,X                               ; $8CB7C0 |
  STA.W $0042,Y                             ; $8CB7C2 |
  LDA.B $3A,X                               ; $8CB7C5 |
  INC A                                     ; $8CB7C7 |
  STA.W $003A,Y                             ; $8CB7C8 |

CODE_8CB7CB:
  SEP #$20                                  ; $8CB7CB |
  LDA.B $3B,X                               ; $8CB7CD |
  ASL A                                     ; $8CB7CF |
  CLC                                       ; $8CB7D0 |
  ADC.B $3B,X                               ; $8CB7D1 |
  CLC                                       ; $8CB7D3 |
  ADC.B $3A,X                               ; $8CB7D4 |
  ASL A                                     ; $8CB7D6 |
  REP #$20                                  ; $8CB7D7 |
  AND.W #$00FF                              ; $8CB7D9 |
  TAX                                       ; $8CB7DC |
  LDA.L DATA8_8CBC61,X                      ; $8CB7DD |
  TAX                                       ; $8CB7E1 |
  LDA.B $FC                                 ; $8CB7E2 |
  STA.W $0000,X                             ; $8CB7E4 |
  TAX                                       ; $8CB7E7 |
  JSR.W CODE_FN_8CB809                      ; $8CB7E8 |
  LDA.W #$1898                              ; $8CB7EB |
  STA.B $04,X                               ; $8CB7EE |
  LDA.B $3A,X                               ; $8CB7F0 |
  AND.W #$00FF                              ; $8CB7F2 |
  ASL A                                     ; $8CB7F5 |
  TAX                                       ; $8CB7F6 |
  LDA.L DATA8_8CBC5B,X                      ; $8CB7F7 |
  LDX.B $FC                                 ; $8CB7FB |
  STA.B $00,X                               ; $8CB7FD |
  LDA.W #$8019                              ; $8CB7FF |
  STA.B $22,X                               ; $8CB802 |
  RTL                                       ; $8CB804 |

CODE_8CB805:
  JSR.W CODE_FN_8CB809                      ; $8CB805 |
  RTL                                       ; $8CB808 |

CODE_FN_8CB809:
  JSR.W CODE_FN_8CB82B                      ; $8CB809 |
  JSR.W CODE_FN_8CB873                      ; $8CB80C |
  JSR.W CODE_FN_8CB881                      ; $8CB80F |
  JSR.W CODE_FN_8CB88D                      ; $8CB812 |
  RTS                                       ; $8CB815 |

  SEP #$20                                  ; $8CB816 |
  LDA.B $42                                 ; $8CB818 |
  LSR A                                     ; $8CB81A |
  ROR A                                     ; $8CB81B |
  STA.B $00                                 ; $8CB81C |
  TXA                                       ; $8CB81E |
  ASL A                                     ; $8CB81F |
  ASL A                                     ; $8CB820 |
  ASL A                                     ; $8CB821 |
  EOR.B $00                                 ; $8CB822 |
  AND.B #$80                                ; $8CB824 |
  STA.B $02,X                               ; $8CB826 |
  REP #$20                                  ; $8CB828 |
  RTS                                       ; $8CB82A |

CODE_FN_8CB82B:
  LDY.B $42,X                               ; $8CB82B |
  SEP #$20                                  ; $8CB82D |
  LDA.W $0001,Y                             ; $8CB82F |
  STA.B $00                                 ; $8CB832 |
  LDA.W $0000,Y                             ; $8CB834 |
  BIT.B $00                                 ; $8CB837 |
  BPL CODE_8CB83E                           ; $8CB839 |
  EOR.B #$FF                                ; $8CB83B |
  INC A                                     ; $8CB83D |

CODE_8CB83E:
  STA.L $004202                             ; $8CB83E |
  LDA.B $40,X                               ; $8CB842 |
  BIT.B $41,X                               ; $8CB844 |
  BPL CODE_8CB84B                           ; $8CB846 |
  EOR.B #$FF                                ; $8CB848 |
  INC A                                     ; $8CB84A |

CODE_8CB84B:
  STA.L $004203                             ; $8CB84B |
  LDA.B $41,X                               ; $8CB84F |
  EOR.B $00                                 ; $8CB851 |
  ASL A                                     ; $8CB853 |
  REP #$20                                  ; $8CB854 |
  LDA.L $004216                             ; $8CB856 |
  STZ.B $00                                 ; $8CB85A |
  BCC CODE_8CB864                           ; $8CB85C |
  DEC.B $00                                 ; $8CB85E |
  EOR.W #$FFFF                              ; $8CB860 |
  INC A                                     ; $8CB863 |

CODE_8CB864:
  LSR.B $00                                 ; $8CB864 |
  ROR A                                     ; $8CB866 |
  LSR.B $00                                 ; $8CB867 |
  ROR A                                     ; $8CB869 |
  LSR.B $00                                 ; $8CB86A |
  ROR A                                     ; $8CB86C |
  LSR.B $00                                 ; $8CB86D |
  ROR A                                     ; $8CB86F |
  STA.B $00                                 ; $8CB870 |
  RTS                                       ; $8CB872 |

CODE_FN_8CB873:
  LDY.B $44,X                               ; $8CB873 |
  LDA.B $00                                 ; $8CB875 |
  CLC                                       ; $8CB877 |
  ADC.B $3C,X                               ; $8CB878 |
  CLC                                       ; $8CB87A |
  ADC.W $004E,Y                             ; $8CB87B |
  STA.B $4E,X                               ; $8CB87E |
  RTS                                       ; $8CB880 |

CODE_FN_8CB881:
  LDA.B $4E,X                               ; $8CB881 |
  AND.W #$01FF                              ; $8CB883 |
  LDY.B $3E,X                               ; $8CB886 |
  JSL.L CODE_FL_8AB51A                      ; $8CB888 |
  RTS                                       ; $8CB88C |

CODE_FN_8CB88D:
  LDY.B $44,X                               ; $8CB88D |
  CLC                                       ; $8CB88F |
  LDA.B $01                                 ; $8CB890 |
  BIT.B $46,X                               ; $8CB892 |
  BVC CODE_8CB89A                           ; $8CB894 |
  EOR.W #$FFFF                              ; $8CB896 |
  SEC                                       ; $8CB899 |

CODE_8CB89A:
  ADC.W $0009,Y                             ; $8CB89A |
  STA.B $09,X                               ; $8CB89D |
  CLC                                       ; $8CB89F |
  LDA.B $05                                 ; $8CB8A0 |
  BIT.B $46,X                               ; $8CB8A2 |
  BPL CODE_8CB8AA                           ; $8CB8A4 |
  EOR.W #$FFFF                              ; $8CB8A6 |
  SEC                                       ; $8CB8A9 |

CODE_8CB8AA:
  ADC.W $000D,Y                             ; $8CB8AA |
  STA.B $0D,X                               ; $8CB8AD |
  RTS                                       ; $8CB8AF |

CODE_JP_8CB8B0:
  JSL.L CODE_FL_86CA36                      ; $8CB8B0 |
  RTL                                       ; $8CB8B4 |

CODE_8CB8B5:
  JSL.L CODE_FL_86C3A3                      ; $8CB8B5 |
  STZ.B $32,X                               ; $8CB8B9 |
  STZ.B $22,X                               ; $8CB8BB |
  LDA.B $34,X                               ; $8CB8BD |
  AND.W #$3FFF                              ; $8CB8BF |
  STA.B $34,X                               ; $8CB8C2 |
  LDA.W $1CEA                               ; $8CB8C4 |
  BEQ CODE_8CB945                           ; $8CB8C7 |
  LDY.B $44,X                               ; $8CB8C9 |
  LDA.W $0004,Y                             ; $8CB8CB |
  STA.B $04,X                               ; $8CB8CE |
  LDA.W $0046,Y                             ; $8CB8D0 |
  STA.B $00                                 ; $8CB8D3 |
  LDA.W $0009,Y                             ; $8CB8D5 |
  STA.B $08                                 ; $8CB8D8 |
  LDA.W $000D,Y                             ; $8CB8DA |
  STA.B $0A                                 ; $8CB8DD |
  PHB                                       ; $8CB8DF |
  PHK                                       ; $8CB8E0 |
  PLB                                       ; $8CB8E1 |
  LDY.W $1CEA                               ; $8CB8E2 |
  LDA.W #$0019                              ; $8CB8E5 |
  STA.B $22,X                               ; $8CB8E8 |
  LDA.W #$A000                              ; $8CB8EA |
  STA.B $34,X                               ; $8CB8ED |
  LDA.W $0000,Y                             ; $8CB8EF |
  STA.B $3A,X                               ; $8CB8F2 |
  BMI CODE_8CB8FD                           ; $8CB8F4 |
  LDA.B $22,X                               ; $8CB8F6 |
  AND.W #$FFF7                              ; $8CB8F8 |
  STA.B $22,X                               ; $8CB8FB |

CODE_8CB8FD:
  LDA.W $0002,Y                             ; $8CB8FD |
  CLC                                       ; $8CB900 |
  BIT.B $00                                 ; $8CB901 |
  BVC CODE_8CB909                           ; $8CB903 |
  EOR.W #$FFFF                              ; $8CB905 |
  SEC                                       ; $8CB908 |

CODE_8CB909:
  ADC.B $08                                 ; $8CB909 |
  STA.B $09,X                               ; $8CB90B |
  LDA.W $0004,Y                             ; $8CB90D |
  CLC                                       ; $8CB910 |
  ADC.B $0A                                 ; $8CB911 |
  STA.B $0D,X                               ; $8CB913 |
  LDA.W $0006,Y                             ; $8CB915 |
  STA.B $2E,X                               ; $8CB918 |
  LDA.W $0008,Y                             ; $8CB91A |
  STA.B $30,X                               ; $8CB91D |
  BIT.B $3A,X                               ; $8CB91F |
  BVC CODE_8CB944                           ; $8CB921 |
  LDA.B $34,X                               ; $8CB923 |
  ORA.W #$4000                              ; $8CB925 |
  STA.B $34,X                               ; $8CB928 |
  LDA.W $000A,Y                             ; $8CB92A |
  STA.B $0A                                 ; $8CB92D |
  LDA.W $000C,Y                             ; $8CB92F |
  STA.B $0C                                 ; $8CB932 |
  LDA.W $000E,Y                             ; $8CB934 |
  STA.B $0E                                 ; $8CB937 |
  LDA.W $0010,Y                             ; $8CB939 |
  STA.B $10                                 ; $8CB93C |
  PLB                                       ; $8CB93E |
  JSL.L CODE_FL_85F8A1                      ; $8CB93F |
  RTL                                       ; $8CB943 |

CODE_8CB944:
  PLB                                       ; $8CB944 |

CODE_8CB945:
  RTL                                       ; $8CB945 |

CODE_8CB946:
  JSL.L CODE_FL_86C3A3                      ; $8CB946 |
  JSR.W CODE_FN_8CB94E                      ; $8CB94A |
  RTL                                       ; $8CB94D |

CODE_FN_8CB94E:
  LDA.B $1A,X                               ; $8CB94E |
  PHX                                       ; $8CB950 |
  ASL A                                     ; $8CB951 |
  TAX                                       ; $8CB952 |
  LDA.L PTR16_8CB95D,X                      ; $8CB953 |
  PLX                                       ; $8CB957 |
  STA.B $00                                 ; $8CB958 |
  JMP.W ($0000)                             ; $8CB95A |

PTR16_8CB95D:
  dw CODE_8CB96F                            ; $8CB95D |
  dw CODE_8CB97C                            ; $8CB95F |
  dw CODE_8CB9D9                            ; $8CB961 |
  dw CODE_8CB9E8                            ; $8CB963 |
  dw CODE_8CB9F7                            ; $8CB965 |
  dw CODE_8CBA06                            ; $8CB967 |
  dw CODE_8CBA15                            ; $8CB969 |
  dw CODE_8CBA25                            ; $8CB96B |
  dw CODE_8CBA35                            ; $8CB96D |

CODE_8CB96F:
  LDA.W $1CF2                               ; $8CB96F |
  BEQ CODE_8CB97B                           ; $8CB972 |
  STA.B $1A,X                               ; $8CB974 |
  LDA.W #$0020                              ; $8CB976 |
  STA.B $2C,X                               ; $8CB979 |

CODE_8CB97B:
  RTS                                       ; $8CB97B |

CODE_8CB97C:
  LDA.W #$0000                              ; $8CB97C |
  STA.B $00                                 ; $8CB97F |
  LDA.W #$0000                              ; $8CB981 |
  STA.B $02                                 ; $8CB984 |
  LDA.W #$0000                              ; $8CB986 |
  BRA CODE_JL_8CB98B                        ; $8CB989 |

CODE_JL_8CB98B:
  LDY.W #$BF9D                              ; $8CB98B |
  STY.B $04                                 ; $8CB98E |
  LDY.W $1CE4                               ; $8CB990 |
  STY.B $08                                 ; $8CB993 |
  BRA CODE_8CB9AF                           ; $8CB995 |

CODE_8CB997:
  LDY.W #$BF9D                              ; $8CB997 |
  STY.B $04                                 ; $8CB99A |
  LDY.W $1CE6                               ; $8CB99C |
  STY.B $08                                 ; $8CB99F |
  BRA CODE_8CB9AF                           ; $8CB9A1 |

CODE_JL_8CB9A3:
  LDY.W #$BFA5                              ; $8CB9A3 |
  STY.B $04                                 ; $8CB9A6 |
  LDY.W $1CE6                               ; $8CB9A8 |
  STY.B $08                                 ; $8CB9AB |
  BRA CODE_8CB9AF                           ; $8CB9AD |

CODE_8CB9AF:
  PHK                                       ; $8CB9AF |
  PHK                                       ; $8CB9B0 |
  PLY                                       ; $8CB9B1 |
  STY.B $06                                 ; $8CB9B2 |
  CMP.B $08                                 ; $8CB9B4 |
  BNE CODE_8CB9BC                           ; $8CB9B6 |
  LDA.B $2C,X                               ; $8CB9B8 |
  BNE CODE_8CB9C4                           ; $8CB9BA |

CODE_8CB9BC:
  DEC.B $1A,X                               ; $8CB9BC |
  STZ.W $1CF2                               ; $8CB9BE |
  STZ.B $00,X                               ; $8CB9C1 |
  RTS                                       ; $8CB9C3 |

CODE_8CB9C4:
  LDY.B $44,X                               ; $8CB9C4 |
  LDA.W $0004,Y                             ; $8CB9C6 |
  STA.B $04,X                               ; $8CB9C9 |
  LDA.B $42                                 ; $8CB9CB |
  AND.W #$0006                              ; $8CB9CD |
  TAY                                       ; $8CB9D0 |
  LDA.B [$04],Y                             ; $8CB9D1 |
  STA.B $00,X                               ; $8CB9D3 |
  JSR.W CODE_FN_8CBA45                      ; $8CB9D5 |
  RTS                                       ; $8CB9D8 |

CODE_8CB9D9:
  LDA.W #$0000                              ; $8CB9D9 |
  STA.B $00                                 ; $8CB9DC |
  LDA.W #$0000                              ; $8CB9DE |
  STA.B $02                                 ; $8CB9E1 |
  LDA.W #$0001                              ; $8CB9E3 |
  BRA CODE_JL_8CB98B                        ; $8CB9E6 |

CODE_8CB9E8:
  LDA.W #$FFF8                              ; $8CB9E8 |
  STA.B $00                                 ; $8CB9EB |
  LDA.W #$0000                              ; $8CB9ED |
  STA.B $02                                 ; $8CB9F0 |
  LDA.W #$0002                              ; $8CB9F2 |
  BRA CODE_JL_8CB98B                        ; $8CB9F5 |

CODE_8CB9F7:
  LDA.W #$0000                              ; $8CB9F7 |
  STA.B $00                                 ; $8CB9FA |
  LDA.W #$0000                              ; $8CB9FC |
  STA.B $02                                 ; $8CB9FF |
  LDA.W #$0000                              ; $8CBA01 |
  BRA CODE_8CB997                           ; $8CBA04 |

CODE_8CBA06:
  LDA.W #$0000                              ; $8CBA06 |
  STA.B $00                                 ; $8CBA09 |
  LDA.W #$0000                              ; $8CBA0B |
  STA.B $02                                 ; $8CBA0E |
  LDA.W #$0003                              ; $8CBA10 |
  BRA CODE_JL_8CB9A3                        ; $8CBA13 |

CODE_8CBA15:
  LDA.W #$0000                              ; $8CBA15 |
  STA.B $00                                 ; $8CBA18 |
  LDA.W #$0000                              ; $8CBA1A |
  STA.B $02                                 ; $8CBA1D |
  LDA.W #$0007                              ; $8CBA1F |
  BRL CODE_JL_8CB9A3                        ; $8CBA22 |

CODE_8CBA25:
  LDA.W #$0000                              ; $8CBA25 |
  STA.B $00                                 ; $8CBA28 |
  LDA.W #$0000                              ; $8CBA2A |
  STA.B $02                                 ; $8CBA2D |
  LDA.W #$0002                              ; $8CBA2F |
  BRL CODE_JL_8CB9A3                        ; $8CBA32 |

CODE_8CBA35:
  LDA.W #$0000                              ; $8CBA35 |
  STA.B $00                                 ; $8CBA38 |
  LDA.W #$0000                              ; $8CBA3A |
  STA.B $02                                 ; $8CBA3D |
  LDA.W #$0001                              ; $8CBA3F |
  BRL CODE_JL_8CB98B                        ; $8CBA42 |

CODE_FN_8CBA45:
  LDY.B $44,X                               ; $8CBA45 |
  LDA.W $0046,Y                             ; $8CBA47 |
  STA.B $04                                 ; $8CBA4A |
  LDA.B $00                                 ; $8CBA4C |
  CLC                                       ; $8CBA4E |
  BIT.B $04                                 ; $8CBA4F |
  BVC CODE_8CBA57                           ; $8CBA51 |
  EOR.W #$FFFF                              ; $8CBA53 |
  SEC                                       ; $8CBA56 |

CODE_8CBA57:
  ADC.W $0009,Y                             ; $8CBA57 |
  STA.B $09,X                               ; $8CBA5A |
  LDA.B $02                                 ; $8CBA5C |
  CLC                                       ; $8CBA5E |
  ADC.W $000D,Y                             ; $8CBA5F |
  STA.B $0D,X                               ; $8CBA62 |
  RTS                                       ; $8CBA64 |

CODE_8CBA65:
  JSL.L CODE_FL_86C3A3                      ; $8CBA65 |
  JSR.W CODE_FN_8CBA6D                      ; $8CBA69 |
  RTL                                       ; $8CBA6C |

CODE_FN_8CBA6D:
  LDA.L $7EDAC6                             ; $8CBA6D |
  PHX                                       ; $8CBA71 |
  ASL A                                     ; $8CBA72 |
  TAX                                       ; $8CBA73 |
  LDA.L PTR16_8CBA7E,X                      ; $8CBA74 |
  PLX                                       ; $8CBA78 |
  STA.B $00                                 ; $8CBA79 |
  JMP.W ($0000)                             ; $8CBA7B |

PTR16_8CBA7E:
  dw CODE_8CBA86                            ; $8CBA7E |
  dw CODE_8CBAA0                            ; $8CBA80 |
  dw CODE_8CBABE                            ; $8CBA82 |
  dw CODE_8CBACE                            ; $8CBA84 |

CODE_8CBA86:
  JSR.W CODE_FN_8CBBFB                      ; $8CBA86 |
  LDA.W #$00B0                              ; $8CBA89 |
  STA.B $0D,X                               ; $8CBA8C |
  TDC                                       ; $8CBA8E |
  STA.L $7EDAC8                             ; $8CBA8F |
  STA.L $7EDAC0                             ; $8CBA93 |
  STA.L $7EDAC2                             ; $8CBA97 |
  STA.L $7EDAC4                             ; $8CBA9B |
  RTS                                       ; $8CBA9F |

CODE_8CBAA0:
  LDA.B $2C,X                               ; $8CBAA0 |
  BNE CODE_8CBABD                           ; $8CBAA2 |
  JSR.W CODE_FN_8CBBCC                      ; $8CBAA4 |
  LDA.W #$0003                              ; $8CBAA7 |
  STA.B $2C,X                               ; $8CBAAA |
  LDA.L $7EDAC8                             ; $8CBAAC |
  INC A                                     ; $8CBAB0 |
  STA.L $7EDAC8                             ; $8CBAB1 |
  CMP.W #$0006                              ; $8CBAB5 |
  BCC CODE_8CBABD                           ; $8CBAB8 |
  JSR.W CODE_FN_8CBBFB                      ; $8CBABA |

CODE_8CBABD:
  RTS                                       ; $8CBABD |

CODE_8CBABE:
  LDA.B $2C,X                               ; $8CBABE |
  BNE CODE_8CBACD                           ; $8CBAC0 |
  JSR.W CODE_FN_8CBC05                      ; $8CBAC2 |
  JSR.W CODE_FN_8CBBCC                      ; $8CBAC5 |
  LDA.W #$0010                              ; $8CBAC8 |
  STA.B $2C,X                               ; $8CBACB |

CODE_8CBACD:
  RTS                                       ; $8CBACD |

CODE_8CBACE:
  LDA.B $1A,X                               ; $8CBACE |
  PHX                                       ; $8CBAD0 |
  ASL A                                     ; $8CBAD1 |
  TAX                                       ; $8CBAD2 |
  LDA.L PTR16_8CBADD,X                      ; $8CBAD3 |
  PLX                                       ; $8CBAD7 |
  STA.B $00                                 ; $8CBAD8 |
  JMP.W ($0000)                             ; $8CBADA |

PTR16_8CBADD:
  dw CODE_8CBAE1                            ; $8CBADD |
  dw CODE_8CBB11                            ; $8CBADF |

CODE_8CBAE1:
  INC.B $1A,X                               ; $8CBAE1 |
  LDA.W #$0034                              ; $8CBAE3 |
  JSL.L push_sound_queue                    ; $8CBAE6 |
  TDC                                       ; $8CBAEA |
  STA.L $7EDACA                             ; $8CBAEB |
  LDA.W #$00FF                              ; $8CBAEF |
  STA.L $7EDACC                             ; $8CBAF2 |
  LDA.W #$0030                              ; $8CBAF6 |
  STA.W $1FB8                               ; $8CBAF9 |
  LDA.W #$0002                              ; $8CBAFC |
  STA.W $1FDE                               ; $8CBAFF |
  LDA.W #$0020                              ; $8CBB02 |
  STA.W $1FDC                               ; $8CBB05 |
  LDA.W #$0050                              ; $8CBB08 |
  STA.W $1FE4                               ; $8CBB0B |
  JSR.W CODE_FN_8CBC05                      ; $8CBB0E |

CODE_8CBB11:
  LDA.B $2C,X                               ; $8CBB11 |
  BEQ CODE_8CBB18                           ; $8CBB13 |
  JMP.W CODE_JP_8CBB9D                      ; $8CBB15 |

CODE_8CBB18:
  LDA.L $7EDAC8                             ; $8CBB18 |
  INC A                                     ; $8CBB1C |
  ASL A                                     ; $8CBB1D |
  ASL A                                     ; $8CBB1E |
  ASL A                                     ; $8CBB1F |
  ASL A                                     ; $8CBB20 |
  ASL A                                     ; $8CBB21 |
  ADC.W #$0010                              ; $8CBB22 |
  STA.B $00                                 ; $8CBB25 |
  STA.B $09,X                               ; $8CBB27 |
  LDA.L $7EDACA                             ; $8CBB29 |
  TAX                                       ; $8CBB2D |
  INC A                                     ; $8CBB2E |
  INC A                                     ; $8CBB2F |
  INC A                                     ; $8CBB30 |
  INC A                                     ; $8CBB31 |
  STA.L $7EDACA                             ; $8CBB32 |
  CPX.W #$0004                              ; $8CBB36 |
  BNE CODE_8CBB42                           ; $8CBB39 |
  LDA.W #$001C                              ; $8CBB3B |
  JSL.L CODE_FL_8089BD                      ; $8CBB3E |

CODE_8CBB42:
  SEP #$20                                  ; $8CBB42 |
  LDA.L DATA8_8CBC15,X                      ; $8CBB44 |
  BEQ CODE_8CBBB3                           ; $8CBB48 |
  STZ.B $03                                 ; $8CBB4A |
  STA.B $02                                 ; $8CBB4C |
  LDA.B $00                                 ; $8CBB4E |
  SEC                                       ; $8CBB50 |
  SBC.L DATA8_8CBC16,X                      ; $8CBB51 |
  STA.L $7EDACC                             ; $8CBB55 |
  LDA.L DATA8_8CBC16,X                      ; $8CBB59 |
  CLC                                       ; $8CBB5D |
  ADC.B $00                                 ; $8CBB5E |
  STA.L $7EDACD                             ; $8CBB60 |
  REP #$20                                  ; $8CBB64 |
  LDA.L DATA8_8CBC17,X                      ; $8CBB66 |
  STA.B $04                                 ; $8CBB6A |
  JSL.L CODE_FL_808D48                      ; $8CBB6C |
  LDX.B $FC                                 ; $8CBB70 |
  LDA.B $02                                 ; $8CBB72 |
  STA.B $2C,X                               ; $8CBB74 |
  LDA.B $04                                 ; $8CBB76 |
  CMP.W #$03E0                              ; $8CBB78 |
  BNE CODE_JP_8CBB9D                        ; $8CBB7B |
  JSL.L CODE_FL_85A986                      ; $8CBB7D |
  LDA.W #$4000                              ; $8CBB81 |
  STA.B $34,X                               ; $8CBB84 |
  STZ.B $0A                                 ; $8CBB86 |
  STZ.B $0C                                 ; $8CBB88 |
  LDA.W #$0010                              ; $8CBB8A |
  STA.B $0E                                 ; $8CBB8D |
  LDA.W #$0020                              ; $8CBB8F |
  STA.B $10                                 ; $8CBB92 |
  JSL.L CODE_FL_85F8A1                      ; $8CBB94 |
  LDA.W #$0008                              ; $8CBB98 |
  STA.B $38,X                               ; $8CBB9B |

CODE_JP_8CBB9D:
  LDA.B $38,X                               ; $8CBB9D |
  BNE CODE_8CBBA3                           ; $8CBB9F |
  STZ.B $34,X                               ; $8CBBA1 |

CODE_8CBBA3:
  LDA.B $42                                 ; $8CBBA3 |
  LSR A                                     ; $8CBBA5 |
  LDA.W #$00FF                              ; $8CBBA6 |
  BCC CODE_8CBBAF                           ; $8CBBA9 |
  LDA.L $7EDACC                             ; $8CBBAB |

CODE_8CBBAF:
  STA.W $1FF8                               ; $8CBBAF |
  RTS                                       ; $8CBBB2 |

CODE_8CBBB3:
  REP #$20                                  ; $8CBBB3 |
  LDA.W #$00FF                              ; $8CBBB5 |
  STA.W $1FF8                               ; $8CBBB8 |
  LDX.B $FC                                 ; $8CBBBB |
  LDA.W #$0002                              ; $8CBBBD |
  STA.L $7EDAC6                             ; $8CBBC0 |
  TDC                                       ; $8CBBC4 |
  STA.L $7EDACA                             ; $8CBBC5 |
  STZ.B $1A,X                               ; $8CBBC9 |
  RTS                                       ; $8CBBCB |

CODE_FN_8CBBCC:
  LDA.L $7EDAC8                             ; $8CBBCC |
  STZ.B $0A                                 ; $8CBBD0 |
  SEP #$20                                  ; $8CBBD2 |
  TAX                                       ; $8CBBD4 |
  INC A                                     ; $8CBBD5 |
  ASL A                                     ; $8CBBD6 |
  ASL A                                     ; $8CBBD7 |
  ASL A                                     ; $8CBBD8 |
  ASL A                                     ; $8CBBD9 |
  ASL A                                     ; $8CBBDA |
  STZ.B $09                                 ; $8CBBDB |
  STA.B $08                                 ; $8CBBDD |
  LDA.L $7EDAC0,X                           ; $8CBBDF |
  EOR.B #$80                                ; $8CBBE3 |
  STA.L $7EDAC0,X                           ; $8CBBE5 |
  LDX.B $FC                                 ; $8CBBE9 |
  ASL A                                     ; $8CBBEB |
  REP #$20                                  ; $8CBBEC |
  LDA.W #$009C                              ; $8CBBEE |
  BCC CODE_8CBBF6                           ; $8CBBF1 |
  LDA.W #$009E                              ; $8CBBF3 |

CODE_8CBBF6:
  JSL.L CODE_FL_858256                      ; $8CBBF6 |
  RTS                                       ; $8CBBFA |

CODE_FN_8CBBFB:
  LDA.L $7EDAC6                             ; $8CBBFB |
  INC A                                     ; $8CBBFF |
  STA.L $7EDAC6                             ; $8CBC00 |
  RTS                                       ; $8CBC04 |

CODE_FN_8CBC05:
  LDA.B $86                                 ; $8CBC05 |
  AND.W #$0007                              ; $8CBC07 |
  CMP.W #$0006                              ; $8CBC0A |
  BCC CODE_8CBC10                           ; $8CBC0D |
  LSR A                                     ; $8CBC0F |

CODE_8CBC10:
  STA.L $7EDAC8                             ; $8CBC10 |
  RTS                                       ; $8CBC14 |

DATA8_8CBC15:
  db $18                                    ; $8CBC15 |

DATA8_8CBC16:
  db $00                                    ; $8CBC16 |

DATA8_8CBC17:
  db $80,$03,$04,$02,$80,$01,$03,$04        ; $8CBC17 |
  db $A0,$01,$02,$06,$00,$02,$02,$0C        ; $8CBC1F |
  db $C0,$02,$02,$10,$E0,$03,$02,$0C        ; $8CBC27 |
  db $00,$03,$02,$06,$C0,$02,$02,$04        ; $8CBC2F |
  db $00,$02,$02,$02,$C0,$01,$04,$01        ; $8CBC37 |
  db $60,$01,$00                            ; $8CBC3F |

DATA8_8CBC42:
  db $40                                    ; $8CBC42 |

DATA8_8CBC43:
  db $40                                    ; $8CBC43 |

DATA8_8CBC44:
  db $A0,$00,$80,$40,$A6,$00,$40,$60        ; $8CBC44 |
  db $A2,$00,$80,$60,$A8,$00,$40,$80        ; $8CBC4C |
  db $A4,$00,$80,$80,$AA,$00,$00            ; $8CBC54 |

DATA8_8CBC5B:
  db $CE,$30,$CC,$30,$20,$30                ; $8CBC5B |

DATA8_8CBC61:
  db $C0,$1C,$C2,$1C,$C4,$1C,$C6,$1C        ; $8CBC61 |
  db $C8,$1C,$CA,$1C,$CC,$1C,$CE,$1C        ; $8CBC69 |
  db $D0,$1C,$D2,$1C,$D4,$1C,$D6,$1C        ; $8CBC71 |
  db $D8,$1C,$DA,$1C,$DC,$1C,$30,$00        ; $8CBC79 |
  db $40,$00,$00,$00,$06,$00,$10,$00        ; $8CBC81 |
  db $18,$00,$20,$00,$05,$00,$10,$00        ; $8CBC89 |
  db $00,$00,$30,$00,$04,$00,$30,$00        ; $8CBC91 |
  db $26,$00,$00,$00,$09,$00,$12,$00        ; $8CBC99 |
  db $00,$00,$18,$00,$08,$00,$12,$00        ; $8CBCA1 |
  db $00,$00,$30,$00,$07,$00,$30,$00        ; $8CBCA9 |
  db $0C,$00,$00,$00,$0C,$00,$0E,$00        ; $8CBCB1 |
  db $08,$00,$20,$00,$0B,$00,$0E,$00        ; $8CBCB9 |
  db $08,$00,$20,$00,$0A,$00,$30,$00        ; $8CBCC1 |
  db $F8,$FF,$00,$00,$0F,$00,$0C,$00        ; $8CBCC9 |
  db $20,$00,$40,$00,$0E,$00,$0C,$00        ; $8CBCD1 |
  db $20,$00,$20,$00,$0D,$00,$1C,$00        ; $8CBCD9 |
  db $80,$FE,$00,$00,$03,$00,$0A,$00        ; $8CBCE1 |
  db $80,$00,$E0,$FF,$02,$00,$0A,$00        ; $8CBCE9 |
  db $18,$00,$E0,$FF,$01,$00,$20,$00        ; $8CBCF1 |
  db $E0,$FF,$00,$00,$03,$00,$10,$00        ; $8CBCF9 |
  db $18,$00,$30,$00,$05,$00,$10,$00        ; $8CBD01 |
  db $00,$00,$30,$00,$04,$00,$28,$00        ; $8CBD09 |
  db $D8,$FF,$00,$00,$09,$00,$12,$00        ; $8CBD11 |
  db $00,$00,$28,$00,$08,$00,$12,$00        ; $8CBD19 |
  db $00,$00,$30,$00,$07,$00,$2C,$00        ; $8CBD21 |
  db $CC,$FF,$00,$00,$0C,$00,$0E,$00        ; $8CBD29 |
  db $08,$00,$30,$00,$0B,$00,$0E,$00        ; $8CBD31 |
  db $08,$00,$20,$00,$0A,$00,$28,$00        ; $8CBD39 |
  db $C0,$FF,$00,$00,$0F,$00,$0C,$00        ; $8CBD41 |
  db $20,$00,$40,$00,$0E,$00,$0C,$00        ; $8CBD49 |
  db $20,$00,$20,$00,$0D,$00,$00,$00        ; $8CBD51 |
  db $D0,$FE,$00,$00,$06,$00,$0A,$00        ; $8CBD59 |
  db $80,$00,$F0,$FF,$02,$00,$0A,$00        ; $8CBD61 |
  db $18,$00,$E0,$FF,$01,$00,$30,$00        ; $8CBD69 |
  db $28,$00,$00,$00,$04,$00,$10,$00        ; $8CBD71 |
  db $E8,$FF,$D8,$FF,$05,$00,$10,$00        ; $8CBD79 |
  db $E0,$FF,$D0,$FF,$06,$00,$30,$00        ; $8CBD81 |
  db $10,$00,$00,$00,$07,$00,$12,$00        ; $8CBD89 |
  db $F0,$FF,$E8,$FF,$08,$00,$12,$00        ; $8CBD91 |
  db $E0,$FF,$D0,$FF,$09,$00,$30,$00        ; $8CBD99 |
  db $F8,$FF,$00,$00,$0A,$00,$0E,$00        ; $8CBDA1 |
  db $E0,$FF,$E0,$FF,$0B,$00,$0E,$00        ; $8CBDA9 |
  db $E0,$FF,$D0,$FF,$0C,$00,$28,$00        ; $8CBDB1 |
  db $E8,$FF,$00,$00,$0D,$00,$0C,$00        ; $8CBDB9 |
  db $E0,$FF,$E0,$FF,$0E,$00,$0C,$00        ; $8CBDC1 |
  db $E0,$FF,$D0,$FF,$0F,$00,$1C,$00        ; $8CBDC9 |
  db $80,$FE,$00,$00,$01,$00,$0A,$00        ; $8CBDD1 |
  db $00,$00,$20,$00,$02,$00,$0A,$00        ; $8CBDD9 |
  db $00,$00,$20,$00,$03,$00,$20,$00        ; $8CBDE1 |
  db $40,$00,$00,$00,$05,$00,$04,$00        ; $8CBDE9 |
  db $20,$00,$30,$00,$04,$00,$08,$00        ; $8CBDF1 |
  db $20,$00,$30,$00,$03,$00,$20,$00        ; $8CBDF9 |
  db $20,$00,$00,$00,$09,$00,$04,$00        ; $8CBE01 |
  db $20,$00,$28,$00,$08,$00,$08,$00        ; $8CBE09 |
  db $20,$00,$30,$00,$07,$00,$20,$00        ; $8CBE11 |
  db $00,$00,$00,$00,$0C,$00,$04,$00        ; $8CBE19 |
  db $20,$00,$30,$00,$0B,$00,$08,$00        ; $8CBE21 |
  db $20,$00,$20,$00,$0A,$00,$24,$00        ; $8CBE29 |
  db $E8,$FF,$00,$00,$0F,$00,$04,$00        ; $8CBE31 |
  db $20,$00,$40,$00,$0E,$00,$08,$00        ; $8CBE39 |
  db $20,$00,$20,$00,$0D,$00,$18,$00        ; $8CBE41 |
  db $80,$00,$00,$00,$06,$00,$0A,$00        ; $8CBE49 |
  db $00,$00,$F0,$FF,$02,$00,$0A,$00        ; $8CBE51 |
  db $18,$00,$E0,$FF,$01,$00                ; $8CBE59 |
  db $24,$00,$60,$00,$00,$00,$01,$00        ; $8CBE5F |
  db $10,$00,$60,$00,$30,$00,$02,$00        ; $8CBE67 |
  db $0E,$00,$80,$FF,$30,$00,$83,$00        ; $8CBE6F |
  db $1C,$00,$6C,$00,$00,$00,$04,$00        ; $8CBE77 |
  db $12,$00,$50,$00,$28,$00,$05,$00        ; $8CBE7F |
  db $0E,$00,$80,$FF,$30,$00,$86,$00        ; $8CBE87 |
  db $18,$00,$88,$00,$00,$00,$07,$00        ; $8CBE8F |
  db $12,$00,$40,$00,$30,$00,$08,$00        ; $8CBE97 |
  db $0E,$00,$B0,$FF,$20,$00,$89,$00        ; $8CBE9F |
  db $18,$00,$98,$00,$00,$00,$0A,$00        ; $8CBEA7 |
  db $0E,$00,$40,$00,$40,$00,$0B,$00        ; $8CBEAF |
  db $0E,$00,$B0,$FF,$20,$00,$8C,$00        ; $8CBEB7 |
  db $30,$00,$30,$00,$00,$00,$0D,$00        ; $8CBEBF |
  db $0A,$00,$50,$00,$F0,$FF,$0E,$00        ; $8CBEC7 |
  db $0A,$00,$18,$00,$E0,$FF,$8F,$00        ; $8CBECF |
  db $00,$40,$00,$00,$00,$00,$14,$00        ; $8CBED7 |
  db $30,$00,$00,$00,$00,$00,$10,$00        ; $8CBEDF |
  db $30,$00,$00,$C0,$00,$00,$00,$00        ; $8CBEE7 |
  db $14,$00,$30,$00,$00,$00,$00,$00        ; $8CBEEF |
  db $10,$00,$30,$00,$00,$C0,$F8,$FF        ; $8CBEF7 |
  db $40,$00,$14,$00,$40,$00,$00,$00        ; $8CBEFF |
  db $00,$00,$10,$00,$30,$00,$00,$C0        ; $8CBF07 |
  db $F0,$FF,$08,$00,$18,$00,$20,$00        ; $8CBF0F |
  db $E0,$FF,$00,$00,$08,$00,$20,$00        ; $8CBF17 |
  db $00,$C0,$F0,$FF,$08,$00,$18,$00        ; $8CBF1F |
  db $20,$00,$10,$00,$00,$00,$10,$00        ; $8CBF27 |
  db $20,$00,$00,$C0,$F0,$FF,$08,$00        ; $8CBF2F |
  db $18,$00,$20,$00,$00,$00,$00,$00        ; $8CBF37 |
  db $18,$00,$20,$00,$00,$C0,$00,$00        ; $8CBF3F |
  db $00,$00,$14,$00,$40,$00,$00,$00        ; $8CBF47 |
  db $00,$00,$10,$00,$20,$00,$00,$C0        ; $8CBF4F |
  db $F0,$FF,$18,$00,$18,$00,$20,$00        ; $8CBF57 |
  db $00,$00,$00,$00,$18,$00,$20,$00        ; $8CBF5F |
  db $00,$40,$00,$00,$00,$00,$14,$00        ; $8CBF67 |
  db $30,$00,$00,$00,$00,$00,$10,$00        ; $8CBF6F |
  db $30,$00                                ; $8CBF77 |
  db $00,$C0,$00,$00,$00,$00,$14,$00        ; $8CBF79 |
  db $30,$00,$00,$00,$00,$00,$10,$00        ; $8CBF81 |
  db $30,$00                                ; $8CBF89 |
  db $00,$00,$00,$00,$00,$00,$00,$00        ; $8CBF8B |
  db $00,$00                                ; $8CBF93 |
  db $00,$00,$00,$00,$00,$00,$00,$00        ; $8CBF95 |
  db $46,$30,$00,$00,$4A,$30,$00,$00        ; $8CBF9D |
  db $D0,$30,$00,$00,$D4,$30,$00,$00        ; $8CBFA5 |

CODE_8CBFAD:
  JSR.W CODE_FN_8CBFB1                      ; $8CBFAD |
  RTL                                       ; $8CBFB0 |

CODE_FN_8CBFB1:
  LDA.B $1A,X                               ; $8CBFB1 |
  PHX                                       ; $8CBFB3 |
  ASL A                                     ; $8CBFB4 |
  TAX                                       ; $8CBFB5 |
  LDA.L PTR16_8CBFC0,X                      ; $8CBFB6 |
  PLX                                       ; $8CBFBA |
  STA.B $00                                 ; $8CBFBB |
  JMP.W ($0000)                             ; $8CBFBD |

PTR16_8CBFC0:
  dw CODE_8CBFC4                            ; $8CBFC0 |
  dw CODE_8CC017                            ; $8CBFC2 |

CODE_8CBFC4:
  INC.B $1A,X                               ; $8CBFC4 |
  LDX.W #DATA_888D91                        ; $8CBFC6 |
  JSL.L sound_transfer_blocks               ; $8CBFC9 |
  LDX.W #DATA_888D89                        ; $8CBFCD |
  JSL.L sound_transfer_blocks               ; $8CBFD0 |
  JSL.L CODE_FL_848624                      ; $8CBFD4 |
  PHB                                       ; $8CBFD8 |
  PEA.W $7E00                               ; $8CBFD9 |
  PLB                                       ; $8CBFDC |
  PLB                                       ; $8CBFDD |
  LDA.W #$0007                              ; $8CBFDE |
  STA.W LOOSE_OP_00EF46                     ; $8CBFE1 |
  STZ.W $1FEE                               ; $8CBFE4 |
  JSR.W CODE_FN_8CC02E                      ; $8CBFE7 |
  JSR.W CODE_FN_8CC074                      ; $8CBFEA |
  JSR.W CODE_FN_8CC0AE                      ; $8CBFED |
  JSR.W CODE_FN_8CC074                      ; $8CBFF0 |
  JSR.W CODE_FN_8CC08E                      ; $8CBFF3 |
  JSR.W CODE_FN_8CC0AE                      ; $8CBFF6 |
  JSR.W CODE_FN_8CC0C0                      ; $8CBFF9 |
  JSR.W CODE_FN_8CC0E9                      ; $8CBFFC |
  JSR.W CODE_FN_8CC110                      ; $8CBFFF |
  PLB                                       ; $8CC002 |
  JSL.L CODE_FL_848655                      ; $8CC003 |
  JSL.L CODE_FL_848655                      ; $8CC007 |
  LDX.B $FC                                 ; $8CC00B |
  JSR.W CODE_FN_8CC0B8                      ; $8CC00D |
  LDA.W #$8000                              ; $8CC010 |
  STA.W $1D74                               ; $8CC013 |
  RTS                                       ; $8CC016 |

CODE_8CC017:
  PHB                                       ; $8CC017 |
  PEA.W $7E00                               ; $8CC018 |
  PLB                                       ; $8CC01B |
  PLB                                       ; $8CC01C |
  JSR.W CODE_FN_8CC0E9                      ; $8CC01D |
  JSR.W CODE_FN_8CC08E                      ; $8CC020 |
  JSR.W CODE_FN_8CC0AE                      ; $8CC023 |
  PLB                                       ; $8CC026 |
  JSL.L CODE_FL_848655                      ; $8CC027 |
  LDX.B $FC                                 ; $8CC02B |
  RTS                                       ; $8CC02D |

CODE_FN_8CC02E:
  LDY.W #$926E                              ; $8CC02E |
  JSL.L CODE_FL_82D49F                      ; $8CC031 |
  LDY.W #$EEC6                              ; $8CC035 |
  SEP #$20                                  ; $8CC038 |
  LDA.B #$60                                ; $8CC03A |
  STA.W $0000,Y                             ; $8CC03C |
  STA.W $0020,Y                             ; $8CC03F |
  LDA.B #$01                                ; $8CC042 |
  STA.W $0002,Y                             ; $8CC044 |
  STA.W $0022,Y                             ; $8CC047 |
  LDA.B #$00                                ; $8CC04A |
  STA.W $0004,Y                             ; $8CC04C |
  STA.W $0024,Y                             ; $8CC04F |
  REP #$20                                  ; $8CC052 |
  LDY.W #$EF06                              ; $8CC054 |
  SEP #$20                                  ; $8CC057 |
  LDA.B #$60                                ; $8CC059 |
  STA.W $0000,Y                             ; $8CC05B |
  STA.W $0020,Y                             ; $8CC05E |
  LDA.B #$01                                ; $8CC061 |
  STA.W $0003,Y                             ; $8CC063 |
  STA.W $0023,Y                             ; $8CC066 |
  LDA.B #$00                                ; $8CC069 |
  STA.W $0006,Y                             ; $8CC06B |
  STA.W $0026,Y                             ; $8CC06E |
  REP #$20                                  ; $8CC071 |
  RTS                                       ; $8CC073 |

CODE_FN_8CC074:
  LDA.W #$EEC6                              ; $8CC074 |
  LDY.W #$EEE6                              ; $8CC077 |
  JSR.W CODE_FN_8CC0A4                      ; $8CC07A |
  SEP #$20                                  ; $8CC07D |
  LDA.W LOOSE_OP_00EF46                     ; $8CC07F |
  STA.W $0001,Y                             ; $8CC082 |
  LDA.W $1FA4                               ; $8CC085 |
  STA.W $0003,Y                             ; $8CC088 |
  REP #$20                                  ; $8CC08B |
  RTS                                       ; $8CC08D |

CODE_FN_8CC08E:
  LDA.W #$EF06                              ; $8CC08E |
  LDY.W #$EF26                              ; $8CC091 |
  JSR.W CODE_FN_8CC0A4                      ; $8CC094 |
  LDA.W $1FEE                               ; $8CC097 |
  STA.W $0001,Y                             ; $8CC09A |
  LDA.W $1662                               ; $8CC09D |
  STA.W $0004,Y                             ; $8CC0A0 |
  RTS                                       ; $8CC0A3 |

CODE_FN_8CC0A4:
  PHA                                       ; $8CC0A4 |
  LDA.W LOOSE_OP_00EEC4                     ; $8CC0A5 |
  LSR A                                     ; $8CC0A8 |
  PLA                                       ; $8CC0A9 |
  BCC CODE_8CC0AD                           ; $8CC0AA |
  TAY                                       ; $8CC0AC |

CODE_8CC0AD:
  RTS                                       ; $8CC0AD |

CODE_FN_8CC0AE:
  LDA.W LOOSE_OP_00EEC4                     ; $8CC0AE |
  EOR.W #$0001                              ; $8CC0B1 |
  STA.W LOOSE_OP_00EEC4                     ; $8CC0B4 |
  RTS                                       ; $8CC0B7 |

CODE_FN_8CC0B8:
  LDY.W #$0080                              ; $8CC0B8 |
  JSL.L CODE_FL_80972B                      ; $8CC0BB |
  RTS                                       ; $8CC0BF |

CODE_FN_8CC0C0:
  TDC                                       ; $8CC0C0 |
  STA.W $1FEE                               ; $8CC0C1 |
  LDA.W #$0200                              ; $8CC0C4 |
  STA.W $1FF0                               ; $8CC0C7 |
  LDA.W #$FFC0                              ; $8CC0CA |
  STA.W $1FDA                               ; $8CC0CD |
  LDA.W #$0000                              ; $8CC0D0 |
  STA.W $1FD4                               ; $8CC0D3 |
  LDA.W #$0000                              ; $8CC0D6 |
  STA.W $1D64                               ; $8CC0D9 |
  LDA.W #$0080                              ; $8CC0DC |
  STA.W $1D68                               ; $8CC0DF |
  LDA.W #$0000                              ; $8CC0E2 |
  STA.W $1FC6                               ; $8CC0E5 |
  RTS                                       ; $8CC0E8 |

CODE_FN_8CC0E9:
  INC.W $1FF0                               ; $8CC0E9 |
  LDA.W $1FF0                               ; $8CC0EC |
  AND.W #$00FF                              ; $8CC0EF |
  ORA.W #$0200                              ; $8CC0F2 |
  STA.W $1FF0                               ; $8CC0F5 |
  LDA.W $1662                               ; $8CC0F8 |
  STA.W $1FEE                               ; $8CC0FB |
  CLC                                       ; $8CC0FE |
  ADC.W #$0080                              ; $8CC0FF |
  STA.W $1FD0                               ; $8CC102 |
  LDA.W $1FF0                               ; $8CC105 |
  CLC                                       ; $8CC108 |
  ADC.W #$0080                              ; $8CC109 |
  STA.W $1FD2                               ; $8CC10C |
  RTS                                       ; $8CC10F |

CODE_FN_8CC110:
  LDY.W #$0000                              ; $8CC110 |
  LDA.W #$6003                              ; $8CC113 |
  SEP #$20                                  ; $8CC116 |

CODE_8CC118:
  LDX.W #$0006                              ; $8CC118 |

CODE_8CC11B:
  STA.W LOOSE_OP_00EF48,Y                   ; $8CC11B |
  STA.W LOOSE_OP_00F348,Y                   ; $8CC11E |
  INY                                       ; $8CC121 |
  XBA                                       ; $8CC122 |
  STA.W LOOSE_OP_00EF48,Y                   ; $8CC123 |
  STA.W LOOSE_OP_00F348,Y                   ; $8CC126 |
  INY                                       ; $8CC129 |
  XBA                                       ; $8CC12A |
  DEX                                       ; $8CC12B |
  BNE CODE_8CC11B                           ; $8CC12C |
  XBA                                       ; $8CC12E |
  INC A                                     ; $8CC12F |
  CMP.B #$70                                ; $8CC130 |
  XBA                                       ; $8CC132 |
  BCC CODE_8CC118                           ; $8CC133 |
  XBA                                       ; $8CC135 |
  LDA.B #$70                                ; $8CC136 |
  XBA                                       ; $8CC138 |

CODE_8CC139:
  LDX.W #$0002                              ; $8CC139 |

CODE_8CC13C:
  STA.W LOOSE_OP_00EF48,Y                   ; $8CC13C |
  STA.W LOOSE_OP_00F348,Y                   ; $8CC13F |
  INY                                       ; $8CC142 |
  XBA                                       ; $8CC143 |
  STA.W LOOSE_OP_00EF48,Y                   ; $8CC144 |
  STA.W LOOSE_OP_00F348,Y                   ; $8CC147 |
  INY                                       ; $8CC14A |
  XBA                                       ; $8CC14B |
  DEX                                       ; $8CC14C |
  BNE CODE_8CC13C                           ; $8CC14D |
  XBA                                       ; $8CC14F |
  DEC A                                     ; $8CC150 |
  CMP.B #$60                                ; $8CC151 |
  XBA                                       ; $8CC153 |
  BCS CODE_8CC139                           ; $8CC154 |
  REP #$20                                  ; $8CC156 |
  TDC                                       ; $8CC158 |

CODE_8CC159:
  CPY.W #$01C0                              ; $8CC159 |
  BCS CODE_8CC168                           ; $8CC15C |
  STA.W LOOSE_OP_00EF48,Y                   ; $8CC15E |
  STA.W LOOSE_OP_00F348,Y                   ; $8CC161 |
  INY                                       ; $8CC164 |
  INY                                       ; $8CC165 |
  BRA CODE_8CC159                           ; $8CC166 |

CODE_8CC168:
  RTS                                       ; $8CC168 |

CODE_8CC169:
  JSL.L CODE_FL_85F7C9                      ; $8CC169 |
  JSL.L CODE_FL_8CFD8F                      ; $8CC16D |
  PHX                                       ; $8CC171 |
  ASL A                                     ; $8CC172 |
  TAX                                       ; $8CC173 |
  LDA.L PTR16_8CC17E,X                      ; $8CC174 |
  PLX                                       ; $8CC178 |
  STA.B $00                                 ; $8CC179 |
  JMP.W ($0000)                             ; $8CC17B |

PTR16_8CC17E:
  dw CODE_8CC188                            ; $8CC17E |
  dw CODE_8CC1D4                            ; $8CC180 |
  dw CODE_8CC201                            ; $8CC182 |
  dw CODE_8CC225                            ; $8CC184 |
  dw CODE_8CC243                            ; $8CC186 |

CODE_8CC188:
  JSL.L CODE_FL_86C7A5                      ; $8CC188 |
  JSL.L CODE_FL_86C444                      ; $8CC18C |
  JSL.L CODE_FL_8CFF15                      ; $8CC190 |
  JSL.L CODE_FL_85A9B7                      ; $8CC194 |
  JSL.L CODE_FL_85A9EF                      ; $8CC198 |
  JSL.L CODE_FL_85AA07                      ; $8CC19C |
  INC.W $1C66                               ; $8CC1A0 |
  LDA.B $4E,X                               ; $8CC1A3 |
  BNE CODE_8CC1AC                           ; $8CC1A5 |
  LDA.W #$0003                              ; $8CC1A7 |
  BRA CODE_8CC1B7                           ; $8CC1AA |

CODE_8CC1AC:
  LSR A                                     ; $8CC1AC |
  BCS CODE_8CC1B4                           ; $8CC1AD |
  LDA.W #$0001                              ; $8CC1AF |
  BRA CODE_8CC1B7                           ; $8CC1B2 |

CODE_8CC1B4:
  LDA.W #$0002                              ; $8CC1B4 |

CODE_8CC1B7:
  STA.B $1A                                 ; $8CC1B7 |
  LDA.W #$101F                              ; $8CC1B9 |
  JSL.L CODE_FL_8CFE36                      ; $8CC1BC |
  LDA.W #$0100                              ; $8CC1C0 |
  JSL.L CODE_FL_85B33C                      ; $8CC1C3 |
  JSL.L CODE_FL_86C4F1                      ; $8CC1C7 |
  LDA.W #$0020                              ; $8CC1CB |
  STA.B $2C,X                               ; $8CC1CE |
  JML.L CODE_FL_86C63A                      ; $8CC1D0 |

CODE_8CC1D4:
  JSL.L CODE_FL_86C70D                      ; $8CC1D4 |

CODE_8CC1D8:
  JSL.L CODE_FL_86C444                      ; $8CC1D8 |
  LDA.W #$0002                              ; $8CC1DC |
  JSL.L CODE_FL_85B3A9                      ; $8CC1DF |
  JSL.L CODE_FL_8CFE4B                      ; $8CC1E3 |
  LDA.B $1A                                 ; $8CC1E7 |
  STA.B $3A,X                               ; $8CC1E9 |
  JSL.L CODE_FL_85B3C0                      ; $8CC1EB |
  LDA.W #$101F                              ; $8CC1EF |
  JSL.L CODE_FL_8CFE36                      ; $8CC1F2 |
  LDA.W #$0020                              ; $8CC1F6 |
  STA.B $2C,X                               ; $8CC1F9 |
  LDA.W #$0002                              ; $8CC1FB |
  STA.B $1A,X                               ; $8CC1FE |
  RTL                                       ; $8CC200 |

CODE_8CC201:
  JSL.L CODE_FL_86CB11                      ; $8CC201 |
  BCC CODE_8CC21E                           ; $8CC205 |
  JSL.L CODE_FL_85B291                      ; $8CC207 |
  LDA.B $3A,X                               ; $8CC20B |
  JSL.L CODE_FL_85B3DA                      ; $8CC20D |
  LDA.W #$101F                              ; $8CC211 |
  JSL.L CODE_FL_8CFEAB                      ; $8CC214 |
  JSL.L CODE_FL_86C70D                      ; $8CC218 |
  BRA CODE_8CC1D8                           ; $8CC21C |

CODE_8CC21E:
  DEC.W $1C66                               ; $8CC21E |
  JML.L CODE_FL_86CA36                      ; $8CC221 |

CODE_8CC225:
  JSL.L CODE_FL_85A9BF                      ; $8CC225 |
  JSL.L CODE_FL_85A9F7                      ; $8CC229 |
  LDA.W #$317A                              ; $8CC22D |
  STA.B $00,X                               ; $8CC230 |
  STZ.B $1E,X                               ; $8CC232 |
  LDA.W #$8000                              ; $8CC234 |
  JSL.L CODE_FL_85AA0F                      ; $8CC237 |
  JSL.L CODE_FL_85A5A7                      ; $8CC23B |
  JML.L CODE_JL_8CFEC2                      ; $8CC23F |

CODE_8CC243:
  JSL.L CODE_FL_8CFEF6                      ; $8CC243 |
  BPL CODE_8CC254                           ; $8CC247 |
  DEC.W $1C66                               ; $8CC249 |
  JSL.L CODE_FL_85A939                      ; $8CC24C |
  JML.L CODE_FL_86CA2D                      ; $8CC250 |

CODE_8CC254:
  RTL                                       ; $8CC254 |

CODE_8CC255:
  JSL.L CODE_FL_85F7C9                      ; $8CC255 |
  JSL.L CODE_FL_8CFD8F                      ; $8CC259 |
  PHX                                       ; $8CC25D |
  ASL A                                     ; $8CC25E |
  TAX                                       ; $8CC25F |
  LDA.L PTR16_8CC26A,X                      ; $8CC260 |
  PLX                                       ; $8CC264 |
  STA.B $00                                 ; $8CC265 |
  JMP.W ($0000)                             ; $8CC267 |

PTR16_8CC26A:
  dw CODE_8CC276                            ; $8CC26A |
  dw CODE_8CC2B2                            ; $8CC26C |
  dw CODE_8CC2E2                            ; $8CC26E |
  dw CODE_8CC2FB                            ; $8CC270 |
  dw CODE_8CC53B                            ; $8CC272 |
  dw CODE_8CC559                            ; $8CC274 |

CODE_8CC276:
  LDA.W #$00D6                              ; $8CC276 |
  JSL.L CODE_FL_86C9A4                      ; $8CC279 |
  BCS CODE_8CC2B1                           ; $8CC27D |
  JSL.L CODE_FL_85AAB6                      ; $8CC27F |
  LDA.W #$0003                              ; $8CC283 |
  STA.W $0040,Y                             ; $8CC286 |
  JSL.L CODE_FL_86C7A5                      ; $8CC289 |
  STZ.B $02,X                               ; $8CC28D |
  JSL.L CODE_FL_86C444                      ; $8CC28F |
  JSL.L CODE_FL_8CFF15                      ; $8CC293 |
  JSL.L CODE_FL_85A9B7                      ; $8CC297 |
  JSL.L CODE_FL_85A9EF                      ; $8CC29B |
  LDA.W #$1024                              ; $8CC29F |
  JSL.L CODE_FL_86CAEE                      ; $8CC2A2 |
  LDA.W #$FF80                              ; $8CC2A6 |
  JSL.L CODE_FL_86C887                      ; $8CC2A9 |
  JML.L CODE_FL_86C63A                      ; $8CC2AD |

CODE_8CC2B1:
  RTL                                       ; $8CC2B1 |

CODE_8CC2B2:
  JSL.L CODE_FL_86C444                      ; $8CC2B2 |
  JSL.L CODE_FL_8CFE4B                      ; $8CC2B6 |
  LDA.B $1C                                 ; $8CC2BA |
  CMP.W #$0018                              ; $8CC2BC |
  BCS CODE_8CC2D3                           ; $8CC2BF |
  LDA.W #$1025                              ; $8CC2C1 |
  JSL.L CODE_FL_8CFE36                      ; $8CC2C4 |
  JSL.L CODE_FL_8CC32D                      ; $8CC2C8 |
  JSL.L CODE_FL_86C899                      ; $8CC2CC |
  INC.B $1A,X                               ; $8CC2D0 |
  RTL                                       ; $8CC2D2 |

CODE_8CC2D3:
  LDA.W #$FF80                              ; $8CC2D3 |
  JSL.L CODE_FL_8CFDCC                      ; $8CC2D6 |
  LDA.W #$1022                              ; $8CC2DA |
  JSL.L CODE_FL_8CFE36                      ; $8CC2DD |
  RTL                                       ; $8CC2E1 |

CODE_8CC2E2:
  LDA.B $1C,X                               ; $8CC2E2 |
  CMP.W #$0009                              ; $8CC2E4 |
  BNE CODE_8CC2FA                           ; $8CC2E7 |
  JSL.L CODE_FL_8CFE4B                      ; $8CC2E9 |
  LDA.W #$1028                              ; $8CC2ED |
  JSL.L CODE_FL_8CFE36                      ; $8CC2F0 |
  JSL.L CODE_FL_8CC32D                      ; $8CC2F4 |
  INC.B $1A,X                               ; $8CC2F8 |

CODE_8CC2FA:
  RTL                                       ; $8CC2FA |

CODE_8CC2FB:
  JSL.L CODE_FL_8CFE4B                      ; $8CC2FB |
  LDY.B $44,X                               ; $8CC2FF |
  LDA.B $1A                                 ; $8CC301 |
  STA.W $003A,Y                             ; $8CC303 |
  LDA.B $1C                                 ; $8CC306 |
  CMP.W #$0028                              ; $8CC308 |
  BCC CODE_8CC321                           ; $8CC30B |
  LDA.W #$FF80                              ; $8CC30D |
  JSL.L CODE_FL_86C887                      ; $8CC310 |
  LDA.W #$1024                              ; $8CC314 |
  JSL.L CODE_FL_86CAEE                      ; $8CC317 |
  LDA.W #$0001                              ; $8CC31B |
  STA.B $1A,X                               ; $8CC31E |
  RTL                                       ; $8CC320 |

CODE_8CC321:
  LDA.W #$1028                              ; $8CC321 |
  JSL.L CODE_FL_8CFEAB                      ; $8CC324 |
  JSL.L CODE_FL_8CC32D                      ; $8CC328 |
  RTL                                       ; $8CC32C |

CODE_FL_8CC32D:
  LDA.B $04,X                               ; $8CC32D |
  AND.W #$DFDF                              ; $8CC32F |
  STA.B $04,X                               ; $8CC332 |
  LDA.B $1A                                 ; $8CC334 |
  BEQ CODE_8CC344                           ; $8CC336 |
  CMP.W #$0002                              ; $8CC338 |
  BNE CODE_8CC344                           ; $8CC33B |
  LDA.B $04,X                               ; $8CC33D |
  ORA.W #$2020                              ; $8CC33F |
  STA.B $04,X                               ; $8CC342 |

CODE_8CC344:
  RTL                                       ; $8CC344 |

CODE_8CC345:
  JSL.L CODE_FL_85F7C9                      ; $8CC345 |
  JSL.L CODE_FL_8CFD8F                      ; $8CC349 |
  PHX                                       ; $8CC34D |
  ASL A                                     ; $8CC34E |
  TAX                                       ; $8CC34F |
  LDA.L PTR16_8CC35A,X                      ; $8CC350 |
  PLX                                       ; $8CC354 |
  STA.B $00                                 ; $8CC355 |
  JMP.W ($0000)                             ; $8CC357 |

PTR16_8CC35A:
  dw CODE_8CC366                            ; $8CC35A |
  dw CODE_8CC38E                            ; $8CC35C |
  dw CODE_8CC3BE                            ; $8CC35E |
  dw CODE_8CC3D7                            ; $8CC360 |
  dw CODE_8CC53B                            ; $8CC362 |
  dw CODE_8CC559                            ; $8CC364 |

CODE_8CC366:
  JSL.L CODE_FL_86C7A5                      ; $8CC366 |
  STZ.B $02,X                               ; $8CC36A |
  JSL.L CODE_FL_86C444                      ; $8CC36C |
  JSL.L CODE_FL_8CFF15                      ; $8CC370 |
  JSL.L CODE_FL_85A9B7                      ; $8CC374 |
  JSL.L CODE_FL_85A9EF                      ; $8CC378 |
  LDA.W #$102D                              ; $8CC37C |
  JSL.L CODE_FL_86CAEE                      ; $8CC37F |
  LDA.W #$FF80                              ; $8CC383 |
  JSL.L CODE_FL_86C887                      ; $8CC386 |
  JML.L CODE_FL_86C63A                      ; $8CC38A |

CODE_8CC38E:
  JSL.L CODE_FL_86C444                      ; $8CC38E |
  JSL.L CODE_FL_8CFE4B                      ; $8CC392 |
  LDA.B $1C                                 ; $8CC396 |
  CMP.W #$0050                              ; $8CC398 |
  BCS CODE_8CC3AF                           ; $8CC39B |
  LDA.W #$102E                              ; $8CC39D |
  JSL.L CODE_FL_8CFE36                      ; $8CC3A0 |
  JSL.L CODE_FL_8CC32D                      ; $8CC3A4 |
  JSL.L CODE_FL_86C899                      ; $8CC3A8 |
  INC.B $1A,X                               ; $8CC3AC |
  RTL                                       ; $8CC3AE |

CODE_8CC3AF:
  LDA.W #$FF80                              ; $8CC3AF |
  JSL.L CODE_FL_8CFDCC                      ; $8CC3B2 |
  LDA.W #$102B                              ; $8CC3B6 |
  JSL.L CODE_FL_8CFE36                      ; $8CC3B9 |
  RTL                                       ; $8CC3BD |

CODE_8CC3BE:
  LDA.B $1C,X                               ; $8CC3BE |
  CMP.W #$0009                              ; $8CC3C0 |
  BNE CODE_8CC3D6                           ; $8CC3C3 |
  JSL.L CODE_FL_8CFE4B                      ; $8CC3C5 |
  LDA.W #$1031                              ; $8CC3C9 |
  JSL.L CODE_FL_8CFE36                      ; $8CC3CC |
  JSL.L CODE_FL_8CC32D                      ; $8CC3D0 |
  INC.B $1A,X                               ; $8CC3D4 |

CODE_8CC3D6:
  RTL                                       ; $8CC3D6 |

CODE_8CC3D7:
  JSL.L CODE_FL_8CFE4B                      ; $8CC3D7 |
  LDA.B $1C                                 ; $8CC3DB |
  CMP.W #$0060                              ; $8CC3DD |
  BCC CODE_8CC3F6                           ; $8CC3E0 |
  LDA.W #$FF80                              ; $8CC3E2 |
  JSL.L CODE_FL_86C887                      ; $8CC3E5 |
  LDA.W #$102D                              ; $8CC3E9 |
  JSL.L CODE_FL_86CAEE                      ; $8CC3EC |
  LDA.W #$0001                              ; $8CC3F0 |
  STA.B $1A,X                               ; $8CC3F3 |
  RTL                                       ; $8CC3F5 |

CODE_8CC3F6:
  LDA.W #$1031                              ; $8CC3F6 |
  JSL.L CODE_FL_8CFEAB                      ; $8CC3F9 |
  JSL.L CODE_FL_8CC32D                      ; $8CC3FD |
  LDA.B $1C,X                               ; $8CC401 |
  CMP.W #$0006                              ; $8CC403 |
  BNE CODE_8CC42C                           ; $8CC406 |
  LDA.B $20,X                               ; $8CC408 |
  CMP.W #$0001                              ; $8CC40A |
  BNE CODE_8CC42C                           ; $8CC40D |
  LDA.W #$00D8                              ; $8CC40F |
  JSL.L CODE_FL_86C9A7                      ; $8CC412 |
  BCS CODE_8CC42C                           ; $8CC416 |
  JSL.L CODE_FL_86C7C4                      ; $8CC418 |
  JSL.L CODE_FL_86C7D4                      ; $8CC41C |
  LDA.B $1A                                 ; $8CC420 |
  STA.W $003A,Y                             ; $8CC422 |
  LDA.W #$001C                              ; $8CC425 |
  JSL.L CODE_FL_8089BD                      ; $8CC428 |

CODE_8CC42C:
  RTL                                       ; $8CC42C |

CODE_8CC42D:
  JSL.L CODE_FL_85F7C9                      ; $8CC42D |
  JSL.L CODE_FL_8CFD8F                      ; $8CC431 |
  PHX                                       ; $8CC435 |
  ASL A                                     ; $8CC436 |
  TAX                                       ; $8CC437 |
  LDA.L PTR16_8CC442,X                      ; $8CC438 |
  PLX                                       ; $8CC43C |
  STA.B $00                                 ; $8CC43D |
  JMP.W ($0000)                             ; $8CC43F |

PTR16_8CC442:
  dw CODE_8CC44C                            ; $8CC442 |
  dw CODE_8CC47F                            ; $8CC444 |
  dw CODE_8CC4BB                            ; $8CC446 |
  dw CODE_8CC53B                            ; $8CC448 |
  dw CODE_8CC559                            ; $8CC44A |

CODE_8CC44C:
  JSL.L CODE_FL_86C7A5                      ; $8CC44C |
  STZ.B $02,X                               ; $8CC450 |
  JSL.L CODE_FL_86C444                      ; $8CC452 |
  JSL.L CODE_FL_8CFF15                      ; $8CC456 |
  JSL.L CODE_FL_85A9B7                      ; $8CC45A |
  JSL.L CODE_FL_85A9EF                      ; $8CC45E |
  LDA.W #$1036                              ; $8CC462 |
  JSL.L CODE_FL_86CAEE                      ; $8CC465 |
  LDA.W #$FF80                              ; $8CC469 |
  STA.B $26,X                               ; $8CC46C |
  JSL.L CODE_FL_86C4F1                      ; $8CC46E |
  LDA.W #$0001                              ; $8CC472 |
  STA.B $3A,X                               ; $8CC475 |
  JSL.L CODE_FL_8CC50D                      ; $8CC477 |
  JML.L CODE_FL_86C63A                      ; $8CC47B |

CODE_8CC47F:
  LDA.B $2C,X                               ; $8CC47F |
  BNE CODE_8CC4A8                           ; $8CC481 |
  JSL.L CODE_FL_86C444                      ; $8CC483 |
  JSL.L CODE_FL_8CFE4B                      ; $8CC487 |
  LDA.B $1A                                 ; $8CC48B |
  STA.B $3A,X                               ; $8CC48D |
  LDA.B $1C                                 ; $8CC48F |
  CMP.W #$0050                              ; $8CC491 |
  BCS CODE_8CC4A8                           ; $8CC494 |
  LDA.W #$1037                              ; $8CC496 |
  JSL.L CODE_FL_8CFE36                      ; $8CC499 |
  JSL.L CODE_FL_8CC32D                      ; $8CC49D |
  JSL.L CODE_FL_86C899                      ; $8CC4A1 |
  INC.B $1A,X                               ; $8CC4A5 |
  RTL                                       ; $8CC4A7 |

CODE_8CC4A8:
  LDA.W #$FF80                              ; $8CC4A8 |
  JSL.L CODE_FL_8CFDCC                      ; $8CC4AB |
  LDA.W #$1034                              ; $8CC4AF |
  JSL.L CODE_FL_8CFE36                      ; $8CC4B2 |
  LDA.B $1A                                 ; $8CC4B6 |
  STA.B $3A,X                               ; $8CC4B8 |
  RTL                                       ; $8CC4BA |

CODE_8CC4BB:
  LDA.B $3C,X                               ; $8CC4BB |
  CMP.W #$0001                              ; $8CC4BD |
  BNE CODE_8CC4EB                           ; $8CC4C0 |
  LDA.B $1C,X                               ; $8CC4C2 |
  CMP.W #$0003                              ; $8CC4C4 |
  BNE CODE_8CC4EB                           ; $8CC4C7 |
  JSL.L CODE_FL_8CC50D                      ; $8CC4C9 |
  LDA.W #$0001                              ; $8CC4CD |
  STA.B $3A,X                               ; $8CC4D0 |
  LDA.W #$FF80                              ; $8CC4D2 |
  JSL.L CODE_FL_86C887                      ; $8CC4D5 |
  LDA.W #$1036                              ; $8CC4D9 |
  JSL.L CODE_FL_86CAEE                      ; $8CC4DC |
  LDA.W #$0040                              ; $8CC4E0 |
  STA.B $2C,X                               ; $8CC4E3 |
  LDA.W #$0001                              ; $8CC4E5 |
  STA.B $1A,X                               ; $8CC4E8 |
  RTL                                       ; $8CC4EA |

CODE_8CC4EB:
  JSL.L CODE_FL_8CFE4B                      ; $8CC4EB |
  LDA.W #$1037                              ; $8CC4EF |
  JSL.L CODE_FL_8CFEAB                      ; $8CC4F2 |
  JSL.L CODE_FL_8CC32D                      ; $8CC4F6 |
  LDA.B $1C,X                               ; $8CC4FA |
  CMP.W #$0006                              ; $8CC4FC |
  BNE CODE_8CC50C                           ; $8CC4FF |
  LDA.B $20,X                               ; $8CC501 |
  CMP.W #$0001                              ; $8CC503 |
  BNE CODE_8CC50C                           ; $8CC506 |
  DEC.B $3C,X                               ; $8CC508 |
  INC.B $3E,X                               ; $8CC50A |

CODE_8CC50C:
  RTL                                       ; $8CC50C |

CODE_FL_8CC50D:
  STZ.B $02                                 ; $8CC50D |

CODE_8CC50F:
  LDA.W #$00DD                              ; $8CC50F |
  JSL.L CODE_FL_86C9A4                      ; $8CC512 |
  BCS CODE_8CC53A                           ; $8CC516 |
  TXA                                       ; $8CC518 |
  STA.W $003A,Y                             ; $8CC519 |
  JSL.L CODE_FL_86C7C4                      ; $8CC51C |
  LDA.B $48,X                               ; $8CC520 |
  STA.W $0048,Y                             ; $8CC522 |
  INC.B $02                                 ; $8CC525 |
  LDA.B $02                                 ; $8CC527 |
  STA.W $003C,Y                             ; $8CC529 |
  CMP.W #$0003                              ; $8CC52C |
  BNE CODE_8CC50F                           ; $8CC52F |
  CLC                                       ; $8CC531 |
  LDA.W $003C,Y                             ; $8CC532 |
  ADC.W #$0001                              ; $8CC535 |
  STA.B $3C,X                               ; $8CC538 |

CODE_8CC53A:
  RTL                                       ; $8CC53A |

CODE_8CC53B:
  JSL.L CODE_FL_85A9BF                      ; $8CC53B |
  JSL.L CODE_FL_85A9F7                      ; $8CC53F |
  LDA.W #$317A                              ; $8CC543 |
  STA.B $00,X                               ; $8CC546 |
  STZ.B $1E,X                               ; $8CC548 |
  LDA.W #$8000                              ; $8CC54A |
  JSL.L CODE_FL_85AA0F                      ; $8CC54D |
  JSL.L CODE_FL_85A5A7                      ; $8CC551 |
  JML.L CODE_JL_8CFEC2                      ; $8CC555 |

CODE_8CC559:
  JSL.L CODE_FL_8CFEF6                      ; $8CC559 |
  BPL CODE_8CC567                           ; $8CC55D |
  JSL.L CODE_FL_85A939                      ; $8CC55F |
  JML.L CODE_FL_86CA2D                      ; $8CC563 |

CODE_8CC567:
  RTL                                       ; $8CC567 |

CODE_8CC568:
  JSL.L CODE_FL_85AAC6                      ; $8CC568 |
  JSL.L CODE_FL_85F7C9                      ; $8CC56C |
  LDY.B $44,X                               ; $8CC570 |
  JSL.L CODE_FL_86C89E                      ; $8CC572 |
  LDA.B $40,X                               ; $8CC576 |
  CMP.W $001A,Y                             ; $8CC578 |
  BNE CODE_8CC59D                           ; $8CC57B |
  LDA.B $3A,X                               ; $8CC57D |
  ASL A                                     ; $8CC57F |
  TAY                                       ; $8CC580 |
  PHB                                       ; $8CC581 |
  PHK                                       ; $8CC582 |
  PLB                                       ; $8CC583 |
  LDA.W CODE_00C59F,Y                       ; $8CC584 |
  PLB                                       ; $8CC587 |
  CLC                                       ; $8CC588 |
  ADC.B $09,X                               ; $8CC589 |
  STA.B $09,X                               ; $8CC58B |
  PHB                                       ; $8CC58D |
  PHK                                       ; $8CC58E |
  PLB                                       ; $8CC58F |
  LDA.W CODE_00C5A7,Y                       ; $8CC590 |
  PLB                                       ; $8CC593 |
  CLC                                       ; $8CC594 |
  ADC.B $0D,X                               ; $8CC595 |
  STA.B $0D,X                               ; $8CC597 |
  JML.L CODE_FL_85A9EF                      ; $8CC599 |

CODE_8CC59D:
  JML.L CODE_FL_85A9F7                      ; $8CC59D |

  db $F0,$FF,$10,$00,$00,$00,$00,$00        ; $8CC5A1 |
  db $00,$00,$00,$00,$10,$00,$F0,$FF        ; $8CC5A9 |

CODE_8CC5B1:
  JSL.L CODE_FL_85F7C9                      ; $8CC5B1 |
  JSL.L CODE_FL_8CFD8F                      ; $8CC5B5 |
  PHX                                       ; $8CC5B9 |
  ASL A                                     ; $8CC5BA |
  TAX                                       ; $8CC5BB |
  LDA.L PTR16_8CC5C6,X                      ; $8CC5BC |
  PLX                                       ; $8CC5C0 |
  STA.B $00                                 ; $8CC5C1 |
  JMP.W ($0000)                             ; $8CC5C3 |

PTR16_8CC5C6:
  dw CODE_8CC5CA                            ; $8CC5C6 |
  dw CODE_8CC616                            ; $8CC5C8 |

CODE_8CC5CA:
  JSL.L CODE_FL_86C58C                      ; $8CC5CA |
  LDA.B $3A,X                               ; $8CC5CE |
  STA.B $1A                                 ; $8CC5D0 |
  LDA.W #$103B                              ; $8CC5D2 |
  JSL.L CODE_FL_8CFE36                      ; $8CC5D5 |
  JSL.L CODE_FL_85B3C0                      ; $8CC5D9 |
  LDA.B $3A,X                               ; $8CC5DD |
  ASL A                                     ; $8CC5DF |
  TAY                                       ; $8CC5E0 |
  PHB                                       ; $8CC5E1 |
  PHK                                       ; $8CC5E2 |
  PLB                                       ; $8CC5E3 |
  LDA.W LOOSE_OP_00C622,Y                   ; $8CC5E4 |
  PLB                                       ; $8CC5E7 |
  CLC                                       ; $8CC5E8 |
  ADC.B $09,X                               ; $8CC5E9 |
  STA.B $09,X                               ; $8CC5EB |
  PHB                                       ; $8CC5ED |
  PHK                                       ; $8CC5EE |
  PLB                                       ; $8CC5EF |
  LDA.W LOOSE_OP_00C62A,Y                   ; $8CC5F0 |
  PLB                                       ; $8CC5F3 |
  CLC                                       ; $8CC5F4 |
  ADC.B $0D,X                               ; $8CC5F5 |
  STA.B $0D,X                               ; $8CC5F7 |
  LDA.W #$0010                              ; $8CC5F9 |
  STA.B $11,X                               ; $8CC5FC |
  LDA.W #$0008                              ; $8CC5FE |
  STA.B $42,X                               ; $8CC601 |
  LDA.W #$0100                              ; $8CC603 |
  JSL.L CODE_FL_85B33C                      ; $8CC606 |
  JSL.L CODE_FL_85A9EF                      ; $8CC60A |
  JSL.L CODE_FL_85A8CE                      ; $8CC60E |
  JML.L CODE_FL_86C63F                      ; $8CC612 |

CODE_8CC616:
  JSL.L CODE_FL_83FD80                      ; $8CC616 |
  LDA.W $1C12                               ; $8CC61A |
  BNE CODE_8CC620                           ; $8CC61D |
  RTL                                       ; $8CC61F |

CODE_8CC620:
  JML.L CODE_FL_86CA36                      ; $8CC620 |

  db $E0,$FF                                ; $8CC624 |
  db $20,$00,$FC,$FF,$04,$00                ; $8CC626 |
  db $0C,$00                                ; $8CC62C |
  db $0C,$00,$18,$00,$E8,$FF                ; $8CC62E |

CODE_8CC634:
  JSL.L CODE_FL_85F7C9                      ; $8CC634 |
  JSL.L CODE_FL_8CFD8F                      ; $8CC638 |
  PHX                                       ; $8CC63C |
  ASL A                                     ; $8CC63D |
  TAX                                       ; $8CC63E |
  LDA.L PTR16_8CC649,X                      ; $8CC63F |
  PLX                                       ; $8CC643 |
  STA.B $00                                 ; $8CC644 |
  JMP.W ($0000)                             ; $8CC646 |

PTR16_8CC649:
  dw CODE_8CC651                            ; $8CC649 |
  dw CODE_8CC660                            ; $8CC64B |
  dw CODE_8CC6E9                            ; $8CC64D |
  dw CODE_8CC71C                            ; $8CC64F |

CODE_8CC651:
  JSL.L CODE_FL_86C58C                      ; $8CC651 |
  LDA.W #$103C                              ; $8CC655 |
  JSL.L CODE_FL_86CAEE                      ; $8CC658 |
  JML.L CODE_FL_86C63F                      ; $8CC65C |

CODE_8CC660:
  LDY.B $3A,X                               ; $8CC660 |
  LDA.W $0018,Y                             ; $8CC662 |
  BNE CODE_8CC66A                           ; $8CC665 |
  JMP.W CODE_JP_8CC718                      ; $8CC667 |

CODE_8CC66A:
  JSL.L CODE_FL_86C89E                      ; $8CC66A |
  LDA.W $003A,Y                             ; $8CC66E |
  ASL A                                     ; $8CC671 |
  SEC                                       ; $8CC672 |
  SBC.W #$0002                              ; $8CC673 |
  STA.B $00                                 ; $8CC676 |
  LDA.B $3C,X                               ; $8CC678 |
  ASL A                                     ; $8CC67A |
  TAY                                       ; $8CC67B |
  PHY                                       ; $8CC67C |
  PHB                                       ; $8CC67D |
  PHK                                       ; $8CC67E |
  PLB                                       ; $8CC67F |
  LDA.W LOOSE_OP_00C722,Y                   ; $8CC680 |
  PLB                                       ; $8CC683 |
  CLC                                       ; $8CC684 |
  ADC.B $00                                 ; $8CC685 |
  TAY                                       ; $8CC687 |
  PHB                                       ; $8CC688 |
  PHK                                       ; $8CC689 |
  PLB                                       ; $8CC68A |
  LDA.W $0000,Y                             ; $8CC68B |
  PLB                                       ; $8CC68E |
  CLC                                       ; $8CC68F |
  ADC.B $09,X                               ; $8CC690 |
  STA.B $09,X                               ; $8CC692 |
  PLY                                       ; $8CC694 |
  PHB                                       ; $8CC695 |
  PHK                                       ; $8CC696 |
  PLB                                       ; $8CC697 |
  LDA.W LOOSE_OP_00C728,Y                   ; $8CC698 |
  PLB                                       ; $8CC69B |
  CLC                                       ; $8CC69C |
  ADC.B $00                                 ; $8CC69D |
  TAY                                       ; $8CC69F |
  PHB                                       ; $8CC6A0 |
  PHK                                       ; $8CC6A1 |
  PLB                                       ; $8CC6A2 |
  LDA.W $0000,Y                             ; $8CC6A3 |
  PLB                                       ; $8CC6A6 |
  CLC                                       ; $8CC6A7 |
  ADC.B $0D,X                               ; $8CC6A8 |
  STA.B $0D,X                               ; $8CC6AA |
  LDY.W #$0008                              ; $8CC6AC |
  JSL.L CODE_FL_86C514                      ; $8CC6AF |
  LDY.W #$0004                              ; $8CC6B3 |
  JSL.L CODE_FL_86C503                      ; $8CC6B6 |
  LDY.B $3A,X                               ; $8CC6BA |
  LDA.B $3C,X                               ; $8CC6BC |
  CMP.W $003C,Y                             ; $8CC6BE |
  BNE CODE_8CC6E8                           ; $8CC6C1 |
  LDA.W $003E,Y                             ; $8CC6C3 |
  BEQ CODE_8CC6E8                           ; $8CC6C6 |
  LDA.W #$0000                              ; $8CC6C8 |
  STA.W $003E,Y                             ; $8CC6CB |
  LDA.W #$0003                              ; $8CC6CE |
  JSL.L CODE_FL_85B3A9                      ; $8CC6D1 |
  LDA.W #$0020                              ; $8CC6D5 |
  STA.B $2C,X                               ; $8CC6D8 |
  JSL.L CODE_FL_85A9B7                      ; $8CC6DA |
  JSL.L CODE_FL_85A9EF                      ; $8CC6DE |
  JSL.L CODE_FL_85A8CE                      ; $8CC6E2 |
  INC.B $1A,X                               ; $8CC6E6 |

CODE_8CC6E8:
  RTL                                       ; $8CC6E8 |

CODE_8CC6E9:
  LDY.W #$0002                              ; $8CC6E9 |
  JSL.L CODE_FL_86C514                      ; $8CC6EC |
  LDY.W #$0002                              ; $8CC6F0 |
  JSL.L CODE_FL_86C503                      ; $8CC6F3 |
  JSL.L CODE_FL_83FD80                      ; $8CC6F7 |
  LDA.W $1C12                               ; $8CC6FB |
  BNE CODE_JP_8CC718                        ; $8CC6FE |
  LDA.B $32,X                               ; $8CC700 |
  AND.W #$4000                              ; $8CC702 |
  BNE CODE_JP_8CC718                        ; $8CC705 |
  JSL.L CODE_FL_86C70D                      ; $8CC707 |
  LDA.W #$0003                              ; $8CC70B |
  JSL.L CODE_FL_85B3A9                      ; $8CC70E |
  LDA.W #$0020                              ; $8CC712 |
  STA.B $2C,X                               ; $8CC715 |
  RTL                                       ; $8CC717 |

CODE_JP_8CC718:
  JML.L CODE_FL_86CA36                      ; $8CC718 |

CODE_8CC71C:
  JSL.L CODE_FL_85A939                      ; $8CC71C |
  JML.L CODE_FL_86CA2D                      ; $8CC720 |

  dw UNREACH_8CC730                         ; $8CC724 |
  dw UNREACH_8CC740                         ; $8CC726 |
  dw UNREACH_8CC750                         ; $8CC728 |
  dw UNREACH_8CC738                         ; $8CC72A |
  dw UNREACH_8CC748                         ; $8CC72C |
  dw UNREACH_8CC758                         ; $8CC72E |

UNREACH_8CC730:
  db $F8,$FF,$08,$00,$06,$00                ; $8CC730 |
  db $FA,$FF                                ; $8CC736 |

UNREACH_8CC738:
  db $E0,$FF,$E0,$FF,$E0,$FF                ; $8CC738 |
  db $E0,$FF                                ; $8CC73E |

UNREACH_8CC740:
  db $04,$00                                ; $8CC740 |
  db $FC,$FF                                ; $8CC742 |
  db $F0,$FF                                ; $8CC744 |
  db $10,$00                                ; $8CC746 |

UNREACH_8CC748:
  db $F4,$FF                                ; $8CC748 |
  db $F4,$FF                                ; $8CC74A |
  db $F0,$FF                                ; $8CC74C |
  db $F0,$FF                                ; $8CC74E |

UNREACH_8CC750:
  db $F0,$FF                                ; $8CC750 |
  db $10,$00                                ; $8CC752 |
  db $10,$00                                ; $8CC754 |
  db $F0,$FF                                ; $8CC756 |

UNREACH_8CC758:
  db $FE,$FF                                ; $8CC758 |
  db $FE,$FF                                ; $8CC75A |
  db $F8,$FF                                ; $8CC75C |
  db $F8,$FF                                ; $8CC75E |

CODE_8CC760:
  JSL.L CODE_FL_85F885                      ; $8CC760 |
  JSL.L CODE_FL_86C3F8                      ; $8CC764 |
  PHX                                       ; $8CC768 |
  ASL A                                     ; $8CC769 |
  TAX                                       ; $8CC76A |
  LDA.L PTR16_8CC775,X                      ; $8CC76B |
  PLX                                       ; $8CC76F |
  STA.B $00                                 ; $8CC770 |
  JMP.W ($0000)                             ; $8CC772 |

PTR16_8CC775:
  dw CODE_8CC77D                            ; $8CC775 |
  dw CODE_8CC795                            ; $8CC777 |
  dw CODE_8CC7C9                            ; $8CC779 |
  dw CODE_8CC7FC                            ; $8CC77B |

CODE_8CC77D:
  JSL.L CODE_FL_86C7A5                      ; $8CC77D |
  JSL.L CODE_FL_85A9EF                      ; $8CC781 |
  LDA.W #$007F                              ; $8CC785 |
  JSL.L CODE_FL_86CAEE                      ; $8CC788 |
  LDA.W #$0001                              ; $8CC78C |
  STA.B $3A,X                               ; $8CC78F |
  JML.L CODE_FL_86C63F                      ; $8CC791 |

CODE_8CC795:
  LDA.B $28,X                               ; $8CC795 |
  STA.B $3E,X                               ; $8CC797 |
  JSL.L CODE_FL_85A646                      ; $8CC799 |
  BEQ CODE_8CC7C8                           ; $8CC79D |
  LDA.W #$FFF8                              ; $8CC79F |
  JSL.L CODE_FL_86CB2D                      ; $8CC7A2 |
  BCC CODE_8CC7B8                           ; $8CC7A6 |
  LDA.B $3E,X                               ; $8CC7A8 |
  CMP.W #$0200                              ; $8CC7AA |
  BCC CODE_8CC7B8                           ; $8CC7AD |
  STZ.B $3E,X                               ; $8CC7AF |
  LDA.W #$0031                              ; $8CC7B1 |
  JSL.L push_sound_queue                    ; $8CC7B4 |

CODE_8CC7B8:
  LDA.B $26,X                               ; $8CC7B8 |
  BNE CODE_8CC7C8                           ; $8CC7BA |
  STZ.B $26,X                               ; $8CC7BC |
  LDA.W #$0020                              ; $8CC7BE |
  STA.B $2C,X                               ; $8CC7C1 |
  LDA.W #$0003                              ; $8CC7C3 |
  STA.B $1A,X                               ; $8CC7C6 |

CODE_8CC7C8:
  RTL                                       ; $8CC7C8 |

CODE_8CC7C9:
  LDA.W #$FFF8                              ; $8CC7C9 |
  JSL.L CODE_FL_86CB2D                      ; $8CC7CC |
  BCC CODE_8CC7F6                           ; $8CC7D0 |
  DEC.B $3A,X                               ; $8CC7D2 |
  BNE CODE_8CC7F6                           ; $8CC7D4 |
  LDA.B $3C,X                               ; $8CC7D6 |
  BNE CODE_8CC7E3                           ; $8CC7D8 |
  LDA.W #$002F                              ; $8CC7DA |
  JSL.L push_sound_queue                    ; $8CC7DD |
  BRA CODE_8CC7EA                           ; $8CC7E1 |

CODE_8CC7E3:
  LDA.W #$0030                              ; $8CC7E3 |
  JSL.L push_sound_queue                    ; $8CC7E6 |

CODE_8CC7EA:
  LDA.W #$0005                              ; $8CC7EA |
  STA.B $3A,X                               ; $8CC7ED |
  LDA.B $3C,X                               ; $8CC7EF |
  EOR.W #$0001                              ; $8CC7F1 |
  STA.B $3C,X                               ; $8CC7F4 |

CODE_8CC7F6:
  STZ.B $26,X                               ; $8CC7F6 |
  JML.L CODE_JL_85AE2E                      ; $8CC7F8 |

CODE_8CC7FC:
  LDA.W $1C38                               ; $8CC7FC |
  AND.W #$0003                              ; $8CC7FF |
  BNE CODE_8CC808                           ; $8CC802 |
  JSL.L CODE_FL_85A893                      ; $8CC804 |

CODE_8CC808:
  JSL.L CODE_FL_86C70D                      ; $8CC808 |
  JSL.L CODE_FL_85A986                      ; $8CC80C |
  JML.L CODE_FL_86CA36                      ; $8CC810 |

CODE_8CC814:
  JSL.L CODE_FL_85F885                      ; $8CC814 |
  JSL.L CODE_FL_86C3F8                      ; $8CC818 |
  PHX                                       ; $8CC81C |
  ASL A                                     ; $8CC81D |
  TAX                                       ; $8CC81E |
  LDA.L PTR16_8CC829,X                      ; $8CC81F |
  PLX                                       ; $8CC823 |
  STA.B $00                                 ; $8CC824 |
  JMP.W ($0000)                             ; $8CC826 |

PTR16_8CC829:
  dw CODE_8CC831                            ; $8CC829 |
  dw CODE_8CC84E                            ; $8CC82B |
  dw CODE_8CC888                            ; $8CC82D |
  dw CODE_8CC8BE                            ; $8CC82F |

CODE_8CC831:
  JSL.L CODE_FL_86C7A5                      ; $8CC831 |
  JSL.L CODE_FL_85A9EF                      ; $8CC835 |
  LDA.W #$0004                              ; $8CC839 |
  STA.B $3A,X                               ; $8CC83C |
  LDA.W #$0001                              ; $8CC83E |
  STA.B $3E,X                               ; $8CC841 |
  LDA.W #$007F                              ; $8CC843 |
  JSL.L CODE_FL_86CAEE                      ; $8CC846 |
  JML.L CODE_FL_86C63F                      ; $8CC84A |

CODE_8CC84E:
  JSL.L CODE_FL_85A646                      ; $8CC84E |
  BEQ CODE_8CC87A                           ; $8CC852 |
  LDA.W #$FFF8                              ; $8CC854 |
  JSL.L CODE_FL_86CB2D                      ; $8CC857 |
  BCC CODE_8CC864                           ; $8CC85B |
  LDA.W #$0031                              ; $8CC85D |
  JSL.L push_sound_queue                    ; $8CC860 |

CODE_8CC864:
  DEC.B $3A,X                               ; $8CC864 |
  BEQ CODE_8CC87B                           ; $8CC866 |
  LDA.B $3A,X                               ; $8CC868 |
  CMP.W #$0001                              ; $8CC86A |
  BEQ CODE_8CC876                           ; $8CC86D |
  LDA.W #$0100                              ; $8CC86F |
  STA.B $26,X                               ; $8CC872 |
  BRA CODE_8CC87A                           ; $8CC874 |

CODE_8CC876:
  JSL.L CODE_FL_86CB6A                      ; $8CC876 |

CODE_8CC87A:
  RTL                                       ; $8CC87A |

CODE_8CC87B:
  STZ.B $26,X                               ; $8CC87B |
  LDA.W #$0020                              ; $8CC87D |
  STA.B $2C,X                               ; $8CC880 |
  LDA.W #$0003                              ; $8CC882 |
  STA.B $1A,X                               ; $8CC885 |
  RTL                                       ; $8CC887 |

CODE_8CC888:
  LDA.W #$FFF8                              ; $8CC888 |
  JSL.L CODE_FL_86CB2D                      ; $8CC88B |
  BCC CODE_8CC8B5                           ; $8CC88F |
  DEC.B $3E,X                               ; $8CC891 |
  BNE CODE_8CC8B5                           ; $8CC893 |
  LDA.B $3C,X                               ; $8CC895 |
  BNE CODE_8CC8A2                           ; $8CC897 |
  LDA.W #$002F                              ; $8CC899 |
  JSL.L push_sound_queue                    ; $8CC89C |
  BRA CODE_8CC8A9                           ; $8CC8A0 |

CODE_8CC8A2:
  LDA.W #$0030                              ; $8CC8A2 |
  JSL.L push_sound_queue                    ; $8CC8A5 |

CODE_8CC8A9:
  LDA.W #$0005                              ; $8CC8A9 |
  STA.B $3E,X                               ; $8CC8AC |
  LDA.B $3C,X                               ; $8CC8AE |
  EOR.W #$0001                              ; $8CC8B0 |
  STA.B $3C,X                               ; $8CC8B3 |

CODE_8CC8B5:
  JSL.L CODE_FL_85A6AC                      ; $8CC8B5 |
  BNE CODE_8CC8BD                           ; $8CC8B9 |
  DEC.B $1A,X                               ; $8CC8BB |

CODE_8CC8BD:
  RTL                                       ; $8CC8BD |

CODE_8CC8BE:
  LDA.W $1C38                               ; $8CC8BE |
  AND.W #$0003                              ; $8CC8C1 |
  BNE CODE_8CC8CA                           ; $8CC8C4 |
  JSL.L CODE_FL_85A893                      ; $8CC8C6 |

CODE_8CC8CA:
  JSL.L CODE_FL_86C70D                      ; $8CC8CA |
  JSL.L CODE_FL_85A986                      ; $8CC8CE |
  JML.L CODE_FL_86CA36                      ; $8CC8D2 |

CODE_8CC8D6:
  JSL.L CODE_FL_85AD36                      ; $8CC8D6 |
  JSL.L CODE_FL_85F885                      ; $8CC8DA |
  JSL.L CODE_FL_86C3F8                      ; $8CC8DE |
  PHX                                       ; $8CC8E2 |
  ASL A                                     ; $8CC8E3 |
  TAX                                       ; $8CC8E4 |
  LDA.L PTR16_8CC8EF,X                      ; $8CC8E5 |
  PLX                                       ; $8CC8E9 |
  STA.B $00                                 ; $8CC8EA |
  JMP.W ($0000)                             ; $8CC8EC |

PTR16_8CC8EF:
  dw CODE_8CC8FB                            ; $8CC8EF |
  dw CODE_8CC929                            ; $8CC8F1 |
  dw CODE_8CC937                            ; $8CC8F3 |
  dw CODE_8CC94A                            ; $8CC8F5 |
  dw CODE_8CC966                            ; $8CC8F7 |
  dw CODE_8CC9A5                            ; $8CC8F9 |

CODE_8CC8FB:
  JSL.L CODE_FL_85ABAD                      ; $8CC8FB |
  BCS CODE_8CC925                           ; $8CC8FF |
  JSL.L CODE_FL_86C7A5                      ; $8CC901 |
  JSL.L CODE_FL_86C444                      ; $8CC905 |
  JSL.L CODE_FL_85B00E                      ; $8CC909 |
  JSL.L CODE_FL_85A9EF                      ; $8CC90D |
  LDA.W #$007E                              ; $8CC911 |
  JSL.L CODE_FL_86CAEE                      ; $8CC914 |
  JSL.L CODE_FL_85AA07                      ; $8CC918 |
  LDA.W #$0001                              ; $8CC91C |
  STA.B $3A,X                               ; $8CC91F |
  JML.L CODE_FL_86C63F                      ; $8CC921 |

CODE_8CC925:
  JML.L CODE_FL_86CA2D                      ; $8CC925 |

CODE_8CC929:
  JSL.L CODE_FL_85A646                      ; $8CC929 |
  BEQ CODE_8CC936                           ; $8CC92D |
  LDA.W #$FF80                              ; $8CC92F |
  JSL.L CODE_FL_86C887                      ; $8CC932 |

CODE_8CC936:
  RTL                                       ; $8CC936 |

CODE_8CC937:
  JSL.L CODE_FL_86C4A5                      ; $8CC937 |
  JSL.L CODE_FL_86C6A9                      ; $8CC93B |
  CMP.W #$0020                              ; $8CC93F |
  BCS CODE_8CC946                           ; $8CC942 |
  INC.B $1A,X                               ; $8CC944 |

CODE_8CC946:
  JML.L CODE_FL_85A695                      ; $8CC946 |

CODE_8CC94A:
  LDA.W #$007F                              ; $8CC94A |
  JSL.L CODE_FL_86CAEE                      ; $8CC94D |
  LDA.W #$0100                              ; $8CC951 |
  STA.B $26,X                               ; $8CC954 |
  JSL.L CODE_FL_86C4E1                      ; $8CC956 |
  JSL.L CODE_FL_85B016                      ; $8CC95A |
  LDA.W #$0040                              ; $8CC95E |
  STA.B $2C,X                               ; $8CC961 |
  INC.B $1A,X                               ; $8CC963 |
  RTL                                       ; $8CC965 |

CODE_8CC966:
  LDA.W #$FFF8                              ; $8CC966 |
  JSL.L CODE_FL_86CB2D                      ; $8CC969 |
  BCC CODE_8CC993                           ; $8CC96D |
  DEC.B $3A,X                               ; $8CC96F |
  BNE CODE_8CC993                           ; $8CC971 |
  LDA.B $3C,X                               ; $8CC973 |
  BNE CODE_8CC980                           ; $8CC975 |
  LDA.W #$002F                              ; $8CC977 |
  JSL.L push_sound_queue                    ; $8CC97A |
  BRA CODE_8CC987                           ; $8CC97E |

CODE_8CC980:
  LDA.W #$0030                              ; $8CC980 |
  JSL.L push_sound_queue                    ; $8CC983 |

CODE_8CC987:
  LDA.W #$0005                              ; $8CC987 |
  STA.B $3A,X                               ; $8CC98A |
  LDA.B $3C,X                               ; $8CC98C |
  EOR.W #$0001                              ; $8CC98E |
  STA.B $3C,X                               ; $8CC991 |

CODE_8CC993:
  JSL.L CODE_FL_85A695                      ; $8CC993 |
  JSL.L CODE_FL_86C70D                      ; $8CC997 |
  LDA.W #$0020                              ; $8CC99B |
  STA.B $2C,X                               ; $8CC99E |
  STZ.B $26,X                               ; $8CC9A0 |
  INC.B $1A,X                               ; $8CC9A2 |
  RTL                                       ; $8CC9A4 |

CODE_8CC9A5:
  LDA.W $1C38                               ; $8CC9A5 |
  AND.W #$0003                              ; $8CC9A8 |
  BNE CODE_8CC9B1                           ; $8CC9AB |
  JSL.L CODE_FL_85A893                      ; $8CC9AD |

CODE_8CC9B1:
  JSL.L CODE_FL_86C70D                      ; $8CC9B1 |
  JSL.L CODE_FL_85A986                      ; $8CC9B5 |
  JSL.L CODE_FL_85ABC2                      ; $8CC9B9 |
  JML.L CODE_FL_86CA2D                      ; $8CC9BD |

CODE_8CC9C1:
  JSL.L CODE_FL_86C3F8                      ; $8CC9C1 |
  PHX                                       ; $8CC9C5 |
  ASL A                                     ; $8CC9C6 |
  TAX                                       ; $8CC9C7 |
  LDA.L PTR16_8CC9D2,X                      ; $8CC9C8 |
  PLX                                       ; $8CC9CC |
  STA.B $00                                 ; $8CC9CD |
  JMP.W ($0000)                             ; $8CC9CF |

PTR16_8CC9D2:
  dw CODE_8CC9D8                            ; $8CC9D2 |
  dw CODE_8CCA00                            ; $8CC9D4 |
  dw CODE_8CCA19                            ; $8CC9D6 |

CODE_8CC9D8:
  JSL.L CODE_FL_86C7A5                      ; $8CC9D8 |
  LDA.B $4E,X                               ; $8CC9DC |
  CLC                                       ; $8CC9DE |
  ADC.W #$201A                              ; $8CC9DF |
  JSL.L CODE_FL_86CAEE                      ; $8CC9E2 |
  LDA.W #$0125                              ; $8CC9E6 |
  JSL.L CODE_FL_86C97C                      ; $8CC9E9 |
  BCS CODE_8CC9FC                           ; $8CC9ED |
  JSL.L CODE_FL_85AAB6                      ; $8CC9EF |
  LDA.B $4E,X                               ; $8CC9F3 |
  STA.W $004E,Y                             ; $8CC9F5 |
  JML.L CODE_FL_86C63F                      ; $8CC9F8 |

CODE_8CC9FC:
  JML.L CODE_FL_86CA36                      ; $8CC9FC |

CODE_8CCA00:
  LDA.B $20,X                               ; $8CCA00 |
  BNE CODE_8CCA11                           ; $8CCA02 |
  LDA.W #$0088                              ; $8CCA04 |
  STA.B $3C,X                               ; $8CCA07 |
  LDA.W #$0024                              ; $8CCA09 |
  STA.B $2C,X                               ; $8CCA0C |
  INC.B $1A,X                               ; $8CCA0E |
  RTL                                       ; $8CCA10 |

CODE_8CCA11:
  CMP.W #$0001                              ; $8CCA11 |
  BNE CODE_8CCA18                           ; $8CCA14 |
  INC.B $3A,X                               ; $8CCA16 |

CODE_8CCA18:
  RTL                                       ; $8CCA18 |

CODE_8CCA19:
  LDA.B $3A,X                               ; $8CCA19 |
  CMP.W #$000F                              ; $8CCA1B |
  BEQ CODE_8CCA2E                           ; $8CCA1E |
  LDA.B $2C,X                               ; $8CCA20 |
  LDY.W #$0008                              ; $8CCA22 |
  JSL.L CODE_FL_808E65                      ; $8CCA25 |
  TYA                                       ; $8CCA29 |
  BNE CODE_8CCA2E                           ; $8CCA2A |
  INC.B $3A,X                               ; $8CCA2C |

CODE_8CCA2E:
  JSL.L CODE_FL_86C70D                      ; $8CCA2E |
  LDA.B $4E,X                               ; $8CCA32 |
  CLC                                       ; $8CCA34 |
  ADC.W #$201A                              ; $8CCA35 |
  JSL.L CODE_FL_86CAEE                      ; $8CCA38 |
  LDA.W #$0090                              ; $8CCA3C |
  STA.B $3C,X                               ; $8CCA3F |
  STZ.B $3A,X                               ; $8CCA41 |
  DEC.B $1A,X                               ; $8CCA43 |
  RTL                                       ; $8CCA45 |

CODE_8CCA46:
  JSL.L CODE_FL_85AAC6                      ; $8CCA46 |
  JSL.L CODE_FL_86C3C9                      ; $8CCA4A |
  PHX                                       ; $8CCA4E |
  ASL A                                     ; $8CCA4F |
  TAX                                       ; $8CCA50 |
  LDA.L PTR16_8CCA5B,X                      ; $8CCA51 |
  PLX                                       ; $8CCA55 |
  STA.B $00                                 ; $8CCA56 |
  JMP.W ($0000)                             ; $8CCA58 |

PTR16_8CCA5B:
  dw CODE_8CCA5F                            ; $8CCA5B |
  dw CODE_8CCA75                            ; $8CCA5D |

CODE_8CCA5F:
  LDA.B $22,X                               ; $8CCA5F |
  ORA.W #$0220                              ; $8CCA61 |
  STA.B $22,X                               ; $8CCA64 |
  LDA.B $34,X                               ; $8CCA66 |
  ORA.W #$A000                              ; $8CCA68 |
  STA.B $34,X                               ; $8CCA6B |
  JSL.L CODE_FL_85AC74                      ; $8CCA6D |
  JML.L CODE_FL_86C63F                      ; $8CCA71 |

CODE_8CCA75:
  SEP #$20                                  ; $8CCA75 |
  LDA.B $37,X                               ; $8CCA77 |
  CMP.B #$04                                ; $8CCA79 |
  BNE CODE_8CCAF3                           ; $8CCA7B |
  STZ.B $37,X                               ; $8CCA7D |
  REP #$20                                  ; $8CCA7F |
  LDY.B $44,X                               ; $8CCA81 |
  LDA.W $001C,Y                             ; $8CCA83 |
  CMP.W #$0006                              ; $8CCA86 |
  BEQ CODE_8CCA90                           ; $8CCA89 |
  CMP.W #$0021                              ; $8CCA8B |
  BNE CODE_8CCAAA                           ; $8CCA8E |

CODE_8CCA90:
  LDA.W $0020,Y                             ; $8CCA90 |
  CMP.W #$0001                              ; $8CCA93 |
  BNE CODE_8CCAE9                           ; $8CCA96 |
  LDA.W $001C,Y                             ; $8CCA98 |
  CMP.W #$0006                              ; $8CCA9B |
  BEQ CODE_8CCAA5                           ; $8CCA9E |
  LDA.W #$0088                              ; $8CCAA0 |
  BRA CODE_8CCAE9                           ; $8CCAA3 |

CODE_8CCAA5:
  LDA.W #$0090                              ; $8CCAA5 |
  BRA CODE_8CCAE9                           ; $8CCAA8 |

CODE_8CCAAA:
  LDA.W $003A,Y                             ; $8CCAAA |
  ASL A                                     ; $8CCAAD |
  ASL A                                     ; $8CCAAE |
  TAY                                       ; $8CCAAF |
  LDA.B $4E,X                               ; $8CCAB0 |
  BNE CODE_8CCABD                           ; $8CCAB2 |
  PHB                                       ; $8CCAB4 |
  PHK                                       ; $8CCAB5 |
  PLB                                       ; $8CCAB6 |
  LDA.W LOOSE_OP_00CB89,Y                   ; $8CCAB7 |
  PLB                                       ; $8CCABA |
  BRA CODE_8CCAC4                           ; $8CCABB |

CODE_8CCABD:
  PHB                                       ; $8CCABD |
  PHK                                       ; $8CCABE |
  PLB                                       ; $8CCABF |
  LDA.W LOOSE_OP_00CBC9,Y                   ; $8CCAC0 |
  PLB                                       ; $8CCAC3 |

CODE_8CCAC4:
  STA.B $00                                 ; $8CCAC4 |
  LDY.W #$0400                              ; $8CCAC6 |
  LDA.B $32,X                               ; $8CCAC9 |
  BIT.W #$4000                              ; $8CCACB |
  BEQ CODE_8CCAD4                           ; $8CCACE |
  JSL.L CODE_FL_8CCB64                      ; $8CCAD0 |

CODE_8CCAD4:
  LDY.W #$04C0                              ; $8CCAD4 |
  LDA.B $32,X                               ; $8CCAD7 |
  BIT.W #$2000                              ; $8CCAD9 |
  BEQ CODE_8CCAE9                           ; $8CCADC |
  JSL.L CODE_FL_8CCB64                      ; $8CCADE |
  LDA.B $32,X                               ; $8CCAE2 |
  BIT.W #$6000                              ; $8CCAE4 |
  BEQ CODE_8CCAE9                           ; $8CCAE7 |

CODE_8CCAE9:
  STZ.B $38,X                               ; $8CCAE9 |
  JSL.L CODE_FL_8CCB1D                      ; $8CCAEB |
  JSL.L CODE_FL_8CDA3C                      ; $8CCAEF |

CODE_8CCAF3:
  REP #$20                                  ; $8CCAF3 |
  LDY.B $44,X                               ; $8CCAF5 |
  JSL.L CODE_FL_86C89E                      ; $8CCAF7 |
  LDA.W $003A,Y                             ; $8CCAFB |
  ASL A                                     ; $8CCAFE |
  ASL A                                     ; $8CCAFF |
  TAY                                       ; $8CCB00 |
  LDA.B $4E,X                               ; $8CCB01 |
  BNE CODE_8CCB0E                           ; $8CCB03 |
  PHB                                       ; $8CCB05 |
  PHK                                       ; $8CCB06 |
  PLB                                       ; $8CCB07 |
  LDA.W CODE_00CB87,Y                       ; $8CCB08 |
  PLB                                       ; $8CCB0B |
  BRA CODE_8CCB15                           ; $8CCB0C |

CODE_8CCB0E:
  PHB                                       ; $8CCB0E |
  PHK                                       ; $8CCB0F |
  PLB                                       ; $8CCB10 |
  LDA.W LOOSE_OP_00CBC7,Y                   ; $8CCB11 |
  PLB                                       ; $8CCB14 |

CODE_8CCB15:
  CLC                                       ; $8CCB15 |
  ADC.B $09,X                               ; $8CCB16 |
  STA.B $09,X                               ; $8CCB18 |
  STZ.B $32,X                               ; $8CCB1A |
  RTL                                       ; $8CCB1C |

CODE_FL_8CCB1D:
  LDY.B $44,X                               ; $8CCB1D |
  LDA.W $003A,Y                             ; $8CCB1F |
  ASL A                                     ; $8CCB22 |
  ASL A                                     ; $8CCB23 |
  TAY                                       ; $8CCB24 |
  LDA.B $4E,X                               ; $8CCB25 |
  BNE CODE_8CCB32                           ; $8CCB27 |
  PHB                                       ; $8CCB29 |
  PHK                                       ; $8CCB2A |
  PLB                                       ; $8CCB2B |
  LDA.W LOOSE_OP_00CB89,Y                   ; $8CCB2C |
  PLB                                       ; $8CCB2F |
  BRA CODE_8CCB39                           ; $8CCB30 |

CODE_8CCB32:
  PHB                                       ; $8CCB32 |
  PHK                                       ; $8CCB33 |
  PLB                                       ; $8CCB34 |
  LDA.W LOOSE_OP_00CBC9,Y                   ; $8CCB35 |
  PLB                                       ; $8CCB38 |

CODE_8CCB39:
  STA.B $00                                 ; $8CCB39 |
  LDY.W #$0400                              ; $8CCB3B |
  LDA.B $32,X                               ; $8CCB3E |
  BIT.W #$4000                              ; $8CCB40 |
  BEQ CODE_8CCB49                           ; $8CCB43 |
  JSL.L CODE_FL_8CCB58                      ; $8CCB45 |

CODE_8CCB49:
  LDY.W #$04C0                              ; $8CCB49 |
  LDA.B $32,X                               ; $8CCB4C |
  BIT.W #$2000                              ; $8CCB4E |
  BEQ CODE_8CCB57                           ; $8CCB51 |
  JSL.L CODE_FL_8CCB58                      ; $8CCB53 |

CODE_8CCB57:
  RTL                                       ; $8CCB57 |

CODE_FL_8CCB58:
  LDA.W $0004,Y                             ; $8CCB58 |
  AND.W #$6767                              ; $8CCB5B |
  ORA.B $00                                 ; $8CCB5E |
  STA.W $0004,Y                             ; $8CCB60 |
  RTL                                       ; $8CCB63 |

CODE_FL_8CCB64:
  LDA.W $0004,Y                             ; $8CCB64 |
  AND.W #$9F9F                              ; $8CCB67 |
  AND.W #$00FF                              ; $8CCB6A |
  CMP.B $00                                 ; $8CCB6D |
  BEQ CODE_8CCB86                           ; $8CCB6F |
  CPY.W #$0400                              ; $8CCB71 |
  BNE CODE_8CCB7F                           ; $8CCB74 |
  LDA.B $32,X                               ; $8CCB76 |
  AND.W #$BFFF                              ; $8CCB78 |
  STA.B $32,X                               ; $8CCB7B |
  BRA CODE_8CCB86                           ; $8CCB7D |

CODE_8CCB7F:
  LDA.B $32,X                               ; $8CCB7F |
  AND.W #$DFFF                              ; $8CCB81 |
  STA.B $32,X                               ; $8CCB84 |

CODE_8CCB86:
  RTL                                       ; $8CCB86 |

  db $EE,$FF                                ; $8CCB87 |
  db $88,$00                                ; $8CCB89 |
  db $EB,$FF,$88,$00,$E9,$FF,$90,$00        ; $8CCB8B |
  db $ED,$FF,$90,$00,$F1,$FF,$90,$00        ; $8CCB93 |
  db $F8,$FF,$90,$00,$00,$00,$90,$00        ; $8CCB9B |
  db $08,$00                                ; $8CCBA3 |
  db $90,$00                                ; $8CCBA5 |
  db $0F,$00                                ; $8CCBA7 |
  db $90,$00                                ; $8CCBA9 |
  db $13,$00                                ; $8CCBAB |
  db $90,$00                                ; $8CCBAD |
  db $17,$00                                ; $8CCBAF |
  db $90,$00                                ; $8CCBB1 |
  db $15,$00                                ; $8CCBB3 |
  db $88,$00                                ; $8CCBB5 |
  db $12,$00                                ; $8CCBB7 |
  db $88,$00                                ; $8CCBB9 |
  db $08,$00                                ; $8CCBBB |
  db $88,$00                                ; $8CCBBD |
  db $00,$00                                ; $8CCBBF |
  db $88,$00                                ; $8CCBC1 |
  db $F8,$FF,$88,$00,$12,$00                ; $8CCBC3 |
  db $88,$00                                ; $8CCBC9 |
  db $15,$00                                ; $8CCBCB |
  db $88,$00                                ; $8CCBCD |
  db $17,$00                                ; $8CCBCF |
  db $90,$00                                ; $8CCBD1 |
  db $13,$00,$90,$00,$0F,$00,$90,$00        ; $8CCBD3 |
  db $08,$00,$90,$00,$00,$00,$90,$00        ; $8CCBDB |
  db $F8,$FF,$90,$00,$F1,$FF                ; $8CCBE3 |
  db $90,$00                                ; $8CCBE9 |
  db $ED,$FF                                ; $8CCBEB |
  db $90,$00                                ; $8CCBED |
  db $E9,$FF                                ; $8CCBEF |
  db $90,$00                                ; $8CCBF1 |
  db $EB,$FF                                ; $8CCBF3 |
  db $88,$00                                ; $8CCBF5 |
  db $EE,$FF                                ; $8CCBF7 |
  db $88,$00                                ; $8CCBF9 |
  db $F8,$FF                                ; $8CCBFB |
  db $88,$00                                ; $8CCBFD |
  db $00,$00                                ; $8CCBFF |
  db $88,$00                                ; $8CCC01 |
  db $08,$00                                ; $8CCC03 |
  db $88,$00                                ; $8CCC05 |

CODE_8CCC07:
  LDA.B $1A,X                               ; $8CCC07 |
  PHX                                       ; $8CCC09 |
  ASL A                                     ; $8CCC0A |
  TAX                                       ; $8CCC0B |
  LDA.L PTR16_8CCC16,X                      ; $8CCC0C |
  PLX                                       ; $8CCC10 |
  STA.B $00                                 ; $8CCC11 |
  JMP.W ($0000)                             ; $8CCC13 |

PTR16_8CCC16:
  dw CODE_8CCC1A                            ; $8CCC16 |
  dw CODE_8CCC21                            ; $8CCC18 |

CODE_8CCC1A:
  JSL.L CODE_FL_85AA07                      ; $8CCC1A |
  INC.B $1A,X                               ; $8CCC1E |
  RTL                                       ; $8CCC20 |

CODE_8CCC21:
  CLC                                       ; $8CCC21 |
  LDA.B $09,X                               ; $8CCC22 |
  ADC.W #$0020                              ; $8CCC24 |
  CMP.W $0409                               ; $8CCC27 |
  BCS CODE_8CCC38                           ; $8CCC2A |
  LDA.W $0404                               ; $8CCC2C |
  AND.W #$6767                              ; $8CCC2F |
  ORA.W #$0090                              ; $8CCC32 |
  STA.W $0404                               ; $8CCC35 |

CODE_8CCC38:
  CLC                                       ; $8CCC38 |
  LDA.B $09,X                               ; $8CCC39 |
  ADC.W #$0020                              ; $8CCC3B |
  CMP.W $04C9                               ; $8CCC3E |
  BCS CODE_8CCC4F                           ; $8CCC41 |
  LDA.W $04C4                               ; $8CCC43 |
  AND.W #$6767                              ; $8CCC46 |
  ORA.W #$0090                              ; $8CCC49 |
  STA.W $04C4                               ; $8CCC4C |

CODE_8CCC4F:
  SEC                                       ; $8CCC4F |
  LDA.B $09,X                               ; $8CCC50 |
  SBC.W #$0020                              ; $8CCC52 |
  CMP.W $0409                               ; $8CCC55 |
  BCC CODE_8CCC66                           ; $8CCC58 |
  LDA.W $0404                               ; $8CCC5A |
  AND.W #$6767                              ; $8CCC5D |
  ORA.W #$0090                              ; $8CCC60 |
  STA.W $0404                               ; $8CCC63 |

CODE_8CCC66:
  SEC                                       ; $8CCC66 |
  LDA.B $09,X                               ; $8CCC67 |
  SBC.W #$0020                              ; $8CCC69 |
  CMP.W $04C9                               ; $8CCC6C |
  BCC CODE_8CCC7D                           ; $8CCC6F |
  LDA.W $04C4                               ; $8CCC71 |
  AND.W #$6767                              ; $8CCC74 |
  ORA.W #$0090                              ; $8CCC77 |
  STA.W $04C4                               ; $8CCC7A |

CODE_8CCC7D:
  CLC                                       ; $8CCC7D |
  LDA.W $1672                               ; $8CCC7E |
  ADC.W $040D                               ; $8CCC81 |
  CMP.W #$01A0                              ; $8CCC84 |
  BCS CODE_8CCC95                           ; $8CCC87 |
  LDA.W $0404                               ; $8CCC89 |
  AND.W #$6767                              ; $8CCC8C |
  ORA.W #$0090                              ; $8CCC8F |
  STA.W $0404                               ; $8CCC92 |

CODE_8CCC95:
  CLC                                       ; $8CCC95 |
  LDA.W $1672                               ; $8CCC96 |
  ADC.W $04CD                               ; $8CCC99 |
  CMP.W #$01A0                              ; $8CCC9C |
  BCS CODE_8CCCAF                           ; $8CCC9F |
  LDA.W $04C4                               ; $8CCCA1 |
  AND.W #$6767                              ; $8CCCA4 |
  ORA.W #$0090                              ; $8CCCA7 |
  STA.W $04C4                               ; $8CCCAA |
  BRA CODE_8CCCDF                           ; $8CCCAD |

CODE_8CCCAF:
  CLC                                       ; $8CCCAF |
  LDA.W $1672                               ; $8CCCB0 |
  ADC.W $040D                               ; $8CCCB3 |
  CMP.W #$03E0                              ; $8CCCB6 |
  BCC CODE_8CCCC7                           ; $8CCCB9 |
  LDA.W $0404                               ; $8CCCBB |
  AND.W #$6767                              ; $8CCCBE |
  ORA.W #$0090                              ; $8CCCC1 |
  STA.W $0404                               ; $8CCCC4 |

CODE_8CCCC7:
  CLC                                       ; $8CCCC7 |
  LDA.W $1672                               ; $8CCCC8 |
  ADC.W $04CD                               ; $8CCCCB |
  CMP.W #$03E0                              ; $8CCCCE |
  BCC CODE_8CCCDF                           ; $8CCCD1 |
  LDA.W $04C4                               ; $8CCCD3 |
  AND.W #$6767                              ; $8CCCD6 |
  ORA.W #$0090                              ; $8CCCD9 |
  STA.W $04C4                               ; $8CCCDC |

CODE_8CCCDF:
  RTL                                       ; $8CCCDF |

CODE_8CCCE0:
  LDA.B $1A,X                               ; $8CCCE0 |
  PHX                                       ; $8CCCE2 |
  ASL A                                     ; $8CCCE3 |
  TAX                                       ; $8CCCE4 |
  LDA.L PTR16_8CCCEF,X                      ; $8CCCE5 |
  PLX                                       ; $8CCCE9 |
  STA.B $00                                 ; $8CCCEA |
  JMP.W ($0000)                             ; $8CCCEC |

PTR16_8CCCEF:
  dw CODE_8CCCF3                            ; $8CCCEF |
  dw CODE_8CCD4B                            ; $8CCCF1 |

CODE_8CCCF3:
  LDA.B $4E,X                               ; $8CCCF3 |
  AND.W #$000F                              ; $8CCCF5 |
  STA.B $00                                 ; $8CCCF8 |
  LDA.B $4E,X                               ; $8CCCFA |
  AND.W #$0010                              ; $8CCCFC |
  LSR A                                     ; $8CCCFF |
  LSR A                                     ; $8CCD00 |
  LSR A                                     ; $8CCD01 |
  LSR A                                     ; $8CCD02 |
  STA.B $06                                 ; $8CCD03 |
  LDA.B $4E,X                               ; $8CCD05 |
  AND.W #$FE00                              ; $8CCD07 |
  STA.B $4E,X                               ; $8CCD0A |
  LDA.W #$0200                              ; $8CCD0C |
  LDY.B $00                                 ; $8CCD0F |
  JSL.L CODE_FL_808E65                      ; $8CCD11 |
  STA.B $02                                 ; $8CCD15 |
  LDA.W $1C38                               ; $8CCD17 |
  AND.W #$01FF                              ; $8CCD1A |
  STA.B $04                                 ; $8CCD1D |

CODE_8CCD1F:
  LDA.W #$0127                              ; $8CCD1F |
  JSL.L CODE_FL_86C97C                      ; $8CCD22 |
  BCS CODE_8CCD47                           ; $8CCD26 |
  JSL.L CODE_FL_85AAB6                      ; $8CCD28 |
  LDA.B $4E,X                               ; $8CCD2C |
  ORA.B $04                                 ; $8CCD2E |
  STA.W $004E,Y                             ; $8CCD30 |
  LDA.B $06                                 ; $8CCD33 |
  STA.W $003A,Y                             ; $8CCD35 |
  LDA.B $02                                 ; $8CCD38 |
  CLC                                       ; $8CCD3A |
  ADC.B $04                                 ; $8CCD3B |
  STA.B $04                                 ; $8CCD3D |
  DEC.B $00                                 ; $8CCD3F |
  BNE CODE_8CCD1F                           ; $8CCD41 |
  JML.L CODE_FL_86C63F                      ; $8CCD43 |

CODE_8CCD47:
  JML.L CODE_FL_86CA36                      ; $8CCD47 |

CODE_8CCD4B:
  RTL                                       ; $8CCD4B |

CODE_8CCD4C:
  JSL.L CODE_FL_85AE1F                      ; $8CCD4C |
  JSL.L CODE_FL_86C3BB                      ; $8CCD50 |
  PHX                                       ; $8CCD54 |
  ASL A                                     ; $8CCD55 |
  TAX                                       ; $8CCD56 |
  LDA.L PTR16_8CCD61,X                      ; $8CCD57 |
  PLX                                       ; $8CCD5B |
  STA.B $00                                 ; $8CCD5C |
  JMP.W ($0000)                             ; $8CCD5E |

PTR16_8CCD61:
  dw CODE_8CCD65                            ; $8CCD61 |
  dw CODE_8CCD84                            ; $8CCD63 |

CODE_8CCD65:
  JSL.L CODE_FL_86C7A5                      ; $8CCD65 |
  LDA.W #$3140                              ; $8CCD69 |
  STA.B $00,X                               ; $8CCD6C |
  LDA.B $22,X                               ; $8CCD6E |
  ORA.W #$2220                              ; $8CCD70 |
  STA.B $22,X                               ; $8CCD73 |
  LDA.B $34,X                               ; $8CCD75 |
  ORA.W #$A000                              ; $8CCD77 |
  STA.B $34,X                               ; $8CCD7A |
  JSL.L CODE_FL_85AC74                      ; $8CCD7C |
  JML.L CODE_FL_86C63F                      ; $8CCD80 |

CODE_8CCD84:
  SEP #$20                                  ; $8CCD84 |
  LDA.B $37,X                               ; $8CCD86 |
  CMP.B #$04                                ; $8CCD88 |
  BNE CODE_8CCD96                           ; $8CCD8A |
  STZ.B $37,X                               ; $8CCD8C |
  REP #$20                                  ; $8CCD8E |
  STZ.B $38,X                               ; $8CCD90 |
  JSL.L CODE_FL_8CDA3C                      ; $8CCD92 |

CODE_8CCD96:
  REP #$20                                  ; $8CCD96 |
  LDA.B $4E,X                               ; $8CCD98 |
  LDY.W #$0028                              ; $8CCD9A |
  JSL.L CODE_FL_8AB51A                      ; $8CCD9D |
  LDY.B $44,X                               ; $8CCDA1 |
  JSL.L CODE_FL_8AB509                      ; $8CCDA3 |
  LDA.B $3A,X                               ; $8CCDA7 |
  BEQ CODE_8CCDB9                           ; $8CCDA9 |
  LDA.B $4E,X                               ; $8CCDAB |
  SEC                                       ; $8CCDAD |
  SBC.W #$0002                              ; $8CCDAE |
  BPL CODE_8CCDC8                           ; $8CCDB1 |
  CLC                                       ; $8CCDB3 |
  ADC.W #$0200                              ; $8CCDB4 |
  BRA CODE_8CCDC8                           ; $8CCDB7 |

CODE_8CCDB9:
  LDA.B $4E,X                               ; $8CCDB9 |
  CLC                                       ; $8CCDBB |
  ADC.W #$0002                              ; $8CCDBC |
  CMP.W #$0200                              ; $8CCDBF |
  BCC CODE_8CCDC8                           ; $8CCDC2 |
  SEC                                       ; $8CCDC4 |
  SBC.W #$0200                              ; $8CCDC5 |

CODE_8CCDC8:
  STA.B $4E,X                               ; $8CCDC8 |
  STZ.B $32,X                               ; $8CCDCA |
  RTL                                       ; $8CCDCC |

CODE_8CCDCD:
  JSL.L CODE_FL_86C424                      ; $8CCDCD |
  PHX                                       ; $8CCDD1 |
  ASL A                                     ; $8CCDD2 |
  TAX                                       ; $8CCDD3 |
  LDA.L PTR16_8CCDDE,X                      ; $8CCDD4 |
  PLX                                       ; $8CCDD8 |
  STA.B $00                                 ; $8CCDD9 |
  JMP.W ($0000)                             ; $8CCDDB |

PTR16_8CCDDE:
  dw CODE_8CCDE2                            ; $8CCDDE |
  dw CODE_8CCE87                            ; $8CCDE0 |

CODE_8CCDE2:
  LDA.B $40,X                               ; $8CCDE2 |
  BNE CODE_8CCDED                           ; $8CCDE4 |
  LDA.B $4E,X                               ; $8CCDE6 |
  LSR A                                     ; $8CCDE8 |
  BEQ CODE_8CCDED                           ; $8CCDE9 |
  STA.B $3A,X                               ; $8CCDEB |

CODE_8CCDED:
  LDA.B $09,X                               ; $8CCDED |
  SEC                                       ; $8CCDEF |
  SBC.W #$0010                              ; $8CCDF0 |
  STA.B $08                                 ; $8CCDF3 |
  LDA.B $0D,X                               ; $8CCDF5 |
  SEC                                       ; $8CCDF7 |
  SBC.W #$0020                              ; $8CCDF8 |
  STA.B $0A                                 ; $8CCDFB |
  LDA.B $4E,X                               ; $8CCDFD |
  AND.W #$0001                              ; $8CCDFF |
  STA.B $4E,X                               ; $8CCE02 |
  PHX                                       ; $8CCE04 |
  ASL A                                     ; $8CCE05 |
  TAX                                       ; $8CCE06 |
  LDA.L PTR16_8CCE11,X                      ; $8CCE07 |
  PLX                                       ; $8CCE0B |
  STA.B $00                                 ; $8CCE0C |
  JMP.W ($0000)                             ; $8CCE0E |

PTR16_8CCE11:
  dw CODE_8CCE15                            ; $8CCE11 |
  dw CODE_8CCE43                            ; $8CCE13 |

CODE_8CCE15:
  LDA.W $1C38                               ; $8CCE15 |
  AND.W #$0080                              ; $8CCE18 |
  BEQ CODE_8CCE30                           ; $8CCE1B |
  LDA.B $3A,X                               ; $8CCE1D |
  ASL A                                     ; $8CCE1F |
  TAY                                       ; $8CCE20 |
  PHB                                       ; $8CCE21 |
  PHK                                       ; $8CCE22 |
  PLB                                       ; $8CCE23 |
  LDA.W LOOSE_OP_00CE7F,Y                   ; $8CCE24 |
  PLB                                       ; $8CCE27 |
  JSL.L CODE_FL_8580F7                      ; $8CCE28 |
  BCC CODE_8CCE76                           ; $8CCE2C |
  BRA CODE_8CCE6F                           ; $8CCE2E |

CODE_8CCE30:
  LDA.B $3A,X                               ; $8CCE30 |
  ASL A                                     ; $8CCE32 |
  TAY                                       ; $8CCE33 |
  PHB                                       ; $8CCE34 |
  PHK                                       ; $8CCE35 |
  PLB                                       ; $8CCE36 |
  LDA.W LOOSE_OP_00CE83,Y                   ; $8CCE37 |
  PLB                                       ; $8CCE3A |
  JSL.L CODE_FL_8580F7                      ; $8CCE3B |
  BCC CODE_8CCE72                           ; $8CCE3F |
  BRA CODE_8CCE6F                           ; $8CCE41 |

CODE_8CCE43:
  LDA.W $1C38                               ; $8CCE43 |
  AND.W #$0080                              ; $8CCE46 |
  BEQ CODE_8CCE5E                           ; $8CCE49 |
  LDA.B $3A,X                               ; $8CCE4B |
  ASL A                                     ; $8CCE4D |
  TAY                                       ; $8CCE4E |
  PHB                                       ; $8CCE4F |
  PHK                                       ; $8CCE50 |
  PLB                                       ; $8CCE51 |
  LDA.W LOOSE_OP_00CE83,Y                   ; $8CCE52 |
  PLB                                       ; $8CCE55 |
  JSL.L CODE_FL_8580F7                      ; $8CCE56 |
  BCC CODE_8CCE72                           ; $8CCE5A |
  BRA CODE_8CCE6F                           ; $8CCE5C |

CODE_8CCE5E:
  LDA.B $3A,X                               ; $8CCE5E |
  ASL A                                     ; $8CCE60 |
  TAY                                       ; $8CCE61 |
  PHB                                       ; $8CCE62 |
  PHK                                       ; $8CCE63 |
  PLB                                       ; $8CCE64 |
  LDA.W LOOSE_OP_00CE7F,Y                   ; $8CCE65 |
  PLB                                       ; $8CCE68 |
  JSL.L CODE_FL_8580F7                      ; $8CCE69 |
  BCC CODE_8CCE76                           ; $8CCE6D |

CODE_8CCE6F:
  INC.B $40,X                               ; $8CCE6F |
  RTL                                       ; $8CCE71 |

CODE_8CCE72:
  STZ.B $3E,X                               ; $8CCE72 |
  BRA CODE_8CCE78                           ; $8CCE74 |

CODE_8CCE76:
  INC.B $3E,X                               ; $8CCE76 |

CODE_8CCE78:
  INC.B $3C,X                               ; $8CCE78 |
  STZ.B $40,X                               ; $8CCE7A |
  INC.B $1A,X                               ; $8CCE7C |
  RTL                                       ; $8CCE7E |

  db $CE,$00                                ; $8CCE7F |
  db $D6,$00,$D4,$00,$DC,$00                ; $8CCE81 |

CODE_8CCE87:
  LDA.W $1C38                               ; $8CCE87 |
  AND.W #$007F                              ; $8CCE8A |
  BNE CODE_8CCE91                           ; $8CCE8D |
  STZ.B $3C,X                               ; $8CCE8F |

CODE_8CCE91:
  LDA.B $40,X                               ; $8CCE91 |
  BNE CODE_8CCEF7                           ; $8CCE93 |
  LDA.B $3C,X                               ; $8CCE95 |
  BNE CODE_8CCF16                           ; $8CCE97 |
  LDA.B $2C,X                               ; $8CCE99 |
  BNE CODE_8CCF16                           ; $8CCE9B |
  LDA.B $3E,X                               ; $8CCE9D |
  BNE CODE_8CCECD                           ; $8CCE9F |
  LDA.B $3A,X                               ; $8CCEA1 |
  ASL A                                     ; $8CCEA3 |
  TAY                                       ; $8CCEA4 |
  PHB                                       ; $8CCEA5 |
  PHK                                       ; $8CCEA6 |
  PLB                                       ; $8CCEA7 |
  LDA.W LOOSE_OP_00CF25,Y                   ; $8CCEA8 |
  PLB                                       ; $8CCEAB |
  STA.B $00                                 ; $8CCEAC |
  LDA.B $42,X                               ; $8CCEAE |
  ASL A                                     ; $8CCEB0 |
  ASL A                                     ; $8CCEB1 |
  ADC.B $00                                 ; $8CCEB2 |
  TAY                                       ; $8CCEB4 |
  PHB                                       ; $8CCEB5 |
  PHK                                       ; $8CCEB6 |
  PLB                                       ; $8CCEB7 |
  LDA.W $0000,Y                             ; $8CCEB8 |
  PLB                                       ; $8CCEBB |
  STA.B $44,X                               ; $8CCEBC |
  LDA.B $44,X                               ; $8CCEBE |
  BEQ CODE_8CCF17                           ; $8CCEC0 |
  PHB                                       ; $8CCEC2 |
  PHK                                       ; $8CCEC3 |
  PLB                                       ; $8CCEC4 |
  LDA.W $0002,Y                             ; $8CCEC5 |
  PLB                                       ; $8CCEC8 |
  STA.B $2C,X                               ; $8CCEC9 |
  BRA CODE_8CCEF7                           ; $8CCECB |

CODE_8CCECD:
  LDA.B $3A,X                               ; $8CCECD |
  ASL A                                     ; $8CCECF |
  TAY                                       ; $8CCED0 |
  PHB                                       ; $8CCED1 |
  PHK                                       ; $8CCED2 |
  PLB                                       ; $8CCED3 |
  LDA.W CODE_00CF29,Y                       ; $8CCED4 |
  PLB                                       ; $8CCED7 |
  STA.B $00                                 ; $8CCED8 |
  LDA.B $42,X                               ; $8CCEDA |
  ASL A                                     ; $8CCEDC |
  ASL A                                     ; $8CCEDD |
  ADC.B $00                                 ; $8CCEDE |
  TAY                                       ; $8CCEE0 |
  PHB                                       ; $8CCEE1 |
  PHK                                       ; $8CCEE2 |
  PLB                                       ; $8CCEE3 |
  LDA.W $0000,Y                             ; $8CCEE4 |
  PLB                                       ; $8CCEE7 |
  STA.B $44,X                               ; $8CCEE8 |
  LDA.B $44,X                               ; $8CCEEA |
  BEQ CODE_8CCF17                           ; $8CCEEC |
  PHB                                       ; $8CCEEE |
  PHK                                       ; $8CCEEF |
  PLB                                       ; $8CCEF0 |
  LDA.W $0002,Y                             ; $8CCEF1 |
  PLB                                       ; $8CCEF4 |
  STA.B $2C,X                               ; $8CCEF5 |

CODE_8CCEF7:
  STZ.B $40,X                               ; $8CCEF7 |
  LDA.B $09,X                               ; $8CCEF9 |
  SEC                                       ; $8CCEFB |
  SBC.W #$0010                              ; $8CCEFC |
  STA.B $08                                 ; $8CCEFF |
  LDA.B $0D,X                               ; $8CCF01 |
  SEC                                       ; $8CCF03 |
  SBC.W #$0020                              ; $8CCF04 |
  STA.B $0A                                 ; $8CCF07 |
  LDA.B $44,X                               ; $8CCF09 |
  JSL.L CODE_FL_8580F7                      ; $8CCF0B |
  BCC CODE_8CCF14                           ; $8CCF0F |
  INC.B $40,X                               ; $8CCF11 |
  RTL                                       ; $8CCF13 |

CODE_8CCF14:
  INC.B $42,X                               ; $8CCF14 |

CODE_8CCF16:
  RTL                                       ; $8CCF16 |

CODE_8CCF17:
  PHB                                       ; $8CCF17 |
  PHK                                       ; $8CCF18 |
  PLB                                       ; $8CCF19 |
  LDA.W $0002,Y                             ; $8CCF1A |
  PLB                                       ; $8CCF1D |
  STA.B $3E,X                               ; $8CCF1E |
  INC.B $3C,X                               ; $8CCF20 |
  STZ.B $42,X                               ; $8CCF22 |
  RTL                                       ; $8CCF24 |

  dw DATA8_8CCF2D                           ; $8CCF25 |
  dw DATA8_8CCF3D                           ; $8CCF27 |
  dw DATA8_8CCF4D                           ; $8CCF29 |
  dw DATA8_8CCF61                           ; $8CCF2B |

DATA8_8CCF2D:
  db $D2,$00,$04,$00,$D0,$00,$04,$00        ; $8CCF2D |
  db $CE,$00,$04,$00,$00,$00,$01,$00        ; $8CCF35 |

DATA8_8CCF3D:
  db $DA,$00,$04,$00,$D8,$00,$04,$00        ; $8CCF3D |
  db $D6,$00,$04,$00,$00,$00,$01,$00        ; $8CCF45 |

DATA8_8CCF4D:
  db $CE,$00,$20,$00,$D0,$00,$04,$00        ; $8CCF4D |
  db $D2,$00,$04,$00,$D4,$00,$04,$00        ; $8CCF55 |
  db $00,$00,$00,$00                        ; $8CCF5D |

DATA8_8CCF61:
  db $D6,$00,$20,$00,$D8,$00,$04,$00        ; $8CCF61 |
  db $DA,$00,$04,$00,$DC,$00,$04,$00        ; $8CCF69 |
  db $00,$00,$00,$00                        ; $8CCF71 |

CODE_8CCF75:
  LDA.B $44,X                               ; $8CCF75 |
  BEQ CODE_8CCF7E                           ; $8CCF77 |
  LDA.W #$0002                              ; $8CCF79 |
  STA.B $1A,X                               ; $8CCF7C |

CODE_8CCF7E:
  JSL.L CODE_FL_86C3F8                      ; $8CCF7E |
  PHX                                       ; $8CCF82 |
  ASL A                                     ; $8CCF83 |
  TAX                                       ; $8CCF84 |
  LDA.L PTR16_8CCF8F,X                      ; $8CCF85 |
  PLX                                       ; $8CCF89 |
  STA.B $00                                 ; $8CCF8A |
  JMP.W ($0000)                             ; $8CCF8C |

PTR16_8CCF8F:
  dw CODE_8CCF9B                            ; $8CCF8F |
  dw CODE_8CCFDE                            ; $8CCF91 |
  dw CODE_8CD024                            ; $8CCF93 |
  dw CODE_8CD033                            ; $8CCF95 |
  dw CODE_8CD05B                            ; $8CCF97 |
  dw CODE_8CD089                            ; $8CCF99 |

CODE_8CCF9B:
  LDA.B $3A,X                               ; $8CCF9B |
  BNE CODE_8CCFB7                           ; $8CCF9D |
  JSL.L CODE_FL_86C7A5                      ; $8CCF9F |
  LDA.B $4E,X                               ; $8CCFA3 |
  AND.W #$00C0                              ; $8CCFA5 |
  LSR A                                     ; $8CCFA8 |
  LSR A                                     ; $8CCFA9 |
  LSR A                                     ; $8CCFAA |
  LSR A                                     ; $8CCFAB |
  LSR A                                     ; $8CCFAC |
  LSR A                                     ; $8CCFAD |
  STA.B $48,X                               ; $8CCFAE |
  LDA.B $4E,X                               ; $8CCFB0 |
  AND.W #$003F                              ; $8CCFB2 |
  STA.B $4E,X                               ; $8CCFB5 |

CODE_8CCFB7:
  JSL.L CODE_FL_85ABAD                      ; $8CCFB7 |
  BCC CODE_8CCFC0                           ; $8CCFBB |
  JMP.W CODE_JP_8CD094                      ; $8CCFBD |

CODE_8CCFC0:
  LDA.W #$3582                              ; $8CCFC0 |
  STA.B $00,X                               ; $8CCFC3 |
  LDA.W #$0129                              ; $8CCFC5 |
  JSL.L CODE_FL_86C9A4                      ; $8CCFC8 |
  BCS CODE_8CCFDB                           ; $8CCFCC |
  TXA                                       ; $8CCFCE |
  STA.W $0044,Y                             ; $8CCFCF |
  LDA.B $48,X                               ; $8CCFD2 |
  STA.W $004E,Y                             ; $8CCFD4 |
  JML.L CODE_FL_86C63F                      ; $8CCFD7 |

CODE_8CCFDB:
  INC.B $3A,X                               ; $8CCFDB |
  RTL                                       ; $8CCFDD |

CODE_8CCFDE:
  JSL.L CODE_FL_86C70D                      ; $8CCFDE |
  LDA.W #$002C                              ; $8CCFE2 |
  JSL.L CODE_FL_8089BD                      ; $8CCFE5 |
  STZ.B $08                                 ; $8CCFE9 |
  STZ.B $0A                                 ; $8CCFEB |
  LDA.B $46,X                               ; $8CCFED |
  ASL A                                     ; $8CCFEF |
  TAY                                       ; $8CCFF0 |
  PHB                                       ; $8CCFF1 |
  PHK                                       ; $8CCFF2 |
  PLB                                       ; $8CCFF3 |
  LDA.W CODE_00D01A,Y                       ; $8CCFF4 |
  PLB                                       ; $8CCFF7 |
  LDY.W #$0008                              ; $8CCFF8 |
  JSL.L CODE_FL_8AB4B3                      ; $8CCFFB |
  LDA.B $02                                 ; $8CCFFF |
  STA.B $0E                                 ; $8CD001 |
  LDA.B $00                                 ; $8CD003 |
  JSL.L CODE_FL_85ADED                      ; $8CD005 |
  INC.B $46,X                               ; $8CD009 |
  LDA.B $46,X                               ; $8CD00B |
  CMP.W #$0005                              ; $8CD00D |
  BNE CODE_8CD014                           ; $8CD010 |
  STZ.B $46,X                               ; $8CD012 |

CODE_8CD014:
  LDA.W #$0040                              ; $8CD014 |
  STA.B $2C,X                               ; $8CD017 |
  RTL                                       ; $8CD019 |

  dw $0004,$0006,$0008,$000A                ; $8CD01A |
  dw $000C                                  ; $8CD022 |

CODE_8CD024:
  LDA.W #$0080                              ; $8CD024 |
  STA.B $2C,X                               ; $8CD027 |
  STZ.B $44,X                               ; $8CD029 |
  LDA.W #$3596                              ; $8CD02B |
  STA.B $00,X                               ; $8CD02E |
  INC.B $1A,X                               ; $8CD030 |
  RTL                                       ; $8CD032 |

CODE_8CD033:
  LDA.B $42                                 ; $8CD033 |
  AND.W #$0003                              ; $8CD035 |
  BNE CODE_8CD03E                           ; $8CD038 |
  JSL.L CODE_FL_85A893                      ; $8CD03A |

CODE_8CD03E:
  LDA.W $1C38                               ; $8CD03E |
  AND.W #$000F                              ; $8CD041 |
  BNE CODE_8CD04A                           ; $8CD044 |
  JSL.L CODE_FL_8CFBB6                      ; $8CD046 |

CODE_8CD04A:
  JSL.L CODE_FL_86C70D                      ; $8CD04A |
  LDA.W #$0001                              ; $8CD04E |
  STA.B $3A,X                               ; $8CD051 |
  LDA.W #$0080                              ; $8CD053 |
  STA.B $2C,X                               ; $8CD056 |
  INC.B $1A,X                               ; $8CD058 |
  RTL                                       ; $8CD05A |

CODE_8CD05B:
  DEC.B $3A,X                               ; $8CD05B |
  BNE CODE_8CD06B                           ; $8CD05D |
  LDA.W #$0021                              ; $8CD05F |
  JSL.L push_sound_queue                    ; $8CD062 |
  LDA.W #$000A                              ; $8CD066 |
  STA.B $3A,X                               ; $8CD069 |

CODE_8CD06B:
  LDA.B $42                                 ; $8CD06B |
  AND.W #$0003                              ; $8CD06D |
  BNE CODE_8CD076                           ; $8CD070 |
  JSL.L CODE_FL_85A893                      ; $8CD072 |

CODE_8CD076:
  LDA.W $1C38                               ; $8CD076 |
  AND.W #$0007                              ; $8CD079 |
  BNE CODE_8CD082                           ; $8CD07C |
  JSL.L CODE_FL_8CFBAE                      ; $8CD07E |

CODE_8CD082:
  JSL.L CODE_FL_86C70D                      ; $8CD082 |
  INC.B $1A,X                               ; $8CD086 |
  RTL                                       ; $8CD088 |

CODE_8CD089:
  JSL.L CODE_FL_8CFAF3                      ; $8CD089 |
  LDA.W #$000D                              ; $8CD08D |
  JSL.L push_sound_queue                    ; $8CD090 |

CODE_JP_8CD094:
  LDA.B $09,X                               ; $8CD094 |
  SEC                                       ; $8CD096 |
  SBC.W #$0040                              ; $8CD097 |
  STA.B $08                                 ; $8CD09A |
  LDA.B $0D,X                               ; $8CD09C |
  BMI CODE_8CD0AF                           ; $8CD09E |
  SEC                                       ; $8CD0A0 |
  SBC.W #$0038                              ; $8CD0A1 |
  STA.B $0A                                 ; $8CD0A4 |
  LDA.W #$00B8                              ; $8CD0A6 |
  JSL.L CODE_FL_8580F7                      ; $8CD0A9 |
  BCC CODE_8CD0B5                           ; $8CD0AD |

CODE_8CD0AF:
  LDA.W #$0001                              ; $8CD0AF |
  STA.B $3A,X                               ; $8CD0B2 |
  RTL                                       ; $8CD0B4 |

CODE_8CD0B5:
  LDA.B $48,X                               ; $8CD0B5 |
  ASL A                                     ; $8CD0B7 |
  TAY                                       ; $8CD0B8 |
  JSL.L CODE_FL_85ABAD                      ; $8CD0B9 |
  BCS CODE_8CD0E4                           ; $8CD0BD |
  JSL.L CODE_FL_85ABC2                      ; $8CD0BF |

CODE_8CD0C3:
  LDA.B $4E,X                               ; $8CD0C3 |
  CMP.W #$001D                              ; $8CD0C5 |
  BEQ CODE_8CD0DB                           ; $8CD0C8 |
  CMP.W #$001A                              ; $8CD0CA |
  BEQ CODE_8CD0DB                           ; $8CD0CD |
  LDA.W $1C8E                               ; $8CD0CF |
  BEQ CODE_8CD0DB                           ; $8CD0D2 |
  LDA.W #$0001                              ; $8CD0D4 |
  STA.B $3A,X                               ; $8CD0D7 |
  BRA CODE_8CD10F                           ; $8CD0D9 |

CODE_8CD0DB:
  PHB                                       ; $8CD0DB |
  PHK                                       ; $8CD0DC |
  PLB                                       ; $8CD0DD |
  LDA.W LOOSE_OP_00D119,Y                   ; $8CD0DE |
  PLB                                       ; $8CD0E1 |
  BRA CODE_8CD105                           ; $8CD0E2 |

CODE_8CD0E4:
  LDA.B $4E,X                               ; $8CD0E4 |
  CMP.W #$001D                              ; $8CD0E6 |
  BCS CODE_8CD0F9                           ; $8CD0E9 |
  LDA.W #$001C                              ; $8CD0EB |
  JSL.L CODE_FL_8CD110                      ; $8CD0EE |
  BCC CODE_8CD0C3                           ; $8CD0F2 |
  LDA.W #$01E0                              ; $8CD0F4 |
  BRA CODE_8CD105                           ; $8CD0F7 |

CODE_8CD0F9:
  LDA.W #$0022                              ; $8CD0F9 |
  JSL.L CODE_FL_8CD110                      ; $8CD0FC |
  BCC CODE_8CD0C3                           ; $8CD100 |
  LDA.W #$0270                              ; $8CD102 |

CODE_8CD105:
  STA.W $1C90                               ; $8CD105 |
  INC.W $1C8E                               ; $8CD108 |
  JML.L CODE_FL_86CA36                      ; $8CD10B |

CODE_8CD10F:
  RTL                                       ; $8CD10F |

CODE_FL_8CD110:
  PHX                                       ; $8CD110 |
  TAX                                       ; $8CD111 |
  LDA.L $7E8B80,X                           ; $8CD112 |
  PLX                                       ; $8CD116 |
  LSR A                                     ; $8CD117 |
  RTL                                       ; $8CD118 |

  db $A0,$00,$A0,$00,$90,$00                ; $8CD119 |

CODE_8CD11F:
  LDA.W #$0002                              ; $8CD11F |
  LDY.W #$0002                              ; $8CD122 |
  JSL.L CODE_FL_85AD62                      ; $8CD125 |
  LDA.B $04                                 ; $8CD129 |
  BEQ CODE_8CD132                           ; $8CD12B |
  LDA.W #$0004                              ; $8CD12D |
  STA.B $1A,X                               ; $8CD130 |

CODE_8CD132:
  JSL.L CODE_FL_86C3F8                      ; $8CD132 |
  PHX                                       ; $8CD136 |
  ASL A                                     ; $8CD137 |
  TAX                                       ; $8CD138 |
  LDA.L PTR16_8CD143,X                      ; $8CD139 |
  PLX                                       ; $8CD13D |
  STA.B $00                                 ; $8CD13E |
  JMP.W ($0000)                             ; $8CD140 |

PTR16_8CD143:
  dw CODE_8CD14D                            ; $8CD143 |
  dw CODE_8CD182                            ; $8CD145 |
  dw CODE_8CD1F7                            ; $8CD147 |
  dw CODE_8CD212                            ; $8CD149 |
  dw CODE_8CD24E                            ; $8CD14B |

CODE_8CD14D:
  LDA.W #$6B14                              ; $8CD14D |
  STA.B $40,X                               ; $8CD150 |
  JSL.L CODE_FL_85B00E                      ; $8CD152 |
  LDA.B $4E,X                               ; $8CD156 |
  ASL A                                     ; $8CD158 |
  TAY                                       ; $8CD159 |
  PHB                                       ; $8CD15A |
  PHK                                       ; $8CD15B |
  PLB                                       ; $8CD15C |
  LDA.W CODE_00D176,Y                       ; $8CD15D |
  PLB                                       ; $8CD160 |
  CLC                                       ; $8CD161 |
  ADC.B $09,X                               ; $8CD162 |
  STA.B $09,X                               ; $8CD164 |
  PHB                                       ; $8CD166 |
  PHK                                       ; $8CD167 |
  PLB                                       ; $8CD168 |
  LDA.W LOOSE_OP_00D17C,Y                   ; $8CD169 |
  PLB                                       ; $8CD16C |
  CLC                                       ; $8CD16D |
  ADC.B $0D,X                               ; $8CD16E |
  STA.B $0D,X                               ; $8CD170 |
  JML.L CODE_FL_86C63F                      ; $8CD172 |

  dw $0070,$FF90,$0070,$0068                ; $8CD176 |
  dw $0068,$0048                            ; $8CD17E |

CODE_8CD182:
  LDA.W #$FFF0                              ; $8CD182 |
  CLC                                       ; $8CD185 |
  ADC.B $09,X                               ; $8CD186 |
  STA.B $08                                 ; $8CD188 |
  LDA.B $4E,X                               ; $8CD18A |
  ASL A                                     ; $8CD18C |
  TAY                                       ; $8CD18D |
  PHB                                       ; $8CD18E |
  PHK                                       ; $8CD18F |
  PLB                                       ; $8CD190 |
  LDA.W LOOSE_OP_00D23C,Y                   ; $8CD191 |
  PLB                                       ; $8CD194 |
  CLC                                       ; $8CD195 |
  ADC.B $0D,X                               ; $8CD196 |
  STA.B $0A                                 ; $8CD198 |
  LDA.W $1C38                               ; $8CD19A |
  AND.W #$0003                              ; $8CD19D |
  BNE CODE_8CD1C9                           ; $8CD1A0 |
  LDA.B $3A,X                               ; $8CD1A2 |
  AND.W #$0001                              ; $8CD1A4 |
  STA.B $3A,X                               ; $8CD1A7 |
  BNE CODE_8CD1BA                           ; $8CD1A9 |
  PHB                                       ; $8CD1AB |
  PHK                                       ; $8CD1AC |
  PLB                                       ; $8CD1AD |
  LDA.W CODE_00D242,Y                       ; $8CD1AE |
  PLB                                       ; $8CD1B1 |
  JSL.L CODE_FL_8580F7                      ; $8CD1B2 |
  BCS CODE_8CD1C9                           ; $8CD1B6 |
  BRA CODE_8CD1C7                           ; $8CD1B8 |

CODE_8CD1BA:
  PHB                                       ; $8CD1BA |
  PHK                                       ; $8CD1BB |
  PLB                                       ; $8CD1BC |
  LDA.W LOOSE_OP_00D248,Y                   ; $8CD1BD |
  PLB                                       ; $8CD1C0 |
  JSL.L CODE_FL_8580F7                      ; $8CD1C1 |
  BCS CODE_8CD1C9                           ; $8CD1C5 |

CODE_8CD1C7:
  INC.B $3A,X                               ; $8CD1C7 |

CODE_8CD1C9:
  JSL.L CODE_FL_86C70D                      ; $8CD1C9 |
  LDA.B $3C,X                               ; $8CD1CD |
  BEQ CODE_8CD1EA                           ; $8CD1CF |
  LDA.W #$012A                              ; $8CD1D1 |
  JSL.L CODE_FL_86C9C5                      ; $8CD1D4 |
  BCS CODE_8CD1EA                           ; $8CD1D8 |
  LDA.B $44,X                               ; $8CD1DA |
  STA.W $0044,Y                             ; $8CD1DC |
  LDA.B $4E,X                               ; $8CD1DF |
  STA.W $004E,Y                             ; $8CD1E1 |
  JSL.L CODE_FL_86C7D4                      ; $8CD1E4 |
  STZ.B $3C,X                               ; $8CD1E8 |

CODE_8CD1EA:
  LDY.B $44,X                               ; $8CD1EA |
  LDA.W $0018,Y                             ; $8CD1EC |
  BNE CODE_8CD1F6                           ; $8CD1EF |
  LDA.W #$0003                              ; $8CD1F1 |
  STA.B $1A,X                               ; $8CD1F4 |

CODE_8CD1F6:
  RTL                                       ; $8CD1F6 |

CODE_8CD1F7:
  LDA.W #$0001                              ; $8CD1F7 |
  STA.L $7E7C06                             ; $8CD1FA |
  JSL.L CODE_FL_86C239                      ; $8CD1FE |
  BCC CODE_8CD211                           ; $8CD202 |
  JSL.L CODE_FL_85B016                      ; $8CD204 |
  LDA.W #$0040                              ; $8CD208 |
  STA.B $2C,X                               ; $8CD20B |
  INC.B $3C,X                               ; $8CD20D |
  DEC.B $1A,X                               ; $8CD20F |

CODE_8CD211:
  RTL                                       ; $8CD211 |

CODE_8CD212:
  LDA.W #$FFF0                              ; $8CD212 |
  CLC                                       ; $8CD215 |
  ADC.B $09,X                               ; $8CD216 |
  STA.B $08                                 ; $8CD218 |
  LDA.B $4E,X                               ; $8CD21A |
  ASL A                                     ; $8CD21C |
  TAY                                       ; $8CD21D |
  PHB                                       ; $8CD21E |
  PHK                                       ; $8CD21F |
  PLB                                       ; $8CD220 |
  LDA.W LOOSE_OP_00D23C,Y                   ; $8CD221 |
  PLB                                       ; $8CD224 |
  CLC                                       ; $8CD225 |
  ADC.B $0D,X                               ; $8CD226 |
  STA.B $0A                                 ; $8CD228 |
  PHB                                       ; $8CD22A |
  PHK                                       ; $8CD22B |
  PLB                                       ; $8CD22C |
  LDA.W CODE_00D242,Y                       ; $8CD22D |
  PLB                                       ; $8CD230 |
  JSL.L CODE_FL_8580F7                      ; $8CD231 |
  BCC CODE_8CD238                           ; $8CD235 |
  RTL                                       ; $8CD237 |

CODE_8CD238:
  JML.L CODE_FL_86CA36                      ; $8CD238 |

  dw $FFC0,$FFC0,$FFE0,$00AC                ; $8CD23C |
  dw $00B0,$00B4,$00AE,$00B2                ; $8CD244 |
  dw $00B6                                  ; $8CD24C |

CODE_8CD24E:
  LDA.W #$0000                              ; $8CD24E |
  STA.L $7E7C06                             ; $8CD251 |
  JSL.L CODE_FL_86C239                      ; $8CD255 |
  BCC CODE_8CD260                           ; $8CD259 |
  LDA.W #$0001                              ; $8CD25B |
  STA.B $1A,X                               ; $8CD25E |

CODE_8CD260:
  RTL                                       ; $8CD260 |

CODE_8CD261:
  JSL.L CODE_FL_86C3F8                      ; $8CD261 |
  PHX                                       ; $8CD265 |
  ASL A                                     ; $8CD266 |
  TAX                                       ; $8CD267 |
  LDA.L PTR16_8CD272,X                      ; $8CD268 |
  PLX                                       ; $8CD26C |
  STA.B $00                                 ; $8CD26D |
  JMP.W ($0000)                             ; $8CD26F |

PTR16_8CD272:
  dw CODE_8CD278                            ; $8CD272 |
  dw CODE_8CD2B5                            ; $8CD274 |
  dw CODE_8CD2E1                            ; $8CD276 |

CODE_8CD278:
  LDA.W #$2022                              ; $8CD278 |
  JSL.L CODE_FL_86CAEE                      ; $8CD27B |
  LDA.B $4E,X                               ; $8CD27F |
  ASL A                                     ; $8CD281 |
  TAY                                       ; $8CD282 |
  PHB                                       ; $8CD283 |
  PHK                                       ; $8CD284 |
  PLB                                       ; $8CD285 |
  LDA.W CODE_00D2A9,Y                       ; $8CD286 |
  PLB                                       ; $8CD289 |
  CLC                                       ; $8CD28A |
  ADC.B $09,X                               ; $8CD28B |
  STA.B $09,X                               ; $8CD28D |
  PHB                                       ; $8CD28F |
  PHK                                       ; $8CD290 |
  PLB                                       ; $8CD291 |
  LDA.W LOOSE_OP_00D2AF,Y                   ; $8CD292 |
  PLB                                       ; $8CD295 |
  CLC                                       ; $8CD296 |
  ADC.B $0D,X                               ; $8CD297 |
  STA.B $0D,X                               ; $8CD299 |
  LDA.W #$FF00                              ; $8CD29B |
  STA.B $28,X                               ; $8CD29E |
  LDA.W #$0001                              ; $8CD2A0 |
  STA.B $3C,X                               ; $8CD2A3 |
  JML.L CODE_FL_86C63F                      ; $8CD2A5 |

  dw $FFFC,$0004,$FFFC,$FFE0                ; $8CD2A9 |
  dw $FFE0,$FFF0                            ; $8CD2B1 |

CODE_8CD2B5:
  DEC.B $3C,X                               ; $8CD2B5 |
  BNE CODE_8CD2C5                           ; $8CD2B7 |
  LDA.W #$0013                              ; $8CD2B9 |
  JSL.L push_sound_queue                    ; $8CD2BC |
  LDA.W #$000A                              ; $8CD2C0 |
  STA.B $3C,X                               ; $8CD2C3 |

CODE_8CD2C5:
  JSL.L CODE_FL_85A61D                      ; $8CD2C5 |
  BEQ CODE_8CD2DA                           ; $8CD2C9 |
  STZ.B $28,X                               ; $8CD2CB |
  LDA.B $4E,X                               ; $8CD2CD |
  ASL A                                     ; $8CD2CF |
  TAY                                       ; $8CD2D0 |
  PHB                                       ; $8CD2D1 |
  PHK                                       ; $8CD2D2 |
  PLB                                       ; $8CD2D3 |
  LDA.W CODE_00D2DB,Y                       ; $8CD2D4 |
  PLB                                       ; $8CD2D7 |
  STA.B $26,X                               ; $8CD2D8 |

CODE_8CD2DA:
  RTL                                       ; $8CD2DA |

  dw $FF00,$0100,$FF00                      ; $8CD2DB |

CODE_8CD2E1:
  DEC.B $3C,X                               ; $8CD2E1 |
  BNE CODE_8CD2F1                           ; $8CD2E3 |
  LDA.W #$0013                              ; $8CD2E5 |
  JSL.L push_sound_queue                    ; $8CD2E8 |
  LDA.W #$000A                              ; $8CD2EC |
  STA.B $3C,X                               ; $8CD2EF |

CODE_8CD2F1:
  LDA.B $26,X                               ; $8CD2F1 |
  BPL CODE_8CD2F9                           ; $8CD2F3 |
  EOR.W #$FFFF                              ; $8CD2F5 |
  INC A                                     ; $8CD2F8 |

CODE_8CD2F9:
  CLC                                       ; $8CD2F9 |
  ADC.B $3A,X                               ; $8CD2FA |
  STA.B $3A,X                               ; $8CD2FC |
  CMP.W #$5800                              ; $8CD2FE |
  BCC CODE_8CD30F                           ; $8CD301 |
  LDY.B $44,X                               ; $8CD303 |
  LDA.W #$0001                              ; $8CD305 |
  STA.W $0044,Y                             ; $8CD308 |
  JML.L CODE_FL_86CA36                      ; $8CD30B |

CODE_8CD30F:
  RTL                                       ; $8CD30F |

CODE_8CD310:
  JSL.L CODE_FL_86C3B0                      ; $8CD310 |
  PHX                                       ; $8CD314 |
  ASL A                                     ; $8CD315 |
  TAX                                       ; $8CD316 |
  LDA.L PTR16_8CD321,X                      ; $8CD317 |
  PLX                                       ; $8CD31B |
  STA.B $00                                 ; $8CD31C |
  JMP.W ($0000)                             ; $8CD31E |

PTR16_8CD321:
  dw CODE_8CD329                            ; $8CD321 |
  dw CODE_8CD3A2                            ; $8CD323 |
  dw CODE_8CD3AA                            ; $8CD325 |
  dw CODE_8CD3F8                            ; $8CD327 |

CODE_8CD329:
  JSL.L CODE_FL_86C7A5                      ; $8CD329 |
  LDA.B $4E,X                               ; $8CD32D |
  STA.B $3E,X                               ; $8CD32F |
  AND.W #$003F                              ; $8CD331 |
  STA.B $4E,X                               ; $8CD334 |
  STZ.W $1C8E                               ; $8CD336 |
  JSL.L CODE_FL_85ABAD                      ; $8CD339 |
  BCS CODE_8CD381                           ; $8CD33D |
  LDA.W $1672                               ; $8CD33F |
  CMP.W #$0900                              ; $8CD342 |
  BEQ CODE_8CD370                           ; $8CD345 |
  CMP.W #$04E0                              ; $8CD347 |
  BEQ CODE_8CD359                           ; $8CD34A |
  CMP.W #$04E4                              ; $8CD34C |
  BNE CODE_8CD381                           ; $8CD34F |
  LDA.W #$FFCC                              ; $8CD351 |
  STA.W $1962                               ; $8CD354 |
  BRA CODE_8CD35F                           ; $8CD357 |

CODE_8CD359:
  LDA.W #$FFD0                              ; $8CD359 |
  STA.W $1962                               ; $8CD35C |

CODE_8CD35F:
  LDA.W #$001D                              ; $8CD35F |
  JSL.L CODE_FL_8CD110                      ; $8CD362 |
  BCC CODE_8CD37F                           ; $8CD366 |
  LDA.W #$0001                              ; $8CD368 |
  STA.W $1C8E                               ; $8CD36B |
  BRA CODE_8CD37F                           ; $8CD36E |

CODE_8CD370:
  LDA.W #$001A                              ; $8CD370 |
  JSL.L CODE_FL_8CD110                      ; $8CD373 |
  BCC CODE_8CD37F                           ; $8CD377 |
  LDA.W #$0001                              ; $8CD379 |
  STA.W $1C8E                               ; $8CD37C |

CODE_8CD37F:
  INC.B $92                                 ; $8CD37F |

CODE_8CD381:
  LDA.B $3E,X                               ; $8CD381 |
  AND.W #$00C0                              ; $8CD383 |
  LSR A                                     ; $8CD386 |
  LSR A                                     ; $8CD387 |
  LSR A                                     ; $8CD388 |
  LSR A                                     ; $8CD389 |
  LSR A                                     ; $8CD38A |
  LSR A                                     ; $8CD38B |
  STA.B $3E,X                               ; $8CD38C |
  LDA.W #$357A                              ; $8CD38E |
  STA.B $00,X                               ; $8CD391 |
  JSL.L CODE_FL_85AA07                      ; $8CD393 |
  LDA.B $34,X                               ; $8CD397 |
  ORA.W #$1880                              ; $8CD399 |
  STA.B $34,X                               ; $8CD39C |
  JML.L CODE_FL_86C63F                      ; $8CD39E |

CODE_8CD3A2:
  STZ.W $1962                               ; $8CD3A2 |
  JSL.L CODE_FL_85A646                      ; $8CD3A5 |
  RTL                                       ; $8CD3A9 |

CODE_8CD3AA:
  JSL.L CODE_FL_85ABAD                      ; $8CD3AA |
  BCC CODE_8CD3BA                           ; $8CD3AE |
  LDA.B $3E,X                               ; $8CD3B0 |
  BMI CODE_8CD3F5                           ; $8CD3B2 |
  LDA.W #$0001                              ; $8CD3B4 |
  STA.W $1C8E                               ; $8CD3B7 |

CODE_8CD3BA:
  LDA.W $1C8E                               ; $8CD3BA |
  BEQ CODE_8CD3F5                           ; $8CD3BD |
  LDA.B $46,X                               ; $8CD3BF |
  AND.W #$8000                              ; $8CD3C1 |
  BEQ CODE_8CD3F5                           ; $8CD3C4 |
  LDA.B $A6                                 ; $8CD3C6 |
  BEQ CODE_8CD3F5                           ; $8CD3C8 |
  JSL.L CODE_FL_83CF92                      ; $8CD3CA |
  CMP.W #$0002                              ; $8CD3CE |
  BCC CODE_8CD3E8                           ; $8CD3D1 |
  LDA.W $0492                               ; $8CD3D3 |
  ORA.W $0552                               ; $8CD3D6 |
  AND.W #$0010                              ; $8CD3D9 |
  BNE CODE_8CD3E8                           ; $8CD3DC |
  LDA.B $46,X                               ; $8CD3DE |
  AND.W #$0C00                              ; $8CD3E0 |
  CMP.W #$0C00                              ; $8CD3E3 |
  BNE CODE_8CD3F5                           ; $8CD3E6 |

CODE_8CD3E8:
  LDA.W #$FF00                              ; $8CD3E8 |
  STA.B $28,X                               ; $8CD3EB |
  LDA.W #$FFFF                              ; $8CD3ED |
  STA.W $1962                               ; $8CD3F0 |
  INC.B $1A,X                               ; $8CD3F3 |

CODE_8CD3F5:
  STZ.B $46,X                               ; $8CD3F5 |
  RTL                                       ; $8CD3F7 |

CODE_8CD3F8:
  JSL.L CODE_FL_85ABAD                      ; $8CD3F8 |
  BCS CODE_8CD423                           ; $8CD3FC |
  LDA.B $28,X                               ; $8CD3FE |
  BPL CODE_8CD406                           ; $8CD400 |
  EOR.W #$FFFF                              ; $8CD402 |
  INC A                                     ; $8CD405 |

CODE_8CD406:
  XBA                                       ; $8CD406 |
  ADC.B $3A,X                               ; $8CD407 |
  STA.B $3A,X                               ; $8CD409 |
  CMP.W $1C90                               ; $8CD40B |
  BNE CODE_8CD422                           ; $8CD40E |
  STZ.B $28,X                               ; $8CD410 |
  STZ.B $3A,X                               ; $8CD412 |
  STZ.W $1962                               ; $8CD414 |
  STZ.B $3C,X                               ; $8CD417 |
  STZ.W $1C8E                               ; $8CD419 |
  STZ.B $46,X                               ; $8CD41C |
  DEC.B $3E,X                               ; $8CD41E |
  DEC.B $1A,X                               ; $8CD420 |

CODE_8CD422:
  RTL                                       ; $8CD422 |

CODE_8CD423:
  LDA.B $3E,X                               ; $8CD423 |
  BNE CODE_8CD43A                           ; $8CD425 |
  LDA.W $1962                               ; $8CD427 |
  BPL CODE_8CD430                           ; $8CD42A |
  EOR.W #$FFFF                              ; $8CD42C |
  INC A                                     ; $8CD42F |

CODE_8CD430:
  CLC                                       ; $8CD430 |
  ADC.B $3C,X                               ; $8CD431 |
  STA.B $3C,X                               ; $8CD433 |
  CMP.W #$0070                              ; $8CD435 |
  BEQ CODE_8CD466                           ; $8CD438 |

CODE_8CD43A:
  LDA.B $28,X                               ; $8CD43A |
  BPL CODE_8CD442                           ; $8CD43C |
  EOR.W #$FFFF                              ; $8CD43E |
  INC A                                     ; $8CD441 |

CODE_8CD442:
  XBA                                       ; $8CD442 |
  CLC                                       ; $8CD443 |
  ADC.B $3A,X                               ; $8CD444 |
  STA.B $3A,X                               ; $8CD446 |
  CMP.W $1C90                               ; $8CD448 |
  BNE CODE_8CD46B                           ; $8CD44B |
  STZ.B $92                                 ; $8CD44D |
  STZ.B $28,X                               ; $8CD44F |
  STZ.B $3A,X                               ; $8CD451 |
  STZ.B $40,X                               ; $8CD453 |
  STZ.W $1962                               ; $8CD455 |
  STZ.B $3C,X                               ; $8CD458 |
  STZ.W $1C8E                               ; $8CD45A |
  STZ.B $46,X                               ; $8CD45D |
  LDA.W #$FFFF                              ; $8CD45F |
  STA.B $3E,X                               ; $8CD462 |
  DEC.B $1A,X                               ; $8CD464 |

CODE_8CD466:
  STZ.W $1962                               ; $8CD466 |
  STZ.B $3C,X                               ; $8CD469 |

CODE_8CD46B:
  RTL                                       ; $8CD46B |

CODE_8CD46C:
  JSL.L CODE_FL_85F885                      ; $8CD46C |
  JSL.L CODE_FL_86C3F8                      ; $8CD470 |
  PHX                                       ; $8CD474 |
  ASL A                                     ; $8CD475 |
  TAX                                       ; $8CD476 |
  LDA.L PTR16_8CD481,X                      ; $8CD477 |
  PLX                                       ; $8CD47B |
  STA.B $00                                 ; $8CD47C |
  JMP.W ($0000)                             ; $8CD47E |

PTR16_8CD481:
  dw CODE_8CD487                            ; $8CD481 |
  dw CODE_8CD4AD                            ; $8CD483 |
  dw CODE_8CD4B8                            ; $8CD485 |

CODE_8CD487:
  LDA.W #$2023                              ; $8CD487 |
  JSL.L CODE_FL_86CAEE                      ; $8CD48A |
  JSL.L CODE_FL_86C582                      ; $8CD48E |
  JSL.L CODE_FL_85A9EF                      ; $8CD492 |
  JSL.L CODE_FL_85A9B7                      ; $8CD496 |
  LDY.B $44,X                               ; $8CD49A |
  LDA.W $0006,Y                             ; $8CD49C |
  STA.B $06,X                               ; $8CD49F |
  LDA.B $3E,X                               ; $8CD4A1 |
  STA.B $26,X                               ; $8CD4A3 |
  LDA.B $40,X                               ; $8CD4A5 |
  STA.B $28,X                               ; $8CD4A7 |
  JML.L CODE_FL_86C63F                      ; $8CD4A9 |

CODE_8CD4AD:
  JSL.L CODE_FL_858AF1                      ; $8CD4AD |
  BEQ CODE_8CD4B7                           ; $8CD4B1 |
  JML.L CODE_FL_86CA36                      ; $8CD4B3 |

CODE_8CD4B7:
  RTL                                       ; $8CD4B7 |

CODE_8CD4B8:
  LDA.W #$00D5                              ; $8CD4B8 |
  JSL.L CODE_FL_86C9A7                      ; $8CD4BB |
  JSL.L CODE_FL_85A986                      ; $8CD4BF |
  JML.L CODE_FL_86CA2D                      ; $8CD4C3 |

CODE_8CD4C7:
  JSL.L CODE_FL_86C3B0                      ; $8CD4C7 |
  PHX                                       ; $8CD4CB |
  ASL A                                     ; $8CD4CC |
  TAX                                       ; $8CD4CD |
  LDA.L PTR16_8CD4D8,X                      ; $8CD4CE |
  PLX                                       ; $8CD4D2 |
  STA.B $00                                 ; $8CD4D3 |
  JMP.W ($0000)                             ; $8CD4D5 |

PTR16_8CD4D8:
  dw CODE_8CD4E0                            ; $8CD4D8 |
  dw CODE_8CD4F4                            ; $8CD4DA |
  dw CODE_8CD523                            ; $8CD4DC |
  dw CODE_8CD538                            ; $8CD4DE |

CODE_8CD4E0:
  JSL.L CODE_FL_86C7A5                      ; $8CD4E0 |
  LDA.W #$357A                              ; $8CD4E4 |
  STA.B $00,X                               ; $8CD4E7 |
  LDA.B $34,X                               ; $8CD4E9 |
  ORA.W #$1880                              ; $8CD4EB |
  STA.B $34,X                               ; $8CD4EE |
  JML.L CODE_FL_86C63F                      ; $8CD4F0 |

CODE_8CD4F4:
  LDA.B $46,X                               ; $8CD4F4 |
  AND.W #$8000                              ; $8CD4F6 |
  BEQ CODE_8CD520                           ; $8CD4F9 |
  JSL.L CODE_FL_83CF92                      ; $8CD4FB |
  CMP.W #$0002                              ; $8CD4FF |
  BCC CODE_8CD519                           ; $8CD502 |
  LDA.W $0492                               ; $8CD504 |
  ORA.W $0552                               ; $8CD507 |
  AND.W #$0010                              ; $8CD50A |
  BNE CODE_8CD519                           ; $8CD50D |
  LDA.B $46,X                               ; $8CD50F |
  AND.W #$0C00                              ; $8CD511 |
  CMP.W #$0C00                              ; $8CD514 |
  BNE CODE_8CD520                           ; $8CD517 |

CODE_8CD519:
  LDA.W #$FFA0                              ; $8CD519 |
  STA.B $28,X                               ; $8CD51C |
  INC.B $1A,X                               ; $8CD51E |

CODE_8CD520:
  STZ.B $46,X                               ; $8CD520 |
  RTL                                       ; $8CD522 |

CODE_8CD523:
  LDA.B $0D,X                               ; $8CD523 |
  STA.W $1C66                               ; $8CD525 |
  CLC                                       ; $8CD528 |
  LDA.W $1672                               ; $8CD529 |
  ADC.B $0D,X                               ; $8CD52C |
  CMP.W #$01B0                              ; $8CD52E |
  BNE CODE_8CD537                           ; $8CD531 |
  STZ.B $28,X                               ; $8CD533 |
  INC.B $1A,X                               ; $8CD535 |

CODE_8CD537:
  RTL                                       ; $8CD537 |

CODE_8CD538:
  RTL                                       ; $8CD538 |

CODE_8CD539:
  JSL.L CODE_FL_86C424                      ; $8CD539 |
  PHX                                       ; $8CD53D |
  ASL A                                     ; $8CD53E |
  TAX                                       ; $8CD53F |
  LDA.L PTR16_8CD54A,X                      ; $8CD540 |
  PLX                                       ; $8CD544 |
  STA.B $00                                 ; $8CD545 |
  JMP.W ($0000)                             ; $8CD547 |

PTR16_8CD54A:
  dw CODE_8CD54E                            ; $8CD54A |
  dw CODE_8CD56A                            ; $8CD54C |

CODE_8CD54E:
  LDA.B $4E,X                               ; $8CD54E |
  AND.W #$FF00                              ; $8CD550 |
  XBA                                       ; $8CD553 |
  STA.B $40,X                               ; $8CD554 |
  LDA.B $4E,X                               ; $8CD556 |
  AND.W #$00FF                              ; $8CD558 |
  STA.B $4E,X                               ; $8CD55B |
  LDA.B $86                                 ; $8CD55D |
  AND.W #$007F                              ; $8CD55F |
  CLC                                       ; $8CD562 |
  ADC.B $40,X                               ; $8CD563 |
  STA.B $2C,X                               ; $8CD565 |
  INC.B $1A,X                               ; $8CD567 |
  RTL                                       ; $8CD569 |

CODE_8CD56A:
  LDA.B $3E,X                               ; $8CD56A |
  BNE CODE_8CD572                           ; $8CD56C |
  JSL.L CODE_FL_86C70D                      ; $8CD56E |

CODE_8CD572:
  STZ.B $3E,X                               ; $8CD572 |
  LDA.B $4E,X                               ; $8CD574 |
  ASL A                                     ; $8CD576 |
  ASL A                                     ; $8CD577 |
  TAY                                       ; $8CD578 |
  PHB                                       ; $8CD579 |
  PHK                                       ; $8CD57A |
  PLB                                       ; $8CD57B |
  LDA.W LOOSE_OP_00D5DD,Y                   ; $8CD57C |
  PLB                                       ; $8CD57F |
  AND.W #$00FF                              ; $8CD580 |
  STA.B $00                                 ; $8CD583 |
  INY                                       ; $8CD585 |
  PHB                                       ; $8CD586 |
  PHK                                       ; $8CD587 |
  PLB                                       ; $8CD588 |
  LDA.W LOOSE_OP_00D5DD,Y                   ; $8CD589 |
  PLB                                       ; $8CD58C |
  AND.W #$00FF                              ; $8CD58D |
  STA.B $02                                 ; $8CD590 |
  INY                                       ; $8CD592 |
  STY.B $04                                 ; $8CD593 |
  LDA.B $09,X                               ; $8CD595 |
  SEC                                       ; $8CD597 |
  SBC.B $00                                 ; $8CD598 |
  STA.B $08                                 ; $8CD59A |
  LDA.B $0D,X                               ; $8CD59C |
  SEC                                       ; $8CD59E |
  SBC.B $02                                 ; $8CD59F |
  STA.B $0A                                 ; $8CD5A1 |

CODE_8CD5A3:
  LDY.B $04                                 ; $8CD5A3 |
  PHB                                       ; $8CD5A5 |
  PHK                                       ; $8CD5A6 |
  PLB                                       ; $8CD5A7 |
  LDA.W LOOSE_OP_00D5DD,Y                   ; $8CD5A8 |
  PLB                                       ; $8CD5AB |
  CLC                                       ; $8CD5AC |
  ADC.B $3C,X                               ; $8CD5AD |
  TAY                                       ; $8CD5AF |
  PHB                                       ; $8CD5B0 |
  PHK                                       ; $8CD5B1 |
  PLB                                       ; $8CD5B2 |
  LDA.W $0000,Y                             ; $8CD5B3 |
  PLB                                       ; $8CD5B6 |
  CMP.W #$0000                              ; $8CD5B7 |
  BNE CODE_8CD5C0                           ; $8CD5BA |
  STZ.B $3C,X                               ; $8CD5BC |
  BRA CODE_8CD5A3                           ; $8CD5BE |

CODE_8CD5C0:
  INC.B $3C,X                               ; $8CD5C0 |
  INC.B $3C,X                               ; $8CD5C2 |
  JSL.L CODE_FL_8580F7                      ; $8CD5C4 |
  BCC CODE_8CD5D2                           ; $8CD5C8 |
  DEC.B $3C,X                               ; $8CD5CA |
  DEC.B $3C,X                               ; $8CD5CC |
  INC.B $3E,X                               ; $8CD5CE |
  BRA CODE_8CD5DC                           ; $8CD5D0 |

CODE_8CD5D2:
  LDA.B $86                                 ; $8CD5D2 |
  AND.W #$007F                              ; $8CD5D4 |
  CLC                                       ; $8CD5D7 |
  ADC.B $40,X                               ; $8CD5D8 |
  STA.B $2C,X                               ; $8CD5DA |

CODE_8CD5DC:
  RTL                                       ; $8CD5DC |

  db $20,$20,$ED,$D5,$20,$20,$F3,$D5        ; $8CD5DD |
  db $10,$20,$F9,$D5,$10,$20,$FF,$D5        ; $8CD5E5 |
  db $DE,$00,$E0,$00,$00,$00,$E2,$00        ; $8CD5ED |
  db $E4,$00,$00,$00,$E6,$00,$E8,$00        ; $8CD5F5 |
  db $00,$00,$EA,$00                        ; $8CD5FD |
  db $EC,$00,$00,$00                        ; $8CD601 |

CODE_8CD605:
  JSL.L CODE_FL_86C424                      ; $8CD605 |
  PHX                                       ; $8CD609 |
  ASL A                                     ; $8CD60A |
  TAX                                       ; $8CD60B |
  LDA.L PTR16_8CD616,X                      ; $8CD60C |
  PLX                                       ; $8CD610 |
  STA.B $00                                 ; $8CD611 |
  JMP.W ($0000)                             ; $8CD613 |

PTR16_8CD616:
  dw CODE_8CD61A                            ; $8CD616 |
  dw CODE_8CD628                            ; $8CD618 |

CODE_8CD61A:
  JSL.L CODE_FL_85AA07                      ; $8CD61A |
  LDA.B $22,X                               ; $8CD61E |
  AND.W #$3FFF                              ; $8CD620 |
  STA.B $22,X                               ; $8CD623 |
  INC.B $1A,X                               ; $8CD625 |
  RTL                                       ; $8CD627 |

CODE_8CD628:
  JSL.L CODE_FL_86C70D                      ; $8CD628 |
  LDA.W $1672                               ; $8CD62C |
  CMP.W #$01B0                              ; $8CD62F |
  BCC CODE_8CD655                           ; $8CD632 |
  LDA.W #$010C                              ; $8CD634 |
  JSL.L CODE_FL_86C9A4                      ; $8CD637 |
  BCS CODE_8CD655                           ; $8CD63B |
  PHY                                       ; $8CD63D |
  JSL.L CODE_FL_86C432                      ; $8CD63E |
  PLY                                       ; $8CD642 |
  AND.W #$007F                              ; $8CD643 |
  ADC.W #$0040                              ; $8CD646 |
  STA.W $0009,Y                             ; $8CD649 |
  TDC                                       ; $8CD64C |
  STA.W $000D,Y                             ; $8CD64D |
  LDA.W #$0040                              ; $8CD650 |
  STA.B $2C,X                               ; $8CD653 |

CODE_8CD655:
  RTL                                       ; $8CD655 |

CODE_8CD656:
  JSL.L CODE_FL_86C407                      ; $8CD656 |
  LDA.B $1A,X                               ; $8CD65A |
  PHX                                       ; $8CD65C |
  ASL A                                     ; $8CD65D |
  TAX                                       ; $8CD65E |
  LDA.L PTR16_8CD669,X                      ; $8CD65F |
  PLX                                       ; $8CD663 |
  STA.B $00                                 ; $8CD664 |
  JMP.W ($0000)                             ; $8CD666 |

PTR16_8CD669:
  dw CODE_8CD671                            ; $8CD669 |
  dw CODE_8CD695                            ; $8CD66B |
  dw CODE_8CD699                            ; $8CD66D |
  dw CODE_8CD6BD                            ; $8CD66F |

CODE_8CD671:
  JSL.L CODE_FL_86C7AD                      ; $8CD671 |
  LDA.B $34,X                               ; $8CD675 |
  ORA.W #$B880                              ; $8CD677 |
  STA.B $34,X                               ; $8CD67A |
  JML.L CODE_FL_86C63F                      ; $8CD67C |

CODE_FN_8CD680:
  LDA.W #$3000                              ; $8CD680 |
  STA.B $00,X                               ; $8CD683 |
  LDA.B $4E,X                               ; $8CD685 |
  AND.W #$00FF                              ; $8CD687 |
  CMP.W $1C66                               ; $8CD68A |
  BEQ CODE_8CD694                           ; $8CD68D |
  LDA.W #$3010                              ; $8CD68F |
  STA.B $00,X                               ; $8CD692 |

CODE_8CD694:
  RTS                                       ; $8CD694 |

CODE_8CD695:
  JML.L CODE_FL_85A646                      ; $8CD695 |

CODE_8CD699:
  JSR.W CODE_FN_8CD680                      ; $8CD699 |
  BNE CODE_8CD6BC                           ; $8CD69C |
  LDA.B $46,X                               ; $8CD69E |
  AND.W #$0040                              ; $8CD6A0 |
  BNE CODE_8CD6A9                           ; $8CD6A3 |
  LDA.B $32,X                               ; $8CD6A5 |
  BPL CODE_8CD6BC                           ; $8CD6A7 |

CODE_8CD6A9:
  LDA.W #$000C                              ; $8CD6A9 |
  JSL.L push_sound_queue                    ; $8CD6AC |
  INC.W $1C66                               ; $8CD6B0 |
  LDA.W #$200A                              ; $8CD6B3 |
  JSL.L CODE_FL_86CAEE                      ; $8CD6B6 |
  INC.B $1A,X                               ; $8CD6BA |

CODE_8CD6BC:
  RTL                                       ; $8CD6BC |

CODE_8CD6BD:
  JSL.L CODE_FL_86C239                      ; $8CD6BD |
  RTL                                       ; $8CD6C1 |

CODE_8CD6C2:
  JSL.L CODE_FL_86C3C9                      ; $8CD6C2 |
  PHX                                       ; $8CD6C6 |
  ASL A                                     ; $8CD6C7 |
  TAX                                       ; $8CD6C8 |
  LDA.L PTR16_8CD6D3,X                      ; $8CD6C9 |
  PLX                                       ; $8CD6CD |
  STA.B $00                                 ; $8CD6CE |
  JMP.W ($0000)                             ; $8CD6D0 |

PTR16_8CD6D3:
  dw CODE_8CD6D7                            ; $8CD6D3 |
  dw CODE_8CD6EF                            ; $8CD6D5 |

CODE_8CD6D7:
  JSL.L CODE_FL_86C7A5                      ; $8CD6D7 |
  LDA.W #$357A                              ; $8CD6DB |
  STA.B $00,X                               ; $8CD6DE |
  LDA.B $34,X                               ; $8CD6E0 |
  ORA.W #$0880                              ; $8CD6E2 |
  STA.B $34,X                               ; $8CD6E5 |
  JSL.L CODE_FL_85AA07                      ; $8CD6E7 |
  JML.L CODE_FL_86C63F                      ; $8CD6EB |

CODE_8CD6EF:
  LDA.W $1C66                               ; $8CD6EF |
  XBA                                       ; $8CD6F2 |
  LSR A                                     ; $8CD6F3 |
  SEC                                       ; $8CD6F4 |
  SBC.B $3A,X                               ; $8CD6F5 |
  BEQ CODE_8CD6FD                           ; $8CD6F7 |
  INC.B $3A,X                               ; $8CD6F9 |
  DEC.B $0D,X                               ; $8CD6FB |

CODE_8CD6FD:
  RTL                                       ; $8CD6FD |

CODE_8CD6FE:
  RTL                                       ; $8CD6FE |

CODE_8CD6FF:
  JSL.L CODE_FL_85F885                      ; $8CD6FF |
  JSL.L CODE_FL_85FDDA                      ; $8CD703 |
  JSL.L CODE_FL_86C3F8                      ; $8CD707 |
  PHX                                       ; $8CD70B |
  ASL A                                     ; $8CD70C |
  TAX                                       ; $8CD70D |
  LDA.L PTR16_8CD718,X                      ; $8CD70E |
  PLX                                       ; $8CD712 |
  STA.B $00                                 ; $8CD713 |
  JMP.W ($0000)                             ; $8CD715 |

PTR16_8CD718:
  dw CODE_8CD71E                            ; $8CD718 |
  dw CODE_8CD73A                            ; $8CD71A |
  dw CODE_8CD752                            ; $8CD71C |

CODE_8CD71E:
  LDA.W #$2600                              ; $8CD71E |
  STA.B $4E,X                               ; $8CD721 |
  JSL.L CODE_FL_86C7A5                      ; $8CD723 |
  LDA.W #$0064                              ; $8CD727 |
  JSL.L CODE_FL_86CAEE                      ; $8CD72A |
  JSL.L CODE_FL_85A9B7                      ; $8CD72E |
  JSL.L CODE_FL_85A9EF                      ; $8CD732 |
  JML.L CODE_FL_86C63F                      ; $8CD736 |

CODE_8CD73A:
  JSL.L CODE_FL_858AF1                      ; $8CD73A |
  BNE CODE_8CD74F                           ; $8CD73E |
  JSL.L CODE_FL_86C82F                      ; $8CD740 |
  JSL.L CODE_FL_A8FC80                      ; $8CD744 |
  LDA.B $46,X                               ; $8CD748 |
  AND.W #$0100                              ; $8CD74A |
  BEQ CODE_8CD751                           ; $8CD74D |

CODE_8CD74F:
  INC.B $1A,X                               ; $8CD74F |

CODE_8CD751:
  RTL                                       ; $8CD751 |

CODE_8CD752:
  LDA.B $32,X                               ; $8CD752 |
  BPL CODE_8CD781                           ; $8CD754 |
  LDA.W #$000C                              ; $8CD756 |
  JSL.L push_sound_queue                    ; $8CD759 |
  LDA.W #$0019                              ; $8CD75D |
  STA.B $38,X                               ; $8CD760 |
  LDA.W #$0200                              ; $8CD762 |
  STA.B $26,X                               ; $8CD765 |
  LDA.W #$FE00                              ; $8CD767 |
  STA.B $28,X                               ; $8CD76A |
  LDA.W #$0038                              ; $8CD76C |
  STA.B $4C,X                               ; $8CD76F |
  JSL.L CODE_FL_85AB2B                      ; $8CD771 |
  BCS CODE_8CD77C                           ; $8CD775 |
  LDA.W #$FE00                              ; $8CD777 |
  STA.B $26,X                               ; $8CD77A |

CODE_8CD77C:
  DEC.B $1A,X                               ; $8CD77C |
  STZ.B $32,X                               ; $8CD77E |
  RTL                                       ; $8CD780 |

CODE_8CD781:
  JSL.L CODE_FL_85A986                      ; $8CD781 |
  JML.L CODE_FL_86CA2D                      ; $8CD785 |

CODE_8CD789:
  JSL.L CODE_FL_86C3B0                      ; $8CD789 |
  PHX                                       ; $8CD78D |
  ASL A                                     ; $8CD78E |
  TAX                                       ; $8CD78F |
  LDA.L PTR16_8CD79A,X                      ; $8CD790 |
  PLX                                       ; $8CD794 |
  STA.B $00                                 ; $8CD795 |
  JMP.W ($0000)                             ; $8CD797 |

PTR16_8CD79A:
  dw CODE_8CD7A2                            ; $8CD79A |
  dw CODE_8CD7C1                            ; $8CD79C |
  dw CODE_8CD7ED                            ; $8CD79E |
  dw CODE_8CD807                            ; $8CD7A0 |

CODE_8CD7A2:
  JSL.L CODE_FL_86C7AD                      ; $8CD7A2 |
  LDA.W #$3BA8                              ; $8CD7A6 |
  STA.B $00,X                               ; $8CD7A9 |
  SEP #$20                                  ; $8CD7AB |
  LDA.B #$F0                                ; $8CD7AD |
  STA.B $14,X                               ; $8CD7AF |
  REP #$20                                  ; $8CD7B1 |
  INC.B $1A,X                               ; $8CD7B3 |
  LDA.W $1C42                               ; $8CD7B5 |
  BNE CODE_8CD7BB                           ; $8CD7B8 |
  RTL                                       ; $8CD7BA |

CODE_8CD7BB:
  LDA.W #$0003                              ; $8CD7BB |
  STA.B $1A,X                               ; $8CD7BE |
  RTL                                       ; $8CD7C0 |

CODE_8CD7C1:
  LDA.W $1C42                               ; $8CD7C1 |
  BEQ CODE_8CD7CA                           ; $8CD7C4 |
  JSL.L CODE_FL_8CD7CB                      ; $8CD7C6 |

CODE_8CD7CA:
  RTL                                       ; $8CD7CA |

CODE_FL_8CD7CB:
  LDA.W #$0050                              ; $8CD7CB |
  STA.B $2C,X                               ; $8CD7CE |
  LDA.W #$00B4                              ; $8CD7D0 |
  JSL.L CODE_FL_8089BD                      ; $8CD7D3 |
  INC.B $1A,X                               ; $8CD7D7 |
  RTL                                       ; $8CD7D9 |

CODE_FL_8CD7DA:
  LDA.W $1C38                               ; $8CD7DA |
  AND.W #$000F                              ; $8CD7DD |
  BNE CODE_8CD7EC                           ; $8CD7E0 |
  LDY.W #$0213                              ; $8CD7E2 |
  LDA.W #$000F                              ; $8CD7E5 |
  JSL.L CODE_FL_8CFBDC                      ; $8CD7E8 |

CODE_8CD7EC:
  RTL                                       ; $8CD7EC |

CODE_8CD7ED:
  JSL.L CODE_FL_8CD7DA                      ; $8CD7ED |
  JSL.L CODE_FL_86C70D                      ; $8CD7F1 |
  INC.B $1A,X                               ; $8CD7F5 |
  LDA.B $09,X                               ; $8CD7F7 |
  SEC                                       ; $8CD7F9 |
  SBC.W #$0008                              ; $8CD7FA |
  STA.B $00                                 ; $8CD7FD |
  LDA.B $0D,X                               ; $8CD7FF |
  STA.B $02                                 ; $8CD801 |
  JML.L CODE_FL_96FBB9                      ; $8CD803 |

CODE_8CD807:
  RTL                                       ; $8CD807 |

CODE_8CD808:
  JSL.L CODE_FL_86C3B0                      ; $8CD808 |
  PHX                                       ; $8CD80C |
  ASL A                                     ; $8CD80D |
  TAX                                       ; $8CD80E |
  LDA.L PTR16_8CD819,X                      ; $8CD80F |
  PLX                                       ; $8CD813 |
  STA.B $00                                 ; $8CD814 |
  JMP.W ($0000)                             ; $8CD816 |

PTR16_8CD819:
  dw CODE_8CD821                            ; $8CD819 |
  dw CODE_8CD85A                            ; $8CD81B |
  dw CODE_8CD898                            ; $8CD81D |
  dw CODE_8CD8A6                            ; $8CD81F |

CODE_8CD821:
  JSL.L CODE_FL_85ABAD                      ; $8CD821 |
  BCC CODE_8CD82B                           ; $8CD825 |
  JML.L CODE_FL_86CA2D                      ; $8CD827 |

CODE_8CD82B:
  JSL.L CODE_FL_86C7AD                      ; $8CD82B |
  LDA.W #$010E                              ; $8CD82F |
  JSL.L CODE_FL_86C9C2                      ; $8CD832 |
  BCS CODE_8CD897                           ; $8CD836 |
  JSL.L CODE_FL_85AAB6                      ; $8CD838 |
  JSL.L CODE_FL_86C7C4                      ; $8CD83C |
  LDA.W #$3142                              ; $8CD840 |
  STA.W $0000,Y                             ; $8CD843 |
  LDA.W #$316A                              ; $8CD846 |
  STA.B $00,X                               ; $8CD849 |
  JSL.L CODE_FL_85AD48                      ; $8CD84B |
  LDA.B $34,X                               ; $8CD84F |
  ORA.W #$B080                              ; $8CD851 |
  STA.B $34,X                               ; $8CD854 |
  JML.L CODE_FL_86C63F                      ; $8CD856 |

CODE_8CD85A:
  LDA.B $32,X                               ; $8CD85A |
  BPL CODE_8CD887                           ; $8CD85C |
  TDC                                       ; $8CD85E |
  STA.L $7E7C06                             ; $8CD85F |
  LDA.B $37,X                               ; $8CD863 |
  AND.W #$00FF                              ; $8CD865 |
  CMP.W #$0002                              ; $8CD868 |
  BNE CODE_8CD88A                           ; $8CD86B |
  LDA.W #$0001                              ; $8CD86D |
  STA.L $7E7C06                             ; $8CD870 |
  LDA.W #$0040                              ; $8CD874 |
  STA.B $2C,X                               ; $8CD877 |
  LDA.W #$0080                              ; $8CD879 |
  STA.B $28,X                               ; $8CD87C |
  INC.B $1A,X                               ; $8CD87E |
  LDA.W #$0022                              ; $8CD880 |
  JSL.L push_sound_queue                    ; $8CD883 |

CODE_8CD887:
  STZ.B $32,X                               ; $8CD887 |
  RTL                                       ; $8CD889 |

CODE_8CD88A:
  LDA.W #$6AA5                              ; $8CD88A |
  STA.B $40,X                               ; $8CD88D |
  JSL.L CODE_FL_86C239                      ; $8CD88F |
  BCC CODE_8CD897                           ; $8CD893 |
  STZ.B $32,X                               ; $8CD895 |

CODE_8CD897:
  RTL                                       ; $8CD897 |

CODE_8CD898:
  LDA.W #$6AA5                              ; $8CD898 |
  STA.B $40,X                               ; $8CD89B |
  JSL.L CODE_FL_86C239                      ; $8CD89D |
  BCC CODE_8CD8A5                           ; $8CD8A1 |
  INC.B $1A,X                               ; $8CD8A3 |

CODE_8CD8A5:
  RTL                                       ; $8CD8A5 |

CODE_8CD8A6:
  LDA.W #$3172                              ; $8CD8A6 |

CODE_8CD8A9:
  STA.B $00,X                               ; $8CD8A9 |
  JSL.L CODE_FL_86C70D                      ; $8CD8AB |
  JSL.L CODE_FL_85ABC2                      ; $8CD8AF |
  JML.L CODE_FL_86CA2D                      ; $8CD8B3 |

CODE_8CD8B7:
  JSL.L CODE_FL_86C3B0                      ; $8CD8B7 |
  PHX                                       ; $8CD8BB |
  ASL A                                     ; $8CD8BC |
  TAX                                       ; $8CD8BD |
  LDA.L PTR16_8CD8C8,X                      ; $8CD8BE |
  PLX                                       ; $8CD8C2 |
  STA.B $00                                 ; $8CD8C3 |
  JMP.W ($0000)                             ; $8CD8C5 |

PTR16_8CD8C8:
  dw CODE_8CD8CC                            ; $8CD8C8 |
  dw CODE_8CD8E5                            ; $8CD8CA |

CODE_8CD8CC:
  JSL.L CODE_FL_85AAC6                      ; $8CD8CC |
  LDA.W $001A,Y                             ; $8CD8D0 |
  CMP.W #$0003                              ; $8CD8D3 |
  BNE CODE_8CD8E4                           ; $8CD8D6 |
  LDA.W #$0040                              ; $8CD8D8 |
  STA.B $2C,X                               ; $8CD8DB |
  LDA.W #$FF80                              ; $8CD8DD |
  STA.B $28,X                               ; $8CD8E0 |
  INC.B $1A,X                               ; $8CD8E2 |

CODE_8CD8E4:
  RTL                                       ; $8CD8E4 |

CODE_8CD8E5:
  LDA.W #$314A                              ; $8CD8E5 |
  BRA CODE_8CD8A9                           ; $8CD8E8 |

CODE_FL_8CD8EA:
  LDA.B $3C,X                               ; $8CD8EA |
  BPL CODE_8CD8F2                           ; $8CD8EC |
  EOR.W #$FFFF                              ; $8CD8EE |
  INC A                                     ; $8CD8F1 |

CODE_8CD8F2:
  ADC.W #$0010                              ; $8CD8F2 |
  LSR A                                     ; $8CD8F5 |
  STA.B $0E                                 ; $8CD8F6 |
  STA.B $0A                                 ; $8CD8F8 |
  STZ.B $0C                                 ; $8CD8FA |
  LDA.W #$0010                              ; $8CD8FC |
  STA.B $10                                 ; $8CD8FF |
  JML.L CODE_FL_85F8A1                      ; $8CD901 |

CODE_8CD905:
  LDA.B $3C,X                               ; $8CD905 |
  BEQ CODE_8CD912                           ; $8CD907 |
  JSL.L CODE_FL_8CD8EA                      ; $8CD909 |
  TDC                                       ; $8CD90D |
  JSL.L CODE_FL_8CED33                      ; $8CD90E |

CODE_8CD912:
  JSL.L CODE_FL_86C412                      ; $8CD912 |
  PHX                                       ; $8CD916 |
  ASL A                                     ; $8CD917 |
  TAX                                       ; $8CD918 |
  LDA.L PTR16_8CD923,X                      ; $8CD919 |
  PLX                                       ; $8CD91D |
  STA.B $00                                 ; $8CD91E |
  JMP.W ($0000)                             ; $8CD920 |

PTR16_8CD923:
  dw CODE_8CD929                            ; $8CD923 |
  dw CODE_8CD934                            ; $8CD925 |
  dw CODE_8CD934                            ; $8CD927 |

CODE_8CD929:
  LDA.W #$0080                              ; $8CD929 |
  STA.B $3E,X                               ; $8CD92C |
  INC.B $1A,X                               ; $8CD92E |
  JML.L CODE_JL_8CEC63                      ; $8CD930 |

CODE_8CD934:
  LDA.B $3C,X                               ; $8CD934 |
  BPL CODE_8CD93C                           ; $8CD936 |
  EOR.W #$FFFF                              ; $8CD938 |
  INC A                                     ; $8CD93B |

CODE_8CD93C:
  STA.B $18                                 ; $8CD93C |
  ADC.W #$0010                              ; $8CD93E |
  LSR A                                     ; $8CD941 |
  STA.B $0E                                 ; $8CD942 |
  STA.B $0A                                 ; $8CD944 |
  STZ.B $0C                                 ; $8CD946 |
  LDA.W #$0010                              ; $8CD948 |
  STA.B $10                                 ; $8CD94B |
  JSL.L CODE_FL_85A6B4                      ; $8CD94D |
  BCS CODE_8CD95E                           ; $8CD951 |
  DEC.B $18                                 ; $8CD953 |
  DEC.B $18                                 ; $8CD955 |
  LDA.B $18                                 ; $8CD957 |
  BPL CODE_8CD96C                           ; $8CD959 |
  TDC                                       ; $8CD95B |
  BRA CODE_8CD96C                           ; $8CD95C |

CODE_8CD95E:
  INC.B $18                                 ; $8CD95E |
  INC.B $18                                 ; $8CD960 |
  LDA.B $18                                 ; $8CD962 |
  CMP.W #$0040                              ; $8CD964 |
  BCC CODE_8CD96C                           ; $8CD967 |
  LDA.W #$0040                              ; $8CD969 |

CODE_8CD96C:
  LDY.B $3A,X                               ; $8CD96C |
  BPL CODE_8CD974                           ; $8CD96E |
  EOR.W #$FFFF                              ; $8CD970 |
  INC A                                     ; $8CD973 |

CODE_8CD974:
  STA.B $3C,X                               ; $8CD974 |
  RTL                                       ; $8CD976 |

CODE_8CD977:
  JSL.L CODE_FL_86C424                      ; $8CD977 |
  PHX                                       ; $8CD97B |
  ASL A                                     ; $8CD97C |
  TAX                                       ; $8CD97D |
  LDA.L PTR16_8CD988,X                      ; $8CD97E |
  PLX                                       ; $8CD982 |
  STA.B $00                                 ; $8CD983 |
  JMP.W ($0000)                             ; $8CD985 |

PTR16_8CD988:
  dw CODE_8CD98C                            ; $8CD988 |
  dw CODE_8CD9A4                            ; $8CD98A |

CODE_8CD98C:
  JSL.L CODE_FL_86C7A5                      ; $8CD98C |
  JSL.L CODE_FL_86C36A                      ; $8CD990 |
  LDA.B $34,X                               ; $8CD994 |
  ORA.W #$0888                              ; $8CD996 |
  STA.B $34,X                               ; $8CD999 |
  LDA.W #$0080                              ; $8CD99B |
  STA.B $2C,X                               ; $8CD99E |
  JML.L CODE_FL_86C63F                      ; $8CD9A0 |

CODE_8CD9A4:
  JSL.L CODE_FL_86C70D                      ; $8CD9A4 |
  LDA.B $34,X                               ; $8CD9A8 |
  EOR.W #$0080                              ; $8CD9AA |
  STA.B $34,X                               ; $8CD9AD |
  LDA.B $02,X                               ; $8CD9AF |
  EOR.W #$0080                              ; $8CD9B1 |
  STA.B $02,X                               ; $8CD9B4 |
  LDA.W #$0080                              ; $8CD9B6 |
  STA.B $2C,X                               ; $8CD9B9 |
  LDA.B $01,X                               ; $8CD9BB |
  BMI CODE_8CD9C6                           ; $8CD9BD |
  LDA.W #$001E                              ; $8CD9BF |
  JSL.L push_sound_queue                    ; $8CD9C2 |

CODE_8CD9C6:
  RTL                                       ; $8CD9C6 |

CODE_8CD9C7:
  JSL.L CODE_FL_86C3C9                      ; $8CD9C7 |
  PHX                                       ; $8CD9CB |
  ASL A                                     ; $8CD9CC |
  TAX                                       ; $8CD9CD |
  LDA.L PTR16_8CD9D8,X                      ; $8CD9CE |
  PLX                                       ; $8CD9D2 |
  STA.B $00                                 ; $8CD9D3 |
  JMP.W ($0000)                             ; $8CD9D5 |

PTR16_8CD9D8:
  dw CODE_8CD9DC                            ; $8CD9D8 |
  dw CODE_8CDA0E                            ; $8CD9DA |

CODE_8CD9DC:
  JSL.L CODE_FL_86C7A5                      ; $8CD9DC |
  LDA.W #$3140                              ; $8CD9E0 |
  STA.B $00,X                               ; $8CD9E3 |
  LDA.B $22,X                               ; $8CD9E5 |
  ORA.W #$0220                              ; $8CD9E7 |
  STA.B $22,X                               ; $8CD9EA |
  LDA.B $34,X                               ; $8CD9EC |
  ORA.W #$A000                              ; $8CD9EE |
  STA.B $34,X                               ; $8CD9F1 |
  JSL.L CODE_FL_85AA07                      ; $8CD9F3 |
  JSL.L CODE_FL_85AC74                      ; $8CD9F7 |
  LDA.W $1C38                               ; $8CD9FB |
  STA.W $1C28                               ; $8CD9FE |
  LDA.W #$0003                              ; $8CDA01 |
  STA.B $0A                                 ; $8CDA04 |
  JSL.L CODE_FL_86C29D                      ; $8CDA06 |
  JML.L CODE_FL_86C63F                      ; $8CDA0A |

CODE_8CDA0E:
  SEP #$20                                  ; $8CDA0E |
  LDA.B $37,X                               ; $8CDA10 |
  CMP.B #$04                                ; $8CDA12 |
  BNE CODE_8CDA20                           ; $8CDA14 |
  STZ.B $37,X                               ; $8CDA16 |
  REP #$20                                  ; $8CDA18 |
  STZ.B $38,X                               ; $8CDA1A |
  JSL.L CODE_FL_8CDA3C                      ; $8CDA1C |

CODE_8CDA20:
  REP #$20                                  ; $8CDA20 |
  LDA.W $1C38                               ; $8CDA22 |
  STA.W $1C28                               ; $8CDA25 |
  LDA.W #$0003                              ; $8CDA28 |
  STA.B $0A                                 ; $8CDA2B |
  JSL.L CODE_FL_86C324                      ; $8CDA2D |
  JSL.L CODE_FL_86C34B                      ; $8CDA31 |
  BCS CODE_8CDA3B                           ; $8CDA35 |
  JSL.L CODE_FL_86CA36                      ; $8CDA37 |

CODE_8CDA3B:
  RTL                                       ; $8CDA3B |

CODE_FL_8CDA3C:
  LDY.W #$0400                              ; $8CDA3C |
  LDA.B $32,X                               ; $8CDA3F |
  BIT.W #$4000                              ; $8CDA41 |
  BEQ CODE_8CDA4A                           ; $8CDA44 |
  JSL.L CODE_FL_8CDA5B                      ; $8CDA46 |

CODE_8CDA4A:
  LDY.W #$04C0                              ; $8CDA4A |
  LDA.B $32,X                               ; $8CDA4D |
  BIT.W #$2000                              ; $8CDA4F |
  BEQ CODE_8CDA58                           ; $8CDA52 |
  JSL.L CODE_FL_8CDA5B                      ; $8CDA54 |

CODE_8CDA58:
  STZ.B $32,X                               ; $8CDA58 |
  RTL                                       ; $8CDA5A |

CODE_FL_8CDA5B:
  LDA.W $0028,Y                             ; $8CDA5B |
  BMI CODE_8CDA9C                           ; $8CDA5E |
  LDA.W $0058,Y                             ; $8CDA60 |
  AND.W #$00FF                              ; $8CDA63 |
  BNE CODE_8CDA9C                           ; $8CDA66 |
  LDA.W #$0001                              ; $8CDA68 |
  STA.W $0058,Y                             ; $8CDA6B |
  LDA.B $09,X                               ; $8CDA6E |
  SEC                                       ; $8CDA70 |
  SBC.W $0009,Y                             ; $8CDA71 |
  SEP #$20                                  ; $8CDA74 |
  STA.W $0079,Y                             ; $8CDA76 |
  LDA.B #$00                                ; $8CDA79 |
  STA.W $0078,Y                             ; $8CDA7B |
  REP #$20                                  ; $8CDA7E |
  LDA.B $0D,X                               ; $8CDA80 |
  SEC                                       ; $8CDA82 |
  SBC.W $000D,Y                             ; $8CDA83 |
  CLC                                       ; $8CDA86 |
  ADC.W #$0030                              ; $8CDA87 |
  SEP #$20                                  ; $8CDA8A |
  STA.W $007B,Y                             ; $8CDA8C |
  LDA.B #$00                                ; $8CDA8F |
  STA.W $007A,Y                             ; $8CDA91 |
  REP #$20                                  ; $8CDA94 |
  LDA.W #$0000                              ; $8CDA96 |
  STA.W $0028,Y                             ; $8CDA99 |

CODE_8CDA9C:
  RTL                                       ; $8CDA9C |

CODE_8CDA9D:
  JSL.L CODE_FL_8CDB0D                      ; $8CDA9D |
  JSL.L CODE_FL_86C412                      ; $8CDAA1 |
  PHX                                       ; $8CDAA5 |
  ASL A                                     ; $8CDAA6 |
  TAX                                       ; $8CDAA7 |
  LDA.L PTR16_8CDAB2,X                      ; $8CDAA8 |
  PLX                                       ; $8CDAAC |
  STA.B $00                                 ; $8CDAAD |
  JMP.W ($0000)                             ; $8CDAAF |

PTR16_8CDAB2:
  dw CODE_8CDAB6                            ; $8CDAB2 |
  dw CODE_8CDB24                            ; $8CDAB4 |

CODE_8CDAB6:
  JSL.L CODE_FL_86C7A5                      ; $8CDAB6 |
  LDA.W #$0001                              ; $8CDABA |
  STA.B $3A,X                               ; $8CDABD |
  LDA.W #$0008                              ; $8CDABF |
  STA.B $12                                 ; $8CDAC2 |
  JSL.L CODE_FL_86C63F                      ; $8CDAC4 |
  LDA.W #$0002                              ; $8CDAC8 |
  STA.B $10                                 ; $8CDACB |

CODE_8CDACD:
  LDA.W #$0115                              ; $8CDACD |
  JSL.L CODE_FL_86C9C2                      ; $8CDAD0 |
  BCS CODE_8CDB09                           ; $8CDAD4 |
  JSL.L CODE_FL_85AAB6                      ; $8CDAD6 |
  JSL.L CODE_FL_86C7C4                      ; $8CDADA |
  LDA.W #$2015                              ; $8CDADE |
  JSL.L CODE_FL_86CAE6                      ; $8CDAE1 |
  CLC                                       ; $8CDAE5 |
  LDA.W $1672                               ; $8CDAE6 |
  ADC.B $0D,X                               ; $8CDAE9 |
  STA.W $004A,Y                             ; $8CDAEB |
  PHY                                       ; $8CDAEE |
  LDA.B $10                                 ; $8CDAEF |
  LDY.W #$0006                              ; $8CDAF1 |
  JSL.L CODE_FL_808E44                      ; $8CDAF4 |
  PLY                                       ; $8CDAF8 |
  STA.W $003A,Y                             ; $8CDAF9 |
  LDA.B $12                                 ; $8CDAFC |
  STA.W $003C,Y                             ; $8CDAFE |
  DEC.B $10                                 ; $8CDB01 |
  BNE CODE_8CDACD                           ; $8CDB03 |
  JML.L CODE_FL_85A9EF                      ; $8CDB05 |

CODE_8CDB09:
  JML.L CODE_FL_86CA36                      ; $8CDB09 |

CODE_FL_8CDB0D:
  LDA.B $3C,X                               ; $8CDB0D |
  BPL CODE_8CDB15                           ; $8CDB0F |
  EOR.W #$FFFF                              ; $8CDB11 |
  INC A                                     ; $8CDB14 |

CODE_8CDB15:
  STA.B $0C                                 ; $8CDB15 |
  STA.B $10                                 ; $8CDB17 |
  STZ.B $0A                                 ; $8CDB19 |
  LDA.W #$0002                              ; $8CDB1B |
  STA.B $0E                                 ; $8CDB1E |
  JML.L CODE_FL_85F8A1                      ; $8CDB20 |

CODE_8CDB24:
  TDC                                       ; $8CDB24 |
  JSL.L CODE_FL_8CED33                      ; $8CDB25 |
  LDA.B $3C,X                               ; $8CDB29 |
  BPL CODE_8CDB31                           ; $8CDB2B |
  EOR.W #$FFFF                              ; $8CDB2D |
  INC A                                     ; $8CDB30 |

CODE_8CDB31:
  STA.B $18                                 ; $8CDB31 |
  STA.B $0C                                 ; $8CDB33 |
  ADC.W #$0020                              ; $8CDB35 |
  STA.B $10                                 ; $8CDB38 |
  STZ.B $0A                                 ; $8CDB3A |
  LDA.W #$0008                              ; $8CDB3C |
  STA.B $0E                                 ; $8CDB3F |
  JSL.L CODE_FL_85A6B4                      ; $8CDB41 |
  BCS CODE_8CDB54                           ; $8CDB45 |
  DEC.B $18                                 ; $8CDB47 |
  DEC.B $18                                 ; $8CDB49 |
  DEC.B $18                                 ; $8CDB4B |
  LDA.B $18                                 ; $8CDB4D |
  BPL CODE_8CDB64                           ; $8CDB4F |
  TDC                                       ; $8CDB51 |
  BRA CODE_8CDB64                           ; $8CDB52 |

CODE_8CDB54:
  INC.B $18                                 ; $8CDB54 |
  INC.B $18                                 ; $8CDB56 |
  INC.B $18                                 ; $8CDB58 |
  LDA.B $18                                 ; $8CDB5A |
  CMP.W #$0038                              ; $8CDB5C |
  BCC CODE_8CDB64                           ; $8CDB5F |
  LDA.W #$0038                              ; $8CDB61 |

CODE_8CDB64:
  LDY.B $3A,X                               ; $8CDB64 |
  BPL CODE_8CDB6C                           ; $8CDB66 |
  EOR.W #$FFFF                              ; $8CDB68 |
  INC A                                     ; $8CDB6B |

CODE_8CDB6C:
  STA.B $3C,X                               ; $8CDB6C |
  RTL                                       ; $8CDB6E |

CODE_8CDB6F:
  INC.B $3E,X                               ; $8CDB6F |
  JSL.L CODE_FL_86C3F8                      ; $8CDB71 |
  LDY.B $44,X                               ; $8CDB75 |
  LDA.W $001A,Y                             ; $8CDB77 |
  BNE CODE_8CDB80                           ; $8CDB7A |
  JML.L CODE_FL_86CA2D                      ; $8CDB7C |

CODE_8CDB80:
  LDA.B $3E,X                               ; $8CDB80 |
  CMP.W #$000D                              ; $8CDB82 |
  BCC CODE_8CDB8A                           ; $8CDB85 |
  TDC                                       ; $8CDB87 |
  STA.B $3E,X                               ; $8CDB88 |

CODE_8CDB8A:
  CMP.B $3A,X                               ; $8CDB8A |
  BNE CODE_8CDBB2                           ; $8CDB8C |
  LDA.W $003C,Y                             ; $8CDB8E |
  PHP                                       ; $8CDB91 |
  BPL CODE_8CDB98                           ; $8CDB92 |
  EOR.W #$FFFF                              ; $8CDB94 |
  INC A                                     ; $8CDB97 |

CODE_8CDB98:
  ASL A                                     ; $8CDB98 |
  ASL A                                     ; $8CDB99 |
  ASL A                                     ; $8CDB9A |
  ASL A                                     ; $8CDB9B |
  ADC.W #$0060                              ; $8CDB9C |
  PLP                                       ; $8CDB9F |
  BPL CODE_8CDBA6                           ; $8CDBA0 |
  EOR.W #$FFFF                              ; $8CDBA2 |
  INC A                                     ; $8CDBA5 |

CODE_8CDBA6:
  STA.B $28,X                               ; $8CDBA6 |
  CLC                                       ; $8CDBA8 |
  LDA.B $4A,X                               ; $8CDBA9 |
  SBC.W $1672                               ; $8CDBAB |
  ADC.B $3C,X                               ; $8CDBAE |
  STA.B $0D,X                               ; $8CDBB0 |

CODE_8CDBB2:
  RTL                                       ; $8CDBB2 |

CODE_8CDBB3:
  JSL.L CODE_FL_85F885                      ; $8CDBB3 |
  JSL.L CODE_FL_86C424                      ; $8CDBB7 |
  PHX                                       ; $8CDBBB |
  ASL A                                     ; $8CDBBC |
  TAX                                       ; $8CDBBD |
  LDA.L PTR16_8CDBC8,X                      ; $8CDBBE |
  PLX                                       ; $8CDBC2 |
  STA.B $00                                 ; $8CDBC3 |
  JMP.W ($0000)                             ; $8CDBC5 |

PTR16_8CDBC8:
  dw CODE_8CDBD4                            ; $8CDBC8 |
  dw CODE_8CDBEF                            ; $8CDBCA |
  dw CODE_8CDC0C                            ; $8CDBCC |
  dw CODE_8CDC42                            ; $8CDBCE |
  dw CODE_8CDCB6                            ; $8CDBD0 |
  dw CODE_8CDCCA                            ; $8CDBD2 |

CODE_8CDBD4:
  JSL.L CODE_FL_86C7AD                      ; $8CDBD4 |
  LDA.W #$3B4E                              ; $8CDBD8 |
  STA.B $00,X                               ; $8CDBDB |
  JSL.L CODE_FL_85ABE7                      ; $8CDBDD |
  BCS CODE_8CDBEE                           ; $8CDBE1 |
  LDA.B $34,X                               ; $8CDBE3 |
  ORA.W #$6020                              ; $8CDBE5 |
  STA.B $34,X                               ; $8CDBE8 |
  JML.L CODE_FL_86C63F                      ; $8CDBEA |

CODE_8CDBEE:
  RTL                                       ; $8CDBEE |

CODE_8CDBEF:
  LDA.B $32,X                               ; $8CDBEF |
  BPL CODE_8CDC0B                           ; $8CDBF1 |
  JSL.L CODE_FL_85A8C3                      ; $8CDBF3 |
  STZ.B $32,X                               ; $8CDBF7 |
  CPY.B $A6                                 ; $8CDBF9 |
  BNE CODE_8CDC0B                           ; $8CDBFB |
  INC.B $1A,X                               ; $8CDBFD |
  LDA.W #$0001                              ; $8CDBFF |
  STA.B $E4                                 ; $8CDC02 |
  LDA.W #$0088                              ; $8CDC04 |
  JSL.L CODE_FL_8089BD                      ; $8CDC07 |

CODE_8CDC0B:
  RTL                                       ; $8CDC0B |

CODE_8CDC0C:
  LDY.B $A6                                 ; $8CDC0C |
  CPY.W #$0400                              ; $8CDC0E |
  BNE CODE_8CDC1B                           ; $8CDC11 |
  LDA.B $09,X                               ; $8CDC13 |
  JSL.L CODE_FL_8B81B8                      ; $8CDC15 |
  BRA CODE_8CDC21                           ; $8CDC19 |

CODE_8CDC1B:
  LDA.B $09,X                               ; $8CDC1B |
  JSL.L CODE_FL_8B81BD                      ; $8CDC1D |

CODE_8CDC21:
  BNE CODE_8CDC41                           ; $8CDC21 |
  STZ.W $0498                               ; $8CDC23 |
  STZ.W $0558                               ; $8CDC26 |
  LDA.W #$00A0                              ; $8CDC29 |
  STA.B $2C,X                               ; $8CDC2C |
  LDA.W #$003F                              ; $8CDC2E |
  STA.W $1FDE                               ; $8CDC31 |
  LDA.W #$0000                              ; $8CDC34 |
  STA.W $1FDC                               ; $8CDC37 |
  LDA.W #$0001                              ; $8CDC3A |
  STA.B $3E,X                               ; $8CDC3D |
  INC.B $1A,X                               ; $8CDC3F |

CODE_8CDC41:
  RTL                                       ; $8CDC41 |

CODE_8CDC42:
  LDY.B $A6                                 ; $8CDC42 |
  LDA.W #$007F                              ; $8CDC44 |
  STA.W $0048,Y                             ; $8CDC47 |
  LDA.W $1C38                               ; $8CDC4A |
  AND.W #$000F                              ; $8CDC4D |
  BNE CODE_8CDC63                           ; $8CDC50 |
  LDA.W #$001E                              ; $8CDC52 |
  JSL.L push_sound_queue                    ; $8CDC55 |
  LDY.W #$0213                              ; $8CDC59 |
  LDA.W #$000F                              ; $8CDC5C |
  JSL.L CODE_FL_8CFBDC                      ; $8CDC5F |

CODE_8CDC63:
  INC.B $3C,X                               ; $8CDC63 |
  LDA.B $3C,X                               ; $8CDC65 |
  CMP.W #$0020                              ; $8CDC67 |
  BCC CODE_8CDC73                           ; $8CDC6A |
  LDA.B $3E,X                               ; $8CDC6C |
  ASL A                                     ; $8CDC6E |
  STA.B $3E,X                               ; $8CDC6F |
  STZ.B $3C,X                               ; $8CDC71 |

CODE_8CDC73:
  CLC                                       ; $8CDC73 |
  LDA.B $3E,X                               ; $8CDC74 |
  ADC.B $3A,X                               ; $8CDC76 |
  STA.B $3A,X                               ; $8CDC78 |
  LDA.B $3A,X                               ; $8CDC7A |
  JSL.L CODE_FL_808D48                      ; $8CDC7C |
  JSL.L CODE_FL_86C70D                      ; $8CDC80 |
  TDC                                       ; $8CDC84 |
  STA.W $1FDE                               ; $8CDC85 |
  INC.B $1A,X                               ; $8CDC88 |
  STZ.B $34,X                               ; $8CDC8A |
  JSL.L CODE_FL_85AC15                      ; $8CDC8C |
  LDA.W #$0040                              ; $8CDC90 |
  STA.B $2C,X                               ; $8CDC93 |
  LDA.B $4E,X                               ; $8CDC95 |
  AND.W #$0100                              ; $8CDC97 |
  BNE CODE_8CDCA9                           ; $8CDC9A |
  LDA.W #$C443                              ; $8CDC9C |
  STA.B $40,X                               ; $8CDC9F |
  LDA.W #$0001                              ; $8CDCA1 |
  STA.L $7002F0                             ; $8CDCA4 |
  RTL                                       ; $8CDCA8 |

CODE_8CDCA9:
  LDA.W #$C484                              ; $8CDCA9 |
  STA.B $40,X                               ; $8CDCAC |
  LDA.W #$0001                              ; $8CDCAE |
  STA.L $7002F2                             ; $8CDCB1 |
  RTL                                       ; $8CDCB5 |

CODE_8CDCB6:
  JSL.L CODE_FL_86C70D                      ; $8CDCB6 |
  LDY.B $A6                                 ; $8CDCBA |
  JSL.L CODE_FL_8098E4                      ; $8CDCBC |
  JSL.L CODE_FL_8098FD                      ; $8CDCC0 |
  BCC CODE_8CDCCA                           ; $8CDCC4 |
  INC.B $1A,X                               ; $8CDCC6 |
  STZ.B $E4                                 ; $8CDCC8 |

CODE_8CDCCA:
  RTL                                       ; $8CDCCA |

CODE_8CDCCB:
  JSL.L CODE_FL_86C3C9                      ; $8CDCCB |
  PHX                                       ; $8CDCCF |
  ASL A                                     ; $8CDCD0 |
  TAX                                       ; $8CDCD1 |
  LDA.L PTR16_8CDCDC,X                      ; $8CDCD2 |
  PLX                                       ; $8CDCD6 |
  STA.B $00                                 ; $8CDCD7 |
  JMP.W ($0000)                             ; $8CDCD9 |

PTR16_8CDCDC:
  dw CODE_8CDCE6                            ; $8CDCDC |
  dw CODE_8CDD31                            ; $8CDCDE |
  dw CODE_8CDD47                            ; $8CDCE0 |
  dw CODE_8CDD74                            ; $8CDCE2 |
  dw CODE_8CDD8A                            ; $8CDCE4 |

CODE_8CDCE6:
  JSL.L CODE_FL_85AC74                      ; $8CDCE6 |
  LDA.W #$1898                              ; $8CDCEA |
  STA.B $04,X                               ; $8CDCED |
  JSL.L CODE_FL_86C47E                      ; $8CDCEF |
  JSL.L CODE_FL_86C7AD                      ; $8CDCF3 |
  LDA.W #$012D                              ; $8CDCF7 |
  JSL.L CODE_FL_86C97C                      ; $8CDCFA |
  BCS CODE_8CDD2D                           ; $8CDCFE |
  JSL.L CODE_FL_85AAB6                      ; $8CDD00 |
  LDA.B $4E,X                               ; $8CDD04 |
  STA.W $004E,Y                             ; $8CDD06 |
  LDA.B $34,X                               ; $8CDD09 |
  ORA.W #$B888                              ; $8CDD0B |
  STA.B $34,X                               ; $8CDD0E |
  LDA.W #$34BC                              ; $8CDD10 |
  STA.B $00,X                               ; $8CDD13 |
  LDA.W #$FFF0                              ; $8CDD15 |
  STA.B $09,X                               ; $8CDD18 |
  JSL.L CODE_FL_8CDEE9                      ; $8CDD1A |
  JSL.L CODE_FL_86C63F                      ; $8CDD1E |
  LDA.W #$0001                              ; $8CDD22 |
  STA.B $3C,X                               ; $8CDD25 |
  LDA.W #$0003                              ; $8CDD27 |
  STA.B $1A,X                               ; $8CDD2A |
  RTL                                       ; $8CDD2C |

CODE_8CDD2D:
  JML.L CODE_FL_86CA36                      ; $8CDD2D |

CODE_8CDD31:
  LDA.W #$0050                              ; $8CDD31 |
  JSL.L CODE_FL_8CDDB4                      ; $8CDD34 |
  JSL.L CODE_FL_86C70D                      ; $8CDD38 |
  JSL.L CODE_FL_8AF93E                      ; $8CDD3C |
  LDA.B $3E,X                               ; $8CDD40 |
  STA.B $26,X                               ; $8CDD42 |
  INC.B $1A,X                               ; $8CDD44 |
  RTL                                       ; $8CDD46 |

CODE_8CDD47:
  LDA.W #$0050                              ; $8CDD47 |
  JSL.L CODE_FL_8CDDB4                      ; $8CDD4A |
  JSL.L CODE_FL_8CDE00                      ; $8CDD4E |
  LDA.B $09,X                               ; $8CDD52 |
  BMI CODE_8CDD73                           ; $8CDD54 |
  CMP.B $40,X                               ; $8CDD56 |
  BCC CODE_8CDD73                           ; $8CDD58 |
  STZ.B $26,X                               ; $8CDD5A |
  LDA.W #$FFFC                              ; $8CDD5C |
  JSL.L CODE_FL_86CB2D                      ; $8CDD5F |
  BCC CODE_8CDD6C                           ; $8CDD63 |
  LDA.W #$0038                              ; $8CDD65 |
  JSL.L push_sound_queue                    ; $8CDD68 |

CODE_8CDD6C:
  LDA.W #$0000                              ; $8CDD6C |
  STA.B $2C,X                               ; $8CDD6F |
  INC.B $1A,X                               ; $8CDD71 |

CODE_8CDD73:
  RTL                                       ; $8CDD73 |

CODE_8CDD74:
  LDA.W #$0050                              ; $8CDD74 |
  JSL.L CODE_FL_8CDDB4                      ; $8CDD77 |
  JSL.L CODE_FL_86C70D                      ; $8CDD7B |
  LDA.B $3E,X                               ; $8CDD7F |
  EOR.W #$FFFF                              ; $8CDD81 |
  INC A                                     ; $8CDD84 |
  STA.B $26,X                               ; $8CDD85 |
  INC.B $1A,X                               ; $8CDD87 |
  RTL                                       ; $8CDD89 |

CODE_8CDD8A:
  LDA.W #$0050                              ; $8CDD8A |
  JSL.L CODE_FL_8CDDB4                      ; $8CDD8D |
  JSL.L CODE_FL_8CDE00                      ; $8CDD91 |
  LDA.B $09,X                               ; $8CDD95 |
  BPL CODE_8CDD73                           ; $8CDD97 |
  CMP.W #$FFF0                              ; $8CDD99 |
  BCS CODE_8CDD73                           ; $8CDD9C |
  LDA.W #$FFF0                              ; $8CDD9E |
  STA.B $09,X                               ; $8CDDA1 |
  STZ.B $26,X                               ; $8CDDA3 |
  LDA.B $42,X                               ; $8CDDA5 |
  STA.B $2C,X                               ; $8CDDA7 |
  LDY.B $44,X                               ; $8CDDA9 |
  STA.W $002C,Y                             ; $8CDDAB |
  LDA.W #$0001                              ; $8CDDAE |
  STA.B $1A,X                               ; $8CDDB1 |
  RTL                                       ; $8CDDB3 |

CODE_FL_8CDDB4:
  STA.B $10                                 ; $8CDDB4 |
  JSL.L CODE_FL_86C27C                      ; $8CDDB6 |
  BEQ CODE_8CDDC0                           ; $8CDDBA |
  JSL.L CODE_FL_8CDDC6                      ; $8CDDBC |

CODE_8CDDC0:
  JSL.L CODE_FL_86C287                      ; $8CDDC0 |
  BEQ CODE_8CDDFD                           ; $8CDDC4 |

CODE_FL_8CDDC6:
  LDA.W $0038,Y                             ; $8CDDC6 |
  BNE CODE_8CDDFD                           ; $8CDDC9 |
  LDA.B $46,X                               ; $8CDDCB |
  AND.W #$4000                              ; $8CDDCD |
  BNE CODE_8CDDEC                           ; $8CDDD0 |
  LDA.B $46,X                               ; $8CDDD2 |
  AND.W #$1000                              ; $8CDDD4 |
  BEQ CODE_8CDDFD                           ; $8CDDD7 |
  CLC                                       ; $8CDDD9 |
  LDA.B $09,X                               ; $8CDDDA |
  ADC.B $10                                 ; $8CDDDC |
  SBC.W $0009,Y                             ; $8CDDDE |
  BPL CODE_8CDDE7                           ; $8CDDE1 |
  EOR.W #$FFFF                              ; $8CDDE3 |
  INC A                                     ; $8CDDE6 |

CODE_8CDDE7:
  CMP.W #$0018                              ; $8CDDE7 |
  BCS CODE_8CDDFD                           ; $8CDDEA |

CODE_8CDDEC:
  TXA                                       ; $8CDDEC |
  LSR A                                     ; $8CDDED |
  LSR A                                     ; $8CDDEE |
  LSR A                                     ; $8CDDEF |
  LSR A                                     ; $8CDDF0 |
  ORA.W #$8000                              ; $8CDDF1 |
  STA.W $0032,Y                             ; $8CDDF4 |
  LDA.W #$0019                              ; $8CDDF7 |
  STA.W $0038,Y                             ; $8CDDFA |

CODE_8CDDFD:
  STZ.B $46,X                               ; $8CDDFD |
  RTL                                       ; $8CDDFF |

CODE_FL_8CDE00:
  LDA.B $3C,X                               ; $8CDE00 |
  BEQ CODE_8CDE0B                           ; $8CDE02 |
  LDA.B $09,X                               ; $8CDE04 |
  AND.W #$0018                              ; $8CDE06 |
  BRA CODE_8CDE1D                           ; $8CDE09 |

CODE_8CDE0B:
  LDA.B $09,X                               ; $8CDE0B |
  AND.W #$0018                              ; $8CDE0D |
  CMP.B $3A,X                               ; $8CDE10 |
  BEQ CODE_8CDE71                           ; $8CDE12 |
  STA.B $3A,X                               ; $8CDE14 |
  LDA.W #$0003                              ; $8CDE16 |
  STA.B $3C,X                               ; $8CDE19 |
  LDA.B $3A,X                               ; $8CDE1B |

CODE_8CDE1D:
  LSR A                                     ; $8CDE1D |
  LSR A                                     ; $8CDE1E |
  STA.B $18                                 ; $8CDE1F |
  LDA.B $09,X                               ; $8CDE21 |
  AND.W #$FFE0                              ; $8CDE23 |
  CLC                                       ; $8CDE26 |
  ADC.W #$0030                              ; $8CDE27 |
  STA.B $08                                 ; $8CDE2A |
  CLC                                       ; $8CDE2C |
  LDA.B $0D,X                               ; $8CDE2D |
  ADC.W #$FFE0                              ; $8CDE2F |
  STA.B $0A                                 ; $8CDE32 |
  LDA.B $3C,X                               ; $8CDE34 |
  AND.W #$0001                              ; $8CDE36 |
  BEQ CODE_8CDE4E                           ; $8CDE39 |
  CLC                                       ; $8CDE3B |
  LDA.B $18                                 ; $8CDE3C |
  ADC.W #$00BA                              ; $8CDE3E |
  JSL.L CODE_FL_858256                      ; $8CDE41 |
  BCS CODE_8CDE72                           ; $8CDE45 |
  LDA.B $3C,X                               ; $8CDE47 |
  AND.W #$FFFE                              ; $8CDE49 |
  STA.B $3C,X                               ; $8CDE4C |

CODE_8CDE4E:
  LDA.B $26,X                               ; $8CDE4E |
  BPL CODE_8CDE6A                           ; $8CDE50 |
  LDA.B $18                                 ; $8CDE52 |
  CMP.W #$0006                              ; $8CDE54 |
  BNE CODE_8CDE6A                           ; $8CDE57 |
  CLC                                       ; $8CDE59 |
  LDA.B $08                                 ; $8CDE5A |
  ADC.W #$0020                              ; $8CDE5C |
  STA.B $08                                 ; $8CDE5F |
  LDA.W #$00C2                              ; $8CDE61 |
  JSL.L CODE_FL_858256                      ; $8CDE64 |
  BCS CODE_8CDE72                           ; $8CDE68 |

CODE_8CDE6A:
  LDA.B $3C,X                               ; $8CDE6A |
  AND.W #$FFFD                              ; $8CDE6C |
  STA.B $3C,X                               ; $8CDE6F |

CODE_8CDE71:
  RTL                                       ; $8CDE71 |

CODE_8CDE72:
  PHP                                       ; $8CDE72 |
  PLA                                       ; $8CDE73 |
  PLA                                       ; $8CDE74 |
  RTL                                       ; $8CDE75 |

CODE_FL_8CDE76:
  LDA.B $3C,X                               ; $8CDE76 |
  BEQ CODE_8CDE81                           ; $8CDE78 |
  LDA.B $09,X                               ; $8CDE7A |
  AND.W #$0018                              ; $8CDE7C |
  BRA CODE_8CDE93                           ; $8CDE7F |

CODE_8CDE81:
  LDA.B $09,X                               ; $8CDE81 |
  AND.W #$0018                              ; $8CDE83 |
  CMP.B $3A,X                               ; $8CDE86 |
  BEQ CODE_8CDEE4                           ; $8CDE88 |
  STA.B $3A,X                               ; $8CDE8A |
  LDA.W #$0003                              ; $8CDE8C |
  STA.B $3C,X                               ; $8CDE8F |
  LDA.B $3A,X                               ; $8CDE91 |

CODE_8CDE93:
  LSR A                                     ; $8CDE93 |
  LSR A                                     ; $8CDE94 |
  STA.B $18                                 ; $8CDE95 |
  LDA.B $09,X                               ; $8CDE97 |
  AND.W #$FFE0                              ; $8CDE99 |
  SEC                                       ; $8CDE9C |
  SBC.W #$0030                              ; $8CDE9D |
  STA.B $08                                 ; $8CDEA0 |
  CLC                                       ; $8CDEA2 |
  LDA.B $0D,X                               ; $8CDEA3 |
  ADC.W #$FFE0                              ; $8CDEA5 |
  STA.B $0A                                 ; $8CDEA8 |
  LDA.B $3C,X                               ; $8CDEAA |
  AND.W #$0001                              ; $8CDEAC |
  BEQ CODE_8CDEC4                           ; $8CDEAF |
  CLC                                       ; $8CDEB1 |
  LDA.B $18                                 ; $8CDEB2 |
  ADC.W #$00C4                              ; $8CDEB4 |
  JSL.L CODE_FL_858256                      ; $8CDEB7 |
  BCS CODE_8CDEE5                           ; $8CDEBB |
  LDA.B $3C,X                               ; $8CDEBD |
  AND.W #$FFFE                              ; $8CDEBF |
  STA.B $3C,X                               ; $8CDEC2 |

CODE_8CDEC4:
  LDA.B $26,X                               ; $8CDEC4 |
  BMI CODE_8CDEDD                           ; $8CDEC6 |
  LDA.B $18                                 ; $8CDEC8 |
  BNE CODE_8CDEDD                           ; $8CDECA |
  SEC                                       ; $8CDECC |
  LDA.B $08                                 ; $8CDECD |
  SBC.W #$0020                              ; $8CDECF |
  STA.B $08                                 ; $8CDED2 |
  LDA.W #$00CC                              ; $8CDED4 |
  JSL.L CODE_FL_858256                      ; $8CDED7 |
  BCS CODE_8CDEE5                           ; $8CDEDB |

CODE_8CDEDD:
  LDA.B $3C,X                               ; $8CDEDD |
  AND.W #$FFFD                              ; $8CDEDF |
  STA.B $3C,X                               ; $8CDEE2 |

CODE_8CDEE4:
  RTL                                       ; $8CDEE4 |

CODE_8CDEE5:
  PHP                                       ; $8CDEE5 |
  PLA                                       ; $8CDEE6 |
  PLA                                       ; $8CDEE7 |
  RTL                                       ; $8CDEE8 |

CODE_FL_8CDEE9:
  LDA.B $4E,X                               ; $8CDEE9 |
  AND.W #$00FF                              ; $8CDEEB |
  ASL A                                     ; $8CDEEE |
  ASL A                                     ; $8CDEEF |
  TAY                                       ; $8CDEF0 |
  PHB                                       ; $8CDEF1 |
  PHK                                       ; $8CDEF2 |
  PLB                                       ; $8CDEF3 |
  LDA.W CODE_00DF2E,Y                       ; $8CDEF4 |
  STA.B $3E,X                               ; $8CDEF7 |
  LSR A                                     ; $8CDEF9 |
  LSR A                                     ; $8CDEFA |
  SEC                                       ; $8CDEFB |
  SBC.W #$0010                              ; $8CDEFC |
  STA.B $40,X                               ; $8CDEFF |
  LDA.W CODE_00DF30,Y                       ; $8CDF01 |
  STA.B $42,X                               ; $8CDF04 |
  PLB                                       ; $8CDF06 |
  RTL                                       ; $8CDF07 |

CODE_FL_8CDF08:
  LDA.B $4E,X                               ; $8CDF08 |
  AND.W #$00FF                              ; $8CDF0A |
  ASL A                                     ; $8CDF0D |
  ASL A                                     ; $8CDF0E |
  TAY                                       ; $8CDF0F |
  PHB                                       ; $8CDF10 |
  PHK                                       ; $8CDF11 |
  PLB                                       ; $8CDF12 |
  SEC                                       ; $8CDF13 |
  LDA.W CODE_00DF2E,Y                       ; $8CDF14 |
  SBC.W #$0180                              ; $8CDF17 |
  STA.B $3E,X                               ; $8CDF1A |
  LDA.W CODE_00DF2E,Y                       ; $8CDF1C |
  LSR A                                     ; $8CDF1F |
  LSR A                                     ; $8CDF20 |
  CLC                                       ; $8CDF21 |
  ADC.W #$00B0                              ; $8CDF22 |
  STA.B $40,X                               ; $8CDF25 |
  LDA.W CODE_00DF30,Y                       ; $8CDF27 |
  STA.B $42,X                               ; $8CDF2A |
  PLB                                       ; $8CDF2C |
  RTL                                       ; $8CDF2D |

  db $00,$01,$20,$00,$80,$00,$80,$00        ; $8CDF2E |
  db $40,$01,$10,$00                        ; $8CDF36 |
  db $40,$00,$10,$00,$C0,$00,$10,$00        ; $8CDF3A |
  db $80,$00,$20,$00,$00,$01,$10,$00        ; $8CDF42 |
  db $40,$00,$40,$00,$40,$01,$00,$00        ; $8CDF4A |
  db $00,$00,$60,$00                        ; $8CDF52 |

CODE_8CDF56:
  JSL.L CODE_FL_85AAC6                      ; $8CDF56 |
  JSL.L CODE_FL_86C3C9                      ; $8CDF5A |
  PHX                                       ; $8CDF5E |
  ASL A                                     ; $8CDF5F |
  TAX                                       ; $8CDF60 |
  LDA.L PTR16_8CDF6B,X                      ; $8CDF61 |
  PLX                                       ; $8CDF65 |
  STA.B $00                                 ; $8CDF66 |
  JMP.W ($0000)                             ; $8CDF68 |

PTR16_8CDF6B:
  dw CODE_8CDF75                            ; $8CDF6B |
  dw CODE_8CDFA6                            ; $8CDF6D |
  dw CODE_8CDFBC                            ; $8CDF6F |
  dw CODE_8CDFD7                            ; $8CDF71 |
  dw CODE_8CDFED                            ; $8CDF73 |

CODE_8CDF75:
  JSL.L CODE_FL_85AC74                      ; $8CDF75 |
  LDA.W #$1898                              ; $8CDF79 |
  STA.B $04,X                               ; $8CDF7C |
  JSL.L CODE_FL_86C7A5                      ; $8CDF7E |
  LDA.B $34,X                               ; $8CDF82 |
  ORA.W #$B888                              ; $8CDF84 |
  STA.B $34,X                               ; $8CDF87 |
  LDA.W #$34BC                              ; $8CDF89 |
  STA.B $00,X                               ; $8CDF8C |
  LDA.W #$0110                              ; $8CDF8E |
  STA.B $09,X                               ; $8CDF91 |
  JSL.L CODE_FL_8CDF08                      ; $8CDF93 |
  JSL.L CODE_FL_86C63F                      ; $8CDF97 |
  LDA.W #$0001                              ; $8CDF9B |
  STA.B $3C,X                               ; $8CDF9E |
  LDA.W #$0003                              ; $8CDFA0 |
  STA.B $1A,X                               ; $8CDFA3 |
  RTL                                       ; $8CDFA5 |

CODE_8CDFA6:
  LDA.W #$FFB0                              ; $8CDFA6 |
  JSL.L CODE_FL_8CDDB4                      ; $8CDFA9 |
  JSL.L CODE_FL_86C70D                      ; $8CDFAD |
  JSL.L CODE_FL_8AF93E                      ; $8CDFB1 |
  LDA.B $3E,X                               ; $8CDFB5 |
  STA.B $26,X                               ; $8CDFB7 |
  INC.B $1A,X                               ; $8CDFB9 |
  RTL                                       ; $8CDFBB |

CODE_8CDFBC:
  LDA.W #$FFB0                              ; $8CDFBC |
  JSL.L CODE_FL_8CDDB4                      ; $8CDFBF |
  JSL.L CODE_FL_8CDE76                      ; $8CDFC3 |
  LDA.B $09,X                               ; $8CDFC7 |
  CMP.B $40,X                               ; $8CDFC9 |
  BCS CODE_8CDFD6                           ; $8CDFCB |
  STZ.B $26,X                               ; $8CDFCD |
  LDA.W #$0000                              ; $8CDFCF |
  STA.B $2C,X                               ; $8CDFD2 |
  INC.B $1A,X                               ; $8CDFD4 |

CODE_8CDFD6:
  RTL                                       ; $8CDFD6 |

CODE_8CDFD7:
  LDA.W #$FFB0                              ; $8CDFD7 |
  JSL.L CODE_FL_8CDDB4                      ; $8CDFDA |
  JSL.L CODE_FL_86C70D                      ; $8CDFDE |
  LDA.B $3E,X                               ; $8CDFE2 |
  EOR.W #$FFFF                              ; $8CDFE4 |
  INC A                                     ; $8CDFE7 |
  STA.B $26,X                               ; $8CDFE8 |
  INC.B $1A,X                               ; $8CDFEA |
  RTL                                       ; $8CDFEC |

CODE_8CDFED:
  LDA.W #$FFB0                              ; $8CDFED |
  JSL.L CODE_FL_8CDDB4                      ; $8CDFF0 |
  JSL.L CODE_FL_8CDE76                      ; $8CDFF4 |
  LDA.B $09,X                               ; $8CDFF8 |
  CMP.W #$0110                              ; $8CDFFA |
  BCC CODE_8CDFD6                           ; $8CDFFD |
  LDA.W #$0110                              ; $8CDFFF |
  STA.B $09,X                               ; $8CE002 |
  STZ.B $26,X                               ; $8CE004 |
  LDA.B $42,X                               ; $8CE006 |
  STA.B $2C,X                               ; $8CE008 |
  LDY.B $44,X                               ; $8CE00A |
  STA.W $002C,Y                             ; $8CE00C |
  LDA.W #$0001                              ; $8CE00F |
  STA.B $1A,X                               ; $8CE012 |
  RTL                                       ; $8CE014 |

CODE_8CE015:
  JSL.L CODE_FL_86C412                      ; $8CE015 |
  PHX                                       ; $8CE019 |
  ASL A                                     ; $8CE01A |
  TAX                                       ; $8CE01B |
  LDA.L PTR16_8CE026,X                      ; $8CE01C |
  PLX                                       ; $8CE020 |
  STA.B $00                                 ; $8CE021 |
  JMP.W ($0000)                             ; $8CE023 |

PTR16_8CE026:
  dw CODE_8CE032                            ; $8CE026 |
  dw CODE_8CE0B0                            ; $8CE028 |
  dw CODE_8CE152                            ; $8CE02A |
  dw CODE_8CE1B1                            ; $8CE02C |
  dw CODE_8CE1DC                            ; $8CE02E |
  dw CODE_8CE143                            ; $8CE030 |

CODE_8CE032:
  JSL.L CODE_FL_86C7AD                      ; $8CE032 |
  LDA.W #$7FFF                              ; $8CE036 |
  STA.W $1C66                               ; $8CE039 |
  LDA.B $8E                                 ; $8CE03C |
  CMP.W #$005B                              ; $8CE03E |
  BEQ CODE_8CE080                           ; $8CE041 |
  CMP.W #$005C                              ; $8CE043 |
  BEQ CODE_8CE080                           ; $8CE046 |
  LDA.W #$0135                              ; $8CE048 |
  JSL.L CODE_FL_86C9A4                      ; $8CE04B |
  BCC CODE_8CE054                           ; $8CE04F |
  JMP.W CODE_JP_8CE0AC                      ; $8CE051 |

CODE_8CE054:
  JSL.L CODE_FL_85AAB6                      ; $8CE054 |
  LDA.W #$0004                              ; $8CE058 |
  STA.B $10                                 ; $8CE05B |

CODE_8CE05D:
  LDA.W #$0134                              ; $8CE05D |
  JSL.L CODE_FL_86C9C2                      ; $8CE060 |
  BCS CODE_JP_8CE0AC                        ; $8CE064 |
  JSL.L CODE_FL_85AAB6                      ; $8CE066 |
  JSL.L CODE_FL_86C7C4                      ; $8CE06A |
  PHY                                       ; $8CE06E |
  LDA.B $10                                 ; $8CE06F |
  LDY.W #$0007                              ; $8CE071 |
  JSL.L CODE_FL_808E44                      ; $8CE074 |
  PLY                                       ; $8CE078 |
  STA.W $003A,Y                             ; $8CE079 |
  DEC.B $10                                 ; $8CE07C |
  BNE CODE_8CE05D                           ; $8CE07E |

CODE_8CE080:
  JSL.L CODE_FL_86C5AE                      ; $8CE080 |
  BCS CODE_8CE093                           ; $8CE084 |
  TYX                                       ; $8CE086 |
  JSL.L CODE_FL_808B9C                      ; $8CE087 |
  LDA.B $0C                                 ; $8CE08B |
  STA.B $09,X                               ; $8CE08D |
  LDA.B $0E                                 ; $8CE08F |
  STA.B $0D,X                               ; $8CE091 |

CODE_8CE093:
  LDX.B $FC                                 ; $8CE093 |
  LDA.W #$0010                              ; $8CE095 |
  STA.B $3C,X                               ; $8CE098 |
  LDA.W #$0081                              ; $8CE09A |
  JSL.L CODE_FL_86CAEE                      ; $8CE09D |
  LDA.B $34,X                               ; $8CE0A1 |
  ORA.W #$3C80                              ; $8CE0A3 |
  STA.B $34,X                               ; $8CE0A6 |
  JML.L CODE_FL_86C63F                      ; $8CE0A8 |

CODE_JP_8CE0AC:
  JML.L CODE_FL_86CA36                      ; $8CE0AC |

CODE_8CE0B0:
  LDA.W #$0005                              ; $8CE0B0 |
  JSL.L CODE_FL_8CE15A                      ; $8CE0B3 |
  LDA.B $34,X                               ; $8CE0B7 |
  AND.W #$FBFF                              ; $8CE0B9 |
  STA.B $34,X                               ; $8CE0BC |
  LDA.B $09,X                               ; $8CE0BE |
  BMI CODE_8CE0C8                           ; $8CE0C0 |
  JSL.L CODE_FL_858BB9                      ; $8CE0C2 |
  BEQ CODE_8CE0E6                           ; $8CE0C6 |

CODE_8CE0C8:
  LDA.B $34,X                               ; $8CE0C8 |
  ORA.W #$0400                              ; $8CE0CA |
  STA.B $34,X                               ; $8CE0CD |
  JSL.L CODE_FL_85A66C                      ; $8CE0CF |
  LDA.W $1C14                               ; $8CE0D3 |
  BEQ CODE_8CE0E6                           ; $8CE0D6 |
  STZ.B $28,X                               ; $8CE0D8 |
  LDA.W $1C24                               ; $8CE0DA |
  BEQ CODE_8CE0E6                           ; $8CE0DD |
  LDA.W #$001B                              ; $8CE0DF |
  JSL.L push_sound_queue                    ; $8CE0E2 |

CODE_8CE0E6:
  LDA.W $1C12                               ; $8CE0E6 |
  BNE CODE_8CE105                           ; $8CE0E9 |
  LDA.B $46,X                               ; $8CE0EB |
  AND.W #$2000                              ; $8CE0ED |
  BEQ CODE_8CE105                           ; $8CE0F0 |
  LDA.B $26,X                               ; $8CE0F2 |
  BEQ CODE_8CE105                           ; $8CE0F4 |
  LDA.W $1C38                               ; $8CE0F6 |
  AND.W #$0007                              ; $8CE0F9 |
  BNE CODE_8CE105                           ; $8CE0FC |
  LDA.W #$0017                              ; $8CE0FE |
  JSL.L push_sound_queue                    ; $8CE101 |

CODE_8CE105:
  STZ.B $46,X                               ; $8CE105 |
  LDA.B $8E                                 ; $8CE107 |
  CMP.W #$0053                              ; $8CE109 |
  BEQ CODE_8CE113                           ; $8CE10C |
  CMP.W #$0059                              ; $8CE10E |
  BNE CODE_8CE143                           ; $8CE111 |

CODE_8CE113:
  CLC                                       ; $8CE113 |
  LDA.W $1662                               ; $8CE114 |
  ADC.B $09,X                               ; $8CE117 |
  BMI CODE_8CE143                           ; $8CE119 |
  AND.W #$00FF                              ; $8CE11B |
  SBC.W #$0080                              ; $8CE11E |
  BPL CODE_8CE127                           ; $8CE121 |
  EOR.W #$FFFF                              ; $8CE123 |
  INC A                                     ; $8CE126 |

CODE_8CE127:
  CMP.W #$0007                              ; $8CE127 |
  BCS CODE_8CE143                           ; $8CE12A |
  LDA.W #$0080                              ; $8CE12C |
  STA.B $09,X                               ; $8CE12F |
  STA.B $40,X                               ; $8CE131 |
  LDA.B $34,X                               ; $8CE133 |
  AND.W #$FBFF                              ; $8CE135 |
  STA.B $34,X                               ; $8CE138 |
  LDA.W #$0080                              ; $8CE13A |
  STA.B $2C,X                               ; $8CE13D |
  STZ.B $28,X                               ; $8CE13F |
  INC.B $1A,X                               ; $8CE141 |

CODE_8CE143:
  JSL.L CODE_FL_85AD36                      ; $8CE143 |
  STZ.B $26,X                               ; $8CE147 |
  LDA.B $09,X                               ; $8CE149 |
  BMI CODE_8CE151                           ; $8CE14B |
  JSL.L CODE_FL_86C82F                      ; $8CE14D |

CODE_8CE151:
  RTL                                       ; $8CE151 |

CODE_8CE152:
  JSL.L CODE_FL_86C855                      ; $8CE152 |
  JML.L CODE_FL_85A646                      ; $8CE156 |

CODE_FL_8CE15A:
  STA.B $00                                 ; $8CE15A |
  LDA.B $7E                                 ; $8CE15C |
  CMP.W #$0003                              ; $8CE15E |
  BEQ CODE_8CE1B0                           ; $8CE161 |
  LDA.B $00                                 ; $8CE163 |
  STA.B $1A,X                               ; $8CE165 |
  STZ.B $46,X                               ; $8CE167 |
  LDA.B $09,X                               ; $8CE169 |
  STA.B $08                                 ; $8CE16B |
  LDA.B $0D,X                               ; $8CE16D |
  STA.B $0A                                 ; $8CE16F |
  JSL.L CODE_FL_808AB5                      ; $8CE171 |
  TXY                                       ; $8CE175 |
  LDA.B $3E,X                               ; $8CE176 |
  TAX                                       ; $8CE178 |
  LDA.W $0009,Y                             ; $8CE179 |
  CMP.W #$0100                              ; $8CE17C |
  BCC CODE_8CE19F                           ; $8CE17F |
  BMI CODE_8CE192                           ; $8CE181 |
  CMP.W #$0120                              ; $8CE183 |
  BCS CODE_8CE19F                           ; $8CE186 |
  CLC                                       ; $8CE188 |
  LDA.B $0C                                 ; $8CE189 |
  ADC.W #$0020                              ; $8CE18B |
  STA.B $0C                                 ; $8CE18E |
  BRA CODE_8CE19F                           ; $8CE190 |

CODE_8CE192:
  CMP.W #$FFE0                              ; $8CE192 |
  BCC CODE_8CE19F                           ; $8CE195 |
  SEC                                       ; $8CE197 |
  LDA.B $0C                                 ; $8CE198 |
  SBC.W #$0020                              ; $8CE19A |
  STA.B $0C                                 ; $8CE19D |

CODE_8CE19F:
  LDA.B $0C                                 ; $8CE19F |
  STA.L $7E8BB2,X                           ; $8CE1A1 |
  LDA.B $0E                                 ; $8CE1A5 |
  STA.L $7E8BB4,X                           ; $8CE1A7 |
  LDX.B $FC                                 ; $8CE1AB |
  PHP                                       ; $8CE1AD |
  PLA                                       ; $8CE1AE |
  PLA                                       ; $8CE1AF |

CODE_8CE1B0:
  RTL                                       ; $8CE1B0 |

CODE_8CE1B1:
  TDC                                       ; $8CE1B1 |
  JSL.L CODE_FL_8CE20D                      ; $8CE1B2 |
  LDA.W #$0005                              ; $8CE1B6 |
  JSL.L CODE_FL_8CE15A                      ; $8CE1B9 |
  INC.B $3C,X                               ; $8CE1BD |
  INC.B $3C,X                               ; $8CE1BF |
  LDA.B $3C,X                               ; $8CE1C1 |
  CMP.W #$00F0                              ; $8CE1C3 |
  BCC CODE_8CE1CB                           ; $8CE1C6 |
  LDA.W #$00F0                              ; $8CE1C8 |

CODE_8CE1CB:
  STA.B $3C,X                               ; $8CE1CB |
  STA.W $1C66                               ; $8CE1CD |
  JSL.L CODE_FL_86C70D                      ; $8CE1D0 |
  LDA.W #$0090                              ; $8CE1D4 |
  STA.B $2C,X                               ; $8CE1D7 |
  INC.B $1A,X                               ; $8CE1D9 |
  RTL                                       ; $8CE1DB |

CODE_8CE1DC:
  LDA.W #$0005                              ; $8CE1DC |
  JSL.L CODE_FL_8CE15A                      ; $8CE1DF |
  DEC.B $3C,X                               ; $8CE1E3 |
  DEC.B $3C,X                               ; $8CE1E5 |
  LDA.B $3C,X                               ; $8CE1E7 |
  CMP.W #$0010                              ; $8CE1E9 |
  BCS CODE_8CE1F5                           ; $8CE1EC |
  LDA.W #$0010                              ; $8CE1EE |
  STA.B $3C,X                               ; $8CE1F1 |
  BRA CODE_8CE1FB                           ; $8CE1F3 |

CODE_8CE1F5:
  PHA                                       ; $8CE1F5 |
  JSL.L CODE_FL_8CE20D                      ; $8CE1F6 |
  PLA                                       ; $8CE1FA |

CODE_8CE1FB:
  STA.W $1C66                               ; $8CE1FB |
  JSL.L CODE_FL_86C70D                      ; $8CE1FE |
  LDA.W #$00C0                              ; $8CE202 |
  STA.B $2C,X                               ; $8CE205 |
  LDA.W #$0003                              ; $8CE207 |
  STA.B $1A,X                               ; $8CE20A |
  RTL                                       ; $8CE20C |

CODE_FL_8CE20D:
  INC.B $40,X                               ; $8CE20D |
  LDA.B $40,X                               ; $8CE20F |
  CMP.W #$000A                              ; $8CE211 |
  BCC CODE_8CE21F                           ; $8CE214 |
  LDA.W #$00BC                              ; $8CE216 |
  JSL.L CODE_FL_8089BD                      ; $8CE219 |
  STZ.B $40,X                               ; $8CE21D |

CODE_8CE21F:
  RTL                                       ; $8CE21F |

CODE_8CE220:
  INC.B $3E,X                               ; $8CE220 |
  JSL.L CODE_FL_86C3F8                      ; $8CE222 |
  PHX                                       ; $8CE226 |
  ASL A                                     ; $8CE227 |
  TAX                                       ; $8CE228 |
  LDA.L PTR16_8CE233,X                      ; $8CE229 |
  PLX                                       ; $8CE22D |
  STA.B $00                                 ; $8CE22E |
  JMP.W ($0000)                             ; $8CE230 |

PTR16_8CE233:
  dw CODE_8CE237                            ; $8CE233 |
  dw CODE_8CE254                            ; $8CE235 |

CODE_8CE237:
  LDY.B $44,X                               ; $8CE237 |
  LDA.W $001A,Y                             ; $8CE239 |
  CMP.W #$0003                              ; $8CE23C |
  BCC CODE_8CE253                           ; $8CE23F |
  LDA.W #$0080                              ; $8CE241 |
  STA.B $09,X                               ; $8CE244 |
  JSL.L CODE_FL_85A9EF                      ; $8CE246 |
  LDA.W #$0080                              ; $8CE24A |
  JSL.L CODE_FL_86CAEE                      ; $8CE24D |
  INC.B $1A,X                               ; $8CE251 |

CODE_8CE253:
  RTL                                       ; $8CE253 |

CODE_8CE254:
  JSL.L CODE_FL_85F885                      ; $8CE254 |
  LDY.B $44,X                               ; $8CE258 |
  LDA.W $003C,Y                             ; $8CE25A |
  CMP.W #$0010                              ; $8CE25D |
  BNE CODE_8CE269                           ; $8CE260 |
  JSL.L CODE_FL_85A9F7                      ; $8CE262 |
  STZ.B $00,X                               ; $8CE266 |
  RTL                                       ; $8CE268 |

CODE_8CE269:
  LDA.W #$0100                              ; $8CE269 |
  SBC.W $003C,Y                             ; $8CE26C |
  CMP.B $0D,X                               ; $8CE26F |
  BCC CODE_8CE279                           ; $8CE271 |
  JSL.L CODE_FL_85A9F7                      ; $8CE273 |
  STZ.B $00,X                               ; $8CE277 |

CODE_8CE279:
  LDA.B $3E,X                               ; $8CE279 |
  CMP.W #$001D                              ; $8CE27B |
  BCC CODE_8CE283                           ; $8CE27E |
  TDC                                       ; $8CE280 |
  STA.B $3E,X                               ; $8CE281 |

CODE_8CE283:
  CMP.B $3A,X                               ; $8CE283 |
  BNE CODE_8CE2A7                           ; $8CE285 |
  LDA.W #$0080                              ; $8CE287 |
  JSL.L CODE_FL_86CAEE                      ; $8CE28A |
  JSL.L CODE_FL_85A9EF                      ; $8CE28E |
  LDA.W #$F800                              ; $8CE292 |
  STA.B $28,X                               ; $8CE295 |
  LDA.W $000D,Y                             ; $8CE297 |
  SBC.W #$0020                              ; $8CE29A |
  CMP.W #$0100                              ; $8CE29D |
  BCC CODE_8CE2A5                           ; $8CE2A0 |
  LDA.W #$0100                              ; $8CE2A2 |

CODE_8CE2A5:
  STA.B $0D,X                               ; $8CE2A5 |

CODE_8CE2A7:
  RTL                                       ; $8CE2A7 |

  LDY.B $44,X                               ; $8CE2A8 |
  LDA.W #$0100                              ; $8CE2AA |
  SBC.W $003C,Y                             ; $8CE2AD |
  STA.B $0C                                 ; $8CE2B0 |
  STA.B $10                                 ; $8CE2B2 |
  STZ.B $0A                                 ; $8CE2B4 |
  LDA.W #$0002                              ; $8CE2B6 |
  STA.B $0E                                 ; $8CE2B9 |
  JML.L CODE_FL_85F8A1                      ; $8CE2BB |

CODE_8CE2BF:
  JSL.L CODE_FL_86C424                      ; $8CE2BF |
  PHX                                       ; $8CE2C3 |
  ASL A                                     ; $8CE2C4 |
  TAX                                       ; $8CE2C5 |
  LDA.L PTR16_8CE2D0,X                      ; $8CE2C6 |
  PLX                                       ; $8CE2CA |
  STA.B $00                                 ; $8CE2CB |
  JMP.W ($0000)                             ; $8CE2CD |

PTR16_8CE2D0:
  dw CODE_8CE2D6                            ; $8CE2D0 |
  dw CODE_8CE35D                            ; $8CE2D2 |
  dw CODE_8CE36B                            ; $8CE2D4 |

CODE_8CE2D6:
  JSL.L CODE_FL_85AA07                      ; $8CE2D6 |
  LDY.B $44,X                               ; $8CE2DA |
  LDA.W $001A,Y                             ; $8CE2DC |
  CMP.W #$0003                              ; $8CE2DF |
  BCC CODE_8CE2F7                           ; $8CE2E2 |
  LDY.W #$9C13                              ; $8CE2E4 |
  JSL.L CODE_FL_8AB1AB                      ; $8CE2E7 |
  LDY.W #$0040                              ; $8CE2EB |
  JSL.L CODE_FL_80972B                      ; $8CE2EE |
  JSR.W CODE_FN_8CE2F8                      ; $8CE2F2 |
  INC.B $1A,X                               ; $8CE2F5 |

CODE_8CE2F7:
  RTL                                       ; $8CE2F7 |

CODE_FN_8CE2F8:
  PHX                                       ; $8CE2F8 |
  LDX.W #$DAC4                              ; $8CE2F9 |
  LDA.L $7EDAC0                             ; $8CE2FC |
  LSR A                                     ; $8CE300 |
  BCS CODE_8CE306                           ; $8CE301 |
  LDX.W #$DCC4                              ; $8CE303 |

CODE_8CE306:
  LDA.W $1672                               ; $8CE306 |
  STA.B $18                                 ; $8CE309 |
  LDA.W $1C38                               ; $8CE30B |
  STA.B $12                                 ; $8CE30E |
  JSR.W CODE_FN_8CE325                      ; $8CE310 |
  TDC                                       ; $8CE313 |
  STA.L $7E0000,X                           ; $8CE314 |
  PLX                                       ; $8CE318 |
  LDA.L $7EDAC0                             ; $8CE319 |
  EOR.W #$0001                              ; $8CE31D |
  STA.L $7EDAC0                             ; $8CE320 |
  RTS                                       ; $8CE324 |

CODE_FN_8CE325:
  LDA.W #$0020                              ; $8CE325 |
  STA.B $10                                 ; $8CE328 |

CODE_8CE32A:
  LDY.W #$0001                              ; $8CE32A |
  INC.B $12                                 ; $8CE32D |
  LDA.B $12                                 ; $8CE32F |
  JSL.L CODE_FL_8AB4FC                      ; $8CE331 |
  LDA.B $00                                 ; $8CE335 |
  CMP.W #$8000                              ; $8CE337 |
  ROR A                                     ; $8CE33A |
  CMP.W #$8000                              ; $8CE33B |
  ROR A                                     ; $8CE33E |
  CMP.W #$8000                              ; $8CE33F |
  ROR A                                     ; $8CE342 |
  CMP.W #$8000                              ; $8CE343 |
  ROR A                                     ; $8CE346 |
  CMP.W #$8000                              ; $8CE347 |
  ROR A                                     ; $8CE34A |
  CMP.W #$8000                              ; $8CE34B |
  ROR A                                     ; $8CE34E |
  CLC                                       ; $8CE34F |
  ADC.B $18                                 ; $8CE350 |
  STA.L $7E0000,X                           ; $8CE352 |
  INX                                       ; $8CE356 |
  INX                                       ; $8CE357 |
  DEC.B $10                                 ; $8CE358 |
  BNE CODE_8CE32A                           ; $8CE35A |
  RTS                                       ; $8CE35C |

CODE_8CE35D:
  JSR.W CODE_FN_8CE2F8                      ; $8CE35D |
  LDA.W $1C66                               ; $8CE360 |
  AND.W #$00FF                              ; $8CE363 |
  JSL.L CODE_FL_8AB25A                      ; $8CE366 |
  RTL                                       ; $8CE36A |

CODE_8CE36B:
  RTL                                       ; $8CE36B |

CODE_8CE36C:
  JSL.L CODE_FL_85F885                      ; $8CE36C |
  JSL.L CODE_FL_86C412                      ; $8CE370 |
  PHX                                       ; $8CE374 |
  ASL A                                     ; $8CE375 |
  TAX                                       ; $8CE376 |
  LDA.L PTR16_8CE381,X                      ; $8CE377 |
  PLX                                       ; $8CE37B |
  STA.B $00                                 ; $8CE37C |
  JMP.W ($0000)                             ; $8CE37E |

PTR16_8CE381:
  dw CODE_8CE38B                            ; $8CE381 |
  dw CODE_8CE3B8                            ; $8CE383 |
  dw CODE_8CE3C0                            ; $8CE385 |
  dw CODE_8CE3D4                            ; $8CE387 |
  dw CODE_8CE3EC                            ; $8CE389 |

CODE_8CE38B:
  JSL.L CODE_FL_85AA07                      ; $8CE38B |
  JSL.L CODE_FL_85AD48                      ; $8CE38F |
  JSL.L CODE_FL_86C7A5                      ; $8CE393 |
  JSL.L CODE_FL_86C444                      ; $8CE397 |
  JSL.L CODE_FL_86C486                      ; $8CE39B |
  LDA.W #$202E                              ; $8CE39F |
  JSL.L CODE_FL_86CAEE                      ; $8CE3A2 |
  LDA.W #$FFE0                              ; $8CE3A6 |
  JSL.L CODE_FL_86C71F                      ; $8CE3A9 |
  LDA.B $34,X                               ; $8CE3AD |
  ORA.W #$E002                              ; $8CE3AF |
  STA.B $34,X                               ; $8CE3B2 |
  JML.L CODE_FL_86C63F                      ; $8CE3B4 |

CODE_8CE3B8:
  JSL.L CODE_FL_86C855                      ; $8CE3B8 |
  JML.L CODE_FL_85A646                      ; $8CE3BC |

CODE_8CE3C0:
  JSL.L CODE_FL_86C855                      ; $8CE3C0 |
  JSL.L CODE_FL_85AD23                      ; $8CE3C4 |
  JSL.L CODE_FL_85A695                      ; $8CE3C8 |
  LDA.W #$0040                              ; $8CE3CC |
  JSL.L CODE_FL_86C759                      ; $8CE3CF |
  RTL                                       ; $8CE3D3 |

CODE_8CE3D4:
  JSL.L CODE_FL_85AC74                      ; $8CE3D4 |
  STZ.B $26,X                               ; $8CE3D8 |
  TDC                                       ; $8CE3DA |
  JSL.L CODE_FL_86CAEE                      ; $8CE3DB |
  LDA.W #$3646                              ; $8CE3DF |
  STA.B $00,X                               ; $8CE3E2 |
  LDA.W #$1C82                              ; $8CE3E4 |
  STA.B $34,X                               ; $8CE3E7 |
  INC.B $1A,X                               ; $8CE3E9 |
  RTL                                       ; $8CE3EB |

CODE_8CE3EC:
  JML.L CODE_JL_86B364                      ; $8CE3EC |

CODE_8CE3F0:
  JSL.L CODE_FL_86C424                      ; $8CE3F0 |
  PHX                                       ; $8CE3F4 |
  ASL A                                     ; $8CE3F5 |
  TAX                                       ; $8CE3F6 |
  LDA.L PTR16_8CE401,X                      ; $8CE3F7 |
  PLX                                       ; $8CE3FB |
  STA.B $00                                 ; $8CE3FC |
  JMP.W ($0000)                             ; $8CE3FE |

PTR16_8CE401:
  dw CODE_8CE407                            ; $8CE401 |
  dw CODE_8CE424                            ; $8CE403 |
  dw CODE_8CE447                            ; $8CE405 |

CODE_8CE407:
  JSL.L CODE_FL_85ABAD                      ; $8CE407 |
  BCS CODE_8CE420                           ; $8CE40B |
  JSL.L CODE_FL_86C7A5                      ; $8CE40D |
  JSL.L CODE_FL_86C36A                      ; $8CE411 |
  LDA.B $34,X                               ; $8CE415 |
  ORA.W #$0888                              ; $8CE417 |
  STA.B $34,X                               ; $8CE41A |
  JML.L CODE_FL_86C63F                      ; $8CE41C |

CODE_8CE420:
  JML.L CODE_FL_86CA2D                      ; $8CE420 |

CODE_8CE424:
  LDA.B $0D,X                               ; $8CE424 |
  BMI CODE_8CE446                           ; $8CE426 |
  LDA.W #$0100                              ; $8CE428 |
  SBC.W $1C66                               ; $8CE42B |
  CMP.B $0D,X                               ; $8CE42E |
  BCS CODE_8CE446                           ; $8CE430 |
  JSL.L CODE_FL_85ABC2                      ; $8CE432 |
  LDA.W #$FE00                              ; $8CE436 |
  STA.B $28,X                               ; $8CE439 |
  LDA.B $09,X                               ; $8CE43B |
  SBC.W #$0080                              ; $8CE43D |
  ASL A                                     ; $8CE440 |
  ASL A                                     ; $8CE441 |
  STA.B $26,X                               ; $8CE442 |
  INC.B $1A,X                               ; $8CE444 |

CODE_8CE446:
  RTL                                       ; $8CE446 |

CODE_8CE447:
  JSL.L CODE_FL_86C82F                      ; $8CE447 |
  JSL.L CODE_FL_86C855                      ; $8CE44B |
  LDA.B $0D,X                               ; $8CE44F |
  CMP.W #$0100                              ; $8CE451 |
  BCC CODE_8CE45A                           ; $8CE454 |
  JML.L CODE_FL_86CA2D                      ; $8CE456 |

CODE_8CE45A:
  RTL                                       ; $8CE45A |

CODE_8CE45B:
  JSL.L CODE_FL_85F885                      ; $8CE45B |
  JSL.L CODE_FL_86C424                      ; $8CE45F |
  PHX                                       ; $8CE463 |
  ASL A                                     ; $8CE464 |
  TAX                                       ; $8CE465 |
  LDA.L PTR16_8CE470,X                      ; $8CE466 |
  PLX                                       ; $8CE46A |
  STA.B $00                                 ; $8CE46B |
  JMP.W ($0000)                             ; $8CE46D |

PTR16_8CE470:
  dw CODE_8CE476                            ; $8CE470 |
  dw CODE_8CE485                            ; $8CE472 |
  dw CODE_8CE4B2                            ; $8CE474 |

CODE_8CE476:
  STZ.B $22,X                               ; $8CE476 |
  JSL.L CODE_FL_85A9EF                      ; $8CE478 |
  LDA.W #$0001                              ; $8CE47C |
  STA.B $92                                 ; $8CE47F |
  JML.L CODE_FL_86C63F                      ; $8CE481 |

CODE_8CE485:
  LDA.W $1C38                               ; $8CE485 |
  AND.W #$0007                              ; $8CE488 |
  BNE CODE_8CE48D                           ; $8CE48B |

CODE_8CE48D:
  TDC                                       ; $8CE48D |
  DEC.B $3A,X                               ; $8CE48E |
  BPL CODE_8CE49A                           ; $8CE490 |
  LDA.W #$0004                              ; $8CE492 |
  STA.B $3A,X                               ; $8CE495 |
  LDA.W #$0001                              ; $8CE497 |

CODE_8CE49A:
  STA.W $1962                               ; $8CE49A |
  JSR.W CODE_FN_8CE4B3                      ; $8CE49D |
  LDA.W $1672                               ; $8CE4A0 |
  CMP.W #$1000                              ; $8CE4A3 |
  BNE CODE_8CE4B1                           ; $8CE4A6 |
  INC.B $1A,X                               ; $8CE4A8 |
  LDA.W #$001B                              ; $8CE4AA |
  JSL.L push_sound_queue                    ; $8CE4AD |

CODE_8CE4B1:
  RTL                                       ; $8CE4B1 |

CODE_8CE4B2:
  RTL                                       ; $8CE4B2 |

CODE_FN_8CE4B3:
  LDA.W $1C38                               ; $8CE4B3 |
  AND.W #$000F                              ; $8CE4B6 |
  BNE CODE_8CE4E4                           ; $8CE4B9 |
  BIT.B $3E,X                               ; $8CE4BB |
  BMI CODE_8CE4CE                           ; $8CE4BD |
  LDA.B $86                                 ; $8CE4BF |
  AND.W #$0007                              ; $8CE4C1 |
  CMP.W #$0006                              ; $8CE4C4 |
  BCC CODE_8CE4CC                           ; $8CE4C7 |
  ADC.W #$0001                              ; $8CE4C9 |

CODE_8CE4CC:
  STA.B $3C,X                               ; $8CE4CC |

CODE_8CE4CE:
  LDA.W #$0126                              ; $8CE4CE |
  BIT.B $3E,X                               ; $8CE4D1 |
  BPL CODE_8CE4D8                           ; $8CE4D3 |
  LDA.W #$0124                              ; $8CE4D5 |

CODE_8CE4D8:
  JSR.W CODE_FN_8CE4E5                      ; $8CE4D8 |
  BCS CODE_8CE4E4                           ; $8CE4DB |
  LDA.B $3E,X                               ; $8CE4DD |
  EOR.W #$8000                              ; $8CE4DF |
  STA.B $3E,X                               ; $8CE4E2 |

CODE_8CE4E4:
  RTS                                       ; $8CE4E4 |

CODE_FN_8CE4E5:
  PHA                                       ; $8CE4E5 |
  LDA.B $3C,X                               ; $8CE4E6 |
  INC A                                     ; $8CE4E8 |
  ASL A                                     ; $8CE4E9 |
  ASL A                                     ; $8CE4EA |
  ASL A                                     ; $8CE4EB |
  ASL A                                     ; $8CE4EC |
  ASL A                                     ; $8CE4ED |
  STA.B $08                                 ; $8CE4EE |
  STZ.B $0A                                 ; $8CE4F0 |
  PLA                                       ; $8CE4F2 |
  JSL.L CODE_FL_858256                      ; $8CE4F3 |
  RTS                                       ; $8CE4F7 |

CODE_8CE4F8:
  JSL.L CODE_FL_86C855                      ; $8CE4F8 |
  JSL.L CODE_FL_85A62E                      ; $8CE4FC |
  BEQ CODE_8CE51D                           ; $8CE500 |
  DEC.B $3A,X                               ; $8CE502 |
  BNE CODE_8CE515                           ; $8CE504 |
  JSL.L CODE_FL_85A986                      ; $8CE506 |
  LDA.W #$A000                              ; $8CE50A |
  JSL.L CODE_FL_85AA0F                      ; $8CE50D |
  JML.L CODE_FL_86CA2D                      ; $8CE511 |

CODE_8CE515:
  SEC                                       ; $8CE515 |
  LDA.B $3C,X                               ; $8CE516 |
  ROR A                                     ; $8CE518 |
  STA.B $28,X                               ; $8CE519 |
  STA.B $3C,X                               ; $8CE51B |

CODE_8CE51D:
  RTL                                       ; $8CE51D |

CODE_8CE51E:
  JSL.L CODE_FL_86C855                      ; $8CE51E |
  JSL.L CODE_FL_85A62E                      ; $8CE522 |
  BEQ CODE_8CE51D                           ; $8CE526 |
  DEC.B $3A,X                               ; $8CE528 |
  BNE CODE_8CE515                           ; $8CE52A |
  JSL.L CODE_FL_85A986                      ; $8CE52C |
  LDA.W #$0000                              ; $8CE530 |
  JSL.L CODE_FL_85AA0F                      ; $8CE533 |
  JML.L CODE_FL_86CA2D                      ; $8CE537 |

CODE_8CE53B:
  JSL.L CODE_FL_86C855                      ; $8CE53B |
  JSL.L CODE_FL_85A62E                      ; $8CE53F |
  BEQ CODE_8CE51D                           ; $8CE543 |
  DEC.B $3A,X                               ; $8CE545 |
  BNE CODE_8CE515                           ; $8CE547 |
  JSL.L CODE_FL_85A986                      ; $8CE549 |
  LDA.W #$0009                              ; $8CE54D |
  JSL.L CODE_FL_86C9A7                      ; $8CE550 |
  JML.L CODE_FL_86CA2D                      ; $8CE554 |

CODE_8CE558:
  JSL.L CODE_FL_86C855                      ; $8CE558 |
  JSL.L CODE_FL_85A62E                      ; $8CE55C |
  BEQ CODE_8CE51D                           ; $8CE560 |
  DEC.B $3A,X                               ; $8CE562 |
  BNE CODE_8CE515                           ; $8CE564 |
  JSL.L CODE_FL_85A986                      ; $8CE566 |
  LDA.W #$00D5                              ; $8CE56A |
  JSL.L CODE_FL_86C9A7                      ; $8CE56D |
  JML.L CODE_FL_86CA2D                      ; $8CE571 |

CODE_8CE575:
  JSL.L CODE_FL_86C424                      ; $8CE575 |
  PHX                                       ; $8CE579 |
  ASL A                                     ; $8CE57A |
  TAX                                       ; $8CE57B |
  LDA.L PTR16_8CE586,X                      ; $8CE57C |
  PLX                                       ; $8CE580 |
  STA.B $00                                 ; $8CE581 |
  JMP.W ($0000)                             ; $8CE583 |

PTR16_8CE586:
  dw CODE_8CE58C                            ; $8CE586 |
  dw CODE_8CE5A6                            ; $8CE588 |
  dw CODE_8CE5B6                            ; $8CE58A |

CODE_8CE58C:
  LDA.W #$0003                              ; $8CE58C |
  STA.B $3C,X                               ; $8CE58F |
  JSL.L CODE_FL_85AC3A                      ; $8CE591 |
  BCC CODE_8CE5A3                           ; $8CE595 |
  LDA.W #$0004                              ; $8CE597 |
  STA.B $3A,X                               ; $8CE59A |
  LDA.W #$0001                              ; $8CE59C |
  STA.B $3C,X                               ; $8CE59F |
  INC.B $1A,X                               ; $8CE5A1 |

CODE_8CE5A3:
  INC.B $1A,X                               ; $8CE5A3 |
  RTL                                       ; $8CE5A5 |

CODE_8CE5A6:
  JSL.L CODE_FL_85AC3A                      ; $8CE5A6 |
  BCC CODE_8CE5B5                           ; $8CE5AA |
  LDA.W #$0017                              ; $8CE5AC |
  JSL.L push_sound_queue                    ; $8CE5AF |
  INC.B $1A,X                               ; $8CE5B3 |

CODE_8CE5B5:
  RTL                                       ; $8CE5B5 |

CODE_8CE5B6:
  JSL.L CODE_FL_86C70D                      ; $8CE5B6 |
  JSR.W CODE_FN_8CE5D2                      ; $8CE5BA |
  BCC CODE_8CE5C0                           ; $8CE5BD |
  RTL                                       ; $8CE5BF |

CODE_8CE5C0:
  LDA.W #$0008                              ; $8CE5C0 |
  STA.B $2C,X                               ; $8CE5C3 |
  INC.B $3A,X                               ; $8CE5C5 |
  INC.B $3A,X                               ; $8CE5C7 |
  DEC.B $3C,X                               ; $8CE5C9 |
  BNE CODE_8CE5D1                           ; $8CE5CB |
  JSL.L CODE_FL_86CA2D                      ; $8CE5CD |

CODE_8CE5D1:
  RTL                                       ; $8CE5D1 |

CODE_FN_8CE5D2:
  CLC                                       ; $8CE5D2 |
  LDA.B $09,X                               ; $8CE5D3 |
  ADC.W #$FFF0                              ; $8CE5D5 |
  STA.B $08                                 ; $8CE5D8 |
  CLC                                       ; $8CE5DA |
  LDA.B $0D,X                               ; $8CE5DB |
  ADC.W #$FFD0                              ; $8CE5DD |
  STA.B $0A                                 ; $8CE5E0 |
  LDY.B $3A,X                               ; $8CE5E2 |
  PHB                                       ; $8CE5E4 |
  PHK                                       ; $8CE5E5 |
  PLB                                       ; $8CE5E6 |
  LDA.W CODE_00E682,Y                       ; $8CE5E7 |
  PLB                                       ; $8CE5EA |
  JSL.L CODE_FL_8580F7                      ; $8CE5EB |
  RTS                                       ; $8CE5EF |

CODE_8CE5F0:
  JSL.L CODE_FL_86C424                      ; $8CE5F0 |
  PHX                                       ; $8CE5F4 |
  ASL A                                     ; $8CE5F5 |
  TAX                                       ; $8CE5F6 |
  LDA.L PTR16_8CE601,X                      ; $8CE5F7 |
  PLX                                       ; $8CE5FB |
  STA.B $00                                 ; $8CE5FC |
  JMP.W ($0000)                             ; $8CE5FE |

PTR16_8CE601:
  dw CODE_8CE609                            ; $8CE601 |
  dw CODE_8CE63B                            ; $8CE603 |
  dw CODE_8CE647                            ; $8CE605 |
  dw CODE_8CE6A0                            ; $8CE607 |

CODE_8CE609:
  LDA.B $4E,X                               ; $8CE609 |
  AND.W #$FF00                              ; $8CE60B |
  XBA                                       ; $8CE60E |
  ASL A                                     ; $8CE60F |
  STA.B $00                                 ; $8CE610 |
  ASL A                                     ; $8CE612 |
  ASL A                                     ; $8CE613 |
  SEC                                       ; $8CE614 |
  SBC.B $00                                 ; $8CE615 |
  STA.B $3A,X                               ; $8CE617 |
  PHB                                       ; $8CE619 |
  PHK                                       ; $8CE61A |
  PLB                                       ; $8CE61B |
  LDY.B $00                                 ; $8CE61C |
  LDA.W CODE_00E694,Y                       ; $8CE61E |
  STA.B $3E,X                               ; $8CE621 |
  LDA.W LOOSE_OP_00E69A,Y                   ; $8CE623 |
  STA.B $40,X                               ; $8CE626 |
  PLB                                       ; $8CE628 |
  LDA.W #$0003                              ; $8CE629 |
  STA.B $3C,X                               ; $8CE62C |
  JSR.W CODE_FN_8CE666                      ; $8CE62E |
  BCC CODE_8CE634                           ; $8CE631 |
  RTL                                       ; $8CE633 |

CODE_8CE634:
  JSL.L CODE_FL_86C444                      ; $8CE634 |
  INC.B $1A,X                               ; $8CE638 |
  RTL                                       ; $8CE63A |

CODE_8CE63B:
  JSL.L CODE_FL_86C6A9                      ; $8CE63B |
  CMP.W #$0030                              ; $8CE63F |
  BCS CODE_8CE646                           ; $8CE642 |
  INC.B $1A,X                               ; $8CE644 |

CODE_8CE646:
  RTL                                       ; $8CE646 |

CODE_8CE647:
  JSL.L CODE_FL_86C70D                      ; $8CE647 |
  JSR.W CODE_FN_8CE666                      ; $8CE64B |
  BCC CODE_8CE651                           ; $8CE64E |
  RTL                                       ; $8CE650 |

CODE_8CE651:
  LDA.W #$0008                              ; $8CE651 |
  STA.B $2C,X                               ; $8CE654 |
  INC.B $3A,X                               ; $8CE656 |
  INC.B $3A,X                               ; $8CE658 |
  DEC.B $3C,X                               ; $8CE65A |
  BNE CODE_8CE665                           ; $8CE65C |
  INC.B $1A,X                               ; $8CE65E |
  LDA.W #$0003                              ; $8CE660 |
  STA.B $3C,X                               ; $8CE663 |

CODE_8CE665:
  RTL                                       ; $8CE665 |

CODE_FN_8CE666:
  LDY.B $3A,X                               ; $8CE666 |
  CLC                                       ; $8CE668 |
  LDA.B $09,X                               ; $8CE669 |
  ADC.B $3E,X                               ; $8CE66B |
  STA.B $08                                 ; $8CE66D |
  CLC                                       ; $8CE66F |
  LDA.B $0D,X                               ; $8CE670 |
  ADC.B $40,X                               ; $8CE672 |
  STA.B $0A                                 ; $8CE674 |
  PHB                                       ; $8CE676 |
  PHK                                       ; $8CE677 |
  PLB                                       ; $8CE678 |
  LDA.W CODE_00E682,Y                       ; $8CE679 |
  PLB                                       ; $8CE67C |
  JSL.L CODE_FL_858256                      ; $8CE67D |
  RTS                                       ; $8CE681 |

  dw $007E,$0080,$0082,$0084                ; $8CE682 |
  dw $0086,$0088,$008A,$008C                ; $8CE68A |
  dw $008E,$FFF8,$FFF0,$FFF8                ; $8CE692 |
  dw $FFD0,$FFE0,$FFE0                      ; $8CE69A |

CODE_8CE6A0:
  JSL.L CODE_FL_86C70D                      ; $8CE6A0 |
  LDA.W $1C66                               ; $8CE6A4 |
  CMP.W #$0005                              ; $8CE6A7 |
  BCS CODE_8CE6CE                           ; $8CE6AA |
  LDA.W #$00CE                              ; $8CE6AC |
  JSL.L CODE_FL_86C9A4                      ; $8CE6AF |
  BCS CODE_8CE6CE                           ; $8CE6B3 |
  LDA.B $4E,X                               ; $8CE6B5 |
  XBA                                       ; $8CE6B7 |
  AND.W #$00FF                              ; $8CE6B8 |
  ORA.W #$0800                              ; $8CE6BB |
  STA.W $004E,Y                             ; $8CE6BE |
  LDA.W #$0080                              ; $8CE6C1 |
  STA.B $2C,X                               ; $8CE6C4 |
  DEC.B $3C,X                               ; $8CE6C6 |
  BNE CODE_8CE6CE                           ; $8CE6C8 |
  JML.L CODE_FL_86CA36                      ; $8CE6CA |

CODE_8CE6CE:
  RTL                                       ; $8CE6CE |

CODE_8CE6CF:
  JSL.L CODE_FL_86C412                      ; $8CE6CF |
  PHX                                       ; $8CE6D3 |
  ASL A                                     ; $8CE6D4 |
  TAX                                       ; $8CE6D5 |
  LDA.L PTR16_8CE6E0,X                      ; $8CE6D6 |
  PLX                                       ; $8CE6DA |
  STA.B $00                                 ; $8CE6DB |
  JMP.W ($0000)                             ; $8CE6DD |

PTR16_8CE6E0:
  dw CODE_8CE6EC                            ; $8CE6E0 |
  dw CODE_8CE701                            ; $8CE6E2 |
  dw CODE_8CE714                            ; $8CE6E4 |
  dw CODE_8CE731                            ; $8CE6E6 |
  dw CODE_8CE818                            ; $8CE6E8 |
  dw CODE_8CE82D                            ; $8CE6EA |

CODE_8CE6EC:
  JSL.L CODE_FL_86C7AD                      ; $8CE6EC |
  STZ.B $02,X                               ; $8CE6F0 |
  JSL.L CODE_FL_86C444                      ; $8CE6F2 |
  LDA.B $34,X                               ; $8CE6F6 |
  ORA.W #$9880                              ; $8CE6F8 |
  STA.B $34,X                               ; $8CE6FB |
  JML.L CODE_FL_86C63A                      ; $8CE6FD |

CODE_8CE701:
  JSL.L CODE_FL_86C6A9                      ; $8CE701 |
  CMP.W #$0050                              ; $8CE705 |
  BCS CODE_8CE713                           ; $8CE708 |
  LDA.W #$101F                              ; $8CE70A |
  JSL.L CODE_FL_86CAEE                      ; $8CE70D |
  INC.B $1A,X                               ; $8CE711 |

CODE_8CE713:
  RTL                                       ; $8CE713 |

CODE_8CE714:
  LDA.B $20,X                               ; $8CE714 |
  BEQ CODE_8CE719                           ; $8CE716 |
  RTL                                       ; $8CE718 |

CODE_8CE719:
  LDA.W #$009C                              ; $8CE719 |
  JSL.L CODE_FL_8089BD                      ; $8CE71C |
  JSL.L CODE_FL_85A9B7                      ; $8CE720 |
  INC.B $1A,X                               ; $8CE724 |
  LDA.W #$0006                              ; $8CE726 |
  STA.B $3A,X                               ; $8CE729 |
  LDA.W #$0010                              ; $8CE72B |
  STA.B $3E,X                               ; $8CE72E |
  RTL                                       ; $8CE730 |

CODE_8CE731:
  JSL.L CODE_FL_86C70D                      ; $8CE731 |
  DEC.B $3E,X                               ; $8CE735 |
  BEQ CODE_8CE77E                           ; $8CE737 |
  LDA.B ($48,X)                             ; $8CE739 |
  TAY                                       ; $8CE73B |
  JSL.L CODE_FL_8AB41C                      ; $8CE73C |
  LSR A                                     ; $8CE740 |
  LSR A                                     ; $8CE741 |
  STA.B $00                                 ; $8CE742 |
  SEC                                       ; $8CE744 |
  LDA.B $3A,X                               ; $8CE745 |
  SBC.B $00                                 ; $8CE747 |
  BPL CODE_8CE74F                           ; $8CE749 |
  CLC                                       ; $8CE74B |
  ADC.W #$0008                              ; $8CE74C |

CODE_8CE74F:
  BEQ CODE_8CE77D                           ; $8CE74F |
  CMP.W #$0004                              ; $8CE751 |
  BCS CODE_8CE75F                           ; $8CE754 |
  DEC.B $3A,X                               ; $8CE756 |
  BPL CODE_8CE76B                           ; $8CE758 |
  LDA.W #$0007                              ; $8CE75A |
  STA.B $3A,X                               ; $8CE75D |

CODE_8CE75F:
  INC.B $3A,X                               ; $8CE75F |
  LDA.B $3A,X                               ; $8CE761 |
  CMP.W #$0008                              ; $8CE763 |
  BNE CODE_8CE76B                           ; $8CE766 |
  TDC                                       ; $8CE768 |
  STA.B $3A,X                               ; $8CE769 |

CODE_8CE76B:
  LDA.B $3A,X                               ; $8CE76B |
  ASL A                                     ; $8CE76D |
  TAY                                       ; $8CE76E |
  PHB                                       ; $8CE76F |
  PHK                                       ; $8CE770 |
  PLB                                       ; $8CE771 |
  LDA.W LOOSE_OP_00E7E8,Y                   ; $8CE772 |
  STA.B $00,X                               ; $8CE775 |
  PLB                                       ; $8CE777 |
  LDA.W #$0004                              ; $8CE778 |
  STA.B $2C,X                               ; $8CE77B |

CODE_8CE77D:
  RTL                                       ; $8CE77D |

CODE_8CE77E:
  SEC                                       ; $8CE77E |
  LDA.B $0D,X                               ; $8CE77F |
  PHA                                       ; $8CE781 |
  SBC.W #$0008                              ; $8CE782 |
  STA.B $0D,X                               ; $8CE785 |
  LDA.W #$0080                              ; $8CE787 |
  STA.B $3E,X                               ; $8CE78A |
  LDA.B $3A,X                               ; $8CE78C |
  ASL A                                     ; $8CE78E |
  TAY                                       ; $8CE78F |
  PHB                                       ; $8CE790 |
  PHK                                       ; $8CE791 |
  PLB                                       ; $8CE792 |
  LDA.W CODE_00E7F8,Y                       ; $8CE793 |
  STA.B $10                                 ; $8CE796 |
  LDA.W LOOSE_OP_00E808,Y                   ; $8CE798 |
  STA.B $12                                 ; $8CE79B |
  PLB                                       ; $8CE79D |
  LDA.B $10                                 ; $8CE79E |
  LDY.W #$0008                              ; $8CE7A0 |
  JSL.L CODE_FL_808E44                      ; $8CE7A3 |
  XBA                                       ; $8CE7A7 |
  AND.W #$00FF                              ; $8CE7A8 |
  CMP.W #$0080                              ; $8CE7AB |
  BCC CODE_8CE7B3                           ; $8CE7AE |
  ORA.W #$FF00                              ; $8CE7B0 |

CODE_8CE7B3:
  STA.B $08                                 ; $8CE7B3 |
  LDA.B $12                                 ; $8CE7B5 |
  STA.B $0E                                 ; $8CE7B7 |
  LDY.W #$0008                              ; $8CE7B9 |
  JSL.L CODE_FL_808E44                      ; $8CE7BC |
  XBA                                       ; $8CE7C0 |
  AND.W #$00FF                              ; $8CE7C1 |
  CMP.W #$0080                              ; $8CE7C4 |
  BCC CODE_8CE7CC                           ; $8CE7C7 |
  ORA.W #$FF00                              ; $8CE7C9 |

CODE_8CE7CC:
  STA.B $0A                                 ; $8CE7CC |
  LDA.B $10                                 ; $8CE7CE |
  JSL.L CODE_FL_85AB40                      ; $8CE7D0 |
  BCS CODE_8CE7E4                           ; $8CE7D4 |
  JSL.L CODE_FL_85A958                      ; $8CE7D6 |
  LDA.W #$0014                              ; $8CE7DA |
  LDA.W #$002C                              ; $8CE7DD |
  JSL.L CODE_FL_8089BD                      ; $8CE7E0 |

CODE_8CE7E4:
  PLA                                       ; $8CE7E4 |
  STA.B $0D,X                               ; $8CE7E5 |
  RTL                                       ; $8CE7E7 |

  dw $3076,$3068,$305A,$30BC                ; $8CE7E8 |
  dw $30AE,$30A0,$3092,$3084                ; $8CE7F0 |
  dw $0100,$0100,$0000,$FF00                ; $8CE7F8 |
  dw $FF00,$FF00,$0000,$0100                ; $8CE800 |
  dw $0000,$0100,$0100,$0100                ; $8CE808 |
  dw $0000,$FF00,$FF00,$FF00                ; $8CE810 |

CODE_8CE818:
  LDA.B $34,X                               ; $8CE818 |
  AND.W #$7FFF                              ; $8CE81A |
  STA.B $34,X                               ; $8CE81D |
  JSL.L CODE_FL_85A986                      ; $8CE81F |
  LDA.W #$1020                              ; $8CE823 |
  JSL.L CODE_FL_86CAEE                      ; $8CE826 |
  INC.B $1A,X                               ; $8CE82A |
  RTL                                       ; $8CE82C |

CODE_8CE82D:
  LDA.B $20,X                               ; $8CE82D |
  BEQ CODE_8CE832                           ; $8CE82F |
  RTL                                       ; $8CE831 |

CODE_8CE832:
  STZ.B $34,X                               ; $8CE832 |
  JML.L CODE_FL_86CA2D                      ; $8CE834 |

CODE_8CE838:
  JSL.L CODE_FL_86C412                      ; $8CE838 |
  LDA.B $1A,X                               ; $8CE83C |
  PHX                                       ; $8CE83E |
  ASL A                                     ; $8CE83F |
  TAX                                       ; $8CE840 |
  LDA.L PTR16_8CE84B,X                      ; $8CE841 |
  PLX                                       ; $8CE845 |
  STA.B $00                                 ; $8CE846 |
  JMP.W ($0000)                             ; $8CE848 |

PTR16_8CE84B:
  dw CODE_8CE851                            ; $8CE84B |
  dw CODE_8CE87D                            ; $8CE84D |
  dw CODE_8CE899                            ; $8CE84F |

CODE_8CE851:
  JSL.L CODE_FL_86C7AD                      ; $8CE851 |
  JSL.L CODE_FL_85AD48                      ; $8CE855 |
  JSL.L CODE_FL_85AD50                      ; $8CE859 |
  LDY.W #$101C                              ; $8CE85D |
  LDA.B $4E,X                               ; $8CE860 |
  AND.W #$0100                              ; $8CE862 |
  BEQ CODE_8CE86D                           ; $8CE865 |
  LDA.W #$0010                              ; $8CE867 |
  STA.B $2E,X                               ; $8CE86A |
  INY                                       ; $8CE86C |

CODE_8CE86D:
  TYA                                       ; $8CE86D |
  JSL.L CODE_FL_86CAEE                      ; $8CE86E |
  LDA.B $34,X                               ; $8CE872 |
  ORA.W #$B080                              ; $8CE874 |
  STA.B $34,X                               ; $8CE877 |
  JML.L CODE_FL_86C63A                      ; $8CE879 |

CODE_8CE87D:
  JSL.L CODE_FL_85A893                      ; $8CE87D |
  JSL.L CODE_FL_85AC3A                      ; $8CE881 |
  BCC CODE_8CE898                           ; $8CE885 |
  LDA.B $34,X                               ; $8CE887 |
  AND.W #$4F7F                              ; $8CE889 |
  STA.B $34,X                               ; $8CE88C |
  TDC                                       ; $8CE88E |
  STA.B $00,X                               ; $8CE88F |
  JSL.L CODE_FL_86CAEE                      ; $8CE891 |
  INC.B $1A,X                               ; $8CE895 |
  RTL                                       ; $8CE897 |

CODE_8CE898:
  RTL                                       ; $8CE898 |

CODE_8CE899:
  JSL.L CODE_FL_85AC3A                      ; $8CE899 |
  BCS CODE_8CE8B4                           ; $8CE89D |
  CLC                                       ; $8CE89F |
  LDA.B $4E,X                               ; $8CE8A0 |
  AND.W #$0001                              ; $8CE8A2 |
  ADC.B $1C                                 ; $8CE8A5 |
  JSL.L CODE_FL_86CAEE                      ; $8CE8A7 |
  LDA.B $34,X                               ; $8CE8AB |
  ORA.W #$3080                              ; $8CE8AD |
  STA.B $34,X                               ; $8CE8B0 |
  DEC.B $1A,X                               ; $8CE8B2 |

CODE_8CE8B4:
  RTL                                       ; $8CE8B4 |

CODE_8CE8B5:
  JSL.L CODE_FL_86C412                      ; $8CE8B5 |
  LDA.B $1A,X                               ; $8CE8B9 |
  PHX                                       ; $8CE8BB |
  ASL A                                     ; $8CE8BC |
  TAX                                       ; $8CE8BD |
  LDA.L PTR16_8CE8C8,X                      ; $8CE8BE |
  PLX                                       ; $8CE8C2 |
  STA.B $00                                 ; $8CE8C3 |
  JMP.W ($0000)                             ; $8CE8C5 |

PTR16_8CE8C8:
  dw CODE_8CE8CE                            ; $8CE8C8 |
  dw CODE_8CE87D                            ; $8CE8CA |
  dw CODE_8CE899                            ; $8CE8CC |

CODE_8CE8CE:
  JSL.L CODE_FL_86C7AD                      ; $8CE8CE |
  JSL.L CODE_FL_85AD48                      ; $8CE8D2 |
  JSL.L CODE_FL_85AD50                      ; $8CE8D6 |
  LDY.W #$101C                              ; $8CE8DA |
  JSL.L CODE_FL_86CAEE                      ; $8CE8DD |
  LDA.B $34,X                               ; $8CE8E1 |
  ORA.W #$3080                              ; $8CE8E3 |
  STA.B $34,X                               ; $8CE8E6 |
  JML.L CODE_FL_86C63A                      ; $8CE8E8 |

CODE_8CE8EC:
  JSL.L CODE_FL_86C412                      ; $8CE8EC |
  LDA.B $1A,X                               ; $8CE8F0 |
  PHX                                       ; $8CE8F2 |
  ASL A                                     ; $8CE8F3 |
  TAX                                       ; $8CE8F4 |
  LDA.L PTR16_8CE8FF,X                      ; $8CE8F5 |
  PLX                                       ; $8CE8F9 |
  STA.B $00                                 ; $8CE8FA |
  JMP.W ($0000)                             ; $8CE8FC |

PTR16_8CE8FF:
  dw CODE_8CE905                            ; $8CE8FF |
  dw CODE_8CE923                            ; $8CE901 |
  dw CODE_8CE93B                            ; $8CE903 |

CODE_8CE905:
  JSL.L CODE_FL_86C7AD                      ; $8CE905 |
  LDA.W #$101E                              ; $8CE909 |
  JSL.L CODE_FL_86CAEE                      ; $8CE90C |
  JSL.L CODE_FL_85AD48                      ; $8CE910 |
  JSL.L CODE_FL_85AD50                      ; $8CE914 |
  LDA.B $34,X                               ; $8CE918 |
  ORA.W #$3880                              ; $8CE91A |
  STA.B $34,X                               ; $8CE91D |
  JML.L CODE_FL_86C63F                      ; $8CE91F |

CODE_8CE923:
  JSL.L CODE_FL_85A893                      ; $8CE923 |
  JSL.L CODE_FL_85AC3A                      ; $8CE927 |
  BCC CODE_8CE93A                           ; $8CE92B |
  STZ.B $00,X                               ; $8CE92D |
  STZ.B $1E,X                               ; $8CE92F |
  LDA.B $34,X                               ; $8CE931 |
  AND.W #$C77F                              ; $8CE933 |
  STA.B $34,X                               ; $8CE936 |
  INC.B $1A,X                               ; $8CE938 |

CODE_8CE93A:
  RTL                                       ; $8CE93A |

CODE_8CE93B:
  JSL.L CODE_FL_85AC3A                      ; $8CE93B |
  BCS CODE_8CE951                           ; $8CE93F |
  LDA.W #$101E                              ; $8CE941 |
  JSL.L CODE_FL_86CAEE                      ; $8CE944 |
  LDA.B $34,X                               ; $8CE948 |
  ORA.W #$B880                              ; $8CE94A |
  STA.B $34,X                               ; $8CE94D |
  DEC.B $1A,X                               ; $8CE94F |

CODE_8CE951:
  RTL                                       ; $8CE951 |

CODE_8CE952:
  JSL.L CODE_FL_86C3F8                      ; $8CE952 |
  LDA.B $1A,X                               ; $8CE956 |
  PHX                                       ; $8CE958 |
  ASL A                                     ; $8CE959 |
  TAX                                       ; $8CE95A |
  LDA.L PTR16_8CE965,X                      ; $8CE95B |
  PLX                                       ; $8CE95F |
  STA.B $00                                 ; $8CE960 |
  JMP.W ($0000)                             ; $8CE962 |

PTR16_8CE965:
  dw CODE_8CE96D                            ; $8CE965 |
  dw CODE_8CE98A                            ; $8CE967 |
  dw CODE_8CE9A7                            ; $8CE969 |
  dw CODE_8CE9AF                            ; $8CE96B |

CODE_8CE96D:
  JSL.L CODE_FL_86C7AD                      ; $8CE96D |
  JSL.L CODE_FL_85AC3A                      ; $8CE971 |
  LDA.W #$30DA                              ; $8CE975 |
  BCC CODE_8CE97D                           ; $8CE978 |
  LDA.W #$30CA                              ; $8CE97A |

CODE_8CE97D:
  STA.B $00,X                               ; $8CE97D |
  LDA.B $34,X                               ; $8CE97F |
  ORA.W #$B880                              ; $8CE981 |
  STA.B $34,X                               ; $8CE984 |
  JML.L CODE_FL_86C63A                      ; $8CE986 |

CODE_8CE98A:
  LDA.B $32,X                               ; $8CE98A |
  BPL CODE_8CE9A6                           ; $8CE98C |
  JSL.L CODE_FL_85AC3A                      ; $8CE98E |
  BCS CODE_8CE9A6                           ; $8CE992 |
  LDA.W #$000C                              ; $8CE994 |
  JSL.L push_sound_queue                    ; $8CE997 |
  JSL.L CODE_FL_85AC4F                      ; $8CE99B |
  LDA.W #$30CA                              ; $8CE99F |
  STA.B $00,X                               ; $8CE9A2 |
  INC.B $1A,X                               ; $8CE9A4 |

CODE_8CE9A6:
  RTL                                       ; $8CE9A6 |

CODE_8CE9A7:
  JSL.L CODE_FL_86C239                      ; $8CE9A7 |
  BCC CODE_8CE9AF                           ; $8CE9AB |
  INC.B $1A,X                               ; $8CE9AD |

CODE_8CE9AF:
  RTL                                       ; $8CE9AF |

CODE_8CE9B0:
  JSL.L CODE_FL_86C424                      ; $8CE9B0 |
  PHX                                       ; $8CE9B4 |
  ASL A                                     ; $8CE9B5 |
  TAX                                       ; $8CE9B6 |
  LDA.L PTR16_8CE9C1,X                      ; $8CE9B7 |
  PLX                                       ; $8CE9BB |
  STA.B $00                                 ; $8CE9BC |
  JMP.W ($0000)                             ; $8CE9BE |

PTR16_8CE9C1:
  dw CODE_8CE9C7                            ; $8CE9C1 |
  dw CODE_8CE9D6                            ; $8CE9C3 |
  dw CODE_8CE9DA                            ; $8CE9C5 |

CODE_8CE9C7:
  JSL.L CODE_FL_86C7AD                      ; $8CE9C7 |
  LDA.B $34,X                               ; $8CE9CB |
  ORA.W #$BA04                              ; $8CE9CD |
  STA.B $34,X                               ; $8CE9D0 |
  JML.L CODE_FL_86C63A                      ; $8CE9D2 |

CODE_8CE9D6:
  JML.L CODE_JL_85ACC0                      ; $8CE9D6 |

CODE_8CE9DA:
  CLC                                       ; $8CE9DA |
  LDA.B $09,X                               ; $8CE9DB |
  ADC.W #$FFF0                              ; $8CE9DD |
  STA.B $08                                 ; $8CE9E0 |
  CLC                                       ; $8CE9E2 |
  LDA.B $0D,X                               ; $8CE9E3 |
  ADC.W #$FFE0                              ; $8CE9E5 |
  STA.B $0A                                 ; $8CE9E8 |
  LDA.W #$0090                              ; $8CE9EA |
  JSL.L CODE_FL_8580F7                      ; $8CE9ED |
  BCC CODE_8CE9F4                           ; $8CE9F1 |
  RTL                                       ; $8CE9F3 |

CODE_8CE9F4:
  JSL.L CODE_FL_85A71F                      ; $8CE9F4 |
  JML.L CODE_FL_86CA2D                      ; $8CE9F8 |

CODE_8CE9FC:
  JSL.L CODE_FL_86C424                      ; $8CE9FC |
  PHX                                       ; $8CEA00 |
  ASL A                                     ; $8CEA01 |
  TAX                                       ; $8CEA02 |
  LDA.L PTR16_8CEA0D,X                      ; $8CEA03 |
  PLX                                       ; $8CEA07 |
  STA.B $00                                 ; $8CEA08 |
  JMP.W ($0000)                             ; $8CEA0A |

PTR16_8CEA0D:
  dw CODE_8CEA13                            ; $8CEA0D |
  dw CODE_8CEA39                            ; $8CEA0F |
  dw CODE_8CEA3D                            ; $8CEA11 |

CODE_8CEA13:
  JSL.L CODE_FL_85AC48                      ; $8CEA13 |
  JSL.L CODE_FL_86C7AD                      ; $8CEA17 |
  LDA.B $4E,X                               ; $8CEA1B |
  AND.W #$0100                              ; $8CEA1D |
  BNE CODE_8CEA29                           ; $8CEA20 |
  LDA.B $04,X                               ; $8CEA22 |
  ORA.W #$1898                              ; $8CEA24 |
  STA.B $04,X                               ; $8CEA27 |

CODE_8CEA29:
  LDA.W #$3052                              ; $8CEA29 |
  STA.B $00,X                               ; $8CEA2C |
  LDA.B $34,X                               ; $8CEA2E |
  ORA.W #$BA84                              ; $8CEA30 |
  STA.B $34,X                               ; $8CEA33 |
  JML.L CODE_FL_86C63A                      ; $8CEA35 |

CODE_8CEA39:
  JML.L CODE_JL_85ACC0                      ; $8CEA39 |

CODE_8CEA3D:
  JSL.L CODE_FL_85AC4F                      ; $8CEA3D |
  BRA CODE_8CE9F4                           ; $8CEA41 |

CODE_8CEA43:
  JSL.L CODE_FL_86C3F8                      ; $8CEA43 |
  PHX                                       ; $8CEA47 |
  ASL A                                     ; $8CEA48 |
  TAX                                       ; $8CEA49 |
  LDA.L PTR16_8CEA54,X                      ; $8CEA4A |
  PLX                                       ; $8CEA4E |
  STA.B $00                                 ; $8CEA4F |
  JMP.W ($0000)                             ; $8CEA51 |

PTR16_8CEA54:
  dw CODE_8CEA5E                            ; $8CEA54 |
  dw CODE_8CEAA6                            ; $8CEA56 |
  dw CODE_8CEAF7                            ; $8CEA58 |
  dw CODE_8CEB61                            ; $8CEA5A |
  dw CODE_8CEB3B                            ; $8CEA5C |

CODE_8CEA5E:
  JSL.L CODE_FL_86C7AD                      ; $8CEA5E |
  JSL.L CODE_FL_85ABAD                      ; $8CEA62 |
  BCC CODE_8CEA73                           ; $8CEA66 |
  LDA.W #$34A8                              ; $8CEA68 |
  STA.B $00,X                               ; $8CEA6B |
  LDA.W #$0004                              ; $8CEA6D |
  STA.B $1A,X                               ; $8CEA70 |
  RTL                                       ; $8CEA72 |

CODE_8CEA73:
  LDA.W #$0018                              ; $8CEA73 |
  JSL.L CODE_FL_86C9A4                      ; $8CEA76 |
  BCS CODE_8CEAA5                           ; $8CEA7A |
  JSL.L CODE_FL_85AAB6                      ; $8CEA7C |
  JSL.L CODE_FL_86C7C4                      ; $8CEA80 |
  LDA.W #$340A                              ; $8CEA84 |
  STA.W $0000,Y                             ; $8CEA87 |
  LDA.W $0004,Y                             ; $8CEA8A |
  AND.W #$6767                              ; $8CEA8D |
  ORA.W #$1898                              ; $8CEA90 |
  STA.W $0004,Y                             ; $8CEA93 |
  JSL.L CODE_FL_85AC74                      ; $8CEA96 |
  LDA.B $34,X                               ; $8CEA9A |
  ORA.W #$0888                              ; $8CEA9C |
  STA.B $34,X                               ; $8CEA9F |
  JML.L CODE_FL_86C63F                      ; $8CEAA1 |

CODE_8CEAA5:
  RTL                                       ; $8CEAA5 |

CODE_8CEAA6:
  LDA.B $46,X                               ; $8CEAA6 |
  BMI CODE_8CEAAB                           ; $8CEAA8 |
  RTL                                       ; $8CEAAA |

CODE_8CEAAB:
  AND.W #$0800                              ; $8CEAAB |
  BEQ CODE_8CEABE                           ; $8CEAAE |
  LDY.W #$0400                              ; $8CEAB0 |
  LDA.W $0028,Y                             ; $8CEAB3 |
  BPL CODE_8CEABC                           ; $8CEAB6 |
  EOR.W #$FFFF                              ; $8CEAB8 |
  INC A                                     ; $8CEABB |

CODE_8CEABC:
  STA.B $3A,X                               ; $8CEABC |

CODE_8CEABE:
  LDA.B $46,X                               ; $8CEABE |
  AND.W #$0400                              ; $8CEAC0 |
  BEQ CODE_8CEAD3                           ; $8CEAC3 |
  LDY.W #$04C0                              ; $8CEAC5 |
  LDA.W $0028,Y                             ; $8CEAC8 |
  BPL CODE_8CEAD1                           ; $8CEACB |
  EOR.W #$FFFF                              ; $8CEACD |
  INC A                                     ; $8CEAD0 |

CODE_8CEAD1:
  STA.B $3C,X                               ; $8CEAD1 |

CODE_8CEAD3:
  LDA.W #$000A                              ; $8CEAD3 |
  STA.B $2C,X                               ; $8CEAD6 |
  LDA.W #$0080                              ; $8CEAD8 |
  STA.B $28,X                               ; $8CEADB |
  INC.B $1A,X                               ; $8CEADD |
  LDY.B $44,X                               ; $8CEADF |
  LDA.W #$2012                              ; $8CEAE1 |
  JSL.L CODE_FL_86CAE6                      ; $8CEAE4 |
  JSR.W CODE_FN_8CEBD7                      ; $8CEAE8 |
  JSL.L CODE_FL_8CEB3C                      ; $8CEAEB |
  BNE CODE_8CEAF6                           ; $8CEAEF |
  LDA.W #$0001                              ; $8CEAF1 |
  STA.B $E4                                 ; $8CEAF4 |

CODE_8CEAF6:
  RTL                                       ; $8CEAF6 |

CODE_8CEAF7:
  JSR.W CODE_FN_8CEBD7                      ; $8CEAF7 |
  JSL.L CODE_FL_86C70D                      ; $8CEAFA |
  LDA.W #$000A                              ; $8CEAFE |
  STA.B $2C,X                               ; $8CEB01 |
  LDA.W #$FF80                              ; $8CEB03 |
  STA.B $28,X                               ; $8CEB06 |
  INC.B $1A,X                               ; $8CEB08 |
  JSL.L CODE_FL_8CEB3C                      ; $8CEB0A |
  BNE CODE_8CEB34                           ; $8CEB0E |
  LDY.B $44,X                               ; $8CEB10 |
  TDC                                       ; $8CEB12 |
  JSL.L CODE_FL_86CAE6                      ; $8CEB13 |
  LDA.W #$34A8                              ; $8CEB17 |
  STA.W $0000,Y                             ; $8CEB1A |
  STZ.B $34,X                               ; $8CEB1D |
  STZ.B $28,X                               ; $8CEB1F |
  JSL.L CODE_FL_85ABC2                      ; $8CEB21 |
  LDA.W #$00DC                              ; $8CEB25 |
  JSL.L CODE_FL_8089BD                      ; $8CEB28 |
  STZ.B $E4                                 ; $8CEB2C |
  LDA.W #$0004                              ; $8CEB2E |
  STA.B $1A,X                               ; $8CEB31 |
  RTL                                       ; $8CEB33 |

CODE_8CEB34:
  LDA.W #$0032                              ; $8CEB34 |
  JSL.L push_sound_queue                    ; $8CEB37 |

CODE_8CEB3B:
  RTL                                       ; $8CEB3B |

CODE_FL_8CEB3C:
  LDA.B $A6                                 ; $8CEB3C |
  BEQ CODE_8CEB5D                           ; $8CEB3E |
  LDA.B $46,X                               ; $8CEB40 |
  AND.W #$0800                              ; $8CEB42 |
  BEQ CODE_8CEB4E                           ; $8CEB45 |
  LDA.B $A6                                 ; $8CEB47 |
  CMP.W #$0400                              ; $8CEB49 |
  BEQ CODE_8CEB5C                           ; $8CEB4C |

CODE_8CEB4E:
  LDA.B $46,X                               ; $8CEB4E |
  AND.W #$0400                              ; $8CEB50 |
  BEQ CODE_8CEB5D                           ; $8CEB53 |
  LDA.B $A6                                 ; $8CEB55 |
  CMP.W #$04C0                              ; $8CEB57 |
  BNE CODE_8CEB5D                           ; $8CEB5A |

CODE_8CEB5C:
  RTL                                       ; $8CEB5C |

CODE_8CEB5D:
  LDA.W #$0001                              ; $8CEB5D |
  RTL                                       ; $8CEB60 |

CODE_8CEB61:
  JSR.W CODE_FN_8CEBD7                      ; $8CEB61 |
  LDA.B $2C,X                               ; $8CEB64 |
  BEQ CODE_8CEB6B                           ; $8CEB66 |
  STZ.B $46,X                               ; $8CEB68 |
  RTL                                       ; $8CEB6A |

CODE_8CEB6B:
  LDA.B $46,X                               ; $8CEB6B |
  AND.W #$0800                              ; $8CEB6D |
  BEQ CODE_8CEB9A                           ; $8CEB70 |
  LDA.B $28                                 ; $8CEB72 |
  AND.W #$8000                              ; $8CEB74 |
  BEQ CODE_8CEB85                           ; $8CEB77 |
  LDA.B $3A,X                               ; $8CEB79 |
  ASL A                                     ; $8CEB7B |
  ASL A                                     ; $8CEB7C |
  ASL A                                     ; $8CEB7D |
  STA.B $00                                 ; $8CEB7E |
  ASL A                                     ; $8CEB80 |
  ADC.B $00                                 ; $8CEB81 |
  BRA CODE_8CEB8B                           ; $8CEB83 |

CODE_8CEB85:
  LDA.B $3A,X                               ; $8CEB85 |
  ASL A                                     ; $8CEB87 |
  ASL A                                     ; $8CEB88 |
  ASL A                                     ; $8CEB89 |
  ASL A                                     ; $8CEB8A |

CODE_8CEB8B:
  CMP.W #$0800                              ; $8CEB8B |
  BCC CODE_8CEB93                           ; $8CEB8E |
  LDA.W #$0800                              ; $8CEB90 |

CODE_8CEB93:
  EOR.W #$FFFF                              ; $8CEB93 |
  INC A                                     ; $8CEB96 |
  STA.W $0428                               ; $8CEB97 |

CODE_8CEB9A:
  LDA.B $46,X                               ; $8CEB9A |
  AND.W #$0400                              ; $8CEB9C |
  BEQ CODE_8CEBC9                           ; $8CEB9F |
  LDA.B $2A                                 ; $8CEBA1 |
  AND.W #$8000                              ; $8CEBA3 |
  BEQ CODE_8CEBB4                           ; $8CEBA6 |
  LDA.B $3C,X                               ; $8CEBA8 |
  ASL A                                     ; $8CEBAA |
  ASL A                                     ; $8CEBAB |
  ASL A                                     ; $8CEBAC |
  STA.B $00                                 ; $8CEBAD |
  ASL A                                     ; $8CEBAF |
  ADC.B $00                                 ; $8CEBB0 |
  BRA CODE_8CEBBA                           ; $8CEBB2 |

CODE_8CEBB4:
  LDA.B $3C,X                               ; $8CEBB4 |
  ASL A                                     ; $8CEBB6 |
  ASL A                                     ; $8CEBB7 |
  ASL A                                     ; $8CEBB8 |
  ASL A                                     ; $8CEBB9 |

CODE_8CEBBA:
  CMP.W #$0800                              ; $8CEBBA |
  BCC CODE_8CEBC2                           ; $8CEBBD |
  LDA.W #$0800                              ; $8CEBBF |

CODE_8CEBC2:
  EOR.W #$FFFF                              ; $8CEBC2 |
  INC A                                     ; $8CEBC5 |
  STA.W $04E8                               ; $8CEBC6 |

CODE_8CEBC9:
  TDC                                       ; $8CEBC9 |
  STA.B $28,X                               ; $8CEBCA |
  STA.B $3A,X                               ; $8CEBCC |
  STA.B $3C,X                               ; $8CEBCE |
  STA.B $46,X                               ; $8CEBD0 |
  DEC.B $1A,X                               ; $8CEBD2 |
  DEC.B $1A,X                               ; $8CEBD4 |
  RTL                                       ; $8CEBD6 |

CODE_FN_8CEBD7:
  LDA.B $3A,X                               ; $8CEBD7 |
  BEQ CODE_8CEBDE                           ; $8CEBD9 |
  LDA.W $0434                               ; $8CEBDB |

CODE_8CEBDE:
  LDA.B $3A,X                               ; $8CEBDE |
  BEQ CODE_8CEBE5                           ; $8CEBE0 |
  LDA.W $04F4                               ; $8CEBE2 |

CODE_8CEBE5:
  RTS                                       ; $8CEBE5 |

CODE_8CEBE6:
  JSL.L CODE_FL_86C3B0                      ; $8CEBE6 |
  PHX                                       ; $8CEBEA |
  ASL A                                     ; $8CEBEB |
  TAX                                       ; $8CEBEC |
  LDA.L PTR16_8CEBF7,X                      ; $8CEBED |
  PLX                                       ; $8CEBF1 |
  STA.B $00                                 ; $8CEBF2 |
  JMP.W ($0000)                             ; $8CEBF4 |

PTR16_8CEBF7:
  dw CODE_8CEBFD                            ; $8CEBF7 |
  dw CODE_8CEC13                            ; $8CEBF9 |
  dw CODE_8CEC2A                            ; $8CEBFB |

CODE_8CEBFD:
  JSL.L CODE_FL_86C7A5                      ; $8CEBFD |
  LDA.W #$32E6                              ; $8CEC01 |
  STA.B $3A,X                               ; $8CEC04 |
  LDA.B $4E,X                               ; $8CEC06 |
  AND.W #$0100                              ; $8CEC08 |
  BEQ CODE_8CEC0F                           ; $8CEC0B |
  INC.B $1A,X                               ; $8CEC0D |

CODE_8CEC0F:
  JML.L CODE_FL_86C63F                      ; $8CEC0F |

CODE_8CEC13:
  JSL.L CODE_FL_85ABAD                      ; $8CEC13 |
  BCC CODE_8CEC25                           ; $8CEC17 |

CODE_8CEC19:
  LDA.B $3A,X                               ; $8CEC19 |
  STA.B $00,X                               ; $8CEC1B |
  LDA.B $34,X                               ; $8CEC1D |
  ORA.W #$0888                              ; $8CEC1F |
  STA.B $34,X                               ; $8CEC22 |
  RTL                                       ; $8CEC24 |

CODE_8CEC25:
  STZ.B $00,X                               ; $8CEC25 |
  STZ.B $34,X                               ; $8CEC27 |
  RTL                                       ; $8CEC29 |

CODE_8CEC2A:
  JSL.L CODE_FL_85ABAD                      ; $8CEC2A |
  BCC CODE_8CEC19                           ; $8CEC2E |
  BRA CODE_8CEC25                           ; $8CEC30 |

CODE_8CEC32:
  LDA.B $3C,X                               ; $8CEC32 |
  BEQ CODE_8CEC3A                           ; $8CEC34 |
  JSL.L CODE_FL_8CECD8                      ; $8CEC36 |

CODE_8CEC3A:
  JSL.L CODE_FL_86C412                      ; $8CEC3A |
  PHX                                       ; $8CEC3E |
  ASL A                                     ; $8CEC3F |
  TAX                                       ; $8CEC40 |
  LDA.L PTR16_8CEC4B,X                      ; $8CEC41 |
  PLX                                       ; $8CEC45 |
  STA.B $00                                 ; $8CEC46 |
  JMP.W ($0000)                             ; $8CEC48 |

PTR16_8CEC4B:
  dw CODE_JL_8CEC63                         ; $8CEC4B |
  dw CODE_8CECF3                            ; $8CEC4D |
  dw CODE_8CED1B                            ; $8CEC4F |
  dw CODE_8CED62                            ; $8CEC51 |
  dw CODE_8CED73                            ; $8CEC53 |
  dw CODE_8CED91                            ; $8CEC55 |
  LDA.W #$2013                              ; $8CEC57 |
  JSL.L CODE_FL_86CAEE                      ; $8CEC5A |
  LDA.W #$0100                              ; $8CEC5E |
  STA.B $14                                 ; $8CEC61 |

CODE_JL_8CEC63:
  JSL.L CODE_FL_86C7A5                      ; $8CEC63 |
  LDA.B $4E,X                               ; $8CEC67 |
  AND.W #$0001                              ; $8CEC69 |
  BNE CODE_8CEC7F                           ; $8CEC6C |
  LDA.B $04,X                               ; $8CEC6E |
  ORA.W #$2020                              ; $8CEC70 |
  STA.B $04,X                               ; $8CEC73 |
  LDA.W #$0001                              ; $8CEC75 |
  STA.B $3A,X                               ; $8CEC78 |
  LDA.W #$0008                              ; $8CEC7A |
  BRA CODE_8CEC87                           ; $8CEC7D |

CODE_8CEC7F:
  LDA.W #$FFFF                              ; $8CEC7F |
  STA.B $3A,X                               ; $8CEC82 |
  LDA.W #$FFF8                              ; $8CEC84 |

CODE_8CEC87:
  STA.B $12                                 ; $8CEC87 |
  LDA.W #$0080                              ; $8CEC89 |
  STA.B $2C,X                               ; $8CEC8C |
  JSL.L CODE_FL_86C63F                      ; $8CEC8E |
  LDA.W #$0003                              ; $8CEC92 |
  STA.B $10                                 ; $8CEC95 |

CODE_8CEC97:
  LDA.W #$00F1                              ; $8CEC97 |
  JSL.L CODE_FL_86C9C2                      ; $8CEC9A |
  BCS CODE_8CECD4                           ; $8CEC9E |
  JSL.L CODE_FL_85AAB6                      ; $8CECA0 |
  JSL.L CODE_FL_86C7C4                      ; $8CECA4 |
  LDA.W #$2015                              ; $8CECA8 |
  JSL.L CODE_FL_86CAE6                      ; $8CECAB |
  LDA.B $4A,X                               ; $8CECAF |
  STA.W $004A,Y                             ; $8CECB1 |
  PHY                                       ; $8CECB4 |
  LDA.B $10                                 ; $8CECB5 |
  LDY.W #$0005                              ; $8CECB7 |
  JSL.L CODE_FL_808E44                      ; $8CECBA |
  PLY                                       ; $8CECBE |
  STA.W $003A,Y                             ; $8CECBF |
  LDA.B $12                                 ; $8CECC2 |
  STA.W $003C,Y                             ; $8CECC4 |
  LDA.B $14                                 ; $8CECC7 |
  STA.W $003E,Y                             ; $8CECC9 |
  DEC.B $10                                 ; $8CECCC |
  BNE CODE_8CEC97                           ; $8CECCE |
  JML.L CODE_FL_85A9EF                      ; $8CECD0 |

CODE_8CECD4:
  JML.L CODE_FL_86CA36                      ; $8CECD4 |

CODE_FL_8CECD8:
  LDA.B $3C,X                               ; $8CECD8 |
  BPL CODE_8CECE0                           ; $8CECDA |
  EOR.W #$FFFF                              ; $8CECDC |
  INC A                                     ; $8CECDF |

CODE_8CECE0:
  ADC.W #$0000                              ; $8CECE0 |
  LSR A                                     ; $8CECE3 |
  STA.B $0E                                 ; $8CECE4 |
  STA.B $0A                                 ; $8CECE6 |
  STZ.B $0C                                 ; $8CECE8 |
  LDA.W #$0010                              ; $8CECEA |
  STA.B $10                                 ; $8CECED |
  JML.L CODE_FL_85F8A1                      ; $8CECEF |

CODE_8CECF3:
  JSL.L CODE_FL_86C70D                      ; $8CECF3 |
  TDC                                       ; $8CECF7 |
  STA.B $00,X                               ; $8CECF8 |
  JSL.L CODE_FL_86CAEE                      ; $8CECFA |
  LDA.B $0D,X                               ; $8CECFE |
  CMP.W #$0100                              ; $8CED00 |
  BCS CODE_8CED0C                           ; $8CED03 |
  LDA.W #$0001                              ; $8CED05 |
  JSL.L CODE_FL_8CED33                      ; $8CED08 |

CODE_8CED0C:
  STZ.B $40,X                               ; $8CED0C |
  STZ.B $3C,X                               ; $8CED0E |
  JSR.W CODE_FN_8CED98                      ; $8CED10 |
  LDA.W #$0040                              ; $8CED13 |

CODE_8CED16:
  STA.B $2C,X                               ; $8CED16 |
  INC.B $1A,X                               ; $8CED18 |
  RTL                                       ; $8CED1A |

CODE_8CED1B:
  JSR.W CODE_FN_8CED98                      ; $8CED1B |
  TDC                                       ; $8CED1E |
  JSL.L CODE_FL_8CED33                      ; $8CED1F |
  CLC                                       ; $8CED23 |
  LDA.B $3C,X                               ; $8CED24 |
  ADC.B $3A,X                               ; $8CED26 |
  STA.B $3C,X                               ; $8CED28 |
  JSL.L CODE_FL_86C70D                      ; $8CED2A |
  LDA.W #$0080                              ; $8CED2E |
  BRA CODE_8CED16                           ; $8CED31 |

CODE_FL_8CED33:
  STA.B $00                                 ; $8CED33 |
  LDA.B $09,X                               ; $8CED35 |
  CMP.W #$0100                              ; $8CED37 |
  BCS CODE_8CED59                           ; $8CED3A |
  LDA.B $0D,X                               ; $8CED3C |
  CMP.W #$00C0                              ; $8CED3E |
  BCS CODE_8CED59                           ; $8CED41 |
  INC.B $40,X                               ; $8CED43 |
  LDA.B $40,X                               ; $8CED45 |
  CMP.W #$000A                              ; $8CED47 |
  BCC CODE_8CED59                           ; $8CED4A |
  STZ.B $40,X                               ; $8CED4C |
  LDA.B $00                                 ; $8CED4E |
  BNE CODE_8CED5A                           ; $8CED50 |
  LDA.W #$0021                              ; $8CED52 |
  JSL.L push_sound_queue                    ; $8CED55 |

CODE_8CED59:
  RTL                                       ; $8CED59 |

CODE_8CED5A:
  LDA.W #$00BC                              ; $8CED5A |
  JSL.L CODE_FL_8089BD                      ; $8CED5D |
  RTL                                       ; $8CED61 |

CODE_8CED62:
  JSR.W CODE_FN_8CED98                      ; $8CED62 |
  TDC                                       ; $8CED65 |
  JSL.L CODE_FL_8CED33                      ; $8CED66 |
  JSL.L CODE_FL_86C70D                      ; $8CED6A |
  LDA.W #$0040                              ; $8CED6E |
  BRA CODE_8CED16                           ; $8CED71 |

CODE_8CED73:
  JSR.W CODE_FN_8CED98                      ; $8CED73 |
  TDC                                       ; $8CED76 |
  JSL.L CODE_FL_8CED33                      ; $8CED77 |
  SEC                                       ; $8CED7B |
  LDA.B $3C,X                               ; $8CED7C |
  SBC.B $3A,X                               ; $8CED7E |
  STA.B $3C,X                               ; $8CED80 |
  JSL.L CODE_FL_86C70D                      ; $8CED82 |
  LDA.W #$0080                              ; $8CED86 |
  STA.B $2C,X                               ; $8CED89 |
  LDA.W #$0001                              ; $8CED8B |
  STA.B $1A,X                               ; $8CED8E |
  RTL                                       ; $8CED90 |

CODE_8CED91:
  LDA.W #$A000                              ; $8CED91 |
  JML.L CODE_JL_85AAAA                      ; $8CED94 |

CODE_FN_8CED98:
  LDA.B $4E,X                               ; $8CED98 |
  LSR A                                     ; $8CED9A |
  AND.W #$0001                              ; $8CED9B |
  BEQ CODE_8CEDE6                           ; $8CED9E |
  LDA.W $1C38                               ; $8CEDA0 |
  BCC CODE_8CEDA6                           ; $8CEDA3 |
  INC A                                     ; $8CEDA5 |

CODE_8CEDA6:
  STA.B $00                                 ; $8CEDA6 |
  AND.W #$0007                              ; $8CEDA8 |
  BNE CODE_8CEDE6                           ; $8CEDAB |
  LDA.B $4E,X                               ; $8CEDAD |
  LSR A                                     ; $8CEDAF |
  LDA.W #$FFE0                              ; $8CEDB0 |
  LDY.W #$0000                              ; $8CEDB3 |
  BCC CODE_8CEDBF                           ; $8CEDB6 |
  LDY.W #$0004                              ; $8CEDB8 |
  EOR.W #$FFFF                              ; $8CEDBB |
  SEC                                       ; $8CEDBE |

CODE_8CEDBF:
  ADC.B $09,X                               ; $8CEDBF |
  AND.W #$FFE0                              ; $8CEDC1 |
  STA.B $08                                 ; $8CEDC4 |
  LDA.B $0D,X                               ; $8CEDC6 |
  CLC                                       ; $8CEDC8 |
  ADC.W #$FFF0                              ; $8CEDC9 |
  STA.B $0A                                 ; $8CEDCC |
  TYX                                       ; $8CEDCE |
  LDA.B $00                                 ; $8CEDCF |
  AND.W #$000F                              ; $8CEDD1 |
  BNE CODE_8CEDDC                           ; $8CEDD4 |
  LDA.L DATA16_8CEDE7,X                     ; $8CEDD6 |
  BRA CODE_8CEDE0                           ; $8CEDDA |

CODE_8CEDDC:
  LDA.L DATA16_8CEDE9,X                     ; $8CEDDC |

CODE_8CEDE0:
  JSL.L CODE_FL_858256                      ; $8CEDE0 |
  LDX.B $FC                                 ; $8CEDE4 |

CODE_8CEDE6:
  RTS                                       ; $8CEDE6 |

DATA16_8CEDE7:
  dw $0134                                  ; $8CEDE7 |

DATA16_8CEDE9:
  dw $0136,$0138,$013A                      ; $8CEDE9 |

CODE_8CEDEF:
  JSL.L CODE_FL_86C3F8                      ; $8CEDEF |
  LDY.B $44,X                               ; $8CEDF3 |
  LDA.W $001A,Y                             ; $8CEDF5 |
  BNE CODE_8CEDFE                           ; $8CEDF8 |
  JML.L CODE_FL_86CA2D                      ; $8CEDFA |

CODE_8CEDFE:
  CMP.W #$0001                              ; $8CEDFE |
  BNE CODE_8CEE05                           ; $8CEE01 |
  STZ.B $00,X                               ; $8CEE03 |

CODE_8CEE05:
  LDA.W $1C38                               ; $8CEE05 |
  AND.W #$000F                              ; $8CEE08 |
  CMP.B $3A,X                               ; $8CEE0B |
  BNE CODE_8CEE40                           ; $8CEE0D |
  LDA.W $003C,Y                             ; $8CEE0F |
  CMP.W #$0008                              ; $8CEE12 |
  BCS CODE_8CEE1F                           ; $8CEE15 |
  LDA.W #$0200                              ; $8CEE17 |
  STA.B $09,X                               ; $8CEE1A |
  STZ.B $26,X                               ; $8CEE1C |
  RTL                                       ; $8CEE1E |

CODE_8CEE1F:
  PHP                                       ; $8CEE1F |
  BPL CODE_8CEE26                           ; $8CEE20 |
  EOR.W #$FFFF                              ; $8CEE22 |
  INC A                                     ; $8CEE25 |

CODE_8CEE26:
  ASL A                                     ; $8CEE26 |
  ASL A                                     ; $8CEE27 |
  ASL A                                     ; $8CEE28 |
  ASL A                                     ; $8CEE29 |
  ADC.W $003E,Y                             ; $8CEE2A |
  PLP                                       ; $8CEE2D |
  BPL CODE_8CEE34                           ; $8CEE2E |
  EOR.W #$FFFF                              ; $8CEE30 |
  INC A                                     ; $8CEE33 |

CODE_8CEE34:
  STA.B $26,X                               ; $8CEE34 |
  CLC                                       ; $8CEE36 |
  LDA.B $4A,X                               ; $8CEE37 |
  SBC.W $1662                               ; $8CEE39 |
  ADC.B $3C,X                               ; $8CEE3C |
  STA.B $09,X                               ; $8CEE3E |

CODE_8CEE40:
  RTL                                       ; $8CEE40 |

CODE_8CEE41:
  JSL.L CODE_FL_86C3F8                      ; $8CEE41 |
  LDA.B $1A,X                               ; $8CEE45 |
  PHX                                       ; $8CEE47 |
  ASL A                                     ; $8CEE48 |
  TAX                                       ; $8CEE49 |
  LDA.L PTR16_8CEE54,X                      ; $8CEE4A |
  PLX                                       ; $8CEE4E |
  STA.B $00                                 ; $8CEE4F |
  JMP.W ($0000)                             ; $8CEE51 |

PTR16_8CEE54:
  dw CODE_8CEE5E                            ; $8CEE54 |
  dw CODE_8CEE72                            ; $8CEE56 |
  dw CODE_8CEE73                            ; $8CEE58 |
  dw CODE_8CEEB8                            ; $8CEE5A |
  dw CODE_8CEECC                            ; $8CEE5C |

CODE_8CEE5E:
  LDA.B $34,X                               ; $8CEE5E |
  ORA.W #$9888                              ; $8CEE60 |
  STA.B $34,X                               ; $8CEE63 |
  JSL.L CODE_FL_86C7AD                      ; $8CEE65 |
  LDA.W #$3360                              ; $8CEE69 |
  STA.B $00,X                               ; $8CEE6C |
  JML.L CODE_FL_86C63F                      ; $8CEE6E |

CODE_8CEE72:
  RTL                                       ; $8CEE72 |

CODE_8CEE73:
  LDA.W #$000C                              ; $8CEE73 |
  JSL.L push_sound_queue                    ; $8CEE76 |
  JSL.L CODE_FL_85A8C3                      ; $8CEE7A |
  LDA.B $37,X                               ; $8CEE7E |
  AND.W #$00FF                              ; $8CEE80 |
  CMP.W #$000D                              ; $8CEE83 |
  BEQ CODE_8CEE94                           ; $8CEE86 |
  JSL.L CODE_FL_85AB0B                      ; $8CEE88 |
  LDA.W $0009,Y                             ; $8CEE8C |
  CMP.B $09,X                               ; $8CEE8F |
  ROL A                                     ; $8CEE91 |
  BRA CODE_8CEE99                           ; $8CEE92 |

CODE_8CEE94:
  LDA.W $0026,Y                             ; $8CEE94 |
  ROL A                                     ; $8CEE97 |
  ROL A                                     ; $8CEE98 |

CODE_8CEE99:
  EOR.B $4E,X                               ; $8CEE99 |
  AND.W #$0001                              ; $8CEE9B |
  BNE CODE_8CEEA3                           ; $8CEE9E |
  DEC.B $1A,X                               ; $8CEEA0 |
  RTL                                       ; $8CEEA2 |

CODE_8CEEA3:
  LDY.W #$2019                              ; $8CEEA3 |
  LDA.B $4E,X                               ; $8CEEA6 |
  AND.W #$0001                              ; $8CEEA8 |
  BNE CODE_8CEEB0                           ; $8CEEAB |
  LDY.W #$2018                              ; $8CEEAD |

CODE_8CEEB0:
  TYA                                       ; $8CEEB0 |
  JSL.L CODE_FL_86CAEE                      ; $8CEEB1 |
  INC.B $1A,X                               ; $8CEEB5 |
  RTL                                       ; $8CEEB7 |

CODE_8CEEB8:
  LDA.B $20,X                               ; $8CEEB8 |
  BNE CODE_8CEECC                           ; $8CEEBA |
  LDA.W #$0030                              ; $8CEEBC |
  STA.B $2E,X                               ; $8CEEBF |
  LDA.W #$0007                              ; $8CEEC1 |
  STA.B $30,X                               ; $8CEEC4 |
  JSL.L CODE_FL_85A9BF                      ; $8CEEC6 |
  INC.B $1A,X                               ; $8CEECA |

CODE_8CEECC:
  RTL                                       ; $8CEECC |

CODE_8CEECD:
  JSL.L CODE_FL_85F885                      ; $8CEECD |
  JSL.L CODE_FL_86C3EE                      ; $8CEED1 |
  PHX                                       ; $8CEED5 |
  ASL A                                     ; $8CEED6 |
  TAX                                       ; $8CEED7 |
  LDA.L PTR16_8CEEE2,X                      ; $8CEED8 |
  PLX                                       ; $8CEEDC |
  STA.B $00                                 ; $8CEEDD |
  JMP.W ($0000)                             ; $8CEEDF |

PTR16_8CEEE2:
  dw CODE_8CEEEC                            ; $8CEEE2 |
  dw CODE_8CEF0A                            ; $8CEEE4 |
  dw CODE_8CEF24                            ; $8CEEE6 |
  dw CODE_8CEF35                            ; $8CEEE8 |
  dw CODE_8CEF3F                            ; $8CEEEA |

CODE_8CEEEC:
  JSL.L CODE_FL_86C7AD                      ; $8CEEEC |
  LDA.W #$2017                              ; $8CEEF0 |
  JSL.L CODE_FL_86CAEE                      ; $8CEEF3 |
  JSL.L CODE_FL_85AA07                      ; $8CEEF7 |
  JSL.L CODE_FL_85AC74                      ; $8CEEFB |
  LDA.B $34,X                               ; $8CEEFF |
  ORA.W #$FCC0                              ; $8CEF01 |
  STA.B $34,X                               ; $8CEF04 |
  JML.L CODE_FL_86C63F                      ; $8CEF06 |

CODE_8CEF0A:
  JSR.W CODE_FN_8CEF4E                      ; $8CEF0A |
  STZ.B $26,X                               ; $8CEF0D |
  JSL.L CODE_FL_85A646                      ; $8CEF0F |
  BEQ CODE_8CEF23                           ; $8CEF13 |
  LDA.B $09,X                               ; $8CEF15 |
  CMP.W #$0100                              ; $8CEF17 |
  BCS CODE_8CEF23                           ; $8CEF1A |
  LDA.W #$001B                              ; $8CEF1C |
  JSL.L push_sound_queue                    ; $8CEF1F |

CODE_8CEF23:
  RTL                                       ; $8CEF23 |

CODE_8CEF24:
  JSR.W CODE_FN_8CEF4E                      ; $8CEF24 |
  STZ.B $26,X                               ; $8CEF27 |
  JSL.L CODE_FL_858B18                      ; $8CEF29 |
  LDA.W $1C12                               ; $8CEF2D |
  BEQ CODE_8CEF34                           ; $8CEF30 |
  INC.B $1A,X                               ; $8CEF32 |

CODE_8CEF34:
  RTL                                       ; $8CEF34 |

CODE_8CEF35:
  JSL.L CODE_FL_85A9F7                      ; $8CEF35 |
  LDA.W #$0004                              ; $8CEF39 |
  STA.B $1A,X                               ; $8CEF3C |
  RTL                                       ; $8CEF3E |

CODE_8CEF3F:
  LDA.B $09,X                               ; $8CEF3F |
  CMP.W #$0100                              ; $8CEF41 |
  BCS CODE_8CEF4A                           ; $8CEF44 |
  JSL.L CODE_FL_85A71F                      ; $8CEF46 |

CODE_8CEF4A:
  JML.L CODE_FL_86CA36                      ; $8CEF4A |

CODE_FN_8CEF4E:
  BIT.B $32,X                               ; $8CEF4E |
  BVC CODE_8CEF55                           ; $8CEF50 |
  PLA                                       ; $8CEF52 |
  BRA CODE_8CEF35                           ; $8CEF53 |

CODE_8CEF55:
  RTS                                       ; $8CEF55 |

CODE_8CEF56:
  JSL.L CODE_FL_86C424                      ; $8CEF56 |
  PHX                                       ; $8CEF5A |
  ASL A                                     ; $8CEF5B |
  TAX                                       ; $8CEF5C |
  LDA.L PTR16_8CEF67,X                      ; $8CEF5D |
  PLX                                       ; $8CEF61 |
  STA.B $00                                 ; $8CEF62 |
  JMP.W ($0000)                             ; $8CEF64 |

PTR16_8CEF67:
  dw CODE_8CEF6B                            ; $8CEF67 |
  dw CODE_8CEF72                            ; $8CEF69 |

CODE_8CEF6B:
  JSL.L CODE_FL_85AA07                      ; $8CEF6B |
  INC.B $1A,X                               ; $8CEF6F |
  RTL                                       ; $8CEF71 |

CODE_8CEF72:
  JSL.L CODE_FL_86C3A3                      ; $8CEF72 |
  LDA.B $3C,X                               ; $8CEF76 |
  BEQ CODE_8CEF88                           ; $8CEF78 |
  LDY.B $44,X                               ; $8CEF7A |
  LDA.W $0018,Y                             ; $8CEF7C |
  BNE CODE_8CEFB3                           ; $8CEF7F |
  STA.B $3C,X                               ; $8CEF81 |
  LDA.W #$0040                              ; $8CEF83 |
  STA.B $2C,X                               ; $8CEF86 |

CODE_8CEF88:
  JSL.L CODE_FL_86C70D                      ; $8CEF88 |
  LDA.B $4E,X                               ; $8CEF8C |
  AND.W #$000F                              ; $8CEF8E |
  ASL A                                     ; $8CEF91 |
  TAY                                       ; $8CEF92 |
  LDA.W CODE_00CB5D,Y                       ; $8CEF93 |
  STA.B $10                                 ; $8CEF96 |
  LDA.W CODE_00CB5B,Y                       ; $8CEF98 |
  JSL.L CODE_FL_86C97C                      ; $8CEF9B |
  BCS CODE_8CEFB3                           ; $8CEF9F |
  STY.B $44,X                               ; $8CEFA1 |
  LDA.W $0022,Y                             ; $8CEFA3 |
  AND.W #$BFFF                              ; $8CEFA6 |
  STA.W $0022,Y                             ; $8CEFA9 |
  LDA.B $10                                 ; $8CEFAC |
  STA.W $004E,Y                             ; $8CEFAE |
  INC.B $3C,X                               ; $8CEFB1 |

CODE_8CEFB3:
  RTL                                       ; $8CEFB3 |

CODE_8CEFB4:
  JSL.L CODE_FL_86C3F8                      ; $8CEFB4 |
  PHX                                       ; $8CEFB8 |
  ASL A                                     ; $8CEFB9 |
  TAX                                       ; $8CEFBA |
  LDA.L PTR16_8CEFC5,X                      ; $8CEFBB |
  PLX                                       ; $8CEFBF |
  STA.B $00                                 ; $8CEFC0 |
  JMP.W ($0000)                             ; $8CEFC2 |

PTR16_8CEFC5:
  dw CODE_8CEFD7                            ; $8CEFC5 |
  dw CODE_8CF00B                            ; $8CEFC7 |
  dw CODE_8CF01E                            ; $8CEFC9 |
  dw CODE_8CF02E                            ; $8CEFCB |
  dw CODE_8CF045                            ; $8CEFCD |
  dw CODE_8CF053                            ; $8CEFCF |
  dw CODE_8CF063                            ; $8CEFD1 |
  dw CODE_8CF080                            ; $8CEFD3 |
  dw CODE_8CF097                            ; $8CEFD5 |

CODE_8CEFD7:
  JSL.L CODE_FL_85ABAD                      ; $8CEFD7 |
  BCC CODE_JL_8CEFE2                        ; $8CEFDB |
  LDA.W #$0007                              ; $8CEFDD |
  STA.B $1A,X                               ; $8CEFE0 |

CODE_JL_8CEFE2:
  JSL.L CODE_FL_86C7A5                      ; $8CEFE2 |
  JSL.L CODE_FL_85AA07                      ; $8CEFE6 |
  LDA.W #$33EA                              ; $8CEFEA |
  STA.B $00,X                               ; $8CEFED |
  JSL.L CODE_FL_85A5CA                      ; $8CEFEF |
  LDA.W #$00E6                              ; $8CEFF3 |
  JSL.L CODE_FL_86C9A4                      ; $8CEFF6 |
  BCS CODE_8CF007                           ; $8CEFFA |
  JSL.L CODE_FL_85AAB6                      ; $8CEFFC |
  JSL.L CODE_FL_86C7C4                      ; $8CF000 |
  INC.B $1A,X                               ; $8CF004 |
  RTL                                       ; $8CF006 |

CODE_8CF007:
  JML.L CODE_FL_86CA36                      ; $8CF007 |

CODE_8CF00B:
  JSL.L CODE_FL_85ABAD                      ; $8CF00B |
  BCC CODE_8CF01D                           ; $8CF00F |
  LDA.W #$33FA                              ; $8CF011 |
  STA.B $00,X                               ; $8CF014 |
  LDA.W #$0050                              ; $8CF016 |

CODE_8CF019:
  STA.B $2C,X                               ; $8CF019 |
  INC.B $1A,X                               ; $8CF01B |

CODE_8CF01D:
  RTL                                       ; $8CF01D |

CODE_8CF01E:
  JSL.L CODE_FL_86C70D                      ; $8CF01E |
  STZ.B $28,X                               ; $8CF022 |
  LDA.W #$0100                              ; $8CF024 |
  STA.B $28,X                               ; $8CF027 |
  LDA.W #$0010                              ; $8CF029 |
  BRA CODE_8CF019                           ; $8CF02C |

CODE_8CF02E:
  JSL.L CODE_FL_86C70D                      ; $8CF02E |
  STZ.B $28,X                               ; $8CF032 |
  LDA.W #$008C                              ; $8CF034 |
  JSL.L CODE_FL_8089BD                      ; $8CF037 |
  LDA.W #$33EA                              ; $8CF03B |
  STA.B $00,X                               ; $8CF03E |
  LDA.W #$0050                              ; $8CF040 |
  BRA CODE_8CF019                           ; $8CF043 |

CODE_8CF045:
  JSL.L CODE_FL_86C70D                      ; $8CF045 |
  LDA.W #$FF00                              ; $8CF049 |
  STA.B $28,X                               ; $8CF04C |
  LDA.W #$0010                              ; $8CF04E |
  BRA CODE_8CF019                           ; $8CF051 |

CODE_8CF053:
  JSL.L CODE_FL_86C70D                      ; $8CF053 |
  LDA.W #$0100                              ; $8CF057 |
  STA.B $26,X                               ; $8CF05A |
  STZ.B $28,X                               ; $8CF05C |
  LDA.W #$0070                              ; $8CF05E |
  BRA CODE_8CF019                           ; $8CF061 |

CODE_8CF063:
  JSL.L CODE_FL_8CF7F2                      ; $8CF063 |
  LDY.B $44,X                               ; $8CF067 |
  LDA.B $09,X                               ; $8CF069 |
  STA.W $0009,Y                             ; $8CF06B |
  JSL.L CODE_FL_86C70D                      ; $8CF06E |
  LDA.W #$0019                              ; $8CF072 |
  JSL.L push_sound_queue                    ; $8CF075 |
  STZ.B $26,X                               ; $8CF079 |
  LDA.W #$0050                              ; $8CF07B |
  BRA CODE_8CF019                           ; $8CF07E |

CODE_8CF080:
  JSL.L CODE_FL_86C70D                      ; $8CF080 |
  LDA.W #$008C                              ; $8CF084 |
  JSL.L CODE_FL_8089BD                      ; $8CF087 |
  STZ.B $26,X                               ; $8CF08B |
  LDA.W #$33FA                              ; $8CF08D |
  STA.B $00,X                               ; $8CF090 |
  LDA.W #$0050                              ; $8CF092 |
  BRA CODE_8CF019                           ; $8CF095 |

CODE_8CF097:
  JSL.L CODE_FL_86C70D                      ; $8CF097 |
  LDA.W #$33EA                              ; $8CF09B |
  STA.B $00,X                               ; $8CF09E |
  RTL                                       ; $8CF0A0 |

CODE_8CF0A1:
  JSL.L CODE_FL_85AAC6                      ; $8CF0A1 |
  JSL.L CODE_FL_86C3B0                      ; $8CF0A5 |
  PHX                                       ; $8CF0A9 |
  ASL A                                     ; $8CF0AA |
  TAX                                       ; $8CF0AB |
  LDA.L PTR16_8CF0B6,X                      ; $8CF0AC |
  PLX                                       ; $8CF0B0 |
  STA.B $00                                 ; $8CF0B1 |
  JMP.W ($0000)                             ; $8CF0B3 |

PTR16_8CF0B6:
  dw CODE_8CF0BA                            ; $8CF0B6 |
  dw CODE_8CF0BA                            ; $8CF0B8 |

CODE_8CF0BA:
  LDY.B $44,X                               ; $8CF0BA |
  SEC                                       ; $8CF0BC |
  LDA.W $000D,Y                             ; $8CF0BD |
  SBC.B $0D,X                               ; $8CF0C0 |
  LDY.W #$3384                              ; $8CF0C2 |
  CMP.W #$0018                              ; $8CF0C5 |
  BCC CODE_8CF0ED                           ; $8CF0C8 |
  LDY.W #$3390                              ; $8CF0CA |
  CMP.W #$0028                              ; $8CF0CD |
  BCC CODE_8CF0ED                           ; $8CF0D0 |
  LDY.W #$339E                              ; $8CF0D2 |
  CMP.W #$0038                              ; $8CF0D5 |
  BCC CODE_8CF0ED                           ; $8CF0D8 |
  LDY.W #$33AE                              ; $8CF0DA |
  CMP.W #$0048                              ; $8CF0DD |
  BCC CODE_8CF0ED                           ; $8CF0E0 |
  LDY.W #$33C0                              ; $8CF0E2 |
  CMP.W #$0058                              ; $8CF0E5 |
  BCC CODE_8CF0ED                           ; $8CF0E8 |
  LDY.W #$33D4                              ; $8CF0EA |

CODE_8CF0ED:
  TYA                                       ; $8CF0ED |
  STA.B $00,X                               ; $8CF0EE |
  RTL                                       ; $8CF0F0 |

CODE_8CF0F1:
  JSL.L CODE_FL_86C3F8                      ; $8CF0F1 |
  PHX                                       ; $8CF0F5 |
  ASL A                                     ; $8CF0F6 |
  TAX                                       ; $8CF0F7 |
  LDA.L PTR16_8CF102,X                      ; $8CF0F8 |
  PLX                                       ; $8CF0FC |
  STA.B $00                                 ; $8CF0FD |
  JMP.W ($0000)                             ; $8CF0FF |

PTR16_8CF102:
  dw CODE_8CF114                            ; $8CF102 |
  dw CODE_8CF14E                            ; $8CF104 |
  dw CODE_8CF15C                            ; $8CF106 |
  dw CODE_8CF16A                            ; $8CF108 |
  dw CODE_8CF17A                            ; $8CF10A |
  dw CODE_8CF185                            ; $8CF10C |
  dw CODE_8CF18E                            ; $8CF10E |
  dw CODE_8CF192                            ; $8CF110 |
  dw CODE_8CF1B2                            ; $8CF112 |

CODE_8CF114:
  JSL.L CODE_FL_86C7AD                      ; $8CF114 |
  LDA.W #$3118                              ; $8CF118 |
  STA.B $00,X                               ; $8CF11B |
  LDA.B $34,X                               ; $8CF11D |
  ORA.W #$1880                              ; $8CF11F |
  STA.B $34,X                               ; $8CF122 |
  JSL.L CODE_FL_85AA07                      ; $8CF124 |
  JSL.L CODE_FL_85ABAD                      ; $8CF128 |
  BCC CODE_8CF14B                           ; $8CF12C |
  LDA.W #$0007                              ; $8CF12E |
  STA.B $1A,X                               ; $8CF131 |
  CLC                                       ; $8CF133 |
  LDA.B $09,X                               ; $8CF134 |
  ADC.W #$0070                              ; $8CF136 |
  STA.B $09,X                               ; $8CF139 |
  CLC                                       ; $8CF13B |
  LDA.B $0D,X                               ; $8CF13C |
  ADC.W #$0050                              ; $8CF13E |
  STA.B $0D,X                               ; $8CF141 |
  JSL.L CODE_FL_86B12E                      ; $8CF143 |
  TDC                                       ; $8CF147 |
  STA.B $4C,X                               ; $8CF148 |
  RTL                                       ; $8CF14A |

CODE_8CF14B:
  INC.B $1A,X                               ; $8CF14B |
  RTL                                       ; $8CF14D |

CODE_8CF14E:
  JSL.L CODE_FL_85ABAD                      ; $8CF14E |
  BCC CODE_8CF15B                           ; $8CF152 |
  LDA.W #$00B0                              ; $8CF154 |

CODE_8CF157:
  STA.B $2C,X                               ; $8CF157 |
  INC.B $1A,X                               ; $8CF159 |

CODE_8CF15B:
  RTL                                       ; $8CF15B |

CODE_8CF15C:
  JSL.L CODE_FL_86C70D                      ; $8CF15C |
  LDA.W #$FF00                              ; $8CF160 |
  STA.B $28,X                               ; $8CF163 |
  LDA.W #$0010                              ; $8CF165 |
  BRA CODE_8CF157                           ; $8CF168 |

CODE_8CF16A:
  JSL.L CODE_FL_86C70D                      ; $8CF16A |
  LDA.W #$0100                              ; $8CF16E |
  STA.B $26,X                               ; $8CF171 |
  STZ.B $28,X                               ; $8CF173 |
  LDA.W #$0070                              ; $8CF175 |
  BRA CODE_8CF157                           ; $8CF178 |

CODE_8CF17A:
  JSL.L CODE_FL_86C70D                      ; $8CF17A |
  STZ.B $26,X                               ; $8CF17E |
  LDA.W #$0050                              ; $8CF180 |
  BRA CODE_8CF157                           ; $8CF183 |

CODE_8CF185:
  JSL.L CODE_FL_86C70D                      ; $8CF185 |
  STZ.B $26,X                               ; $8CF189 |
  INC.B $1A,X                               ; $8CF18B |
  RTL                                       ; $8CF18D |

CODE_8CF18E:
  JML.L CODE_FL_86B12E                      ; $8CF18E |

CODE_8CF192:
  JSL.L CODE_FL_86C82F                      ; $8CF192 |
  CLC                                       ; $8CF196 |
  LDA.W $1672                               ; $8CF197 |
  ADC.B $0D,X                               ; $8CF19A |
  CMP.W #$02A0                              ; $8CF19C |
  BCC CODE_8CF1B6                           ; $8CF19F |
  LDA.W #$02A0                              ; $8CF1A1 |
  SBC.W $1672                               ; $8CF1A4 |
  STA.B $0D,X                               ; $8CF1A7 |
  LDA.W #$001B                              ; $8CF1A9 |
  JSL.L push_sound_queue                    ; $8CF1AC |
  INC.B $1A,X                               ; $8CF1B0 |

CODE_8CF1B2:
  STZ.B $26,X                               ; $8CF1B2 |
  STZ.B $28,X                               ; $8CF1B4 |

CODE_8CF1B6:
  RTL                                       ; $8CF1B6 |

CODE_JL_8CF1B7:
  JSL.L CODE_FL_A8FC80                      ; $8CF1B7 |
  LDA.B $46,X                               ; $8CF1BB |
  AND.W #$0100                              ; $8CF1BD |
  BEQ CODE_8CF1D4                           ; $8CF1C0 |
  LDA.B $3E,X                               ; $8CF1C2 |
  BNE CODE_8CF1D2                           ; $8CF1C4 |
  LDA.W #$0001                              ; $8CF1C6 |
  STA.B $3E,X                               ; $8CF1C9 |
  LDA.W #$001B                              ; $8CF1CB |
  JSL.L push_sound_queue                    ; $8CF1CE |

CODE_8CF1D2:
  BRA CODE_8CF203                           ; $8CF1D2 |

CODE_8CF1D4:
  JSL.L CODE_FL_858BB9                      ; $8CF1D4 |
  BNE CODE_8CF1E2                           ; $8CF1D8 |
  JSL.L CODE_FL_86C82F                      ; $8CF1DA |
  STZ.B $3E,X                               ; $8CF1DE |
  BRA CODE_8CF203                           ; $8CF1E0 |

CODE_8CF1E2:
  LDA.W $1C14                               ; $8CF1E2 |
  BEQ CODE_8CF1FF                           ; $8CF1E5 |
  CLC                                       ; $8CF1E7 |
  LDA.B $0D,X                               ; $8CF1E8 |
  ADC.W $1C24                               ; $8CF1EA |
  STA.B $0D,X                               ; $8CF1ED |
  LDA.B $3E,X                               ; $8CF1EF |
  BNE CODE_8CF1FF                           ; $8CF1F1 |
  LDA.W #$0001                              ; $8CF1F3 |
  STA.B $3E,X                               ; $8CF1F6 |
  LDA.W #$001B                              ; $8CF1F8 |
  JSL.L push_sound_queue                    ; $8CF1FB |

CODE_8CF1FF:
  STZ.B $26,X                               ; $8CF1FF |
  STZ.B $28,X                               ; $8CF201 |

CODE_8CF203:
  RTL                                       ; $8CF203 |

CODE_8CF204:
  JSL.L CODE_FL_86C3F8                      ; $8CF204 |
  PHX                                       ; $8CF208 |
  ASL A                                     ; $8CF209 |
  TAX                                       ; $8CF20A |
  LDA.L PTR16_8CF215,X                      ; $8CF20B |
  PLX                                       ; $8CF20F |
  STA.B $00                                 ; $8CF210 |
  JMP.W ($0000)                             ; $8CF212 |

PTR16_8CF215:
  dw CODE_8CF21D                            ; $8CF215 |
  dw CODE_8CF242                            ; $8CF217 |
  dw CODE_8CF250                            ; $8CF219 |
  dw CODE_8CF267                            ; $8CF21B |

CODE_8CF21D:
  JSL.L CODE_FL_86C7AD                      ; $8CF21D |
  JSL.L CODE_FL_85AA07                      ; $8CF221 |
  LDA.W #$340A                              ; $8CF225 |
  STA.B $00,X                               ; $8CF228 |
  LDA.B $34,X                               ; $8CF22A |
  ORA.W #$2088                              ; $8CF22C |
  STA.B $34,X                               ; $8CF22F |
  JSL.L CODE_FL_85ABAD                      ; $8CF231 |
  BCC CODE_8CF23E                           ; $8CF235 |
  LDA.W #$0002                              ; $8CF237 |
  STA.B $1A,X                               ; $8CF23A |
  BRA CODE_8CF25B                           ; $8CF23C |

CODE_8CF23E:
  JML.L CODE_FL_86C63F                      ; $8CF23E |

CODE_8CF242:
  JSL.L CODE_FL_85ABAD                      ; $8CF242 |
  BCC CODE_8CF24F                           ; $8CF246 |
  LDA.W #$0198                              ; $8CF248 |
  STA.B $2C,X                               ; $8CF24B |
  INC.B $1A,X                               ; $8CF24D |

CODE_8CF24F:
  RTL                                       ; $8CF24F |

CODE_8CF250:
  JSL.L CODE_FL_86C70D                      ; $8CF250 |
  LDA.W #$00DC                              ; $8CF254 |
  JSL.L CODE_FL_8089BD                      ; $8CF257 |

CODE_8CF25B:
  JSL.L CODE_FL_85A9AF                      ; $8CF25B |
  LDA.W #$34A8                              ; $8CF25F |
  STA.B $00,X                               ; $8CF262 |
  INC.B $1A,X                               ; $8CF264 |
  RTL                                       ; $8CF266 |

CODE_8CF267:
  RTL                                       ; $8CF267 |

CODE_8CF268:
  LDA.B $1A,X                               ; $8CF268 |
  PHX                                       ; $8CF26A |
  ASL A                                     ; $8CF26B |
  TAX                                       ; $8CF26C |
  LDA.L PTR16_8CF277,X                      ; $8CF26D |
  PLX                                       ; $8CF271 |
  STA.B $00                                 ; $8CF272 |
  JMP.W ($0000)                             ; $8CF274 |

PTR16_8CF277:
  dw CODE_8CF27D                            ; $8CF277 |
  dw CODE_8CF2B4                            ; $8CF279 |
  dw CODE_8CF2B0                            ; $8CF27B |

CODE_8CF27D:
  LDA.W #$30E0                              ; $8CF27D |
  STA.B $00,X                               ; $8CF280 |

CODE_JP_8CF282:
  JSL.L CODE_FL_85AC07                      ; $8CF282 |
  SEC                                       ; $8CF286 |
  LDA.B $09,X                               ; $8CF287 |
  SBC.W #$0004                              ; $8CF289 |
  STA.B $09,X                               ; $8CF28C |
  LDA.B $4E,X                               ; $8CF28E |
  AND.W #$0100                              ; $8CF290 |
  BNE CODE_8CF29D                           ; $8CF293 |
  CLC                                       ; $8CF295 |
  LDA.B $09,X                               ; $8CF296 |
  ADC.W #$0008                              ; $8CF298 |
  STA.B $09,X                               ; $8CF29B |

CODE_8CF29D:
  JSL.L CODE_FL_86C7AD                      ; $8CF29D |
  JSL.L CODE_FL_85AD48                      ; $8CF2A1 |
  LDA.B $34,X                               ; $8CF2A5 |
  ORA.W #$B080                              ; $8CF2A7 |
  STA.B $34,X                               ; $8CF2AA |
  JML.L CODE_FL_86C63F                      ; $8CF2AC |

CODE_8CF2B0:
  JML.L CODE_FL_86CA2D                      ; $8CF2B0 |

CODE_8CF2B4:
  BIT.B $46,X                               ; $8CF2B4 |
  STZ.B $46,X                               ; $8CF2B6 |
  BVS CODE_8CF2BD                           ; $8CF2B8 |
  STZ.B $3A,X                               ; $8CF2BA |
  RTL                                       ; $8CF2BC |

CODE_8CF2BD:
  INC.B $3A,X                               ; $8CF2BD |
  LDA.B $3A,X                               ; $8CF2BF |
  CMP.W #$0010                              ; $8CF2C1 |
  BCC CODE_8CF2E5                           ; $8CF2C4 |
  LDA.W #$0010                              ; $8CF2C6 |
  STA.B $3A,X                               ; $8CF2C9 |
  JSL.L CODE_FL_868040                      ; $8CF2CB |
  BEQ CODE_8CF2E5                           ; $8CF2CF |
  LDA.W #$0001                              ; $8CF2D1 |
  JSL.L CODE_FL_8680B6                      ; $8CF2D4 |
  JSL.L CODE_FL_85AC15                      ; $8CF2D8 |
  LDA.W #$00E8                              ; $8CF2DC |
  JSL.L CODE_FL_8089BD                      ; $8CF2DF |
  INC.B $1A,X                               ; $8CF2E3 |

CODE_8CF2E5:
  RTL                                       ; $8CF2E5 |

CODE_8CF2E6:
  LDA.B $1A,X                               ; $8CF2E6 |
  PHX                                       ; $8CF2E8 |
  ASL A                                     ; $8CF2E9 |
  TAX                                       ; $8CF2EA |
  LDA.L PTR16_8CF2F5,X                      ; $8CF2EB |
  PLX                                       ; $8CF2EF |
  STA.B $00                                 ; $8CF2F0 |
  JMP.W ($0000)                             ; $8CF2F2 |

PTR16_8CF2F5:
  dw CODE_8CF2FB                            ; $8CF2F5 |
  dw CODE_8CF303                            ; $8CF2F7 |
  dw CODE_8CF32E                            ; $8CF2F9 |

CODE_8CF2FB:
  LDA.W #$30D0                              ; $8CF2FB |
  STA.B $00,X                               ; $8CF2FE |
  JMP.W CODE_JP_8CF282                      ; $8CF300 |

CODE_8CF303:
  BIT.B $46,X                               ; $8CF303 |
  STZ.B $46,X                               ; $8CF305 |
  BVS CODE_8CF30C                           ; $8CF307 |
  STZ.B $3A,X                               ; $8CF309 |
  RTL                                       ; $8CF30B |

CODE_8CF30C:
  INC.B $3A,X                               ; $8CF30C |
  LDA.B $3A,X                               ; $8CF30E |
  CMP.W #$0010                              ; $8CF310 |
  BCC CODE_8CF32D                           ; $8CF313 |
  LDA.W #$0010                              ; $8CF315 |
  STA.B $3A,X                               ; $8CF318 |
  JSL.L CODE_FL_86805E                      ; $8CF31A |
  BEQ CODE_8CF32D                           ; $8CF31E |
  JSL.L CODE_FL_85AC15                      ; $8CF320 |
  LDA.W #$00E8                              ; $8CF324 |
  JSL.L CODE_FL_8089BD                      ; $8CF327 |
  INC.B $1A,X                               ; $8CF32B |

CODE_8CF32D:
  RTL                                       ; $8CF32D |

CODE_8CF32E:
  JML.L CODE_FL_86CA2D                      ; $8CF32E |

CODE_8CF332:
  JSL.L CODE_FL_86C424                      ; $8CF332 |
  PHX                                       ; $8CF336 |
  ASL A                                     ; $8CF337 |
  TAX                                       ; $8CF338 |
  LDA.L PTR16_8CF343,X                      ; $8CF339 |
  PLX                                       ; $8CF33D |
  STA.B $00                                 ; $8CF33E |
  JMP.W ($0000)                             ; $8CF340 |

PTR16_8CF343:
  dw CODE_8CF351                            ; $8CF343 |
  dw CODE_8CF377                            ; $8CF345 |
  dw CODE_8CF397                            ; $8CF347 |
  dw CODE_8CF42B                            ; $8CF349 |
  dw CODE_8CF45A                            ; $8CF34B |
  dw CODE_8CF4E2                            ; $8CF34D |
  dw CODE_8CF567                            ; $8CF34F |

CODE_8CF351:
  JSL.L CODE_FL_85ABE7                      ; $8CF351 |
  BCC CODE_8CF35B                           ; $8CF355 |
  INC.B $1A,X                               ; $8CF357 |
  INC.B $1A,X                               ; $8CF359 |

CODE_8CF35B:
  LDA.B $34,X                               ; $8CF35B |
  ORA.W #$B880                              ; $8CF35D |
  STA.B $34,X                               ; $8CF360 |
  LDA.W #$0010                              ; $8CF362 |
  STA.B $36,X                               ; $8CF365 |
  LDA.W #$0004                              ; $8CF367 |
  STA.B $3A,X                               ; $8CF36A |
  LDA.W #$0094                              ; $8CF36C |
  STA.B $3C,X                               ; $8CF36F |
  JML.L CODE_FL_86C63F                      ; $8CF371 |

  STZ.B $46,X                               ; $8CF375 |

CODE_8CF377:
  JSL.L CODE_FL_8CF52C                      ; $8CF377 |
  LDA.B $32,X                               ; $8CF37B |
  BPL CODE_8CF396                           ; $8CF37D |
  STZ.B $32,X                               ; $8CF37F |
  JSL.L CODE_FL_85A5A7                      ; $8CF381 |
  INC.B $1A,X                               ; $8CF385 |
  SEP #$20                                  ; $8CF387 |
  DEC.B $36,X                               ; $8CF389 |
  REP #$20                                  ; $8CF38B |
  LDA.B $36,X                               ; $8CF38D |
  AND.W #$00FF                              ; $8CF38F |
  BNE CODE_8CF396                           ; $8CF392 |
  INC.B $1A,X                               ; $8CF394 |

CODE_8CF396:
  RTL                                       ; $8CF396 |

CODE_8CF397:
  JSL.L CODE_FL_8CF52C                      ; $8CF397 |
  LDA.B $3A,X                               ; $8CF39B |
  BEQ CODE_8CF3B1                           ; $8CF39D |
  LDA.B $38,X                               ; $8CF39F |
  BEQ CODE_8CF3A8                           ; $8CF3A1 |
  JSL.L CODE_FL_8CF410                      ; $8CF3A3 |
  RTL                                       ; $8CF3A7 |

CODE_8CF3A8:
  JSL.L CODE_FL_8CF418                      ; $8CF3A8 |
  DEC.B $3A,X                               ; $8CF3AC |
  DEC.B $1A,X                               ; $8CF3AE |
  RTL                                       ; $8CF3B0 |

CODE_8CF3B1:
  LDA.W #$0030                              ; $8CF3B1 |
  JSL.L CODE_FL_8089BD                      ; $8CF3B4 |

CODE_FL_8CF3B8:
  LDA.W #$0004                              ; $8CF3B8 |
  STA.B $3A,X                               ; $8CF3BB |
  JSL.L CODE_FL_8CF3FB                      ; $8CF3BD |
  JSL.L CODE_FL_8CF3DA                      ; $8CF3C1 |
  SEC                                       ; $8CF3C5 |
  LDA.B $0D,X                               ; $8CF3C6 |
  SBC.W #$0040                              ; $8CF3C8 |
  STA.B $0D,X                               ; $8CF3CB |
  JSL.L CODE_FL_8CF3DA                      ; $8CF3CD |
  CLC                                       ; $8CF3D1 |
  LDA.B $0D,X                               ; $8CF3D2 |
  ADC.W #$0040                              ; $8CF3D4 |
  STA.B $0D,X                               ; $8CF3D7 |
  RTL                                       ; $8CF3D9 |

CODE_FL_8CF3DA:
  SEC                                       ; $8CF3DA |
  LDA.B $09,X                               ; $8CF3DB |
  SBC.W #$0020                              ; $8CF3DD |
  STA.B $09,X                               ; $8CF3E0 |
  JSL.L CODE_FL_8CF3FB                      ; $8CF3E2 |
  CLC                                       ; $8CF3E6 |
  LDA.B $09,X                               ; $8CF3E7 |
  ADC.W #$0040                              ; $8CF3E9 |
  STA.B $09,X                               ; $8CF3EC |
  JSL.L CODE_FL_8CF3FB                      ; $8CF3EE |
  SEC                                       ; $8CF3F2 |
  LDA.B $09,X                               ; $8CF3F3 |
  SBC.W #$0020                              ; $8CF3F5 |
  STA.B $09,X                               ; $8CF3F8 |
  RTL                                       ; $8CF3FA |

CODE_FL_8CF3FB:
  LDA.W #$0004                              ; $8CF3FB |
  STA.B $10                                 ; $8CF3FE |
  LDA.W #$0014                              ; $8CF400 |
  STA.B $12                                 ; $8CF403 |
  STZ.B $14                                 ; $8CF405 |
  LDA.W #$0039                              ; $8CF407 |
  STA.B $16                                 ; $8CF40A |
  JML.L CODE_FL_86B8BD                      ; $8CF40C |

CODE_FL_8CF410:
  LDA.W $1C38                               ; $8CF410 |
  AND.W #$0001                              ; $8CF413 |
  BNE CODE_8CF41D                           ; $8CF416 |

CODE_FL_8CF418:
  LDY.W #$E572                              ; $8CF418 |
  BRA CODE_8CF420                           ; $8CF41B |

CODE_8CF41D:
  LDY.W #$E588                              ; $8CF41D |

CODE_8CF420:
  LDA.W #$0004                              ; $8CF420 |
  ASL A                                     ; $8CF423 |
  PHX                                       ; $8CF424 |
  JSL.L CODE_FL_80C2BA                      ; $8CF425 |
  PLX                                       ; $8CF429 |
  RTL                                       ; $8CF42A |

CODE_8CF42B:
  JSR.W CODE_FN_8CF43E                      ; $8CF42B |
  LDA.B $3C,X                               ; $8CF42E |
  JSL.L CODE_FL_8580F7                      ; $8CF430 |
  BCC CODE_8CF437                           ; $8CF434 |
  RTL                                       ; $8CF436 |

CODE_8CF437:
  INC.B $3C,X                               ; $8CF437 |
  INC.B $3C,X                               ; $8CF439 |
  INC.B $1A,X                               ; $8CF43B |
  RTL                                       ; $8CF43D |

CODE_FN_8CF43E:
  CLC                                       ; $8CF43E |
  LDA.B $09,X                               ; $8CF43F |
  ADC.W #$FFD0                              ; $8CF441 |
  STA.B $08                                 ; $8CF444 |
  LDA.B $1A,X                               ; $8CF446 |
  AND.W #$0001                              ; $8CF448 |
  ASL A                                     ; $8CF44B |
  ASL A                                     ; $8CF44C |
  ASL A                                     ; $8CF44D |
  ASL A                                     ; $8CF44E |
  ASL A                                     ; $8CF44F |
  ASL A                                     ; $8CF450 |
  CLC                                       ; $8CF451 |
  ADC.B $0D,X                               ; $8CF452 |
  ADC.W #$FFA8                              ; $8CF454 |
  STA.B $0A                                 ; $8CF457 |
  RTS                                       ; $8CF459 |

CODE_8CF45A:
  LDA.B $3E,X                               ; $8CF45A |
  PHX                                       ; $8CF45C |
  ASL A                                     ; $8CF45D |
  TAX                                       ; $8CF45E |
  LDA.L PTR16_8CF469,X                      ; $8CF45F |
  PLX                                       ; $8CF463 |
  STA.B $00                                 ; $8CF464 |
  JMP.W ($0000)                             ; $8CF466 |

PTR16_8CF469:
  dw CODE_8CF473                            ; $8CF469 |
  dw CODE_8CF491                            ; $8CF46B |
  dw CODE_8CF4B8                            ; $8CF46D |
  dw CODE_8CF567                            ; $8CF46F |
  dw CODE_8CF571                            ; $8CF471 |

CODE_8CF473:
  CLC                                       ; $8CF473 |
  LDA.B $09,X                               ; $8CF474 |
  ADC.W #$FFF0                              ; $8CF476 |
  STA.B $08                                 ; $8CF479 |
  CLC                                       ; $8CF47B |
  LDA.B $0D,X                               ; $8CF47C |
  ADC.W #$FF60                              ; $8CF47E |
  STA.B $0A                                 ; $8CF481 |
  LDA.W #$0102                              ; $8CF483 |
  JSL.L CODE_FL_8580F7                      ; $8CF486 |
  BCS CODE_8CF4C3                           ; $8CF48A |
  LDA.W #$0001                              ; $8CF48C |
  STA.B $3E,X                               ; $8CF48F |

CODE_8CF491:
  CLC                                       ; $8CF491 |
  LDA.B $09,X                               ; $8CF492 |
  ADC.W #$FFD0                              ; $8CF494 |
  STA.B $08                                 ; $8CF497 |
  CLC                                       ; $8CF499 |
  LDA.B $0D,X                               ; $8CF49A |
  ADC.W #$FFC0                              ; $8CF49C |
  STA.B $0A                                 ; $8CF49F |
  LDA.W #$0104                              ; $8CF4A1 |
  JSL.L CODE_FL_8580F7                      ; $8CF4A4 |
  BCS CODE_8CF4C3                           ; $8CF4A8 |
  JSL.L CODE_FL_85ABE7                      ; $8CF4AA |
  BCC CODE_8CF4B3                           ; $8CF4AE |
  JMP.W CODE_JP_8CF56D                      ; $8CF4B0 |

CODE_8CF4B3:
  LDA.W #$0002                              ; $8CF4B3 |
  STA.B $3E,X                               ; $8CF4B6 |

CODE_8CF4B8:
  JSR.W CODE_FN_8CF43E                      ; $8CF4B8 |
  LDA.B $3C,X                               ; $8CF4BB |
  JSL.L CODE_FL_8580F7                      ; $8CF4BD |
  BCC CODE_8CF4C4                           ; $8CF4C1 |

CODE_8CF4C3:
  RTL                                       ; $8CF4C3 |

CODE_8CF4C4:
  JSL.L CODE_FL_85AC15                      ; $8CF4C4 |
  LDA.W #$0003                              ; $8CF4C8 |
  JSL.L CODE_FL_B3FE45                      ; $8CF4CB |
  JSL.L CODE_FL_85A9BF                      ; $8CF4CF |
  LDY.W #$0030                              ; $8CF4D3 |
  JSL.L CODE_FL_808993                      ; $8CF4D6 |
  LDA.W #$0080                              ; $8CF4DA |
  STA.B $2C,X                               ; $8CF4DD |
  INC.B $1A,X                               ; $8CF4DF |
  RTL                                       ; $8CF4E1 |

CODE_8CF4E2:
  JSL.L CODE_FL_8CF410                      ; $8CF4E2 |
  LDA.W $1C38                               ; $8CF4E6 |
  AND.W #$0001                              ; $8CF4E9 |
  BNE CODE_8CF518                           ; $8CF4EC |
  LDA.B $09,X                               ; $8CF4EE |
  PHA                                       ; $8CF4F0 |
  LDA.B $86                                 ; $8CF4F1 |
  AND.W #$001F                              ; $8CF4F3 |
  SBC.W #$0010                              ; $8CF4F6 |
  ADC.B $09,X                               ; $8CF4F9 |
  STA.B $09,X                               ; $8CF4FB |
  LDA.B $0D,X                               ; $8CF4FD |
  PHA                                       ; $8CF4FF |
  LDA.B $86                                 ; $8CF500 |
  AND.W #$003F                              ; $8CF502 |
  SBC.W #$0040                              ; $8CF505 |
  ADC.B $0D,X                               ; $8CF508 |
  STA.B $0D,X                               ; $8CF50A |
  JSL.L CODE_FL_8CF3B8                      ; $8CF50C |
  PLA                                       ; $8CF510 |
  STA.B $0D,X                               ; $8CF511 |
  PLA                                       ; $8CF513 |
  STA.B $09,X                               ; $8CF514 |
  BRA CODE_8CF51C                           ; $8CF516 |

CODE_8CF518:
  JSL.L CODE_FL_8CFBBE                      ; $8CF518 |

CODE_8CF51C:
  JSL.L CODE_FL_86C70D                      ; $8CF51C |
  JSL.L CODE_FL_8CF418                      ; $8CF520 |
  TDC                                       ; $8CF524 |
  JSL.L CODE_FL_B3FE45                      ; $8CF525 |
  INC.B $1A,X                               ; $8CF529 |
  RTL                                       ; $8CF52B |

CODE_FL_8CF52C:
  LDA.B $42                                 ; $8CF52C |
  AND.W #$0007                              ; $8CF52E |
  BNE CODE_8CF566                           ; $8CF531 |
  LDA.L $7E2C96                             ; $8CF533 |
  STA.B $00                                 ; $8CF537 |
  LDA.L $7E2C98                             ; $8CF539 |
  STA.L $7E2C96                             ; $8CF53D |
  LDA.L $7E2C9A                             ; $8CF541 |
  STA.L $7E2C98                             ; $8CF545 |
  LDA.L $7E2C9C                             ; $8CF549 |
  STA.L $7E2C9A                             ; $8CF54D |
  LDA.L $7E2C9E                             ; $8CF551 |
  STA.L $7E2C9C                             ; $8CF555 |
  LDA.B $00                                 ; $8CF559 |
  STA.L $7E2C9E                             ; $8CF55B |
  LDA.B $48                                 ; $8CF55F |
  ORA.W #$8000                              ; $8CF561 |
  STA.B $48                                 ; $8CF564 |

CODE_8CF566:
  RTL                                       ; $8CF566 |

CODE_8CF567:
  JSL.L CODE_FL_86C239                      ; $8CF567 |
  BCC CODE_8CF571                           ; $8CF56B |

CODE_JP_8CF56D:
  JML.L CODE_FL_86CA2D                      ; $8CF56D |

CODE_8CF571:
  RTL                                       ; $8CF571 |

CODE_8CF572:
  JSL.L CODE_FL_86C3B0                      ; $8CF572 |
  PHX                                       ; $8CF576 |
  ASL A                                     ; $8CF577 |
  TAX                                       ; $8CF578 |
  LDA.L PTR16_8CF583,X                      ; $8CF579 |
  PLX                                       ; $8CF57D |
  STA.B $00                                 ; $8CF57E |
  JMP.W ($0000)                             ; $8CF580 |

PTR16_8CF583:
  dw CODE_8CF589                            ; $8CF583 |
  dw CODE_8CF5AB                            ; $8CF585 |
  dw CODE_8CF5BE                            ; $8CF587 |

CODE_8CF589:
  JSL.L CODE_FL_85ABE7                      ; $8CF589 |
  BCC CODE_8CF593                           ; $8CF58D |
  JML.L CODE_FL_86CA2D                      ; $8CF58F |

CODE_8CF593:
  JSL.L CODE_FL_86C7AD                      ; $8CF593 |
  LDA.W #$30F0                              ; $8CF597 |
  STA.B $00,X                               ; $8CF59A |
  JSL.L CODE_FL_85AD48                      ; $8CF59C |
  LDA.B $34,X                               ; $8CF5A0 |
  ORA.W #$B080                              ; $8CF5A2 |
  STA.B $34,X                               ; $8CF5A5 |
  JML.L CODE_FL_86C63F                      ; $8CF5A7 |

CODE_8CF5AB:
  JSL.L CODE_FL_85ABE7                      ; $8CF5AB |
  BCC CODE_8CF5BD                           ; $8CF5AF |
  LDA.W #$0040                              ; $8CF5B1 |
  STA.B $2C,X                               ; $8CF5B4 |
  LDA.W #$FF00                              ; $8CF5B6 |
  STA.B $28,X                               ; $8CF5B9 |
  INC.B $1A,X                               ; $8CF5BB |

CODE_8CF5BD:
  RTL                                       ; $8CF5BD |

CODE_8CF5BE:
  JSL.L CODE_FL_8CF7F2                      ; $8CF5BE |
  LDA.B $2C,X                               ; $8CF5C2 |
  LDY.W #$30F0                              ; $8CF5C4 |
  CMP.W #$0030                              ; $8CF5C7 |
  BCS CODE_8CF5DF                           ; $8CF5CA |
  LDY.W #$3100                              ; $8CF5CC |
  CMP.W #$0020                              ; $8CF5CF |
  BCS CODE_8CF5DF                           ; $8CF5D2 |
  LDY.W #$310C                              ; $8CF5D4 |
  CMP.W #$0010                              ; $8CF5D7 |
  BCS CODE_8CF5DF                           ; $8CF5DA |
  LDY.W #$3114                              ; $8CF5DC |

CODE_8CF5DF:
  TYA                                       ; $8CF5DF |
  STA.B $00,X                               ; $8CF5E0 |
  JSL.L CODE_FL_86C70D                      ; $8CF5E2 |
  LDA.W #$0019                              ; $8CF5E6 |
  JSL.L push_sound_queue                    ; $8CF5E9 |
  JML.L CODE_FL_86CA2D                      ; $8CF5ED |

CODE_8CF5F1:
  JSL.L CODE_FL_86C3F8                      ; $8CF5F1 |
  PHX                                       ; $8CF5F5 |
  ASL A                                     ; $8CF5F6 |
  TAX                                       ; $8CF5F7 |
  LDA.L PTR16_8CF602,X                      ; $8CF5F8 |
  PLX                                       ; $8CF5FC |
  STA.B $00                                 ; $8CF5FD |
  JMP.W ($0000)                             ; $8CF5FF |

PTR16_8CF602:
  dw CODE_8CF61A                            ; $8CF602 |
  dw CODE_8CF645                            ; $8CF604 |
  dw CODE_8CF66D                            ; $8CF606 |
  dw CODE_8CF68F                            ; $8CF608 |
  dw CODE_8CF69D                            ; $8CF60A |
  dw CODE_8CF72A                            ; $8CF60C |
  dw CODE_8CF742                            ; $8CF60E |
  dw CODE_8CF761                            ; $8CF610 |
  dw CODE_8CF77B                            ; $8CF612 |
  dw CODE_8CF7A1                            ; $8CF614 |
  dw CODE_8CF7CA                            ; $8CF616 |
  dw CODE_8CF7F1                            ; $8CF618 |

CODE_8CF61A:
  JSL.L CODE_FL_85AC74                      ; $8CF61A |
  LDA.W #$0015                              ; $8CF61E |
  JSL.L CODE_FL_85ABF5                      ; $8CF621 |
  BCC CODE_8CF641                           ; $8CF625 |
  LDA.W #$000E                              ; $8CF627 |
  JSL.L CODE_FL_85AC8E                      ; $8CF62A |
  LDA.W #$000F                              ; $8CF62E |
  JSL.L CODE_FL_85AC9C                      ; $8CF631 |
  LDA.W #$0014                              ; $8CF635 |
  JSL.L CODE_FL_85AC8E                      ; $8CF638 |
  LDA.W #$0009                              ; $8CF63C |
  STA.B $1A,X                               ; $8CF63F |

CODE_8CF641:
  JML.L CODE_JL_8CEFE2                      ; $8CF641 |

CODE_8CF645:
  JSL.L CODE_FL_85ABAD                      ; $8CF645 |
  BCC CODE_8CF66C                           ; $8CF649 |
  LDA.W #$000E                              ; $8CF64B |
  JSL.L CODE_FL_85AC9C                      ; $8CF64E |
  LDA.W #$000F                              ; $8CF652 |
  JSL.L CODE_FL_85AC9C                      ; $8CF655 |
  LDA.W #$0014                              ; $8CF659 |
  JSL.L CODE_FL_85AC9C                      ; $8CF65C |
  LDA.W #$FF00                              ; $8CF660 |
  STA.B $26,X                               ; $8CF663 |
  LDA.W #$0078                              ; $8CF665 |

CODE_JP_8CF668:
  STA.B $2C,X                               ; $8CF668 |
  INC.B $1A,X                               ; $8CF66A |

CODE_8CF66C:
  RTL                                       ; $8CF66C |

CODE_8CF66D:
  JSL.L CODE_FL_8CF7F2                      ; $8CF66D |
  LDY.B $44,X                               ; $8CF671 |
  LDA.B $09,X                               ; $8CF673 |
  STA.W $0009,Y                             ; $8CF675 |
  JSL.L CODE_FL_86C70D                      ; $8CF678 |
  LDA.W #$0019                              ; $8CF67C |
  JSL.L push_sound_queue                    ; $8CF67F |
  STZ.B $26,X                               ; $8CF683 |
  LDA.W #$33FA                              ; $8CF685 |
  STA.B $00,X                               ; $8CF688 |
  LDA.W #$0050                              ; $8CF68A |
  BRA CODE_JP_8CF668                        ; $8CF68D |

CODE_8CF68F:
  JSL.L CODE_FL_86C70D                      ; $8CF68F |
  LDA.W #$0100                              ; $8CF693 |
  STA.B $28,X                               ; $8CF696 |
  LDA.W #$0080                              ; $8CF698 |
  BRA CODE_JP_8CF668                        ; $8CF69B |

CODE_8CF69D:
  JSL.L CODE_FL_8CF7F2                      ; $8CF69D |
  JSL.L CODE_FL_86C70D                      ; $8CF6A1 |
  JSL.L CODE_FL_96FC0C                      ; $8CF6A5 |
  LDA.W #$0019                              ; $8CF6A9 |
  JSL.L push_sound_queue                    ; $8CF6AC |
  LDA.W #$008C                              ; $8CF6B0 |
  JSL.L CODE_FL_8089BD                      ; $8CF6B3 |
  STZ.B $28,X                               ; $8CF6B7 |
  LDA.W #$0050                              ; $8CF6B9 |
  BRA CODE_JP_8CF668                        ; $8CF6BC |

CODE_FL_8CF6BE:
  SEC                                       ; $8CF6BE |
  LDA.B $09,X                               ; $8CF6BF |
  SBC.W #$0006                              ; $8CF6C1 |
  STA.W $0B29                               ; $8CF6C4 |
  CLC                                       ; $8CF6C7 |
  LDA.B $0D,X                               ; $8CF6C8 |
  ADC.W #$0058                              ; $8CF6CA |
  STA.W $0B2D                               ; $8CF6CD |
  RTL                                       ; $8CF6D0 |

CODE_FL_8CF6D1:
  LDY.B $A6                                 ; $8CF6D1 |
  LDA.W #$007F                              ; $8CF6D3 |
  STA.W $0048,Y                             ; $8CF6D6 |
  SEC                                       ; $8CF6D9 |
  LDA.B $08,X                               ; $8CF6DA |
  SBC.W $0008,Y                             ; $8CF6DC |
  SEC                                       ; $8CF6DF |
  SBC.W #$FE00                              ; $8CF6E0 |
  STA.W $0078,Y                             ; $8CF6E3 |
  SEC                                       ; $8CF6E6 |
  LDA.B $0C,X                               ; $8CF6E7 |
  SBC.W $000C,Y                             ; $8CF6E9 |
  CLC                                       ; $8CF6EC |
  ADC.W #$5C00                              ; $8CF6ED |
  STA.W $007A,Y                             ; $8CF6F0 |
  TDC                                       ; $8CF6F3 |
  STA.W $0098,Y                             ; $8CF6F4 |
  STA.W $009A,Y                             ; $8CF6F7 |
  LDY.B $3A,X                               ; $8CF6FA |
  BEQ CODE_8CF726                           ; $8CF6FC |
  LDA.W #$8000                              ; $8CF6FE |
  STA.W $009A,Y                             ; $8CF701 |
  CPY.W #$0400                              ; $8CF704 |
  BNE CODE_8CF712                           ; $8CF707 |
  LDA.W #$0050                              ; $8CF709 |
  JSL.L CODE_FL_8B81B8                      ; $8CF70C |
  BRA CODE_8CF719                           ; $8CF710 |

CODE_8CF712:
  LDA.W #$0050                              ; $8CF712 |
  JSL.L CODE_FL_8B81BD                      ; $8CF715 |

CODE_8CF719:
  BNE CODE_8CF725                           ; $8CF719 |
  LDY.B $3A,X                               ; $8CF71B |
  LDA.W #$0100                              ; $8CF71D |
  STA.W $009A,Y                             ; $8CF720 |
  STZ.B $3A,X                               ; $8CF723 |

CODE_8CF725:
  RTL                                       ; $8CF725 |

CODE_8CF726:
  JML.L CODE_FL_8B80CE                      ; $8CF726 |

CODE_8CF72A:
  JSL.L CODE_FL_8CF6BE                      ; $8CF72A |
  JSL.L CODE_FL_86C70D                      ; $8CF72E |
  LDA.W #$33EA                              ; $8CF732 |
  STA.B $00,X                               ; $8CF735 |
  LDA.W #$FF00                              ; $8CF737 |
  STA.B $28,X                               ; $8CF73A |
  LDA.W #$0080                              ; $8CF73C |
  JMP.W CODE_JP_8CF668                      ; $8CF73F |

CODE_8CF742:
  JSL.L CODE_FL_8CF7F2                      ; $8CF742 |
  JSL.L CODE_FL_8CF6BE                      ; $8CF746 |
  JSL.L CODE_FL_86C70D                      ; $8CF74A |
  LDA.W #$0019                              ; $8CF74E |
  JSL.L push_sound_queue                    ; $8CF751 |
  STZ.B $28,X                               ; $8CF755 |
  LDA.W #$0014                              ; $8CF757 |
  JSL.L CODE_FL_85AC8E                      ; $8CF75A |
  INC.B $1A,X                               ; $8CF75E |
  RTL                                       ; $8CF760 |

CODE_8CF761:
  JSL.L CODE_FL_8CF6BE                      ; $8CF761 |
  LDA.B $A6                                 ; $8CF765 |
  BEQ CODE_8CF77A                           ; $8CF767 |
  LDY.W #$0400                              ; $8CF769 |
  STY.B $3A,X                               ; $8CF76C |
  CMP.W #$0400                              ; $8CF76E |
  BNE CODE_8CF778                           ; $8CF771 |
  LDY.W #$04C0                              ; $8CF773 |
  STY.B $3A,X                               ; $8CF776 |

CODE_8CF778:
  INC.B $1A,X                               ; $8CF778 |

CODE_8CF77A:
  RTL                                       ; $8CF77A |

CODE_8CF77B:
  JSL.L CODE_FL_8CF6D1                      ; $8CF77B |
  LDA.W #$C40B                              ; $8CF77F |
  STA.B $40,X                               ; $8CF782 |
  LDY.B $A6                                 ; $8CF784 |
  JSL.L CODE_FL_8098E4                      ; $8CF786 |
  JSL.L CODE_FL_86C239                      ; $8CF78A |
  BCC CODE_8CF7A0                           ; $8CF78E |
  LDA.W #$0001                              ; $8CF790 |
  STA.B $E4                                 ; $8CF793 |
  LDA.W #$0100                              ; $8CF795 |
  STA.B $26,X                               ; $8CF798 |
  LDA.W #$0058                              ; $8CF79A |
  JMP.W CODE_JP_8CF668                      ; $8CF79D |

CODE_8CF7A0:
  RTL                                       ; $8CF7A0 |

CODE_8CF7A1:
  JSL.L CODE_FL_8CF7F2                      ; $8CF7A1 |
  LDY.B $44,X                               ; $8CF7A5 |
  LDA.B $09,X                               ; $8CF7A7 |
  STA.W $0009,Y                             ; $8CF7A9 |
  JSL.L CODE_FL_8CF6D1                      ; $8CF7AC |
  JSL.L CODE_FL_86C70D                      ; $8CF7B0 |
  STZ.B $26,X                               ; $8CF7B4 |
  LDA.W #$0019                              ; $8CF7B6 |
  JSL.L push_sound_queue                    ; $8CF7B9 |
  LDA.W #$000F                              ; $8CF7BD |
  JSL.L CODE_FL_85AC8E                      ; $8CF7C0 |
  LDA.W #$0050                              ; $8CF7C4 |
  JMP.W CODE_JP_8CF668                      ; $8CF7C7 |

CODE_8CF7CA:
  LDA.W #$0015                              ; $8CF7CA |
  JSL.L CODE_FL_85ABF5                      ; $8CF7CD |
  BCS CODE_8CF7E2                           ; $8CF7D1 |
  JSL.L CODE_FL_8CF6D1                      ; $8CF7D3 |
  JSL.L CODE_FL_86C70D                      ; $8CF7D7 |
  LDA.W #$008C                              ; $8CF7DB |
  JSL.L CODE_FL_8089BD                      ; $8CF7DE |

CODE_8CF7E2:
  LDA.W #$33FA                              ; $8CF7E2 |
  STA.B $00,X                               ; $8CF7E5 |
  LDA.W #$0015                              ; $8CF7E7 |
  JSL.L CODE_FL_85ACA9                      ; $8CF7EA |
  INC.B $1A,X                               ; $8CF7EE |
  RTL                                       ; $8CF7F0 |

CODE_8CF7F1:
  RTL                                       ; $8CF7F1 |

CODE_FL_8CF7F2:
  LDA.W $1C38                               ; $8CF7F2 |
  AND.W #$0007                              ; $8CF7F5 |
  BNE CODE_8CF801                           ; $8CF7F8 |
  LDA.W #$0018                              ; $8CF7FA |
  JSL.L push_sound_queue                    ; $8CF7FD |

CODE_8CF801:
  RTL                                       ; $8CF801 |

CODE_8CF802:
  JSL.L CODE_FL_86C3F8                      ; $8CF802 |
  PHX                                       ; $8CF806 |
  ASL A                                     ; $8CF807 |
  TAX                                       ; $8CF808 |
  LDA.L PTR16_8CF813,X                      ; $8CF809 |
  PLX                                       ; $8CF80D |
  STA.B $00                                 ; $8CF80E |
  JMP.W ($0000)                             ; $8CF810 |

PTR16_8CF813:
  dw CODE_8CF81F                            ; $8CF813 |
  dw CODE_8CF863                            ; $8CF815 |
  dw CODE_8CF871                            ; $8CF817 |
  dw CODE_8CF890                            ; $8CF819 |
  dw CODE_8CF89B                            ; $8CF81B |
  dw CODE_8CF8B3                            ; $8CF81D |

CODE_8CF81F:
  LDA.W #$0015                              ; $8CF81F |
  JSL.L CODE_FL_85ABF5                      ; $8CF822 |
  BCC CODE_8CF82D                           ; $8CF826 |
  LDA.W #$0004                              ; $8CF828 |
  STA.B $1A,X                               ; $8CF82B |

CODE_8CF82D:
  LDA.W #$34B6                              ; $8CF82D |
  STA.B $00,X                               ; $8CF830 |
  LDA.W #$0100                              ; $8CF832 |
  STA.B $3A,X                               ; $8CF835 |
  LDA.B $4E,X                               ; $8CF837 |
  AND.W #$0100                              ; $8CF839 |
  BNE CODE_JP_8CF84C                        ; $8CF83C |
  LDA.W #$34B0                              ; $8CF83E |
  STA.B $00,X                               ; $8CF841 |
  LDA.W #$FF00                              ; $8CF843 |
  STA.B $3A,X                               ; $8CF846 |
  JSL.L CODE_FL_85A5CA                      ; $8CF848 |

CODE_JP_8CF84C:
  LDA.B $34,X                               ; $8CF84C |
  ORA.W #$1880                              ; $8CF84E |
  STA.B $34,X                               ; $8CF851 |
  JSL.L CODE_FL_86C7A5                      ; $8CF853 |
  JSL.L CODE_FL_85AA07                      ; $8CF857 |
  JSL.L CODE_FL_85A5CA                      ; $8CF85B |
  JML.L CODE_FL_86C63F                      ; $8CF85F |

CODE_8CF863:
  JSL.L CODE_FL_85ABAD                      ; $8CF863 |
  BCC CODE_8CF870                           ; $8CF867 |
  LDA.W #$00B0                              ; $8CF869 |

CODE_JP_8CF86C:
  STA.B $2C,X                               ; $8CF86C |
  INC.B $1A,X                               ; $8CF86E |

CODE_8CF870:
  RTL                                       ; $8CF870 |

CODE_8CF871:
  JSL.L CODE_FL_86C70D                      ; $8CF871 |
  JSR.W CODE_FN_8CF881                      ; $8CF875 |
  LDA.B $3A,X                               ; $8CF878 |
  STA.B $26,X                               ; $8CF87A |
  LDA.W #$0020                              ; $8CF87C |
  BRA CODE_JP_8CF86C                        ; $8CF87F |

CODE_FN_8CF881:
  LDA.B $4E,X                               ; $8CF881 |
  AND.W #$0100                              ; $8CF883 |
  BNE CODE_8CF88F                           ; $8CF886 |
  LDA.W #$0017                              ; $8CF888 |
  JSL.L push_sound_queue                    ; $8CF88B |

CODE_8CF88F:
  RTS                                       ; $8CF88F |

CODE_8CF890:
  JSL.L CODE_FL_86C70D                      ; $8CF890 |
  STZ.B $26,X                               ; $8CF894 |
  LDA.W #$0120                              ; $8CF896 |
  BRA CODE_JP_8CF86C                        ; $8CF899 |

CODE_8CF89B:
  JSL.L CODE_FL_86C70D                      ; $8CF89B |
  LDA.B $3A,X                               ; $8CF89F |
  EOR.W #$FFFF                              ; $8CF8A1 |
  INC A                                     ; $8CF8A4 |
  STA.B $26,X                               ; $8CF8A5 |
  LDA.W #$0017                              ; $8CF8A7 |
  JSL.L push_sound_queue                    ; $8CF8AA |
  LDA.W #$0020                              ; $8CF8AE |
  BRA CODE_JP_8CF86C                        ; $8CF8B1 |

CODE_8CF8B3:
  JSL.L CODE_FL_86C70D                      ; $8CF8B3 |
  STZ.B $26,X                               ; $8CF8B7 |
  RTL                                       ; $8CF8B9 |

CODE_8CF8BA:
  JSL.L CODE_FL_86C3F8                      ; $8CF8BA |
  PHX                                       ; $8CF8BE |
  ASL A                                     ; $8CF8BF |
  TAX                                       ; $8CF8C0 |
  LDA.L PTR16_8CF8CB,X                      ; $8CF8C1 |
  PLX                                       ; $8CF8C5 |
  STA.B $00                                 ; $8CF8C6 |
  JMP.W ($0000)                             ; $8CF8C8 |

PTR16_8CF8CB:
  dw CODE_8CF8D1                            ; $8CF8CB |
  dw CODE_8CF8EA                            ; $8CF8CD |
  dw CODE_8CF8FE                            ; $8CF8CF |

CODE_8CF8D1:
  LDA.W #$0100                              ; $8CF8D1 |
  STA.B $3A,X                               ; $8CF8D4 |
  LDA.B $4E,X                               ; $8CF8D6 |
  AND.W #$0100                              ; $8CF8D8 |
  BNE CODE_8CF8E2                           ; $8CF8DB |
  LDA.W #$FF00                              ; $8CF8DD |
  STA.B $3A,X                               ; $8CF8E0 |

CODE_8CF8E2:
  LDA.W #$32E6                              ; $8CF8E2 |
  STA.B $00,X                               ; $8CF8E5 |
  JMP.W CODE_JP_8CF84C                      ; $8CF8E7 |

CODE_8CF8EA:
  JSL.L CODE_FL_85ABAD                      ; $8CF8EA |
  BCC CODE_8CF8FD                           ; $8CF8EE |
  JSR.W CODE_FN_8CF881                      ; $8CF8F0 |
  LDA.B $3A,X                               ; $8CF8F3 |
  STA.B $26,X                               ; $8CF8F5 |
  LDA.W #$0020                              ; $8CF8F7 |
  JMP.W CODE_JP_8CF86C                      ; $8CF8FA |

CODE_8CF8FD:
  RTL                                       ; $8CF8FD |

CODE_8CF8FE:
  JSL.L CODE_FL_86C70D                      ; $8CF8FE |
  STZ.B $26,X                               ; $8CF902 |
  RTL                                       ; $8CF904 |

CODE_8CF905:
  JSL.L CODE_FL_86C3C9                      ; $8CF905 |
  PHX                                       ; $8CF909 |
  ASL A                                     ; $8CF90A |
  TAX                                       ; $8CF90B |
  LDA.L PTR16_8CF916,X                      ; $8CF90C |
  PLX                                       ; $8CF910 |
  STA.B $00                                 ; $8CF911 |
  JMP.W ($0000)                             ; $8CF913 |

PTR16_8CF916:
  dw CODE_8CF91E                            ; $8CF916 |
  dw CODE_8CF960                            ; $8CF918 |
  dw CODE_8CF971                            ; $8CF91A |
  dw CODE_8CF984                            ; $8CF91C |

CODE_8CF91E:
  LDA.W #$32E6                              ; $8CF91E |
  STA.B $00,X                               ; $8CF921 |
  JSL.L CODE_FL_86C7A5                      ; $8CF923 |
  LDA.W #$0100                              ; $8CF927 |
  STA.B $3A,X                               ; $8CF92A |
  LDA.B $4E,X                               ; $8CF92C |
  AND.W #$0100                              ; $8CF92E |
  BNE CODE_8CF938                           ; $8CF931 |
  LDA.W #$FF00                              ; $8CF933 |
  STA.B $3A,X                               ; $8CF936 |

CODE_8CF938:
  LDA.B $4E,X                               ; $8CF938 |
  AND.W #$00FF                              ; $8CF93A |
  ASL A                                     ; $8CF93D |
  TAY                                       ; $8CF93E |
  PHB                                       ; $8CF93F |
  PHK                                       ; $8CF940 |
  PLB                                       ; $8CF941 |
  LDA.W CODE_00F95C,Y                       ; $8CF942 |
  STA.B $3C,X                               ; $8CF945 |
  LDA.W LOOSE_OP_00F95E,Y                   ; $8CF947 |
  STA.B $4E,X                               ; $8CF94A |
  PLB                                       ; $8CF94C |
  LDA.B $34,X                               ; $8CF94D |
  ORA.W #$1880                              ; $8CF94F |
  STA.B $34,X                               ; $8CF952 |
  JSL.L CODE_FL_85AA07                      ; $8CF954 |
  JML.L CODE_FL_86C63F                      ; $8CF958 |

  dw $0050,$0008                            ; $8CF95C |

CODE_8CF960:
  JSL.L CODE_FL_85ABAD                      ; $8CF960 |
  BCC CODE_8CF970                           ; $8CF964 |
  LDA.B $3A,X                               ; $8CF966 |
  STA.B $28,X                               ; $8CF968 |
  LDA.B $3C,X                               ; $8CF96A |
  STA.B $2C,X                               ; $8CF96C |
  INC.B $1A,X                               ; $8CF96E |

CODE_8CF970:
  RTL                                       ; $8CF970 |

CODE_8CF971:
  JSL.L CODE_FL_86C70D                      ; $8CF971 |
  INC.B $1A,X                               ; $8CF975 |
  LDA.B $3A,X                               ; $8CF977 |
  EOR.W #$FFFF                              ; $8CF979 |
  INC A                                     ; $8CF97C |

CODE_8CF97D:
  STA.B $28,X                               ; $8CF97D |
  LDA.B $3C,X                               ; $8CF97F |
  STA.B $2C,X                               ; $8CF981 |
  RTL                                       ; $8CF983 |

CODE_8CF984:
  JSL.L CODE_FL_86C70D                      ; $8CF984 |
  DEC.B $1A,X                               ; $8CF988 |
  LDA.B $3A,X                               ; $8CF98A |
  BRA CODE_8CF97D                           ; $8CF98C |

CODE_FL_8CF98E:
  BIT.W $1C3E                               ; $8CF98E |
  BPL CODE_8CF99C                           ; $8CF991 |
  LDA.W #$0013                              ; $8CF993 |
  JSL.L CODE_FL_86C9A4                      ; $8CF996 |
  BRA CODE_8CF9A3                           ; $8CF99A |

CODE_8CF99C:
  LDA.W #$0013                              ; $8CF99C |
  JSL.L CODE_FL_86C9C2                      ; $8CF99F |

CODE_8CF9A3:
  BCS CODE_8CF9C2                           ; $8CF9A3 |
  JSL.L CODE_FL_85AAB6                      ; $8CF9A5 |
  LDA.W #$0077                              ; $8CF9A9 |
  JSL.L CODE_FL_86CAE6                      ; $8CF9AC |
  LDA.W #$0043                              ; $8CF9B0 |
  STA.W $0002,Y                             ; $8CF9B3 |
  BIT.W $1C3E                               ; $8CF9B6 |
  BMI CODE_8CF9C2                           ; $8CF9B9 |
  LDA.B $14,X                               ; $8CF9BB |
  INC A                                     ; $8CF9BD |
  STA.W $0014,Y                             ; $8CF9BE |
  CLC                                       ; $8CF9C1 |

CODE_8CF9C2:
  RTL                                       ; $8CF9C2 |

CODE_FL_8CF9C3:
  PHX                                       ; $8CF9C3 |
  TAX                                       ; $8CF9C4 |
  LDA.L $700200,X                           ; $8CF9C5 |
  ORA.W #$8000                              ; $8CF9C9 |
  STA.L $700200,X                           ; $8CF9CC |
  PLX                                       ; $8CF9D0 |
  RTL                                       ; $8CF9D1 |

CODE_FL_8CF9D2:
  PHX                                       ; $8CF9D2 |
  TAX                                       ; $8CF9D3 |
  LDA.L $700200,X                           ; $8CF9D4 |
  PLX                                       ; $8CF9D8 |
  ASL A                                     ; $8CF9D9 |
  RTL                                       ; $8CF9DA |

CODE_FL_8CF9DB:
  PHX                                       ; $8CF9DB |
  TAX                                       ; $8CF9DC |
  LDA.L $700200,X                           ; $8CF9DD |
  PLX                                       ; $8CF9E1 |
  AND.W #$7FFF                              ; $8CF9E2 |
  BNE CODE_8CF9E9                           ; $8CF9E5 |
  CLC                                       ; $8CF9E7 |
  RTL                                       ; $8CF9E8 |

CODE_8CF9E9:
  SEC                                       ; $8CF9E9 |
  RTL                                       ; $8CF9EA |

CODE_FL_8CF9EB:
  AND.W #$FFFE                              ; $8CF9EB |
  STA.B $00                                 ; $8CF9EE |
  LDA.B $09,X                               ; $8CF9F0 |
  AND.W #$FFFE                              ; $8CF9F2 |
  CMP.B $00                                 ; $8CF9F5 |
  BEQ CODE_8CFA06                           ; $8CF9F7 |
  BMI CODE_8CFA00                           ; $8CF9F9 |
  LDA.W #$FE00                              ; $8CF9FB |
  BRA CODE_8CFA03                           ; $8CF9FE |

CODE_8CFA00:
  LDA.W #$0200                              ; $8CFA00 |

CODE_8CFA03:
  STA.B $26,X                               ; $8CFA03 |
  RTL                                       ; $8CFA05 |

CODE_8CFA06:
  STZ.B $26,X                               ; $8CFA06 |
  TDC                                       ; $8CFA08 |
  RTL                                       ; $8CFA09 |

CODE_FL_8CFA0A:
  AND.W #$FFFE                              ; $8CFA0A |
  STA.B $00                                 ; $8CFA0D |
  LDA.B $0D,X                               ; $8CFA0F |
  AND.W #$FFFE                              ; $8CFA11 |
  CMP.B $00                                 ; $8CFA14 |
  BEQ CODE_8CFA25                           ; $8CFA16 |
  BMI CODE_8CFA1F                           ; $8CFA18 |
  LDA.W #$FE00                              ; $8CFA1A |
  BRA CODE_8CFA22                           ; $8CFA1D |

CODE_8CFA1F:
  LDA.W #$0200                              ; $8CFA1F |

CODE_8CFA22:
  STA.B $28,X                               ; $8CFA22 |
  RTL                                       ; $8CFA24 |

CODE_8CFA25:
  STA.B $28,X                               ; $8CFA25 |
  TDC                                       ; $8CFA27 |
  RTL                                       ; $8CFA28 |

CODE_FL_8CFA29:
  LDA.B $09,X                               ; $8CFA29 |
  CLC                                       ; $8CFA2B |
  ADC.W $1662                               ; $8CFA2C |
  RTL                                       ; $8CFA2F |

CODE_FL_8CFA30:
  LDA.B $0D,X                               ; $8CFA30 |
  CLC                                       ; $8CFA32 |
  ADC.W $1672                               ; $8CFA33 |
  RTL                                       ; $8CFA36 |

CODE_FL_8CFA37:
  LDA.W $0009,Y                             ; $8CFA37 |
  CLC                                       ; $8CFA3A |
  ADC.W $1662                               ; $8CFA3B |
  RTL                                       ; $8CFA3E |

CODE_FL_8CFA3F:
  LDA.W $000D,Y                             ; $8CFA3F |
  CLC                                       ; $8CFA42 |
  ADC.W $1672                               ; $8CFA43 |
  RTL                                       ; $8CFA46 |

  SEC                                       ; $8CFA47 |
  SBC.W $1662                               ; $8CFA48 |
  RTL                                       ; $8CFA4B |

  SEC                                       ; $8CFA4C |
  SBC.W $1672                               ; $8CFA4D |
  RTL                                       ; $8CFA50 |

CODE_FL_8CFA51:
  LDA.W $002E,Y                             ; $8CFA51 |
  CLC                                       ; $8CFA54 |
  ADC.B $2E,X                               ; $8CFA55 |
  STA.B $00                                 ; $8CFA57 |
  ADC.B $09,X                               ; $8CFA59 |
  SEC                                       ; $8CFA5B |
  SBC.W $0009,Y                             ; $8CFA5C |
  ASL.B $00                                 ; $8CFA5F |
  CMP.B $00                                 ; $8CFA61 |
  BCS CODE_8CFA79                           ; $8CFA63 |
  LDA.W $0030,Y                             ; $8CFA65 |
  CLC                                       ; $8CFA68 |
  ADC.B $30,X                               ; $8CFA69 |
  STA.B $00                                 ; $8CFA6B |
  LDA.B $0D,X                               ; $8CFA6D |
  CLC                                       ; $8CFA6F |
  ADC.W $0030,Y                             ; $8CFA70 |
  SEC                                       ; $8CFA73 |
  SBC.W $000D,Y                             ; $8CFA74 |
  CMP.B $00                                 ; $8CFA77 |

CODE_8CFA79:
  RTL                                       ; $8CFA79 |

CODE_FL_8CFA7A:
  LDA.W $002E,Y                             ; $8CFA7A |
  CLC                                       ; $8CFA7D |
  ADC.B $2E,X                               ; $8CFA7E |
  STA.B $00                                 ; $8CFA80 |
  ADC.B $09,X                               ; $8CFA82 |
  SEC                                       ; $8CFA84 |
  SBC.W $0009,Y                             ; $8CFA85 |
  ASL.B $00                                 ; $8CFA88 |
  CMP.B $00                                 ; $8CFA8A |
  BCS CODE_8CFABC                           ; $8CFA8C |
  LDA.B $30,X                               ; $8CFA8E |
  LSR A                                     ; $8CFA90 |
  STA.B $00                                 ; $8CFA91 |
  LDA.W $0030,Y                             ; $8CFA93 |
  LSR A                                     ; $8CFA96 |
  CLC                                       ; $8CFA97 |
  ADC.B $00                                 ; $8CFA98 |
  STA.B $00                                 ; $8CFA9A |
  ADC.B $0D,X                               ; $8CFA9C |
  SEC                                       ; $8CFA9E |
  SBC.W $000D,Y                             ; $8CFA9F |
  ASL.B $00                                 ; $8CFAA2 |
  CMP.B $00                                 ; $8CFAA4 |
  BCS CODE_8CFABC                           ; $8CFAA6 |
  LDA.W $0042,Y                             ; $8CFAA8 |
  CLC                                       ; $8CFAAB |
  ADC.B $42,X                               ; $8CFAAC |
  STA.B $00                                 ; $8CFAAE |
  LDA.B $11,X                               ; $8CFAB0 |
  CLC                                       ; $8CFAB2 |
  ADC.W $0042,Y                             ; $8CFAB3 |
  SEC                                       ; $8CFAB6 |
  SBC.W $0011,Y                             ; $8CFAB7 |
  CMP.B $00                                 ; $8CFABA |

CODE_8CFABC:
  RTL                                       ; $8CFABC |

  LDA.W $0009,Y                             ; $8CFABD |
  CMP.B $09,X                               ; $8CFAC0 |
  BMI CODE_8CFACE                           ; $8CFAC2 |
  SEC                                       ; $8CFAC4 |
  SBC.B $2E,X                               ; $8CFAC5 |
  SEC                                       ; $8CFAC7 |
  SBC.W $002E,Y                             ; $8CFAC8 |
  DEC A                                     ; $8CFACB |
  BRA CODE_8CFAD6                           ; $8CFACC |

CODE_8CFACE:
  CLC                                       ; $8CFACE |
  ADC.B $2E,X                               ; $8CFACF |
  CLC                                       ; $8CFAD1 |
  ADC.W $002E,Y                             ; $8CFAD2 |
  INC A                                     ; $8CFAD5 |

CODE_8CFAD6:
  STA.B $09,X                               ; $8CFAD6 |
  RTL                                       ; $8CFAD8 |

CODE_FL_8CFAD9:
  STX.B $FC                                 ; $8CFAD9 |
  JSL.L CODE_FL_86CA09                      ; $8CFADB |
  LDY.W #$0072                              ; $8CFADF |
  STY.B $16                                 ; $8CFAE2 |
  BRA CODE_8CFAFE                           ; $8CFAE4 |

CODE_FL_8CFAE6:
  STX.B $FC                                 ; $8CFAE6 |
  JSL.L CODE_FL_86CA09                      ; $8CFAE8 |
  LDY.W #$0028                              ; $8CFAEC |
  STY.B $16                                 ; $8CFAEF |
  BRA CODE_8CFAFE                           ; $8CFAF1 |

CODE_FL_8CFAF3:
  STX.B $FC                                 ; $8CFAF3 |
  JSL.L CODE_FL_86CA09                      ; $8CFAF5 |
  LDY.W #$0000                              ; $8CFAF9 |
  STY.B $16                                 ; $8CFAFC |

CODE_8CFAFE:
  PHB                                       ; $8CFAFE |
  PEA.W $8787                               ; $8CFAFF |
  PLB                                       ; $8CFB02 |
  PLB                                       ; $8CFB03 |

CODE_8CFB04:
  LDA.W LOOSE_OP_00CBC9,Y                   ; $8CFB04 |
  STA.B $1A                                 ; $8CFB07 |
  LDA.W LOOSE_OP_00CBCB,Y                   ; $8CFB09 |
  STA.B $1C                                 ; $8CFB0C |
  LDA.W CODE_00CBCD,Y                       ; $8CFB0E |
  STA.B $1E                                 ; $8CFB11 |
  LDA.W LOOSE_OP_00CBC7,Y                   ; $8CFB13 |
  CMP.W #$FFFF                              ; $8CFB16 |
  BEQ CODE_8CFB5F                           ; $8CFB19 |
  STA.B $18                                 ; $8CFB1B |
  JSL.L CODE_FL_86C9C5                      ; $8CFB1D |
  BCS CODE_8CFB5F                           ; $8CFB21 |
  LDA.B $1A                                 ; $8CFB23 |
  CLC                                       ; $8CFB25 |
  ADC.B $09,X                               ; $8CFB26 |
  STA.W $0009,Y                             ; $8CFB28 |
  LDA.B $1A                                 ; $8CFB2B |
  CMP.W #$8000                              ; $8CFB2D |
  ROR A                                     ; $8CFB30 |
  ROR A                                     ; $8CFB31 |
  XBA                                       ; $8CFB32 |
  STA.W $0026,Y                             ; $8CFB33 |
  LDA.B $1C                                 ; $8CFB36 |
  CLC                                       ; $8CFB38 |
  ADC.B $0D,X                               ; $8CFB39 |
  STA.W $000D,Y                             ; $8CFB3B |
  LDA.B $1C                                 ; $8CFB3E |
  CMP.W #$8000                              ; $8CFB40 |
  ROR A                                     ; $8CFB43 |
  ROR A                                     ; $8CFB44 |
  XBA                                       ; $8CFB45 |
  STA.W $0028,Y                             ; $8CFB46 |
  LDA.B $1E                                 ; $8CFB49 |
  STA.W $003A,Y                             ; $8CFB4B |
  LDA.W #$1898                              ; $8CFB4E |
  STA.W $0004,Y                             ; $8CFB51 |
  LDA.B $16                                 ; $8CFB54 |
  CLC                                       ; $8CFB56 |
  ADC.W #$0008                              ; $8CFB57 |
  STA.B $16                                 ; $8CFB5A |
  TAY                                       ; $8CFB5C |
  BRA CODE_8CFB04                           ; $8CFB5D |

CODE_8CFB5F:
  PLB                                       ; $8CFB5F |
  RTL                                       ; $8CFB60 |

  TYA                                       ; $8CFB61 |
  AND.W #$00FF                              ; $8CFB62 |
  STA.B $1A                                 ; $8CFB65 |
  TYA                                       ; $8CFB67 |
  ASL A                                     ; $8CFB68 |
  TDC                                       ; $8CFB69 |
  BCC CODE_8CFB6F                           ; $8CFB6A |
  LDA.W #$0010                              ; $8CFB6C |

CODE_8CFB6F:
  STA.B $18                                 ; $8CFB6F |
  LDA.B $B6                                 ; $8CFB71 |
  JSL.L CODE_FL_86C9C5                      ; $8CFB73 |
  BCS CODE_8CFBAD                           ; $8CFB77 |
  PHX                                       ; $8CFB79 |
  TYX                                       ; $8CFB7A |
  LDA.W #$1898                              ; $8CFB7B |
  STA.B $04,X                               ; $8CFB7E |
  LDA.B $86                                 ; $8CFB80 |
  AND.W #$000F                              ; $8CFB82 |
  CLC                                       ; $8CFB85 |
  ADC.B $18                                 ; $8CFB86 |
  LDY.B $1A                                 ; $8CFB88 |
  JSL.L CODE_FL_8AB562                      ; $8CFB8A |
  PLX                                       ; $8CFB8E |
  LDA.B $B6                                 ; $8CFB8F |
  JSL.L CODE_FL_86C9C5                      ; $8CFB91 |
  BCS CODE_8CFBAD                           ; $8CFB95 |
  PHX                                       ; $8CFB97 |
  TYX                                       ; $8CFB98 |
  LDA.W #$1898                              ; $8CFB99 |
  STA.B $04,X                               ; $8CFB9C |
  LDA.B $87                                 ; $8CFB9E |
  AND.W #$000F                              ; $8CFBA0 |
  CLC                                       ; $8CFBA3 |
  ADC.B $18                                 ; $8CFBA4 |
  LDY.B $1A                                 ; $8CFBA6 |
  JSL.L CODE_FL_8AB562                      ; $8CFBA8 |
  PLX                                       ; $8CFBAC |

CODE_8CFBAD:
  RTL                                       ; $8CFBAD |

CODE_FL_8CFBAE:
  LDY.W #$0093                              ; $8CFBAE |
  LDA.W #$003F                              ; $8CFBB1 |
  BRA CODE_FL_8CFBDC                        ; $8CFBB4 |

CODE_FL_8CFBB6:
  LDY.W #$0073                              ; $8CFBB6 |
  LDA.W #$003F                              ; $8CFBB9 |
  BRA CODE_FL_8CFBDC                        ; $8CFBBC |

CODE_FL_8CFBBE:
  LDY.W #$0093                              ; $8CFBBE |
  LDA.W #$007F                              ; $8CFBC1 |
  BRA CODE_FL_8CFBDC                        ; $8CFBC4 |

CODE_FL_8CFBC6:
  LDY.W #$0073                              ; $8CFBC6 |
  LDA.W #$007F                              ; $8CFBC9 |
  BRA CODE_FL_8CFBDC                        ; $8CFBCC |

CODE_FL_8CFBCE:
  LDY.W #$0093                              ; $8CFBCE |
  LDA.W #$001F                              ; $8CFBD1 |
  BRA CODE_FL_8CFBDC                        ; $8CFBD4 |

CODE_FL_8CFBD6:
  LDY.W #$0073                              ; $8CFBD6 |
  LDA.W #$001F                              ; $8CFBD9 |

CODE_FL_8CFBDC:
  STA.B $1A                                 ; $8CFBDC |
  INC A                                     ; $8CFBDE |
  LSR A                                     ; $8CFBDF |
  STA.B $1C                                 ; $8CFBE0 |
  TYA                                       ; $8CFBE2 |
  STA.B $18                                 ; $8CFBE3 |
  JSL.L CODE_FL_86C9C2                      ; $8CFBE5 |
  BCC CODE_8CFBF3                           ; $8CFBE9 |
  LDA.B $18                                 ; $8CFBEB |
  JSL.L CODE_FL_86C9A4                      ; $8CFBED |
  BCS CODE_8CFC15                           ; $8CFBF1 |

CODE_8CFBF3:
  LDA.W #$1898                              ; $8CFBF3 |
  STA.W $0004,Y                             ; $8CFBF6 |
  LDA.B $86                                 ; $8CFBF9 |
  AND.B $1A                                 ; $8CFBFB |
  SEC                                       ; $8CFBFD |
  SBC.B $1C                                 ; $8CFBFE |
  CLC                                       ; $8CFC00 |
  ADC.B $09,X                               ; $8CFC01 |
  STA.W $0009,Y                             ; $8CFC03 |
  LDA.B $87                                 ; $8CFC06 |
  AND.B $1A                                 ; $8CFC08 |
  EOR.W #$FFFF                              ; $8CFC0A |
  INC A                                     ; $8CFC0D |
  CLC                                       ; $8CFC0E |
  ADC.B $0D,X                               ; $8CFC0F |
  STA.W $000D,Y                             ; $8CFC11 |
  CLC                                       ; $8CFC14 |

CODE_8CFC15:
  RTL                                       ; $8CFC15 |

CODE_FL_8CFC16:
  JSL.L CODE_FL_86C82F                      ; $8CFC16 |
  JSL.L CODE_FL_858A65                      ; $8CFC1A |
  BEQ CODE_8CFC24                           ; $8CFC1E |
  JSL.L CODE_FL_86CB6A                      ; $8CFC20 |

CODE_8CFC24:
  JSL.L CODE_FL_858A42                      ; $8CFC24 |
  BEQ CODE_8CFC2E                           ; $8CFC28 |
  STZ.B $28,X                               ; $8CFC2A |
  TDC                                       ; $8CFC2C |
  RTL                                       ; $8CFC2D |

CODE_8CFC2E:
  LDA.W #$0001                              ; $8CFC2E |
  RTL                                       ; $8CFC31 |

CODE_FL_8CFC32:
  JSL.L CODE_FL_86C82F                      ; $8CFC32 |
  JSL.L CODE_FL_858A42                      ; $8CFC36 |
  BEQ CODE_8CFC40                           ; $8CFC3A |
  STZ.B $28,X                               ; $8CFC3C |
  TDC                                       ; $8CFC3E |
  RTL                                       ; $8CFC3F |

CODE_8CFC40:
  LDA.W #$0001                              ; $8CFC40 |
  RTL                                       ; $8CFC43 |

CODE_FL_8CFC44:
  LDA.W $0011,Y                             ; $8CFC44 |
  STA.B $11,X                               ; $8CFC47 |

CODE_FL_8CFC49:
  LDA.W $0009,Y                             ; $8CFC49 |
  STA.B $09,X                               ; $8CFC4C |
  LDA.W $000D,Y                             ; $8CFC4E |
  STA.B $0D,X                               ; $8CFC51 |
  RTL                                       ; $8CFC53 |

CODE_FL_8CFC54:
  LDA.B $11,X                               ; $8CFC54 |
  STA.W $0011,Y                             ; $8CFC56 |
  LDA.B $09,X                               ; $8CFC59 |
  STA.W $0009,Y                             ; $8CFC5B |
  LDA.B $0D,X                               ; $8CFC5E |
  STA.W $000D,Y                             ; $8CFC60 |
  RTL                                       ; $8CFC63 |

CODE_FL_8CFC64:
  TYX                                       ; $8CFC64 |
  LDY.B $FC                                 ; $8CFC65 |
  JSL.L CODE_FL_8CFC76                      ; $8CFC67 |
  TXY                                       ; $8CFC6B |
  LDX.B $FC                                 ; $8CFC6C |
  RTL                                       ; $8CFC6E |

CODE_FL_8CFC6F:
  CLC                                       ; $8CFC6F |
  ADC.B $0D,X                               ; $8CFC70 |
  STA.W $000D,Y                             ; $8CFC72 |
  RTL                                       ; $8CFC75 |

CODE_FL_8CFC76:
  STA.B $00                                 ; $8CFC76 |
  LDA.W $0004,Y                             ; $8CFC78 |
  AND.W #$2020                              ; $8CFC7B |
  STA.B $02                                 ; $8CFC7E |
  BEQ CODE_8CFC8A                           ; $8CFC80 |
  LDA.B $00                                 ; $8CFC82 |
  EOR.W #$FFFF                              ; $8CFC84 |
  INC A                                     ; $8CFC87 |
  STA.B $00                                 ; $8CFC88 |

CODE_8CFC8A:
  LDA.W $0009,Y                             ; $8CFC8A |
  CLC                                       ; $8CFC8D |
  ADC.B $00                                 ; $8CFC8E |
  STA.B $09,X                               ; $8CFC90 |
  LDA.B $04,X                               ; $8CFC92 |
  AND.W #$DFDF                              ; $8CFC94 |
  ORA.B $02                                 ; $8CFC97 |
  STA.B $04,X                               ; $8CFC99 |
  LDA.B $02                                 ; $8CFC9B |
  RTL                                       ; $8CFC9D |

CODE_FL_8CFC9E:
  CLC                                       ; $8CFC9E |
  ADC.W $000D,Y                             ; $8CFC9F |
  STA.B $0D,X                               ; $8CFCA2 |
  RTL                                       ; $8CFCA4 |

CODE_FL_8CFCA5:
  ASL A                                     ; $8CFCA5 |
  ASL A                                     ; $8CFCA6 |
  ASL A                                     ; $8CFCA7 |
  ASL A                                     ; $8CFCA8 |
  STA.B $00                                 ; $8CFCA9 |
  ASL A                                     ; $8CFCAB |
  ASL A                                     ; $8CFCAC |
  ADC.B $00                                 ; $8CFCAD |
  ADC.W #$0B70                              ; $8CFCAF |
  TAY                                       ; $8CFCB2 |
  RTL                                       ; $8CFCB3 |

CODE_FL_8CFCB4:
  LDA.B ($48,X)                             ; $8CFCB4 |
  TAY                                       ; $8CFCB6 |
  LDA.B $09,X                               ; $8CFCB7 |
  CMP.W $0009,Y                             ; $8CFCB9 |
  BMI CODE_8CFCC7                           ; $8CFCBC |
  LDA.B $04,X                               ; $8CFCBE |
  BIT.W #$2020                              ; $8CFCC0 |
  BEQ CODE_8CFCCE                           ; $8CFCC3 |

CODE_8CFCC5:
  CLC                                       ; $8CFCC5 |
  RTL                                       ; $8CFCC6 |

CODE_8CFCC7:
  LDA.B $04,X                               ; $8CFCC7 |
  BIT.W #$2020                              ; $8CFCC9 |
  BEQ CODE_8CFCC5                           ; $8CFCCC |

CODE_8CFCCE:
  SEC                                       ; $8CFCCE |
  RTL                                       ; $8CFCCF |

CODE_FL_8CFCD0:
  STA.B $00                                 ; $8CFCD0 |
  JSL.L CODE_FL_86C82F                      ; $8CFCD2 |
  LDA.W $1672                               ; $8CFCD6 |
  CLC                                       ; $8CFCD9 |
  ADC.B $0D,X                               ; $8CFCDA |
  CMP.B $00                                 ; $8CFCDC |
  BMI CODE_8CFCEC                           ; $8CFCDE |
  LDA.B $00                                 ; $8CFCE0 |
  SEC                                       ; $8CFCE2 |
  SBC.W $1672                               ; $8CFCE3 |
  STA.B $0D,X                               ; $8CFCE6 |
  STZ.B $28,X                               ; $8CFCE8 |
  TDC                                       ; $8CFCEA |
  RTL                                       ; $8CFCEB |

CODE_8CFCEC:
  LDA.W #$0001                              ; $8CFCEC |
  RTL                                       ; $8CFCEF |

CODE_FL_8CFCF0:
  TDC                                       ; $8CFCF0 |

CODE_FL_8CFCF1:
  STA.B $00                                 ; $8CFCF1 |
  JSL.L CODE_FL_8CFD78                      ; $8CFCF3 |
  LDA.B $11,X                               ; $8CFCF7 |
  CMP.B $00                                 ; $8CFCF9 |
  BEQ CODE_8CFCFF                           ; $8CFCFB |
  BPL CODE_8CFD07                           ; $8CFCFD |

CODE_8CFCFF:
  LDA.B $00                                 ; $8CFCFF |
  STA.B $11,X                               ; $8CFD01 |
  STZ.B $2A,X                               ; $8CFD03 |
  TDC                                       ; $8CFD05 |
  RTL                                       ; $8CFD06 |

CODE_8CFD07:
  LDA.W #$0001                              ; $8CFD07 |
  RTL                                       ; $8CFD0A |

CODE_FL_8CFD0B:
  PHX                                       ; $8CFD0B |
  PHB                                       ; $8CFD0C |
  PEA.W $8787                               ; $8CFD0D |
  PLB                                       ; $8CFD10 |
  PLB                                       ; $8CFD11 |
  ASL A                                     ; $8CFD12 |
  ASL A                                     ; $8CFD13 |
  ASL A                                     ; $8CFD14 |
  TAY                                       ; $8CFD15 |
  LDA.W CODE_00CB5F,Y                       ; $8CFD16 |
  STA.B $00                                 ; $8CFD19 |
  LDA.W LOOSE_OP_00CB61,Y                   ; $8CFD1B |
  STA.B $02                                 ; $8CFD1E |
  LDA.B $42                                 ; $8CFD20 |
  LSR A                                     ; $8CFD22 |
  LDA.W LOOSE_OP_00CB63,Y                   ; $8CFD23 |
  BCC CODE_8CFD2B                           ; $8CFD26 |
  LDA.W LOOSE_OP_00CB65,Y                   ; $8CFD28 |

CODE_8CFD2B:
  TAY                                       ; $8CFD2B |
  LDA.B $02                                 ; $8CFD2C |
  BEQ CODE_8CFD36                           ; $8CFD2E |
  JSL.L CODE_FL_80C26D                      ; $8CFD30 |
  BRA CODE_8CFD3C                           ; $8CFD34 |

CODE_8CFD36:
  LDA.B $00                                 ; $8CFD36 |
  JSL.L CODE_FL_80C2BA                      ; $8CFD38 |

CODE_8CFD3C:
  PLB                                       ; $8CFD3C |
  PLX                                       ; $8CFD3D |
  RTL                                       ; $8CFD3E |

CODE_FL_8CFD3F:
  PHX                                       ; $8CFD3F |
  PHB                                       ; $8CFD40 |
  PEA.W $8787                               ; $8CFD41 |
  PLB                                       ; $8CFD44 |
  PLB                                       ; $8CFD45 |
  ASL A                                     ; $8CFD46 |
  ASL A                                     ; $8CFD47 |
  ASL A                                     ; $8CFD48 |
  TAY                                       ; $8CFD49 |
  LDA.W CODE_00CB5F,Y                       ; $8CFD4A |
  STA.B $00                                 ; $8CFD4D |
  LDA.W LOOSE_OP_00CB61,Y                   ; $8CFD4F |
  STA.B $02                                 ; $8CFD52 |
  LDA.W LOOSE_OP_00CB63,Y                   ; $8CFD54 |
  BRA CODE_8CFD2B                           ; $8CFD57 |

CODE_FL_8CFD59:
  JSL.L CODE_FL_86C859                      ; $8CFD59 |
  JSL.L CODE_FL_86C870                      ; $8CFD5D |

CODE_FL_8CFD61:
  LDA.B $2A,X                               ; $8CFD61 |

CODE_FL_8CFD63:
  CLC                                       ; $8CFD63 |
  BPL CODE_8CFD6F                           ; $8CFD64 |
  ADC.B $10,X                               ; $8CFD66 |
  STA.B $10,X                               ; $8CFD68 |
  BCS CODE_8CFD77                           ; $8CFD6A |
  DEC.B $12,X                               ; $8CFD6C |
  RTL                                       ; $8CFD6E |

CODE_8CFD6F:
  ADC.B $10,X                               ; $8CFD6F |
  STA.B $10,X                               ; $8CFD71 |
  BCC CODE_8CFD77                           ; $8CFD73 |
  INC.B $12,X                               ; $8CFD75 |

CODE_8CFD77:
  RTL                                       ; $8CFD77 |

CODE_FL_8CFD78:
  LDA.B $4C,X                               ; $8CFD78 |

CODE_FL_8CFD7A:
  EOR.W #$FFFF                              ; $8CFD7A |
  INC A                                     ; $8CFD7D |
  CLC                                       ; $8CFD7E |
  ADC.B $2A,X                               ; $8CFD7F |
  STA.B $2A,X                               ; $8CFD81 |
  RTL                                       ; $8CFD83 |

CODE_FL_8CFD84:
  JSL.L CODE_FL_86C3A3                      ; $8CFD84 |
  JSL.L CODE_FL_8CFD59                      ; $8CFD88 |
  LDA.B $1A,X                               ; $8CFD8C |
  RTL                                       ; $8CFD8E |

CODE_FL_8CFD8F:
  JSL.L CODE_FL_86C3A3                      ; $8CFD8F |
  JSL.L CODE_FL_8CFD59                      ; $8CFD93 |
  JSL.L CODE_FL_97FC80                      ; $8CFD97 |
  LDA.B $1A,X                               ; $8CFD9B |
  RTL                                       ; $8CFD9D |

  JSL.L CODE_FL_8CFD59                      ; $8CFD9E |
  JSL.L CODE_FL_97FC80                      ; $8CFDA2 |
  LDA.B $1A,X                               ; $8CFDA6 |
  RTL                                       ; $8CFDA8 |

  JSL.L CODE_FL_8CFD59                      ; $8CFDA9 |
  LDA.B $1A,X                               ; $8CFDAD |
  RTL                                       ; $8CFDAF |

CODE_FL_8CFDB0:
  JSL.L CODE_FL_86C3A3                      ; $8CFDB0 |
  JSL.L CODE_FL_97FC80                      ; $8CFDB4 |
  LDA.B $1A,X                               ; $8CFDB8 |
  RTL                                       ; $8CFDBA |

CODE_FL_8CFDBB:
  STA.B $18                                 ; $8CFDBB |
  STZ.B $1A                                 ; $8CFDBD |
  JSL.L CODE_FL_83FD80                      ; $8CFDBF |
  LDA.W $1C12                               ; $8CFDC3 |
  AND.W #$0003                              ; $8CFDC6 |
  BNE CODE_8CFDE8                           ; $8CFDC9 |
  RTL                                       ; $8CFDCB |

CODE_FL_8CFDCC:
  STA.B $18                                 ; $8CFDCC |
  STZ.B $1A                                 ; $8CFDCE |
  JSL.L CODE_FL_83FD80                      ; $8CFDD0 |
  LDA.W $1C12                               ; $8CFDD4 |
  BEQ CODE_8CFE03                           ; $8CFDD7 |
  STZ.B $26,X                               ; $8CFDD9 |
  STZ.B $28,X                               ; $8CFDDB |
  AND.W #$0003                              ; $8CFDDD |
  BEQ CODE_8CFDE8                           ; $8CFDE0 |
  LDA.B $18                                 ; $8CFDE2 |
  JML.L CODE_FL_8CFE04                      ; $8CFDE4 |

CODE_8CFDE8:
  LDA.B $18                                 ; $8CFDE8 |
  INC.B $1A                                 ; $8CFDEA |
  TAY                                       ; $8CFDEC |
  LDA.B $04,X                               ; $8CFDED |
  EOR.W #$2000                              ; $8CFDEF |
  STA.B $04,X                               ; $8CFDF2 |
  AND.W #$2000                              ; $8CFDF4 |
  BEQ CODE_8CFE01                           ; $8CFDF7 |
  ASL.B $1A                                 ; $8CFDF9 |
  TYA                                       ; $8CFDFB |
  EOR.W #$FFFF                              ; $8CFDFC |
  INC A                                     ; $8CFDFF |
  TAY                                       ; $8CFE00 |

CODE_8CFE01:
  STY.B $26,X                               ; $8CFE01 |

CODE_8CFE03:
  RTL                                       ; $8CFE03 |

CODE_FL_8CFE04:
  LDY.W #$0004                              ; $8CFE04 |
  STY.B $1A                                 ; $8CFE07 |
  TAY                                       ; $8CFE09 |
  LDA.B $86                                 ; $8CFE0A |
  BMI CODE_8CFE16                           ; $8CFE0C |
  TYA                                       ; $8CFE0E |
  DEC.B $1A                                 ; $8CFE0F |
  EOR.W #$FFFF                              ; $8CFE11 |
  INC A                                     ; $8CFE14 |
  TAY                                       ; $8CFE15 |

CODE_8CFE16:
  STY.B $28,X                               ; $8CFE16 |
  RTL                                       ; $8CFE18 |

CODE_FL_8CFE19:
  STA.B $00                                 ; $8CFE19 |
  JSL.L CODE_FL_86C432                      ; $8CFE1B |
  LDA.B $86                                 ; $8CFE1F |
  AND.W #$007F                              ; $8CFE21 |
  ADC.B $00                                 ; $8CFE24 |
  STA.B $2C,X                               ; $8CFE26 |
  RTL                                       ; $8CFE28 |

CODE_FL_8CFE29:
  JSL.L CODE_FL_86C887                      ; $8CFE29 |
  LDA.B $86                                 ; $8CFE2D |
  BMI CODE_8CFE35                           ; $8CFE2F |
  JSL.L CODE_FL_86CB6A                      ; $8CFE31 |

CODE_8CFE35:
  RTL                                       ; $8CFE35 |

CODE_FL_8CFE36:
  LDY.B $1A                                 ; $8CFE36 |
  BEQ CODE_8CFE4A                           ; $8CFE38 |
  STA.B $18                                 ; $8CFE3A |
  CPY.W #$0001                              ; $8CFE3C |
  BNE CODE_8CFE42                           ; $8CFE3F |
  INY                                       ; $8CFE41 |

CODE_8CFE42:
  TYA                                       ; $8CFE42 |
  CLC                                       ; $8CFE43 |
  ADC.B $18                                 ; $8CFE44 |
  JSL.L CODE_FL_86CAEE                      ; $8CFE46 |

CODE_8CFE4A:
  RTL                                       ; $8CFE4A |

CODE_FL_8CFE4B:
  STZ.B $1A                                 ; $8CFE4B |
  LDA.B ($48,X)                             ; $8CFE4D |
  TAY                                       ; $8CFE4F |
  LDA.W $000D,Y                             ; $8CFE50 |
  SEC                                       ; $8CFE53 |
  SBC.B $0D,X                               ; $8CFE54 |
  STA.B $02                                 ; $8CFE56 |
  BPL CODE_8CFE5E                           ; $8CFE58 |
  EOR.W #$FFFF                              ; $8CFE5A |
  INC A                                     ; $8CFE5D |

CODE_8CFE5E:
  STA.B $00                                 ; $8CFE5E |
  LDA.W $0009,Y                             ; $8CFE60 |
  SEC                                       ; $8CFE63 |
  SBC.B $09,X                               ; $8CFE64 |
  STA.B $04                                 ; $8CFE66 |
  BPL CODE_8CFE6E                           ; $8CFE68 |
  EOR.W #$FFFF                              ; $8CFE6A |
  INC A                                     ; $8CFE6D |

CODE_8CFE6E:
  CMP.B $00                                 ; $8CFE6E |
  ORA.B $00                                 ; $8CFE70 |
  STA.B $1C                                 ; $8CFE72 |
  BCS CODE_8CFE82                           ; $8CFE74 |
  LDA.W #$0004                              ; $8CFE76 |
  STA.B $1A                                 ; $8CFE79 |
  LDA.B $02                                 ; $8CFE7B |
  BMI CODE_8CFE81                           ; $8CFE7D |
  DEC.B $1A                                 ; $8CFE7F |

CODE_8CFE81:
  RTL                                       ; $8CFE81 |

CODE_8CFE82:
  INC.B $1A                                 ; $8CFE82 |
  LDA.B $04                                 ; $8CFE84 |
  BMI CODE_8CFE8A                           ; $8CFE86 |
  INC.B $1A                                 ; $8CFE88 |

CODE_8CFE8A:
  RTL                                       ; $8CFE8A |

CODE_FL_8CFE8B:
  LDA.B ($48,X)                             ; $8CFE8B |
  TAY                                       ; $8CFE8D |
  LDA.W $000D,Y                             ; $8CFE8E |
  SEC                                       ; $8CFE91 |
  SBC.B $0D,X                               ; $8CFE92 |
  BPL CODE_8CFE9A                           ; $8CFE94 |
  EOR.W #$FFFF                              ; $8CFE96 |
  INC A                                     ; $8CFE99 |

CODE_8CFE9A:
  STA.B $00                                 ; $8CFE9A |
  LDA.W $0009,Y                             ; $8CFE9C |
  SEC                                       ; $8CFE9F |
  SBC.B $09,X                               ; $8CFEA0 |
  BPL CODE_8CFEA8                           ; $8CFEA2 |
  EOR.W #$FFFF                              ; $8CFEA4 |
  INC A                                     ; $8CFEA7 |

CODE_8CFEA8:
  ORA.B $00                                 ; $8CFEA8 |
  RTL                                       ; $8CFEAA |

CODE_FL_8CFEAB:
  LDY.B $1A                                 ; $8CFEAB |
  BEQ CODE_8CFEC1                           ; $8CFEAD |
  STA.B $18                                 ; $8CFEAF |
  CPY.W #$0001                              ; $8CFEB1 |
  BNE CODE_8CFEB7                           ; $8CFEB4 |
  INY                                       ; $8CFEB6 |

CODE_8CFEB7:
  TYA                                       ; $8CFEB7 |
  CLC                                       ; $8CFEB8 |
  ADC.B $18                                 ; $8CFEB9 |
  STA.B $1E,X                               ; $8CFEBB |
  JSL.L CODE_FL_86C486                      ; $8CFEBD |

CODE_8CFEC1:
  RTL                                       ; $8CFEC1 |

CODE_JL_8CFEC2:
  JSL.L CODE_FL_85A8C3                      ; $8CFEC2 |
  JSL.L CODE_FL_85AB0B                      ; $8CFEC6 |
  LDA.W #$0100                              ; $8CFECA |
  STA.B $28,X                               ; $8CFECD |
  LDA.W $000D,Y                             ; $8CFECF |
  SEC                                       ; $8CFED2 |
  SBC.B $0D,X                               ; $8CFED3 |
  BMI CODE_8CFEDC                           ; $8CFED5 |
  LDA.W #$FF00                              ; $8CFED7 |
  STA.B $28,X                               ; $8CFEDA |

CODE_8CFEDC:
  LDA.W #$0100                              ; $8CFEDC |
  STA.B $26,X                               ; $8CFEDF |
  LDA.W $0009,Y                             ; $8CFEE1 |
  SEC                                       ; $8CFEE4 |
  SBC.B $09,X                               ; $8CFEE5 |
  BMI CODE_8CFEEE                           ; $8CFEE7 |
  LDA.W #$FF00                              ; $8CFEE9 |
  STA.B $26,X                               ; $8CFEEC |

CODE_8CFEEE:
  LDA.W #$0400                              ; $8CFEEE |
  STA.B $2A,X                               ; $8CFEF1 |
  INC.B $1A,X                               ; $8CFEF3 |
  RTL                                       ; $8CFEF5 |

CODE_FL_8CFEF6:
  SEC                                       ; $8CFEF6 |
  LDA.B $2A,X                               ; $8CFEF7 |
  SBC.B $4C,X                               ; $8CFEF9 |
  STA.B $2A,X                               ; $8CFEFB |
  LDA.B $11,X                               ; $8CFEFD |
  BPL CODE_8CFF0B                           ; $8CFEFF |
  TDC                                       ; $8CFF01 |
  STA.B $2A,X                               ; $8CFF02 |
  STA.B $11,X                               ; $8CFF04 |
  STA.B $12,X                               ; $8CFF06 |
  LDA.W #$FFFF                              ; $8CFF08 |

CODE_8CFF0B:
  RTL                                       ; $8CFF0B |

CODE_FL_8CFF0C:
  SEP #$20                                  ; $8CFF0C |
  LDA.B #$02                                ; $8CFF0E |
  STA.B $14,X                               ; $8CFF10 |
  REP #$20                                  ; $8CFF12 |
  RTL                                       ; $8CFF14 |

CODE_FL_8CFF15:
  SEP #$20                                  ; $8CFF15 |
  LDA.B #$04                                ; $8CFF17 |
  STA.B $14,X                               ; $8CFF19 |
  REP #$20                                  ; $8CFF1B |
  RTL                                       ; $8CFF1D |

CODE_FL_8CFF1E:
  SEP #$20                                  ; $8CFF1E |
  LDA.B #$06                                ; $8CFF20 |
  STA.B $14,X                               ; $8CFF22 |
  REP #$20                                  ; $8CFF24 |
  RTL                                       ; $8CFF26 |

CODE_8CFF27:
  LDA.W #$0040                              ; $8CFF27 |
  STA.W $0B29                               ; $8CFF2A |
  JMP.W LOOSE_OP_8CCA36                     ; $8CFF2D |

CODE_8CFF30:
  INC.B $3E,X                               ; $8CFF30 |
  LDA.B $3E,X                               ; $8CFF32 |
  CMP.W #$0005                              ; $8CFF34 |
  BCC CODE_8CFF5D                           ; $8CFF37 |
  STZ.B $3E,X                               ; $8CFF39 |
  INC.B $3C,X                               ; $8CFF3B |
  LDA.B $3C,X                               ; $8CFF3D |
  AND.W #$0003                              ; $8CFF3F |
  ASL A                                     ; $8CFF42 |
  ASL A                                     ; $8CFF43 |
  TAY                                       ; $8CFF44 |
  LDA.W CODE_00CC83,Y                       ; $8CFF45 |
  STA.B $02                                 ; $8CFF48 |
  LDA.W CODE_00CC85,Y                       ; $8CFF4A |
  STA.B $00                                 ; $8CFF4D |
  PHX                                       ; $8CFF4F |
  LDY.W #$4C08                              ; $8CFF50 |
  LDX.W #$0040                              ; $8CFF53 |
  LDA.B $02                                 ; $8CFF56 |
  JSL.L CODE_FL_809671                      ; $8CFF58 |
  PLX                                       ; $8CFF5C |

CODE_8CFF5D:
  RTL                                       ; $8CFF5D |

CODE_8CFF5E:
  LDA.W #$8000                              ; $8CFF5E |
  STA.B $92                                 ; $8CFF61 |
  LDA.W #$0040                              ; $8CFF63 |
  STA.W $1964                               ; $8CFF66 |
  JML.L CODE_FL_86CA36                      ; $8CFF69 |

  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8CFF6D |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8CFF75 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8CFF7D |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8CFF85 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8CFF8D |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8CFF95 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8CFF9D |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8CFFA5 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8CFFAD |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8CFFB5 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8CFFBD |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8CFFC5 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8CFFCD |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8CFFD5 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8CFFDD |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8CFFE5 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8CFFED |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8CFFF5 |
  db $FF,$FF,$FF                            ; $8CFFFD |
