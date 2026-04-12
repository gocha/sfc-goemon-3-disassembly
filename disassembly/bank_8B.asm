org $8B8000

CODE_FL_8B8000:
  PHX                                       ; $8B8000 |
  LDA.W $0418                               ; $8B8001 |
  DEC A                                     ; $8B8004 |
  ASL A                                     ; $8B8005 |
  ADC.W $046E                               ; $8B8006 |
  ASL A                                     ; $8B8009 |
  TAY                                       ; $8B800A |
  LDA.W LOOSE_OP_00C539,Y                   ; $8B800B |
  TAY                                       ; $8B800E |
  LDA.W #$0010                              ; $8B800F |
  JSL.L CODE_FL_80C2C9                      ; $8B8012 |
  LDA.W $04D8                               ; $8B8016 |
  BEQ CODE_8B802E                           ; $8B8019 |
  DEC A                                     ; $8B801B |
  ASL A                                     ; $8B801C |
  CLC                                       ; $8B801D |
  ADC.W $052E                               ; $8B801E |
  ASL A                                     ; $8B8021 |
  TAY                                       ; $8B8022 |
  LDA.W LOOSE_OP_00C539,Y                   ; $8B8023 |
  TAY                                       ; $8B8026 |
  LDA.W #$0012                              ; $8B8027 |
  JSL.L CODE_FL_80C2C4                      ; $8B802A |

CODE_8B802E:
  PLX                                       ; $8B802E |
  RTL                                       ; $8B802F |

CODE_FL_8B8030:
  TDC                                       ; $8B8030 |
  SEP #$20                                  ; $8B8031 |
  STA.W $0414                               ; $8B8033 |
  STA.W $04D4                               ; $8B8036 |
  REP #$20                                  ; $8B8039 |

CODE_FL_8B803B:
  LDA.W #$C001                              ; $8B803B |

CODE_8B803E:
  STA.B $E4                                 ; $8B803E |
  JSL.L CODE_FL_8B80CE                      ; $8B8040 |
  LDA.W $0402                               ; $8B8044 |
  ORA.W #$0080                              ; $8B8047 |
  STA.W $0402                               ; $8B804A |
  LDA.W $04C2                               ; $8B804D |
  ORA.W #$0080                              ; $8B8050 |
  STA.W $04C2                               ; $8B8053 |
  RTL                                       ; $8B8056 |

CODE_FL_8B8057:
  TDC                                       ; $8B8057 |
  SEP #$20                                  ; $8B8058 |
  STA.W $0414                               ; $8B805A |
  STA.W $04D4                               ; $8B805D |
  REP #$20                                  ; $8B8060 |
  LDA.W #$8001                              ; $8B8062 |
  BRA CODE_8B803E                           ; $8B8065 |

CODE_FL_8B8067:
  JSL.L CODE_FL_8B80AC                      ; $8B8067 |

CODE_FL_8B806B:
  LDA.W $0402                               ; $8B806B |
  AND.W #$FF7F                              ; $8B806E |
  STA.W $0402                               ; $8B8071 |
  LDA.W $04C2                               ; $8B8074 |
  AND.W #$FF7F                              ; $8B8077 |
  STA.W $04C2                               ; $8B807A |
  RTL                                       ; $8B807D |

CODE_FL_8B807E:
  LDY.W #$04C0                              ; $8B807E |
  BRA CODE_8B8086                           ; $8B8081 |

CODE_FL_8B8083:
  LDY.W #$0400                              ; $8B8083 |

CODE_8B8086:
  JSL.L CODE_FL_8B80B6                      ; $8B8086 |
  LDA.W $0002,Y                             ; $8B808A |
  AND.W #$FF7F                              ; $8B808D |
  STA.W $0002,Y                             ; $8B8090 |
  RTL                                       ; $8B8093 |

CODE_JL_8B8094:
  LDA.W $04BA                               ; $8B8094 |
  ORA.W #$8000                              ; $8B8097 |
  STA.W $04BA                               ; $8B809A |
  LDA.W $057A                               ; $8B809D |
  ORA.W #$8000                              ; $8B80A0 |
  STA.W $057A                               ; $8B80A3 |
  LDA.W #$0002                              ; $8B80A6 |
  STA.B $2C,X                               ; $8B80A9 |
  RTL                                       ; $8B80AB |

CODE_FL_8B80AC:
  LDY.W #$0400                              ; $8B80AC |
  JSL.L CODE_FL_8B80B6                      ; $8B80AF |
  LDY.W #$04C0                              ; $8B80B3 |

CODE_FL_8B80B6:
  LDA.W $0018,Y                             ; $8B80B6 |
  BEQ CODE_8B80CD                           ; $8B80B9 |
  LDA.W $0092,Y                             ; $8B80BB |
  BIT.W #$00E8                              ; $8B80BE |
  BNE CODE_8B80CD                           ; $8B80C1 |
  LDA.W #$0004                              ; $8B80C3 |
  SEP #$20                                  ; $8B80C6 |
  STA.W $0014,Y                             ; $8B80C8 |
  REP #$20                                  ; $8B80CB |

CODE_8B80CD:
  RTL                                       ; $8B80CD |

CODE_FL_8B80CE:
  STZ.W $0498                               ; $8B80CE |
  STZ.W $0558                               ; $8B80D1 |
  STZ.W $049A                               ; $8B80D4 |
  STZ.W $055A                               ; $8B80D7 |
  RTL                                       ; $8B80DA |

  CPY.W #$0200                              ; $8B80DB |
  BRA CODE_8B80EA                           ; $8B80DE |

  CMP.W $0409                               ; $8B80E0 |
  BMI CODE_8B80F4                           ; $8B80E3 |
  STY.W $0498                               ; $8B80E5 |

CODE_8B80E8:
  SEC                                       ; $8B80E8 |
  RTL                                       ; $8B80E9 |

CODE_8B80EA:
  CMP.W $0409                               ; $8B80EA |
  BPL CODE_8B80F4                           ; $8B80ED |
  STY.W $0498                               ; $8B80EF |
  BRA CODE_8B80E8                           ; $8B80F2 |

CODE_8B80F4:
  CLC                                       ; $8B80F4 |
  RTL                                       ; $8B80F5 |

  CPY.W #$0200                              ; $8B80F6 |
  BRA CODE_8B8105                           ; $8B80F9 |

  CMP.W $04C9                               ; $8B80FB |
  BMI CODE_8B810F                           ; $8B80FE |
  STY.W $0558                               ; $8B8100 |

CODE_8B8103:
  SEC                                       ; $8B8103 |
  RTL                                       ; $8B8104 |

CODE_8B8105:
  CMP.W $04C9                               ; $8B8105 |
  BPL CODE_8B810F                           ; $8B8108 |
  STY.W $0558                               ; $8B810A |
  BRA CODE_8B8103                           ; $8B810D |

CODE_8B810F:
  CLC                                       ; $8B810F |
  RTL                                       ; $8B8110 |

CODE_FL_8B8111:
  JSL.L CODE_FL_8B8131                      ; $8B8111 |

CODE_8B8115:
  LDA.W $04D8                               ; $8B8115 |
  BEQ CODE_8B812E                           ; $8B8118 |
  LDA.B $10                                 ; $8B811A |
  JSL.L CODE_FL_8B81BD                      ; $8B811C |
  ORA.B $18                                 ; $8B8120 |
  STA.B $18                                 ; $8B8122 |
  LDA.B $12                                 ; $8B8124 |
  JSL.L CODE_FL_8B81D8                      ; $8B8126 |
  ORA.B $18                                 ; $8B812A |
  STA.B $18                                 ; $8B812C |

CODE_8B812E:
  LDA.B $18                                 ; $8B812E |
  RTL                                       ; $8B8130 |

CODE_FL_8B8131:
  JSL.L CODE_FL_8B80CE                      ; $8B8131 |
  STA.B $10                                 ; $8B8135 |
  STY.B $12                                 ; $8B8137 |
  JSL.L CODE_FL_8B81B8                      ; $8B8139 |
  STA.B $18                                 ; $8B813D |
  LDA.B $12                                 ; $8B813F |
  JSL.L CODE_FL_8B81D3                      ; $8B8141 |
  ORA.B $18                                 ; $8B8145 |
  STA.B $18                                 ; $8B8147 |
  RTL                                       ; $8B8149 |

CODE_FL_8B814A:
  JSL.L CODE_FL_8B80CE                      ; $8B814A |
  STA.B $10                                 ; $8B814E |
  STY.B $12                                 ; $8B8150 |
  STZ.B $18                                 ; $8B8152 |
  BRA CODE_8B8115                           ; $8B8154 |

CODE_FL_8B8156:
  JSL.L CODE_FL_8B80CE                      ; $8B8156 |
  STA.B $10                                 ; $8B815A |
  JSL.L CODE_FL_8B81B8                      ; $8B815C |
  STA.B $18                                 ; $8B8160 |
  LDA.W $04D8                               ; $8B8162 |
  BEQ CODE_8B8171                           ; $8B8165 |
  LDA.B $10                                 ; $8B8167 |
  JSL.L CODE_FL_8B81BD                      ; $8B8169 |
  ORA.B $18                                 ; $8B816D |
  STA.B $18                                 ; $8B816F |

CODE_8B8171:
  LDA.B $18                                 ; $8B8171 |
  RTL                                       ; $8B8173 |

CODE_FL_8B8174:
  JSL.L CODE_FL_8B80CE                      ; $8B8174 |
  STA.B $10                                 ; $8B8178 |
  JSL.L CODE_FL_8B81D3                      ; $8B817A |
  STA.B $18                                 ; $8B817E |
  LDA.W $04D8                               ; $8B8180 |
  BEQ CODE_8B818F                           ; $8B8183 |
  LDA.B $10                                 ; $8B8185 |
  JSL.L CODE_FL_8B81D8                      ; $8B8187 |
  ORA.B $18                                 ; $8B818B |
  STA.B $18                                 ; $8B818D |

CODE_8B818F:
  LDA.B $18                                 ; $8B818F |
  RTL                                       ; $8B8191 |

CODE_8B8192:
  LDA.W #$0100                              ; $8B8192 |
  BRA CODE_8B81A4                           ; $8B8195 |

CODE_8B8197:
  LDA.W #$0200                              ; $8B8197 |
  BRA CODE_8B81A4                           ; $8B819A |

CODE_8B819C:
  LDA.W #$0800                              ; $8B819C |
  BRA CODE_8B81A4                           ; $8B819F |

CODE_8B81A1:
  LDA.W #$0400                              ; $8B81A1 |

CODE_8B81A4:
  ORA.W $0098,Y                             ; $8B81A4 |
  STA.W $0098,Y                             ; $8B81A7 |
  JSL.L CODE_FL_8B81EE                      ; $8B81AA |
  LDA.W #$0001                              ; $8B81AE |
  RTL                                       ; $8B81B1 |

CODE_8B81B2:
  JSL.L CODE_FL_8B81EE                      ; $8B81B2 |
  TDC                                       ; $8B81B6 |
  RTL                                       ; $8B81B7 |

CODE_FL_8B81B8:
  LDY.W #$0400                              ; $8B81B8 |
  BRA CODE_8B81C0                           ; $8B81BB |

CODE_FL_8B81BD:
  LDY.W #$04C0                              ; $8B81BD |

CODE_8B81C0:
  AND.W #$FFFC                              ; $8B81C0 |
  STA.B $00                                 ; $8B81C3 |
  LDA.W $0009,Y                             ; $8B81C5 |
  AND.W #$FFFC                              ; $8B81C8 |
  CMP.B $00                                 ; $8B81CB |
  BEQ CODE_8B81B2                           ; $8B81CD |
  BMI CODE_8B8192                           ; $8B81CF |
  BRA CODE_8B8197                           ; $8B81D1 |

CODE_FL_8B81D3:
  LDY.W #$0400                              ; $8B81D3 |
  BRA CODE_8B81DB                           ; $8B81D6 |

CODE_FL_8B81D8:
  LDY.W #$04C0                              ; $8B81D8 |

CODE_8B81DB:
  AND.W #$FFFC                              ; $8B81DB |
  STA.B $00                                 ; $8B81DE |
  LDA.W $000D,Y                             ; $8B81E0 |
  AND.W #$FFFC                              ; $8B81E3 |
  CMP.B $00                                 ; $8B81E6 |
  BEQ CODE_8B81B2                           ; $8B81E8 |
  BPL CODE_8B819C                           ; $8B81EA |
  BRA CODE_8B81A1                           ; $8B81EC |

CODE_FL_8B81EE:
  LDA.W $0018,Y                             ; $8B81EE |
  CMP.W #$0004                              ; $8B81F1 |
  BNE CODE_8B8207                           ; $8B81F4 |
  LDA.W $0022,Y                             ; $8B81F6 |
  CMP.W #$001C                              ; $8B81F9 |
  BNE CODE_8B8207                           ; $8B81FC |
  LDA.W $009A,Y                             ; $8B81FE |
  ORA.W #$0080                              ; $8B8201 |
  STA.W $009A,Y                             ; $8B8204 |

CODE_8B8207:
  RTL                                       ; $8B8207 |

CODE_FL_8B8208:
  STA.B $0A                                 ; $8B8208 |
  LDY.B $3A,X                               ; $8B820A |
  LDA.W LOOSE_OP_00C5C7,Y                   ; $8B820C |
  STA.B $06                                 ; $8B820F |
  TYA                                       ; $8B8211 |
  LSR A                                     ; $8B8212 |
  CLC                                       ; $8B8213 |
  ADC.B $3A,X                               ; $8B8214 |
  CLC                                       ; $8B8216 |
  ADC.B $0A                                 ; $8B8217 |
  TAY                                       ; $8B8219 |
  LDA.W $0000,Y                             ; $8B821A |
  STA.B $08                                 ; $8B821D |
  PHB                                       ; $8B821F |
  SEP #$20                                  ; $8B8220 |
  LDA.W $0002,Y                             ; $8B8222 |
  PHA                                       ; $8B8225 |
  PLB                                       ; $8B8226 |
  REP #$20                                  ; $8B8227 |
  PHX                                       ; $8B8229 |
  LDY.B $08                                 ; $8B822A |
  LDA.W $0000,Y                             ; $8B822C |
  STA.B $00,X                               ; $8B822F |
  LDA.W $0002,Y                             ; $8B8231 |
  STA.B $02                                 ; $8B8234 |
  LDA.W $0004,Y                             ; $8B8236 |
  STA.B $00                                 ; $8B8239 |
  LDA.W $0005,Y                             ; $8B823B |
  JSR.W CODE_FN_8B8252                      ; $8B823E |
  LDA.B $02                                 ; $8B8241 |
  CLC                                       ; $8B8243 |
  ADC.W $0005,Y                             ; $8B8244 |
  STA.B $02                                 ; $8B8247 |
  LDA.W $0007,Y                             ; $8B8249 |
  JSR.W CODE_FN_8B8252                      ; $8B824C |
  PLX                                       ; $8B824F |
  PLB                                       ; $8B8250 |
  RTL                                       ; $8B8251 |

CODE_FN_8B8252:
  TAX                                       ; $8B8252 |
  LDA.B $02                                 ; $8B8253 |
  LDY.B $06                                 ; $8B8255 |
  JSL.L CODE_FL_809671                      ; $8B8257 |
  LDA.B $06                                 ; $8B825B |
  CLC                                       ; $8B825D |
  ADC.W #$0100                              ; $8B825E |
  STA.B $06                                 ; $8B8261 |
  LDY.B $08                                 ; $8B8263 |
  RTS                                       ; $8B8265 |

CODE_FL_8B8266:
  LDY.W #$6200                              ; $8B8266 |
  LDA.B $3A,X                               ; $8B8269 |
  BEQ CODE_8B8276                           ; $8B826B |
  LDY.W #$6900                              ; $8B826D |
  CMP.W #$0006                              ; $8B8270 |
  BEQ CODE_8B8276                           ; $8B8273 |
  RTL                                       ; $8B8275 |

CODE_8B8276:
  PHX                                       ; $8B8276 |
  LDA.W LOOSE_OP_00C5F1                     ; $8B8277 |
  STA.B $00                                 ; $8B827A |
  LDA.W CODE_00C5F2                         ; $8B827C |
  TAX                                       ; $8B827F |
  LDA.W CODE_00C5EF                         ; $8B8280 |
  JSL.L CODE_FL_809671                      ; $8B8283 |
  PLX                                       ; $8B8287 |
  RTL                                       ; $8B8288 |

CODE_FL_8B8289:
  LDY.B $3A,X                               ; $8B8289 |
  LDA.W CODE_00C49F,Y                       ; $8B828B |
  JML.L push_sound_queue                    ; $8B828E |

CODE_FL_8B8292:
  LDY.W #$0620                              ; $8B8292 |
  LDA.W $0018,Y                             ; $8B8295 |
  CMP.W #$0176                              ; $8B8298 |
  BEQ CODE_8B82B2                           ; $8B829B |
  LDA.W #$0176                              ; $8B829D |
  JSL.L CODE_FL_86C9E0                      ; $8B82A0 |
  LDA.W #$0000                              ; $8B82A4 |
  STA.W $003A,Y                             ; $8B82A7 |
  LDA.W #$0400                              ; $8B82AA |
  STA.W $004E,Y                             ; $8B82AD |
  BRA CODE_8B82D6                           ; $8B82B0 |

CODE_8B82B2:
  LDY.W #$0670                              ; $8B82B2 |
  LDA.W $0018,Y                             ; $8B82B5 |
  CMP.W #$0176                              ; $8B82B8 |
  BEQ CODE_8B82D8                           ; $8B82BB |
  LDA.W #$0176                              ; $8B82BD |
  JSL.L CODE_FL_86C9E0                      ; $8B82C0 |
  LDA.W #$0002                              ; $8B82C4 |
  STA.W $003A,Y                             ; $8B82C7 |
  LDA.W #$0001                              ; $8B82CA |
  STA.W $003C,Y                             ; $8B82CD |
  LDA.W #$0400                              ; $8B82D0 |
  STA.W $004E,Y                             ; $8B82D3 |

CODE_8B82D6:
  SEC                                       ; $8B82D6 |
  RTL                                       ; $8B82D7 |

CODE_8B82D8:
  CLC                                       ; $8B82D8 |
  RTL                                       ; $8B82D9 |

CODE_FL_8B82DA:
  JSL.L CODE_FL_8B80CE                      ; $8B82DA |
  LDA.B $2C,X                               ; $8B82DE |
  BEQ CODE_8B82E5                           ; $8B82E0 |
  JMP.W CODE_JP_8B836C                      ; $8B82E2 |

CODE_8B82E5:
  LDY.W #$0620                              ; $8B82E5 |
  LDA.W $0018,Y                             ; $8B82E8 |
  BNE CODE_8B8300                           ; $8B82EB |
  LDA.W #$0176                              ; $8B82ED |
  JSL.L CODE_FL_86C9E0                      ; $8B82F0 |
  TDC                                       ; $8B82F4 |
  STA.W $003A,Y                             ; $8B82F5 |
  LDA.W #$0400                              ; $8B82F8 |
  STA.W $004E,Y                             ; $8B82FB |
  BRA CODE_8B8367                           ; $8B82FE |

CODE_8B8300:
  LDY.W #$0670                              ; $8B8300 |
  LDA.W $0018,Y                             ; $8B8303 |
  BNE CODE_8B8323                           ; $8B8306 |
  LDA.W #$0176                              ; $8B8308 |
  JSL.L CODE_FL_86C9E0                      ; $8B830B |
  LDA.W #$0002                              ; $8B830F |
  STA.W $003A,Y                             ; $8B8312 |
  LDA.W #$0001                              ; $8B8315 |
  STA.W $003C,Y                             ; $8B8318 |
  LDA.W #$0620                              ; $8B831B |
  STA.W $004E,Y                             ; $8B831E |
  BRA CODE_8B8367                           ; $8B8321 |

CODE_8B8323:
  LDY.W #$08F0                              ; $8B8323 |
  LDA.W $0018,Y                             ; $8B8326 |
  BNE CODE_8B8346                           ; $8B8329 |
  LDA.W #$0176                              ; $8B832B |
  JSL.L CODE_FL_86C9E0                      ; $8B832E |
  LDA.W #$0004                              ; $8B8332 |
  STA.W $003A,Y                             ; $8B8335 |
  LDA.W #$0001                              ; $8B8338 |
  STA.W $003C,Y                             ; $8B833B |
  LDA.W #$0670                              ; $8B833E |
  STA.W $004E,Y                             ; $8B8341 |
  BRA CODE_8B8367                           ; $8B8344 |

CODE_8B8346:
  LDY.W #$0940                              ; $8B8346 |
  LDA.W $0018,Y                             ; $8B8349 |
  BNE CODE_8B836E                           ; $8B834C |
  LDA.W #$0176                              ; $8B834E |
  JSL.L CODE_FL_86C9E0                      ; $8B8351 |
  LDA.W #$0006                              ; $8B8355 |
  STA.W $003A,Y                             ; $8B8358 |
  LDA.W #$0001                              ; $8B835B |
  STA.W $003C,Y                             ; $8B835E |
  LDA.W #$08F0                              ; $8B8361 |
  STA.W $004E,Y                             ; $8B8364 |

CODE_8B8367:
  LDA.W #$0018                              ; $8B8367 |
  STA.B $2C,X                               ; $8B836A |

CODE_JP_8B836C:
  SEC                                       ; $8B836C |
  RTL                                       ; $8B836D |

CODE_8B836E:
  CLC                                       ; $8B836E |
  RTL                                       ; $8B836F |

CODE_8B8370:
  JSL.L CODE_FL_86C3F8                      ; $8B8370 |
  PHX                                       ; $8B8374 |
  ASL A                                     ; $8B8375 |
  TAX                                       ; $8B8376 |
  LDA.L PTR16_8B8381,X                      ; $8B8377 |
  PLX                                       ; $8B837B |
  STA.B $00                                 ; $8B837C |
  JMP.W ($0000)                             ; $8B837E |

PTR16_8B8381:
  dw CODE_8B83D1                            ; $8B8381 |
  dw CODE_8B8438                            ; $8B8383 |
  dw CODE_8B845E                            ; $8B8385 |
  dw CODE_8B846E                            ; $8B8387 |
  dw CODE_8B8483                            ; $8B8389 |
  dw CODE_8B8495                            ; $8B838B |
  dw CODE_8B84FE                            ; $8B838D |
  dw CODE_8B8511                            ; $8B838F |
  dw CODE_8B8526                            ; $8B8391 |
  dw CODE_8B8538                            ; $8B8393 |
  dw CODE_8B84D5                            ; $8B8395 |
  dw CODE_8B84DF                            ; $8B8397 |
  dw CODE_8B84E9                            ; $8B8399 |
  dw CODE_8B84FB                            ; $8B839B |
  dw CODE_8B8550                            ; $8B839D |
  dw CODE_8B8566                            ; $8B839F |
  dw CODE_8B8578                            ; $8B83A1 |
  dw CODE_8B8584                            ; $8B83A3 |
  dw CODE_8B8587                            ; $8B83A5 |
  dw CODE_8B8597                            ; $8B83A7 |
  dw CODE_8B85AE                            ; $8B83A9 |
  dw CODE_8B85C4                            ; $8B83AB |
  dw CODE_8B85D6                            ; $8B83AD |
  dw CODE_8B85EB                            ; $8B83AF |
  dw CODE_8B85F8                            ; $8B83B1 |
  dw CODE_8B8604                            ; $8B83B3 |
  dw CODE_8B8605                            ; $8B83B5 |
  dw CODE_8B8612                            ; $8B83B7 |
  dw CODE_8B85AE                            ; $8B83B9 |
  dw CODE_8B861C                            ; $8B83BB |
  dw CODE_8B8633                            ; $8B83BD |
  dw CODE_8B8634                            ; $8B83BF |
  dw CODE_8B85D6                            ; $8B83C1 |
  dw CODE_8B85EB                            ; $8B83C3 |
  dw CODE_8B8646                            ; $8B83C5 |
  dw CODE_8B865D                            ; $8B83C7 |
  dw CODE_8B867D                            ; $8B83C9 |
  dw CODE_8B868E                            ; $8B83CB |
  dw CODE_8B8695                            ; $8B83CD |
  dw CODE_8B86A7                            ; $8B83CF |

CODE_8B83D1:
  JSL.L CODE_FL_8B803B                      ; $8B83D1 |
  JSL.L CODE_FL_838528                      ; $8B83D5 |
  TDC                                       ; $8B83D9 |
  STA.L $7E7C04                             ; $8B83DA |
  LDY.B $3A,X                               ; $8B83DE |
  LDA.W LOOSE_OP_00C531,Y                   ; $8B83E0 |
  STA.B $06,X                               ; $8B83E3 |
  LDY.B $4E,X                               ; $8B83E5 |
  BEQ CODE_8B83F8                           ; $8B83E7 |
  JSL.L CODE_FL_8CFC49                      ; $8B83E9 |
  SEP #$20                                  ; $8B83ED |
  LDA.W $0004,Y                             ; $8B83EF |
  STA.B $04,X                               ; $8B83F2 |
  STA.B $05,X                               ; $8B83F4 |
  REP #$20                                  ; $8B83F6 |

CODE_8B83F8:
  LDA.W #$0040                              ; $8B83F8 |
  STA.B $4C,X                               ; $8B83FB |
  LDA.W #$8000                              ; $8B83FD |
  ORA.W #$0100                              ; $8B8400 |
  STA.B $22,X                               ; $8B8403 |
  LDA.W #$0070                              ; $8B8405 |
  CLC                                       ; $8B8408 |
  ADC.B $3A,X                               ; $8B8409 |
  STA.B $14,X                               ; $8B840B |
  LDA.W #$0018                              ; $8B840D |
  STA.B $30,X                               ; $8B8410 |
  LDA.W #$0008                              ; $8B8412 |
  STA.B $2E,X                               ; $8B8415 |
  JSL.L CODE_FL_8B8266                      ; $8B8417 |
  LDA.B $3C,X                               ; $8B841B |
  PHX                                       ; $8B841D |
  ASL A                                     ; $8B841E |
  TAX                                       ; $8B841F |
  LDA.L PTR16_8B842A,X                      ; $8B8420 |
  PLX                                       ; $8B8424 |
  STA.B $00                                 ; $8B8425 |
  JMP.W ($0000)                             ; $8B8427 |

PTR16_8B842A:
  dw DATA8_0E846E                           ; $8B842A |
  dw DATA8_0E8438                           ; $8B842C |
  dw DATA8_0E8438                           ; $8B842E |
  dw DATA8_0E8438                           ; $8B8430 |
  dw DATA8_0E8438                           ; $8B8432 |
  dw DATA8_0E8438                           ; $8B8434 |
  dw DATA8_0E8438                           ; $8B8436 |

CODE_8B8438:
  LDA.W #$C5F4                              ; $8B8438 |
  JSL.L CODE_FL_8B8208                      ; $8B843B |
  LDY.W #$0100                              ; $8B843F |
  LDA.B $04,X                               ; $8B8442 |
  BIT.W #$2020                              ; $8B8444 |
  BNE CODE_8B844F                           ; $8B8447 |
  TYA                                       ; $8B8449 |
  EOR.W #$FFFF                              ; $8B844A |
  INC A                                     ; $8B844D |
  TAY                                       ; $8B844E |

CODE_8B844F:
  STY.B $26,X                               ; $8B844F |
  LDA.W #$FD00                              ; $8B8451 |
  STA.B $28,X                               ; $8B8454 |
  LDA.W #$0002                              ; $8B8456 |
  STA.B $1A,X                               ; $8B8459 |
  JMP.W CODE_FL_8B88C7                      ; $8B845B |

CODE_8B845E:
  JSL.L CODE_FL_8CFC16                      ; $8B845E |
  BNE CODE_8B846D                           ; $8B8462 |
  JSL.L CODE_FL_8B8289                      ; $8B8464 |
  LDA.W #$0004                              ; $8B8468 |
  STA.B $1A,X                               ; $8B846B |

CODE_8B846D:
  RTL                                       ; $8B846D |

CODE_8B846E:
  LDA.W #$C5F4                              ; $8B846E |
  JSL.L CODE_FL_8B8208                      ; $8B8471 |
  STZ.B $20,X                               ; $8B8475 |
  LDA.B $40,X                               ; $8B8477 |
  BNE CODE_8B847E                           ; $8B8479 |
  LDA.W #$0004                              ; $8B847B |

CODE_8B847E:
  STA.B $1A,X                               ; $8B847E |
  JMP.W CODE_FL_8B88C7                      ; $8B8480 |

CODE_8B8483:
  STZ.B $26,X                               ; $8B8483 |
  STZ.B $28,X                               ; $8B8485 |
  LDY.B $3A,X                               ; $8B8487 |
  LDA.W LOOSE_OP_00C5CF,Y                   ; $8B8489 |
  STA.B $00,X                               ; $8B848C |
  STZ.B $20,X                               ; $8B848E |
  LDA.W #$0005                              ; $8B8490 |
  STA.B $1A,X                               ; $8B8493 |

CODE_8B8495:
  JSL.L CODE_FL_8CFC16                      ; $8B8495 |
  LDA.L $7E7C04                             ; $8B8499 |
  STA.B $3E,X                               ; $8B849D |
  JSR.W CODE_FN_8B8BD5                      ; $8B849F |
  BNE CODE_8B84A5                           ; $8B84A2 |
  RTL                                       ; $8B84A4 |

CODE_8B84A5:
  AND.W #$000F                              ; $8B84A5 |
  PHX                                       ; $8B84A8 |
  ASL A                                     ; $8B84A9 |
  TAX                                       ; $8B84AA |
  LDA.L PTR16_8B84B5,X                      ; $8B84AB |
  PLX                                       ; $8B84AF |
  STA.B $00                                 ; $8B84B0 |
  JMP.W ($0000)                             ; $8B84B2 |

PTR16_8B84B5:
  dw CODE_8B84D5                            ; $8B84B5 |
  dw CODE_8B84E9                            ; $8B84B7 |
  dw CODE_8B8550                            ; $8B84B9 |
  dw CODE_8B84FE                            ; $8B84BB |
  dw CODE_8B8526                            ; $8B84BD |
  dw CODE_8B8578                            ; $8B84BF |
  dw CODE_8B8587                            ; $8B84C1 |
  dw CODE_8B85C4                            ; $8B84C3 |
  dw CODE_8B8695                            ; $8B84C5 |
  dw CODE_8B861C                            ; $8B84C7 |
  dw CODE_8B85F8                            ; $8B84C9 |
  dw CODE_8B8634                            ; $8B84CB |
  dw CODE_8B8646                            ; $8B84CD |
  dw CODE_8B867D                            ; $8B84CF |
  dw CODE_8B84D5                            ; $8B84D1 |
  dw CODE_8B86A7                            ; $8B84D3 |

CODE_8B84D5:
  LDA.W #$0001                              ; $8B84D5 |
  STA.B $2C,X                               ; $8B84D8 |
  LDA.W #$000B                              ; $8B84DA |
  STA.B $1A,X                               ; $8B84DD |

CODE_8B84DF:
  JSL.L CODE_FL_86C70D                      ; $8B84DF |
  LDA.W #$0004                              ; $8B84E3 |
  STA.B $1A,X                               ; $8B84E6 |
  RTL                                       ; $8B84E8 |

CODE_8B84E9:
  LDY.B $3A,X                               ; $8B84E9 |
  LDA.W CODE_00C5E7,Y                       ; $8B84EB |
  CLC                                       ; $8B84EE |
  ADC.W #$0003                              ; $8B84EF |
  JSL.L CODE_FL_86CAEE                      ; $8B84F2 |
  LDA.W #$000D                              ; $8B84F6 |
  STA.B $1A,X                               ; $8B84F9 |

CODE_8B84FB:
  JMP.W CODE_FL_8B8BE8                      ; $8B84FB |

CODE_8B84FE:
  LDA.W #$FB00                              ; $8B84FE |
  STA.B $28,X                               ; $8B8501 |
  LDY.B $3A,X                               ; $8B8503 |
  LDA.W CODE_00C5E7,Y                       ; $8B8505 |
  JSL.L CODE_FL_86CAEE                      ; $8B8508 |
  LDA.W #$0007                              ; $8B850C |
  STA.B $1A,X                               ; $8B850F |

CODE_8B8511:
  JSL.L CODE_FL_8CFC16                      ; $8B8511 |
  BNE CODE_8B8525                           ; $8B8515 |
  JSL.L CODE_FL_8B8289                      ; $8B8517 |
  TDC                                       ; $8B851B |
  STA.L $7E7C04                             ; $8B851C |
  LDA.W #$0004                              ; $8B8520 |
  STA.B $1A,X                               ; $8B8523 |

CODE_8B8525:
  RTL                                       ; $8B8525 |

CODE_8B8526:
  LDY.B $3A,X                               ; $8B8526 |
  LDA.W CODE_00C5E7,Y                       ; $8B8528 |
  CLC                                       ; $8B852B |
  ADC.W #$0002                              ; $8B852C |
  JSL.L CODE_FL_86CAEE                      ; $8B852F |
  LDA.W #$0009                              ; $8B8533 |
  STA.B $1A,X                               ; $8B8536 |

CODE_8B8538:
  JSL.L CODE_FL_8CFC16                      ; $8B8538 |
  BNE CODE_8B854F                           ; $8B853C |
  JSL.L CODE_FL_8B8289                      ; $8B853E |
  JSL.L CODE_FL_8B8BE8                      ; $8B8542 |
  BEQ CODE_8B854F                           ; $8B8546 |
  LDA.W #$FE00                              ; $8B8548 |
  STA.B $28,X                               ; $8B854B |
  STZ.B $26,X                               ; $8B854D |

CODE_8B854F:
  RTL                                       ; $8B854F |

CODE_8B8550:
  LDY.B $3A,X                               ; $8B8550 |
  LDA.W CODE_00C5E7,Y                       ; $8B8552 |
  INC A                                     ; $8B8555 |
  JSL.L CODE_FL_86CAEE                      ; $8B8556 |
  LDA.W #$FD00                              ; $8B855A |
  STA.B $28,X                               ; $8B855D |
  STZ.B $26,X                               ; $8B855F |
  LDA.W #$000F                              ; $8B8561 |
  STA.B $1A,X                               ; $8B8564 |

CODE_8B8566:
  JSL.L CODE_FL_8CFC16                      ; $8B8566 |
  BNE CODE_8B8577                           ; $8B856A |
  JSL.L CODE_FL_8B8BFB                      ; $8B856C |
  BEQ CODE_8B8577                           ; $8B8570 |
  LDA.W #$FF00                              ; $8B8572 |
  STA.B $28,X                               ; $8B8575 |

CODE_8B8577:
  RTL                                       ; $8B8577 |

CODE_8B8578:
  LDA.W #$3044                              ; $8B8578 |
  JSL.L CODE_FL_86CAEE                      ; $8B857B |
  LDA.W #$0011                              ; $8B857F |
  STA.B $1A,X                               ; $8B8582 |

CODE_8B8584:
  JMP.W CODE_FL_8B8BE8                      ; $8B8584 |

CODE_8B8587:
  LDA.B $22,X                               ; $8B8587 |
  ORA.W #$0001                              ; $8B8589 |
  STA.B $22,X                               ; $8B858C |
  STZ.B $1E,X                               ; $8B858E |
  STZ.B $20,X                               ; $8B8590 |
  LDA.W #$0013                              ; $8B8592 |
  STA.B $1A,X                               ; $8B8595 |

CODE_8B8597:
  LDA.W #$0004                              ; $8B8597 |
  JSL.L CODE_FL_8B8C0E                      ; $8B859A |

CODE_JP_8B859E:
  LDY.W #$01A0                              ; $8B859E |
  LDA.B $04,X                               ; $8B85A1 |
  BIT.W #$2020                              ; $8B85A3 |
  BEQ CODE_8B85AB                           ; $8B85A6 |
  LDY.W #$FE60                              ; $8B85A8 |

CODE_8B85AB:
  STY.B $26,X                               ; $8B85AB |
  RTL                                       ; $8B85AD |

CODE_8B85AE:
  STZ.B $26,X                               ; $8B85AE |
  LDA.B $22,X                               ; $8B85B0 |
  AND.W #$FFFE                              ; $8B85B2 |
  STA.B $22,X                               ; $8B85B5 |
  LDA.W #$C5F4                              ; $8B85B7 |
  JSL.L CODE_FL_8B8208                      ; $8B85BA |
  LDA.W #$0004                              ; $8B85BE |
  STA.B $1A,X                               ; $8B85C1 |
  RTL                                       ; $8B85C3 |

CODE_8B85C4:
  LDA.W #$C69C                              ; $8B85C4 |
  JSL.L CODE_FL_8B8208                      ; $8B85C7 |
  LDA.W #$0016                              ; $8B85CB |
  STA.B $1A,X                               ; $8B85CE |
  TDC                                       ; $8B85D0 |
  STA.L $7E7C04                             ; $8B85D1 |
  RTL                                       ; $8B85D5 |

CODE_8B85D6:
  LDA.L $7E7C04                             ; $8B85D6 |
  LSR A                                     ; $8B85DA |
  LSR A                                     ; $8B85DB |
  LSR A                                     ; $8B85DC |
  LSR A                                     ; $8B85DD |
  AND.W #$000F                              ; $8B85DE |
  LDY.B $3A,X                               ; $8B85E1 |
  AND.W LOOSE_OP_00C5BF,Y                   ; $8B85E3 |
  BEQ CODE_8B85EA                           ; $8B85E6 |
  INC.B $1A,X                               ; $8B85E8 |

CODE_8B85EA:
  RTL                                       ; $8B85EA |

CODE_8B85EB:
  LDA.W #$C5F4                              ; $8B85EB |
  JSL.L CODE_FL_8B8208                      ; $8B85EE |
  LDA.W #$0004                              ; $8B85F2 |
  STA.B $1A,X                               ; $8B85F5 |
  RTL                                       ; $8B85F7 |

CODE_8B85F8:
  LDA.W #$C624                              ; $8B85F8 |
  JSL.L CODE_FL_8B8208                      ; $8B85FB |
  LDA.W #$0019                              ; $8B85FF |
  STA.B $1A,X                               ; $8B8602 |

CODE_8B8604:
  RTL                                       ; $8B8604 |

CODE_8B8605:
  LDA.B $22,X                               ; $8B8605 |
  ORA.W #$0001                              ; $8B8607 |
  STA.B $22,X                               ; $8B860A |
  STZ.B $1E,X                               ; $8B860C |
  STZ.B $20,X                               ; $8B860E |
  INC.B $1A,X                               ; $8B8610 |

CODE_8B8612:
  LDA.W #$0004                              ; $8B8612 |
  JSL.L CODE_FL_8B8C3D                      ; $8B8615 |
  JMP.W CODE_JP_8B859E                      ; $8B8619 |

CODE_8B861C:
  LDA.W #$C6A8                              ; $8B861C |
  JSL.L CODE_FL_8B8208                      ; $8B861F |
  LDA.B $3A,X                               ; $8B8623 |
  LSR A                                     ; $8B8625 |
  CLC                                       ; $8B8626 |
  ADC.W #$3051                              ; $8B8627 |
  JSL.L CODE_FL_86CAEE                      ; $8B862A |
  LDA.W #$001E                              ; $8B862E |
  STA.B $1A,X                               ; $8B8631 |

CODE_8B8633:
  RTL                                       ; $8B8633 |

CODE_8B8634:
  LDA.W #$C6B4                              ; $8B8634 |
  JSL.L CODE_FL_8B8208                      ; $8B8637 |
  LDA.W #$0020                              ; $8B863B |
  STA.B $1A,X                               ; $8B863E |
  TDC                                       ; $8B8640 |
  STA.L $7E7C04                             ; $8B8641 |
  RTL                                       ; $8B8645 |

CODE_8B8646:
  LDY.B $3A,X                               ; $8B8646 |
  LDA.W CODE_00C5E7,Y                       ; $8B8648 |
  CLC                                       ; $8B864B |
  ADC.W #$0002                              ; $8B864C |
  JSL.L CODE_FL_86CAEE                      ; $8B864F |
  LDA.W #$0006                              ; $8B8653 |
  STA.B $44,X                               ; $8B8656 |
  LDA.W #$0023                              ; $8B8658 |
  STA.B $1A,X                               ; $8B865B |

CODE_8B865D:
  LDA.B $44,X                               ; $8B865D |
  DEC.B $44,X                               ; $8B865F |
  BMI CODE_8B869C                           ; $8B8661 |
  ASL A                                     ; $8B8663 |
  TAY                                       ; $8B8664 |
  LDA.W LOOSE_OP_00C549,Y                   ; $8B8665 |
  TAY                                       ; $8B8668 |
  LDA.B $04,X                               ; $8B8669 |
  BIT.W #$0020                              ; $8B866B |
  BEQ CODE_8B8676                           ; $8B866E |
  TYA                                       ; $8B8670 |
  EOR.W #$FFFF                              ; $8B8671 |
  INC A                                     ; $8B8674 |
  TAY                                       ; $8B8675 |

CODE_8B8676:
  TYA                                       ; $8B8676 |
  CLC                                       ; $8B8677 |
  ADC.B $09,X                               ; $8B8678 |
  STA.B $09,X                               ; $8B867A |
  RTL                                       ; $8B867C |

CODE_8B867D:
  LDY.B $3A,X                               ; $8B867D |
  LDA.W CODE_00C5DF,Y                       ; $8B867F |
  STA.B $00,X                               ; $8B8682 |
  LDA.W #$FD00                              ; $8B8684 |
  STA.B $28,X                               ; $8B8687 |
  LDA.W #$0025                              ; $8B8689 |
  STA.B $1A,X                               ; $8B868C |

CODE_8B868E:
  JSL.L CODE_FL_8CFC16                      ; $8B868E |
  BEQ CODE_8B869C                           ; $8B8692 |
  RTL                                       ; $8B8694 |

CODE_8B8695:
  LDA.B $04,X                               ; $8B8695 |
  EOR.W #$2020                              ; $8B8697 |
  STA.B $04,X                               ; $8B869A |

CODE_8B869C:
  TDC                                       ; $8B869C |
  STA.L $7E7C04                             ; $8B869D |
  LDA.W #$0004                              ; $8B86A1 |
  STA.B $1A,X                               ; $8B86A4 |
  RTL                                       ; $8B86A6 |

CODE_8B86A7:
  JML.L CODE_FL_86CA2D                      ; $8B86A7 |

  LDA.W #$0027                              ; $8B86AB |
  STA.B $1A                                 ; $8B86AE |
  LDA.W #$0005                              ; $8B86B0 |
  STA.B $1C                                 ; $8B86B3 |
  LDA.W #$0004                              ; $8B86B5 |
  BRA CODE_8B86E2                           ; $8B86B8 |

CODE_FL_8B86BA:
  STZ.B $1A                                 ; $8B86BA |
  LDA.W #$0001                              ; $8B86BC |
  STA.B $1C                                 ; $8B86BF |
  LDA.W #$0003                              ; $8B86C1 |
  BRA CODE_8B86E2                           ; $8B86C4 |

CODE_JL_8B86C6:
  STZ.B $1A                                 ; $8B86C6 |
  LDA.W #$0001                              ; $8B86C8 |
  STA.B $1C                                 ; $8B86CB |
  LDA.W #$0004                              ; $8B86CD |
  BRA CODE_8B86E2                           ; $8B86D0 |

CODE_FL_8B86D2:
  LDA.W #$1090                              ; $8B86D2 |
  STA.W $0404                               ; $8B86D5 |
  STZ.B $1A                                 ; $8B86D8 |
  LDA.W #$0006                              ; $8B86DA |
  STA.B $1C                                 ; $8B86DD |
  LDA.W #$0004                              ; $8B86DF |

CODE_8B86E2:
  STA.B $1E                                 ; $8B86E2 |
  LDY.W #$0620                              ; $8B86E4 |
  LDA.W $0018,Y                             ; $8B86E7 |
  CMP.W #$01C5                              ; $8B86EA |
  BEQ CODE_8B86F4                           ; $8B86ED |
  LDA.W #$0000                              ; $8B86EF |
  BRA CODE_8B872A                           ; $8B86F2 |

CODE_8B86F4:
  DEC.B $1E                                 ; $8B86F4 |
  LDY.W #$0670                              ; $8B86F6 |
  LDA.W $0018,Y                             ; $8B86F9 |
  CMP.W #$01C5                              ; $8B86FC |
  BEQ CODE_8B8706                           ; $8B86FF |
  LDA.W #$0002                              ; $8B8701 |
  BRA CODE_8B872A                           ; $8B8704 |

CODE_8B8706:
  DEC.B $1E                                 ; $8B8706 |
  LDY.W #$08F0                              ; $8B8708 |
  LDA.W $0018,Y                             ; $8B870B |
  CMP.W #$01C5                              ; $8B870E |
  BEQ CODE_8B8718                           ; $8B8711 |
  LDA.W #$0004                              ; $8B8713 |
  BRA CODE_8B872A                           ; $8B8716 |

CODE_8B8718:
  DEC.B $1E                                 ; $8B8718 |
  BEQ CODE_8B8748                           ; $8B871A |
  LDY.W #$0940                              ; $8B871C |
  LDA.W $0018,Y                             ; $8B871F |
  CMP.W #$01C5                              ; $8B8722 |
  BEQ CODE_8B8748                           ; $8B8725 |
  LDA.W #$0006                              ; $8B8727 |

CODE_8B872A:
  PHA                                       ; $8B872A |
  LDA.W #$01C5                              ; $8B872B |
  JSL.L CODE_FL_86C9E0                      ; $8B872E |
  PLA                                       ; $8B8732 |
  STA.W $003A,Y                             ; $8B8733 |
  LDA.B $1C                                 ; $8B8736 |
  STA.W $003C,Y                             ; $8B8738 |
  LDA.B $1A                                 ; $8B873B |
  STA.W $0040,Y                             ; $8B873D |
  LDA.W #$0400                              ; $8B8740 |
  STA.W $004E,Y                             ; $8B8743 |
  SEC                                       ; $8B8746 |
  RTL                                       ; $8B8747 |

CODE_8B8748:
  CLC                                       ; $8B8748 |
  RTL                                       ; $8B8749 |

CODE_FL_8B874A:
  LDY.W #$0620                              ; $8B874A |
  LDA.W $0018,Y                             ; $8B874D |
  CMP.W #$01C5                              ; $8B8750 |
  BEQ CODE_8B8770                           ; $8B8753 |
  LDA.W #$01C5                              ; $8B8755 |
  JSL.L CODE_FL_86C9E0                      ; $8B8758 |
  LDA.W #$0000                              ; $8B875C |
  STA.W $003A,Y                             ; $8B875F |
  LDA.W #$0002                              ; $8B8762 |
  STA.W $003C,Y                             ; $8B8765 |
  LDA.W #$0400                              ; $8B8768 |
  STA.W $004E,Y                             ; $8B876B |
  BRA CODE_8B8794                           ; $8B876E |

CODE_8B8770:
  LDY.W #$0670                              ; $8B8770 |
  LDA.W $0018,Y                             ; $8B8773 |
  CMP.W #$01C5                              ; $8B8776 |
  BEQ CODE_8B8796                           ; $8B8779 |
  LDA.W #$01C5                              ; $8B877B |
  JSL.L CODE_FL_86C9E0                      ; $8B877E |
  LDA.W #$0002                              ; $8B8782 |
  STA.W $003A,Y                             ; $8B8785 |
  LDA.W #$0002                              ; $8B8788 |
  STA.W $003C,Y                             ; $8B878B |
  LDA.W #$0400                              ; $8B878E |
  STA.W $004E,Y                             ; $8B8791 |

CODE_8B8794:
  SEC                                       ; $8B8794 |
  RTL                                       ; $8B8795 |

CODE_8B8796:
  CLC                                       ; $8B8796 |
  RTL                                       ; $8B8797 |

CODE_8B8798:
  JSL.L CODE_FL_8CFD8F                      ; $8B8798 |
  LDA.B $1A,X                               ; $8B879C |
  PHX                                       ; $8B879E |
  ASL A                                     ; $8B879F |
  TAX                                       ; $8B87A0 |
  LDA.L PTR16_8B87AB,X                      ; $8B87A1 |
  PLX                                       ; $8B87A5 |
  STA.B $00                                 ; $8B87A6 |
  JMP.W ($0000)                             ; $8B87A8 |

PTR16_8B87AB:
  dw CODE_8B8805                            ; $8B87AB |
  dw CODE_8B889A                            ; $8B87AD |
  dw CODE_8B88E0                            ; $8B87AF |
  dw CODE_8B88F4                            ; $8B87B1 |
  dw CODE_8B88F8                            ; $8B87B3 |
  dw CODE_8B8909                            ; $8B87B5 |
  dw CODE_8B88E0                            ; $8B87B7 |
  dw CODE_8B8937                            ; $8B87B9 |
  dw CODE_8B88E0                            ; $8B87BB |
  dw CODE_8B8965                            ; $8B87BD |
  dw CODE_8B8976                            ; $8B87BF |
  dw CODE_8B89B6                            ; $8B87C1 |
  dw CODE_8B89C0                            ; $8B87C3 |
  dw CODE_8B89CA                            ; $8B87C5 |
  dw CODE_8B89DC                            ; $8B87C7 |
  dw CODE_8B89DF                            ; $8B87C9 |
  dw CODE_8B89F1                            ; $8B87CB |
  dw CODE_JP_8B8A07                         ; $8B87CD |
  dw CODE_8B8A1A                            ; $8B87CF |
  dw CODE_8B8A46                            ; $8B87D1 |
  dw CODE_8B8A5A                            ; $8B87D3 |
  dw CODE_8B8A6C                            ; $8B87D5 |
  dw CODE_8B8A78                            ; $8B87D7 |
  dw CODE_8B8A7B                            ; $8B87D9 |
  dw CODE_8B8A8B                            ; $8B87DB |
  dw CODE_8B8AAE                            ; $8B87DD |
  dw CODE_JP_8B8AC2                         ; $8B87DF |
  dw CODE_8B8ADB                            ; $8B87E1 |
  dw CODE_8B8AF3                            ; $8B87E3 |
  dw CODE_8B8B0C                            ; $8B87E5 |
  dw CODE_8B8B25                            ; $8B87E7 |
  dw CODE_8B8B26                            ; $8B87E9 |
  dw CODE_8B8B2F                            ; $8B87EB |
  dw CODE_8B8B3F                            ; $8B87ED |
  dw CODE_8B8B44                            ; $8B87EF |
  dw CODE_8B8B6B                            ; $8B87F1 |
  dw CODE_8B8B77                            ; $8B87F3 |
  dw CODE_8B8B83                            ; $8B87F5 |
  dw CODE_8B8B90                            ; $8B87F7 |
  dw CODE_8B8B77                            ; $8B87F9 |
  dw CODE_8B8B83                            ; $8B87FB |
  dw CODE_8B8B9D                            ; $8B87FD |
  dw CODE_8B8BB6                            ; $8B87FF |
  dw CODE_8B8BBF                            ; $8B8801 |
  dw CODE_8B8BD1                            ; $8B8803 |

CODE_8B8805:
  JSL.L CODE_FL_8B8030                      ; $8B8805 |
  JSL.L CODE_FL_838528                      ; $8B8809 |
  TDC                                       ; $8B880D |
  STA.L $7E7C04                             ; $8B880E |
  LDY.B $3A,X                               ; $8B8812 |
  LDA.W LOOSE_OP_00C531,Y                   ; $8B8814 |
  STA.B $06,X                               ; $8B8817 |
  LDY.B $4E,X                               ; $8B8819 |
  BEQ CODE_8B882C                           ; $8B881B |
  JSL.L CODE_FL_8CFC44                      ; $8B881D |
  SEP #$20                                  ; $8B8821 |
  LDA.W $0004,Y                             ; $8B8823 |
  STA.B $04,X                               ; $8B8826 |
  STA.B $05,X                               ; $8B8828 |
  REP #$20                                  ; $8B882A |

CODE_8B882C:
  LDA.W #$0040                              ; $8B882C |
  STA.B $4C,X                               ; $8B882F |
  LDA.W #$8000                              ; $8B8831 |
  ORA.W #$0100                              ; $8B8834 |
  STA.B $22,X                               ; $8B8837 |
  JSL.L CODE_FL_8CFF15                      ; $8B8839 |
  JSL.L CODE_FL_8B8266                      ; $8B883D |
  LDA.B $3C,X                               ; $8B8841 |
  PHX                                       ; $8B8843 |
  ASL A                                     ; $8B8844 |
  TAX                                       ; $8B8845 |
  LDA.L PTR16_8B8850,X                      ; $8B8846 |
  PLX                                       ; $8B884A |
  STA.B $00                                 ; $8B884B |
  JMP.W ($0000)                             ; $8B884D |

PTR16_8B8850:
  dw CODE_8B88F4                            ; $8B8850 |
  dw CODE_8B889A                            ; $8B8852 |
  dw CODE_8B8909                            ; $8B8854 |
  dw CODE_8B895D                            ; $8B8856 |
  dw CODE_8B8937                            ; $8B8858 |
  dw CODE_8B8884                            ; $8B885A |
  dw CODE_8B8860                            ; $8B885C |
  dw CODE_8B88F8                            ; $8B885E |

CODE_8B8860:
  LDA.W #$C5F4                              ; $8B8860 |
  JSL.L CODE_FL_8B8208                      ; $8B8863 |
  LDA.B $3A,X                               ; $8B8867 |
  CMP.W #$0004                              ; $8B8869 |
  BPL CODE_8B8875                           ; $8B886C |
  LDA.B $04,X                               ; $8B886E |
  EOR.W #$2020                              ; $8B8870 |
  STA.B $04,X                               ; $8B8873 |

CODE_8B8875:
  LDA.B $3A,X                               ; $8B8875 |
  ASL A                                     ; $8B8877 |
  TAY                                       ; $8B8878 |
  LDA.W LOOSE_OP_00C561,Y                   ; $8B8879 |
  STA.B $28,X                               ; $8B887C |
  LDA.W CODE_00C55F,Y                       ; $8B887E |
  TAY                                       ; $8B8881 |
  BRA CODE_8B88BB                           ; $8B8882 |

CODE_8B8884:
  LDA.W #$C6B4                              ; $8B8884 |
  JSL.L CODE_FL_8B8208                      ; $8B8887 |
  LDA.B $3A,X                               ; $8B888B |
  ASL A                                     ; $8B888D |
  TAY                                       ; $8B888E |
  LDA.W LOOSE_OP_00C561,Y                   ; $8B888F |
  STA.B $28,X                               ; $8B8892 |
  LDA.W CODE_00C55F,Y                       ; $8B8894 |
  TAY                                       ; $8B8897 |
  BRA CODE_8B88BB                           ; $8B8898 |

CODE_8B889A:
  LDA.W #$C5F4                              ; $8B889A |
  JSL.L CODE_FL_8B8208                      ; $8B889D |
  LDA.B $3A,X                               ; $8B88A1 |
  ASL A                                     ; $8B88A3 |
  TAY                                       ; $8B88A4 |
  LDA.W LOOSE_OP_00C561,Y                   ; $8B88A5 |
  STA.B $28,X                               ; $8B88A8 |
  LDA.W CODE_00C55F,Y                       ; $8B88AA |
  TAY                                       ; $8B88AD |
  LDA.B $04,X                               ; $8B88AE |
  BIT.W #$2020                              ; $8B88B0 |
  BEQ CODE_8B88BB                           ; $8B88B3 |
  TYA                                       ; $8B88B5 |
  EOR.W #$FFFF                              ; $8B88B6 |
  INC A                                     ; $8B88B9 |
  TAY                                       ; $8B88BA |

CODE_8B88BB:
  STY.B $26,X                               ; $8B88BB |
  LDA.W #$0300                              ; $8B88BD |
  STA.B $2A,X                               ; $8B88C0 |
  LDA.W #$0002                              ; $8B88C2 |
  STA.B $1A,X                               ; $8B88C5 |

CODE_FL_8B88C7:
  PHX                                       ; $8B88C7 |
  LDA.B $3A,X                               ; $8B88C8 |
  ASL A                                     ; $8B88CA |
  ASL A                                     ; $8B88CB |
  TAY                                       ; $8B88CC |
  LDA.W CODE_00C56F,Y                       ; $8B88CD |
  STA.B $02,X                               ; $8B88D0 |
  LDA.W LOOSE_OP_00C571,Y                   ; $8B88D2 |
  TAX                                       ; $8B88D5 |
  LDA.W LOOSE_OP_00C573,Y                   ; $8B88D6 |
  TXY                                       ; $8B88D9 |
  JSL.L CODE_FL_80C2BA                      ; $8B88DA |
  PLX                                       ; $8B88DE |
  RTL                                       ; $8B88DF |

CODE_8B88E0:
  JSL.L CODE_FL_8CFCF0                      ; $8B88E0 |
  BNE CODE_8B88F3                           ; $8B88E4 |
  JSL.L CODE_FL_8B8289                      ; $8B88E6 |
  LDA.B $40,X                               ; $8B88EA |
  BNE CODE_8B88F1                           ; $8B88EC |
  LDA.W #$0009                              ; $8B88EE |

CODE_8B88F1:
  STA.B $1A,X                               ; $8B88F1 |

CODE_8B88F3:
  RTL                                       ; $8B88F3 |

CODE_8B88F4:
  JSL.L CODE_FL_8B88C7                      ; $8B88F4 |

CODE_8B88F8:
  LDA.W #$C5F4                              ; $8B88F8 |
  JSL.L CODE_FL_8B8208                      ; $8B88FB |
  LDA.B $40,X                               ; $8B88FF |
  BNE CODE_8B8906                           ; $8B8901 |
  LDA.W #$0009                              ; $8B8903 |

CODE_8B8906:
  STA.B $1A,X                               ; $8B8906 |
  RTL                                       ; $8B8908 |

CODE_8B8909:
  LDA.W #$C5F4                              ; $8B8909 |
  JSL.L CODE_FL_8B8208                      ; $8B890C |
  LDY.W #$FF00                              ; $8B8910 |
  TDC                                       ; $8B8913 |
  CPX.W #$0620                              ; $8B8914 |
  BEQ CODE_8B8924                           ; $8B8917 |
  CPX.W #$08F0                              ; $8B8919 |
  BEQ CODE_8B8924                           ; $8B891C |
  LDY.W #$0100                              ; $8B891E |
  LDA.W #$2020                              ; $8B8921 |

CODE_8B8924:
  STY.B $26,X                               ; $8B8924 |
  ORA.B $04,X                               ; $8B8926 |
  STA.B $04,X                               ; $8B8928 |
  LDA.W #$0300                              ; $8B892A |
  STA.B $2A,X                               ; $8B892D |
  LDA.W #$0008                              ; $8B892F |
  STA.B $1A,X                               ; $8B8932 |
  JMP.W CODE_FL_8B88C7                      ; $8B8934 |

CODE_8B8937:
  LDA.W #$C5F4                              ; $8B8937 |
  JSL.L CODE_FL_8B8208                      ; $8B893A |
  LDY.W #$FF00                              ; $8B893E |
  CPX.W #$0620                              ; $8B8941 |
  BEQ CODE_8B894E                           ; $8B8944 |
  CPX.W #$08F0                              ; $8B8946 |
  BEQ CODE_8B894E                           ; $8B8949 |
  LDY.W #$0100                              ; $8B894B |

CODE_8B894E:
  STY.B $28,X                               ; $8B894E |
  LDA.W #$0300                              ; $8B8950 |
  STA.B $2A,X                               ; $8B8953 |
  LDA.W #$0006                              ; $8B8955 |
  STA.B $1A,X                               ; $8B8958 |
  JMP.W CODE_FL_8B88C7                      ; $8B895A |

CODE_8B895D:
  LDA.W #$001D                              ; $8B895D |
  STA.B $1A,X                               ; $8B8960 |
  JMP.W CODE_FL_8B88C7                      ; $8B8962 |

CODE_8B8965:
  STZ.B $26,X                               ; $8B8965 |
  STZ.B $28,X                               ; $8B8967 |
  STZ.B $2A,X                               ; $8B8969 |
  LDY.B $3A,X                               ; $8B896B |
  LDA.W LOOSE_OP_00C5CF,Y                   ; $8B896D |
  STA.B $00,X                               ; $8B8970 |
  STZ.B $20,X                               ; $8B8972 |
  INC.B $1A,X                               ; $8B8974 |

CODE_8B8976:
  JSL.L CODE_FL_8CFCF0                      ; $8B8976 |
  LDA.L $7E7C04                             ; $8B897A |
  STA.B $3E,X                               ; $8B897E |
  JSR.W CODE_FN_8B8BD5                      ; $8B8980 |
  BNE CODE_8B8986                           ; $8B8983 |
  RTL                                       ; $8B8985 |

CODE_8B8986:
  AND.W #$000F                              ; $8B8986 |
  PHX                                       ; $8B8989 |
  ASL A                                     ; $8B898A |
  TAX                                       ; $8B898B |
  LDA.L PTR16_8B8996,X                      ; $8B898C |
  PLX                                       ; $8B8990 |
  STA.B $00                                 ; $8B8991 |
  JMP.W ($0000)                             ; $8B8993 |

PTR16_8B8996:
  dw CODE_8B89B6                            ; $8B8996 |
  dw CODE_8B89CA                            ; $8B8998 |
  dw CODE_8B8A46                            ; $8B899A |
  dw CODE_JP_8B8A07                         ; $8B899C |
  dw CODE_8B89DF                            ; $8B899E |
  dw CODE_8B8A6C                            ; $8B89A0 |
  dw CODE_8B8A7B                            ; $8B89A2 |
  dw CODE_8B8A7B                            ; $8B89A4 |
  dw CODE_JP_8B8AC2                         ; $8B89A6 |
  dw CODE_8B8B3F                            ; $8B89A8 |
  dw CODE_8B8BBF                            ; $8B89AA |
  dw CODE_8B8B6B                            ; $8B89AC |
  dw CODE_8B8B90                            ; $8B89AE |
  dw CODE_8B8B9D                            ; $8B89B0 |
  dw CODE_8B8A7B                            ; $8B89B2 |
  dw CODE_8B8BD1                            ; $8B89B4 |

CODE_8B89B6:
  LDA.W #$0001                              ; $8B89B6 |
  STA.B $2C,X                               ; $8B89B9 |
  LDA.W #$000C                              ; $8B89BB |
  STA.B $1A,X                               ; $8B89BE |

CODE_8B89C0:
  JSL.L CODE_FL_86C70D                      ; $8B89C0 |
  LDA.W #$0009                              ; $8B89C4 |
  STA.B $1A,X                               ; $8B89C7 |
  RTL                                       ; $8B89C9 |

CODE_8B89CA:
  LDY.B $3A,X                               ; $8B89CA |
  LDA.W CODE_00C5E7,Y                       ; $8B89CC |
  CLC                                       ; $8B89CF |
  ADC.W #$0003                              ; $8B89D0 |
  JSL.L CODE_FL_86CAEE                      ; $8B89D3 |
  LDA.W #$000E                              ; $8B89D7 |
  STA.B $1A,X                               ; $8B89DA |

CODE_8B89DC:
  JMP.W CODE_FL_8B8BFB                      ; $8B89DC |

CODE_8B89DF:
  LDY.B $3A,X                               ; $8B89DF |
  LDA.W CODE_00C5E7,Y                       ; $8B89E1 |
  CLC                                       ; $8B89E4 |
  ADC.W #$0002                              ; $8B89E5 |
  JSL.L CODE_FL_86CAEE                      ; $8B89E8 |
  LDA.W #$0010                              ; $8B89EC |
  STA.B $1A,X                               ; $8B89EF |

CODE_8B89F1:
  JSL.L CODE_FL_8CFCF0                      ; $8B89F1 |
  BNE CODE_8B8A06                           ; $8B89F5 |
  JSL.L CODE_FL_8B8289                      ; $8B89F7 |
  JSL.L CODE_FL_8B8BFB                      ; $8B89FB |
  BEQ CODE_8B8A06                           ; $8B89FF |
  LDA.W #$0200                              ; $8B8A01 |
  STA.B $2A,X                               ; $8B8A04 |

CODE_8B8A06:
  RTL                                       ; $8B8A06 |

CODE_JP_8B8A07:
  LDY.B $3A,X                               ; $8B8A07 |
  LDA.W CODE_00C5E7,Y                       ; $8B8A09 |
  JSL.L CODE_FL_86CAEE                      ; $8B8A0C |
  LDA.W #$0500                              ; $8B8A10 |
  STA.B $2A,X                               ; $8B8A13 |
  LDA.W #$0012                              ; $8B8A15 |
  STA.B $1A,X                               ; $8B8A18 |

CODE_8B8A1A:
  JSL.L CODE_FL_8CFD78                      ; $8B8A1A |
  LDA.B $11,X                               ; $8B8A1E |
  BPL CODE_8B8A3A                           ; $8B8A20 |
  JSL.L CODE_FL_8B8289                      ; $8B8A22 |
  STZ.B $11,X                               ; $8B8A26 |
  STZ.B $26,X                               ; $8B8A28 |
  STZ.B $28,X                               ; $8B8A2A |
  LDA.B $2A,X                               ; $8B8A2C |
  CLC                                       ; $8B8A2E |
  ADC.W #$0200                              ; $8B8A2F |
  BPL CODE_8B8A3B                           ; $8B8A32 |
  EOR.W #$FFFF                              ; $8B8A34 |
  INC A                                     ; $8B8A37 |
  STA.B $2A,X                               ; $8B8A38 |

CODE_8B8A3A:
  RTL                                       ; $8B8A3A |

CODE_8B8A3B:
  TDC                                       ; $8B8A3B |
  STA.L $7E7C04                             ; $8B8A3C |
  LDA.W #$0009                              ; $8B8A40 |
  STA.B $1A,X                               ; $8B8A43 |
  RTL                                       ; $8B8A45 |

CODE_8B8A46:
  LDY.B $3A,X                               ; $8B8A46 |
  LDA.W CODE_00C5E7,Y                       ; $8B8A48 |
  INC A                                     ; $8B8A4B |
  JSL.L CODE_FL_86CAEE                      ; $8B8A4C |
  LDA.W #$0300                              ; $8B8A50 |
  STA.B $2A,X                               ; $8B8A53 |
  LDA.W #$0014                              ; $8B8A55 |
  STA.B $1A,X                               ; $8B8A58 |

CODE_8B8A5A:
  JSL.L CODE_FL_8CFCF0                      ; $8B8A5A |
  BNE CODE_8B8A6B                           ; $8B8A5E |
  JSL.L CODE_FL_8B8BFB                      ; $8B8A60 |
  BEQ CODE_8B8A6B                           ; $8B8A64 |
  LDA.W #$0100                              ; $8B8A66 |
  STA.B $2A,X                               ; $8B8A69 |

CODE_8B8A6B:
  RTL                                       ; $8B8A6B |

CODE_8B8A6C:
  LDA.W #$3044                              ; $8B8A6C |
  JSL.L CODE_FL_86CAEE                      ; $8B8A6F |
  LDA.W #$0016                              ; $8B8A73 |
  STA.B $1A,X                               ; $8B8A76 |

CODE_8B8A78:
  JMP.W CODE_FL_8B8BFB                      ; $8B8A78 |

CODE_8B8A7B:
  LDA.B $22,X                               ; $8B8A7B |
  ORA.W #$0001                              ; $8B8A7D |
  STA.B $22,X                               ; $8B8A80 |
  STZ.B $1E,X                               ; $8B8A82 |
  STZ.B $20,X                               ; $8B8A84 |
  LDA.W #$0018                              ; $8B8A86 |
  STA.B $1A,X                               ; $8B8A89 |

CODE_8B8A8B:
  LDA.W #$0004                              ; $8B8A8B |
  JSL.L CODE_FL_8B8C0E                      ; $8B8A8E |
  LDY.W #$01A0                              ; $8B8A92 |
  LDA.B $04,X                               ; $8B8A95 |
  BIT.W #$2020                              ; $8B8A97 |
  BEQ CODE_8B8A9F                           ; $8B8A9A |
  LDY.W #$FE60                              ; $8B8A9C |

CODE_8B8A9F:
  STY.B $26,X                               ; $8B8A9F |
  LDA.L $7E7C04                             ; $8B8AA1 |
  CMP.B $3E,X                               ; $8B8AA5 |
  BEQ CODE_8B8AAD                           ; $8B8AA7 |
  STZ.B $26,X                               ; $8B8AA9 |
  INC.B $1A,X                               ; $8B8AAB |

CODE_8B8AAD:
  RTL                                       ; $8B8AAD |

CODE_8B8AAE:
  LDA.B $22,X                               ; $8B8AAE |
  AND.W #$FFFE                              ; $8B8AB0 |
  STA.B $22,X                               ; $8B8AB3 |
  LDA.W #$C5F4                              ; $8B8AB5 |
  JSL.L CODE_FL_8B8208                      ; $8B8AB8 |
  LDA.W #$0009                              ; $8B8ABC |
  STA.B $1A,X                               ; $8B8ABF |
  RTL                                       ; $8B8AC1 |

CODE_JP_8B8AC2:
  LDA.B $22,X                               ; $8B8AC2 |
  ORA.W #$0001                              ; $8B8AC4 |
  STA.B $22,X                               ; $8B8AC7 |
  STZ.B $1E,X                               ; $8B8AC9 |
  STZ.B $20,X                               ; $8B8ACB |
  LDA.B $2A,X                               ; $8B8ACD |
  BNE CODE_8B8AD6                           ; $8B8ACF |
  LDA.W #$0500                              ; $8B8AD1 |
  STA.B $2A,X                               ; $8B8AD4 |

CODE_8B8AD6:
  LDA.W #$001B                              ; $8B8AD6 |
  STA.B $1A,X                               ; $8B8AD9 |

CODE_8B8ADB:
  LDA.W #$0004                              ; $8B8ADB |
  JSL.L CODE_FL_8B8C5D                      ; $8B8ADE |
  JSL.L CODE_FL_8CFCF0                      ; $8B8AE2 |
  BNE CODE_8B8AF2                           ; $8B8AE6 |
  JSL.L CODE_FL_8B8289                      ; $8B8AE8 |
  STZ.B $26,X                               ; $8B8AEC |
  STZ.B $28,X                               ; $8B8AEE |
  INC.B $1A,X                               ; $8B8AF0 |

CODE_8B8AF2:
  RTL                                       ; $8B8AF2 |

CODE_8B8AF3:
  LDA.B $22,X                               ; $8B8AF3 |
  AND.W #$FFFE                              ; $8B8AF5 |
  STA.B $22,X                               ; $8B8AF8 |
  LDA.W #$C5F4                              ; $8B8AFA |
  JSL.L CODE_FL_8B8208                      ; $8B8AFD |
  TDC                                       ; $8B8B01 |
  STA.L $7E7C04                             ; $8B8B02 |
  LDA.W #$0009                              ; $8B8B06 |
  STA.B $1A,X                               ; $8B8B09 |
  RTL                                       ; $8B8B0B |

CODE_8B8B0C:
  LDA.W #$C6A8                              ; $8B8B0C |
  JSL.L CODE_FL_8B8208                      ; $8B8B0F |
  LDA.B $3A,X                               ; $8B8B13 |
  LSR A                                     ; $8B8B15 |
  CLC                                       ; $8B8B16 |
  ADC.W #$3051                              ; $8B8B17 |
  JSL.L CODE_FL_86CAEE                      ; $8B8B1A |
  STZ.B $14,X                               ; $8B8B1E |
  LDA.W #$001E                              ; $8B8B20 |
  STA.B $1A,X                               ; $8B8B23 |

CODE_8B8B25:
  RTL                                       ; $8B8B25 |

CODE_8B8B26:
  JSL.L CODE_FL_8CFF15                      ; $8B8B26 |
  STZ.B $20,X                               ; $8B8B2A |
  JMP.W CODE_JP_8B8AC2                      ; $8B8B2C |

CODE_8B8B2F:
  JSL.L CODE_FL_8CFF15                      ; $8B8B2F |
  STZ.B $20,X                               ; $8B8B33 |
  LDA.W #$C5F4                              ; $8B8B35 |
  JSL.L CODE_FL_8B8208                      ; $8B8B38 |
  JMP.W CODE_JP_8B8A07                      ; $8B8B3C |

CODE_8B8B3F:
  LDA.W #$0022                              ; $8B8B3F |
  STA.B $1A,X                               ; $8B8B42 |

CODE_8B8B44:
  LDA.W $0409                               ; $8B8B44 |
  JSL.L CODE_FL_8CF9EB                      ; $8B8B47 |
  STA.B $02                                 ; $8B8B4B |
  LDA.W $040D                               ; $8B8B4D |
  JSL.L CODE_FL_8CFA0A                      ; $8B8B50 |
  ORA.B $02                                 ; $8B8B54 |
  BNE CODE_8B8B6A                           ; $8B8B56 |
  LDA.B $3A,X                               ; $8B8B58 |
  INC A                                     ; $8B8B5A |
  INC A                                     ; $8B8B5B |
  LSR A                                     ; $8B8B5C |
  CMP.W $0418                               ; $8B8B5D |
  BNE CODE_8B8B66                           ; $8B8B60 |
  JSL.L CODE_FL_8B8067                      ; $8B8B62 |

CODE_8B8B66:
  JML.L CODE_FL_86CA2D                      ; $8B8B66 |

CODE_8B8B6A:
  RTL                                       ; $8B8B6A |

CODE_8B8B6B:
  LDA.W #$C69C                              ; $8B8B6B |
  JSL.L CODE_FL_8B8208                      ; $8B8B6E |
  LDA.W #$0024                              ; $8B8B72 |
  STA.B $1A,X                               ; $8B8B75 |

CODE_8B8B77:
  LDA.L $7E7C04                             ; $8B8B77 |
  JSR.W CODE_FN_8B8BD5                      ; $8B8B7B |
  BEQ CODE_8B8B82                           ; $8B8B7E |
  INC.B $1A,X                               ; $8B8B80 |

CODE_8B8B82:
  RTL                                       ; $8B8B82 |

CODE_8B8B83:
  LDA.W #$C5F4                              ; $8B8B83 |
  JSL.L CODE_FL_8B8208                      ; $8B8B86 |
  LDA.W #$0009                              ; $8B8B8A |
  STA.B $1A,X                               ; $8B8B8D |
  RTL                                       ; $8B8B8F |

CODE_8B8B90:
  LDA.W #$C6B4                              ; $8B8B90 |
  JSL.L CODE_FL_8B8208                      ; $8B8B93 |
  LDA.W #$0027                              ; $8B8B97 |
  STA.B $1A,X                               ; $8B8B9A |
  RTL                                       ; $8B8B9C |

CODE_8B8B9D:
  LDA.W #$C6C0                              ; $8B8B9D |
  JSL.L CODE_FL_8B8208                      ; $8B8BA0 |
  LDA.B $3A,X                               ; $8B8BA4 |
  LSR A                                     ; $8B8BA6 |
  CLC                                       ; $8B8BA7 |
  ADC.W #$3055                              ; $8B8BA8 |
  JSL.L CODE_FL_86CAEE                      ; $8B8BAB |
  STZ.B $14,X                               ; $8B8BAF |
  LDA.W #$002A                              ; $8B8BB1 |
  STA.B $1A,X                               ; $8B8BB4 |

CODE_8B8BB6:
  LDA.B $00,X                               ; $8B8BB6 |
  BNE CODE_8B8BBE                           ; $8B8BB8 |
  JML.L CODE_FL_86CA36                      ; $8B8BBA |

CODE_8B8BBE:
  RTL                                       ; $8B8BBE |

CODE_8B8BBF:
  LDA.B $04,X                               ; $8B8BBF |
  EOR.W #$2020                              ; $8B8BC1 |
  STA.B $04,X                               ; $8B8BC4 |
  TDC                                       ; $8B8BC6 |
  STA.L $7E7C04                             ; $8B8BC7 |
  LDA.W #$0009                              ; $8B8BCB |
  STA.B $1A,X                               ; $8B8BCE |
  RTL                                       ; $8B8BD0 |

CODE_8B8BD1:
  JML.L CODE_FL_86CA2D                      ; $8B8BD1 |

CODE_FN_8B8BD5:
  LSR A                                     ; $8B8BD5 |
  LSR A                                     ; $8B8BD6 |
  LSR A                                     ; $8B8BD7 |
  LSR A                                     ; $8B8BD8 |
  AND.W #$000F                              ; $8B8BD9 |
  LDY.B $3A,X                               ; $8B8BDC |
  AND.W LOOSE_OP_00C5BF,Y                   ; $8B8BDE |
  BEQ CODE_8B8BE7                           ; $8B8BE1 |
  LDA.L $7E7C04                             ; $8B8BE3 |

CODE_8B8BE7:
  RTS                                       ; $8B8BE7 |

CODE_FL_8B8BE8:
  LDA.L $7E7C04                             ; $8B8BE8 |
  CMP.B $3E,X                               ; $8B8BEC |
  BEQ CODE_8B8BF7                           ; $8B8BEE |
  LDA.W #$0004                              ; $8B8BF0 |
  STA.B $1A,X                               ; $8B8BF3 |
  TDC                                       ; $8B8BF5 |
  RTL                                       ; $8B8BF6 |

CODE_8B8BF7:
  LDA.W #$0001                              ; $8B8BF7 |
  RTL                                       ; $8B8BFA |

CODE_FL_8B8BFB:
  LDA.L $7E7C04                             ; $8B8BFB |
  CMP.B $3E,X                               ; $8B8BFF |
  BEQ CODE_8B8C0A                           ; $8B8C01 |
  LDA.W #$0009                              ; $8B8C03 |
  STA.B $1A,X                               ; $8B8C06 |
  TDC                                       ; $8B8C08 |
  RTL                                       ; $8B8C09 |

CODE_8B8C0A:
  LDA.W #$0001                              ; $8B8C0A |
  RTL                                       ; $8B8C0D |

CODE_FL_8B8C0E:
  DEC.B $20,X                               ; $8B8C0E |
  BPL CODE_8B8C3C                           ; $8B8C10 |
  STA.B $20,X                               ; $8B8C12 |
  LDA.B $1E,X                               ; $8B8C14 |
  CLC                                       ; $8B8C16 |
  ADC.W #$C624                              ; $8B8C17 |
  JSL.L CODE_FL_8B8208                      ; $8B8C1A |
  LDA.B $1E,X                               ; $8B8C1E |
  CLC                                       ; $8B8C20 |
  ADC.W #$000C                              ; $8B8C21 |
  STA.B $1E,X                               ; $8B8C24 |
  TAY                                       ; $8B8C26 |
  LDA.B $3A,X                               ; $8B8C27 |
  BIT.W #$0002                              ; $8B8C29 |
  BEQ CODE_8B8C35                           ; $8B8C2C |
  CPY.W #$0060                              ; $8B8C2E |
  BMI CODE_8B8C3C                           ; $8B8C31 |
  BRA CODE_8B8C3A                           ; $8B8C33 |

CODE_8B8C35:
  CPY.W #$0048                              ; $8B8C35 |
  BMI CODE_8B8C3C                           ; $8B8C38 |

CODE_8B8C3A:
  STZ.B $1E,X                               ; $8B8C3A |

CODE_8B8C3C:
  RTL                                       ; $8B8C3C |

CODE_FL_8B8C3D:
  DEC.B $20,X                               ; $8B8C3D |
  BPL CODE_8B8C3C                           ; $8B8C3F |
  STA.B $20,X                               ; $8B8C41 |
  LDA.B $1E,X                               ; $8B8C43 |
  CLC                                       ; $8B8C45 |
  ADC.W #$C624                              ; $8B8C46 |
  JSL.L CODE_FL_8B8208                      ; $8B8C49 |
  LDA.B $1E,X                               ; $8B8C4D |
  CLC                                       ; $8B8C4F |
  ADC.W #$000C                              ; $8B8C50 |
  STA.B $1E,X                               ; $8B8C53 |
  CMP.W #$0048                              ; $8B8C55 |
  BMI CODE_8B8C5C                           ; $8B8C58 |
  STZ.B $1E,X                               ; $8B8C5A |

CODE_8B8C5C:
  RTL                                       ; $8B8C5C |

CODE_FL_8B8C5D:
  DEC.B $20,X                               ; $8B8C5D |
  BPL CODE_8B8C74                           ; $8B8C5F |
  STA.B $20,X                               ; $8B8C61 |
  LDA.B $1E,X                               ; $8B8C63 |
  LSR A                                     ; $8B8C65 |
  LDA.W #$C684                              ; $8B8C66 |
  BCC CODE_8B8C6E                           ; $8B8C69 |
  LDA.W #$C690                              ; $8B8C6B |

CODE_8B8C6E:
  JSL.L CODE_FL_8B8208                      ; $8B8C6E |
  INC.B $1E,X                               ; $8B8C72 |

CODE_8B8C74:
  RTL                                       ; $8B8C74 |

CODE_8B8C75:
  LDA.L $700690                             ; $8B8C75 |
  AND.W #$00FF                              ; $8B8C79 |
  CMP.W #$0002                              ; $8B8C7C |
  BEQ CODE_8B8C97                           ; $8B8C7F |
  CMP.W #$0003                              ; $8B8C81 |
  BEQ CODE_8B8C97                           ; $8B8C84 |
  PHX                                       ; $8B8C86 |
  LDY.W #$9912                              ; $8B8C87 |
  JSL.L CODE_FL_8AAF61                      ; $8B8C8A |
  PLX                                       ; $8B8C8E |
  JSL.L CODE_FL_8B8D38                      ; $8B8C8F |
  JML.L CODE_FL_86CA36                      ; $8B8C93 |

CODE_8B8C97:
  JSL.L CODE_FL_8B80CE                      ; $8B8C97 |
  JSL.L CODE_FL_86C3F8                      ; $8B8C9B |
  PHX                                       ; $8B8C9F |
  ASL A                                     ; $8B8CA0 |
  TAX                                       ; $8B8CA1 |
  LDA.L PTR16_8B8CAC,X                      ; $8B8CA2 |
  PLX                                       ; $8B8CA6 |
  STA.B $00                                 ; $8B8CA7 |
  JMP.W ($0000)                             ; $8B8CA9 |

PTR16_8B8CAC:
  dw CODE_8B8CCE                            ; $8B8CAC |
  dw CODE_8B8D60                            ; $8B8CAE |
  dw CODE_8B8D8B                            ; $8B8CB0 |
  dw CODE_8B8DA0                            ; $8B8CB2 |
  dw CODE_8B8DAD                            ; $8B8CB4 |
  dw CODE_8B8DBE                            ; $8B8CB6 |
  dw CODE_8B8DD6                            ; $8B8CB8 |
  dw CODE_8B8DE9                            ; $8B8CBA |
  dw CODE_8B8E40                            ; $8B8CBC |
  dw CODE_8B8E4F                            ; $8B8CBE |
  dw CODE_8B8E60                            ; $8B8CC0 |
  dw CODE_8B8E99                            ; $8B8CC2 |
  dw CODE_8B8EB6                            ; $8B8CC4 |
  dw CODE_8B8ED8                            ; $8B8CC6 |
  dw CODE_8B8EF5                            ; $8B8CC8 |
  dw CODE_8B8F0B                            ; $8B8CCA |
  dw CODE_8B8F19                            ; $8B8CCC |

CODE_8B8CCE:
  PHX                                       ; $8B8CCE |
  LDY.W #$9F58                              ; $8B8CCF |
  JSL.L CODE_FL_8AAF61                      ; $8B8CD2 |
  LDY.W #$A2F8                              ; $8B8CD6 |
  LDA.W #$0004                              ; $8B8CD9 |
  JSL.L CODE_FL_80C2B5                      ; $8B8CDC |
  PLX                                       ; $8B8CE0 |
  JSL.L CODE_FL_96FBA9                      ; $8B8CE1 |
  TDC                                       ; $8B8CE5 |
  STA.L $700758                             ; $8B8CE6 |
  INC.B $76                                 ; $8B8CEA |
  JSL.L CODE_FL_86C7A5                      ; $8B8CEC |
  LDA.W #$30B0                              ; $8B8CF0 |
  STA.B $04,X                               ; $8B8CF3 |
  LDA.W #$0012                              ; $8B8CF5 |
  STA.B $14,X                               ; $8B8CF8 |
  LDA.W #$8000                              ; $8B8CFA |
  ORA.W #$0100                              ; $8B8CFD |
  STA.B $22,X                               ; $8B8D00 |
  LDA.W #$0120                              ; $8B8D02 |
  STA.B $09,X                               ; $8B8D05 |
  JSL.L CODE_FL_8B803B                      ; $8B8D07 |
  LDY.W #$0D50                              ; $8B8D0B |
  LDA.W #$015C                              ; $8B8D0E |
  JSL.L CODE_FL_86C9E0                      ; $8B8D11 |
  TXA                                       ; $8B8D15 |
  STA.W $003A,Y                             ; $8B8D16 |
  LDA.W #$0004                              ; $8B8D19 |
  STA.W $003C,Y                             ; $8B8D1C |
  LDA.W #$0045                              ; $8B8D1F |
  STA.W $0002,Y                             ; $8B8D22 |
  LDA.W #$0060                              ; $8B8D25 |
  STA.W $0006,Y                             ; $8B8D28 |
  LDA.W #$3748                              ; $8B8D2B |
  STA.W $0000,Y                             ; $8B8D2E |
  LDA.W #$0060                              ; $8B8D31 |
  STA.B $2C,X                               ; $8B8D34 |
  INC.B $1A,X                               ; $8B8D36 |

CODE_FL_8B8D38:
  LDA.W #$0120                              ; $8B8D38 |
  STA.W $0DA9                               ; $8B8D3B |
  LDA.W #$0140                              ; $8B8D3E |
  STA.W $0DF9                               ; $8B8D41 |
  LDA.W #$00A0                              ; $8B8D44 |
  STA.W $0DAD                               ; $8B8D47 |
  STA.W $0DFD                               ; $8B8D4A |
  LDA.W #$30B0                              ; $8B8D4D |
  STA.W $0DA4                               ; $8B8D50 |
  STA.W $0DF4                               ; $8B8D53 |
  LDA.W #$8000                              ; $8B8D56 |
  STA.W $0DC2                               ; $8B8D59 |
  STA.W $0E12                               ; $8B8D5C |
  RTL                                       ; $8B8D5F |

CODE_8B8D60:
  LDY.W #$0620                              ; $8B8D60 |
  LDA.W #$0176                              ; $8B8D63 |
  JSL.L CODE_FL_86C9E0                      ; $8B8D66 |
  LDA.W #$0110                              ; $8B8D6A |
  STA.W $0009,Y                             ; $8B8D6D |
  LDA.W #$0000                              ; $8B8D70 |

CODE_8B8D73:
  STA.W $003A,Y                             ; $8B8D73 |
  LDA.W #$00A0                              ; $8B8D76 |
  STA.W $000D,Y                             ; $8B8D79 |
  LDA.W #$30B0                              ; $8B8D7C |
  STA.W $0004,Y                             ; $8B8D7F |
  LDA.W #$8000                              ; $8B8D82 |
  STA.W $0022,Y                             ; $8B8D85 |
  INC.B $1A,X                               ; $8B8D88 |
  RTL                                       ; $8B8D8A |

CODE_8B8D8B:
  LDY.W #$0670                              ; $8B8D8B |
  LDA.W #$0176                              ; $8B8D8E |
  JSL.L CODE_FL_86C9E0                      ; $8B8D91 |
  LDA.W #$0130                              ; $8B8D95 |
  STA.W $0009,Y                             ; $8B8D98 |
  LDA.W #$0002                              ; $8B8D9B |
  BRA CODE_8B8D73                           ; $8B8D9E |

CODE_8B8DA0:
  JSL.L CODE_FL_86C70D                      ; $8B8DA0 |
  LDA.W #$0036                              ; $8B8DA4 |
  STA.L $7E7C04                             ; $8B8DA7 |
  INC.B $1A,X                               ; $8B8DAB |

CODE_8B8DAD:
  LDA.W $0629                               ; $8B8DAD |
  CMP.W #$0098                              ; $8B8DB0 |
  BPL CODE_8B8DBD                           ; $8B8DB3 |
  INC.W $063A                               ; $8B8DB5 |
  INC.W $068A                               ; $8B8DB8 |
  INC.B $1A,X                               ; $8B8DBB |

CODE_8B8DBD:
  RTL                                       ; $8B8DBD |

CODE_8B8DBE:
  LDA.W #$9264                              ; $8B8DBE |
  JSL.L CODE_FL_809934                      ; $8B8DC1 |
  BCC CODE_8B8DD5                           ; $8B8DC5 |
  LDA.W #$0060                              ; $8B8DC7 |
  STA.B $2C,X                               ; $8B8DCA |
  LDA.W #$0005                              ; $8B8DCC |
  JSL.L CODE_FL_B3FE45                      ; $8B8DCF |
  INC.B $1A,X                               ; $8B8DD3 |

CODE_8B8DD5:
  RTL                                       ; $8B8DD5 |

CODE_8B8DD6:
  JSL.L CODE_FL_86C70D                      ; $8B8DD6 |
  LDA.W #$303D                              ; $8B8DDA |
  JSL.L CODE_FL_86CAEE                      ; $8B8DDD |
  LDA.W #$FE00                              ; $8B8DE1 |
  STA.B $26,X                               ; $8B8DE4 |
  INC.B $1A,X                               ; $8B8DE6 |
  RTL                                       ; $8B8DE8 |

CODE_8B8DE9:
  DEC.B $3E,X                               ; $8B8DE9 |
  BPL CODE_8B8DF9                           ; $8B8DEB |
  LDA.W #$000C                              ; $8B8DED |
  STA.B $3E,X                               ; $8B8DF0 |
  LDA.W #$0037                              ; $8B8DF2 |
  JSL.L push_sound_queue                    ; $8B8DF5 |

CODE_8B8DF9:
  LDY.B $09,X                               ; $8B8DF9 |
  CPY.W #$0090                              ; $8B8DFB |
  BPL CODE_8B8E0A                           ; $8B8DFE |
  SEP #$20                                  ; $8B8E00 |
  LDA.B #$03                                ; $8B8E02 |
  STA.L $700690                             ; $8B8E04 |
  REP #$20                                  ; $8B8E08 |

CODE_8B8E0A:
  CPY.W $0629                               ; $8B8E0A |
  BPL CODE_8B8E1A                           ; $8B8E0D |
  LDA.L $7E7C04                             ; $8B8E0F |
  ORA.W #$0013                              ; $8B8E13 |
  STA.L $7E7C04                             ; $8B8E16 |

CODE_8B8E1A:
  CPY.W $0679                               ; $8B8E1A |
  BPL CODE_8B8E2A                           ; $8B8E1D |
  LDA.L $7E7C04                             ; $8B8E1F |
  ORA.W #$0023                              ; $8B8E23 |
  STA.L $7E7C04                             ; $8B8E26 |

CODE_8B8E2A:
  CPY.W #$0030                              ; $8B8E2A |
  BPL CODE_8B8E3F                           ; $8B8E2D |
  LDA.W #$362E                              ; $8B8E2F |
  STA.B $00,X                               ; $8B8E32 |
  STZ.B $20,X                               ; $8B8E34 |
  STZ.B $26,X                               ; $8B8E36 |
  LDA.W #$0020                              ; $8B8E38 |
  STA.B $2C,X                               ; $8B8E3B |
  INC.B $1A,X                               ; $8B8E3D |

CODE_8B8E3F:
  RTL                                       ; $8B8E3F |

CODE_8B8E40:
  JSL.L CODE_FL_86C70D                      ; $8B8E40 |
  TDC                                       ; $8B8E44 |
  STA.L $7E7C04                             ; $8B8E45 |
  JSL.L CODE_FL_86C47E                      ; $8B8E49 |
  INC.B $1A,X                               ; $8B8E4D |

CODE_8B8E4F:
  LDA.W #$928F                              ; $8B8E4F |
  JSL.L CODE_FL_809934                      ; $8B8E52 |
  BCC CODE_8B8E5F                           ; $8B8E56 |
  LDA.W #$0040                              ; $8B8E58 |
  STA.B $2C,X                               ; $8B8E5B |
  INC.B $1A,X                               ; $8B8E5D |

CODE_8B8E5F:
  RTL                                       ; $8B8E5F |

CODE_8B8E60:
  LDA.W #$1090                              ; $8B8E60 |
  STA.W $0624                               ; $8B8E63 |
  STA.W $0674                               ; $8B8E66 |
  LDA.W #$0036                              ; $8B8E69 |
  STA.L $7E7C04                             ; $8B8E6C |
  LDA.W $0629                               ; $8B8E70 |
  CMP.W #$0120                              ; $8B8E73 |
  BMI CODE_8B8E98                           ; $8B8E76 |
  INC.B $1A,X                               ; $8B8E78 |
  LDA.W #$0200                              ; $8B8E7A |
  STA.W $0DDA                               ; $8B8E7D |
  STA.W $0E2A                               ; $8B8E80 |
  LDA.W #$0620                              ; $8B8E83 |
  STA.W $0DDC                               ; $8B8E86 |
  LDA.W #$0670                              ; $8B8E89 |
  STA.W $0E2C                               ; $8B8E8C |
  LDA.W #$001D                              ; $8B8E8F |
  STA.W $063A                               ; $8B8E92 |
  STA.W $068A                               ; $8B8E95 |

CODE_8B8E98:
  RTL                                       ; $8B8E98 |

CODE_8B8E99:
  LDA.W $0DA9                               ; $8B8E99 |
  CMP.W #$0080                              ; $8B8E9C |
  BPL CODE_8B8EA7                           ; $8B8E9F |
  STZ.W $0DDA                               ; $8B8EA1 |
  STZ.W $0640                               ; $8B8EA4 |

CODE_8B8EA7:
  LDA.W $0DF9                               ; $8B8EA7 |
  CMP.W #$0080                              ; $8B8EAA |
  BPL CODE_8B8EB5                           ; $8B8EAD |
  JSL.L CODE_FL_86C47E                      ; $8B8EAF |
  INC.B $1A,X                               ; $8B8EB3 |

CODE_8B8EB5:
  RTL                                       ; $8B8EB5 |

CODE_8B8EB6:
  LDA.W $0DF9                               ; $8B8EB6 |
  CMP.W #$0060                              ; $8B8EB9 |
  BPL CODE_8B8ECA                           ; $8B8EBC |
  LDA.W #$FE00                              ; $8B8EBE |
  STA.B $26,X                               ; $8B8EC1 |
  LDA.W #$303D                              ; $8B8EC3 |
  JSL.L CODE_FL_86CAEE                      ; $8B8EC6 |

CODE_8B8ECA:
  LDA.B $09,X                               ; $8B8ECA |
  CMP.W #$FFC0                              ; $8B8ECC |
  BPL CODE_8B8ED7                           ; $8B8ECF |
  TDC                                       ; $8B8ED1 |
  STA.W $0E2A                               ; $8B8ED2 |
  INC.B $1A,X                               ; $8B8ED5 |

CODE_8B8ED7:
  RTL                                       ; $8B8ED7 |

CODE_8B8ED8:
  LDA.W #$9331                              ; $8B8ED8 |
  JSL.L CODE_FL_809934                      ; $8B8EDB |
  BCC CODE_8B8EF4                           ; $8B8EDF |
  LDA.W #$0050                              ; $8B8EE1 |
  STA.B $2C,X                               ; $8B8EE4 |
  INC.W $0690                               ; $8B8EE6 |
  LDA.W #$0200                              ; $8B8EE9 |
  STA.W $0DDA                               ; $8B8EEC |
  INC.W $0640                               ; $8B8EEF |
  INC.B $1A,X                               ; $8B8EF2 |

CODE_8B8EF4:
  RTL                                       ; $8B8EF4 |

CODE_8B8EF5:
  JSL.L CODE_FL_86C70D                      ; $8B8EF5 |
  STZ.W $0690                               ; $8B8EF9 |
  STZ.W $0DDA                               ; $8B8EFC |
  STZ.W $0640                               ; $8B8EFF |
  LDA.W #$0004                              ; $8B8F02 |
  JSL.L CODE_FL_87E3B2                      ; $8B8F05 |
  INC.B $1A,X                               ; $8B8F09 |

CODE_8B8F0B:
  JSL.L CODE_FL_87E3B7                      ; $8B8F0B |
  BCC CODE_8B8F18                           ; $8B8F0F |
  LDA.W #$0040                              ; $8B8F11 |
  STA.B $2C,X                               ; $8B8F14 |
  INC.B $1A,X                               ; $8B8F16 |

CODE_8B8F18:
  RTL                                       ; $8B8F18 |

CODE_8B8F19:
  JSL.L CODE_FL_86C70D                      ; $8B8F19 |
  PHX                                       ; $8B8F1D |
  JSL.L CODE_FL_86CA36                      ; $8B8F1E |
  JSL.L CODE_FL_8482D5                      ; $8B8F22 |
  PLX                                       ; $8B8F26 |
  RTL                                       ; $8B8F27 |

CODE_8B8F28:
  JSL.L CODE_FL_85F885                      ; $8B8F28 |
  JSL.L CODE_FL_86C3F8                      ; $8B8F2C |
  BNE CODE_8B8F47                           ; $8B8F30 |
  LDA.W #$8000                              ; $8B8F32 |
  ORA.W #$0100                              ; $8B8F35 |
  STA.B $22,X                               ; $8B8F38 |
  LDA.B $00,X                               ; $8B8F3A |
  BNE CODE_8B8F45                           ; $8B8F3C |
  LDY.B $3C,X                               ; $8B8F3E |
  LDA.W CODE_00C557,Y                       ; $8B8F40 |
  STA.B $00,X                               ; $8B8F43 |

CODE_8B8F45:
  INC.B $1A,X                               ; $8B8F45 |

CODE_8B8F47:
  LDY.B $3A,X                               ; $8B8F47 |
  LDA.W $0009,Y                             ; $8B8F49 |
  STA.B $09,X                               ; $8B8F4C |
  LDA.W $000D,Y                             ; $8B8F4E |
  INC A                                     ; $8B8F51 |
  STA.B $0D,X                               ; $8B8F52 |
  LDA.W $0004,Y                             ; $8B8F54 |
  STA.B $04,X                               ; $8B8F57 |
  LDA.W $0014,Y                             ; $8B8F59 |
  INC A                                     ; $8B8F5C |
  STA.B $14,X                               ; $8B8F5D |
  RTL                                       ; $8B8F5F |

CODE_8B8F60:
  LDA.W $0090                               ; $8B8F60 |
  CMP.W #$0000                              ; $8B8F63 |
  BEQ CODE_8B8F6E                           ; $8B8F66 |
  JSL.L CODE_FL_86C3F8                      ; $8B8F68 |
  BRA CODE_8B8F72                           ; $8B8F6C |

CODE_8B8F6E:
  JSL.L CODE_FL_8CFD8F                      ; $8B8F6E |

CODE_8B8F72:
  PHX                                       ; $8B8F72 |
  ASL A                                     ; $8B8F73 |
  TAX                                       ; $8B8F74 |
  LDA.L PTR16_8B8F7F,X                      ; $8B8F75 |
  PLX                                       ; $8B8F79 |
  STA.B $00                                 ; $8B8F7A |
  JMP.W ($0000)                             ; $8B8F7C |

PTR16_8B8F7F:
  dw CODE_8B8F91                            ; $8B8F7F |
  dw CODE_8B8FB9                            ; $8B8F81 |
  dw CODE_8B8FC4                            ; $8B8F83 |
  dw CODE_8B8FDF                            ; $8B8F85 |
  dw CODE_8B8FF6                            ; $8B8F87 |
  dw CODE_8B901E                            ; $8B8F89 |
  dw CODE_8B9041                            ; $8B8F8B |
  dw CODE_8B9064                            ; $8B8F8D |
  dw CODE_8B9074                            ; $8B8F8F |

CODE_8B8F91:
  JSL.L CODE_FL_86C7A5                      ; $8B8F91 |
  LDA.W #$30B0                              ; $8B8F95 |
  STA.B $04,X                               ; $8B8F98 |
  LDA.W #$8000                              ; $8B8F9A |
  ORA.W #$0100                              ; $8B8F9D |
  STA.B $22,X                               ; $8B8FA0 |
  LDA.W $0090                               ; $8B8FA2 |
  CMP.W #$0000                              ; $8B8FA5 |
  BEQ CODE_8B8FB1                           ; $8B8FA8 |
  LDA.W #$007A                              ; $8B8FAA |
  STA.B $14,X                               ; $8B8FAD |
  BRA CODE_8B8FB5                           ; $8B8FAF |

CODE_8B8FB1:
  JSL.L CODE_FL_8CFF15                      ; $8B8FB1 |

CODE_8B8FB5:
  JSL.L CODE_FL_86C63F                      ; $8B8FB5 |

CODE_8B8FB9:
  LDA.W #$362E                              ; $8B8FB9 |
  STA.B $00,X                               ; $8B8FBC |
  STZ.B $20,X                               ; $8B8FBE |
  STZ.B $26,X                               ; $8B8FC0 |
  INC.B $1A,X                               ; $8B8FC2 |

CODE_8B8FC4:
  LDY.B $3A,X                               ; $8B8FC4 |
  BEQ CODE_8B8FDC                           ; $8B8FC6 |
  LDA.B $04,X                               ; $8B8FC8 |
  AND.W #$2020                              ; $8B8FCA |
  CMP.W #$2020                              ; $8B8FCD |
  BNE CODE_8B8FD8                           ; $8B8FD0 |
  TYA                                       ; $8B8FD2 |
  EOR.W #$FFFF                              ; $8B8FD3 |
  INC A                                     ; $8B8FD6 |
  TAY                                       ; $8B8FD7 |

CODE_8B8FD8:
  STY.B $26,X                               ; $8B8FD8 |
  INC.B $1A,X                               ; $8B8FDA |

CODE_8B8FDC:
  JMP.W CODE_JP_8B902D                      ; $8B8FDC |

CODE_8B8FDF:
  LDA.W #$303D                              ; $8B8FDF |
  LDY.B $3A,X                               ; $8B8FE2 |
  CPY.W #$0300                              ; $8B8FE4 |
  BMI CODE_8B8FEA                           ; $8B8FE7 |
  INC A                                     ; $8B8FE9 |

CODE_8B8FEA:
  CPY.W #$0400                              ; $8B8FEA |
  BMI CODE_8B8FF0                           ; $8B8FED |
  INC A                                     ; $8B8FEF |

CODE_8B8FF0:
  JSL.L CODE_FL_86CAEE                      ; $8B8FF0 |
  INC.B $1A,X                               ; $8B8FF4 |

CODE_8B8FF6:
  DEC.B $3E,X                               ; $8B8FF6 |
  BPL CODE_8B9012                           ; $8B8FF8 |
  LDA.B $26,X                               ; $8B8FFA |
  EOR.W #$FFFF                              ; $8B8FFC |
  INC A                                     ; $8B8FFF |
  XBA                                       ; $8B9000 |
  STA.B $3E,X                               ; $8B9001 |
  LDA.W #$000E                              ; $8B9003 |
  SEC                                       ; $8B9006 |
  SBC.B $3E,X                               ; $8B9007 |
  STA.B $3E,X                               ; $8B9009 |
  LDA.W #$0037                              ; $8B900B |
  JSL.L push_sound_queue                    ; $8B900E |

CODE_8B9012:
  LDY.B $3A,X                               ; $8B9012 |
  BNE CODE_8B901B                           ; $8B9014 |
  LDA.W #$0001                              ; $8B9016 |
  STA.B $1A,X                               ; $8B9019 |

CODE_8B901B:
  JMP.W CODE_JP_8B902D                      ; $8B901B |

CODE_8B901E:
  LDA.W #$000D                              ; $8B901E |
  JSL.L push_sound_queue                    ; $8B9021 |
  JSL.L CODE_FL_8CFAF3                      ; $8B9025 |
  JML.L CODE_FL_86CA2D                      ; $8B9029 |

CODE_JP_8B902D:
  LDY.B $3C,X                               ; $8B902D |
  BEQ CODE_8B9040                           ; $8B902F |
  JSL.L CODE_FL_8CFC54                      ; $8B9031 |
  LDA.B $04,X                               ; $8B9035 |
  STA.W $0004,Y                             ; $8B9037 |
  LDA.B $0D,X                               ; $8B903A |
  INC A                                     ; $8B903C |
  STA.W $000D,Y                             ; $8B903D |

CODE_8B9040:
  RTL                                       ; $8B9040 |

CODE_8B9041:
  LDA.B $11,X                               ; $8B9041 |
  AND.W #$00FF                              ; $8B9043 |
  XBA                                       ; $8B9046 |
  ORA.W #$0004                              ; $8B9047 |
  STA.B $14,X                               ; $8B904A |
  LDA.W #$1090                              ; $8B904C |
  STA.B $04,X                               ; $8B904F |
  LDA.W #$0046                              ; $8B9051 |
  STA.B $02,X                               ; $8B9054 |
  LDA.W #$303F                              ; $8B9056 |
  JSL.L CODE_FL_86CAEE                      ; $8B9059 |
  LDA.W #$0400                              ; $8B905D |
  STA.B $26,X                               ; $8B9060 |
  INC.B $1A,X                               ; $8B9062 |

CODE_8B9064:
  LDA.B $09,X                               ; $8B9064 |
  CMP.W #$0050                              ; $8B9066 |
  BMI CODE_JP_8B902D                        ; $8B9069 |
  SEP #$20                                  ; $8B906B |
  TDC                                       ; $8B906D |
  STA.B $15,X                               ; $8B906E |
  REP #$20                                  ; $8B9070 |
  INC.B $1A,X                               ; $8B9072 |

CODE_8B9074:
  JSL.L CODE_FL_8CFCF0                      ; $8B9074 |
  BEQ CODE_8B907D                           ; $8B9078 |
  JMP.W CODE_JP_8B902D                      ; $8B907A |

CODE_8B907D:
  LDY.B $3C,X                               ; $8B907D |
  LDA.W $001A,Y                             ; $8B907F |
  INC A                                     ; $8B9082 |
  INC A                                     ; $8B9083 |
  STA.W $001A,Y                             ; $8B9084 |
  LDA.W $003A,Y                             ; $8B9087 |
  XBA                                       ; $8B908A |
  SEC                                       ; $8B908B |
  SBC.W #$0300                              ; $8B908C |
  CMP.W #$8000                              ; $8B908F |
  ROR A                                     ; $8B9092 |
  CMP.W #$8000                              ; $8B9093 |
  ROR A                                     ; $8B9096 |
  STA.W $0028,Y                             ; $8B9097 |
  LDA.W #$0006                              ; $8B909A |
  SEC                                       ; $8B909D |
  SBC.W $003A,Y                             ; $8B909E |
  ASL A                                     ; $8B90A1 |
  ASL A                                     ; $8B90A2 |
  ASL A                                     ; $8B90A3 |
  ASL A                                     ; $8B90A4 |
  ADC.W #$0100                              ; $8B90A5 |
  STA.W $0026,Y                             ; $8B90A8 |
  LDA.W #$0005                              ; $8B90AB |
  STA.B $1A,X                               ; $8B90AE |
  RTL                                       ; $8B90B0 |

CODE_FL_8B90B1:
  ASL A                                     ; $8B90B1 |
  TAY                                       ; $8B90B2 |
  LDA.W LOOSE_OP_00C4A7,Y                   ; $8B90B3 |
  TAY                                       ; $8B90B6 |
  PHX                                       ; $8B90B7 |
  LDA.W #$001C                              ; $8B90B8 |
  JSL.L CODE_FL_80C2BA                      ; $8B90BB |
  PLX                                       ; $8B90BF |
  LDA.W #$F88F                              ; $8B90C0 |
  STA.B $00,X                               ; $8B90C3 |
  LDA.W #$0046                              ; $8B90C5 |
  STA.B $02,X                               ; $8B90C8 |
  LDA.W #$00E0                              ; $8B90CA |
  STA.B $06,X                               ; $8B90CD |
  RTL                                       ; $8B90CF |

CODE_8B90D0:
  JSL.L CODE_FL_86C3F8                      ; $8B90D0 |
  PHX                                       ; $8B90D4 |
  ASL A                                     ; $8B90D5 |
  TAX                                       ; $8B90D6 |
  LDA.L PTR16_8B90E1,X                      ; $8B90D7 |
  PLX                                       ; $8B90DB |
  STA.B $00                                 ; $8B90DC |
  JMP.W ($0000)                             ; $8B90DE |

PTR16_8B90E1:
  dw CODE_8B910B                            ; $8B90E1 |
  dw CODE_8B9144                            ; $8B90E3 |
  dw CODE_8B9157                            ; $8B90E5 |
  dw CODE_8B9163                            ; $8B90E7 |
  dw CODE_8B918B                            ; $8B90E9 |
  dw CODE_8B919D                            ; $8B90EB |
  dw CODE_8B91DB                            ; $8B90ED |
  dw CODE_8B91E5                            ; $8B90EF |
  dw CODE_8B91EF                            ; $8B90F1 |
  dw CODE_8B91FB                            ; $8B90F3 |
  dw CODE_8B91FE                            ; $8B90F5 |
  dw CODE_8B9214                            ; $8B90F7 |
  dw CODE_8B9233                            ; $8B90F9 |
  dw CODE_8B9248                            ; $8B90FB |
  dw CODE_8B9272                            ; $8B90FD |
  dw CODE_8B9290                            ; $8B90FF |
  dw CODE_8B929F                            ; $8B9101 |
  dw CODE_8B92A9                            ; $8B9103 |
  dw CODE_8B92B9                            ; $8B9105 |
  dw CODE_8B92D8                            ; $8B9107 |
  dw CODE_8B92E5                            ; $8B9109 |

CODE_8B910B:
  LDA.B $3A,X                               ; $8B910B |
  JSL.L CODE_FL_8B90B1                      ; $8B910D |
  LDA.W #$0040                              ; $8B9111 |
  STA.B $4C,X                               ; $8B9114 |
  LDA.W #$8000                              ; $8B9116 |
  ORA.W #$0100                              ; $8B9119 |
  STA.B $22,X                               ; $8B911C |
  LDA.W #$0060                              ; $8B911E |
  STA.B $14,X                               ; $8B9121 |
  LDA.W #$0018                              ; $8B9123 |
  STA.B $30,X                               ; $8B9126 |
  LDA.W #$0008                              ; $8B9128 |
  STA.B $2E,X                               ; $8B912B |
  LDA.B $3C,X                               ; $8B912D |
  PHX                                       ; $8B912F |
  ASL A                                     ; $8B9130 |
  TAX                                       ; $8B9131 |
  LDA.L PTR16_8B913C,X                      ; $8B9132 |
  PLX                                       ; $8B9136 |
  STA.B $00                                 ; $8B9137 |
  JMP.W ($0000)                             ; $8B9139 |

PTR16_8B913C:
  dw CODE_8B9144                            ; $8B913C |
  dw CODE_8B9144                            ; $8B913E |
  dw CODE_8B9144                            ; $8B9140 |
  dw CODE_8B9144                            ; $8B9142 |

CODE_8B9144:
  LDA.W #$000D                              ; $8B9144 |
  JSL.L push_sound_queue                    ; $8B9147 |
  LDA.W #$FD00                              ; $8B914B |
  STA.B $28,X                               ; $8B914E |
  STZ.B $46,X                               ; $8B9150 |
  LDA.W #$0002                              ; $8B9152 |
  STA.B $1A,X                               ; $8B9155 |

CODE_8B9157:
  LDA.B $0D,X                               ; $8B9157 |
  CMP.W #$0060                              ; $8B9159 |
  BPL CODE_8B9160                           ; $8B915C |
  INC.B $1A,X                               ; $8B915E |

CODE_8B9160:
  JMP.W CODE_FL_8B9307                      ; $8B9160 |

CODE_8B9163:
  JSL.L CODE_FL_8CFC32                      ; $8B9163 |
  BEQ CODE_8B9185                           ; $8B9167 |
  LDA.B $0D,X                               ; $8B9169 |
  CMP.W #$0090                              ; $8B916B |
  BMI CODE_8B9182                           ; $8B916E |
  LDA.B $46,X                               ; $8B9170 |
  BNE CODE_8B917D                           ; $8B9172 |
  INC.B $46,X                               ; $8B9174 |
  LDA.W #$00BC                              ; $8B9176 |
  JSL.L CODE_FL_8089BD                      ; $8B9179 |

CODE_8B917D:
  LDA.W #$0080                              ; $8B917D |
  STA.B $28,X                               ; $8B9180 |

CODE_8B9182:
  JMP.W CODE_FL_8B9307                      ; $8B9182 |

CODE_8B9185:
  LDA.W #$0004                              ; $8B9185 |
  STA.B $1A,X                               ; $8B9188 |
  RTL                                       ; $8B918A |

CODE_8B918B:
  STZ.B $26,X                               ; $8B918B |
  STZ.B $28,X                               ; $8B918D |
  LDA.W #$F88F                              ; $8B918F |
  STA.B $00,X                               ; $8B9192 |
  STZ.B $20,X                               ; $8B9194 |
  STZ.B $3E,X                               ; $8B9196 |
  LDA.W #$0005                              ; $8B9198 |
  STA.B $1A,X                               ; $8B919B |

CODE_8B919D:
  LDA.L $7E7C04                             ; $8B919D |
  STA.B $3E,X                               ; $8B91A1 |
  BEQ CODE_8B91AA                           ; $8B91A3 |
  BIT.W #$00F0                              ; $8B91A5 |
  BEQ CODE_8B91AB                           ; $8B91A8 |

CODE_8B91AA:
  RTL                                       ; $8B91AA |

CODE_8B91AB:
  AND.W #$000F                              ; $8B91AB |
  PHX                                       ; $8B91AE |
  ASL A                                     ; $8B91AF |
  TAX                                       ; $8B91B0 |
  LDA.L PTR16_8B91BB,X                      ; $8B91B1 |
  PLX                                       ; $8B91B5 |
  STA.B $00                                 ; $8B91B6 |
  JMP.W ($0000)                             ; $8B91B8 |

PTR16_8B91BB:
  dw CODE_8B91DB                            ; $8B91BB |
  dw CODE_8B91EF                            ; $8B91BD |
  dw CODE_8B91FE                            ; $8B91BF |
  dw CODE_8B92B9                            ; $8B91C1 |
  dw CODE_8B92D8                            ; $8B91C3 |
  dw CODE_8B9233                            ; $8B91C5 |
  dw CODE_8B929F                            ; $8B91C7 |
  dw CODE_8B91DB                            ; $8B91C9 |
  dw CODE_8B91DB                            ; $8B91CB |
  dw CODE_8B91DB                            ; $8B91CD |
  dw CODE_8B91DB                            ; $8B91CF |
  dw CODE_8B91DB                            ; $8B91D1 |
  dw CODE_8B91DB                            ; $8B91D3 |
  dw CODE_8B91DB                            ; $8B91D5 |
  dw CODE_8B91DB                            ; $8B91D7 |
  dw CODE_8B92E5                            ; $8B91D9 |

CODE_8B91DB:
  LDA.W #$0040                              ; $8B91DB |
  STA.B $2C,X                               ; $8B91DE |
  LDA.W #$0007                              ; $8B91E0 |
  STA.B $1A,X                               ; $8B91E3 |

CODE_8B91E5:
  JSL.L CODE_FL_86C70D                      ; $8B91E5 |
  LDA.W #$0004                              ; $8B91E9 |
  STA.B $1A,X                               ; $8B91EC |
  RTL                                       ; $8B91EE |

CODE_8B91EF:
  LDA.W #$3059                              ; $8B91EF |
  JSL.L CODE_FL_86CAEE                      ; $8B91F2 |
  LDA.W #$0009                              ; $8B91F6 |
  STA.B $1A,X                               ; $8B91F9 |

CODE_8B91FB:
  JMP.W CODE_FL_8B92F4                      ; $8B91FB |

CODE_8B91FE:
  LDA.W #$3059                              ; $8B91FE |
  JSL.L CODE_FL_86CAEE                      ; $8B9201 |
  LDA.W #$FC00                              ; $8B9205 |
  STA.B $28,X                               ; $8B9208 |
  LDA.W #$0004                              ; $8B920A |
  STA.B $46,X                               ; $8B920D |
  LDA.W #$000B                              ; $8B920F |
  STA.B $1A,X                               ; $8B9212 |

CODE_8B9214:
  JSL.L CODE_FL_8CFC16                      ; $8B9214 |
  BNE CODE_8B9232                           ; $8B9218 |
  JSL.L CODE_FL_8B92F4                      ; $8B921A |
  BEQ CODE_8B9232                           ; $8B921E |
  LDA.B $46,X                               ; $8B9220 |
  BEQ CODE_8B9232                           ; $8B9222 |
  DEC.B $46,X                               ; $8B9224 |
  LDA.W #$00AC                              ; $8B9226 |
  JSL.L CODE_FL_8089BD                      ; $8B9229 |
  LDA.W #$FE00                              ; $8B922D |
  STA.B $28,X                               ; $8B9230 |

CODE_8B9232:
  RTL                                       ; $8B9232 |

CODE_8B9233:
  STZ.B $20,X                               ; $8B9233 |
  LDA.W #$F88F                              ; $8B9235 |
  STA.B $00,X                               ; $8B9238 |
  STZ.B $20,X                               ; $8B923A |
  LDA.W #$0050                              ; $8B923C |
  STA.B $2C,X                               ; $8B923F |
  STZ.B $46,X                               ; $8B9241 |
  LDA.W #$000D                              ; $8B9243 |
  STA.B $1A,X                               ; $8B9246 |

CODE_8B9248:
  DEC.B $46,X                               ; $8B9248 |
  BPL CODE_8B9258                           ; $8B924A |
  LDA.W #$000A                              ; $8B924C |
  STA.B $46,X                               ; $8B924F |
  LDA.W #$0021                              ; $8B9251 |
  JSL.L push_sound_queue                    ; $8B9254 |

CODE_8B9258:
  JSL.L CODE_FL_86C393                      ; $8B9258 |
  JSL.L CODE_FL_8B9307                      ; $8B925C |
  JSL.L CODE_FL_86C70D                      ; $8B9260 |
  LDA.W #$FC00                              ; $8B9264 |
  STA.B $28,X                               ; $8B9267 |
  LDA.W #$00BC                              ; $8B9269 |
  JSL.L CODE_FL_8089BD                      ; $8B926C |
  INC.B $1A,X                               ; $8B9270 |

CODE_8B9272:
  JSL.L CODE_FL_8B9307                      ; $8B9272 |
  LDA.B $0D,X                               ; $8B9276 |
  CMP.W #$0010                              ; $8B9278 |
  BPL CODE_8B928F                           ; $8B927B |
  LDA.W #$FD00                              ; $8B927D |
  STA.B $28,X                               ; $8B9280 |
  JSL.L CODE_FL_8CFAD9                      ; $8B9282 |
  LDA.W #$000D                              ; $8B9286 |
  JSL.L push_sound_queue                    ; $8B9289 |
  INC.B $1A,X                               ; $8B928D |

CODE_8B928F:
  RTL                                       ; $8B928F |

CODE_8B9290:
  JSL.L CODE_FL_8B9307                      ; $8B9290 |
  LDA.B $0D,X                               ; $8B9294 |
  CMP.W #$FFE0                              ; $8B9296 |
  BPL CODE_8B928F                           ; $8B9299 |
  JML.L CODE_FL_86CA36                      ; $8B929B |

CODE_8B929F:
  LDA.W #$FA00                              ; $8B929F |
  STA.B $28,X                               ; $8B92A2 |
  LDA.W #$0011                              ; $8B92A4 |
  STA.B $1A,X                               ; $8B92A7 |

CODE_8B92A9:
  JSL.L CODE_FL_8CFC16                      ; $8B92A9 |
  BNE CODE_8B92B8                           ; $8B92AD |
  LDA.W #$00AC                              ; $8B92AF |
  JSL.L CODE_FL_8089BD                      ; $8B92B2 |
  BRA CODE_8B92CD                           ; $8B92B6 |

CODE_8B92B8:
  RTL                                       ; $8B92B8 |

CODE_8B92B9:
  LDA.W #$01FA                              ; $8B92B9 |
  JSL.L CODE_FL_86C9A7                      ; $8B92BC |
  BCS CODE_8B92CD                           ; $8B92C0 |
  STX.B $3A,Y                               ; $8B92C2 |
  STY.B $44,X                               ; $8B92C4 |
  LDA.W #$00BC                              ; $8B92C6 |
  JSL.L CODE_FL_8089BD                      ; $8B92C9 |

CODE_8B92CD:
  TDC                                       ; $8B92CD |
  STA.L $7E7C04                             ; $8B92CE |
  LDA.W #$0004                              ; $8B92D2 |
  STA.B $1A,X                               ; $8B92D5 |
  RTL                                       ; $8B92D7 |

CODE_8B92D8:
  PHX                                       ; $8B92D8 |
  LDA.B $44,X                               ; $8B92D9 |
  STZ.B $44,X                               ; $8B92DB |
  TAX                                       ; $8B92DD |
  JSL.L CODE_FL_86CA36                      ; $8B92DE |
  PLX                                       ; $8B92E2 |
  BRA CODE_8B92CD                           ; $8B92E3 |

CODE_8B92E5:
  PHX                                       ; $8B92E5 |
  LDA.B $44,X                               ; $8B92E6 |
  BEQ CODE_8B92EF                           ; $8B92E8 |
  TAX                                       ; $8B92EA |
  JSL.L CODE_FL_86CA36                      ; $8B92EB |

CODE_8B92EF:
  PLX                                       ; $8B92EF |
  JML.L CODE_FL_86CA36                      ; $8B92F0 |

CODE_FL_8B92F4:
  LDA.L $7E7C04                             ; $8B92F4 |
  CMP.B $3E,X                               ; $8B92F8 |
  BEQ CODE_8B9303                           ; $8B92FA |
  LDA.W #$0004                              ; $8B92FC |
  STA.B $1A,X                               ; $8B92FF |
  TDC                                       ; $8B9301 |
  RTL                                       ; $8B9302 |

CODE_8B9303:
  LDA.W #$0001                              ; $8B9303 |
  RTL                                       ; $8B9306 |

CODE_FL_8B9307:
  LDA.B $42                                 ; $8B9307 |
  AND.W #$0003                              ; $8B9309 |
  BNE CODE_8B934A                           ; $8B930C |
  LDA.W #$0073                              ; $8B930E |
  JSL.L CODE_FL_86C9C5                      ; $8B9311 |
  BCS CODE_8B934A                           ; $8B9315 |
  LDA.B $04,X                               ; $8B9317 |
  AND.W #$2020                              ; $8B9319 |
  CMP.W #$2020                              ; $8B931C |
  BNE CODE_8B932C                           ; $8B931F |
  LDA.W #$FF00                              ; $8B9321 |
  STA.W $0026,Y                             ; $8B9324 |
  LDA.W #$FFF4                              ; $8B9327 |
  BRA CODE_8B9335                           ; $8B932A |

CODE_8B932C:
  LDA.W #$0100                              ; $8B932C |
  STA.W $0026,Y                             ; $8B932F |
  LDA.W #$000C                              ; $8B9332 |

CODE_8B9335:
  CLC                                       ; $8B9335 |
  ADC.B $09,X                               ; $8B9336 |
  STA.W $0009,Y                             ; $8B9338 |
  LDA.W #$0300                              ; $8B933B |
  STA.W $0028,Y                             ; $8B933E |
  LDA.B $0D,X                               ; $8B9341 |
  SEC                                       ; $8B9343 |
  SBC.W #$0018                              ; $8B9344 |
  STA.W $000D,Y                             ; $8B9347 |

CODE_8B934A:
  RTL                                       ; $8B934A |

CODE_8B934B:
  JSL.L CODE_FL_86C3F8                      ; $8B934B |
  LDY.B $3A,X                               ; $8B934F |
  LDA.B $1A,X                               ; $8B9351 |
  BNE CODE_8B9379                           ; $8B9353 |
  LDA.W #$8000                              ; $8B9355 |
  ORA.W #$0100                              ; $8B9358 |
  STA.B $22,X                               ; $8B935B |
  LDA.W $0006,Y                             ; $8B935D |
  STA.B $06,X                               ; $8B9360 |
  LDA.W $0014,Y                             ; $8B9362 |
  DEC A                                     ; $8B9365 |
  STA.B $14,X                               ; $8B9366 |
  LDA.W #$0043                              ; $8B9368 |
  STA.B $02,X                               ; $8B936B |
  LDA.W #$3059                              ; $8B936D |
  INC A                                     ; $8B9370 |
  JSL.L CODE_FL_86CAEE                      ; $8B9371 |
  LDY.B $3A,X                               ; $8B9375 |
  INC.B $1A,X                               ; $8B9377 |

CODE_8B9379:
  LDA.W $0009,Y                             ; $8B9379 |
  STA.B $09,X                               ; $8B937C |
  LDA.W $000D,Y                             ; $8B937E |
  STA.B $0D,X                               ; $8B9381 |
  LDA.W $0004,Y                             ; $8B9383 |
  STA.B $04,X                               ; $8B9386 |
  RTL                                       ; $8B9388 |

CODE_8B9389:
  JSL.L CODE_FL_8CFD8F                      ; $8B9389 |
  PHX                                       ; $8B938D |
  ASL A                                     ; $8B938E |
  TAX                                       ; $8B938F |
  LDA.L PTR16_8B939A,X                      ; $8B9390 |
  PLX                                       ; $8B9394 |
  STA.B $00                                 ; $8B9395 |
  JMP.W ($0000)                             ; $8B9397 |

PTR16_8B939A:
  dw CODE_8B93A2                            ; $8B939A |
  dw CODE_8B93E6                            ; $8B939C |
  dw CODE_8B9411                            ; $8B939E |
  dw CODE_8B9413                            ; $8B93A0 |

CODE_8B93A2:
  LDA.W #$1021                              ; $8B93A2 |
  JSL.L CODE_FL_86CAEE                      ; $8B93A5 |
  JSL.L CODE_FL_8CFF15                      ; $8B93A9 |
  LDA.B $3A,X                               ; $8B93AD |
  ASL A                                     ; $8B93AF |
  ASL A                                     ; $8B93B0 |
  ASL A                                     ; $8B93B1 |
  ASL A                                     ; $8B93B2 |
  TAY                                       ; $8B93B3 |
  LDA.W CODE_00C4B1,Y                       ; $8B93B4 |
  STA.B $09,X                               ; $8B93B7 |
  LDA.W CODE_00C4B3,Y                       ; $8B93B9 |
  STA.B $0D,X                               ; $8B93BC |
  LDA.W CODE_00C4B5,Y                       ; $8B93BE |
  STA.B $11,X                               ; $8B93C1 |
  LDA.W CODE_00C4B7,Y                       ; $8B93C3 |
  STA.B $26,X                               ; $8B93C6 |
  LDA.W LOOSE_OP_00C4B9,Y                   ; $8B93C8 |
  STA.B $28,X                               ; $8B93CB |
  LDA.W CODE_00C4BB,Y                       ; $8B93CD |
  STA.B $04,X                               ; $8B93D0 |
  LDA.W LOOSE_OP_00C4BD,Y                   ; $8B93D2 |
  STA.B $3C,X                               ; $8B93D5 |
  LDA.W LOOSE_OP_00C4BF,Y                   ; $8B93D7 |
  STA.B $3E,X                               ; $8B93DA |
  LDA.W #$8000                              ; $8B93DC |
  ORA.W #$0100                              ; $8B93DF |
  STA.B $22,X                               ; $8B93E2 |
  INC.B $1A,X                               ; $8B93E4 |

CODE_8B93E6:
  LDA.B $3C,X                               ; $8B93E6 |
  AND.W #$FFFE                              ; $8B93E8 |
  STA.B $00                                 ; $8B93EB |
  LDA.B $09,X                               ; $8B93ED |
  AND.W #$FFFE                              ; $8B93EF |
  CMP.B $00                                 ; $8B93F2 |
  BNE CODE_8B9410                           ; $8B93F4 |
  STZ.B $26,X                               ; $8B93F6 |
  STZ.B $28,X                               ; $8B93F8 |
  STZ.B $2A,X                               ; $8B93FA |
  LDA.B $3E,X                               ; $8B93FC |
  BPL CODE_8B9407                           ; $8B93FE |
  LDA.W #$1022                              ; $8B9400 |
  JSL.L CODE_FL_86CAEE                      ; $8B9403 |

CODE_8B9407:
  LDA.B $3E,X                               ; $8B9407 |
  AND.W #$00FF                              ; $8B9409 |
  STA.B $2C,X                               ; $8B940C |
  INC.B $1A,X                               ; $8B940E |

CODE_8B9410:
  RTL                                       ; $8B9410 |

CODE_8B9411:
  INC.B $1A,X                               ; $8B9411 |

CODE_8B9413:
  RTL                                       ; $8B9413 |

CODE_8B9414:
  JSL.L CODE_FL_86C3F8                      ; $8B9414 |
  PHX                                       ; $8B9418 |
  ASL A                                     ; $8B9419 |
  TAX                                       ; $8B941A |
  LDA.L PTR16_8B9425,X                      ; $8B941B |
  PLX                                       ; $8B941F |
  STA.B $00                                 ; $8B9420 |
  JMP.W ($0000)                             ; $8B9422 |

PTR16_8B9425:
  dw CODE_8B942D                            ; $8B9425 |
  dw CODE_8B9467                            ; $8B9427 |
  dw CODE_8B9479                            ; $8B9429 |
  dw CODE_8B949B                            ; $8B942B |

CODE_8B942D:
  LDA.W #$32CE                              ; $8B942D |
  STA.B $00,X                               ; $8B9430 |
  LDA.W #$0045                              ; $8B9432 |
  STA.B $02,X                               ; $8B9435 |
  STZ.B $06,X                               ; $8B9437 |
  LDA.W #$8000                              ; $8B9439 |
  ORA.W #$0100                              ; $8B943C |
  STA.B $22,X                               ; $8B943F |
  LDA.W #$0013                              ; $8B9441 |
  JSL.L CODE_FL_86C9C2                      ; $8B9444 |
  BCS CODE_8B945B                           ; $8B9448 |
  JSL.L CODE_FL_85AAB6                      ; $8B944A |
  LDA.W #$0077                              ; $8B944E |
  JSL.L CODE_FL_86CAE6                      ; $8B9451 |
  LDA.W #$0043                              ; $8B9455 |
  STA.W $0002,Y                             ; $8B9458 |

CODE_8B945B:
  LDA.W #$0020                              ; $8B945B |
  STA.B $14,X                               ; $8B945E |
  LDA.W #$0040                              ; $8B9460 |
  STA.B $4C,X                               ; $8B9463 |
  INC.B $1A,X                               ; $8B9465 |

CODE_8B9467:
  LDY.B $3A,X                               ; $8B9467 |
  JSL.L CODE_FL_8CFC49                      ; $8B9469 |
  LDA.W #$FD00                              ; $8B946D |
  STA.B $28,X                               ; $8B9470 |
  LDA.W #$FD00                              ; $8B9472 |
  STA.B $26,X                               ; $8B9475 |
  INC.B $1A,X                               ; $8B9477 |

CODE_8B9479:
  JSL.L CODE_FL_86C82F                      ; $8B9479 |
  LDA.B $28,X                               ; $8B947D |
  BMI CODE_8B949A                           ; $8B947F |
  LDA.B $0D,X                               ; $8B9481 |
  CMP.W #$00A0                              ; $8B9483 |
  BMI CODE_8B949A                           ; $8B9486 |
  LDY.W #$08F0                              ; $8B9488 |
  LDA.W #$0018                              ; $8B948B |
  STA.W $001A,Y                             ; $8B948E |
  LDA.W #$0014                              ; $8B9491 |
  JSL.L CODE_FL_8089BD                      ; $8B9494 |
  INC.B $1A,X                               ; $8B9498 |

CODE_8B949A:
  RTL                                       ; $8B949A |

CODE_8B949B:
  LDY.W #$08F0                              ; $8B949B |
  LDA.W $001A,Y                             ; $8B949E |
  CMP.W #$0019                              ; $8B94A1 |
  BEQ CODE_8B94AA                           ; $8B94A4 |
  JML.L CODE_FL_86CA36                      ; $8B94A6 |

CODE_8B94AA:
  JSL.L CODE_FL_8CFC49                      ; $8B94AA |
  SEC                                       ; $8B94AE |
  SBC.W #$0014                              ; $8B94AF |
  STA.B $0D,X                               ; $8B94B2 |
  RTL                                       ; $8B94B4 |

CODE_8B94B5:
  JSL.L CODE_FL_85F885                      ; $8B94B5 |
  JSR.W CODE_FN_8BACEF                      ; $8B94B9 |
  JSR.W CODE_FN_8BA61C                      ; $8B94BC |
  JSL.L CODE_FL_86C424                      ; $8B94BF |
  PHX                                       ; $8B94C3 |
  ASL A                                     ; $8B94C4 |
  TAX                                       ; $8B94C5 |
  LDA.L PTR16_8B94D0,X                      ; $8B94C6 |
  PLX                                       ; $8B94CA |
  STA.B $00                                 ; $8B94CB |
  JMP.W ($0000)                             ; $8B94CD |

PTR16_8B94D0:
  dw CODE_8B94DE                            ; $8B94D0 |
  dw CODE_8B95AC                            ; $8B94D2 |
  dw CODE_8B9633                            ; $8B94D4 |
  dw CODE_8B9688                            ; $8B94D6 |
  dw CODE_8B97CA                            ; $8B94D8 |
  dw CODE_8B997C                            ; $8B94DA |
  dw CODE_8B9C72                            ; $8B94DC |

CODE_8B94DE:
  LDA.B $A6                                 ; $8B94DE |
  BNE CODE_8B94E8                           ; $8B94E0 |
  LDA.W #$0040                              ; $8B94E2 |
  STA.W $0B29                               ; $8B94E5 |

CODE_8B94E8:
  LDA.W #$0001                              ; $8B94E8 |
  STA.L $7E7D90                             ; $8B94EB |
  PHX                                       ; $8B94EF |
  LDA.W #$0041                              ; $8B94F0 |
  STA.W $1FAC                               ; $8B94F3 |
  SEP #$20                                  ; $8B94F6 |
  LDA.B #$44                                ; $8B94F8 |
  STA.W $210B                               ; $8B94FA |
  REP #$20                                  ; $8B94FD |
  LDY.W #$0008                              ; $8B94FF |
  JSL.L CODE_FL_80972B                      ; $8B9502 |
  LDY.W #$0800                              ; $8B9506 |
  JSL.L CODE_FL_80972B                      ; $8B9509 |
  TDC                                       ; $8B950D |
  STA.L $7EDAC0                             ; $8B950E |
  JSR.W CODE_FN_8BA91D                      ; $8B9512 |
  LDA.W #$0001                              ; $8B9515 |
  STA.W $1D60                               ; $8B9518 |
  LDA.W #$00C0                              ; $8B951B |
  STA.W $1FC6                               ; $8B951E |
  PHB                                       ; $8B9521 |
  PEA.W $8A00                               ; $8B9522 |
  PLB                                       ; $8B9525 |
  PLB                                       ; $8B9526 |
  LDY.W #$9C38                              ; $8B9527 |
  JSL.L CODE_FL_8AAF61                      ; $8B952A |
  PLB                                       ; $8B952E |
  LDX.W #DATA_8897DD                        ; $8B952F |
  JSL.L sound_transfer_blocks               ; $8B9532 |
  LDY.W #$8160                              ; $8B9536 |
  JSL.L CODE_FL_808D78                      ; $8B9539 |
  PLX                                       ; $8B953D |
  LDA.W #$00B0                              ; $8B953E |
  STA.W $19B4                               ; $8B9541 |
  LDA.W #$000F                              ; $8B9544 |
  STA.W $1CAC                               ; $8B9547 |
  STZ.W $1C8E                               ; $8B954A |
  LDA.W #$0344                              ; $8B954D |
  STA.W $1FD0                               ; $8B9550 |
  LDA.W #$0038                              ; $8B9553 |
  STA.W $1FD2                               ; $8B9556 |
  TDC                                       ; $8B9559 |
  STA.B $3C,X                               ; $8B955A |
  LDA.W #$0080                              ; $8B955C |
  STA.B $04,X                               ; $8B955F |
  LDA.W #$8019                              ; $8B9561 |
  STA.B $22,X                               ; $8B9564 |
  LDA.W #$3000                              ; $8B9566 |
  STA.B $00,X                               ; $8B9569 |
  LDA.W #$0088                              ; $8B956B |
  STA.B $14,X                               ; $8B956E |
  JSL.L CODE_FL_86C63F                      ; $8B9570 |
  STZ.W $1C96                               ; $8B9574 |
  STZ.W $1CA0                               ; $8B9577 |
  STZ.B $44,X                               ; $8B957A |
  SEP #$20                                  ; $8B957C |
  LDA.B #$0A                                ; $8B957E |
  STA.B $36,X                               ; $8B9580 |
  REP #$20                                  ; $8B9582 |
  LDA.W #$0001                              ; $8B9584 |
  STA.W $1CA6                               ; $8B9587 |
  LDA.W #$0002                              ; $8B958A |
  STA.W $1CA4                               ; $8B958D |
  LDA.W #$0140                              ; $8B9590 |
  STA.B $0D,X                               ; $8B9593 |
  LDA.W #$0004                              ; $8B9595 |
  STA.B $2C,X                               ; $8B9598 |
  STA.W $1F38                               ; $8B959A |
  STZ.B $46,X                               ; $8B959D |
  STZ.W $1662                               ; $8B959F |
  STZ.W $1672                               ; $8B95A2 |
  STZ.W $1CAE                               ; $8B95A5 |
  STZ.W $1CB0                               ; $8B95A8 |
  RTL                                       ; $8B95AB |

CODE_8B95AC:
  LDA.B $46,X                               ; $8B95AC |
  PHX                                       ; $8B95AE |
  ASL A                                     ; $8B95AF |
  TAX                                       ; $8B95B0 |
  LDA.L PTR16_8B95BB,X                      ; $8B95B1 |
  PLX                                       ; $8B95B5 |
  STA.B $00                                 ; $8B95B6 |
  JMP.W ($0000)                             ; $8B95B8 |

PTR16_8B95BB:
  dw CODE_8B95C1                            ; $8B95BB |
  dw CODE_8B95E6                            ; $8B95BD |
  dw CODE_8B9616                            ; $8B95BF |

CODE_8B95C1:
  JSL.L CODE_FL_86C70D                      ; $8B95C1 |
  PHX                                       ; $8B95C5 |
  LDX.W #DATA_8897D0                        ; $8B95C6 |
  JSL.L sound_transfer_blocks               ; $8B95C9 |
  LDX.W #DATA_8897E7                        ; $8B95CD |
  JSL.L sound_transfer_blocks               ; $8B95D0 |
  PLX                                       ; $8B95D4 |
  STZ.W $1CAA                               ; $8B95D5 |
  INC.B $46,X                               ; $8B95D8 |
  LDA.W #$0707                              ; $8B95DA |
  STA.L $7E8004                             ; $8B95DD |
  STA.L $7E8006                             ; $8B95E1 |
  RTL                                       ; $8B95E5 |

CODE_8B95E6:
  JSR.W CODE_FN_8BAD86                      ; $8B95E6 |
  LDA.W $1CAA                               ; $8B95E9 |
  INC A                                     ; $8B95EC |
  STA.W $1CAA                               ; $8B95ED |
  CMP.W #$0008                              ; $8B95F0 |
  BNE CODE_8B9615                           ; $8B95F3 |
  LDA.W #$0100                              ; $8B95F5 |
  STA.W $1662                               ; $8B95F8 |
  STA.W $1672                               ; $8B95FB |
  STZ.W $1CA4                               ; $8B95FE |
  LDA.W #$0586                              ; $8B9601 |
  JSL.L CODE_FL_8CF9D2                      ; $8B9604 |
  BCS CODE_8B961F                           ; $8B9608 |
  JSL.L CODE_FL_8DA5A4                      ; $8B960A |
  LDA.W #$0020                              ; $8B960E |
  STA.B $2C,X                               ; $8B9611 |
  INC.B $46,X                               ; $8B9613 |

CODE_8B9615:
  RTL                                       ; $8B9615 |

CODE_8B9616:
  JSL.L CODE_FL_86C70D                      ; $8B9616 |
  INC.B $1A,X                               ; $8B961A |
  STZ.B $46,X                               ; $8B961C |
  RTL                                       ; $8B961E |

CODE_8B961F:
  LDA.W #$0001                              ; $8B961F |
  STA.W $1C8E                               ; $8B9622 |
  LDA.W #$0006                              ; $8B9625 |
  STA.B $1A,X                               ; $8B9628 |
  LDA.W #$0006                              ; $8B962A |
  STA.B $46,X                               ; $8B962D |
  JML.L CODE_FL_84F1E8                      ; $8B962F |

CODE_8B9633:
  LDA.B $46,X                               ; $8B9633 |
  PHX                                       ; $8B9635 |
  ASL A                                     ; $8B9636 |
  TAX                                       ; $8B9637 |
  LDA.L PTR16_8B9642,X                      ; $8B9638 |
  PLX                                       ; $8B963C |
  STA.B $00                                 ; $8B963D |
  JMP.W ($0000)                             ; $8B963F |

PTR16_8B9642:
  dw CODE_8B9648                            ; $8B9642 |
  dw CODE_8B965A                            ; $8B9644 |
  dw CODE_8B9676                            ; $8B9646 |

CODE_8B9648:
  LDA.B $0D,X                               ; $8B9648 |
  DEC A                                     ; $8B964A |
  STA.B $0D,X                               ; $8B964B |
  CMP.W #$006C                              ; $8B964D |
  BNE CODE_8B9659                           ; $8B9650 |
  LDA.W #$0010                              ; $8B9652 |
  STA.B $2C,X                               ; $8B9655 |
  INC.B $46,X                               ; $8B9657 |

CODE_8B9659:
  RTL                                       ; $8B9659 |

CODE_8B965A:
  JSL.L CODE_FL_86C70D                      ; $8B965A |
  LDA.W #$0001                              ; $8B965E |
  STA.B $E4                                 ; $8B9661 |
  LDA.W #$FCE5                              ; $8B9663 |
  JSL.L CODE_FL_809934                      ; $8B9666 |
  BCC CODE_8B9675                           ; $8B966A |
  STZ.B $E4                                 ; $8B966C |
  LDA.W #$0010                              ; $8B966E |
  STA.B $2C,X                               ; $8B9671 |
  INC.B $46,X                               ; $8B9673 |

CODE_8B9675:
  RTL                                       ; $8B9675 |

CODE_8B9676:
  JSL.L CODE_FL_86C70D                      ; $8B9676 |
  JSR.W CODE_FN_8BA60D                      ; $8B967A |
  STZ.W $1CA6                               ; $8B967D |
  JSR.W CODE_FN_8B970C                      ; $8B9680 |
  STZ.B $46,X                               ; $8B9683 |
  INC.B $1A,X                               ; $8B9685 |
  RTL                                       ; $8B9687 |

CODE_8B9688:
  JSR.W CODE_FN_8B96A4                      ; $8B9688 |
  LDA.B $46,X                               ; $8B968B |
  PHX                                       ; $8B968D |
  ASL A                                     ; $8B968E |
  TAX                                       ; $8B968F |
  LDA.L PTR16_8B969A,X                      ; $8B9690 |
  PLX                                       ; $8B9694 |
  STA.B $00                                 ; $8B9695 |
  JMP.W ($0000)                             ; $8B9697 |

PTR16_8B969A:
  dw CODE_8B9726                            ; $8B969A |
  dw CODE_8B9768                            ; $8B969C |
  dw CODE_8B976F                            ; $8B969E |
  dw CODE_8B97A9                            ; $8B96A0 |
  dw CODE_8B97B5                            ; $8B96A2 |

CODE_FN_8B96A4:
  LDA.W $0BF2                               ; $8B96A4 |
  BPL CODE_8B96E7                           ; $8B96A7 |
  AND.W #$3FFF                              ; $8B96A9 |
  STA.W $0BF2                               ; $8B96AC |
  LDA.W $0BF7                               ; $8B96AF |
  AND.W #$00FF                              ; $8B96B2 |
  CMP.W #$0001                              ; $8B96B5 |
  BEQ CODE_8B96E7                           ; $8B96B8 |
  CMP.W #$0002                              ; $8B96BA |
  BEQ CODE_8B96E8                           ; $8B96BD |
  LDA.B $3C,X                               ; $8B96BF |
  CMP.W #$0080                              ; $8B96C1 |
  BCS CODE_8B9707                           ; $8B96C4 |
  CLC                                       ; $8B96C6 |
  ADC.W #$0007                              ; $8B96C7 |
  STA.B $3C,X                               ; $8B96CA |
  LDY.W #$C702                              ; $8B96CC |
  BIT.W #$0001                              ; $8B96CF |
  BEQ CODE_8B96D7                           ; $8B96D2 |
  LDY.W #$C70F                              ; $8B96D4 |

CODE_8B96D7:
  JSR.W CODE_FN_8BA873                      ; $8B96D7 |
  LDA.W #$0030                              ; $8B96DA |
  JSL.L CODE_FL_8089BD                      ; $8B96DD |
  LDA.W #$0020                              ; $8B96E1 |
  STA.W $0BF8                               ; $8B96E4 |

CODE_8B96E7:
  RTS                                       ; $8B96E7 |

CODE_8B96E8:
  LDA.B $3C,X                               ; $8B96E8 |
  CMP.W #$0080                              ; $8B96EA |
  BCS CODE_8B9707                           ; $8B96ED |
  CLC                                       ; $8B96EF |
  ADC.W #$0005                              ; $8B96F0 |
  STA.B $3C,X                               ; $8B96F3 |
  LDY.W #$C702                              ; $8B96F5 |
  BIT.W #$0001                              ; $8B96F8 |
  BEQ CODE_8B9700                           ; $8B96FB |
  LDY.W #$C70F                              ; $8B96FD |

CODE_8B9700:
  LDA.W #$0008                              ; $8B9700 |
  STA.W $0BF8                               ; $8B9703 |
  RTS                                       ; $8B9706 |

CODE_8B9707:
  JSL.L CODE_FL_8BA608                      ; $8B9707 |
  RTS                                       ; $8B970B |

CODE_FN_8B970C:
  LDA.W #$0080                              ; $8B970C |
  STA.B $2C,X                               ; $8B970F |
  JSL.L CODE_FL_86C4A5                      ; $8B9711 |
  JSL.L CODE_FL_85B46F                      ; $8B9715 |
  LDA.W #$FF80                              ; $8B9719 |
  DEC.B $1A                                 ; $8B971C |
  BEQ CODE_8B9723                           ; $8B971E |
  LDA.W #$0080                              ; $8B9720 |

CODE_8B9723:
  STA.B $26,X                               ; $8B9723 |
  RTS                                       ; $8B9725 |

CODE_8B9726:
  LDY.W #$0001                              ; $8B9726 |
  JSL.L CODE_FL_86C503                      ; $8B9729 |
  JSR.W CODE_FN_8B974B                      ; $8B972D |
  JSL.L CODE_FL_86C70D                      ; $8B9730 |
  JSL.L CODE_FL_86C4A5                      ; $8B9734 |
  JSL.L CODE_FL_86C55C                      ; $8B9738 |
  BPL CODE_8B9742                           ; $8B973C |
  EOR.W #$FFFF                              ; $8B973E |
  INC A                                     ; $8B9741 |

CODE_8B9742:
  CMP.W #$0028                              ; $8B9742 |
  BCC CODE_8B9748                           ; $8B9745 |
  RTL                                       ; $8B9747 |

CODE_8B9748:
  INC.B $46,X                               ; $8B9748 |
  RTL                                       ; $8B974A |

CODE_FN_8B974B:
  JSL.L CODE_FL_86C859                      ; $8B974B |
  LDA.B $09,X                               ; $8B974F |
  CMP.W #$0040                              ; $8B9751 |
  BCC CODE_8B975C                           ; $8B9754 |
  CMP.W #$00C0                              ; $8B9756 |
  BCS CODE_8B9762                           ; $8B9759 |
  RTS                                       ; $8B975B |

CODE_8B975C:
  LDA.W #$0080                              ; $8B975C |
  STA.B $26,X                               ; $8B975F |
  RTS                                       ; $8B9761 |

CODE_8B9762:
  LDA.W #$FF80                              ; $8B9762 |
  STA.B $26,X                               ; $8B9765 |
  RTS                                       ; $8B9767 |

CODE_8B9768:
  INC.B $46,X                               ; $8B9768 |
  LDA.W #$0030                              ; $8B976A |
  STA.B $2C,X                               ; $8B976D |

CODE_8B976F:
  JSL.L CODE_FL_86C70D                      ; $8B976F |
  JSL.L CODE_FL_86C82F                      ; $8B9773 |
  JSL.L CODE_FL_86C870                      ; $8B9777 |
  CMP.W #$B000                              ; $8B977B |
  BCS CODE_8B9781                           ; $8B977E |
  RTL                                       ; $8B9780 |

CODE_8B9781:
  LDA.W #$00B0                              ; $8B9781 |
  STA.B $0D,X                               ; $8B9784 |
  LDA.W #$001F                              ; $8B9786 |
  STA.B $2C,X                               ; $8B9789 |
  LDA.W #$0001                              ; $8B978B |
  JSL.L CODE_FL_B3FE45                      ; $8B978E |
  LDY.W #$C719                              ; $8B9792 |
  JSR.W CODE_FN_8BA873                      ; $8B9795 |
  LDA.W #$001B                              ; $8B9798 |
  JSL.L push_sound_queue                    ; $8B979B |
  LDA.W #$0030                              ; $8B979F |
  JSL.L CODE_FL_8089BD                      ; $8B97A2 |
  INC.B $46,X                               ; $8B97A6 |
  RTL                                       ; $8B97A8 |

CODE_8B97A9:
  JSL.L CODE_FL_86C70D                      ; $8B97A9 |
  LDA.W #$FE00                              ; $8B97AD |
  STA.B $28,X                               ; $8B97B0 |
  INC.B $46,X                               ; $8B97B2 |
  RTL                                       ; $8B97B4 |

CODE_8B97B5:
  JSL.L CODE_FL_86C870                      ; $8B97B5 |
  CMP.W #$6C00                              ; $8B97B9 |
  BCC CODE_8B97BF                           ; $8B97BC |
  RTL                                       ; $8B97BE |

CODE_8B97BF:
  LDA.W #$0080                              ; $8B97BF |
  STA.B $2C,X                               ; $8B97C2 |
  LDA.W #$0000                              ; $8B97C4 |
  STA.B $46,X                               ; $8B97C7 |
  RTL                                       ; $8B97C9 |

CODE_8B97CA:
  LDA.B $46,X                               ; $8B97CA |
  PHX                                       ; $8B97CC |
  ASL A                                     ; $8B97CD |
  TAX                                       ; $8B97CE |
  LDA.L PTR16_8B97D9,X                      ; $8B97CF |
  PLX                                       ; $8B97D3 |
  STA.B $00                                 ; $8B97D4 |
  JMP.W ($0000)                             ; $8B97D6 |

PTR16_8B97D9:
  dw CODE_8B97E5                            ; $8B97D9 |
  dw CODE_8B9800                            ; $8B97DB |
  dw CODE_8B986D                            ; $8B97DD |
  dw CODE_8B98AA                            ; $8B97DF |
  dw CODE_8B98DB                            ; $8B97E1 |
  dw CODE_8B9961                            ; $8B97E3 |

CODE_8B97E5:
  JSL.L CODE_FL_86C393                      ; $8B97E5 |
  LDA.B $0D,X                               ; $8B97E9 |
  CMP.W #$006C                              ; $8B97EB |
  BEQ CODE_8B97F8                           ; $8B97EE |
  BCS CODE_8B97F5                           ; $8B97F0 |
  INC.B $0D,X                               ; $8B97F2 |
  RTL                                       ; $8B97F4 |

CODE_8B97F5:
  DEC.B $0D,X                               ; $8B97F5 |
  RTL                                       ; $8B97F7 |

CODE_8B97F8:
  LDA.W #$0040                              ; $8B97F8 |
  STA.B $2C,X                               ; $8B97FB |
  INC.B $46,X                               ; $8B97FD |
  RTL                                       ; $8B97FF |

CODE_8B9800:
  JSL.L CODE_FL_86C393                      ; $8B9800 |
  JSL.L CODE_FL_86C70D                      ; $8B9804 |
  LDA.W #$0001                              ; $8B9808 |
  STA.W $1C8E                               ; $8B980B |
  TDC                                       ; $8B980E |
  STA.W $1FDC                               ; $8B980F |
  STA.W $1FDE                               ; $8B9812 |
  LDY.W #$C6DC                              ; $8B9815 |
  JSR.W CODE_FN_8BA873                      ; $8B9818 |
  LDA.W #$000D                              ; $8B981B |
  JSL.L push_sound_queue                    ; $8B981E |
  LDA.W #$0030                              ; $8B9822 |
  JSL.L CODE_FL_8089BD                      ; $8B9825 |
  INC.B $46,X                               ; $8B9829 |
  REP #$30                                  ; $8B982B |
  PHB                                       ; $8B982D |
  LDA.W #$0000                              ; $8B982E |
  STA.L $7F0000                             ; $8B9831 |
  LDA.W #$07FD                              ; $8B9835 |
  LDX.W #$0001                              ; $8B9838 |
  TXY                                       ; $8B983B |
  INY                                       ; $8B983C |
  MVN $7F,$7F                               ; $8B983D |
  PLB                                       ; $8B9840 |
  STZ.W $1CEE                               ; $8B9841 |
  PHX                                       ; $8B9844 |
  LDX.W #$0060                              ; $8B9845 |
  LDA.W #$000C                              ; $8B9848 |
  STA.B $00                                 ; $8B984B |
  STZ.B $02                                 ; $8B984D |

CODE_8B984F:
  SEP #$20                                  ; $8B984F |
  LDA.B $02                                 ; $8B9851 |
  STA.L $7F0000,X                           ; $8B9853 |
  INX                                       ; $8B9857 |
  INC A                                     ; $8B9858 |
  STA.B $02                                 ; $8B9859 |
  AND.B #$0F                                ; $8B985B |
  BNE CODE_8B984F                           ; $8B985D |
  REP #$20                                  ; $8B985F |
  TXA                                       ; $8B9861 |
  CLC                                       ; $8B9862 |
  ADC.W #$0070                              ; $8B9863 |
  TAX                                       ; $8B9866 |
  DEC.B $00                                 ; $8B9867 |
  BNE CODE_8B984F                           ; $8B9869 |
  PLX                                       ; $8B986B |
  RTL                                       ; $8B986C |

CODE_8B986D:
  JSL.L CODE_FL_86C393                      ; $8B986D |
  LDA.W $1CEE                               ; $8B9871 |
  CMP.W #$0800                              ; $8B9874 |
  BEQ CODE_8B98A1                           ; $8B9877 |
  PHX                                       ; $8B9879 |
  LDA.W #$007F                              ; $8B987A |
  STA.B $00                                 ; $8B987D |
  LDA.W $1CEE                               ; $8B987F |
  CLC                                       ; $8B9882 |
  ADC.W #$0000                              ; $8B9883 |
  TAY                                       ; $8B9886 |
  LDX.W #$0400                              ; $8B9887 |
  LDA.W $1CEE                               ; $8B988A |
  CLC                                       ; $8B988D |
  ADC.W #$0000                              ; $8B988E |
  JSL.L CODE_FL_8096F8                      ; $8B9891 |
  PLX                                       ; $8B9895 |
  LDA.W $1CEE                               ; $8B9896 |
  CLC                                       ; $8B9899 |
  ADC.W #$0400                              ; $8B989A |
  STA.W $1CEE                               ; $8B989D |
  RTL                                       ; $8B98A0 |

CODE_8B98A1:
  INC.B $46,X                               ; $8B98A1 |
  LDA.W #$3000                              ; $8B98A3 |
  JML.L CODE_JL_8BF6E5                      ; $8B98A6 |

CODE_8B98AA:
  JSL.L CODE_FL_86C393                      ; $8B98AA |
  PHX                                       ; $8B98AE |
  JSL.L CODE_FL_8BF714                      ; $8B98AF |
  PLX                                       ; $8B98B3 |
  BCS CODE_8B98B7                           ; $8B98B4 |
  RTL                                       ; $8B98B6 |

CODE_8B98B7:
  STZ.W $1C8E                               ; $8B98B7 |
  STZ.B $3C,X                               ; $8B98BA |
  STZ.B $00,X                               ; $8B98BC |
  LDA.W #$0038                              ; $8B98BE |
  STA.W $1FD2                               ; $8B98C1 |
  LDA.W #$0001                              ; $8B98C4 |
  STA.W $1CA4                               ; $8B98C7 |
  LDA.W #$A000                              ; $8B98CA |
  STA.B $34,X                               ; $8B98CD |
  JSL.L CODE_FL_85A9EF                      ; $8B98CF |
  LDA.W #$0040                              ; $8B98D3 |
  STA.B $2C,X                               ; $8B98D6 |
  INC.B $46,X                               ; $8B98D8 |
  RTL                                       ; $8B98DA |

CODE_8B98DB:
  JSR.W CODE_FN_8B9952                      ; $8B98DB |
  BEQ CODE_8B98E1                           ; $8B98DE |
  RTL                                       ; $8B98E0 |

CODE_8B98E1:
  JSL.L CODE_FL_86C70D                      ; $8B98E1 |
  INC.B $46,X                               ; $8B98E5 |
  LDA.W #$0000                              ; $8B98E7 |
  LDY.W #$0C10                              ; $8B98EA |
  JSR.W CODE_FN_8B9930                      ; $8B98ED |
  INC A                                     ; $8B98F0 |
  LDY.W #$0C60                              ; $8B98F1 |
  JSR.W CODE_FN_8B9943                      ; $8B98F4 |
  INC A                                     ; $8B98F7 |
  LDY.W #$0CB0                              ; $8B98F8 |
  JSR.W CODE_FN_8B9943                      ; $8B98FB |
  INC A                                     ; $8B98FE |
  LDY.W #$0D00                              ; $8B98FF |
  JSR.W CODE_FN_8B9943                      ; $8B9902 |
  LDA.W #$0002                              ; $8B9905 |
  STA.W $0C50                               ; $8B9908 |
  LDA.W #$8000                              ; $8B990B |
  LDY.W #$0D50                              ; $8B990E |
  JSR.W CODE_FN_8B9930                      ; $8B9911 |
  INC A                                     ; $8B9914 |
  LDY.W #$0DA0                              ; $8B9915 |
  JSR.W CODE_FN_8B9943                      ; $8B9918 |
  INC A                                     ; $8B991B |
  LDY.W #$0DF0                              ; $8B991C |
  JSR.W CODE_FN_8B9943                      ; $8B991F |
  INC A                                     ; $8B9922 |
  LDY.W #$0E40                              ; $8B9923 |
  JSR.W CODE_FN_8B9943                      ; $8B9926 |
  LDA.W #$0002                              ; $8B9929 |
  STA.W $0D90                               ; $8B992C |
  RTL                                       ; $8B992F |

CODE_FN_8B9930:
  PHA                                       ; $8B9930 |
  LDA.W #$00C4                              ; $8B9931 |
  PHX                                       ; $8B9934 |
  JSL.L CODE_FL_86C9E0                      ; $8B9935 |
  PLX                                       ; $8B9939 |
  TDC                                       ; $8B993A |
  STA.W $0040,Y                             ; $8B993B |
  PLA                                       ; $8B993E |
  STA.W $004E,Y                             ; $8B993F |
  RTS                                       ; $8B9942 |

CODE_FN_8B9943:
  PHA                                       ; $8B9943 |
  LDA.W #$00CF                              ; $8B9944 |
  PHX                                       ; $8B9947 |
  JSL.L CODE_FL_86C9E0                      ; $8B9948 |
  PLX                                       ; $8B994C |
  PLA                                       ; $8B994D |
  STA.W $004E,Y                             ; $8B994E |
  RTS                                       ; $8B9951 |

CODE_FN_8B9952:
  LDA.B $0D,X                               ; $8B9952 |
  CMP.W #$006C                              ; $8B9954 |
  BEQ CODE_8B995D                           ; $8B9957 |
  BCS CODE_8B995E                           ; $8B9959 |
  INC.B $0D,X                               ; $8B995B |

CODE_8B995D:
  RTS                                       ; $8B995D |

CODE_8B995E:
  DEC.B $0D,X                               ; $8B995E |
  RTS                                       ; $8B9960 |

CODE_8B9961:
  LDA.W $0C50                               ; $8B9961 |
  ORA.W $0D90                               ; $8B9964 |
  BEQ CODE_8B996A                           ; $8B9967 |
  RTL                                       ; $8B9969 |

CODE_8B996A:
  LDA.W #$0004                              ; $8B996A |
  STA.W $0C50                               ; $8B996D |
  STA.W $0D90                               ; $8B9970 |
  JSR.W CODE_FN_8BACDC                      ; $8B9973 |
  INC.W $1CA6                               ; $8B9976 |
  JMP.W CODE_FL_8BA608                      ; $8B9979 |

CODE_8B997C:
  JSR.W CODE_FN_8B99B6                      ; $8B997C |
  LDA.B $46,X                               ; $8B997F |
  PHX                                       ; $8B9981 |
  ASL A                                     ; $8B9982 |
  TAX                                       ; $8B9983 |
  LDA.L PTR16_8B998E,X                      ; $8B9984 |
  PLX                                       ; $8B9988 |
  STA.B $00                                 ; $8B9989 |
  JMP.W ($0000)                             ; $8B998B |

PTR16_8B998E:
  dw CODE_8B9A01                            ; $8B998E |
  dw CODE_8B9A19                            ; $8B9990 |
  dw CODE_8B9A6E                            ; $8B9992 |
  dw CODE_8B9A9C                            ; $8B9994 |
  dw CODE_8B9AA9                            ; $8B9996 |
  dw CODE_8B9AD7                            ; $8B9998 |
  dw CODE_8B9AEC                            ; $8B999A |
  dw CODE_8B9B27                            ; $8B999C |
  dw CODE_8B9B43                            ; $8B999E |
  dw CODE_8B9B4D                            ; $8B99A0 |
  dw CODE_8B9B5B                            ; $8B99A2 |
  dw CODE_8B9B6E                            ; $8B99A4 |
  dw CODE_8B9B7D                            ; $8B99A6 |
  dw CODE_8B9B9F                            ; $8B99A8 |
  dw CODE_8B9BCD                            ; $8B99AA |
  dw CODE_8B9BE3                            ; $8B99AC |
  dw CODE_8B9BF0                            ; $8B99AE |
  dw CODE_8B9C1B                            ; $8B99B0 |
  dw CODE_8B9C41                            ; $8B99B2 |
  dw CODE_8B9C63                            ; $8B99B4 |

CODE_FN_8B99B6:
  LDA.W $1CA6                               ; $8B99B6 |
  BNE CODE_8B99C1                           ; $8B99B9 |
  LDA.B $44,X                               ; $8B99BB |
  BMI CODE_8B99DB                           ; $8B99BD |
  BNE CODE_8B99C2                           ; $8B99BF |

CODE_8B99C1:
  RTS                                       ; $8B99C1 |

CODE_8B99C2:
  SEP #$20                                  ; $8B99C2 |
  DEC.B $36,X                               ; $8B99C4 |
  REP #$20                                  ; $8B99C6 |
  BEQ CODE_8B99EA                           ; $8B99C8 |
  LDA.W #$0044                              ; $8B99CA |
  JSL.L CODE_FL_8089BD                      ; $8B99CD |
  LDA.W #$0030                              ; $8B99D1 |
  STA.B $38,X                               ; $8B99D4 |
  LDA.W #$8000                              ; $8B99D6 |
  STA.B $44,X                               ; $8B99D9 |

CODE_8B99DB:
  JSR.W CODE_FN_8BAD76                      ; $8B99DB |
  LDA.B $38,X                               ; $8B99DE |
  BEQ CODE_8B99E4                           ; $8B99E0 |
  PLA                                       ; $8B99E2 |
  RTL                                       ; $8B99E3 |

CODE_8B99E4:
  JSR.W CODE_FN_8BAD7E                      ; $8B99E4 |
  STZ.B $44,X                               ; $8B99E7 |
  RTS                                       ; $8B99E9 |

CODE_8B99EA:
  INC.W $1CA6                               ; $8B99EA |
  STZ.W $1C96                               ; $8B99ED |
  STZ.W $1CA0                               ; $8B99F0 |
  JSL.L CODE_FL_85A9F7                      ; $8B99F3 |
  JSL.L CODE_FL_85A9BF                      ; $8B99F7 |
  JSL.L CODE_FL_8BA608                      ; $8B99FB |
  PLA                                       ; $8B99FF |
  RTL                                       ; $8B9A00 |

CODE_8B9A01:
  STZ.W $1CA6                               ; $8B9A01 |
  INC.W $1CA0                               ; $8B9A04 |
  STZ.B $42,X                               ; $8B9A07 |
  BRA CODE_8B9A28                           ; $8B9A09 |

CODE_JP_8B9A0B:
  JSR.W CODE_FN_8B970C                      ; $8B9A0B |
  LDA.W #$0070                              ; $8B9A0E |
  STA.B $2C,X                               ; $8B9A11 |
  LDA.W #$0001                              ; $8B9A13 |
  STA.B $46,X                               ; $8B9A16 |
  RTL                                       ; $8B9A18 |

CODE_8B9A19:
  LDA.B $2C,X                               ; $8B9A19 |
  BEQ CODE_8B9A28                           ; $8B9A1B |
  LDY.W #$0001                              ; $8B9A1D |
  JSL.L CODE_FL_86C503                      ; $8B9A20 |
  JSR.W CODE_FN_8B974B                      ; $8B9A24 |
  RTL                                       ; $8B9A27 |

CODE_8B9A28:
  LDA.B $42,X                               ; $8B9A28 |
  INC.B $42,X                               ; $8B9A2A |
  AND.W #$000F                              ; $8B9A2C |
  PHX                                       ; $8B9A2F |
  ASL A                                     ; $8B9A30 |
  TAX                                       ; $8B9A31 |
  LDA.L PTR16_8B9A3C,X                      ; $8B9A32 |
  PLX                                       ; $8B9A36 |
  STA.B $00                                 ; $8B9A37 |
  JMP.W ($0000)                             ; $8B9A39 |

PTR16_8B9A3C:
  dw CODE_JP_8B9A0B                         ; $8B9A3C |
  dw CODE_8B9A5C                            ; $8B9A3E |
  dw CODE_JP_8B9A0B                         ; $8B9A40 |
  dw CODE_8B9A85                            ; $8B9A42 |
  dw CODE_JP_8B9A0B                         ; $8B9A44 |
  dw CODE_8B9A5C                            ; $8B9A46 |
  dw CODE_JP_8B9A0B                         ; $8B9A48 |
  dw CODE_8B9AC0                            ; $8B9A4A |
  dw CODE_JP_8B9A0B                         ; $8B9A4C |
  dw CODE_JP_8B9A0B                         ; $8B9A4E |
  dw CODE_8B9A85                            ; $8B9A50 |
  dw CODE_JP_8B9A0B                         ; $8B9A52 |
  dw CODE_8B9AC0                            ; $8B9A54 |
  dw CODE_JP_8B9A0B                         ; $8B9A56 |
  dw CODE_JP_8B9A0B                         ; $8B9A58 |
  dw CODE_8B9A85                            ; $8B9A5A |

CODE_8B9A5C:
  STZ.W $1C96                               ; $8B9A5C |
  STZ.W $1CA0                               ; $8B9A5F |
  LDA.W #$0006                              ; $8B9A62 |
  STA.W $0C50                               ; $8B9A65 |
  LDA.W #$0002                              ; $8B9A68 |
  STA.B $46,X                               ; $8B9A6B |
  RTL                                       ; $8B9A6D |

CODE_8B9A6E:
  LDA.W $0C50                               ; $8B9A6E |
  BEQ CODE_8B9A74                           ; $8B9A71 |
  RTL                                       ; $8B9A73 |

CODE_8B9A74:
  JSR.W CODE_FN_8BACDF                      ; $8B9A74 |
  INC.W $1CA0                               ; $8B9A77 |
  LDA.W #$0040                              ; $8B9A7A |
  STA.B $2C,X                               ; $8B9A7D |
  LDA.W #$0001                              ; $8B9A7F |
  STA.B $46,X                               ; $8B9A82 |
  RTL                                       ; $8B9A84 |

CODE_8B9A85:
  STZ.W $1C96                               ; $8B9A85 |
  STZ.W $1CA0                               ; $8B9A88 |
  LDA.W #$0006                              ; $8B9A8B |
  STA.W $0C50                               ; $8B9A8E |
  LDA.W #$0003                              ; $8B9A91 |
  STA.B $46,X                               ; $8B9A94 |
  LDA.W #$0040                              ; $8B9A96 |
  STA.B $2C,X                               ; $8B9A99 |
  RTL                                       ; $8B9A9B |

CODE_8B9A9C:
  JSL.L CODE_FL_86C70D                      ; $8B9A9C |
  LDA.W #$0006                              ; $8B9AA0 |
  STA.W $0D90                               ; $8B9AA3 |
  INC.B $46,X                               ; $8B9AA6 |
  RTL                                       ; $8B9AA8 |

CODE_8B9AA9:
  LDA.W $0D90                               ; $8B9AA9 |
  BEQ CODE_8B9AAF                           ; $8B9AAC |
  RTL                                       ; $8B9AAE |

CODE_8B9AAF:
  JSR.W CODE_FN_8BACDF                      ; $8B9AAF |
  INC.W $1CA0                               ; $8B9AB2 |
  LDA.W #$0060                              ; $8B9AB5 |
  STA.B $2C,X                               ; $8B9AB8 |
  LDA.W #$0001                              ; $8B9ABA |
  STA.B $46,X                               ; $8B9ABD |
  RTL                                       ; $8B9ABF |

CODE_8B9AC0:
  STZ.W $1C96                               ; $8B9AC0 |
  STZ.W $1CA0                               ; $8B9AC3 |
  STZ.B $3A,X                               ; $8B9AC6 |
  LDA.W #$000C                              ; $8B9AC8 |
  STA.W $0C50                               ; $8B9ACB |
  STA.W $0D90                               ; $8B9ACE |
  LDA.W #$0005                              ; $8B9AD1 |
  STA.B $46,X                               ; $8B9AD4 |
  RTL                                       ; $8B9AD6 |

CODE_8B9AD7:
  LDA.W $0C50                               ; $8B9AD7 |
  ORA.W $0D90                               ; $8B9ADA |
  BEQ CODE_8B9AE0                           ; $8B9ADD |
  RTL                                       ; $8B9ADF |

CODE_8B9AE0:
  LDA.W #$0010                              ; $8B9AE0 |
  STA.W $0C50                               ; $8B9AE3 |
  STA.W $0D90                               ; $8B9AE6 |
  INC.B $46,X                               ; $8B9AE9 |
  RTL                                       ; $8B9AEB |

CODE_8B9AEC:
  LDA.W $0C50                               ; $8B9AEC |
  ORA.W $0D90                               ; $8B9AEF |
  BEQ CODE_8B9AF5                           ; $8B9AF2 |
  RTL                                       ; $8B9AF4 |

CODE_8B9AF5:
  INC.W $1CA6                               ; $8B9AF5 |
  LDA.W #$0020                              ; $8B9AF8 |
  STA.B $2C,X                               ; $8B9AFB |
  INC.B $46,X                               ; $8B9AFD |
  LDA.B $86                                 ; $8B9AFF |
  STA.W $1CA8                               ; $8B9B01 |
  AND.W #$000C                              ; $8B9B04 |
  TAY                                       ; $8B9B07 |
  LDA.W LOOSE_OP_00C79D,Y                   ; $8B9B08 |
  STA.B $3E,X                               ; $8B9B0B |
  LDA.W LOOSE_OP_00C79B,Y                   ; $8B9B0D |
  BMI CODE_8B9B17                           ; $8B9B10 |
  LDY.W #$0012                              ; $8B9B12 |
  BRA CODE_8B9B1A                           ; $8B9B15 |

CODE_8B9B17:
  LDY.W #$0014                              ; $8B9B17 |

CODE_8B9B1A:
  STY.W $0C50                               ; $8B9B1A |
  STY.W $0D90                               ; $8B9B1D |
  AND.W #$01FF                              ; $8B9B20 |
  STA.W $1C9E                               ; $8B9B23 |
  RTL                                       ; $8B9B26 |

CODE_8B9B27:
  LDA.B $3A,X                               ; $8B9B27 |
  CMP.W $1C9E                               ; $8B9B29 |
  BEQ CODE_8B9B32                           ; $8B9B2C |
  JSR.W CODE_FN_8BA6E4                      ; $8B9B2E |
  RTL                                       ; $8B9B31 |

CODE_8B9B32:
  LDA.W $0C50                               ; $8B9B32 |
  ORA.W $0D90                               ; $8B9B35 |
  BEQ CODE_8B9B3B                           ; $8B9B38 |
  RTL                                       ; $8B9B3A |

CODE_8B9B3B:
  LDA.W #$0008                              ; $8B9B3B |
  STA.B $2C,X                               ; $8B9B3E |
  INC.B $46,X                               ; $8B9B40 |
  RTL                                       ; $8B9B42 |

CODE_8B9B43:
  JSL.L CODE_FL_86C70D                      ; $8B9B43 |
  JSR.W CODE_FN_8BAACB                      ; $8B9B47 |
  INC.B $46,X                               ; $8B9B4A |
  RTL                                       ; $8B9B4C |

CODE_8B9B4D:
  JSR.W CODE_FN_8BAAD9                      ; $8B9B4D |
  BCS CODE_8B9B53                           ; $8B9B50 |
  RTL                                       ; $8B9B52 |

CODE_8B9B53:
  LDA.W #$0030                              ; $8B9B53 |
  STA.B $2C,X                               ; $8B9B56 |
  INC.B $46,X                               ; $8B9B58 |
  RTL                                       ; $8B9B5A |

CODE_8B9B5B:
  JSL.L CODE_FL_86C70D                      ; $8B9B5B |
  JSR.W CODE_FN_8BAB88                      ; $8B9B5F |
  JSR.W CODE_FN_8BACC6                      ; $8B9B62 |
  LDA.W #$000A                              ; $8B9B65 |
  STA.W $1CB6                               ; $8B9B68 |
  INC.B $46,X                               ; $8B9B6B |
  RTL                                       ; $8B9B6D |

CODE_8B9B6E:
  JSR.W CODE_FN_8BAB73                      ; $8B9B6E |
  JSR.W CODE_FN_8BAB8E                      ; $8B9B71 |
  BCS CODE_8B9B77                           ; $8B9B74 |
  RTL                                       ; $8B9B76 |

CODE_8B9B77:
  JSR.W CODE_FN_8BA6B1                      ; $8B9B77 |
  INC.B $46,X                               ; $8B9B7A |
  RTL                                       ; $8B9B7C |

CODE_8B9B7D:
  JSR.W CODE_FN_8BAB73                      ; $8B9B7D |
  JSR.W CODE_FN_8BAC13                      ; $8B9B80 |
  LDA.B $3A,X                               ; $8B9B83 |
  CMP.W $1C9E                               ; $8B9B85 |
  BEQ CODE_8B9B8E                           ; $8B9B88 |
  JSR.W CODE_FN_8BA6E4                      ; $8B9B8A |
  RTL                                       ; $8B9B8D |

CODE_8B9B8E:
  LDA.W $0C50                               ; $8B9B8E |
  ORA.W $0D90                               ; $8B9B91 |
  BEQ CODE_8B9B97                           ; $8B9B94 |
  RTL                                       ; $8B9B96 |

CODE_8B9B97:
  LDA.W #$0010                              ; $8B9B97 |
  STA.B $2C,X                               ; $8B9B9A |
  INC.B $46,X                               ; $8B9B9C |
  RTL                                       ; $8B9B9E |

CODE_8B9B9F:
  JSR.W CODE_FN_8BAB73                      ; $8B9B9F |
  JSL.L CODE_FL_86C70D                      ; $8B9BA2 |
  LDA.W $1CA8                               ; $8B9BA6 |
  BMI CODE_8B9BB0                           ; $8B9BA9 |
  BIT.W #$0008                              ; $8B9BAB |
  BNE CODE_8B9BB9                           ; $8B9BAE |

CODE_8B9BB0:
  JSR.W CODE_FN_8BA6B1                      ; $8B9BB0 |
  LDA.W #$0010                              ; $8B9BB3 |
  STA.B $46,X                               ; $8B9BB6 |
  RTL                                       ; $8B9BB8 |

CODE_8B9BB9:
  CLC                                       ; $8B9BB9 |
  ADC.W #$0008                              ; $8B9BBA |
  AND.W #$000C                              ; $8B9BBD |
  TAY                                       ; $8B9BC0 |
  LDA.W LOOSE_OP_00C79B,Y                   ; $8B9BC1 |
  AND.W #$01FF                              ; $8B9BC4 |
  STA.W $1C9E                               ; $8B9BC7 |
  INC.B $46,X                               ; $8B9BCA |
  RTL                                       ; $8B9BCC |

CODE_8B9BCD:
  JSR.W CODE_FN_8BAB73                      ; $8B9BCD |
  LDA.B $3A,X                               ; $8B9BD0 |
  CMP.W $1C9E                               ; $8B9BD2 |
  BEQ CODE_8B9BDB                           ; $8B9BD5 |
  JSR.W CODE_FN_8BA6E4                      ; $8B9BD7 |
  RTL                                       ; $8B9BDA |

CODE_8B9BDB:
  LDA.W #$0020                              ; $8B9BDB |
  STA.B $2C,X                               ; $8B9BDE |
  INC.B $46,X                               ; $8B9BE0 |
  RTL                                       ; $8B9BE2 |

CODE_8B9BE3:
  JSR.W CODE_FN_8BAB73                      ; $8B9BE3 |
  JSL.L CODE_FL_86C70D                      ; $8B9BE6 |
  JSR.W CODE_FN_8BA6B1                      ; $8B9BEA |
  INC.B $46,X                               ; $8B9BED |
  RTL                                       ; $8B9BEF |

CODE_8B9BF0:
  JSR.W CODE_FN_8BAB73                      ; $8B9BF0 |
  JSR.W CODE_FN_8BAC13                      ; $8B9BF3 |
  LDA.B $3A,X                               ; $8B9BF6 |
  CMP.W $1C9E                               ; $8B9BF8 |
  BEQ CODE_8B9C01                           ; $8B9BFB |
  JSR.W CODE_FN_8BA6E4                      ; $8B9BFD |
  RTL                                       ; $8B9C00 |

CODE_8B9C01:
  LDA.W $0C50                               ; $8B9C01 |
  ORA.W $0D90                               ; $8B9C04 |
  BEQ CODE_8B9C0A                           ; $8B9C07 |
  RTL                                       ; $8B9C09 |

CODE_8B9C0A:
  JSR.W CODE_FN_8BABA7                      ; $8B9C0A |
  BCS CODE_8B9C10                           ; $8B9C0D |
  RTL                                       ; $8B9C0F |

CODE_8B9C10:
  JSR.W CODE_FN_8BAB80                      ; $8B9C10 |
  LDA.W #$0020                              ; $8B9C13 |
  STA.B $2C,X                               ; $8B9C16 |
  INC.B $46,X                               ; $8B9C18 |
  RTL                                       ; $8B9C1A |

CODE_8B9C1B:
  JSL.L CODE_FL_86C70D                      ; $8B9C1B |
  JSR.W CODE_FN_8BAAFB                      ; $8B9C1F |
  BCS CODE_8B9C25                           ; $8B9C22 |
  RTL                                       ; $8B9C24 |

CODE_8B9C25:
  LDA.B $3A,X                               ; $8B9C25 |
  LDY.W #$0000                              ; $8B9C27 |
  JSR.W CODE_FN_8BA69A                      ; $8B9C2A |
  LDA.W #$FFF8                              ; $8B9C2D |
  DEC.B $1A                                 ; $8B9C30 |
  BEQ CODE_8B9C37                           ; $8B9C32 |
  LDA.W #$0008                              ; $8B9C34 |

CODE_8B9C37:
  STA.B $3E,X                               ; $8B9C37 |
  LDA.W #$0020                              ; $8B9C39 |
  STA.B $2C,X                               ; $8B9C3C |
  INC.B $46,X                               ; $8B9C3E |
  RTL                                       ; $8B9C40 |

CODE_8B9C41:
  JSL.L CODE_FL_86C70D                      ; $8B9C41 |
  LDA.B $3A,X                               ; $8B9C45 |
  TAY                                       ; $8B9C47 |
  AND.W #$01F8                              ; $8B9C48 |
  BEQ CODE_8B9C54                           ; $8B9C4B |
  TYA                                       ; $8B9C4D |
  CLC                                       ; $8B9C4E |
  ADC.B $3E,X                               ; $8B9C4F |
  STA.B $3A,X                               ; $8B9C51 |
  RTL                                       ; $8B9C53 |

CODE_8B9C54:
  STZ.W $1CA6                               ; $8B9C54 |
  LDA.W #$0004                              ; $8B9C57 |
  STA.W $0C50                               ; $8B9C5A |
  STA.W $0D90                               ; $8B9C5D |
  INC.B $46,X                               ; $8B9C60 |
  RTL                                       ; $8B9C62 |

CODE_8B9C63:
  JSR.W CODE_FN_8B9952                      ; $8B9C63 |
  BEQ CODE_8B9C69                           ; $8B9C66 |
  RTL                                       ; $8B9C68 |

CODE_8B9C69:
  JSR.W CODE_FN_8BACDF                      ; $8B9C69 |
  INC.W $1CA0                               ; $8B9C6C |
  JMP.W CODE_JP_8B9A0B                      ; $8B9C6F |

CODE_8B9C72:
  LDA.B $46,X                               ; $8B9C72 |
  PHX                                       ; $8B9C74 |
  ASL A                                     ; $8B9C75 |
  TAX                                       ; $8B9C76 |
  LDA.L PTR16_8B9C81,X                      ; $8B9C77 |
  PLX                                       ; $8B9C7B |
  STA.B $00                                 ; $8B9C7C |
  JMP.W ($0000)                             ; $8B9C7E |

PTR16_8B9C81:
  dw CODE_8B9C8F                            ; $8B9C81 |
  dw CODE_8B9CA6                            ; $8B9C83 |
  dw CODE_8B9CFC                            ; $8B9C85 |
  dw CODE_8B9CA6                            ; $8B9C87 |
  dw CODE_8B9D34                            ; $8B9C89 |
  dw CODE_8B9D67                            ; $8B9C8B |
  dw CODE_8B9D8C                            ; $8B9C8D |

CODE_8B9C8F:
  LDA.W #$0020                              ; $8B9C8F |
  STA.B $2C,X                               ; $8B9C92 |
  LDA.W #$0016                              ; $8B9C94 |
  STA.W $0C2A                               ; $8B9C97 |
  STA.W $0D6A                               ; $8B9C9A |
  LDA.W #$000A                              ; $8B9C9D |
  STA.W $1CB6                               ; $8B9CA0 |
  INC.B $46,X                               ; $8B9CA3 |
  RTL                                       ; $8B9CA5 |

CODE_8B9CA6:
  JSL.L CODE_FL_86C393                      ; $8B9CA6 |
  LDA.W #$0021                              ; $8B9CAA |
  JSR.W CODE_FN_8BADAD                      ; $8B9CAD |
  LDA.B $2C,X                               ; $8B9CB0 |
  BEQ CODE_8B9CC8                           ; $8B9CB2 |
  LDA.W $1C38                               ; $8B9CB4 |
  AND.W #$001F                              ; $8B9CB7 |
  BEQ CODE_8B9CBD                           ; $8B9CBA |
  RTL                                       ; $8B9CBC |

CODE_8B9CBD:
  JSL.L CODE_FL_8CFBAE                      ; $8B9CBD |
  JSR.W CODE_FN_8BA5F7                      ; $8B9CC1 |
  JML.L CODE_FL_8CFBB6                      ; $8B9CC4 |

CODE_8B9CC8:
  LDA.B $46,X                               ; $8B9CC8 |
  INC.B $46,X                               ; $8B9CCA |
  CMP.W #$0003                              ; $8B9CCC |
  BNE CODE_8B9CFB                           ; $8B9CCF |
  LDA.W #$0020                              ; $8B9CD1 |
  STA.B $3E,X                               ; $8B9CD4 |
  LDA.W #$0020                              ; $8B9CD6 |
  STA.B $2C,X                               ; $8B9CD9 |
  LDA.W #$FD00                              ; $8B9CDB |
  STA.B $28,X                               ; $8B9CDE |
  LDA.W #$0018                              ; $8B9CE0 |
  STA.W $0C2A                               ; $8B9CE3 |
  STA.W $0D6A                               ; $8B9CE6 |
  LDA.W #$0001                              ; $8B9CE9 |
  JSL.L CODE_FL_B3FE45                      ; $8B9CEC |
  JSL.L CODE_FL_8CFAF3                      ; $8B9CF0 |
  LDY.W #$0030                              ; $8B9CF4 |
  JSL.L CODE_FL_808993                      ; $8B9CF7 |

CODE_8B9CFB:
  RTL                                       ; $8B9CFB |

CODE_8B9CFC:
  JSL.L CODE_FL_86C393                      ; $8B9CFC |
  LDA.W #$0021                              ; $8B9D00 |
  JSR.W CODE_FN_8BADAD                      ; $8B9D03 |
  LDA.W $1C38                               ; $8B9D06 |
  AND.W #$001F                              ; $8B9D09 |
  BEQ CODE_8B9D1D                           ; $8B9D0C |

CODE_8B9D0E:
  LDA.W #$0001                              ; $8B9D0E |
  STA.B $E4                                 ; $8B9D11 |
  LDA.W #$FD5D                              ; $8B9D13 |
  JSL.L CODE_FL_809934                      ; $8B9D16 |
  BCS CODE_8B9D2A                           ; $8B9D1A |
  RTL                                       ; $8B9D1C |

CODE_8B9D1D:
  JSL.L CODE_FL_8CFBAE                      ; $8B9D1D |
  JSR.W CODE_FN_8BA5F7                      ; $8B9D21 |
  JSL.L CODE_FL_8CFBB6                      ; $8B9D24 |
  BRA CODE_8B9D0E                           ; $8B9D28 |

CODE_8B9D2A:
  STZ.B $E4                                 ; $8B9D2A |
  LDA.W #$0040                              ; $8B9D2C |
  STA.B $2C,X                               ; $8B9D2F |
  INC.B $46,X                               ; $8B9D31 |
  RTL                                       ; $8B9D33 |

CODE_8B9D34:
  LDA.B $2C,X                               ; $8B9D34 |
  BEQ CODE_8B9D3B                           ; $8B9D36 |
  JSR.W CODE_FN_8BA6E4                      ; $8B9D38 |

CODE_8B9D3B:
  JSL.L CODE_FL_86C82F                      ; $8B9D3B |
  JSL.L CODE_FL_86C870                      ; $8B9D3F |
  LDA.B $0D,X                               ; $8B9D43 |
  CMP.W #$00A8                              ; $8B9D45 |
  BCS CODE_8B9D4B                           ; $8B9D48 |
  RTL                                       ; $8B9D4A |

CODE_8B9D4B:
  LDA.W #$0100                              ; $8B9D4B |
  STA.B $2C,X                               ; $8B9D4E |
  INC.B $46,X                               ; $8B9D50 |
  LDA.W #$0001                              ; $8B9D52 |
  JSL.L CODE_FL_B3FE45                      ; $8B9D55 |
  LDY.W #$B9DE                              ; $8B9D59 |
  JSL.L CODE_FL_80C26D                      ; $8B9D5C |
  LDY.W #$B9E3                              ; $8B9D60 |
  JML.L CODE_FL_80C268                      ; $8B9D63 |

CODE_8B9D67:
  LDA.B $2C,X                               ; $8B9D67 |
  BEQ CODE_8B9D7C                           ; $8B9D69 |
  AND.W #$0007                              ; $8B9D6B |
  BEQ CODE_8B9D71                           ; $8B9D6E |
  RTL                                       ; $8B9D70 |

CODE_8B9D71:
  JSL.L CODE_FL_8CFBAE                      ; $8B9D71 |
  JSR.W CODE_FN_8BA5F7                      ; $8B9D75 |
  JML.L CODE_FL_8CFBB6                      ; $8B9D78 |

CODE_8B9D7C:
  INC.W $1C8E                               ; $8B9D7C |
  INC.B $46,X                               ; $8B9D7F |
  LDA.W #$0586                              ; $8B9D81 |
  JSL.L CODE_FL_8CF9C3                      ; $8B9D84 |
  JML.L CODE_JL_84F245                      ; $8B9D88 |

CODE_8B9D8C:
  RTL                                       ; $8B9D8C |

CODE_8B9D8D:
  PHX                                       ; $8B9D8D |
  STZ.W $1962                               ; $8B9D8E |
  LDA.W $1C5E                               ; $8B9D91 |
  BEQ CODE_8B9DF2                           ; $8B9D94 |
  LDA.W $1C60                               ; $8B9D96 |
  BEQ CODE_8B9DF2                           ; $8B9D99 |
  DEC.W $1C60                               ; $8B9D9B |
  LDA.W $1C5E                               ; $8B9D9E |
  JSL.L CODE_FL_B3FE7D                      ; $8B9DA1 |
  INC.W $1C60                               ; $8B9DA5 |
  LDA.W $1CB0                               ; $8B9DA8 |
  SEC                                       ; $8B9DAB |
  SBC.W $1962                               ; $8B9DAC |
  STA.W $1CB0                               ; $8B9DAF |
  EOR.W #$FFFF                              ; $8B9DB2 |
  INC A                                     ; $8B9DB5 |
  CLC                                       ; $8B9DB6 |
  ADC.W #$0021                              ; $8B9DB7 |
  JSL.L CODE_FL_8AB11E                      ; $8B9DBA |
  LDY.W #$19B4                              ; $8B9DBE |
  JSR.W CODE_FN_8BA912                      ; $8B9DC1 |
  LDY.W #$1CAC                              ; $8B9DC4 |
  JSR.W CODE_FN_8BA912                      ; $8B9DC7 |
  LDY.W #$0B7D                              ; $8B9DCA |
  JSR.W CODE_FN_8BA912                      ; $8B9DCD |
  LDY.W #$040D                              ; $8B9DD0 |
  JSR.W CODE_FN_8BA912                      ; $8B9DD3 |
  LDY.W #$0482                              ; $8B9DD6 |
  JSR.W CODE_FN_8BA912                      ; $8B9DD9 |
  LDY.W #$04CD                              ; $8B9DDC |
  JSR.W CODE_FN_8BA912                      ; $8B9DDF |
  LDY.W #$0542                              ; $8B9DE2 |
  JSR.W CODE_FN_8BA912                      ; $8B9DE5 |
  LDA.B $A6                                 ; $8B9DE8 |
  BNE CODE_8B9DF2                           ; $8B9DEA |
  LDY.W #$0B2D                              ; $8B9DEC |
  JSR.W CODE_FN_8BA912                      ; $8B9DEF |

CODE_8B9DF2:
  LDX.W #$0B70                              ; $8B9DF2 |
  JSR.W CODE_FN_8BA91D                      ; $8B9DF5 |
  LDA.B $3C,X                               ; $8B9DF8 |
  STA.W $1D64                               ; $8B9DFA |
  STA.W $1D66                               ; $8B9DFD |
  LDA.B $3A,X                               ; $8B9E00 |
  STA.W $1FD4                               ; $8B9E02 |
  JSL.L CODE_FL_848655                      ; $8B9E05 |
  PLX                                       ; $8B9E09 |
  JSR.W CODE_FN_8B9ED7                      ; $8B9E0A |
  JSL.L CODE_FL_86C3A3                      ; $8B9E0D |
  LDA.B $1A,X                               ; $8B9E11 |
  PHX                                       ; $8B9E13 |
  ASL A                                     ; $8B9E14 |
  TAX                                       ; $8B9E15 |
  LDA.L PTR16_8B9E20,X                      ; $8B9E16 |
  PLX                                       ; $8B9E1A |
  STA.B $00                                 ; $8B9E1B |
  JMP.W ($0000)                             ; $8B9E1D |

PTR16_8B9E20:
  dw CODE_8B9E2A                            ; $8B9E20 |
  dw CODE_8B9E49                            ; $8B9E22 |
  dw CODE_8B9E99                            ; $8B9E24 |
  dw CODE_8B9EB2                            ; $8B9E26 |
  dw CODE_8B9EC4                            ; $8B9E28 |

CODE_8B9E2A:
  STZ.B $3A,X                               ; $8B9E2A |
  LDA.W #$FFF0                              ; $8B9E2C |
  STA.B $3C,X                               ; $8B9E2F |
  LDA.W #$8111                              ; $8B9E31 |
  STA.B $22,X                               ; $8B9E34 |
  LDA.W #$0586                              ; $8B9E36 |
  JSL.L CODE_FL_8CF9D2                      ; $8B9E39 |
  BCC CODE_8B9E45                           ; $8B9E3D |
  LDA.W #$0004                              ; $8B9E3F |
  STA.B $1A,X                               ; $8B9E42 |
  RTL                                       ; $8B9E44 |

CODE_8B9E45:
  JSL.L CODE_FL_86C63F                      ; $8B9E45 |

CODE_8B9E49:
  LDA.W $0B79                               ; $8B9E49 |
  CLC                                       ; $8B9E4C |
  ADC.W #$0004                              ; $8B9E4D |
  STA.B $09,X                               ; $8B9E50 |
  LDA.W #$0080                              ; $8B9E52 |
  SEC                                       ; $8B9E55 |
  SBC.W $0BAC                               ; $8B9E56 |
  BPL CODE_8B9E5C                           ; $8B9E59 |
  TDC                                       ; $8B9E5B |

CODE_8B9E5C:
  LSR A                                     ; $8B9E5C |
  LSR A                                     ; $8B9E5D |
  LSR A                                     ; $8B9E5E |
  STA.B $00                                 ; $8B9E5F |
  SEC                                       ; $8B9E61 |
  SBC.W #$0004                              ; $8B9E62 |
  BPL CODE_8B9E68                           ; $8B9E65 |
  TDC                                       ; $8B9E67 |

CODE_8B9E68:
  CLC                                       ; $8B9E68 |
  ADC.W #$0030                              ; $8B9E69 |
  STA.B $2E,X                               ; $8B9E6C |
  SEC                                       ; $8B9E6E |
  SBC.W #$0008                              ; $8B9E6F |
  BPL CODE_8B9E75                           ; $8B9E72 |
  TDC                                       ; $8B9E74 |

CODE_8B9E75:
  STA.B $3E,X                               ; $8B9E75 |
  LDA.W $0B7D                               ; $8B9E77 |
  CLC                                       ; $8B9E7A |
  ADC.B $00                                 ; $8B9E7B |
  CLC                                       ; $8B9E7D |
  ADC.W #$0008                              ; $8B9E7E |
  STA.B $0D,X                               ; $8B9E81 |
  LDA.W #$0050                              ; $8B9E83 |
  CLC                                       ; $8B9E86 |
  ADC.B $00                                 ; $8B9E87 |
  STA.B $30,X                               ; $8B9E89 |
  STA.B $40,X                               ; $8B9E8B |
  LDA.W $0B8A                               ; $8B9E8D |
  CMP.W #$0004                              ; $8B9E90 |
  BEQ CODE_8B9E96                           ; $8B9E93 |
  RTL                                       ; $8B9E95 |

CODE_8B9E96:
  INC.B $1A,X                               ; $8B9E96 |
  RTL                                       ; $8B9E98 |

CODE_8B9E99:
  LDA.W #$8019                              ; $8B9E99 |
  STA.B $22,X                               ; $8B9E9C |
  LDA.W #$0018                              ; $8B9E9E |
  STA.B $2E,X                               ; $8B9EA1 |
  STA.B $3E,X                               ; $8B9EA3 |
  LDA.W #$0028                              ; $8B9EA5 |
  STA.B $30,X                               ; $8B9EA8 |
  STA.B $40,X                               ; $8B9EAA |
  STZ.B $3A,X                               ; $8B9EAC |
  STZ.B $3C,X                               ; $8B9EAE |
  INC.B $1A,X                               ; $8B9EB0 |

CODE_8B9EB2:
  LDA.W $0B8A                               ; $8B9EB2 |
  CMP.W #$0006                              ; $8B9EB5 |
  BNE CODE_8B9EC4                           ; $8B9EB8 |
  JSL.L CODE_FL_85A9F7                      ; $8B9EBA |
  JSL.L CODE_FL_85A9BF                      ; $8B9EBE |
  INC.B $1A,X                               ; $8B9EC2 |

CODE_8B9EC4:
  LDA.W $0B79                               ; $8B9EC4 |
  CLC                                       ; $8B9EC7 |
  ADC.W #$0004                              ; $8B9EC8 |
  STA.B $09,X                               ; $8B9ECB |
  LDA.W $0B7D                               ; $8B9ECD |
  CLC                                       ; $8B9ED0 |
  ADC.W #$FFE0                              ; $8B9ED1 |
  STA.B $0D,X                               ; $8B9ED4 |
  RTL                                       ; $8B9ED6 |

CODE_FN_8B9ED7:
  LDA.B $3A,X                               ; $8B9ED7 |
  STA.B $0A                                 ; $8B9ED9 |
  LDA.B $3C,X                               ; $8B9EDB |
  STA.B $0C                                 ; $8B9EDD |
  LDA.B $3E,X                               ; $8B9EDF |
  STA.B $0E                                 ; $8B9EE1 |
  LDA.B $40,X                               ; $8B9EE3 |
  STA.B $10                                 ; $8B9EE5 |
  JSL.L CODE_FL_85F8A1                      ; $8B9EE7 |
  RTS                                       ; $8B9EEB |

CODE_8B9EEC:
  JSL.L CODE_FL_85F885                      ; $8B9EEC |
  LDA.B $1A,X                               ; $8B9EF0 |
  PHX                                       ; $8B9EF2 |
  ASL A                                     ; $8B9EF3 |
  TAX                                       ; $8B9EF4 |
  LDA.L PTR16_8B9EFF,X                      ; $8B9EF5 |
  PLX                                       ; $8B9EF9 |
  STA.B $00                                 ; $8B9EFA |
  JMP.W ($0000)                             ; $8B9EFC |

PTR16_8B9EFF:
  dw CODE_8B9F05                            ; $8B9EFF |
  dw CODE_8B9F1E                            ; $8B9F01 |
  dw CODE_8B9F2E                            ; $8B9F03 |

CODE_8B9F05:
  LDA.W #$8001                              ; $8B9F05 |
  STA.B $22,X                               ; $8B9F08 |
  LDA.B $4E,X                               ; $8B9F0A |
  ASL A                                     ; $8B9F0C |
  ASL A                                     ; $8B9F0D |
  ASL A                                     ; $8B9F0E |
  STA.B $00                                 ; $8B9F0F |
  ASL A                                     ; $8B9F11 |
  CLC                                       ; $8B9F12 |
  ADC.B $00                                 ; $8B9F13 |
  CLC                                       ; $8B9F15 |
  ADC.W #$0038                              ; $8B9F16 |
  STA.B $3A,X                               ; $8B9F19 |
  INC.B $1A,X                               ; $8B9F1B |
  RTL                                       ; $8B9F1D |

CODE_8B9F1E:
  LDA.W $1C94                               ; $8B9F1E |
  CMP.W #$0008                              ; $8B9F21 |
  BCS CODE_8B9F27                           ; $8B9F24 |
  RTL                                       ; $8B9F26 |

CODE_8B9F27:
  JSL.L CODE_FL_85A9EF                      ; $8B9F27 |
  INC.B $1A,X                               ; $8B9F2B |
  RTL                                       ; $8B9F2D |

CODE_8B9F2E:
  LDA.W $1C94                               ; $8B9F2E |
  CMP.W #$0024                              ; $8B9F31 |
  BCS CODE_8B9F46                           ; $8B9F34 |
  LDA.W $0BAA                               ; $8B9F36 |
  CLC                                       ; $8B9F39 |
  ADC.W #$0100                              ; $8B9F3A |
  AND.W #$01FF                              ; $8B9F3D |
  LDY.B $3A,X                               ; $8B9F40 |
  JSR.W CODE_FN_8BA70F                      ; $8B9F42 |
  RTL                                       ; $8B9F45 |

CODE_8B9F46:
  JML.L CODE_FL_808F2C                      ; $8B9F46 |

CODE_8B9F4A:
  JSL.L CODE_FL_86C3A3                      ; $8B9F4A |
  LDA.B $1A,X                               ; $8B9F4E |
  CMP.W #$0018                              ; $8B9F50 |
  BCS CODE_FL_8B9F6A                        ; $8B9F53 |
  JSR.W CODE_FN_8BA6FF                      ; $8B9F55 |
  JSL.L CODE_FL_8B9F6A                      ; $8B9F58 |
  LDX.B $FC                                 ; $8B9F5C |
  LDA.B $46,X                               ; $8B9F5E |
  BNE CODE_8B9F66                           ; $8B9F60 |
  JSR.W CODE_FN_8BA7B2                      ; $8B9F62 |
  RTL                                       ; $8B9F65 |

CODE_8B9F66:
  JSR.W CODE_FN_8BA805                      ; $8B9F66 |
  RTL                                       ; $8B9F69 |

CODE_FL_8B9F6A:
  LDA.B $1A,X                               ; $8B9F6A |
  PHX                                       ; $8B9F6C |
  ASL A                                     ; $8B9F6D |
  TAX                                       ; $8B9F6E |
  LDA.L PTR16_8B9F79,X                      ; $8B9F6F |
  PLX                                       ; $8B9F73 |
  STA.B $00                                 ; $8B9F74 |
  JMP.W ($0000)                             ; $8B9F76 |

PTR16_8B9F79:
  dw CODE_8B9FAD                            ; $8B9F79 |
  dw CODE_8B9FC8                            ; $8B9F7B |
  dw CODE_8BA002                            ; $8B9F7D |
  dw CODE_8BA020                            ; $8B9F7F |
  dw CODE_8BA025                            ; $8B9F81 |
  dw CODE_8BA030                            ; $8B9F83 |
  dw CODE_8BA0A8                            ; $8B9F85 |
  dw CODE_8BA0BB                            ; $8B9F87 |
  dw CODE_8BA0F9                            ; $8B9F89 |
  dw CODE_8BA125                            ; $8B9F8B |
  dw CODE_8BA15D                            ; $8B9F8D |
  dw CODE_8BA178                            ; $8B9F8F |
  dw CODE_8BA195                            ; $8B9F91 |
  dw CODE_8BA199                            ; $8B9F93 |
  dw CODE_8BA1CB                            ; $8B9F95 |
  dw CODE_8BA1D2                            ; $8B9F97 |
  dw CODE_8BA1F1                            ; $8B9F99 |
  dw CODE_8BA1F8                            ; $8B9F9B |
  dw CODE_8BA243                            ; $8B9F9D |
  dw CODE_8BA24A                            ; $8B9F9F |
  dw CODE_8BA263                            ; $8B9FA1 |
  dw CODE_8BA26A                            ; $8B9FA3 |
  dw CODE_8BA283                            ; $8B9FA5 |
  dw CODE_8BA29D                            ; $8B9FA7 |
  dw CODE_8BA2AB                            ; $8B9FA9 |
  dw CODE_8BA2EC                            ; $8B9FAB |

CODE_8B9FAD:
  LDA.W #$8019                              ; $8B9FAD |
  STA.B $22,X                               ; $8B9FB0 |
  LDY.W #$0038                              ; $8B9FB2 |
  LDA.B $4E,X                               ; $8B9FB5 |
  BPL CODE_8B9FBC                           ; $8B9FB7 |
  LDY.W #$008C                              ; $8B9FB9 |

CODE_8B9FBC:
  STY.B $14,X                               ; $8B9FBC |
  LDA.W #$0100                              ; $8B9FBE |
  STA.B $44,X                               ; $8B9FC1 |
  STZ.B $46,X                               ; $8B9FC3 |
  INC.B $1A,X                               ; $8B9FC5 |
  RTL                                       ; $8B9FC7 |

CODE_8B9FC8:
  LDA.W #$304A                              ; $8B9FC8 |
  STA.B $00,X                               ; $8B9FCB |
  LDA.B $4E,X                               ; $8B9FCD |
  BMI CODE_8B9FDF                           ; $8B9FCF |
  LDA.W #$3000                              ; $8B9FD1 |
  STA.B $42,X                               ; $8B9FD4 |
  STZ.B $3C,X                               ; $8B9FD6 |
  LDA.W #$0060                              ; $8B9FD8 |
  STA.B $3E,X                               ; $8B9FDB |
  BRA CODE_8B9FF0                           ; $8B9FDD |

CODE_8B9FDF:
  LDA.W #$4000                              ; $8B9FDF |
  STA.B $42,X                               ; $8B9FE2 |
  STZ.B $3C,X                               ; $8B9FE4 |
  LDA.W #$0040                              ; $8B9FE6 |
  STA.B $3E,X                               ; $8B9FE9 |
  LDA.W #$0080                              ; $8B9FEB |
  STA.B $04,X                               ; $8B9FEE |

CODE_8B9FF0:
  JSR.W CODE_FN_8BA766                      ; $8B9FF0 |
  JSR.W CODE_FN_8BA790                      ; $8B9FF3 |
  JSR.W CODE_FN_8B9FFC                      ; $8B9FF6 |
  INC.B $1A,X                               ; $8B9FF9 |
  RTL                                       ; $8B9FFB |

CODE_FN_8B9FFC:
  LDA.W #$0020                              ; $8B9FFC |
  STA.B $2C,X                               ; $8B9FFF |
  RTS                                       ; $8BA001 |

CODE_8BA002:
  LDA.B $2C,X                               ; $8BA002 |
  BNE CODE_8BA018                           ; $8BA004 |
  LDA.B $44,X                               ; $8BA006 |
  CMP.W #$1000                              ; $8BA008 |
  BCS CODE_8BA01C                           ; $8BA00B |
  ADC.W #$0080                              ; $8BA00D |
  STA.B $44,X                               ; $8BA010 |
  JSR.W CODE_FN_8BA6F7                      ; $8BA012 |
  JSR.W CODE_FN_8BA766                      ; $8BA015 |

CODE_8BA018:
  JSR.W CODE_FN_8BA790                      ; $8BA018 |
  RTL                                       ; $8BA01B |

CODE_8BA01C:
  JSR.W CODE_FN_8BA862                      ; $8BA01C |
  RTL                                       ; $8BA01F |

CODE_8BA020:
  LDA.B $40,X                               ; $8BA020 |
  BNE CODE_8BA038                           ; $8BA022 |
  RTL                                       ; $8BA024 |

CODE_8BA025:
  STZ.B $46,X                               ; $8BA025 |
  LDA.W #$0020                              ; $8BA027 |
  STA.B $3E,X                               ; $8BA02A |
  STZ.B $40,X                               ; $8BA02C |
  INC.B $1A,X                               ; $8BA02E |

CODE_8BA030:
  JSR.W CODE_FN_8BA03B                      ; $8BA030 |
  LDA.B $40,X                               ; $8BA033 |
  BNE CODE_8BA038                           ; $8BA035 |
  RTL                                       ; $8BA037 |

CODE_8BA038:
  STA.B $1A,X                               ; $8BA038 |
  RTL                                       ; $8BA03A |

CODE_FN_8BA03B:
  JSR.W CODE_FN_8BA065                      ; $8BA03B |
  JSR.W CODE_FN_8BA090                      ; $8BA03E |
  JSR.W CODE_FN_8BA6F7                      ; $8BA041 |
  BMI CODE_8BA05E                           ; $8BA044 |
  CMP.W #$1800                              ; $8BA046 |
  BCS CODE_8BA057                           ; $8BA049 |
  CMP.W #$0C00                              ; $8BA04B |
  BCC CODE_8BA05E                           ; $8BA04E |

CODE_8BA050:
  JSR.W CODE_FN_8BA766                      ; $8BA050 |
  JSR.W CODE_FN_8BA790                      ; $8BA053 |
  RTS                                       ; $8BA056 |

CODE_8BA057:
  LDA.W #$FFE0                              ; $8BA057 |
  STA.B $3E,X                               ; $8BA05A |
  BRA CODE_8BA050                           ; $8BA05C |

CODE_8BA05E:
  LDA.W #$0020                              ; $8BA05E |
  STA.B $3E,X                               ; $8BA061 |
  BRA CODE_8BA050                           ; $8BA063 |

CODE_FN_8BA065:
  LDA.B $42,X                               ; $8BA065 |
  AND.W #$FF80                              ; $8BA067 |
  STA.B $00                                 ; $8BA06A |
  LDY.W #$3000                              ; $8BA06C |
  LDA.B $4E,X                               ; $8BA06F |
  BPL CODE_8BA076                           ; $8BA071 |
  LDY.W #$4000                              ; $8BA073 |

CODE_8BA076:
  CPY.B $00                                 ; $8BA076 |
  BNE CODE_8BA07B                           ; $8BA078 |
  RTS                                       ; $8BA07A |

CODE_8BA07B:
  LDA.B $42,X                               ; $8BA07B |
  JSR.W CODE_FN_8BA69A                      ; $8BA07D |
  LDA.W #$FF80                              ; $8BA080 |
  DEC.B $1A                                 ; $8BA083 |
  BEQ CODE_8BA08A                           ; $8BA085 |
  LDA.W #$0080                              ; $8BA087 |

CODE_8BA08A:
  CLC                                       ; $8BA08A |
  ADC.B $42,X                               ; $8BA08B |
  STA.B $42,X                               ; $8BA08D |
  RTS                                       ; $8BA08F |

CODE_FN_8BA090:
  LDA.B $44,X                               ; $8BA090 |
  AND.W #$FF00                              ; $8BA092 |
  CMP.W #$1000                              ; $8BA095 |
  BEQ CODE_8BA0A5                           ; $8BA098 |
  BCS CODE_8BA0A1                           ; $8BA09A |
  ADC.W #$0100                              ; $8BA09C |
  BRA CODE_8BA0A5                           ; $8BA09F |

CODE_8BA0A1:
  SEC                                       ; $8BA0A1 |
  SBC.W #$0100                              ; $8BA0A2 |

CODE_8BA0A5:
  STA.B $44,X                               ; $8BA0A5 |
  RTS                                       ; $8BA0A7 |

CODE_8BA0A8:
  LDA.W #$0C00                              ; $8BA0A8 |
  STA.B $3E,X                               ; $8BA0AB |
  LDA.W #$0040                              ; $8BA0AD |
  STA.B $2C,X                               ; $8BA0B0 |
  STZ.B $46,X                               ; $8BA0B2 |
  LDA.W #$0015                              ; $8BA0B4 |
  STA.B $48,X                               ; $8BA0B7 |
  INC.B $1A,X                               ; $8BA0B9 |

CODE_8BA0BB:
  LDA.B $48,X                               ; $8BA0BB |
  BNE CODE_8BA0CB                           ; $8BA0BD |
  LDA.W #$0015                              ; $8BA0BF |
  STA.B $48,X                               ; $8BA0C2 |
  LDA.W #$000A                              ; $8BA0C4 |
  JSL.L push_sound_queue                    ; $8BA0C7 |

CODE_8BA0CB:
  DEC.B $48,X                               ; $8BA0CB |
  LDA.B $3C,X                               ; $8BA0CD |
  TAY                                       ; $8BA0CF |
  AND.W #$FF80                              ; $8BA0D0 |
  BEQ CODE_8BA0DF                           ; $8BA0D3 |
  TYA                                       ; $8BA0D5 |
  SEC                                       ; $8BA0D6 |
  SBC.W #$0080                              ; $8BA0D7 |
  STA.B $3C,X                               ; $8BA0DA |
  JSR.W CODE_FN_8BA766                      ; $8BA0DC |

CODE_8BA0DF:
  LDA.B $44,X                               ; $8BA0DF |
  CMP.W #$0801                              ; $8BA0E1 |
  BCC CODE_8BA0EC                           ; $8BA0E4 |
  SEC                                       ; $8BA0E6 |
  SBC.W #$0020                              ; $8BA0E7 |
  STA.B $44,X                               ; $8BA0EA |

CODE_8BA0EC:
  JSR.W CODE_FN_8BA6EF                      ; $8BA0EC |
  JSR.W CODE_FN_8BA790                      ; $8BA0EF |
  JSL.L CODE_FL_86C70D                      ; $8BA0F2 |
  INC.B $1A,X                               ; $8BA0F6 |
  RTL                                       ; $8BA0F8 |

CODE_8BA0F9:
  JSL.L CODE_FL_86C4A5                      ; $8BA0F9 |
  LDA.B ($48,X)                             ; $8BA0FD |
  TAY                                       ; $8BA0FF |
  JSL.L CODE_FL_8AB41C                      ; $8BA100 |
  XBA                                       ; $8BA104 |
  ASL A                                     ; $8BA105 |
  ASL A                                     ; $8BA106 |
  ASL A                                     ; $8BA107 |
  SEC                                       ; $8BA108 |
  SBC.B $42,X                               ; $8BA109 |
  BPL CODE_8BA111                           ; $8BA10B |
  CLC                                       ; $8BA10D |
  ADC.W #$0C00                              ; $8BA10E |

CODE_8BA111:
  CMP.W #$1000                              ; $8BA111 |
  BCC CODE_8BA11D                           ; $8BA114 |
  JSR.W CODE_FN_8BA6EF                      ; $8BA116 |
  JSR.W CODE_FN_8BA790                      ; $8BA119 |
  RTL                                       ; $8BA11C |

CODE_8BA11D:
  LDA.W #$0020                              ; $8BA11D |
  STA.B $2C,X                               ; $8BA120 |
  INC.B $1A,X                               ; $8BA122 |
  RTL                                       ; $8BA124 |

CODE_8BA125:
  LDA.B $2C,X                               ; $8BA125 |
  BNE CODE_8BA138                           ; $8BA127 |
  LDA.B $44,X                               ; $8BA129 |
  CMP.W #$5000                              ; $8BA12B |
  BCS CODE_8BA15A                           ; $8BA12E |
  LDA.B $44,X                               ; $8BA130 |
  CLC                                       ; $8BA132 |
  ADC.W #$0400                              ; $8BA133 |
  STA.B $44,X                               ; $8BA136 |

CODE_8BA138:
  LDA.W $00FD,X                             ; $8BA138 |
  CMP.W #$00B0                              ; $8BA13B |
  BCS CODE_8BA141                           ; $8BA13E |
  RTL                                       ; $8BA140 |

CODE_8BA141:
  PHX                                       ; $8BA141 |
  TXA                                       ; $8BA142 |
  CLC                                       ; $8BA143 |
  ADC.W #$00F0                              ; $8BA144 |
  TAX                                       ; $8BA147 |
  STX.B $FC                                 ; $8BA148 |
  LDY.W #$C6F8                              ; $8BA14A |
  JSR.W CODE_FN_8BA873                      ; $8BA14D |
  LDA.W #$0030                              ; $8BA150 |
  JSL.L CODE_FL_8089BD                      ; $8BA153 |
  PLX                                       ; $8BA157 |
  STX.B $FC                                 ; $8BA158 |

CODE_8BA15A:
  INC.B $1A,X                               ; $8BA15A |
  RTL                                       ; $8BA15C |

CODE_8BA15D:
  LDA.B $44,X                               ; $8BA15D |
  AND.W #$FF00                              ; $8BA15F |
  CMP.W #$1001                              ; $8BA162 |
  BCC CODE_8BA170                           ; $8BA165 |
  LDA.B $44,X                               ; $8BA167 |
  SEC                                       ; $8BA169 |
  SBC.W #$0200                              ; $8BA16A |
  STA.B $44,X                               ; $8BA16D |
  RTL                                       ; $8BA16F |

CODE_8BA170:
  LDA.W #$1000                              ; $8BA170 |
  STA.B $44,X                               ; $8BA173 |
  INC.B $1A,X                               ; $8BA175 |
  RTL                                       ; $8BA177 |

CODE_8BA178:
  LDA.B $3C,X                               ; $8BA178 |
  TAY                                       ; $8BA17A |
  AND.W #$FF80                              ; $8BA17B |
  CMP.W #$0C00                              ; $8BA17E |
  BEQ CODE_8BA191                           ; $8BA181 |
  TYA                                       ; $8BA183 |
  CLC                                       ; $8BA184 |
  ADC.W #$0080                              ; $8BA185 |
  STA.B $3C,X                               ; $8BA188 |
  JSR.W CODE_FN_8BA766                      ; $8BA18A |
  JSR.W CODE_FN_8BA790                      ; $8BA18D |
  RTL                                       ; $8BA190 |

CODE_8BA191:
  JSR.W CODE_FN_8BA85D                      ; $8BA191 |
  RTL                                       ; $8BA194 |

CODE_8BA195:
  STZ.B $46,X                               ; $8BA195 |
  INC.B $1A,X                               ; $8BA197 |

CODE_8BA199:
  LDA.B $44,X                               ; $8BA199 |
  CMP.W #$0101                              ; $8BA19B |
  BCC CODE_8BA1A7                           ; $8BA19E |
  SEC                                       ; $8BA1A0 |
  SBC.W #$0080                              ; $8BA1A1 |
  STA.B $44,X                               ; $8BA1A4 |
  RTL                                       ; $8BA1A6 |

CODE_8BA1A7:
  LDA.W #$0080                              ; $8BA1A7 |
  STA.B $00                                 ; $8BA1AA |
  LDA.W #$0014                              ; $8BA1AC |
  STA.B $02                                 ; $8BA1AF |
  JSL.L CODE_FL_8AB426                      ; $8BA1B1 |
  XBA                                       ; $8BA1B5 |
  ASL A                                     ; $8BA1B6 |
  ASL A                                     ; $8BA1B7 |
  ASL A                                     ; $8BA1B8 |
  STA.B $42,X                               ; $8BA1B9 |
  STZ.B $3C,X                               ; $8BA1BB |
  JSR.W CODE_FN_8BA766                      ; $8BA1BD |
  JSR.W CODE_FN_8BA790                      ; $8BA1C0 |
  LDA.W #$0020                              ; $8BA1C3 |
  STA.B $2C,X                               ; $8BA1C6 |
  INC.B $1A,X                               ; $8BA1C8 |
  RTL                                       ; $8BA1CA |

CODE_8BA1CB:
  JSL.L CODE_FL_86C70D                      ; $8BA1CB |
  INC.B $1A,X                               ; $8BA1CF |
  RTL                                       ; $8BA1D1 |

CODE_8BA1D2:
  LDA.W $00FD,X                             ; $8BA1D2 |
  CLC                                       ; $8BA1D5 |
  ADC.W #$0020                              ; $8BA1D6 |
  CMP.W #$0034                              ; $8BA1D9 |
  BCC CODE_8BA1E7                           ; $8BA1DC |
  LDA.B $44,X                               ; $8BA1DE |
  CLC                                       ; $8BA1E0 |
  ADC.W #$0400                              ; $8BA1E1 |
  STA.B $44,X                               ; $8BA1E4 |
  RTL                                       ; $8BA1E6 |

CODE_8BA1E7:
  JSR.W CODE_FN_8BA862                      ; $8BA1E7 |
  LDA.W #$0038                              ; $8BA1EA |
  JML.L push_sound_queue                    ; $8BA1ED |

CODE_8BA1F1:
  LDA.W #$0001                              ; $8BA1F1 |
  STA.B $46,X                               ; $8BA1F4 |
  INC.B $1A,X                               ; $8BA1F6 |

CODE_8BA1F8:
  JSR.W CODE_FN_8BA790                      ; $8BA1F8 |
  STZ.B $08                                 ; $8BA1FB |
  LDA.B $42,X                               ; $8BA1FD |
  TAY                                       ; $8BA1FF |
  AND.W #$FF80                              ; $8BA200 |
  CMP.W #$C000                              ; $8BA203 |
  BEQ CODE_8BA220                           ; $8BA206 |
  TYA                                       ; $8BA208 |
  LDY.W #$C000                              ; $8BA209 |
  JSR.W CODE_FN_8BA69A                      ; $8BA20C |
  LDA.W #$FF80                              ; $8BA20F |
  DEC.B $1A                                 ; $8BA212 |
  BEQ CODE_8BA219                           ; $8BA214 |
  LDA.W #$0080                              ; $8BA216 |

CODE_8BA219:
  CLC                                       ; $8BA219 |
  ADC.B $42,X                               ; $8BA21A |
  STA.B $42,X                               ; $8BA21C |
  INC.B $08                                 ; $8BA21E |

CODE_8BA220:
  LDA.B $44,X                               ; $8BA220 |
  AND.W #$FF00                              ; $8BA222 |
  CMP.W #$1400                              ; $8BA225 |
  BEQ CODE_8BA23A                           ; $8BA228 |
  BCS CODE_8BA231                           ; $8BA22A |
  LDA.W #$0100                              ; $8BA22C |
  BRA CODE_8BA234                           ; $8BA22F |

CODE_8BA231:
  LDA.W #$FF00                              ; $8BA231 |

CODE_8BA234:
  CLC                                       ; $8BA234 |
  ADC.B $44,X                               ; $8BA235 |
  STA.B $44,X                               ; $8BA237 |
  RTL                                       ; $8BA239 |

CODE_8BA23A:
  LDA.B $08                                 ; $8BA23A |
  BEQ CODE_8BA23F                           ; $8BA23C |
  RTL                                       ; $8BA23E |

CODE_8BA23F:
  JSR.W CODE_FN_8BA862                      ; $8BA23F |
  RTL                                       ; $8BA242 |

CODE_8BA243:
  LDA.W #$0001                              ; $8BA243 |
  STA.B $46,X                               ; $8BA246 |
  INC.B $1A,X                               ; $8BA248 |

CODE_8BA24A:
  LDA.W #$FFC0                              ; $8BA24A |
  JSR.W CODE_FN_8BA6F9                      ; $8BA24D |
  JSR.W CODE_FN_8BA766                      ; $8BA250 |
  JSR.W CODE_FN_8BA7DC                      ; $8BA253 |
  LDA.B $3C,X                               ; $8BA256 |
  BPL CODE_8BA262                           ; $8BA258 |
  CMP.W #$F800                              ; $8BA25A |
  BCS CODE_8BA262                           ; $8BA25D |
  JSR.W CODE_FN_8BA866                      ; $8BA25F |

CODE_8BA262:
  RTL                                       ; $8BA262 |

CODE_8BA263:
  LDA.W #$0001                              ; $8BA263 |
  STA.B $46,X                               ; $8BA266 |
  INC.B $1A,X                               ; $8BA268 |

CODE_8BA26A:
  LDA.W #$0040                              ; $8BA26A |
  JSR.W CODE_FN_8BA6F9                      ; $8BA26D |
  JSR.W CODE_FN_8BA766                      ; $8BA270 |
  JSR.W CODE_FN_8BA7DC                      ; $8BA273 |
  LDA.B $3C,X                               ; $8BA276 |
  BMI CODE_8BA282                           ; $8BA278 |
  CMP.W #$0801                              ; $8BA27A |
  BCC CODE_8BA282                           ; $8BA27D |
  JSR.W CODE_FN_8BA866                      ; $8BA27F |

CODE_8BA282:
  RTL                                       ; $8BA282 |

CODE_8BA283:
  STZ.B $46,X                               ; $8BA283 |
  LDA.W #$0003                              ; $8BA285 |
  STA.B $00                                 ; $8BA288 |
  PHX                                       ; $8BA28A |

CODE_8BA28B:
  TXA                                       ; $8BA28B |
  CLC                                       ; $8BA28C |
  ADC.W #$0050                              ; $8BA28D |
  TAX                                       ; $8BA290 |
  JSL.L CODE_FL_85A9F7                      ; $8BA291 |
  DEC.B $00                                 ; $8BA295 |
  BNE CODE_8BA28B                           ; $8BA297 |
  PLX                                       ; $8BA299 |
  INC.B $1A,X                               ; $8BA29A |
  RTL                                       ; $8BA29C |

CODE_8BA29D:
  LDA.B $44,X                               ; $8BA29D |
  CMP.W #$0800                              ; $8BA29F |
  BCC CODE_8BA2AA                           ; $8BA2A2 |
  SEC                                       ; $8BA2A4 |
  SBC.W #$0040                              ; $8BA2A5 |
  STA.B $44,X                               ; $8BA2A8 |

CODE_8BA2AA:
  RTL                                       ; $8BA2AA |

CODE_8BA2AB:
  LDA.W #$0004                              ; $8BA2AB |
  STA.B $08                                 ; $8BA2AE |
  PHX                                       ; $8BA2B0 |

CODE_8BA2B1:
  LDA.B $22,X                               ; $8BA2B1 |
  ORA.W #$4000                              ; $8BA2B3 |
  STA.B $22,X                               ; $8BA2B6 |
  JSR.W CODE_FN_8BA2D1                      ; $8BA2B8 |
  LDA.W #$0002                              ; $8BA2BB |
  STA.B $1A,X                               ; $8BA2BE |
  TXA                                       ; $8BA2C0 |
  CLC                                       ; $8BA2C1 |
  ADC.W #$0050                              ; $8BA2C2 |
  TAX                                       ; $8BA2C5 |
  DEC.B $08                                 ; $8BA2C6 |
  BNE CODE_8BA2B1                           ; $8BA2C8 |
  PLX                                       ; $8BA2CA |
  LDA.W #$0019                              ; $8BA2CB |
  STA.B $1A,X                               ; $8BA2CE |
  RTL                                       ; $8BA2D0 |

CODE_FN_8BA2D1:
  LDA.B $86                                 ; $8BA2D1 |
  CLC                                       ; $8BA2D3 |
  ADC.W #$0070                              ; $8BA2D4 |
  STA.B $86                                 ; $8BA2D7 |
  AND.W #$01FF                              ; $8BA2D9 |
  LDY.W #$0004                              ; $8BA2DC |
  JSL.L CODE_FL_8AB51A                      ; $8BA2DF |
  LDA.B $00                                 ; $8BA2E3 |
  STA.B $26,X                               ; $8BA2E5 |
  LDA.B $04                                 ; $8BA2E7 |
  STA.B $28,X                               ; $8BA2E9 |
  RTS                                       ; $8BA2EB |

CODE_8BA2EC:
  JML.L CODE_FL_86C855                      ; $8BA2EC |

CODE_8BA2F0:
  JSL.L CODE_FL_85F885                      ; $8BA2F0 |
  LDA.B $1A,X                               ; $8BA2F4 |
  PHX                                       ; $8BA2F6 |
  ASL A                                     ; $8BA2F7 |
  TAX                                       ; $8BA2F8 |
  LDA.L PTR16_8BA303,X                      ; $8BA2F9 |
  PLX                                       ; $8BA2FD |
  STA.B $00                                 ; $8BA2FE |
  JMP.W ($0000)                             ; $8BA300 |

PTR16_8BA303:
  dw CODE_8BA309                            ; $8BA303 |
  dw CODE_8BA339                            ; $8BA305 |
  dw CODE_8BA36F                            ; $8BA307 |

CODE_8BA309:
  LDA.W #$8019                              ; $8BA309 |
  STA.B $22,X                               ; $8BA30C |
  JSL.L CODE_FL_85A9EF                      ; $8BA30E |
  JSL.L CODE_FL_86C63F                      ; $8BA312 |
  STZ.B $3A,X                               ; $8BA316 |
  LDA.B $4E,X                               ; $8BA318 |
  BMI CODE_8BA32A                           ; $8BA31A |
  AND.W #$000F                              ; $8BA31C |
  EOR.W #$FFFF                              ; $8BA31F |
  INC A                                     ; $8BA322 |
  CLC                                       ; $8BA323 |
  ADC.W #$0038                              ; $8BA324 |
  STA.B $14,X                               ; $8BA327 |
  RTL                                       ; $8BA329 |

CODE_8BA32A:
  AND.W #$000F                              ; $8BA32A |
  CLC                                       ; $8BA32D |
  ADC.W #$008C                              ; $8BA32E |
  STA.B $14,X                               ; $8BA331 |
  LDA.W #$0080                              ; $8BA333 |
  STA.B $04,X                               ; $8BA336 |
  RTL                                       ; $8BA338 |

CODE_8BA339:
  LDA.B $4E,X                               ; $8BA339 |
  AND.W #$7FFF                              ; $8BA33B |
  CMP.W #$0003                              ; $8BA33E |
  BEQ CODE_8BA349                           ; $8BA341 |
  LDA.W #$304A                              ; $8BA343 |
  STA.B $00,X                               ; $8BA346 |
  RTL                                       ; $8BA348 |

CODE_8BA349:
  JSR.W CODE_FN_8BA83F                      ; $8BA349 |
  CLC                                       ; $8BA34C |
  ADC.W #$0010                              ; $8BA34D |
  LSR A                                     ; $8BA350 |
  LSR A                                     ; $8BA351 |
  LSR A                                     ; $8BA352 |
  LSR A                                     ; $8BA353 |
  AND.W #$001E                              ; $8BA354 |
  TAY                                       ; $8BA357 |
  LDA.W CODE_00C72E,Y                       ; $8BA358 |
  STA.B $00,X                               ; $8BA35B |
  TYA                                       ; $8BA35D |
  LSR A                                     ; $8BA35E |
  LSR A                                     ; $8BA35F |
  AND.W #$0006                              ; $8BA360 |
  TAY                                       ; $8BA363 |
  LDA.B $04,X                               ; $8BA364 |
  AND.W #$9F9F                              ; $8BA366 |
  ORA.W CODE_00C74E,Y                       ; $8BA369 |
  STA.B $04,X                               ; $8BA36C |
  RTL                                       ; $8BA36E |

CODE_8BA36F:
  JML.L CODE_FL_86C855                      ; $8BA36F |

CODE_8BA373:
  JSL.L CODE_FL_86C3F8                      ; $8BA373 |
  PHX                                       ; $8BA377 |
  ASL A                                     ; $8BA378 |
  TAX                                       ; $8BA379 |
  LDA.L PTR16_8BA384,X                      ; $8BA37A |
  PLX                                       ; $8BA37E |
  STA.B $00                                 ; $8BA37F |
  JMP.W ($0000)                             ; $8BA381 |

PTR16_8BA384:
  dw CODE_8BA38C                            ; $8BA384 |
  dw CODE_8BA3D8                            ; $8BA386 |
  dw CODE_8BA3DC                            ; $8BA388 |
  dw CODE_8BA3E0                            ; $8BA38A |

CODE_8BA38C:
  LDA.B $4E,X                               ; $8BA38C |
  STA.B $00                                 ; $8BA38E |
  LSR A                                     ; $8BA390 |
  AND.W #$000E                              ; $8BA391 |
  TAY                                       ; $8BA394 |
  LDA.W LOOSE_OP_00C6CC,Y                   ; $8BA395 |
  STA.B $00,X                               ; $8BA398 |
  LDA.W #$1898                              ; $8BA39A |
  LSR.B $00                                 ; $8BA39D |
  BCC CODE_8BA3A4                           ; $8BA39F |
  ORA.W #$2020                              ; $8BA3A1 |

CODE_8BA3A4:
  LSR.B $00                                 ; $8BA3A4 |
  BCC CODE_8BA3AB                           ; $8BA3A6 |
  ORA.W #$4040                              ; $8BA3A8 |

CODE_8BA3AB:
  STA.B $04,X                               ; $8BA3AB |
  LDA.W #$0038                              ; $8BA3AD |
  STA.B $14,X                               ; $8BA3B0 |
  LDA.W #$0040                              ; $8BA3B2 |
  STA.B $4C,X                               ; $8BA3B5 |
  LDA.B $4E,X                               ; $8BA3B7 |
  CMP.W #$001C                              ; $8BA3B9 |
  BEQ CODE_8BA3C6                           ; $8BA3BC |
  CMP.W #$0018                              ; $8BA3BE |
  BEQ CODE_8BA3D2                           ; $8BA3C1 |
  INC.B $1A,X                               ; $8BA3C3 |
  RTL                                       ; $8BA3C5 |

CODE_8BA3C6:
  LDA.W #$0003                              ; $8BA3C6 |
  STA.B $1A,X                               ; $8BA3C9 |
  LDA.W #$007D                              ; $8BA3CB |
  JML.L CODE_FL_86CAEE                      ; $8BA3CE |

CODE_8BA3D2:
  LDA.W #$0002                              ; $8BA3D2 |
  STA.B $1A,X                               ; $8BA3D5 |
  RTL                                       ; $8BA3D7 |

CODE_8BA3D8:
  JSR.W CODE_FN_8BA5E0                      ; $8BA3D8 |
  RTL                                       ; $8BA3DB |

CODE_8BA3DC:
  JML.L CODE_FL_86C82F                      ; $8BA3DC |

CODE_8BA3E0:
  LDA.B $1C,X                               ; $8BA3E0 |
  CMP.W #$000C                              ; $8BA3E2 |
  BNE CODE_8BA3F2                           ; $8BA3E5 |
  LDA.B $20,X                               ; $8BA3E7 |
  CMP.W #$0001                              ; $8BA3E9 |
  BNE CODE_8BA3F2                           ; $8BA3EC |
  JSL.L CODE_FL_808F2C                      ; $8BA3EE |

CODE_8BA3F2:
  RTL                                       ; $8BA3F2 |

CODE_8BA3F3:
  LDA.W $0B8A                               ; $8BA3F3 |
  CMP.W #$0006                              ; $8BA3F6 |
  BNE CODE_8BA3FE                           ; $8BA3F9 |
  JMP.W CODE_JP_8BA551                      ; $8BA3FB |

CODE_8BA3FE:
  LDA.B $1A,X                               ; $8BA3FE |
  CMP.W #$0005                              ; $8BA400 |
  BCS CODE_8BA416                           ; $8BA403 |
  LDA.B $32,X                               ; $8BA405 |
  BPL CODE_8BA416                           ; $8BA407 |
  LDA.B $37,X                               ; $8BA409 |
  AND.W #$00FF                              ; $8BA40B |
  CMP.W #$0001                              ; $8BA40E |
  BEQ CODE_8BA416                           ; $8BA411 |
  BRL CODE_JL_8BA54B                        ; $8BA413 |

CODE_8BA416:
  JSL.L CODE_FL_85F885                      ; $8BA416 |
  JSL.L CODE_FL_86C3F8                      ; $8BA41A |
  PHX                                       ; $8BA41E |
  ASL A                                     ; $8BA41F |
  TAX                                       ; $8BA420 |
  LDA.L PTR16_8BA42B,X                      ; $8BA421 |
  PLX                                       ; $8BA425 |
  STA.B $00                                 ; $8BA426 |
  JMP.W ($0000)                             ; $8BA428 |

PTR16_8BA42B:
  dw CODE_8BA443                            ; $8BA42B |
  dw CODE_8BA47E                            ; $8BA42D |
  dw CODE_8BA490                            ; $8BA42F |
  dw CODE_8BA49E                            ; $8BA431 |
  dw CODE_8BA4AF                            ; $8BA433 |
  dw CODE_8BA4B0                            ; $8BA435 |
  dw CODE_8BA4D0                            ; $8BA437 |
  dw CODE_8BA4E5                            ; $8BA439 |
  dw CODE_8BA509                            ; $8BA43B |
  dw CODE_8BA559                            ; $8BA43D |
  dw CODE_8BA59F                            ; $8BA43F |
  dw CODE_8BA5F3                            ; $8BA441 |

CODE_8BA443:
  JSL.L CODE_FL_86C444                      ; $8BA443 |
  JSL.L CODE_FL_86C63F                      ; $8BA447 |
  LDA.W #$C010                              ; $8BA44B |
  STA.B $22,X                               ; $8BA44E |
  LDA.W #$003F                              ; $8BA450 |
  STA.B $14,X                               ; $8BA453 |
  LDA.W #$1898                              ; $8BA455 |
  STA.B $04,X                               ; $8BA458 |
  JSL.L CODE_FL_86C486                      ; $8BA45A |
  LDA.W #$0079                              ; $8BA45E |
  JSL.L CODE_FL_86CAEE                      ; $8BA461 |
  LDA.W #$00C0                              ; $8BA465 |
  STA.B $0D,X                               ; $8BA468 |
  LDA.W #$FA00                              ; $8BA46A |
  STA.B $28,X                               ; $8BA46D |
  LDA.W #$0040                              ; $8BA46F |
  STA.B $4C,X                               ; $8BA472 |
  LDA.W #$0229                              ; $8BA474 |
  JSL.L CODE_FL_86C9C2                      ; $8BA477 |
  STX.B $44,Y                               ; $8BA47B |
  RTL                                       ; $8BA47D |

CODE_8BA47E:
  JSL.L CODE_FL_86C82F                      ; $8BA47E |
  BPL CODE_8BA485                           ; $8BA482 |
  RTL                                       ; $8BA484 |

CODE_8BA485:
  JSL.L CODE_FL_85A9EF                      ; $8BA485 |
  JSL.L CODE_FL_85A9B7                      ; $8BA489 |
  INC.B $1A,X                               ; $8BA48D |
  RTL                                       ; $8BA48F |

CODE_8BA490:
  JSL.L CODE_FL_85A646                      ; $8BA490 |
  BEQ CODE_8BA49D                           ; $8BA494 |
  LDA.W #$0007                              ; $8BA496 |
  JSL.L push_sound_queue                    ; $8BA499 |

CODE_8BA49D:
  RTL                                       ; $8BA49D |

CODE_8BA49E:
  LDA.W #$007A                              ; $8BA49E |
  JSL.L CODE_FL_86CAEE                      ; $8BA4A1 |
  LDA.W #$FF40                              ; $8BA4A5 |
  JSL.L CODE_FL_86C71F                      ; $8BA4A8 |
  INC.B $1A,X                               ; $8BA4AC |
  RTL                                       ; $8BA4AE |

CODE_8BA4AF:
  RTL                                       ; $8BA4AF |

CODE_8BA4B0:
  JSL.L CODE_FL_85A9BF                      ; $8BA4B0 |
  JSL.L CODE_FL_85A9F7                      ; $8BA4B4 |
  LDA.W #$007B                              ; $8BA4B8 |
  JSL.L CODE_FL_86CAEE                      ; $8BA4BB |
  STZ.B $26,X                               ; $8BA4BF |
  STZ.B $28,X                               ; $8BA4C1 |
  LDA.W #$BA84                              ; $8BA4C3 |
  STA.B $34,X                               ; $8BA4C6 |
  LDA.W #$0011                              ; $8BA4C8 |
  STA.B $30,X                               ; $8BA4CB |
  INC.B $1A,X                               ; $8BA4CD |
  RTL                                       ; $8BA4CF |

CODE_8BA4D0:
  JSL.L CODE_FL_85A62E                      ; $8BA4D0 |
  LDA.B $1C,X                               ; $8BA4D4 |
  CMP.W #$0003                              ; $8BA4D6 |
  BEQ CODE_8BA4DC                           ; $8BA4D9 |
  RTL                                       ; $8BA4DB |

CODE_8BA4DC:
  LDY.W #$C726                              ; $8BA4DC |
  JSR.W CODE_FN_8BA873                      ; $8BA4DF |
  INC.B $1A,X                               ; $8BA4E2 |
  RTL                                       ; $8BA4E4 |

CODE_8BA4E5:
  JSL.L CODE_FL_85A62E                      ; $8BA4E5 |
  LDA.B $1C,X                               ; $8BA4E9 |
  CMP.W #$0012                              ; $8BA4EB |
  BEQ CODE_8BA4F1                           ; $8BA4EE |
  RTL                                       ; $8BA4F0 |

CODE_8BA4F1:
  LDA.W #$007C                              ; $8BA4F1 |
  JSL.L CODE_FL_86CAEE                      ; $8BA4F4 |
  LDA.B $34,X                               ; $8BA4F8 |
  ORA.W #$0004                              ; $8BA4FA |
  STA.B $34,X                               ; $8BA4FD |
  STZ.B $32,X                               ; $8BA4FF |
  LDA.W #$0080                              ; $8BA501 |
  STA.B $2C,X                               ; $8BA504 |
  INC.B $1A,X                               ; $8BA506 |
  RTL                                       ; $8BA508 |

CODE_8BA509:
  LDA.B $32,X                               ; $8BA509 |
  BPL CODE_8BA51C                           ; $8BA50B |
  AND.W #$7FFF                              ; $8BA50D |
  STA.B $32,X                               ; $8BA510 |
  LDA.B $37,X                               ; $8BA512 |
  AND.W #$00FF                              ; $8BA514 |
  CMP.W #$0001                              ; $8BA517 |
  BNE CODE_8BA584                           ; $8BA51A |

CODE_8BA51C:
  JSL.L CODE_FL_858BB9                      ; $8BA51C |
  BNE CODE_8BA528                           ; $8BA520 |
  JSL.L CODE_FL_86C82F                      ; $8BA522 |
  BRA CODE_8BA539                           ; $8BA526 |

CODE_8BA528:
  LDA.W $1C14                               ; $8BA528 |
  BEQ CODE_8BA537                           ; $8BA52B |
  CLC                                       ; $8BA52D |
  LDA.B $0D,X                               ; $8BA52E |
  ADC.W $1C24                               ; $8BA530 |
  STA.B $0D,X                               ; $8BA533 |
  STZ.B $28,X                               ; $8BA535 |

CODE_8BA537:
  STZ.B $26,X                               ; $8BA537 |

CODE_8BA539:
  LDA.B $46,X                               ; $8BA539 |
  AND.W #$0200                              ; $8BA53B |
  BEQ CODE_8BA547                           ; $8BA53E |
  STZ.B $46,X                               ; $8BA540 |
  LDA.W #$0009                              ; $8BA542 |
  STA.B $1A,X                               ; $8BA545 |

CODE_8BA547:
  JSL.L CODE_FL_86C70D                      ; $8BA547 |

CODE_JL_8BA54B:
  LDA.W #$A000                              ; $8BA54B |
  JSR.W CODE_FN_8BA66C                      ; $8BA54E |

CODE_JP_8BA551:
  JSL.L CODE_FL_85A71F                      ; $8BA551 |
  JML.L CODE_FL_86CA2D                      ; $8BA555 |

CODE_8BA559:
  JSL.L CODE_FL_86B214                      ; $8BA559 |
  LDA.B $1A,X                               ; $8BA55D |
  CMP.W #$0009                              ; $8BA55F |
  BNE CODE_8BA565                           ; $8BA562 |
  RTL                                       ; $8BA564 |

CODE_8BA565:
  LDA.W #$F980                              ; $8BA565 |
  STA.B $28,X                               ; $8BA568 |
  LDY.B $3C,X                               ; $8BA56A |

CODE_8BA56C:
  LDA.W $0004,Y                             ; $8BA56C |
  LDY.W #$0180                              ; $8BA56F |
  BIT.W #$0020                              ; $8BA572 |
  BEQ CODE_8BA57A                           ; $8BA575 |
  LDY.W #$FE80                              ; $8BA577 |

CODE_8BA57A:
  STY.B $26,X                               ; $8BA57A |
  STZ.B $34,X                               ; $8BA57C |
  LDA.W #$000A                              ; $8BA57E |
  STA.B $1A,X                               ; $8BA581 |
  RTL                                       ; $8BA583 |

CODE_8BA584:
  LDA.W #$000C                              ; $8BA584 |
  JSL.L push_sound_queue                    ; $8BA587 |
  LDA.W #$F880                              ; $8BA58B |
  STA.B $28,X                               ; $8BA58E |
  LDA.B $32,X                               ; $8BA590 |
  LDY.W #$0400                              ; $8BA592 |
  BIT.W #$0200                              ; $8BA595 |
  BEQ CODE_8BA59D                           ; $8BA598 |
  LDY.W #$04C0                              ; $8BA59A |

CODE_8BA59D:
  BRA CODE_8BA56C                           ; $8BA59D |

CODE_8BA59F:
  JSR.W CODE_FN_8BA5E0                      ; $8BA59F |
  LDY.W #$0B70                              ; $8BA5A2 |
  JSL.L CODE_FL_8CFA51                      ; $8BA5A5 |
  BCC CODE_8BA5B5                           ; $8BA5A9 |
  LDY.W #$0BC0                              ; $8BA5AB |
  JSL.L CODE_FL_8CFA51                      ; $8BA5AE |
  BCC CODE_8BA5B5                           ; $8BA5B2 |
  RTL                                       ; $8BA5B4 |

CODE_8BA5B5:
  LDA.W $1CA6                               ; $8BA5B5 |
  BNE CODE_8BA5C7                           ; $8BA5B8 |
  LDA.W $0BB4                               ; $8BA5BA |
  BNE CODE_8BA5C7                           ; $8BA5BD |
  INC.W $0BB4                               ; $8BA5BF |
  JSR.W CODE_FN_8BA67F                      ; $8BA5C2 |
  BRA CODE_8BA5CA                           ; $8BA5C5 |

CODE_8BA5C7:
  JSR.W CODE_FN_8BA67A                      ; $8BA5C7 |

CODE_8BA5CA:
  LDA.B $09,X                               ; $8BA5CA |
  CMP.W $0B79                               ; $8BA5CC |
  BCS CODE_8BA5D6                           ; $8BA5CF |
  LDA.W #$FD00                              ; $8BA5D1 |
  BRA CODE_8BA5D9                           ; $8BA5D4 |

CODE_8BA5D6:
  LDA.W #$0300                              ; $8BA5D6 |

CODE_8BA5D9:
  STA.B $26,X                               ; $8BA5D9 |
  STZ.B $28,X                               ; $8BA5DB |

CODE_8BA5DD:
  INC.B $1A,X                               ; $8BA5DD |
  RTL                                       ; $8BA5DF |

CODE_FN_8BA5E0:
  JSL.L CODE_FL_86C82F                      ; $8BA5E0 |
  LDA.W $1C38                               ; $8BA5E4 |
  AND.W #$0007                              ; $8BA5E7 |
  BEQ CODE_8BA5ED                           ; $8BA5EA |
  RTS                                       ; $8BA5EC |

CODE_8BA5ED:
  LDY.W #$C72A                              ; $8BA5ED |
  BRL CODE_FN_8BA873                        ; $8BA5F0 |

CODE_8BA5F3:
  JSR.W CODE_FN_8BA5E0                      ; $8BA5F3 |
  RTL                                       ; $8BA5F6 |

CODE_FN_8BA5F7:
  LDA.B $86                                 ; $8BA5F7 |
  LDY.W #$0017                              ; $8BA5F9 |
  JSL.L CODE_FL_808E18                      ; $8BA5FC |
  ADC.W $1C38                               ; $8BA600 |
  EOR.B $86                                 ; $8BA603 |
  STA.B $86                                 ; $8BA605 |
  RTS                                       ; $8BA607 |

CODE_FL_8BA608:
  INC.B $1A,X                               ; $8BA608 |
  STZ.B $46,X                               ; $8BA60A |
  RTL                                       ; $8BA60C |

CODE_FN_8BA60D:
  PHX                                       ; $8BA60D |
  LDX.W #$0BC0                              ; $8BA60E |
  LDA.W #$A000                              ; $8BA611 |
  STA.B $34,X                               ; $8BA614 |
  JSL.L CODE_FL_85A9EF                      ; $8BA616 |
  PLX                                       ; $8BA61A |
  RTS                                       ; $8BA61B |

CODE_FN_8BA61C:
  LDA.W $1CA0                               ; $8BA61C |
  BEQ CODE_8BA657                           ; $8BA61F |
  LDA.W $1C38                               ; $8BA621 |
  AND.W #$007F                              ; $8BA624 |
  BNE CODE_8BA657                           ; $8BA627 |
  LDA.W #$00E3                              ; $8BA629 |
  JSL.L CODE_FL_86C9A7                      ; $8BA62C |
  BCS CODE_8BA657                           ; $8BA630 |
  PHX                                       ; $8BA632 |
  TYX                                       ; $8BA633 |
  STX.B $FC                                 ; $8BA634 |
  LDA.W #$0004                              ; $8BA636 |
  STA.B $08                                 ; $8BA639 |

CODE_8BA63B:
  INC.W $1CA2                               ; $8BA63B |
  LDA.W $1CA2                               ; $8BA63E |
  AND.W #$0003                              ; $8BA641 |
  TAY                                       ; $8BA644 |
  LDA.W CODE_00C7AB,Y                       ; $8BA645 |
  AND.W #$00FF                              ; $8BA648 |
  JSR.W CODE_FN_8BA658                      ; $8BA64B |
  BCS CODE_8BA654                           ; $8BA64E |
  DEC.B $08                                 ; $8BA650 |
  BNE CODE_8BA63B                           ; $8BA652 |

CODE_8BA654:
  PLX                                       ; $8BA654 |
  STX.B $FC                                 ; $8BA655 |

CODE_8BA657:
  RTS                                       ; $8BA657 |

CODE_FN_8BA658:
  STA.B $09,X                               ; $8BA658 |
  JSL.L CODE_FL_86C4A5                      ; $8BA65A |
  JSL.L CODE_FL_86C55C                      ; $8BA65E |
  BPL CODE_8BA668                           ; $8BA662 |
  EOR.W #$FFFF                              ; $8BA664 |
  INC A                                     ; $8BA667 |

CODE_8BA668:
  CMP.W #$0020                              ; $8BA668 |
  RTS                                       ; $8BA66B |

CODE_FN_8BA66C:
  STA.B $08                                 ; $8BA66C |
  JSR.W CODE_FN_8BA5F7                      ; $8BA66E |
  CMP.B $08                                 ; $8BA671 |
  BCS CODE_8BA679                           ; $8BA673 |
  JSL.L CODE_FL_85AAA5                      ; $8BA675 |

CODE_8BA679:
  RTS                                       ; $8BA679 |

CODE_FN_8BA67A:
  LDA.W #$0040                              ; $8BA67A |
  BRA CODE_8BA682                           ; $8BA67D |

CODE_FN_8BA67F:
  LDA.W #$0045                              ; $8BA67F |

CODE_8BA682:
  STA.B $08                                 ; $8BA682 |
  LDA.W #$0060                              ; $8BA684 |
  JSL.L CODE_FL_86C9C5                      ; $8BA687 |
  BCS CODE_8BA699                           ; $8BA68B |
  LDA.B $08                                 ; $8BA68D |
  JSL.L CODE_FL_86CAE6                      ; $8BA68F |
  LDA.W #$1898                              ; $8BA693 |
  STA.W $0004,Y                             ; $8BA696 |

CODE_8BA699:
  RTS                                       ; $8BA699 |

CODE_FN_8BA69A:
  STA.B $1A                                 ; $8BA69A |
  STY.B $1C                                 ; $8BA69C |
  SEC                                       ; $8BA69E |
  SBC.B $1C                                 ; $8BA69F |
  STA.B $18                                 ; $8BA6A1 |
  LDA.B $1C                                 ; $8BA6A3 |
  SEC                                       ; $8BA6A5 |
  SBC.B $1A                                 ; $8BA6A6 |
  STZ.B $1A                                 ; $8BA6A8 |
  CMP.B $18                                 ; $8BA6AA |
  BCC CODE_8BA6B0                           ; $8BA6AC |
  INC.B $1A                                 ; $8BA6AE |

CODE_8BA6B0:
  RTS                                       ; $8BA6B0 |

CODE_FN_8BA6B1:
  LDA.B $3A,X                               ; $8BA6B1 |
  SEP #$20                                  ; $8BA6B3 |
  EOR.B #$FF                                ; $8BA6B5 |
  INC A                                     ; $8BA6B7 |
  REP #$20                                  ; $8BA6B8 |
  STA.W $1C9E                               ; $8BA6BA |
  TAY                                       ; $8BA6BD |
  LDA.B $3A,X                               ; $8BA6BE |
  JSR.W CODE_FN_8BA69A                      ; $8BA6C0 |
  LDA.W #$FFFC                              ; $8BA6C3 |
  DEC.B $1A                                 ; $8BA6C6 |
  BEQ CODE_8BA6CD                           ; $8BA6C8 |
  LDA.W #$0004                              ; $8BA6CA |

CODE_8BA6CD:
  STA.B $3E,X                               ; $8BA6CD |
  LDA.W $0C52                               ; $8BA6CF |
  CMP.W #$C000                              ; $8BA6D2 |
  LDY.W #$0012                              ; $8BA6D5 |
  BCC CODE_8BA6DD                           ; $8BA6D8 |
  LDY.W #$0014                              ; $8BA6DA |

CODE_8BA6DD:
  STY.W $0C50                               ; $8BA6DD |
  STY.W $0D90                               ; $8BA6E0 |
  RTS                                       ; $8BA6E3 |

CODE_FN_8BA6E4:
  LDA.B $3E,X                               ; $8BA6E4 |
  CLC                                       ; $8BA6E6 |
  ADC.B $3A,X                               ; $8BA6E7 |
  AND.W #$01FF                              ; $8BA6E9 |
  STA.B $3A,X                               ; $8BA6EC |
  RTS                                       ; $8BA6EE |

CODE_FN_8BA6EF:
  LDA.B $3E,X                               ; $8BA6EF |
  CLC                                       ; $8BA6F1 |
  ADC.B $42,X                               ; $8BA6F2 |
  STA.B $42,X                               ; $8BA6F4 |
  RTS                                       ; $8BA6F6 |

CODE_FN_8BA6F7:
  LDA.B $3E,X                               ; $8BA6F7 |

CODE_FN_8BA6F9:
  CLC                                       ; $8BA6F9 |
  ADC.B $3C,X                               ; $8BA6FA |
  STA.B $3C,X                               ; $8BA6FC |
  RTS                                       ; $8BA6FE |

CODE_FN_8BA6FF:
  LDA.B $44,X                               ; $8BA6FF |
  XBA                                       ; $8BA701 |
  AND.W #$00FF                              ; $8BA702 |
  TAY                                       ; $8BA705 |
  LDA.B $3A,X                               ; $8BA706 |
  LSR A                                     ; $8BA708 |
  LSR A                                     ; $8BA709 |
  LSR A                                     ; $8BA70A |
  LSR A                                     ; $8BA70B |
  LSR A                                     ; $8BA70C |
  LSR A                                     ; $8BA70D |
  LSR A                                     ; $8BA70E |

CODE_FN_8BA70F:
  JSL.L CODE_FL_8AB51A                      ; $8BA70F |
  LDY.W #$0B70                              ; $8BA713 |
  JSL.L CODE_FL_8AB509                      ; $8BA716 |
  LDA.B $09,X                               ; $8BA71A |
  CLC                                       ; $8BA71C |
  ADC.W #$0004                              ; $8BA71D |
  STA.B $09,X                               ; $8BA720 |
  LDA.B $0D,X                               ; $8BA722 |
  CLC                                       ; $8BA724 |
  ADC.W #$FFE0                              ; $8BA725 |
  STA.B $0D,X                               ; $8BA728 |
  RTS                                       ; $8BA72A |

CODE_FN_8BA72B:
  LDA.B $4E,X                               ; $8BA72B |
  BMI CODE_8BA765                           ; $8BA72D |
  LDA.B $44,X                               ; $8BA72F |
  XBA                                       ; $8BA731 |
  AND.W #$00FF                              ; $8BA732 |
  TAY                                       ; $8BA735 |
  LDA.B $3A,X                               ; $8BA736 |
  CLC                                       ; $8BA738 |
  ADC.W #$8000                              ; $8BA739 |
  LSR A                                     ; $8BA73C |
  LSR A                                     ; $8BA73D |
  LSR A                                     ; $8BA73E |
  LSR A                                     ; $8BA73F |
  LSR A                                     ; $8BA740 |
  LSR A                                     ; $8BA741 |
  LSR A                                     ; $8BA742 |
  JSL.L CODE_FL_8AB51A                      ; $8BA743 |
  PHX                                       ; $8BA747 |
  TXY                                       ; $8BA748 |
  LDX.W #$0B70                              ; $8BA749 |
  JSL.L CODE_FL_8AB509                      ; $8BA74C |
  PLX                                       ; $8BA750 |
  LDA.W $0B79                               ; $8BA751 |
  SEC                                       ; $8BA754 |
  SBC.W #$0004                              ; $8BA755 |
  STA.W $0B79                               ; $8BA758 |
  LDA.W $0B7D                               ; $8BA75B |
  SEC                                       ; $8BA75E |
  SBC.W #$FFE0                              ; $8BA75F |
  STA.W $0B7D                               ; $8BA762 |

CODE_8BA765:
  RTS                                       ; $8BA765 |

CODE_FN_8BA766:
  PHX                                       ; $8BA766 |
  LDY.B $3C,X                               ; $8BA767 |
  LDA.W #$0003                              ; $8BA769 |
  STA.B $00                                 ; $8BA76C |

CODE_8BA76E:
  TXA                                       ; $8BA76E |
  CLC                                       ; $8BA76F |
  ADC.W #$0050                              ; $8BA770 |
  TAX                                       ; $8BA773 |
  STY.B $3C,X                               ; $8BA774 |
  DEC.B $00                                 ; $8BA776 |
  BNE CODE_8BA76E                           ; $8BA778 |
  PLX                                       ; $8BA77A |
  RTS                                       ; $8BA77B |

  PHX                                       ; $8BA77C |
  LDA.W #$0003                              ; $8BA77D |
  STA.B $00                                 ; $8BA780 |

CODE_8BA782:
  TXA                                       ; $8BA782 |
  CLC                                       ; $8BA783 |
  ADC.W #$0050                              ; $8BA784 |
  TAX                                       ; $8BA787 |
  STZ.B $3E,X                               ; $8BA788 |
  DEC.B $00                                 ; $8BA78A |
  BNE CODE_8BA782                           ; $8BA78C |
  PLX                                       ; $8BA78E |
  RTS                                       ; $8BA78F |

CODE_FN_8BA790:
  PHX                                       ; $8BA790 |
  LDA.B $3C,X                               ; $8BA791 |
  CLC                                       ; $8BA793 |
  ADC.B $42,X                               ; $8BA794 |
  STA.B $3A,X                               ; $8BA796 |
  LDA.W #$0003                              ; $8BA798 |
  STA.B $08                                 ; $8BA79B |

CODE_8BA79D:
  TXY                                       ; $8BA79D |
  TXA                                       ; $8BA79E |
  CLC                                       ; $8BA79F |
  ADC.W #$0050                              ; $8BA7A0 |
  TAX                                       ; $8BA7A3 |
  LDA.W $003A,Y                             ; $8BA7A4 |
  CLC                                       ; $8BA7A7 |
  ADC.B $3C,X                               ; $8BA7A8 |
  STA.B $3A,X                               ; $8BA7AA |
  DEC.B $08                                 ; $8BA7AC |
  BNE CODE_8BA79D                           ; $8BA7AE |
  PLX                                       ; $8BA7B0 |
  RTS                                       ; $8BA7B1 |

CODE_FN_8BA7B2:
  LDA.B $44,X                               ; $8BA7B2 |
  XBA                                       ; $8BA7B4 |
  AND.W #$00FF                              ; $8BA7B5 |
  STA.B $0A                                 ; $8BA7B8 |
  PHX                                       ; $8BA7BA |
  LDA.W #$0003                              ; $8BA7BB |
  STA.B $08                                 ; $8BA7BE |

CODE_8BA7C0:
  TXY                                       ; $8BA7C0 |
  TXA                                       ; $8BA7C1 |
  CLC                                       ; $8BA7C2 |
  ADC.W #$0050                              ; $8BA7C3 |
  TAX                                       ; $8BA7C6 |
  PHY                                       ; $8BA7C7 |
  JSR.W CODE_FN_8BA83F                      ; $8BA7C8 |
  LDY.B $0A                                 ; $8BA7CB |
  JSL.L CODE_FL_8AB51A                      ; $8BA7CD |
  PLY                                       ; $8BA7D1 |
  JSL.L CODE_FL_8AB509                      ; $8BA7D2 |
  DEC.B $08                                 ; $8BA7D6 |
  BNE CODE_8BA7C0                           ; $8BA7D8 |
  PLX                                       ; $8BA7DA |
  RTS                                       ; $8BA7DB |

CODE_FN_8BA7DC:
  PHX                                       ; $8BA7DC |
  LDA.W #$0003                              ; $8BA7DD |
  STA.B $08                                 ; $8BA7E0 |
  TXA                                       ; $8BA7E2 |
  CLC                                       ; $8BA7E3 |
  ADC.W #$00F0                              ; $8BA7E4 |
  TAX                                       ; $8BA7E7 |

CODE_8BA7E8:
  TXY                                       ; $8BA7E8 |
  TXA                                       ; $8BA7E9 |
  SEC                                       ; $8BA7EA |
  SBC.W #$0050                              ; $8BA7EB |
  TAX                                       ; $8BA7EE |
  LDA.W $003A,Y                             ; $8BA7EF |
  SEC                                       ; $8BA7F2 |
  SBC.W $003C,Y                             ; $8BA7F3 |
  STA.B $3A,X                               ; $8BA7F6 |
  DEC.B $08                                 ; $8BA7F8 |
  BNE CODE_8BA7E8                           ; $8BA7FA |
  PLX                                       ; $8BA7FC |
  LDA.B $3A,X                               ; $8BA7FD |
  SEC                                       ; $8BA7FF |
  SBC.B $3C,X                               ; $8BA800 |
  STA.B $42,X                               ; $8BA802 |
  RTS                                       ; $8BA804 |

CODE_FN_8BA805:
  LDA.B $44,X                               ; $8BA805 |
  XBA                                       ; $8BA807 |
  AND.W #$00FF                              ; $8BA808 |
  STA.B $0A                                 ; $8BA80B |
  PHX                                       ; $8BA80D |
  LDA.W #$0003                              ; $8BA80E |
  STA.B $08                                 ; $8BA811 |
  TXA                                       ; $8BA813 |
  CLC                                       ; $8BA814 |
  ADC.W #$00F0                              ; $8BA815 |
  TAX                                       ; $8BA818 |

CODE_8BA819:
  TXY                                       ; $8BA819 |
  TXA                                       ; $8BA81A |
  SEC                                       ; $8BA81B |
  SBC.W #$0050                              ; $8BA81C |
  TAX                                       ; $8BA81F |
  PHY                                       ; $8BA820 |
  JSR.W CODE_FN_8BA83F                      ; $8BA821 |
  CLC                                       ; $8BA824 |
  ADC.W #$0100                              ; $8BA825 |
  AND.W #$01FF                              ; $8BA828 |
  LDY.B $0A                                 ; $8BA82B |
  JSL.L CODE_FL_8AB51A                      ; $8BA82D |
  PLY                                       ; $8BA831 |
  JSL.L CODE_FL_8AB509                      ; $8BA832 |
  DEC.B $08                                 ; $8BA836 |
  BNE CODE_8BA819                           ; $8BA838 |
  JSR.W CODE_FN_8BA72B                      ; $8BA83A |
  PLX                                       ; $8BA83D |
  RTS                                       ; $8BA83E |

CODE_FN_8BA83F:
  LDY.B $3A,X                               ; $8BA83F |
  LDA.W $0B74                               ; $8BA841 |
  BIT.W #$0020                              ; $8BA844 |
  BNE CODE_8BA852                           ; $8BA847 |
  TYA                                       ; $8BA849 |

CODE_8BA84A:
  LSR A                                     ; $8BA84A |
  LSR A                                     ; $8BA84B |
  LSR A                                     ; $8BA84C |
  LSR A                                     ; $8BA84D |
  LSR A                                     ; $8BA84E |
  LSR A                                     ; $8BA84F |
  LSR A                                     ; $8BA850 |
  RTS                                       ; $8BA851 |

CODE_8BA852:
  TYA                                       ; $8BA852 |
  EOR.W #$FFFF                              ; $8BA853 |
  INC A                                     ; $8BA856 |
  CLC                                       ; $8BA857 |
  ADC.W #$8000                              ; $8BA858 |
  BRA CODE_8BA84A                           ; $8BA85B |

CODE_FN_8BA85D:
  LDA.W #$0004                              ; $8BA85D |
  BRA CODE_8BA86E                           ; $8BA860 |

CODE_FN_8BA862:
  STZ.B $46,X                               ; $8BA862 |
  BRA CODE_8BA86B                           ; $8BA864 |

CODE_FN_8BA866:
  LDA.W #$0001                              ; $8BA866 |
  STA.B $46,X                               ; $8BA869 |

CODE_8BA86B:
  LDA.W #$0003                              ; $8BA86B |

CODE_8BA86E:
  STA.B $1A,X                               ; $8BA86E |
  STZ.B $40,X                               ; $8BA870 |
  RTS                                       ; $8BA872 |

CODE_FN_8BA873:
  LDA.W $0000,Y                             ; $8BA873 |
  AND.W #$00FF                              ; $8BA876 |
  STA.B $08                                 ; $8BA879 |
  INY                                       ; $8BA87B |
  STY.B $0A                                 ; $8BA87C |

CODE_JP_8BA87E:
  LDA.W #$00E2                              ; $8BA87E |
  JSL.L CODE_FL_86C9C5                      ; $8BA881 |
  BCS CODE_8BA904                           ; $8BA885 |
  LDA.B ($0A)                               ; $8BA887 |
  XBA                                       ; $8BA889 |
  AND.W #$FF00                              ; $8BA88A |
  PHA                                       ; $8BA88D |
  BPL CODE_8BA896                           ; $8BA88E |
  SEP #$20                                  ; $8BA890 |
  LDA.B #$FF                                ; $8BA892 |
  REP #$20                                  ; $8BA894 |

CODE_8BA896:
  XBA                                       ; $8BA896 |
  CLC                                       ; $8BA897 |
  ADC.W $0009,Y                             ; $8BA898 |
  STA.W $0009,Y                             ; $8BA89B |
  STZ.B $0C                                 ; $8BA89E |
  PLA                                       ; $8BA8A0 |
  BPL CODE_8BA8A9                           ; $8BA8A1 |
  EOR.W #$FFFF                              ; $8BA8A3 |
  INC A                                     ; $8BA8A6 |
  INC.B $0C                                 ; $8BA8A7 |

CODE_8BA8A9:
  LSR A                                     ; $8BA8A9 |
  LSR A                                     ; $8BA8AA |
  CMP.W #$0400                              ; $8BA8AB |
  BCC CODE_8BA8B3                           ; $8BA8AE |
  LDA.W #$0400                              ; $8BA8B0 |

CODE_8BA8B3:
  DEC.B $0C                                 ; $8BA8B3 |
  BNE CODE_8BA8BB                           ; $8BA8B5 |
  EOR.W #$FFFF                              ; $8BA8B7 |
  INC A                                     ; $8BA8BA |

CODE_8BA8BB:
  STA.W $0026,Y                             ; $8BA8BB |
  LDA.B ($0A)                               ; $8BA8BE |
  AND.W #$FF00                              ; $8BA8C0 |
  PHA                                       ; $8BA8C3 |
  BPL CODE_8BA8CC                           ; $8BA8C4 |
  SEP #$20                                  ; $8BA8C6 |
  LDA.B #$FF                                ; $8BA8C8 |
  REP #$20                                  ; $8BA8CA |

CODE_8BA8CC:
  XBA                                       ; $8BA8CC |
  CLC                                       ; $8BA8CD |
  ADC.W $000D,Y                             ; $8BA8CE |
  STA.W $000D,Y                             ; $8BA8D1 |
  STZ.B $0C                                 ; $8BA8D4 |
  PLA                                       ; $8BA8D6 |
  BPL CODE_8BA8DF                           ; $8BA8D7 |
  EOR.W #$FFFF                              ; $8BA8D9 |
  INC A                                     ; $8BA8DC |
  INC.B $0C                                 ; $8BA8DD |

CODE_8BA8DF:
  LSR A                                     ; $8BA8DF |
  LSR A                                     ; $8BA8E0 |
  CMP.W #$0600                              ; $8BA8E1 |
  BCC CODE_8BA8E9                           ; $8BA8E4 |
  LDA.W #$0600                              ; $8BA8E6 |

CODE_8BA8E9:
  DEC.B $0C                                 ; $8BA8E9 |
  BNE CODE_8BA8F1                           ; $8BA8EB |
  EOR.W #$FFFF                              ; $8BA8ED |
  INC A                                     ; $8BA8F0 |

CODE_8BA8F1:
  STA.W $0028,Y                             ; $8BA8F1 |
  INC.B $0A                                 ; $8BA8F4 |
  INC.B $0A                                 ; $8BA8F6 |
  LDA.B ($0A)                               ; $8BA8F8 |
  AND.W #$00FF                              ; $8BA8FA |
  STA.W $004E,Y                             ; $8BA8FD |
  INC.B $0A                                 ; $8BA900 |
  BRA CODE_8BA90A                           ; $8BA902 |

CODE_8BA904:
  INC.B $0A                                 ; $8BA904 |
  INC.B $0A                                 ; $8BA906 |
  INC.B $0A                                 ; $8BA908 |

CODE_8BA90A:
  DEC.B $08                                 ; $8BA90A |
  BEQ CODE_8BA911                           ; $8BA90C |
  JMP.W CODE_JP_8BA87E                      ; $8BA90E |

CODE_8BA911:
  RTS                                       ; $8BA911 |

CODE_FN_8BA912:
  LDA.W $0000,Y                             ; $8BA912 |
  CLC                                       ; $8BA915 |
  ADC.W $1962                               ; $8BA916 |
  STA.W $0000,Y                             ; $8BA919 |
  RTS                                       ; $8BA91C |

CODE_FN_8BA91D:
  PHX                                       ; $8BA91D |
  LDA.B $1A,X                               ; $8BA91E |
  BEQ CODE_8BA92A                           ; $8BA920 |
  LDA.W $1CA4                               ; $8BA922 |
  BEQ CODE_8BA941                           ; $8BA925 |
  DEC A                                     ; $8BA927 |
  BEQ CODE_8BA957                           ; $8BA928 |

CODE_8BA92A:
  LDA.W #$0344                              ; $8BA92A |
  SEC                                       ; $8BA92D |
  SBC.W $0B79                               ; $8BA92E |
  STA.W $1CB2                               ; $8BA931 |
  LDA.W #$0060                              ; $8BA934 |
  SEC                                       ; $8BA937 |
  SBC.W $0B7D                               ; $8BA938 |
  STA.W $1CB4                               ; $8BA93B |
  BRL CODE_JL_8BAA53                        ; $8BA93E |

CODE_8BA941:
  LDA.W #$0344                              ; $8BA941 |
  SEC                                       ; $8BA944 |
  SBC.W $0B79                               ; $8BA945 |
  STA.W $1CB2                               ; $8BA948 |
  LDA.W #$0060                              ; $8BA94B |
  SEC                                       ; $8BA94E |
  SBC.W $0B7D                               ; $8BA94F |
  STA.W $1CB4                               ; $8BA952 |
  BRA CODE_8BA96B                           ; $8BA955 |

CODE_8BA957:
  LDA.W #$0340                              ; $8BA957 |
  SEC                                       ; $8BA95A |
  SBC.W $0B79                               ; $8BA95B |
  STA.W $1CB2                               ; $8BA95E |
  LDA.W #$0056                              ; $8BA961 |
  SEC                                       ; $8BA964 |
  SBC.W $0B7D                               ; $8BA965 |
  STA.W $1CB4                               ; $8BA968 |

CODE_8BA96B:
  LDA.W $1C8E                               ; $8BA96B |
  BEQ CODE_8BA976                           ; $8BA96E |
  LDA.W #$0100                              ; $8BA970 |
  STA.W $1CB4                               ; $8BA973 |

CODE_8BA976:
  LDA.W #$0009                              ; $8BA976 |
  STA.W $1FA4                               ; $8BA979 |
  LDA.W #$0007                              ; $8BA97C |
  STA.L $7EDAC2                             ; $8BA97F |
  LDA.W #$0009                              ; $8BA983 |
  STA.L $7EDAC4                             ; $8BA986 |
  JSL.L CODE_FL_808F9C                      ; $8BA98A |
  LDY.W $1CAC                               ; $8BA98E |
  LDA.W #$DAC2                              ; $8BA991 |
  JSL.L CODE_FL_808FC0                      ; $8BA994 |
  LDA.W $1CAC                               ; $8BA998 |
  CLC                                       ; $8BA99B |
  ADC.W #$00A1                              ; $8BA99C |
  TAY                                       ; $8BA99F |
  LDA.W #$DAC4                              ; $8BA9A0 |
  JSL.L CODE_FL_808FC0                      ; $8BA9A3 |
  LDX.W #$DB02                              ; $8BA9A7 |
  LDA.L $7EDAC0                             ; $8BA9AA |
  BNE CODE_8BA9B3                           ; $8BA9AE |
  LDX.W #$DB22                              ; $8BA9B0 |

CODE_8BA9B3:
  LDA.W $1CAC                               ; $8BA9B3 |
  STA.L $7E0000,X                           ; $8BA9B6 |
  LDA.W #$0001                              ; $8BA9BA |
  STA.L $7E000F,X                           ; $8BA9BD |
  LDA.W $1CAE                               ; $8BA9C1 |
  STA.L $7E0001,X                           ; $8BA9C4 |
  STA.L $7E0010,X                           ; $8BA9C8 |
  LDA.W $1CB0                               ; $8BA9CC |
  STA.L $7E0003,X                           ; $8BA9CF |
  STA.L $7E0012,X                           ; $8BA9D3 |
  LDA.W #$0061                              ; $8BA9D7 |
  STA.L $7E0005,X                           ; $8BA9DA |
  LDA.W #$0040                              ; $8BA9DE |
  STA.L $7E000A,X                           ; $8BA9E1 |
  LDA.W $1CB2                               ; $8BA9E5 |
  STA.L $7E0006,X                           ; $8BA9E8 |
  STA.L $7E000B,X                           ; $8BA9EC |
  LDA.W $1CB4                               ; $8BA9F0 |
  STA.L $7E0008,X                           ; $8BA9F3 |
  STA.L $7E000D,X                           ; $8BA9F7 |
  TDC                                       ; $8BA9FB |
  STA.L $7E0014,X                           ; $8BA9FC |

CODE_JL_8BAA00:
  LDX.W #$DB42                              ; $8BAA00 |
  LDA.L $7EDAC0                             ; $8BAA03 |
  BNE CODE_8BAA0C                           ; $8BAA07 |
  LDX.W #$DB62                              ; $8BAA09 |

CODE_8BAA0C:
  LDA.W $1CAC                               ; $8BAA0C |
  STA.L $7E0000,X                           ; $8BAA0F |
  LDA.W #$0001                              ; $8BAA13 |
  STA.L $7E0006,X                           ; $8BAA16 |
  LDA.W #$0061                              ; $8BAA1A |
  STA.L $7E0002,X                           ; $8BAA1D |
  LDA.W #$0040                              ; $8BAA21 |
  STA.L $7E0004,X                           ; $8BAA24 |
  SEP #$20                                  ; $8BAA28 |
  LDA.B #$00                                ; $8BAA2A |
  STA.L $7E0001,X                           ; $8BAA2C |
  STA.L $7E0007,X                           ; $8BAA30 |
  LDA.W $1FDE                               ; $8BAA34 |
  STA.L $7E0003,X                           ; $8BAA37 |
  STA.L $7E0005,X                           ; $8BAA3B |
  TDC                                       ; $8BAA3F |
  STA.L $7E0008,X                           ; $8BAA40 |
  REP #$20                                  ; $8BAA44 |
  LDA.L $7EDAC0                             ; $8BAA46 |
  EOR.W #$0001                              ; $8BAA4A |
  STA.L $7EDAC0                             ; $8BAA4D |
  PLX                                       ; $8BAA51 |
  RTS                                       ; $8BAA52 |

CODE_JL_8BAA53:
  LDA.W $1C8E                               ; $8BAA53 |
  BEQ CODE_8BAA5E                           ; $8BAA56 |
  LDA.W #$0100                              ; $8BAA58 |
  STA.W $1CB4                               ; $8BAA5B |

CODE_8BAA5E:
  LDA.W #$0007                              ; $8BAA5E |
  STA.W $1FA4                               ; $8BAA61 |
  LDA.W #$0009                              ; $8BAA64 |
  STA.L $7EDAC2                             ; $8BAA67 |
  JSL.L CODE_FL_808F9C                      ; $8BAA6B |
  LDA.W $1CAC                               ; $8BAA6F |
  CLC                                       ; $8BAA72 |
  ADC.W #$00A1                              ; $8BAA73 |
  TAY                                       ; $8BAA76 |
  LDA.W #$DAC2                              ; $8BAA77 |
  JSL.L CODE_FL_808FC0                      ; $8BAA7A |
  LDX.W #$DB02                              ; $8BAA7E |
  LDA.L $7EDAC0                             ; $8BAA81 |
  BNE CODE_8BAA8A                           ; $8BAA85 |
  LDX.W #$DB22                              ; $8BAA87 |

CODE_8BAA8A:
  LDA.W #$0001                              ; $8BAA8A |
  STA.L $7E000A,X                           ; $8BAA8D |
  LDA.W #$0000                              ; $8BAA91 |
  STA.L $7E000B,X                           ; $8BAA94 |
  LDA.W #$0000                              ; $8BAA98 |
  STA.L $7E000D,X                           ; $8BAA9B |
  LDA.W #$0070                              ; $8BAA9F |
  STA.L $7E0000,X                           ; $8BAAA2 |
  LDA.W #$0040                              ; $8BAAA6 |
  STA.L $7E0005,X                           ; $8BAAA9 |
  LDA.W $1CB2                               ; $8BAAAD |
  STA.L $7E0001,X                           ; $8BAAB0 |
  STA.L $7E0006,X                           ; $8BAAB4 |
  LDA.W $1CB4                               ; $8BAAB8 |
  STA.L $7E0003,X                           ; $8BAABB |
  STA.L $7E0008,X                           ; $8BAABF |
  TDC                                       ; $8BAAC3 |
  STA.L $7E000F,X                           ; $8BAAC4 |
  BRL CODE_JL_8BAA00                        ; $8BAAC8 |

CODE_FN_8BAACB:
  STZ.W $1C92                               ; $8BAACB |
  STZ.W $1C90                               ; $8BAACE |
  LDA.W #$00C0                              ; $8BAAD1 |
  JSL.L CODE_FL_8089BD                      ; $8BAAD4 |
  RTS                                       ; $8BAAD8 |

CODE_FN_8BAAD9:
  LDA.W $1C90                               ; $8BAAD9 |
  CMP.W #$0002                              ; $8BAADC |
  BNE CODE_8BAAE3                           ; $8BAADF |
  SEC                                       ; $8BAAE1 |
  RTS                                       ; $8BAAE2 |

CODE_8BAAE3:
  INC.W $1C92                               ; $8BAAE3 |
  LDA.W $1C92                               ; $8BAAE6 |
  AND.W #$0007                              ; $8BAAE9 |
  BNE CODE_8BAAF9                           ; $8BAAEC |
  INC.W $1C90                               ; $8BAAEE |
  LDA.W $1C90                               ; $8BAAF1 |
  PHX                                       ; $8BAAF4 |
  JSR.W CODE_FN_8BAB1A                      ; $8BAAF5 |
  PLX                                       ; $8BAAF8 |

CODE_8BAAF9:
  CLC                                       ; $8BAAF9 |
  RTS                                       ; $8BAAFA |

CODE_FN_8BAAFB:
  LDA.W $1C90                               ; $8BAAFB |
  BNE CODE_8BAB02                           ; $8BAAFE |
  SEC                                       ; $8BAB00 |
  RTS                                       ; $8BAB01 |

CODE_8BAB02:
  INC.W $1C92                               ; $8BAB02 |
  LDA.W $1C92                               ; $8BAB05 |
  AND.W #$0007                              ; $8BAB08 |
  BNE CODE_8BAB18                           ; $8BAB0B |
  DEC.W $1C90                               ; $8BAB0D |
  LDA.W $1C90                               ; $8BAB10 |
  PHX                                       ; $8BAB13 |
  JSR.W CODE_FN_8BAB1A                      ; $8BAB14 |
  PLX                                       ; $8BAB17 |

CODE_8BAB18:
  CLC                                       ; $8BAB18 |
  RTS                                       ; $8BAB19 |

CODE_FN_8BAB1A:
  ASL A                                     ; $8BAB1A |
  TAX                                       ; $8BAB1B |
  LDA.W CODE_00C756,X                       ; $8BAB1C |
  STA.B $02                                 ; $8BAB1F |
  LDA.W #$0087                              ; $8BAB21 |
  STA.B $00                                 ; $8BAB24 |
  LDA.B $02                                 ; $8BAB26 |
  LDY.W #$02E3                              ; $8BAB28 |
  LDX.W #$0002                              ; $8BAB2B |
  JSL.L CODE_FL_8096F8                      ; $8BAB2E |
  LDA.B $02                                 ; $8BAB32 |
  CLC                                       ; $8BAB34 |
  ADC.W #$0002                              ; $8BAB35 |
  LDY.W #$0362                              ; $8BAB38 |
  LDX.W #$0004                              ; $8BAB3B |
  JSL.L CODE_FL_8096F8                      ; $8BAB3E |
  LDA.B $02                                 ; $8BAB42 |
  CLC                                       ; $8BAB44 |
  ADC.W #$0006                              ; $8BAB45 |
  LDY.W #$03E2                              ; $8BAB48 |
  LDX.W #$0004                              ; $8BAB4B |
  JSL.L CODE_FL_8096F8                      ; $8BAB4E |
  LDA.B $02                                 ; $8BAB52 |
  CLC                                       ; $8BAB54 |
  ADC.W #$000A                              ; $8BAB55 |
  LDY.W #$0462                              ; $8BAB58 |
  LDX.W #$0004                              ; $8BAB5B |
  JSL.L CODE_FL_8096F8                      ; $8BAB5E |
  LDA.B $02                                 ; $8BAB62 |
  CLC                                       ; $8BAB64 |
  ADC.W #$000E                              ; $8BAB65 |
  LDY.W #$04E2                              ; $8BAB68 |
  LDX.W #$0003                              ; $8BAB6B |
  JSL.L CODE_FL_8096F8                      ; $8BAB6E |
  RTS                                       ; $8BAB72 |

CODE_FN_8BAB73:
  LDA.W #$0003                              ; $8BAB73 |
  JSL.L CODE_FL_8CFD0B                      ; $8BAB76 |
  LDA.W #$0034                              ; $8BAB7A |
  BRL CODE_FN_8BADAD                        ; $8BAB7D |

CODE_FN_8BAB80:
  LDA.W #$0003                              ; $8BAB80 |
  JSL.L CODE_FL_8CFD3F                      ; $8BAB83 |
  RTS                                       ; $8BAB87 |

CODE_FN_8BAB88:
  TDC                                       ; $8BAB88 |
  STA.W $1C94                               ; $8BAB89 |
  BRA CODE_8BAB9D                           ; $8BAB8C |

CODE_FN_8BAB8E:
  LDA.W $1C94                               ; $8BAB8E |
  CMP.W #$0020                              ; $8BAB91 |
  BCC CODE_8BAB97                           ; $8BAB94 |
  RTS                                       ; $8BAB96 |

CODE_8BAB97:
  INC.W $1C94                               ; $8BAB97 |
  LDA.W #$0001                              ; $8BAB9A |

CODE_8BAB9D:
  LDY.W $1C94                               ; $8BAB9D |
  PHX                                       ; $8BABA0 |
  JSR.W CODE_FN_8BABC6                      ; $8BABA1 |
  PLX                                       ; $8BABA4 |
  CLC                                       ; $8BABA5 |
  RTS                                       ; $8BABA6 |

CODE_FN_8BABA7:
  LDA.W $1C94                               ; $8BABA7 |
  CMP.W #$0040                              ; $8BABAA |
  BNE CODE_8BABB1                           ; $8BABAD |
  SEC                                       ; $8BABAF |
  RTS                                       ; $8BABB0 |

CODE_8BABB1:
  LDA.W $1C94                               ; $8BABB1 |
  SEC                                       ; $8BABB4 |
  SBC.W #$0020                              ; $8BABB5 |
  TAY                                       ; $8BABB8 |
  LDA.W #$0002                              ; $8BABB9 |
  PHX                                       ; $8BABBC |
  JSR.W CODE_FN_8BABC6                      ; $8BABBD |
  PLX                                       ; $8BABC0 |
  INC.W $1C94                               ; $8BABC1 |
  CLC                                       ; $8BABC4 |
  RTS                                       ; $8BABC5 |

CODE_FN_8BABC6:
  ASL A                                     ; $8BABC6 |
  ASL A                                     ; $8BABC7 |
  STA.B $00                                 ; $8BABC8 |
  STY.B $02                                 ; $8BABCA |
  LDA.W #$03E0                              ; $8BABCC |
  SEC                                       ; $8BABCF |
  SBC.B $02                                 ; $8BABD0 |
  TAY                                       ; $8BABD2 |
  PHY                                       ; $8BABD3 |
  JSL.L CODE_FL_80960F                      ; $8BABD4 |
  LDY.B $00                                 ; $8BABD8 |
  SEP #$20                                  ; $8BABDA |
  LDA.W LOOSE_OP_00C78F,Y                   ; $8BABDC |
  JSL.L CODE_FL_80964E                      ; $8BABDF |
  LDA.W LOOSE_OP_00C790,Y                   ; $8BABE3 |
  JSL.L CODE_FL_80964E                      ; $8BABE6 |
  REP #$20                                  ; $8BABEA |
  JSL.L CODE_FL_809663                      ; $8BABEC |
  PLA                                       ; $8BABF0 |
  CLC                                       ; $8BABF1 |
  ADC.W #$0080                              ; $8BABF2 |
  TAY                                       ; $8BABF5 |
  JSL.L CODE_FL_80960F                      ; $8BABF6 |
  LDY.B $00                                 ; $8BABFA |
  SEP #$20                                  ; $8BABFC |
  LDA.W LOOSE_OP_00C791,Y                   ; $8BABFE |
  JSL.L CODE_FL_80964E                      ; $8BAC01 |
  LDA.W CODE_00C792,Y                       ; $8BAC05 |
  JSL.L CODE_FL_80964E                      ; $8BAC08 |
  REP #$20                                  ; $8BAC0C |
  JSL.L CODE_FL_809663                      ; $8BAC0E |
  RTS                                       ; $8BAC12 |

CODE_FN_8BAC13:
  JSR.W CODE_FN_8BAC58                      ; $8BAC13 |
  BCS CODE_8BAC57                           ; $8BAC16 |
  LDA.W $1CB6                               ; $8BAC18 |
  CMP.W #$0005                              ; $8BAC1B |
  BNE CODE_8BAC27                           ; $8BAC1E |
  LDA.W #$0021                              ; $8BAC20 |
  JSL.L push_sound_queue                    ; $8BAC23 |

CODE_8BAC27:
  LDA.W $1C38                               ; $8BAC27 |
  AND.W #$0003                              ; $8BAC2A |
  BNE CODE_8BAC57                           ; $8BAC2D |
  JSL.L CODE_FL_85A940                      ; $8BAC2F |
  BCS CODE_8BAC57                           ; $8BAC33 |
  LDA.B $04                                 ; $8BAC35 |
  STA.W $0009,Y                             ; $8BAC37 |
  LDA.B $06                                 ; $8BAC3A |
  STA.W $000D,Y                             ; $8BAC3C |
  CMP.W #$0060                              ; $8BAC3F |
  BCS CODE_8BAC57                           ; $8BAC42 |
  LDA.W $0004,Y                             ; $8BAC44 |
  ORA.W #$4040                              ; $8BAC47 |
  STA.W $0004,Y                             ; $8BAC4A |
  LDA.W $000D,Y                             ; $8BAC4D |
  SEC                                       ; $8BAC50 |
  SBC.W #$0008                              ; $8BAC51 |
  STA.W $000D,Y                             ; $8BAC54 |

CODE_8BAC57:
  RTS                                       ; $8BAC57 |

CODE_FN_8BAC58:
  PHX                                       ; $8BAC58 |
  LDA.W $0BAA                               ; $8BAC59 |
  CLC                                       ; $8BAC5C |
  ADC.W #$0100                              ; $8BAC5D |
  AND.W #$01FF                              ; $8BAC60 |
  TAY                                       ; $8BAC63 |
  LDA.W #$00B8                              ; $8BAC64 |
  CPY.W #$0100                              ; $8BAC67 |
  BCC CODE_8BAC6F                           ; $8BAC6A |
  LDA.W #$000F                              ; $8BAC6C |

CODE_8BAC6F:
  STA.B $06                                 ; $8BAC6F |
  SEC                                       ; $8BAC71 |
  SBC.W $0B7D                               ; $8BAC72 |
  SEC                                       ; $8BAC75 |
  SBC.W #$FFE0                              ; $8BAC76 |
  BPL CODE_8BAC7F                           ; $8BAC79 |
  EOR.W #$FFFF                              ; $8BAC7B |
  INC A                                     ; $8BAC7E |

CODE_8BAC7F:
  XBA                                       ; $8BAC7F |
  STA.B $00                                 ; $8BAC80 |
  TYA                                       ; $8BAC82 |
  ASL A                                     ; $8BAC83 |
  TAX                                       ; $8BAC84 |
  LDA.L DATA8_978000,X                      ; $8BAC85 |
  AND.W #$00FF                              ; $8BAC89 |
  TAY                                       ; $8BAC8C |
  LDA.B $00                                 ; $8BAC8D |
  JSL.L CODE_FL_808E65                      ; $8BAC8F |
  STZ.B $08                                 ; $8BAC93 |
  LDA.L DATA8_978100,X                      ; $8BAC95 |
  BPL CODE_8BAC9D                           ; $8BAC99 |
  DEC.B $08                                 ; $8BAC9B |

CODE_8BAC9D:
  AND.W #$00FF                              ; $8BAC9D |
  PLX                                       ; $8BACA0 |
  LDY.W $4214                               ; $8BACA1 |
  JSL.L CODE_FL_808E18                      ; $8BACA4 |
  LDA.B $01                                 ; $8BACA8 |
  LDY.B $08                                 ; $8BACAA |
  BPL CODE_8BACB2                           ; $8BACAC |
  EOR.W #$FFFF                              ; $8BACAE |
  INC A                                     ; $8BACB1 |

CODE_8BACB2:
  CLC                                       ; $8BACB2 |
  ADC.W $0B79                               ; $8BACB3 |
  CLC                                       ; $8BACB6 |
  ADC.W #$0004                              ; $8BACB7 |
  STA.B $04                                 ; $8BACBA |
  BMI CODE_8BACC4                           ; $8BACBC |
  CMP.W #$0100                              ; $8BACBE |
  BCS CODE_8BACC4                           ; $8BACC1 |
  RTS                                       ; $8BACC3 |

CODE_8BACC4:
  SEC                                       ; $8BACC4 |
  RTS                                       ; $8BACC5 |

CODE_FN_8BACC6:
  TDC                                       ; $8BACC6 |

CODE_8BACC7:
  PHA                                       ; $8BACC7 |
  LDA.W #$0108                              ; $8BACC8 |
  JSL.L CODE_FL_86C9A7                      ; $8BACCB |
  PLA                                       ; $8BACCF |
  BCS CODE_8BACD5                           ; $8BACD0 |
  STA.W $004E,Y                             ; $8BACD2 |

CODE_8BACD5:
  INC A                                     ; $8BACD5 |
  CMP.W #$0004                              ; $8BACD6 |
  BNE CODE_8BACC7                           ; $8BACD9 |
  RTS                                       ; $8BACDB |

CODE_FN_8BACDC:
  STZ.W $1C98                               ; $8BACDC |

CODE_FN_8BACDF:
  LDA.W #$0006                              ; $8BACDF |
  STA.W $1C9C                               ; $8BACE2 |
  STA.W $1C9A                               ; $8BACE5 |
  LDA.W #$0001                              ; $8BACE8 |
  STA.W $1C96                               ; $8BACEB |
  RTS                                       ; $8BACEE |

CODE_FN_8BACEF:
  LDA.B $1A,X                               ; $8BACEF |
  BEQ CODE_8BACFD                           ; $8BACF1 |
  LDA.W $1C96                               ; $8BACF3 |
  BNE CODE_8BAD0C                           ; $8BACF6 |
  DEC.W $1C9A                               ; $8BACF8 |
  BEQ CODE_8BACFE                           ; $8BACFB |

CODE_8BACFD:
  RTS                                       ; $8BACFD |

CODE_8BACFE:
  LDA.W $1C9C                               ; $8BACFE |
  STA.W $1C9A                               ; $8BAD01 |
  CMP.W #$0010                              ; $8BAD04 |
  BCS CODE_8BACFD                           ; $8BAD07 |
  INC A                                     ; $8BAD09 |
  BRA CODE_8BAD1B                           ; $8BAD0A |

CODE_8BAD0C:
  DEC.W $1C9A                               ; $8BAD0C |
  BEQ CODE_8BAD12                           ; $8BAD0F |
  RTS                                       ; $8BAD11 |

CODE_8BAD12:
  LDA.W $1C9C                               ; $8BAD12 |
  CMP.W #$0003                              ; $8BAD15 |
  BCC CODE_8BAD1B                           ; $8BAD18 |
  DEC A                                     ; $8BAD1A |

CODE_8BAD1B:
  STA.W $1C9C                               ; $8BAD1B |
  STA.W $1C9A                               ; $8BAD1E |
  INC.W $1C98                               ; $8BAD21 |
  LDA.W $1C98                               ; $8BAD24 |
  CMP.W #$0005                              ; $8BAD27 |
  BCC CODE_8BAD30                           ; $8BAD2A |
  TDC                                       ; $8BAD2C |
  STA.W $1C98                               ; $8BAD2D |

CODE_8BAD30:
  PHX                                       ; $8BAD30 |
  JSR.W CODE_FN_8BAD36                      ; $8BAD31 |
  PLX                                       ; $8BAD34 |
  RTS                                       ; $8BAD35 |

CODE_FN_8BAD36:
  LDY.W #$007F                              ; $8BAD36 |
  STY.B $00                                 ; $8BAD39 |
  XBA                                       ; $8BAD3B |
  LSR A                                     ; $8BAD3C |
  STA.B $02                                 ; $8BAD3D |
  LSR A                                     ; $8BAD3F |
  CLC                                       ; $8BAD40 |
  ADC.B $02                                 ; $8BAD41 |
  CLC                                       ; $8BAD43 |
  ADC.W #$3000                              ; $8BAD44 |
  STA.B $02                                 ; $8BAD47 |
  LDX.W #$0040                              ; $8BAD49 |
  LDY.W #$1F00                              ; $8BAD4C |
  JSL.L CODE_FL_8096CB                      ; $8BAD4F |
  LDA.B $02                                 ; $8BAD53 |
  CLC                                       ; $8BAD55 |
  ADC.W #$0040                              ; $8BAD56 |
  STA.B $02                                 ; $8BAD59 |
  LDX.W #$0040                              ; $8BAD5B |
  LDY.W #$2300                              ; $8BAD5E |
  JSL.L CODE_FL_8096CB                      ; $8BAD61 |
  LDA.B $02                                 ; $8BAD65 |
  CLC                                       ; $8BAD67 |
  ADC.W #$0040                              ; $8BAD68 |
  LDX.W #$0040                              ; $8BAD6B |
  LDY.W #$2700                              ; $8BAD6E |
  JSL.L CODE_FL_8096CB                      ; $8BAD71 |
  RTS                                       ; $8BAD75 |

CODE_FN_8BAD76:
  LDA.W #$0005                              ; $8BAD76 |
  JSL.L CODE_FL_8CFD0B                      ; $8BAD79 |
  RTS                                       ; $8BAD7D |

CODE_FN_8BAD7E:
  LDA.W #$0005                              ; $8BAD7E |
  JSL.L CODE_FL_8CFD3F                      ; $8BAD81 |
  RTS                                       ; $8BAD85 |

CODE_FN_8BAD86:
  LDA.W $1CAA                               ; $8BAD86 |
  ASL A                                     ; $8BAD89 |
  ASL A                                     ; $8BAD8A |
  PHA                                       ; $8BAD8B |
  ASL A                                     ; $8BAD8C |
  ASL A                                     ; $8BAD8D |
  ASL A                                     ; $8BAD8E |
  STA.B $10                                 ; $8BAD8F |
  LDA.W #$0000                              ; $8BAD91 |
  STA.B $12                                 ; $8BAD94 |
  LDA.W #$010E                              ; $8BAD96 |
  JSL.L CODE_FL_85824D                      ; $8BAD99 |
  PLA                                       ; $8BAD9D |
  PHX                                       ; $8BAD9E |
  TAX                                       ; $8BAD9F |
  LDA.W #$7777                              ; $8BADA0 |
  STA.L $7F8C00,X                           ; $8BADA3 |
  STA.L $7F8C02,X                           ; $8BADA7 |
  PLX                                       ; $8BADAB |
  RTS                                       ; $8BADAC |

CODE_FN_8BADAD:
  PHA                                       ; $8BADAD |
  LDA.W $1CB6                               ; $8BADAE |
  BEQ CODE_8BADB8                           ; $8BADB1 |
  DEC.W $1CB6                               ; $8BADB3 |
  PLA                                       ; $8BADB6 |
  RTS                                       ; $8BADB7 |

CODE_8BADB8:
  LDA.W #$000A                              ; $8BADB8 |
  STA.W $1CB6                               ; $8BADBB |
  PLA                                       ; $8BADBE |
  JSL.L push_sound_queue                    ; $8BADBF |
  RTS                                       ; $8BADC3 |

CODE_8BADC4:
  RTL                                       ; $8BADC4 |

CODE_8BADC5:
  JSL.L CODE_FL_86C3B0                      ; $8BADC5 |
  PHX                                       ; $8BADC9 |
  ASL A                                     ; $8BADCA |
  TAX                                       ; $8BADCB |
  LDA.L PTR16_8BADD6,X                      ; $8BADCC |
  PLX                                       ; $8BADD0 |
  STA.B $00                                 ; $8BADD1 |
  JMP.W ($0000)                             ; $8BADD3 |

PTR16_8BADD6:
  dw CODE_8BADE0                            ; $8BADD6 |
  dw CODE_8BADFF                            ; $8BADD8 |
  dw CODE_8BAE03                            ; $8BADDA |
  dw CODE_8BAE07                            ; $8BADDC |
  dw CODE_8BAE4B                            ; $8BADDE |

CODE_8BADE0:
  JSL.L CODE_FL_85ABBB                      ; $8BADE0 |
  JSL.L CODE_FL_86C7A5                      ; $8BADE4 |
  JSL.L CODE_FL_86C444                      ; $8BADE8 |
  LDA.W #$35EA                              ; $8BADEC |
  STA.B $00,X                               ; $8BADEF |
  LDA.W #$E000                              ; $8BADF1 |
  STA.B $22,X                               ; $8BADF4 |
  LDA.W #$B880                              ; $8BADF6 |
  STA.B $34,X                               ; $8BADF9 |
  JML.L CODE_FL_86C63F                      ; $8BADFB |

CODE_8BADFF:
  JML.L CODE_FL_85A646                      ; $8BADFF |

CODE_8BAE03:
  JML.L CODE_JL_85ACD3                      ; $8BAE03 |

CODE_8BAE07:
  JSL.L CODE_FL_85AB2B                      ; $8BAE07 |
  PHP                                       ; $8BAE0B |
  LDA.W #$0145                              ; $8BAE0C |
  JSL.L CODE_FL_86C9C5                      ; $8BAE0F |
  BCS CODE_8BAE43                           ; $8BAE13 |
  JSL.L CODE_FL_86C7C4                      ; $8BAE15 |
  TYX                                       ; $8BAE19 |
  LDA.W #$0018                              ; $8BAE1A |
  STA.B $2C,X                               ; $8BAE1D |
  LDA.W #$360C                              ; $8BAE1F |
  STA.B $00,X                               ; $8BAE22 |
  LDA.W #$0100                              ; $8BAE24 |
  PLP                                       ; $8BAE27 |
  BCS CODE_8BAE2E                           ; $8BAE28 |
  EOR.W #$FFFF                              ; $8BAE2A |
  INC A                                     ; $8BAE2D |

CODE_8BAE2E:
  STA.B $26,X                               ; $8BAE2E |
  LDX.B $FC                                 ; $8BAE30 |
  LDA.W #$35FC                              ; $8BAE32 |
  STA.B $00,X                               ; $8BAE35 |
  LDA.W #$0020                              ; $8BAE37 |
  STA.B $2C,X                               ; $8BAE3A |
  JSL.L CODE_FL_85ABC2                      ; $8BAE3C |
  INC.B $1A,X                               ; $8BAE40 |
  RTL                                       ; $8BAE42 |

CODE_8BAE43:
  PLP                                       ; $8BAE43 |
  LDA.W #$A000                              ; $8BAE44 |
  JML.L CODE_JL_85AAAA                      ; $8BAE47 |

CODE_8BAE4B:
  JSL.L CODE_FL_86C70D                      ; $8BAE4B |
  LDA.W #$A000                              ; $8BAE4F |
  JML.L CODE_JL_85AAAA                      ; $8BAE52 |

CODE_8BAE56:
  JSL.L CODE_FL_97FC80                      ; $8BAE56 |
  JSL.L CODE_FL_86C855                      ; $8BAE5A |
  DEC.B $2C,X                               ; $8BAE5E |
  CLC                                       ; $8BAE60 |
  LDA.W #$0020                              ; $8BAE61 |
  ADC.B $28,X                               ; $8BAE64 |
  STA.B $28,X                               ; $8BAE66 |
  JSL.L CODE_FL_86C70D                      ; $8BAE68 |
  LDA.B $0D,X                               ; $8BAE6C |
  SBC.W #$0010                              ; $8BAE6E |
  STA.B $0D,X                               ; $8BAE71 |
  JSL.L CODE_FL_85A986                      ; $8BAE73 |
  JML.L CODE_FL_86CA36                      ; $8BAE77 |

CODE_8BAE7B:
  JSL.L CODE_FL_86C3B0                      ; $8BAE7B |
  PHX                                       ; $8BAE7F |
  ASL A                                     ; $8BAE80 |
  TAX                                       ; $8BAE81 |
  LDA.L PTR16_8BAE8C,X                      ; $8BAE82 |
  PLX                                       ; $8BAE86 |
  STA.B $00                                 ; $8BAE87 |
  JMP.W ($0000)                             ; $8BAE89 |

PTR16_8BAE8C:
  dw CODE_8BAE98                            ; $8BAE8C |
  dw CODE_8BAF8F                            ; $8BAE8E |
  dw CODE_8BAFC0                            ; $8BAE90 |
  dw CODE_8BB069                            ; $8BAE92 |
  dw CODE_8BB082                            ; $8BAE94 |
  dw CODE_8BB098                            ; $8BAE96 |

CODE_8BAE98:
  JSL.L CODE_FL_86C7AD                      ; $8BAE98 |
  JSL.L CODE_FL_85AA07                      ; $8BAE9C |
  LDA.B $4E,X                               ; $8BAEA0 |
  AND.W #$00FF                              ; $8BAEA2 |
  ASL A                                     ; $8BAEA5 |
  ASL A                                     ; $8BAEA6 |
  TAY                                       ; $8BAEA7 |
  PHB                                       ; $8BAEA8 |
  PHK                                       ; $8BAEA9 |
  PLB                                       ; $8BAEAA |
  LDA.W LOOSE_OP_00AF6F,Y                   ; $8BAEAB |
  STA.B $3C,X                               ; $8BAEAE |
  LDA.W LOOSE_OP_00AF71,Y                   ; $8BAEB0 |
  STA.B $3E,X                               ; $8BAEB3 |
  ADC.W #$0020                              ; $8BAEB5 |
  STA.B $3A,X                               ; $8BAEB8 |
  PLB                                       ; $8BAEBA |
  LDA.W #$0018                              ; $8BAEBB |
  JSL.L CODE_FL_86C9A4                      ; $8BAEBE |
  BCS CODE_8BAEF9                           ; $8BAEC2 |
  JSL.L CODE_FL_86C7C4                      ; $8BAEC4 |
  LDA.W #$A000                              ; $8BAEC8 |
  STA.B $34,X                               ; $8BAECB |
  LDA.W #$0010                              ; $8BAECD |
  STA.B $2E,X                               ; $8BAED0 |
  STA.B $30,X                               ; $8BAED2 |
  LDA.B $22,X                               ; $8BAED4 |
  ORA.W #$0020                              ; $8BAED6 |
  STA.B $22,X                               ; $8BAED9 |
  LDA.W #$00F0                              ; $8BAEDB |
  STA.B $14,X                               ; $8BAEDE |
  JSL.L CODE_FL_85AAB6                      ; $8BAEE0 |
  TYX                                       ; $8BAEE4 |
  LDA.W #$377A                              ; $8BAEE5 |
  STA.B $00,X                               ; $8BAEE8 |
  LDA.W #$00EF                              ; $8BAEEA |
  STA.B $14,X                               ; $8BAEED |
  LDX.B $FC                                 ; $8BAEEF |
  LDA.W #$0100                              ; $8BAEF1 |
  STA.B $2C,X                               ; $8BAEF4 |
  INC.B $1A,X                               ; $8BAEF6 |
  RTL                                       ; $8BAEF8 |

CODE_8BAEF9:
  JML.L CODE_FL_86CA36                      ; $8BAEF9 |

CODE_FN_8BAEFD:
  LDA.B $3A,X                               ; $8BAEFD |
  CLC                                       ; $8BAEFF |
  ADC.W #$0010                              ; $8BAF00 |
  STA.B $30,X                               ; $8BAF03 |
  RTS                                       ; $8BAF05 |

CODE_FN_8BAF06:
  LDA.B $37,X                               ; $8BAF06 |
  AND.W #$00FF                              ; $8BAF08 |
  CMP.W #$0001                              ; $8BAF0B |
  BNE CODE_8BAF22                           ; $8BAF0E |
  LDA.B $34,X                               ; $8BAF10 |
  ORA.W #$0880                              ; $8BAF12 |
  STA.B $34,X                               ; $8BAF15 |
  LDA.B $1A,X                               ; $8BAF17 |
  STA.B $40,X                               ; $8BAF19 |
  LDA.W #$0003                              ; $8BAF1B |
  STA.B $1A,X                               ; $8BAF1E |
  PLA                                       ; $8BAF20 |
  RTL                                       ; $8BAF21 |

CODE_8BAF22:
  RTS                                       ; $8BAF22 |

CODE_FN_8BAF23:
  LDA.B $3A,X                               ; $8BAF23 |
  LDY.W #$370A                              ; $8BAF25 |
  CMP.W #$0060                              ; $8BAF28 |
  BCS CODE_8BAF58                           ; $8BAF2B |
  LDY.W #$3726                              ; $8BAF2D |
  CMP.W #$0050                              ; $8BAF30 |
  BCS CODE_8BAF58                           ; $8BAF33 |
  LDY.W #$373E                              ; $8BAF35 |
  CMP.W #$0040                              ; $8BAF38 |
  BCS CODE_8BAF58                           ; $8BAF3B |
  LDY.W #$3752                              ; $8BAF3D |
  CMP.W #$0030                              ; $8BAF40 |
  BCS CODE_8BAF58                           ; $8BAF43 |
  LDY.W #$3762                              ; $8BAF45 |
  CMP.W #$0020                              ; $8BAF48 |
  BCS CODE_8BAF58                           ; $8BAF4B |
  LDY.W #$376E                              ; $8BAF4D |
  CMP.W #$0010                              ; $8BAF50 |
  BCS CODE_8BAF58                           ; $8BAF53 |
  LDY.W #$3776                              ; $8BAF55 |

CODE_8BAF58:
  TYA                                       ; $8BAF58 |
  STA.B $00,X                               ; $8BAF59 |
  LDY.B $44,X                               ; $8BAF5B |
  SEC                                       ; $8BAF5D |
  LDA.W $1C38                               ; $8BAF5E |
  AND.W #$0002                              ; $8BAF61 |
  ADC.B $0D,X                               ; $8BAF64 |
  SBC.B $3A,X                               ; $8BAF66 |
  ADC.W #$0004                              ; $8BAF68 |
  STA.W $000D,Y                             ; $8BAF6B |
  RTS                                       ; $8BAF6E |

  db $01,$00,$00,$00,$01,$00,$20,$00        ; $8BAF6F |
  db $01,$00,$40,$00,$01,$00,$60,$00        ; $8BAF77 |
  db $01,$00,$20,$00,$01,$00,$20,$00        ; $8BAF7F |
  db $02,$00,$40,$00,$01,$00,$60,$00        ; $8BAF87 |

CODE_8BAF8F:
  JSR.W CODE_FN_8BAFFA                      ; $8BAF8F |
  JSR.W CODE_FN_8BAEFD                      ; $8BAF92 |
  JSR.W CODE_FN_8BAF06                      ; $8BAF95 |
  JSR.W CODE_FN_8BAF23                      ; $8BAF98 |
  LDA.W $1C38                               ; $8BAF9B |
  AND.W #$0007                              ; $8BAF9E |
  BNE CODE_8BAFB4                           ; $8BAFA1 |
  CLC                                       ; $8BAFA3 |
  LDA.B $3A,X                               ; $8BAFA4 |
  ADC.B $3C,X                               ; $8BAFA6 |
  STA.B $3A,X                               ; $8BAFA8 |
  BMI CODE_8BAFB4                           ; $8BAFAA |
  CMP.B $3E,X                               ; $8BAFAC |
  BCC CODE_8BAFB4                           ; $8BAFAE |
  LDA.B $3E,X                               ; $8BAFB0 |
  STA.B $3A,X                               ; $8BAFB2 |

CODE_8BAFB4:
  JSL.L CODE_FL_86C70D                      ; $8BAFB4 |
  LDA.W #$0100                              ; $8BAFB8 |
  STA.B $2C,X                               ; $8BAFBB |
  INC.B $1A,X                               ; $8BAFBD |
  RTL                                       ; $8BAFBF |

CODE_8BAFC0:
  JSR.W CODE_FN_8BAFFA                      ; $8BAFC0 |
  JSR.W CODE_FN_8BAEFD                      ; $8BAFC3 |
  JSR.W CODE_FN_8BAF06                      ; $8BAFC6 |
  JSR.W CODE_FN_8BAF23                      ; $8BAFC9 |
  LDA.W $1C38                               ; $8BAFCC |
  AND.W #$0003                              ; $8BAFCF |
  BNE CODE_8BAFEE                           ; $8BAFD2 |
  SEC                                       ; $8BAFD4 |
  LDA.B $3A,X                               ; $8BAFD5 |
  SBC.B $3C,X                               ; $8BAFD7 |
  BPL CODE_8BAFDC                           ; $8BAFD9 |
  TDC                                       ; $8BAFDB |

CODE_8BAFDC:
  STA.B $3A,X                               ; $8BAFDC |
  CLC                                       ; $8BAFDE |
  ADC.W #$0020                              ; $8BAFDF |
  CMP.B $3E,X                               ; $8BAFE2 |
  BCS CODE_8BAFEE                           ; $8BAFE4 |
  SEC                                       ; $8BAFE6 |
  LDA.B $3E,X                               ; $8BAFE7 |
  SBC.W #$0021                              ; $8BAFE9 |
  STA.B $3A,X                               ; $8BAFEC |

CODE_8BAFEE:
  JSL.L CODE_FL_86C70D                      ; $8BAFEE |
  LDA.W #$0100                              ; $8BAFF2 |
  STA.B $2C,X                               ; $8BAFF5 |
  DEC.B $1A,X                               ; $8BAFF7 |
  RTL                                       ; $8BAFF9 |

CODE_FN_8BAFFA:
  LDA.B $4E,X                               ; $8BAFFA |
  AND.W #$00FF                              ; $8BAFFC |
  STA.B $00                                 ; $8BAFFF |
  CLC                                       ; $8BB001 |
  ADC.W $1C38                               ; $8BB002 |
  STA.B $02                                 ; $8BB005 |
  AND.W #$000F                              ; $8BB007 |
  BNE CODE_8BB048                           ; $8BB00A |
  LDY.W #$0000                              ; $8BB00C |
  LDA.B $02                                 ; $8BB00F |
  BIT.W #$0020                              ; $8BB011 |
  BEQ CODE_8BB019                           ; $8BB014 |
  LDY.W #$0002                              ; $8BB016 |

CODE_8BB019:
  STY.B $04                                 ; $8BB019 |
  LDA.B $4E,X                               ; $8BB01B |
  AND.W #$00FF                              ; $8BB01D |
  ASL A                                     ; $8BB020 |
  ASL A                                     ; $8BB021 |
  CLC                                       ; $8BB022 |
  ADC.B $04                                 ; $8BB023 |
  TAX                                       ; $8BB025 |
  LDA.L DATA8_8BB049,X                      ; $8BB026 |
  TAY                                       ; $8BB02A |
  LDX.B $FC                                 ; $8BB02B |
  LDA.B $09,X                               ; $8BB02D |
  CLC                                       ; $8BB02F |
  ADC.W $1662                               ; $8BB030 |
  AND.W #$FFE0                              ; $8BB033 |
  STA.B $10                                 ; $8BB036 |
  LDA.B $0D,X                               ; $8BB038 |
  CLC                                       ; $8BB03A |
  ADC.W $1672                               ; $8BB03B |
  AND.W #$FFE0                              ; $8BB03E |
  STA.B $12                                 ; $8BB041 |
  TYA                                       ; $8BB043 |
  JSL.L CODE_FL_8580EE                      ; $8BB044 |

CODE_8BB048:
  RTS                                       ; $8BB048 |

DATA8_8BB049:
  db $48,$01,$4A,$01,$48,$01,$4A,$01        ; $8BB049 |
  db $4C,$01,$4E,$01,$44,$01,$46,$01        ; $8BB051 |
  db $44,$01,$46,$01,$48,$01,$4A,$01        ; $8BB059 |
  db $4C,$01,$4E,$01,$44,$01,$46,$01        ; $8BB061 |

CODE_8BB069:
  JSR.W CODE_FN_8BAEFD                      ; $8BB069 |
  LDA.B $44,X                               ; $8BB06C |
  TAX                                       ; $8BB06E |
  JSL.L CODE_FL_85A8F4                      ; $8BB06F |
  LDA.B $34,X                               ; $8BB073 |
  AND.W #$FF7F                              ; $8BB075 |
  STA.B $34,X                               ; $8BB078 |
  DEC.B $1A,X                               ; $8BB07A |
  LDX.B $FC                                 ; $8BB07C |
  JML.L CODE_FL_85A8F4                      ; $8BB07E |

CODE_8BB082:
  LDA.B $44,X                               ; $8BB082 |
  TAX                                       ; $8BB084 |
  DEC.B $2C,X                               ; $8BB085 |
  JSL.L CODE_FL_85A84D                      ; $8BB087 |
  LDX.B $FC                                 ; $8BB08B |
  JSL.L CODE_FL_85A84D                      ; $8BB08D |
  JSL.L CODE_FL_86C70D                      ; $8BB091 |
  INC.B $1A,X                               ; $8BB095 |
  RTL                                       ; $8BB097 |

CODE_8BB098:
  LDA.B $44,X                               ; $8BB098 |
  TAX                                       ; $8BB09A |
  JSL.L CODE_FL_85A927                      ; $8BB09B |
  LDA.B $34,X                               ; $8BB09F |
  AND.W #$B77F                              ; $8BB0A1 |
  STA.B $34,X                               ; $8BB0A4 |
  LDX.B $FC                                 ; $8BB0A6 |
  JSL.L CODE_FL_85A927                      ; $8BB0A8 |
  STZ.B $32,X                               ; $8BB0AC |
  LDA.B $34,X                               ; $8BB0AE |
  AND.W #$B77F                              ; $8BB0B0 |
  STA.B $34,X                               ; $8BB0B3 |
  TDC                                       ; $8BB0B5 |
  STA.B $37,X                               ; $8BB0B6 |
  LDA.B $40,X                               ; $8BB0B8 |
  STA.B $1A,X                               ; $8BB0BA |
  RTL                                       ; $8BB0BC |

CODE_8BB0BD:
  JSL.L CODE_FL_86C3F8                      ; $8BB0BD |
  PHX                                       ; $8BB0C1 |
  ASL A                                     ; $8BB0C2 |
  TAX                                       ; $8BB0C3 |
  LDA.L PTR16_8BB0CE,X                      ; $8BB0C4 |
  PLX                                       ; $8BB0C8 |
  STA.B $00                                 ; $8BB0C9 |
  JMP.W ($0000)                             ; $8BB0CB |

PTR16_8BB0CE:
  dw CODE_8BB0DC                            ; $8BB0CE |
  dw CODE_8BB0F3                            ; $8BB0D0 |
  dw CODE_8BB127                            ; $8BB0D2 |
  dw CODE_8BB139                            ; $8BB0D4 |
  dw CODE_8BB151                            ; $8BB0D6 |
  dw CODE_8BB167                            ; $8BB0D8 |
  dw CODE_8BB17A                            ; $8BB0DA |

CODE_8BB0DC:
  JSL.L CODE_FL_86C7A5                      ; $8BB0DC |
  LDA.W #$35D2                              ; $8BB0E0 |
  STA.B $00,X                               ; $8BB0E3 |
  LDA.W #$E000                              ; $8BB0E5 |
  STA.B $22,X                               ; $8BB0E8 |
  LDA.W #$A090                              ; $8BB0EA |
  STA.B $34,X                               ; $8BB0ED |
  JML.L CODE_FL_86C63F                      ; $8BB0EF |

CODE_8BB0F3:
  LDA.B $32,X                               ; $8BB0F3 |
  BPL CODE_8BB111                           ; $8BB0F5 |
  STZ.B $32,X                               ; $8BB0F7 |
  SEP #$20                                  ; $8BB0F9 |
  LDA.B $37,X                               ; $8BB0FB |
  CMP.B #$01                                ; $8BB0FD |
  BNE CODE_8BB112                           ; $8BB0FF |
  INC.B $1A,X                               ; $8BB101 |
  REP #$20                                  ; $8BB103 |
  LDA.W #$0001                              ; $8BB105 |
  STA.L $7E7C06                             ; $8BB108 |
  LDA.W #$6AE0                              ; $8BB10C |
  STA.B $40,X                               ; $8BB10F |

CODE_8BB111:
  RTL                                       ; $8BB111 |

CODE_8BB112:
  REP #$20                                  ; $8BB112 |
  LDA.W #$0032                              ; $8BB114 |
  JSL.L push_sound_queue                    ; $8BB117 |
  LDA.W #$0005                              ; $8BB11B |
  STA.B $1A,X                               ; $8BB11E |
  LDA.W #$201C                              ; $8BB120 |
  JML.L CODE_FL_86CAEE                      ; $8BB123 |

CODE_8BB127:
  JSL.L CODE_FL_86C239                      ; $8BB127 |
  BCC CODE_8BB138                           ; $8BB12B |
  JSL.L CODE_FL_85A8F4                      ; $8BB12D |
  LDA.B $34,X                               ; $8BB131 |
  ORA.W #$0010                              ; $8BB133 |
  STA.B $34,X                               ; $8BB136 |

CODE_8BB138:
  RTL                                       ; $8BB138 |

CODE_8BB139:
  JSL.L CODE_FL_85A84D                      ; $8BB139 |
  LDA.B $32,X                               ; $8BB13D |
  BPL CODE_8BB148                           ; $8BB13F |
  LDA.W #$A000                              ; $8BB141 |
  JML.L CODE_JL_85AAAA                      ; $8BB144 |

CODE_8BB148:
  REP #$20                                  ; $8BB148 |
  JSL.L CODE_FL_86C70D                      ; $8BB14A |
  INC.B $1A,X                               ; $8BB14E |
  RTL                                       ; $8BB150 |

CODE_8BB151:
  JSL.L CODE_FL_85A927                      ; $8BB151 |
  LDA.W #$E000                              ; $8BB155 |
  STA.B $22,X                               ; $8BB158 |
  LDA.W #$A090                              ; $8BB15A |
  STA.B $34,X                               ; $8BB15D |
  STZ.B $32,X                               ; $8BB15F |
  LDA.W #$0001                              ; $8BB161 |
  STA.B $1A,X                               ; $8BB164 |
  RTL                                       ; $8BB166 |

CODE_8BB167:
  LDA.B $20,X                               ; $8BB167 |
  BNE CODE_8BB179                           ; $8BB169 |
  LDA.W #$0000                              ; $8BB16B |
  STA.L $7E7C06                             ; $8BB16E |
  LDA.W #$6AE0                              ; $8BB172 |
  STA.B $40,X                               ; $8BB175 |
  INC.B $1A,X                               ; $8BB177 |

CODE_8BB179:
  RTL                                       ; $8BB179 |

CODE_8BB17A:
  JSL.L CODE_FL_86C239                      ; $8BB17A |
  BCC CODE_8BB179                           ; $8BB17E |
  LDA.W #$0001                              ; $8BB180 |
  STA.B $1A,X                               ; $8BB183 |
  RTL                                       ; $8BB185 |

CODE_8BB186:
  JSL.L CODE_FL_85F885                      ; $8BB186 |
  STZ.B $26,X                               ; $8BB18A |
  JSL.L CODE_FL_86C3F8                      ; $8BB18C |
  PHX                                       ; $8BB190 |
  ASL A                                     ; $8BB191 |
  TAX                                       ; $8BB192 |
  LDA.L PTR16_8BB19D,X                      ; $8BB193 |
  PLX                                       ; $8BB197 |
  STA.B $00                                 ; $8BB198 |
  JMP.W ($0000)                             ; $8BB19A |

PTR16_8BB19D:
  dw CODE_8BB1A7                            ; $8BB19D |
  dw CODE_8BB1DD                            ; $8BB19F |
  dw CODE_8BB1E4                            ; $8BB1A1 |
  dw CODE_8BB23A                            ; $8BB1A3 |
  dw CODE_8BB25D                            ; $8BB1A5 |

CODE_8BB1A7:
  JSL.L CODE_FL_86C7A5                      ; $8BB1A7 |
  STZ.B $02,X                               ; $8BB1AB |
  LDA.W #$35A0                              ; $8BB1AD |
  STA.B $00,X                               ; $8BB1B0 |
  LDA.W #$0015                              ; $8BB1B2 |
  JSL.L CODE_FL_86C9A4                      ; $8BB1B5 |
  BCS CODE_8BB1D9                           ; $8BB1B9 |
  JSL.L CODE_FL_85AAB6                      ; $8BB1BB |
  JSL.L CODE_FL_86C7C4                      ; $8BB1BF |
  LDA.W #$7888                              ; $8BB1C3 |
  STA.B $34,X                               ; $8BB1C6 |
  JSL.L CODE_FL_86C63F                      ; $8BB1C8 |
  LDA.W $1672                               ; $8BB1CC |
  ADC.B $0D,X                               ; $8BB1CF |
  STA.B $4A,X                               ; $8BB1D1 |
  LDA.W #$0020                              ; $8BB1D3 |
  STA.B $2C,X                               ; $8BB1D6 |
  RTL                                       ; $8BB1D8 |

CODE_8BB1D9:
  JML.L CODE_FL_86CA36                      ; $8BB1D9 |

CODE_8BB1DD:
  JSL.L CODE_FL_86C70D                      ; $8BB1DD |
  INC.B $1A,X                               ; $8BB1E1 |
  RTL                                       ; $8BB1E3 |

CODE_8BB1E4:
  JSL.L CODE_FL_8BB1FB                      ; $8BB1E4 |
  JSL.L CODE_FL_85A646                      ; $8BB1E8 |
  BEQ CODE_8BB1FA                           ; $8BB1EC |
  LDA.W #$001B                              ; $8BB1EE |
  JSL.L push_sound_queue                    ; $8BB1F1 |
  LDA.W #$0010                              ; $8BB1F5 |
  STA.B $2C,X                               ; $8BB1F8 |

CODE_8BB1FA:
  RTL                                       ; $8BB1FA |

CODE_FL_8BB1FB:
  CLC                                       ; $8BB1FB |
  LDA.W $1672                               ; $8BB1FC |
  ADC.B $0D,X                               ; $8BB1FF |
  SEC                                       ; $8BB201 |
  SBC.B $4A,X                               ; $8BB202 |
  ADC.W #$0020                              ; $8BB204 |
  LDY.W #$3596                              ; $8BB207 |
  CMP.W #$0050                              ; $8BB20A |
  BCS CODE_8BB232                           ; $8BB20D |
  LDY.W #$358E                              ; $8BB20F |
  CMP.W #$0040                              ; $8BB212 |
  BCS CODE_8BB232                           ; $8BB215 |
  LDY.W #$3588                              ; $8BB217 |
  CMP.W #$0030                              ; $8BB21A |
  BCS CODE_8BB232                           ; $8BB21D |
  LDY.W #$3584                              ; $8BB21F |
  CMP.W #$0020                              ; $8BB222 |
  BCS CODE_8BB232                           ; $8BB225 |
  LDY.W #$3582                              ; $8BB227 |
  CMP.W #$0010                              ; $8BB22A |
  BCS CODE_8BB232                           ; $8BB22D |
  LDY.W #$0000                              ; $8BB22F |

CODE_8BB232:
  PHY                                       ; $8BB232 |
  LDY.B $44,X                               ; $8BB233 |
  PLA                                       ; $8BB235 |
  STA.W $0000,Y                             ; $8BB236 |
  RTL                                       ; $8BB239 |

CODE_8BB23A:
  JSL.L CODE_FL_86C393                      ; $8BB23A |
  JSL.L CODE_FL_86C70D                      ; $8BB23E |
  LDA.W #$FF80                              ; $8BB242 |
  STA.B $28,X                               ; $8BB245 |
  LDA.W #$FFE0                              ; $8BB247 |
  STA.B $3A,X                               ; $8BB24A |
  LDA.B $4E,X                               ; $8BB24C |
  AND.W #$0001                              ; $8BB24E |
  BNE CODE_8BB25A                           ; $8BB251 |
  LDA.W #$FFC0                              ; $8BB253 |
  STA.B $28,X                               ; $8BB256 |
  STZ.B $3A,X                               ; $8BB258 |

CODE_8BB25A:
  INC.B $1A,X                               ; $8BB25A |
  RTL                                       ; $8BB25C |

CODE_8BB25D:
  JSL.L CODE_FL_8BB1FB                      ; $8BB25D |
  CLC                                       ; $8BB261 |
  LDA.W $1672                               ; $8BB262 |
  ADC.B $0D,X                               ; $8BB265 |
  ADC.B $3A,X                               ; $8BB267 |
  SEC                                       ; $8BB269 |
  SBC.B $4A,X                               ; $8BB26A |
  BCS CODE_8BB283                           ; $8BB26C |
  EOR.W #$FFFF                              ; $8BB26E |
  INC A                                     ; $8BB271 |
  CLC                                       ; $8BB272 |
  ADC.B $0D,X                               ; $8BB273 |
  STA.B $0D,X                               ; $8BB275 |
  LDA.W #$0001                              ; $8BB277 |
  STA.B $1A,X                               ; $8BB27A |
  STZ.B $28,X                               ; $8BB27C |
  LDA.W #$0040                              ; $8BB27E |
  STA.B $2C,X                               ; $8BB281 |

CODE_8BB283:
  RTL                                       ; $8BB283 |

CODE_8BB284:
  JSL.L CODE_FL_86C424                      ; $8BB284 |
  PHX                                       ; $8BB288 |
  ASL A                                     ; $8BB289 |
  TAX                                       ; $8BB28A |
  LDA.L PTR16_8BB295,X                      ; $8BB28B |
  PLX                                       ; $8BB28F |
  STA.B $00                                 ; $8BB290 |
  JMP.W ($0000)                             ; $8BB292 |

PTR16_8BB295:
  dw CODE_8BB299                            ; $8BB295 |
  dw CODE_8BB2A4                            ; $8BB297 |

CODE_8BB299:
  JSL.L CODE_FL_86C7AD                      ; $8BB299 |
  JSL.L CODE_FL_85AA07                      ; $8BB29D |
  INC.B $1A,X                               ; $8BB2A1 |
  RTL                                       ; $8BB2A3 |

CODE_8BB2A4:
  LDA.W $1672                               ; $8BB2A4 |
  CMP.W #$0380                              ; $8BB2A7 |
  BCS CODE_8BB2C5                           ; $8BB2AA |
  LDA.W #$0100                              ; $8BB2AC |
  STA.B $0D,X                               ; $8BB2AF |
  JSL.L CODE_FL_86C70D                      ; $8BB2B1 |
  JSR.W CODE_FN_8BB867                      ; $8BB2B5 |
  BCS CODE_8BB2C0                           ; $8BB2B8 |
  LDA.W #$0047                              ; $8BB2BA |
  STA.W $0002,Y                             ; $8BB2BD |

CODE_8BB2C0:
  LDA.W #$0030                              ; $8BB2C0 |
  STA.B $2C,X                               ; $8BB2C3 |

CODE_8BB2C5:
  RTL                                       ; $8BB2C5 |

CODE_8BB2C6:
  JSL.L CODE_FL_86C3C9                      ; $8BB2C6 |
  PHX                                       ; $8BB2CA |
  ASL A                                     ; $8BB2CB |
  TAX                                       ; $8BB2CC |
  LDA.L PTR16_8BB2D7,X                      ; $8BB2CD |
  PLX                                       ; $8BB2D1 |
  STA.B $00                                 ; $8BB2D2 |
  JMP.W ($0000)                             ; $8BB2D4 |

PTR16_8BB2D7:
  dw CODE_8BB2DD                            ; $8BB2D7 |
  dw CODE_8BB308                            ; $8BB2D9 |
  dw CODE_8BB322                            ; $8BB2DB |

CODE_8BB2DD:
  JSL.L CODE_FL_86C7A5                      ; $8BB2DD |
  LDA.W #$3192                              ; $8BB2E1 |
  STA.B $00,X                               ; $8BB2E4 |
  LDA.B $34,X                               ; $8BB2E6 |
  ORA.W #$A800                              ; $8BB2E8 |
  STA.B $34,X                               ; $8BB2EB |
  JSL.L CODE_FL_85AA07                      ; $8BB2ED |
  JSL.L CODE_FL_85AC74                      ; $8BB2F1 |
  LDA.W $1C38                               ; $8BB2F5 |
  STA.W $1C28                               ; $8BB2F8 |
  LDA.W #$0003                              ; $8BB2FB |
  STA.B $0A                                 ; $8BB2FE |
  JSL.L CODE_FL_86C29D                      ; $8BB300 |
  JML.L CODE_FL_86C63F                      ; $8BB304 |

CODE_8BB308:
  LDA.W $1C38                               ; $8BB308 |
  STA.W $1C28                               ; $8BB30B |
  LDA.W #$0003                              ; $8BB30E |
  STA.B $0A                                 ; $8BB311 |
  JSL.L CODE_FL_86C324                      ; $8BB313 |
  JSL.L CODE_FL_86C34B                      ; $8BB317 |
  BCS CODE_8BB321                           ; $8BB31B |
  JSL.L CODE_FL_86CA36                      ; $8BB31D |

CODE_8BB321:
  RTL                                       ; $8BB321 |

CODE_8BB322:
  LDA.B $0D,X                               ; $8BB322 |
  CLC                                       ; $8BB324 |
  ADC.W $1962                               ; $8BB325 |
  STA.B $0D,X                               ; $8BB328 |
  RTL                                       ; $8BB32A |

CODE_8BB32B:
  JSL.L CODE_FL_86C3F8                      ; $8BB32B |
  PHX                                       ; $8BB32F |
  ASL A                                     ; $8BB330 |
  TAX                                       ; $8BB331 |
  LDA.L PTR16_8BB33C,X                      ; $8BB332 |
  PLX                                       ; $8BB336 |
  STA.B $00                                 ; $8BB337 |
  JMP.W ($0000)                             ; $8BB339 |

PTR16_8BB33C:
  dw CODE_8BB348                            ; $8BB33C |
  dw CODE_8BB375                            ; $8BB33E |
  dw CODE_8BB3DA                            ; $8BB340 |
  dw CODE_8BB40E                            ; $8BB342 |
  dw CODE_FL_8BB448                         ; $8BB344 |
  dw CODE_8BB48D                            ; $8BB346 |

CODE_8BB348:
  JSL.L CODE_FL_85ABBB                      ; $8BB348 |
  JSL.L CODE_FL_86C7A5                      ; $8BB34C |
  JSL.L CODE_FL_86C444                      ; $8BB350 |
  JSL.L CODE_FL_85AA07                      ; $8BB354 |
  LDA.W #$37A0                              ; $8BB358 |
  STA.B $00,X                               ; $8BB35B |
  LDA.W #$E000                              ; $8BB35D |
  STA.B $22,X                               ; $8BB360 |
  LDA.W #$B888                              ; $8BB362 |
  STA.B $34,X                               ; $8BB365 |
  JSL.L CODE_FL_82C6AF                      ; $8BB367 |
  LDX.B $FC                                 ; $8BB36B |
  JSL.L CODE_FL_86C63F                      ; $8BB36D |
  JML.L CODE_FL_82BE73                      ; $8BB371 |

CODE_8BB375:
  SEC                                       ; $8BB375 |
  LDA.B $09,X                               ; $8BB376 |
  SBC.W #$0020                              ; $8BB378 |
  STA.W $1DA8                               ; $8BB37B |
  LDA.B $32,X                               ; $8BB37E |
  AND.W #$8800                              ; $8BB380 |
  BEQ CODE_8BB39F                           ; $8BB383 |
  LDA.W #$0030                              ; $8BB385 |
  STA.B $2C,X                               ; $8BB388 |
  LDA.W #$00D4                              ; $8BB38A |
  JSL.L CODE_FL_8089BD                      ; $8BB38D |
  LDA.W #$201D                              ; $8BB391 |
  JSL.L CODE_FL_86CAEE                      ; $8BB394 |
  INC.B $1A,X                               ; $8BB398 |
  LDA.W #$0001                              ; $8BB39A |
  STA.B $E4                                 ; $8BB39D |

CODE_8BB39F:
  JSL.L CODE_FL_82BE73                      ; $8BB39F |
  JSL.L CODE_FL_86C70D                      ; $8BB3A3 |
  LDA.W #$001E                              ; $8BB3A7 |
  JSL.L CODE_FL_86C9C5                      ; $8BB3AA |
  BCS CODE_8BB3D9                           ; $8BB3AE |
  LDA.W #$0014                              ; $8BB3B0 |
  STA.W $002C,Y                             ; $8BB3B3 |
  LDA.W #$DC56                              ; $8BB3B6 |
  STA.W $0000,Y                             ; $8BB3B9 |
  LDA.B $86                                 ; $8BB3BC |
  AND.W #$001F                              ; $8BB3BE |
  SBC.W #$0010                              ; $8BB3C1 |
  ADC.W $0009,Y                             ; $8BB3C4 |
  STA.W $0009,Y                             ; $8BB3C7 |
  CLC                                       ; $8BB3CA |
  LDA.W $000D,Y                             ; $8BB3CB |
  ADC.W #$0008                              ; $8BB3CE |
  STA.W $000D,Y                             ; $8BB3D1 |
  LDA.W #$0018                              ; $8BB3D4 |
  STA.B $2C,X                               ; $8BB3D7 |

CODE_8BB3D9:
  RTL                                       ; $8BB3D9 |

CODE_8BB3DA:
  LDA.B $2C,X                               ; $8BB3DA |
  CMP.W #$0020                              ; $8BB3DC |
  BNE CODE_8BB3E8                           ; $8BB3DF |
  LDA.W #$0022                              ; $8BB3E1 |
  JSL.L push_sound_queue                    ; $8BB3E4 |

CODE_8BB3E8:
  SEC                                       ; $8BB3E8 |
  LDA.B $09,X                               ; $8BB3E9 |
  SBC.W #$0020                              ; $8BB3EB |
  STA.W $1DA8                               ; $8BB3EE |
  LDA.W $1DA6                               ; $8BB3F1 |
  ADC.W #$0004                              ; $8BB3F4 |
  STA.W $1DA6                               ; $8BB3F7 |
  JSL.L CODE_FL_82BE73                      ; $8BB3FA |
  JSL.L CODE_FL_86C70D                      ; $8BB3FE |
  LDA.W #$0040                              ; $8BB402 |
  STA.B $2C,X                               ; $8BB405 |
  JSL.L CODE_FL_85ABC2                      ; $8BB407 |
  INC.B $1A,X                               ; $8BB40B |
  RTL                                       ; $8BB40D |

CODE_8BB40E:
  JSL.L CODE_FL_82BE73                      ; $8BB40E |
  JSL.L CODE_FL_86C70D                      ; $8BB412 |
  JSL.L CODE_FL_82B994                      ; $8BB416 |
  LDA.W #$0016                              ; $8BB41A |
  STA.W $1FC2                               ; $8BB41D |
  LDA.W #$00A0                              ; $8BB420 |
  STA.W $1FB8                               ; $8BB423 |
  LDA.W #$009F                              ; $8BB426 |
  STA.W $1FE6                               ; $8BB429 |
  LDA.W #$0040                              ; $8BB42C |
  STA.B $2C,X                               ; $8BB42F |
  SEC                                       ; $8BB431 |
  LDA.B $09,X                               ; $8BB432 |
  SBC.W #$0020                              ; $8BB434 |
  STA.B $3A,X                               ; $8BB437 |
  CLC                                       ; $8BB439 |
  LDA.B $09,X                               ; $8BB43A |
  ADC.W #$0020                              ; $8BB43C |
  STA.B $3C,X                               ; $8BB43F |
  JSL.L CODE_FL_8BB448                      ; $8BB441 |
  INC.B $1A,X                               ; $8BB445 |
  RTL                                       ; $8BB447 |

CODE_FL_8BB448:
  LDA.W $1C38                               ; $8BB448 |
  AND.W #$0001                              ; $8BB44B |
  BNE CODE_8BB454                           ; $8BB44E |
  INC.B $3A,X                               ; $8BB450 |
  DEC.B $3C,X                               ; $8BB452 |

CODE_8BB454:
  LDA.B $3C,X                               ; $8BB454 |
  XBA                                       ; $8BB456 |
  AND.W #$FF00                              ; $8BB457 |
  ORA.B $3A,X                               ; $8BB45A |
  STA.W $1FF8                               ; $8BB45C |
  JSL.L CODE_FL_86C70D                      ; $8BB45F |
  STZ.B $34,X                               ; $8BB463 |
  LDA.W #$05D0                              ; $8BB465 |
  STA.W $1C68                               ; $8BB468 |
  LDA.W #$001F                              ; $8BB46B |
  STA.W $1FBE                               ; $8BB46E |
  LDA.W #$001B                              ; $8BB471 |
  STA.W $1FC0                               ; $8BB474 |
  LDA.W #$0064                              ; $8BB477 |
  STA.W $1FDE                               ; $8BB47A |
  LDA.W #$0080                              ; $8BB47D |
  STA.W $1FE6                               ; $8BB480 |
  STZ.B $E4                                 ; $8BB483 |
  LDA.W #$0002                              ; $8BB485 |
  STA.W $1FDC                               ; $8BB488 |
  INC.B $1A,X                               ; $8BB48B |

CODE_8BB48D:
  RTL                                       ; $8BB48D |

CODE_8BB48E:
  JSL.L CODE_FL_85F885                      ; $8BB48E |
  LDA.B $20,X                               ; $8BB492 |
  STA.W $1C3C                               ; $8BB494 |
  JSL.L CODE_FL_86C3F8                      ; $8BB497 |
  PHX                                       ; $8BB49B |
  ASL A                                     ; $8BB49C |
  TAX                                       ; $8BB49D |
  LDA.L PTR16_8BB4A8,X                      ; $8BB49E |
  PLX                                       ; $8BB4A2 |
  STA.B $00                                 ; $8BB4A3 |
  JMP.W ($0000)                             ; $8BB4A5 |

PTR16_8BB4A8:
  dw CODE_8BB4AC                            ; $8BB4A8 |
  dw CODE_8BB4EA                            ; $8BB4AA |

CODE_8BB4AC:
  LDA.B $4E,X                               ; $8BB4AC |
  AND.W #$00FF                              ; $8BB4AE |
  ASL A                                     ; $8BB4B1 |
  TAY                                       ; $8BB4B2 |
  PHB                                       ; $8BB4B3 |
  PHK                                       ; $8BB4B4 |
  PLB                                       ; $8BB4B5 |
  LDA.W LOOSE_OP_00B4D8,Y                   ; $8BB4B6 |
  STA.B $3A,X                               ; $8BB4B9 |
  LDA.W CODE_00B4DE,Y                       ; $8BB4BB |
  STA.B $3C,X                               ; $8BB4BE |
  LDA.W CODE_00B4E4,Y                       ; $8BB4C0 |
  STA.B $3E,X                               ; $8BB4C3 |
  PLB                                       ; $8BB4C5 |
  JSL.L CODE_FL_86C7A5                      ; $8BB4C6 |
  JSL.L CODE_FL_86C444                      ; $8BB4CA |
  LDA.B $3A,X                               ; $8BB4CE |
  JSL.L CODE_FL_86CAEE                      ; $8BB4D0 |
  JML.L CODE_FL_86C63F                      ; $8BB4D4 |

  db $1F,$20,$20,$20,$21,$20,$44,$36        ; $8BB4D8 |
  db $92,$36,$D8,$36,$00,$FD,$80,$FB        ; $8BB4E0 |
  db $00,$FB                                ; $8BB4E8 |

CODE_8BB4EA:
  JSL.L CODE_FL_86C486                      ; $8BB4EA |
  LDA.B $3C,X                               ; $8BB4EE |
  JSL.L CODE_FL_86CADB                      ; $8BB4F0 |
  BNE CODE_8BB4F9                           ; $8BB4F4 |
  JSR.W CODE_FN_8BB4FA                      ; $8BB4F6 |

CODE_8BB4F9:
  RTL                                       ; $8BB4F9 |

CODE_FN_8BB4FA:
  JSL.L CODE_FL_85A9EF                      ; $8BB4FA |
  LDA.B $BE                                 ; $8BB4FE |
  CMP.W #$3000                              ; $8BB500 |
  BCS CODE_8BB515                           ; $8BB503 |
  LDA.B $2A                                 ; $8BB505 |
  CMP.W #$2030                              ; $8BB507 |
  BNE CODE_8BB515                           ; $8BB50A |
  JSL.L CODE_FL_85A9F7                      ; $8BB50C |
  LDA.W #$01D3                              ; $8BB510 |
  BRA CODE_8BB518                           ; $8BB513 |

CODE_8BB515:
  LDA.W #$0174                              ; $8BB515 |

CODE_8BB518:
  JSL.L CODE_FL_86C9A7                      ; $8BB518 |
  BCS CODE_8BB535                           ; $8BB51C |
  JSL.L CODE_FL_86C7C4                      ; $8BB51E |
  LDA.B $04,X                               ; $8BB522 |
  STA.W $0004,Y                             ; $8BB524 |
  LDA.B $3E,X                               ; $8BB527 |
  STA.W $003A,Y                             ; $8BB529 |
  LDA.W $000D,Y                             ; $8BB52C |
  SBC.W #$0010                              ; $8BB52F |
  STA.W $000D,Y                             ; $8BB532 |

CODE_8BB535:
  RTS                                       ; $8BB535 |

CODE_8BB536:
  JSL.L CODE_FL_85F885                      ; $8BB536 |
  JSL.L CODE_FL_86C3F8                      ; $8BB53A |
  PHX                                       ; $8BB53E |
  ASL A                                     ; $8BB53F |
  TAX                                       ; $8BB540 |
  LDA.L PTR16_8BB54B,X                      ; $8BB541 |
  PLX                                       ; $8BB545 |
  STA.B $00                                 ; $8BB546 |
  JMP.W ($0000)                             ; $8BB548 |

PTR16_8BB54B:
  dw CODE_8BB553                            ; $8BB54B |
  dw CODE_8BB575                            ; $8BB54D |
  dw CODE_8BB5A0                            ; $8BB54F |
  dw CODE_8BB5AC                            ; $8BB551 |

CODE_8BB553:
  LDA.W #$201E                              ; $8BB553 |
  JSL.L CODE_FL_86CAEE                      ; $8BB556 |
  LDA.W #$C000                              ; $8BB55A |
  STA.B $34,X                               ; $8BB55D |

CODE_8BB55F:
  LDY.W #$0010                              ; $8BB55F |
  JSL.L CODE_FL_85AB99                      ; $8BB562 |
  LDA.W #$FE80                              ; $8BB566 |
  JSL.L CODE_FL_86C887                      ; $8BB569 |
  LDA.B $3A,X                               ; $8BB56D |
  STA.B $28,X                               ; $8BB56F |
  JML.L CODE_FL_86C63F                      ; $8BB571 |

CODE_8BB575:
  JSL.L CODE_FL_85A62E                      ; $8BB575 |
  BEQ CODE_8BB595                           ; $8BB579 |
  LDA.B $40,X                               ; $8BB57B |
  BNE CODE_8BB588                           ; $8BB57D |
  LDA.W #$0108                              ; $8BB57F |
  JSL.L CODE_FL_8089BD                      ; $8BB582 |
  INC.B $40,X                               ; $8BB586 |

CODE_8BB588:
  LDA.B $3A,X                               ; $8BB588 |
  SEC                                       ; $8BB58A |
  ROR A                                     ; $8BB58B |
  STA.B $3A,X                               ; $8BB58C |
  STA.B $28,X                               ; $8BB58E |
  CMP.W #$FFFC                              ; $8BB590 |
  BCS CODE_8BB596                           ; $8BB593 |

CODE_8BB595:
  RTL                                       ; $8BB595 |

CODE_8BB596:
  STZ.B $26,X                               ; $8BB596 |
  LDA.W #$0010                              ; $8BB598 |
  STA.B $2C,X                               ; $8BB59B |
  INC.B $1A,X                               ; $8BB59D |
  RTL                                       ; $8BB59F |

CODE_8BB5A0:
  JSL.L CODE_FL_85A893                      ; $8BB5A0 |
  JSL.L CODE_FL_86C70D                      ; $8BB5A4 |
  JML.L CODE_FL_86CA36                      ; $8BB5A8 |

CODE_8BB5AC:
  JSL.L CODE_FL_85A939                      ; $8BB5AC |
  JML.L CODE_FL_86CA36                      ; $8BB5B0 |

CODE_8BB5B4:
  JSL.L CODE_FL_86C3F8                      ; $8BB5B4 |
  PHX                                       ; $8BB5B8 |
  ASL A                                     ; $8BB5B9 |
  TAX                                       ; $8BB5BA |
  LDA.L PTR16_8BB5C5,X                      ; $8BB5BB |
  PLX                                       ; $8BB5BF |
  STA.B $00                                 ; $8BB5C0 |
  JMP.W ($0000)                             ; $8BB5C2 |

PTR16_8BB5C5:
  dw CODE_8BB5C9                            ; $8BB5C5 |
  dw CODE_8BB5DE                            ; $8BB5C7 |

CODE_8BB5C9:
  LDA.W #$6020                              ; $8BB5C9 |
  STA.B $34,X                               ; $8BB5CC |
  LDA.W #$0042                              ; $8BB5CE |
  JSL.L CODE_FL_86CAEE                      ; $8BB5D1 |
  LDA.W #$0043                              ; $8BB5D5 |
  STA.B $02,X                               ; $8BB5D8 |
  STZ.B $06,X                               ; $8BB5DA |
  BRA CODE_8BB55F                           ; $8BB5DC |

CODE_8BB5DE:
  JSL.L CODE_FL_85F885                      ; $8BB5DE |
  LDA.B $32,X                               ; $8BB5E2 |
  BMI CODE_8BB5F8                           ; $8BB5E4 |
  JSL.L CODE_FL_85A62E                      ; $8BB5E6 |
  BEQ CODE_8BB5F7                           ; $8BB5EA |

CODE_8BB5EC:
  LDA.W #$021A                              ; $8BB5EC |
  JSL.L CODE_FL_86C9C5                      ; $8BB5EF |
  JSL.L CODE_FL_86CA36                      ; $8BB5F3 |

CODE_8BB5F7:
  RTL                                       ; $8BB5F7 |

CODE_8BB5F8:
  LDA.W #$0050                              ; $8BB5F8 |
  JSL.L CODE_FL_83D1C9                      ; $8BB5FB |
  LDA.W #$0016                              ; $8BB5FF |
  JSL.L push_sound_queue                    ; $8BB602 |
  BRA CODE_8BB5EC                           ; $8BB606 |

CODE_8BB608:
  JSL.L CODE_FL_85F885                      ; $8BB608 |
  JSL.L CODE_FL_86C3B0                      ; $8BB60C |
  PHX                                       ; $8BB610 |
  ASL A                                     ; $8BB611 |
  TAX                                       ; $8BB612 |
  LDA.L PTR16_8BB61D,X                      ; $8BB613 |
  PLX                                       ; $8BB617 |
  STA.B $00                                 ; $8BB618 |
  JMP.W ($0000)                             ; $8BB61A |

PTR16_8BB61D:
  dw CODE_8BB627                            ; $8BB61D |
  dw CODE_8BB65A                            ; $8BB61F |
  dw CODE_8BB661                            ; $8BB621 |
  dw CODE_8BB674                            ; $8BB623 |
  dw CODE_8BB690                            ; $8BB625 |

CODE_8BB627:
  LDA.W #$1898                              ; $8BB627 |
  STA.B $04,X                               ; $8BB62A |
  JSL.L CODE_FL_86C7A5                      ; $8BB62C |
  LDA.W #$35AC                              ; $8BB630 |
  STA.B $00,X                               ; $8BB633 |
  JSL.L CODE_FL_85A9EF                      ; $8BB635 |
  JSL.L CODE_FL_86C63F                      ; $8BB639 |
  LDA.W #$0020                              ; $8BB63D |
  STA.B $2C,X                               ; $8BB640 |
  LDA.B $4E,X                               ; $8BB642 |
  AND.W #$0002                              ; $8BB644 |
  BEQ CODE_8BB652                           ; $8BB647 |
  JSL.L CODE_FL_86C47E                      ; $8BB649 |
  LDA.W #$0080                              ; $8BB64D |
  STA.B $2C,X                               ; $8BB650 |

CODE_8BB652:
  LDA.W $1672                               ; $8BB652 |
  ADC.B $0D,X                               ; $8BB655 |
  STA.B $4A,X                               ; $8BB657 |
  RTL                                       ; $8BB659 |

CODE_8BB65A:
  JSL.L CODE_FL_86C70D                      ; $8BB65A |
  INC.B $1A,X                               ; $8BB65E |
  RTL                                       ; $8BB660 |

CODE_8BB661:
  JSL.L CODE_FL_85A646                      ; $8BB661 |
  BEQ CODE_8BB673                           ; $8BB665 |
  LDA.W #$001B                              ; $8BB667 |
  JSL.L push_sound_queue                    ; $8BB66A |
  LDA.W #$0010                              ; $8BB66E |
  STA.B $2C,X                               ; $8BB671 |

CODE_8BB673:
  RTL                                       ; $8BB673 |

CODE_8BB674:
  JSL.L CODE_FL_86C393                      ; $8BB674 |
  JSL.L CODE_FL_86C70D                      ; $8BB678 |
  LDA.W #$FF00                              ; $8BB67C |
  STA.B $28,X                               ; $8BB67F |
  LDA.B $4E,X                               ; $8BB681 |
  AND.W #$0001                              ; $8BB683 |
  BNE CODE_8BB68D                           ; $8BB686 |
  LDA.W #$FF80                              ; $8BB688 |
  STA.B $28,X                               ; $8BB68B |

CODE_8BB68D:
  INC.B $1A,X                               ; $8BB68D |
  RTL                                       ; $8BB68F |

CODE_8BB690:
  CLC                                       ; $8BB690 |
  LDA.W $1672                               ; $8BB691 |
  ADC.B $0D,X                               ; $8BB694 |
  SEC                                       ; $8BB696 |
  SBC.B $4A,X                               ; $8BB697 |
  BCS CODE_8BB6B0                           ; $8BB699 |
  EOR.W #$FFFF                              ; $8BB69B |
  INC A                                     ; $8BB69E |
  CLC                                       ; $8BB69F |
  ADC.B $0D,X                               ; $8BB6A0 |
  STA.B $0D,X                               ; $8BB6A2 |
  LDA.W #$0001                              ; $8BB6A4 |
  STA.B $1A,X                               ; $8BB6A7 |
  STZ.B $28,X                               ; $8BB6A9 |
  LDA.W #$0040                              ; $8BB6AB |
  STA.B $2C,X                               ; $8BB6AE |

CODE_8BB6B0:
  RTL                                       ; $8BB6B0 |

CODE_8BB6B1:
  JSL.L CODE_FL_86C424                      ; $8BB6B1 |
  PHX                                       ; $8BB6B5 |
  ASL A                                     ; $8BB6B6 |
  TAX                                       ; $8BB6B7 |
  LDA.L PTR16_8BB6C2,X                      ; $8BB6B8 |
  PLX                                       ; $8BB6BC |
  STA.B $00                                 ; $8BB6BD |
  JMP.W ($0000)                             ; $8BB6BF |

PTR16_8BB6C2:
  dw $9BB6C6                                ; $8BB6C2 |
  dw $9BB6D1                                ; $8BB6C4 |
  JSL.L CODE_FL_86C7AD                      ; $8BB6C6 |
  JSL.L CODE_FL_85AA07                      ; $8BB6CA |
  INC.B $1A,X                               ; $8BB6CE |
  RTL                                       ; $8BB6D0 |

  JSL.L CODE_FL_86C70D                      ; $8BB6D1 |
  LDA.W #$014E                              ; $8BB6D5 |
  JSL.L CODE_FL_86C97C                      ; $8BB6D8 |
  BCS CODE_8BB72A                           ; $8BB6DC |
  JSL.L CODE_FL_85AAB6                      ; $8BB6DE |
  JSL.L CODE_FL_86C7C4                      ; $8BB6E2 |
  LDA.B $09,X                               ; $8BB6E6 |
  CLC                                       ; $8BB6E8 |
  ADC.W #$0020                              ; $8BB6E9 |
  STA.W $0009,Y                             ; $8BB6EC |
  LDA.B $0D,X                               ; $8BB6EF |
  DEC A                                     ; $8BB6F1 |
  STA.W $000D,Y                             ; $8BB6F2 |
  LDA.W #$0080                              ; $8BB6F5 |
  STA.B $2C,X                               ; $8BB6F8 |
  LDA.B $4E,X                               ; $8BB6FA |
  STA.W $004E,Y                             ; $8BB6FC |
  LSR A                                     ; $8BB6FF |
  BCC CODE_8BB72A                           ; $8BB700 |
  LDA.W #$0003                              ; $8BB702 |
  STA.B $02                                 ; $8BB705 |

CODE_8BB707:
  JSL.L CODE_FL_86C432                      ; $8BB707 |
  JSR.W CODE_FN_8BB867                      ; $8BB70B |
  BCS CODE_8BB72A                           ; $8BB70E |
  LDA.W #$0047                              ; $8BB710 |
  STA.W $0002,Y                             ; $8BB713 |
  LDA.W $004E,X                             ; $8BB716 |
  ORA.W #$0001                              ; $8BB719 |
  STA.W $004E,Y                             ; $8BB71C |
  DEC.B $02                                 ; $8BB71F |
  BNE CODE_8BB707                           ; $8BB721 |
  LDA.W #$0041                              ; $8BB723 |
  JSL.L push_sound_queue                    ; $8BB726 |

CODE_8BB72A:
  RTL                                       ; $8BB72A |

CODE_8BB72B:
  JSL.L CODE_FL_86C3C9                      ; $8BB72B |
  PHX                                       ; $8BB72F |
  ASL A                                     ; $8BB730 |
  TAX                                       ; $8BB731 |
  LDA.L PTR16_8BB73C,X                      ; $8BB732 |
  PLX                                       ; $8BB736 |
  STA.B $00                                 ; $8BB737 |
  JMP.W ($0000)                             ; $8BB739 |

PTR16_8BB73C:
  dw CODE_8BB74C                            ; $8BB73C |
  dw CODE_8BB762                            ; $8BB73E |
  dw CODE_8BB773                            ; $8BB740 |
  dw CODE_8BB796                            ; $8BB742 |
  dw CODE_8BB7CD                            ; $8BB744 |
  dw CODE_8BB7EF                            ; $8BB746 |
  dw CODE_8BB841                            ; $8BB748 |
  dw CODE_8BB85C                            ; $8BB74A |

CODE_8BB74C:
  LDA.W #$35BE                              ; $8BB74C |
  STA.B $00,X                               ; $8BB74F |
  LDA.B $34,X                               ; $8BB751 |
  ORA.W #$0880                              ; $8BB753 |
  STA.B $34,X                               ; $8BB756 |
  STZ.B $4C,X                               ; $8BB758 |
  JSL.L CODE_FL_85AC74                      ; $8BB75A |
  JML.L CODE_FL_86C63F                      ; $8BB75E |

CODE_8BB762:
  LDA.B $4E,X                               ; $8BB762 |
  LSR A                                     ; $8BB764 |
  BCC CODE_8BB76F                           ; $8BB765 |
  LDA.W #$FC00                              ; $8BB767 |
  STA.B $26,X                               ; $8BB76A |
  INC.B $1A,X                               ; $8BB76C |
  RTL                                       ; $8BB76E |

CODE_8BB76F:
  INC.B $1A,X                               ; $8BB76F |
  BRA CODE_8BB78C                           ; $8BB771 |

CODE_8BB773:
  LDA.B $09,X                               ; $8BB773 |
  CMP.W #$00D0                              ; $8BB775 |
  BCS CODE_8BB795                           ; $8BB778 |
  STZ.B $26,X                               ; $8BB77A |
  LDA.W #$0100                              ; $8BB77C |
  STA.B $28,X                               ; $8BB77F |
  LDA.B $0D,X                               ; $8BB781 |
  CLC                                       ; $8BB783 |
  ADC.W $1672                               ; $8BB784 |
  CMP.W #$0498                              ; $8BB787 |
  BCC CODE_8BB795                           ; $8BB78A |

CODE_8BB78C:
  LDA.W #$FF00                              ; $8BB78C |
  STA.B $26,X                               ; $8BB78F |
  STZ.B $28,X                               ; $8BB791 |
  INC.B $1A,X                               ; $8BB793 |

CODE_8BB795:
  RTL                                       ; $8BB795 |

CODE_8BB796:
  LDA.B $09,X                               ; $8BB796 |
  BPL CODE_8BB7A3                           ; $8BB798 |
  CMP.W #$FFE0                              ; $8BB79A |
  BCS CODE_8BB7A3                           ; $8BB79D |
  JML.L CODE_FL_86CA36                      ; $8BB79F |

CODE_8BB7A3:
  LDA.B $4E,X                               ; $8BB7A3 |
  LSR A                                     ; $8BB7A5 |
  BCS CODE_8BB7B8                           ; $8BB7A6 |
  LDA.W $1662                               ; $8BB7A8 |
  ADC.B $09,X                               ; $8BB7AB |
  CMP.W #$0180                              ; $8BB7AD |
  BCS CODE_8BB7B8                           ; $8BB7B0 |
  LDA.W #$0007                              ; $8BB7B2 |
  STA.B $1A,X                               ; $8BB7B5 |
  RTL                                       ; $8BB7B7 |

CODE_8BB7B8:
  BIT.B $46,X                               ; $8BB7B8 |
  BPL CODE_8BB7CA                           ; $8BB7BA |
  INC.B $1A,X                               ; $8BB7BC |
  LDA.W #$0005                              ; $8BB7BE |
  STA.B $2C,X                               ; $8BB7C1 |
  LDA.W #$0032                              ; $8BB7C3 |
  JSL.L push_sound_queue                    ; $8BB7C6 |

CODE_8BB7CA:
  STZ.B $46,X                               ; $8BB7CA |
  RTL                                       ; $8BB7CC |

CODE_8BB7CD:
  LDA.B $2C,X                               ; $8BB7CD |
  ASL A                                     ; $8BB7CF |
  TAX                                       ; $8BB7D0 |
  LDA.L DATA16_8BB7E5,X                     ; $8BB7D1 |
  LDX.B $FC                                 ; $8BB7D5 |
  STA.B $00,X                               ; $8BB7D7 |
  JSL.L CODE_FL_86C70D                      ; $8BB7D9 |
  LDA.W #$0005                              ; $8BB7DD |
  STA.B $2C,X                               ; $8BB7E0 |
  INC.B $1A,X                               ; $8BB7E2 |
  RTL                                       ; $8BB7E4 |

DATA16_8BB7E5:
  dw $35CE,$35CA,$35C6,$35C2                ; $8BB7E5 |
  dw $35BE                                  ; $8BB7ED |

CODE_8BB7EF:
  LDA.B $2C,X                               ; $8BB7EF |
  ASL A                                     ; $8BB7F1 |
  TAX                                       ; $8BB7F2 |
  LDA.L DATA16_8BB837,X                     ; $8BB7F3 |
  LDX.B $FC                                 ; $8BB7F7 |
  STA.B $00,X                               ; $8BB7F9 |
  JSL.L CODE_FL_86C70D                      ; $8BB7FB |
  INC.B $3A,X                               ; $8BB7FF |
  LDA.B $3A,X                               ; $8BB801 |
  AND.W #$0001                              ; $8BB803 |
  BNE CODE_8BB82F                           ; $8BB806 |
  JSR.W CODE_FN_8BB867                      ; $8BB808 |
  BCS CODE_8BB82F                           ; $8BB80B |
  LDA.B $09,X                               ; $8BB80D |
  CMP.W #$0100                              ; $8BB80F |
  BCS CODE_8BB81B                           ; $8BB812 |
  LDA.W #$0041                              ; $8BB814 |
  JSL.L push_sound_queue                    ; $8BB817 |

CODE_8BB81B:
  LDA.W #$0080                              ; $8BB81B |
  STA.W $0006,Y                             ; $8BB81E |
  LDA.W #$0047                              ; $8BB821 |
  STA.W $0002,Y                             ; $8BB824 |
  LDA.B $4E,X                               ; $8BB827 |
  AND.W #$FFFE                              ; $8BB829 |
  STA.W $004E,Y                             ; $8BB82C |

CODE_8BB82F:
  STZ.B $28,X                               ; $8BB82F |
  LDA.W #$0003                              ; $8BB831 |
  STA.B $1A,X                               ; $8BB834 |
  RTL                                       ; $8BB836 |

DATA16_8BB837:
  dw $35BE,$35C2,$35C6,$35CA                ; $8BB837 |
  dw $35CE                                  ; $8BB83F |

CODE_8BB841:
  LDA.B $46,X                               ; $8BB841 |
  BMI CODE_8BB84A                           ; $8BB843 |
  LDA.W #$0003                              ; $8BB845 |
  STA.B $1A,X                               ; $8BB848 |

CODE_8BB84A:
  STZ.B $46,X                               ; $8BB84A |
  LDA.W $1672                               ; $8BB84C |
  ADC.B $0D,X                               ; $8BB84F |
  CMP.W #$0280                              ; $8BB851 |
  BCS CODE_8BB85B                           ; $8BB854 |
  LDA.W #$0007                              ; $8BB856 |
  STA.B $1A,X                               ; $8BB859 |

CODE_8BB85B:
  RTL                                       ; $8BB85B |

CODE_8BB85C:
  LDA.B $22,X                               ; $8BB85C |
  ORA.W #$4000                              ; $8BB85E |
  STA.B $22,X                               ; $8BB861 |
  JML.L CODE_FL_86C82F                      ; $8BB863 |

CODE_FN_8BB867:
  LDA.W #$014F                              ; $8BB867 |
  JSL.L CODE_FL_86C9A4                      ; $8BB86A |
  BCS CODE_8BB8B5                           ; $8BB86E |
  JSL.L CODE_FL_85AAB6                      ; $8BB870 |
  JSL.L CODE_FL_86C7C4                      ; $8BB874 |
  LDA.B $86                                 ; $8BB878 |
  AND.W #$00FF                              ; $8BB87A |
  ADC.W #$0070                              ; $8BB87D |
  EOR.W #$FFFF                              ; $8BB880 |
  STA.B $00                                 ; $8BB883 |
  LDA.B $00                                 ; $8BB885 |
  AND.W #$FFC0                              ; $8BB887 |
  CMP.B $3A,X                               ; $8BB88A |
  BNE CODE_8BB896                           ; $8BB88C |
  LDA.B $00                                 ; $8BB88E |
  SEC                                       ; $8BB890 |
  SBC.W #$0040                              ; $8BB891 |
  STA.B $00                                 ; $8BB894 |

CODE_8BB896:
  LDA.B $00                                 ; $8BB896 |
  STA.W $0028,Y                             ; $8BB898 |
  AND.W #$FFC0                              ; $8BB89B |
  STA.B $3A,X                               ; $8BB89E |
  LDA.B $86                                 ; $8BB8A0 |
  AND.W #$003F                              ; $8BB8A2 |
  SEC                                       ; $8BB8A5 |
  SBC.W #$0020                              ; $8BB8A6 |
  CLC                                       ; $8BB8A9 |
  ADC.B $09,X                               ; $8BB8AA |
  STA.W $0009,Y                             ; $8BB8AC |
  LDA.B $0D,X                               ; $8BB8AF |
  STA.W $000D,Y                             ; $8BB8B1 |
  CLC                                       ; $8BB8B4 |

CODE_8BB8B5:
  RTS                                       ; $8BB8B5 |

CODE_8BB8B6:
  JSL.L CODE_FL_86C3F8                      ; $8BB8B6 |
  LDA.B $1A,X                               ; $8BB8BA |
  PHX                                       ; $8BB8BC |
  ASL A                                     ; $8BB8BD |
  TAX                                       ; $8BB8BE |
  LDA.L PTR16_8BB8C9,X                      ; $8BB8BF |
  PLX                                       ; $8BB8C3 |
  STA.B $00                                 ; $8BB8C4 |
  JMP.W ($0000)                             ; $8BB8C6 |

PTR16_8BB8C9:
  dw CODE_8BB8D3                            ; $8BB8C9 |
  dw CODE_8BB90D                            ; $8BB8CB |
  dw CODE_8BB91B                            ; $8BB8CD |
  dw CODE_8BB965                            ; $8BB8CF |
  dw CODE_8BB97C                            ; $8BB8D1 |

CODE_8BB8D3:
  LDA.W #$2026                              ; $8BB8D3 |
  JSL.L CODE_FL_86CAEE                      ; $8BB8D6 |
  LDA.B $34,X                               ; $8BB8DA |
  ORA.W #$8880                              ; $8BB8DC |
  STA.B $34,X                               ; $8BB8DF |
  JSL.L CODE_FL_86C63F                      ; $8BB8E1 |
  LDA.B $4E,X                               ; $8BB8E5 |
  LSR A                                     ; $8BB8E7 |
  BCS CODE_8BB8FE                           ; $8BB8E8 |

CODE_8BB8EA:
  INC.B $1A,X                               ; $8BB8EA |
  LDY.B $44,X                               ; $8BB8EC |
  CMP.W #$014E                              ; $8BB8EE |
  BNE CODE_8BB8F8                           ; $8BB8F1 |
  LDA.W #$0200                              ; $8BB8F3 |
  BRA CODE_8BB8FB                           ; $8BB8F6 |

CODE_8BB8F8:
  LDA.W #$0260                              ; $8BB8F8 |

CODE_8BB8FB:
  STA.B $2C,X                               ; $8BB8FB |
  RTL                                       ; $8BB8FD |

CODE_8BB8FE:
  LDA.W #$FB00                              ; $8BB8FE |
  STA.B $26,X                               ; $8BB901 |
  LDA.W #$0020                              ; $8BB903 |
  STA.B $4A,X                               ; $8BB906 |
  LDA.W #$0030                              ; $8BB908 |
  BRA CODE_8BB8FB                           ; $8BB90B |

CODE_8BB90D:
  JSL.L CODE_FL_86C827                      ; $8BB90D |
  JSL.L CODE_FL_86C70D                      ; $8BB911 |
  STZ.B $26,X                               ; $8BB915 |
  STZ.B $4A,X                               ; $8BB917 |
  BRA CODE_8BB8EA                           ; $8BB919 |

CODE_8BB91B:
  LDA.B $2C,X                               ; $8BB91B |
  BEQ CODE_8BB93B                           ; $8BB91D |
  LDY.W #$0002                              ; $8BB91F |
  JSL.L CODE_FL_86C514                      ; $8BB922 |
  BIT.B $46,X                               ; $8BB926 |
  BMI CODE_8BB93B                           ; $8BB928 |
  LDA.B $0D,X                               ; $8BB92A |
  BPL CODE_8BB932                           ; $8BB92C |
  JML.L CODE_FL_86CA36                      ; $8BB92E |

CODE_8BB932:
  CMP.B $3A,X                               ; $8BB932 |
  BMI CODE_8BB940                           ; $8BB934 |
  CMP.W #$0120                              ; $8BB936 |
  BCC CODE_8BB940                           ; $8BB939 |

CODE_8BB93B:
  LDA.W #$0003                              ; $8BB93B |
  STA.B $1A,X                               ; $8BB93E |

CODE_8BB940:
  LDA.B $0D,X                               ; $8BB940 |
  STA.B $3A,X                               ; $8BB942 |
  JSR.W CODE_FN_8BB948                      ; $8BB944 |
  RTL                                       ; $8BB947 |

CODE_FN_8BB948:
  LDA.B $46,X                               ; $8BB948 |
  BPL CODE_8BB962                           ; $8BB94A |
  BIT.W #$0400                              ; $8BB94C |
  BNE CODE_8BB956                           ; $8BB94F |
  LDY.W #$0400                              ; $8BB951 |
  BRA CODE_8BB959                           ; $8BB954 |

CODE_8BB956:
  LDY.W #$04C0                              ; $8BB956 |

CODE_8BB959:
  LDA.W $0090,Y                             ; $8BB959 |
  BEQ CODE_8BB962                           ; $8BB95C |
  JSL.L CODE_FL_86CA36                      ; $8BB95E |

CODE_8BB962:
  STZ.B $46,X                               ; $8BB962 |
  RTS                                       ; $8BB964 |

CODE_8BB965:
  JSR.W CODE_FN_8BB948                      ; $8BB965 |
  STZ.B $26,X                               ; $8BB968 |
  TDC                                       ; $8BB96A |
  JSL.L CODE_FL_86CAEE                      ; $8BB96B |
  LDA.W #$3F84                              ; $8BB96F |
  STA.B $00,X                               ; $8BB972 |
  LDA.W #$0080                              ; $8BB974 |
  STA.B $2C,X                               ; $8BB977 |
  INC.B $1A,X                               ; $8BB979 |
  RTL                                       ; $8BB97B |

CODE_8BB97C:
  JSR.W CODE_FN_8BB948                      ; $8BB97C |
  LDA.B $18,X                               ; $8BB97F |
  BNE CODE_8BB992                           ; $8BB981 |
  LDA.B $0D,X                               ; $8BB983 |
  CMP.W #$0100                              ; $8BB985 |
  BCS CODE_8BB991                           ; $8BB988 |
  LDA.W #$00D4                              ; $8BB98A |
  JSL.L CODE_FL_8089BD                      ; $8BB98D |

CODE_8BB991:
  RTL                                       ; $8BB991 |

CODE_8BB992:
  JSL.L CODE_FL_85A893                      ; $8BB992 |
  JSL.L CODE_FL_86C70D                      ; $8BB996 |
  LDA.B $0D,X                               ; $8BB99A |
  CMP.W #$0100                              ; $8BB99C |
  BCS CODE_8BB9A8                           ; $8BB99F |
  LDA.W #$00D4                              ; $8BB9A1 |
  JSL.L CODE_FL_8089BD                      ; $8BB9A4 |

CODE_8BB9A8:
  JML.L CODE_FL_86CA36                      ; $8BB9A8 |

CODE_8BB9AC:
  JSL.L CODE_FL_86C424                      ; $8BB9AC |
  PHX                                       ; $8BB9B0 |
  ASL A                                     ; $8BB9B1 |
  TAX                                       ; $8BB9B2 |
  LDA.L PTR16_8BB9BD,X                      ; $8BB9B3 |
  PLX                                       ; $8BB9B7 |
  STA.B $00                                 ; $8BB9B8 |
  JMP.W ($0000)                             ; $8BB9BA |

PTR16_8BB9BD:
  dw CODE_8BB9C1                            ; $8BB9BD |
  dw CODE_8BB9C4                            ; $8BB9BF |

CODE_8BB9C1:
  INC.B $1A,X                               ; $8BB9C1 |
  RTL                                       ; $8BB9C3 |

CODE_8BB9C4:
  LDY.W #$0004                              ; $8BB9C4 |
  LDA.W $1C38                               ; $8BB9C7 |
  LSR A                                     ; $8BB9CA |
  LSR A                                     ; $8BB9CB |
  LSR A                                     ; $8BB9CC |
  JSL.L CODE_FL_8AB4FC                      ; $8BB9CD |
  CLC                                       ; $8BB9D1 |
  LDA.B $00                                 ; $8BB9D2 |
  CMP.W #$8000                              ; $8BB9D4 |
  ROR A                                     ; $8BB9D7 |
  CMP.W #$8000                              ; $8BB9D8 |
  ROR A                                     ; $8BB9DB |
  ADC.B $3A,X                               ; $8BB9DC |
  STA.B $3A,X                               ; $8BB9DE |
  LDA.B $3A,X                               ; $8BB9E0 |
  XBA                                       ; $8BB9E2 |
  AND.W #$00FF                              ; $8BB9E3 |
  AND.W #$00FF                              ; $8BB9E6 |
  CMP.W #$0080                              ; $8BB9E9 |
  BCC CODE_8BB9F1                           ; $8BB9EC |
  ORA.W #$FF00                              ; $8BB9EE |

CODE_8BB9F1:
  ADC.W #$0700                              ; $8BB9F1 |
  STA.W $1C68                               ; $8BB9F4 |
  STA.W $1C6A                               ; $8BB9F7 |
  RTL                                       ; $8BB9FA |

CODE_8BB9FB:
  LDA.B $1A,X                               ; $8BB9FB |
  BNE CODE_8BBA0A                           ; $8BB9FD |
  INC.B $1A,X                               ; $8BB9FF |
  JSL.L CODE_FL_86C7AD                      ; $8BBA01 |
  LDA.W #$3B4E                              ; $8BBA05 |
  STA.B $00,X                               ; $8BBA08 |

CODE_8BBA0A:
  RTL                                       ; $8BBA0A |

CODE_8BBA0B:
  JSL.L CODE_FL_86C41D                      ; $8BBA0B |
  PHX                                       ; $8BBA0F |
  ASL A                                     ; $8BBA10 |
  TAX                                       ; $8BBA11 |
  LDA.L PTR16_8BBA1C,X                      ; $8BBA12 |
  PLX                                       ; $8BBA16 |
  STA.B $00                                 ; $8BBA17 |
  JMP.W ($0000)                             ; $8BBA19 |

PTR16_8BBA1C:
  dw CODE_8BBA20                            ; $8BBA1C |
  dw CODE_8BBA44                            ; $8BBA1E |

CODE_8BBA20:
  LDA.W #$0400                              ; $8BBA20 |
  STA.B $26,X                               ; $8BBA23 |
  LDA.W #$F900                              ; $8BBA25 |
  STA.B $28,X                               ; $8BBA28 |
  JSL.L CODE_FL_85AB2B                      ; $8BBA2A |
  BCS CODE_8BBA36                           ; $8BBA2E |
  LDA.W #$FC00                              ; $8BBA30 |
  STA.W $0026,X                             ; $8BBA33 |

CODE_8BBA36:
  LDA.W #$A000                              ; $8BBA36 |
  JSL.L CODE_FL_85AA0F                      ; $8BBA39 |
  JSL.L CODE_FL_85A986                      ; $8BBA3D |
  INC.B $1A,X                               ; $8BBA41 |
  RTL                                       ; $8BBA43 |

CODE_8BBA44:
  LDA.B $04,X                               ; $8BBA44 |
  EOR.W #$2020                              ; $8BBA46 |
  STA.B $04,X                               ; $8BBA49 |
  LDA.W $1C38                               ; $8BBA4B |
  AND.W #$0007                              ; $8BBA4E |
  BNE CODE_8BBA84                           ; $8BBA51 |
  LDA.W #$001D                              ; $8BBA53 |
  JSL.L CODE_FL_86C9C5                      ; $8BBA56 |
  BCS CODE_8BBA84                           ; $8BBA5A |
  LDA.W #$003A                              ; $8BBA5C |
  JSL.L CODE_FL_86CAE6                      ; $8BBA5F |
  LDA.W #$0043                              ; $8BBA63 |
  STA.W $0002,Y                             ; $8BBA66 |
  LDA.W #$0040                              ; $8BBA69 |
  STA.W $002C,Y                             ; $8BBA6C |
  LDA.B $86                                 ; $8BBA6F |
  AND.W #$03FF                              ; $8BBA71 |
  SBC.W #$0200                              ; $8BBA74 |
  STA.W $0026,Y                             ; $8BBA77 |
  LDA.W #$FC00                              ; $8BBA7A |
  STA.W $0028,Y                             ; $8BBA7D |
  JSL.L CODE_FL_8CFBD6                      ; $8BBA80 |

CODE_8BBA84:
  CLC                                       ; $8BBA84 |
  LDA.W #$0080                              ; $8BBA85 |
  ADC.B $28,X                               ; $8BBA88 |
  STA.B $28,X                               ; $8BBA8A |
  RTL                                       ; $8BBA8C |

CODE_8BBA8D:
  JSL.L CODE_FL_85F885                      ; $8BBA8D |
  JSL.L CODE_FL_86C3B0                      ; $8BBA91 |
  PHX                                       ; $8BBA95 |
  ASL A                                     ; $8BBA96 |
  TAX                                       ; $8BBA97 |
  LDA.L PTR16_8BBAA2,X                      ; $8BBA98 |
  PLX                                       ; $8BBA9C |
  STA.B $00                                 ; $8BBA9D |
  JMP.W ($0000)                             ; $8BBA9F |

PTR16_8BBAA2:
  dw CODE_8BBAAA                            ; $8BBAA2 |
  dw CODE_8BBAC5                            ; $8BBAA4 |
  dw CODE_8BBADB                            ; $8BBAA6 |
  dw CODE_8BBB15                            ; $8BBAA8 |

CODE_8BBAAA:
  LDA.W #$3194                              ; $8BBAAA |
  STA.B $00,X                               ; $8BBAAD |
  LDA.W #$0010                              ; $8BBAAF |
  STA.B $2C,X                               ; $8BBAB2 |
  JSL.L CODE_FL_86C63F                      ; $8BBAB4 |
  LDA.B $3C,X                               ; $8BBAB8 |
  BNE CODE_8BBABF                           ; $8BBABA |
  INC.B $1A,X                               ; $8BBABC |
  RTL                                       ; $8BBABE |

CODE_8BBABF:
  LDA.W #$0008                              ; $8BBABF |
  STA.B $2C,X                               ; $8BBAC2 |
  RTL                                       ; $8BBAC4 |

CODE_8BBAC5:
  LDA.B $2C,X                               ; $8BBAC5 |
  BEQ CODE_8BBAD3                           ; $8BBAC7 |
  AND.W #$0002                              ; $8BBAC9 |
  DEC A                                     ; $8BBACC |
  CLC                                       ; $8BBACD |
  ADC.B $0D,X                               ; $8BBACE |
  STA.B $0D,X                               ; $8BBAD0 |
  RTL                                       ; $8BBAD2 |

CODE_8BBAD3:
  LDA.W #$0010                              ; $8BBAD3 |
  STA.B $2C,X                               ; $8BBAD6 |
  INC.B $1A,X                               ; $8BBAD8 |
  RTL                                       ; $8BBADA |

CODE_8BBADB:
  JSL.L CODE_FL_85A9EF                      ; $8BBADB |
  LDA.B $2C,X                               ; $8BBADF |
  BEQ CODE_8BBAED                           ; $8BBAE1 |
  LDA.B $3A,X                               ; $8BBAE3 |
  BEQ CODE_8BBAE9                           ; $8BBAE5 |
  STA.B $4C,X                               ; $8BBAE7 |

CODE_8BBAE9:
  JML.L CODE_FL_86C82F                      ; $8BBAE9 |

CODE_8BBAED:
  JSL.L CODE_FL_85A646                      ; $8BBAED |
  JSL.L CODE_FL_85F9C1                      ; $8BBAF1 |
  LDA.W $0006,Y                             ; $8BBAF5 |
  STA.B $0A                                 ; $8BBAF8 |
  LDA.W $0008,Y                             ; $8BBAFA |
  STA.B $0C                                 ; $8BBAFD |
  LDA.W $000A,Y                             ; $8BBAFF |
  STA.B $0E                                 ; $8BBB02 |
  LDA.W $000C,Y                             ; $8BBB04 |
  STA.B $10                                 ; $8BBB07 |
  JSL.L CODE_FL_85A6B4                      ; $8BBB09 |
  BCS CODE_8BBB14                           ; $8BBB0D |
  LDA.W #$0003                              ; $8BBB0F |
  STA.B $1A,X                               ; $8BBB12 |

CODE_8BBB14:
  RTL                                       ; $8BBB14 |

CODE_8BBB15:
  JSL.L CODE_FL_85A939                      ; $8BBB15 |
  JML.L CODE_FL_86CA36                      ; $8BBB19 |

CODE_8BBB1D:
  JSL.L CODE_FL_86C424                      ; $8BBB1D |
  PHX                                       ; $8BBB21 |
  ASL A                                     ; $8BBB22 |
  TAX                                       ; $8BBB23 |
  LDA.L PTR16_8BBB2E,X                      ; $8BBB24 |
  PLX                                       ; $8BBB28 |
  STA.B $00                                 ; $8BBB29 |
  JMP.W ($0000)                             ; $8BBB2B |

PTR16_8BBB2E:
  dw CODE_8BBB32                            ; $8BBB2E |
  dw CODE_8BBB39                            ; $8BBB30 |

CODE_8BBB32:
  JSL.L CODE_FL_86C7AD                      ; $8BBB32 |
  INC.B $1A,X                               ; $8BBB36 |
  RTL                                       ; $8BBB38 |

CODE_8BBB39:
  JSL.L CODE_FL_85ABAD                      ; $8BBB39 |
  BCS CODE_8BBB5F                           ; $8BBB3D |
  JSL.L CODE_FL_86C70D                      ; $8BBB3F |
  LDA.W #$01A6                              ; $8BBB43 |
  JSL.L CODE_FL_86C9A4                      ; $8BBB46 |
  BCS CODE_8BBB5F                           ; $8BBB4A |
  JSL.L CODE_FL_86C7C4                      ; $8BBB4C |
  JSL.L CODE_FL_86C432                      ; $8BBB50 |
  LDA.B $86                                 ; $8BBB54 |
  AND.W #$000F                              ; $8BBB56 |
  CLC                                       ; $8BBB59 |
  ADC.W #$0020                              ; $8BBB5A |
  STA.B $2C,X                               ; $8BBB5D |

CODE_8BBB5F:
  RTL                                       ; $8BBB5F |

CODE_8BBB60:
  JSL.L CODE_FL_86C424                      ; $8BBB60 |
  PHX                                       ; $8BBB64 |
  ASL A                                     ; $8BBB65 |
  TAX                                       ; $8BBB66 |
  LDA.L PTR16_8BBB71,X                      ; $8BBB67 |
  PLX                                       ; $8BBB6B |
  STA.B $00                                 ; $8BBB6C |
  JMP.W ($0000)                             ; $8BBB6E |

PTR16_8BBB71:
  dw CODE_8BBB75                            ; $8BBB71 |
  dw CODE_8BBB80                            ; $8BBB73 |

CODE_8BBB75:
  JSL.L CODE_FL_85AA07                      ; $8BBB75 |
  JSL.L CODE_FL_86C7AD                      ; $8BBB79 |
  INC.B $1A,X                               ; $8BBB7D |
  RTL                                       ; $8BBB7F |

CODE_8BBB80:
  JSL.L CODE_FL_86C70D                      ; $8BBB80 |
  LDA.W #$01DC                              ; $8BBB84 |
  JSL.L CODE_FL_86C9A4                      ; $8BBB87 |
  BCS CODE_8BBB9F                           ; $8BBB8B |
  LDA.W $0022,Y                             ; $8BBB8D |
  AND.W #$BFFF                              ; $8BBB90 |
  STA.W $0022,Y                             ; $8BBB93 |
  JSL.L CODE_FL_86C7C4                      ; $8BBB96 |
  LDA.W #$0080                              ; $8BBB9A |
  STA.B $2C,X                               ; $8BBB9D |

CODE_8BBB9F:
  RTL                                       ; $8BBB9F |

CODE_8BBBA0:
  JSL.L CODE_FL_85F885                      ; $8BBBA0 |
  JSL.L CODE_FL_86C3F8                      ; $8BBBA4 |
  PHX                                       ; $8BBBA8 |
  ASL A                                     ; $8BBBA9 |
  TAX                                       ; $8BBBAA |
  LDA.L PTR16_8BBBB5,X                      ; $8BBBAB |
  PLX                                       ; $8BBBAF |
  STA.B $00                                 ; $8BBBB0 |
  JMP.W ($0000)                             ; $8BBBB2 |

PTR16_8BBBB5:
  dw CODE_8BBBC5                            ; $8BBBB5 |
  dw CODE_8BBBE7                            ; $8BBBB7 |
  dw CODE_8BBC68                            ; $8BBBB9 |
  dw CODE_8BBC01                            ; $8BBBBB |
  dw CODE_8BBC0D                            ; $8BBBBD |
  dw CODE_8BBC45                            ; $8BBBBF |
  dw CODE_8BBC51                            ; $8BBBC1 |
  dw CODE_8BBC62                            ; $8BBBC3 |

CODE_8BBBC5:
  LDA.W #$0060                              ; $8BBBC5 |
  STA.B $06,X                               ; $8BBBC8 |
  LDA.W #$0043                              ; $8BBBCA |
  STA.B $02,X                               ; $8BBBCD |
  LDA.W #$0064                              ; $8BBBCF |
  JSL.L CODE_FL_86CAEE                      ; $8BBBD2 |
  JSL.L CODE_FL_85A9EF                      ; $8BBBD6 |
  JSL.L CODE_FL_85AA07                      ; $8BBBDA |
  LDA.W #$0100                              ; $8BBBDE |
  STA.B $26,X                               ; $8BBBE1 |
  JML.L CODE_FL_86C63F                      ; $8BBBE3 |

CODE_8BBBE7:
  JSL.L CODE_FL_8BBC8C                      ; $8BBBE7 |
  LDY.W #$0002                              ; $8BBBEB |
  JSL.L CODE_FL_86C503                      ; $8BBBEE |
  LDA.W $1662                               ; $8BBBF2 |
  ADC.B $09,X                               ; $8BBBF5 |
  CMP.W #$0360                              ; $8BBBF7 |
  BCC CODE_8BBC00                           ; $8BBBFA |
  INC.B $1A,X                               ; $8BBBFC |
  INC.B $1A,X                               ; $8BBBFE |

CODE_8BBC00:
  RTL                                       ; $8BBC00 |

CODE_8BBC01:
  JSL.L CODE_FL_8BBC8C                      ; $8BBC01 |
  LDY.W #$0370                              ; $8BBC05 |
  LDA.W #$01A5                              ; $8BBC08 |
  BRA CODE_8BBC20                           ; $8BBC0B |

CODE_8BBC0D:
  JSL.L CODE_FL_8BBC8C                      ; $8BBC0D |
  LDA.W #$0047                              ; $8BBC11 |
  STA.B $02,X                               ; $8BBC14 |
  JSL.L CODE_FL_85A9B7                      ; $8BBC16 |
  LDY.W #$0380                              ; $8BBC1A |
  LDA.W #$0170                              ; $8BBC1D |

CODE_8BBC20:
  SBC.W $1672                               ; $8BBC20 |
  STA.B $02                                 ; $8BBC23 |
  TYA                                       ; $8BBC25 |
  SBC.W $1662                               ; $8BBC26 |
  STA.B $00                                 ; $8BBC29 |
  LDA.B $09,X                               ; $8BBC2B |
  STA.B $04                                 ; $8BBC2D |
  LDA.B $0D,X                               ; $8BBC2F |
  STA.B $06                                 ; $8BBC31 |
  JSL.L CODE_FL_8AB42E                      ; $8BBC33 |
  LDY.W #$0010                              ; $8BBC37 |
  JSL.L CODE_FL_8AB499                      ; $8BBC3A |
  LDA.B $26,X                               ; $8BBC3E |
  BPL CODE_8BBC44                           ; $8BBC40 |
  INC.B $1A,X                               ; $8BBC42 |

CODE_8BBC44:
  RTL                                       ; $8BBC44 |

CODE_8BBC45:
  JSL.L CODE_FL_8BBC8C                      ; $8BBC45 |
  LDY.W #$0385                              ; $8BBC49 |
  LDA.W #$0168                              ; $8BBC4C |
  BRA CODE_8BBC20                           ; $8BBC4F |

CODE_8BBC51:
  JSL.L CODE_FL_8BBC8C                      ; $8BBC51 |
  LDA.W #$0200                              ; $8BBC55 |
  STA.B $26,X                               ; $8BBC58 |
  LDA.W #$FE00                              ; $8BBC5A |
  STA.B $28,X                               ; $8BBC5D |
  INC.B $1A,X                               ; $8BBC5F |
  RTL                                       ; $8BBC61 |

CODE_8BBC62:
  JSL.L CODE_FL_85A62E                      ; $8BBC62 |
  BEQ CODE_8BBC7C                           ; $8BBC66 |

CODE_8BBC68:
  LDA.W #$0001                              ; $8BBC68 |
  STA.B $37,X                               ; $8BBC6B |

CODE_FL_8BBC6D:
  JSL.L CODE_FL_85A71F                      ; $8BBC6D |
  LDA.B $4E,X                               ; $8BBC71 |
  AND.W #$0001                              ; $8BBC73 |
  BNE CODE_8BBC88                           ; $8BBC76 |
  JML.L CODE_FL_86CA36                      ; $8BBC78 |

CODE_8BBC7C:
  LDA.B $09,X                               ; $8BBC7C |
  CLC                                       ; $8BBC7E |
  ADC.W $1662                               ; $8BBC7F |
  CMP.W #$0400                              ; $8BBC82 |
  BCS CODE_8BBC88                           ; $8BBC85 |
  RTL                                       ; $8BBC87 |

CODE_8BBC88:
  JML.L CODE_FL_86CA2D                      ; $8BBC88 |

CODE_FL_8BBC8C:
  LDA.W $1C66                               ; $8BBC8C |
  BEQ CODE_8BBCAD                           ; $8BBC8F |
  LDY.W #$0350                              ; $8BBC91 |
  DEC A                                     ; $8BBC94 |
  BEQ CODE_8BBC9A                           ; $8BBC95 |
  LDY.W #$0370                              ; $8BBC97 |

CODE_8BBC9A:
  STY.B $00                                 ; $8BBC9A |
  LDA.B $09,X                               ; $8BBC9C |
  CLC                                       ; $8BBC9E |
  ADC.W $1662                               ; $8BBC9F |
  CMP.B $00                                 ; $8BBCA2 |
  BCC CODE_8BBCAA                           ; $8BBCA4 |
  JSL.L CODE_FL_8BBC6D                      ; $8BBCA6 |

CODE_8BBCAA:
  PHP                                       ; $8BBCAA |
  PLA                                       ; $8BBCAB |
  PLA                                       ; $8BBCAC |

CODE_8BBCAD:
  RTL                                       ; $8BBCAD |

CODE_8BBCAE:
  JSL.L CODE_FL_86C3F8                      ; $8BBCAE |
  PHX                                       ; $8BBCB2 |
  ASL A                                     ; $8BBCB3 |
  TAX                                       ; $8BBCB4 |
  LDA.L PTR16_8BBCBF,X                      ; $8BBCB5 |
  PLX                                       ; $8BBCB9 |
  STA.B $00                                 ; $8BBCBA |
  JMP.W ($0000)                             ; $8BBCBC |

PTR16_8BBCBF:
  dw CODE_8BBCC9                            ; $8BBCBF |
  dw CODE_8BBD14                            ; $8BBCC1 |
  dw CODE_8BBD32                            ; $8BBCC3 |
  dw CODE_8BBD99                            ; $8BBCC5 |
  dw CODE_8BBDA1                            ; $8BBCC7 |

CODE_8BBCC9:
  JSL.L CODE_FL_85AC74                      ; $8BBCC9 |
  LDY.W #$0400                              ; $8BBCCD |
  LDA.B $4E,X                               ; $8BBCD0 |
  AND.W #$0001                              ; $8BBCD2 |
  BEQ CODE_8BBCDA                           ; $8BBCD5 |
  LDY.W #$04C0                              ; $8BBCD7 |

CODE_8BBCDA:
  STY.B $3A,X                               ; $8BBCDA |
  LDY.B $3A,X                               ; $8BBCDC |
  LDA.W $0034,Y                             ; $8BBCDE |
  ORA.W #$0400                              ; $8BBCE1 |
  STA.W $0034,Y                             ; $8BBCE4 |
  JSL.L CODE_FL_8BBCF3                      ; $8BBCE7 |
  LDA.W #$FC00                              ; $8BBCEB |
  STA.B $3C,X                               ; $8BBCEE |
  INC.B $1A,X                               ; $8BBCF0 |
  RTL                                       ; $8BBCF2 |

CODE_FL_8BBCF3:
  LDY.B $3A,X                               ; $8BBCF3 |
  LDA.W $0018,Y                             ; $8BBCF5 |
  BNE CODE_8BBD02                           ; $8BBCF8 |
  JSL.L CODE_FL_86CA36                      ; $8BBCFA |
  PHB                                       ; $8BBCFE |
  PLA                                       ; $8BBCFF |
  PLA                                       ; $8BBD00 |
  RTL                                       ; $8BBD01 |

CODE_8BBD02:
  LDA.W #$0001                              ; $8BBD02 |
  STA.W $1994                               ; $8BBD05 |
  STA.B $E4                                 ; $8BBD08 |
  LDA.W $0034,Y                             ; $8BBD0A |
  ORA.W #$2000                              ; $8BBD0D |
  STA.W $0034,Y                             ; $8BBD10 |
  RTL                                       ; $8BBD13 |

CODE_8BBD14:
  LDY.W #$0360                              ; $8BBD14 |
  LDA.W #$01A5                              ; $8BBD17 |
  JSL.L CODE_FL_8BBD38                      ; $8BBD1A |
  BPL CODE_8BBD31                           ; $8BBD1E |
  LDY.B $3A,X                               ; $8BBD20 |
  LDA.W $0092,Y                             ; $8BBD22 |
  AND.W #$0040                              ; $8BBD25 |
  BEQ CODE_8BBD31                           ; $8BBD28 |
  TYX                                       ; $8BBD2A |
  JSL.L CODE_FL_83AB2D                      ; $8BBD2B |
  LDX.B $FC                                 ; $8BBD2F |

CODE_8BBD31:
  RTL                                       ; $8BBD31 |

CODE_8BBD32:
  LDY.W #$0380                              ; $8BBD32 |
  LDA.W #$0170                              ; $8BBD35 |

CODE_FL_8BBD38:
  SBC.W $1672                               ; $8BBD38 |
  STA.B $02                                 ; $8BBD3B |
  STA.B $22                                 ; $8BBD3D |
  TYA                                       ; $8BBD3F |
  SBC.W $1662                               ; $8BBD40 |
  STA.B $00                                 ; $8BBD43 |
  STA.B $20                                 ; $8BBD45 |
  LDY.B $3A,X                               ; $8BBD47 |
  JSL.L CODE_FL_8BBCF3                      ; $8BBD49 |
  LDA.W $0009,Y                             ; $8BBD4D |
  STA.B $04                                 ; $8BBD50 |
  LDA.W $000D,Y                             ; $8BBD52 |
  STA.B $06                                 ; $8BBD55 |
  JSL.L CODE_FL_8AB42E                      ; $8BBD57 |
  LDY.W #$0010                              ; $8BBD5B |
  JSL.L CODE_FL_8AB4B3                      ; $8BBD5E |
  LDY.B $3A,X                               ; $8BBD62 |
  LDA.W #$007F                              ; $8BBD64 |
  STA.W $0048,Y                             ; $8BBD67 |
  LDA.B $02                                 ; $8BBD6A |
  STA.W $007A,Y                             ; $8BBD6C |
  LDA.B $00                                 ; $8BBD6F |
  STA.W $0078,Y                             ; $8BBD71 |
  LDA.W $0009,Y                             ; $8BBD74 |
  SBC.B $20                                 ; $8BBD77 |
  BPL CODE_8BBD7F                           ; $8BBD79 |
  EOR.W #$FFFF                              ; $8BBD7B |
  INC A                                     ; $8BBD7E |

CODE_8BBD7F:
  STA.B $20                                 ; $8BBD7F |
  LDA.W $000D,Y                             ; $8BBD81 |
  SBC.B $22                                 ; $8BBD84 |
  BPL CODE_8BBD8C                           ; $8BBD86 |
  EOR.W #$FFFF                              ; $8BBD88 |
  INC A                                     ; $8BBD8B |

CODE_8BBD8C:
  ORA.B $20                                 ; $8BBD8C |
  CMP.W #$0004                              ; $8BBD8E |
  BCS CODE_8BBD98                           ; $8BBD91 |
  INC.B $1A,X                               ; $8BBD93 |
  LDA.W #$FFFF                              ; $8BBD95 |

CODE_8BBD98:
  RTL                                       ; $8BBD98 |

CODE_8BBD99:
  LDY.W #$0385                              ; $8BBD99 |
  LDA.W #$0156                              ; $8BBD9C |
  BRA CODE_FL_8BBD38                        ; $8BBD9F |

CODE_8BBDA1:
  LDY.B $3A,X                               ; $8BBDA1 |
  LDA.W $0034,Y                             ; $8BBDA3 |
  AND.W #$FBFF                              ; $8BBDA6 |
  STA.W $0034,Y                             ; $8BBDA9 |
  LDY.B $3A,X                               ; $8BBDAC |
  LDA.W #$0200                              ; $8BBDAE |
  STA.W $0078,Y                             ; $8BBDB1 |
  CLC                                       ; $8BBDB4 |
  LDA.B $3C,X                               ; $8BBDB5 |
  ADC.W #$0040                              ; $8BBDB7 |
  STA.B $3C,X                               ; $8BBDBA |
  LDA.B $3C,X                               ; $8BBDBC |
  STA.W $007A,Y                             ; $8BBDBE |
  BMI CODE_8BBDDA                           ; $8BBDC1 |
  CMP.W #$0200                              ; $8BBDC3 |
  BCC CODE_8BBDDA                           ; $8BBDC6 |
  STZ.W $1994                               ; $8BBDC8 |
  STZ.B $E4                                 ; $8BBDCB |
  LDA.W $0034,Y                             ; $8BBDCD |
  AND.W #$DFFF                              ; $8BBDD0 |
  STA.W $0034,Y                             ; $8BBDD3 |
  JML.L CODE_FL_86CA36                      ; $8BBDD6 |

CODE_8BBDDA:
  RTL                                       ; $8BBDDA |

CODE_8BBDDB:
  LDA.B $1A,X                               ; $8BBDDB |
  PHX                                       ; $8BBDDD |
  ASL A                                     ; $8BBDDE |
  TAX                                       ; $8BBDDF |
  LDA.L PTR16_8BBDEA,X                      ; $8BBDE0 |
  PLX                                       ; $8BBDE4 |
  STA.B $00                                 ; $8BBDE5 |
  JMP.W ($0000)                             ; $8BBDE7 |

PTR16_8BBDEA:
  dw CODE_8BBDF0                            ; $8BBDEA |
  dw CODE_8BBDFC                            ; $8BBDEC |
  dw CODE_8BBE06                            ; $8BBDEE |

CODE_8BBDF0:
  JSL.L CODE_FL_85A9EF                      ; $8BBDF0 |
  JSL.L CODE_FL_85A9FF                      ; $8BBDF4 |
  JML.L CODE_FL_86C63F                      ; $8BBDF8 |

CODE_8BBDFC:
  LDA.W $1C66                               ; $8BBDFC |
  BNE CODE_8BBE05                           ; $8BBDFF |
  JSL.L CODE_FL_85F885                      ; $8BBE01 |

CODE_8BBE05:
  RTL                                       ; $8BBE05 |

CODE_8BBE06:
  LDA.W #$01B5                              ; $8BBE06 |
  JSL.L CODE_FL_86C97C                      ; $8BBE09 |
  LDA.W $0022,Y                             ; $8BBE0D |
  ORA.W #$4000                              ; $8BBE10 |
  STA.W $0022,Y                             ; $8BBE13 |
  LDA.W #$0000                              ; $8BBE16 |
  STA.W $004E,Y                             ; $8BBE19 |
  LDA.W #$01B5                              ; $8BBE1C |
  JSL.L CODE_FL_86C97C                      ; $8BBE1F |
  LDA.W $0022,Y                             ; $8BBE23 |
  ORA.W #$4000                              ; $8BBE26 |
  STA.W $0022,Y                             ; $8BBE29 |
  LDA.W #$0001                              ; $8BBE2C |
  STA.W $004E,Y                             ; $8BBE2F |
  JML.L CODE_FL_86CA2D                      ; $8BBE32 |

CODE_8BBE36:
  LDA.B $4E,X                               ; $8BBE36 |
  BEQ CODE_8BBE4E                           ; $8BBE38 |
  STZ.B $0A                                 ; $8BBE3A |
  STZ.B $0C                                 ; $8BBE3C |
  LDA.W #$001C                              ; $8BBE3E |
  STA.B $0E                                 ; $8BBE41 |
  LDA.W #$0048                              ; $8BBE43 |
  STA.B $10                                 ; $8BBE46 |
  JSL.L CODE_FL_85F8A1                      ; $8BBE48 |
  BRA CODE_8BBE52                           ; $8BBE4C |

CODE_8BBE4E:
  JSL.L CODE_FL_85F885                      ; $8BBE4E |

CODE_8BBE52:
  JSL.L CODE_FL_86C3F8                      ; $8BBE52 |
  JSR.W CODE_FN_8BC546                      ; $8BBE56 |
  LDA.B $1A,X                               ; $8BBE59 |
  PHX                                       ; $8BBE5B |
  ASL A                                     ; $8BBE5C |
  TAX                                       ; $8BBE5D |
  LDA.L PTR16_8BBE68,X                      ; $8BBE5E |
  PLX                                       ; $8BBE62 |
  STA.B $00                                 ; $8BBE63 |
  JMP.W ($0000)                             ; $8BBE65 |

PTR16_8BBE68:
  dw CODE_8BBEBE                            ; $8BBE68 |
  dw CODE_8BBF40                            ; $8BBE6A |
  dw CODE_8BBFA2                            ; $8BBE6C |
  dw CODE_8BC10C                            ; $8BBE6E |
  dw CODE_8BC03A                            ; $8BBE70 |
  dw CODE_8BC04E                            ; $8BBE72 |
  dw CODE_8BC050                            ; $8BBE74 |
  dw CODE_8BC0A7                            ; $8BBE76 |
  dw CODE_8BC0AE                            ; $8BBE78 |
  dw CODE_8BC0C7                            ; $8BBE7A |
  dw CODE_8BC0DC                            ; $8BBE7C |
  dw CODE_8BC0EF                            ; $8BBE7E |
  dw CODE_8BC106                            ; $8BBE80 |
  dw CODE_8BC12E                            ; $8BBE82 |
  dw CODE_8BC136                            ; $8BBE84 |
  dw CODE_8BC138                            ; $8BBE86 |
  dw CODE_8BC152                            ; $8BBE88 |
  dw CODE_8BC17A                            ; $8BBE8A |
  dw CODE_8BC197                            ; $8BBE8C |
  dw CODE_8BC19E                            ; $8BBE8E |
  dw CODE_8BC1C2                            ; $8BBE90 |
  dw CODE_8BC1D4                            ; $8BBE92 |
  dw CODE_8BC1DB                            ; $8BBE94 |
  dw CODE_8BC1EE                            ; $8BBE96 |
  dw CODE_8BC22C                            ; $8BBE98 |
  dw CODE_8BC23B                            ; $8BBE9A |
  dw CODE_8BC24D                            ; $8BBE9C |
  dw CODE_8BC267                            ; $8BBE9E |
  dw CODE_8BC272                            ; $8BBEA0 |
  dw CODE_8BC29C                            ; $8BBEA2 |
  dw CODE_8BC2B6                            ; $8BBEA4 |
  dw CODE_8BC2BA                            ; $8BBEA6 |
  dw CODE_8BC2BE                            ; $8BBEA8 |
  dw CODE_8BC2D0                            ; $8BBEAA |
  dw CODE_8BC2FB                            ; $8BBEAC |
  dw CODE_8BC354                            ; $8BBEAE |
  dw CODE_8BC36A                            ; $8BBEB0 |
  dw CODE_8BC37C                            ; $8BBEB2 |
  dw CODE_8BC390                            ; $8BBEB4 |
  dw CODE_8BC390                            ; $8BBEB6 |
  dw CODE_8BC3AA                            ; $8BBEB8 |
  dw CODE_8BC3D5                            ; $8BBEBA |
  dw CODE_8BC409                            ; $8BBEBC |

CODE_8BBEBE:
  LDA.W #$1898                              ; $8BBEBE |
  STA.B $04,X                               ; $8BBEC1 |
  LDA.W #$0020                              ; $8BBEC3 |
  STA.B $14,X                               ; $8BBEC6 |
  LDA.W #$32E6                              ; $8BBEC8 |
  STA.B $00,X                               ; $8BBECB |
  LDA.W #$8019                              ; $8BBECD |
  STA.B $22,X                               ; $8BBED0 |
  LDA.W #$0060                              ; $8BBED2 |
  STA.B $3A,X                               ; $8BBED5 |
  JSL.L CODE_FL_85A9EF                      ; $8BBED7 |
  JSL.L CODE_FL_85A9B7                      ; $8BBEDB |
  JSL.L CODE_FL_86C63F                      ; $8BBEDF |
  LDA.B $4E,X                               ; $8BBEE3 |
  BEQ CODE_8BBF21                           ; $8BBEE5 |
  LDA.W #$0920                              ; $8BBEE7 |
  SEC                                       ; $8BBEEA |
  SBC.W $1662                               ; $8BBEEB |
  STA.B $09,X                               ; $8BBEEE |
  JSR.W CODE_FN_8BC49E                      ; $8BBEF0 |
  LDA.W #$0008                              ; $8BBEF3 |
  STA.B $42,X                               ; $8BBEF6 |
  LDA.W #$02C0                              ; $8BBEF8 |
  STA.B $3E,X                               ; $8BBEFB |
  LDA.W #$0040                              ; $8BBEFD |
  STA.B $2C,X                               ; $8BBF00 |
  LDA.W #$0010                              ; $8BBF02 |
  STA.B $92                                 ; $8BBF05 |
  STZ.W $1960                               ; $8BBF07 |
  STZ.W $1962                               ; $8BBF0A |
  LDA.W #$0021                              ; $8BBF0D |
  STA.B $1A,X                               ; $8BBF10 |
  LDA.W #$0007                              ; $8BBF12 |
  JSL.L CODE_FL_80C74C                      ; $8BBF15 |
  LDA.W #$000C                              ; $8BBF19 |
  JSL.L CODE_FL_80C74C                      ; $8BBF1C |
  RTL                                       ; $8BBF20 |

CODE_8BBF21:
  LDA.W #$0001                              ; $8BBF21 |
  STA.L $7E7D90                             ; $8BBF24 |
  LDA.W #$01A0                              ; $8BBF28 |
  STA.B $3E,X                               ; $8BBF2B |
  LDA.W #$FFB0                              ; $8BBF2D |
  STA.B $0D,X                               ; $8BBF30 |
  LDA.W #$0200                              ; $8BBF32 |
  SEC                                       ; $8BBF35 |
  SBC.W $1662                               ; $8BBF36 |
  STA.B $09,X                               ; $8BBF39 |
  LDA.W #$0200                              ; $8BBF3B |
  STA.B $2C,X                               ; $8BBF3E |

CODE_8BBF40:
  DEC.B $3A,X                               ; $8BBF40 |
  BPL CODE_8BBF5E                           ; $8BBF42 |
  LDA.W #$0040                              ; $8BBF44 |
  STA.B $3A,X                               ; $8BBF47 |
  LDA.W #$0070                              ; $8BBF49 |
  JSL.L CODE_FL_86C9A4                      ; $8BBF4C |
  BCS CODE_8BBF5E                           ; $8BBF50 |
  LDA.W #$8000                              ; $8BBF52 |
  STA.W $003A,Y                             ; $8BBF55 |
  LDA.W #$0001                              ; $8BBF58 |
  STA.W $000D,Y                             ; $8BBF5B |

CODE_8BBF5E:
  LDA.B $42                                 ; $8BBF5E |
  AND.W #$000F                              ; $8BBF60 |
  BNE CODE_8BBF91                           ; $8BBF63 |
  LDA.W #$001E                              ; $8BBF65 |
  JSL.L CODE_FL_86C9C2                      ; $8BBF68 |
  BCS CODE_8BBF91                           ; $8BBF6C |
  LDA.W #$0039                              ; $8BBF6E |
  JSL.L CODE_FL_86CAE6                      ; $8BBF71 |
  LDA.W #$0018                              ; $8BBF75 |
  STA.W $002C,Y                             ; $8BBF78 |
  LDA.B $86                                 ; $8BBF7B |
  AND.W #$003F                              ; $8BBF7D |
  SEC                                       ; $8BBF80 |
  SBC.W #$0020                              ; $8BBF81 |
  CLC                                       ; $8BBF84 |
  ADC.W $0009,Y                             ; $8BBF85 |
  STA.W $0009,Y                             ; $8BBF88 |
  LDA.W #$0001                              ; $8BBF8B |
  STA.W $000D,Y                             ; $8BBF8E |

CODE_8BBF91:
  JSL.L CODE_FL_86C70D                      ; $8BBF91 |
  LDA.W #$0100                              ; $8BBF95 |
  STA.B $2C,X                               ; $8BBF98 |
  STZ.W $1C8E                               ; $8BBF9A |
  STZ.W $1C92                               ; $8BBF9D |
  INC.B $1A,X                               ; $8BBFA0 |

CODE_8BBFA2:
  LDA.W #$0002                              ; $8BBFA2 |
  JSL.L CODE_FL_B3FE45                      ; $8BBFA5 |
  LDA.B $42                                 ; $8BBFA9 |
  AND.W #$0001                              ; $8BBFAB |
  BNE CODE_8BBFCF                           ; $8BBFAE |
  LDA.W #$0073                              ; $8BBFB0 |
  JSL.L CODE_FL_86C9A4                      ; $8BBFB3 |
  BCS CODE_8BBFCF                           ; $8BBFB7 |
  LDA.B $86                                 ; $8BBFB9 |
  AND.W #$003F                              ; $8BBFBB |
  SEC                                       ; $8BBFBE |
  SBC.W #$0020                              ; $8BBFBF |
  CLC                                       ; $8BBFC2 |
  ADC.W $0009,Y                             ; $8BBFC3 |
  STA.W $0009,Y                             ; $8BBFC6 |
  LDA.W #$0020                              ; $8BBFC9 |
  STA.W $000D,Y                             ; $8BBFCC |

CODE_8BBFCF:
  DEC.W $1C92                               ; $8BBFCF |
  BPL CODE_8BBFE1                           ; $8BBFD2 |
  LDA.W #$000A                              ; $8BBFD4 |
  STA.W $1C92                               ; $8BBFD7 |
  LDA.W #$0021                              ; $8BBFDA |
  JSL.L push_sound_queue                    ; $8BBFDD |

CODE_8BBFE1:
  JSL.L CODE_FL_86C70D                      ; $8BBFE1 |

CODE_8BBFE5:
  LDA.W #$001E                              ; $8BBFE5 |
  JSL.L CODE_FL_86C9C2                      ; $8BBFE8 |
  BCS CODE_8BC022                           ; $8BBFEC |
  LDA.W #$0039                              ; $8BBFEE |
  JSL.L CODE_FL_86CAE6                      ; $8BBFF1 |
  LDA.W #$0018                              ; $8BBFF5 |
  STA.W $002C,Y                             ; $8BBFF8 |
  LDA.B $86                                 ; $8BBFFB |
  AND.W #$003F                              ; $8BBFFD |
  SEC                                       ; $8BC000 |
  SBC.W #$0020                              ; $8BC001 |
  STA.B $01                                 ; $8BC004 |
  CLC                                       ; $8BC006 |
  ADC.W $0009,Y                             ; $8BC007 |
  STA.W $0009,Y                             ; $8BC00A |
  LDA.W #$0001                              ; $8BC00D |
  STA.W $000D,Y                             ; $8BC010 |
  LDA.B $00                                 ; $8BC013 |
  CMP.W #$8000                              ; $8BC015 |
  ROR A                                     ; $8BC018 |
  STA.W $0026,Y                             ; $8BC019 |
  JSL.L CODE_FL_86C432                      ; $8BC01C |
  BRA CODE_8BBFE5                           ; $8BC020 |

CODE_8BC022:
  LDA.W #$0023                              ; $8BC022 |
  JSL.L push_sound_queue                    ; $8BC025 |
  JSL.L CODE_FL_86C444                      ; $8BC029 |
  JSL.L CODE_FL_86C486                      ; $8BC02D |
  JSR.W CODE_FN_8BC49E                      ; $8BC031 |
  JSL.L CODE_FL_80893F                      ; $8BC034 |
  INC.B $1A,X                               ; $8BC038 |

CODE_8BC03A:
  DEC.B $42,X                               ; $8BC03A |
  BNE CODE_8BC04D                           ; $8BC03C |
  LDY.W #$004C                              ; $8BC03E |
  JSL.L CODE_FL_808993                      ; $8BC041 |
  LDA.W #$0060                              ; $8BC045 |
  STA.B $2C,X                               ; $8BC048 |
  JMP.W CODE_JP_8BC48B                      ; $8BC04A |

CODE_8BC04D:
  RTL                                       ; $8BC04D |

CODE_8BC04E:
  INC.B $1A,X                               ; $8BC04E |

CODE_8BC050:
  JSL.L CODE_FL_86C70D                      ; $8BC050 |
  STZ.B $20                                 ; $8BC054 |
  STZ.B $1C                                 ; $8BC056 |
  LDA.B $3C,X                               ; $8BC058 |
  INC A                                     ; $8BC05A |
  CMP.W #$0009                              ; $8BC05B |
  BMI CODE_8BC061                           ; $8BC05E |
  TDC                                       ; $8BC060 |

CODE_8BC061:
  STA.B $3C,X                               ; $8BC061 |
  LDY.B $09,X                               ; $8BC063 |
  CPY.W #$0100                              ; $8BC065 |
  BCS CODE_8BC08F                           ; $8BC068 |
  PHX                                       ; $8BC06A |
  ASL A                                     ; $8BC06B |
  TAX                                       ; $8BC06C |
  LDA.L PTR16_8BC077,X                      ; $8BC06D |
  PLX                                       ; $8BC071 |
  STA.B $00                                 ; $8BC072 |
  JMP.W ($0000)                             ; $8BC074 |

PTR16_8BC077:
  dw CODE_8BC095                            ; $8BC077 |
  dw CODE_8BC08F                            ; $8BC079 |
  dw CODE_8BC08F                            ; $8BC07B |
  dw CODE_8BC095                            ; $8BC07D |
  dw CODE_8BC089                            ; $8BC07F |
  dw CODE_8BC08F                            ; $8BC081 |
  dw CODE_8BC095                            ; $8BC083 |
  dw CODE_8BC08F                            ; $8BC085 |
  dw CODE_8BC089                            ; $8BC087 |

CODE_8BC089:
  LDY.W #$0007                              ; $8BC089 |
  STY.B $1A,X                               ; $8BC08C |
  RTL                                       ; $8BC08E |

CODE_8BC08F:
  LDY.W #$0009                              ; $8BC08F |
  STY.B $1A,X                               ; $8BC092 |
  RTL                                       ; $8BC094 |

CODE_8BC095:
  JSL.L CODE_FL_8CFCB4                      ; $8BC095 |
  BCS CODE_8BC0A1                           ; $8BC099 |
  LDY.W #$0012                              ; $8BC09B |
  STY.B $1A,X                               ; $8BC09E |
  RTL                                       ; $8BC0A0 |

CODE_8BC0A1:
  LDY.W #$000E                              ; $8BC0A1 |
  STY.B $1A,X                               ; $8BC0A4 |
  RTL                                       ; $8BC0A6 |

CODE_8BC0A7:
  LDA.W #$0030                              ; $8BC0A7 |
  STA.B $2C,X                               ; $8BC0AA |
  INC.B $1A,X                               ; $8BC0AC |

CODE_8BC0AE:
  LDA.B $2C,X                               ; $8BC0AE |
  CMP.W #$0020                              ; $8BC0B0 |
  BNE CODE_8BC0C0                           ; $8BC0B3 |
  JSL.L CODE_FL_86C444                      ; $8BC0B5 |
  JSL.L CODE_FL_86C486                      ; $8BC0B9 |
  JSR.W CODE_FN_8BC49E                      ; $8BC0BD |

CODE_8BC0C0:
  JSL.L CODE_FL_86C70D                      ; $8BC0C0 |
  JMP.W CODE_JP_8BC48B                      ; $8BC0C4 |

CODE_8BC0C7:
  LDY.W #$DE57                              ; $8BC0C7 |
  JSR.W CODE_FN_8BC525                      ; $8BC0CA |
  LDA.W #$0004                              ; $8BC0CD |
  STA.B $42,X                               ; $8BC0D0 |
  LDA.W #$0020                              ; $8BC0D2 |
  JSL.L CODE_FL_8089BD                      ; $8BC0D5 |
  INC.B $1A,X                               ; $8BC0D9 |
  RTL                                       ; $8BC0DB |

CODE_8BC0DC:
  DEC.B $42,X                               ; $8BC0DC |
  BNE CODE_8BC0EE                           ; $8BC0DE |
  LDA.W #$FD40                              ; $8BC0E0 |
  STA.B $28,X                               ; $8BC0E3 |
  LDA.W #$FEA0                              ; $8BC0E5 |
  JSL.L CODE_FL_86C887                      ; $8BC0E8 |
  INC.B $1A,X                               ; $8BC0EC |

CODE_8BC0EE:
  RTL                                       ; $8BC0EE |

CODE_8BC0EF:
  JSR.W CODE_FN_8BC443                      ; $8BC0EF |
  JSR.W CODE_FN_8BC55C                      ; $8BC0F2 |
  LDA.B $3E,X                               ; $8BC0F5 |
  SEC                                       ; $8BC0F7 |
  SBC.B $0D,X                               ; $8BC0F8 |
  SEC                                       ; $8BC0FA |
  SBC.W $1672                               ; $8BC0FB |
  CMP.W #$0030                              ; $8BC0FE |
  BMI CODE_8BC105                           ; $8BC101 |
  INC.B $1A,X                               ; $8BC103 |

CODE_8BC105:
  RTL                                       ; $8BC105 |

CODE_8BC106:
  JSR.W CODE_FN_8BC443                      ; $8BC106 |
  JSR.W CODE_FN_8BC55C                      ; $8BC109 |

CODE_8BC10C:
  LDA.B $3E,X                               ; $8BC10C |
  JSL.L CODE_FL_8CFCD0                      ; $8BC10E |
  BNE CODE_8BC12D                           ; $8BC112 |
  LDA.W #$0006                              ; $8BC114 |
  STA.B $42,X                               ; $8BC117 |
  STZ.B $26,X                               ; $8BC119 |
  STZ.B $28,X                               ; $8BC11B |
  LDA.W #$001B                              ; $8BC11D |
  JSL.L push_sound_queue                    ; $8BC120 |
  LDA.W #$0001                              ; $8BC124 |
  JSL.L CODE_FL_B3FE45                      ; $8BC127 |
  INC.B $1A,X                               ; $8BC12B |

CODE_8BC12D:
  RTL                                       ; $8BC12D |

CODE_8BC12E:
  DEC.B $42,X                               ; $8BC12E |
  BNE CODE_8BC135                           ; $8BC130 |
  JMP.W CODE_JP_8BC48B                      ; $8BC132 |

CODE_8BC135:
  RTL                                       ; $8BC135 |

CODE_8BC136:
  INC.B $1A,X                               ; $8BC136 |

CODE_8BC138:
  LDA.W #$000C                              ; $8BC138 |
  LDY.W #$C7E4                              ; $8BC13B |
  JSR.W CODE_FN_8BC4F9                      ; $8BC13E |
  BCS CODE_8BC151                           ; $8BC141 |
  LDA.W #$0080                              ; $8BC143 |
  STA.B $2C,X                               ; $8BC146 |
  LDA.W #$0048                              ; $8BC148 |
  JSL.L CODE_FL_8089BD                      ; $8BC14B |
  INC.B $1A,X                               ; $8BC14F |

CODE_8BC151:
  RTL                                       ; $8BC151 |

CODE_8BC152:
  LDA.B $2C,X                               ; $8BC152 |
  AND.W #$0003                              ; $8BC154 |
  BNE CODE_8BC16A                           ; $8BC157 |
  LDA.W #$0071                              ; $8BC159 |
  JSL.L CODE_FL_86C9A4                      ; $8BC15C |
  BCS CODE_8BC16A                           ; $8BC160 |
  LDA.W #$8010                              ; $8BC162 |
  STA.W $0022,Y                             ; $8BC165 |
  STX.B $3A,Y                               ; $8BC168 |

CODE_8BC16A:
  JSL.L CODE_FL_86C70D                      ; $8BC16A |
  STZ.B $20,X                               ; $8BC16E |
  STZ.B $1C,X                               ; $8BC170 |
  INC.B $1A,X                               ; $8BC172 |
  LDA.W #$0050                              ; $8BC174 |
  STA.B $2C,X                               ; $8BC177 |
  RTL                                       ; $8BC179 |

CODE_8BC17A:
  JSL.L CODE_FL_86C70D                      ; $8BC17A |
  LDA.W #$000C                              ; $8BC17E |
  LDY.W #$C7F8                              ; $8BC181 |
  JSR.W CODE_FN_8BC4F9                      ; $8BC184 |
  BCS CODE_8BC196                           ; $8BC187 |
  LDA.B $86                                 ; $8BC189 |
  LSR A                                     ; $8BC18B |
  LDY.W #$0016                              ; $8BC18C |
  STY.B $1A,X                               ; $8BC18F |
  BCS CODE_8BC196                           ; $8BC191 |
  JMP.W CODE_JP_8BC48B                      ; $8BC193 |

CODE_8BC196:
  RTL                                       ; $8BC196 |

CODE_8BC197:
  LDA.W #$0004                              ; $8BC197 |
  STA.B $40,X                               ; $8BC19A |
  INC.B $1A,X                               ; $8BC19C |

CODE_8BC19E:
  DEC.B $40,X                               ; $8BC19E |
  LDA.W #$0070                              ; $8BC1A0 |
  JSL.L CODE_FL_86C9A4                      ; $8BC1A3 |
  BCS CODE_8BC1BA                           ; $8BC1A7 |
  STX.B $3A,Y                               ; $8BC1A9 |
  LDA.B $40,X                               ; $8BC1AB |
  ASL A                                     ; $8BC1AD |
  ASL A                                     ; $8BC1AE |
  ASL A                                     ; $8BC1AF |
  STA.W $003C,Y                             ; $8BC1B0 |
  LDA.W #$002C                              ; $8BC1B3 |
  JSL.L CODE_FL_8089BD                      ; $8BC1B6 |

CODE_8BC1BA:
  LDA.W #$0004                              ; $8BC1BA |
  STA.B $42,X                               ; $8BC1BD |
  INC.B $1A,X                               ; $8BC1BF |
  RTL                                       ; $8BC1C1 |

CODE_8BC1C2:
  DEC.B $42,X                               ; $8BC1C2 |
  BNE CODE_8BC1CC                           ; $8BC1C4 |
  LDA.B $40,X                               ; $8BC1C6 |
  BEQ CODE_8BC1CD                           ; $8BC1C8 |
  DEC.B $1A,X                               ; $8BC1CA |

CODE_8BC1CC:
  RTL                                       ; $8BC1CC |

CODE_8BC1CD:
  LDA.W #$0100                              ; $8BC1CD |
  STA.B $2C,X                               ; $8BC1D0 |
  INC.B $1A,X                               ; $8BC1D2 |

CODE_8BC1D4:
  JSL.L CODE_FL_86C70D                      ; $8BC1D4 |
  JMP.W CODE_JP_8BC48B                      ; $8BC1D8 |

CODE_8BC1DB:
  LDA.W #$0001                              ; $8BC1DB |
  LDY.W #$C7E4                              ; $8BC1DE |
  JSR.W CODE_FN_8BC4F9                      ; $8BC1E1 |
  BCS CODE_8BC1ED                           ; $8BC1E4 |
  LDA.W #$0040                              ; $8BC1E6 |
  STA.B $2C,X                               ; $8BC1E9 |
  INC.B $1A,X                               ; $8BC1EB |

CODE_8BC1ED:
  RTL                                       ; $8BC1ED |

CODE_8BC1EE:
  LDA.B $2C,X                               ; $8BC1EE |
  CMP.W #$0028                              ; $8BC1F0 |
  BMI CODE_8BC222                           ; $8BC1F3 |
  LDA.W #$0073                              ; $8BC1F5 |
  JSL.L CODE_FL_86C9A4                      ; $8BC1F8 |
  BCS CODE_8BC222                           ; $8BC1FC |
  LDA.B $86                                 ; $8BC1FE |
  AND.W #$001F                              ; $8BC200 |
  CLC                                       ; $8BC203 |
  ADC.W #$0018                              ; $8BC204 |
  EOR.W #$FFFF                              ; $8BC207 |
  INC A                                     ; $8BC20A |
  JSL.L CODE_FL_8CFC64                      ; $8BC20B |
  LDA.W #$FFE4                              ; $8BC20F |
  JSL.L CODE_FL_8CFC6F                      ; $8BC212 |
  LDA.W #$FE00                              ; $8BC216 |
  STA.W $0028,Y                             ; $8BC219 |
  LDA.W #$1898                              ; $8BC21C |
  STA.W $0004,Y                             ; $8BC21F |

CODE_8BC222:
  JSL.L CODE_FL_86C70D                      ; $8BC222 |
  STZ.B $20,X                               ; $8BC226 |
  STZ.B $1C,X                               ; $8BC228 |
  INC.B $1A,X                               ; $8BC22A |

CODE_8BC22C:
  LDA.W #$0008                              ; $8BC22C |
  LDY.W #$C7F8                              ; $8BC22F |
  JSR.W CODE_FN_8BC4F9                      ; $8BC232 |
  BCS CODE_8BC23A                           ; $8BC235 |
  JMP.W CODE_JP_8BC48B                      ; $8BC237 |

CODE_8BC23A:
  RTL                                       ; $8BC23A |

CODE_8BC23B:
  LDA.W #$0030                              ; $8BC23B |

CODE_8BC23E:
  STA.B $2C,X                               ; $8BC23E |
  STZ.B $44,X                               ; $8BC240 |
  LDY.W #$DE57                              ; $8BC242 |
  JSR.W CODE_FN_8BC525                      ; $8BC245 |
  STZ.B $26,X                               ; $8BC248 |
  INC.B $1A,X                               ; $8BC24A |
  RTL                                       ; $8BC24C |

CODE_8BC24D:
  JSL.L CODE_FL_86C393                      ; $8BC24D |
  JSR.W CODE_FN_8BC5A3                      ; $8BC251 |
  JSR.W CODE_FN_8BC55C                      ; $8BC254 |
  LDA.B $3E,X                               ; $8BC257 |
  JSL.L CODE_FL_8CFCD0                      ; $8BC259 |
  BNE CODE_8BC29B                           ; $8BC25D |
  LDA.B $2C,X                               ; $8BC25F |
  BNE CODE_8BC266                           ; $8BC261 |
  JMP.W CODE_JP_8BC48B                      ; $8BC263 |

CODE_8BC266:
  RTL                                       ; $8BC266 |

CODE_8BC267:
  STZ.B $42,X                               ; $8BC267 |
  JSL.L CODE_FL_85A9F7                      ; $8BC269 |
  LDA.W #$0030                              ; $8BC26D |
  BRA CODE_8BC23E                           ; $8BC270 |

CODE_8BC272:
  JSL.L CODE_FL_86C393                      ; $8BC272 |
  JSR.W CODE_FN_8BC5A3                      ; $8BC276 |
  JSR.W CODE_FN_8BC55C                      ; $8BC279 |
  LDA.B $3E,X                               ; $8BC27C |
  JSL.L CODE_FL_8CFCD0                      ; $8BC27E |
  BNE CODE_8BC29B                           ; $8BC282 |
  LDA.B $42                                 ; $8BC284 |
  AND.W #$0007                              ; $8BC286 |
  BNE CODE_8BC29B                           ; $8BC289 |
  INC.B $42,X                               ; $8BC28B |
  LDA.B $42,X                               ; $8BC28D |
  CMP.W #$000A                              ; $8BC28F |
  BNE CODE_8BC29B                           ; $8BC292 |
  LDA.W #$0040                              ; $8BC294 |
  STA.B $2C,X                               ; $8BC297 |
  INC.B $1A,X                               ; $8BC299 |

CODE_8BC29B:
  RTL                                       ; $8BC29B |

CODE_8BC29C:
  JSL.L CODE_FL_86C393                      ; $8BC29C |
  JSR.W CODE_FN_8BC5A3                      ; $8BC2A0 |
  JSL.L CODE_FL_86C70D                      ; $8BC2A3 |
  LDY.W #$DE89                              ; $8BC2A7 |
  JSR.W CODE_FN_8BC525                      ; $8BC2AA |
  INC.B $1A,X                               ; $8BC2AD |
  LDY.W #$B830                              ; $8BC2AF |
  JML.L CODE_FL_80C26D                      ; $8BC2B2 |

CODE_8BC2B6:
  JML.L CODE_JL_8DA5D2                      ; $8BC2B6 |

CODE_8BC2BA:
  JML.L CODE_JL_8DA5DD                      ; $8BC2BA |

CODE_8BC2BE:
  LDA.L $700778                             ; $8BC2BE |
  LDA.W #$8000                              ; $8BC2C2 |
  STA.L $700778                             ; $8BC2C5 |
  JSR.W CODE_FN_8BC4DB                      ; $8BC2C9 |
  JML.L CODE_FL_86CA2D                      ; $8BC2CC |

CODE_8BC2D0:
  JSL.L CODE_FL_86C70D                      ; $8BC2D0 |
  LDA.W #$0001                              ; $8BC2D4 |
  STA.W $1962                               ; $8BC2D7 |
  LDA.W $1672                               ; $8BC2DA |
  CMP.W #$0200                              ; $8BC2DD |
  BNE CODE_8BC2FA                           ; $8BC2E0 |
  LDA.W #$0034                              ; $8BC2E2 |
  JSL.L CODE_FL_8089BD                      ; $8BC2E5 |
  INC.B $1A,X                               ; $8BC2E9 |
  LDA.W #$0051                              ; $8BC2EB |
  STA.B $92                                 ; $8BC2EE |
  STZ.W $1962                               ; $8BC2F0 |
  LDY.W #$BA6F                              ; $8BC2F3 |
  JML.L CODE_FL_80C26D                      ; $8BC2F6 |

CODE_8BC2FA:
  RTL                                       ; $8BC2FA |

CODE_8BC2FB:
  LDA.W #$0002                              ; $8BC2FB |
  JSL.L CODE_FL_B3FE45                      ; $8BC2FE |
  LDA.B $42                                 ; $8BC302 |
  AND.W #$0001                              ; $8BC304 |
  BNE CODE_8BC338                           ; $8BC307 |
  LDA.W #$0073                              ; $8BC309 |
  JSL.L CODE_FL_86C9A4                      ; $8BC30C |
  BCS CODE_8BC338                           ; $8BC310 |
  LDA.W #$FE00                              ; $8BC312 |
  STA.W $0028,Y                             ; $8BC315 |
  LDA.B $86                                 ; $8BC318 |
  AND.W #$001F                              ; $8BC31A |
  SEC                                       ; $8BC31D |
  SBC.W #$0040                              ; $8BC31E |
  CLC                                       ; $8BC321 |
  ADC.W $0009,Y                             ; $8BC322 |
  STA.W $0009,Y                             ; $8BC325 |
  LDA.B $87                                 ; $8BC328 |
  AND.W #$003F                              ; $8BC32A |
  EOR.W #$FFFF                              ; $8BC32D |
  INC A                                     ; $8BC330 |
  CLC                                       ; $8BC331 |
  ADC.W $000D,Y                             ; $8BC332 |
  STA.W $000D,Y                             ; $8BC335 |

CODE_8BC338:
  JSL.L CODE_FL_86C70D                      ; $8BC338 |
  LDA.W $1F60                               ; $8BC33C |
  BNE CODE_8BC353                           ; $8BC33F |
  LDA.B $42                                 ; $8BC341 |
  AND.W #$0007                              ; $8BC343 |
  BNE CODE_8BC353                           ; $8BC346 |
  DEC.B $42,X                               ; $8BC348 |
  BNE CODE_8BC353                           ; $8BC34A |
  LDA.W #$0030                              ; $8BC34C |
  STA.B $2C,X                               ; $8BC34F |
  INC.B $1A,X                               ; $8BC351 |

CODE_8BC353:
  RTL                                       ; $8BC353 |

CODE_8BC354:
  JSR.W CODE_FN_8BC41A                      ; $8BC354 |
  JSL.L CODE_FL_86C70D                      ; $8BC357 |
  LDA.B $3A,X                               ; $8BC35B |
  BEQ CODE_8BC367                           ; $8BC35D |
  LDA.B $09,X                               ; $8BC35F |
  CMP.W #$00E0                              ; $8BC361 |
  BPL CODE_8BC367                           ; $8BC364 |
  RTL                                       ; $8BC366 |

CODE_8BC367:
  INC.B $1A,X                               ; $8BC367 |
  RTL                                       ; $8BC369 |

CODE_8BC36A:
  JSR.W CODE_FN_8BC41A                      ; $8BC36A |
  LDA.W #$0004                              ; $8BC36D |
  STA.B $42,X                               ; $8BC370 |
  LDA.W #$0020                              ; $8BC372 |
  JSL.L CODE_FL_8089BD                      ; $8BC375 |
  INC.B $1A,X                               ; $8BC379 |
  RTL                                       ; $8BC37B |

CODE_8BC37C:
  JSR.W CODE_FN_8BC41A                      ; $8BC37C |
  DEC.B $42,X                               ; $8BC37F |
  BNE CODE_8BC38F                           ; $8BC381 |
  LDA.W #$FD00                              ; $8BC383 |
  STA.B $28,X                               ; $8BC386 |
  LDA.W #$FE00                              ; $8BC388 |
  STA.B $26,X                               ; $8BC38B |
  INC.B $1A,X                               ; $8BC38D |

CODE_8BC38F:
  RTL                                       ; $8BC38F |

CODE_8BC390:
  JSR.W CODE_FN_8BC41A                      ; $8BC390 |
  JSR.W CODE_FN_8BC474                      ; $8BC393 |
  JSR.W CODE_FN_8BC55C                      ; $8BC396 |
  LDA.B $3E,X                               ; $8BC399 |
  SEC                                       ; $8BC39B |
  SBC.B $0D,X                               ; $8BC39C |
  SEC                                       ; $8BC39E |
  SBC.W $1672                               ; $8BC39F |
  CMP.W #$0030                              ; $8BC3A2 |
  BMI CODE_8BC3A9                           ; $8BC3A5 |
  INC.B $1A,X                               ; $8BC3A7 |

CODE_8BC3A9:
  RTL                                       ; $8BC3A9 |

CODE_8BC3AA:
  JSR.W CODE_FN_8BC41A                      ; $8BC3AA |
  JSR.W CODE_FN_8BC474                      ; $8BC3AD |
  JSR.W CODE_FN_8BC55C                      ; $8BC3B0 |
  LDA.B $3E,X                               ; $8BC3B3 |
  JSL.L CODE_FL_8CFCD0                      ; $8BC3B5 |
  BNE CODE_8BC3D4                           ; $8BC3B9 |
  LDA.W #$0006                              ; $8BC3BB |
  STA.B $42,X                               ; $8BC3BE |
  STZ.B $26,X                               ; $8BC3C0 |
  STZ.B $28,X                               ; $8BC3C2 |
  LDA.W #$001B                              ; $8BC3C4 |
  JSL.L push_sound_queue                    ; $8BC3C7 |
  LDA.W #$0004                              ; $8BC3CB |
  JSL.L CODE_FL_B3FE45                      ; $8BC3CE |
  INC.B $1A,X                               ; $8BC3D2 |

CODE_8BC3D4:
  RTL                                       ; $8BC3D4 |

CODE_8BC3D5:
  JSR.W CODE_FN_8BC41A                      ; $8BC3D5 |
  DEC.B $42,X                               ; $8BC3D8 |
  BNE CODE_8BC408                           ; $8BC3DA |
  LDA.B $09,X                               ; $8BC3DC |
  CLC                                       ; $8BC3DE |
  ADC.W $1662                               ; $8BC3DF |
  CMP.W #$03A0                              ; $8BC3E2 |
  BNE CODE_8BC3EA                           ; $8BC3E5 |
  INC.B $1A,X                               ; $8BC3E7 |
  RTL                                       ; $8BC3E9 |

CODE_8BC3EA:
  STZ.B $3A,X                               ; $8BC3EA |
  LDA.B $09,X                               ; $8BC3EC |
  CMP.W #$0080                              ; $8BC3EE |
  BPL CODE_8BC3F5                           ; $8BC3F1 |
  INC.B $3A,X                               ; $8BC3F3 |

CODE_8BC3F5:
  INC.B $3C,X                               ; $8BC3F5 |
  LDA.B $3C,X                               ; $8BC3F7 |
  AND.W #$0003                              ; $8BC3F9 |
  ASL A                                     ; $8BC3FC |
  TAY                                       ; $8BC3FD |
  LDA.W LOOSE_OP_00C90D,Y                   ; $8BC3FE |
  STA.B $2C,X                               ; $8BC401 |
  LDA.W #$0023                              ; $8BC403 |
  STA.B $1A,X                               ; $8BC406 |

CODE_8BC408:
  RTL                                       ; $8BC408 |

CODE_8BC409:
  JSR.W CODE_FN_8BC41A                      ; $8BC409 |
  LDA.B $09,X                               ; $8BC40C |
  CMP.W #$0180                              ; $8BC40E |
  BMI CODE_8BC419                           ; $8BC411 |
  LDA.W #$0080                              ; $8BC413 |
  STA.W $1682                               ; $8BC416 |

CODE_8BC419:
  RTL                                       ; $8BC419 |

CODE_FN_8BC41A:
  LDA.B $92                                 ; $8BC41A |
  CMP.W #$0084                              ; $8BC41C |
  BEQ CODE_8BC442                           ; $8BC41F |
  LDA.W $1662                               ; $8BC421 |
  CMP.W #$02C0                              ; $8BC424 |
  BMI CODE_8BC43A                           ; $8BC427 |
  LDY.W #$FFFF                              ; $8BC429 |
  LDA.B $42                                 ; $8BC42C |
  AND.W #$0003                              ; $8BC42E |
  BNE CODE_8BC436                           ; $8BC431 |
  LDY.W #$0000                              ; $8BC433 |

CODE_8BC436:
  STY.W $1960                               ; $8BC436 |
  RTS                                       ; $8BC439 |

CODE_8BC43A:
  LDA.W #$0084                              ; $8BC43A |
  STA.B $92                                 ; $8BC43D |
  STZ.W $1960                               ; $8BC43F |

CODE_8BC442:
  RTS                                       ; $8BC442 |

CODE_FN_8BC443:
  LDA.B $09,X                               ; $8BC443 |
  CLC                                       ; $8BC445 |
  ADC.W $1662                               ; $8BC446 |
  CMP.W #$0140                              ; $8BC449 |
  BPL CODE_8BC45E                           ; $8BC44C |
  LDA.W #$0140                              ; $8BC44E |
  SEC                                       ; $8BC451 |
  SBC.W $1662                               ; $8BC452 |
  STA.B $09,X                               ; $8BC455 |
  JSL.L CODE_FL_86CB6A                      ; $8BC457 |
  JMP.W CODE_FN_8BC49E                      ; $8BC45B |

CODE_8BC45E:
  CMP.W #$02C1                              ; $8BC45E |
  BMI CODE_8BC473                           ; $8BC461 |
  LDA.W #$02C0                              ; $8BC463 |
  SEC                                       ; $8BC466 |
  SBC.W $1662                               ; $8BC467 |
  STA.B $09,X                               ; $8BC46A |
  JSL.L CODE_FL_86CB6A                      ; $8BC46C |
  JMP.W CODE_FN_8BC49E                      ; $8BC470 |

CODE_8BC473:
  RTS                                       ; $8BC473 |

CODE_FN_8BC474:
  LDA.B $09,X                               ; $8BC474 |
  CLC                                       ; $8BC476 |
  ADC.W $1662                               ; $8BC477 |
  CMP.W #$03A0                              ; $8BC47A |
  BPL CODE_8BC48A                           ; $8BC47D |
  LDA.W #$03A0                              ; $8BC47F |
  SEC                                       ; $8BC482 |
  SBC.W $1662                               ; $8BC483 |
  STA.B $09,X                               ; $8BC486 |
  STZ.B $26,X                               ; $8BC488 |

CODE_8BC48A:
  RTS                                       ; $8BC48A |

CODE_JP_8BC48B:
  STZ.B $20,X                               ; $8BC48B |
  STZ.B $1C,X                               ; $8BC48D |
  LDA.W #$0005                              ; $8BC48F |
  STA.B $1A,X                               ; $8BC492 |
  PHX                                       ; $8BC494 |
  LDY.W #$B826                              ; $8BC495 |
  JSL.L CODE_FL_80C26D                      ; $8BC498 |
  PLX                                       ; $8BC49C |
  RTL                                       ; $8BC49D |

CODE_FN_8BC49E:
  STZ.B $44,X                               ; $8BC49E |
  LDA.W #$3C00                              ; $8BC4A0 |
  STA.B $10                                 ; $8BC4A3 |
  LDA.W #$0200                              ; $8BC4A5 |
  STA.B $12                                 ; $8BC4A8 |
  LDA.B $04,X                               ; $8BC4AA |
  BIT.W #$2020                              ; $8BC4AC |
  BEQ CODE_8BC4C6                           ; $8BC4AF |
  LDA.W #$1004                              ; $8BC4B1 |
  LDY.W #$DE33                              ; $8BC4B4 |
  JSL.L CODE_FL_A0F718                      ; $8BC4B7 |
  LDA.W #$1080                              ; $8BC4BB |
  LDY.W #$DE37                              ; $8BC4BE |
  JSL.L CODE_FL_A0F718                      ; $8BC4C1 |
  RTS                                       ; $8BC4C5 |

CODE_8BC4C6:
  LDA.W #$1004                              ; $8BC4C6 |
  LDY.W #$DE33                              ; $8BC4C9 |
  JSL.L CODE_FL_A0F67A                      ; $8BC4CC |
  LDA.W #$1080                              ; $8BC4D0 |
  LDY.W #$DE37                              ; $8BC4D3 |
  JSL.L CODE_FL_A0F67A                      ; $8BC4D6 |
  RTS                                       ; $8BC4DA |

CODE_FN_8BC4DB:
  STZ.B $44,X                               ; $8BC4DB |
  STZ.B $10                                 ; $8BC4DD |
  LDA.W #$0200                              ; $8BC4DF |
  STA.B $12                                 ; $8BC4E2 |
  LDA.W #$1004                              ; $8BC4E4 |
  LDY.W #$DE45                              ; $8BC4E7 |
  JSL.L CODE_FL_A0F67A                      ; $8BC4EA |
  LDA.W #$1080                              ; $8BC4EE |
  LDY.W #$DE49                              ; $8BC4F1 |
  JSL.L CODE_FL_A0F67A                      ; $8BC4F4 |
  RTS                                       ; $8BC4F8 |

CODE_FN_8BC4F9:
  DEC.B $20,X                               ; $8BC4F9 |
  BPL CODE_8BC521                           ; $8BC4FB |
  STA.B $20,X                               ; $8BC4FD |
  TYA                                       ; $8BC4FF |
  CLC                                       ; $8BC500 |
  ADC.B $1C,X                               ; $8BC501 |
  TAY                                       ; $8BC503 |
  LDA.W $0000,Y                             ; $8BC504 |
  CMP.W #$FFFF                              ; $8BC507 |
  BEQ CODE_8BC523                           ; $8BC50A |
  LDA.W $0002,Y                             ; $8BC50C |
  AND.W #$00FF                              ; $8BC50F |
  STA.B $44,X                               ; $8BC512 |
  LDA.W $0000,Y                             ; $8BC514 |
  TAY                                       ; $8BC517 |
  JSR.W CODE_FN_8BC525                      ; $8BC518 |
  INC.B $1C,X                               ; $8BC51B |
  INC.B $1C,X                               ; $8BC51D |
  INC.B $1C,X                               ; $8BC51F |

CODE_8BC521:
  SEC                                       ; $8BC521 |
  RTS                                       ; $8BC522 |

CODE_8BC523:
  CLC                                       ; $8BC523 |
  RTS                                       ; $8BC524 |

CODE_FN_8BC525:
  LDA.W #$3C00                              ; $8BC525 |
  STA.B $10                                 ; $8BC528 |
  LDA.W #$0200                              ; $8BC52A |
  STA.B $12                                 ; $8BC52D |
  LDA.B $04,X                               ; $8BC52F |
  BIT.W #$2020                              ; $8BC531 |
  BEQ CODE_8BC53E                           ; $8BC534 |
  LDA.W #$1084                              ; $8BC536 |
  JSL.L CODE_FL_A0F718                      ; $8BC539 |
  RTS                                       ; $8BC53D |

CODE_8BC53E:
  LDA.W #$1080                              ; $8BC53E |
  JSL.L CODE_FL_A0F67A                      ; $8BC541 |
  RTS                                       ; $8BC545 |

CODE_FN_8BC546:
  LDA.W #$0065                              ; $8BC546 |
  SEC                                       ; $8BC549 |
  SBC.B $42,X                               ; $8BC54A |
  SEC                                       ; $8BC54C |
  SBC.B $0D,X                               ; $8BC54D |
  STA.W $1692                               ; $8BC54F |
  LDA.W #$0030                              ; $8BC552 |
  SEC                                       ; $8BC555 |
  SBC.B $09,X                               ; $8BC556 |
  STA.W $1682                               ; $8BC558 |
  RTS                                       ; $8BC55B |

CODE_FN_8BC55C:
  LDA.B $3E,X                               ; $8BC55C |
  SEC                                       ; $8BC55E |
  SBC.B $0D,X                               ; $8BC55F |
  SEC                                       ; $8BC561 |
  SBC.W $1672                               ; $8BC562 |
  CMP.W #$0004                              ; $8BC565 |
  BMI CODE_8BC57B                           ; $8BC568 |
  CMP.W #$0010                              ; $8BC56A |
  BMI CODE_8BC580                           ; $8BC56D |
  CMP.W #$0020                              ; $8BC56F |
  BMI CODE_8BC58C                           ; $8BC572 |
  CMP.W #$0030                              ; $8BC574 |
  BMI CODE_8BC598                           ; $8BC577 |
  BRA CODE_8BC59D                           ; $8BC579 |

CODE_8BC57B:
  LDA.W #$32E6                              ; $8BC57B |
  BRA CODE_8BC5A0                           ; $8BC57E |

CODE_8BC580:
  LDA.W #$3302                              ; $8BC580 |
  LDY.B $28,X                               ; $8BC583 |
  BMI CODE_8BC5A0                           ; $8BC585 |
  LDA.W #$33B8                              ; $8BC587 |
  BRA CODE_8BC5A0                           ; $8BC58A |

CODE_8BC58C:
  LDA.W #$3320                              ; $8BC58C |
  LDY.B $28,X                               ; $8BC58F |
  BMI CODE_8BC5A0                           ; $8BC591 |
  LDA.W #$3394                              ; $8BC593 |
  BRA CODE_8BC5A0                           ; $8BC596 |

CODE_8BC598:
  LDA.W #$3344                              ; $8BC598 |
  BRA CODE_8BC5A0                           ; $8BC59B |

CODE_8BC59D:
  LDA.W #$336C                              ; $8BC59D |

CODE_8BC5A0:
  STA.B $00,X                               ; $8BC5A0 |
  RTS                                       ; $8BC5A2 |

CODE_FN_8BC5A3:
  TDC                                       ; $8BC5A3 |
  JSL.L CODE_FL_8CFD0B                      ; $8BC5A4 |
  RTS                                       ; $8BC5A8 |

CODE_8BC5A9:
  JSL.L CODE_FL_8B80CE                      ; $8BC5A9 |
  JSL.L CODE_FL_86C3F8                      ; $8BC5AD |
  PHX                                       ; $8BC5B1 |
  ASL A                                     ; $8BC5B2 |
  TAX                                       ; $8BC5B3 |
  LDA.L PTR16_8BC5BE,X                      ; $8BC5B4 |
  PLX                                       ; $8BC5B8 |
  STA.B $00                                 ; $8BC5B9 |
  JMP.W ($0000)                             ; $8BC5BB |

PTR16_8BC5BE:
  dw CODE_8BC5DE                            ; $8BC5BE |
  dw CODE_8BC600                            ; $8BC5C0 |
  dw CODE_8BC645                            ; $8BC5C2 |
  dw CODE_8BC656                            ; $8BC5C4 |
  dw CODE_8BC688                            ; $8BC5C6 |
  dw CODE_8BC69F                            ; $8BC5C8 |
  dw CODE_8BC6B7                            ; $8BC5CA |
  dw CODE_8BC6B8                            ; $8BC5CC |
  dw CODE_8BC6DF                            ; $8BC5CE |
  dw CODE_8BC6FA                            ; $8BC5D0 |
  dw CODE_8BC714                            ; $8BC5D2 |
  dw CODE_8BC721                            ; $8BC5D4 |
  dw CODE_8BC74F                            ; $8BC5D6 |
  dw CODE_8BC764                            ; $8BC5D8 |
  dw CODE_8BC76C                            ; $8BC5DA |
  dw CODE_8BC77E                            ; $8BC5DC |

CODE_8BC5DE:
  LDA.B $4E,X                               ; $8BC5DE |
  JSL.L CODE_FL_8CFCA5                      ; $8BC5E0 |
  STY.B $3A,X                               ; $8BC5E4 |
  LDA.W #$3006                              ; $8BC5E6 |
  JSL.L CODE_FL_86CAEE                      ; $8BC5E9 |
  LDA.W #$0030                              ; $8BC5ED |
  STA.B $14,X                               ; $8BC5F0 |
  LDA.W #$0047                              ; $8BC5F2 |
  STA.B $02,X                               ; $8BC5F5 |
  LDA.W #$8010                              ; $8BC5F7 |
  STA.B $22,X                               ; $8BC5FA |
  JSL.L CODE_FL_86C63F                      ; $8BC5FC |

CODE_8BC600:
  LDY.B $3A,X                               ; $8BC600 |
  LDA.W $0048,Y                             ; $8BC602 |
  TAY                                       ; $8BC605 |
  LDA.W $0000,Y                             ; $8BC606 |
  TAY                                       ; $8BC609 |
  CLC                                       ; $8BC60A |
  LDA.B $09,X                               ; $8BC60B |
  CMP.W $0009,Y                             ; $8BC60D |
  TDC                                       ; $8BC610 |
  BCS CODE_8BC616                           ; $8BC611 |
  LDA.W #$2020                              ; $8BC613 |

CODE_8BC616:
  STA.B $00                                 ; $8BC616 |
  LDY.B $3A,X                               ; $8BC618 |
  LDA.W $0004,Y                             ; $8BC61A |
  AND.W #$2020                              ; $8BC61D |
  CMP.B $00                                 ; $8BC620 |
  BEQ CODE_8BC629                           ; $8BC622 |
  LDA.W #$34DE                              ; $8BC624 |
  BRA CODE_8BC62C                           ; $8BC627 |

CODE_8BC629:
  LDA.W #$33D4                              ; $8BC629 |

CODE_8BC62C:
  STA.B $00,X                               ; $8BC62C |
  LDY.B $3A,X                               ; $8BC62E |
  LDA.W $003C,Y                             ; $8BC630 |
  CMP.B $3C,X                               ; $8BC633 |
  BEQ CODE_8BC63E                           ; $8BC635 |
  INC.B $20,X                               ; $8BC637 |
  LDA.W #$0002                              ; $8BC639 |
  STA.B $1A,X                               ; $8BC63C |

CODE_8BC63E:
  JSL.L CODE_FL_8BC78D                      ; $8BC63E |
  JMP.W CODE_FL_8BC79D                      ; $8BC642 |

CODE_8BC645:
  LDA.B $20,X                               ; $8BC645 |
  BNE CODE_8BC64B                           ; $8BC647 |
  DEC.B $1A,X                               ; $8BC649 |

CODE_8BC64B:
  JSL.L CODE_FL_8BC78D                      ; $8BC64B |
  JSL.L CODE_FL_8BC79D                      ; $8BC64F |
  JMP.W CODE_JP_8BC7B9                      ; $8BC653 |

CODE_8BC656:
  STZ.B $20,X                               ; $8BC656 |
  LDA.W #$3418                              ; $8BC658 |
  STA.B $00,X                               ; $8BC65B |
  LDA.W #$F800                              ; $8BC65D |
  STA.B $28,X                               ; $8BC660 |
  JSL.L CODE_FL_8CFA29                      ; $8BC662 |
  SEC                                       ; $8BC666 |
  SBC.W #$0200                              ; $8BC667 |
  STA.B $00                                 ; $8BC66A |
  BPL CODE_8BC672                           ; $8BC66C |
  EOR.W #$FFFF                              ; $8BC66E |
  INC A                                     ; $8BC671 |

CODE_8BC672:
  LSR A                                     ; $8BC672 |
  LSR A                                     ; $8BC673 |
  LSR A                                     ; $8BC674 |
  LSR A                                     ; $8BC675 |
  LSR A                                     ; $8BC676 |
  LSR A                                     ; $8BC677 |
  AND.W #$00FF                              ; $8BC678 |
  XBA                                       ; $8BC67B |
  LDY.B $00                                 ; $8BC67C |
  BMI CODE_8BC684                           ; $8BC67E |
  EOR.W #$FFFF                              ; $8BC680 |
  INC A                                     ; $8BC683 |

CODE_8BC684:
  STA.B $26,X                               ; $8BC684 |
  INC.B $1A,X                               ; $8BC686 |

CODE_8BC688:
  LDA.W #$01A0                              ; $8BC688 |
  JSL.L CODE_FL_8CFCD0                      ; $8BC68B |
  BNE CODE_8BC69E                           ; $8BC68F |
  STZ.B $26,X                               ; $8BC691 |
  STZ.B $28,X                               ; $8BC693 |
  LDA.W #$0003                              ; $8BC695 |
  JSL.L push_sound_queue                    ; $8BC698 |
  INC.B $1A,X                               ; $8BC69C |

CODE_8BC69E:
  RTL                                       ; $8BC69E |

CODE_8BC69F:
  LDY.B $3A,X                               ; $8BC69F |
  LDA.W $0018,Y                             ; $8BC6A1 |
  CMP.W #$006B                              ; $8BC6A4 |
  BEQ CODE_8BC6B6                           ; $8BC6A7 |
  JSL.L CODE_FL_85A9B7                      ; $8BC6A9 |
  LDA.W #$3007                              ; $8BC6AD |
  JSL.L CODE_FL_86CAEE                      ; $8BC6B0 |
  INC.B $1A,X                               ; $8BC6B4 |

CODE_8BC6B6:
  RTL                                       ; $8BC6B6 |

CODE_8BC6B7:
  RTL                                       ; $8BC6B7 |

CODE_8BC6B8:
  LDA.W #$000C                              ; $8BC6B8 |
  JSL.L push_sound_queue                    ; $8BC6BB |
  LDY.W #$90E8                              ; $8BC6BF |
  LDA.W #$001E                              ; $8BC6C2 |
  JSL.L CODE_FL_80C2BA                      ; $8BC6C5 |
  LDX.B $FC                                 ; $8BC6C9 |
  JSL.L CODE_FL_85A9BF                      ; $8BC6CB |
  LDA.W #$FD00                              ; $8BC6CF |
  STA.B $28,X                               ; $8BC6D2 |
  STZ.B $26,X                               ; $8BC6D4 |
  STZ.B $20,X                               ; $8BC6D6 |
  LDA.W #$3418                              ; $8BC6D8 |
  STA.B $00,X                               ; $8BC6DB |
  INC.B $1A,X                               ; $8BC6DD |

CODE_8BC6DF:
  JSL.L CODE_FL_86C870                      ; $8BC6DF |
  JSL.L CODE_FL_8CFC16                      ; $8BC6E3 |
  BNE CODE_8BC6F9                           ; $8BC6E7 |
  LDA.W #$33D4                              ; $8BC6E9 |
  STA.B $00,X                               ; $8BC6EC |
  LDA.W #$8001                              ; $8BC6EE |
  STA.B $E4                                 ; $8BC6F1 |
  JSL.L CODE_FL_83852F                      ; $8BC6F3 |
  INC.B $1A,X                               ; $8BC6F7 |

CODE_8BC6F9:
  RTL                                       ; $8BC6F9 |

CODE_8BC6FA:
  LDA.B $09,X                               ; $8BC6FA |
  SEC                                       ; $8BC6FC |
  SBC.W #$0040                              ; $8BC6FD |
  JSL.L CODE_FL_8B8156                      ; $8BC700 |
  BNE CODE_8BC713                           ; $8BC704 |
  LDA.W #$0100                              ; $8BC706 |
  STA.W $0498                               ; $8BC709 |
  LDA.W #$0008                              ; $8BC70C |
  STA.B $2C,X                               ; $8BC70F |
  INC.B $1A,X                               ; $8BC711 |

CODE_8BC713:
  RTL                                       ; $8BC713 |

CODE_8BC714:
  JSL.L CODE_FL_86C70D                      ; $8BC714 |
  LDA.B $04,X                               ; $8BC718 |
  AND.W #$DFDF                              ; $8BC71A |
  STA.B $04,X                               ; $8BC71D |
  INC.B $1A,X                               ; $8BC71F |

CODE_8BC721:
  JSL.L CODE_FL_8B8292                      ; $8BC721 |
  LDA.W #$90D2                              ; $8BC725 |
  JSL.L CODE_FL_809934                      ; $8BC728 |
  BCC CODE_8BC74E                           ; $8BC72C |
  LDA.W #$0040                              ; $8BC72E |
  STA.B $2C,X                               ; $8BC731 |
  LDA.W #$003B                              ; $8BC733 |
  JSL.L CODE_FL_86CAEE                      ; $8BC736 |
  JSL.L CODE_FL_8CFAF3                      ; $8BC73A |
  LDA.W #$000D                              ; $8BC73E |
  JSL.L push_sound_queue                    ; $8BC741 |
  LDA.W #$0033                              ; $8BC745 |
  STA.L $7E7C04                             ; $8BC748 |
  INC.B $1A,X                               ; $8BC74C |

CODE_8BC74E:
  RTL                                       ; $8BC74E |

CODE_8BC74F:
  LDA.B $00,X                               ; $8BC74F |
  BNE CODE_8BC75F                           ; $8BC751 |
  LDA.W #$9254                              ; $8BC753 |
  JSL.L CODE_FL_809929                      ; $8BC756 |
  BCC CODE_8BC75E                           ; $8BC75A |
  INC.B $1A,X                               ; $8BC75C |

CODE_8BC75E:
  RTL                                       ; $8BC75E |

CODE_8BC75F:
  JSL.L CODE_FL_85F885                      ; $8BC75F |
  RTL                                       ; $8BC763 |

CODE_8BC764:
  LDA.W #$0040                              ; $8BC764 |
  STA.B $2C,X                               ; $8BC767 |
  INC.B $1A,X                               ; $8BC769 |
  RTL                                       ; $8BC76B |

CODE_8BC76C:
  JSL.L CODE_FL_86C70D                      ; $8BC76C |
  LDA.W #$0036                              ; $8BC770 |
  STA.L $7E7C04                             ; $8BC773 |
  LDA.W #$0040                              ; $8BC777 |
  STA.B $2C,X                               ; $8BC77A |
  INC.B $1A,X                               ; $8BC77C |

CODE_8BC77E:
  JSL.L CODE_FL_86C70D                      ; $8BC77E |
  PHX                                       ; $8BC782 |
  JSL.L CODE_FL_86CA2D                      ; $8BC783 |
  JSL.L CODE_FL_80EB63                      ; $8BC787 |
  PLX                                       ; $8BC78B |
  RTL                                       ; $8BC78C |

CODE_FL_8BC78D:
  LDY.B $3A,X                               ; $8BC78D |
  LDA.W $001A,Y                             ; $8BC78F |
  CMP.W #$001E                              ; $8BC792 |
  BMI CODE_8BC79C                           ; $8BC795 |
  LDA.W #$0003                              ; $8BC797 |
  STA.B $1A,X                               ; $8BC79A |

CODE_8BC79C:
  RTL                                       ; $8BC79C |

CODE_FL_8BC79D:
  LDY.B $3A,X                               ; $8BC79D |
  LDA.W #$FFEB                              ; $8BC79F |
  JSL.L CODE_FL_8CFC76                      ; $8BC7A2 |
  ORA.W #$1090                              ; $8BC7A6 |
  STA.B $04,X                               ; $8BC7A9 |
  LDA.W #$FFBD                              ; $8BC7AB |
  JSL.L CODE_FL_8CFC9E                      ; $8BC7AE |
  CLC                                       ; $8BC7B2 |
  ADC.W $0042,Y                             ; $8BC7B3 |
  STA.B $0D,X                               ; $8BC7B6 |
  RTL                                       ; $8BC7B8 |

CODE_JP_8BC7B9:
  LDY.B $3A,X                               ; $8BC7B9 |
  LDA.W $0048,Y                             ; $8BC7BB |
  TAY                                       ; $8BC7BE |
  LDA.W $0000,Y                             ; $8BC7BF |
  TAY                                       ; $8BC7C2 |
  JML.L CODE_FL_86C489                      ; $8BC7C3 |

CODE_8BC7C7:
  JSL.L CODE_FL_85F885                      ; $8BC7C7 |
  JSL.L CODE_FL_86C3F8                      ; $8BC7CB |
  PHX                                       ; $8BC7CF |
  ASL A                                     ; $8BC7D0 |
  TAX                                       ; $8BC7D1 |
  LDA.L PTR16_8BC7DC,X                      ; $8BC7D2 |
  PLX                                       ; $8BC7D6 |
  STA.B $00                                 ; $8BC7D7 |
  JMP.W ($0000)                             ; $8BC7D9 |

PTR16_8BC7DC:
  dw CODE_8BC7F0                            ; $8BC7DC |
  dw CODE_8BC85D                            ; $8BC7DE |
  dw CODE_8BC896                            ; $8BC7E0 |
  dw CODE_8BC8AB                            ; $8BC7E2 |
  dw CODE_8BC8CB                            ; $8BC7E4 |
  dw CODE_8BC8EF                            ; $8BC7E6 |
  dw CODE_8BC922                            ; $8BC7E8 |
  dw CODE_JP_8BC92D                         ; $8BC7EA |
  dw CODE_8BC950                            ; $8BC7EC |
  dw CODE_8BC929                            ; $8BC7EE |

CODE_8BC7F0:
  LDA.W #$3434                              ; $8BC7F0 |
  STA.B $00,X                               ; $8BC7F3 |
  LDA.B $22,X                               ; $8BC7F5 |
  ORA.W #$0010                              ; $8BC7F7 |
  STA.B $22,X                               ; $8BC7FA |
  JSL.L CODE_FL_86C63F                      ; $8BC7FC |
  LDY.B $3A,X                               ; $8BC800 |
  BPL CODE_8BC80C                           ; $8BC802 |
  LDA.W #$0007                              ; $8BC804 |
  STA.B $1A,X                               ; $8BC807 |
  JMP.W CODE_JP_8BC92D                      ; $8BC809 |

CODE_8BC80C:
  LDA.W $0004,Y                             ; $8BC80C |
  AND.W #$2020                              ; $8BC80F |
  STA.B $00                                 ; $8BC812 |
  BEQ CODE_8BC827                           ; $8BC814 |
  LDY.B $3C,X                               ; $8BC816 |
  LDA.W CODE_00C82B,Y                       ; $8BC818 |
  STA.B $04                                 ; $8BC81B |
  LDA.W LOOSE_OP_00C82D,Y                   ; $8BC81D |
  STA.B $06                                 ; $8BC820 |
  LDA.W LOOSE_OP_00C829,Y                   ; $8BC822 |
  BRA CODE_8BC836                           ; $8BC825 |

CODE_8BC827:
  LDY.B $3C,X                               ; $8BC827 |
  LDA.W LOOSE_OP_00C80B,Y                   ; $8BC829 |
  STA.B $04                                 ; $8BC82C |
  LDA.W LOOSE_OP_00C80D,Y                   ; $8BC82E |
  STA.B $06                                 ; $8BC831 |
  LDA.W LOOSE_OP_00C809,Y                   ; $8BC833 |

CODE_8BC836:
  STA.B $26,X                               ; $8BC836 |
  LDA.W #$FC00                              ; $8BC838 |
  STA.B $28,X                               ; $8BC83B |
  LDY.B $3A,X                               ; $8BC83D |
  LDA.W $0009,Y                             ; $8BC83F |
  CLC                                       ; $8BC842 |
  ADC.B $04                                 ; $8BC843 |
  STA.B $09,X                               ; $8BC845 |
  LDA.W $000D,Y                             ; $8BC847 |
  CLC                                       ; $8BC84A |
  ADC.B $06                                 ; $8BC84B |
  STA.B $0D,X                               ; $8BC84D |
  LDA.B $00                                 ; $8BC84F |
  ORA.W #$1090                              ; $8BC851 |
  STA.B $04,X                               ; $8BC854 |
  LDA.W #$0073                              ; $8BC856 |
  JSL.L CODE_FL_86C9C5                      ; $8BC859 |

CODE_8BC85D:
  LDY.W #$3434                              ; $8BC85D |
  LDA.B $28,X                               ; $8BC860 |
  CMP.W #$0100                              ; $8BC862 |
  BPL CODE_8BC886                           ; $8BC865 |
  BPL CODE_8BC86D                           ; $8BC867 |
  EOR.W #$FFFF                              ; $8BC869 |
  INC A                                     ; $8BC86C |

CODE_8BC86D:
  CMP.W #$0100                              ; $8BC86D |
  BPL CODE_8BC875                           ; $8BC870 |
  LDY.W #$343C                              ; $8BC872 |

CODE_8BC875:
  STY.B $00,X                               ; $8BC875 |
  JSL.L CODE_FL_86C82F                      ; $8BC877 |
  JSL.L CODE_FL_858A65                      ; $8BC87B |
  BEQ CODE_8BC885                           ; $8BC87F |
  JSL.L CODE_FL_86CB6A                      ; $8BC881 |

CODE_8BC885:
  RTL                                       ; $8BC885 |

CODE_8BC886:
  LDA.W #$0006                              ; $8BC886 |
  STA.B $2C,X                               ; $8BC889 |
  LDA.W #$3444                              ; $8BC88B |
  STA.B $00,X                               ; $8BC88E |
  STZ.B $26,X                               ; $8BC890 |
  STZ.B $28,X                               ; $8BC892 |
  INC.B $1A,X                               ; $8BC894 |

CODE_8BC896:
  JSL.L CODE_FL_86C70D                      ; $8BC896 |
  INC.B $1A,X                               ; $8BC89A |
  JSL.L CODE_FL_85A9B7                      ; $8BC89C |
  JSL.L CODE_FL_85A9EF                      ; $8BC8A0 |
  LDA.W #$3001                              ; $8BC8A4 |
  JML.L CODE_FL_86CAEE                      ; $8BC8A7 |

CODE_8BC8AB:
  JSL.L CODE_FL_85A5F2                      ; $8BC8AB |
  BEQ CODE_8BC8CA                           ; $8BC8AF |

CODE_JP_8BC8B1:
  LDA.W #$3002                              ; $8BC8B1 |
  JSL.L CODE_FL_86CAEE                      ; $8BC8B4 |
  LDA.W #$0050                              ; $8BC8B8 |
  STA.B $2C,X                               ; $8BC8BB |
  LDA.W #$0008                              ; $8BC8BD |
  STA.B $3E,X                               ; $8BC8C0 |
  JSL.L CODE_FL_86C444                      ; $8BC8C2 |
  JSL.L CODE_FL_86C486                      ; $8BC8C6 |

CODE_8BC8CA:
  RTL                                       ; $8BC8CA |

CODE_8BC8CB:
  LDA.B $2C,X                               ; $8BC8CB |
  BNE CODE_8BC90D                           ; $8BC8CD |
  LDA.W #$0001                              ; $8BC8CF |
  STA.B $20,X                               ; $8BC8D2 |
  LDA.W #$FC00                              ; $8BC8D4 |
  STA.B $28,X                               ; $8BC8D7 |
  LDA.W #$0040                              ; $8BC8D9 |
  STA.B $4C,X                               ; $8BC8DC |
  LDA.W #$FF00                              ; $8BC8DE |
  JSL.L CODE_FL_86C887                      ; $8BC8E1 |
  INC.B $1A,X                               ; $8BC8E5 |
  LDA.W #$0060                              ; $8BC8E7 |
  JSL.L CODE_FL_8089BD                      ; $8BC8EA |
  RTL                                       ; $8BC8EE |

CODE_8BC8EF:
  JSL.L CODE_FL_8CFC16                      ; $8BC8EF |
  BNE CODE_8BC90D                           ; $8BC8F3 |
  DEC.B $3E,X                               ; $8BC8F5 |
  BMI CODE_8BC8FD                           ; $8BC8F7 |
  JSL.L CODE_FL_86C486                      ; $8BC8F9 |

CODE_8BC8FD:
  LDA.W #$0060                              ; $8BC8FD |
  JSL.L CODE_FL_8089BD                      ; $8BC900 |
  STZ.B $26,X                               ; $8BC904 |
  LDA.W #$0008                              ; $8BC906 |
  STA.B $2C,X                               ; $8BC909 |
  DEC.B $1A,X                               ; $8BC90B |

CODE_8BC90D:
  LDA.B $32,X                               ; $8BC90D |
  BIT.W #$4000                              ; $8BC90F |
  BEQ CODE_8BC921                           ; $8BC912 |
  STZ.B $34,X                               ; $8BC914 |
  STZ.B $00,X                               ; $8BC916 |
  LDA.W #$0009                              ; $8BC918 |
  STA.B $1A,X                               ; $8BC91B |
  JML.L CODE_FL_85A71F                      ; $8BC91D |

CODE_8BC921:
  RTL                                       ; $8BC921 |

CODE_8BC922:
  LDA.W #$A000                              ; $8BC922 |
  JML.L CODE_JL_85AAAA                      ; $8BC925 |

CODE_8BC929:
  JML.L CODE_FL_86CA2D                      ; $8BC929 |

CODE_JP_8BC92D:
  LDA.B $86                                 ; $8BC92D |
  AND.W #$003F                              ; $8BC92F |
  SEC                                       ; $8BC932 |
  SBC.W #$0020                              ; $8BC933 |
  CLC                                       ; $8BC936 |
  ADC.B $09,X                               ; $8BC937 |
  STA.B $09,X                               ; $8BC939 |
  LDA.W #$0001                              ; $8BC93B |
  STA.B $0D,X                               ; $8BC93E |
  JSL.L CODE_FL_85A9B7                      ; $8BC940 |
  JSL.L CODE_FL_85A9EF                      ; $8BC944 |
  LDA.W #$0008                              ; $8BC948 |
  STA.B $1A,X                               ; $8BC94B |
  JMP.W CODE_JP_8BC8B1                      ; $8BC94D |

CODE_8BC950:
  JSL.L CODE_FL_85A5F2                      ; $8BC950 |
  BEQ CODE_8BC962                           ; $8BC954 |
  LDA.W #$0060                              ; $8BC956 |
  JSL.L CODE_FL_8089BD                      ; $8BC959 |
  LDA.W #$0004                              ; $8BC95D |
  STA.B $1A,X                               ; $8BC960 |

CODE_8BC962:
  RTL                                       ; $8BC962 |

CODE_8BC963:
  JSL.L CODE_FL_85F885                      ; $8BC963 |
  JSL.L CODE_FL_86C82F                      ; $8BC967 |
  JSL.L CODE_FL_86C3F8                      ; $8BC96B |
  BNE CODE_8BC9AE                           ; $8BC96F |
  LDA.W #$3003                              ; $8BC971 |
  JSL.L CODE_FL_86CAEE                      ; $8BC974 |
  LDY.B $3A,X                               ; $8BC978 |
  LDA.W #$FFE4                              ; $8BC97A |
  JSL.L CODE_FL_8CFC9E                      ; $8BC97D |
  LDA.W #$FFD8                              ; $8BC981 |
  JSL.L CODE_FL_8CFC76                      ; $8BC984 |
  BEQ CODE_8BC98F                           ; $8BC988 |
  LDY.W #$0400                              ; $8BC98A |
  BRA CODE_8BC992                           ; $8BC98D |

CODE_8BC98F:
  LDY.W #$FC00                              ; $8BC98F |

CODE_8BC992:
  STY.B $26,X                               ; $8BC992 |
  ORA.W #$1090                              ; $8BC994 |
  STA.B $04,X                               ; $8BC997 |
  LDA.W #$0100                              ; $8BC999 |
  STA.B $28,X                               ; $8BC99C |
  LDA.W #$FFF0                              ; $8BC99E |
  STA.B $4C,X                               ; $8BC9A1 |
  LDA.W #$0020                              ; $8BC9A3 |
  STA.B $2C,X                               ; $8BC9A6 |
  JSL.L CODE_FL_85A9EF                      ; $8BC9A8 |
  INC.B $1A,X                               ; $8BC9AC |

CODE_8BC9AE:
  LDY.W #$3003                              ; $8BC9AE |
  LDA.B $2C,X                               ; $8BC9B1 |
  BNE CODE_8BC9B9                           ; $8BC9B3 |
  JML.L CODE_FL_86CA36                      ; $8BC9B5 |

CODE_8BC9B9:
  CMP.W #$001C                              ; $8BC9B9 |
  BPL CODE_8BC9C5                           ; $8BC9BC |
  INY                                       ; $8BC9BE |
  CMP.W #$0010                              ; $8BC9BF |
  BPL CODE_8BC9C5                           ; $8BC9C2 |
  INY                                       ; $8BC9C4 |

CODE_8BC9C5:
  STY.B $1E,X                               ; $8BC9C5 |
  BIT.B $32,X                               ; $8BC9C7 |
  BVC CODE_8BC9DA                           ; $8BC9C9 |
  LDY.B $3A,X                               ; $8BC9CB |
  LDA.W $0018,Y                             ; $8BC9CD |
  CMP.W #$0300                              ; $8BC9D0 |
  BNE CODE_8BC9DA                           ; $8BC9D3 |
  LDA.B $32,X                               ; $8BC9D5 |
  STA.W $1CB0                               ; $8BC9D7 |

CODE_8BC9DA:
  RTL                                       ; $8BC9DA |

CODE_8BC9DB:
  JSL.L CODE_FL_85F885                      ; $8BC9DB |
  JSL.L CODE_FL_86C424                      ; $8BC9DF |
  PHX                                       ; $8BC9E3 |
  ASL A                                     ; $8BC9E4 |
  TAX                                       ; $8BC9E5 |
  LDA.L PTR16_8BC9F0,X                      ; $8BC9E6 |
  PLX                                       ; $8BC9EA |
  STA.B $00                                 ; $8BC9EB |
  JMP.W ($0000)                             ; $8BC9ED |

PTR16_8BC9F0:
  dw CODE_8BC9FA                            ; $8BC9F0 |
  dw CODE_8BCA20                            ; $8BC9F2 |
  dw CODE_8BCA53                            ; $8BC9F4 |
  dw CODE_8BCA71                            ; $8BC9F6 |
  dw CODE_8BCA8F                            ; $8BC9F8 |

CODE_8BC9FA:
  LDA.W #$8010                              ; $8BC9FA |
  STA.B $22,X                               ; $8BC9FD |
  LDA.B $4E,X                               ; $8BC9FF |
  JSL.L CODE_FL_8CFCA5                      ; $8BCA01 |
  STY.B $3A,X                               ; $8BCA05 |
  SEC                                       ; $8BCA07 |
  LDA.W $0018,Y                             ; $8BCA08 |
  SBC.W #$006B                              ; $8BCA0B |
  BEQ CODE_8BCA13                           ; $8BCA0E |
  LDA.W #$0006                              ; $8BCA10 |

CODE_8BCA13:
  STA.B $3C,X                               ; $8BCA13 |
  JSL.L CODE_FL_85A9B7                      ; $8BCA15 |
  LDA.W #$0005                              ; $8BCA19 |
  STA.B $36,X                               ; $8BCA1C |
  INC.B $1A,X                               ; $8BCA1E |

CODE_8BCA20:
  LDY.B $3A,X                               ; $8BCA20 |
  LDA.W $0044,Y                             ; $8BCA22 |
  TAY                                       ; $8BCA25 |
  LDA.W CODE_00C8F1,Y                       ; $8BCA26 |
  STA.B $2E,X                               ; $8BCA29 |
  LDA.W LOOSE_OP_00C8F3,Y                   ; $8BCA2B |
  STA.B $30,X                               ; $8BCA2E |
  CPY.W #$0000                              ; $8BCA30 |
  BEQ CODE_8BCA3B                           ; $8BCA33 |
  JSL.L CODE_FL_85A9B7                      ; $8BCA35 |
  BRA CODE_8BCA3F                           ; $8BCA39 |

CODE_8BCA3B:
  JSL.L CODE_FL_85A9BF                      ; $8BCA3B |

CODE_8BCA3F:
  LDY.B $3A,X                               ; $8BCA3F |
  LDA.W #$FFEC                              ; $8BCA41 |
  JSL.L CODE_FL_8CFC76                      ; $8BCA44 |
  LDA.W #$FFCE                              ; $8BCA48 |
  CLC                                       ; $8BCA4B |
  ADC.B $30,X                               ; $8BCA4C |
  JSL.L CODE_FL_8CFC9E                      ; $8BCA4E |
  RTL                                       ; $8BCA52 |

CODE_8BCA53:
  LDA.W #$000C                              ; $8BCA53 |
  JSL.L push_sound_queue                    ; $8BCA56 |
  STZ.B $32,X                               ; $8BCA5A |
  LDA.W #$0008                              ; $8BCA5C |
  STA.B $38,X                               ; $8BCA5F |
  LDY.B $3C,X                               ; $8BCA61 |
  LDA.W CODE_00C7B5,Y                       ; $8BCA63 |
  LDY.B $3A,X                               ; $8BCA66 |
  STA.W $001A,Y                             ; $8BCA68 |
  LDA.W #$0001                              ; $8BCA6B |
  STA.B $1A,X                               ; $8BCA6E |
  RTL                                       ; $8BCA70 |

CODE_8BCA71:
  JSL.L CODE_FL_85A9BF                      ; $8BCA71 |
  JSL.L CODE_FL_8CFAF3                      ; $8BCA75 |
  LDY.W #$0030                              ; $8BCA79 |
  JSL.L CODE_FL_808993                      ; $8BCA7C |
  LDY.B $3C,X                               ; $8BCA80 |
  LDA.W LOOSE_OP_00C7B7,Y                   ; $8BCA82 |
  LDY.B $3A,X                               ; $8BCA85 |
  STA.W $001A,Y                             ; $8BCA87 |
  STZ.W $1C8E                               ; $8BCA8A |
  INC.B $1A,X                               ; $8BCA8D |

CODE_8BCA8F:
  DEC.W $1C8E                               ; $8BCA8F |
  BPL CODE_8BCA9E                           ; $8BCA92 |
  STA.W $1C8E                               ; $8BCA94 |
  LDA.W #$0021                              ; $8BCA97 |
  JSL.L push_sound_queue                    ; $8BCA9A |

CODE_8BCA9E:
  LDA.B $42                                 ; $8BCA9E |
  AND.W #$0003                              ; $8BCAA0 |
  BNE CODE_8BCABA                           ; $8BCAA3 |
  LDA.W #$0073                              ; $8BCAA5 |
  JSL.L CODE_FL_86C9C5                      ; $8BCAA8 |
  BCS CODE_8BCABA                           ; $8BCAAC |
  LDA.W #$FA00                              ; $8BCAAE |
  STA.W $0028,Y                             ; $8BCAB1 |
  LDA.W #$1898                              ; $8BCAB4 |
  STA.W $0004,Y                             ; $8BCAB7 |

CODE_8BCABA:
  LDY.B $3A,X                               ; $8BCABA |
  LDA.W #$FFEE                              ; $8BCABC |
  JSL.L CODE_FL_8CFC76                      ; $8BCABF |
  LDA.W #$FFE0                              ; $8BCAC3 |
  JSL.L CODE_FL_8CFC9E                      ; $8BCAC6 |
  LDY.B $3A,X                               ; $8BCACA |
  LDA.W $001A,Y                             ; $8BCACC |
  LDY.B $3C,X                               ; $8BCACF |
  CMP.W PTR16_00C7B9,Y                      ; $8BCAD1 |
  BMI CODE_8BCADA                           ; $8BCAD4 |
  JML.L CODE_FL_86CA2D                      ; $8BCAD6 |

CODE_8BCADA:
  RTL                                       ; $8BCADA |

CODE_8BCADB:
  LDA.W #$0011                              ; $8BCADB |
  STA.B $92                                 ; $8BCADE |
  LDA.W #$0200                              ; $8BCAE0 |
  STA.W $1672                               ; $8BCAE3 |
  JML.L CODE_FL_86CA2D                      ; $8BCAE6 |

CODE_8BCAEA:
  LDA.W $1CE4                               ; $8BCAEA |
  CLC                                       ; $8BCAED |
  ADC.B $44,X                               ; $8BCAEE |
  STA.B $44,X                               ; $8BCAF0 |
  CMP.W #$01FF                              ; $8BCAF2 |
  BMI CODE_8BCB04                           ; $8BCAF5 |
  LDA.B $E4                                 ; $8BCAF7 |
  BNE CODE_8BCB02                           ; $8BCAF9 |
  LDA.W #$000A                              ; $8BCAFB |
  JSL.L push_sound_queue                    ; $8BCAFE |

CODE_8BCB02:
  STZ.B $44,X                               ; $8BCB02 |

CODE_8BCB04:
  JSL.L CODE_FL_85F885                      ; $8BCB04 |
  JSR.W CODE_FN_8BCF54                      ; $8BCB08 |
  JSR.W CODE_FN_8BCF98                      ; $8BCB0B |
  JSL.L CODE_FL_8CFD8F                      ; $8BCB0E |
  PHX                                       ; $8BCB12 |
  ASL A                                     ; $8BCB13 |
  TAX                                       ; $8BCB14 |
  LDA.L PTR16_8BCB1F,X                      ; $8BCB15 |
  PLX                                       ; $8BCB19 |
  STA.B $00                                 ; $8BCB1A |
  JMP.W ($0000)                             ; $8BCB1C |

PTR16_8BCB1F:
  dw CODE_8BCB55                            ; $8BCB1F |
  dw CODE_8BCBBD                            ; $8BCB21 |
  dw CODE_8BCBC0                            ; $8BCB23 |
  dw CODE_8BCBD9                            ; $8BCB25 |
  dw CODE_8BCBDA                            ; $8BCB27 |
  dw CODE_JP_8BCC1F                         ; $8BCB29 |
  dw CODE_8BCC44                            ; $8BCB2B |
  dw CODE_8BCC74                            ; $8BCB2D |
  dw CODE_8BCCD0                            ; $8BCB2F |
  dw CODE_8BCCF2                            ; $8BCB31 |
  dw CODE_8BCD0C                            ; $8BCB33 |
  dw CODE_8BCD13                            ; $8BCB35 |
  dw CODE_8BCD1F                            ; $8BCB37 |
  dw CODE_8BCD45                            ; $8BCB39 |
  dw CODE_8BCD87                            ; $8BCB3B |
  dw CODE_8BCD9D                            ; $8BCB3D |
  dw CODE_8BCDB0                            ; $8BCB3F |
  dw CODE_8BCDBE                            ; $8BCB41 |
  dw CODE_8BCDE3                            ; $8BCB43 |
  dw CODE_8BCE14                            ; $8BCB45 |
  dw CODE_8BCE24                            ; $8BCB47 |
  dw CODE_8BCCD0                            ; $8BCB49 |
  dw CODE_8BCE3D                            ; $8BCB4B |
  dw CODE_8BCE6D                            ; $8BCB4D |
  dw CODE_8BCE9B                            ; $8BCB4F |
  dw CODE_8BCED4                            ; $8BCB51 |
  dw CODE_8BCF09                            ; $8BCB53 |

CODE_8BCB55:
  STZ.W $1CE8                               ; $8BCB55 |
  LDA.B $09,X                               ; $8BCB58 |
  SEC                                       ; $8BCB5A |
  SBC.W #$0030                              ; $8BCB5B |
  STA.B $09,X                               ; $8BCB5E |
  LDA.B $0D,X                               ; $8BCB60 |
  SEC                                       ; $8BCB62 |
  SBC.W #$0010                              ; $8BCB63 |
  STA.B $0D,X                               ; $8BCB66 |
  JSL.L CODE_FL_8CFF1E                      ; $8BCB68 |
  JSL.L CODE_FL_86C63F                      ; $8BCB6C |
  LDA.W #$8000                              ; $8BCB70 |
  STA.B $22,X                               ; $8BCB73 |
  LDA.W #$1C8E                              ; $8BCB75 |
  STA.B $3A,X                               ; $8BCB78 |
  STZ.B $4A,X                               ; $8BCB7A |
  LDA.B $4E,X                               ; $8BCB7C |
  JSL.L CODE_FL_8CFCA5                      ; $8BCB7E |
  STY.B $3C,X                               ; $8BCB82 |
  LDA.W #$00C0                              ; $8BCB84 |
  STA.B $3E,X                               ; $8BCB87 |
  LDA.W #$0002                              ; $8BCB89 |
  STA.B $40,X                               ; $8BCB8C |
  STZ.W $1CE2                               ; $8BCB8E |
  LDA.W #$0008                              ; $8BCB91 |
  STA.W $1CE4                               ; $8BCB94 |
  STZ.W $1CDE                               ; $8BCB97 |
  LDA.W #$0080                              ; $8BCB9A |
  STA.W $1CE0                               ; $8BCB9D |
  LDA.W #$0005                              ; $8BCBA0 |
  STA.B $36,X                               ; $8BCBA3 |
  JSL.L CODE_FL_85A9EF                      ; $8BCBA5 |
  JSL.L CODE_FL_85A9B7                      ; $8BCBA9 |
  LDA.W #$0020                              ; $8BCBAD |
  STA.B $42,X                               ; $8BCBB0 |
  LDA.W #$351E                              ; $8BCBB2 |
  STA.B $00,X                               ; $8BCBB5 |
  LDA.W #$0080                              ; $8BCBB7 |
  STA.B $11,X                               ; $8BCBBA |
  RTL                                       ; $8BCBBC |

CODE_8BCBBD:
  INC.B $1A,X                               ; $8BCBBD |
  RTL                                       ; $8BCBBF |

CODE_8BCBC0:
  LDA.B $11,X                               ; $8BCBC0 |
  BPL CODE_8BCBD8                           ; $8BCBC2 |
  LDA.W #$000D                              ; $8BCBC4 |
  JSL.L push_sound_queue                    ; $8BCBC7 |
  STZ.B $11,X                               ; $8BCBCB |
  STZ.B $2A,X                               ; $8BCBCD |
  INC.B $1A,X                               ; $8BCBCF |
  LDA.W #$0002                              ; $8BCBD1 |
  JSL.L CODE_FL_B3FE45                      ; $8BCBD4 |

CODE_8BCBD8:
  RTL                                       ; $8BCBD8 |

CODE_8BCBD9:
  RTL                                       ; $8BCBD9 |

CODE_8BCBDA:
  LDA.W #$3000                              ; $8BCBDA |
  LDY.W #$0004                              ; $8BCBDD |
  JSR.W CODE_FN_8BCFAA                      ; $8BCBE0 |
  LDA.W #$0003                              ; $8BCBE3 |
  LDY.W #$0003                              ; $8BCBE6 |
  JSR.W CODE_FN_8BCF81                      ; $8BCBE9 |
  JSL.L CODE_FL_8BCC11                      ; $8BCBEC |
  DEC.W $1CE0                               ; $8BCBF0 |
  BMI CODE_8BCBF6                           ; $8BCBF3 |
  RTL                                       ; $8BCBF5 |

CODE_8BCBF6:
  LDA.W $1CDE                               ; $8BCBF6 |
  INC A                                     ; $8BCBF9 |
  AND.W #$0007                              ; $8BCBFA |
  STA.W $1CDE                               ; $8BCBFD |
  ASL A                                     ; $8BCC00 |
  ASL A                                     ; $8BCC01 |
  TAY                                       ; $8BCC02 |
  LDA.W LOOSE_OP_00C915,Y                   ; $8BCC03 |
  STA.B $00                                 ; $8BCC06 |
  LDA.W CODE_00C917,Y                       ; $8BCC08 |
  STA.W $1CE0                               ; $8BCC0B |
  JMP.W ($0000)                             ; $8BCC0E |

CODE_FL_8BCC11:
  LDA.W #$0001                              ; $8BCC11 |
  JSR.W CODE_FN_8BCF71                      ; $8BCC14 |
  STZ.B $20,X                               ; $8BCC17 |
  LDA.W #$351E                              ; $8BCC19 |
  STA.B $00,X                               ; $8BCC1C |
  RTL                                       ; $8BCC1E |

CODE_JP_8BCC1F:
  LDA.B $22,X                               ; $8BCC1F |
  ORA.W #$0008                              ; $8BCC21 |
  STA.B $22,X                               ; $8BCC24 |
  LDA.B $34,X                               ; $8BCC26 |
  ORA.W #$2000                              ; $8BCC28 |
  STA.B $34,X                               ; $8BCC2B |
  LDA.W #$0002                              ; $8BCC2D |
  JSR.W CODE_FN_8BCF71                      ; $8BCC30 |
  LDA.W #$0080                              ; $8BCC33 |
  STA.B $2C,X                               ; $8BCC36 |
  LDA.W #$3014                              ; $8BCC38 |
  JSL.L CODE_FL_86CAEE                      ; $8BCC3B |
  LDA.W #$0006                              ; $8BCC3F |
  STA.B $1A,X                               ; $8BCC42 |

CODE_8BCC44:
  TDC                                       ; $8BCC44 |
  LDY.W #$0001                              ; $8BCC45 |
  JSR.W CODE_FN_8BCF81                      ; $8BCC48 |
  LDA.B $20,X                               ; $8BCC4B |
  BEQ CODE_8BCC50                           ; $8BCC4D |
  RTL                                       ; $8BCC4F |

CODE_8BCC50:
  INC.B $4A,X                               ; $8BCC50 |
  LDA.W #$3015                              ; $8BCC52 |
  JSL.L CODE_FL_86CAEE                      ; $8BCC55 |
  LDA.B $86                                 ; $8BCC59 |
  AND.W #$0007                              ; $8BCC5B |
  SEC                                       ; $8BCC5E |
  SBC.W #$0004                              ; $8BCC5F |
  BNE CODE_8BCC67                           ; $8BCC62 |
  LDA.W #$0001                              ; $8BCC64 |

CODE_8BCC67:
  AND.W #$00FF                              ; $8BCC67 |
  XBA                                       ; $8BCC6A |
  STA.B $26,X                               ; $8BCC6B |
  LDA.W #$FD00                              ; $8BCC6D |
  STA.B $28,X                               ; $8BCC70 |
  INC.B $1A,X                               ; $8BCC72 |

CODE_8BCC74:
  JSL.L CODE_FL_8BCF2B                      ; $8BCC74 |
  LDA.B $09,X                               ; $8BCC78 |
  CMP.W #$0020                              ; $8BCC7A |
  BPL CODE_8BCC84                           ; $8BCC7D |
  LDY.W #$0300                              ; $8BCC7F |
  STY.B $26,X                               ; $8BCC82 |

CODE_8BCC84:
  CMP.W #$00E0                              ; $8BCC84 |
  BMI CODE_8BCC8E                           ; $8BCC87 |
  LDY.W #$FD00                              ; $8BCC89 |
  STY.B $26,X                               ; $8BCC8C |

CODE_8BCC8E:
  LDA.B $0D,X                               ; $8BCC8E |
  CMP.W #$0020                              ; $8BCC90 |
  BPL CODE_8BCC9A                           ; $8BCC93 |
  LDY.W #$0300                              ; $8BCC95 |
  STY.B $28,X                               ; $8BCC98 |

CODE_8BCC9A:
  CMP.W #$00B8                              ; $8BCC9A |
  BMI CODE_8BCCA4                           ; $8BCC9D |
  LDY.W #$FD00                              ; $8BCC9F |
  STY.B $28,X                               ; $8BCCA2 |

CODE_8BCCA4:
  JSL.L CODE_FL_86C70D                      ; $8BCCA4 |
  LDA.B $09,X                               ; $8BCCA8 |
  CMP.W #$0050                              ; $8BCCAA |
  BMI CODE_8BCCC0                           ; $8BCCAD |
  CMP.W #$00B0                              ; $8BCCAF |
  BPL CODE_8BCCC0                           ; $8BCCB2 |
  LDA.B $0D,X                               ; $8BCCB4 |
  CMP.W #$0050                              ; $8BCCB6 |
  BMI CODE_8BCCC0                           ; $8BCCB9 |
  CMP.W #$0070                              ; $8BCCBB |
  BMI CODE_8BCCC1                           ; $8BCCBE |

CODE_8BCCC0:
  RTL                                       ; $8BCCC0 |

CODE_8BCCC1:
  JSL.L CODE_FL_8BCC11                      ; $8BCCC1 |
  LDA.W #$0010                              ; $8BCCC5 |
  STA.B $2C,X                               ; $8BCCC8 |
  STZ.B $26,X                               ; $8BCCCA |
  STZ.B $28,X                               ; $8BCCCC |
  INC.B $1A,X                               ; $8BCCCE |

CODE_8BCCD0:
  JSL.L CODE_FL_86C70D                      ; $8BCCD0 |
  LDA.B $22,X                               ; $8BCCD4 |
  AND.W #$FFF7                              ; $8BCCD6 |
  STA.B $22,X                               ; $8BCCD9 |
  LDA.B $34,X                               ; $8BCCDB |
  AND.W #$DFFF                              ; $8BCCDD |
  STA.B $34,X                               ; $8BCCE0 |
  STZ.B $4A,X                               ; $8BCCE2 |
  LDA.B $86                                 ; $8BCCE4 |
  LSR A                                     ; $8BCCE6 |
  BCS CODE_8BCCEC                           ; $8BCCE7 |
  JMP.W CODE_JP_8BCF7B                      ; $8BCCE9 |

CODE_8BCCEC:
  LDA.W #$0009                              ; $8BCCEC |
  STA.B $1A,X                               ; $8BCCEF |
  RTL                                       ; $8BCCF1 |

CODE_8BCCF2:
  LDA.W #$0006                              ; $8BCCF2 |
  JSR.W CODE_FN_8BCF71                      ; $8BCCF5 |
  LDA.W #$0100                              ; $8BCCF8 |
  STA.B $2C,X                               ; $8BCCFB |
  STZ.W $1CE2                               ; $8BCCFD |
  STZ.W $1CE4                               ; $8BCD00 |
  LDA.W #$3016                              ; $8BCD03 |
  JSL.L CODE_FL_86CAEE                      ; $8BCD06 |
  INC.B $1A,X                               ; $8BCD0A |

CODE_8BCD0C:
  JSL.L CODE_FL_86C70D                      ; $8BCD0C |
  JMP.W CODE_JP_8BCF7B                      ; $8BCD10 |

CODE_8BCD13:
  JSL.L CODE_FL_8BCC11                      ; $8BCD13 |
  LDA.W #$0002                              ; $8BCD17 |
  LDA.W #$000C                              ; $8BCD1A |
  STA.B $1A,X                               ; $8BCD1D |

CODE_8BCD1F:
  LDA.W #$0003                              ; $8BCD1F |
  LDY.W #$0004                              ; $8BCD22 |
  JSR.W CODE_FN_8BCF81                      ; $8BCD25 |
  BNE CODE_8BCD44                           ; $8BCD28 |
  LDA.W #$0004                              ; $8BCD2A |
  JSR.W CODE_FN_8BCF71                      ; $8BCD2D |
  LDA.W #$3012                              ; $8BCD30 |
  JSL.L CODE_FL_86CAEE                      ; $8BCD33 |
  LDA.W #$00C0                              ; $8BCD37 |
  STA.B $2C,X                               ; $8BCD3A |
  JSL.L CODE_FL_86C444                      ; $8BCD3C |
  LDX.B $FC                                 ; $8BCD40 |
  INC.B $1A,X                               ; $8BCD42 |

CODE_8BCD44:
  RTL                                       ; $8BCD44 |

CODE_8BCD45:
  LDA.W #$4000                              ; $8BCD45 |
  LDY.W #$0018                              ; $8BCD48 |
  JSR.W CODE_FN_8BCFAA                      ; $8BCD4B |
  LDA.B $2C,X                               ; $8BCD4E |
  CMP.W #$0080                              ; $8BCD50 |
  BEQ CODE_8BCD5A                           ; $8BCD53 |
  CMP.W #$0040                              ; $8BCD55 |
  BNE CODE_8BCD5C                           ; $8BCD58 |

CODE_8BCD5A:
  DEC.B $40,X                               ; $8BCD5A |

CODE_8BCD5C:
  JSL.L CODE_FL_86C70D                      ; $8BCD5C |
  LDA.B ($48,X)                             ; $8BCD60 |
  TAY                                       ; $8BCD62 |
  JSL.L CODE_FL_8AB41C                      ; $8BCD63 |
  LDA.B $3E,X                               ; $8BCD67 |
  LSR A                                     ; $8BCD69 |
  LSR A                                     ; $8BCD6A |
  LSR A                                     ; $8BCD6B |
  LSR A                                     ; $8BCD6C |
  CMP.B $00                                 ; $8BCD6D |
  BEQ CODE_8BCD72                           ; $8BCD6F |
  RTL                                       ; $8BCD71 |

CODE_8BCD72:
  LDA.W #$0020                              ; $8BCD72 |
  JSL.L CODE_FL_8089BD                      ; $8BCD75 |
  JSL.L CODE_FL_8BCC11                      ; $8BCD79 |
  STZ.W $1CE2                               ; $8BCD7D |
  STZ.W $1CE4                               ; $8BCD80 |
  STZ.B $44,X                               ; $8BCD83 |
  INC.B $1A,X                               ; $8BCD85 |

CODE_8BCD87:
  LDA.B $42                                 ; $8BCD87 |
  LSR A                                     ; $8BCD89 |
  BCC CODE_8BCD9C                           ; $8BCD8A |
  INC.B $40,X                               ; $8BCD8C |
  LDA.B $40,X                               ; $8BCD8E |
  CMP.W #$0014                              ; $8BCD90 |
  BMI CODE_8BCD9C                           ; $8BCD93 |
  LDA.W #$0040                              ; $8BCD95 |
  STA.B $2C,X                               ; $8BCD98 |
  INC.B $1A,X                               ; $8BCD9A |

CODE_8BCD9C:
  RTL                                       ; $8BCD9C |

CODE_8BCD9D:
  JSL.L CODE_FL_86C70D                      ; $8BCD9D |
  LDA.W #$0003                              ; $8BCDA1 |
  LDY.W #$0001                              ; $8BCDA4 |
  JSR.W CODE_FN_8BCF81                      ; $8BCDA7 |
  BNE CODE_8BCDAF                           ; $8BCDAA |
  JMP.W CODE_JP_8BCF7B                      ; $8BCDAC |

CODE_8BCDAF:
  RTL                                       ; $8BCDAF |

CODE_8BCDB0:
  STZ.W $1CE4                               ; $8BCDB0 |
  STZ.B $44,X                               ; $8BCDB3 |
  JSL.L CODE_FL_8BCC11                      ; $8BCDB5 |
  LDA.W #$0011                              ; $8BCDB9 |
  STA.B $1A,X                               ; $8BCDBC |

CODE_8BCDBE:
  LDA.W #$0003                              ; $8BCDBE |
  LDY.W #$0004                              ; $8BCDC1 |
  JSR.W CODE_FN_8BCF81                      ; $8BCDC4 |
  BNE CODE_8BCDE2                           ; $8BCDC7 |
  LDA.W #$0004                              ; $8BCDC9 |
  JSR.W CODE_FN_8BCF71                      ; $8BCDCC |
  LDA.W #$3012                              ; $8BCDCF |
  JSL.L CODE_FL_86CAEE                      ; $8BCDD2 |
  LDA.W #$00C0                              ; $8BCDD6 |
  STA.B $2C,X                               ; $8BCDD9 |
  LDA.W #$0001                              ; $8BCDDB |
  STA.B $46,X                               ; $8BCDDE |
  INC.B $1A,X                               ; $8BCDE0 |

CODE_8BCDE2:
  RTL                                       ; $8BCDE2 |

CODE_8BCDE3:
  LDA.B $2C,X                               ; $8BCDE3 |
  CMP.W #$0030                              ; $8BCDE5 |
  BNE CODE_8BCDF4                           ; $8BCDE8 |
  LDA.B $46,X                               ; $8BCDEA |
  ORA.W #$8000                              ; $8BCDEC |
  STA.B $46,X                               ; $8BCDEF |
  JSR.W CODE_FN_8BCF45                      ; $8BCDF1 |

CODE_8BCDF4:
  LDA.W #$4000                              ; $8BCDF4 |
  LDY.W #$0006                              ; $8BCDF7 |
  JSR.W CODE_FN_8BCFAA                      ; $8BCDFA |
  JSL.L CODE_FL_86C70D                      ; $8BCDFD |
  LDA.W #$0008                              ; $8BCE01 |
  JSR.W CODE_FN_8BCF71                      ; $8BCE04 |
  LDA.W #$0006                              ; $8BCE07 |
  STA.W $1CE4                               ; $8BCE0A |
  LDA.W #$0200                              ; $8BCE0D |
  STA.B $2C,X                               ; $8BCE10 |
  INC.B $1A,X                               ; $8BCE12 |

CODE_8BCE14:
  LDA.W #$000F                              ; $8BCE14 |
  LDY.W #$0014                              ; $8BCE17 |
  JSR.W CODE_FN_8BCF81                      ; $8BCE1A |
  JSL.L CODE_FL_86C70D                      ; $8BCE1D |
  INC.B $1A,X                               ; $8BCE21 |
  RTL                                       ; $8BCE23 |

CODE_8BCE24:
  LDA.W #$0003                              ; $8BCE24 |
  LDY.W #$0002                              ; $8BCE27 |
  JSR.W CODE_FN_8BCF81                      ; $8BCE2A |
  BNE CODE_8BCE3C                           ; $8BCE2D |
  JSL.L CODE_FL_8BCC11                      ; $8BCE2F |
  LDA.W #$0010                              ; $8BCE33 |
  STA.B $2C,X                               ; $8BCE36 |
  STZ.B $46,X                               ; $8BCE38 |
  INC.B $1A,X                               ; $8BCE3A |

CODE_8BCE3C:
  RTL                                       ; $8BCE3C |

CODE_8BCE3D:
  STZ.B $26,X                               ; $8BCE3D |
  STZ.B $28,X                               ; $8BCE3F |
  STZ.B $4A,X                               ; $8BCE41 |
  STZ.B $46,X                               ; $8BCE43 |
  LDA.W #$000A                              ; $8BCE45 |
  JSR.W CODE_FN_8BCF71                      ; $8BCE48 |
  STZ.B $20,X                               ; $8BCE4B |
  LDA.W #$351E                              ; $8BCE4D |
  STA.B $00,X                               ; $8BCE50 |
  LDA.W #$0018                              ; $8BCE52 |
  STA.B $2C,X                               ; $8BCE55 |
  STZ.W $1CE2                               ; $8BCE57 |
  STZ.W $1CE4                               ; $8BCE5A |
  LDA.W #$000C                              ; $8BCE5D |
  JSL.L push_sound_queue                    ; $8BCE60 |
  LDA.B $34,X                               ; $8BCE64 |
  ORA.W #$2000                              ; $8BCE66 |
  STA.B $34,X                               ; $8BCE69 |
  INC.B $1A,X                               ; $8BCE6B |

CODE_8BCE6D:
  LDA.B $2C,X                               ; $8BCE6D |
  CMP.W #$001C                              ; $8BCE6F |
  BNE CODE_8BCE79                           ; $8BCE72 |
  LDA.W $1CE8                               ; $8BCE74 |
  BNE CODE_8BCE86                           ; $8BCE77 |

CODE_8BCE79:
  LDA.W #$0001                              ; $8BCE79 |
  JSL.L CODE_FL_8CFD0B                      ; $8BCE7C |
  JSL.L CODE_FL_86C70D                      ; $8BCE80 |
  BRA CODE_8BCE8B                           ; $8BCE84 |

CODE_8BCE86:
  STZ.W $1CE8                               ; $8BCE86 |
  BRA CODE_8BCE8E                           ; $8BCE89 |

CODE_8BCE8B:
  INC.W $1CE8                               ; $8BCE8B |

CODE_8BCE8E:
  LDA.W #$0001                              ; $8BCE8E |
  JSL.L CODE_FL_8CFD3F                      ; $8BCE91 |
  STZ.W $1CE0                               ; $8BCE95 |
  JMP.W CODE_JP_8BCC1F                      ; $8BCE98 |

CODE_8BCE9B:
  INC.B $76                                 ; $8BCE9B |
  STZ.B $26,X                               ; $8BCE9D |
  STZ.B $28,X                               ; $8BCE9F |
  LDA.W #$8000                              ; $8BCEA1 |
  STA.B $4A,X                               ; $8BCEA4 |
  STZ.B $46,X                               ; $8BCEA6 |
  STZ.B $20,X                               ; $8BCEA8 |
  LDA.W #$351E                              ; $8BCEAA |
  STA.B $00,X                               ; $8BCEAD |
  LDA.W #$000D                              ; $8BCEAF |
  JSR.W CODE_FN_8BCF71                      ; $8BCEB2 |
  JSL.L CODE_FL_85A9F7                      ; $8BCEB5 |
  JSL.L CODE_FL_85A9BF                      ; $8BCEB9 |
  LDA.W #$0002                              ; $8BCEBD |
  JSL.L CODE_FL_B3FE45                      ; $8BCEC0 |
  JSL.L CODE_FL_8CFAF3                      ; $8BCEC4 |
  LDY.W #$0030                              ; $8BCEC8 |
  JSL.L CODE_FL_808993                      ; $8BCECB |
  STZ.W $1CE4                               ; $8BCECF |
  INC.B $1A,X                               ; $8BCED2 |

CODE_8BCED4:
  DEC.W $1CE6                               ; $8BCED4 |
  BPL CODE_8BCEEC                           ; $8BCED7 |
  LDA.B $86                                 ; $8BCED9 |
  AND.W #$0007                              ; $8BCEDB |
  CLC                                       ; $8BCEDE |
  ADC.W #$0008                              ; $8BCEDF |
  STA.W $1CE6                               ; $8BCEE2 |
  LDA.W #$001B                              ; $8BCEE5 |
  JSL.L push_sound_queue                    ; $8BCEE8 |

CODE_8BCEEC:
  LDA.B $42                                 ; $8BCEEC |
  AND.W #$0007                              ; $8BCEEE |
  BNE CODE_8BCEF7                           ; $8BCEF1 |
  JSL.L CODE_FL_8CFBAE                      ; $8BCEF3 |

CODE_8BCEF7:
  LDA.W #$0001                              ; $8BCEF7 |
  JSL.L CODE_FL_8CFD0B                      ; $8BCEFA |
  JSL.L CODE_FL_86C393                      ; $8BCEFE |
  LDA.B $4A,X                               ; $8BCF02 |
  BNE CODE_8BCF08                           ; $8BCF04 |
  INC.B $1A,X                               ; $8BCF06 |

CODE_8BCF08:
  RTL                                       ; $8BCF08 |

CODE_8BCF09:
  LDA.W #$000D                              ; $8BCF09 |
  JSL.L push_sound_queue                    ; $8BCF0C |
  JSL.L CODE_FL_8CFAF3                      ; $8BCF10 |
  LDA.W #$0002                              ; $8BCF14 |
  JSL.L CODE_FL_B3FE45                      ; $8BCF17 |
  INC.W $0E5A                               ; $8BCF1B |
  LDA.B $3C,X                               ; $8BCF1E |
  TAX                                       ; $8BCF20 |
  JSL.L CODE_FL_86CA2D                      ; $8BCF21 |
  LDX.B $FC                                 ; $8BCF25 |
  JML.L CODE_FL_86CA2D                      ; $8BCF27 |

CODE_FL_8BCF2B:
  LDA.B $42                                 ; $8BCF2B |
  AND.W #$0007                              ; $8BCF2D |
  BNE CODE_8BCF44                           ; $8BCF30 |
  LDY.W #$002F                              ; $8BCF32 |
  LDA.B $42                                 ; $8BCF35 |
  BIT.W #$0008                              ; $8BCF37 |
  BNE CODE_8BCF3F                           ; $8BCF3A |
  LDY.W #$0030                              ; $8BCF3C |

CODE_8BCF3F:
  TYA                                       ; $8BCF3F |
  JSL.L push_sound_queue                    ; $8BCF40 |

CODE_8BCF44:
  RTL                                       ; $8BCF44 |

CODE_FN_8BCF45:
  LDA.W #$000A                              ; $8BCF45 |
  JSL.L CODE_FL_8CFCA5                      ; $8BCF48 |
  LDA.W #$00BA                              ; $8BCF4C |
  JSL.L CODE_FL_86C9E0                      ; $8BCF4F |
  RTS                                       ; $8BCF53 |

CODE_FN_8BCF54:
  LDY.B $3A,X                               ; $8BCF54 |
  LDA.B $09,X                               ; $8BCF56 |
  STA.W $0000,Y                             ; $8BCF58 |
  LDA.B $0D,X                               ; $8BCF5B |
  DEC A                                     ; $8BCF5D |
  STA.W $0002,Y                             ; $8BCF5E |
  TYA                                       ; $8BCF61 |
  CLC                                       ; $8BCF62 |
  ADC.W #$0004                              ; $8BCF63 |
  CMP.W #$1CDE                              ; $8BCF66 |
  BMI CODE_8BCF6E                           ; $8BCF69 |
  LDA.W #$1C8E                              ; $8BCF6B |

CODE_8BCF6E:
  STA.B $3A,X                               ; $8BCF6E |
  RTS                                       ; $8BCF70 |

CODE_FN_8BCF71:
  LDY.B $3C,X                               ; $8BCF71 |
  STA.W $001A,Y                             ; $8BCF73 |
  TDC                                       ; $8BCF76 |
  STA.W $0020,Y                             ; $8BCF77 |
  RTS                                       ; $8BCF7A |

CODE_JP_8BCF7B:
  LDA.W #$0004                              ; $8BCF7B |
  STA.B $1A,X                               ; $8BCF7E |
  RTL                                       ; $8BCF80 |

CODE_FN_8BCF81:
  AND.B $42                                 ; $8BCF81 |
  BNE CODE_8BCF92                           ; $8BCF83 |
  TYA                                       ; $8BCF85 |
  CMP.B $40,X                               ; $8BCF86 |
  BEQ CODE_8BCF96                           ; $8BCF88 |
  BPL CODE_8BCF90                           ; $8BCF8A |
  DEC.B $40,X                               ; $8BCF8C |
  BRA CODE_8BCF92                           ; $8BCF8E |

CODE_8BCF90:
  INC.B $40,X                               ; $8BCF90 |

CODE_8BCF92:
  LDA.W #$0001                              ; $8BCF92 |
  RTS                                       ; $8BCF95 |

CODE_8BCF96:
  TDC                                       ; $8BCF96 |
  RTS                                       ; $8BCF97 |

CODE_FN_8BCF98:
  LDA.W $1CE4                               ; $8BCF98 |
  CLC                                       ; $8BCF9B |
  ADC.B $3E,X                               ; $8BCF9C |
  BPL CODE_8BCFA4                           ; $8BCF9E |
  CLC                                       ; $8BCFA0 |
  ADC.W #$0200                              ; $8BCFA1 |

CODE_8BCFA4:
  AND.W #$01FF                              ; $8BCFA4 |
  STA.B $3E,X                               ; $8BCFA7 |
  RTS                                       ; $8BCFA9 |

CODE_FN_8BCFAA:
  CLC                                       ; $8BCFAA |
  ADC.W $1CE2                               ; $8BCFAB |
  STA.W $1CE2                               ; $8BCFAE |
  LDA.W $1CE4                               ; $8BCFB1 |
  ADC.W #$0000                              ; $8BCFB4 |
  STA.W $1CE4                               ; $8BCFB7 |
  TYA                                       ; $8BCFBA |
  CMP.W $1CE4                               ; $8BCFBB |
  BPL CODE_8BCFC6                           ; $8BCFBE |
  STA.W $1CE4                               ; $8BCFC0 |
  BIT.W #$FFFF                              ; $8BCFC3 |

CODE_8BCFC6:
  RTS                                       ; $8BCFC6 |

CODE_8BCFC7:
  JSL.L CODE_FL_8CFD8F                      ; $8BCFC7 |
  PHX                                       ; $8BCFCB |
  ASL A                                     ; $8BCFCC |
  TAX                                       ; $8BCFCD |
  LDA.L PTR16_8BCFD8,X                      ; $8BCFCE |
  PLX                                       ; $8BCFD2 |
  STA.B $00                                 ; $8BCFD3 |
  JMP.W ($0000)                             ; $8BCFD5 |

PTR16_8BCFD8:
  dw CODE_8BCFF4                            ; $8BCFD8 |
  dw CODE_8BD008                            ; $8BCFDA |
  dw CODE_8BD011                            ; $8BCFDC |
  dw CODE_8BD017                            ; $8BCFDE |
  dw CODE_8BD01B                            ; $8BCFE0 |
  dw CODE_8BD024                            ; $8BCFE2 |
  dw CODE_8BD028                            ; $8BCFE4 |
  dw CODE_8BD031                            ; $8BCFE6 |
  dw CODE_8BD035                            ; $8BCFE8 |
  dw CODE_8BD03E                            ; $8BCFEA |
  dw CODE_8BD05B                            ; $8BCFEC |
  dw CODE_8BD06E                            ; $8BCFEE |
  dw CODE_8BD07A                            ; $8BCFF0 |
  dw CODE_8BD083                            ; $8BCFF2 |

CODE_8BCFF4:
  LDA.W #$8000                              ; $8BCFF4 |
  STA.B $22,X                               ; $8BCFF7 |
  LDA.B $4E,X                               ; $8BCFF9 |
  JSL.L CODE_FL_8CFCA5                      ; $8BCFFB |
  STY.B $3A,X                               ; $8BCFFF |
  LDA.W #$0040                              ; $8BD001 |
  STA.B $4C,X                               ; $8BD004 |
  INC.B $1A,X                               ; $8BD006 |

CODE_8BD008:
  LDA.W #$37CC                              ; $8BD008 |
  STA.B $00,X                               ; $8BD00B |
  JSR.W CODE_FN_8BD093                      ; $8BD00D |
  RTL                                       ; $8BD010 |

CODE_8BD011:
  STZ.B $20,X                               ; $8BD011 |
  STZ.B $00,X                               ; $8BD013 |
  INC.B $1A,X                               ; $8BD015 |

CODE_8BD017:
  JSR.W CODE_FN_8BD093                      ; $8BD017 |
  RTL                                       ; $8BD01A |

CODE_8BD01B:
  LDA.W #$3017                              ; $8BD01B |
  JSL.L CODE_FL_86CAEE                      ; $8BD01E |
  INC.B $1A,X                               ; $8BD022 |

CODE_8BD024:
  JSR.W CODE_FN_8BD093                      ; $8BD024 |
  RTL                                       ; $8BD027 |

CODE_8BD028:
  LDA.W #$3019                              ; $8BD028 |
  JSL.L CODE_FL_86CAEE                      ; $8BD02B |
  INC.B $1A,X                               ; $8BD02F |

CODE_8BD031:
  JSR.W CODE_FN_8BD093                      ; $8BD031 |
  RTL                                       ; $8BD034 |

CODE_8BD035:
  LDA.W #$3018                              ; $8BD035 |
  JSL.L CODE_FL_86CAEE                      ; $8BD038 |
  INC.B $1A,X                               ; $8BD03C |

CODE_8BD03E:
  JSR.W CODE_FN_8BD093                      ; $8BD03E |
  LDA.B $42                                 ; $8BD041 |
  AND.W #$0003                              ; $8BD043 |
  BNE CODE_8BD051                           ; $8BD046 |
  LDA.B $3C,X                               ; $8BD048 |
  INC A                                     ; $8BD04A |
  INC A                                     ; $8BD04B |
  AND.W #$0006                              ; $8BD04C |
  STA.B $3C,X                               ; $8BD04F |

CODE_8BD051:
  LDY.B $3C,X                               ; $8BD051 |
  LDA.W LOOSE_OP_00C935,Y                   ; $8BD053 |
  ADC.B $11,X                               ; $8BD056 |
  STA.B $11,X                               ; $8BD058 |
  RTL                                       ; $8BD05A |

CODE_8BD05B:
  LDA.W #$3848                              ; $8BD05B |
  STA.B $00,X                               ; $8BD05E |
  STZ.B $20,X                               ; $8BD060 |
  LDA.W #$001A                              ; $8BD062 |
  STA.B $11,X                               ; $8BD065 |
  LDA.W #$0500                              ; $8BD067 |
  STA.B $2A,X                               ; $8BD06A |
  INC.B $1A,X                               ; $8BD06C |

CODE_8BD06E:
  LDA.W #$001A                              ; $8BD06E |
  JSL.L CODE_FL_8CFCF1                      ; $8BD071 |
  BNE CODE_8BD079                           ; $8BD075 |
  INC.B $1A,X                               ; $8BD077 |

CODE_8BD079:
  RTL                                       ; $8BD079 |

CODE_8BD07A:
  JSR.W CODE_FN_8BD093                      ; $8BD07A |
  LDA.W #$001A                              ; $8BD07D |
  STA.B $11,X                               ; $8BD080 |
  RTL                                       ; $8BD082 |

CODE_8BD083:
  LDA.W #$3848                              ; $8BD083 |
  STA.B $00,X                               ; $8BD086 |
  STZ.B $20,X                               ; $8BD088 |
  JSR.W CODE_FN_8BD093                      ; $8BD08A |
  LDA.W #$001A                              ; $8BD08D |
  STA.B $11,X                               ; $8BD090 |
  RTL                                       ; $8BD092 |

CODE_FN_8BD093:
  LDY.B $3A,X                               ; $8BD093 |
  LDA.W $0009,Y                             ; $8BD095 |
  STA.B $09,X                               ; $8BD098 |
  LDA.W $000D,Y                             ; $8BD09A |
  INC A                                     ; $8BD09D |
  STA.B $0D,X                               ; $8BD09E |
  LDA.W $0011,Y                             ; $8BD0A0 |
  INC A                                     ; $8BD0A3 |
  STA.B $11,X                               ; $8BD0A4 |
  RTS                                       ; $8BD0A6 |

CODE_8BD0A7:
  LDA.B $46,X                               ; $8BD0A7 |
  BEQ CODE_8BD0AD                           ; $8BD0A9 |
  DEC.B $46,X                               ; $8BD0AB |

CODE_8BD0AD:
  JSL.L CODE_FL_85F885                      ; $8BD0AD |
  JSL.L CODE_FL_8CFD84                      ; $8BD0B1 |
  PHX                                       ; $8BD0B5 |
  ASL A                                     ; $8BD0B6 |
  TAX                                       ; $8BD0B7 |
  LDA.L PTR16_8BD0C2,X                      ; $8BD0B8 |
  PLX                                       ; $8BD0BC |
  STA.B $00                                 ; $8BD0BD |
  JMP.W ($0000)                             ; $8BD0BF |

PTR16_8BD0C2:
  dw CODE_8BD0D2                            ; $8BD0C2 |
  dw CODE_8BD0F8                            ; $8BD0C4 |
  dw CODE_8BD114                            ; $8BD0C6 |
  dw CODE_8BD132                            ; $8BD0C8 |
  dw CODE_8BD142                            ; $8BD0CA |
  dw CODE_8BD154                            ; $8BD0CC |
  dw CODE_8BD181                            ; $8BD0CE |
  dw CODE_8BD1A3                            ; $8BD0D0 |

CODE_8BD0D2:
  JSR.W CODE_FN_8BD290                      ; $8BD0D2 |
  LDA.W #$3856                              ; $8BD0D5 |
  STA.B $00,X                               ; $8BD0D8 |
  JSL.L CODE_FL_8CFF1E                      ; $8BD0DA |
  LDA.B $34,X                               ; $8BD0DE |
  ORA.W #$A000                              ; $8BD0E0 |
  STA.B $34,X                               ; $8BD0E3 |
  JSL.L CODE_FL_85A9EF                      ; $8BD0E5 |
  JSL.L CODE_FL_85A9B7                      ; $8BD0E9 |
  LDA.W #$0020                              ; $8BD0ED |
  STA.B $42,X                               ; $8BD0F0 |
  STZ.B $46,X                               ; $8BD0F2 |
  JML.L CODE_FL_86C63F                      ; $8BD0F4 |

CODE_8BD0F8:
  LDY.B $3A,X                               ; $8BD0F8 |
  LDA.W $004A,Y                             ; $8BD0FA |
  BEQ CODE_8BD104                           ; $8BD0FD |
  LDA.W #$0002                              ; $8BD0FF |
  STA.B $1A,X                               ; $8BD102 |

CODE_8BD104:
  JSL.L CODE_FL_8BD2AD                      ; $8BD104 |
  SEC                                       ; $8BD108 |
  SBC.W #$0010                              ; $8BD109 |
  STA.B $11,X                               ; $8BD10C |
  JSR.W CODE_FN_8BD1CA                      ; $8BD10E |
  JMP.W CODE_JP_8BD1E3                      ; $8BD111 |

CODE_8BD114:
  LDY.B $3A,X                               ; $8BD114 |
  LDA.W $004A,Y                             ; $8BD116 |
  BNE CODE_8BD120                           ; $8BD119 |
  LDA.W #$0001                              ; $8BD11B |
  STA.B $1A,X                               ; $8BD11E |

CODE_8BD120:
  JSL.L CODE_FL_8BD2E1                      ; $8BD120 |
  LDA.B $11,X                               ; $8BD124 |
  SEC                                       ; $8BD126 |
  SBC.W #$0010                              ; $8BD127 |
  STA.B $11,X                               ; $8BD12A |
  JSR.W CODE_FN_8BD1CA                      ; $8BD12C |
  JMP.W CODE_JP_8BD1E3                      ; $8BD12F |

CODE_8BD132:
  JSL.L CODE_FL_85A9F7                      ; $8BD132 |
  LDA.W #$0800                              ; $8BD136 |
  STA.B $2A,X                               ; $8BD139 |
  LDA.W #$0020                              ; $8BD13B |
  STA.B $2C,X                               ; $8BD13E |
  INC.B $1A,X                               ; $8BD140 |

CODE_8BD142:
  JSL.L CODE_FL_86C70D                      ; $8BD142 |
  LDA.W #$0100                              ; $8BD146 |
  STA.B $11,X                               ; $8BD149 |
  STZ.B $2A,X                               ; $8BD14B |
  LDA.W #$0080                              ; $8BD14D |
  STA.B $2C,X                               ; $8BD150 |
  INC.B $1A,X                               ; $8BD152 |

CODE_8BD154:
  LDY.B $3A,X                               ; $8BD154 |
  LDA.W $0009,Y                             ; $8BD156 |
  CMP.B $09,X                               ; $8BD159 |
  BEQ CODE_8BD165                           ; $8BD15B |
  BMI CODE_8BD163                           ; $8BD15D |
  INC.B $09,X                               ; $8BD15F |
  BRA CODE_8BD165                           ; $8BD161 |

CODE_8BD163:
  DEC.B $09,X                               ; $8BD163 |

CODE_8BD165:
  LDA.W $000D,Y                             ; $8BD165 |
  INC A                                     ; $8BD168 |
  INC A                                     ; $8BD169 |
  CMP.B $0D,X                               ; $8BD16A |
  BEQ CODE_8BD176                           ; $8BD16C |
  BMI CODE_8BD174                           ; $8BD16E |
  INC.B $0D,X                               ; $8BD170 |
  BRA CODE_8BD176                           ; $8BD172 |

CODE_8BD174:
  DEC.B $0D,X                               ; $8BD174 |

CODE_8BD176:
  JSL.L CODE_FL_86C70D                      ; $8BD176 |
  LDA.W #$F800                              ; $8BD17A |
  STA.B $2A,X                               ; $8BD17D |
  INC.B $1A,X                               ; $8BD17F |

CODE_8BD181:
  LDA.B $11,X                               ; $8BD181 |
  BMI CODE_8BD192                           ; $8BD183 |
  CMP.W #$0020                              ; $8BD185 |
  BNE CODE_8BD1A2                           ; $8BD188 |
  LDY.B $3A,X                               ; $8BD18A |
  TDC                                       ; $8BD18C |
  STA.W $004A,Y                             ; $8BD18D |
  BRA CODE_8BD1A2                           ; $8BD190 |

CODE_8BD192:
  LDA.W #$0060                              ; $8BD192 |
  STA.B $2C,X                               ; $8BD195 |
  STZ.B $2A,X                               ; $8BD197 |
  LDA.W #$0002                              ; $8BD199 |
  JSL.L CODE_FL_B3FE45                      ; $8BD19C |
  INC.B $1A,X                               ; $8BD1A0 |

CODE_8BD1A2:
  RTL                                       ; $8BD1A2 |

CODE_8BD1A3:
  JSL.L CODE_FL_85A893                      ; $8BD1A3 |
  JSL.L CODE_FL_86C70D                      ; $8BD1A7 |
  JSL.L CODE_FL_8CFAF3                      ; $8BD1AB |
  LDA.W #$000D                              ; $8BD1AF |
  JSL.L push_sound_queue                    ; $8BD1B2 |
  PHX                                       ; $8BD1B6 |
  LDY.W #$B844                              ; $8BD1B7 |
  JSL.L CODE_FL_80C26D                      ; $8BD1BA |
  PLX                                       ; $8BD1BE |
  LDA.W #$0002                              ; $8BD1BF |
  JSL.L CODE_FL_B3FE45                      ; $8BD1C2 |
  JML.L CODE_FL_86CA2D                      ; $8BD1C6 |

CODE_FN_8BD1CA:
  LDA.B $46,X                               ; $8BD1CA |
  BNE CODE_8BD1E0                           ; $8BD1CC |
  LDA.B $32,X                               ; $8BD1CE |
  BPL CODE_8BD1E0                           ; $8BD1D0 |
  LDA.W #$0010                              ; $8BD1D2 |
  STA.B $46,X                               ; $8BD1D5 |
  STZ.B $32,X                               ; $8BD1D7 |
  LDA.W #$009C                              ; $8BD1D9 |
  JSL.L CODE_FL_8089BD                      ; $8BD1DC |

CODE_8BD1E0:
  STZ.B $32,X                               ; $8BD1E0 |
  RTS                                       ; $8BD1E2 |

CODE_JP_8BD1E3:
  LDY.B $3A,X                               ; $8BD1E3 |
  LDA.W $004A,Y                             ; $8BD1E5 |
  BPL CODE_8BD1EF                           ; $8BD1E8 |
  LDA.W #$0003                              ; $8BD1EA |
  STA.B $1A,X                               ; $8BD1ED |

CODE_8BD1EF:
  RTL                                       ; $8BD1EF |

CODE_8BD1F0:
  JSL.L CODE_FL_8BD280                      ; $8BD1F0 |
  JSL.L CODE_FL_85F885                      ; $8BD1F4 |
  JSL.L CODE_FL_8CFDB0                      ; $8BD1F8 |
  PHX                                       ; $8BD1FC |
  ASL A                                     ; $8BD1FD |
  TAX                                       ; $8BD1FE |
  LDA.L PTR16_8BD209,X                      ; $8BD1FF |
  PLX                                       ; $8BD203 |
  STA.B $00                                 ; $8BD204 |
  JMP.W ($0000)                             ; $8BD206 |

PTR16_8BD209:
  dw CODE_8BD213                            ; $8BD209 |
  dw CODE_8BD227                            ; $8BD20B |
  dw CODE_8BD247                            ; $8BD20D |
  dw CODE_8BD25D                            ; $8BD20F |
  dw CODE_8BD26D                            ; $8BD211 |

CODE_8BD213:
  JSR.W CODE_FN_8BD290                      ; $8BD213 |
  JSL.L CODE_FL_8CFF0C                      ; $8BD216 |
  LDA.W #$0001                              ; $8BD21A |
  STA.B $42,X                               ; $8BD21D |
  JSL.L CODE_FL_85A9B7                      ; $8BD21F |
  JML.L CODE_FL_86C63F                      ; $8BD223 |

CODE_8BD227:
  STZ.B $20,X                               ; $8BD227 |
  LDA.W #$386E                              ; $8BD229 |
  STA.B $00,X                               ; $8BD22C |
  LDY.B $3A,X                               ; $8BD22E |
  LDA.W $0046,Y                             ; $8BD230 |
  BEQ CODE_8BD23A                           ; $8BD233 |
  LDA.W #$0003                              ; $8BD235 |
  STA.B $1A,X                               ; $8BD238 |

CODE_8BD23A:
  LDA.W $004A,Y                             ; $8BD23A |
  BEQ CODE_8BD244                           ; $8BD23D |
  LDA.W #$0002                              ; $8BD23F |
  STA.B $1A,X                               ; $8BD242 |

CODE_8BD244:
  JMP.W CODE_FL_8BD2AD                      ; $8BD244 |

CODE_8BD247:
  STZ.B $20,X                               ; $8BD247 |
  LDA.W #$386E                              ; $8BD249 |
  STA.B $00,X                               ; $8BD24C |
  LDY.B $3A,X                               ; $8BD24E |
  LDA.W $004A,Y                             ; $8BD250 |
  BNE CODE_8BD25A                           ; $8BD253 |
  LDA.W #$0001                              ; $8BD255 |
  STA.B $1A,X                               ; $8BD258 |

CODE_8BD25A:
  JMP.W CODE_FL_8BD2E1                      ; $8BD25A |

CODE_8BD25D:
  JSR.W CODE_FN_8BD290                      ; $8BD25D |
  JSL.L CODE_FL_85A9EF                      ; $8BD260 |
  LDA.W #$301A                              ; $8BD264 |
  JSL.L CODE_FL_86CAEE                      ; $8BD267 |
  INC.B $1A,X                               ; $8BD26B |

CODE_8BD26D:
  LDY.B $3A,X                               ; $8BD26D |
  LDA.W $0046,Y                             ; $8BD26F |
  BNE CODE_8BD27D                           ; $8BD272 |
  LDA.W #$0001                              ; $8BD274 |
  STA.B $1A,X                               ; $8BD277 |
  JSL.L CODE_FL_85A9F7                      ; $8BD279 |

CODE_8BD27D:
  JMP.W CODE_FL_8BD2AD                      ; $8BD27D |

CODE_FL_8BD280:
  LDY.B $3A,X                               ; $8BD280 |
  LDA.W $004A,Y                             ; $8BD282 |
  BPL CODE_8BD28F                           ; $8BD285 |
  JSL.L CODE_FL_86CA2D                      ; $8BD287 |
  PHP                                       ; $8BD28B |
  PLA                                       ; $8BD28C |
  PLA                                       ; $8BD28D |
  RTL                                       ; $8BD28E |

CODE_8BD28F:
  RTL                                       ; $8BD28F |

CODE_FN_8BD290:
  LDA.W #$0B70                              ; $8BD290 |
  STA.B $3A,X                               ; $8BD293 |
  LDA.B $4E,X                               ; $8BD295 |
  AND.W #$00FF                              ; $8BD297 |
  JSL.L CODE_FL_8CFCA5                      ; $8BD29A |
  STY.B $3C,X                               ; $8BD29E |
  LDA.B $4F,X                               ; $8BD2A0 |
  AND.W #$00FF                              ; $8BD2A2 |
  STA.B $48,X                               ; $8BD2A5 |
  LDA.W #$8008                              ; $8BD2A7 |
  STA.B $22,X                               ; $8BD2AA |
  RTS                                       ; $8BD2AC |

CODE_FL_8BD2AD:
  LDA.B $3C,X                               ; $8BD2AD |
  TAY                                       ; $8BD2AF |
  CMP.B $3A,X                               ; $8BD2B0 |
  BNE CODE_8BD2B9                           ; $8BD2B2 |
  LDA.W $0040,Y                             ; $8BD2B4 |
  BRA CODE_8BD2C2                           ; $8BD2B7 |

CODE_8BD2B9:
  LDA.W $0040,Y                             ; $8BD2B9 |
  LDY.B $3A,X                               ; $8BD2BC |
  CLC                                       ; $8BD2BE |
  ADC.W $0040,Y                             ; $8BD2BF |

CODE_8BD2C2:
  STA.B $40,X                               ; $8BD2C2 |
  LDY.B $3C,X                               ; $8BD2C4 |
  LDA.W $003E,Y                             ; $8BD2C6 |
  STA.B $3E,X                               ; $8BD2C9 |
  LDY.B $40,X                               ; $8BD2CB |
  JSL.L CODE_FL_8AB51A                      ; $8BD2CD |
  LDY.B $3A,X                               ; $8BD2D1 |
  JSL.L CODE_FL_8AB509                      ; $8BD2D3 |
  LDA.W $0011,Y                             ; $8BD2D7 |
  CLC                                       ; $8BD2DA |
  ADC.W #$0013                              ; $8BD2DB |
  STA.B $11,X                               ; $8BD2DE |
  RTL                                       ; $8BD2E0 |

CODE_FL_8BD2E1:
  LDY.B $3A,X                               ; $8BD2E1 |
  LDA.W $0011,Y                             ; $8BD2E3 |
  CLC                                       ; $8BD2E6 |
  ADC.W #$0013                              ; $8BD2E7 |
  STA.B $11,X                               ; $8BD2EA |
  LDA.W $003A,Y                             ; $8BD2EC |
  SEC                                       ; $8BD2EF |
  SBC.B $48,X                               ; $8BD2F0 |
  TAY                                       ; $8BD2F2 |
  SEC                                       ; $8BD2F3 |
  SBC.W #$1C8E                              ; $8BD2F4 |
  BPL CODE_8BD2FE                           ; $8BD2F7 |
  CLC                                       ; $8BD2F9 |
  ADC.W #$1CDE                              ; $8BD2FA |
  TAY                                       ; $8BD2FD |

CODE_8BD2FE:
  LDA.W $0000,Y                             ; $8BD2FE |
  STA.B $09,X                               ; $8BD301 |
  LDA.W $0002,Y                             ; $8BD303 |
  STA.B $0D,X                               ; $8BD306 |
  RTL                                       ; $8BD308 |

CODE_8BD309:
  JSL.L CODE_FL_8B80CE                      ; $8BD309 |
  JSL.L CODE_FL_8CFD8F                      ; $8BD30D |
  PHX                                       ; $8BD311 |
  ASL A                                     ; $8BD312 |
  TAX                                       ; $8BD313 |
  LDA.L PTR16_8BD31E,X                      ; $8BD314 |
  PLX                                       ; $8BD318 |
  STA.B $00                                 ; $8BD319 |
  JMP.W ($0000)                             ; $8BD31B |

PTR16_8BD31E:
  dw CODE_8BD34E                            ; $8BD31E |
  dw CODE_8BD368                            ; $8BD320 |
  dw CODE_8BD428                            ; $8BD322 |
  dw CODE_8BD477                            ; $8BD324 |
  dw CODE_8BD4B9                            ; $8BD326 |
  dw CODE_8BD4E1                            ; $8BD328 |
  dw CODE_8BD4F0                            ; $8BD32A |
  dw CODE_8BD4FF                            ; $8BD32C |
  dw CODE_8BD519                            ; $8BD32E |
  dw CODE_8BD52E                            ; $8BD330 |
  dw CODE_8BD58C                            ; $8BD332 |
  dw CODE_8BD58D                            ; $8BD334 |
  dw CODE_8BD5B4                            ; $8BD336 |
  dw CODE_8BD5C0                            ; $8BD338 |
  dw CODE_8BD5F3                            ; $8BD33A |
  dw CODE_8BD61C                            ; $8BD33C |
  dw CODE_8BD634                            ; $8BD33E |
  dw CODE_8BD64E                            ; $8BD340 |
  dw CODE_8BD66A                            ; $8BD342 |
  dw CODE_8BD67F                            ; $8BD344 |
  dw CODE_8BD6A5                            ; $8BD346 |
  dw CODE_8BD6AF                            ; $8BD348 |
  dw CODE_8BD6C4                            ; $8BD34A |
  dw CODE_8BD6CE                            ; $8BD34C |

CODE_8BD34E:
  LDA.W #$0001                              ; $8BD34E |
  STA.L $7E7D90                             ; $8BD351 |
  PHX                                       ; $8BD355 |
  LDX.W #DATA_88859A                        ; $8BD356 |
  JSL.L sound_transfer_blocks               ; $8BD359 |
  LDY.W #$B83A                              ; $8BD35D |
  JSL.L CODE_FL_80C26D                      ; $8BD360 |
  PLX                                       ; $8BD364 |
  INC.B $1A,X                               ; $8BD365 |
  RTL                                       ; $8BD367 |

CODE_8BD368:
  JSL.L CODE_FL_83852F                      ; $8BD368 |
  JSL.L CODE_FL_8CFF15                      ; $8BD36C |
  JSL.L CODE_FL_86C63F                      ; $8BD370 |
  LDA.W #$8000                              ; $8BD374 |
  STA.B $22,X                               ; $8BD377 |
  LDA.W #$1070                              ; $8BD379 |
  STA.B $3A,X                               ; $8BD37C |
  LDA.W #$3874                              ; $8BD37E |
  STA.B $00,X                               ; $8BD381 |
  LDA.W #$0040                              ; $8BD383 |
  STA.B $4C,X                               ; $8BD386 |
  INC.B $E4                                 ; $8BD388 |
  LDY.W #$0400                              ; $8BD38A |
  JSL.L CODE_FL_8B81EE                      ; $8BD38D |
  LDY.W #$04C0                              ; $8BD391 |
  JSL.L CODE_FL_8B81EE                      ; $8BD394 |
  LDY.W #$0B70                              ; $8BD398 |
  LDA.W #$00A3                              ; $8BD39B |
  JSL.L CODE_FL_86C9E0                      ; $8BD39E |
  LDA.W #$0001                              ; $8BD3A2 |
  STA.W $004E,Y                             ; $8BD3A5 |
  LDY.W #$0BC0                              ; $8BD3A8 |
  LDA.W #$00A5                              ; $8BD3AB |
  JSL.L CODE_FL_86C9E0                      ; $8BD3AE |
  LDA.W #$0000                              ; $8BD3B2 |
  STA.W $004E,Y                             ; $8BD3B5 |
  LDY.W #$0C10                              ; $8BD3B8 |
  LDA.W #$00A7                              ; $8BD3BB |
  JSL.L CODE_FL_86C9E0                      ; $8BD3BE |
  LDA.W #$3803                              ; $8BD3C2 |
  STA.W $004E,Y                             ; $8BD3C5 |
  LDY.W #$0C60                              ; $8BD3C8 |
  LDA.W #$00A8                              ; $8BD3CB |
  JSL.L CODE_FL_86C9E0                      ; $8BD3CE |
  LDA.W #$3004                              ; $8BD3D2 |
  STA.W $004E,Y                             ; $8BD3D5 |
  LDY.W #$0CB0                              ; $8BD3D8 |
  LDA.W #$00A8                              ; $8BD3DB |
  JSL.L CODE_FL_86C9E0                      ; $8BD3DE |
  LDA.W #$2805                              ; $8BD3E2 |
  STA.W $004E,Y                             ; $8BD3E5 |
  LDY.W #$0D00                              ; $8BD3E8 |
  LDA.W #$00A8                              ; $8BD3EB |
  JSL.L CODE_FL_86C9E0                      ; $8BD3EE |
  LDA.W #$2006                              ; $8BD3F2 |
  STA.W $004E,Y                             ; $8BD3F5 |
  LDY.W #$0D50                              ; $8BD3F8 |
  LDA.W #$00A8                              ; $8BD3FB |
  JSL.L CODE_FL_86C9E0                      ; $8BD3FE |
  LDA.W #$1807                              ; $8BD402 |
  STA.W $004E,Y                             ; $8BD405 |
  LDY.W #$0DA0                              ; $8BD408 |
  LDA.W #$00A8                              ; $8BD40B |
  JSL.L CODE_FL_86C9E0                      ; $8BD40E |
  LDA.W #$1008                              ; $8BD412 |
  STA.W $004E,Y                             ; $8BD415 |
  LDY.W #$0DF0                              ; $8BD418 |
  LDA.W #$00A8                              ; $8BD41B |
  JSL.L CODE_FL_86C9E0                      ; $8BD41E |
  LDA.W #$0800                              ; $8BD422 |
  STA.W $004E,Y                             ; $8BD425 |

CODE_8BD428:
  STZ.B $00                                 ; $8BD428 |
  LDY.W #$0400                              ; $8BD42A |
  LDA.W $0018,Y                             ; $8BD42D |
  BEQ CODE_8BD44D                           ; $8BD430 |
  JSL.L CODE_FL_8CFA37                      ; $8BD432 |
  CMP.W #$0590                              ; $8BD436 |
  BPL CODE_8BD44D                           ; $8BD439 |
  LDA.W $0046,Y                             ; $8BD43B |
  BNE CODE_8BD445                           ; $8BD43E |
  LDA.W #$0100                              ; $8BD440 |
  BRA CODE_8BD448                           ; $8BD443 |

CODE_8BD445:
  LDA.W #$0900                              ; $8BD445 |

CODE_8BD448:
  STA.W $0098,Y                             ; $8BD448 |
  INC.B $00                                 ; $8BD44B |

CODE_8BD44D:
  LDY.W #$04C0                              ; $8BD44D |
  LDA.W $0018,Y                             ; $8BD450 |
  BEQ CODE_8BD470                           ; $8BD453 |
  JSL.L CODE_FL_8CFA37                      ; $8BD455 |
  CMP.W #$0578                              ; $8BD459 |
  BPL CODE_8BD470                           ; $8BD45C |
  LDA.W $0046,Y                             ; $8BD45E |
  BNE CODE_8BD468                           ; $8BD461 |
  LDA.W #$0100                              ; $8BD463 |
  BRA CODE_8BD46B                           ; $8BD466 |

CODE_8BD468:
  LDA.W #$0900                              ; $8BD468 |

CODE_8BD46B:
  STA.W $0098,Y                             ; $8BD46B |
  INC.B $00                                 ; $8BD46E |

CODE_8BD470:
  LDA.B $00                                 ; $8BD470 |
  BNE CODE_8BD476                           ; $8BD472 |
  INC.B $1A,X                               ; $8BD474 |

CODE_8BD476:
  RTL                                       ; $8BD476 |

CODE_8BD477:
  STZ.B $00                                 ; $8BD477 |
  LDY.W #$0400                              ; $8BD479 |
  LDA.W $0018,Y                             ; $8BD47C |
  BEQ CODE_8BD492                           ; $8BD47F |
  JSL.L CODE_FL_8CFA3F                      ; $8BD481 |
  CMP.W #$0210                              ; $8BD485 |
  BMI CODE_8BD492                           ; $8BD488 |
  LDA.W #$0800                              ; $8BD48A |
  STA.W $0098,Y                             ; $8BD48D |
  INC.B $00                                 ; $8BD490 |

CODE_8BD492:
  LDY.W #$04C0                              ; $8BD492 |
  LDA.W $0018,Y                             ; $8BD495 |
  BEQ CODE_8BD4AB                           ; $8BD498 |
  JSL.L CODE_FL_8CFA3F                      ; $8BD49A |
  CMP.W #$0210                              ; $8BD49E |
  BMI CODE_8BD4AB                           ; $8BD4A1 |
  LDA.W #$0800                              ; $8BD4A3 |
  STA.W $0098,Y                             ; $8BD4A6 |
  INC.B $00                                 ; $8BD4A9 |

CODE_8BD4AB:
  LDA.B $00                                 ; $8BD4AB |
  BNE CODE_8BD4B8                           ; $8BD4AD |
  LDA.B $92                                 ; $8BD4AF |
  ORA.W #$0011                              ; $8BD4B1 |
  STA.B $92                                 ; $8BD4B4 |
  INC.B $1A,X                               ; $8BD4B6 |

CODE_8BD4B8:
  RTL                                       ; $8BD4B8 |

CODE_8BD4B9:
  LDY.W #$0000                              ; $8BD4B9 |
  LDA.B $42                                 ; $8BD4BC |
  AND.W #$0003                              ; $8BD4BE |
  BNE CODE_8BD4C6                           ; $8BD4C1 |
  LDY.W #$FFFF                              ; $8BD4C3 |

CODE_8BD4C6:
  STY.W $1962                               ; $8BD4C6 |
  LDA.W $1672                               ; $8BD4C9 |
  CMP.W #$0162                              ; $8BD4CC |
  BPL CODE_8BD4E0                           ; $8BD4CF |
  LDY.W #$0114                              ; $8BD4D1 |
  JSL.L CODE_FL_808993                      ; $8BD4D4 |
  LDA.W #$FFFF                              ; $8BD4D8 |
  STA.W $1960                               ; $8BD4DB |
  INC.B $1A,X                               ; $8BD4DE |

CODE_8BD4E0:
  RTL                                       ; $8BD4E0 |

CODE_8BD4E1:
  STZ.W $1960                               ; $8BD4E1 |
  LDA.W #$0080                              ; $8BD4E4 |
  STA.B $28,X                               ; $8BD4E7 |
  LDA.W #$0020                              ; $8BD4E9 |
  STA.B $2C,X                               ; $8BD4EC |
  INC.B $1A,X                               ; $8BD4EE |

CODE_8BD4F0:
  JSL.L CODE_FL_86C70D                      ; $8BD4F0 |
  STZ.B $28,X                               ; $8BD4F4 |
  LDA.W #$301C                              ; $8BD4F6 |
  JSL.L CODE_FL_86CAEE                      ; $8BD4F9 |
  INC.B $1A,X                               ; $8BD4FD |

CODE_8BD4FF:
  LDA.W #$9E79                              ; $8BD4FF |
  JSL.L CODE_FL_809934                      ; $8BD502 |
  BCC CODE_8BD518                           ; $8BD506 |
  STZ.B $20,X                               ; $8BD508 |
  LDA.W #$38C8                              ; $8BD50A |
  STA.B $00,X                               ; $8BD50D |
  LDA.W #$0080                              ; $8BD50F |
  STA.B $2C,X                               ; $8BD512 |
  STZ.B $28,X                               ; $8BD514 |
  INC.B $1A,X                               ; $8BD516 |

CODE_8BD518:
  RTL                                       ; $8BD518 |

CODE_8BD519:
  LDA.B $2C,X                               ; $8BD519 |
  CMP.W #$0060                              ; $8BD51B |
  BNE CODE_8BD526                           ; $8BD51E |
  LDY.W #$F800                              ; $8BD520 |
  STY.W $0B9A                               ; $8BD523 |

CODE_8BD526:
  JSL.L CODE_FL_86C70D                      ; $8BD526 |
  STZ.B $40,X                               ; $8BD52A |
  INC.B $1A,X                               ; $8BD52C |

CODE_8BD52E:
  LDA.W #$FF80                              ; $8BD52E |
  STA.B $28,X                               ; $8BD531 |
  LDA.W #$0080                              ; $8BD533 |
  STA.B $26,X                               ; $8BD536 |
  JSL.L CODE_FL_8CFCF0                      ; $8BD538 |
  BNE CODE_8BD54A                           ; $8BD53C |
  LDA.W #$00AC                              ; $8BD53E |
  JSL.L CODE_FL_8089BD                      ; $8BD541 |
  LDA.W #$0300                              ; $8BD545 |
  STA.B $2A,X                               ; $8BD548 |

CODE_8BD54A:
  LDA.B $09,X                               ; $8BD54A |
  CMP.W #$0100                              ; $8BD54C |
  BNE CODE_8BD55B                           ; $8BD54F |
  LDA.B $40,X                               ; $8BD551 |
  BNE CODE_8BD55B                           ; $8BD553 |
  INC.B $40,X                               ; $8BD555 |
  JSL.L CODE_FL_80893F                      ; $8BD557 |

CODE_8BD55B:
  LDA.B $09,X                               ; $8BD55B |
  CMP.W #$0110                              ; $8BD55D |
  BMI CODE_8BD58B                           ; $8BD560 |
  STZ.B $E4                                 ; $8BD562 |
  INC.W $0B8A                               ; $8BD564 |
  LDY.W #$004C                              ; $8BD567 |
  JSL.L CODE_FL_808993                      ; $8BD56A |
  STZ.B $00,X                               ; $8BD56E |
  STZ.B $2A,X                               ; $8BD570 |
  STZ.B $28,X                               ; $8BD572 |
  STZ.B $26,X                               ; $8BD574 |
  STZ.B $11,X                               ; $8BD576 |
  INC.B $1A,X                               ; $8BD578 |
  LDX.W #DATA_888585                        ; $8BD57A |
  JSL.L sound_transfer_blocks               ; $8BD57D |
  LDY.W #$9334                              ; $8BD581 |
  LDA.W #$001E                              ; $8BD584 |
  JSL.L CODE_FL_80C2BA                      ; $8BD587 |

CODE_8BD58B:
  RTL                                       ; $8BD58B |

CODE_8BD58C:
  RTL                                       ; $8BD58C |

CODE_8BD58D:
  PHX                                       ; $8BD58D |
  LDX.W #DATA_88858D                        ; $8BD58E |
  JSL.L sound_transfer_blocks               ; $8BD591 |
  PLX                                       ; $8BD595 |
  LDA.W #$0045                              ; $8BD596 |
  STA.B $02,X                               ; $8BD599 |
  LDA.W #$000B                              ; $8BD59B |
  JSL.L CODE_FL_8CFCA5                      ; $8BD59E |
  LDA.W #$01C2                              ; $8BD5A2 |
  JSL.L CODE_FL_86C9E0                      ; $8BD5A5 |
  TXA                                       ; $8BD5A9 |
  STA.W $003A,Y                             ; $8BD5AA |
  LDA.W #$0080                              ; $8BD5AD |
  STA.B $2C,X                               ; $8BD5B0 |
  INC.B $1A,X                               ; $8BD5B2 |

CODE_8BD5B4:
  JSL.L CODE_FL_86C70D                      ; $8BD5B4 |
  INC.B $E4                                 ; $8BD5B8 |
  JSL.L CODE_FL_83852F                      ; $8BD5BA |
  INC.B $1A,X                               ; $8BD5BE |

CODE_8BD5C0:
  LDA.W #$0060                              ; $8BD5C0 |
  LDY.W #$0090                              ; $8BD5C3 |
  JSL.L CODE_FL_8B8111                      ; $8BD5C6 |
  BNE CODE_8BD5F2                           ; $8BD5CA |
  LDA.W $0404                               ; $8BD5CC |
  AND.W #$DFDF                              ; $8BD5CF |
  STA.W $0404                               ; $8BD5D2 |
  LDA.W #$38D8                              ; $8BD5D5 |
  STA.B $00,X                               ; $8BD5D8 |
  LDY.W #$0070                              ; $8BD5DA |
  JSL.L CODE_FL_808993                      ; $8BD5DD |
  LDA.W #$0080                              ; $8BD5E1 |
  STA.B $28,X                               ; $8BD5E4 |
  LDA.W #$FF80                              ; $8BD5E6 |
  STA.B $26,X                               ; $8BD5E9 |
  LDA.W #$0010                              ; $8BD5EB |
  STA.B $2C,X                               ; $8BD5EE |
  INC.B $1A,X                               ; $8BD5F0 |

CODE_8BD5F2:
  RTL                                       ; $8BD5F2 |

CODE_8BD5F3:
  JSL.L CODE_FL_8CFCF0                      ; $8BD5F3 |
  BNE CODE_8BD614                           ; $8BD5F7 |
  LDA.W #$0300                              ; $8BD5F9 |
  STA.B $2A,X                               ; $8BD5FC |
  LDA.W #$00AC                              ; $8BD5FE |
  JSL.L CODE_FL_8089BD                      ; $8BD601 |
  LDA.B $09,X                               ; $8BD605 |
  CMP.W #$00C0                              ; $8BD607 |
  BPL CODE_8BD614                           ; $8BD60A |
  STZ.B $26,X                               ; $8BD60C |
  STZ.B $28,X                               ; $8BD60E |
  STZ.B $2A,X                               ; $8BD610 |
  INC.B $1A,X                               ; $8BD612 |

CODE_8BD614:
  JSL.L CODE_FL_86C70D                      ; $8BD614 |
  JML.L CODE_JL_8B86C6                      ; $8BD618 |

CODE_8BD61C:
  LDA.W #$9EE9                              ; $8BD61C |
  JSL.L CODE_FL_809934                      ; $8BD61F |
  BCC CODE_8BD633                           ; $8BD623 |
  LDA.B $04,X                               ; $8BD625 |
  ORA.W #$2020                              ; $8BD627 |
  STA.B $04,X                               ; $8BD62A |
  LDA.W #$0020                              ; $8BD62C |
  STA.B $2C,X                               ; $8BD62F |
  INC.B $1A,X                               ; $8BD631 |

CODE_8BD633:
  RTL                                       ; $8BD633 |

CODE_8BD634:
  JSL.L CODE_FL_86C70D                      ; $8BD634 |
  LDA.W #$9F35                              ; $8BD638 |
  JSL.L CODE_FL_809934                      ; $8BD63B |
  BCC CODE_8BD64D                           ; $8BD63F |
  LDA.W #$0100                              ; $8BD641 |
  STA.B $26,X                               ; $8BD644 |
  LDA.W #$FF00                              ; $8BD646 |
  STA.B $28,X                               ; $8BD649 |
  INC.B $1A,X                               ; $8BD64B |

CODE_8BD64D:
  RTL                                       ; $8BD64D |

CODE_8BD64E:
  JSL.L CODE_FL_8CFCF0                      ; $8BD64E |
  BNE CODE_8BD669                           ; $8BD652 |
  LDA.W #$0300                              ; $8BD654 |
  STA.B $2A,X                               ; $8BD657 |
  LDA.W #$00AC                              ; $8BD659 |
  JSL.L CODE_FL_8089BD                      ; $8BD65C |
  LDA.B $09,X                               ; $8BD660 |
  CMP.W #$0110                              ; $8BD662 |
  BMI CODE_8BD669                           ; $8BD665 |
  INC.B $1A,X                               ; $8BD667 |

CODE_8BD669:
  RTL                                       ; $8BD669 |

CODE_8BD66A:
  LDA.W #$9F50                              ; $8BD66A |
  JSL.L CODE_FL_809934                      ; $8BD66D |
  BCC CODE_8BD67E                           ; $8BD671 |
  LDA.W #$0040                              ; $8BD673 |
  STA.B $2C,X                               ; $8BD676 |
  STZ.B $42,X                               ; $8BD678 |
  INC.B $1A,X                               ; $8BD67A |
  STZ.B $40,X                               ; $8BD67C |

CODE_8BD67E:
  RTL                                       ; $8BD67E |

CODE_8BD67F:
  JSL.L CODE_FL_86C70D                      ; $8BD67F |
  LDA.W #$9FD1                              ; $8BD683 |
  JSL.L CODE_FL_809934                      ; $8BD686 |
  BCC CODE_8BD68E                           ; $8BD68A |
  INC.B $1A,X                               ; $8BD68C |

CODE_8BD68E:
  LDA.L $7E7C04                             ; $8BD68E |
  CMP.W #$0015                              ; $8BD692 |
  BNE CODE_8BD6A4                           ; $8BD695 |
  LDA.B $40,X                               ; $8BD697 |
  BNE CODE_8BD6A4                           ; $8BD699 |
  INC.B $40,X                               ; $8BD69B |
  LDA.W #$0042                              ; $8BD69D |
  JSL.L push_sound_queue                    ; $8BD6A0 |

CODE_8BD6A4:
  RTL                                       ; $8BD6A4 |

CODE_8BD6A5:
  LDA.W $063A                               ; $8BD6A5 |
  CMP.W #$000A                              ; $8BD6A8 |
  BNE CODE_8BD6C3                           ; $8BD6AB |
  INC.B $1A,X                               ; $8BD6AD |

CODE_8BD6AF:
  LDA.W #$A039                              ; $8BD6AF |
  JSL.L CODE_FL_809934                      ; $8BD6B2 |
  BCC CODE_8BD6C3                           ; $8BD6B6 |
  INC.B $1A,X                               ; $8BD6B8 |
  LDA.W #$0040                              ; $8BD6BA |
  STA.B $2C,X                               ; $8BD6BD |
  JSL.L CODE_FL_80893F                      ; $8BD6BF |

CODE_8BD6C3:
  RTL                                       ; $8BD6C3 |

CODE_8BD6C4:
  JSL.L CODE_FL_86C70D                      ; $8BD6C4 |
  INC.B $1A,X                               ; $8BD6C8 |
  JML.L CODE_FL_80C213                      ; $8BD6CA |

CODE_8BD6CE:
  LDA.W $1F30                               ; $8BD6CE |
  BNE CODE_8BD6C3                           ; $8BD6D1 |
  JSL.L CODE_FL_86CA2D                      ; $8BD6D3 |
  JML.L CODE_JL_848307                      ; $8BD6D7 |

CODE_8BD6DB:
  JSL.L CODE_FL_8CFD8F                      ; $8BD6DB |
  PHX                                       ; $8BD6DF |
  ASL A                                     ; $8BD6E0 |
  TAX                                       ; $8BD6E1 |
  LDA.L PTR16_8BD6EC,X                      ; $8BD6E2 |
  PLX                                       ; $8BD6E6 |
  STA.B $00                                 ; $8BD6E7 |
  JMP.W ($0000)                             ; $8BD6E9 |

PTR16_8BD6EC:
  dw CODE_8BD6F0                            ; $8BD6EC |
  dw CODE_8BD70B                            ; $8BD6EE |

CODE_8BD6F0:
  LDA.W #$8000                              ; $8BD6F0 |
  ORA.W #$0100                              ; $8BD6F3 |
  STA.B $22,X                               ; $8BD6F6 |
  LDA.W #$38EC                              ; $8BD6F8 |
  STA.B $00,X                               ; $8BD6FB |
  LDY.B $3A,X                               ; $8BD6FD |
  LDA.W $0004,Y                             ; $8BD6FF |
  STA.B $04,X                               ; $8BD702 |
  LDA.W #$0006                              ; $8BD704 |
  STA.B $2C,X                               ; $8BD707 |
  INC.B $1A,X                               ; $8BD709 |

CODE_8BD70B:
  LDY.B $3A,X                               ; $8BD70B |
  LDA.B $04,X                               ; $8BD70D |
  BIT.W #$2020                              ; $8BD70F |
  BEQ CODE_8BD71C                           ; $8BD712 |
  LDA.B $3C,X                               ; $8BD714 |
  EOR.W #$FFFF                              ; $8BD716 |
  INC A                                     ; $8BD719 |
  BRA CODE_8BD71E                           ; $8BD71A |

CODE_8BD71C:
  LDA.B $3C,X                               ; $8BD71C |

CODE_8BD71E:
  CLC                                       ; $8BD71E |
  ADC.W $0009,Y                             ; $8BD71F |
  STA.B $09,X                               ; $8BD722 |
  LDA.W $000D,Y                             ; $8BD724 |
  CLC                                       ; $8BD727 |
  ADC.B $3E,X                               ; $8BD728 |
  STA.B $0D,X                               ; $8BD72A |
  JSL.L CODE_FL_86C70D                      ; $8BD72C |
  JML.L CODE_FL_86CA36                      ; $8BD730 |

CODE_8BD734:
  LDA.W #$8000                              ; $8BD734 |
  ORA.W #$0100                              ; $8BD737 |
  STA.B $22,X                               ; $8BD73A |
  LDY.B $3A,X                               ; $8BD73C |
  LDA.W #$3986                              ; $8BD73E |
  STA.B $00,X                               ; $8BD741 |
  LDA.W $0004,Y                             ; $8BD743 |
  STA.B $04,X                               ; $8BD746 |
  JSL.L CODE_FL_8CFC44                      ; $8BD748 |
  DEC.B $0D,X                               ; $8BD74C |
  DEC.B $11,X                               ; $8BD74E |
  DEC.B $11,X                               ; $8BD750 |
  LDA.B $42                                 ; $8BD752 |
  AND.W #$000F                              ; $8BD754 |
  BNE CODE_8BD772                           ; $8BD757 |
  LDA.W #$00B8                              ; $8BD759 |
  JSL.L CODE_FL_86C9C5                      ; $8BD75C |
  BCS CODE_8BD772                           ; $8BD760 |
  TXA                                       ; $8BD762 |
  STA.W $003A,Y                             ; $8BD763 |
  LDA.W #$FFD8                              ; $8BD766 |
  STA.W $003C,Y                             ; $8BD769 |
  LDA.W #$FFD8                              ; $8BD76C |
  STA.W $003E,Y                             ; $8BD76F |

CODE_8BD772:
  RTL                                       ; $8BD772 |

UNREACH_8BD773:
  db $22,$85,$F8,$85,$22,$8F,$FD,$8C        ; $8BD773 |
  db $D0,$27,$A9,$1B,$30,$22,$EE,$CA        ; $8BD77B |
  db $86,$A9,$47,$00,$95,$02,$A9,$70        ; $8BD783 |
  db $0B,$95,$3A,$22,$EF,$A9,$85,$22        ; $8BD78B |
  db $B7,$A9,$85                            ; $8BD793 |
  LDA.W #$0020                              ; $8BD796 |
  STA.B $42,X                               ; $8BD799 |
  JSL.L CODE_FL_86C63F                      ; $8BD79B |
  LDA.W #$7FFF                              ; $8BD79F |
  STA.B $36,X                               ; $8BD7A2 |
  DEC.B $3C,X                               ; $8BD7A4 |
  BPL CODE_8BD7B4                           ; $8BD7A6 |
  LDA.W #$0010                              ; $8BD7A8 |
  STA.B $3C,X                               ; $8BD7AB |
  LDA.W #$0034                              ; $8BD7AD |
  JSL.L push_sound_queue                    ; $8BD7B0 |

CODE_8BD7B4:
  LDY.B $3A,X                               ; $8BD7B4 |
  JSL.L CODE_FL_8CFC44                      ; $8BD7B6 |
  INC.B $0D,X                               ; $8BD7BA |
  INC.B $0D,X                               ; $8BD7BC |
  LDA.W $0046,Y                             ; $8BD7BE |
  BMI CODE_8BD7C7                           ; $8BD7C1 |
  JML.L CODE_FL_86CA36                      ; $8BD7C3 |

CODE_8BD7C7:
  RTL                                       ; $8BD7C7 |

CODE_8BD7C8:
  LDA.W #$0001                              ; $8BD7C8 |
  STA.L $7E7D90                             ; $8BD7CB |
  JSL.L CODE_FL_85F885                      ; $8BD7CF |
  JSL.L CODE_FL_86C3F8                      ; $8BD7D3 |
  JSR.W CODE_FN_8BC546                      ; $8BD7D7 |
  JSR.W CODE_FN_8BDF1B                      ; $8BD7DA |
  LDA.B $4E,X                               ; $8BD7DD |
  CMP.W #$0003                              ; $8BD7DF |
  BNE CODE_8BD800                           ; $8BD7E2 |
  LDA.B $92                                 ; $8BD7E4 |
  ORA.W #$0051                              ; $8BD7E6 |
  STA.B $92                                 ; $8BD7E9 |
  LDY.W $1CB6                               ; $8BD7EB |
  BEQ CODE_8BD7FD                           ; $8BD7EE |
  LDY.W #$0000                              ; $8BD7F0 |
  LDA.B $42                                 ; $8BD7F3 |
  AND.W #$0001                              ; $8BD7F5 |
  BNE CODE_8BD7FD                           ; $8BD7F8 |
  LDY.W #$0001                              ; $8BD7FA |

CODE_8BD7FD:
  STY.W $1960                               ; $8BD7FD |

CODE_8BD800:
  LDA.B $1A,X                               ; $8BD800 |
  PHX                                       ; $8BD802 |
  ASL A                                     ; $8BD803 |
  TAX                                       ; $8BD804 |
  LDA.L PTR16_8BD80F,X                      ; $8BD805 |
  PLX                                       ; $8BD809 |
  STA.B $00                                 ; $8BD80A |
  JMP.W ($0000)                             ; $8BD80C |

PTR16_8BD80F:
  dw CODE_8BD873                            ; $8BD80F |
  dw CODE_8BD8EA                            ; $8BD811 |
  dw CODE_8BD8FD                            ; $8BD813 |
  dw CODE_8BD93A                            ; $8BD815 |
  dw CODE_8BD951                            ; $8BD817 |
  dw CODE_8BD963                            ; $8BD819 |
  dw UNREACH_8BD97D                         ; $8BD81B |
  dw CODE_8BD988                            ; $8BD81D |
  dw CODE_8BD9B2                            ; $8BD81F |
  dw CODE_8BD9CC                            ; $8BD821 |
  dw LOOSE_OP_8BA5D2                        ; $8BD823 |
  dw CODE_8BA5DD                            ; $8BD825 |
  dw CODE_8BC2BE                            ; $8BD827 |
  dw CODE_JP_8BD9D3                         ; $8BD829 |
  dw CODE_8BD9EB                            ; $8BD82B |
  dw CODE_8BDA6B                            ; $8BD82D |
  dw CODE_8BDA70                            ; $8BD82F |
  dw CODE_8BDAD5                            ; $8BD831 |
  dw CODE_8BDAE9                            ; $8BD833 |
  dw CODE_8BDA87                            ; $8BD835 |
  dw CODE_8BDA8C                            ; $8BD837 |
  dw CODE_JP_8BDAFA                         ; $8BD839 |
  dw CODE_JP_8BDB11                         ; $8BD83B |
  dw CODE_JP_8BDB33                         ; $8BD83D |
  dw CODE_JP_8BDB5B                         ; $8BD83F |
  dw CODE_8BDB62                            ; $8BD841 |
  dw CODE_8BDB6A                            ; $8BD843 |
  dw CODE_8BDB87                            ; $8BD845 |
  dw CODE_8BDBAF                            ; $8BD847 |
  dw CODE_8BDBC7                            ; $8BD849 |
  dw CODE_8BDBD0                            ; $8BD84B |
  dw CODE_8BDBD3                            ; $8BD84D |
  dw CODE_8BDBE7                            ; $8BD84F |
  dw CODE_8BDBF1                            ; $8BD851 |
  dw CODE_8BDBF7                            ; $8BD853 |
  dw CODE_8BDC0F                            ; $8BD855 |
  dw CODE_8BDC4D                            ; $8BD857 |
  dw CODE_8BDC5E                            ; $8BD859 |
  dw CODE_8BDC63                            ; $8BD85B |
  dw CODE_8BDC92                            ; $8BD85D |
  dw CODE_8BDCAD                            ; $8BD85F |
  dw CODE_JP_8BDCCC                         ; $8BD861 |
  dw CODE_8BDCCF                            ; $8BD863 |
  dw CODE_8BDCF0                            ; $8BD865 |
  dw CODE_8BDCFD                            ; $8BD867 |
  dw CODE_8BDD0F                            ; $8BD869 |
  dw CODE_8BDD21                            ; $8BD86B |
  dw CODE_8BDD3E                            ; $8BD86D |
  dw CODE_8BDD74                            ; $8BD86F |
  dw CODE_8BDF07                            ; $8BD871 |

CODE_8BD873:
  LDA.W #$1898                              ; $8BD873 |
  STA.B $04,X                               ; $8BD876 |
  LDA.W #$0020                              ; $8BD878 |
  STA.B $14,X                               ; $8BD87B |
  LDA.W #$0011                              ; $8BD87D |
  STA.W $1FAE                               ; $8BD880 |
  LDA.W #$32E6                              ; $8BD883 |
  STA.B $00,X                               ; $8BD886 |
  LDA.W #$8019                              ; $8BD888 |
  STA.B $22,X                               ; $8BD88B |
  LDA.W #$0060                              ; $8BD88D |
  STA.B $3A,X                               ; $8BD890 |
  JSL.L CODE_FL_85A9EF                      ; $8BD892 |
  JSL.L CODE_FL_86C63F                      ; $8BD896 |
  JSL.L CODE_FL_85A9B7                      ; $8BD89A |
  LDA.W #$2000                              ; $8BD89E |
  ORA.B $34,X                               ; $8BD8A1 |
  STA.B $34,X                               ; $8BD8A3 |
  JSR.W CODE_FN_8BC49E                      ; $8BD8A5 |
  STZ.W $1CB0                               ; $8BD8A8 |
  STZ.W $1CB4                               ; $8BD8AB |
  STZ.W $1CBA                               ; $8BD8AE |
  STZ.W $1CB6                               ; $8BD8B1 |
  STZ.W $1CB8                               ; $8BD8B4 |
  LDA.B $4E,X                               ; $8BD8B7 |
  ASL A                                     ; $8BD8B9 |
  PHX                                       ; $8BD8BA |
  TAX                                       ; $8BD8BB |
  LDA.L DATA16_8BD8E2,X                     ; $8BD8BC |
  STA.B $00                                 ; $8BD8C0 |
  LDA.L DATA16_8BD8DA,X                     ; $8BD8C2 |
  TAY                                       ; $8BD8C6 |
  LDA.L DATA16_8BDA23,X                     ; $8BD8C7 |
  PLX                                       ; $8BD8CB |
  STA.B $3C,X                               ; $8BD8CC |
  STY.B $3E,X                               ; $8BD8CE |
  LDA.B $00                                 ; $8BD8D0 |
  STA.B $40,X                               ; $8BD8D2 |
  LDA.W #$0020                              ; $8BD8D4 |
  STA.B $2C,X                               ; $8BD8D7 |

CODE_8BD8D9:
  RTL                                       ; $8BD8D9 |

DATA16_8BD8DA:
  dw $01A0,$01B0,$01A0,$01B0                ; $8BD8DA |

DATA16_8BD8E2:
  dw $3598,$37A9,$37A9,$32F0                ; $8BD8E2 |

CODE_8BD8EA:
  LDA.W $1F30                               ; $8BD8EA |
  BNE CODE_8BD8FC                           ; $8BD8ED |
  JSL.L CODE_FL_8098FD                      ; $8BD8EF |
  BCC CODE_8BD8FC                           ; $8BD8F3 |
  LDA.W #$003C                              ; $8BD8F5 |
  STA.B $2C,X                               ; $8BD8F8 |
  INC.B $1A,X                               ; $8BD8FA |

CODE_8BD8FC:
  RTL                                       ; $8BD8FC |

CODE_8BD8FD:
  JSL.L CODE_FL_86C70D                      ; $8BD8FD |
  LDA.B $4E,X                               ; $8BD901 |
  BEQ CODE_8BD912                           ; $8BD903 |
  DEC A                                     ; $8BD905 |
  BEQ CODE_8BD90A                           ; $8BD906 |
  BRA CODE_8BD91E                           ; $8BD908 |

CODE_8BD90A:
  LDA.W #$183C                              ; $8BD90A |
  JSR.W CODE_FN_8BD921                      ; $8BD90D |
  BRA CODE_8BD91E                           ; $8BD910 |

CODE_8BD912:
  LDA.W #$183C                              ; $8BD912 |
  JSR.W CODE_FN_8BD921                      ; $8BD915 |
  LDA.W #$000C                              ; $8BD918 |
  STA.W $0C46                               ; $8BD91B |

CODE_8BD91E:
  INC.B $1A,X                               ; $8BD91E |
  RTL                                       ; $8BD920 |

CODE_FN_8BD921:
  PHA                                       ; $8BD921 |
  LDY.W #$0CB0                              ; $8BD922 |
  LDA.W #$0301                              ; $8BD925 |
  JSL.L CODE_FL_86C9E0                      ; $8BD928 |
  LDA.W $0022,Y                             ; $8BD92C |
  AND.W #$BFFF                              ; $8BD92F |
  STA.W $0022,Y                             ; $8BD932 |
  PLA                                       ; $8BD935 |
  STA.W $004E,Y                             ; $8BD936 |
  RTS                                       ; $8BD939 |

CODE_8BD93A:
  LDA.W $1F40                               ; $8BD93A |
  BNE CODE_8BD8D9                           ; $8BD93D |
  LDA.W #$0030                              ; $8BD93F |
  STA.B $2C,X                               ; $8BD942 |
  LDA.B $4E,X                               ; $8BD944 |
  CMP.W #$0003                              ; $8BD946 |
  BNE CODE_8BD94E                           ; $8BD949 |
  JMP.W CODE_JP_8BDCCC                      ; $8BD94B |

CODE_8BD94E:
  JMP.W CODE_JP_8BD9D3                      ; $8BD94E |

CODE_8BD951:
  LDA.W #$0030                              ; $8BD951 |
  STA.B $2C,X                               ; $8BD954 |
  STZ.B $44,X                               ; $8BD956 |
  LDY.W #$DE57                              ; $8BD958 |
  JSR.W CODE_FN_8BC525                      ; $8BD95B |
  STZ.B $26,X                               ; $8BD95E |
  INC.B $1A,X                               ; $8BD960 |
  RTL                                       ; $8BD962 |

CODE_8BD963:
  JSL.L CODE_FL_86C393                      ; $8BD963 |
  JSR.W CODE_FN_8BDF60                      ; $8BD967 |
  JSR.W CODE_FN_8BC55C                      ; $8BD96A |
  LDA.B $3E,X                               ; $8BD96D |
  JSL.L CODE_FL_8CFCD0                      ; $8BD96F |
  BNE CODE_8BD9B1                           ; $8BD973 |
  LDA.B $2C,X                               ; $8BD975 |
  BNE CODE_8BD97C                           ; $8BD977 |
  JMP.W CODE_JP_8BD9D3                      ; $8BD979 |

CODE_8BD97C:
  RTL                                       ; $8BD97C |

UNREACH_8BD97D:
  db $74,$42,$22,$F7,$A9,$85,$A9,$30        ; $8BD97D |
  db $00,$80,$CC                            ; $8BD985 |

CODE_8BD988:
  JSL.L CODE_FL_86C393                      ; $8BD988 |
  JSR.W CODE_FN_8BDF60                      ; $8BD98C |
  JSR.W CODE_FN_8BC55C                      ; $8BD98F |
  LDA.B $3E,X                               ; $8BD992 |
  JSL.L CODE_FL_8CFCD0                      ; $8BD994 |
  BNE CODE_8BD9B1                           ; $8BD998 |
  LDA.B $42                                 ; $8BD99A |
  AND.W #$0007                              ; $8BD99C |
  BNE CODE_8BD9B1                           ; $8BD99F |
  INC.B $42,X                               ; $8BD9A1 |
  LDA.B $42,X                               ; $8BD9A3 |
  CMP.W #$000A                              ; $8BD9A5 |
  BNE CODE_8BD9B1                           ; $8BD9A8 |
  LDA.W #$0040                              ; $8BD9AA |
  STA.B $2C,X                               ; $8BD9AD |
  INC.B $1A,X                               ; $8BD9AF |

CODE_8BD9B1:
  RTL                                       ; $8BD9B1 |

CODE_8BD9B2:
  JSL.L CODE_FL_86C393                      ; $8BD9B2 |
  JSR.W CODE_FN_8BDF60                      ; $8BD9B6 |
  JSL.L CODE_FL_86C70D                      ; $8BD9B9 |
  LDY.W #$DE89                              ; $8BD9BD |
  JSR.W CODE_FN_8BC525                      ; $8BD9C0 |
  INC.B $1A,X                               ; $8BD9C3 |
  LDY.W #$B81C                              ; $8BD9C5 |
  JML.L CODE_FL_80C277                      ; $8BD9C8 |

CODE_8BD9CC:
  JSR.W CODE_FN_8BC4DB                      ; $8BD9CC |
  JML.L CODE_FL_86CA2D                      ; $8BD9CF |

CODE_JP_8BD9D3:
  STZ.B $20,X                               ; $8BD9D3 |
  STZ.B $1C,X                               ; $8BD9D5 |
  LDA.W #$000E                              ; $8BD9D7 |
  STA.B $1A,X                               ; $8BD9DA |
  PHX                                       ; $8BD9DC |
  LDA.B $4E,X                               ; $8BD9DD |
  ASL A                                     ; $8BD9DF |
  TAY                                       ; $8BD9E0 |
  LDA.W CODE_00C93D,Y                       ; $8BD9E1 |
  TAY                                       ; $8BD9E4 |
  JSL.L CODE_FL_80C277                      ; $8BD9E5 |
  PLX                                       ; $8BD9E9 |

CODE_8BD9EA:
  RTL                                       ; $8BD9EA |

CODE_8BD9EB:
  LDA.W $0CEA                               ; $8BD9EB |
  BEQ CODE_8BD9EA                           ; $8BD9EE |
  JSL.L CODE_FL_86C70D                      ; $8BD9F0 |
  STZ.B $20                                 ; $8BD9F4 |
  STZ.B $1C                                 ; $8BD9F6 |
  LDA.B $4E,X                               ; $8BD9F8 |
  CMP.W #$0002                              ; $8BD9FA |
  BEQ CODE_8BDA09                           ; $8BD9FD |
  LDY.B $09,X                               ; $8BD9FF |
  CPY.W #$0100                              ; $8BDA01 |
  BCC CODE_8BDA09                           ; $8BDA04 |
  JMP.W CODE_JP_8BDAFA                      ; $8BDA06 |

CODE_8BDA09:
  LDA.B $3C,X                               ; $8BDA09 |
  INC.B $3C,X                               ; $8BDA0B |

CODE_8BDA0D:
  PHX                                       ; $8BDA0D |
  ASL A                                     ; $8BDA0E |
  TAX                                       ; $8BDA0F |
  LDA.L DATA16_8BDA23,X                     ; $8BDA10 |
  PLX                                       ; $8BDA14 |
  CMP.W #$8000                              ; $8BDA15 |
  BPL CODE_8BDA1E                           ; $8BDA18 |
  STA.B $3C,X                               ; $8BDA1A |
  BRA CODE_8BDA0D                           ; $8BDA1C |

CODE_8BDA1E:
  STA.B $00                                 ; $8BDA1E |
  JMP.W ($0000)                             ; $8BDA20 |

DATA16_8BDA23:
  dw $0003,$0012,$0000,$DA6B                ; $8BDA23 |
  dw $DAFA,$DA6B,$DAFA,$DA6B                ; $8BDA2B |
  dw $DB62,$DA6B,$DAFA,$DA6B                ; $8BDA33 |
  dw $DB62,$DA6B,$DAFA,$DA6B                ; $8BDA3B |
  dw $DBF7,$0003,$DA87,$DAF5                ; $8BDA43 |
  dw $DA87,$DAF5,$DAC3,$DC5E                ; $8BDA4B |
  dw $DA87,$DAF5,$DAC3,$DC5E                ; $8BDA53 |
  dw $0012                                  ; $8BDA5B |
  db $87,$DA,$F5,$DA,$87,$DA,$F5,$DA        ; $8BDA5D |
  db $6B,$DA,$F7,$DB,$12,$00                ; $8BDA65 |

CODE_8BDA6B:
  LDA.W #$0010                              ; $8BDA6B |
  STA.B $2C,X                               ; $8BDA6E |

CODE_8BDA70:
  LDA.W #$0010                              ; $8BDA70 |
  STA.B $1A,X                               ; $8BDA73 |
  JSL.L CODE_FL_86C70D                      ; $8BDA75 |

CODE_8BDA79:
  JSL.L CODE_FL_86C444                      ; $8BDA79 |
  JSL.L CODE_FL_86C486                      ; $8BDA7D |

CODE_8BDA81:
  JSR.W CODE_FN_8BC49E                      ; $8BDA81 |
  JMP.W CODE_JP_8BD9D3                      ; $8BDA84 |

CODE_8BDA87:
  LDA.W #$0010                              ; $8BDA87 |
  STA.B $2C,X                               ; $8BDA8A |

CODE_8BDA8C:
  LDA.W #$0014                              ; $8BDA8C |
  STA.B $1A,X                               ; $8BDA8F |
  JSL.L CODE_FL_86C70D                      ; $8BDA91 |
  LDA.B $4E,X                               ; $8BDA95 |
  DEC A                                     ; $8BDA97 |
  BNE CODE_8BDA79                           ; $8BDA98 |
  LDA.B $09,X                               ; $8BDA9A |
  SEC                                       ; $8BDA9C |
  SBC.W #$0080                              ; $8BDA9D |
  TAY                                       ; $8BDAA0 |
  BPL CODE_8BDAA7                           ; $8BDAA1 |
  EOR.W #$FFFF                              ; $8BDAA3 |
  INC A                                     ; $8BDAA6 |

CODE_8BDAA7:
  CMP.W #$0020                              ; $8BDAA7 |
  BCC CODE_8BDA79                           ; $8BDAAA |
  TYA                                       ; $8BDAAC |
  ASL A                                     ; $8BDAAD |
  LDA.B $04,X                               ; $8BDAAE |
  AND.W #$DFDF                              ; $8BDAB0 |
  BCC CODE_8BDAB8                           ; $8BDAB3 |
  ORA.W #$2020                              ; $8BDAB5 |

CODE_8BDAB8:
  STA.B $04,X                               ; $8BDAB8 |
  BRA CODE_8BDA81                           ; $8BDABA |

  LDA.W #$000A                              ; $8BDABC |
  STA.B $2C,X                               ; $8BDABF |
  BRA CODE_8BDAE9                           ; $8BDAC1 |

  JSL.L CODE_FL_86C444                      ; $8BDAC3 |
  JSL.L CODE_FL_86C486                      ; $8BDAC7 |
  JSL.L CODE_FL_86CB6A                      ; $8BDACB |
  JSR.W CODE_FN_8BC49E                      ; $8BDACF |
  JMP.W CODE_JP_8BD9D3                      ; $8BDAD2 |

CODE_8BDAD5:
  JSL.L CODE_FL_86C444                      ; $8BDAD5 |
  JSL.L CODE_FL_86C486                      ; $8BDAD9 |
  JSL.L CODE_FL_86CB6A                      ; $8BDADD |
  JSR.W CODE_FN_8BC49E                      ; $8BDAE1 |
  LDA.W #$0004                              ; $8BDAE4 |
  STA.B $2C,X                               ; $8BDAE7 |

CODE_8BDAE9:
  LDA.W #$0012                              ; $8BDAE9 |
  STA.B $1A,X                               ; $8BDAEC |
  JSL.L CODE_FL_86C70D                      ; $8BDAEE |
  JMP.W CODE_JP_8BD9D3                      ; $8BDAF2 |

  LDY.W #$C95D                              ; $8BDAF5 |
  BRA CODE_8BDAFD                           ; $8BDAF8 |

CODE_JP_8BDAFA:
  LDY.W #$C945                              ; $8BDAFA |

CODE_8BDAFD:
  LDA.W #$0016                              ; $8BDAFD |

CODE_JP_8BDB00:
  STA.B $1A,X                               ; $8BDB00 |
  STY.W $1CB2                               ; $8BDB02 |
  LDY.W #$DE57                              ; $8BDB05 |
  JSR.W CODE_FN_8BC525                      ; $8BDB08 |
  LDA.W #$0004                              ; $8BDB0B |
  STA.B $42,X                               ; $8BDB0E |
  RTL                                       ; $8BDB10 |

CODE_JP_8BDB11:
  DEC.B $42,X                               ; $8BDB11 |
  BNE CODE_8BDB32                           ; $8BDB13 |
  LDY.W $1CB2                               ; $8BDB15 |
  LDA.W $0000,Y                             ; $8BDB18 |
  STA.B $28,X                               ; $8BDB1B |
  LDA.W $0004,Y                             ; $8BDB1D |
  STA.B $4C,X                               ; $8BDB20 |
  LDA.W $0002,Y                             ; $8BDB22 |
  JSL.L CODE_FL_86C887                      ; $8BDB25 |
  LDA.W #$0020                              ; $8BDB29 |
  JSL.L CODE_FL_8089BD                      ; $8BDB2C |
  INC.B $1A,X                               ; $8BDB30 |

CODE_8BDB32:
  RTL                                       ; $8BDB32 |

CODE_JP_8BDB33:
  JSR.W CODE_FN_8BDED1                      ; $8BDB33 |
  JSR.W CODE_FN_8BC55C                      ; $8BDB36 |
  LDA.B $3E,X                               ; $8BDB39 |
  JSL.L CODE_FL_8CFCD0                      ; $8BDB3B |
  BNE CODE_8BDB32                           ; $8BDB3F |
  LDA.W #$0006                              ; $8BDB41 |
  STA.B $42,X                               ; $8BDB44 |
  STZ.B $26,X                               ; $8BDB46 |
  STZ.B $28,X                               ; $8BDB48 |
  LDA.W #$001B                              ; $8BDB4A |
  JSL.L push_sound_queue                    ; $8BDB4D |
  LDA.W #$0001                              ; $8BDB51 |
  JSL.L CODE_FL_B3FE45                      ; $8BDB54 |
  INC.B $1A,X                               ; $8BDB58 |
  RTL                                       ; $8BDB5A |

CODE_JP_8BDB5B:
  DEC.B $42,X                               ; $8BDB5B |
  BNE CODE_8BDB32                           ; $8BDB5D |
  JMP.W CODE_JP_8BD9D3                      ; $8BDB5F |

CODE_8BDB62:
  LDA.W #$001A                              ; $8BDB62 |
  STA.B $1A,X                               ; $8BDB65 |
  STZ.W $1CB0                               ; $8BDB67 |

CODE_8BDB6A:
  LDA.W #$000A                              ; $8BDB6A |
  LDY.W #$C7E4                              ; $8BDB6D |
  JSR.W CODE_FN_8BC4F9                      ; $8BDB70 |
  BCS CODE_8BDB86                           ; $8BDB73 |
  LDA.W #$0080                              ; $8BDB75 |
  LDA.W #$0060                              ; $8BDB78 |
  STA.B $2C,X                               ; $8BDB7B |
  LDA.W #$0048                              ; $8BDB7D |
  JSL.L CODE_FL_8089BD                      ; $8BDB80 |
  INC.B $1A,X                               ; $8BDB84 |

CODE_8BDB86:
  RTL                                       ; $8BDB86 |

CODE_8BDB87:
  LDA.B $2C,X                               ; $8BDB87 |
  AND.W #$0003                              ; $8BDB89 |
  BNE CODE_8BDB9F                           ; $8BDB8C |
  LDA.W #$0329                              ; $8BDB8E |
  JSL.L CODE_FL_86C9A4                      ; $8BDB91 |
  BCS CODE_8BDB9F                           ; $8BDB95 |
  LDA.W #$8010                              ; $8BDB97 |
  STA.W $0022,Y                             ; $8BDB9A |
  STX.B $3A,Y                               ; $8BDB9D |

CODE_8BDB9F:
  JSL.L CODE_FL_86C70D                      ; $8BDB9F |
  STZ.B $20,X                               ; $8BDBA3 |
  STZ.B $1C,X                               ; $8BDBA5 |
  INC.B $1A,X                               ; $8BDBA7 |
  LDA.W #$0020                              ; $8BDBA9 |
  STA.B $2C,X                               ; $8BDBAC |
  RTL                                       ; $8BDBAE |

CODE_8BDBAF:
  JSL.L CODE_FL_86C70D                      ; $8BDBAF |
  LDA.W #$000A                              ; $8BDBB3 |
  BIT.W $1CB0                               ; $8BDBB6 |
  BVC CODE_8BDBBC                           ; $8BDBB9 |
  TDC                                       ; $8BDBBB |

CODE_8BDBBC:
  LDY.W #$C7F8                              ; $8BDBBC |
  JSR.W CODE_FN_8BC4F9                      ; $8BDBBF |
  BCS CODE_8BDB86                           ; $8BDBC2 |
  JMP.W CODE_JP_8BD9D3                      ; $8BDBC4 |

CODE_8BDBC7:
  LDY.W #$C94B                              ; $8BDBC7 |
  LDA.W #$001E                              ; $8BDBCA |
  JMP.W CODE_JP_8BDB00                      ; $8BDBCD |

CODE_8BDBD0:
  JMP.W CODE_JP_8BDB11                      ; $8BDBD0 |

CODE_8BDBD3:
  JSR.W CODE_FN_8BDBD9                      ; $8BDBD3 |
  JMP.W CODE_JP_8BDB33                      ; $8BDBD6 |

CODE_FN_8BDBD9:
  LDA.W #$0004                              ; $8BDBD9 |
  LDY.W #$C7C1                              ; $8BDBDC |
  JSR.W CODE_FN_8BC4F9                      ; $8BDBDF |
  BCS CODE_8BDBE6                           ; $8BDBE2 |
  STZ.B $1C,X                               ; $8BDBE4 |

CODE_8BDBE6:
  RTS                                       ; $8BDBE6 |

CODE_8BDBE7:
  LDA.B $1C,X                               ; $8BDBE7 |
  BEQ CODE_8BDBEE                           ; $8BDBE9 |
  JSR.W CODE_FN_8BDBD9                      ; $8BDBEB |

CODE_8BDBEE:
  JMP.W CODE_JP_8BDB5B                      ; $8BDBEE |

CODE_8BDBF1:
  STZ.W $1CB0                               ; $8BDBF1 |
  JMP.W CODE_JP_8BD9D3                      ; $8BDBF4 |

CODE_8BDBF7:
  LDA.W #$0022                              ; $8BDBF7 |
  STA.B $1A,X                               ; $8BDBFA |
  LDA.W #$0001                              ; $8BDBFC |
  LDY.W #$C7E4                              ; $8BDBFF |
  JSR.W CODE_FN_8BC4F9                      ; $8BDC02 |
  BCS CODE_JP_8BDC0E                        ; $8BDC05 |
  LDA.W #$0040                              ; $8BDC07 |
  STA.B $2C,X                               ; $8BDC0A |
  INC.B $1A,X                               ; $8BDC0C |

CODE_JP_8BDC0E:
  RTL                                       ; $8BDC0E |

CODE_8BDC0F:
  LDA.B $2C,X                               ; $8BDC0F |
  CMP.W #$0028                              ; $8BDC11 |
  BMI CODE_8BDC43                           ; $8BDC14 |
  LDA.W #$0073                              ; $8BDC16 |
  JSL.L CODE_FL_86C9A4                      ; $8BDC19 |
  BCS CODE_8BDC43                           ; $8BDC1D |
  LDA.B $86                                 ; $8BDC1F |
  AND.W #$001F                              ; $8BDC21 |
  CLC                                       ; $8BDC24 |
  ADC.W #$0018                              ; $8BDC25 |
  EOR.W #$FFFF                              ; $8BDC28 |
  INC A                                     ; $8BDC2B |
  JSL.L CODE_FL_8CFC64                      ; $8BDC2C |
  LDA.W #$FFE4                              ; $8BDC30 |
  JSL.L CODE_FL_8CFC6F                      ; $8BDC33 |
  LDA.W #$FE00                              ; $8BDC37 |
  STA.W $0028,Y                             ; $8BDC3A |
  LDA.W #$1898                              ; $8BDC3D |
  STA.W $0004,Y                             ; $8BDC40 |

CODE_8BDC43:
  JSL.L CODE_FL_86C70D                      ; $8BDC43 |
  STZ.B $20,X                               ; $8BDC47 |
  STZ.B $1C,X                               ; $8BDC49 |
  INC.B $1A,X                               ; $8BDC4B |

CODE_8BDC4D:
  LDA.W #$0008                              ; $8BDC4D |
  LDY.W #$C7F8                              ; $8BDC50 |
  JSR.W CODE_FN_8BC4F9                      ; $8BDC53 |
  BCC CODE_8BDC5B                           ; $8BDC56 |
  JMP.W CODE_JP_8BDC0E                      ; $8BDC58 |

CODE_8BDC5B:
  JMP.W CODE_JP_8BD9D3                      ; $8BDC5B |

CODE_8BDC5E:
  LDA.W #$0006                              ; $8BDC5E |
  STA.B $40,X                               ; $8BDC61 |

CODE_8BDC63:
  LDA.W #$0026                              ; $8BDC63 |
  STA.B $1A,X                               ; $8BDC66 |
  DEC.B $40,X                               ; $8BDC68 |
  LDA.W #$0303                              ; $8BDC6A |
  JSL.L CODE_FL_86C9A4                      ; $8BDC6D |
  BCS CODE_8BDC8A                           ; $8BDC71 |
  LDA.W $1CB4                               ; $8BDC73 |
  STA.W $004E,Y                             ; $8BDC76 |
  STX.B $3A,Y                               ; $8BDC79 |
  LDA.B $40,X                               ; $8BDC7B |
  ASL A                                     ; $8BDC7D |
  ASL A                                     ; $8BDC7E |
  ASL A                                     ; $8BDC7F |
  STA.W $003C,Y                             ; $8BDC80 |
  LDA.W #$002C                              ; $8BDC83 |
  JSL.L CODE_FL_8089BD                      ; $8BDC86 |

CODE_8BDC8A:
  LDA.W #$0008                              ; $8BDC8A |
  STA.B $42,X                               ; $8BDC8D |
  INC.B $1A,X                               ; $8BDC8F |
  RTL                                       ; $8BDC91 |

CODE_8BDC92:
  LDA.W $0CEA                               ; $8BDC92 |
  BEQ CODE_8BDCA2                           ; $8BDC95 |
  DEC.B $42,X                               ; $8BDC97 |
  BNE CODE_8BDCA1                           ; $8BDC99 |
  LDA.B $40,X                               ; $8BDC9B |
  BEQ CODE_8BDCA2                           ; $8BDC9D |
  DEC.B $1A,X                               ; $8BDC9F |

CODE_8BDCA1:
  RTL                                       ; $8BDCA1 |

CODE_8BDCA2:
  LDA.W $0CEA                               ; $8BDCA2 |
  LSR A                                     ; $8BDCA5 |
  ADC.W #$0028                              ; $8BDCA6 |
  STA.B $2C,X                               ; $8BDCA9 |
  INC.B $1A,X                               ; $8BDCAB |

CODE_8BDCAD:
  JSL.L CODE_FL_86C70D                      ; $8BDCAD |
  JSR.W CODE_FN_8BDCB7                      ; $8BDCB1 |
  JMP.W CODE_JP_8BD9D3                      ; $8BDCB4 |

CODE_FN_8BDCB7:
  LDA.W $1CBA                               ; $8BDCB7 |
  INC A                                     ; $8BDCBA |
  AND.W #$0003                              ; $8BDCBB |
  STA.W $1CBA                               ; $8BDCBE |
  TAY                                       ; $8BDCC1 |
  LDA.W CODE_00C963,Y                       ; $8BDCC2 |
  AND.W #$00FF                              ; $8BDCC5 |
  STA.W $1CB4                               ; $8BDCC8 |
  RTS                                       ; $8BDCCB |

CODE_JP_8BDCCC:
  JSR.W CODE_FN_8BC49E                      ; $8BDCCC |

CODE_8BDCCF:
  LDA.W #$002A                              ; $8BDCCF |
  STA.B $1A,X                               ; $8BDCD2 |
  LDA.W $19AA                               ; $8BDCD4 |
  BNE CODE_8BDCEF                           ; $8BDCD7 |
  LDY.W #$7E80                              ; $8BDCD9 |
  LDA.W #$0700                              ; $8BDCDC |

CODE_8BDCDF:
  PHX                                       ; $8BDCDF |
  LDX.W #$007F                              ; $8BDCE0 |
  STX.B $00                                 ; $8BDCE3 |
  LDX.W #$00A0                              ; $8BDCE5 |
  JSL.L CODE_FL_80934A                      ; $8BDCE8 |
  PLX                                       ; $8BDCEC |
  INC.B $1A,X                               ; $8BDCED |

CODE_8BDCEF:
  RTL                                       ; $8BDCEF |

CODE_8BDCF0:
  LDA.W $19AA                               ; $8BDCF0 |
  BNE CODE_8BDCEF                           ; $8BDCF3 |
  LDY.W #$7F80                              ; $8BDCF5 |
  LDA.W #$0900                              ; $8BDCF8 |
  BRA CODE_8BDCDF                           ; $8BDCFB |

CODE_8BDCFD:
  LDA.W #$002C                              ; $8BDCFD |
  STA.B $1A,X                               ; $8BDD00 |
  JSL.L CODE_FL_86C70D                      ; $8BDD02 |
  LDA.W #$00A0                              ; $8BDD06 |
  STA.W $1C68                               ; $8BDD09 |
  INC.B $1A,X                               ; $8BDD0C |

CODE_8BDD0E:
  RTL                                       ; $8BDD0E |

CODE_8BDD0F:
  SEC                                       ; $8BDD0F |
  LDA.W #$015C                              ; $8BDD10 |
  SBC.W $1C6C                               ; $8BDD13 |
  BMI CODE_8BDD0E                           ; $8BDD16 |
  LDA.W #$0034                              ; $8BDD18 |
  JSL.L CODE_FL_8089BD                      ; $8BDD1B |
  INC.B $1A,X                               ; $8BDD1F |

CODE_8BDD21:
  SEC                                       ; $8BDD21 |
  LDA.W $1C6A                               ; $8BDD22 |
  SBC.W $1C68                               ; $8BDD25 |
  CMP.W #$0060                              ; $8BDD28 |
  BPL CODE_8BDD0E                           ; $8BDD2B |
  JSL.L CODE_FL_86CB6A                      ; $8BDD2D |
  JSR.W CODE_FN_8BC49E                      ; $8BDD31 |
  LDA.B $22,X                               ; $8BDD34 |
  ORA.W #$8000                              ; $8BDD36 |
  STA.B $22,X                               ; $8BDD39 |
  INC.B $1A,X                               ; $8BDD3B |
  RTL                                       ; $8BDD3D |

CODE_8BDD3E:
  LDA.W $1C6A                               ; $8BDD3E |
  CMP.W $1C68                               ; $8BDD41 |
  BNE CODE_8BDD0E                           ; $8BDD44 |
  JSL.L CODE_FL_8BDE79                      ; $8BDD46 |
  LDA.W #$9000                              ; $8BDD4A |
  JSL.L CODE_FL_86CAEE                      ; $8BDD4D |
  SEP #$20                                  ; $8BDD51 |
  LDA.W $1FC0                               ; $8BDD53 |
  XBA                                       ; $8BDD56 |
  LDA.W $1FBE                               ; $8BDD57 |
  REP #$20                                  ; $8BDD5A |
  LDY.W $1C6C                               ; $8BDD5C |
  JSL.L CODE_FL_808FD5                      ; $8BDD5F |
  LDA.W $1FC0                               ; $8BDD63 |
  ORA.W $1FBE                               ; $8BDD66 |
  STA.W $1FBE                               ; $8BDD69 |
  STZ.W $1FC0                               ; $8BDD6C |
  INC.W $0CEA                               ; $8BDD6F |
  INC.B $1A,X                               ; $8BDD72 |

CODE_8BDD74:
  LDA.B $1C,X                               ; $8BDD74 |
  CMP.W #$0006                              ; $8BDD76 |
  BCC CODE_8BDDBD                           ; $8BDD79 |
  BNE CODE_8BDDBD                           ; $8BDD7B |
  LDA.B $20,X                               ; $8BDD7D |
  BEQ CODE_8BDDBD                           ; $8BDD7F |
  DEC A                                     ; $8BDD81 |
  BNE CODE_8BDDBD                           ; $8BDD82 |
  LDA.W #$0190                              ; $8BDD84 |
  STA.B $26,X                               ; $8BDD87 |
  LDA.W #$00F0                              ; $8BDD89 |
  JSL.L CODE_FL_8089BD                      ; $8BDD8C |
  LDA.W $1CB8                               ; $8BDD90 |

CODE_8BDD93:
  TAY                                       ; $8BDD93 |
  LDA.W LOOSE_OP_00C967,Y                   ; $8BDD94 |
  BEQ CODE_8BDD93                           ; $8BDD97 |
  INY                                       ; $8BDD99 |
  INY                                       ; $8BDD9A |
  STY.W $1CB8                               ; $8BDD9B |
  STA.B $28,X                               ; $8BDD9E |
  LDA.W #$0004                              ; $8BDDA0 |
  STA.B $4C,X                               ; $8BDDA3 |
  JSL.L CODE_FL_8BDE88                      ; $8BDDA5 |
  JSL.L CODE_FL_8BDE88                      ; $8BDDA9 |
  JSL.L CODE_FL_8BDE88                      ; $8BDDAD |
  JSL.L CODE_FL_8BDE88                      ; $8BDDB1 |
  JSL.L CODE_FL_8BDE88                      ; $8BDDB5 |
  JSL.L CODE_FL_8BDE88                      ; $8BDDB9 |

CODE_8BDDBD:
  LDA.W $1CB6                               ; $8BDDBD |
  BNE CODE_8BDDCC                           ; $8BDDC0 |
  LDA.B $09,X                               ; $8BDDC2 |
  CMP.W #$0080                              ; $8BDDC4 |
  BMI CODE_8BDDCC                           ; $8BDDC7 |
  INC.W $1CB6                               ; $8BDDC9 |

CODE_8BDDCC:
  JSR.W CODE_FN_8BDED1                      ; $8BDDCC |
  CLC                                       ; $8BDDCF |
  LDA.W $1C6C                               ; $8BDDD0 |
  ADC.B $30,X                               ; $8BDDD3 |
  CMP.B $0D,X                               ; $8BDDD5 |
  BMI CODE_8BDDDD                           ; $8BDDD7 |
  STA.B $0D,X                               ; $8BDDD9 |
  STZ.B $28,X                               ; $8BDDDB |

CODE_8BDDDD:
  JSL.L CODE_FL_86C82F                      ; $8BDDDD |
  LDA.W #$0060                              ; $8BDDE1 |
  CMP.B $28,X                               ; $8BDDE4 |
  BPL CODE_8BDDEA                           ; $8BDDE6 |
  STA.B $28,X                               ; $8BDDE8 |

CODE_8BDDEA:
  SEC                                       ; $8BDDEA |
  LDA.B $3E,X                               ; $8BDDEB |
  SBC.W $1672                               ; $8BDDED |
  CMP.B $0D,X                               ; $8BDDF0 |
  BPL CODE_8BDDF8                           ; $8BDDF2 |
  STA.B $0D,X                               ; $8BDDF4 |
  STZ.B $28,X                               ; $8BDDF6 |

CODE_8BDDF8:
  LDA.B $09,X                               ; $8BDDF8 |
  CMP.W #$0160                              ; $8BDDFA |
  BMI CODE_8BDE04                           ; $8BDDFD |
  LDA.W #$0031                              ; $8BDDFF |
  STA.B $1A,X                               ; $8BDE02 |

CODE_8BDE04:
  CLC                                       ; $8BDE04 |
  LDA.B $26,X                               ; $8BDE05 |
  ADC.W #$FFFA                              ; $8BDE07 |
  BPL CODE_8BDE0D                           ; $8BDE0A |
  TDC                                       ; $8BDE0C |

CODE_8BDE0D:
  STA.B $26,X                               ; $8BDE0D |
  CMP.W #$0050                              ; $8BDE0F |
  BPL CODE_8BDE30                           ; $8BDE12 |
  LDA.B $20,X                               ; $8BDE14 |
  BNE CODE_8BDE30                           ; $8BDE16 |
  JSL.L CODE_FL_8BE43F                      ; $8BDE18 |
  LDA.W #$0008                              ; $8BDE1C |
  BCC CODE_8BDE24                           ; $8BDE1F |
  JMP.W CODE_JP_8BDE2E                      ; $8BDE21 |

CODE_8BDE24:
  LDA.W #$00C0                              ; $8BDE24 |
  CMP.B $09,X                               ; $8BDE27 |
  BMI CODE_8BDE30                           ; $8BDE29 |
  LDA.W #$0001                              ; $8BDE2B |

CODE_JP_8BDE2E:
  STA.B $20,X                               ; $8BDE2E |

CODE_8BDE30:
  JSL.L CODE_FL_8BDE35                      ; $8BDE30 |
  RTL                                       ; $8BDE34 |

CODE_FL_8BDE35:
  LDA.B $2C,X                               ; $8BDE35 |
  BNE CODE_8BDE83                           ; $8BDE37 |
  BIT.W $0CEE                               ; $8BDE39 |
  BMI CODE_8BDE83                           ; $8BDE3C |
  LDA.W #$0303                              ; $8BDE3E |
  JSL.L CODE_FL_86C9A4                      ; $8BDE41 |
  BCS CODE_8BDE70                           ; $8BDE45 |
  LDA.W #$0003                              ; $8BDE47 |
  STA.W $004E,Y                             ; $8BDE4A |
  STX.B $3A,Y                               ; $8BDE4D |
  LDA.B $40,X                               ; $8BDE4F |
  ASL A                                     ; $8BDE51 |
  ADC.B $40,X                               ; $8BDE52 |
  ADC.W #$FFFD                              ; $8BDE54 |
  STA.B $08                                 ; $8BDE57 |
  LDA.W #$0003                              ; $8BDE59 |
  JSL.L CODE_FL_86957C                      ; $8BDE5C |
  CLC                                       ; $8BDE60 |
  ADC.B $08                                 ; $8BDE61 |
  ASL A                                     ; $8BDE63 |
  ASL A                                     ; $8BDE64 |
  ASL A                                     ; $8BDE65 |
  STA.W $003C,Y                             ; $8BDE66 |
  LDA.W #$002C                              ; $8BDE69 |
  JSL.L CODE_FL_8089BD                      ; $8BDE6C |

CODE_8BDE70:
  LDA.W #$0060                              ; $8BDE70 |
  STA.B $2C,X                               ; $8BDE73 |
  DEC.B $40,X                               ; $8BDE75 |
  BNE CODE_8BDE83                           ; $8BDE77 |

CODE_FL_8BDE79:
  LDA.W #$00B4                              ; $8BDE79 |
  STA.B $2C,X                               ; $8BDE7C |
  LDA.W #$0003                              ; $8BDE7E |
  STA.B $40,X                               ; $8BDE81 |

CODE_8BDE83:
  RTL                                       ; $8BDE83 |

  JML.L CODE_FL_85A9F7                      ; $8BDE84 |

CODE_FL_8BDE88:
  LDA.W #$0073                              ; $8BDE88 |
  JSL.L CODE_FL_86C9A4                      ; $8BDE8B |
  BCS CODE_8BDED0                           ; $8BDE8F |
  LDA.W #$0018                              ; $8BDE91 |
  JSL.L CODE_FL_86957C                      ; $8BDE94 |
  CLC                                       ; $8BDE98 |
  ADC.W #$0020                              ; $8BDE99 |
  STA.B $08                                 ; $8BDE9C |
  LDA.W #$0008                              ; $8BDE9E |
  JSL.L CODE_FL_86957C                      ; $8BDEA1 |
  STA.B $0A                                 ; $8BDEA5 |
  CLC                                       ; $8BDEA7 |
  JSL.L CODE_FL_869607                      ; $8BDEA8 |
  LDA.W #$0200                              ; $8BDEAC |
  JSL.L CODE_FL_86957C                      ; $8BDEAF |
  ADC.W #$FE00                              ; $8BDEB3 |
  STA.W $0028,Y                             ; $8BDEB6 |
  LDA.W #$00C0                              ; $8BDEB9 |
  JSL.L CODE_FL_86957C                      ; $8BDEBC |
  ADC.W #$FEE0                              ; $8BDEC0 |
  STA.W $0026,Y                             ; $8BDEC3 |
  TDC                                       ; $8BDEC6 |
  STA.W $0014,Y                             ; $8BDEC7 |
  LDA.W #$8000                              ; $8BDECA |
  STA.W $0022,Y                             ; $8BDECD |

CODE_8BDED0:
  RTL                                       ; $8BDED0 |

CODE_FN_8BDED1:
  LDA.B $4E,X                               ; $8BDED1 |
  ASL A                                     ; $8BDED3 |
  ASL A                                     ; $8BDED4 |
  TAY                                       ; $8BDED5 |
  LDA.B $09,X                               ; $8BDED6 |
  CLC                                       ; $8BDED8 |
  ADC.W $1662                               ; $8BDED9 |
  CMP.W LOOSE_OP_00C989,Y                   ; $8BDEDC |
  BPL CODE_8BDEF1                           ; $8BDEDF |
  LDA.W LOOSE_OP_00C989,Y                   ; $8BDEE1 |
  SEC                                       ; $8BDEE4 |
  SBC.W $1662                               ; $8BDEE5 |
  STA.B $09,X                               ; $8BDEE8 |
  JSL.L CODE_FL_86CB6A                      ; $8BDEEA |
  JMP.W CODE_FN_8BC49E                      ; $8BDEEE |

CODE_8BDEF1:
  CMP.W LOOSE_OP_00C98B,Y                   ; $8BDEF1 |
  BMI CODE_8BDF06                           ; $8BDEF4 |
  LDA.W LOOSE_OP_00C98B,Y                   ; $8BDEF6 |
  CLC                                       ; $8BDEF9 |
  SBC.W $1662                               ; $8BDEFA |
  STA.B $09,X                               ; $8BDEFD |
  JSL.L CODE_FL_86CB6A                      ; $8BDEFF |
  JMP.W CODE_FN_8BC49E                      ; $8BDF03 |

CODE_8BDF06:
  RTS                                       ; $8BDF06 |

CODE_8BDF07:
  STZ.B $26,X                               ; $8BDF07 |
  STZ.B $28,X                               ; $8BDF09 |
  STZ.B $4A,X                               ; $8BDF0B |
  STZ.B $4C,X                               ; $8BDF0D |
  LDA.W #$0002                              ; $8BDF0F |
  CMP.W $0CCA                               ; $8BDF12 |
  BMI CODE_8BDF1A                           ; $8BDF15 |
  STA.W $0CCA                               ; $8BDF17 |

CODE_8BDF1A:
  RTL                                       ; $8BDF1A |

CODE_FN_8BDF1B:
  PHX                                       ; $8BDF1B |
  LDA.B $1A,X                               ; $8BDF1C |
  BNE CODE_8BDF2C                           ; $8BDF1E |
  STZ.W $0492                               ; $8BDF20 |
  STZ.W $0552                               ; $8BDF23 |
  STZ.W $1CCE                               ; $8BDF26 |
  STZ.W $1CD0                               ; $8BDF29 |

CODE_8BDF2C:
  LDX.W #$0400                              ; $8BDF2C |
  LDY.W #$1CCE                              ; $8BDF2F |
  JSR.W CODE_FN_8BDF40                      ; $8BDF32 |
  LDX.W #$04C0                              ; $8BDF35 |
  LDY.W #$1CD0                              ; $8BDF38 |
  JSR.W CODE_FN_8BDF40                      ; $8BDF3B |
  PLX                                       ; $8BDF3E |
  RTS                                       ; $8BDF3F |

CODE_FN_8BDF40:
  LDA.B $18,X                               ; $8BDF40 |
  BEQ CODE_8BDF55                           ; $8BDF42 |
  LDA.W $0000,Y                             ; $8BDF44 |
  BMI CODE_8BDF55                           ; $8BDF47 |
  LDA.B $92,X                               ; $8BDF49 |
  BPL CODE_8BDF55                           ; $8BDF4B |
  STA.W $0000,Y                             ; $8BDF4D |
  LDA.W #$0708                              ; $8BDF50 |
  STA.B $66,X                               ; $8BDF53 |

CODE_8BDF55:
  RTS                                       ; $8BDF55 |

CODE_FN_8BDF56:
  LDA.W $0C94                               ; $8BDF56 |
  AND.W #$BFFF                              ; $8BDF59 |
  STA.W $0C94                               ; $8BDF5C |
  RTS                                       ; $8BDF5F |

CODE_FN_8BDF60:
  LDA.W #$0001                              ; $8BDF60 |
  CMP.B $4E,X                               ; $8BDF63 |
  LDA.B $4E,X                               ; $8BDF65 |
  ADC.W #$0009                              ; $8BDF67 |
  JSL.L CODE_FL_8CFD0B                      ; $8BDF6A |
  RTS                                       ; $8BDF6E |

CODE_8BDF6F:
  BIT.W $0CEE                               ; $8BDF6F |
  BPL CODE_8BDF77                           ; $8BDF72 |
  JMP.W CODE_JP_8BE007                      ; $8BDF74 |

CODE_8BDF77:
  JSL.L CODE_FL_86C3F8                      ; $8BDF77 |
  PHX                                       ; $8BDF7B |
  ASL A                                     ; $8BDF7C |
  TAX                                       ; $8BDF7D |
  LDA.L PTR16_8BDF88,X                      ; $8BDF7E |
  PLX                                       ; $8BDF82 |
  STA.B $00                                 ; $8BDF83 |
  JMP.W ($0000)                             ; $8BDF85 |

PTR16_8BDF88:
  dw CODE_8BDF8E                            ; $8BDF88 |
  dw CODE_8BDFC2                            ; $8BDF8A |
  dw CODE_8BE00B                            ; $8BDF8C |

CODE_8BDF8E:
  LDA.W #$0046                              ; $8BDF8E |
  JSL.L CODE_FL_86CAEE                      ; $8BDF91 |
  LDA.W #$0043                              ; $8BDF95 |
  STA.B $02,X                               ; $8BDF98 |
  JSL.L CODE_FL_85A9EF                      ; $8BDF9A |
  JSL.L CODE_FL_85A9FF                      ; $8BDF9E |
  JSL.L CODE_FL_86C63F                      ; $8BDFA2 |
  LDA.B $22,X                               ; $8BDFA6 |
  ORA.W #$4000                              ; $8BDFA8 |
  STA.B $22,X                               ; $8BDFAB |
  JSL.L CODE_FL_86958B                      ; $8BDFAD |
  AND.W #$0004                              ; $8BDFB1 |
  STA.B $3A,X                               ; $8BDFB4 |
  TAY                                       ; $8BDFB6 |
  LDA.W LOOSE_OP_00C99B,Y                   ; $8BDFB7 |
  STA.B $4A,X                               ; $8BDFBA |
  LDA.W $0C88                               ; $8BDFBC |
  STA.B $28,X                               ; $8BDFBF |
  RTL                                       ; $8BDFC1 |

CODE_8BDFC2:
  JSL.L CODE_FL_85F885                      ; $8BDFC2 |
  LDA.B $1A,X                               ; $8BDFC6 |
  DEC A                                     ; $8BDFC8 |
  BNE CODE_8BDFFF                           ; $8BDFC9 |
  LDA.B $09,X                               ; $8BDFCB |
  CLC                                       ; $8BDFCD |
  ADC.W #$0020                              ; $8BDFCE |
  CMP.W #$0018                              ; $8BDFD1 |
  BCC CODE_8BE000                           ; $8BDFD4 |
  JSL.L CODE_FL_86C827                      ; $8BDFD6 |
  LDY.B $3A,X                               ; $8BDFDA |
  LDA.W CODE_00C999,Y                       ; $8BDFDC |
  CMP.B $26,X                               ; $8BDFDF |
  BMI CODE_8BDFE5                           ; $8BDFE1 |
  STA.B $26,X                               ; $8BDFE3 |

CODE_8BDFE5:
  LDA.B $28,X                               ; $8BDFE5 |
  STA.B $00                                 ; $8BDFE7 |
  BEQ CODE_8BDFFF                           ; $8BDFE9 |
  LDA.W #$FFC0                              ; $8BDFEB |
  BIT.B $28,X                               ; $8BDFEE |
  BPL CODE_8BDFF5                           ; $8BDFF0 |
  LDA.W #$0040                              ; $8BDFF2 |

CODE_8BDFF5:
  JSL.L CODE_FL_86C831                      ; $8BDFF5 |
  EOR.B $00                                 ; $8BDFF9 |
  BPL CODE_8BDFFF                           ; $8BDFFB |
  STZ.B $28,X                               ; $8BDFFD |

CODE_8BDFFF:
  RTL                                       ; $8BDFFF |

CODE_8BE000:
  LDA.W #$0002                              ; $8BE000 |
  JSL.L CODE_FL_83D212                      ; $8BE003 |

CODE_JP_8BE007:
  JML.L CODE_FL_86CA57                      ; $8BE007 |

CODE_8BE00B:
  JSR.W CODE_FN_8BE336                      ; $8BE00B |
  LDA.W #$0015                              ; $8BE00E |
  JSL.L push_sound_queue                    ; $8BE011 |
  LDA.W #$001F                              ; $8BE015 |
  JSL.L CODE_FL_86C9C5                      ; $8BE018 |
  BCS CODE_8BE029                           ; $8BE01C |
  JSL.L CODE_FL_86C7C4                      ; $8BE01E |
  LDA.W #$0040                              ; $8BE022 |
  JSL.L CODE_FL_86CAE6                      ; $8BE025 |

CODE_8BE029:
  JML.L CODE_FL_86CA2D                      ; $8BE029 |

CODE_8BE02D:
  LDA.W $0CC8                               ; $8BE02D |
  CMP.W #$0302                              ; $8BE030 |
  BNE CODE_8BE03A                           ; $8BE033 |
  BIT.W $0CEE                               ; $8BE035 |
  BMI CODE_8BE047                           ; $8BE038 |

CODE_8BE03A:
  LDA.W $0CC8                               ; $8BE03A |
  CMP.W #$0301                              ; $8BE03D |
  BNE CODE_8BE04C                           ; $8BE040 |
  LDA.W $0CEA                               ; $8BE042 |
  BNE CODE_8BE04C                           ; $8BE045 |

CODE_8BE047:
  LDA.W #$0005                              ; $8BE047 |
  STA.B $1A,X                               ; $8BE04A |

CODE_8BE04C:
  JSL.L CODE_FL_85F885                      ; $8BE04C |
  JSL.L CODE_FL_86C3F8                      ; $8BE050 |
  PHX                                       ; $8BE054 |
  ASL A                                     ; $8BE055 |
  TAX                                       ; $8BE056 |
  LDA.L PTR16_8BE061,X                      ; $8BE057 |
  PLX                                       ; $8BE05B |
  STA.B $00                                 ; $8BE05C |
  JMP.W ($0000)                             ; $8BE05E |

PTR16_8BE061:
  dw CODE_8BE06D                            ; $8BE061 |
  dw CODE_8BE0EA                            ; $8BE063 |
  dw CODE_8BE123                            ; $8BE065 |
  dw CODE_8BE147                            ; $8BE067 |
  dw CODE_8BE185                            ; $8BE069 |
  dw CODE_8BE1AE                            ; $8BE06B |

CODE_8BE06D:
  LDA.W #$3434                              ; $8BE06D |
  STA.B $00,X                               ; $8BE070 |
  LDA.B $22,X                               ; $8BE072 |
  ORA.W #$0010                              ; $8BE074 |
  STA.B $22,X                               ; $8BE077 |
  JSL.L CODE_FL_86C63F                      ; $8BE079 |
  STZ.B $00                                 ; $8BE07D |
  LDY.B $3A,X                               ; $8BE07F |
  LDA.B $4E,X                               ; $8BE081 |
  CMP.W #$0003                              ; $8BE083 |
  BEQ CODE_8BE0B4                           ; $8BE086 |
  LDA.W $0004,Y                             ; $8BE088 |
  AND.W #$2020                              ; $8BE08B |
  STA.B $00                                 ; $8BE08E |
  BEQ CODE_8BE0A3                           ; $8BE090 |
  LDY.B $3C,X                               ; $8BE092 |
  LDA.W CODE_00C87B,Y                       ; $8BE094 |
  STA.B $04                                 ; $8BE097 |
  LDA.W CODE_00C87D,Y                       ; $8BE099 |
  STA.B $06                                 ; $8BE09C |
  LDA.W LOOSE_OP_00C879,Y                   ; $8BE09E |
  BRA CODE_8BE0C3                           ; $8BE0A1 |

CODE_8BE0A3:
  LDY.B $3C,X                               ; $8BE0A3 |
  LDA.W CODE_00C84B,Y                       ; $8BE0A5 |
  STA.B $04                                 ; $8BE0A8 |
  LDA.W LOOSE_OP_00C84D,Y                   ; $8BE0AA |
  STA.B $06                                 ; $8BE0AD |
  LDA.W CODE_00C849,Y                       ; $8BE0AF |
  BRA CODE_8BE0C3                           ; $8BE0B2 |

CODE_8BE0B4:
  LDY.B $3C,X                               ; $8BE0B4 |
  LDA.W CODE_00C8AB,Y                       ; $8BE0B6 |
  STA.B $04                                 ; $8BE0B9 |
  LDA.W LOOSE_OP_00C8AD,Y                   ; $8BE0BB |
  STA.B $06                                 ; $8BE0BE |
  LDA.W CODE_00C8A9,Y                       ; $8BE0C0 |

CODE_8BE0C3:
  STA.B $26,X                               ; $8BE0C3 |
  LDA.W #$FD00                              ; $8BE0C5 |
  STA.B $28,X                               ; $8BE0C8 |
  LDY.B $3A,X                               ; $8BE0CA |
  LDA.W $0009,Y                             ; $8BE0CC |
  CLC                                       ; $8BE0CF |
  ADC.B $04                                 ; $8BE0D0 |
  STA.B $09,X                               ; $8BE0D2 |
  LDA.W $000D,Y                             ; $8BE0D4 |
  CLC                                       ; $8BE0D7 |
  ADC.B $06                                 ; $8BE0D8 |
  STA.B $0D,X                               ; $8BE0DA |
  LDA.B $00                                 ; $8BE0DC |
  ORA.W #$1090                              ; $8BE0DE |
  STA.B $04,X                               ; $8BE0E1 |
  LDA.W #$0073                              ; $8BE0E3 |
  JSL.L CODE_FL_86C9C5                      ; $8BE0E6 |

CODE_8BE0EA:
  LDY.W #$3434                              ; $8BE0EA |
  LDA.B $28,X                               ; $8BE0ED |
  CMP.W #$0100                              ; $8BE0EF |
  BPL CODE_8BE113                           ; $8BE0F2 |
  BPL CODE_8BE0FA                           ; $8BE0F4 |
  EOR.W #$FFFF                              ; $8BE0F6 |
  INC A                                     ; $8BE0F9 |

CODE_8BE0FA:
  CMP.W #$0100                              ; $8BE0FA |
  BPL CODE_8BE102                           ; $8BE0FD |
  LDY.W #$343C                              ; $8BE0FF |

CODE_8BE102:
  STY.B $00,X                               ; $8BE102 |
  JSL.L CODE_FL_86C82F                      ; $8BE104 |
  JSL.L CODE_FL_858A65                      ; $8BE108 |
  BEQ CODE_8BE112                           ; $8BE10C |
  JSL.L CODE_FL_86CB6A                      ; $8BE10E |

CODE_8BE112:
  RTL                                       ; $8BE112 |

CODE_8BE113:
  LDA.W #$0004                              ; $8BE113 |
  STA.B $2C,X                               ; $8BE116 |
  LDA.W #$3444                              ; $8BE118 |
  STA.B $00,X                               ; $8BE11B |
  STZ.B $26,X                               ; $8BE11D |
  STZ.B $28,X                               ; $8BE11F |
  INC.B $1A,X                               ; $8BE121 |

CODE_8BE123:
  JSL.L CODE_FL_86C70D                      ; $8BE123 |
  INC.B $1A,X                               ; $8BE127 |
  JSL.L CODE_FL_85A9B7                      ; $8BE129 |
  JSL.L CODE_FL_85A9EF                      ; $8BE12D |
  LDA.W #$3001                              ; $8BE131 |
  JSL.L CODE_FL_86CAEE                      ; $8BE134 |
  LDA.W #$000C                              ; $8BE138 |
  LDY.B $4E,X                               ; $8BE13B |
  CPY.W #$0003                              ; $8BE13D |
  BEQ CODE_8BE145                           ; $8BE140 |
  LDA.W #$001E                              ; $8BE142 |

CODE_8BE145:
  STA.B $2C,X                               ; $8BE145 |

CODE_8BE147:
  JSL.L CODE_FL_86C70D                      ; $8BE147 |
  INC.B $1A,X                               ; $8BE14B |
  LDA.B $4E,X                               ; $8BE14D |
  PHX                                       ; $8BE14F |
  ASL A                                     ; $8BE150 |
  TAX                                       ; $8BE151 |
  LDA.L PTR16_8BE15C,X                      ; $8BE152 |
  PLX                                       ; $8BE156 |
  STA.B $00                                 ; $8BE157 |
  JMP.W ($0000)                             ; $8BE159 |

PTR16_8BE15C:
  dw CODE_8BE164                            ; $8BE15C |
  dw CODE_8BE16A                            ; $8BE15E |
  dw CODE_8BE177                            ; $8BE160 |
  dw CODE_8BE164                            ; $8BE162 |

CODE_8BE164:
  LDA.W #$0010                              ; $8BE164 |
  STA.B $4C,X                               ; $8BE167 |
  RTL                                       ; $8BE169 |

CODE_8BE16A:
  LDA.B $3C,X                               ; $8BE16A |
  AND.W #$0008                              ; $8BE16C |
  STA.B $3E,X                               ; $8BE16F |
  LDA.W #$0120                              ; $8BE171 |
  STA.B $28,X                               ; $8BE174 |
  RTL                                       ; $8BE176 |

CODE_8BE177:
  JSL.L CODE_FL_86C444                      ; $8BE177 |
  LDA.W #$0009                              ; $8BE17B |
  LDY.W #$0000                              ; $8BE17E |
  JML.L CODE_FL_86C68A                      ; $8BE181 |

CODE_8BE185:
  LDA.B $4E,X                               ; $8BE185 |
  PHX                                       ; $8BE187 |
  ASL A                                     ; $8BE188 |
  TAX                                       ; $8BE189 |
  LDA.L PTR16_8BE194,X                      ; $8BE18A |
  PLX                                       ; $8BE18E |
  STA.B $00                                 ; $8BE18F |
  JMP.W ($0000)                             ; $8BE191 |

PTR16_8BE194:
  dw CODE_8BE19C                            ; $8BE194 |
  dw CODE_8BE1A0                            ; $8BE196 |
  dw CODE_8BE1AD                            ; $8BE198 |
  dw CODE_8BE19C                            ; $8BE19A |

CODE_8BE19C:
  JML.L CODE_FL_86C82F                      ; $8BE19C |

CODE_8BE1A0:
  INC.B $3E,X                               ; $8BE1A0 |
  LDA.B $3E,X                               ; $8BE1A2 |
  LSR A                                     ; $8BE1A4 |
  LSR A                                     ; $8BE1A5 |
  LDY.W #$0004                              ; $8BE1A6 |
  JML.L CODE_JL_86C51C                      ; $8BE1A9 |

CODE_8BE1AD:
  RTL                                       ; $8BE1AD |

CODE_8BE1AE:
  JSL.L CODE_FL_85A71F                      ; $8BE1AE |
  JML.L CODE_FL_86CA2D                      ; $8BE1B2 |

CODE_8BE1B6:
  JSL.L CODE_FL_86C3A3                      ; $8BE1B6 |
  LDA.B $1A,X                               ; $8BE1BA |
  CMP.W #$0007                              ; $8BE1BC |
  BPL CODE_8BE1D6                           ; $8BE1BF |
  LDY.W #$0C10                              ; $8BE1C1 |
  LDA.W $0018,Y                             ; $8BE1C4 |
  BEQ CODE_8BE1D1                           ; $8BE1C7 |
  LDA.W $0036,Y                             ; $8BE1C9 |
  AND.W #$00FF                              ; $8BE1CC |
  BNE CODE_8BE1D6                           ; $8BE1CF |

CODE_8BE1D1:
  LDA.W #$0007                              ; $8BE1D1 |
  STA.B $1A,X                               ; $8BE1D4 |

CODE_8BE1D6:
  LDA.B $1A,X                               ; $8BE1D6 |
  PHX                                       ; $8BE1D8 |
  ASL A                                     ; $8BE1D9 |
  TAX                                       ; $8BE1DA |
  LDA.L PTR16_8BE1E5,X                      ; $8BE1DB |
  PLX                                       ; $8BE1DF |
  STA.B $00                                 ; $8BE1E0 |
  JMP.W ($0000)                             ; $8BE1E2 |

PTR16_8BE1E5:
  dw CODE_8BE1F7                            ; $8BE1E5 |
  dw CODE_8BE23E                            ; $8BE1E7 |
  dw CODE_8BE246                            ; $8BE1E9 |
  dw CODE_8BE20E                            ; $8BE1EB |
  dw CODE_8BE236                            ; $8BE1ED |
  dw CODE_8BE246                            ; $8BE1EF |
  dw CODE_8BE26E                            ; $8BE1F1 |
  dw CODE_8BE277                            ; $8BE1F3 |
  dw CODE_8BE282                            ; $8BE1F5 |

CODE_8BE1F7:
  STZ.B $88                                 ; $8BE1F7 |
  PHX                                       ; $8BE1F9 |
  LDX.W #$8C2F                              ; $8BE1FA |
  JSL.L CODE_FL_80BF9A                      ; $8BE1FD |
  PLX                                       ; $8BE201 |
  INC.B $1A,X                               ; $8BE202 |
  LDA.B $4E,X                               ; $8BE204 |
  AND.W #$FF00                              ; $8BE206 |
  XBA                                       ; $8BE209 |
  ASL A                                     ; $8BE20A |
  STA.B $3A,X                               ; $8BE20B |

CODE_8BE20D:
  RTL                                       ; $8BE20D |

CODE_8BE20E:
  JSL.L CODE_FL_86C70D                      ; $8BE20E |
  LDA.B $4E,X                               ; $8BE212 |
  AND.W #$00FF                              ; $8BE214 |
  STA.B $2C,X                               ; $8BE217 |
  LDA.W #$3300                              ; $8BE219 |
  STA.B $00                                 ; $8BE21C |
  SED                                       ; $8BE21E |
  SEC                                       ; $8BE21F |
  LDA.B $3A,X                               ; $8BE220 |
  SBC.W #$0001                              ; $8BE222 |
  STA.B $3A,X                               ; $8BE225 |
  CLD                                       ; $8BE227 |
  BNE CODE_8BE22C                           ; $8BE228 |
  INC.B $1A,X                               ; $8BE22A |

CODE_8BE22C:
  LDY.W #$5069                              ; $8BE22C |
  JSL.L CODE_FL_869724                      ; $8BE22F |
  BCS CODE_8BE20D                           ; $8BE233 |
  RTL                                       ; $8BE235 |

CODE_8BE236:
  JSR.W CODE_FN_8BDF56                      ; $8BE236 |
  LDA.W #$FFFF                              ; $8BE239 |
  STA.B $3E,X                               ; $8BE23C |

CODE_8BE23E:
  LDA.W #$0078                              ; $8BE23E |
  STA.B $2C,X                               ; $8BE241 |
  INC.B $1A,X                               ; $8BE243 |
  RTL                                       ; $8BE245 |

CODE_8BE246:
  LDA.B $2C,X                               ; $8BE246 |
  BIT.W #$0003                              ; $8BE248 |
  BNE CODE_8BE260                           ; $8BE24B |
  AND.W #$0004                              ; $8BE24D |
  STA.B $88                                 ; $8BE250 |
  LDA.W #$3300                              ; $8BE252 |
  STA.B $00                                 ; $8BE255 |
  LDA.B $3A,X                               ; $8BE257 |
  LDY.W #$5069                              ; $8BE259 |
  JSL.L CODE_FL_869724                      ; $8BE25C |

CODE_8BE260:
  JSL.L CODE_FL_86C70D                      ; $8BE260 |
  INC.B $1A,X                               ; $8BE264 |
  LDA.B $4E,X                               ; $8BE266 |
  AND.W #$00FF                              ; $8BE268 |
  STA.B $2C,X                               ; $8BE26B |
  RTL                                       ; $8BE26D |

CODE_8BE26E:
  LDA.B $8E                                 ; $8BE26E |
  CMP.W #$0064                              ; $8BE270 |
  BEQ CODE_8BE286                           ; $8BE273 |
  BRA CODE_FL_8BE28D                        ; $8BE275 |

CODE_8BE277:
  JSR.W CODE_FN_8BDF56                      ; $8BE277 |
  LDA.W #$0078                              ; $8BE27A |
  STA.B $2C,X                               ; $8BE27D |
  INC.B $1A,X                               ; $8BE27F |
  RTL                                       ; $8BE281 |

CODE_8BE282:
  JSL.L CODE_FL_86C70D                      ; $8BE282 |

CODE_8BE286:
  LDA.W #$0001                              ; $8BE286 |
  STA.L $7E7C06                             ; $8BE289 |

CODE_FL_8BE28D:
  LDY.B $8E                                 ; $8BE28D |
  LDA.W #$F5E4                              ; $8BE28F |
  CPY.W #$0170                              ; $8BE292 |
  BEQ CODE_8BE2A2                           ; $8BE295 |
  LDA.W #$F5DC                              ; $8BE297 |
  CPY.W #$0066                              ; $8BE29A |
  BEQ CODE_8BE2A2                           ; $8BE29D |
  LDA.W #$F62C                              ; $8BE29F |

CODE_8BE2A2:
  JSL.L CODE_FL_80E9EA                      ; $8BE2A2 |
  JSL.L CODE_FL_84801F                      ; $8BE2A6 |
  JSL.L CODE_FL_848519                      ; $8BE2AA |
  STZ.B $E4                                 ; $8BE2AE |
  RTL                                       ; $8BE2B0 |

CODE_JL_8BE2B1:
  TDC                                       ; $8BE2B1 |
  STA.L $7E7C06                             ; $8BE2B2 |
  LDA.W #$0009                              ; $8BE2B6 |
  STA.W $003A                               ; $8BE2B9 |
  STZ.W $003C                               ; $8BE2BC |
  BRA CODE_FL_8BE28D                        ; $8BE2BF |

CODE_8BE2C1:
  JSL.L CODE_FL_86C3A3                      ; $8BE2C1 |
  LDA.B $1A,X                               ; $8BE2C5 |
  PHX                                       ; $8BE2C7 |
  ASL A                                     ; $8BE2C8 |
  TAX                                       ; $8BE2C9 |
  LDA.L PTR16_8BE2D4,X                      ; $8BE2CA |
  PLX                                       ; $8BE2CE |
  STA.B $00                                 ; $8BE2CF |
  JMP.W ($0000)                             ; $8BE2D1 |

PTR16_8BE2D4:
  dw CODE_8BE2E2                            ; $8BE2D4 |
  dw CODE_8BE300                            ; $8BE2D6 |
  dw CODE_8BE236                            ; $8BE2D8 |
  dw CODE_8BE33D                            ; $8BE2DA |
  dw CODE_FL_8BE28D                         ; $8BE2DC |
  dw CODE_8BE236                            ; $8BE2DE |
  dw CODE_8BE282                            ; $8BE2E0 |

CODE_8BE2E2:
  LDA.B $3A,X                               ; $8BE2E2 |
  BEQ CODE_8BE2FF                           ; $8BE2E4 |
  LDA.W #$0100                              ; $8BE2E6 |
  STA.B $22,X                               ; $8BE2E9 |
  STZ.B $88                                 ; $8BE2EB |
  PHX                                       ; $8BE2ED |
  LDX.W #$8C8E                              ; $8BE2EE |
  JSL.L CODE_FL_80BF9A                      ; $8BE2F1 |
  PLX                                       ; $8BE2F5 |
  LDA.W #$0100                              ; $8BE2F6 |
  STA.B $3A,X                               ; $8BE2F9 |
  STA.B $3C,X                               ; $8BE2FB |
  INC.B $1A,X                               ; $8BE2FD |

CODE_8BE2FF:
  RTL                                       ; $8BE2FF |

CODE_8BE300:
  LDA.B $3E,X                               ; $8BE300 |
  BMI CODE_8BE335                           ; $8BE302 |
  LDA.B $3C,X                               ; $8BE304 |
  BEQ CODE_8BE335                           ; $8BE306 |
  AND.W #$00FF                              ; $8BE308 |
  SED                                       ; $8BE30B |
  CLC                                       ; $8BE30C |
  ADC.B $3E,X                               ; $8BE30D |
  CLD                                       ; $8BE30F |
  CMP.B $4E,X                               ; $8BE310 |
  BCC CODE_8BE316                           ; $8BE312 |
  LDA.B $4E,X                               ; $8BE314 |

CODE_8BE316:
  STA.B $18                                 ; $8BE316 |
  LDA.W #$3300                              ; $8BE318 |
  STA.B $00                                 ; $8BE31B |
  LDA.B $18                                 ; $8BE31D |
  LDY.W #$50D9                              ; $8BE31F |
  JSL.L CODE_FL_86973B                      ; $8BE322 |
  STZ.B $3C,X                               ; $8BE326 |
  LDA.B $18                                 ; $8BE328 |
  STA.B $3E,X                               ; $8BE32A |
  CMP.B $4E,X                               ; $8BE32C |
  BNE CODE_8BE335                           ; $8BE32E |
  LDA.W #$0005                              ; $8BE330 |
  STA.B $1A,X                               ; $8BE333 |

CODE_8BE335:
  RTL                                       ; $8BE335 |

CODE_FN_8BE336:
  LDA.W #$0001                              ; $8BE336 |
  STA.W $0CEC                               ; $8BE339 |
  RTS                                       ; $8BE33C |

CODE_8BE33D:
  LDA.B $2C,X                               ; $8BE33D |
  BIT.W #$0003                              ; $8BE33F |
  BNE CODE_8BE357                           ; $8BE342 |
  AND.W #$0004                              ; $8BE344 |
  STA.B $88                                 ; $8BE347 |
  LDA.W #$3300                              ; $8BE349 |
  STA.B $00                                 ; $8BE34C |
  LDA.B $4E,X                               ; $8BE34E |
  LDY.W #$50D9                              ; $8BE350 |
  JSL.L CODE_FL_86973B                      ; $8BE353 |

CODE_8BE357:
  JSL.L CODE_FL_86C70D                      ; $8BE357 |
  INC.B $1A,X                               ; $8BE35B |
  LDA.B $4E,X                               ; $8BE35D |
  STA.B $2C,X                               ; $8BE35F |
  RTL                                       ; $8BE361 |

CODE_8BE362:
  STZ.B $22,X                               ; $8BE362 |
  STZ.B $34,X                               ; $8BE364 |
  LDA.W $1662                               ; $8BE366 |
  CMP.W #$0140                              ; $8BE369 |
  BMI CODE_8BE38F                           ; $8BE36C |
  LDY.B $1A,X                               ; $8BE36E |
  BNE CODE_8BE37E                           ; $8BE370 |
  LDY.W $1C6C                               ; $8BE372 |
  STY.B $3E,X                               ; $8BE375 |
  LDA.W #$0003                              ; $8BE377 |
  STA.B $40,X                               ; $8BE37A |
  INC.B $1A,X                               ; $8BE37C |

CODE_8BE37E:
  JSL.L CODE_FL_86C3A3                      ; $8BE37E |
  BNE CODE_8BE38F                           ; $8BE382 |
  LDA.W #$0058                              ; $8BE384 |
  SBC.W $0CEE                               ; $8BE387 |
  STA.B $2C,X                               ; $8BE38A |
  JSR.W CODE_FN_8BE390                      ; $8BE38C |

CODE_8BE38F:
  RTL                                       ; $8BE38F |

CODE_FN_8BE390:
  LDA.B $3E,X                               ; $8BE390 |
  STA.B $08                                 ; $8BE392 |
  LDA.W #$0306                              ; $8BE394 |
  DEC.B $40,X                               ; $8BE397 |
  BNE CODE_8BE3C6                           ; $8BE399 |
  LDA.B $86                                 ; $8BE39B |
  AND.W #$0003                              ; $8BE39D |
  CMP.W #$0003                              ; $8BE3A0 |
  BEQ CODE_8BE3A8                           ; $8BE3A3 |
  LDA.W #$0002                              ; $8BE3A5 |

CODE_8BE3A8:
  TAY                                       ; $8BE3A8 |
  LDA.W $1662                               ; $8BE3A9 |
  CMP.W #$0300                              ; $8BE3AC |
  BCC CODE_8BE3C1                           ; $8BE3AF |
  AND.W #$0300                              ; $8BE3B1 |
  BNE CODE_8BE3C1                           ; $8BE3B4 |
  LDA.W #$0058                              ; $8BE3B6 |
  SBC.W $0CEE                               ; $8BE3B9 |
  STA.B $2C,X                               ; $8BE3BC |
  LDY.W #$0001                              ; $8BE3BE |

CODE_8BE3C1:
  STY.B $40,X                               ; $8BE3C1 |
  LDA.W #$0304                              ; $8BE3C3 |

CODE_8BE3C6:
  JSL.L CODE_FL_86C9A4                      ; $8BE3C6 |
  LDA.B $08                                 ; $8BE3CA |
  BCS CODE_8BE3F2                           ; $8BE3CC |
  LDA.W #$0110                              ; $8BE3CE |
  STA.W $0009,Y                             ; $8BE3D1 |
  LDA.W #$009C                              ; $8BE3D4 |
  SBC.W $1C6C                               ; $8BE3D7 |
  JSL.L CODE_FL_86957C                      ; $8BE3DA |
  CLC                                       ; $8BE3DE |
  ADC.B $3E,X                               ; $8BE3DF |

CODE_8BE3E1:
  CMP.W #$00A4                              ; $8BE3E1 |
  BCC CODE_8BE3EF                           ; $8BE3E4 |
  SBC.W #$0094                              ; $8BE3E6 |
  CLC                                       ; $8BE3E9 |
  ADC.W $1C6C                               ; $8BE3EA |
  BRA CODE_8BE3E1                           ; $8BE3ED |

CODE_8BE3EF:
  STA.W $000D,Y                             ; $8BE3EF |

CODE_8BE3F2:
  STA.B $3E,X                               ; $8BE3F2 |
  RTS                                       ; $8BE3F4 |

CODE_8BE3F5:
  JSL.L CODE_FL_85F885                      ; $8BE3F5 |
  JSL.L CODE_FL_86C3F8                      ; $8BE3F9 |
  PHX                                       ; $8BE3FD |
  ASL A                                     ; $8BE3FE |
  TAX                                       ; $8BE3FF |
  LDA.L PTR16_8BE40A,X                      ; $8BE400 |
  PLX                                       ; $8BE404 |
  STA.B $00                                 ; $8BE405 |
  JMP.W ($0000)                             ; $8BE407 |

PTR16_8BE40A:
  dw CODE_8BE40E                            ; $8BE40A |
  dw CODE_8BE435                            ; $8BE40C |

CODE_8BE40E:
  LDA.W #$0043                              ; $8BE40E |
  STA.B $02,X                               ; $8BE411 |
  LDA.W #$350E                              ; $8BE413 |
  STA.B $00,X                               ; $8BE416 |
  LDA.W #$00E8                              ; $8BE418 |
  STA.B $06,X                               ; $8BE41B |
  JSL.L CODE_FL_85A9B7                      ; $8BE41D |
  JSL.L CODE_FL_85A9EF                      ; $8BE421 |
  LDA.W #$2000                              ; $8BE425 |
  ORA.B $34,X                               ; $8BE428 |
  STA.B $34,X                               ; $8BE42A |
  LDA.W #$FF20                              ; $8BE42C |
  STA.B $26,X                               ; $8BE42F |
  JML.L CODE_FL_86C63F                      ; $8BE431 |

CODE_8BE435:
  LDA.W $0CEE                               ; $8BE435 |
  BMI CODE_8BE43B                           ; $8BE438 |
  RTL                                       ; $8BE43A |

CODE_8BE43B:
  JML.L CODE_FL_85A9F7                      ; $8BE43B |

CODE_FL_8BE43F:
  CLC                                       ; $8BE43F |
  LDA.W $1662                               ; $8BE440 |
  ADC.W #$00A0                              ; $8BE443 |
  SEP #$20                                  ; $8BE446 |
  XBA                                       ; $8BE448 |
  CMP.W $1C01                               ; $8BE449 |
  REP #$20                                  ; $8BE44C |
  RTL                                       ; $8BE44E |

CODE_8BE44F:
  JSL.L CODE_FL_86C424                      ; $8BE44F |
  PHX                                       ; $8BE453 |
  ASL A                                     ; $8BE454 |
  TAX                                       ; $8BE455 |
  LDA.L PTR16_8BE460,X                      ; $8BE456 |
  PLX                                       ; $8BE45A |
  STA.B $00                                 ; $8BE45B |
  JMP.W ($0000)                             ; $8BE45D |

PTR16_8BE460:
  dw CODE_8BE464                            ; $8BE460 |
  dw CODE_8BE483                            ; $8BE462 |

CODE_8BE464:
  LDA.W #$003F                              ; $8BE464 |
  STA.W $1FDE                               ; $8BE467 |
  LDA.W #$0000                              ; $8BE46A |
  STA.W $1FDC                               ; $8BE46D |
  LDA.B $4E,X                               ; $8BE470 |
  BNE CODE_8BE477                           ; $8BE472 |
  LDA.W #$0040                              ; $8BE474 |

CODE_8BE477:
  STA.B $2C,X                               ; $8BE477 |
  LDA.W #$006C                              ; $8BE479 |
  JSL.L CODE_FL_8089BD                      ; $8BE47C |
  INC.B $1A,X                               ; $8BE480 |
  RTL                                       ; $8BE482 |

CODE_8BE483:
  LDA.W $1C38                               ; $8BE483 |
  AND.W #$0001                              ; $8BE486 |
  BEQ CODE_8BE48E                           ; $8BE489 |
  LDA.W #$FFFF                              ; $8BE48B |

CODE_8BE48E:
  JSL.L CODE_FL_808D48                      ; $8BE48E |
  JSL.L CODE_FL_86C70D                      ; $8BE492 |
  TDC                                       ; $8BE496 |
  STA.W $1FDE                               ; $8BE497 |
  JML.L CODE_FL_86CA57                      ; $8BE49A |

CODE_8BE49E:
  JSL.L CODE_FL_85F885                      ; $8BE49E |
  LDA.W #$0002                              ; $8BE4A2 |
  JSR.W CODE_FN_8BE92B                      ; $8BE4A5 |
  JSR.W CODE_FN_8BE823                      ; $8BE4A8 |
  JSL.L CODE_FL_86C3F8                      ; $8BE4AB |
  PHX                                       ; $8BE4AF |
  ASL A                                     ; $8BE4B0 |
  TAX                                       ; $8BE4B1 |
  LDA.L PTR16_8BE4BC,X                      ; $8BE4B2 |
  PLX                                       ; $8BE4B6 |
  STA.B $00                                 ; $8BE4B7 |
  JMP.W ($0000)                             ; $8BE4B9 |

PTR16_8BE4BC:
  dw CODE_8BE4CA                            ; $8BE4BC |
  dw CODE_8BE4EB                            ; $8BE4BE |
  dw CODE_8BE4F0                            ; $8BE4C0 |
  dw CODE_8BE517                            ; $8BE4C2 |
  dw CODE_8BE573                            ; $8BE4C4 |
  dw CODE_8BE5AC                            ; $8BE4C6 |
  dw CODE_8BE60A                            ; $8BE4C8 |

CODE_8BE4CA:
  JSL.L CODE_FL_86C7A5                      ; $8BE4CA |
  LDA.W #$0001                              ; $8BE4CE |
  STA.B $4E,X                               ; $8BE4D1 |
  LDA.W #$302E                              ; $8BE4D3 |
  JSL.L CODE_FL_86CAEE                      ; $8BE4D6 |
  JSL.L CODE_FL_85B00E                      ; $8BE4DA |
  JSL.L CODE_FL_85A9EF                      ; $8BE4DE |
  LDA.W #$0008                              ; $8BE4E2 |
  STA.B $36,X                               ; $8BE4E5 |
  JML.L CODE_FL_86C63F                      ; $8BE4E7 |

CODE_8BE4EB:
  JSL.L CODE_FL_8BE7DC                      ; $8BE4EB |
  RTL                                       ; $8BE4EF |

CODE_8BE4F0:
  JSR.W CODE_FN_8BE7F7                      ; $8BE4F0 |
  LDA.B $3A,X                               ; $8BE4F3 |
  PHX                                       ; $8BE4F5 |
  ASL A                                     ; $8BE4F6 |
  TAX                                       ; $8BE4F7 |
  LDA.L PTR16_8BE502,X                      ; $8BE4F8 |
  PLX                                       ; $8BE4FC |
  STA.B $00                                 ; $8BE4FD |
  JMP.W ($0000)                             ; $8BE4FF |

PTR16_8BE502:
  dw CODE_8BE508                            ; $8BE502 |
  dw CODE_8BE511                            ; $8BE504 |
  dw CODE_8BE514                            ; $8BE506 |

CODE_8BE508:
  JSR.W CODE_FN_8BE878                      ; $8BE508 |
  JSR.W CODE_FN_8BE8EA                      ; $8BE50B |
  JMP.W CODE_JP_8BE836                      ; $8BE50E |

CODE_8BE511:
  JMP.W CODE_JP_8BE855                      ; $8BE511 |

CODE_8BE514:
  JMP.W CODE_JP_8BE867                      ; $8BE514 |

CODE_8BE517:
  LDA.B $3E,X                               ; $8BE517 |
  PHX                                       ; $8BE519 |
  ASL A                                     ; $8BE51A |
  TAX                                       ; $8BE51B |
  LDA.L PTR16_8BE526,X                      ; $8BE51C |
  PLX                                       ; $8BE520 |
  STA.B $00                                 ; $8BE521 |
  JMP.W ($0000)                             ; $8BE523 |

PTR16_8BE526:
  dw CODE_8BE52C                            ; $8BE526 |
  dw CODE_8BE541                            ; $8BE528 |
  dw CODE_8BE560                            ; $8BE52A |

CODE_8BE52C:
  LDA.W #$00C0                              ; $8BE52C |
  JSL.L CODE_FL_8089BD                      ; $8BE52F |
  JSR.W CODE_FN_8BE878                      ; $8BE533 |
  JSR.W CODE_FN_8BE90C                      ; $8BE536 |
  LDA.W #$0040                              ; $8BE539 |
  STA.B $2C,X                               ; $8BE53C |
  INC.B $3E,X                               ; $8BE53E |
  RTL                                       ; $8BE540 |

CODE_8BE541:
  JSL.L CODE_FL_86C70D                      ; $8BE541 |
  LDA.W #$016C                              ; $8BE545 |
  JSR.W CODE_FN_8BE985                      ; $8BE548 |
  BCS CODE_8BE55F                           ; $8BE54B |
  LDA.W #$001C                              ; $8BE54D |
  JSL.L CODE_FL_8089BD                      ; $8BE550 |
  LDA.W #$0040                              ; $8BE554 |
  STA.B $2C,X                               ; $8BE557 |
  DEC.B $44,X                               ; $8BE559 |
  BNE CODE_8BE55F                           ; $8BE55B |
  INC.B $3E,X                               ; $8BE55D |

CODE_8BE55F:
  RTL                                       ; $8BE55F |

CODE_8BE560:
  JSL.L CODE_FL_86C70D                      ; $8BE560 |
  JSR.W CODE_FN_8BE878                      ; $8BE564 |
  JSR.W CODE_FN_8BE900                      ; $8BE567 |
  JSR.W CODE_FN_8BE993                      ; $8BE56A |
  LDA.W #$0002                              ; $8BE56D |
  STA.B $1A,X                               ; $8BE570 |
  RTL                                       ; $8BE572 |

CODE_8BE573:
  LDA.B $46,X                               ; $8BE573 |
  PHX                                       ; $8BE575 |
  ASL A                                     ; $8BE576 |
  TAX                                       ; $8BE577 |
  LDA.L PTR16_8BE582,X                      ; $8BE578 |
  PLX                                       ; $8BE57C |
  STA.B $00                                 ; $8BE57D |
  JMP.W ($0000)                             ; $8BE57F |

PTR16_8BE582:
  dw CODE_8BE588                            ; $8BE582 |
  dw CODE_8BE59F                            ; $8BE584 |
  dw CODE_8BE5A9                            ; $8BE586 |

CODE_8BE588:
  LDA.W #$0000                              ; $8BE588 |
  JSR.W CODE_FN_8BEA06                      ; $8BE58B |
  BCS CODE_8BE59E                           ; $8BE58E |
  LDA.W #$0020                              ; $8BE590 |
  STA.B $2C,X                               ; $8BE593 |
  STZ.B $28,X                               ; $8BE595 |
  LDA.W #$0001                              ; $8BE597 |
  STA.B $4E,X                               ; $8BE59A |
  INC.B $46,X                               ; $8BE59C |

CODE_8BE59E:
  RTL                                       ; $8BE59E |

CODE_8BE59F:
  JSL.L CODE_FL_86C70D                      ; $8BE59F |
  INC.W $1CB0                               ; $8BE5A3 |
  INC.B $46,X                               ; $8BE5A6 |
  RTL                                       ; $8BE5A8 |

CODE_8BE5A9:
  JMP.W CODE_JP_8BE7E9                      ; $8BE5A9 |

CODE_8BE5AC:
  LDA.B $40,X                               ; $8BE5AC |
  PHX                                       ; $8BE5AE |
  ASL A                                     ; $8BE5AF |
  TAX                                       ; $8BE5B0 |
  LDA.L PTR16_8BE5BB,X                      ; $8BE5B1 |
  PLX                                       ; $8BE5B5 |
  STA.B $00                                 ; $8BE5B6 |
  JMP.W ($0000)                             ; $8BE5B8 |

PTR16_8BE5BB:
  dw CODE_8BE5C3                            ; $8BE5BB |
  dw CODE_8BE5D1                            ; $8BE5BD |
  dw CODE_8BE5F4                            ; $8BE5BF |
  dw CODE_8BE5F7                            ; $8BE5C1 |

CODE_8BE5C3:
  JSL.L CODE_FL_85B016                      ; $8BE5C3 |
  STZ.B $4A,X                               ; $8BE5C7 |
  LDA.W #$0040                              ; $8BE5C9 |
  STA.B $2C,X                               ; $8BE5CC |
  INC.B $40,X                               ; $8BE5CE |
  RTL                                       ; $8BE5D0 |

CODE_8BE5D1:
  LDA.W #$0006                              ; $8BE5D1 |
  JSL.L CODE_FL_8CFD0B                      ; $8BE5D4 |
  JSL.L CODE_FL_86C70D                      ; $8BE5D8 |
  LDA.W #$0006                              ; $8BE5DC |
  JSL.L CODE_FL_8CFD3F                      ; $8BE5DF |
  LDA.W $1C8E                               ; $8BE5E3 |
  JSR.W CODE_FN_8BE897                      ; $8BE5E6 |
  STA.W $1C8E                               ; $8BE5E9 |
  LDA.W #$0060                              ; $8BE5EC |
  STA.B $2C,X                               ; $8BE5EF |
  INC.B $40,X                               ; $8BE5F1 |
  RTL                                       ; $8BE5F3 |

CODE_8BE5F4:
  JMP.W CODE_JP_8BE8CA                      ; $8BE5F4 |

CODE_8BE5F7:
  JSR.W CODE_FN_8BE878                      ; $8BE5F7 |
  JSR.W CODE_FN_8BE900                      ; $8BE5FA |
  JSR.W CODE_FN_8BE993                      ; $8BE5FD |
  JSL.L CODE_FL_85B00E                      ; $8BE600 |
  LDA.W #$0002                              ; $8BE604 |
  STA.B $1A,X                               ; $8BE607 |
  RTL                                       ; $8BE609 |

CODE_8BE60A:
  LDA.B $42,X                               ; $8BE60A |
  PHX                                       ; $8BE60C |
  ASL A                                     ; $8BE60D |
  TAX                                       ; $8BE60E |
  LDA.L PTR16_8BE619,X                      ; $8BE60F |
  PLX                                       ; $8BE613 |
  STA.B $00                                 ; $8BE614 |
  JMP.W ($0000)                             ; $8BE616 |

PTR16_8BE619:
  dw CODE_8BE61F                            ; $8BE619 |
  dw CODE_8BE634                            ; $8BE61B |
  dw CODE_8BE63A                            ; $8BE61D |

CODE_8BE61F:
  LDA.W #$0060                              ; $8BE61F |
  STA.B $2C,X                               ; $8BE622 |
  JSL.L CODE_FL_85B016                      ; $8BE624 |
  JSL.L CODE_FL_85A9F7                      ; $8BE628 |
  LDA.W #$0001                              ; $8BE62C |
  STA.B $4A,X                               ; $8BE62F |
  INC.B $42,X                               ; $8BE631 |
  RTL                                       ; $8BE633 |

CODE_8BE634:
  LDA.W #$B9E8                              ; $8BE634 |
  JMP.W CODE_JP_8BE9A3                      ; $8BE637 |

CODE_8BE63A:
  JMP.W CODE_JP_8BE9D7                      ; $8BE63A |

CODE_8BE63D:
  JSL.L CODE_FL_85F885                      ; $8BE63D |
  LDA.W #$0001                              ; $8BE641 |
  JSR.W CODE_FN_8BE92B                      ; $8BE644 |
  JSR.W CODE_FN_8BE823                      ; $8BE647 |
  JSL.L CODE_FL_86C3F8                      ; $8BE64A |
  PHX                                       ; $8BE64E |
  ASL A                                     ; $8BE64F |
  TAX                                       ; $8BE650 |
  LDA.L PTR16_8BE65B,X                      ; $8BE651 |
  PLX                                       ; $8BE655 |
  STA.B $00                                 ; $8BE656 |
  JMP.W ($0000)                             ; $8BE658 |

PTR16_8BE65B:
  dw CODE_8BE669                            ; $8BE65B |
  dw CODE_8BE691                            ; $8BE65D |
  dw CODE_8BE696                            ; $8BE65F |
  dw CODE_8BE6BD                            ; $8BE661 |
  dw CODE_8BE712                            ; $8BE663 |
  dw CODE_8BE74B                            ; $8BE665 |
  dw CODE_8BE7A9                            ; $8BE667 |

CODE_8BE669:
  JSL.L CODE_FL_86C7A5                      ; $8BE669 |
  LDA.W #$0002                              ; $8BE66D |
  STA.B $4E,X                               ; $8BE670 |
  JSL.L CODE_FL_85B00E                      ; $8BE672 |
  JSL.L CODE_FL_85A9EF                      ; $8BE676 |
  LDA.W #$302E                              ; $8BE67A |
  JSL.L CODE_FL_86CAEE                      ; $8BE67D |
  LDA.B $04,X                               ; $8BE681 |
  ORA.W #$2020                              ; $8BE683 |
  STA.B $04,X                               ; $8BE686 |
  LDA.W #$0008                              ; $8BE688 |
  STA.B $36,X                               ; $8BE68B |
  JML.L CODE_FL_86C63F                      ; $8BE68D |

CODE_8BE691:
  JSL.L CODE_FL_8BE7DC                      ; $8BE691 |
  RTL                                       ; $8BE695 |

CODE_8BE696:
  JSR.W CODE_FN_8BE7F7                      ; $8BE696 |
  LDA.B $3A,X                               ; $8BE699 |
  PHX                                       ; $8BE69B |
  ASL A                                     ; $8BE69C |
  TAX                                       ; $8BE69D |
  LDA.L PTR16_8BE6A8,X                      ; $8BE69E |
  PLX                                       ; $8BE6A2 |
  STA.B $00                                 ; $8BE6A3 |
  JMP.W ($0000)                             ; $8BE6A5 |

PTR16_8BE6A8:
  dw CODE_8BE6AE                            ; $8BE6A8 |
  dw CODE_8BE6B7                            ; $8BE6AA |
  dw CODE_8BE6BA                            ; $8BE6AC |

CODE_8BE6AE:
  JSR.W CODE_FN_8BE878                      ; $8BE6AE |
  JSR.W CODE_FN_8BE8EA                      ; $8BE6B1 |
  JMP.W CODE_JP_8BE836                      ; $8BE6B4 |

CODE_8BE6B7:
  JMP.W CODE_JP_8BE855                      ; $8BE6B7 |

CODE_8BE6BA:
  JMP.W CODE_JP_8BE867                      ; $8BE6BA |

CODE_8BE6BD:
  LDA.B $3E,X                               ; $8BE6BD |
  PHX                                       ; $8BE6BF |
  ASL A                                     ; $8BE6C0 |
  TAX                                       ; $8BE6C1 |
  LDA.L PTR16_8BE6CC,X                      ; $8BE6C2 |
  PLX                                       ; $8BE6C6 |
  STA.B $00                                 ; $8BE6C7 |
  JMP.W ($0000)                             ; $8BE6C9 |

PTR16_8BE6CC:
  dw CODE_8BE6D2                            ; $8BE6CC |
  dw CODE_8BE6E7                            ; $8BE6CE |
  dw CODE_8BE6FF                            ; $8BE6D0 |

CODE_8BE6D2:
  LDA.W #$00C0                              ; $8BE6D2 |
  JSL.L CODE_FL_8089BD                      ; $8BE6D5 |
  JSR.W CODE_FN_8BE878                      ; $8BE6D9 |
  JSR.W CODE_FN_8BE90C                      ; $8BE6DC |
  LDA.W #$0040                              ; $8BE6DF |
  STA.B $2C,X                               ; $8BE6E2 |
  INC.B $3E,X                               ; $8BE6E4 |
  RTL                                       ; $8BE6E6 |

CODE_8BE6E7:
  JSL.L CODE_FL_86C70D                      ; $8BE6E7 |
  LDA.W #$016D                              ; $8BE6EB |
  JSR.W CODE_FN_8BE985                      ; $8BE6EE |
  BCS CODE_8BE6FE                           ; $8BE6F1 |
  LDA.W #$0040                              ; $8BE6F3 |
  STA.B $2C,X                               ; $8BE6F6 |
  DEC.B $44,X                               ; $8BE6F8 |
  BNE CODE_8BE6FE                           ; $8BE6FA |
  INC.B $3E,X                               ; $8BE6FC |

CODE_8BE6FE:
  RTL                                       ; $8BE6FE |

CODE_8BE6FF:
  JSL.L CODE_FL_86C70D                      ; $8BE6FF |
  JSR.W CODE_FN_8BE878                      ; $8BE703 |
  JSR.W CODE_FN_8BE900                      ; $8BE706 |
  JSR.W CODE_FN_8BE993                      ; $8BE709 |
  LDA.W #$0002                              ; $8BE70C |
  STA.B $1A,X                               ; $8BE70F |
  RTL                                       ; $8BE711 |

CODE_8BE712:
  LDA.B $46,X                               ; $8BE712 |
  PHX                                       ; $8BE714 |
  ASL A                                     ; $8BE715 |
  TAX                                       ; $8BE716 |
  LDA.L PTR16_8BE721,X                      ; $8BE717 |
  PLX                                       ; $8BE71B |
  STA.B $00                                 ; $8BE71C |
  JMP.W ($0000)                             ; $8BE71E |

PTR16_8BE721:
  dw CODE_8BE727                            ; $8BE721 |
  dw CODE_8BE73E                            ; $8BE723 |
  dw CODE_8BE748                            ; $8BE725 |

CODE_8BE727:
  LDA.W #$0001                              ; $8BE727 |
  JSR.W CODE_FN_8BEA06                      ; $8BE72A |
  BCS CODE_8BE73D                           ; $8BE72D |
  LDA.W #$0020                              ; $8BE72F |
  STA.B $2C,X                               ; $8BE732 |
  STZ.B $28,X                               ; $8BE734 |
  LDA.W #$0002                              ; $8BE736 |
  STA.B $4E,X                               ; $8BE739 |
  INC.B $46,X                               ; $8BE73B |

CODE_8BE73D:
  RTL                                       ; $8BE73D |

CODE_8BE73E:
  JSL.L CODE_FL_86C70D                      ; $8BE73E |
  INC.W $1CB0                               ; $8BE742 |
  INC.B $46,X                               ; $8BE745 |
  RTL                                       ; $8BE747 |

CODE_8BE748:
  JMP.W CODE_JP_8BE7E9                      ; $8BE748 |

CODE_8BE74B:
  LDA.B $40,X                               ; $8BE74B |
  PHX                                       ; $8BE74D |
  ASL A                                     ; $8BE74E |
  TAX                                       ; $8BE74F |
  LDA.L PTR16_8BE75A,X                      ; $8BE750 |
  PLX                                       ; $8BE754 |
  STA.B $00                                 ; $8BE755 |
  JMP.W ($0000)                             ; $8BE757 |

PTR16_8BE75A:
  dw CODE_8BE762                            ; $8BE75A |
  dw CODE_8BE770                            ; $8BE75C |
  dw CODE_8BE793                            ; $8BE75E |
  dw CODE_8BE796                            ; $8BE760 |

CODE_8BE762:
  JSL.L CODE_FL_85B016                      ; $8BE762 |
  STZ.B $4A,X                               ; $8BE766 |
  LDA.W #$0040                              ; $8BE768 |
  STA.B $2C,X                               ; $8BE76B |
  INC.B $40,X                               ; $8BE76D |
  RTL                                       ; $8BE76F |

CODE_8BE770:
  LDA.W #$0007                              ; $8BE770 |
  JSL.L CODE_FL_8CFD0B                      ; $8BE773 |
  JSL.L CODE_FL_86C70D                      ; $8BE777 |
  LDA.W #$0007                              ; $8BE77B |
  JSL.L CODE_FL_8CFD3F                      ; $8BE77E |
  LDA.W $1C90                               ; $8BE782 |
  JSR.W CODE_FN_8BE897                      ; $8BE785 |
  STA.W $1C90                               ; $8BE788 |
  LDA.W #$0060                              ; $8BE78B |
  STA.B $2C,X                               ; $8BE78E |
  INC.B $40,X                               ; $8BE790 |
  RTL                                       ; $8BE792 |

CODE_8BE793:
  JMP.W CODE_JP_8BE8CA                      ; $8BE793 |

CODE_8BE796:
  JSR.W CODE_FN_8BE878                      ; $8BE796 |
  JSR.W CODE_FN_8BE900                      ; $8BE799 |
  JSR.W CODE_FN_8BE993                      ; $8BE79C |
  JSL.L CODE_FL_85B00E                      ; $8BE79F |
  LDA.W #$0002                              ; $8BE7A3 |
  STA.B $1A,X                               ; $8BE7A6 |
  RTL                                       ; $8BE7A8 |

CODE_8BE7A9:
  LDA.B $42,X                               ; $8BE7A9 |
  PHX                                       ; $8BE7AB |
  ASL A                                     ; $8BE7AC |
  TAX                                       ; $8BE7AD |
  LDA.L PTR16_8BE7B8,X                      ; $8BE7AE |
  PLX                                       ; $8BE7B2 |
  STA.B $00                                 ; $8BE7B3 |
  JMP.W ($0000)                             ; $8BE7B5 |

PTR16_8BE7B8:
  dw CODE_8BE7BE                            ; $8BE7B8 |
  dw CODE_8BE7D3                            ; $8BE7BA |
  dw CODE_8BE7D9                            ; $8BE7BC |

CODE_8BE7BE:
  LDA.W #$0060                              ; $8BE7BE |
  STA.B $2C,X                               ; $8BE7C1 |
  JSL.L CODE_FL_85B016                      ; $8BE7C3 |
  JSL.L CODE_FL_85A9F7                      ; $8BE7C7 |
  LDA.W #$0001                              ; $8BE7CB |
  STA.B $4A,X                               ; $8BE7CE |
  INC.B $42,X                               ; $8BE7D0 |
  RTL                                       ; $8BE7D2 |

CODE_8BE7D3:
  LDA.W #$B9ED                              ; $8BE7D3 |
  JMP.W CODE_JP_8BE9A3                      ; $8BE7D6 |

CODE_8BE7D9:
  JMP.W CODE_JP_8BE9D7                      ; $8BE7D9 |

CODE_FL_8BE7DC:
  LDY.B $48,X                               ; $8BE7DC |
  LDA.W $001A,Y                             ; $8BE7DE |
  CMP.W #$0002                              ; $8BE7E1 |
  BCC CODE_8BE7E8                           ; $8BE7E4 |
  INC.B $1A,X                               ; $8BE7E6 |

CODE_8BE7E8:
  RTL                                       ; $8BE7E8 |

CODE_JP_8BE7E9:
  LDA.W $1CAE                               ; $8BE7E9 |
  BNE CODE_8BE7F6                           ; $8BE7EC |
  JSR.W CODE_FN_8BE993                      ; $8BE7EE |
  LDA.W #$0002                              ; $8BE7F1 |
  STA.B $1A,X                               ; $8BE7F4 |

CODE_8BE7F6:
  RTL                                       ; $8BE7F6 |

CODE_FN_8BE7F7:
  LDA.W $1C92                               ; $8BE7F7 |
  BNE CODE_8BE835                           ; $8BE7FA |
  LDA.W $1CAE                               ; $8BE7FC |
  BEQ CODE_8BE835                           ; $8BE7FF |
  LDA.W $1CB2                               ; $8BE801 |
  BEQ CODE_8BE80F                           ; $8BE804 |
  LDA.B $0D,X                               ; $8BE806 |
  CMP.W #$0090                              ; $8BE808 |
  BNE CODE_8BE835                           ; $8BE80B |
  BRA CODE_8BE816                           ; $8BE80D |

CODE_8BE80F:
  LDA.B $0D,X                               ; $8BE80F |
  CMP.W #$0070                              ; $8BE811 |
  BNE CODE_8BE835                           ; $8BE814 |

CODE_8BE816:
  STZ.B $28,X                               ; $8BE816 |
  LDA.B $3A,X                               ; $8BE818 |
  STA.B $4E,X                               ; $8BE81A |
  LDA.W #$0004                              ; $8BE81C |
  STA.B $1A,X                               ; $8BE81F |
  BRA CODE_8BE835                           ; $8BE821 |

CODE_FN_8BE823:
  LDA.B $1A,X                               ; $8BE823 |
  BEQ CODE_8BE835                           ; $8BE825 |
  LDA.B $36,X                               ; $8BE827 |
  AND.W #$00FF                              ; $8BE829 |
  BNE CODE_8BE835                           ; $8BE82C |
  STZ.B $28,X                               ; $8BE82E |
  LDA.W #$0006                              ; $8BE830 |
  STA.B $1A,X                               ; $8BE833 |

CODE_8BE835:
  RTS                                       ; $8BE835 |

CODE_JP_8BE836:
  LDA.B $4E,X                               ; $8BE836 |
  CMP.W #$0001                              ; $8BE838 |
  BNE CODE_8BE849                           ; $8BE83B |
  LDA.W #$FF00                              ; $8BE83D |
  STA.B $28,X                               ; $8BE840 |
  LDA.W #$0001                              ; $8BE842 |
  STA.B $3A,X                               ; $8BE845 |
  BRA CODE_8BE877                           ; $8BE847 |

CODE_8BE849:
  LDA.W #$0100                              ; $8BE849 |
  STA.B $28,X                               ; $8BE84C |
  LDA.W #$0002                              ; $8BE84E |
  STA.B $3A,X                               ; $8BE851 |
  BRA CODE_8BE877                           ; $8BE853 |

CODE_JP_8BE855:
  LDA.W #$0050                              ; $8BE855 |
  CMP.B $0D,X                               ; $8BE858 |
  BCC CODE_8BE877                           ; $8BE85A |
  STA.B $0D,X                               ; $8BE85C |
  LDA.W #$0100                              ; $8BE85E |
  STA.B $28,X                               ; $8BE861 |
  INC.B $3A,X                               ; $8BE863 |
  BRA CODE_8BE877                           ; $8BE865 |

CODE_JP_8BE867:
  LDA.W #$00A0                              ; $8BE867 |
  CMP.B $0D,X                               ; $8BE86A |
  BCS CODE_8BE877                           ; $8BE86C |
  STA.B $0D,X                               ; $8BE86E |
  LDA.W #$FF00                              ; $8BE870 |
  STA.B $28,X                               ; $8BE873 |
  DEC.B $3A,X                               ; $8BE875 |

CODE_8BE877:
  RTL                                       ; $8BE877 |

CODE_FN_8BE878:
  STZ.B $00                                 ; $8BE878 |
  LDA.B $36,X                               ; $8BE87A |
  AND.W #$00FF                              ; $8BE87C |
  CMP.W #$0007                              ; $8BE87F |
  BCS CODE_8BE894                           ; $8BE882 |
  INC.B $00                                 ; $8BE884 |
  CMP.W #$0005                              ; $8BE886 |
  BCS CODE_8BE894                           ; $8BE889 |
  INC.B $00                                 ; $8BE88B |
  CMP.W #$0003                              ; $8BE88D |
  BCS CODE_8BE894                           ; $8BE890 |
  INC.B $00                                 ; $8BE892 |

CODE_8BE894:
  LDA.B $00                                 ; $8BE894 |
  RTS                                       ; $8BE896 |

CODE_FN_8BE897:
  STA.B $00                                 ; $8BE897 |
  LDA.B $36,X                               ; $8BE899 |
  AND.W #$00FF                              ; $8BE89B |
  STA.B $36,X                               ; $8BE89E |
  CMP.W #$0007                              ; $8BE8A0 |
  LDA.W #$0000                              ; $8BE8A3 |
  BCS CODE_8BE8BF                           ; $8BE8A6 |
  LDA.B $36,X                               ; $8BE8A8 |
  CMP.W #$0005                              ; $8BE8AA |
  LDA.W #$0001                              ; $8BE8AD |
  BCS CODE_8BE8BF                           ; $8BE8B0 |
  LDA.B $36,X                               ; $8BE8B2 |
  CMP.W #$0003                              ; $8BE8B4 |
  LDA.W #$0002                              ; $8BE8B7 |
  BCS CODE_8BE8BF                           ; $8BE8BA |
  LDA.W #$0003                              ; $8BE8BC |

CODE_8BE8BF:
  STA.B $02                                 ; $8BE8BF |
  CMP.B $00                                 ; $8BE8C1 |
  BNE CODE_8BE8C7                           ; $8BE8C3 |
  INC.B $40,X                               ; $8BE8C5 |

CODE_8BE8C7:
  LDA.B $02                                 ; $8BE8C7 |
  RTS                                       ; $8BE8C9 |

CODE_JP_8BE8CA:
  LDA.B $4A,X                               ; $8BE8CA |
  BNE CODE_8BE8D7                           ; $8BE8CC |
  LDA.W #$000D                              ; $8BE8CE |
  JSL.L push_sound_queue                    ; $8BE8D1 |
  INC.B $4A,X                               ; $8BE8D5 |

CODE_8BE8D7:
  LDA.W $1C38                               ; $8BE8D7 |
  AND.W #$0007                              ; $8BE8DA |
  BNE CODE_8BE8E3                           ; $8BE8DD |
  JSL.L CODE_FL_8CFBAE                      ; $8BE8DF |

CODE_8BE8E3:
  JSL.L CODE_FL_86C70D                      ; $8BE8E3 |
  INC.B $40,X                               ; $8BE8E7 |
  RTL                                       ; $8BE8E9 |

CODE_FN_8BE8EA:
  ASL A                                     ; $8BE8EA |
  TAY                                       ; $8BE8EB |
  PHB                                       ; $8BE8EC |
  PHK                                       ; $8BE8ED |
  PLB                                       ; $8BE8EE |
  LDA.W LOOSE_OP_00E8F8,Y                   ; $8BE8EF |
  PLB                                       ; $8BE8F2 |
  JSL.L CODE_FL_86CAEE                      ; $8BE8F3 |
  RTS                                       ; $8BE8F7 |

  dw $302A,$302B,$302C,$302D                ; $8BE8F8 |

CODE_FN_8BE900:
  ASL A                                     ; $8BE900 |
  ASL A                                     ; $8BE901 |
  TAY                                       ; $8BE902 |
  PHB                                       ; $8BE903 |
  PHK                                       ; $8BE904 |
  PLB                                       ; $8BE905 |
  LDA.W LOOSE_OP_00E91B,Y                   ; $8BE906 |
  PLB                                       ; $8BE909 |
  BRA CODE_8BE916                           ; $8BE90A |

CODE_FN_8BE90C:
  ASL A                                     ; $8BE90C |
  ASL A                                     ; $8BE90D |
  TAY                                       ; $8BE90E |
  PHB                                       ; $8BE90F |
  PHK                                       ; $8BE910 |
  PLB                                       ; $8BE911 |
  LDA.W CODE_00E91D,Y                       ; $8BE912 |
  PLB                                       ; $8BE915 |

CODE_8BE916:
  STA.B $00,X                               ; $8BE916 |
  STZ.B $1E,X                               ; $8BE918 |
  RTS                                       ; $8BE91A |

  dw $3000,$3036,$3054,$3094                ; $8BE91B |
  dw $30B6,$30EA,$3106,$3132                ; $8BE923 |

CODE_FN_8BE92B:
  STA.B $00                                 ; $8BE92B |
  LDA.B $1A,X                               ; $8BE92D |
  BEQ CODE_8BE982                           ; $8BE92F |
  LDA.W $1CAE                               ; $8BE931 |
  BNE CODE_8BE982                           ; $8BE934 |
  LDA.B $32,X                               ; $8BE936 |
  AND.W #$8800                              ; $8BE938 |
  BEQ CODE_8BE982                           ; $8BE93B |
  LDA.B $3A,X                               ; $8BE93D |
  STA.B $4E,X                               ; $8BE93F |
  STZ.B $28,X                               ; $8BE941 |
  LDA.B $32,X                               ; $8BE943 |
  AND.W #$0800                              ; $8BE945 |
  BEQ CODE_8BE96D                           ; $8BE948 |
  LDA.B $32,X                               ; $8BE94A |
  AND.W #$01FF                              ; $8BE94C |
  ASL A                                     ; $8BE94F |
  ASL A                                     ; $8BE950 |
  ASL A                                     ; $8BE951 |
  ASL A                                     ; $8BE952 |
  TAY                                       ; $8BE953 |
  LDA.W $0042,Y                             ; $8BE954 |
  CMP.B $00                                 ; $8BE957 |
  BNE CODE_8BE978                           ; $8BE959 |
  SEC                                       ; $8BE95B |
  SEP #$20                                  ; $8BE95C |
  LDA.B $36,X                               ; $8BE95E |
  SBC.B #$01                                ; $8BE960 |
  STA.B $36,X                               ; $8BE962 |
  REP #$20                                  ; $8BE964 |
  LDA.W #$0005                              ; $8BE966 |
  STA.B $1A,X                               ; $8BE969 |
  BRA CODE_8BE982                           ; $8BE96B |

CODE_8BE96D:
  JSL.L CODE_FL_85A5A7                      ; $8BE96D |
  LDA.W #$0001                              ; $8BE971 |
  STA.B $44,X                               ; $8BE974 |
  BRA CODE_8BE97D                           ; $8BE976 |

CODE_8BE978:
  LDA.W #$0004                              ; $8BE978 |
  STA.B $44,X                               ; $8BE97B |

CODE_8BE97D:
  LDA.W #$0003                              ; $8BE97D |
  STA.B $1A,X                               ; $8BE980 |

CODE_8BE982:
  STZ.B $32,X                               ; $8BE982 |
  RTS                                       ; $8BE984 |

CODE_FN_8BE985:
  JSL.L CODE_FL_86C9A7                      ; $8BE985 |
  BCS CODE_8BE992                           ; $8BE989 |
  LDA.W #$0A00                              ; $8BE98B |
  STA.W $004E,Y                             ; $8BE98E |
  CLC                                       ; $8BE991 |

CODE_8BE992:
  RTS                                       ; $8BE992 |

CODE_FN_8BE993:
  LDA.W #$0000                              ; $8BE993 |
  STA.B $3A,X                               ; $8BE996 |
  STA.B $3C,X                               ; $8BE998 |
  STA.B $3E,X                               ; $8BE99A |
  STA.B $40,X                               ; $8BE99C |
  STA.B $42,X                               ; $8BE99E |
  STA.B $46,X                               ; $8BE9A0 |
  RTS                                       ; $8BE9A2 |

CODE_JP_8BE9A3:
  STA.B $00                                 ; $8BE9A3 |
  DEC.B $4A,X                               ; $8BE9A5 |
  BNE CODE_8BE9B5                           ; $8BE9A7 |
  LDA.W #$0021                              ; $8BE9A9 |
  JSL.L push_sound_queue                    ; $8BE9AC |
  LDA.W #$000A                              ; $8BE9B0 |
  STA.B $4A,X                               ; $8BE9B3 |

CODE_8BE9B5:
  LDA.W $1C38                               ; $8BE9B5 |
  AND.W #$0003                              ; $8BE9B8 |
  BNE CODE_8BE9C1                           ; $8BE9BB |
  JSL.L CODE_FL_8CFBB6                      ; $8BE9BD |

CODE_8BE9C1:
  JSL.L CODE_FL_86C70D                      ; $8BE9C1 |
  PHX                                       ; $8BE9C5 |
  LDY.B $00                                 ; $8BE9C6 |
  JSL.L CODE_FL_80C26D                      ; $8BE9C8 |
  PLX                                       ; $8BE9CC |
  STZ.B $4A,X                               ; $8BE9CD |
  LDA.W #$0080                              ; $8BE9CF |
  STA.B $2C,X                               ; $8BE9D2 |
  INC.B $42,X                               ; $8BE9D4 |
  RTL                                       ; $8BE9D6 |

CODE_JP_8BE9D7:
  LDA.B $4A,X                               ; $8BE9D7 |
  BNE CODE_8BE9E4                           ; $8BE9D9 |
  LDA.W #$0023                              ; $8BE9DB |
  JSL.L push_sound_queue                    ; $8BE9DE |
  INC.B $4A,X                               ; $8BE9E2 |

CODE_8BE9E4:
  LDA.W $1C38                               ; $8BE9E4 |
  AND.W #$0003                              ; $8BE9E7 |
  BNE CODE_8BE9F0                           ; $8BE9EA |
  JSL.L CODE_FL_8CFBAE                      ; $8BE9EC |

CODE_8BE9F0:
  JSL.L CODE_FL_86C70D                      ; $8BE9F0 |
  INC.W $1C92                               ; $8BE9F4 |
  LDA.W #$000D                              ; $8BE9F7 |
  JSL.L push_sound_queue                    ; $8BE9FA |
  JSL.L CODE_FL_8CFAF3                      ; $8BE9FE |
  JML.L CODE_FL_86CA36                      ; $8BEA02 |

CODE_FN_8BEA06:
  ASL A                                     ; $8BEA06 |
  ASL A                                     ; $8BEA07 |
  STA.B $00                                 ; $8BEA08 |
  LDA.W #$0181                              ; $8BEA0A |
  JSL.L CODE_FL_86C9C5                      ; $8BEA0D |
  BCS CODE_8BEA40                           ; $8BEA11 |
  TXA                                       ; $8BEA13 |
  STA.W $0044,Y                             ; $8BEA14 |
  LDA.W #$0A00                              ; $8BEA17 |
  STA.W $004E,Y                             ; $8BEA1A |
  PHY                                       ; $8BEA1D |
  LDY.B $00                                 ; $8BEA1E |
  CLC                                       ; $8BEA20 |
  LDA.B $09,X                               ; $8BEA21 |
  PHB                                       ; $8BEA23 |
  PHK                                       ; $8BEA24 |
  PLB                                       ; $8BEA25 |
  ADC.W CODE_00EA41,Y                       ; $8BEA26 |
  PLB                                       ; $8BEA29 |
  PLY                                       ; $8BEA2A |
  STA.W $0009,Y                             ; $8BEA2B |
  PHY                                       ; $8BEA2E |
  LDY.B $00                                 ; $8BEA2F |
  CLC                                       ; $8BEA31 |
  LDA.B $0D,X                               ; $8BEA32 |
  PHB                                       ; $8BEA34 |
  PHK                                       ; $8BEA35 |
  PLB                                       ; $8BEA36 |
  ADC.W CODE_00EA43,Y                       ; $8BEA37 |
  PLB                                       ; $8BEA3A |
  PLY                                       ; $8BEA3B |
  STA.W $000D,Y                             ; $8BEA3C |
  CLC                                       ; $8BEA3F |

CODE_8BEA40:
  RTS                                       ; $8BEA40 |

  dw $FFE8,$FFC8,$0018,$FFC8                ; $8BEA41 |
  dw $0000,$0000                            ; $8BEA49 |

CODE_8BEA4D:
  JSR.W CODE_FN_8BED8A                      ; $8BEA4D |
  JSR.W CODE_FN_8BEDBD                      ; $8BEA50 |
  JSL.L CODE_FL_86C3F8                      ; $8BEA53 |
  PHX                                       ; $8BEA57 |
  ASL A                                     ; $8BEA58 |
  TAX                                       ; $8BEA59 |
  LDA.L PTR16_8BEA64,X                      ; $8BEA5A |
  PLX                                       ; $8BEA5E |
  STA.B $00                                 ; $8BEA5F |
  JMP.W ($0000)                             ; $8BEA61 |

PTR16_8BEA64:
  dw CODE_8BEA70                            ; $8BEA64 |
  dw CODE_8BEB3A                            ; $8BEA66 |
  dw CODE_8BEB8E                            ; $8BEA68 |
  dw CODE_8BEBFA                            ; $8BEA6A |
  dw CODE_8BEC5B                            ; $8BEA6C |
  dw CODE_8BECDB                            ; $8BEA6E |

CODE_8BEA70:
  SEP #$20                                  ; $8BEA70 |
  LDA.W $1FBE                               ; $8BEA72 |
  AND.B #$15                                ; $8BEA75 |
  STA.W $1FBE                               ; $8BEA77 |
  REP #$20                                  ; $8BEA7A |
  LDA.B $A6                                 ; $8BEA7C |
  BEQ CODE_8BEA8D                           ; $8BEA7E |
  JSL.L CODE_FL_83B38E                      ; $8BEA80 |
  PHX                                       ; $8BEA84 |
  LDX.W #$0B20                              ; $8BEA85 |
  JSL.L CODE_FL_86CA36                      ; $8BEA88 |
  PLX                                       ; $8BEA8C |

CODE_8BEA8D:
  LDA.W #$0588                              ; $8BEA8D |
  JSL.L CODE_FL_8CF9D2                      ; $8BEA90 |
  BCC CODE_8BEA99                           ; $8BEA94 |
  JMP.W CODE_JP_8BEB32                      ; $8BEA96 |

CODE_8BEA99:
  LDA.W #$0167                              ; $8BEA99 |
  JSL.L CODE_FL_86C9A7                      ; $8BEA9C |
  LDA.W #$00E8                              ; $8BEAA0 |
  STA.W $0009,Y                             ; $8BEAA3 |
  LDA.W #$0078                              ; $8BEAA6 |
  STA.W $000D,Y                             ; $8BEAA9 |
  LDA.W #$0C00                              ; $8BEAAC |
  STA.W $004E,Y                             ; $8BEAAF |
  TXA                                       ; $8BEAB2 |
  STA.W $0048,Y                             ; $8BEAB3 |
  LDA.W #$0168                              ; $8BEAB6 |
  JSL.L CODE_FL_86C9A7                      ; $8BEAB9 |
  LDA.W #$0018                              ; $8BEABD |
  STA.W $0009,Y                             ; $8BEAC0 |
  LDA.W #$0078                              ; $8BEAC3 |
  STA.W $000D,Y                             ; $8BEAC6 |
  LDA.W #$0E00                              ; $8BEAC9 |
  STA.W $004E,Y                             ; $8BEACC |
  TXA                                       ; $8BEACF |
  STA.W $0048,Y                             ; $8BEAD0 |
  LDA.W #$0170                              ; $8BEAD3 |
  JSL.L CODE_FL_86C9A7                      ; $8BEAD6 |
  LDA.W #$0050                              ; $8BEADA |
  STA.W $0009,Y                             ; $8BEADD |
  LDA.W #$0080                              ; $8BEAE0 |
  STA.W $000D,Y                             ; $8BEAE3 |
  LDA.W #$0800                              ; $8BEAE6 |
  STA.W $004E,Y                             ; $8BEAE9 |
  LDA.W #$0180                              ; $8BEAEC |
  JSL.L CODE_FL_86C9A7                      ; $8BEAEF |
  JSL.L CODE_FL_85AAB6                      ; $8BEAF3 |
  LDA.W #$0001                              ; $8BEAF7 |
  STA.L $7E7D90                             ; $8BEAFA |
  JSL.L CODE_FL_86C7A5                      ; $8BEAFE |
  LDA.W #$0001                              ; $8BEB02 |
  STA.B $4E,X                               ; $8BEB05 |
  JSL.L CODE_FL_85B00E                      ; $8BEB07 |
  LDA.B $22,X                               ; $8BEB0B |
  ORA.W #$0008                              ; $8BEB0D |
  STA.B $22,X                               ; $8BEB10 |
  LDA.W #$0080                              ; $8BEB12 |
  STA.B $2C,X                               ; $8BEB15 |
  LDA.W #$8001                              ; $8BEB17 |
  STA.B $E4                                 ; $8BEB1A |
  STZ.W $1C8E                               ; $8BEB1C |
  STZ.W $1C90                               ; $8BEB1F |
  STZ.W $1C92                               ; $8BEB22 |
  STZ.W $1CAE                               ; $8BEB25 |
  STZ.W $1CB0                               ; $8BEB28 |
  STZ.W $1CB2                               ; $8BEB2B |
  JML.L CODE_FL_86C63F                      ; $8BEB2E |

CODE_JP_8BEB32:
  JSL.L CODE_FL_84F1C1                      ; $8BEB32 |
  JML.L CODE_FL_86CA2D                      ; $8BEB36 |

CODE_8BEB3A:
  LDA.B $3A,X                               ; $8BEB3A |
  PHX                                       ; $8BEB3C |
  ASL A                                     ; $8BEB3D |
  TAX                                       ; $8BEB3E |
  LDA.L PTR16_8BEB49,X                      ; $8BEB3F |
  PLX                                       ; $8BEB43 |
  STA.B $00                                 ; $8BEB44 |
  JMP.W ($0000)                             ; $8BEB46 |

PTR16_8BEB49:
  dw CODE_8BEB4D                            ; $8BEB49 |
  dw CODE_8BEB7E                            ; $8BEB4B |

CODE_8BEB4D:
  JSL.L CODE_FL_86C70D                      ; $8BEB4D |
  LDA.W #$FE0C                              ; $8BEB51 |
  JSL.L CODE_FL_809934                      ; $8BEB54 |
  BCC CODE_8BEB7D                           ; $8BEB58 |
  LDY.W #$004C                              ; $8BEB5A |
  JSL.L CODE_FL_808993                      ; $8BEB5D |
  LDA.W #$3148                              ; $8BEB61 |
  STA.B $00,X                               ; $8BEB64 |
  LDY.W $1C9E                               ; $8BEB66 |
  LDA.W #$3220                              ; $8BEB69 |
  STA.W $0000,Y                             ; $8BEB6C |
  LDA.W #$0080                              ; $8BEB6F |
  STA.B $2C,X                               ; $8BEB72 |
  INC.B $3A,X                               ; $8BEB74 |
  LDY.W #$BA81                              ; $8BEB76 |
  JML.L CODE_FL_80C26D                      ; $8BEB79 |

CODE_8BEB7D:
  RTL                                       ; $8BEB7D |

CODE_8BEB7E:
  JSL.L CODE_FL_86C70D                      ; $8BEB7E |
  LDA.W #$0020                              ; $8BEB82 |
  STA.B $48,X                               ; $8BEB85 |
  STZ.B $E4                                 ; $8BEB87 |
  STZ.B $3A,X                               ; $8BEB89 |
  INC.B $1A,X                               ; $8BEB8B |
  RTL                                       ; $8BEB8D |

CODE_8BEB8E:
  JSR.W CODE_FN_8BED9E                      ; $8BEB8E |
  LDA.B $3A,X                               ; $8BEB91 |
  PHX                                       ; $8BEB93 |
  ASL A                                     ; $8BEB94 |
  TAX                                       ; $8BEB95 |
  LDA.L PTR16_8BEBA0,X                      ; $8BEB96 |
  PLX                                       ; $8BEB9A |
  STA.B $00                                 ; $8BEB9B |
  JMP.W ($0000)                             ; $8BEB9D |

PTR16_8BEBA0:
  dw CODE_8BEBA6                            ; $8BEBA0 |
  dw CODE_8BEBC5                            ; $8BEBA2 |
  dw CODE_8BEBE0                            ; $8BEBA4 |

CODE_8BEBA6:
  LDA.B $4E,X                               ; $8BEBA6 |
  CMP.W #$0001                              ; $8BEBA8 |
  BNE CODE_8BEBB9                           ; $8BEBAB |
  LDA.W #$0100                              ; $8BEBAD |
  STA.B $26,X                               ; $8BEBB0 |
  LDA.W #$0001                              ; $8BEBB2 |
  STA.B $3A,X                               ; $8BEBB5 |
  BRA CODE_8BEBF9                           ; $8BEBB7 |

CODE_8BEBB9:
  LDA.W #$FF00                              ; $8BEBB9 |
  STA.B $26,X                               ; $8BEBBC |
  LDA.W #$0002                              ; $8BEBBE |
  STA.B $3A,X                               ; $8BEBC1 |
  BRA CODE_8BEBF9                           ; $8BEBC3 |

CODE_8BEBC5:
  CLC                                       ; $8BEBC5 |
  LDA.B $09,X                               ; $8BEBC6 |
  ADC.B $2E,X                               ; $8BEBC8 |
  CMP.W #$00E0                              ; $8BEBCA |
  BCC CODE_8BEBF9                           ; $8BEBCD |
  SEC                                       ; $8BEBCF |
  LDA.W #$00E0                              ; $8BEBD0 |
  SBC.B $2E,X                               ; $8BEBD3 |
  STA.B $09,X                               ; $8BEBD5 |
  LDA.W #$FF00                              ; $8BEBD7 |
  STA.B $26,X                               ; $8BEBDA |
  INC.B $3A,X                               ; $8BEBDC |
  BRA CODE_8BEBF9                           ; $8BEBDE |

CODE_8BEBE0:
  SEC                                       ; $8BEBE0 |
  LDA.B $09,X                               ; $8BEBE1 |
  SBC.B $2E,X                               ; $8BEBE3 |
  CMP.W #$0020                              ; $8BEBE5 |
  BCS CODE_8BEBF9                           ; $8BEBE8 |
  CLC                                       ; $8BEBEA |
  LDA.B $2E,X                               ; $8BEBEB |
  ADC.W #$0020                              ; $8BEBED |
  STA.B $09,X                               ; $8BEBF0 |
  LDA.W #$0100                              ; $8BEBF2 |
  STA.B $26,X                               ; $8BEBF5 |
  DEC.B $3A,X                               ; $8BEBF7 |

CODE_8BEBF9:
  RTL                                       ; $8BEBF9 |

CODE_8BEBFA:
  LDA.B $3E,X                               ; $8BEBFA |
  PHX                                       ; $8BEBFC |
  ASL A                                     ; $8BEBFD |
  TAX                                       ; $8BEBFE |
  LDA.L PTR16_8BEC09,X                      ; $8BEBFF |
  PLX                                       ; $8BEC03 |
  STA.B $00                                 ; $8BEC04 |
  JMP.W ($0000)                             ; $8BEC06 |

PTR16_8BEC09:
  dw CODE_8BEC0F                            ; $8BEC09 |
  dw CODE_8BEC27                            ; $8BEC0B |
  dw CODE_8BEC42                            ; $8BEC0D |

CODE_8BEC0F:
  LDA.B $3A,X                               ; $8BEC0F |
  STA.B $4E,X                               ; $8BEC11 |
  STZ.B $26,X                               ; $8BEC13 |
  LDA.W #$3160                              ; $8BEC15 |
  STA.B $00,X                               ; $8BEC18 |
  LDA.W #$016E                              ; $8BEC1A |
  JSR.W CODE_FN_8BEDCF                      ; $8BEC1D |
  BCS CODE_8BEC26                           ; $8BEC20 |
  STY.B $4A,X                               ; $8BEC22 |
  INC.B $3E,X                               ; $8BEC24 |

CODE_8BEC26:
  RTL                                       ; $8BEC26 |

CODE_8BEC27:
  LDY.B $4A,X                               ; $8BEC27 |
  LDA.W $0020,Y                             ; $8BEC29 |
  BNE CODE_8BEC41                           ; $8BEC2C |
  LDA.W #$0012                              ; $8BEC2E |
  JSL.L push_sound_queue                    ; $8BEC31 |
  LDA.W #$3148                              ; $8BEC35 |
  STA.B $00,X                               ; $8BEC38 |
  LDA.W #$0020                              ; $8BEC3A |
  STA.B $2C,X                               ; $8BEC3D |
  INC.B $3E,X                               ; $8BEC3F |

CODE_8BEC41:
  RTL                                       ; $8BEC41 |

CODE_8BEC42:
  JSL.L CODE_FL_86C70D                      ; $8BEC42 |
  CLC                                       ; $8BEC46 |
  LDA.W $1C38                               ; $8BEC47 |
  AND.W #$003F                              ; $8BEC4A |
  ADC.W #$0020                              ; $8BEC4D |
  STA.B $48,X                               ; $8BEC50 |
  JSR.W CODE_FN_8BE993                      ; $8BEC52 |
  LDA.W #$0002                              ; $8BEC55 |
  STA.B $1A,X                               ; $8BEC58 |
  RTL                                       ; $8BEC5A |

CODE_8BEC5B:
  LDA.B $46,X                               ; $8BEC5B |
  PHX                                       ; $8BEC5D |
  ASL A                                     ; $8BEC5E |
  TAX                                       ; $8BEC5F |
  LDA.L PTR16_8BEC6A,X                      ; $8BEC60 |
  PLX                                       ; $8BEC64 |
  STA.B $00                                 ; $8BEC65 |
  JMP.W ($0000)                             ; $8BEC67 |

PTR16_8BEC6A:
  dw CODE_8BEC72                            ; $8BEC6A |
  dw CODE_8BEC81                            ; $8BEC6C |
  dw CODE_8BEC9F                            ; $8BEC6E |
  dw CODE_8BECB3                            ; $8BEC70 |

CODE_8BEC72:
  LDA.B $3A,X                               ; $8BEC72 |
  STA.B $4E,X                               ; $8BEC74 |
  LDA.W #$0002                              ; $8BEC76 |
  JSR.W CODE_FN_8BEA06                      ; $8BEC79 |
  BCS CODE_8BEC80                           ; $8BEC7C |
  INC.B $46,X                               ; $8BEC7E |

CODE_8BEC80:
  RTL                                       ; $8BEC80 |

CODE_8BEC81:
  LDA.W $1C92                               ; $8BEC81 |
  BNE CODE_8BECC6                           ; $8BEC84 |
  LDY.B $44,X                               ; $8BEC86 |
  LDA.W $003C,Y                             ; $8BEC88 |
  BEQ CODE_8BEC9E                           ; $8BEC8B |
  LDA.W #$3160                              ; $8BEC8D |
  STA.B $00,X                               ; $8BEC90 |
  LDA.W #$016E                              ; $8BEC92 |
  JSR.W CODE_FN_8BEDCF                      ; $8BEC95 |
  BCS CODE_8BEC9E                           ; $8BEC98 |
  STY.B $4A,X                               ; $8BEC9A |
  INC.B $46,X                               ; $8BEC9C |

CODE_8BEC9E:
  RTL                                       ; $8BEC9E |

CODE_8BEC9F:
  LDY.B $4A,X                               ; $8BEC9F |
  LDA.W $0020,Y                             ; $8BECA1 |
  BNE CODE_8BECB2                           ; $8BECA4 |
  LDA.W #$3148                              ; $8BECA6 |
  STA.B $00,X                               ; $8BECA9 |
  LDA.W #$0020                              ; $8BECAB |
  STA.B $2C,X                               ; $8BECAE |
  INC.B $46,X                               ; $8BECB0 |

CODE_8BECB2:
  RTL                                       ; $8BECB2 |

CODE_8BECB3:
  JSL.L CODE_FL_86C70D                      ; $8BECB3 |
  LDY.B $44,X                               ; $8BECB7 |
  LDA.W $001A,Y                             ; $8BECB9 |
  CMP.W #$0004                              ; $8BECBC |
  BEQ CODE_8BECD5                           ; $8BECBF |
  LDA.W $1CAE                               ; $8BECC1 |
  BNE CODE_8BECDA                           ; $8BECC4 |

CODE_8BECC6:
  LDA.W #$0020                              ; $8BECC6 |
  STA.B $48,X                               ; $8BECC9 |
  JSR.W CODE_FN_8BE993                      ; $8BECCB |
  LDA.W #$0002                              ; $8BECCE |
  STA.B $1A,X                               ; $8BECD1 |
  BRA CODE_8BECDA                           ; $8BECD3 |

CODE_8BECD5:
  LDA.W #$0001                              ; $8BECD5 |
  STA.B $46,X                               ; $8BECD8 |

CODE_8BECDA:
  RTL                                       ; $8BECDA |

CODE_8BECDB:
  LDA.B $42,X                               ; $8BECDB |
  PHX                                       ; $8BECDD |
  ASL A                                     ; $8BECDE |
  TAX                                       ; $8BECDF |
  LDA.L PTR16_8BECEA,X                      ; $8BECE0 |
  PLX                                       ; $8BECE4 |
  STA.B $00                                 ; $8BECE5 |
  JMP.W ($0000)                             ; $8BECE7 |

PTR16_8BECEA:
  dw CODE_8BECF6                            ; $8BECEA |
  dw CODE_8BED00                            ; $8BECEC |
  dw CODE_8BED18                            ; $8BECEE |
  dw CODE_8BED3E                            ; $8BECF0 |
  dw CODE_8BED44                            ; $8BECF2 |
  dw CODE_8BED77                            ; $8BECF4 |

CODE_8BECF6:
  STZ.B $26,X                               ; $8BECF6 |
  LDA.W #$0080                              ; $8BECF8 |
  STA.B $2C,X                               ; $8BECFB |
  INC.B $42,X                               ; $8BECFD |
  RTL                                       ; $8BECFF |

CODE_8BED00:
  LDA.W $1C38                               ; $8BED00 |
  AND.W #$0007                              ; $8BED03 |
  BNE CODE_8BED0C                           ; $8BED06 |
  JSL.L CODE_FL_8CFBB6                      ; $8BED08 |

CODE_8BED0C:
  JSL.L CODE_FL_86C70D                      ; $8BED0C |
  LDA.W #$0080                              ; $8BED10 |
  STA.B $4C,X                               ; $8BED13 |
  INC.B $42,X                               ; $8BED15 |
  RTL                                       ; $8BED17 |

CODE_8BED18:
  LDA.W $1C38                               ; $8BED18 |
  AND.W #$0003                              ; $8BED1B |
  BNE CODE_8BED24                           ; $8BED1E |
  JSL.L CODE_FL_8CFBB6                      ; $8BED20 |

CODE_8BED24:
  JSL.L CODE_FL_85A62E                      ; $8BED24 |
  BEQ CODE_8BED3D                           ; $8BED28 |
  LDA.W #$001B                              ; $8BED2A |
  JSL.L push_sound_queue                    ; $8BED2D |
  LDA.W #$0001                              ; $8BED31 |
  STA.B $4A,X                               ; $8BED34 |
  LDA.W #$0060                              ; $8BED36 |
  STA.B $2C,X                               ; $8BED39 |
  INC.B $42,X                               ; $8BED3B |

CODE_8BED3D:
  RTL                                       ; $8BED3D |

CODE_8BED3E:
  LDA.W #$B9F2                              ; $8BED3E |
  JMP.W CODE_JP_8BE9A3                      ; $8BED41 |

CODE_8BED44:
  LDA.B $4A,X                               ; $8BED44 |
  BNE CODE_8BED51                           ; $8BED46 |
  LDY.W #$0030                              ; $8BED48 |
  JSL.L CODE_FL_808993                      ; $8BED4B |
  INC.B $4A,X                               ; $8BED4F |

CODE_8BED51:
  LDA.W $1C38                               ; $8BED51 |
  AND.W #$0003                              ; $8BED54 |
  BNE CODE_8BED5D                           ; $8BED57 |
  JSL.L CODE_FL_8CFBAE                      ; $8BED59 |

CODE_8BED5D:
  JSL.L CODE_FL_86C70D                      ; $8BED5D |
  INC.W $1C92                               ; $8BED61 |
  LDA.W #$0023                              ; $8BED64 |
  JSL.L push_sound_queue                    ; $8BED67 |
  JSL.L CODE_FL_8CFAF3                      ; $8BED6B |
  LDA.W #$0040                              ; $8BED6F |
  STA.B $2C,X                               ; $8BED72 |
  INC.B $42,X                               ; $8BED74 |
  RTL                                       ; $8BED76 |

CODE_8BED77:
  JSL.L CODE_FL_86C70D                      ; $8BED77 |
  JSL.L CODE_FL_84F25A                      ; $8BED7B |
  LDA.W #$0588                              ; $8BED7F |
  JSL.L CODE_FL_8CF9C3                      ; $8BED82 |
  JML.L CODE_FL_86CA2D                      ; $8BED86 |

CODE_FN_8BED8A:
  LDA.B $1A,X                               ; $8BED8A |
  BEQ CODE_8BEDCE                           ; $8BED8C |
  LDA.W $1CAE                               ; $8BED8E |
  BNE CODE_8BEDCE                           ; $8BED91 |
  DEC.B $48,X                               ; $8BED93 |
  BNE CODE_8BEDCE                           ; $8BED95 |
  LDA.W #$0003                              ; $8BED97 |
  STA.B $1A,X                               ; $8BED9A |
  BRA CODE_8BEDCE                           ; $8BED9C |

CODE_FN_8BED9E:
  LDA.W $1C92                               ; $8BED9E |
  BNE CODE_8BEDCE                           ; $8BEDA1 |
  LDA.W $1CAE                               ; $8BEDA3 |
  BEQ CODE_8BEDCE                           ; $8BEDA6 |
  LDA.B $09,X                               ; $8BEDA8 |
  CMP.W #$0080                              ; $8BEDAA |
  BNE CODE_8BEDCE                           ; $8BEDAD |
  STZ.B $26,X                               ; $8BEDAF |
  LDA.W #$FFFF                              ; $8BEDB1 |
  STA.B $48,X                               ; $8BEDB4 |
  LDA.W #$0004                              ; $8BEDB6 |
  STA.B $1A,X                               ; $8BEDB9 |
  BRA CODE_8BEDCE                           ; $8BEDBB |

CODE_FN_8BEDBD:
  LDA.B $1A,X                               ; $8BEDBD |
  BEQ CODE_8BEDCE                           ; $8BEDBF |
  LDA.W $1C92                               ; $8BEDC1 |
  CMP.W #$0002                              ; $8BEDC4 |
  BNE CODE_8BEDCE                           ; $8BEDC7 |
  LDA.W #$0005                              ; $8BEDC9 |
  STA.B $1A,X                               ; $8BEDCC |

CODE_8BEDCE:
  RTS                                       ; $8BEDCE |

CODE_FN_8BEDCF:
  JSL.L CODE_FL_86C9A7                      ; $8BEDCF |
  BCS CODE_8BEDF5                           ; $8BEDD3 |
  LDA.B $86                                 ; $8BEDD5 |
  LSR A                                     ; $8BEDD7 |
  BCS CODE_8BEDE8                           ; $8BEDD8 |
  LDA.W #$0A00                              ; $8BEDDA |
  STA.W $004E,Y                             ; $8BEDDD |
  LDA.W #$0001                              ; $8BEDE0 |
  STA.W $0042,Y                             ; $8BEDE3 |
  BRA CODE_8BEDF5                           ; $8BEDE6 |

CODE_8BEDE8:
  LDA.W #$0A01                              ; $8BEDE8 |
  STA.W $004E,Y                             ; $8BEDEB |
  LDA.W #$0002                              ; $8BEDEE |
  STA.W $0042,Y                             ; $8BEDF1 |
  CLC                                       ; $8BEDF4 |

CODE_8BEDF5:
  RTS                                       ; $8BEDF5 |

CODE_8BEDF6:
  JSR.W CODE_FN_8BF1A8                      ; $8BEDF6 |
  JSL.L CODE_FL_85F8A1                      ; $8BEDF9 |
  JSL.L CODE_FL_86C3F8                      ; $8BEDFD |
  PHX                                       ; $8BEE01 |
  ASL A                                     ; $8BEE02 |
  TAX                                       ; $8BEE03 |
  LDA.L PTR16_8BEE0E,X                      ; $8BEE04 |
  PLX                                       ; $8BEE08 |
  STA.B $00                                 ; $8BEE09 |
  JMP.W ($0000)                             ; $8BEE0B |

PTR16_8BEE0E:
  dw CODE_8BEE12                            ; $8BEE0E |
  dw CODE_8BEE22                            ; $8BEE10 |

CODE_8BEE12:
  JSL.L CODE_FL_86C7A5                      ; $8BEE12 |
  JSL.L CODE_FL_85A5CA                      ; $8BEE16 |
  JSL.L CODE_FL_85A9EF                      ; $8BEE1A |
  JML.L CODE_FL_86C63F                      ; $8BEE1E |

CODE_8BEE22:
  LDA.B $3A,X                               ; $8BEE22 |
  PHX                                       ; $8BEE24 |
  ASL A                                     ; $8BEE25 |
  TAX                                       ; $8BEE26 |
  LDA.L PTR16_8BEE31,X                      ; $8BEE27 |
  PLX                                       ; $8BEE2B |
  STA.B $00                                 ; $8BEE2C |
  JMP.W ($0000)                             ; $8BEE2E |

PTR16_8BEE31:
  dw CODE_8BEE35                            ; $8BEE31 |
  dw CODE_8BEE56                            ; $8BEE33 |

CODE_8BEE35:
  LDA.W #$3031                              ; $8BEE35 |
  JSL.L CODE_FL_86CAEE                      ; $8BEE38 |
  LDA.B $1C,X                               ; $8BEE3C |
  STA.B $3C,X                               ; $8BEE3E |
  LDA.B $0D,X                               ; $8BEE40 |
  STA.B $3E,X                               ; $8BEE42 |
  SEC                                       ; $8BEE44 |
  LDA.B $09,X                               ; $8BEE45 |
  SBC.W #$0008                              ; $8BEE47 |
  STA.B $09,X                               ; $8BEE4A |
  LDA.W #$FE00                              ; $8BEE4C |
  STA.B $26,X                               ; $8BEE4F |
  STZ.B $4C,X                               ; $8BEE51 |
  INC.B $3A,X                               ; $8BEE53 |
  RTL                                       ; $8BEE55 |

CODE_8BEE56:
  LDA.B $20,X                               ; $8BEE56 |
  BEQ CODE_8BEE7B                           ; $8BEE58 |
  LDA.B $1C,X                               ; $8BEE5A |
  CMP.B $3C,X                               ; $8BEE5C |
  BEQ CODE_8BEE7A                           ; $8BEE5E |
  STA.B $3C,X                               ; $8BEE60 |
  LDA.B $40,X                               ; $8BEE62 |
  ASL A                                     ; $8BEE64 |
  TAY                                       ; $8BEE65 |
  PHB                                       ; $8BEE66 |
  PHK                                       ; $8BEE67 |
  PLB                                       ; $8BEE68 |
  LDA.W CODE_00EE7F,Y                       ; $8BEE69 |
  PLB                                       ; $8BEE6C |
  CLC                                       ; $8BEE6D |
  ADC.B $3E,X                               ; $8BEE6E |
  STA.B $0D,X                               ; $8BEE70 |
  LDA.W #$0000                              ; $8BEE72 |
  JSR.W CODE_FN_8BF10B                      ; $8BEE75 |
  INC.B $40,X                               ; $8BEE78 |

CODE_8BEE7A:
  RTL                                       ; $8BEE7A |

CODE_8BEE7B:
  JML.L CODE_FL_86CA36                      ; $8BEE7B |

  dw $FFF0,$FFF0,$FFF3,$FFF3                ; $8BEE7F |
  dw $FFF9,$0002,$0004                      ; $8BEE87 |

CODE_8BEE8D:
  JSR.W CODE_FN_8BF1A8                      ; $8BEE8D |
  JSL.L CODE_FL_85F8A1                      ; $8BEE90 |
  JSL.L CODE_FL_86C3F8                      ; $8BEE94 |
  PHX                                       ; $8BEE98 |
  ASL A                                     ; $8BEE99 |
  TAX                                       ; $8BEE9A |
  LDA.L PTR16_8BEEA5,X                      ; $8BEE9B |
  PLX                                       ; $8BEE9F |
  STA.B $00                                 ; $8BEEA0 |
  JMP.W ($0000)                             ; $8BEEA2 |

PTR16_8BEEA5:
  dw CODE_8BEEAB                            ; $8BEEA5 |
  dw CODE_8BEEBB                            ; $8BEEA7 |
  dw CODE_8BEF53                            ; $8BEEA9 |

CODE_8BEEAB:
  JSL.L CODE_FL_86C7A5                      ; $8BEEAB |
  JSL.L CODE_FL_85A5CA                      ; $8BEEAF |
  JSL.L CODE_FL_85A9EF                      ; $8BEEB3 |
  JML.L CODE_FL_86C63F                      ; $8BEEB7 |

CODE_8BEEBB:
  LDA.B $3A,X                               ; $8BEEBB |
  PHX                                       ; $8BEEBD |
  ASL A                                     ; $8BEEBE |
  TAX                                       ; $8BEEBF |
  LDA.L PTR16_8BEECA,X                      ; $8BEEC0 |
  PLX                                       ; $8BEEC4 |
  STA.B $00                                 ; $8BEEC5 |
  JMP.W ($0000)                             ; $8BEEC7 |

PTR16_8BEECA:
  dw CODE_8BEED2                            ; $8BEECA |
  dw CODE_8BEEF5                            ; $8BEECC |
  dw CODE_8BEF15                            ; $8BEECE |
  dw CODE_8BEF3B                            ; $8BEED0 |

CODE_8BEED2:
  LDA.W #$302F                              ; $8BEED2 |
  JSL.L CODE_FL_86CAEE                      ; $8BEED5 |
  CLC                                       ; $8BEED9 |
  LDA.B $09,X                               ; $8BEEDA |
  ADC.W #$000B                              ; $8BEEDC |
  STA.B $09,X                               ; $8BEEDF |
  SEC                                       ; $8BEEE1 |
  LDA.B $0D,X                               ; $8BEEE2 |
  SBC.W #$000C                              ; $8BEEE4 |
  STA.B $0D,X                               ; $8BEEE7 |
  LDA.W #$0100                              ; $8BEEE9 |
  STA.B $26,X                               ; $8BEEEC |
  LDA.B $1C,X                               ; $8BEEEE |
  STA.B $3C,X                               ; $8BEEF0 |
  INC.B $3A,X                               ; $8BEEF2 |
  RTL                                       ; $8BEEF4 |

CODE_8BEEF5:
  LDA.B $20,X                               ; $8BEEF5 |
  BEQ CODE_8BEF0B                           ; $8BEEF7 |
  LDA.B $1C,X                               ; $8BEEF9 |
  CMP.B $3C,X                               ; $8BEEFB |
  BEQ CODE_8BEF14                           ; $8BEEFD |
  STA.B $3C,X                               ; $8BEEFF |
  LDA.W #$0001                              ; $8BEF01 |
  JSR.W CODE_FN_8BF10B                      ; $8BEF04 |
  INC.B $40,X                               ; $8BEF07 |
  BRA CODE_8BEF14                           ; $8BEF09 |

CODE_8BEF0B:
  LDA.W #$31F4                              ; $8BEF0B |
  STA.B $00,X                               ; $8BEF0E |
  STZ.B $1E,X                               ; $8BEF10 |
  INC.B $3A,X                               ; $8BEF12 |

CODE_8BEF14:
  RTL                                       ; $8BEF14 |

CODE_8BEF15:
  JSL.L CODE_FL_85A603                      ; $8BEF15 |
  BNE CODE_8BEF28                           ; $8BEF19 |
  LDA.W $1C12                               ; $8BEF1B |
  BEQ CODE_8BEF3A                           ; $8BEF1E |
  STZ.B $26,X                               ; $8BEF20 |
  STZ.B $3A,X                               ; $8BEF22 |
  INC.B $1A,X                               ; $8BEF24 |
  BRA CODE_8BEF3A                           ; $8BEF26 |

CODE_8BEF28:
  STZ.B $26,X                               ; $8BEF28 |
  LDA.W #$3030                              ; $8BEF2A |
  JSL.L CODE_FL_86CAEE                      ; $8BEF2D |
  LDA.W #$0032                              ; $8BEF31 |
  JSL.L push_sound_queue                    ; $8BEF34 |
  INC.B $3A,X                               ; $8BEF38 |

CODE_8BEF3A:
  RTL                                       ; $8BEF3A |

CODE_8BEF3B:
  LDA.B $20,X                               ; $8BEF3B |
  BNE CODE_8BEF52                           ; $8BEF3D |
  LDA.W #$31F4                              ; $8BEF3F |
  STA.B $00,X                               ; $8BEF42 |
  STZ.B $1E,X                               ; $8BEF44 |
  LDA.W #$0200                              ; $8BEF46 |
  STA.B $26,X                               ; $8BEF49 |
  LDA.W #$F900                              ; $8BEF4B |
  STA.B $28,X                               ; $8BEF4E |
  DEC.B $3A,X                               ; $8BEF50 |

CODE_8BEF52:
  RTL                                       ; $8BEF52 |

CODE_8BEF53:
  JML.L CODE_FL_86CA36                      ; $8BEF53 |

CODE_8BEF57:
  JSR.W CODE_FN_8BF179                      ; $8BEF57 |
  JSR.W CODE_FN_8BF184                      ; $8BEF5A |
  JSR.W CODE_FN_8BF1A8                      ; $8BEF5D |
  JSL.L CODE_FL_85F8A1                      ; $8BEF60 |
  JSL.L CODE_FL_85FDF6                      ; $8BEF64 |
  JSL.L CODE_FL_86C3F8                      ; $8BEF68 |
  PHX                                       ; $8BEF6C |
  ASL A                                     ; $8BEF6D |
  TAX                                       ; $8BEF6E |
  LDA.L PTR16_8BEF79,X                      ; $8BEF6F |
  PLX                                       ; $8BEF73 |
  STA.B $00                                 ; $8BEF74 |
  JMP.W ($0000)                             ; $8BEF76 |

PTR16_8BEF79:
  dw CODE_8BEF83                            ; $8BEF79 |
  dw CODE_8BEFA3                            ; $8BEF7B |
  dw CODE_8BEFC6                            ; $8BEF7D |
  dw CODE_8BF040                            ; $8BEF7F |
  dw CODE_8BF0BA                            ; $8BEF81 |

CODE_8BEF83:
  JSL.L CODE_FL_86C7A5                      ; $8BEF83 |
  LDA.B $4E,X                               ; $8BEF87 |
  BNE CODE_8BEF94                           ; $8BEF89 |
  LDA.W #$3032                              ; $8BEF8B |
  JSL.L CODE_FL_86CAEE                      ; $8BEF8E |
  BRA CODE_8BEF9B                           ; $8BEF92 |

CODE_8BEF94:
  LDA.W #$3036                              ; $8BEF94 |
  JSL.L CODE_FL_86CAEE                      ; $8BEF97 |

CODE_8BEF9B:
  JSL.L CODE_FL_85A5CA                      ; $8BEF9B |
  JML.L CODE_FL_86C63F                      ; $8BEF9F |

CODE_8BEFA3:
  LDA.B $20,X                               ; $8BEFA3 |
  BNE CODE_8BEFC5                           ; $8BEFA5 |
  LDA.B $4E,X                               ; $8BEFA7 |
  BNE CODE_8BEFB4                           ; $8BEFA9 |
  LDA.W #$3180                              ; $8BEFAB |
  STA.B $00,X                               ; $8BEFAE |
  STZ.B $1E,X                               ; $8BEFB0 |
  BRA CODE_8BEFBB                           ; $8BEFB2 |

CODE_8BEFB4:
  LDA.W #$3238                              ; $8BEFB4 |
  STA.B $00,X                               ; $8BEFB7 |
  STZ.B $1E,X                               ; $8BEFB9 |

CODE_8BEFBB:
  CLC                                       ; $8BEFBB |
  LDA.W #$0018                              ; $8BEFBC |
  ADC.B $0D,X                               ; $8BEFBF |
  STA.B $0D,X                               ; $8BEFC1 |
  INC.B $1A,X                               ; $8BEFC3 |

CODE_8BEFC5:
  RTL                                       ; $8BEFC5 |

CODE_8BEFC6:
  LDA.B $3A,X                               ; $8BEFC6 |
  PHX                                       ; $8BEFC8 |
  ASL A                                     ; $8BEFC9 |
  TAX                                       ; $8BEFCA |
  LDA.L PTR16_8BEFD5,X                      ; $8BEFCB |
  PLX                                       ; $8BEFCF |
  STA.B $00                                 ; $8BEFD0 |
  JMP.W ($0000)                             ; $8BEFD2 |

PTR16_8BEFD5:
  dw CODE_8BEFDB                            ; $8BEFD5 |
  dw CODE_8BEFF1                            ; $8BEFD7 |
  dw CODE_8BEFFC                            ; $8BEFD9 |

CODE_8BEFDB:
  JSL.L CODE_FL_85A9EF                      ; $8BEFDB |
  LDA.W #$0002                              ; $8BEFDF |
  STA.B $2E,X                               ; $8BEFE2 |
  LDA.W #$0014                              ; $8BEFE4 |
  STA.B $30,X                               ; $8BEFE7 |
  LDA.W #$0200                              ; $8BEFE9 |
  STA.B $28,X                               ; $8BEFEC |
  INC.B $3A,X                               ; $8BEFEE |
  RTL                                       ; $8BEFF0 |

CODE_8BEFF1:
  JSL.L CODE_FL_85A62E                      ; $8BEFF1 |
  BEQ CODE_8BEFFB                           ; $8BEFF5 |
  STZ.B $28,X                               ; $8BEFF7 |
  INC.B $3A,X                               ; $8BEFF9 |

CODE_8BEFFB:
  RTL                                       ; $8BEFFB |

CODE_8BEFFC:
  LDA.W $1CAE                               ; $8BEFFC |
  BNE CODE_8BF030                           ; $8BEFFF |
  LDA.W #$0004                              ; $8BF001 |
  STA.B $00                                 ; $8BF004 |
  LDA.W #$000D                              ; $8BF006 |
  JSL.L push_sound_queue                    ; $8BF009 |

CODE_8BF00D:
  LDA.W #$016F                              ; $8BF00D |
  JSL.L CODE_FL_86C9A7                      ; $8BF010 |
  BCS CODE_8BF030                           ; $8BF014 |
  PHY                                       ; $8BF016 |
  LDA.B $00                                 ; $8BF017 |
  ASL A                                     ; $8BF019 |
  TAY                                       ; $8BF01A |
  PHB                                       ; $8BF01B |
  PHK                                       ; $8BF01C |
  PLB                                       ; $8BF01D |
  LDA.W CODE_00F036,Y                       ; $8BF01E |
  PLB                                       ; $8BF021 |
  PLY                                       ; $8BF022 |
  STA.W $003A,Y                             ; $8BF023 |
  LDA.W #$0800                              ; $8BF026 |
  STA.W $004E,Y                             ; $8BF029 |
  DEC.B $00                                 ; $8BF02C |
  BNE CODE_8BF00D                           ; $8BF02E |

CODE_8BF030:
  STZ.B $3A,X                               ; $8BF030 |
  LDA.W #$0004                              ; $8BF032 |
  STA.B $1A,X                               ; $8BF035 |
  RTL                                       ; $8BF037 |

  dw $0013,$0016,$001A,$001D                ; $8BF038 |

CODE_8BF040:
  LDA.B $3C,X                               ; $8BF040 |
  PHX                                       ; $8BF042 |
  ASL A                                     ; $8BF043 |
  TAX                                       ; $8BF044 |
  LDA.L PTR16_8BF04F,X                      ; $8BF045 |
  PLX                                       ; $8BF049 |
  STA.B $00                                 ; $8BF04A |
  JMP.W ($0000)                             ; $8BF04C |

PTR16_8BF04F:
  dw CODE_8BF055                            ; $8BF04F |
  dw CODE_8BF080                            ; $8BF051 |
  dw CODE_8BF0AC                            ; $8BF053 |

CODE_8BF055:
  JSL.L CODE_FL_85A9F7                      ; $8BF055 |
  LDA.B $4E,X                               ; $8BF059 |
  BNE CODE_8BF068                           ; $8BF05B |
  LDA.W #$3033                              ; $8BF05D |
  JSL.L CODE_FL_86CAEE                      ; $8BF060 |
  STZ.B $28,X                               ; $8BF064 |
  BRA CODE_8BF071                           ; $8BF066 |

CODE_8BF068:
  LDA.W #$3037                              ; $8BF068 |
  JSL.L CODE_FL_86CAEE                      ; $8BF06B |
  STZ.B $28,X                               ; $8BF06F |

CODE_8BF071:
  JSR.W CODE_FN_8BF1B5                      ; $8BF071 |
  LDA.W #$009C                              ; $8BF074 |
  JSL.L CODE_FL_8089BD                      ; $8BF077 |
  STZ.B $32,X                               ; $8BF07B |
  INC.B $3C,X                               ; $8BF07D |
  RTL                                       ; $8BF07F |

CODE_8BF080:
  LDA.B $20,X                               ; $8BF080 |
  BNE CODE_8BF0AB                           ; $8BF082 |
  JSL.L CODE_FL_85A9EF                      ; $8BF084 |
  LDA.W #$000A                              ; $8BF088 |
  STA.B $2E,X                               ; $8BF08B |
  LDA.W #$0004                              ; $8BF08D |
  STA.B $30,X                               ; $8BF090 |
  LDA.B $4E,X                               ; $8BF092 |
  BNE CODE_8BF09F                           ; $8BF094 |
  LDA.W #$3190                              ; $8BF096 |
  STA.B $00,X                               ; $8BF099 |
  STZ.B $1E,X                               ; $8BF09B |
  BRA CODE_8BF0A6                           ; $8BF09D |

CODE_8BF09F:
  LDA.W #$3248                              ; $8BF09F |
  STA.B $00,X                               ; $8BF0A2 |
  STZ.B $1E,X                               ; $8BF0A4 |

CODE_8BF0A6:
  JSR.W CODE_FN_8BF1C5                      ; $8BF0A6 |
  INC.B $3C,X                               ; $8BF0A9 |

CODE_8BF0AB:
  RTL                                       ; $8BF0AB |

CODE_8BF0AC:
  JSL.L CODE_FL_85A603                      ; $8BF0AC |
  LDA.W $1C12                               ; $8BF0B0 |
  BEQ CODE_8BF0B9                           ; $8BF0B3 |
  JML.L CODE_FL_86CA36                      ; $8BF0B5 |

CODE_8BF0B9:
  RTL                                       ; $8BF0B9 |

CODE_8BF0BA:
  JSL.L CODE_FL_86C70D                      ; $8BF0BA |
  JML.L CODE_FL_86CA36                      ; $8BF0BE |

CODE_8BF0C2:
  JSL.L CODE_FL_85F885                      ; $8BF0C2 |
  JSL.L CODE_FL_86C3F8                      ; $8BF0C6 |
  PHX                                       ; $8BF0CA |
  ASL A                                     ; $8BF0CB |
  TAX                                       ; $8BF0CC |
  LDA.L PTR16_8BF0D7,X                      ; $8BF0CD |
  PLX                                       ; $8BF0D1 |
  STA.B $00                                 ; $8BF0D2 |
  JMP.W ($0000)                             ; $8BF0D4 |

PTR16_8BF0D7:
  dw CODE_8BF0DB                            ; $8BF0D7 |
  dw CODE_8BF103                            ; $8BF0D9 |

CODE_8BF0DB:
  JSL.L CODE_FL_86C7A5                      ; $8BF0DB |
  LDA.W #$3035                              ; $8BF0DF |
  JSL.L CODE_FL_86CAEE                      ; $8BF0E2 |
  JSL.L CODE_FL_85A9EF                      ; $8BF0E6 |
  LDA.B $3A,X                               ; $8BF0EA |
  LDY.W #$0008                              ; $8BF0EC |
  JSL.L CODE_FL_8AB4B3                      ; $8BF0EF |
  LDA.B $00                                 ; $8BF0F3 |
  STA.B $26,X                               ; $8BF0F5 |
  SEC                                       ; $8BF0F7 |
  LDA.B $02                                 ; $8BF0F8 |
  SBC.W #$0200                              ; $8BF0FA |
  STA.B $28,X                               ; $8BF0FD |
  JML.L CODE_FL_86C63F                      ; $8BF0FF |

CODE_8BF103:
  LDA.B $28,X                               ; $8BF103 |
  CLC                                       ; $8BF105 |
  ADC.B $4C,X                               ; $8BF106 |
  STA.B $28,X                               ; $8BF108 |
  RTL                                       ; $8BF10A |

CODE_FN_8BF10B:
  STA.B $00                                 ; $8BF10B |
  LDA.B $40,X                               ; $8BF10D |
  ASL A                                     ; $8BF10F |
  ASL A                                     ; $8BF110 |
  TAY                                       ; $8BF111 |
  LDA.B $00                                 ; $8BF112 |
  BNE CODE_8BF12A                           ; $8BF114 |
  PHB                                       ; $8BF116 |
  PHK                                       ; $8BF117 |
  PLB                                       ; $8BF118 |
  LDA.W CODE_00F145,Y                       ; $8BF119 |
  PLB                                       ; $8BF11C |
  STA.B $02                                 ; $8BF11D |
  PHB                                       ; $8BF11F |
  PHK                                       ; $8BF120 |
  PLB                                       ; $8BF121 |
  LDA.W LOOSE_OP_00F147,Y                   ; $8BF122 |
  PLB                                       ; $8BF125 |
  STA.B $04                                 ; $8BF126 |
  BRA CODE_8BF13C                           ; $8BF128 |

CODE_8BF12A:
  PHB                                       ; $8BF12A |
  PHK                                       ; $8BF12B |
  PLB                                       ; $8BF12C |
  LDA.W LOOSE_OP_00F165,Y                   ; $8BF12D |
  PLB                                       ; $8BF130 |
  STA.B $02                                 ; $8BF131 |
  PHB                                       ; $8BF133 |
  PHK                                       ; $8BF134 |
  PLB                                       ; $8BF135 |
  LDA.W LOOSE_OP_00F167,Y                   ; $8BF136 |
  PLB                                       ; $8BF139 |
  STA.B $04                                 ; $8BF13A |

CODE_8BF13C:
  LDA.B $02                                 ; $8BF13C |
  STA.B $2E,X                               ; $8BF13E |
  LDA.B $04                                 ; $8BF140 |
  STA.B $30,X                               ; $8BF142 |
  RTS                                       ; $8BF144 |

  dw $0002,$0002,$0002,$0004                ; $8BF145 |
  dw $0002,$0008,$0002,$000C                ; $8BF14D |
  dw $0004,$0010,$0004,$0020                ; $8BF155 |
  dw $0008,$0030,$0008,$0030                ; $8BF15D |
  dw $0002,$0004,$0004,$0008                ; $8BF165 |
  dw $0008,$0010,$0008,$0010                ; $8BF16D |
  dw $000C,$0018                            ; $8BF175 |

CODE_FN_8BF179:
  LDA.B $32,X                               ; $8BF179 |
  AND.W #$2000                              ; $8BF17B |
  BEQ CODE_8BF1A7                           ; $8BF17E |
  INC.B $3E,X                               ; $8BF180 |
  BRA CODE_8BF1A7                           ; $8BF182 |

CODE_FN_8BF184:
  LDA.B $1A,X                               ; $8BF184 |
  BEQ CODE_8BF1A7                           ; $8BF186 |
  LDA.B $3E,X                               ; $8BF188 |
  BEQ CODE_8BF1A7                           ; $8BF18A |
  CMP.W #$0001                              ; $8BF18C |
  BNE CODE_8BF19D                           ; $8BF18F |
  LDA.W $1CAE                               ; $8BF191 |
  BNE CODE_8BF1A2                           ; $8BF194 |
  LDA.W #$0003                              ; $8BF196 |
  STA.B $1A,X                               ; $8BF199 |
  BRA CODE_8BF1A7                           ; $8BF19B |

CODE_8BF19D:
  LDA.W #$0008                              ; $8BF19D |
  STA.B $2C,X                               ; $8BF1A0 |

CODE_8BF1A2:
  LDA.W #$0004                              ; $8BF1A2 |
  STA.B $1A,X                               ; $8BF1A5 |

CODE_8BF1A7:
  RTS                                       ; $8BF1A7 |

CODE_FN_8BF1A8:
  LDA.B $2E,X                               ; $8BF1A8 |
  STA.B $0E                                 ; $8BF1AA |
  LDA.B $30,X                               ; $8BF1AC |
  STA.B $10                                 ; $8BF1AE |
  STZ.B $0A                                 ; $8BF1B0 |
  STZ.B $0C                                 ; $8BF1B2 |
  RTS                                       ; $8BF1B4 |

CODE_FN_8BF1B5:
  LDY.W $1C9E                               ; $8BF1B5 |
  SEC                                       ; $8BF1B8 |
  LDA.B $09,X                               ; $8BF1B9 |
  SBC.W $0009,Y                             ; $8BF1BB |
  BPL CODE_8BF1C2                           ; $8BF1BE |
  INC.B $40,X                               ; $8BF1C0 |

CODE_8BF1C2:
  INC.B $40,X                               ; $8BF1C2 |
  RTS                                       ; $8BF1C4 |

CODE_FN_8BF1C5:
  LDA.B $40,X                               ; $8BF1C5 |
  AND.W #$0001                              ; $8BF1C7 |
  BNE CODE_8BF1DB                           ; $8BF1CA |
  LDA.W #$FD00                              ; $8BF1CC |
  STA.B $26,X                               ; $8BF1CF |
  SEC                                       ; $8BF1D1 |
  LDA.B $09,X                               ; $8BF1D2 |
  SBC.W #$0010                              ; $8BF1D4 |
  STA.B $09,X                               ; $8BF1D7 |
  BRA CODE_8BF1E8                           ; $8BF1D9 |

CODE_8BF1DB:
  LDA.W #$0300                              ; $8BF1DB |
  STA.B $26,X                               ; $8BF1DE |
  CLC                                       ; $8BF1E0 |
  LDA.B $09,X                               ; $8BF1E1 |
  ADC.W #$0010                              ; $8BF1E3 |
  STA.B $09,X                               ; $8BF1E6 |

CODE_8BF1E8:
  SEC                                       ; $8BF1E8 |
  LDA.B $0D,X                               ; $8BF1E9 |
  SBC.W #$0002                              ; $8BF1EB |
  STA.B $0D,X                               ; $8BF1EE |
  RTS                                       ; $8BF1F0 |

CODE_8BF1F1:
  JSL.L CODE_FL_8BF21F                      ; $8BF1F1 |
  SEC                                       ; $8BF1F5 |
  LDA.B $09,X                               ; $8BF1F6 |
  SBC.B $2E,X                               ; $8BF1F8 |
  CMP.W #$0014                              ; $8BF1FA |
  BCC CODE_8BF212                           ; $8BF1FD |
  CLC                                       ; $8BF1FF |
  LDA.B $09,X                               ; $8BF200 |
  ADC.B $2E,X                               ; $8BF202 |
  CMP.W #$00EC                              ; $8BF204 |
  BCC CODE_8BF21E                           ; $8BF207 |
  LDA.W #$00EC                              ; $8BF209 |
  SBC.B $2E,X                               ; $8BF20C |
  STA.B $09,X                               ; $8BF20E |
  BRA CODE_8BF219                           ; $8BF210 |

CODE_8BF212:
  LDA.W #$0014                              ; $8BF212 |
  ADC.B $2E,X                               ; $8BF215 |
  STA.B $09,X                               ; $8BF217 |

CODE_8BF219:
  LDA.W #$0001                              ; $8BF219 |
  STA.B $3A,X                               ; $8BF21C |

CODE_8BF21E:
  RTL                                       ; $8BF21E |

CODE_FL_8BF21F:
  JSR.W CODE_FN_8BF637                      ; $8BF21F |
  JSL.L CODE_FL_86C3F8                      ; $8BF222 |
  PHX                                       ; $8BF226 |
  ASL A                                     ; $8BF227 |
  TAX                                       ; $8BF228 |
  LDA.L PTR16_8BF233,X                      ; $8BF229 |
  PLX                                       ; $8BF22D |
  STA.B $00                                 ; $8BF22E |
  JMP.W ($0000)                             ; $8BF230 |

PTR16_8BF233:
  dw CODE_8BF23B                            ; $8BF233 |
  dw CODE_8BF258                            ; $8BF235 |
  dw CODE_8BF2B0                            ; $8BF237 |
  dw CODE_8BF2B4                            ; $8BF239 |

CODE_8BF23B:
  JSL.L CODE_FL_86C7A5                      ; $8BF23B |
  JSL.L CODE_FL_85B00E                      ; $8BF23F |
  LDA.W #$003F                              ; $8BF243 |
  STA.B $14,X                               ; $8BF246 |
  LDA.B $34,X                               ; $8BF248 |
  ORA.W #$3A8C                              ; $8BF24A |
  STA.B $34,X                               ; $8BF24D |
  STX.W $1C9E                               ; $8BF24F |
  INC.B $3E,X                               ; $8BF252 |
  JML.L CODE_FL_86C63F                      ; $8BF254 |

CODE_8BF258:
  LDA.B $34,X                               ; $8BF258 |
  ORA.W #$0004                              ; $8BF25A |
  STA.B $34,X                               ; $8BF25D |
  LDA.B $28,X                               ; $8BF25F |
  BPL CODE_8BF277                           ; $8BF261 |
  JSL.L CODE_FL_858B01                      ; $8BF263 |
  BEQ CODE_8BF277                           ; $8BF267 |
  STZ.B $28,X                               ; $8BF269 |
  JSL.L CODE_FL_85A671                      ; $8BF26B |
  CLC                                       ; $8BF26F |
  LDA.B $0D,X                               ; $8BF270 |
  ADC.B $30,X                               ; $8BF272 |
  STA.B $0D,X                               ; $8BF274 |
  RTL                                       ; $8BF276 |

CODE_8BF277:
  JSL.L CODE_FL_858BB9                      ; $8BF277 |
  BNE CODE_8BF283                           ; $8BF27B |
  JSL.L CODE_FL_86C82F                      ; $8BF27D |
  BRA CODE_8BF2A4                           ; $8BF281 |

CODE_8BF283:
  LDA.W $1C14                               ; $8BF283 |
  BEQ CODE_8BF2A0                           ; $8BF286 |
  CLC                                       ; $8BF288 |
  LDA.B $0D,X                               ; $8BF289 |
  ADC.W $1C24                               ; $8BF28B |
  STA.B $0D,X                               ; $8BF28E |
  LDA.B $3E,X                               ; $8BF290 |
  BNE CODE_8BF2A0                           ; $8BF292 |
  LDA.W #$0001                              ; $8BF294 |
  STA.B $3E,X                               ; $8BF297 |
  LDA.W #$009C                              ; $8BF299 |
  JSL.L CODE_FL_8089BD                      ; $8BF29C |

CODE_8BF2A0:
  STZ.B $28,X                               ; $8BF2A0 |
  STZ.B $26,X                               ; $8BF2A2 |

CODE_8BF2A4:
  LDA.B $46,X                               ; $8BF2A4 |
  AND.W #$0200                              ; $8BF2A6 |
  BEQ CODE_8BF2AF                           ; $8BF2A9 |
  INC.B $1A,X                               ; $8BF2AB |
  STZ.B $3E,X                               ; $8BF2AD |

CODE_8BF2AF:
  RTL                                       ; $8BF2AF |

CODE_8BF2B0:
  JML.L CODE_FL_86B214                      ; $8BF2B0 |

CODE_8BF2B4:
  JML.L CODE_FL_86CA36                      ; $8BF2B4 |

CODE_8BF2B8:
  JSR.W CODE_FN_8BF646                      ; $8BF2B8 |
  JSR.W CODE_FN_8BF65C                      ; $8BF2BB |
  JSL.L CODE_FL_86C3B0                      ; $8BF2BE |
  PHX                                       ; $8BF2C2 |
  ASL A                                     ; $8BF2C3 |
  TAX                                       ; $8BF2C4 |
  LDA.L PTR16_8BF2CF,X                      ; $8BF2C5 |
  PLX                                       ; $8BF2C9 |
  STA.B $00                                 ; $8BF2CA |
  JMP.W ($0000)                             ; $8BF2CC |

PTR16_8BF2CF:
  dw CODE_8BF2DD                            ; $8BF2CF |
  dw CODE_8BF2EF                            ; $8BF2D1 |
  dw CODE_8BF301                            ; $8BF2D3 |
  dw CODE_8BF36E                            ; $8BF2D5 |
  dw CODE_8BF39B                            ; $8BF2D7 |
  dw CODE_8BF3C0                            ; $8BF2D9 |
  dw CODE_8BF448                            ; $8BF2DB |

CODE_8BF2DD:
  LDY.B $44,X                               ; $8BF2DD |
  LDA.W $001A,Y                             ; $8BF2DF |
  CMP.W #$0002                              ; $8BF2E2 |
  BCC CODE_8BF2EE                           ; $8BF2E5 |
  LDA.W #$0400                              ; $8BF2E7 |
  STA.B $2C,X                               ; $8BF2EA |
  INC.B $1A,X                               ; $8BF2EC |

CODE_8BF2EE:
  RTL                                       ; $8BF2EE |

CODE_8BF2EF:
  JSL.L CODE_FL_86C70D                      ; $8BF2EF |
  LDA.B $86                                 ; $8BF2F3 |
  AND.W #$0001                              ; $8BF2F5 |
  STA.W $1CB2                               ; $8BF2F8 |
  INC.W $1CAE                               ; $8BF2FB |
  INC.B $1A,X                               ; $8BF2FE |
  RTL                                       ; $8BF300 |

CODE_8BF301:
  LDA.B $3A,X                               ; $8BF301 |
  PHX                                       ; $8BF303 |
  ASL A                                     ; $8BF304 |
  TAX                                       ; $8BF305 |
  LDA.L PTR16_8BF310,X                      ; $8BF306 |
  PLX                                       ; $8BF30A |
  STA.B $00                                 ; $8BF30B |
  JMP.W ($0000)                             ; $8BF30D |

PTR16_8BF310:
  dw CODE_8BF314                            ; $8BF310 |
  dw CODE_8BF336                            ; $8BF312 |

CODE_8BF314:
  LDA.W $1CB2                               ; $8BF314 |
  BNE CODE_8BF327                           ; $8BF317 |
  LDA.W #$0000                              ; $8BF319 |
  STA.W $1682                               ; $8BF31C |
  LDA.W #$0120                              ; $8BF31F |
  STA.W $1692                               ; $8BF322 |
  BRA CODE_8BF333                           ; $8BF325 |

CODE_8BF327:
  LDA.W #$0000                              ; $8BF327 |
  STA.W $1682                               ; $8BF32A |
  LDA.W #$0100                              ; $8BF32D |
  STA.W $1692                               ; $8BF330 |

CODE_8BF333:
  INC.B $3A,X                               ; $8BF333 |
  RTL                                       ; $8BF335 |

CODE_8BF336:
  LDA.W $1CB0                               ; $8BF336 |
  CMP.W #$0002                              ; $8BF339 |
  BNE CODE_8BF36D                           ; $8BF33C |
  LDA.W #$0186                              ; $8BF33E |
  JSL.L CODE_FL_86C9A7                      ; $8BF341 |
  BCS CODE_8BF36D                           ; $8BF345 |
  TYA                                       ; $8BF347 |
  STA.B $40,X                               ; $8BF348 |
  LDA.W #$0222                              ; $8BF34A |
  JSL.L CODE_FL_86C9C5                      ; $8BF34D |
  BCS CODE_8BF36D                           ; $8BF351 |
  LDA.W #$4600                              ; $8BF353 |
  STA.W $004E,Y                             ; $8BF356 |
  LDA.W #$0017                              ; $8BF359 |
  STA.W $1FBE                               ; $8BF35C |
  LDA.W #$0001                              ; $8BF35F |
  STA.B $4A,X                               ; $8BF362 |
  LDA.W #$0040                              ; $8BF364 |
  STA.B $2C,X                               ; $8BF367 |
  INC.B $1A,X                               ; $8BF369 |
  STZ.B $3A,X                               ; $8BF36B |

CODE_8BF36D:
  RTL                                       ; $8BF36D |

CODE_8BF36E:
  DEC.B $4A,X                               ; $8BF36E |
  BNE CODE_8BF37E                           ; $8BF370 |
  LDA.W #$0034                              ; $8BF372 |
  JSL.L push_sound_queue                    ; $8BF375 |
  LDA.W #$000A                              ; $8BF379 |
  STA.B $4A,X                               ; $8BF37C |

CODE_8BF37E:
  LDA.W $1C38                               ; $8BF37E |
  AND.W #$0003                              ; $8BF381 |
  BNE CODE_8BF392                           ; $8BF384 |
  SEP #$20                                  ; $8BF386 |
  LDA.W $1FBE                               ; $8BF388 |
  EOR.B #$02                                ; $8BF38B |
  STA.W $1FBE                               ; $8BF38D |
  REP #$20                                  ; $8BF390 |

CODE_8BF392:
  JSL.L CODE_FL_86C70D                      ; $8BF392 |
  INC.B $3C,X                               ; $8BF396 |
  INC.B $1A,X                               ; $8BF398 |
  RTL                                       ; $8BF39A |

CODE_8BF39B:
  DEC.B $4A,X                               ; $8BF39B |
  BNE CODE_8BF3AB                           ; $8BF39D |
  LDA.W #$0034                              ; $8BF39F |
  JSL.L push_sound_queue                    ; $8BF3A2 |
  LDA.W #$000A                              ; $8BF3A6 |
  STA.B $4A,X                               ; $8BF3A9 |

CODE_8BF3AB:
  LDA.W $1C38                               ; $8BF3AB |
  AND.W #$0003                              ; $8BF3AE |
  BNE CODE_8BF3BF                           ; $8BF3B1 |
  SEP #$20                                  ; $8BF3B3 |
  LDA.W $1FBE                               ; $8BF3B5 |
  EOR.B #$02                                ; $8BF3B8 |
  STA.W $1FBE                               ; $8BF3BA |
  REP #$20                                  ; $8BF3BD |

CODE_8BF3BF:
  RTL                                       ; $8BF3BF |

CODE_8BF3C0:
  DEC.B $4A,X                               ; $8BF3C0 |
  BNE CODE_8BF3D0                           ; $8BF3C2 |
  LDA.W #$0034                              ; $8BF3C4 |
  JSL.L push_sound_queue                    ; $8BF3C7 |
  LDA.W #$000A                              ; $8BF3CB |
  STA.B $4A,X                               ; $8BF3CE |

CODE_8BF3D0:
  LDA.B $3E,X                               ; $8BF3D0 |
  PHX                                       ; $8BF3D2 |
  ASL A                                     ; $8BF3D3 |
  TAX                                       ; $8BF3D4 |
  LDA.L PTR16_8BF3DF,X                      ; $8BF3D5 |
  PLX                                       ; $8BF3D9 |
  STA.B $00                                 ; $8BF3DA |
  JMP.W ($0000)                             ; $8BF3DC |

PTR16_8BF3DF:
  dw CODE_8BF3E3                            ; $8BF3DF |
  dw CODE_8BF410                            ; $8BF3E1 |

CODE_8BF3E3:
  LDA.W $1CB2                               ; $8BF3E3 |
  BNE CODE_8BF3F6                           ; $8BF3E6 |
  LDA.W #$0000                              ; $8BF3E8 |
  STA.W $1682                               ; $8BF3EB |
  LDA.W #$0000                              ; $8BF3EE |
  STA.W $1692                               ; $8BF3F1 |
  BRA CODE_8BF402                           ; $8BF3F4 |

CODE_8BF3F6:
  LDA.W #$0100                              ; $8BF3F6 |
  STA.W $1682                               ; $8BF3F9 |
  LDA.W #$0000                              ; $8BF3FC |
  STA.W $1692                               ; $8BF3FF |

CODE_8BF402:
  LDA.W #$0017                              ; $8BF402 |
  STA.W $1FBE                               ; $8BF405 |
  LDA.W #$0080                              ; $8BF408 |
  STA.B $2C,X                               ; $8BF40B |
  INC.B $3E,X                               ; $8BF40D |
  RTL                                       ; $8BF40F |

CODE_8BF410:
  LDA.W $1C38                               ; $8BF410 |
  AND.W #$0003                              ; $8BF413 |
  BNE CODE_8BF424                           ; $8BF416 |
  SEP #$20                                  ; $8BF418 |
  LDA.W $1FBE                               ; $8BF41A |
  EOR.B #$02                                ; $8BF41D |
  STA.W $1FBE                               ; $8BF41F |
  REP #$20                                  ; $8BF422 |

CODE_8BF424:
  JSL.L CODE_FL_86C70D                      ; $8BF424 |
  LDA.W #$0015                              ; $8BF428 |
  STA.W $1FBE                               ; $8BF42B |
  STZ.W $1CAE                               ; $8BF42E |
  STZ.W $1CB0                               ; $8BF431 |
  STZ.W $1CB2                               ; $8BF434 |
  STZ.B $3C,X                               ; $8BF437 |
  STZ.B $40,X                               ; $8BF439 |
  LDA.W #$0400                              ; $8BF43B |
  STA.B $2C,X                               ; $8BF43E |
  STZ.B $3E,X                               ; $8BF440 |
  LDA.W #$0001                              ; $8BF442 |
  STA.B $1A,X                               ; $8BF445 |
  RTL                                       ; $8BF447 |

CODE_8BF448:
  STZ.W $1CAE                               ; $8BF448 |
  STZ.W $1CB0                               ; $8BF44B |
  STZ.W $1CB2                               ; $8BF44E |
  JML.L CODE_FL_86CA36                      ; $8BF451 |

CODE_8BF455:
  JSL.L CODE_FL_86C3F8                      ; $8BF455 |
  PHX                                       ; $8BF459 |
  ASL A                                     ; $8BF45A |
  TAX                                       ; $8BF45B |
  LDA.L PTR16_8BF466,X                      ; $8BF45C |
  PLX                                       ; $8BF460 |
  STA.B $00                                 ; $8BF461 |
  JMP.W ($0000)                             ; $8BF463 |

PTR16_8BF466:
  dw CODE_8BF46C                            ; $8BF466 |
  dw CODE_8BF47B                            ; $8BF468 |
  dw CODE_8BF486                            ; $8BF46A |

CODE_8BF46C:
  JSL.L CODE_FL_86C7A5                      ; $8BF46C |
  LDA.W #$3034                              ; $8BF470 |
  JSL.L CODE_FL_86CAEE                      ; $8BF473 |
  JML.L CODE_FL_86C63F                      ; $8BF477 |

CODE_8BF47B:
  LDA.W $1CAE                               ; $8BF47B |
  BNE CODE_8BF485                           ; $8BF47E |
  LDA.W #$0002                              ; $8BF480 |
  STA.B $1A,X                               ; $8BF483 |

CODE_8BF485:
  RTL                                       ; $8BF485 |

CODE_8BF486:
  JML.L CODE_FL_86CA36                      ; $8BF486 |

CODE_8BF48A:
  JSR.W CODE_FN_8BF667                      ; $8BF48A |
  JSL.L CODE_FL_85F885                      ; $8BF48D |
  LDA.B $1A,X                               ; $8BF491 |
  PHX                                       ; $8BF493 |
  ASL A                                     ; $8BF494 |
  TAX                                       ; $8BF495 |
  LDA.L PTR16_8BF4A0,X                      ; $8BF496 |
  PLX                                       ; $8BF49A |
  STA.B $00                                 ; $8BF49B |
  JMP.W ($0000)                             ; $8BF49D |

PTR16_8BF4A0:
  dw CODE_8BF4A8                            ; $8BF4A0 |
  dw CODE_8BF4CA                            ; $8BF4A2 |
  dw CODE_8BF4D5                            ; $8BF4A4 |
  dw CODE_8BF5B6                            ; $8BF4A6 |

CODE_8BF4A8:
  LDA.W $1CB2                               ; $8BF4A8 |
  BNE CODE_8BF4B7                           ; $8BF4AB |
  CLC                                       ; $8BF4AD |
  LDA.B $0D,X                               ; $8BF4AE |
  ADC.W #$0008                              ; $8BF4B0 |
  STA.B $0D,X                               ; $8BF4B3 |
  BRA CODE_8BF4BF                           ; $8BF4B5 |

CODE_8BF4B7:
  CLC                                       ; $8BF4B7 |
  LDA.B $0D,X                               ; $8BF4B8 |
  ADC.W #$0020                              ; $8BF4BA |
  STA.B $0D,X                               ; $8BF4BD |

CODE_8BF4BF:
  JSL.L CODE_FL_85B00E                      ; $8BF4BF |
  JSL.L CODE_FL_85A9EF                      ; $8BF4C3 |
  INC.B $1A,X                               ; $8BF4C7 |
  RTL                                       ; $8BF4C9 |

CODE_8BF4CA:
  LDA.W $1CAE                               ; $8BF4CA |
  BNE CODE_8BF4D4                           ; $8BF4CD |
  LDA.W #$0003                              ; $8BF4CF |
  STA.B $1A,X                               ; $8BF4D2 |

CODE_8BF4D4:
  RTL                                       ; $8BF4D4 |

CODE_8BF4D5:
  LDA.W $1CB2                               ; $8BF4D5 |
  ASL A                                     ; $8BF4D8 |
  ASL A                                     ; $8BF4D9 |
  TAY                                       ; $8BF4DA |
  PHB                                       ; $8BF4DB |
  PHK                                       ; $8BF4DC |
  PLB                                       ; $8BF4DD |
  LDA.W LOOSE_OP_00F546,Y                   ; $8BF4DE |
  PLB                                       ; $8BF4E1 |
  STA.B $00                                 ; $8BF4E2 |
  PHB                                       ; $8BF4E4 |
  PHK                                       ; $8BF4E5 |
  PLB                                       ; $8BF4E6 |
  LDA.W CODE_00F548,Y                       ; $8BF4E7 |
  PLB                                       ; $8BF4EA |
  STA.B $02                                 ; $8BF4EB |

CODE_8BF4ED:
  LDA.W #$018A                              ; $8BF4ED |
  JSL.L CODE_FL_86C9A7                      ; $8BF4F0 |
  PHY                                       ; $8BF4F4 |
  LDY.B $02                                 ; $8BF4F5 |
  PHB                                       ; $8BF4F7 |
  PHK                                       ; $8BF4F8 |
  PLB                                       ; $8BF4F9 |
  LDA.W $0000,Y                             ; $8BF4FA |
  PLB                                       ; $8BF4FD |
  STA.B $08                                 ; $8BF4FE |
  INY                                       ; $8BF500 |
  INY                                       ; $8BF501 |
  PHB                                       ; $8BF502 |
  PHK                                       ; $8BF503 |
  PLB                                       ; $8BF504 |
  LDA.W $0000,Y                             ; $8BF505 |
  PLB                                       ; $8BF508 |
  STA.B $0A                                 ; $8BF509 |
  INY                                       ; $8BF50B |
  INY                                       ; $8BF50C |
  PHB                                       ; $8BF50D |
  PHK                                       ; $8BF50E |
  PLB                                       ; $8BF50F |
  LDA.W $0000,Y                             ; $8BF510 |
  PLB                                       ; $8BF513 |
  STA.B $0C                                 ; $8BF514 |
  INY                                       ; $8BF516 |
  INY                                       ; $8BF517 |
  PHB                                       ; $8BF518 |
  PHK                                       ; $8BF519 |
  PLB                                       ; $8BF51A |
  LDA.W $0000,Y                             ; $8BF51B |
  PLB                                       ; $8BF51E |
  STA.B $0E                                 ; $8BF51F |
  INY                                       ; $8BF521 |
  INY                                       ; $8BF522 |
  STY.B $02                                 ; $8BF523 |
  PLY                                       ; $8BF525 |
  LDA.B $08                                 ; $8BF526 |
  STA.W $0009,Y                             ; $8BF528 |
  LDA.B $0A                                 ; $8BF52B |
  STA.W $000D,Y                             ; $8BF52D |
  LDA.B $0C                                 ; $8BF530 |
  STA.W $002E,Y                             ; $8BF532 |
  LDA.B $0E                                 ; $8BF535 |
  STA.W $0030,Y                             ; $8BF537 |
  DEC.B $00                                 ; $8BF53A |
  BNE CODE_8BF4ED                           ; $8BF53C |
  INC.B $3A,X                               ; $8BF53E |
  LDA.W #$0001                              ; $8BF540 |
  STA.B $1A,X                               ; $8BF543 |
  RTL                                       ; $8BF545 |

  dw $0007                                  ; $8BF546 |
  dw DATA8_8BF54E                           ; $8BF548 |
  dw $0006                                  ; $8BF54A |
  dw DATA8_8BF586                           ; $8BF54C |

DATA8_8BF54E:
  db $80,$00,$B0,$00,$02,$00,$80,$00        ; $8BF54E |
  db $D0,$00,$B0,$00,$02,$00,$80,$00        ; $8BF556 |
  db $30,$00,$B0,$00,$02,$00,$80,$00        ; $8BF55E |
  db $A8,$00,$B0,$00,$02,$00,$50,$00        ; $8BF566 |
  db $58,$00,$B0,$00,$02,$00,$50,$00        ; $8BF56E |
  db $BC,$00,$58,$00,$10,$00,$20,$00        ; $8BF576 |
  db $44,$00,$58,$00,$10,$00,$20,$00        ; $8BF57E |

DATA8_8BF586:
  db $C8,$00,$B0,$00,$02,$00,$60,$00        ; $8BF586 |
  db $38,$00,$B0,$00,$02,$00,$60,$00        ; $8BF58E |
  db $98,$00,$B0,$00,$02,$00,$38,$00        ; $8BF596 |
  db $68,$00,$B0,$00,$02,$00,$38,$00        ; $8BF59E |
  db $C0,$00,$78,$00,$10,$00,$18,$00        ; $8BF5A6 |
  db $40,$00,$78,$00,$10,$00,$18,$00        ; $8BF5AE |

CODE_8BF5B6:
  JML.L CODE_FL_86CA36                      ; $8BF5B6 |

CODE_8BF5BA:
  JSR.W CODE_FN_8BF1A8                      ; $8BF5BA |
  JSL.L CODE_FL_85F8A1                      ; $8BF5BD |
  LDA.B $1A,X                               ; $8BF5C1 |
  PHX                                       ; $8BF5C3 |
  ASL A                                     ; $8BF5C4 |
  TAX                                       ; $8BF5C5 |
  LDA.L PTR16_8BF5D0,X                      ; $8BF5C6 |
  PLX                                       ; $8BF5CA |
  STA.B $00                                 ; $8BF5CB |
  JMP.W ($0000)                             ; $8BF5CD |

PTR16_8BF5D0:
  dw CODE_8BF5D6                            ; $8BF5D0 |
  dw CODE_8BF5DD                            ; $8BF5D2 |
  dw CODE_8BF5E8                            ; $8BF5D4 |

CODE_8BF5D6:
  JSL.L CODE_FL_85A9EF                      ; $8BF5D6 |
  INC.B $1A,X                               ; $8BF5DA |
  RTL                                       ; $8BF5DC |

CODE_8BF5DD:
  LDA.W $1CAE                               ; $8BF5DD |
  BNE CODE_8BF5E7                           ; $8BF5E0 |
  LDA.W #$0002                              ; $8BF5E2 |
  STA.B $1A,X                               ; $8BF5E5 |

CODE_8BF5E7:
  RTL                                       ; $8BF5E7 |

CODE_8BF5E8:
  JML.L CODE_FL_86CA36                      ; $8BF5E8 |

CODE_8BF5EC:
  LDA.B $1A,X                               ; $8BF5EC |
  PHX                                       ; $8BF5EE |
  ASL A                                     ; $8BF5EF |
  TAX                                       ; $8BF5F0 |
  LDA.L PTR16_8BF5FB,X                      ; $8BF5F1 |
  PLX                                       ; $8BF5F5 |
  STA.B $00                                 ; $8BF5F6 |
  JMP.W ($0000)                             ; $8BF5F8 |

PTR16_8BF5FB:
  dw CODE_8BF5FF                            ; $8BF5FB |
  dw CODE_8BF61E                            ; $8BF5FD |

CODE_8BF5FF:
  LDA.W #$0080                              ; $8BF5FF |
  STA.B $09,X                               ; $8BF602 |
  STA.B $0D,X                               ; $8BF604 |
  LDA.W $1CB2                               ; $8BF606 |
  BNE CODE_8BF612                           ; $8BF609 |
  LDA.W #$324E                              ; $8BF60B |
  STA.B $00,X                               ; $8BF60E |
  BRA CODE_8BF617                           ; $8BF610 |

CODE_8BF612:
  LDA.W #$326E                              ; $8BF612 |
  STA.B $00,X                               ; $8BF615 |

CODE_8BF617:
  JSL.L CODE_FL_86C7A5                      ; $8BF617 |
  INC.B $1A,X                               ; $8BF61B |
  RTL                                       ; $8BF61D |

CODE_8BF61E:
  LDA.W $1CAE                               ; $8BF61E |
  BEQ CODE_8BF633                           ; $8BF621 |
  LDA.W $1C38                               ; $8BF623 |
  AND.W #$0007                              ; $8BF626 |
  BNE CODE_8BF632                           ; $8BF629 |
  LDA.B $02,X                               ; $8BF62B |
  EOR.W #$0080                              ; $8BF62D |
  STA.B $02,X                               ; $8BF630 |

CODE_8BF632:
  RTL                                       ; $8BF632 |

CODE_8BF633:
  JML.L CODE_FL_86CA36                      ; $8BF633 |

CODE_FN_8BF637:
  LDA.W $1C92                               ; $8BF637 |
  CMP.W #$0003                              ; $8BF63A |
  BNE CODE_8BF666                           ; $8BF63D |
  LDA.W #$0003                              ; $8BF63F |
  STA.B $1A,X                               ; $8BF642 |
  BRA CODE_8BF666                           ; $8BF644 |

CODE_FN_8BF646:
  LDY.B $40,X                               ; $8BF646 |
  BEQ CODE_8BF666                           ; $8BF648 |
  LDA.W $003A,Y                             ; $8BF64A |
  BEQ CODE_8BF666                           ; $8BF64D |
  LDA.W #$0000                              ; $8BF64F |
  STA.W $003A,Y                             ; $8BF652 |
  LDA.W #$0005                              ; $8BF655 |
  STA.B $1A,X                               ; $8BF658 |
  BRA CODE_8BF666                           ; $8BF65A |

CODE_FN_8BF65C:
  LDA.W $1C92                               ; $8BF65C |
  BEQ CODE_8BF666                           ; $8BF65F |
  LDA.W #$0006                              ; $8BF661 |
  STA.B $1A,X                               ; $8BF664 |

CODE_8BF666:
  RTS                                       ; $8BF666 |

CODE_FN_8BF667:
  LDA.B $1A,X                               ; $8BF667 |
  BEQ CODE_8BF67C                           ; $8BF669 |
  LDA.B $32,X                               ; $8BF66B |
  AND.W #$8800                              ; $8BF66D |
  BEQ CODE_8BF67C                           ; $8BF670 |
  AND.W #$0800                              ; $8BF672 |
  BEQ CODE_8BF67C                           ; $8BF675 |
  LDA.W #$0002                              ; $8BF677 |
  STA.B $1A,X                               ; $8BF67A |

CODE_8BF67C:
  STZ.B $32,X                               ; $8BF67C |
  STZ.B $38,X                               ; $8BF67E |
  RTS                                       ; $8BF680 |

CODE_8BF681:
  JSL.L CODE_FL_86C424                      ; $8BF681 |
  PHX                                       ; $8BF685 |
  ASL A                                     ; $8BF686 |
  TAX                                       ; $8BF687 |
  LDA.L PTR16_8BF692,X                      ; $8BF688 |
  PLX                                       ; $8BF68C |
  STA.B $00                                 ; $8BF68D |
  JMP.W ($0000)                             ; $8BF68F |

PTR16_8BF692:
  dw CODE_8BF696                            ; $8BF692 |
  dw CODE_8BF6A3                            ; $8BF694 |

CODE_8BF696:
  LDA.W #$0004                              ; $8BF696 |
  STA.B $3A,X                               ; $8BF699 |
  LDA.W #$0060                              ; $8BF69B |
  STA.B $2C,X                               ; $8BF69E |
  INC.B $1A,X                               ; $8BF6A0 |
  RTL                                       ; $8BF6A2 |

CODE_8BF6A3:
  JSL.L CODE_FL_86C70D                      ; $8BF6A3 |
  LDA.B $09,X                               ; $8BF6A7 |
  STA.B $08                                 ; $8BF6A9 |
  LDA.B $0D,X                               ; $8BF6AB |
  STA.B $0A                                 ; $8BF6AD |
  LDA.B $3A,X                               ; $8BF6AF |
  ASL A                                     ; $8BF6B1 |
  TAY                                       ; $8BF6B2 |
  PHB                                       ; $8BF6B3 |
  PHK                                       ; $8BF6B4 |
  PLB                                       ; $8BF6B5 |
  LDA.W LOOSE_OP_00F6DB,Y                   ; $8BF6B6 |
  PLB                                       ; $8BF6B9 |
  JSL.L CODE_FL_8580F7                      ; $8BF6BA |
  BCS CODE_8BF6D8                           ; $8BF6BE |
  LDA.W #$001B                              ; $8BF6C0 |
  JSL.L push_sound_queue                    ; $8BF6C3 |
  CLC                                       ; $8BF6C7 |
  LDA.B $09,X                               ; $8BF6C8 |
  ADC.W #$0020                              ; $8BF6CA |
  STA.B $09,X                               ; $8BF6CD |
  LDA.W #$0010                              ; $8BF6CF |
  STA.B $2C,X                               ; $8BF6D2 |
  DEC.B $3A,X                               ; $8BF6D4 |
  BEQ CODE_8BF6D9                           ; $8BF6D6 |

CODE_8BF6D8:
  RTL                                       ; $8BF6D8 |

CODE_8BF6D9:
  JML.L CODE_FL_86CA36                      ; $8BF6D9 |

  dw $010C,$010C,$010A,$010A                ; $8BF6DD |

CODE_JL_8BF6E5:
  STA.W $1CE0                               ; $8BF6E5 |
  LDA.W #$007E                              ; $8BF6E8 |
  STA.W $1CE2                               ; $8BF6EB |
  LDA.W #$DC42                              ; $8BF6EE |
  STA.W $1CEE                               ; $8BF6F1 |
  LDA.W #$7800                              ; $8BF6F4 |
  STA.W $1CF0                               ; $8BF6F7 |
  REP #$30                                  ; $8BF6FA |
  PHB                                       ; $8BF6FC |
  LDA.W #$0000                              ; $8BF6FD |
  STA.L $7F0000                             ; $8BF700 |
  LDA.W #$2FFD                              ; $8BF704 |
  LDX.W #$0001                              ; $8BF707 |
  TXY                                       ; $8BF70A |
  INY                                       ; $8BF70B |
  MVN $7F,$7F                               ; $8BF70C |
  PLB                                       ; $8BF70F |
  STZ.W $1CDE                               ; $8BF710 |
  RTL                                       ; $8BF713 |

CODE_FL_8BF714:
  LDA.W $1CDE                               ; $8BF714 |
  PHX                                       ; $8BF717 |
  ASL A                                     ; $8BF718 |
  TAX                                       ; $8BF719 |
  LDA.L PTR16_8BF724,X                      ; $8BF71A |
  PLX                                       ; $8BF71E |
  STA.B $00                                 ; $8BF71F |
  JMP.W ($0000)                             ; $8BF721 |

PTR16_8BF724:
  dw CODE_8BF72A                            ; $8BF724 |
  dw CODE_8BF770                            ; $8BF726 |
  dw CODE_8BF78D                            ; $8BF728 |

CODE_8BF72A:
  LDA.W $1CEE                               ; $8BF72A |
  LDY.W $1CF0                               ; $8BF72D |
  JSR.W CODE_FN_8BF763                      ; $8BF730 |
  LDA.W $1CEE                               ; $8BF733 |
  CLC                                       ; $8BF736 |
  ADC.W #$0400                              ; $8BF737 |
  STA.W $1CEE                               ; $8BF73A |
  LDA.W $1CF0                               ; $8BF73D |
  CLC                                       ; $8BF740 |
  ADC.W #$0200                              ; $8BF741 |
  STA.W $1CF0                               ; $8BF744 |
  CMP.W #$8000                              ; $8BF747 |
  BCC CODE_8BF762                           ; $8BF74A |
  INC.W $1CDE                               ; $8BF74C |
  LDA.W #$0000                              ; $8BF74F |
  STA.W $1CEE                               ; $8BF752 |
  LDA.W #$0000                              ; $8BF755 |
  STA.W $1CF0                               ; $8BF758 |
  STZ.W $1CE6                               ; $8BF75B |
  STZ.W $1CE4                               ; $8BF75E |
  CLC                                       ; $8BF761 |

CODE_8BF762:
  RTL                                       ; $8BF762 |

CODE_FN_8BF763:
  LDX.W #$007E                              ; $8BF763 |
  STX.B $00                                 ; $8BF766 |
  LDX.W #$0400                              ; $8BF768 |
  JSL.L CODE_FL_80969E                      ; $8BF76B |
  RTS                                       ; $8BF76F |

CODE_8BF770:
  JSR.W CODE_FN_8BF7BB                      ; $8BF770 |
  LDA.W #$0001                              ; $8BF773 |
  STA.W $1CF2                               ; $8BF776 |

CODE_8BF779:
  JSR.W CODE_FN_8BF803                      ; $8BF779 |
  DEC.W $1CE4                               ; $8BF77C |
  BEQ CODE_8BF788                           ; $8BF77F |
  DEC.W $1CF2                               ; $8BF781 |
  BNE CODE_8BF779                           ; $8BF784 |
  CLC                                       ; $8BF786 |
  RTL                                       ; $8BF787 |

CODE_8BF788:
  INC.W $1CDE                               ; $8BF788 |
  CLC                                       ; $8BF78B |
  RTL                                       ; $8BF78C |

CODE_8BF78D:
  LDA.W $1CEE                               ; $8BF78D |
  LDY.W $1CF0                               ; $8BF790 |
  JSR.W CODE_FN_8BF7AE                      ; $8BF793 |
  LDA.W $1CEE                               ; $8BF796 |
  CLC                                       ; $8BF799 |
  ADC.W #$0400                              ; $8BF79A |
  STA.W $1CEE                               ; $8BF79D |
  LDA.W $1CF0                               ; $8BF7A0 |
  CLC                                       ; $8BF7A3 |
  ADC.W #$0400                              ; $8BF7A4 |
  STA.W $1CF0                               ; $8BF7A7 |
  CMP.W #$3000                              ; $8BF7AA |
  RTL                                       ; $8BF7AD |

CODE_FN_8BF7AE:
  LDX.W #$007F                              ; $8BF7AE |
  STX.B $00                                 ; $8BF7B1 |
  LDX.W #$0400                              ; $8BF7B3 |
  JSL.L CODE_FL_8096CB                      ; $8BF7B6 |
  RTS                                       ; $8BF7BA |

CODE_FN_8BF7BB:
  SEP #$20                                  ; $8BF7BB |
  LDA.W $1CE2                               ; $8BF7BD |
  STA.B $22                                 ; $8BF7C0 |
  STA.B $25                                 ; $8BF7C2 |
  STA.B $04                                 ; $8BF7C4 |
  STA.B $07                                 ; $8BF7C6 |
  REP #$20                                  ; $8BF7C8 |
  CLC                                       ; $8BF7CA |
  LDA.W $1CE0                               ; $8BF7CB |
  STA.B $20                                 ; $8BF7CE |
  ADC.W #$1000                              ; $8BF7D0 |
  STA.B $23                                 ; $8BF7D3 |
  ADC.W #$1000                              ; $8BF7D5 |
  STA.B $02                                 ; $8BF7D8 |
  ADC.W #$1000                              ; $8BF7DA |
  STA.B $05                                 ; $8BF7DD |
  LDY.W $1CE6                               ; $8BF7DF |
  LDA.W $1CE4                               ; $8BF7E2 |
  BNE CODE_8BF7F0                           ; $8BF7E5 |
  LDA.B [$20],Y                             ; $8BF7E7 |
  XBA                                       ; $8BF7E9 |
  AND.W #$00FF                              ; $8BF7EA |
  STA.W $1CE4                               ; $8BF7ED |

CODE_8BF7F0:
  LDA.W #$CC42                              ; $8BF7F0 |
  STA.W $1CE8                               ; $8BF7F3 |
  LDA.W #$0000                              ; $8BF7F6 |
  STA.W $1CEA                               ; $8BF7F9 |
  LDA.W #$2E00                              ; $8BF7FC |
  STA.W $1CEC                               ; $8BF7FF |
  RTS                                       ; $8BF802 |

CODE_FN_8BF803:
  JSR.W CODE_FN_8BF858                      ; $8BF803 |
  LDY.W #$0004                              ; $8BF806 |
  LDA.B $0E                                 ; $8BF809 |
  AND.W #$0010                              ; $8BF80B |
  BEQ CODE_8BF816                           ; $8BF80E |
  LDA.B $0F                                 ; $8BF810 |
  AND.W #$0003                              ; $8BF812 |
  INC A                                     ; $8BF815 |

CODE_8BF816:
  ASL A                                     ; $8BF816 |
  ASL A                                     ; $8BF817 |
  ASL A                                     ; $8BF818 |
  STA.B $1C                                 ; $8BF819 |
  ASL A                                     ; $8BF81B |
  CLC                                       ; $8BF81C |
  ADC.B $1C                                 ; $8BF81D |

CODE_8BF81F:
  TAX                                       ; $8BF81F |
  LDA.L DATA8_8BFF2D,X                      ; $8BF820 |
  CMP.W #$FFFF                              ; $8BF824 |
  BEQ CODE_8BF857                           ; $8BF827 |
  CLC                                       ; $8BF829 |
  ADC.B $0A                                 ; $8BF82A |
  STA.B $0A                                 ; $8BF82C |
  LDA.L DATA8_8BFF2F,X                      ; $8BF82E |
  CLC                                       ; $8BF832 |
  ADC.B $08                                 ; $8BF833 |
  STA.B $08                                 ; $8BF835 |
  LDA.L DATA8_8BFF31,X                      ; $8BF837 |
  CLC                                       ; $8BF83B |
  ADC.B $0C                                 ; $8BF83C |
  STA.B $0C                                 ; $8BF83E |
  PHX                                       ; $8BF840 |
  PHY                                       ; $8BF841 |
  JSR.W CODE_FN_8BF88E                      ; $8BF842 |
  JSR.W CODE_FN_8BF8DA                      ; $8BF845 |
  JSR.W CODE_FN_8BF8ED                      ; $8BF848 |
  JSR.W CODE_FN_8BFBF1                      ; $8BF84B |
  PLY                                       ; $8BF84E |
  PLA                                       ; $8BF84F |
  CLC                                       ; $8BF850 |
  ADC.W #$0006                              ; $8BF851 |
  DEY                                       ; $8BF854 |
  BNE CODE_8BF81F                           ; $8BF855 |

CODE_8BF857:
  RTS                                       ; $8BF857 |

CODE_FN_8BF858:
  LDY.W $1CE6                               ; $8BF858 |
  LDA.B [$02],Y                             ; $8BF85B |
  STA.B $08                                 ; $8BF85D |
  LDA.B [$23],Y                             ; $8BF85F |
  STA.B $0A                                 ; $8BF861 |
  LDA.B [$05],Y                             ; $8BF863 |
  SEP #$20                                  ; $8BF865 |
  STZ.B $0D                                 ; $8BF867 |
  STA.B $0C                                 ; $8BF869 |
  XBA                                       ; $8BF86B |
  AND.B #$CE                                ; $8BF86C |
  STA.B $0E                                 ; $8BF86E |
  LSR A                                     ; $8BF870 |
  LSR A                                     ; $8BF871 |
  LSR A                                     ; $8BF872 |
  LSR A                                     ; $8BF873 |
  LSR A                                     ; $8BF874 |
  LSR A                                     ; $8BF875 |
  STA.B $0F                                 ; $8BF876 |
  LDA.B [$20],Y                             ; $8BF878 |
  CMP.B #$03                                ; $8BF87A |
  LDA.B #$10                                ; $8BF87C |
  BCS CODE_8BF882                           ; $8BF87E |
  LDA.B #$00                                ; $8BF880 |

CODE_8BF882:
  ORA.B $0E                                 ; $8BF882 |
  STA.B $0E                                 ; $8BF884 |
  REP #$20                                  ; $8BF886 |
  INY                                       ; $8BF888 |
  INY                                       ; $8BF889 |
  STY.W $1CE6                               ; $8BF88A |
  RTS                                       ; $8BF88D |

CODE_FN_8BF88E:
  LDA.B $0E                                 ; $8BF88E |
  AND.W #$000E                              ; $8BF890 |
  ASL A                                     ; $8BF893 |
  ASL A                                     ; $8BF894 |
  ASL A                                     ; $8BF895 |
  ORA.W #$0080                              ; $8BF896 |
  STA.B $18                                 ; $8BF899 |
  LDA.W #$007F                              ; $8BF89B |
  STA.B $12                                 ; $8BF89E |
  LDA.B $08                                 ; $8BF8A0 |
  AND.W #$FFF8                              ; $8BF8A2 |
  ASL A                                     ; $8BF8A5 |
  ASL A                                     ; $8BF8A6 |
  ASL A                                     ; $8BF8A7 |
  ASL A                                     ; $8BF8A8 |
  ASL A                                     ; $8BF8A9 |
  ASL A                                     ; $8BF8AA |
  ASL A                                     ; $8BF8AB |
  STA.B $10                                 ; $8BF8AC |
  LDA.B $0A                                 ; $8BF8AE |
  AND.W #$FFF8                              ; $8BF8B0 |
  ASL A                                     ; $8BF8B3 |
  ASL A                                     ; $8BF8B4 |
  ASL A                                     ; $8BF8B5 |
  CLC                                       ; $8BF8B6 |
  ADC.B $10                                 ; $8BF8B7 |
  CLC                                       ; $8BF8B9 |
  ADC.W $1CEA                               ; $8BF8BA |
  CLC                                       ; $8BF8BD |
  ADC.W $1CEC                               ; $8BF8BE |
  STA.B $10                                 ; $8BF8C1 |
  LDA.B $08                                 ; $8BF8C3 |
  AND.W #$0007                              ; $8BF8C5 |
  ASL A                                     ; $8BF8C8 |
  ASL A                                     ; $8BF8C9 |
  ASL A                                     ; $8BF8CA |
  ASL A                                     ; $8BF8CB |
  ASL A                                     ; $8BF8CC |
  STA.B $1E                                 ; $8BF8CD |
  LDA.B $0A                                 ; $8BF8CF |
  AND.W #$0007                              ; $8BF8D1 |
  ASL A                                     ; $8BF8D4 |
  ADC.B $1E                                 ; $8BF8D5 |
  STA.B $1E                                 ; $8BF8D7 |
  RTS                                       ; $8BF8D9 |

CODE_FN_8BF8DA:
  LDA.B $0C                                 ; $8BF8DA |
  ASL A                                     ; $8BF8DC |
  ASL A                                     ; $8BF8DD |
  ASL A                                     ; $8BF8DE |
  ASL A                                     ; $8BF8DF |
  ASL A                                     ; $8BF8E0 |
  CLC                                       ; $8BF8E1 |
  ADC.W $1CE8                               ; $8BF8E2 |
  STA.B $14                                 ; $8BF8E5 |
  LDA.W #$007E                              ; $8BF8E7 |
  STA.B $16                                 ; $8BF8EA |
  RTS                                       ; $8BF8EC |

CODE_FN_8BF8ED:
  REP #$30                                  ; $8BF8ED |
  PHB                                       ; $8BF8EF |
  LDA.W #$0000                              ; $8BF8F0 |
  STA.L $7EEC42                             ; $8BF8F3 |
  LDA.W #$003D                              ; $8BF8F7 |
  LDX.W #$EC43                              ; $8BF8FA |
  TXY                                       ; $8BF8FD |
  INY                                       ; $8BF8FE |
  MVN $7E,$7E                               ; $8BF8FF |
  PLB                                       ; $8BF902 |
  STZ.B $1A                                 ; $8BF903 |
  PHB                                       ; $8BF905 |
  PEA.W $7E00                               ; $8BF906 |
  PLB                                       ; $8BF909 |
  PLB                                       ; $8BF90A |
  LDA.B $0F                                 ; $8BF90B |
  AND.W #$0003                              ; $8BF90D |
  PHX                                       ; $8BF910 |
  ASL A                                     ; $8BF911 |
  TAX                                       ; $8BF912 |
  LDA.L PTR16_8BF91D,X                      ; $8BF913 |
  PLX                                       ; $8BF917 |
  STA.B $00                                 ; $8BF918 |
  JMP.W ($0000)                             ; $8BF91A |

PTR16_8BF91D:
  dw CODE_8BF925                            ; $8BF91D |
  dw CODE_8BF9D8                            ; $8BF91F |
  dw CODE_8BFA8B                            ; $8BF921 |
  dw CODE_8BFB3E                            ; $8BF923 |

CODE_8BF925:
  LDX.W #$EC42                              ; $8BF925 |

CODE_JP_8BF928:
  LDA.B $1A                                 ; $8BF928 |
  CLC                                       ; $8BF92A |
  ADC.W #$0011                              ; $8BF92B |
  TAY                                       ; $8BF92E |
  SEP #$20                                  ; $8BF92F |
  LDA.B [$14],Y                             ; $8BF931 |
  ASL A                                     ; $8BF933 |
  ROL.W $0000,X                             ; $8BF934 |
  ASL A                                     ; $8BF937 |
  ROL.W $0001,X                             ; $8BF938 |
  ASL A                                     ; $8BF93B |
  ROL.W $0002,X                             ; $8BF93C |
  ASL A                                     ; $8BF93F |
  ROL.W $0003,X                             ; $8BF940 |
  ASL A                                     ; $8BF943 |
  ROL.W $0004,X                             ; $8BF944 |
  ASL A                                     ; $8BF947 |
  ROL.W $0005,X                             ; $8BF948 |
  ASL A                                     ; $8BF94B |
  ROL.W $0006,X                             ; $8BF94C |
  ASL A                                     ; $8BF94F |
  ROL.W $0007,X                             ; $8BF950 |
  DEY                                       ; $8BF953 |
  LDA.B [$14],Y                             ; $8BF954 |
  ASL A                                     ; $8BF956 |
  ROL.W $0000,X                             ; $8BF957 |
  ASL A                                     ; $8BF95A |
  ROL.W $0001,X                             ; $8BF95B |
  ASL A                                     ; $8BF95E |
  ROL.W $0002,X                             ; $8BF95F |
  ASL A                                     ; $8BF962 |
  ROL.W $0003,X                             ; $8BF963 |
  ASL A                                     ; $8BF966 |
  ROL.W $0004,X                             ; $8BF967 |
  ASL A                                     ; $8BF96A |
  ROL.W $0005,X                             ; $8BF96B |
  ASL A                                     ; $8BF96E |
  ROL.W $0006,X                             ; $8BF96F |
  ASL A                                     ; $8BF972 |
  ROL.W $0007,X                             ; $8BF973 |
  LDY.B $1A                                 ; $8BF976 |
  INY                                       ; $8BF978 |
  LDA.B [$14],Y                             ; $8BF979 |
  ASL A                                     ; $8BF97B |
  ROL.W $0000,X                             ; $8BF97C |
  ASL A                                     ; $8BF97F |
  ROL.W $0001,X                             ; $8BF980 |
  ASL A                                     ; $8BF983 |
  ROL.W $0002,X                             ; $8BF984 |
  ASL A                                     ; $8BF987 |
  ROL.W $0003,X                             ; $8BF988 |
  ASL A                                     ; $8BF98B |
  ROL.W $0004,X                             ; $8BF98C |
  ASL A                                     ; $8BF98F |
  ROL.W $0005,X                             ; $8BF990 |
  ASL A                                     ; $8BF993 |
  ROL.W $0006,X                             ; $8BF994 |
  ASL A                                     ; $8BF997 |
  ROL.W $0007,X                             ; $8BF998 |
  DEY                                       ; $8BF99B |
  LDA.B [$14],Y                             ; $8BF99C |
  ASL A                                     ; $8BF99E |
  ROL.W $0000,X                             ; $8BF99F |
  ASL A                                     ; $8BF9A2 |
  ROL.W $0001,X                             ; $8BF9A3 |
  ASL A                                     ; $8BF9A6 |
  ROL.W $0002,X                             ; $8BF9A7 |
  ASL A                                     ; $8BF9AA |
  ROL.W $0003,X                             ; $8BF9AB |
  ASL A                                     ; $8BF9AE |
  ROL.W $0004,X                             ; $8BF9AF |
  ASL A                                     ; $8BF9B2 |
  ROL.W $0005,X                             ; $8BF9B3 |
  ASL A                                     ; $8BF9B6 |
  ROL.W $0006,X                             ; $8BF9B7 |
  ASL A                                     ; $8BF9BA |
  ROL.W $0007,X                             ; $8BF9BB |
  REP #$20                                  ; $8BF9BE |
  TXA                                       ; $8BF9C0 |
  CLC                                       ; $8BF9C1 |
  ADC.W #$0008                              ; $8BF9C2 |
  TAX                                       ; $8BF9C5 |
  LDA.B $1A                                 ; $8BF9C6 |
  CLC                                       ; $8BF9C8 |
  ADC.W #$0002                              ; $8BF9C9 |
  STA.B $1A                                 ; $8BF9CC |
  CMP.W #$0010                              ; $8BF9CE |
  BCS CODE_8BF9D6                           ; $8BF9D1 |
  JMP.W CODE_JP_8BF928                      ; $8BF9D3 |

CODE_8BF9D6:
  PLB                                       ; $8BF9D6 |
  RTS                                       ; $8BF9D7 |

CODE_8BF9D8:
  LDX.W #$EC42                              ; $8BF9D8 |

CODE_JP_8BF9DB:
  LDA.B $1A                                 ; $8BF9DB |
  CLC                                       ; $8BF9DD |
  ADC.W #$0011                              ; $8BF9DE |
  TAY                                       ; $8BF9E1 |
  SEP #$20                                  ; $8BF9E2 |
  LDA.B [$14],Y                             ; $8BF9E4 |
  ASL A                                     ; $8BF9E6 |
  ROL.W $0007,X                             ; $8BF9E7 |
  ASL A                                     ; $8BF9EA |
  ROL.W $0006,X                             ; $8BF9EB |
  ASL A                                     ; $8BF9EE |
  ROL.W $0005,X                             ; $8BF9EF |
  ASL A                                     ; $8BF9F2 |
  ROL.W $0004,X                             ; $8BF9F3 |
  ASL A                                     ; $8BF9F6 |
  ROL.W $0003,X                             ; $8BF9F7 |
  ASL A                                     ; $8BF9FA |
  ROL.W $0002,X                             ; $8BF9FB |
  ASL A                                     ; $8BF9FE |
  ROL.W $0001,X                             ; $8BF9FF |
  ASL A                                     ; $8BFA02 |
  ROL.W $0000,X                             ; $8BFA03 |
  DEY                                       ; $8BFA06 |
  LDA.B [$14],Y                             ; $8BFA07 |
  ASL A                                     ; $8BFA09 |
  ROL.W $0007,X                             ; $8BFA0A |
  ASL A                                     ; $8BFA0D |
  ROL.W $0006,X                             ; $8BFA0E |
  ASL A                                     ; $8BFA11 |
  ROL.W $0005,X                             ; $8BFA12 |
  ASL A                                     ; $8BFA15 |
  ROL.W $0004,X                             ; $8BFA16 |
  ASL A                                     ; $8BFA19 |
  ROL.W $0003,X                             ; $8BFA1A |
  ASL A                                     ; $8BFA1D |
  ROL.W $0002,X                             ; $8BFA1E |
  ASL A                                     ; $8BFA21 |
  ROL.W $0001,X                             ; $8BFA22 |
  ASL A                                     ; $8BFA25 |
  ROL.W $0000,X                             ; $8BFA26 |
  LDY.B $1A                                 ; $8BFA29 |
  INY                                       ; $8BFA2B |
  LDA.B [$14],Y                             ; $8BFA2C |
  ASL A                                     ; $8BFA2E |
  ROL.W $0007,X                             ; $8BFA2F |
  ASL A                                     ; $8BFA32 |
  ROL.W $0006,X                             ; $8BFA33 |
  ASL A                                     ; $8BFA36 |
  ROL.W $0005,X                             ; $8BFA37 |
  ASL A                                     ; $8BFA3A |
  ROL.W $0004,X                             ; $8BFA3B |
  ASL A                                     ; $8BFA3E |
  ROL.W $0003,X                             ; $8BFA3F |
  ASL A                                     ; $8BFA42 |
  ROL.W $0002,X                             ; $8BFA43 |
  ASL A                                     ; $8BFA46 |
  ROL.W $0001,X                             ; $8BFA47 |
  ASL A                                     ; $8BFA4A |
  ROL.W $0000,X                             ; $8BFA4B |
  DEY                                       ; $8BFA4E |
  LDA.B [$14],Y                             ; $8BFA4F |
  ASL A                                     ; $8BFA51 |
  ROL.W $0007,X                             ; $8BFA52 |
  ASL A                                     ; $8BFA55 |
  ROL.W $0006,X                             ; $8BFA56 |
  ASL A                                     ; $8BFA59 |
  ROL.W $0005,X                             ; $8BFA5A |
  ASL A                                     ; $8BFA5D |
  ROL.W $0004,X                             ; $8BFA5E |
  ASL A                                     ; $8BFA61 |
  ROL.W $0003,X                             ; $8BFA62 |
  ASL A                                     ; $8BFA65 |
  ROL.W $0002,X                             ; $8BFA66 |
  ASL A                                     ; $8BFA69 |
  ROL.W $0001,X                             ; $8BFA6A |
  ASL A                                     ; $8BFA6D |
  ROL.W $0000,X                             ; $8BFA6E |
  REP #$20                                  ; $8BFA71 |
  TXA                                       ; $8BFA73 |
  CLC                                       ; $8BFA74 |
  ADC.W #$0008                              ; $8BFA75 |
  TAX                                       ; $8BFA78 |
  LDA.B $1A                                 ; $8BFA79 |
  CLC                                       ; $8BFA7B |
  ADC.W #$0002                              ; $8BFA7C |
  STA.B $1A                                 ; $8BFA7F |
  CMP.W #$0010                              ; $8BFA81 |
  BCS CODE_8BFA89                           ; $8BFA84 |
  JMP.W CODE_JP_8BF9DB                      ; $8BFA86 |

CODE_8BFA89:
  PLB                                       ; $8BFA89 |
  RTS                                       ; $8BFA8A |

CODE_8BFA8B:
  LDX.W #$EC7A                              ; $8BFA8B |

CODE_JP_8BFA8E:
  LDA.B $1A                                 ; $8BFA8E |
  CLC                                       ; $8BFA90 |
  ADC.W #$0011                              ; $8BFA91 |
  TAY                                       ; $8BFA94 |
  SEP #$20                                  ; $8BFA95 |
  LDA.B [$14],Y                             ; $8BFA97 |
  ASL A                                     ; $8BFA99 |
  ROL.W $0000,X                             ; $8BFA9A |
  ASL A                                     ; $8BFA9D |
  ROL.W $0001,X                             ; $8BFA9E |
  ASL A                                     ; $8BFAA1 |
  ROL.W $0002,X                             ; $8BFAA2 |
  ASL A                                     ; $8BFAA5 |
  ROL.W $0003,X                             ; $8BFAA6 |
  ASL A                                     ; $8BFAA9 |
  ROL.W $0004,X                             ; $8BFAAA |
  ASL A                                     ; $8BFAAD |
  ROL.W $0005,X                             ; $8BFAAE |
  ASL A                                     ; $8BFAB1 |
  ROL.W $0006,X                             ; $8BFAB2 |
  ASL A                                     ; $8BFAB5 |
  ROL.W $0007,X                             ; $8BFAB6 |
  DEY                                       ; $8BFAB9 |
  LDA.B [$14],Y                             ; $8BFABA |
  ASL A                                     ; $8BFABC |
  ROL.W $0000,X                             ; $8BFABD |
  ASL A                                     ; $8BFAC0 |
  ROL.W $0001,X                             ; $8BFAC1 |
  ASL A                                     ; $8BFAC4 |
  ROL.W $0002,X                             ; $8BFAC5 |
  ASL A                                     ; $8BFAC8 |
  ROL.W $0003,X                             ; $8BFAC9 |
  ASL A                                     ; $8BFACC |
  ROL.W $0004,X                             ; $8BFACD |
  ASL A                                     ; $8BFAD0 |
  ROL.W $0005,X                             ; $8BFAD1 |
  ASL A                                     ; $8BFAD4 |
  ROL.W $0006,X                             ; $8BFAD5 |
  ASL A                                     ; $8BFAD8 |
  ROL.W $0007,X                             ; $8BFAD9 |
  LDY.B $1A                                 ; $8BFADC |
  INY                                       ; $8BFADE |
  LDA.B [$14],Y                             ; $8BFADF |
  ASL A                                     ; $8BFAE1 |
  ROL.W $0000,X                             ; $8BFAE2 |
  ASL A                                     ; $8BFAE5 |
  ROL.W $0001,X                             ; $8BFAE6 |
  ASL A                                     ; $8BFAE9 |
  ROL.W $0002,X                             ; $8BFAEA |
  ASL A                                     ; $8BFAED |
  ROL.W $0003,X                             ; $8BFAEE |
  ASL A                                     ; $8BFAF1 |
  ROL.W $0004,X                             ; $8BFAF2 |
  ASL A                                     ; $8BFAF5 |
  ROL.W $0005,X                             ; $8BFAF6 |
  ASL A                                     ; $8BFAF9 |
  ROL.W $0006,X                             ; $8BFAFA |
  ASL A                                     ; $8BFAFD |
  ROL.W $0007,X                             ; $8BFAFE |
  DEY                                       ; $8BFB01 |
  LDA.B [$14],Y                             ; $8BFB02 |
  ASL A                                     ; $8BFB04 |
  ROL.W $0000,X                             ; $8BFB05 |
  ASL A                                     ; $8BFB08 |
  ROL.W $0001,X                             ; $8BFB09 |
  ASL A                                     ; $8BFB0C |
  ROL.W $0002,X                             ; $8BFB0D |
  ASL A                                     ; $8BFB10 |
  ROL.W $0003,X                             ; $8BFB11 |
  ASL A                                     ; $8BFB14 |
  ROL.W $0004,X                             ; $8BFB15 |
  ASL A                                     ; $8BFB18 |
  ROL.W $0005,X                             ; $8BFB19 |
  ASL A                                     ; $8BFB1C |
  ROL.W $0006,X                             ; $8BFB1D |
  ASL A                                     ; $8BFB20 |
  ROL.W $0007,X                             ; $8BFB21 |
  REP #$20                                  ; $8BFB24 |
  TXA                                       ; $8BFB26 |
  SEC                                       ; $8BFB27 |
  SBC.W #$0008                              ; $8BFB28 |
  TAX                                       ; $8BFB2B |
  LDA.B $1A                                 ; $8BFB2C |
  CLC                                       ; $8BFB2E |
  ADC.W #$0002                              ; $8BFB2F |
  STA.B $1A                                 ; $8BFB32 |
  CMP.W #$0010                              ; $8BFB34 |
  BCS CODE_8BFB3C                           ; $8BFB37 |
  JMP.W CODE_JP_8BFA8E                      ; $8BFB39 |

CODE_8BFB3C:
  PLB                                       ; $8BFB3C |
  RTS                                       ; $8BFB3D |

CODE_8BFB3E:
  LDX.W #$EC7A                              ; $8BFB3E |

CODE_JP_8BFB41:
  LDA.B $1A                                 ; $8BFB41 |
  CLC                                       ; $8BFB43 |
  ADC.W #$0011                              ; $8BFB44 |
  TAY                                       ; $8BFB47 |
  SEP #$20                                  ; $8BFB48 |
  LDA.B [$14],Y                             ; $8BFB4A |
  ASL A                                     ; $8BFB4C |
  ROL.W $0007,X                             ; $8BFB4D |
  ASL A                                     ; $8BFB50 |
  ROL.W $0006,X                             ; $8BFB51 |
  ASL A                                     ; $8BFB54 |
  ROL.W $0005,X                             ; $8BFB55 |
  ASL A                                     ; $8BFB58 |
  ROL.W $0004,X                             ; $8BFB59 |
  ASL A                                     ; $8BFB5C |
  ROL.W $0003,X                             ; $8BFB5D |
  ASL A                                     ; $8BFB60 |
  ROL.W $0002,X                             ; $8BFB61 |
  ASL A                                     ; $8BFB64 |
  ROL.W $0001,X                             ; $8BFB65 |
  ASL A                                     ; $8BFB68 |
  ROL.W $0000,X                             ; $8BFB69 |
  DEY                                       ; $8BFB6C |
  LDA.B [$14],Y                             ; $8BFB6D |
  ASL A                                     ; $8BFB6F |
  ROL.W $0007,X                             ; $8BFB70 |
  ASL A                                     ; $8BFB73 |
  ROL.W $0006,X                             ; $8BFB74 |
  ASL A                                     ; $8BFB77 |
  ROL.W $0005,X                             ; $8BFB78 |
  ASL A                                     ; $8BFB7B |
  ROL.W $0004,X                             ; $8BFB7C |
  ASL A                                     ; $8BFB7F |
  ROL.W $0003,X                             ; $8BFB80 |
  ASL A                                     ; $8BFB83 |
  ROL.W $0002,X                             ; $8BFB84 |
  ASL A                                     ; $8BFB87 |
  ROL.W $0001,X                             ; $8BFB88 |
  ASL A                                     ; $8BFB8B |
  ROL.W $0000,X                             ; $8BFB8C |
  LDY.B $1A                                 ; $8BFB8F |
  INY                                       ; $8BFB91 |
  LDA.B [$14],Y                             ; $8BFB92 |
  ASL A                                     ; $8BFB94 |
  ROL.W $0007,X                             ; $8BFB95 |
  ASL A                                     ; $8BFB98 |
  ROL.W $0006,X                             ; $8BFB99 |
  ASL A                                     ; $8BFB9C |
  ROL.W $0005,X                             ; $8BFB9D |
  ASL A                                     ; $8BFBA0 |
  ROL.W $0004,X                             ; $8BFBA1 |
  ASL A                                     ; $8BFBA4 |
  ROL.W $0003,X                             ; $8BFBA5 |
  ASL A                                     ; $8BFBA8 |
  ROL.W $0002,X                             ; $8BFBA9 |
  ASL A                                     ; $8BFBAC |
  ROL.W $0001,X                             ; $8BFBAD |
  ASL A                                     ; $8BFBB0 |
  ROL.W $0000,X                             ; $8BFBB1 |
  DEY                                       ; $8BFBB4 |
  LDA.B [$14],Y                             ; $8BFBB5 |
  ASL A                                     ; $8BFBB7 |
  ROL.W $0007,X                             ; $8BFBB8 |
  ASL A                                     ; $8BFBBB |
  ROL.W $0006,X                             ; $8BFBBC |
  ASL A                                     ; $8BFBBF |
  ROL.W $0005,X                             ; $8BFBC0 |
  ASL A                                     ; $8BFBC3 |
  ROL.W $0004,X                             ; $8BFBC4 |
  ASL A                                     ; $8BFBC7 |
  ROL.W $0003,X                             ; $8BFBC8 |
  ASL A                                     ; $8BFBCB |
  ROL.W $0002,X                             ; $8BFBCC |
  ASL A                                     ; $8BFBCF |
  ROL.W $0001,X                             ; $8BFBD0 |
  ASL A                                     ; $8BFBD3 |
  ROL.W $0000,X                             ; $8BFBD4 |
  REP #$20                                  ; $8BFBD7 |
  TXA                                       ; $8BFBD9 |
  SEC                                       ; $8BFBDA |
  SBC.W #$0008                              ; $8BFBDB |
  TAX                                       ; $8BFBDE |
  LDA.B $1A                                 ; $8BFBDF |
  CLC                                       ; $8BFBE1 |
  ADC.W #$0002                              ; $8BFBE2 |
  STA.B $1A                                 ; $8BFBE5 |
  CMP.W #$0010                              ; $8BFBE7 |
  BCS CODE_8BFBEF                           ; $8BFBEA |
  JMP.W CODE_JP_8BFB41                      ; $8BFBEC |

CODE_8BFBEF:
  PLB                                       ; $8BFBEF |
  RTS                                       ; $8BFBF0 |

CODE_FN_8BFBF1:
  PHB                                       ; $8BFBF1 |
  PEA.W $7E00                               ; $8BFBF2 |
  PLB                                       ; $8BFBF5 |
  PLB                                       ; $8BFBF6 |
  LDA.W #$EC42                              ; $8BFBF7 |
  STA.B $1A                                 ; $8BFBFA |

CODE_JP_8BFBFC:
  LDX.B $1E                                 ; $8BFBFC |
  LDA.L DATA16_8BFD2D,X                     ; $8BFBFE |
  TAY                                       ; $8BFC02 |
  SEP #$20                                  ; $8BFC03 |
  LDA.B [$10],Y                             ; $8BFC05 |
  BNE CODE_8BFC11                           ; $8BFC07 |
  LDA.B ($1A)                               ; $8BFC09 |
  BEQ CODE_8BFC11                           ; $8BFC0B |
  ORA.B $18                                 ; $8BFC0D |
  STA.B [$10],Y                             ; $8BFC0F |

CODE_8BFC11:
  REP #$20                                  ; $8BFC11 |
  INC.B $1A                                 ; $8BFC13 |
  LDA.L DATA16_8BFD2F,X                     ; $8BFC15 |
  TAY                                       ; $8BFC19 |
  SEP #$20                                  ; $8BFC1A |
  LDA.B [$10],Y                             ; $8BFC1C |
  BNE CODE_8BFC28                           ; $8BFC1E |
  LDA.B ($1A)                               ; $8BFC20 |
  BEQ CODE_8BFC28                           ; $8BFC22 |
  ORA.B $18                                 ; $8BFC24 |
  STA.B [$10],Y                             ; $8BFC26 |

CODE_8BFC28:
  REP #$20                                  ; $8BFC28 |
  INC.B $1A                                 ; $8BFC2A |
  LDA.L DATA16_8BFD31,X                     ; $8BFC2C |
  TAY                                       ; $8BFC30 |
  SEP #$20                                  ; $8BFC31 |
  LDA.B [$10],Y                             ; $8BFC33 |
  BNE CODE_8BFC3F                           ; $8BFC35 |
  LDA.B ($1A)                               ; $8BFC37 |
  BEQ CODE_8BFC3F                           ; $8BFC39 |
  ORA.B $18                                 ; $8BFC3B |
  STA.B [$10],Y                             ; $8BFC3D |

CODE_8BFC3F:
  REP #$20                                  ; $8BFC3F |
  INC.B $1A                                 ; $8BFC41 |
  LDA.L DATA16_8BFD33,X                     ; $8BFC43 |
  TAY                                       ; $8BFC47 |
  SEP #$20                                  ; $8BFC48 |
  LDA.B [$10],Y                             ; $8BFC4A |
  BNE CODE_8BFC56                           ; $8BFC4C |
  LDA.B ($1A)                               ; $8BFC4E |
  BEQ CODE_8BFC56                           ; $8BFC50 |
  ORA.B $18                                 ; $8BFC52 |
  STA.B [$10],Y                             ; $8BFC54 |

CODE_8BFC56:
  REP #$20                                  ; $8BFC56 |
  INC.B $1A                                 ; $8BFC58 |
  LDA.L DATA16_8BFD35,X                     ; $8BFC5A |
  TAY                                       ; $8BFC5E |
  SEP #$20                                  ; $8BFC5F |
  LDA.B [$10],Y                             ; $8BFC61 |
  BNE CODE_8BFC6D                           ; $8BFC63 |
  LDA.B ($1A)                               ; $8BFC65 |
  BEQ CODE_8BFC6D                           ; $8BFC67 |
  ORA.B $18                                 ; $8BFC69 |
  STA.B [$10],Y                             ; $8BFC6B |

CODE_8BFC6D:
  REP #$20                                  ; $8BFC6D |
  INC.B $1A                                 ; $8BFC6F |
  LDA.L DATA16_8BFD37,X                     ; $8BFC71 |
  TAY                                       ; $8BFC75 |
  SEP #$20                                  ; $8BFC76 |
  LDA.B [$10],Y                             ; $8BFC78 |
  BNE CODE_8BFC84                           ; $8BFC7A |
  LDA.B ($1A)                               ; $8BFC7C |
  BEQ CODE_8BFC84                           ; $8BFC7E |
  ORA.B $18                                 ; $8BFC80 |
  STA.B [$10],Y                             ; $8BFC82 |

CODE_8BFC84:
  REP #$20                                  ; $8BFC84 |
  INC.B $1A                                 ; $8BFC86 |
  LDA.L DATA16_8BFD39,X                     ; $8BFC88 |
  TAY                                       ; $8BFC8C |
  SEP #$20                                  ; $8BFC8D |
  LDA.B [$10],Y                             ; $8BFC8F |
  BNE CODE_8BFC9B                           ; $8BFC91 |
  LDA.B ($1A)                               ; $8BFC93 |
  BEQ CODE_8BFC9B                           ; $8BFC95 |
  ORA.B $18                                 ; $8BFC97 |
  STA.B [$10],Y                             ; $8BFC99 |

CODE_8BFC9B:
  REP #$20                                  ; $8BFC9B |
  INC.B $1A                                 ; $8BFC9D |
  LDA.L DATA16_8BFD3B,X                     ; $8BFC9F |
  TAY                                       ; $8BFCA3 |
  SEP #$20                                  ; $8BFCA4 |
  LDA.B [$10],Y                             ; $8BFCA6 |
  BNE CODE_8BFCB2                           ; $8BFCA8 |
  LDA.B ($1A)                               ; $8BFCAA |
  BEQ CODE_8BFCB2                           ; $8BFCAC |
  ORA.B $18                                 ; $8BFCAE |
  STA.B [$10],Y                             ; $8BFCB0 |

CODE_8BFCB2:
  REP #$20                                  ; $8BFCB2 |
  INC.B $1A                                 ; $8BFCB4 |
  LDA.B $1E                                 ; $8BFCB6 |
  CLC                                       ; $8BFCB8 |
  ADC.W #$0020                              ; $8BFCB9 |
  STA.B $1E                                 ; $8BFCBC |
  LDA.B $1A                                 ; $8BFCBE |
  CMP.W #$EC82                              ; $8BFCC0 |
  BCS CODE_8BFCC8                           ; $8BFCC3 |
  JMP.W CODE_JP_8BFBFC                      ; $8BFCC5 |

CODE_8BFCC8:
  PLB                                       ; $8BFCC8 |
  RTS                                       ; $8BFCC9 |

CODE_FL_8BFCCA:
  LDX.W #$0000                              ; $8BFCCA |
  LDY.W #$0A00                              ; $8BFCCD |
  LDA.W #$0001                              ; $8BFCD0 |
  JSR.W CODE_FN_8BFCE7                      ; $8BFCD3 |
  LDX.W #$0AD0                              ; $8BFCD6 |
  LDY.W #$0B00                              ; $8BFCD9 |
  LDA.W #$0001                              ; $8BFCDC |
  JSR.W CODE_FN_8BFCE7                      ; $8BFCDF |
  RTL                                       ; $8BFCE2 |

CODE_FL_8BFCE3:
  JSR.W CODE_FN_8BFCE7                      ; $8BFCE3 |
  RTL                                       ; $8BFCE6 |

CODE_FN_8BFCE7:
  STA.B $04                                 ; $8BFCE7 |
  STY.B $08                                 ; $8BFCE9 |
  PHB                                       ; $8BFCEB |
  PEA.W $7F00                               ; $8BFCEC |
  PLB                                       ; $8BFCEF |
  PLB                                       ; $8BFCF0 |
  STZ.B $00                                 ; $8BFCF1 |
  STZ.B $02                                 ; $8BFCF3 |
  SEP #$20                                  ; $8BFCF5 |

CODE_8BFCF7:
  LDA.W $0000,X                             ; $8BFCF7 |
  STA.B $00                                 ; $8BFCFA |
  LDA.W $0001,X                             ; $8BFCFC |
  STA.B $01                                 ; $8BFCFF |
  TDC                                       ; $8BFD01 |
  LDY.W #$0008                              ; $8BFD02 |

CODE_8BFD05:
  ASL.B $01                                 ; $8BFD05 |
  ROL A                                     ; $8BFD07 |
  ASL.B $00                                 ; $8BFD08 |
  ROL A                                     ; $8BFD0A |
  CMP.B $04                                 ; $8BFD0B |
  BNE CODE_8BFD10                           ; $8BFD0D |
  TDC                                       ; $8BFD0F |

CODE_8BFD10:
  LSR A                                     ; $8BFD10 |
  ROL.B $02                                 ; $8BFD11 |
  LSR A                                     ; $8BFD13 |
  ROL.B $03                                 ; $8BFD14 |
  DEY                                       ; $8BFD16 |
  BNE CODE_8BFD05                           ; $8BFD17 |
  LDA.B $02                                 ; $8BFD19 |
  STA.W $0000,X                             ; $8BFD1B |
  LDA.B $03                                 ; $8BFD1E |
  STA.W $0001,X                             ; $8BFD20 |
  INX                                       ; $8BFD23 |
  INX                                       ; $8BFD24 |
  CPX.B $08                                 ; $8BFD25 |
  BCC CODE_8BFCF7                           ; $8BFD27 |
  REP #$20                                  ; $8BFD29 |
  PLB                                       ; $8BFD2B |
  RTS                                       ; $8BFD2C |

DATA16_8BFD2D:
  dw $0000                                  ; $8BFD2D |

DATA16_8BFD2F:
  dw $0001                                  ; $8BFD2F |

DATA16_8BFD31:
  dw $0002                                  ; $8BFD31 |

DATA16_8BFD33:
  dw $0003                                  ; $8BFD33 |

DATA16_8BFD35:
  dw $0004                                  ; $8BFD35 |

DATA16_8BFD37:
  dw $0005                                  ; $8BFD37 |

DATA16_8BFD39:
  dw $0006                                  ; $8BFD39 |

DATA16_8BFD3B:
  dw $0007,$0040,$0041,$0042                ; $8BFD3B |
  dw $0043,$0044,$0045,$0046                ; $8BFD43 |
  dw $0047,$0008,$0009,$000A                ; $8BFD4B |
  dw $000B,$000C,$000D,$000E                ; $8BFD53 |
  dw $000F,$0048,$0049,$004A                ; $8BFD5B |
  dw $004B,$004C,$004D,$004E                ; $8BFD63 |
  dw $004F,$0010,$0011,$0012                ; $8BFD6B |
  dw $0013,$0014,$0015,$0016                ; $8BFD73 |
  dw $0017,$0050,$0051,$0052                ; $8BFD7B |
  dw $0053,$0054,$0055,$0056                ; $8BFD83 |
  dw $0057,$0018,$0019,$001A                ; $8BFD8B |
  dw $001B,$001C,$001D,$001E                ; $8BFD93 |
  dw $001F,$0058,$0059,$005A                ; $8BFD9B |
  dw $005B,$005C,$005D,$005E                ; $8BFDA3 |
  dw $005F,$0020,$0021,$0022                ; $8BFDAB |
  dw $0023,$0024,$0025,$0026                ; $8BFDB3 |
  dw $0027,$0060,$0061,$0062                ; $8BFDBB |
  dw $0063,$0064,$0065,$0066                ; $8BFDC3 |
  dw $0067,$0028,$0029,$002A                ; $8BFDCB |
  dw $002B,$002C,$002D,$002E                ; $8BFDD3 |
  dw $002F,$0068,$0069,$006A                ; $8BFDDB |
  dw $006B,$006C,$006D,$006E                ; $8BFDE3 |
  dw $006F,$0030,$0031,$0032                ; $8BFDEB |
  dw $0033,$0034,$0035,$0036                ; $8BFDF3 |
  dw $0037,$0070,$0071,$0072                ; $8BFDFB |
  dw $0073,$0074,$0075,$0076                ; $8BFE03 |
  dw $0077,$0038,$0039,$003A                ; $8BFE0B |
  dw $003B,$003C,$003D,$003E                ; $8BFE13 |
  dw $003F,$0078,$0079,$007A                ; $8BFE1B |
  dw $007B,$007C,$007D,$007E                ; $8BFE23 |
  dw $007F,$0400,$0401,$0402                ; $8BFE2B |
  dw $0403,$0404,$0405,$0406                ; $8BFE33 |
  dw $0407,$0440,$0441,$0442                ; $8BFE3B |
  dw $0443,$0444,$0445,$0446                ; $8BFE43 |
  dw $0447,$0408,$0409,$040A                ; $8BFE4B |
  dw $040B,$040C,$040D,$040E                ; $8BFE53 |
  dw $040F,$0448,$0449,$044A                ; $8BFE5B |
  dw $044B,$044C,$044D,$044E                ; $8BFE63 |
  dw $044F,$0410,$0411,$0412                ; $8BFE6B |
  dw $0413,$0414,$0415,$0416                ; $8BFE73 |
  dw $0417,$0450,$0451,$0452                ; $8BFE7B |
  dw $0453,$0454,$0455,$0456                ; $8BFE83 |
  dw $0457,$0418,$0419,$041A                ; $8BFE8B |
  dw $041B,$041C,$041D,$041E                ; $8BFE93 |
  dw $041F,$0458,$0459,$045A                ; $8BFE9B |
  dw $045B,$045C,$045D,$045E                ; $8BFEA3 |
  dw $045F,$0420,$0421,$0422                ; $8BFEAB |
  dw $0423,$0424,$0425,$0426                ; $8BFEB3 |
  dw $0427,$0460,$0461,$0462                ; $8BFEBB |
  dw $0463,$0464,$0465,$0466                ; $8BFEC3 |
  dw $0467,$0428,$0429,$042A                ; $8BFECB |
  dw $042B,$042C,$042D,$042E                ; $8BFED3 |
  dw $042F,$0468,$0469,$046A                ; $8BFEDB |
  dw $046B,$046C,$046D,$046E                ; $8BFEE3 |
  dw $046F,$0430,$0431,$0432                ; $8BFEEB |
  dw $0433,$0434,$0435,$0436                ; $8BFEF3 |
  dw $0437,$0470,$0471,$0472                ; $8BFEFB |
  dw $0473,$0474,$0475,$0476                ; $8BFF03 |
  dw $0477,$0438,$0439,$043A                ; $8BFF0B |
  dw $043B,$043C,$043D,$043E                ; $8BFF13 |
  dw $043F,$0478,$0479,$047A                ; $8BFF1B |
  dw $047B,$047C,$047D,$047E                ; $8BFF23 |
  dw $047F                                  ; $8BFF2B |

DATA8_8BFF2D:
  db $00,$00                                ; $8BFF2D |

DATA8_8BFF2F:
  db $00,$00                                ; $8BFF2F |

DATA8_8BFF31:
  db $00,$00,$FF,$FF,$00,$00,$00,$00        ; $8BFF31 |
  db $00,$00,$00,$00,$00,$00,$00,$00        ; $8BFF39 |
  db $00,$00,$00,$00,$00,$00,$00,$00        ; $8BFF41 |
  db $00,$00,$08,$00,$00,$00,$01,$00        ; $8BFF49 |
  db $F8,$FF,$08,$00,$0F,$00,$08,$00        ; $8BFF51 |
  db $00,$00,$01,$00,$00,$00,$00,$00        ; $8BFF59 |
  db $01,$00,$08,$00,$00,$00,$FF,$FF        ; $8BFF61 |
  db $F8,$FF,$08,$00,$11,$00,$08,$00        ; $8BFF69 |
  db $00,$00,$FF,$FF,$00,$00,$00,$00        ; $8BFF71 |
  db $10,$00,$08,$00,$00,$00,$01,$00        ; $8BFF79 |
  db $F8,$FF,$08,$00,$11,$00,$08,$00        ; $8BFF81 |
  db $00,$00,$01,$00,$00,$00,$00,$00        ; $8BFF89 |
  db $11,$00,$08,$00,$00,$00,$FF,$FF        ; $8BFF91 |
  db $F8,$FF,$08,$00,$F1,$FF,$08,$00        ; $8BFF99 |
  db $00,$00,$FF,$FF                        ; $8BFFA1 |

CODE_FL_8BFFA5:
  JML.L CODE_FL_86C1D7                      ; $8BFFA5 |

CODE_8BFFA9:
  RTL                                       ; $8BFFA9 |

  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8BFFAA |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8BFFB2 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8BFFBA |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8BFFC2 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8BFFCA |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8BFFD2 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8BFFDA |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8BFFE2 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8BFFEA |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $8BFFF2 |
  db $FF,$FF,$FF,$FF,$FF,$FF                ; $8BFFFA |
