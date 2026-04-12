org $848000

CODE_FL_848000:
  LDA.W #$FFFF                              ; $848000 |
  STA.B $C0                                 ; $848003 |
  PHY                                       ; $848005 |
  JSL.L CODE_FL_808A7C                      ; $848006 |
  LDA.W #$0004                              ; $84800A |
  LDY.B $90                                 ; $84800D |
  CPY.W #$0000                              ; $84800F |
  BNE CODE_848017                           ; $848012 |
  LDA.W #$0004                              ; $848014 |

CODE_848017:
  CMP.B $7E                                 ; $848017 |
  BEQ CODE_84801D                           ; $848019 |
  STA.B $7E                                 ; $84801B |

CODE_84801D:
  PLY                                       ; $84801D |
  RTL                                       ; $84801E |

CODE_FL_84801F:
  LDA.W #$0008                              ; $84801F |
  STA.B $7E                                 ; $848022 |
  RTL                                       ; $848024 |

CODE_848025:
  PLA                                       ; $848025 |
  CLC                                       ; $848026 |
  RTL                                       ; $848027 |

CODE_FL_848028:
  PHA                                       ; $848028 |
  LDA.B $B2                                 ; $848029 |
  CMP.B $8E                                 ; $84802B |
  BNE CODE_848025                           ; $84802D |
  PLA                                       ; $84802F |
  PHB                                       ; $848030 |
  PEA.W $8181                               ; $848031 |
  PLB                                       ; $848034 |
  PLB                                       ; $848035 |
  STX.W $193A                               ; $848036 |
  LDY.W #$0000                              ; $848039 |
  STA.B $16                                 ; $84803C |

CODE_84803E:
  LSR A                                     ; $84803E |
  BCS CODE_84804A                           ; $84803F |
  INY                                       ; $848041 |
  CPY.W #$0008                              ; $848042 |
  BCC CODE_84803E                           ; $848045 |

CODE_JP_848047:
  PLB                                       ; $848047 |
  CLC                                       ; $848048 |
  RTL                                       ; $848049 |

CODE_84804A:
  TYA                                       ; $84804A |
  ASL A                                     ; $84804B |
  ASL A                                     ; $84804C |
  LDY.B $90                                 ; $84804D |
  CPY.W #$0001                              ; $84804F |
  BEQ CODE_848058                           ; $848052 |
  CLC                                       ; $848054 |
  ADC.W #$0010                              ; $848055 |

CODE_848058:
  TAY                                       ; $848058 |
  LDA.B $09,X                               ; $848059 |
  STA.B $18                                 ; $84805B |
  LDA.B $0D,X                               ; $84805D |
  STA.B $1A                                 ; $84805F |
  LDA.W LOOSE_OP_00F6CF,Y                   ; $848061 |
  STA.W $1980                               ; $848064 |
  LDA.W LOOSE_OP_00F6D1,Y                   ; $848067 |
  STA.W $1982                               ; $84806A |
  LDA.B $15                                 ; $84806D |
  AND.W #$FF00                              ; $84806F |
  STA.W $1984                               ; $848072 |
  STZ.W $1986                               ; $848075 |
  LDA.W $1662                               ; $848078 |
  CLC                                       ; $84807B |
  ADC.W LOOSE_OP_00F6AF,Y                   ; $84807C |
  STA.B $08                                 ; $84807F |
  LDA.W $1672                               ; $848081 |
  CLC                                       ; $848084 |
  ADC.W LOOSE_OP_00F6B1,Y                   ; $848085 |
  STA.B $0A                                 ; $848088 |
  JSR.W CODE_FN_848210                      ; $84808A |
  LDA.B $16                                 ; $84808D |
  BIT.W #$0003                              ; $84808F |
  BNE CODE_8480F7                           ; $848092 |
  LDA.W $1662                               ; $848094 |
  AND.W #$00FF                              ; $848097 |
  BNE CODE_8480A3                           ; $84809A |
  JSL.L CODE_FL_848230                      ; $84809C |
  JMP.W CODE_JP_84815A                      ; $8480A0 |

CODE_8480A3:
  SEP #$20                                  ; $8480A3 |
  LDA.W $1662                               ; $8480A5 |
  CLC                                       ; $8480A8 |
  ADC.B $09,X                               ; $8480A9 |
  REP #$20                                  ; $8480AB |
  BCS CODE_8480DD                           ; $8480AD |
  JSR.W CODE_FN_8481F8                      ; $8480AF |
  BCS CODE_8480B7                           ; $8480B2 |
  JMP.W CODE_JP_848047                      ; $8480B4 |

CODE_8480B7:
  STA.B $8E                                 ; $8480B7 |
  INC.B $01                                 ; $8480B9 |
  JSL.L CODE_FL_848230                      ; $8480BB |
  DEC.B $01                                 ; $8480BF |
  CMP.B $8E                                 ; $8480C1 |
  BNE CODE_8480C8                           ; $8480C3 |
  JMP.W CODE_JP_848165                      ; $8480C5 |

CODE_8480C8:
  LDA.B $00                                 ; $8480C8 |
  AND.W #$FF00                              ; $8480CA |
  STA.B $00                                 ; $8480CD |
  LDA.W $1662                               ; $8480CF |
  CLC                                       ; $8480D2 |
  ADC.B $09,X                               ; $8480D3 |
  AND.W #$00FF                              ; $8480D5 |
  STA.B $18                                 ; $8480D8 |
  JMP.W CODE_JP_848165                      ; $8480DA |

CODE_8480DD:
  INC.B $01                                 ; $8480DD |
  JSR.W CODE_FN_8481F8                      ; $8480DF |
  BCC CODE_848157                           ; $8480E2 |
  STA.B $8E                                 ; $8480E4 |
  DEC.B $01                                 ; $8480E6 |
  JSL.L CODE_FL_848230                      ; $8480E8 |
  CMP.B $8E                                 ; $8480EC |
  BNE CODE_8480F3                           ; $8480EE |
  JMP.W CODE_JP_848165                      ; $8480F0 |

CODE_8480F3:
  INC.B $01                                 ; $8480F3 |
  BRA CODE_8480C8                           ; $8480F5 |

CODE_8480F7:
  LDA.W $1672                               ; $8480F7 |
  AND.W #$00FF                              ; $8480FA |
  BNE CODE_848106                           ; $8480FD |
  JSL.L CODE_FL_848209                      ; $8480FF |
  JMP.W CODE_JP_84815A                      ; $848103 |

CODE_848106:
  SEP #$20                                  ; $848106 |
  LDA.W $1672                               ; $848108 |
  CLC                                       ; $84810B |
  ADC.B $0D,X                               ; $84810C |
  REP #$20                                  ; $84810E |
  BCS CODE_848140                           ; $848110 |
  JSR.W CODE_FN_8481F8                      ; $848112 |
  BCS CODE_84811A                           ; $848115 |
  JMP.W CODE_JP_848047                      ; $848117 |

CODE_84811A:
  STA.B $8E                                 ; $84811A |
  INC.B $05                                 ; $84811C |
  JSL.L CODE_FL_848230                      ; $84811E |
  DEC.B $05                                 ; $848122 |
  CMP.B $8E                                 ; $848124 |
  BNE CODE_84812B                           ; $848126 |
  JMP.W CODE_JP_848165                      ; $848128 |

CODE_84812B:
  LDA.B $04                                 ; $84812B |
  AND.W #$FF00                              ; $84812D |
  STA.B $04                                 ; $848130 |
  LDA.W $1672                               ; $848132 |
  CLC                                       ; $848135 |
  ADC.B $0D,X                               ; $848136 |
  AND.W #$00FF                              ; $848138 |
  STA.B $1A                                 ; $84813B |
  JMP.W CODE_JP_848165                      ; $84813D |

CODE_848140:
  INC.B $05                                 ; $848140 |
  JSR.W CODE_FN_8481F8                      ; $848142 |
  BCC CODE_848157                           ; $848145 |
  STA.B $8E                                 ; $848147 |
  DEC.B $05                                 ; $848149 |
  JSL.L CODE_FL_848230                      ; $84814B |
  CMP.B $8E                                 ; $84814F |
  BEQ CODE_JP_848165                        ; $848151 |
  INC.B $05                                 ; $848153 |
  BRA CODE_84812B                           ; $848155 |

CODE_848157:
  PLB                                       ; $848157 |
  CLC                                       ; $848158 |
  RTL                                       ; $848159 |

CODE_JP_84815A:
  CMP.B $8E                                 ; $84815A |
  BEQ CODE_848157                           ; $84815C |
  CMP.W #$00FF                              ; $84815E |
  BEQ CODE_848157                           ; $848161 |
  STA.B $8E                                 ; $848163 |

CODE_JP_848165:
  LDA.B $8E                                 ; $848165 |
  ASL A                                     ; $848167 |
  ASL A                                     ; $848168 |
  TAY                                       ; $848169 |
  LDA.W CODE_00ABF8,Y                       ; $84816A |
  AND.W #$FF00                              ; $84816D |
  SEC                                       ; $848170 |
  SBC.B $00                                 ; $848171 |
  BMI CODE_848178                           ; $848173 |
  LDA.W #$0000                              ; $848175 |

CODE_848178:
  EOR.W #$FFFF                              ; $848178 |
  INC A                                     ; $84817B |
  STA.B $10                                 ; $84817C |
  AND.W #$FFF8                              ; $84817E |
  STA.W $1756                               ; $848181 |
  LDA.W LOOSE_OP_00ABF9,Y                   ; $848184 |
  AND.W #$FF00                              ; $848187 |
  SEC                                       ; $84818A |
  SBC.B $04                                 ; $84818B |
  BMI CODE_848192                           ; $84818D |
  LDA.W #$0000                              ; $84818F |

CODE_848192:
  EOR.W #$FFFF                              ; $848192 |
  INC A                                     ; $848195 |
  STA.B $12                                 ; $848196 |
  AND.W #$FFE0                              ; $848198 |
  STA.W $1758                               ; $84819B |
  LDA.W $1980                               ; $84819E |
  BNE CODE_8481B7                           ; $8481A1 |
  LDA.B $10                                 ; $8481A3 |
  AND.W #$0007                              ; $8481A5 |
  STA.B $10                                 ; $8481A8 |
  LDA.B $18                                 ; $8481AA |
  AND.W #$00FF                              ; $8481AC |
  CLC                                       ; $8481AF |
  ADC.B $10                                 ; $8481B0 |
  STA.W $1980                               ; $8481B2 |
  BRA CODE_8481C0                           ; $8481B5 |

CODE_8481B7:
  CLC                                       ; $8481B7 |
  ADC.B $18                                 ; $8481B8 |
  AND.W #$00FF                              ; $8481BA |
  STA.W $1980                               ; $8481BD |

CODE_8481C0:
  LDA.W $1982                               ; $8481C0 |
  BNE CODE_8481DA                           ; $8481C3 |
  LDA.B $12                                 ; $8481C5 |
  AND.W #$001F                              ; $8481C7 |
  STA.B $12                                 ; $8481CA |
  LDA.B $1A                                 ; $8481CC |
  AND.W #$00FF                              ; $8481CE |
  CLC                                       ; $8481D1 |
  ADC.B $12                                 ; $8481D2 |
  CLC                                       ; $8481D4 |
  STA.W $1982                               ; $8481D5 |
  BRA CODE_8481E3                           ; $8481D8 |

CODE_8481DA:
  CLC                                       ; $8481DA |
  ADC.B $1A                                 ; $8481DB |
  AND.W #$00FF                              ; $8481DD |
  STA.W $1982                               ; $8481E0 |

CODE_8481E3:
  LDA.W $1980                               ; $8481E3 |
  STA.W $195A                               ; $8481E6 |
  LDA.W $1982                               ; $8481E9 |
  STA.W $195C                               ; $8481EC |
  LDA.W $1984                               ; $8481EF |
  STA.W $195E                               ; $8481F2 |
  PLB                                       ; $8481F5 |
  SEC                                       ; $8481F6 |
  RTL                                       ; $8481F7 |

CODE_FN_8481F8:
  JSL.L CODE_FL_848230                      ; $8481F8 |
  CMP.B $8E                                 ; $8481FC |
  BEQ CODE_848207                           ; $8481FE |
  CMP.W #$00FF                              ; $848200 |
  BEQ CODE_848207                           ; $848203 |
  SEC                                       ; $848205 |
  RTS                                       ; $848206 |

CODE_848207:
  CLC                                       ; $848207 |
  RTS                                       ; $848208 |

CODE_FL_848209:
  JSR.W CODE_FN_848210                      ; $848209 |
  JML.L CODE_FL_848230                      ; $84820C |

CODE_FN_848210:
  LDA.W #$007F                              ; $848210 |
  STA.B $1E                                 ; $848213 |
  LDA.W $1760                               ; $848215 |
  ASL A                                     ; $848218 |
  TAY                                       ; $848219 |
  LDA.W LOOSE_OP_00F6EF,Y                   ; $84821A |
  STA.B $1C                                 ; $84821D |
  LDA.B $08                                 ; $84821F |
  CLC                                       ; $848221 |
  ADC.W $1762                               ; $848222 |
  STA.B $00                                 ; $848225 |
  LDA.B $0A                                 ; $848227 |
  CLC                                       ; $848229 |
  ADC.W $1764                               ; $84822A |
  STA.B $04                                 ; $84822D |
  RTS                                       ; $84822F |

CODE_FL_848230:
  SEP #$20                                  ; $848230 |
  LDA.B $01                                 ; $848232 |
  AND.B #$FF                                ; $848234 |
  CMP.W $1766                               ; $848236 |
  BCS CODE_848272                           ; $848239 |
  LDA.B $05                                 ; $84823B |
  AND.B #$FF                                ; $84823D |
  CMP.W $1768                               ; $84823F |
  BCS CODE_848272                           ; $848242 |
  LDA.B $05                                 ; $848244 |
  STA.W $4202                               ; $848246 |
  LDA.W $1766                               ; $848249 |
  STA.W $4203                               ; $84824C |
  REP #$20                                  ; $84824F |
  LDA.B $01                                 ; $848251 |
  AND.W #$00FF                              ; $848253 |
  CLC                                       ; $848256 |
  ADC.W $4216                               ; $848257 |
  TAY                                       ; $84825A |
  LDA.B [$1C],Y                             ; $84825B |
  AND.W #$00FF                              ; $84825D |
  STA.B $14                                 ; $848260 |
  LDA.B $90                                 ; $848262 |
  CMP.W #$0000                              ; $848264 |
  BNE CODE_84826F                           ; $848267 |
  LDA.B $14                                 ; $848269 |
  ORA.W #$0100                              ; $84826B |
  RTL                                       ; $84826E |

CODE_84826F:
  LDA.B $14                                 ; $84826F |
  RTL                                       ; $848271 |

CODE_848272:
  REP #$20                                  ; $848272 |
  LDA.W #$00FF                              ; $848274 |
  RTL                                       ; $848277 |

  RTL                                       ; $848278 |

  RTL                                       ; $848279 |

  RTL                                       ; $84827A |

CODE_FL_84827B:
  PHX                                       ; $84827B |
  PHY                                       ; $84827C |
  ASL A                                     ; $84827D |
  ASL A                                     ; $84827E |
  TAX                                       ; $84827F |
  LDA.L PTR16_819223,X                      ; $848280 |
  AND.W #$FF00                              ; $848284 |
  BPL CODE_84828C                           ; $848287 |
  LDA.W #$0100                              ; $848289 |

CODE_84828C:
  STA.B $00                                 ; $84828C |
  LDA.L DATA8_819224,X                      ; $84828E |
  AND.W #$FF00                              ; $848292 |
  BPL CODE_84829A                           ; $848295 |
  LDA.W #$0100                              ; $848297 |

CODE_84829A:
  STA.B $02                                 ; $84829A |
  LDA.W #$0100                              ; $84829C |
  LDY.B $90                                 ; $84829F |
  CPY.W #$0000                              ; $8482A1 |
  BEQ CODE_8482A9                           ; $8482A4 |
  LDA.W #$0200                              ; $8482A6 |

CODE_8482A9:
  STA.B $04                                 ; $8482A9 |
  LDA.L UNREACH_819837,X                    ; $8482AB |
  AND.W #$FF00                              ; $8482AF |
  SEC                                       ; $8482B2 |
  SBC.B $04                                 ; $8482B3 |
  STA.B $04                                 ; $8482B5 |
  LDA.L DATA8_819838,X                      ; $8482B7 |
  AND.W #$FF00                              ; $8482BB |
  SEC                                       ; $8482BE |
  SBC.W #$0100                              ; $8482BF |
  STA.B $06                                 ; $8482C2 |
  PLY                                       ; $8482C4 |
  PLX                                       ; $8482C5 |
  RTL                                       ; $8482C6 |

  RTL                                       ; $8482C7 |

  STZ.W $1756                               ; $8482C8 |
  STZ.W $1758                               ; $8482CB |
  STZ.W $199A                               ; $8482CE |
  PLB                                       ; $8482D1 |
  CLC                                       ; $8482D2 |
  RTL                                       ; $8482D3 |

CODE_FL_8482D4:
  RTL                                       ; $8482D4 |

CODE_FL_8482D5:
  JSL.L CODE_FL_80893F                      ; $8482D5 |
  LDA.W #$000C                              ; $8482D9 |
  JSL.L CODE_FL_80C876                      ; $8482DC |
  JML.L CODE_FL_80C213                      ; $8482E0 |

CODE_FL_8482E4:
  LDA.W #$0001                              ; $8482E4 |
  STA.L $7002F8                             ; $8482E7 |
  STA.L $70030C                             ; $8482EB |
  STA.L $700320                             ; $8482EF |
  STA.L $700334                             ; $8482F3 |
  RTL                                       ; $8482F7 |

CODE_JL_8482F8:
  JSL.L CODE_FL_80893F                      ; $8482F8 |
  LDA.W #$0012                              ; $8482FC |
  JSL.L CODE_FL_80C876                      ; $8482FF |
  JML.L CODE_FL_80C213                      ; $848303 |

CODE_JL_848307:
  LDA.W #$00FC                              ; $848307 |
  BRA CODE_848319                           ; $84830A |

CODE_JL_84830C:
  LDA.W #$00FD                              ; $84830C |
  BRA CODE_848319                           ; $84830F |

CODE_FL_848311:
  LDA.W #$00FE                              ; $848311 |
  BRA CODE_848319                           ; $848314 |

CODE_JL_848316:
  LDA.W #$FFFF                              ; $848316 |

CODE_848319:
  STA.B $8E                                 ; $848319 |
  LDA.W #$0005                              ; $84831B |
  STA.B $90                                 ; $84831E |
  STZ.B $3C                                 ; $848320 |
  LDA.W #$0000                              ; $848322 |
  JML.L CODE_FL_80C876                      ; $848325 |

CODE_JL_848329:
  LDA.W #$8001                              ; $848329 |

CODE_84832C:
  STA.B $DA                                 ; $84832C |
  JSL.L CODE_FL_80893F                      ; $84832E |
  LDA.W #$0004                              ; $848332 |
  STA.B $90                                 ; $848335 |
  LDA.W #$0000                              ; $848337 |
  JML.L CODE_FL_80C876                      ; $84833A |

CODE_JL_84833E:
  LDA.W #$8003                              ; $84833E |
  BRA CODE_84832C                           ; $848341 |

CODE_JL_848343:
  LDA.W #$8004                              ; $848343 |
  BRA CODE_84832C                           ; $848346 |

CODE_JL_848348:
  LDA.W #$8002                              ; $848348 |
  BRA CODE_84832C                           ; $84834B |

CODE_JL_84834D:
  JSL.L CODE_FL_80893F                      ; $84834D |
  LDA.W #$8005                              ; $848351 |
  BRA CODE_84832C                           ; $848354 |

CODE_JL_848356:
  LDA.W #$0003                              ; $848356 |
  STA.B $90                                 ; $848359 |
  LDA.W #$0000                              ; $84835B |
  JML.L CODE_FL_80C876                      ; $84835E |

CODE_JL_848362:
  JSL.L CODE_FL_80893F                      ; $848362 |
  LDA.W #$8006                              ; $848366 |
  BRA CODE_84832C                           ; $848369 |

CODE_FL_84836B:
  JSL.L CODE_FL_80893F                      ; $84836B |
  LDA.W #$0006                              ; $84836F |
  STA.B $90                                 ; $848372 |
  LDA.W #$0002                              ; $848374 |
  JML.L CODE_FL_80C876                      ; $848377 |

  LDA.W #$8005                              ; $84837B |
  BRA CODE_84832C                           ; $84837E |

  LDA.W #$0001                              ; $848380 |
  STA.L $700320                             ; $848383 |
  RTL                                       ; $848387 |

  LDA.W #$0081                              ; $848388 |
  STA.L $700320                             ; $84838B |
  RTL                                       ; $84838F |

  LDA.W #$0001                              ; $848390 |
  STA.L $700334                             ; $848393 |
  RTL                                       ; $848397 |

CODE_FL_848398:
  LDA.L $700294                             ; $848398 |
  CMP.W #$0020                              ; $84839C |
  BPL CODE_8483A3                           ; $84839F |
  CLC                                       ; $8483A1 |
  RTL                                       ; $8483A2 |

CODE_8483A3:
  SEC                                       ; $8483A3 |
  RTL                                       ; $8483A4 |

CODE_JL_8483A5:
  LDA.W #$00FF                              ; $8483A5 |
  STA.B $8E                                 ; $8483A8 |
  LDA.W #$0003                              ; $8483AA |
  STA.B $90                                 ; $8483AD |
  TDC                                       ; $8483AF |
  JML.L CODE_FL_80C876                      ; $8483B0 |

CODE_FL_8483B4:
  LDA.W #$FFFF                              ; $8483B4 |
  BRA CODE_8483BC                           ; $8483B7 |

CODE_FL_8483B9:
  LDA.W #$0001                              ; $8483B9 |

CODE_8483BC:
  STA.B $C4                                 ; $8483BC |
  LDA.W #$0001                              ; $8483BE |
  STA.W $00E6                               ; $8483C1 |
  PHX                                       ; $8483C4 |
  PHY                                       ; $8483C5 |
  JSL.L CODE_FL_86A9F9                      ; $8483C6 |
  LDY.W #$6500                              ; $8483CA |
  REP #$30                                  ; $8483CD |
  PHB                                       ; $8483CF |
  LDX.W #$0418                              ; $8483D0 |
  LDA.W #$0002                              ; $8483D3 |
  MVN $7F,$00                               ; $8483D6 |
  PLB                                       ; $8483D9 |
  REP #$30                                  ; $8483DA |
  PHB                                       ; $8483DC |
  LDX.W #$04D8                              ; $8483DD |
  LDA.W #$0002                              ; $8483E0 |
  MVN $7F,$00                               ; $8483E3 |
  PLB                                       ; $8483E6 |
  REP #$30                                  ; $8483E7 |
  PHB                                       ; $8483E9 |
  LDX.W #$049E                              ; $8483EA |
  LDA.W #$0002                              ; $8483ED |
  MVN $7F,$00                               ; $8483F0 |
  PLB                                       ; $8483F3 |
  REP #$30                                  ; $8483F4 |
  PHB                                       ; $8483F6 |
  LDX.W #$055E                              ; $8483F7 |
  LDA.W #$0002                              ; $8483FA |
  MVN $7F,$00                               ; $8483FD |
  PLB                                       ; $848400 |
  REP #$30                                  ; $848401 |
  PHB                                       ; $848403 |
  LDX.W #$04A0                              ; $848404 |
  LDA.W #$0002                              ; $848407 |
  MVN $7F,$00                               ; $84840A |
  PLB                                       ; $84840D |
  REP #$30                                  ; $84840E |
  PHB                                       ; $848410 |
  LDX.W #$0560                              ; $848411 |
  LDA.W #$0002                              ; $848414 |
  MVN $7F,$00                               ; $848417 |
  PLB                                       ; $84841A |
  REP #$30                                  ; $84841B |
  PHB                                       ; $84841D |
  LDX.W #$00C0                              ; $84841E |
  LDA.W #$0002                              ; $848421 |
  MVN $7F,$00                               ; $848424 |
  PLB                                       ; $848427 |
  BIT.B $C4                                 ; $848428 |
  BPL CODE_84842F                           ; $84842A |
  JMP.W CODE_JP_848516                      ; $84842C |

CODE_84842F:
  PHY                                       ; $84842F |
  JSL.L CODE_FL_96FB90                      ; $848430 |
  PLY                                       ; $848434 |
  REP #$30                                  ; $848435 |
  PHB                                       ; $848437 |
  LDX.W #$00BA                              ; $848438 |
  LDA.W #$0002                              ; $84843B |
  MVN $7F,$00                               ; $84843E |
  PLB                                       ; $848441 |
  REP #$30                                  ; $848442 |
  PHB                                       ; $848444 |
  LDX.W #$00BC                              ; $848445 |
  LDA.W #$0002                              ; $848448 |
  MVN $7F,$00                               ; $84844B |
  PLB                                       ; $84844E |
  REP #$30                                  ; $84844F |
  PHB                                       ; $848451 |
  LDX.W #$00B8                              ; $848452 |
  LDA.W #$0002                              ; $848455 |
  MVN $7F,$00                               ; $848458 |
  PLB                                       ; $84845B |
  REP #$30                                  ; $84845C |
  PHB                                       ; $84845E |
  LDX.W #$0290                              ; $84845F |
  LDA.W #$0050                              ; $848462 |
  MVN $7F,$70                               ; $848465 |
  PLB                                       ; $848468 |
  REP #$30                                  ; $848469 |
  PHB                                       ; $84846B |
  LDX.W #$02F8                              ; $84846C |
  LDA.W #$0014                              ; $84846F |
  MVN $7F,$70                               ; $848472 |
  PLB                                       ; $848475 |
  REP #$30                                  ; $848476 |
  PHB                                       ; $848478 |
  LDX.W #$030C                              ; $848479 |
  LDA.W #$0014                              ; $84847C |
  MVN $7F,$70                               ; $84847F |
  PLB                                       ; $848482 |
  REP #$30                                  ; $848483 |
  PHB                                       ; $848485 |
  LDX.W #$0334                              ; $848486 |
  LDA.W #$0014                              ; $848489 |
  MVN $7F,$70                               ; $84848C |
  PLB                                       ; $84848F |
  REP #$30                                  ; $848490 |
  PHB                                       ; $848492 |
  LDX.W #$0320                              ; $848493 |
  LDA.W #$0014                              ; $848496 |
  MVN $7F,$70                               ; $848499 |
  PLB                                       ; $84849C |
  REP #$30                                  ; $84849D |
  PHB                                       ; $84849F |
  STA.L $700090                             ; $8484A0 |
  LDA.W #$004D                              ; $8484A4 |
  LDX.W #$0091                              ; $8484A7 |
  TXY                                       ; $8484AA |
  INY                                       ; $8484AB |
  MVN $70,$70                               ; $8484AC |
  PLB                                       ; $8484AF |
  TDC                                       ; $8484B0 |
  STA.L $700290                             ; $8484B1 |
  LDA.W #$000A                              ; $8484B5 |
  STA.L $700292                             ; $8484B8 |
  STA.L $700294                             ; $8484BC |
  LDA.W #$0001                              ; $8484C0 |
  STA.B $B8                                 ; $8484C3 |
  JSL.L CODE_FL_96FB63                      ; $8484C5 |
  TDC                                       ; $8484C9 |
  STA.L $7002A0                             ; $8484CA |
  STA.L $7002A2                             ; $8484CE |
  STA.L $7002A4                             ; $8484D2 |
  STA.L $7002FA                             ; $8484D6 |
  STA.L $7002FC                             ; $8484DA |
  STA.L $7002FE                             ; $8484DE |
  STA.L $700300                             ; $8484E2 |
  STA.L $70030E                             ; $8484E6 |
  STA.L $700310                             ; $8484EA |
  STA.L $700312                             ; $8484EE |
  STA.L $700314                             ; $8484F2 |
  STA.L $70030E                             ; $8484F6 |
  STA.L $700310                             ; $8484FA |
  STA.L $700312                             ; $8484FE |
  STA.L $700314                             ; $848502 |
  STA.L $700336                             ; $848506 |
  STA.L $700338                             ; $84850A |
  STA.L $70033A                             ; $84850E |
  STA.L $70033C                             ; $848512 |

CODE_JP_848516:
  PLY                                       ; $848516 |
  PLX                                       ; $848517 |
  RTL                                       ; $848518 |

CODE_FL_848519:
  PHX                                       ; $848519 |
  PHY                                       ; $84851A |
  STZ.W $00E6                               ; $84851B |
  LDA.W #$0000                              ; $84851E |
  STA.L $7E7D90                             ; $848521 |
  LDX.W #$6500                              ; $848525 |
  REP #$30                                  ; $848528 |
  PHB                                       ; $84852A |
  LDY.W #$0418                              ; $84852B |
  LDA.W #$0002                              ; $84852E |
  MVN $00,$7F                               ; $848531 |
  PLB                                       ; $848534 |
  REP #$30                                  ; $848535 |
  PHB                                       ; $848537 |
  LDY.W #$04D8                              ; $848538 |
  LDA.W #$0002                              ; $84853B |
  MVN $00,$7F                               ; $84853E |
  PLB                                       ; $848541 |
  REP #$30                                  ; $848542 |
  PHB                                       ; $848544 |
  LDY.W #$049E                              ; $848545 |
  LDA.W #$0002                              ; $848548 |
  MVN $00,$7F                               ; $84854B |
  PLB                                       ; $84854E |
  REP #$30                                  ; $84854F |
  PHB                                       ; $848551 |
  LDY.W #$055E                              ; $848552 |
  LDA.W #$0002                              ; $848555 |
  MVN $00,$7F                               ; $848558 |
  PLB                                       ; $84855B |
  REP #$30                                  ; $84855C |
  PHB                                       ; $84855E |
  LDY.W #$04A0                              ; $84855F |
  LDA.W #$0002                              ; $848562 |
  MVN $00,$7F                               ; $848565 |
  PLB                                       ; $848568 |
  REP #$30                                  ; $848569 |
  PHB                                       ; $84856B |
  LDY.W #$0560                              ; $84856C |
  LDA.W #$0002                              ; $84856F |
  MVN $00,$7F                               ; $848572 |
  PLB                                       ; $848575 |
  REP #$30                                  ; $848576 |
  PHB                                       ; $848578 |
  LDY.W #$00C0                              ; $848579 |
  LDA.W #$0002                              ; $84857C |
  MVN $00,$7F                               ; $84857F |
  PLB                                       ; $848582 |
  LDA.W $0418                               ; $848583 |
  BEQ CODE_848594                           ; $848586 |
  STZ.W $041A                               ; $848588 |
  STZ.W $0438                               ; $84858B |
  STZ.W $0452                               ; $84858E |
  STZ.W $0466                               ; $848591 |

CODE_848594:
  LDA.W $04D8                               ; $848594 |
  BEQ CODE_8485A5                           ; $848597 |
  STZ.W $04DA                               ; $848599 |
  STZ.W $04F8                               ; $84859C |
  STZ.W $0512                               ; $84859F |
  STZ.W $0526                               ; $8485A2 |

CODE_8485A5:
  BIT.B $C4                                 ; $8485A5 |
  BMI CODE_848615                           ; $8485A7 |
  REP #$30                                  ; $8485A9 |
  PHB                                       ; $8485AB |
  LDY.W #$00BA                              ; $8485AC |
  LDA.W #$0002                              ; $8485AF |
  MVN $00,$7F                               ; $8485B2 |
  PLB                                       ; $8485B5 |
  REP #$30                                  ; $8485B6 |
  PHB                                       ; $8485B8 |
  LDY.W #$00BC                              ; $8485B9 |
  LDA.W #$0002                              ; $8485BC |
  MVN $00,$7F                               ; $8485BF |
  PLB                                       ; $8485C2 |
  REP #$30                                  ; $8485C3 |
  PHB                                       ; $8485C5 |
  LDY.W #$00B8                              ; $8485C6 |
  LDA.W #$0002                              ; $8485C9 |
  MVN $00,$7F                               ; $8485CC |
  PLB                                       ; $8485CF |
  REP #$30                                  ; $8485D0 |
  PHB                                       ; $8485D2 |
  LDY.W #$0290                              ; $8485D3 |
  LDA.W #$0050                              ; $8485D6 |
  MVN $70,$7F                               ; $8485D9 |
  PLB                                       ; $8485DC |
  REP #$30                                  ; $8485DD |
  PHB                                       ; $8485DF |
  LDY.W #$02F8                              ; $8485E0 |
  LDA.W #$0014                              ; $8485E3 |
  MVN $70,$7F                               ; $8485E6 |
  PLB                                       ; $8485E9 |
  REP #$30                                  ; $8485EA |
  PHB                                       ; $8485EC |
  LDY.W #$030C                              ; $8485ED |
  LDA.W #$0014                              ; $8485F0 |
  MVN $70,$7F                               ; $8485F3 |
  PLB                                       ; $8485F6 |
  REP #$30                                  ; $8485F7 |
  PHB                                       ; $8485F9 |
  LDY.W #$0334                              ; $8485FA |
  LDA.W #$0014                              ; $8485FD |
  MVN $70,$7F                               ; $848600 |
  PLB                                       ; $848603 |
  REP #$30                                  ; $848604 |
  PHB                                       ; $848606 |
  LDY.W #$0320                              ; $848607 |
  LDA.W #$0014                              ; $84860A |
  MVN $70,$7F                               ; $84860D |
  PLB                                       ; $848610 |
  JSL.L CODE_FL_96FB63                      ; $848611 |

CODE_848615:
  STZ.B $C4                                 ; $848615 |
  PLY                                       ; $848617 |
  PLX                                       ; $848618 |
  RTL                                       ; $848619 |

CODE_FL_84861A:
  LDA.W #$0004                              ; $84861A |
  BRA CODE_84862C                           ; $84861D |

  LDA.W #$0003                              ; $84861F |
  BRA CODE_84862C                           ; $848622 |

CODE_FL_848624:
  LDA.W #$0002                              ; $848624 |
  BRA CODE_84862C                           ; $848627 |

CODE_FL_848629:
  LDA.W #$0001                              ; $848629 |

CODE_84862C:
  STA.W $1D60                               ; $84862C |
  STZ.W $1D62                               ; $84862F |
  STZ.W $1D74                               ; $848632 |
  LDA.W #$000F                              ; $848635 |
  STA.W $1FA4                               ; $848638 |
  STZ.W $1FDA                               ; $84863B |
  STZ.W $1FD4                               ; $84863E |
  STZ.W $1D64                               ; $848641 |
  STZ.W $1D66                               ; $848644 |
  LDA.W #$0080                              ; $848647 |
  STA.W $1FC6                               ; $84864A |
  RTL                                       ; $84864D |

  STZ.W $1D60                               ; $84864E |
  STZ.W $1D62                               ; $848651 |
  RTL                                       ; $848654 |

CODE_FL_848655:
  LDA.W $1D60                               ; $848655 |
  BEQ CODE_848668                           ; $848658 |
  DEC A                                     ; $84865A |
  ASL A                                     ; $84865B |
  TAX                                       ; $84865C |
  JMP.W (PTR16_848660,X)                    ; $84865D |

PTR16_848660:
  dw CODE_848669                            ; $848660 |
  dw CODE_8486D0                            ; $848662 |
  dw CODE_8487F6                            ; $848664 |
  dw CODE_8489BA                            ; $848666 |

CODE_848668:
  RTL                                       ; $848668 |

CODE_848669:
  LDA.W $1D64                               ; $848669 |
  JSR.W CODE_FN_848686                      ; $84866C |
  STY.W $1FC8                               ; $84866F |
  STA.W $1FCA                               ; $848672 |
  LDA.W $1D66                               ; $848675 |
  JSR.W CODE_FN_848686                      ; $848678 |
  STY.W $1FCE                               ; $84867B |
  EOR.W #$FFFF                              ; $84867E |
  INC A                                     ; $848681 |
  STA.W $1FCC                               ; $848682 |
  RTL                                       ; $848685 |

CODE_FN_848686:
  CLC                                       ; $848686 |
  ADC.W #$0100                              ; $848687 |
  STA.B $08                                 ; $84868A |
  TAY                                       ; $84868C |
  LDA.W $1FC6                               ; $84868D |
  LSR A                                     ; $848690 |
  BCC CODE_84869C                           ; $848691 |
  LDA.W #$01FF                              ; $848693 |
  SEC                                       ; $848696 |
  SBC.W $1FD4                               ; $848697 |
  BRA CODE_84869F                           ; $84869A |

CODE_84869C:
  LDA.W $1FD4                               ; $84869C |

CODE_84869F:
  ASL A                                     ; $84869F |
  TAX                                       ; $8486A0 |
  LDA.L DATA8_978100,X                      ; $8486A1 |
  STA.B $0A                                 ; $8486A5 |
  JSL.L CODE_FL_808E05                      ; $8486A7 |
  LDA.B $01                                 ; $8486AB |
  ASL.B $0A                                 ; $8486AD |
  BCC CODE_8486B5                           ; $8486AF |
  EOR.W #$FFFF                              ; $8486B1 |
  INC A                                     ; $8486B4 |

CODE_8486B5:
  STA.B $0C                                 ; $8486B5 |
  LDA.L DATA8_978000,X                      ; $8486B7 |
  STA.B $0A                                 ; $8486BB |
  LDY.B $08                                 ; $8486BD |
  JSL.L CODE_FL_808E05                      ; $8486BF |
  LDA.B $01                                 ; $8486C3 |
  ASL.B $0A                                 ; $8486C5 |
  BCC CODE_8486CD                           ; $8486C7 |
  EOR.W #$FFFF                              ; $8486C9 |
  INC A                                     ; $8486CC |

CODE_8486CD:
  LDY.B $0C                                 ; $8486CD |
  RTS                                       ; $8486CF |

CODE_8486D0:
  LDA.W $1D68                               ; $8486D0 |
  CLC                                       ; $8486D3 |
  ADC.W #$0080                              ; $8486D4 |
  STA.B $08                                 ; $8486D7 |
  LDA.W $1FDA                               ; $8486D9 |
  BPL CODE_8486E2                           ; $8486DC |
  EOR.W #$FFFF                              ; $8486DE |
  INC A                                     ; $8486E1 |

CODE_8486E2:
  AND.W #$007F                              ; $8486E2 |
  ASL A                                     ; $8486E5 |
  TAX                                       ; $8486E6 |
  LDA.L DATA8_978000,X                      ; $8486E7 |
  XBA                                       ; $8486EB |
  STA.W $4204                               ; $8486EC |
  SEP #$20                                  ; $8486EF |
  LDA.L DATA8_978100,X                      ; $8486F1 |
  STA.W $4206                               ; $8486F5 |
  REP #$20                                  ; $8486F8 |
  LDA.W $1D64                               ; $8486FA |
  AND.W #$00FF                              ; $8486FD |
  CLC                                       ; $848700 |
  ADC.W #$0080                              ; $848701 |
  XBA                                       ; $848704 |
  STA.B $10                                 ; $848705 |
  LDA.W $4214                               ; $848707 |
  LDY.W $1FDA                               ; $84870A |
  BPL CODE_848713                           ; $84870D |
  EOR.W #$FFFF                              ; $84870F |
  INC A                                     ; $848712 |

CODE_848713:
  STA.B $14                                 ; $848713 |
  TAY                                       ; $848715 |
  LDA.B $08                                 ; $848716 |
  JSL.L CODE_FL_808E18                      ; $848718 |
  LDA.B $00                                 ; $84871C |
  STA.B $1C                                 ; $84871E |
  LDA.B $02                                 ; $848720 |
  STA.B $1E                                 ; $848722 |
  LDA.W #$0100                              ; $848724 |
  SEC                                       ; $848727 |
  SBC.L DATA8_978100,X                      ; $848728 |
  XBA                                       ; $84872C |
  STA.W $4204                               ; $84872D |
  SEP #$20                                  ; $848730 |
  LDA.L DATA8_978100,X                      ; $848732 |
  STA.W $4206                               ; $848736 |
  REP #$20                                  ; $848739 |
  NOP                                       ; $84873B |
  NOP                                       ; $84873C |
  NOP                                       ; $84873D |
  NOP                                       ; $84873E |
  NOP                                       ; $84873F |
  NOP                                       ; $848740 |
  NOP                                       ; $848741 |
  LDA.W $4214                               ; $848742 |
  STA.B $12                                 ; $848745 |
  TAY                                       ; $848747 |
  LDA.B $08                                 ; $848748 |
  JSL.L CODE_FL_808E18                      ; $84874A |
  LDA.B $00                                 ; $84874E |
  STA.B $18                                 ; $848750 |
  LDA.B $02                                 ; $848752 |
  STA.B $1A                                 ; $848754 |
  LDA.B $10                                 ; $848756 |
  STA.W $4204                               ; $848758 |
  JSR.W CODE_FN_84876A                      ; $84875B |
  LDA.L $7EDAC0                             ; $84875E |
  EOR.W #$0001                              ; $848762 |
  STA.L $7EDAC0                             ; $848765 |
  RTL                                       ; $848769 |

CODE_FN_84876A:
  PHB                                       ; $84876A |
  PEA.W $7E00                               ; $84876B |
  PLB                                       ; $84876E |
  PLB                                       ; $84876F |
  LDA.W LOOSE_OP_00DABF                     ; $848770 |
  AND.W #$0100                              ; $848773 |
  EOR.W #$0100                              ; $848776 |
  ASL A                                     ; $848779 |
  TAY                                       ; $84877A |
  LDA.W $1FF0                               ; $84877B |
  STA.B $0A                                 ; $84877E |
  LDA.W #$0060                              ; $848780 |
  STA.B $0C                                 ; $848783 |
  BIT.W $1D74                               ; $848785 |
  BMI CODE_8487D8                           ; $848788 |

CODE_84878A:
  LDA.W #$0080                              ; $84878A |
  SEC                                       ; $84878D |
  SBC.B $1D                                 ; $84878E |
  SEP #$20                                  ; $848790 |
  STA.L $004206                             ; $848792 |
  REP #$20                                  ; $848796 |
  LDA.B $0A                                 ; $848798 |
  SEC                                       ; $84879A |
  SBC.B $19                                 ; $84879B |
  STA.W LOOSE_OP_00EAC4,Y                   ; $84879D |
  TYA                                       ; $8487A0 |
  ASL A                                     ; $8487A1 |
  TAX                                       ; $8487A2 |
  LDA.L $004214                             ; $8487A3 |
  STA.W CODE_00DAC4,X                       ; $8487A7 |
  STA.W CODE_00E2C6,X                       ; $8487AA |
  TDC                                       ; $8487AD |
  STA.W LOOSE_OP_00DAC6,X                   ; $8487AE |
  STA.W CODE_00E2C4,X                       ; $8487B1 |
  LDA.B $1C                                 ; $8487B4 |
  SEC                                       ; $8487B6 |
  SBC.B $14                                 ; $8487B7 |
  STA.B $1C                                 ; $8487B9 |
  LDA.B $1E                                 ; $8487BB |
  SBC.W #$0000                              ; $8487BD |
  STA.B $1E                                 ; $8487C0 |
  LDA.B $18                                 ; $8487C2 |
  SEC                                       ; $8487C4 |
  SBC.B $12                                 ; $8487C5 |
  STA.B $18                                 ; $8487C7 |
  LDA.B $1A                                 ; $8487C9 |
  SBC.W #$0000                              ; $8487CB |
  STA.B $1A                                 ; $8487CE |
  INY                                       ; $8487D0 |
  INY                                       ; $8487D1 |
  DEC.B $0C                                 ; $8487D2 |
  BNE CODE_84878A                           ; $8487D4 |
  PLB                                       ; $8487D6 |
  RTS                                       ; $8487D7 |

CODE_8487D8:
  LDA.B $0A                                 ; $8487D8 |
  SEC                                       ; $8487DA |
  SBC.B $19                                 ; $8487DB |
  STA.W LOOSE_OP_00EAC4,Y                   ; $8487DD |
  LDA.B $18                                 ; $8487E0 |
  SEC                                       ; $8487E2 |
  SBC.B $12                                 ; $8487E3 |
  STA.B $18                                 ; $8487E5 |
  LDA.B $1A                                 ; $8487E7 |
  SBC.W #$0000                              ; $8487E9 |
  STA.B $1A                                 ; $8487EC |
  INY                                       ; $8487EE |
  INY                                       ; $8487EF |
  DEC.B $0C                                 ; $8487F0 |
  BNE CODE_8487D8                           ; $8487F2 |
  PLB                                       ; $8487F4 |
  RTS                                       ; $8487F5 |

CODE_8487F6:
  LDA.W $1D68                               ; $8487F6 |
  BNE CODE_8487FE                           ; $8487F9 |
  LDA.W #$0002                              ; $8487FB |

CODE_8487FE:
  CMP.W #$0078                              ; $8487FE |
  BMI CODE_848812                           ; $848801 |
  BEQ CODE_848812                           ; $848803 |
  SEC                                       ; $848805 |
  SBC.W #$0078                              ; $848806 |
  STA.B $10                                 ; $848809 |
  LDA.W #$0078                              ; $84880B |
  STA.B $12                                 ; $84880E |
  BRA CODE_84881A                           ; $848810 |

CODE_848812:
  DEC A                                     ; $848812 |
  STA.B $10                                 ; $848813 |
  LDA.W #$0001                              ; $848815 |
  STA.B $12                                 ; $848818 |

CODE_84881A:
  LDX.W #$EF04                              ; $84881A |
  SEP #$20                                  ; $84881D |
  LDA.B $10                                 ; $84881F |
  STA.L $7E0000,X                           ; $848821 |
  LDA.B $12                                 ; $848825 |
  STA.L $7E0002,X                           ; $848827 |
  LDA.B #$01                                ; $84882B |
  STA.L $7E0004,X                           ; $84882D |
  TDC                                       ; $848831 |
  STA.L $7E0006,X                           ; $848832 |
  LDA.W $1FC6                               ; $848836 |
  STA.L $7E0005,X                           ; $848839 |
  EOR.B #$02                                ; $84883D |
  STA.L $7E0001,X                           ; $84883F |
  STA.L $7E0003,X                           ; $848843 |
  REP #$20                                  ; $848847 |
  LDX.W #$EEC4                              ; $848849 |
  SEP #$20                                  ; $84884C |
  LDA.B $10                                 ; $84884E |
  STA.L $7E0000,X                           ; $848850 |
  LDA.B $12                                 ; $848854 |
  STA.L $7E0003,X                           ; $848856 |
  LDA.B #$01                                ; $84885A |
  STA.L $7E0006,X                           ; $84885C |
  TDC                                       ; $848860 |
  STA.L $7E0009,X                           ; $848861 |
  REP #$20                                  ; $848865 |
  LDA.W $1D72                               ; $848867 |
  CLC                                       ; $84886A |
  ADC.W $1D68                               ; $84886B |
  CLC                                       ; $84886E |
  ADC.W #$0080                              ; $84886F |
  STA.L $7E0001,X                           ; $848872 |
  STA.L $7E0004,X                           ; $848876 |
  LDA.W $1FD2                               ; $84887A |
  CLC                                       ; $84887D |
  ADC.W #$0180                              ; $84887E |
  SEC                                       ; $848881 |
  SBC.W $1D68                               ; $848882 |
  STA.L $7E0007,X                           ; $848885 |
  LDA.W $1D6A                               ; $848889 |
  AND.W #$00FF                              ; $84888C |
  STA.W $1D6A                               ; $84888F |
  JSR.W CODE_FN_8489B4                      ; $848892 |
  STA.B $08                                 ; $848895 |
  LDA.W #$0080                              ; $848897 |
  SEC                                       ; $84889A |
  SBC.W $1D6A                               ; $84889B |
  STA.B $0A                                 ; $84889E |
  STA.B $0C                                 ; $8488A0 |
  LDA.W $1D6A                               ; $8488A2 |
  XBA                                       ; $8488A5 |
  AND.W #$FF00                              ; $8488A6 |
  STA.B $0E                                 ; $8488A9 |
  STZ.B $18                                 ; $8488AB |
  LDA.W $1D68                               ; $8488AD |
  ASL A                                     ; $8488B0 |
  STA.B $1A                                 ; $8488B1 |

CODE_8488B3:
  LDA.B $0E                                 ; $8488B3 |
  STA.W $4204                               ; $8488B5 |
  SEP #$20                                  ; $8488B8 |
  LDA.B $18                                 ; $8488BA |
  STA.W $4206                               ; $8488BC |
  REP #$20                                  ; $8488BF |
  LDA.B $1A                                 ; $8488C1 |
  ASL A                                     ; $8488C3 |
  TAX                                       ; $8488C4 |
  TDC                                       ; $8488C5 |
  STA.L $7EDAC6,X                           ; $8488C6 |
  STA.L $7EE2C4,X                           ; $8488CA |
  STZ.B $06                                 ; $8488CE |
  LDA.W $4214                               ; $8488D0 |
  STA.L $7EDAC4,X                           ; $8488D3 |
  STA.L $7EE2C6,X                           ; $8488D7 |
  LDA.B $08                                 ; $8488DB |
  CLC                                       ; $8488DD |
  ADC.B $0C                                 ; $8488DE |
  BPL CODE_8488E8                           ; $8488E0 |
  EOR.W #$FFFF                              ; $8488E2 |
  INC A                                     ; $8488E5 |
  INC.B $06                                 ; $8488E6 |

CODE_8488E8:
  STA.W $4204                               ; $8488E8 |
  SEP #$20                                  ; $8488EB |
  LDA.W $1D6A                               ; $8488ED |
  STA.W $4206                               ; $8488F0 |
  REP #$20                                  ; $8488F3 |
  LDA.B $0C                                 ; $8488F5 |
  CLC                                       ; $8488F7 |
  ADC.B $0A                                 ; $8488F8 |
  STA.B $0C                                 ; $8488FA |
  LDX.B $1A                                 ; $8488FC |
  LDA.W $167A                               ; $8488FE |
  LDY.B $06                                 ; $848901 |
  BEQ CODE_84890B                           ; $848903 |
  CLC                                       ; $848905 |
  ADC.W $4214                               ; $848906 |
  BRA CODE_84890F                           ; $848909 |

CODE_84890B:
  SEC                                       ; $84890B |
  SBC.W $4214                               ; $84890C |

CODE_84890F:
  STA.L $7EEAC4,X                           ; $84890F |
  INC.B $18                                 ; $848913 |
  DEC.B $1A                                 ; $848915 |
  DEC.B $1A                                 ; $848917 |
  BNE CODE_8488B3                           ; $848919 |
  LDA.W $1D6E                               ; $84891B |
  AND.W #$00FF                              ; $84891E |
  STA.W $1D6E                               ; $848921 |
  JSR.W CODE_FN_8489B4                      ; $848924 |
  STA.B $08                                 ; $848927 |
  LDA.W #$0080                              ; $848929 |
  CLC                                       ; $84892C |
  ADC.W $1D6E                               ; $84892D |
  STA.B $0A                                 ; $848930 |
  STA.B $0C                                 ; $848932 |
  LDA.W $1D6E                               ; $848934 |
  XBA                                       ; $848937 |
  AND.W #$FF00                              ; $848938 |
  STA.B $0E                                 ; $84893B |
  STZ.B $18                                 ; $84893D |
  LDA.W $1D68                               ; $84893F |
  ASL A                                     ; $848942 |
  STA.B $1A                                 ; $848943 |

CODE_848945:
  LDA.B $0E                                 ; $848945 |
  STA.W $4204                               ; $848947 |
  SEP #$20                                  ; $84894A |
  LDA.B $18                                 ; $84894C |
  STA.W $4206                               ; $84894E |
  REP #$20                                  ; $848951 |
  LDA.B $1A                                 ; $848953 |
  ASL A                                     ; $848955 |
  TAX                                       ; $848956 |
  TDC                                       ; $848957 |
  STA.L $7EDAC6,X                           ; $848958 |
  STA.L $7EE2C4,X                           ; $84895C |
  STZ.B $06                                 ; $848960 |
  LDA.W $4214                               ; $848962 |
  STA.L $7EDAC4,X                           ; $848965 |
  STA.L $7EE2C6,X                           ; $848969 |
  LDA.B $08                                 ; $84896D |
  SEC                                       ; $84896F |
  SBC.B $0C                                 ; $848970 |
  BCS CODE_84897A                           ; $848972 |
  EOR.W #$FFFF                              ; $848974 |
  INC A                                     ; $848977 |
  INC.B $06                                 ; $848978 |

CODE_84897A:
  STA.W $4204                               ; $84897A |
  SEP #$20                                  ; $84897D |
  LDA.W $1D6E                               ; $84897F |
  STA.W $4206                               ; $848982 |
  REP #$20                                  ; $848985 |
  LDA.B $0C                                 ; $848987 |
  CLC                                       ; $848989 |
  ADC.B $0A                                 ; $84898A |
  STA.B $0C                                 ; $84898C |
  LDX.B $1A                                 ; $84898E |
  INC.B $1A                                 ; $848990 |
  INC.B $1A                                 ; $848992 |
  LDA.W $1672                               ; $848994 |
  LDY.B $06                                 ; $848997 |
  BEQ CODE_8489A1                           ; $848999 |
  CLC                                       ; $84899B |
  ADC.W $4214                               ; $84899C |
  BRA CODE_8489A5                           ; $84899F |

CODE_8489A1:
  SEC                                       ; $8489A1 |
  SBC.W $4214                               ; $8489A2 |

CODE_8489A5:
  STA.L $7EEAC4,X                           ; $8489A5 |
  INC.B $18                                 ; $8489A9 |
  LDA.B $1A                                 ; $8489AB |
  LSR A                                     ; $8489AD |
  CMP.W #$00E0                              ; $8489AE |
  BMI CODE_848945                           ; $8489B1 |
  RTL                                       ; $8489B3 |

CODE_FN_8489B4:
  XBA                                       ; $8489B4 |
  AND.W #$FF00                              ; $8489B5 |
  LSR A                                     ; $8489B8 |
  RTS                                       ; $8489B9 |

CODE_8489BA:
  LDA.W $1FDA                               ; $8489BA |
  BPL CODE_8489C3                           ; $8489BD |
  EOR.W #$FFFF                              ; $8489BF |
  INC A                                     ; $8489C2 |

CODE_8489C3:
  AND.W #$007F                              ; $8489C3 |
  ASL A                                     ; $8489C6 |
  TAX                                       ; $8489C7 |
  LDA.L DATA8_978000,X                      ; $8489C8 |
  XBA                                       ; $8489CC |
  STA.W $4204                               ; $8489CD |
  SEP #$20                                  ; $8489D0 |
  LDA.L DATA8_978100,X                      ; $8489D2 |
  STA.W $4206                               ; $8489D6 |
  REP #$20                                  ; $8489D9 |
  LDA.W $1D66                               ; $8489DB |
  CLC                                       ; $8489DE |
  ADC.W #$0080                              ; $8489DF |
  XBA                                       ; $8489E2 |
  STA.B $00                                 ; $8489E3 |
  LDY.W $4214                               ; $8489E5 |
  LDA.W #$0100                              ; $8489E8 |
  SEC                                       ; $8489EB |
  SBC.L DATA8_978100,X                      ; $8489EC |
  XBA                                       ; $8489F0 |
  STA.W $4204                               ; $8489F1 |
  SEP #$20                                  ; $8489F4 |
  LDA.L DATA8_978100,X                      ; $8489F6 |
  STA.W $4206                               ; $8489FA |
  REP #$20                                  ; $8489FD |
  STZ.B $0E                                 ; $8489FF |
  TYA                                       ; $848A01 |
  LDY.W $1FDA                               ; $848A02 |
  BPL CODE_848A0D                           ; $848A05 |
  DEC.B $0E                                 ; $848A07 |
  EOR.W #$FFFF                              ; $848A09 |
  INC A                                     ; $848A0C |

CODE_848A0D:
  STA.B $0C                                 ; $848A0D |
  STZ.B $14                                 ; $848A0F |
  STZ.B $16                                 ; $848A11 |
  LDA.W $4214                               ; $848A13 |
  BMI CODE_848A1C                           ; $848A16 |
  EOR.W #$FFFF                              ; $848A18 |
  INC A                                     ; $848A1B |

CODE_848A1C:
  LDY.W $1FDA                               ; $848A1C |
  BNE CODE_848A27                           ; $848A1F |
  STZ.B $08                                 ; $848A21 |
  STZ.B $0A                                 ; $848A23 |
  BRA CODE_848A2E                           ; $848A25 |

CODE_848A27:
  STA.B $08                                 ; $848A27 |
  LDA.W #$FFFF                              ; $848A29 |
  STA.B $0A                                 ; $848A2C |

CODE_848A2E:
  STZ.B $10                                 ; $848A2E |
  STZ.B $12                                 ; $848A30 |
  LDA.B $00                                 ; $848A32 |
  STA.W $4204                               ; $848A34 |
  JSR.W CODE_FN_848A46                      ; $848A37 |
  LDA.L $7EDAC0                             ; $848A3A |
  EOR.W #$0001                              ; $848A3E |
  STA.L $7EDAC0                             ; $848A41 |
  RTL                                       ; $848A45 |

CODE_FN_848A46:
  PHB                                       ; $848A46 |
  PEA.W $7E00                               ; $848A47 |
  PLB                                       ; $848A4A |
  PLB                                       ; $848A4B |
  LDA.W LOOSE_OP_00DABF                     ; $848A4C |
  AND.W #$0100                              ; $848A4F |
  EOR.W #$0100                              ; $848A52 |
  CLC                                       ; $848A55 |
  ADC.W #$0080                              ; $848A56 |
  ASL A                                     ; $848A59 |
  TAY                                       ; $848A5A |
  STY.B $02                                 ; $848A5B |
  LDA.W #$0080                              ; $848A5D |
  STA.B $18                                 ; $848A60 |
  LDA.W $1FF0                               ; $848A62 |
  STA.B $1A                                 ; $848A65 |
  BIT.W $1D74                               ; $848A67 |
  BPL CODE_848A6F                           ; $848A6A |
  JMP.W CODE_JP_848B22                      ; $848A6C |

CODE_848A6F:
  LDA.W #$0080                              ; $848A6F |
  CLC                                       ; $848A72 |
  ADC.B $15                                 ; $848A73 |
  SEP #$20                                  ; $848A75 |
  STA.L $004206                             ; $848A77 |
  REP #$20                                  ; $848A7B |
  LDA.B $1A                                 ; $848A7D |
  SEC                                       ; $848A7F |
  SBC.B $11                                 ; $848A80 |
  STA.W LOOSE_OP_00EAC4,Y                   ; $848A82 |
  TYA                                       ; $848A85 |
  ASL A                                     ; $848A86 |
  TAX                                       ; $848A87 |
  LDA.L $004214                             ; $848A88 |
  STA.W CODE_00DAC4,X                       ; $848A8C |
  STA.W CODE_00E2C6,X                       ; $848A8F |
  TDC                                       ; $848A92 |
  STA.W LOOSE_OP_00DAC6,X                   ; $848A93 |
  STA.W CODE_00E2C4,X                       ; $848A96 |
  LDA.B $14                                 ; $848A99 |
  SEC                                       ; $848A9B |
  SBC.B $0C                                 ; $848A9C |
  STA.B $14                                 ; $848A9E |
  LDA.B $16                                 ; $848AA0 |
  SBC.B $0E                                 ; $848AA2 |
  STA.B $16                                 ; $848AA4 |
  LDA.B $10                                 ; $848AA6 |
  SEC                                       ; $848AA8 |
  SBC.B $08                                 ; $848AA9 |
  STA.B $10                                 ; $848AAB |
  LDA.B $12                                 ; $848AAD |
  SBC.B $0A                                 ; $848AAF |
  STA.B $12                                 ; $848AB1 |
  DEY                                       ; $848AB3 |
  DEY                                       ; $848AB4 |
  DEC.B $18                                 ; $848AB5 |
  BPL CODE_848A6F                           ; $848AB7 |
  LDY.B $02                                 ; $848AB9 |
  LDA.W #$0060                              ; $848ABB |
  STA.B $18                                 ; $848ABE |
  TDC                                       ; $848AC0 |
  CLC                                       ; $848AC1 |
  ADC.B $0C                                 ; $848AC2 |
  STA.B $14                                 ; $848AC4 |
  TDC                                       ; $848AC6 |
  ADC.B $0E                                 ; $848AC7 |
  STA.B $16                                 ; $848AC9 |
  TDC                                       ; $848ACB |
  CLC                                       ; $848ACC |
  ADC.B $08                                 ; $848ACD |
  STA.B $10                                 ; $848ACF |
  TDC                                       ; $848AD1 |
  ADC.B $0A                                 ; $848AD2 |
  STA.B $12                                 ; $848AD4 |

CODE_848AD6:
  LDA.W #$0080                              ; $848AD6 |
  CLC                                       ; $848AD9 |
  ADC.B $15                                 ; $848ADA |
  SEP #$20                                  ; $848ADC |
  STA.L $004206                             ; $848ADE |
  REP #$20                                  ; $848AE2 |
  LDA.B $1A                                 ; $848AE4 |
  CLC                                       ; $848AE6 |
  ADC.B $11                                 ; $848AE7 |
  STA.W LOOSE_OP_00EAC4,Y                   ; $848AE9 |
  TYA                                       ; $848AEC |
  ASL A                                     ; $848AED |
  TAX                                       ; $848AEE |
  LDA.L $004214                             ; $848AEF |
  STA.W CODE_00DAC4,X                       ; $848AF3 |
  STA.W CODE_00E2C6,X                       ; $848AF6 |
  TDC                                       ; $848AF9 |
  STA.W LOOSE_OP_00DAC6,X                   ; $848AFA |
  STA.W CODE_00E2C4,X                       ; $848AFD |
  LDA.B $14                                 ; $848B00 |
  CLC                                       ; $848B02 |
  ADC.B $0C                                 ; $848B03 |
  STA.B $14                                 ; $848B05 |
  LDA.B $16                                 ; $848B07 |
  ADC.B $0E                                 ; $848B09 |
  STA.B $16                                 ; $848B0B |
  LDA.B $10                                 ; $848B0D |
  CLC                                       ; $848B0F |
  ADC.B $08                                 ; $848B10 |
  STA.B $10                                 ; $848B12 |
  LDA.B $12                                 ; $848B14 |
  ADC.B $0A                                 ; $848B16 |
  STA.B $12                                 ; $848B18 |
  INY                                       ; $848B1A |
  INY                                       ; $848B1B |
  DEC.B $18                                 ; $848B1C |
  BNE CODE_848AD6                           ; $848B1E |
  PLB                                       ; $848B20 |
  RTS                                       ; $848B21 |

CODE_JP_848B22:
  LDA.B $1A                                 ; $848B22 |
  SEC                                       ; $848B24 |
  SBC.B $11                                 ; $848B25 |
  STA.W LOOSE_OP_00EAC4,Y                   ; $848B27 |
  LDA.B $10                                 ; $848B2A |
  SEC                                       ; $848B2C |
  SBC.B $08                                 ; $848B2D |
  STA.B $10                                 ; $848B2F |
  LDA.B $12                                 ; $848B31 |
  SBC.B $0A                                 ; $848B33 |
  STA.B $12                                 ; $848B35 |
  DEY                                       ; $848B37 |
  DEY                                       ; $848B38 |
  DEC.B $18                                 ; $848B39 |
  BNE CODE_JP_848B22                        ; $848B3B |
  LDY.B $02                                 ; $848B3D |
  LDA.W #$0060                              ; $848B3F |
  STA.B $18                                 ; $848B42 |
  TDC                                       ; $848B44 |
  CLC                                       ; $848B45 |
  ADC.B $08                                 ; $848B46 |
  STA.B $10                                 ; $848B48 |
  TDC                                       ; $848B4A |
  ADC.B $0A                                 ; $848B4B |
  STA.B $12                                 ; $848B4D |

CODE_848B4F:
  LDA.B $1A                                 ; $848B4F |
  CLC                                       ; $848B51 |
  ADC.B $11                                 ; $848B52 |
  STA.W LOOSE_OP_00EAC4,Y                   ; $848B54 |
  LDA.B $10                                 ; $848B57 |
  CLC                                       ; $848B59 |
  ADC.B $08                                 ; $848B5A |
  STA.B $10                                 ; $848B5C |
  LDA.B $12                                 ; $848B5E |
  ADC.B $0A                                 ; $848B60 |
  STA.B $12                                 ; $848B62 |
  INY                                       ; $848B64 |
  INY                                       ; $848B65 |
  DEC.B $18                                 ; $848B66 |
  BNE CODE_848B4F                           ; $848B68 |
  PLB                                       ; $848B6A |
  RTS                                       ; $848B6B |

CODE_FL_848B6C:
  LDA.W $1D60                               ; $848B6C |
  BEQ CODE_848BBE                           ; $848B6F |
  LDA.W #$2100                              ; $848B71 |
  TCD                                       ; $848B74 |
  SEP #$20                                  ; $848B75 |
  LDA.W $1FC6                               ; $848B77 |
  STA.B $1A                                 ; $848B7A |
  LDA.W $1FC8                               ; $848B7C |
  STA.B $1B                                 ; $848B7F |
  LDA.W $1FC9                               ; $848B81 |
  STA.B $1B                                 ; $848B84 |
  LDA.W $1FCA                               ; $848B86 |
  STA.B $1C                                 ; $848B89 |
  LDA.W $1FCB                               ; $848B8B |
  STA.B $1C                                 ; $848B8E |
  LDA.W $1FCC                               ; $848B90 |
  STA.B $1D                                 ; $848B93 |
  LDA.W $1FCD                               ; $848B95 |
  STA.B $1D                                 ; $848B98 |
  LDA.W $1FCE                               ; $848B9A |
  STA.B $1E                                 ; $848B9D |
  LDA.W $1FCF                               ; $848B9F |
  STA.B $1E                                 ; $848BA2 |
  LDA.W $1FD0                               ; $848BA4 |
  STA.B $1F                                 ; $848BA7 |
  LDA.W $1FD1                               ; $848BA9 |
  STA.B $1F                                 ; $848BAC |
  LDA.W $1FD2                               ; $848BAE |
  STA.B $20                                 ; $848BB1 |
  LDA.W $1FD3                               ; $848BB3 |
  STA.B $20                                 ; $848BB6 |
  REP #$20                                  ; $848BB8 |
  LDA.W #$0000                              ; $848BBA |
  TCD                                       ; $848BBD |

CODE_848BBE:
  RTL                                       ; $848BBE |

  db $CC,$8A,$2A,$8B,$5F,$8B,$C1,$8B        ; $848BBF |
  db $1A,$8C,$57,$8C,$AD,$8C,$08,$8D        ; $848BC7 |
  db $5E,$8D,$C6,$8D,$17,$8E,$77,$8E        ; $848BCF |
  db $BE,$8E,$00,$8F,$4C,$8F,$93,$8F        ; $848BD7 |
  db $E4,$8F,$35,$90,$86,$90,$D7,$90        ; $848BDF |
  db $2D,$91,$7E,$91,$D9,$91,$25,$92        ; $848BE7 |
  db $80,$92,$CC,$92,$16,$93,$58,$93        ; $848BEF |
  db $9A,$93,$E1,$93,$28,$94,$74,$94        ; $848BF7 |
  db $C0,$94                                ; $848BFF |
  db $07,$95                                ; $848C01 |
  db $53,$95,$AE,$95,$FF,$95,$46,$96        ; $848C03 |
  db $88,$96,$D6,$96,$13,$97,$5A,$8A        ; $848C0B |
  db $5F,$97                                ; $848C13 |
  db $AF,$97                                ; $848C15 |
  db $AD,$B5                                ; $848C17 |
  db $4A,$98,$A3,$98,$F7,$98,$39,$99        ; $848C19 |
  db $7D,$99,$BF,$99,$0D,$9A,$4F,$9A        ; $848C21 |
  db $96,$9A,$DD,$9A,$2E,$9B,$75,$9B        ; $848C29 |
  db $BC,$9B,$03,$9C,$45,$9C,$7D,$9C        ; $848C31 |
  db $C4,$9C,$FC,$9C,$4D,$9D,$9B,$9D        ; $848C39 |
  db $D8,$9D,$24,$9E,$6B,$9E,$AD,$9E        ; $848C41 |
  db $E7,$9E,$29,$9F,$6B,$9F,$B2,$9F        ; $848C49 |
  db $FE,$9F,$4F,$A0,$96,$A0,$D8,$A0        ; $848C51 |
  db $1A,$A1,$59,$A1,$91,$A1,$D0,$A1        ; $848C59 |
  db $26,$A2,$63,$A2,$A5,$A2,$E2,$A2        ; $848C61 |
  db $24,$A3,$57,$A3,$94,$A3,$EF,$A3        ; $848C69 |
  db $36,$A4,$73,$A4,$B5,$A4,$F7,$A4        ; $848C71 |
  db $31,$A5,$70,$A5,$B2,$A5,$12,$A6        ; $848C79 |
  db $56,$A6,$93,$A6,$E6,$A6,$3E,$A7        ; $848C81 |
  db $91,$A7                                ; $848C89 |
  db $E9,$A7                                ; $848C8B |
  db $3C,$A8,$80,$A8,$D3,$A8,$26,$A9        ; $848C8D |
  db $6D,$A9,$BE,$A9,$0F,$AA,$65,$AA        ; $848C95 |
  db $BB,$AA,$FD,$AA,$49,$AB,$8B,$AB        ; $848C9D |
  db $E1,$AB,$2D,$AC,$74,$AC,$CF,$AC        ; $848CA5 |
  db $2F,$AD,$85,$AD,$D1,$AD,$18,$AE        ; $848CAD |
  db $5A,$AE,$9C,$AE,$DE,$AE,$20,$AF        ; $848CB5 |
  db $76,$AF                                ; $848CBD |
  db $B8,$AF,$F5,$AF,$3C,$B0,$76,$B0        ; $848CBF |
  db $C2,$B0,$13,$B1,$5C,$B1,$9E,$B1        ; $848CC7 |
  db $EF,$B1                                ; $848CCF |
  db $45,$B2,$91,$B2                        ; $848CD1 |
  db $CE,$B2,$12,$B3                        ; $848CD5 |
  db $3D,$B3,$3D,$B3,$3D,$B3,$3D,$B3        ; $848CD9 |
  db $3D,$B3,$3D,$B3,$3D,$B3,$3D,$B3        ; $848CE1 |
  db $3D,$B3,$3D,$B3,$3D,$B3,$3D,$B3        ; $848CE9 |
  db $3D,$B3,$3D,$B3,$3D,$B3,$3D,$B3        ; $848CF1 |
  db $3D,$B3,$3D,$B3,$3D,$B3,$3D,$B3        ; $848CF9 |
  db $3D,$B3,$3D,$B3,$3D,$B3,$3D,$B3        ; $848D01 |
  db $3D,$B3,$3D,$B3,$3D,$B3,$3D,$B3        ; $848D09 |
  db $3D,$B3,$3D,$B3,$CC,$8A                ; $848D11 |
  db $91,$B3,$D3,$B3                        ; $848D17 |
  db $59,$B3                                ; $848D1B |
  db $10,$B4                                ; $848D1D |
  db $57,$B4                                ; $848D1F |
  db $8F,$B4,$DB,$B4,$22,$B5,$5D,$B5        ; $848D21 |
  db $EF,$B5                                ; $848D29 |
  db $5A,$8A                                ; $848D2B |
  db $2C,$B6,$73,$B6                        ; $848D2D |
  db $73,$B6                                ; $848D31 |
  db $AE,$B6                                ; $848D33 |
  db $CC,$8A,$CC,$8A,$CC,$8A,$CC,$8A        ; $848D35 |
  db $CC,$8A,$CC,$8A,$CC,$8A,$CC,$8A        ; $848D3D |
  db $CC,$8A,$CC,$8A,$CC,$8A,$CC,$8A        ; $848D45 |
  db $CC,$8A,$CC,$8A,$CC,$8A,$CC,$8A        ; $848D4D |
  db $CC,$8A,$CC,$8A,$CC,$8A,$CC,$8A        ; $848D55 |
  db $CC,$8A,$CC,$8A,$CC,$8A,$CC,$8A        ; $848D5D |
  db $CC,$8A,$CC,$8A,$CC,$8A,$CC,$8A        ; $848D65 |
  db $CC,$8A,$CC,$8A,$CC,$8A,$CC,$8A        ; $848D6D |
  db $CC,$8A,$CC,$8A,$CC,$8A,$CC,$8A        ; $848D75 |
  db $CC,$8A,$CC,$8A,$CC,$8A,$CC,$8A        ; $848D7D |
  db $CC,$8A,$CC,$8A,$CC,$8A,$CC,$8A        ; $848D85 |
  db $CC,$8A,$CC,$8A,$CC,$8A,$CC,$8A        ; $848D8D |
  db $CC,$8A,$CC,$8A,$CC,$8A,$CC,$8A        ; $848D95 |
  db $CC,$8A,$CC,$8A,$CC,$8A,$CC,$8A        ; $848D9D |
  db $CC,$8A,$CC,$8A,$CC,$8A,$CC,$8A        ; $848DA5 |
  db $CC,$8A,$CC,$8A,$CC,$8A,$CC,$8A        ; $848DAD |
  db $CC,$8A                                ; $848DB5 |
  db $1D,$CE,$5A,$CE,$97,$CE,$07,$CF        ; $848DB7 |
  db $39,$B7,$AB,$B7,$04,$B8,$5D,$B8        ; $848DBF |
  db $C5,$B8,$9D,$B9,$05,$BA,$6D,$BA        ; $848DC7 |
  db $DF,$BA,$76,$BB,$07,$BC,$6A,$BC        ; $848DCF |
  db $D7,$BC,$44,$BD,$B1,$BD                ; $848DD7 |
  db $23,$BE                                ; $848DDD |
  db $BE,$BE                                ; $848DDF |
  db $5E,$BF,$F9,$BF                        ; $848DE1 |
  db $66,$C0,$D3,$C0,$73,$C1,$0E,$C2        ; $848DE5 |
  db $B5,$C2,$53,$C4,$F0,$C4,$53,$C5        ; $848DED |
  db $B6,$C5,$19,$C6,$7C,$C6,$E9,$C6        ; $848DF5 |
  db $A5,$C7,$F6,$C7,$68,$C8,$BC,$C8        ; $848DFD |
  db $1A,$C9,$87,$C9,$DD,$C9,$47,$CA        ; $848E05 |
  db $3A,$B9,$27,$C3                        ; $848E0D |
  db $C2,$C3                                ; $848E11 |
  db $BE,$BE,$5E,$BF,$F9,$BF,$73,$C1        ; $848E13 |
  db $4D,$C2,$C2,$C3,$92,$C4,$AC,$CA        ; $848E1B |
  db $47,$C7                                ; $848E23 |
  db $76,$BB,$CC,$8A,$CC,$8A,$CC,$8A        ; $848E25 |
  db $CC,$8A,$CC,$8A,$CC,$8A,$CC,$8A        ; $848E2D |
  db $CC,$8A,$CC,$8A,$CC,$8A,$CC,$8A        ; $848E35 |
  db $CC,$8A                                ; $848E3D |
  db $4C,$CF                                ; $848E3F |
  db $68,$CF                                ; $848E41 |
  db $CE,$CF,$1D,$D0,$6C,$D0,$BB,$D0        ; $848E43 |
  db $0A,$D1,$54,$D1                        ; $848E4B |
  db $A3,$D1                                ; $848E4F |
  db $ED,$D1                                ; $848E51 |
  db $09,$D2                                ; $848E53 |
  db $25,$D2                                ; $848E55 |
  db $84,$CF,$84,$CF                        ; $848E57 |
  db $46,$D2                                ; $848E5B |
  db $4C,$CF,$90,$D2,$90,$D2                ; $848E5D |
  db $90,$D2,$DA,$D2                        ; $848E63 |
  db $DA,$D2,$DA,$D2                        ; $848E67 |
  db $24,$D3,$73,$D3,$BD,$D3,$0C,$D4        ; $848E6B |
  db $56,$D4,$A0,$D4                        ; $848E73 |
  db $EA,$D4,$3A,$D5                        ; $848E77 |
  db $84,$D5,$24,$D3                        ; $848E7B |
  db $84,$D5                                ; $848E7F |
  db $CE,$D5,$EF,$D5                        ; $848E81 |
  db $4C,$CF                                ; $848E85 |
  db $0B,$D6                                ; $848E87 |
  db $4C,$CF,$4C,$CF,$4C,$CF,$4C,$CF        ; $848E89 |
  db $4C,$CF,$4C,$CF,$4C,$CF,$4C,$CF        ; $848E91 |
  db $4C,$CF,$4C,$CF,$4C,$CF                ; $848E99 |
  db $10,$CD,$73,$CD,$AB,$CD,$DF,$CA        ; $848E9F |
  db $12,$CB                                ; $848EA7 |
  db $45,$CB                                ; $848EA9 |
  db $78,$CB,$B0,$CB                        ; $848EAB |
  db $12,$CB,$E3,$CB                        ; $848EAF |
  db $12,$CB                                ; $848EB3 |
  db $DF,$CA,$DF,$CA,$DF,$CA,$DF,$CA        ; $848EB5 |
  db $20,$CC                                ; $848EBD |
  db $53,$CC,$86,$CC,$B9,$CC,$CB,$CC        ; $848EBF |
  db $DF,$CA,$C3,$88                        ; $848EC7 |
  db $C3,$88                                ; $848ECB |
  db $C3,$88,$F6,$8B,$C3,$88,$C3,$88        ; $848ECD |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $848ED5 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $848EDD |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $848EE5 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $848EED |
  db $C3,$88,$C3,$88,$C3,$88                ; $848EF5 |
  db $F2,$92                                ; $848EFB |
  db $F2,$92                                ; $848EFD |
  db $F2,$92                                ; $848EFF |
  db $F2,$92,$F2,$92,$F2,$92,$F2,$92        ; $848F01 |
  db $F2,$92,$F2,$92                        ; $848F09 |
  db $F2,$92                                ; $848F0D |
  db $F2,$92,$F2,$92,$F2,$92,$F2,$92        ; $848F0F |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $848F17 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $848F1F |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $848F27 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $848F2F |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $848F37 |
  db $C3,$88,$C3,$88                        ; $848F3F |
  db $C3,$88                                ; $848F43 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $848F45 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $848F4D |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $848F55 |
  db $C3,$88                                ; $848F5D |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $848F5F |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $848F67 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $848F6F |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $848F77 |
  db $C3,$88,$C3,$88                        ; $848F7F |
  db $C3,$88                                ; $848F83 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $848F85 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $848F8D |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $848F95 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $848F9D |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $848FA5 |
  db $C3,$88                                ; $848FAD |
  db $C3,$88                                ; $848FAF |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $848FB1 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $848FB9 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $848FC1 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $848FC9 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $848FD1 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $848FD9 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $848FE1 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $848FE9 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $848FF1 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $848FF9 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $849001 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $849009 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $849011 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $849019 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $849021 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $849029 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $849031 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $849039 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $849041 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $849049 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $849051 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $849059 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $849061 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $849069 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $849071 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $849079 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $849081 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $849089 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $849091 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $849099 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $8490A1 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $8490A9 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $8490B1 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $8490B9 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $8490C1 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $8490C9 |
  db $04,$B9,$C3,$88,$C3,$88,$C3,$88        ; $8490D1 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $8490D9 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $8490E1 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $8490E9 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $8490F1 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $8490F9 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $849101 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $849109 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $849111 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $849119 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $849121 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $849129 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $849131 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $849139 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $849141 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $849149 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $849151 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $849159 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $849161 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $849169 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $849171 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $849179 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $849181 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $849189 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $849191 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $849199 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $8491A1 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $8491A9 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $8491B1 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $8491B9 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $8491C1 |
  db $C3,$88,$C3,$88,$C3,$88,$C3,$88        ; $8491C9 |
  db $C3,$88,$CC,$8A,$2A,$8B,$5F,$8B        ; $8491D1 |
  db $C1,$8B,$1A,$8C,$57,$8C,$AD,$8C        ; $8491D9 |
  db $08,$8D,$5E,$8D,$C6,$8D,$17,$8E        ; $8491E1 |
  db $77,$8E,$BE,$8E,$00,$8F,$4C,$8F        ; $8491E9 |
  db $93,$8F,$E4,$8F,$35,$90,$86,$90        ; $8491F1 |
  db $D7,$90,$2D,$91,$7E,$91,$D9,$91        ; $8491F9 |
  db $25,$92,$80,$92,$CC,$92,$16,$93        ; $849201 |
  db $58,$93,$9A,$93,$E1,$93,$28,$94        ; $849209 |
  db $74,$94,$C0,$94,$07,$95,$53,$95        ; $849211 |
  db $AE,$95,$FF,$95,$46,$96,$88,$96        ; $849219 |
  db $D6,$96,$13,$97,$5A,$8A,$5F,$97        ; $849221 |
  db $AF,$97,$10,$98,$4A,$98,$A3,$98        ; $849229 |
  db $F7,$98,$39,$99,$7D,$99,$BF,$99        ; $849231 |
  db $0D,$9A,$4F,$9A,$96,$9A,$DD,$9A        ; $849239 |
  db $2E,$9B,$75,$9B,$BC,$9B,$03,$9C        ; $849241 |
  db $45,$9C,$7D,$9C,$C4,$9C,$FC,$9C        ; $849249 |
  db $4D,$9D,$9B,$9D,$D8,$9D,$24,$9E        ; $849251 |
  db $6B,$9E,$AD,$9E,$E7,$9E,$29,$9F        ; $849259 |
  db $6B,$9F,$B2,$9F,$FE,$9F,$4F,$A0        ; $849261 |
  db $96,$A0,$D8,$A0,$1A,$A1,$59,$A1        ; $849269 |
  db $91,$A1,$D0,$A1,$26,$A2,$63,$A2        ; $849271 |
  db $A5,$A2,$E2,$A2,$24,$A3,$57,$A3        ; $849279 |
  db $94,$A3,$EF,$A3,$36,$A4,$73,$A4        ; $849281 |
  db $B5,$A4,$F7,$A4,$31,$A5,$70,$A5        ; $849289 |
  db $B2,$A5,$12,$A6,$56,$A6,$93,$A6        ; $849291 |
  db $E6,$A6,$3E,$A7,$91,$A7,$E9,$A7        ; $849299 |
  db $3C,$A8,$80,$A8,$D3,$A8,$26,$A9        ; $8492A1 |
  db $6D,$A9,$BE,$A9,$0F,$AA,$65,$AA        ; $8492A9 |
  db $BB,$AA,$FD,$AA,$49,$AB,$8B,$AB        ; $8492B1 |
  db $E1,$AB,$2D,$AC,$74,$AC,$CF,$AC        ; $8492B9 |
  db $2F,$AD,$85,$AD,$D1,$AD,$18,$AE        ; $8492C1 |
  db $5A,$AE,$9C,$AE,$DE,$AE,$20,$AF        ; $8492C9 |
  db $76,$AF,$B8,$AF,$F5,$AF,$3C,$B0        ; $8492D1 |
  db $76,$B0,$C2,$B0,$13,$B1,$5C,$B1        ; $8492D9 |
  db $9E,$B1,$EF,$B1,$45,$B2,$91,$B2        ; $8492E1 |
  db $CE,$B2,$12,$B3,$3D,$B3,$3D,$B3        ; $8492E9 |
  db $3D,$B3,$3D,$B3,$3D,$B3,$3D,$B3        ; $8492F1 |
  db $3D,$B3,$3D,$B3,$3D,$B3,$3D,$B3        ; $8492F9 |
  db $3D,$B3,$3D,$B3,$3D,$B3,$3D,$B3        ; $849301 |
  db $3D,$B3,$3D,$B3,$3D,$B3,$3D,$B3        ; $849309 |
  db $3D,$B3,$3D,$B3,$3D,$B3,$3D,$B3        ; $849311 |
  db $3D,$B3,$3D,$B3,$3D,$B3,$3D,$B3        ; $849319 |
  db $3D,$B3,$3D,$B3,$3D,$B3,$3D,$B3        ; $849321 |
  db $CC,$8A,$91,$B3,$D3,$B3,$59,$B3        ; $849329 |
  db $10,$B4,$57,$B4,$8F,$B4,$DB,$B4        ; $849331 |
  db $22,$B5,$5D,$B5,$CC,$8A,$5A,$8A        ; $849339 |
  db $CC,$8A,$CC,$8A,$CC,$8A,$CC,$8A        ; $849341 |
  db $CC,$8A,$CC,$8A,$CC,$8A,$CC,$8A        ; $849349 |
  db $CC,$8A,$CC,$8A,$CC,$8A,$CC,$8A        ; $849351 |
  db $CC,$8A,$CC,$8A,$CC,$8A,$CC,$8A        ; $849359 |
  db $CC,$8A,$CC,$8A,$CC,$8A,$CC,$8A        ; $849361 |
  db $CC,$8A,$CC,$8A,$CC,$8A,$CC,$8A        ; $849369 |
  db $CC,$8A,$CC,$8A,$CC,$8A,$CC,$8A        ; $849371 |
  db $CC,$8A,$CC,$8A,$CC,$8A,$CC,$8A        ; $849379 |
  db $CC,$8A,$CC,$8A,$CC,$8A,$CC,$8A        ; $849381 |
  db $CC,$8A,$CC,$8A,$CC,$8A,$CC,$8A        ; $849389 |
  db $CC,$8A,$CC,$8A,$CC,$8A,$CC,$8A        ; $849391 |
  db $CC,$8A,$CC,$8A,$CC,$8A,$CC,$8A        ; $849399 |
  db $CC,$8A,$CC,$8A,$CC,$8A,$CC,$8A        ; $8493A1 |
  db $CC,$8A,$CC,$8A,$CC,$8A,$CC,$8A        ; $8493A9 |
  db $CC,$8A,$CC,$8A,$CC,$8A,$CC,$8A        ; $8493B1 |
  db $CC,$8A,$CC,$8A,$CC,$8A,$CC,$8A        ; $8493B9 |
  db $CC,$8A,$CC,$8A,$CC,$8A,$CC,$8A        ; $8493C1 |
  db $CC,$8A,$1D,$CE,$5A,$CE,$97,$CE        ; $8493C9 |
  db $97,$CE,$39,$B7,$AB,$B7,$04,$B8        ; $8493D1 |
  db $5D,$B8,$C5,$B8,$9D,$B9,$05,$BA        ; $8493D9 |
  db $6D,$BA,$DF,$BA,$76,$BB,$07,$BC        ; $8493E1 |
  db $6A,$BC,$D7,$BC,$44,$BD,$B1,$BD        ; $8493E9 |
  db $23,$BE,$BE,$BE,$5E,$BF,$F9,$BF        ; $8493F1 |
  db $66,$C0,$D3,$C0,$73,$C1,$0E,$C2        ; $8493F9 |
  db $B5,$C2,$53,$C4,$F0,$C4,$53,$C5        ; $849401 |
  db $B6,$C5,$19,$C6,$7C,$C6,$E9,$C6        ; $849409 |
  db $A5,$C7,$F6,$C7,$68,$C8,$BC,$C8        ; $849411 |
  db $1A,$C9,$87,$C9,$DD,$C9,$47,$CA        ; $849419 |
  db $3A,$B9,$27,$C3,$C2,$C3,$BE,$BE        ; $849421 |
  db $5E,$BF,$F9,$BF,$73,$C1,$0E,$C2        ; $849429 |
  db $C2,$C3,$92,$C4,$AC,$CA,$47,$C7        ; $849431 |
  db $76,$BB,$CC,$8A,$CC,$8A,$CC,$8A        ; $849439 |
  db $CC,$8A,$CC,$8A,$CC,$8A,$CC,$8A        ; $849441 |
  db $CC,$8A,$CC,$8A,$CC,$8A,$CC,$8A        ; $849449 |
  db $CC,$8A,$4C,$CF,$68,$CF,$CE,$CF        ; $849451 |
  db $1D,$D0,$6C,$D0,$BB,$D0,$0A,$D1        ; $849459 |
  db $54,$D1,$A3,$D1,$ED,$D1,$4C,$CF        ; $849461 |
  db $4C,$CF,$4C,$CF,$4C,$CF,$6C,$D0        ; $849469 |
  db $4C,$CF,$90,$D2,$90,$D2,$90,$D2        ; $849471 |
  db $DA,$D2,$DA,$D2,$DA,$D2,$24,$D3        ; $849479 |
  db $73,$D3,$BD,$D3,$0C,$D4,$56,$D4        ; $849481 |
  db $4C,$CF,$EA,$D4,$3A,$D5,$84,$D5        ; $849489 |
  db $24,$D3,$84,$D5,$90,$D2,$4C,$CF        ; $849491 |
  db $4C,$CF,$4C,$CF,$4C,$CF,$4C,$CF        ; $849499 |
  db $4C,$CF,$4C,$CF,$4C,$CF,$4C,$CF        ; $8494A1 |
  db $4C,$CF,$4C,$CF,$4C,$CF,$4C,$CF        ; $8494A9 |
  db $4C,$CF,$10,$CD,$73,$CD,$AB,$CD        ; $8494B1 |
  db $4C,$CF,$4C,$CF,$4C,$CF,$4C,$CF        ; $8494B9 |
  db $4C,$CF,$4C,$CF,$4C,$CF,$4C,$CF        ; $8494C1 |
  db $4C,$CF,$4C,$CF,$4C,$CF,$4C,$CF        ; $8494C9 |
  db $4C,$CF,$4C,$CF,$4C,$CF,$4C,$CF        ; $8494D1 |
  db $4C,$CF,$4C,$CF                        ; $8494D9 |
  db $85,$8A,$FC,$8A,$46,$8B,$99,$8B        ; $8494DD |
  db $FE,$8B,$3B,$8C,$91,$8C,$EC,$8C        ; $8494E5 |
  db $42,$8D,$9E,$8D,$FB,$8D,$5B,$8E        ; $8494ED |
  db $A2,$8E,$E4,$8E,$30,$8F,$77,$8F        ; $8494F5 |
  db $C8,$8F,$19,$90,$6A,$90,$BB,$90        ; $8494FD |
  db $11,$91,$62,$91,$BD,$91,$09,$92        ; $849505 |
  db $64,$92,$B0,$92,$FA,$92,$3C,$93        ; $84950D |
  db $7E,$93,$C5,$93,$0C,$94,$58,$94        ; $849515 |
  db $A4,$94                                ; $84951D |
  db $EB,$94                                ; $84951F |
  db $37,$95,$92,$95,$E3,$95,$2A,$96        ; $849521 |
  db $6C,$96,$BD,$96,$F7,$96,$3E,$8A        ; $849529 |
  db $43,$97                                ; $849531 |
  db $7B,$97                                ; $849533 |
  db $91,$B5                                ; $849535 |
  db $31,$98,$75,$98,$C9,$98,$1D,$99        ; $849537 |
  db $64,$99,$A3,$99,$F4,$99,$33,$9A        ; $84953F |
  db $7A,$9A,$C1,$9A,$12,$9B,$59,$9B        ; $849547 |
  db $A0,$9B,$E7,$9B,$29,$9C,$61,$9C        ; $84954F |
  db $A8,$9C,$E0,$9C,$31,$9D,$82,$9D        ; $849557 |
  db $BC,$9D,$08,$9E,$4F,$9E,$91,$9E        ; $84955F |
  db $CE,$9E,$0D,$9F,$4F,$9F,$96,$9F        ; $849567 |
  db $E2,$9F,$33,$A0,$7A,$A0,$BC,$A0        ; $84956F |
  db $FE,$A0,$40,$A1,$75,$A1,$B7,$A1        ; $849577 |
  db $0A,$A2,$47,$A2,$89,$A2,$C6,$A2        ; $84957F |
  db $08,$A3,$3B,$A3,$78,$A3,$D3,$A3        ; $849587 |
  db $1A,$A4,$57,$A4,$99,$A4,$DB,$A4        ; $84958F |
  db $18,$A5,$57,$A5,$96,$A5,$F6,$A5        ; $849597 |
  db $3D,$A6,$77,$A6,$BE,$A6,$16,$A7        ; $84959F |
  db $69,$A7                                ; $8495A7 |
  db $C1,$A7                                ; $8495A9 |
  db $14,$A8,$58,$A8,$AB,$A8,$FE,$A8        ; $8495AB |
  db $51,$A9,$A2,$A9,$F3,$A9,$49,$AA        ; $8495B3 |
  db $9F,$AA,$E1,$AA,$2D,$AB,$6F,$AB        ; $8495BB |
  db $C5,$AB,$11,$AC,$58,$AC,$B3,$AC        ; $8495C3 |
  db $13,$AD,$69,$AD,$B5,$AD,$FC,$AD        ; $8495CB |
  db $3E,$AE,$80,$AE,$C2,$AE,$04,$AF        ; $8495D3 |
  db $5A,$AF                                ; $8495DB |
  db $9C,$AF,$D9,$AF,$20,$B0,$5D,$B0        ; $8495DD |
  db $A6,$B0,$F7,$B0,$43,$B1,$82,$B1        ; $8495E5 |
  db $D3,$B1                                ; $8495ED |
  db $29,$B2,$75,$B2                        ; $8495EF |
  db $B2,$B2,$F9,$B2                        ; $8495F3 |
  db $3D,$B3,$3D,$B3,$3D,$B3,$3D,$B3        ; $8495F7 |
  db $3D,$B3,$3D,$B3,$3D,$B3,$3D,$B3        ; $8495FF |
  db $3D,$B3,$3D,$B3,$3D,$B3,$3D,$B3        ; $849607 |
  db $3D,$B3,$3D,$B3,$3D,$B3,$3D,$B3        ; $84960F |
  db $3D,$B3,$3D,$B3,$3D,$B3,$3D,$B3        ; $849617 |
  db $3D,$B3,$3D,$B3,$3D,$B3,$3D,$B3        ; $84961F |
  db $3D,$B3,$3D,$B3,$3D,$B3,$3D,$B3        ; $849627 |
  db $3D,$B3,$3D,$B3,$85,$8A                ; $84962F |
  db $75,$B3,$B7,$B3                        ; $849635 |
  db $3D,$B3                                ; $849639 |
  db $F4,$B3                                ; $84963B |
  db $3B,$B4                                ; $84963D |
  db $73,$B4,$BF,$B4,$06,$B5,$4D,$B5        ; $84963F |
  db $D3,$B5                                ; $849647 |
  db $3E,$8A                                ; $849649 |
  db $10,$B6,$57,$B6                        ; $84964B |
  db $57,$B6                                ; $84964F |
  db $9E,$B6                                ; $849651 |
  db $85,$8A,$85,$8A,$85,$8A,$85,$8A        ; $849653 |
  db $85,$8A,$85,$8A,$85,$8A,$85,$8A        ; $84965B |
  db $85,$8A,$85,$8A,$85,$8A,$85,$8A        ; $849663 |
  db $85,$8A,$85,$8A,$85,$8A,$85,$8A        ; $84966B |
  db $85,$8A,$85,$8A,$85,$8A,$85,$8A        ; $849673 |
  db $85,$8A,$85,$8A,$85,$8A,$85,$8A        ; $84967B |
  db $85,$8A,$85,$8A,$85,$8A,$85,$8A        ; $849683 |
  db $85,$8A,$85,$8A,$85,$8A,$85,$8A        ; $84968B |
  db $85,$8A,$85,$8A,$85,$8A,$85,$8A        ; $849693 |
  db $85,$8A,$85,$8A,$85,$8A,$85,$8A        ; $84969B |
  db $85,$8A,$85,$8A,$85,$8A,$85,$8A        ; $8496A3 |
  db $85,$8A,$85,$8A,$85,$8A,$85,$8A        ; $8496AB |
  db $85,$8A,$85,$8A,$85,$8A,$85,$8A        ; $8496B3 |
  db $85,$8A,$85,$8A,$85,$8A,$85,$8A        ; $8496BB |
  db $85,$8A,$85,$8A,$85,$8A,$85,$8A        ; $8496C3 |
  db $85,$8A,$85,$8A,$85,$8A,$85,$8A        ; $8496CB |
  db $85,$8A                                ; $8496D3 |
  db $01,$CE,$3E,$CE,$7B,$CE,$EB,$CE        ; $8496D5 |
  db $0B,$B7,$7D,$B7,$D6,$B7,$2F,$B8        ; $8496DD |
  db $97,$B8,$6F,$B9,$D7,$B9,$3F,$BA        ; $8496E5 |
  db $B1,$BA,$48,$BB,$D9,$BB,$3C,$BC        ; $8496ED |
  db $A9,$BC,$16,$BD,$83,$BD                ; $8496F5 |
  db $F5,$BD                                ; $8496FB |
  db $62,$BE                                ; $8496FD |
  db $02,$BF,$9D,$BF                        ; $8496FF |
  db $38,$C0,$A5,$C0,$17,$C1,$B2,$C1        ; $849703 |
  db $87,$C2,$F7,$C3,$C2,$C4,$25,$C5        ; $84970B |
  db $88,$C5,$EB,$C5,$4E,$C6,$BB,$C6        ; $849713 |
  db $77,$C7,$DA,$C7,$3A,$C8,$8E,$C8        ; $84971B |
  db $EC,$C8,$59,$C9,$C1,$C9,$2B,$CA        ; $849723 |
  db $0C,$B9,$F9,$C2                        ; $84972B |
  db $66,$C3                                ; $84972F |
  db $90,$BE,$30,$BF,$CB,$BF,$45,$C1        ; $849731 |
  db $E0,$C1,$94,$C3,$25,$C4,$90,$CA        ; $849739 |
  db $19,$C7                                ; $849741 |
  db $AB,$BB,$85,$8A,$85,$8A,$85,$8A        ; $849743 |
  db $85,$8A,$85,$8A,$85,$8A,$85,$8A        ; $84974B |
  db $85,$8A,$85,$8A,$85,$8A,$85,$8A        ; $849753 |
  db $85,$8A                                ; $84975B |
  db $1E,$CF                                ; $84975D |
  db $1E,$CF                                ; $84975F |
  db $A0,$CF,$EF,$CF,$3E,$D0,$8D,$D0        ; $849761 |
  db $DC,$D0,$26,$D1                        ; $849769 |
  db $75,$D1                                ; $84976D |
  db $BF,$D1                                ; $84976F |
  db $1E,$CF                                ; $849771 |
  db $1E,$CF                                ; $849773 |
  db $1E,$CF,$1E,$CF                        ; $849775 |
  db $3E,$D0                                ; $849779 |
  db $1E,$CF,$62,$D2,$62,$D2                ; $84977B |
  db $62,$D2,$AC,$D2                        ; $849781 |
  db $AC,$D2,$AC,$D2                        ; $849785 |
  db $F6,$D2,$45,$D3,$8F,$D3,$DE,$D3        ; $849789 |
  db $28,$D4,$72,$D4                        ; $849791 |
  db $BC,$D4,$06,$D5                        ; $849795 |
  db $56,$D5,$A0,$D5                        ; $849799 |
  db $56,$D5                                ; $84979D |
  db $62,$D2,$62,$D2                        ; $84979F |
  db $1E,$CF                                ; $8497A3 |
  db $62,$D2                                ; $8497A5 |
  db $1E,$CF,$1E,$CF,$1E,$CF,$1E,$CF        ; $8497A7 |
  db $1E,$CF,$1E,$CF,$1E,$CF,$1E,$CF        ; $8497AF |
  db $1E,$CF,$1E,$CF,$1E,$CF                ; $8497B7 |
  db $E2,$CC,$57,$CD,$8F,$CD,$C3,$CA        ; $8497BD |
  db $F6,$CA                                ; $8497C5 |
  db $29,$CB                                ; $8497C7 |
  db $5C,$CB,$94,$CB                        ; $8497C9 |
  db $F6,$CA,$C7,$CB                        ; $8497CD |
  db $F6,$CA                                ; $8497D1 |
  db $C3,$CA,$C3,$CA,$C3,$CA,$C3,$CA        ; $8497D3 |
  db $04,$CC                                ; $8497DB |
  db $37,$CC,$6A,$CC,$9D,$CC,$29,$CB        ; $8497DD |
  db $C3,$CA                                ; $8497E5 |

CODE_JL_8497E7:
  PHB                                       ; $8497E7 |
  PEA.W $8181                               ; $8497E8 |
  PLB                                       ; $8497EB |
  PLB                                       ; $8497EC |
  JSL.L CODE_FL_8497F3                      ; $8497ED |
  PLB                                       ; $8497F1 |
  RTL                                       ; $8497F2 |

CODE_FL_8497F3:
  LDA.B $90                                 ; $8497F3 |
  CMP.W #$0000                              ; $8497F5 |
  BEQ CODE_849802                           ; $8497F8 |
  CMP.W #$0001                              ; $8497FA |
  BEQ CODE_849802                           ; $8497FD |
  JMP.W CODE_JP_849936                      ; $8497FF |

CODE_849802:
  LDA.B $3C                                 ; $849802 |
  PHX                                       ; $849804 |
  ASL A                                     ; $849805 |
  TAX                                       ; $849806 |
  LDA.L PTR16_849811,X                      ; $849807 |
  PLX                                       ; $84980B |
  STA.B $00                                 ; $84980C |
  JMP.W ($0000)                             ; $84980E |

PTR16_849811:
  dw CODE_84981B                            ; $849811 |
  dw CODE_84982B                            ; $849813 |
  dw CODE_849831                            ; $849815 |
  dw CODE_8498A7                            ; $849817 |
  dw CODE_8498EF                            ; $849819 |

CODE_84981B:
  JSR.W CODE_FN_849A25                      ; $84981B |
  LDA.W $1F30                               ; $84981E |
  BEQ CODE_849826                           ; $849821 |
  JMP.W CODE_JP_8498A6                      ; $849823 |

CODE_849826:
  STZ.B $92                                 ; $849826 |
  INC.B $3C                                 ; $849828 |
  RTL                                       ; $84982A |

CODE_84982B:
  INC.B $3C                                 ; $84982B |
  JML.L CODE_FL_80977D                      ; $84982D |

CODE_849831:
  LDA.B $C4                                 ; $849831 |
  ORA.W $00E6                               ; $849833 |
  BEQ CODE_84983E                           ; $849836 |
  STZ.B $EE                                 ; $849838 |
  JML.L CODE_JL_8BE2B1                      ; $84983A |

CODE_84983E:
  JSL.L CODE_FL_8680E5                      ; $84983E |
  BCC CODE_JP_8498A6                        ; $849842 |
  LDX.W #DATA_8881D9                        ; $849844 |
  JSL.L sound_transfer_blocks               ; $849847 |
  LDX.W #DATA_8885FF                        ; $84984B |
  JSL.L sound_transfer_blocks               ; $84984E |
  JSL.L CODE_FL_808302                      ; $849852 |
  JSL.L CODE_FL_808302                      ; $849856 |
  LDY.W #$0058                              ; $84985A |
  JSL.L set_music                           ; $84985D |
  JSL.L CODE_FL_80887C                      ; $849861 |
  STZ.W $0400                               ; $849865 |
  STZ.W $04C0                               ; $849868 |
  JSL.L CODE_FL_808BC2                      ; $84986B |
  STZ.B $5C                                 ; $84986F |
  SEP #$20                                  ; $849871 |
  LDA.B #$09                                ; $849873 |
  STA.W $1FA4                               ; $849875 |
  LDA.B #$14                                ; $849878 |
  STA.W $1FBE                               ; $84987A |
  STZ.W $1FC0                               ; $84987D |
  REP #$20                                  ; $849880 |
  LDA.W #$3300                              ; $849882 |
  LDX.W #$8DFF                              ; $849885 |
  JSL.L CODE_FL_80BF7F                      ; $849888 |
  JSR.W CODE_FN_849A5E                      ; $84988C |
  LDX.W #$1F40                              ; $84988F |
  LDY.W #$B6E1                              ; $849892 |
  JSL.L CODE_FL_80C27F                      ; $849895 |
  JSL.L CODE_FL_80C222                      ; $849899 |
  STZ.W $1980                               ; $84989D |
  INC.B $3C                                 ; $8498A0 |
  JSL.L CODE_FL_808230                      ; $8498A2 |

CODE_JP_8498A6:
  RTL                                       ; $8498A6 |

CODE_8498A7:
  LDA.B $36                                 ; $8498A7 |
  BIT.W #$9000                              ; $8498A9 |
  BNE CODE_8498E1                           ; $8498AC |
  BIT.W #$2000                              ; $8498AE |
  BNE CODE_8498BD                           ; $8498B1 |
  BIT.W #$0600                              ; $8498B3 |
  BNE CODE_8498BD                           ; $8498B6 |
  BIT.W #$0900                              ; $8498B8 |
  BEQ CODE_8498CE                           ; $8498BB |

CODE_8498BD:
  LDA.W #$0046                              ; $8498BD |
  JSL.L push_sound_queue                    ; $8498C0 |
  INC.W $1980                               ; $8498C4 |
  LDA.W #$0046                              ; $8498C7 |
  JSL.L push_sound_queue                    ; $8498CA |

CODE_8498CE:
  LDA.W $1980                               ; $8498CE |
  AND.W #$0001                              ; $8498D1 |
  ASL A                                     ; $8498D4 |
  TAY                                       ; $8498D5 |
  LDA.W LOOSE_OP_00F6F5,Y                   ; $8498D6 |
  TAX                                       ; $8498D9 |
  LDA.W #$3300                              ; $8498DA |
  JML.L CODE_FL_80BF7F                      ; $8498DD |

CODE_8498E1:
  LDA.W #$0047                              ; $8498E1 |
  JSL.L push_sound_queue                    ; $8498E4 |
  JSL.L CODE_FL_80C213                      ; $8498E8 |
  INC.B $3C                                 ; $8498EC |

CODE_8498EE:
  RTL                                       ; $8498EE |

CODE_8498EF:
  LDA.W $1F30                               ; $8498EF |
  BNE CODE_8498EE                           ; $8498F2 |
  LDA.W $1980                               ; $8498F4 |
  BIT.W #$0001                              ; $8498F7 |
  BNE CODE_JL_849917                        ; $8498FA |
  LDY.W #$925C                              ; $8498FC |
  JSL.L CODE_FL_82D49F                      ; $8498FF |
  JSL.L CODE_FL_80FB10                      ; $849903 |
  JSL.L CODE_FL_808CB3                      ; $849907 |
  STZ.B $5A                                 ; $84990B |
  STZ.W $04D8                               ; $84990D |
  LDA.W #$0008                              ; $849910 |
  JML.L CODE_FL_8085F6                      ; $849913 |

CODE_JL_849917:
  JSL.L CODE_FL_808D45                      ; $849917 |
  JSL.L CODE_FL_808DBB                      ; $84991B |
  LDY.W #$8106                              ; $84991F |
  JSL.L CODE_FL_808D78                      ; $849922 |
  LDY.W #$925C                              ; $849926 |
  JSL.L CODE_FL_82D49F                      ; $849929 |
  JSL.L CODE_FL_808BC2                      ; $84992D |
  TDC                                       ; $849931 |
  JML.L CODE_FL_8085EC                      ; $849932 |

CODE_JP_849936:
  LDA.B $3C                                 ; $849936 |
  PHX                                       ; $849938 |
  ASL A                                     ; $849939 |
  TAX                                       ; $84993A |
  LDA.L PTR16_849945,X                      ; $84993B |
  PLX                                       ; $84993F |
  STA.B $00                                 ; $849940 |
  JMP.W ($0000)                             ; $849942 |

PTR16_849945:
  dw CODE_849953                            ; $849945 |
  dw CODE_849966                            ; $849947 |
  dw CODE_8499DB                            ; $849949 |
  dw CODE_849A04                            ; $84994B |
  dw CODE_849A0F                            ; $84994D |
  dw CODE_8498A7                            ; $84994F |
  dw CODE_8498EF                            ; $849951 |

CODE_849953:
  JSL.L CODE_FL_8AAECB                      ; $849953 |
  LDA.W $1F30                               ; $849957 |
  BEQ CODE_84995F                           ; $84995A |
  JMP.W CODE_JP_849965                      ; $84995C |

CODE_84995F:
  INC.B $3C                                 ; $84995F |
  JSL.L CODE_FL_80977D                      ; $849961 |

CODE_JP_849965:
  RTL                                       ; $849965 |

CODE_849966:
  JSL.L CODE_FL_8680E5                      ; $849966 |
  BCS CODE_84996F                           ; $84996A |
  JMP.W CODE_JP_849965                      ; $84996C |

CODE_84996F:
  STZ.B $A4                                 ; $84996F |
  JSL.L CODE_FL_80BED7                      ; $849971 |
  JSL.L CODE_FL_808BC2                      ; $849975 |
  JSL.L CODE_FL_80C1ED                      ; $849979 |
  LDX.W #DATA_8885DD                        ; $84997D |
  JSL.L sound_transfer_blocks               ; $849980 |
  LDX.W #DATA_8881D9                        ; $849984 |
  JSL.L sound_transfer_blocks               ; $849987 |
  LDY.W #$B6EB                              ; $84998B |
  JSL.L CODE_FL_80C277                      ; $84998E |
  LDY.W #$8179                              ; $849992 |
  JSL.L CODE_FL_808D78                      ; $849995 |
  JSL.L CODE_FL_80C222                      ; $849999 |
  LDX.W #$0400                              ; $84999D |
  STZ.B $00,X                               ; $8499A0 |
  STZ.B $02,X                               ; $8499A2 |
  LDA.W #$1898                              ; $8499A4 |
  STA.B $04,X                               ; $8499A7 |
  LDA.W #$0080                              ; $8499A9 |
  STA.B $54,X                               ; $8499AC |
  STZ.B $56,X                               ; $8499AE |
  LDA.W #$0080                              ; $8499B0 |
  STA.B $09,X                               ; $8499B3 |
  LDA.W #$00C8                              ; $8499B5 |
  STA.B $0D,X                               ; $8499B8 |
  LDX.W #$04C0                              ; $8499BA |
  STZ.B $00,X                               ; $8499BD |
  LDA.W #$0047                              ; $8499BF |
  STA.B $02,X                               ; $8499C2 |
  LDA.W #$1898                              ; $8499C4 |
  STA.B $04,X                               ; $8499C7 |
  LDA.W #$0080                              ; $8499C9 |
  STA.B $06,X                               ; $8499CC |
  LDA.W #$0080                              ; $8499CE |
  STA.B $09,X                               ; $8499D1 |
  LDA.W #$0040                              ; $8499D3 |
  STA.B $0D,X                               ; $8499D6 |
  INC.B $3C                                 ; $8499D8 |
  RTL                                       ; $8499DA |

CODE_8499DB:
  LDX.W #$0400                              ; $8499DB |
  DEC.B $54,X                               ; $8499DE |
  BPL CODE_849A03                           ; $8499E0 |
  LDY.B $90                                 ; $8499E2 |
  CPY.W #$0002                              ; $8499E4 |
  BEQ CODE_8499F5                           ; $8499E7 |
  LDA.W #$007C                              ; $8499E9 |
  JSL.L CODE_FL_8089BD                      ; $8499EC |
  LDA.W #$F6F9                              ; $8499F0 |
  BRA CODE_8499FF                           ; $8499F3 |

CODE_8499F5:
  LDA.W #$0050                              ; $8499F5 |
  JSL.L CODE_FL_8089BD                      ; $8499F8 |
  LDA.W #$F72D                              ; $8499FC |

CODE_8499FF:
  STA.B $56,X                               ; $8499FF |
  INC.B $3C                                 ; $849A01 |

CODE_849A03:
  RTL                                       ; $849A03 |

CODE_849A04:
  LDX.W #$0400                              ; $849A04 |
  JSR.W CODE_FN_849A42                      ; $849A07 |
  BCC CODE_849A0E                           ; $849A0A |
  INC.B $3C                                 ; $849A0C |

CODE_849A0E:
  RTL                                       ; $849A0E |

CODE_849A0F:
  LDX.W #$0400                              ; $849A0F |
  DEC.B $54,X                               ; $849A12 |
  BPL CODE_849A24                           ; $849A14 |
  LDA.W #$0015                              ; $849A16 |
  STA.W $1FBE                               ; $849A19 |
  LDA.W #$3000                              ; $849A1C |
  STA.W $04C0                               ; $849A1F |
  INC.B $3C                                 ; $849A22 |

CODE_849A24:
  RTL                                       ; $849A24 |

CODE_FN_849A25:
  LDX.W #$0620                              ; $849A25 |
  LDA.B $18,X                               ; $849A28 |
  CMP.W #$0023                              ; $849A2A |
  BNE CODE_849A33                           ; $849A2D |
  JSL.L CODE_FL_97FC80                      ; $849A2F |

CODE_849A33:
  LDX.W #$08F0                              ; $849A33 |
  LDA.B $18,X                               ; $849A36 |
  CMP.W #$0023                              ; $849A38 |
  BNE CODE_849A41                           ; $849A3B |
  JSL.L CODE_FL_97FC80                      ; $849A3D |

CODE_849A41:
  RTS                                       ; $849A41 |

CODE_FN_849A42:
  DEC.B $54,X                               ; $849A42 |
  BPL CODE_849A5A                           ; $849A44 |
  LDY.B $56,X                               ; $849A46 |
  LDA.W $0000,Y                             ; $849A48 |
  STA.B $00,X                               ; $849A4B |
  BEQ CODE_849A5C                           ; $849A4D |
  LDA.W $0002,Y                             ; $849A4F |
  STA.B $54,X                               ; $849A52 |
  INY                                       ; $849A54 |
  INY                                       ; $849A55 |
  INY                                       ; $849A56 |
  INY                                       ; $849A57 |
  STY.B $56,X                               ; $849A58 |

CODE_849A5A:
  CLC                                       ; $849A5A |
  RTS                                       ; $849A5B |

CODE_849A5C:
  SEC                                       ; $849A5C |
  RTS                                       ; $849A5D |

CODE_FN_849A5E:
  LDX.W #$0B70                              ; $849A5E |
  STZ.B $18,X                               ; $849A61 |
  LDA.W #$3000                              ; $849A63 |
  STA.B $00,X                               ; $849A66 |
  LDA.W #$0080                              ; $849A68 |
  STA.B $09,X                               ; $849A6B |
  LDA.W #$0040                              ; $849A6D |
  STA.B $0D,X                               ; $849A70 |
  LDA.W #$1090                              ; $849A72 |
  STA.B $04,X                               ; $849A75 |
  LDA.W #$0080                              ; $849A77 |
  STA.B $06,X                               ; $849A7A |
  LDA.W #$0047                              ; $849A7C |
  STA.B $02,X                               ; $849A7F |
  RTS                                       ; $849A81 |

CODE_FL_849A82:
  LDA.B $80                                 ; $849A82 |
  PHX                                       ; $849A84 |
  ASL A                                     ; $849A85 |
  TAX                                       ; $849A86 |
  LDA.L PTR16_849A91,X                      ; $849A87 |
  PLX                                       ; $849A8B |
  STA.B $00                                 ; $849A8C |
  JMP.W ($0000)                             ; $849A8E |

PTR16_849A91:
  dw CODE_849AAD                            ; $849A91 |
  dw CODE_849AC4                            ; $849A93 |
  dw CODE_849AD6                            ; $849A95 |
  dw CODE_849CAE                            ; $849A97 |
  dw CODE_849CD8                            ; $849A99 |
  dw CODE_JL_849CDE                         ; $849A9B |
  dw CODE_849CE4                            ; $849A9D |
  dw CODE_849D8D                            ; $849A9F |
  dw CODE_849D99                            ; $849AA1 |
  dw CODE_849DCD                            ; $849AA3 |
  dw CODE_849DD3                            ; $849AA5 |
  dw CODE_849DD9                            ; $849AA7 |
  dw CODE_849E00                            ; $849AA9 |
  dw CODE_849E0C                            ; $849AAB |

CODE_849AAD:
  LDA.W $1F30                               ; $849AAD |
  BEQ CODE_849ABD                           ; $849AB0 |
  LDA.W $1FA0                               ; $849AB2 |
  AND.W #$000F                              ; $849AB5 |
  CMP.W #$000F                              ; $849AB8 |
  BNE CODE_849AC3                           ; $849ABB |

CODE_849ABD:
  JSL.L CODE_FL_80C213                      ; $849ABD |
  INC.B $80                                 ; $849AC1 |

CODE_849AC3:
  RTL                                       ; $849AC3 |

CODE_849AC4:
  LDA.W $1F30                               ; $849AC4 |
  BNE CODE_849AC3                           ; $849AC7 |
  INC.B $80                                 ; $849AC9 |
  STZ.B $A4                                 ; $849ACB |
  LDA.W #$0001                              ; $849ACD |
  STA.B $C6                                 ; $849AD0 |
  JML.L CODE_FL_8EFE80                      ; $849AD2 |

CODE_849AD6:
  JSL.L CODE_FL_84861A                      ; $849AD6 |
  STZ.W $0400                               ; $849ADA |
  STZ.W $04C0                               ; $849ADD |
  LDA.W #$00FF                              ; $849AE0 |
  STA.W $1FF8                               ; $849AE3 |
  STA.W $1FFA                               ; $849AE6 |
  LDY.W #$817E                              ; $849AE9 |
  JSL.L CODE_FL_808D78                      ; $849AEC |
  JSL.L CODE_FL_808DBB                      ; $849AF0 |
  STZ.B $A4                                 ; $849AF4 |
  STZ.B $5E                                 ; $849AF6 |
  STZ.B $60                                 ; $849AF8 |
  STZ.B $62                                 ; $849AFA |
  LDA.W #$0080                              ; $849AFC |
  STA.W $1FC6                               ; $849AFF |
  LDX.W #DATA_8885BD                        ; $849B02 |
  JSL.L sound_transfer_blocks               ; $849B05 |
  LDX.W #DATA_8885AD                        ; $849B09 |
  JSL.L sound_transfer_blocks               ; $849B0C |
  LDX.W #DATA_8885C5                        ; $849B10 |
  JSL.L sound_transfer_blocks               ; $849B13 |
  LDA.W #$0594                              ; $849B17 |
  JSL.L CODE_FL_8CF9D2                      ; $849B1A |
  BCS CODE_849B2E                           ; $849B1E |
  LDX.W #DATA_8885B5                        ; $849B20 |
  JSL.L sound_transfer_blocks               ; $849B23 |
  LDX.W #DATA_8885CD                        ; $849B27 |
  JSL.L sound_transfer_blocks               ; $849B2A |

CODE_849B2E:
  LDY.W #$B6C0                              ; $849B2E |
  JSL.L CODE_FL_80C277                      ; $849B31 |
  LDY.W #$0400                              ; $849B35 |
  JSL.L CODE_FL_80975C                      ; $849B38 |
  LDY.W #$8000                              ; $849B3C |
  JSL.L CODE_FL_809725                      ; $849B3F |
  LDY.W #$0010                              ; $849B43 |
  JSL.L CODE_FL_80972B                      ; $849B46 |
  JSR.W CODE_FN_849F9A                      ; $849B4A |
  REP #$30                                  ; $849B4D |
  PHB                                       ; $849B4F |
  LDA.W #$0000                              ; $849B50 |
  STA.L $0012B0                             ; $849B53 |
  LDA.W #$02C3                              ; $849B57 |
  LDX.W #$12B1                              ; $849B5A |
  TXY                                       ; $849B5D |
  INY                                       ; $849B5E |
  MVN $00,$00                               ; $849B5F |
  PLB                                       ; $849B62 |
  LDY.W #$00A0                              ; $849B63 |
  LDA.W #$12B0                              ; $849B66 |
  STA.W $0416                               ; $849B69 |
  TAX                                       ; $849B6C |
  LDA.W #$1300                              ; $849B6D |
  STA.B $16,X                               ; $849B70 |
  STY.B $06,X                               ; $849B72 |
  TAX                                       ; $849B74 |
  LDA.W #$132A                              ; $849B75 |
  STA.B $16,X                               ; $849B78 |
  STY.B $06,X                               ; $849B7A |
  TAX                                       ; $849B7C |
  LDA.W #$1354                              ; $849B7D |
  STA.B $16,X                               ; $849B80 |
  STY.B $06,X                               ; $849B82 |
  TAX                                       ; $849B84 |
  LDA.W #$137E                              ; $849B85 |
  STA.B $16,X                               ; $849B88 |
  STY.B $06,X                               ; $849B8A |
  TAX                                       ; $849B8C |
  LDA.W #$13A8                              ; $849B8D |
  STA.B $16,X                               ; $849B90 |
  STY.B $06,X                               ; $849B92 |
  TAX                                       ; $849B94 |
  LDA.W #$13D2                              ; $849B95 |
  STA.B $16,X                               ; $849B98 |
  STY.B $06,X                               ; $849B9A |
  TAX                                       ; $849B9C |
  LDA.W #$13FC                              ; $849B9D |
  STA.B $16,X                               ; $849BA0 |
  STY.B $06,X                               ; $849BA2 |
  TAX                                       ; $849BA4 |
  LDA.W #$1426                              ; $849BA5 |
  STA.B $16,X                               ; $849BA8 |
  STY.B $06,X                               ; $849BAA |
  TAX                                       ; $849BAC |
  LDA.W #$1450                              ; $849BAD |
  STA.B $16,X                               ; $849BB0 |
  STY.B $06,X                               ; $849BB2 |
  TAX                                       ; $849BB4 |
  LDA.W #$147A                              ; $849BB5 |
  STA.B $16,X                               ; $849BB8 |
  STY.B $06,X                               ; $849BBA |
  TAX                                       ; $849BBC |
  LDA.W #$14A4                              ; $849BBD |
  STA.B $16,X                               ; $849BC0 |
  STY.B $06,X                               ; $849BC2 |
  TAX                                       ; $849BC4 |
  LDA.W #$14CE                              ; $849BC5 |
  STA.B $16,X                               ; $849BC8 |
  STY.B $06,X                               ; $849BCA |
  TAX                                       ; $849BCC |
  STY.B $06,X                               ; $849BCD |
  STZ.B $16,X                               ; $849BCF |
  LDX.W #$12B0                              ; $849BD1 |
  JSR.W CODE_FN_849FC3                      ; $849BD4 |
  JSR.W CODE_FN_849FE6                      ; $849BD7 |
  LDX.W #$1300                              ; $849BDA |
  LDA.W #$0380                              ; $849BDD |
  LDY.W #$0900                              ; $849BE0 |
  JSR.W CODE_FN_849FFD                      ; $849BE3 |
  JSR.W CODE_FN_849FE6                      ; $849BE6 |
  LDX.W #$132A                              ; $849BE9 |
  LDA.W #$0D70                              ; $849BEC |
  LDY.W #$0D80                              ; $849BEF |
  JSR.W CODE_FN_849FFD                      ; $849BF2 |
  JSR.W CODE_FN_849FE6                      ; $849BF5 |
  LDX.W #$1354                              ; $849BF8 |
  LDA.W #$0B20                              ; $849BFB |
  LDY.W #$0620                              ; $849BFE |
  JSR.W CODE_FN_849FFD                      ; $849C01 |
  JSR.W CODE_FN_849FE6                      ; $849C04 |
  LDX.W #$137E                              ; $849C07 |
  LDA.W #$0580                              ; $849C0A |
  LDY.W #$0440                              ; $849C0D |
  JSR.W CODE_FN_849FFD                      ; $849C10 |
  JSR.W CODE_FN_849FE6                      ; $849C13 |
  LDX.W #$13A8                              ; $849C16 |
  LDA.W #$0220                              ; $849C19 |
  LDY.W #$04A0                              ; $849C1C |
  JSR.W CODE_FN_849FFD                      ; $849C1F |
  JSR.W CODE_FN_849FE6                      ; $849C22 |
  LDX.W #$13D2                              ; $849C25 |
  LDA.W #$0040                              ; $849C28 |
  LDY.W #$0E00                              ; $849C2B |
  JSR.W CODE_FN_849FFD                      ; $849C2E |
  JSR.W CODE_FN_849FE6                      ; $849C31 |
  LDX.W #$13FC                              ; $849C34 |
  LDA.W #$0340                              ; $849C37 |
  LDY.W #$0400                              ; $849C3A |
  JSR.W CODE_FN_849FFD                      ; $849C3D |
  JSR.W CODE_FN_849FE6                      ; $849C40 |
  LDX.W #$1426                              ; $849C43 |
  LDA.W #$0460                              ; $849C46 |
  LDY.W #$0400                              ; $849C49 |
  JSR.W CODE_FN_849FFD                      ; $849C4C |
  JSR.W CODE_FN_849FE6                      ; $849C4F |
  LDX.W #$1450                              ; $849C52 |
  LDA.W #$0CA0                              ; $849C55 |
  LDY.W #$0180                              ; $849C58 |
  JSR.W CODE_FN_849FFD                      ; $849C5B |
  JSR.W CODE_FN_849FE6                      ; $849C5E |
  LDX.W #$147A                              ; $849C61 |
  LDA.W #$0F00                              ; $849C64 |
  LDY.W #$0C00                              ; $849C67 |
  JSR.W CODE_FN_849FFD                      ; $849C6A |
  JSR.W CODE_FN_849FE6                      ; $849C6D |
  LDX.W #$14A4                              ; $849C70 |
  LDA.W #$0FA0                              ; $849C73 |
  LDY.W #$0300                              ; $849C76 |
  JSR.W CODE_FN_849FFD                      ; $849C79 |
  JSR.W CODE_FN_849FE6                      ; $849C7C |
  LDX.W #$14CE                              ; $849C7F |
  LDA.W #$00A0                              ; $849C82 |
  LDY.W #$0080                              ; $849C85 |
  JSR.W CODE_FN_849FFD                      ; $849C88 |
  JSR.W CODE_FN_849FE6                      ; $849C8B |
  JSL.L CODE_FL_808BC2                      ; $849C8E |
  JSL.L CODE_FL_80C222                      ; $849C92 |
  LDX.W #$12B0                              ; $849C96 |
  JSR.W CODE_FN_84A059                      ; $849C99 |
  JSR.W CODE_FN_84A08B                      ; $849C9C |
  LDA.B $EE                                 ; $849C9F |
  LSR A                                     ; $849CA1 |
  BCS CODE_849CAB                           ; $849CA2 |
  LDA.W #$004A                              ; $849CA4 |
  JSL.L push_sound_queue                    ; $849CA7 |

CODE_849CAB:
  INC.B $80                                 ; $849CAB |
  RTL                                       ; $849CAD |

CODE_849CAE:
  STZ.W $1D74                               ; $849CAE |
  LDA.W #$000C                              ; $849CB1 |
  STA.W $1FDA                               ; $849CB4 |
  LDA.W #$FFE0                              ; $849CB7 |
  STA.W $1D66                               ; $849CBA |
  LDX.W #$12B0                              ; $849CBD |
  JSR.W CODE_FN_84A059                      ; $849CC0 |
  JSR.W CODE_FN_84A08B                      ; $849CC3 |
  LDA.W #$0100                              ; $849CC6 |
  STA.W $1FD0                               ; $849CC9 |
  JSR.W CODE_FN_84A0CD                      ; $849CCC |
  JSR.W CODE_FN_84A135                      ; $849CCF |
  JSR.W CODE_FN_849E40                      ; $849CD2 |
  INC.B $80                                 ; $849CD5 |
  RTL                                       ; $849CD7 |

CODE_849CD8:
  JSR.W CODE_FN_84A135                      ; $849CD8 |
  INC.B $80                                 ; $849CDB |
  RTL                                       ; $849CDD |

CODE_JL_849CDE:
  JSR.W CODE_FN_84A135                      ; $849CDE |
  INC.B $80                                 ; $849CE1 |
  RTL                                       ; $849CE3 |

CODE_849CE4:
  JSR.W CODE_FN_84A135                      ; $849CE4 |
  LDA.W #$8000                              ; $849CE7 |
  STA.W $1D74                               ; $849CEA |
  JSL.L CODE_FL_8DFF34                      ; $849CED |
  BIT.W #$0800                              ; $849CF1 |
  BEQ CODE_849D0D                           ; $849CF4 |
  LDA.W $1FF0                               ; $849CF6 |
  DEC A                                     ; $849CF9 |
  DEC A                                     ; $849CFA |
  CMP.W #$01F8                              ; $849CFB |
  BCS CODE_849D03                           ; $849CFE |
  LDA.W #$01F8                              ; $849D00 |

CODE_849D03:
  STA.W $1FF0                               ; $849D03 |
  CLC                                       ; $849D06 |
  ADC.W #$0080                              ; $849D07 |
  STA.W $1FD2                               ; $849D0A |

CODE_849D0D:
  JSL.L CODE_FL_8DFF34                      ; $849D0D |
  BIT.W #$0400                              ; $849D11 |
  BEQ CODE_849D2D                           ; $849D14 |
  LDA.W $1FF0                               ; $849D16 |
  INC A                                     ; $849D19 |
  INC A                                     ; $849D1A |
  CMP.W #$0300                              ; $849D1B |
  BCC CODE_849D23                           ; $849D1E |
  LDA.W #$02FF                              ; $849D20 |

CODE_849D23:
  STA.W $1FF0                               ; $849D23 |
  CLC                                       ; $849D26 |
  ADC.W #$0080                              ; $849D27 |
  STA.W $1FD2                               ; $849D2A |

CODE_849D2D:
  JSL.L CODE_FL_8DFF34                      ; $849D2D |
  BIT.W #$0100                              ; $849D31 |
  BEQ CODE_849D4E                           ; $849D34 |
  LDA.W $1662                               ; $849D36 |
  CLC                                       ; $849D39 |
  ADC.W #$0082                              ; $849D3A |
  BMI CODE_849D47                           ; $849D3D |
  CMP.W #$01E0                              ; $849D3F |
  BCC CODE_849D47                           ; $849D42 |
  LDA.W #$01DF                              ; $849D44 |

CODE_849D47:
  SEC                                       ; $849D47 |
  SBC.W #$0080                              ; $849D48 |
  STA.W $1662                               ; $849D4B |

CODE_849D4E:
  JSL.L CODE_FL_8DFF34                      ; $849D4E |
  BIT.W #$0200                              ; $849D52 |
  BEQ CODE_849D6F                           ; $849D55 |
  LDA.W $1662                               ; $849D57 |
  CLC                                       ; $849D5A |
  ADC.W #$007E                              ; $849D5B |
  BMI CODE_849D65                           ; $849D5E |
  CMP.W #$0000                              ; $849D60 |
  BCS CODE_849D68                           ; $849D63 |

CODE_849D65:
  LDA.W #$0000                              ; $849D65 |

CODE_849D68:
  SEC                                       ; $849D68 |
  SBC.W #$0080                              ; $849D69 |
  STA.W $1662                               ; $849D6C |

CODE_849D6F:
  JSL.L CODE_FL_8DFF29                      ; $849D6F |
  BIT.W #$0080                              ; $849D73 |
  BEQ CODE_849D7A                           ; $849D76 |
  INC.B $80                                 ; $849D78 |

CODE_849D7A:
  BIT.W #$0040                              ; $849D7A |
  BEQ CODE_849D89                           ; $849D7D |
  JSL.L CODE_FL_80C213                      ; $849D7F |
  LDY.W #$000D                              ; $849D83 |
  STY.B $80                                 ; $849D86 |
  RTL                                       ; $849D88 |

CODE_849D89:
  JSR.W CODE_FN_849E40                      ; $849D89 |
  RTL                                       ; $849D8C |

CODE_849D8D:
  JSR.W CODE_FN_84A135                      ; $849D8D |
  LDA.W #$0008                              ; $849D90 |
  STA.B $80                                 ; $849D93 |
  JSR.W CODE_FN_84A1B0                      ; $849D95 |
  RTL                                       ; $849D98 |

CODE_849D99:
  STZ.W $1D74                               ; $849D99 |
  LDA.W #$000C                              ; $849D9C |
  STA.W $1FDA                               ; $849D9F |
  LDA.W #$007F                              ; $849DA2 |
  STA.W $1D66                               ; $849DA5 |
  LDA.W #$02B0                              ; $849DA8 |
  STA.W $1FF0                               ; $849DAB |
  CLC                                       ; $849DAE |
  ADC.W #$0080                              ; $849DAF |
  STA.W $1FD2                               ; $849DB2 |
  LDA.W #$0080                              ; $849DB5 |
  STA.W $1662                               ; $849DB8 |
  LDA.W #$0100                              ; $849DBB |
  STA.W $1FD0                               ; $849DBE |
  JSR.W CODE_FN_84A0CD                      ; $849DC1 |
  JSR.W CODE_FN_84A135                      ; $849DC4 |
  JSR.W CODE_FN_849E40                      ; $849DC7 |
  INC.B $80                                 ; $849DCA |
  RTL                                       ; $849DCC |

CODE_849DCD:
  JSR.W CODE_FN_84A135                      ; $849DCD |
  INC.B $80                                 ; $849DD0 |
  RTL                                       ; $849DD2 |

CODE_849DD3:
  JSR.W CODE_FN_84A135                      ; $849DD3 |
  BRL CODE_JL_849CDE                        ; $849DD6 |

CODE_849DD9:
  JSR.W CODE_FN_84A135                      ; $849DD9 |
  LDA.W #$8000                              ; $849DDC |
  STA.W $1D74                               ; $849DDF |
  JSL.L CODE_FL_8DFF29                      ; $849DE2 |
  BIT.W #$0080                              ; $849DE6 |
  BEQ CODE_849DED                           ; $849DE9 |
  INC.B $80                                 ; $849DEB |

CODE_849DED:
  BIT.W #$0040                              ; $849DED |
  BEQ CODE_849DFC                           ; $849DF0 |
  JSL.L CODE_FL_80C213                      ; $849DF2 |
  LDY.W #$000D                              ; $849DF6 |
  STY.B $80                                 ; $849DF9 |
  RTL                                       ; $849DFB |

CODE_849DFC:
  JSR.W CODE_FN_849E40                      ; $849DFC |
  RTL                                       ; $849DFF |

CODE_849E00:
  JSR.W CODE_FN_84A135                      ; $849E00 |
  LDA.W #$0003                              ; $849E03 |
  STA.B $80                                 ; $849E06 |
  JSR.W CODE_FN_84A1B0                      ; $849E08 |

CODE_849E0B:
  RTL                                       ; $849E0B |

CODE_849E0C:
  LDA.W $1F30                               ; $849E0C |
  BNE CODE_849E0B                           ; $849E0F |
  LDX.W #DATA_8888BB                        ; $849E11 |
  JSL.L sound_transfer_blocks               ; $849E14 |
  JSL.L CODE_FL_808302                      ; $849E18 |
  JSL.L CODE_FL_8EFE90                      ; $849E1C |
  JSL.L CODE_FL_8EFF98                      ; $849E20 |
  JSL.L CODE_FL_808315                      ; $849E24 |
  JSL.L CODE_FL_80C222                      ; $849E28 |
  INC.B $A4                                 ; $849E2C |
  STZ.B $C6                                 ; $849E2E |
  STZ.B $80                                 ; $849E30 |
  STZ.B $78                                 ; $849E32 |
  LDA.B $EE                                 ; $849E34 |
  LSR A                                     ; $849E36 |
  BCS CODE_FN_849E40                        ; $849E37 |
  LDA.W #$004B                              ; $849E39 |
  JML.L push_sound_queue                    ; $849E3C |

CODE_FN_849E40:
  LDX.W #$12B0                              ; $849E40 |

CODE_849E43:
  LDA.B $18,X                               ; $849E43 |
  BEQ CODE_849E63                           ; $849E45 |
  LDA.B $80                                 ; $849E47 |
  CMP.W #$0008                              ; $849E49 |
  BCS CODE_849E60                           ; $849E4C |
  JSR.W CODE_FN_849E69                      ; $849E4E |
  CPX.W #$12B0                              ; $849E51 |
  BNE CODE_849E63                           ; $849E54 |
  LDA.B $0D,X                               ; $849E56 |
  CLC                                       ; $849E58 |
  ADC.W #$FFF0                              ; $849E59 |
  STA.B $0D,X                               ; $849E5C |
  BRA CODE_849E63                           ; $849E5E |

CODE_849E60:
  JSR.W CODE_FN_849E9F                      ; $849E60 |

CODE_849E63:
  LDA.B $16,X                               ; $849E63 |
  TAX                                       ; $849E65 |
  BNE CODE_849E43                           ; $849E66 |
  RTS                                       ; $849E68 |

CODE_FN_849E69:
  LDA.W $1FF0                               ; $849E69 |
  SEC                                       ; $849E6C |
  SBC.W #$0280                              ; $849E6D |
  ASL A                                     ; $849E70 |
  ASL A                                     ; $849E71 |
  ASL A                                     ; $849E72 |
  EOR.W #$FFFF                              ; $849E73 |
  SEC                                       ; $849E76 |
  ADC.B $1C,X                               ; $849E77 |
  TAY                                       ; $849E79 |
  LDA.B $1A,X                               ; $849E7A |
  JSR.W CODE_FN_849EC6                      ; $849E7C |
  LDA.W $1662                               ; $849E7F |
  SEC                                       ; $849E82 |
  SBC.W #$0080                              ; $849E83 |
  EOR.W #$FFFF                              ; $849E86 |
  SEC                                       ; $849E89 |
  ADC.B $10                                 ; $849E8A |
  STA.B $10                                 ; $849E8C |
  LDA.B $10                                 ; $849E8E |
  CLC                                       ; $849E90 |
  ADC.W #$0080                              ; $849E91 |
  STA.B $09,X                               ; $849E94 |
  LDA.B $12                                 ; $849E96 |
  CLC                                       ; $849E98 |
  ADC.W #$0080                              ; $849E99 |
  STA.B $0D,X                               ; $849E9C |
  RTS                                       ; $849E9E |

CODE_FN_849E9F:
  LDA.W $1FF0                               ; $849E9F |
  SEC                                       ; $849EA2 |
  SBC.W #$0290                              ; $849EA3 |
  ASL A                                     ; $849EA6 |
  ASL A                                     ; $849EA7 |
  ASL A                                     ; $849EA8 |
  EOR.W #$FFFF                              ; $849EA9 |
  SEC                                       ; $849EAC |
  ADC.B $1C,X                               ; $849EAD |
  TAY                                       ; $849EAF |
  LDA.B $1A,X                               ; $849EB0 |
  JSR.W CODE_FN_849EC6                      ; $849EB2 |
  LDA.W #$0080                              ; $849EB5 |
  CLC                                       ; $849EB8 |
  ADC.B $10                                 ; $849EB9 |
  STA.B $09,X                               ; $849EBB |
  LDA.W #$0078                              ; $849EBD |
  CLC                                       ; $849EC0 |
  ADC.B $12                                 ; $849EC1 |
  STA.B $0D,X                               ; $849EC3 |
  RTS                                       ; $849EC5 |

CODE_FN_849EC6:
  PHX                                       ; $849EC6 |
  SEC                                       ; $849EC7 |
  SBC.W #$0800                              ; $849EC8 |
  BPL CODE_849ED1                           ; $849ECB |
  EOR.W #$FFFF                              ; $849ECD |
  INC A                                     ; $849ED0 |

CODE_849ED1:
  ROR.B $18                                 ; $849ED1 |
  LSR A                                     ; $849ED3 |
  LSR A                                     ; $849ED4 |
  LSR A                                     ; $849ED5 |
  STA.B $10                                 ; $849ED6 |
  TYA                                       ; $849ED8 |
  SEC                                       ; $849ED9 |
  SBC.W #$0800                              ; $849EDA |
  BPL CODE_849EE3                           ; $849EDD |
  EOR.W #$FFFF                              ; $849EDF |
  INC A                                     ; $849EE2 |

CODE_849EE3:
  ROR.B $18                                 ; $849EE3 |
  LSR A                                     ; $849EE5 |
  LSR A                                     ; $849EE6 |
  LSR A                                     ; $849EE7 |
  STA.B $12                                 ; $849EE8 |
  LDA.W #$0080                              ; $849EEA |
  CLC                                       ; $849EED |
  ADC.W $1D66                               ; $849EEE |
  XBA                                       ; $849EF1 |
  STA.B $14                                 ; $849EF2 |
  LDA.W $1FDA                               ; $849EF4 |
  BPL CODE_849EFD                           ; $849EF7 |
  EOR.W #$FFFF                              ; $849EF9 |
  INC A                                     ; $849EFC |

CODE_849EFD:
  AND.W #$007F                              ; $849EFD |
  ASL A                                     ; $849F00 |
  TAX                                       ; $849F01 |
  LDA.L DATA8_978100,X                      ; $849F02 |
  STA.B $16                                 ; $849F06 |
  LDA.L DATA8_978000,X                      ; $849F08 |
  LDY.B $12                                 ; $849F0C |
  JSL.L CODE_FL_808E18                      ; $849F0E |
  STA.B $08                                 ; $849F12 |
  STY.B $0A                                 ; $849F14 |
  BIT.B $18                                 ; $849F16 |
  BPL CODE_849F2A                           ; $849F18 |
  LDA.B $14                                 ; $849F1A |
  SEC                                       ; $849F1C |
  SBC.B $08                                 ; $849F1D |
  STA.B $08                                 ; $849F1F |
  LDA.W #$0000                              ; $849F21 |
  SBC.B $0A                                 ; $849F24 |
  STA.B $0A                                 ; $849F26 |
  BRA CODE_849F38                           ; $849F28 |

CODE_849F2A:
  LDA.B $14                                 ; $849F2A |
  CLC                                       ; $849F2C |
  ADC.B $08                                 ; $849F2D |
  STA.B $08                                 ; $849F2F |
  LDA.W #$0000                              ; $849F31 |
  ADC.B $0A                                 ; $849F34 |
  STA.B $0A                                 ; $849F36 |

CODE_849F38:
  BIT.B $0A                                 ; $849F38 |
  BPL CODE_849F4E                           ; $849F3A |
  TDC                                       ; $849F3C |
  SEC                                       ; $849F3D |
  SBC.B $08                                 ; $849F3E |
  STA.B $08                                 ; $849F40 |
  TDC                                       ; $849F42 |
  SBC.B $0A                                 ; $849F43 |
  STA.B $0A                                 ; $849F45 |
  LDA.B $18                                 ; $849F47 |
  EOR.W #$C000                              ; $849F49 |
  STA.B $18                                 ; $849F4C |

CODE_849F4E:
  LDA.W #$0080                              ; $849F4E |
  LDY.B $10                                 ; $849F51 |
  JSL.L CODE_FL_808E18                      ; $849F53 |
  STA.B $0C                                 ; $849F57 |
  STY.B $0E                                 ; $849F59 |
  LDA.B $0C                                 ; $849F5B |
  LDY.B $09                                 ; $849F5D |
  JSL.L CODE_FL_808E7C                      ; $849F5F |
  BIT.B $18                                 ; $849F63 |
  BVS CODE_849F6B                           ; $849F65 |
  EOR.W #$FFFF                              ; $849F67 |
  INC A                                     ; $849F6A |

CODE_849F6B:
  STA.B $10                                 ; $849F6B |
  LDA.W #$0080                              ; $849F6D |
  LDY.B $12                                 ; $849F70 |
  JSL.L CODE_FL_808E18                      ; $849F72 |
  STA.B $0C                                 ; $849F76 |
  STY.B $0E                                 ; $849F78 |
  LDA.B $16                                 ; $849F7A |
  LDY.B $0C                                 ; $849F7C |
  JSL.L CODE_FL_808E18                      ; $849F7E |
  STA.B $0C                                 ; $849F82 |
  STY.B $0E                                 ; $849F84 |
  LDA.B $0D                                 ; $849F86 |
  LDY.B $09                                 ; $849F88 |
  JSL.L CODE_FL_808E7C                      ; $849F8A |
  BIT.B $18                                 ; $849F8E |
  BMI CODE_849F96                           ; $849F90 |
  EOR.W #$FFFF                              ; $849F92 |
  INC A                                     ; $849F95 |

CODE_849F96:
  STA.B $12                                 ; $849F96 |
  PLX                                       ; $849F98 |
  RTS                                       ; $849F99 |

CODE_FN_849F9A:
  PHB                                       ; $849F9A |
  PEA.W $7E00                               ; $849F9B |
  PLB                                       ; $849F9E |
  PLB                                       ; $849F9F |
  SEP #$20                                  ; $849FA0 |
  LDY.W #$0000                              ; $849FA2 |
  LDA.B #$0F                                ; $849FA5 |
  STA.B $00                                 ; $849FA7 |

CODE_849FA9:
  LDA.B #$E0                                ; $849FA9 |
  ORA.B $00                                 ; $849FAB |
  STA.W LOOSE_OP_00EEC4,Y                   ; $849FAD |
  STA.W LOOSE_OP_00EF04,Y                   ; $849FB0 |
  STA.W CODE_00EEC5,Y                       ; $849FB3 |
  STA.W LOOSE_OP_00EF05,Y                   ; $849FB6 |
  INY                                       ; $849FB9 |
  INY                                       ; $849FBA |
  DEC.B $00                                 ; $849FBB |
  BPL CODE_849FA9                           ; $849FBD |
  REP #$20                                  ; $849FBF |
  PLB                                       ; $849FC1 |
  RTS                                       ; $849FC2 |

CODE_FN_849FC3:
  LDA.W $040D                               ; $849FC3 |
  CLC                                       ; $849FC6 |
  ADC.W $1672                               ; $849FC7 |
  CLC                                       ; $849FCA |
  ADC.W $1764                               ; $849FCB |
  SEC                                       ; $849FCE |
  SBC.W #$0100                              ; $849FCF |
  TAY                                       ; $849FD2 |
  LDA.W $0409                               ; $849FD3 |
  CLC                                       ; $849FD6 |
  ADC.W $1662                               ; $849FD7 |
  CLC                                       ; $849FDA |
  ADC.W $1762                               ; $849FDB |
  SEC                                       ; $849FDE |
  SBC.W #$0100                              ; $849FDF |
  JSR.W CODE_FN_849FFD                      ; $849FE2 |
  RTS                                       ; $849FE5 |

CODE_FN_849FE6:
  STA.B $1A,X                               ; $849FE6 |
  STY.B $1C,X                               ; $849FE8 |
  LDA.B $18                                 ; $849FEA |
  STA.B $1E,X                               ; $849FEC |
  LDA.B $1A                                 ; $849FEE |
  STA.B $20,X                               ; $849FF0 |
  LDA.W #$1898                              ; $849FF2 |
  STA.B $04,X                               ; $849FF5 |
  LDA.W #$0001                              ; $849FF7 |
  STA.B $18,X                               ; $849FFA |
  RTS                                       ; $849FFC |

CODE_FN_849FFD:
  STA.B $10                                 ; $849FFD |
  STY.B $12                                 ; $849FFF |
  SEC                                       ; $84A001 |
  SBC.W #$0800                              ; $84A002 |
  STA.B $14                                 ; $84A005 |
  BPL CODE_84A00D                           ; $84A007 |
  EOR.W #$FFFF                              ; $84A009 |
  INC A                                     ; $84A00C |

CODE_84A00D:
  TAY                                       ; $84A00D |
  LDA.W #$00E8                              ; $84A00E |
  JSL.L CODE_FL_808E18                      ; $84A011 |
  STA.B $00                                 ; $84A015 |
  STY.B $02                                 ; $84A017 |
  LDA.B $01                                 ; $84A019 |
  BIT.B $14                                 ; $84A01B |
  BPL CODE_84A023                           ; $84A01D |
  EOR.W #$FFFF                              ; $84A01F |
  INC A                                     ; $84A022 |

CODE_84A023:
  STA.B $18                                 ; $84A023 |
  CLC                                       ; $84A025 |
  ADC.W #$0800                              ; $84A026 |
  STA.B $10                                 ; $84A029 |
  LDA.B $12                                 ; $84A02B |
  SEC                                       ; $84A02D |
  SBC.W #$0800                              ; $84A02E |
  STA.B $14                                 ; $84A031 |
  BPL CODE_84A039                           ; $84A033 |
  EOR.W #$FFFF                              ; $84A035 |
  INC A                                     ; $84A038 |

CODE_84A039:
  TAY                                       ; $84A039 |
  LDA.W #$00D0                              ; $84A03A |
  JSL.L CODE_FL_808E18                      ; $84A03D |
  STA.B $00                                 ; $84A041 |
  STY.B $02                                 ; $84A043 |
  LDA.B $01                                 ; $84A045 |
  BIT.B $14                                 ; $84A047 |
  BPL CODE_84A04F                           ; $84A049 |
  EOR.W #$FFFF                              ; $84A04B |
  INC A                                     ; $84A04E |

CODE_84A04F:
  STA.B $1A                                 ; $84A04F |
  CLC                                       ; $84A051 |
  ADC.W #$0760                              ; $84A052 |
  TAY                                       ; $84A055 |
  LDA.B $10                                 ; $84A056 |
  RTS                                       ; $84A058 |

CODE_FN_84A059:
  STZ.B $00                                 ; $84A059 |
  LDA.B $20,X                               ; $84A05B |
  BPL CODE_84A061                           ; $84A05D |
  DEC.B $00                                 ; $84A05F |

CODE_84A061:
  LSR.B $00                                 ; $84A061 |
  ROR A                                     ; $84A063 |
  LSR.B $00                                 ; $84A064 |
  ROR A                                     ; $84A066 |
  LSR.B $00                                 ; $84A067 |
  ROR A                                     ; $84A069 |
  CLC                                       ; $84A06A |
  ADC.W #$0280                              ; $84A06B |
  CMP.W #$01F8                              ; $84A06E |
  BCS CODE_84A078                           ; $84A071 |
  LDA.W #$01F8                              ; $84A073 |
  BRA CODE_84A080                           ; $84A076 |

CODE_84A078:
  CMP.W #$0300                              ; $84A078 |
  BCC CODE_84A080                           ; $84A07B |
  LDA.W #$02FF                              ; $84A07D |

CODE_84A080:
  STA.W $1FF0                               ; $84A080 |
  CLC                                       ; $84A083 |
  ADC.W #$0080                              ; $84A084 |
  STA.W $1FD2                               ; $84A087 |
  RTS                                       ; $84A08A |

CODE_FN_84A08B:
  JSR.W CODE_FN_849E69                      ; $84A08B |
  LDA.B $09,X                               ; $84A08E |
  BMI CODE_84A0BD                           ; $84A090 |
  SEC                                       ; $84A092 |
  SBC.W #$0080                              ; $84A093 |
  BPL CODE_84A09C                           ; $84A096 |
  EOR.W #$FFFF                              ; $84A098 |
  INC A                                     ; $84A09B |

CODE_84A09C:
  CMP.W #$0008                              ; $84A09C |
  BCC CODE_84A0CC                           ; $84A09F |
  LDA.B $09,X                               ; $84A0A1 |
  CLC                                       ; $84A0A3 |
  ADC.W #$8000                              ; $84A0A4 |
  CMP.W #$8080                              ; $84A0A7 |
  BCC CODE_84A0BD                           ; $84A0AA |
  INC.W $1662                               ; $84A0AC |
  LDA.W $1662                               ; $84A0AF |
  CLC                                       ; $84A0B2 |
  ADC.W #$0080                              ; $84A0B3 |
  CMP.W #$01DF                              ; $84A0B6 |
  BCC CODE_FN_84A08B                        ; $84A0B9 |
  BRA CODE_84A0CC                           ; $84A0BB |

CODE_84A0BD:
  DEC.W $1662                               ; $84A0BD |
  LDA.W $1662                               ; $84A0C0 |
  CLC                                       ; $84A0C3 |
  ADC.W #$0080                              ; $84A0C4 |
  CMP.W #$0001                              ; $84A0C7 |
  BCS CODE_FN_84A08B                        ; $84A0CA |

CODE_84A0CC:
  RTS                                       ; $84A0CC |

CODE_FN_84A0CD:
  LDA.W #$F084                              ; $84A0CD |
  STA.W $12B0                               ; $84A0D0 |
  LDA.W #$03E8                              ; $84A0D3 |
  JSL.L CODE_FL_80A634                      ; $84A0D6 |
  BCC CODE_84A0E2                           ; $84A0DA |
  LDA.W #$F095                              ; $84A0DC |
  STA.W $1300                               ; $84A0DF |

CODE_84A0E2:
  LDA.W #$03E9                              ; $84A0E2 |
  JSL.L CODE_FL_80A634                      ; $84A0E5 |
  BCC CODE_84A0F1                           ; $84A0E9 |
  LDA.W #$F095                              ; $84A0EB |
  STA.W $132A                               ; $84A0EE |

CODE_84A0F1:
  LDA.W #$03EA                              ; $84A0F1 |
  JSL.L CODE_FL_80A634                      ; $84A0F4 |
  BCC CODE_84A100                           ; $84A0F8 |
  LDA.W #$F095                              ; $84A0FA |
  STA.W $1354                               ; $84A0FD |

CODE_84A100:
  LDA.W #$03EB                              ; $84A100 |
  JSL.L CODE_FL_80A634                      ; $84A103 |
  BCC CODE_84A10F                           ; $84A107 |
  LDA.W #$F095                              ; $84A109 |
  STA.W $137E                               ; $84A10C |

CODE_84A10F:
  LDA.W #$03EC                              ; $84A10F |
  JSL.L CODE_FL_80A634                      ; $84A112 |
  BCC CODE_84A11E                           ; $84A116 |
  LDA.W #$F095                              ; $84A118 |
  STA.W $13A8                               ; $84A11B |

CODE_84A11E:
  RTS                                       ; $84A11E |

CODE_FN_84A11F:
  LDA.B $42                                 ; $84A11F |
  AND.W #$0003                              ; $84A121 |
  BNE CODE_84A134                           ; $84A124 |
  LDA.W $14FA                               ; $84A126 |
  INC A                                     ; $84A129 |
  INC A                                     ; $84A12A |
  CMP.W #$000C                              ; $84A12B |
  BCC CODE_84A131                           ; $84A12E |
  TDC                                       ; $84A130 |

CODE_84A131:
  STA.W $14FA                               ; $84A131 |

CODE_84A134:
  RTS                                       ; $84A134 |

CODE_FN_84A135:
  JSR.W CODE_FN_84A11F                      ; $84A135 |
  STZ.B $00                                 ; $84A138 |
  LDA.L $7002C8                             ; $84A13A |
  BNE CODE_84A148                           ; $84A13E |
  LDY.W #$13D2                              ; $84A140 |
  JSR.W CODE_FN_84A199                      ; $84A143 |
  DEC.B $00                                 ; $84A146 |

CODE_84A148:
  LDA.L $7002D0                             ; $84A148 |
  BNE CODE_84A156                           ; $84A14C |
  LDY.W #$13FC                              ; $84A14E |
  JSR.W CODE_FN_84A199                      ; $84A151 |
  DEC.B $00                                 ; $84A154 |

CODE_84A156:
  LDA.L $7002D2                             ; $84A156 |
  BNE CODE_84A164                           ; $84A15A |
  LDY.W #$1426                              ; $84A15C |
  JSR.W CODE_FN_84A199                      ; $84A15F |
  DEC.B $00                                 ; $84A162 |

CODE_84A164:
  LDA.L $7002CE                             ; $84A164 |
  BNE CODE_84A172                           ; $84A168 |
  LDY.W #$1450                              ; $84A16A |
  JSR.W CODE_FN_84A199                      ; $84A16D |
  DEC.B $00                                 ; $84A170 |

CODE_84A172:
  LDA.L $7002CA                             ; $84A172 |
  BNE CODE_84A180                           ; $84A176 |
  LDY.W #$147A                              ; $84A178 |
  JSR.W CODE_FN_84A199                      ; $84A17B |
  DEC.B $00                                 ; $84A17E |

CODE_84A180:
  LDA.L $7002CA                             ; $84A180 |
  BNE CODE_84A18E                           ; $84A184 |
  LDY.W #$14A4                              ; $84A186 |
  JSR.W CODE_FN_84A199                      ; $84A189 |
  DEC.B $00                                 ; $84A18C |

CODE_84A18E:
  LDA.B $00                                 ; $84A18E |
  BMI CODE_84A198                           ; $84A190 |
  LDY.W #$14CE                              ; $84A192 |
  JSR.W CODE_FN_84A199                      ; $84A195 |

CODE_84A198:
  RTS                                       ; $84A198 |

CODE_FN_84A199:
  LDX.W $14FA                               ; $84A199 |
  LDA.L PTR16_84A1A4,X                      ; $84A19C |
  STA.W $0000,Y                             ; $84A1A0 |
  RTS                                       ; $84A1A3 |

PTR16_84A1A4:
  dw LOOSE_OP_84F09A                        ; $84A1A4 |
  dw LOOSE_OP_84F09F                        ; $84A1A6 |
  dw LOOSE_OP_84F0A4                        ; $84A1A8 |
  dw CODE_84F0A9                            ; $84A1AA |
  dw LOOSE_OP_84F0AE                        ; $84A1AC |
  dw LOOSE_OP_84F0B3                        ; $84A1AE |

CODE_FN_84A1B0:
  STZ.W $12B0                               ; $84A1B0 |
  STZ.W $1300                               ; $84A1B3 |
  STZ.W $132A                               ; $84A1B6 |
  STZ.W $1354                               ; $84A1B9 |
  STZ.W $137E                               ; $84A1BC |
  STZ.W $13A8                               ; $84A1BF |
  STZ.W $13D2                               ; $84A1C2 |
  STZ.W $13FC                               ; $84A1C5 |
  STZ.W $1426                               ; $84A1C8 |
  STZ.W $1450                               ; $84A1CB |
  STZ.W $147A                               ; $84A1CE |
  STZ.W $14A4                               ; $84A1D1 |
  STZ.W $14CE                               ; $84A1D4 |
  RTS                                       ; $84A1D7 |

CODE_FL_84A1D8:
  LDX.W #DATA_8888C3                        ; $84A1D8 |
  JSL.L sound_transfer_blocks               ; $84A1DB |
  LDX.W #DATA_8888DA                        ; $84A1DF |
  JML.L sound_transfer_blocks               ; $84A1E2 |

CODE_FL_84A1E6:
  LDY.W #$C000                              ; $84A1E6 |
  JML.L CODE_FL_80972B                      ; $84A1E9 |

CODE_FL_84A1ED:
  LDA.W #$1820                              ; $84A1ED |
  TCD                                       ; $84A1F0 |
  LDA.W #$29E4                              ; $84A1F1 |
  STA.B $24                                 ; $84A1F4 |
  INC A                                     ; $84A1F6 |
  STA.B $26                                 ; $84A1F7 |
  INC A                                     ; $84A1F9 |
  STA.B $28                                 ; $84A1FA |
  LDA.W #$69E6                              ; $84A1FC |
  STA.B $32                                 ; $84A1FF |
  LDA.W #$29E5                              ; $84A201 |
  STA.B $34                                 ; $84A204 |
  LDA.W #$69E4                              ; $84A206 |
  STA.B $36                                 ; $84A209 |
  LDA.W #$29E7                              ; $84A20B |
  STA.B $64                                 ; $84A20E |
  LDA.W #$29E7                              ; $84A210 |
  STA.B $A4                                 ; $84A213 |
  LDA.W #$29E7                              ; $84A215 |
  STA.B $76                                 ; $84A218 |
  LDA.W #$29E7                              ; $84A21A |
  STA.B $B6                                 ; $84A21D |
  LDA.W #$A9E4                              ; $84A21F |
  STA.B $E4                                 ; $84A222 |
  LDA.W #$29E5                              ; $84A224 |
  STA.B $E6                                 ; $84A227 |
  STA.B $E8                                 ; $84A229 |
  STA.B $EA                                 ; $84A22B |
  STA.B $EC                                 ; $84A22D |
  STA.B $EE                                 ; $84A22F |
  STA.B $F0                                 ; $84A231 |
  STA.B $F2                                 ; $84A233 |
  STA.B $F4                                 ; $84A235 |
  LDA.W #$E9E4                              ; $84A237 |
  STA.B $F6                                 ; $84A23A |
  SEP #$20                                  ; $84A23C |
  LDA.B #$33                                ; $84A23E |
  STA.B $0B                                 ; $84A240 |
  STA.B $0D                                 ; $84A242 |
  STA.B $0F                                 ; $84A244 |
  STA.B $11                                 ; $84A246 |
  STA.B $4B                                 ; $84A248 |
  STA.B $4D                                 ; $84A24A |
  STA.B $4F                                 ; $84A24C |
  STA.B $51                                 ; $84A24E |
  LDA.B #$23                                ; $84A250 |
  STA.B $8B                                 ; $84A252 |
  STA.B $8D                                 ; $84A254 |
  STA.B $CD                                 ; $84A256 |
  STA.B $D7                                 ; $84A258 |
  STA.B $D9                                 ; $84A25A |
  STA.B $DB                                 ; $84A25C |
  STA.B $DF                                 ; $84A25E |
  STA.B $E1                                 ; $84A260 |
  STA.B $E3                                 ; $84A262 |
  STA.B $2F                                 ; $84A264 |
  STA.B $31                                 ; $84A266 |
  REP #$20                                  ; $84A268 |
  LDA.W #$2FF5                              ; $84A26A |
  STA.B $C8                                 ; $84A26D |
  LDA.W #$23AC                              ; $84A26F |
  STA.B $CA                                 ; $84A272 |
  LDA.W $0090                               ; $84A274 |
  CMP.W #$0002                              ; $84A277 |
  BEQ CODE_84A281                           ; $84A27A |
  CMP.W #$0003                              ; $84A27C |
  BNE CODE_84A2B7                           ; $84A27F |

CODE_84A281:
  LDA.W #$29E5                              ; $84A281 |
  STA.B $28                                 ; $84A284 |
  STA.B $32                                 ; $84A286 |
  LDA.W #$3301                              ; $84A288 |
  STA.B $66                                 ; $84A28B |
  LDA.W #$3311                              ; $84A28D |
  STA.B $A6                                 ; $84A290 |
  LDA.W #$3324                              ; $84A292 |
  STA.B $68                                 ; $84A295 |
  LDA.W #$3334                              ; $84A297 |
  STA.B $A8                                 ; $84A29A |
  LDA.W #$21EB                              ; $84A29C |
  STA.B $B4                                 ; $84A29F |
  SEP #$20                                  ; $84A2A1 |
  LDA.B #$33                                ; $84A2A3 |
  STA.B $6D                                 ; $84A2A5 |
  STA.B $AD                                 ; $84A2A7 |
  STA.B $6F                                 ; $84A2A9 |
  STA.B $AF                                 ; $84A2AB |
  STA.B $71                                 ; $84A2AD |
  STA.B $B1                                 ; $84A2AF |
  STA.B $73                                 ; $84A2B1 |
  STA.B $B3                                 ; $84A2B3 |
  REP #$20                                  ; $84A2B5 |

CODE_84A2B7:
  LDA.W $0090                               ; $84A2B7 |
  CMP.W #$0003                              ; $84A2BA |
  BNE CODE_84A2E4                           ; $84A2BD |
  LDA.W #$33F6                              ; $84A2BF |
  STA.B $88                                 ; $84A2C2 |
  LDA.W #$B3F6                              ; $84A2C4 |
  STA.B $C8                                 ; $84A2C7 |
  LDA.W #$2300                              ; $84A2C9 |
  STA.B $CA                                 ; $84A2CC |
  SEP #$20                                  ; $84A2CE |
  LDA.B #$33                                ; $84A2D0 |
  STA.B $8D                                 ; $84A2D2 |
  STA.B $CD                                 ; $84A2D4 |
  STA.B $8F                                 ; $84A2D6 |
  STA.B $CF                                 ; $84A2D8 |
  STA.B $91                                 ; $84A2DA |
  STA.B $D1                                 ; $84A2DC |
  STA.B $93                                 ; $84A2DE |
  STA.B $D3                                 ; $84A2E0 |
  REP #$20                                  ; $84A2E2 |

CODE_84A2E4:
  LDA.W #$0000                              ; $84A2E4 |
  TCD                                       ; $84A2E7 |
  RTL                                       ; $84A2E8 |

CODE_FL_84A2E9:
  PHB                                       ; $84A2E9 |
  PEA.W $8181                               ; $84A2EA |
  PLB                                       ; $84A2ED |
  PLB                                       ; $84A2EE |
  LDA.B $90                                 ; $84A2EF |
  CMP.W #$0003                              ; $84A2F1 |
  BEQ CODE_84A301                           ; $84A2F4 |
  CMP.W #$0002                              ; $84A2F6 |
  BEQ CODE_84A2FE                           ; $84A2F9 |
  JMP.W CODE_JP_84A426                      ; $84A2FB |

CODE_84A2FE:
  JMP.W CODE_JP_84A3F5                      ; $84A2FE |

CODE_84A301:
  LDA.W #$1820                              ; $84A301 |
  TCD                                       ; $84A304 |
  LDX.W #$0400                              ; $84A305 |
  LDA.W $1C98                               ; $84A308 |
  JSR.W CODE_FN_84A4BE                      ; $84A30B |
  JSR.W CODE_FN_84A579                      ; $84A30E |
  JSR.W CODE_FN_84A5B4                      ; $84A311 |
  SEP #$20                                  ; $84A314 |
  JSR.W CODE_FN_84A67B                      ; $84A316 |
  JSR.W CODE_FN_84A69E                      ; $84A319 |
  STZ.W $0010                               ; $84A31C |
  LDA.L $7007BB                             ; $84A31F |
  LSR A                                     ; $84A323 |
  LSR A                                     ; $84A324 |
  LSR A                                     ; $84A325 |
  LSR A                                     ; $84A326 |
  BEQ CODE_84A336                           ; $84A327 |
  INC.W $0010                               ; $84A329 |
  ORA.B #$60                                ; $84A32C |
  STA.B $8C                                 ; $84A32E |
  ORA.B #$10                                ; $84A330 |
  STA.B $CC                                 ; $84A332 |
  BRA CODE_84A33A                           ; $84A334 |

CODE_84A336:
  STA.B $8C                                 ; $84A336 |
  STA.B $CC                                 ; $84A338 |

CODE_84A33A:
  LDA.L $7007BB                             ; $84A33A |
  AND.B #$0F                                ; $84A33E |
  BEQ CODE_84A360                           ; $84A340 |

CODE_84A342:
  SEC                                       ; $84A342 |
  ROL.W $0010                               ; $84A343 |
  ORA.B #$60                                ; $84A346 |
  STA.B $8E                                 ; $84A348 |
  CMP.B #$60                                ; $84A34A |
  BNE CODE_84A356                           ; $84A34C |
  STA.B $CE                                 ; $84A34E |
  LDA.B #$B3                                ; $84A350 |
  STA.B $CF                                 ; $84A352 |
  BRA CODE_84A369                           ; $84A354 |

CODE_84A356:
  ORA.B #$10                                ; $84A356 |
  STA.B $CE                                 ; $84A358 |
  LDA.B #$33                                ; $84A35A |
  STA.B $CF                                 ; $84A35C |
  BRA CODE_84A369                           ; $84A35E |

CODE_84A360:
  LSR.W $0010                               ; $84A360 |
  BCS CODE_84A342                           ; $84A363 |
  STA.B $8E                                 ; $84A365 |
  STA.B $CE                                 ; $84A367 |

CODE_84A369:
  LDA.L $7007BA                             ; $84A369 |
  LSR A                                     ; $84A36D |
  LSR A                                     ; $84A36E |
  LSR A                                     ; $84A36F |
  LSR A                                     ; $84A370 |
  BEQ CODE_84A38D                           ; $84A371 |

CODE_84A373:
  ORA.B #$60                                ; $84A373 |
  STA.B $90                                 ; $84A375 |
  CMP.B #$60                                ; $84A377 |
  BNE CODE_84A383                           ; $84A379 |
  STA.B $D0                                 ; $84A37B |
  LDA.B #$B3                                ; $84A37D |
  STA.B $D1                                 ; $84A37F |
  BRA CODE_84A396                           ; $84A381 |

CODE_84A383:
  ORA.B #$10                                ; $84A383 |
  STA.B $D0                                 ; $84A385 |
  LDA.B #$33                                ; $84A387 |
  STA.B $D1                                 ; $84A389 |
  BRA CODE_84A396                           ; $84A38B |

CODE_84A38D:
  LSR.W $0010                               ; $84A38D |
  BCS CODE_84A373                           ; $84A390 |
  STA.B $90                                 ; $84A392 |
  STA.B $D0                                 ; $84A394 |

CODE_84A396:
  LDA.L $7007BA                             ; $84A396 |
  AND.B #$0F                                ; $84A39A |
  ORA.B #$60                                ; $84A39C |
  STA.B $92                                 ; $84A39E |
  CMP.B #$60                                ; $84A3A0 |
  BNE CODE_84A3AC                           ; $84A3A2 |
  STA.B $D2                                 ; $84A3A4 |
  LDA.B #$B3                                ; $84A3A6 |
  STA.B $D3                                 ; $84A3A8 |
  BRA CODE_84A3B4                           ; $84A3AA |

CODE_84A3AC:
  ORA.B #$10                                ; $84A3AC |
  STA.B $D2                                 ; $84A3AE |
  LDA.B #$33                                ; $84A3B0 |
  STA.B $D3                                 ; $84A3B2 |

CODE_84A3B4:
  JSR.W CODE_FN_84A855                      ; $84A3B4 |
  REP #$20                                  ; $84A3B7 |
  JSR.W CODE_FN_84A81D                      ; $84A3B9 |
  LDA.W #$1858                              ; $84A3BC |
  TCD                                       ; $84A3BF |
  LDX.W #$04C0                              ; $84A3C0 |
  LDA.W $0018,X                             ; $84A3C3 |
  BNE CODE_84A3E6                           ; $84A3C6 |
  LDA.W $0084                               ; $84A3C8 |
  AND.W #$0010                              ; $84A3CB |
  BNE CODE_84A3D5                           ; $84A3CE |
  LDY.W #$0000                              ; $84A3D0 |
  BRA CODE_84A3E1                           ; $84A3D3 |

CODE_84A3D5:
  JSL.L CODE_FL_8381A6                      ; $84A3D5 |
  LDY.W #$0008                              ; $84A3D9 |
  BCC CODE_84A3E1                           ; $84A3DC |
  LDY.W #$0010                              ; $84A3DE |

CODE_84A3E1:
  JSR.W CODE_FN_84A4D7                      ; $84A3E1 |
  BRA CODE_84A3EF                           ; $84A3E4 |

CODE_84A3E6:
  LDA.W $1C98                               ; $84A3E6 |
  EOR.W #$0001                              ; $84A3E9 |
  JSR.W CODE_FN_84A4BE                      ; $84A3EC |

CODE_84A3EF:
  LDA.W #$0000                              ; $84A3EF |
  TCD                                       ; $84A3F2 |
  PLB                                       ; $84A3F3 |
  RTL                                       ; $84A3F4 |

CODE_JP_84A3F5:
  LDA.W #$1820                              ; $84A3F5 |
  TCD                                       ; $84A3F8 |
  LDX.W #$0400                              ; $84A3F9 |
  JSR.W CODE_FN_84A453                      ; $84A3FC |
  JSR.W CODE_FN_84A579                      ; $84A3FF |
  JSR.W CODE_FN_84A5B4                      ; $84A402 |
  SEP #$20                                  ; $84A405 |
  JSR.W CODE_FN_84A67B                      ; $84A407 |
  JSR.W CODE_FN_84A662                      ; $84A40A |
  JSR.W CODE_FN_84A69E                      ; $84A40D |
  JSR.W CODE_FN_84A707                      ; $84A410 |
  SEP #$20                                  ; $84A413 |
  JSR.W CODE_FN_84A855                      ; $84A415 |
  REP #$20                                  ; $84A418 |
  JSR.W CODE_FN_84A81D                      ; $84A41A |
  JSR.W CODE_FN_84A7EF                      ; $84A41D |
  LDA.W #$0000                              ; $84A420 |
  TCD                                       ; $84A423 |
  PLB                                       ; $84A424 |
  RTL                                       ; $84A425 |

CODE_JP_84A426:
  LDA.W #$1820                              ; $84A426 |
  TCD                                       ; $84A429 |
  LDX.W #$0400                              ; $84A42A |
  JSR.W CODE_FN_84A7DE                      ; $84A42D |
  JSR.W CODE_FN_84A579                      ; $84A430 |
  JSR.W CODE_FN_84A5B4                      ; $84A433 |
  SEP #$20                                  ; $84A436 |
  JSR.W CODE_FN_84A67B                      ; $84A438 |
  JSR.W CODE_FN_84A662                      ; $84A43B |
  JSR.W CODE_FN_84A69E                      ; $84A43E |
  JSR.W CODE_FN_84A707                      ; $84A441 |
  JSR.W CODE_FN_84A761                      ; $84A444 |
  JSR.W CODE_FN_84A81D                      ; $84A447 |
  JSR.W CODE_FN_84A7EF                      ; $84A44A |
  LDA.W #$0000                              ; $84A44D |
  TCD                                       ; $84A450 |
  PLB                                       ; $84A451 |
  RTL                                       ; $84A452 |

CODE_FN_84A453:
  LDA.W $0018,X                             ; $84A453 |
  ASL A                                     ; $84A456 |
  ASL A                                     ; $84A457 |
  ASL A                                     ; $84A458 |
  ASL A                                     ; $84A459 |
  ASL A                                     ; $84A45A |
  STA.W $0010                               ; $84A45B |
  LDA.W $009E,X                             ; $84A45E |
  CMP.W #$0002                              ; $84A461 |
  STA.W $0012                               ; $84A464 |
  BEQ CODE_84A488                           ; $84A467 |

CODE_84A469:
  LDA.W $0012                               ; $84A469 |
  ASL A                                     ; $84A46C |
  ASL A                                     ; $84A46D |
  ASL A                                     ; $84A46E |
  ORA.W $0010                               ; $84A46F |
  TAY                                       ; $84A472 |
  LDA.W CODE_00F751,Y                       ; $84A473 |
  STA.B $42                                 ; $84A476 |
  LDA.W CODE_00F753,Y                       ; $84A478 |
  STA.B $44                                 ; $84A47B |
  LDA.W LOOSE_OP_00F755,Y                   ; $84A47D |
  STA.B $82                                 ; $84A480 |
  LDA.W LOOSE_OP_00F757,Y                   ; $84A482 |
  STA.B $84                                 ; $84A485 |
  RTS                                       ; $84A487 |

CODE_84A488:
  LDA.W $004E,X                             ; $84A488 |
  AND.W #$00FF                              ; $84A48B |
  BEQ CODE_84A469                           ; $84A48E |
  CMP.W #$0080                              ; $84A490 |
  BCS CODE_84A4A2                           ; $84A493 |
  CMP.W #$0030                              ; $84A495 |
  BCC CODE_84A469                           ; $84A498 |
  LDA.W $0084                               ; $84A49A |
  AND.W #$0004                              ; $84A49D |
  BNE CODE_84A469                           ; $84A4A0 |

CODE_84A4A2:
  LDA.W #$0018                              ; $84A4A2 |
  ORA.W $0010                               ; $84A4A5 |
  TAY                                       ; $84A4A8 |
  LDA.W CODE_00F751,Y                       ; $84A4A9 |
  STA.B $42                                 ; $84A4AC |
  LDA.W CODE_00F753,Y                       ; $84A4AE |
  STA.B $44                                 ; $84A4B1 |
  LDA.W LOOSE_OP_00F755,Y                   ; $84A4B3 |
  STA.B $82                                 ; $84A4B6 |
  LDA.W LOOSE_OP_00F757,Y                   ; $84A4B8 |
  STA.B $84                                 ; $84A4BB |
  RTS                                       ; $84A4BD |

CODE_FN_84A4BE:
  ASL A                                     ; $84A4BE |
  ASL A                                     ; $84A4BF |
  ASL A                                     ; $84A4C0 |
  TAY                                       ; $84A4C1 |
  LDA.W CODE_00F7F1,Y                       ; $84A4C2 |
  STA.B $42                                 ; $84A4C5 |
  LDA.W LOOSE_OP_00F7F3,Y                   ; $84A4C7 |
  STA.B $44                                 ; $84A4CA |
  LDA.W CODE_00F7F5,Y                       ; $84A4CC |
  STA.B $82                                 ; $84A4CF |
  LDA.W LOOSE_OP_00F7F7,Y                   ; $84A4D1 |
  STA.B $84                                 ; $84A4D4 |
  RTS                                       ; $84A4D6 |

CODE_FN_84A4D7:
  LDA.W CODE_00F751,Y                       ; $84A4D7 |
  STA.B $42                                 ; $84A4DA |
  LDA.W CODE_00F753,Y                       ; $84A4DC |
  STA.B $44                                 ; $84A4DF |
  LDA.W LOOSE_OP_00F755,Y                   ; $84A4E1 |
  STA.B $82                                 ; $84A4E4 |
  LDA.W LOOSE_OP_00F757,Y                   ; $84A4E6 |
  STA.B $84                                 ; $84A4E9 |
  RTS                                       ; $84A4EB |

CODE_FN_84A4EC:
  DEC A                                     ; $84A4EC |
  BMI CODE_84A561                           ; $84A4ED |
  STA.W $0000                               ; $84A4EF |
  LDA.W LOOSE_OP_00F841,Y                   ; $84A4F2 |
  STA.B $14                                 ; $84A4F5 |
  DEC.W $0000                               ; $84A4F7 |
  BMI CODE_84A53E                           ; $84A4FA |
  LDA.W LOOSE_OP_00F83D,Y                   ; $84A4FC |
  STA.B $16                                 ; $84A4FF |
  DEC.W $0000                               ; $84A501 |
  BMI CODE_84A543                           ; $84A504 |
  LDA.W LOOSE_OP_00F839,Y                   ; $84A506 |
  STA.B $18                                 ; $84A509 |
  DEC.W $0000                               ; $84A50B |
  BMI CODE_84A548                           ; $84A50E |
  LDA.W LOOSE_OP_00F835,Y                   ; $84A510 |
  STA.B $1A                                 ; $84A513 |
  DEC.W $0000                               ; $84A515 |
  BMI CODE_84A54D                           ; $84A518 |
  LDA.W LOOSE_OP_00F831,Y                   ; $84A51A |
  STA.B $1C                                 ; $84A51D |
  DEC.W $0000                               ; $84A51F |
  BMI CODE_84A552                           ; $84A522 |
  LDA.W LOOSE_OP_00F82D,Y                   ; $84A524 |
  STA.B $1E                                 ; $84A527 |
  DEC.W $0000                               ; $84A529 |
  BMI CODE_84A557                           ; $84A52C |
  LDA.W LOOSE_OP_00F829,Y                   ; $84A52E |
  STA.B $20                                 ; $84A531 |
  DEC.W $0000                               ; $84A533 |
  BMI CODE_84A55C                           ; $84A536 |
  LDA.W LOOSE_OP_00F825,Y                   ; $84A538 |
  STA.B $22                                 ; $84A53B |
  RTS                                       ; $84A53D |

CODE_84A53E:
  LDA.W #$23FF                              ; $84A53E |
  BRA CODE_84A566                           ; $84A541 |

CODE_84A543:
  LDA.W #$23FF                              ; $84A543 |
  BRA CODE_84A568                           ; $84A546 |

CODE_84A548:
  LDA.W #$23FF                              ; $84A548 |
  BRA CODE_84A56A                           ; $84A54B |

CODE_84A54D:
  LDA.W #$23FF                              ; $84A54D |
  BRA CODE_84A56C                           ; $84A550 |

CODE_84A552:
  LDA.W #$23FF                              ; $84A552 |
  BRA CODE_84A56E                           ; $84A555 |

CODE_84A557:
  LDA.W #$23FF                              ; $84A557 |
  BRA CODE_84A570                           ; $84A55A |

CODE_84A55C:
  LDA.W #$23FF                              ; $84A55C |
  BRA CODE_84A572                           ; $84A55F |

CODE_84A561:
  LDA.W #$23FF                              ; $84A561 |
  STA.B $14                                 ; $84A564 |

CODE_84A566:
  STA.B $16                                 ; $84A566 |

CODE_84A568:
  STA.B $18                                 ; $84A568 |

CODE_84A56A:
  STA.B $1A                                 ; $84A56A |

CODE_84A56C:
  STA.B $1C                                 ; $84A56C |

CODE_84A56E:
  STA.B $1E                                 ; $84A56E |

CODE_84A570:
  STA.B $20                                 ; $84A570 |

CODE_84A572:
  STA.B $22                                 ; $84A572 |
  RTS                                       ; $84A574 |

CODE_FL_84A575:
  JSR.W CODE_FN_84A579                      ; $84A575 |
  RTL                                       ; $84A578 |

CODE_FN_84A579:
  LDA.W $00BA                               ; $84A579 |
  CMP.W #$0020                              ; $84A57C |
  BCC CODE_84A584                           ; $84A57F |
  LDA.W #$0020                              ; $84A581 |

CODE_84A584:
  ASL A                                     ; $84A584 |
  TAY                                       ; $84A585 |
  LDA.W $00BC                               ; $84A586 |
  LSR A                                     ; $84A589 |
  JSR.W CODE_FN_84A4EC                      ; $84A58A |
  LDA.W #$1860                              ; $84A58D |
  TCD                                       ; $84A590 |
  LDA.W $00BA                               ; $84A591 |
  SEC                                       ; $84A594 |
  SBC.W #$0010                              ; $84A595 |
  BCS CODE_84A59D                           ; $84A598 |
  LDA.W #$0000                              ; $84A59A |

CODE_84A59D:
  ASL A                                     ; $84A59D |
  TAY                                       ; $84A59E |
  LDA.W $00BC                               ; $84A59F |
  SEC                                       ; $84A5A2 |
  SBC.W #$0010                              ; $84A5A3 |
  BCS CODE_84A5AB                           ; $84A5A6 |
  LDA.W #$0000                              ; $84A5A8 |

CODE_84A5AB:
  LSR A                                     ; $84A5AB |
  JSR.W CODE_FN_84A4EC                      ; $84A5AC |
  RTS                                       ; $84A5AF |

CODE_FL_84A5B0:
  JSR.W CODE_FN_84A5B4                      ; $84A5B0 |
  RTL                                       ; $84A5B3 |

CODE_FN_84A5B4:
  LDA.W #$1820                              ; $84A5B4 |
  TCD                                       ; $84A5B7 |
  LDA.W $0090                               ; $84A5B8 |
  CMP.W #$0003                              ; $84A5BB |
  BNE CODE_84A5C6                           ; $84A5BE |
  LDA.L $7007BC                             ; $84A5C0 |
  BRA CODE_84A5C9                           ; $84A5C4 |

CODE_84A5C6:
  LDA.W $00BE                               ; $84A5C6 |

CODE_84A5C9:
  STA.W $0018                               ; $84A5C9 |
  SEP #$20                                  ; $84A5CC |
  STZ.W $0010                               ; $84A5CE |
  LDA.W $0019                               ; $84A5D1 |
  LSR A                                     ; $84A5D4 |
  LSR A                                     ; $84A5D5 |
  LSR A                                     ; $84A5D6 |
  LSR A                                     ; $84A5D7 |
  BEQ CODE_84A5E7                           ; $84A5D8 |
  INC.W $0010                               ; $84A5DA |
  ORA.B #$60                                ; $84A5DD |
  STA.B $0A                                 ; $84A5DF |
  ORA.B #$10                                ; $84A5E1 |
  STA.B $4A                                 ; $84A5E3 |
  BRA CODE_84A5EB                           ; $84A5E5 |

CODE_84A5E7:
  STA.B $0A                                 ; $84A5E7 |
  STA.B $4A                                 ; $84A5E9 |

CODE_84A5EB:
  LDA.W $0019                               ; $84A5EB |
  AND.B #$0F                                ; $84A5EE |
  BEQ CODE_84A610                           ; $84A5F0 |

CODE_84A5F2:
  SEC                                       ; $84A5F2 |
  ROL.W $0010                               ; $84A5F3 |
  ORA.B #$60                                ; $84A5F6 |
  STA.B $0C                                 ; $84A5F8 |
  CMP.B #$60                                ; $84A5FA |
  BNE CODE_84A606                           ; $84A5FC |
  STA.B $4C                                 ; $84A5FE |
  LDA.B #$B3                                ; $84A600 |
  STA.B $4D                                 ; $84A602 |
  BRA CODE_84A619                           ; $84A604 |

CODE_84A606:
  ORA.B #$10                                ; $84A606 |
  STA.B $4C                                 ; $84A608 |
  LDA.B #$33                                ; $84A60A |
  STA.B $4D                                 ; $84A60C |
  BRA CODE_84A619                           ; $84A60E |

CODE_84A610:
  LSR.W $0010                               ; $84A610 |
  BCS CODE_84A5F2                           ; $84A613 |
  STA.B $0C                                 ; $84A615 |
  STA.B $4C                                 ; $84A617 |

CODE_84A619:
  LDA.W $0018                               ; $84A619 |
  LSR A                                     ; $84A61C |
  LSR A                                     ; $84A61D |
  LSR A                                     ; $84A61E |
  LSR A                                     ; $84A61F |
  BEQ CODE_84A63C                           ; $84A620 |

CODE_84A622:
  ORA.B #$60                                ; $84A622 |
  STA.B $0E                                 ; $84A624 |
  CMP.B #$60                                ; $84A626 |
  BNE CODE_84A632                           ; $84A628 |
  STA.B $4E                                 ; $84A62A |
  LDA.B #$B3                                ; $84A62C |
  STA.B $4F                                 ; $84A62E |
  BRA CODE_84A645                           ; $84A630 |

CODE_84A632:
  ORA.B #$10                                ; $84A632 |
  STA.B $4E                                 ; $84A634 |
  LDA.B #$33                                ; $84A636 |
  STA.B $4F                                 ; $84A638 |
  BRA CODE_84A645                           ; $84A63A |

CODE_84A63C:
  LSR.W $0010                               ; $84A63C |
  BCS CODE_84A622                           ; $84A63F |
  STA.B $0E                                 ; $84A641 |
  STA.B $4E                                 ; $84A643 |

CODE_84A645:
  LDA.W $0018                               ; $84A645 |
  AND.B #$0F                                ; $84A648 |
  ORA.B #$60                                ; $84A64A |
  STA.B $10                                 ; $84A64C |
  CMP.B #$60                                ; $84A64E |
  BNE CODE_84A659                           ; $84A650 |
  STA.B $50                                 ; $84A652 |
  LDA.B #$B3                                ; $84A654 |
  STA.B $51                                 ; $84A656 |
  RTS                                       ; $84A658 |

CODE_84A659:
  ORA.B #$10                                ; $84A659 |
  STA.B $50                                 ; $84A65B |
  LDA.B #$33                                ; $84A65D |
  STA.B $51                                 ; $84A65F |
  RTS                                       ; $84A661 |

CODE_FN_84A662:
  LDA.L $700296                             ; $84A662 |
  AND.B #$F0                                ; $84A666 |
  LSR A                                     ; $84A668 |
  LSR A                                     ; $84A669 |
  LSR A                                     ; $84A66A |
  LSR A                                     ; $84A66B |
  ORA.B #$A0                                ; $84A66C |
  STA.B $8A                                 ; $84A66E |
  LDA.L $700296                             ; $84A670 |
  AND.B #$0F                                ; $84A674 |
  ORA.B #$A0                                ; $84A676 |
  STA.B $8C                                 ; $84A678 |
  RTS                                       ; $84A67A |

CODE_FN_84A67B:
  SED                                       ; $84A67B |
  LDA.W $00B8                               ; $84A67C |
  SEC                                       ; $84A67F |
  SBC.B #$01                                ; $84A680 |
  STA.W $0018                               ; $84A682 |
  CLD                                       ; $84A685 |
  AND.B #$F0                                ; $84A686 |
  LSR A                                     ; $84A688 |
  LSR A                                     ; $84A689 |
  LSR A                                     ; $84A68A |
  LSR A                                     ; $84A68B |
  ORA.B #$A0                                ; $84A68C |
  STA.B $2E                                 ; $84A68E |
  LDA.W $0018                               ; $84A690 |
  AND.B #$0F                                ; $84A693 |
  ORA.B #$A0                                ; $84A695 |
  STA.B $30                                 ; $84A697 |
  RTS                                       ; $84A699 |

CODE_FL_84A69A:
  JSR.W CODE_FN_84A69E                      ; $84A69A |
  RTL                                       ; $84A69D |

CODE_FN_84A69E:
  STZ.W $0010                               ; $84A69E |
  LDA.L $7002E3                             ; $84A6A1 |
  AND.B #$0F                                ; $84A6A5 |
  BEQ CODE_84A6AE                           ; $84A6A7 |
  INC.W $0010                               ; $84A6A9 |
  ORA.B #$A0                                ; $84A6AC |

CODE_84A6AE:
  STA.B $D6                                 ; $84A6AE |
  LDA.L $7002E2                             ; $84A6B0 |
  BEQ CODE_84A6CA                           ; $84A6B4 |
  LSR A                                     ; $84A6B6 |
  LSR A                                     ; $84A6B7 |
  LSR A                                     ; $84A6B8 |
  LSR A                                     ; $84A6B9 |
  ORA.B #$A0                                ; $84A6BA |

CODE_84A6BC:
  STA.B $D8                                 ; $84A6BC |
  LDA.L $7002E2                             ; $84A6BE |
  AND.B #$0F                                ; $84A6C2 |
  ORA.B #$A0                                ; $84A6C4 |
  STA.B $DA                                 ; $84A6C6 |
  BRA CODE_84A6D3                           ; $84A6C8 |

CODE_84A6CA:
  LDA.W $0010                               ; $84A6CA |
  BEQ CODE_84A6BC                           ; $84A6CD |
  LDA.B #$A0                                ; $84A6CF |
  BRA CODE_84A6BC                           ; $84A6D1 |

CODE_84A6D3:
  STZ.W $0010                               ; $84A6D3 |
  LDA.L $7002E5                             ; $84A6D6 |
  AND.B #$0F                                ; $84A6DA |
  BEQ CODE_84A6E3                           ; $84A6DC |
  INC.W $0010                               ; $84A6DE |
  ORA.B #$A0                                ; $84A6E1 |

CODE_84A6E3:
  STA.B $DE                                 ; $84A6E3 |
  LDA.L $7002E4                             ; $84A6E5 |
  BEQ CODE_84A6FE                           ; $84A6E9 |
  LSR A                                     ; $84A6EB |
  LSR A                                     ; $84A6EC |
  LSR A                                     ; $84A6ED |
  LSR A                                     ; $84A6EE |
  ORA.B #$A0                                ; $84A6EF |

CODE_84A6F1:
  STA.B $E0                                 ; $84A6F1 |
  LDA.L $7002E4                             ; $84A6F3 |
  AND.B #$0F                                ; $84A6F7 |
  ORA.B #$A0                                ; $84A6F9 |
  STA.B $E2                                 ; $84A6FB |
  RTS                                       ; $84A6FD |

CODE_84A6FE:
  LDA.W $0010                               ; $84A6FE |
  BEQ CODE_84A6F1                           ; $84A701 |
  LDA.B #$A0                                ; $84A703 |
  BRA CODE_84A6F1                           ; $84A705 |

CODE_FN_84A707:
  REP #$20                                  ; $84A707 |
  LDA.W $0090                               ; $84A709 |
  CMP.W #$0001                              ; $84A70C |
  BNE CODE_84A71F                           ; $84A70F |
  LDA.W $00A0                               ; $84A711 |
  CMP.W #$0006                              ; $84A714 |
  BCS CODE_84A71F                           ; $84A717 |
  JSL.L CODE_FL_868040                      ; $84A719 |
  BRA CODE_84A722                           ; $84A71D |

CODE_84A71F:
  LDA.W #$0000                              ; $84A71F |

CODE_84A722:
  SEP #$20                                  ; $84A722 |
  AND.B #$0F                                ; $84A724 |
  ORA.B #$A0                                ; $84A726 |
  STA.B $CC                                 ; $84A728 |
  REP #$20                                  ; $84A72A |
  LDA.W $0090                               ; $84A72C |
  CMP.W #$0001                              ; $84A72F |
  BNE CODE_84A755                           ; $84A732 |
  LDA.W $00A0                               ; $84A734 |
  CMP.W #$0006                              ; $84A737 |
  BCS CODE_84A755                           ; $84A73A |
  JSL.L CODE_FL_86805E                      ; $84A73C |
  BEQ CODE_84A755                           ; $84A740 |
  LDA.W #$37E1                              ; $84A742 |
  STA.B $8E                                 ; $84A745 |
  LDA.W #$37C4                              ; $84A747 |
  STA.B $90                                 ; $84A74A |
  INC A                                     ; $84A74C |
  STA.B $D0                                 ; $84A74D |
  LDA.W #$3700                              ; $84A74F |
  STA.B $CE                                 ; $84A752 |
  RTS                                       ; $84A754 |

CODE_84A755:
  LDA.W #$3700                              ; $84A755 |
  STA.B $8E                                 ; $84A758 |
  STA.B $90                                 ; $84A75A |
  STA.B $CE                                 ; $84A75C |
  STA.B $D0                                 ; $84A75E |
  RTS                                       ; $84A760 |

CODE_FN_84A761:
  LDA.L $7002A2                             ; $84A761 |
  ASL A                                     ; $84A765 |
  ASL A                                     ; $84A766 |
  ASL A                                     ; $84A767 |
  TAY                                       ; $84A768 |
  LDA.W CODE_00F883,Y                       ; $84A769 |
  STA.B $66                                 ; $84A76C |
  LDA.W LOOSE_OP_00F885,Y                   ; $84A76E |
  STA.B $68                                 ; $84A771 |
  LDA.W LOOSE_OP_00F887,Y                   ; $84A773 |
  STA.B $A6                                 ; $84A776 |
  LDA.W CODE_00F889,Y                       ; $84A778 |
  STA.B $A8                                 ; $84A77B |
  LDA.L $7002A2                             ; $84A77D |
  BEQ CODE_84A791                           ; $84A781 |
  LDA.L $70029E                             ; $84A783 |
  AND.W #$00FF                              ; $84A787 |
  ASL A                                     ; $84A78A |
  TAY                                       ; $84A78B |
  LDA.W LOOSE_OP_00FA00,Y                   ; $84A78C |
  STA.B $A8                                 ; $84A78F |

CODE_84A791:
  LDA.L $7002A4                             ; $84A791 |
  ASL A                                     ; $84A795 |
  ASL A                                     ; $84A796 |
  ASL A                                     ; $84A797 |
  TAY                                       ; $84A798 |
  LDA.W CODE_00F8A3,Y                       ; $84A799 |
  STA.B $6C                                 ; $84A79C |
  LDA.W LOOSE_OP_00F8A5,Y                   ; $84A79E |
  STA.B $6E                                 ; $84A7A1 |
  LDA.W LOOSE_OP_00F8A7,Y                   ; $84A7A3 |
  STA.B $AC                                 ; $84A7A6 |
  LDA.W CODE_00F8A9,Y                       ; $84A7A8 |
  STA.B $AE                                 ; $84A7AB |
  LDA.L $7002A4                             ; $84A7AD |
  BEQ CODE_84A7C1                           ; $84A7B1 |
  LDA.L $70029C                             ; $84A7B3 |
  AND.W #$00FF                              ; $84A7B7 |
  ASL A                                     ; $84A7BA |
  TAY                                       ; $84A7BB |
  LDA.W LOOSE_OP_00FA00,Y                   ; $84A7BC |
  STA.B $AE                                 ; $84A7BF |

CODE_84A7C1:
  LDA.L $7002A0                             ; $84A7C1 |
  ASL A                                     ; $84A7C5 |
  ASL A                                     ; $84A7C6 |
  ASL A                                     ; $84A7C7 |
  TAY                                       ; $84A7C8 |
  LDA.W CODE_00F8C3,Y                       ; $84A7C9 |
  STA.B $72                                 ; $84A7CC |
  LDA.W LOOSE_OP_00F8C5,Y                   ; $84A7CE |
  STA.B $74                                 ; $84A7D1 |
  LDA.W LOOSE_OP_00F8C7,Y                   ; $84A7D3 |
  STA.B $B2                                 ; $84A7D6 |
  LDA.W CODE_00F8C9,Y                       ; $84A7D8 |
  STA.B $B4                                 ; $84A7DB |
  RTS                                       ; $84A7DD |

CODE_FN_84A7DE:
  LDX.W #$0400                              ; $84A7DE |
  LDA.W $0018,X                             ; $84A7E1 |
  BNE CODE_84A7EC                           ; $84A7E4 |
  LDY.W #$0010                              ; $84A7E6 |
  JMP.W CODE_FN_84A4D7                      ; $84A7E9 |

CODE_84A7EC:
  JMP.W CODE_FN_84A453                      ; $84A7EC |

CODE_FN_84A7EF:
  LDA.W #$1858                              ; $84A7EF |
  TCD                                       ; $84A7F2 |
  LDX.W #$04C0                              ; $84A7F3 |
  LDA.W $0018,X                             ; $84A7F6 |
  BNE CODE_84A819                           ; $84A7F9 |
  LDA.W $0084                               ; $84A7FB |
  AND.W #$0010                              ; $84A7FE |
  BNE CODE_84A808                           ; $84A801 |
  LDY.W #$0000                              ; $84A803 |
  BRA CODE_84A814                           ; $84A806 |

CODE_84A808:
  JSL.L CODE_FL_8381A6                      ; $84A808 |
  LDY.W #$0008                              ; $84A80C |
  BCC CODE_84A814                           ; $84A80F |
  LDY.W #$0010                              ; $84A811 |

CODE_84A814:
  JSR.W CODE_FN_84A4D7                      ; $84A814 |
  BRA CODE_84A81C                           ; $84A817 |

CODE_84A819:
  JSR.W CODE_FN_84A453                      ; $84A819 |

CODE_84A81C:
  RTS                                       ; $84A81C |

CODE_FN_84A81D:
  LDA.L $7002EE                             ; $84A81D |
  BEQ CODE_84A840                           ; $84A821 |
  LDA.L $7002E0                             ; $84A823 |
  ASL A                                     ; $84A827 |
  ASL A                                     ; $84A828 |
  ASL A                                     ; $84A829 |
  TAY                                       ; $84A82A |
  LDA.W CODE_00F96B,Y                       ; $84A82B |
  STA.B $98                                 ; $84A82E |
  LDA.W CODE_00F96D,Y                       ; $84A830 |
  STA.B $9A                                 ; $84A833 |
  LDA.W LOOSE_OP_00F96F,Y                   ; $84A835 |
  STA.B $9C                                 ; $84A838 |
  LDA.W LOOSE_OP_00F971,Y                   ; $84A83A |
  STA.B $9E                                 ; $84A83D |
  RTS                                       ; $84A83F |

CODE_84A840:
  LDA.W #$21EC                              ; $84A840 |
  STA.B $98                                 ; $84A843 |
  LDA.W #$21ED                              ; $84A845 |
  STA.B $9A                                 ; $84A848 |
  LDA.W #$21ED                              ; $84A84A |
  STA.B $9C                                 ; $84A84D |
  LDA.W #$21EE                              ; $84A84F |
  STA.B $9E                                 ; $84A852 |
  RTS                                       ; $84A854 |

CODE_FN_84A855:
  STZ.W $0010                               ; $84A855 |
  LDA.W $00A3                               ; $84A858 |
  LSR A                                     ; $84A85B |
  LSR A                                     ; $84A85C |
  LSR A                                     ; $84A85D |
  LSR A                                     ; $84A85E |
  BEQ CODE_84A86E                           ; $84A85F |
  INC.W $0010                               ; $84A861 |
  ORA.B #$60                                ; $84A864 |
  STA.B $6C                                 ; $84A866 |
  ORA.B #$10                                ; $84A868 |
  STA.B $AC                                 ; $84A86A |
  BRA CODE_84A872                           ; $84A86C |

CODE_84A86E:
  STA.B $6C                                 ; $84A86E |
  STA.B $AC                                 ; $84A870 |

CODE_84A872:
  LDA.W $00A3                               ; $84A872 |
  AND.B #$0F                                ; $84A875 |
  BEQ CODE_84A897                           ; $84A877 |

CODE_84A879:
  SEC                                       ; $84A879 |
  ROL.W $0010                               ; $84A87A |
  ORA.B #$60                                ; $84A87D |
  STA.B $6E                                 ; $84A87F |
  CMP.B #$60                                ; $84A881 |
  BNE CODE_84A88D                           ; $84A883 |
  STA.B $AE                                 ; $84A885 |
  LDA.B #$B3                                ; $84A887 |
  STA.B $AF                                 ; $84A889 |
  BRA CODE_84A8A0                           ; $84A88B |

CODE_84A88D:
  ORA.B #$10                                ; $84A88D |
  STA.B $AE                                 ; $84A88F |
  LDA.B #$33                                ; $84A891 |
  STA.B $AF                                 ; $84A893 |
  BRA CODE_84A8A0                           ; $84A895 |

CODE_84A897:
  LSR.W $0010                               ; $84A897 |
  BCS CODE_84A879                           ; $84A89A |
  STA.B $6E                                 ; $84A89C |
  STA.B $AE                                 ; $84A89E |

CODE_84A8A0:
  LDA.W $00A2                               ; $84A8A0 |
  LSR A                                     ; $84A8A3 |
  LSR A                                     ; $84A8A4 |
  LSR A                                     ; $84A8A5 |
  LSR A                                     ; $84A8A6 |
  BEQ CODE_84A8C3                           ; $84A8A7 |

CODE_84A8A9:
  ORA.B #$60                                ; $84A8A9 |
  STA.B $70                                 ; $84A8AB |
  CMP.B #$60                                ; $84A8AD |
  BNE CODE_84A8B9                           ; $84A8AF |
  STA.B $B0                                 ; $84A8B1 |
  LDA.B #$B3                                ; $84A8B3 |
  STA.B $B1                                 ; $84A8B5 |
  BRA CODE_84A8CC                           ; $84A8B7 |

CODE_84A8B9:
  ORA.B #$10                                ; $84A8B9 |
  STA.B $B0                                 ; $84A8BB |
  LDA.B #$33                                ; $84A8BD |
  STA.B $B1                                 ; $84A8BF |
  BRA CODE_84A8CC                           ; $84A8C1 |

CODE_84A8C3:
  LSR.W $0010                               ; $84A8C3 |
  BCS CODE_84A8A9                           ; $84A8C6 |
  STA.B $70                                 ; $84A8C8 |
  STA.B $B0                                 ; $84A8CA |

CODE_84A8CC:
  LDA.W $00A2                               ; $84A8CC |
  AND.B #$0F                                ; $84A8CF |
  ORA.B #$60                                ; $84A8D1 |
  STA.B $72                                 ; $84A8D3 |
  CMP.B #$60                                ; $84A8D5 |
  BNE CODE_84A8E0                           ; $84A8D7 |
  STA.B $B2                                 ; $84A8D9 |
  LDA.B #$B3                                ; $84A8DB |
  STA.B $B3                                 ; $84A8DD |
  RTS                                       ; $84A8DF |

CODE_84A8E0:
  ORA.B #$10                                ; $84A8E0 |
  STA.B $B2                                 ; $84A8E2 |
  LDA.B #$33                                ; $84A8E4 |
  STA.B $B3                                 ; $84A8E6 |
  RTS                                       ; $84A8E8 |

  db $1F,$00,$E0,$03,$00,$7C,$01,$00        ; $84A8E9 |
  db $20,$00,$00,$04                        ; $84A8F1 |
  db $00,$2C,$20,$2C,$40,$2C,$60,$2C        ; $84A8F5 |
  db $80,$2C,$A0,$2C,$C0,$2C,$E0,$2C        ; $84A8FD |
  db $00,$2D,$20,$2D,$40,$2D,$60,$2D        ; $84A905 |
  db $80,$2D,$A0,$2D,$C0,$2D,$E0,$2D        ; $84A90D |
  db $96,$2C                                ; $84A915 |
  db $00,$00,$8E,$80,$06,$AE,$80,$00        ; $84A917 |
  db $D0,$80,$02,$D0,$80,$04,$00,$00        ; $84A91F |
  db $00,$00,$36,$84,$00,$00,$00            ; $84A927 |

DATA8_84A92E:
  db $00,$00,$90,$A3,$04,$82,$E8,$18        ; $84A92E |
  db $52,$E5,$14,$E8,$90,$1A,$00,$00        ; $84A936 |

DATA8_84A93E:
  db $00,$00,$90,$A3,$04,$18,$86,$1A        ; $84A93E |
  db $38,$86,$1C,$58,$86,$18,$00,$00        ; $84A946 |

DATA8_84A94E:
  db $00,$00,$46,$A4,$04,$38,$86,$1C        ; $84A94E |
  db $58,$86,$18,$98,$85,$1A,$00,$00        ; $84A956 |

DATA8_84A95E:
  db $00,$00,$C0,$A4,$04,$38,$87,$18        ; $84A95E |
  db $98,$85,$1A,$00,$00                    ; $84A966 |

DATA8_84A96B:
  db $00,$00,$58,$A5,$02,$00,$00            ; $84A96B |

DATA8_84A972:
  db $00,$00,$0E,$A6,$04,$00,$00            ; $84A972 |

DATA8_84A979:
  db $00,$00,$88,$A6,$04,$18,$86,$1A        ; $84A979 |
  db $38,$87,$18,$00,$00                    ; $84A981 |

DATA8_84A986:
  db $00,$00,$20,$A7,$04,$18,$86,$1A        ; $84A986 |
  db $98,$85,$18,$00,$00                    ; $84A98E |

DATA8_84A993:
  db $00,$00,$D6,$A7,$04,$18,$86,$1A        ; $84A993 |
  db $98,$85,$18,$00,$00                    ; $84A99B |

DATA8_84A9A0:
  db $00,$00,$50,$A8,$04,$AC,$A8,$08        ; $84A9A0 |
  db $18,$86,$1C,$78,$88,$1A,$78,$86        ; $84A9A8 |
  db $1E,$00,$00                            ; $84A9B0 |

DATA8_84A9B3:
  db $00,$00,$CC,$A8,$04,$28,$90,$0E        ; $84A9B3 |
  db $88,$90,$18,$68,$90,$1A,$C8,$90        ; $84A9BB |
  db $1E,$00,$00                            ; $84A9C3 |

DATA8_84A9C6:
  db $00,$00,$64,$A9,$04,$18,$86,$1C        ; $84A9C6 |
  db $78,$86,$1E,$B8,$85,$18,$38,$87        ; $84A9CE |
  db $1A,$00,$00                            ; $84A9D6 |

DATA8_84A9D9:
  db $00,$00,$DE,$A9,$04,$B8,$85,$18        ; $84A9D9 |
  db $00,$00                                ; $84A9E1 |

DATA8_84A9E3:
  db $00,$00,$58,$AA,$04,$B8,$85,$18        ; $84A9E3 |
  db $18,$86,$1A,$00,$00                    ; $84A9EB |

DATA8_84A9F0:
  db $00,$00,$DE,$A9,$04,$18,$88,$18        ; $84A9F0 |
  db $00,$00                                ; $84A9F8 |

DATA8_84A9FA:
  db $00,$00,$80,$AE,$04,$18,$86,$1C        ; $84A9FA |
  db $78,$88,$18,$D8,$85,$1A,$B8,$85        ; $84AA02 |
  db $1E,$00,$00                            ; $84AA0A |

DATA8_84AA0D:
  db $00,$00,$88,$AB,$04,$18,$86,$1C        ; $84AA0D |
  db $B8,$85,$1E,$38,$87,$1A,$00,$00        ; $84AA15 |

DATA8_84AA1D:
  db $00,$00,$FA,$AE,$04,$18,$86,$1C        ; $84AA1D |
  db $B8,$85,$1E,$38,$87,$1A,$00,$00        ; $84AA25 |

DATA8_84AA2D:
  db $00,$00,$20,$AC,$04,$18,$86,$1C        ; $84AA2D |
  db $18,$87,$18,$38,$87,$1A,$B8,$85        ; $84AA35 |
  db $1E,$00,$00                            ; $84AA3D |

DATA8_84AA40:
  db $00,$00,$B8,$AC,$04,$18,$86,$1C        ; $84AA40 |
  db $B8,$85,$1E,$38,$87,$1A,$00,$00        ; $84AA48 |

DATA8_84AA50:
  db $00,$00,$92,$AF,$04,$18,$86,$1C        ; $84AA50 |
  db $B8,$85,$1E,$38,$87,$1A,$00,$00        ; $84AA58 |

DATA8_84AA60:
  db $00,$00,$50,$AD,$04,$B8,$85,$18        ; $84AA60 |
  db $18,$86,$1C,$38,$87,$1A,$00,$00        ; $84AA68 |

DATA8_84AA70:
  db $00,$00,$2A,$B0,$04,$78,$88,$18        ; $84AA70 |
  db $18,$86,$1A,$38,$87,$1C,$B8,$85        ; $84AA78 |
  db $1E,$00,$00                            ; $84AA80 |

DATA8_84AA83:
  db $00,$00,$E8,$AD,$04,$18,$86,$1C        ; $84AA83 |
  db $B8,$85,$18,$78,$86,$1E,$00,$00        ; $84AA8B |

DATA8_84AA93:
  db $00,$00,$C2,$B0,$04,$78,$86,$1E        ; $84AA93 |
  db $18,$86,$1C,$B8,$85,$18,$38,$87        ; $84AA9B |
  db $1A,$00,$00                            ; $84AAA3 |

DATA8_84AAA6:
  db $00,$00,$64,$A9,$04,$78,$86,$1E        ; $84AAA6 |
  db $38,$87,$1A,$B8,$85,$18,$00,$00        ; $84AAAE |

DATA8_84AAB6:
  db $00,$00,$5A,$B1,$02,$D8,$87,$1C        ; $84AAB6 |
  db $00,$00                                ; $84AABE |

DATA8_84AAC0:
  db $00,$00,$5A,$B1,$02,$D8,$87,$1C        ; $84AAC0 |
  db $00,$00                                ; $84AAC8 |

DATA8_84AACA:
  db $00,$00,$5A,$B1,$02,$B8,$85,$18        ; $84AACA |
  db $D8,$87,$1C,$00,$00                    ; $84AAD2 |

DATA8_84AAD7:
  db $00,$00,$5A,$B1,$02,$B8,$85,$18        ; $84AAD7 |
  db $D8,$87,$1C,$00,$00                    ; $84AADF |

DATA8_84AAE4:
  db $00,$00,$5A,$B1,$02,$B8,$85,$18        ; $84AAE4 |
  db $38,$87,$1A,$18,$86,$1C,$00,$00        ; $84AAEC |

DATA8_84AAF4:
  db $00,$00,$5A,$B1,$02,$18,$86,$1C        ; $84AAF4 |
  db $38,$87,$1A,$78,$86,$1E,$00,$00        ; $84AAFC |

DATA8_84AB04:
  db $00,$00,$5A,$B1,$02,$18,$86,$1C        ; $84AB04 |
  db $38,$87,$1A,$78,$86,$1E,$00,$00        ; $84AB0C |

DATA8_84AB14:
  db $00,$00,$5A,$B1,$02,$D8,$85,$18        ; $84AB14 |
  db $D8,$87,$1C,$38,$87,$1A,$00,$00        ; $84AB1C |

UNREACH_84AB24:
  db $00,$00,$5A,$B1,$02,$38,$87,$1A        ; $84AB24 |
  db $D8,$87,$1C,$D8,$85,$1E,$00,$00        ; $84AB2C |

DATA8_84AB34:
  db $00,$00,$5A,$B1,$02,$18,$86,$18        ; $84AB34 |
  db $38,$87,$1A,$D8,$87,$1C,$D8,$85        ; $84AB3C |
  db $1E,$00,$00                            ; $84AB44 |

DATA8_84AB47:
  db $00,$00,$D8,$87,$1C,$18,$86,$1A        ; $84AB47 |
  db $D8,$85,$1E,$5A,$B1,$02,$00,$00        ; $84AB4F |

DATA8_84AB57:
  db $00,$00,$5A,$B1,$02,$D8,$87,$1C        ; $84AB57 |
  db $00,$00                                ; $84AB5F |

DATA8_84AB61:
  db $00,$00,$20,$B2,$02,$38,$87,$1A        ; $84AB61 |
  db $D8,$85,$1E,$00,$00                    ; $84AB69 |

DATA8_84AB6E:
  db $00,$00,$F4,$B2,$02,$78,$88,$1C        ; $84AB6E |
  db $18,$86,$18,$38,$87,$1A,$78,$86        ; $84AB76 |
  db $1E,$00,$00                            ; $84AB7E |

DATA8_84AB81:
  db $00,$00,$C8,$B3,$04,$D8,$85,$1A        ; $84AB81 |
  db $9E,$E5,$18,$1E,$E6,$1E,$00,$00        ; $84AB89 |

DATA8_84AB91:
  db $00,$00,$1E,$B5,$04,$F8,$88,$18        ; $84AB91 |
  db $D8,$85,$1A,$9E,$E5,$1C,$1E,$E6        ; $84AB99 |
  db $1E,$00,$00                            ; $84ABA1 |

DATA8_84ABA4:
  db $00,$00,$B8,$B5,$04,$38,$87,$1A        ; $84ABA4 |
  db $9E,$E5,$1C,$1E,$E6,$1E,$00,$00        ; $84ABAC |

DATA8_84ABB4:
  db $00,$00,$42,$B6,$04,$1E,$E6,$1E        ; $84ABB4 |
  db $00,$00                                ; $84ABBC |

DATA8_84ABBE:
  db $00,$00,$42,$B6,$04,$9E,$E5,$1C        ; $84ABBE |
  db $1E,$E6,$1E,$00,$00                    ; $84ABC6 |

DATA8_84ABCB:
  db $00,$00,$42,$B6,$04,$9E,$E5,$1C        ; $84ABCB |
  db $1E,$E6,$1E,$00,$00                    ; $84ABD3 |

DATA8_84ABD8:
  db $00,$00,$B8,$B5,$04,$9E,$E5,$1C        ; $84ABD8 |
  db $1E,$E6,$1E,$00,$00                    ; $84ABE0 |

DATA8_84ABE5:
  db $00,$00,$F8,$B6,$04,$9E,$E5,$18        ; $84ABE5 |
  db $BE,$E5,$1A,$1E,$E6,$1E,$00,$00        ; $84ABED |

DATA8_84ABF5:
  db $00,$00,$90,$B7,$04,$1E,$E6,$1E        ; $84ABF5 |
  db $00,$00                                ; $84ABFD |

DATA8_84ABFF:
  db $00,$00,$F8,$B6,$04,$1E,$E6,$1E        ; $84ABFF |
  db $00,$00                                ; $84AC07 |

DATA8_84AC09:
  db $00,$00,$F8,$B6,$04,$9E,$E5,$18        ; $84AC09 |
  db $BE,$E5,$1A,$1E,$E6,$1E,$00,$00        ; $84AC11 |

DATA8_84AC19:
  db $00,$00,$42,$B6,$04,$58,$88,$18        ; $84AC19 |
  db $38,$87,$1A,$D8,$85,$1C,$1E,$E6        ; $84AC21 |
  db $1E,$00,$00                            ; $84AC29 |

DATA8_84AC2C:
  db $00,$00,$1E,$B5,$04,$D8,$86,$1C        ; $84AC2C |
  db $1E,$E6,$1E,$00,$00                    ; $84AC34 |

DATA8_84AC39:
  db $00,$00,$38,$B8,$04,$58,$88,$18        ; $84AC39 |
  db $D8,$85,$1C,$1E,$E6,$1E,$00,$00        ; $84AC41 |

DATA8_84AC49:
  db $00,$00,$38,$B8,$04,$9E,$E5,$18        ; $84AC49 |
  db $BE,$E5,$1A,$1E,$E6,$1E,$00,$00        ; $84AC51 |

DATA8_84AC59:
  db $00,$00,$38,$B8,$04,$1E,$E6,$1E        ; $84AC59 |
  db $00,$00                                ; $84AC61 |

DATA8_84AC63:
  db $00,$00,$EE,$B8,$04,$D8,$86,$1C        ; $84AC63 |
  db $1E,$E6,$1E,$00,$00                    ; $84AC6B |

DATA8_84AC70:
  db $00,$00,$EE,$B8,$04,$58,$88,$18        ; $84AC70 |
  db $1E,$E6,$1E,$00,$00                    ; $84AC78 |

DATA8_84AC7D:
  db $00,$00,$EE,$B8,$04,$D8,$86,$1C        ; $84AC7D |
  db $1E,$E6,$1E,$00,$00                    ; $84AC85 |

DATA8_84AC8A:
  db $00,$00,$EE,$B8,$04,$9E,$E5,$18        ; $84AC8A |
  db $BE,$E5,$1A,$1E,$E6,$1E,$00,$00        ; $84AC92 |

DATA8_84AC9A:
  db $00,$00,$EE,$B8,$04,$9E,$E5,$18        ; $84AC9A |
  db $1E,$E6,$1E,$00,$00                    ; $84ACA2 |

DATA8_84ACA7:
  db $00,$00,$EE,$B8,$04,$9E,$E5,$18        ; $84ACA7 |
  db $BE,$E5,$1A,$1E,$E6,$1E,$00,$00        ; $84ACAF |

DATA8_84ACB7:
  db $00,$00,$EE,$B8,$04,$D8,$85,$1C        ; $84ACB7 |
  db $1E,$E6,$1E,$00,$00                    ; $84ACBF |

DATA8_84ACC4:
  db $00,$00,$A4,$B9,$04,$1E,$E6,$1E        ; $84ACC4 |
  db $00,$00                                ; $84ACCC |

DATA8_84ACCE:
  db $00,$00,$A4,$B9,$04,$1E,$E6,$1E        ; $84ACCE |
  db $00,$00                                ; $84ACD6 |

DATA8_84ACD8:
  db $00,$00,$5A,$BA,$04,$1E,$E6,$1E        ; $84ACD8 |
  db $00,$00                                ; $84ACE0 |

DATA8_84ACE2:
  db $00,$00,$A4,$B9,$04,$1E,$E6,$1E        ; $84ACE2 |
  db $00,$00                                ; $84ACEA |

DATA8_84ACEC:
  db $00,$00,$5A,$BA,$04,$1E,$E6,$1E        ; $84ACEC |
  db $00,$00                                ; $84ACF4 |

DATA8_84ACF6:
  db $00,$00,$10,$BB,$04,$FE,$C7,$0C        ; $84ACF6 |
  db $98,$86,$18,$18,$88,$1A,$1E,$E6        ; $84ACFE |
  db $1E,$00,$00                            ; $84AD06 |

DATA8_84AD09:
  db $00,$00,$24,$BC,$04,$1E,$C8,$0C        ; $84AD09 |
  db $38,$87,$18,$1E,$E6,$1E,$00,$00        ; $84AD11 |

DATA8_84AD19:
  db $00,$00,$24,$BC,$04,$1E,$E6,$1E        ; $84AD19 |
  db $D8,$88,$18,$18,$88,$1A,$00,$00        ; $84AD21 |

DATA8_84AD29:
  db $00,$00,$24,$BC,$04,$1E,$C8,$0C        ; $84AD29 |
  db $1E,$E6,$1E,$00,$00                    ; $84AD31 |

DATA8_84AD36:
  db $00,$00,$24,$BC,$04,$18,$89,$18        ; $84AD36 |
  db $1E,$E6,$1E,$00,$00                    ; $84AD3E |

DATA8_84AD43:
  db $00,$00,$24,$BC,$04,$1E,$E6,$1E        ; $84AD43 |
  db $00,$00                                ; $84AD4B |

DATA8_84AD4D:
  db $00,$00,$4E,$BB,$04,$1E,$E6,$1E        ; $84AD4D |
  db $00,$00                                ; $84AD55 |

DATA8_84AD57:
  db $00,$00,$24,$BC,$04,$1E,$C8,$0C        ; $84AD57 |
  db $1E,$E6,$1E,$00,$00                    ; $84AD5F |

DATA8_84AD64:
  db $00,$00,$24,$BC,$04,$1E,$C8,$0C        ; $84AD64 |
  db $78,$87,$1A,$38,$88,$1C,$1E,$E6        ; $84AD6C |
  db $1E,$00,$00                            ; $84AD74 |

DATA8_84AD77:
  db $00,$00,$10,$BB,$04,$1E,$E6,$1E        ; $84AD77 |
  db $00,$00                                ; $84AD7F |

DATA8_84AD81:
  db $00,$00,$D8,$88,$18,$10,$BB,$04        ; $84AD81 |
  db $1E,$E6,$1E,$00,$00                    ; $84AD89 |

DATA8_84AD8E:
  db $00,$00,$10,$BB,$04,$1E,$E6,$1E        ; $84AD8E |
  db $00,$00                                ; $84AD96 |

DATA8_84AD98:
  db $00,$00,$10,$BB,$04,$18,$89,$18        ; $84AD98 |
  db $1E,$E6,$1E,$00,$00                    ; $84ADA0 |

DATA8_84ADA5:
  db $00,$00,$10,$BB,$04,$1E,$E6,$1E        ; $84ADA5 |
  db $00,$00                                ; $84ADAD |

DATA8_84ADAF:
  db $00,$00,$10,$BB,$04,$98,$86,$18        ; $84ADAF |
  db $1E,$E6,$1E,$00,$00                    ; $84ADB7 |

DATA8_84ADBC:
  db $00,$00,$24,$BC,$04,$3E,$C8,$0C        ; $84ADBC |
  db $98,$86,$18,$56,$E9,$1A,$38,$88        ; $84ADC4 |
  db $1C,$1E,$E6,$1E,$00,$00                ; $84ADCC |

DATA8_84ADD2:
  db $00,$00,$AA,$BB,$04,$9E,$E5,$18        ; $84ADD2 |
  db $FE,$E5,$1A,$1E,$E6,$1E,$00,$00        ; $84ADDA |

DATA8_84ADE2:
  db $00,$00,$AA,$BB,$04,$1E,$E6,$1E        ; $84ADE2 |
  db $00,$00                                ; $84ADEA |

DATA8_84ADEC:
  db $00,$00,$AA,$BB,$04,$B8,$88,$18        ; $84ADEC |
  db $1E,$E6,$1E,$00,$00                    ; $84ADF4 |

DATA8_84ADF9:
  db $00,$00,$AA,$BB,$04,$78,$87,$1A        ; $84ADF9 |
  db $1E,$E6,$1E,$00,$00                    ; $84AE01 |

DATA8_84AE06:
  db $00,$00,$AA,$BB,$04,$38,$87,$1A        ; $84AE06 |
  db $1E,$E6,$1E,$00,$00                    ; $84AE0E |

DATA8_84AE13:
  db $00,$00,$AA,$BB,$04,$1E,$E6,$1E        ; $84AE13 |
  db $00,$00                                ; $84AE1B |

DATA8_84AE1D:
  db $00,$00,$24,$BC,$04,$98,$86,$18        ; $84AE1D |
  db $F8,$86,$1C,$1E,$E6,$1E,$00,$00        ; $84AE25 |

DATA8_84AE2D:
  db $00,$00,$5E,$C8,$0C,$18,$BD,$04        ; $84AE2D |
  db $1E,$E6,$1E,$00,$00                    ; $84AE35 |

DATA8_84AE3A:
  db $00,$00,$9E,$BC,$04,$FE,$C7,$0C        ; $84AE3A |
  db $1E,$E6,$1E,$00,$00                    ; $84AE42 |

DATA8_84AE47:
  db $00,$00,$9E,$BC,$04,$7E,$C8,$0C        ; $84AE47 |
  db $3E,$E6,$18,$5E,$E6,$1A,$1E,$E6        ; $84AE4F |
  db $1E,$00,$00                            ; $84AE57 |

DATA8_84AE5A:
  db $00,$00,$9E,$BC,$04,$7E,$C8,$0C        ; $84AE5A |
  db $3E,$E6,$18,$5E,$E6,$1A,$1E,$E6        ; $84AE62 |
  db $1E,$00,$00                            ; $84AE6A |

DATA8_84AE6D:
  db $00,$00,$F4,$C5,$04,$2C,$F7,$0E        ; $84AE6D |
  db $88,$90,$18,$48,$91,$1A,$A8,$91        ; $84AE75 |
  db $1E,$00,$00                            ; $84AE7D |

DATA8_84AE80:
  db $00,$00,$08,$C7,$08,$4C,$F7,$0E        ; $84AE80 |
  db $88,$90,$18,$48,$91,$1A,$00,$00        ; $84AE88 |

UNREACH_84AE90:
  db $00,$00,$7E,$C6,$04,$08,$91,$0E        ; $84AE90 |
  db $68,$91,$18,$48,$91,$1A,$00,$00        ; $84AE98 |

DATA8_84AEA0:
  db $00,$00,$64,$C7,$04,$6C,$F7,$0E        ; $84AEA0 |
  db $88,$90,$18,$48,$91,$1A,$58,$A5        ; $84AEA8 |
  db $02,$00,$00                            ; $84AEB0 |

UNREACH_84AEB3:
  db $00,$00,$CC,$A8,$04,$08,$91,$0E        ; $84AEB3 |
  db $68,$91,$18,$48,$91,$1A,$A8,$91        ; $84AEBB |
  db $1E,$00,$00                            ; $84AEC3 |

UNREACH_84AEC6:
  db $00,$00,$CC,$A8,$04,$08,$91,$0E        ; $84AEC6 |
  db $68,$91,$18,$48,$91,$1A,$A8,$91        ; $84AECE |
  db $1E,$00,$00                            ; $84AED6 |

UNREACH_84AED9:
  db $00,$00,$CC,$A8,$04,$08,$91,$0E        ; $84AED9 |
  db $68,$91,$18,$48,$91,$1A,$A8,$91        ; $84AEE1 |
  db $1E,$00,$00                            ; $84AEE9 |

UNREACH_84AEEC:
  db $00,$00,$CC,$A8,$04,$08,$91,$0E        ; $84AEEC |
  db $68,$91,$18,$48,$91,$1A,$A8,$91        ; $84AEF4 |
  db $1E,$00,$00                            ; $84AEFC |

DATA8_84AEFF:
  db $00,$00,$66,$BE,$02,$D8,$87,$1C        ; $84AEFF |
  db $1E,$E6,$1E,$00,$00                    ; $84AF07 |

DATA8_84AF0C:
  db $00,$00,$66,$BE,$02,$98,$87,$18        ; $84AF0C |
  db $1E,$E6,$1E,$00,$00                    ; $84AF14 |

DATA8_84AF19:
  db $00,$00,$66,$BE,$02,$B8,$88,$18        ; $84AF19 |
  db $42,$E9,$1C,$1E,$E6,$1E,$00,$00        ; $84AF21 |

DATA8_84AF29:
  db $00,$00,$66,$BE,$02,$D8,$87,$1A        ; $84AF29 |
  db $22,$E9,$1C,$1E,$E6,$1E,$00,$00        ; $84AF31 |

DATA8_84AF39:
  db $00,$00,$3A,$BF,$02,$1E,$E6,$1E        ; $84AF39 |
  db $00,$00                                ; $84AF41 |

DATA8_84AF43:
  db $00,$00,$3A,$BF,$02,$58,$87,$1A        ; $84AF43 |
  db $D8,$87,$1C,$1E,$E6,$1E,$00,$00        ; $84AF4B |

DATA8_84AF53:
  db $00,$00,$3A,$BF,$02,$1E,$E6,$1E        ; $84AF53 |
  db $00,$00                                ; $84AF5B |

DATA8_84AF5D:
  db $00,$00,$66,$BE,$02,$18,$87,$18        ; $84AF5D |
  db $1E,$E6,$1E,$00,$00                    ; $84AF65 |

DATA8_84AF6A:
  db $00,$00,$66,$BE,$02,$1E,$E6,$1E        ; $84AF6A |
  db $00,$00                                ; $84AF72 |

DATA8_84AF74:
  db $00,$00,$66,$BE,$02,$1E,$E6,$1E        ; $84AF74 |
  db $00,$00                                ; $84AF7C |

DATA8_84AF7E:
  db $00,$00,$66,$BE,$02,$D8,$87,$1C        ; $84AF7E |
  db $1E,$E6,$1E,$00,$00                    ; $84AF86 |

DATA8_84AF8B:
  db $00,$00,$66,$BE,$02,$38,$89,$1A        ; $84AF8B |
  db $F8,$88,$18,$58,$86,$1C,$1E,$E6        ; $84AF93 |
  db $1E,$00,$00                            ; $84AF9B |

DATA8_84AF9E:
  db $00,$00,$66,$BE,$02,$D8,$87,$1C        ; $84AF9E |
  db $98,$88,$18,$38,$89,$1A,$1E,$E6        ; $84AFA6 |
  db $1E,$00,$00                            ; $84AFAE |

DATA8_84AFB1:
  db $00,$00,$3A,$BF,$02,$1E,$E6,$1E        ; $84AFB1 |
  db $00,$00                                ; $84AFB9 |

DATA8_84AFBB:
  db $00,$00,$3A,$BF,$02,$1E,$E6,$1E        ; $84AFBB |
  db $00,$00                                ; $84AFC3 |

DATA8_84AFC5:
  db $00,$00,$3A,$BF,$02,$1E,$E6,$1E        ; $84AFC5 |
  db $00,$00                                ; $84AFCD |

DATA8_84AFCF:
  db $00,$00,$3A,$BF,$02,$1E,$E6,$1E        ; $84AFCF |
  db $00,$00                                ; $84AFD7 |

DATA8_84AFD9:
  db $00,$00,$66,$BE,$02,$1E,$E6,$1E        ; $84AFD9 |
  db $00,$00                                ; $84AFE1 |

DATA8_84AFE3:
  db $00,$00,$66,$BE,$02,$D8,$87,$1C        ; $84AFE3 |
  db $1E,$E6,$1E,$00,$00                    ; $84AFEB |

DATA8_84AFF0:
  db $00,$00,$92,$BD,$02,$D8,$87,$1C        ; $84AFF0 |
  db $1E,$E6,$1E,$00,$00                    ; $84AFF8 |

UNREACH_84AFFD:
  db $00,$00,$92,$BD,$02,$1E,$E6,$1E        ; $84AFFD |
  db $00,$00                                ; $84B005 |

DATA8_84B007:
  db $00,$00,$0E,$C0,$02,$1E,$E6,$1E        ; $84B007 |
  db $00,$00                                ; $84B00F |

DATA8_84B011:
  db $00,$00,$C0,$C0,$02,$E2,$E8,$18        ; $84B011 |
  db $02,$E9,$1A,$1E,$E6,$1E,$00,$00        ; $84B019 |

DATA8_84B021:
  db $00,$00,$0E,$C0,$02,$1E,$E6,$1E        ; $84B021 |
  db $00,$00                                ; $84B029 |

DATA8_84B02B:
  db $00,$00,$72,$C1,$02,$02,$E9,$1A        ; $84B02B |
  db $1E,$E6,$1E,$00,$00                    ; $84B033 |

DATA8_84B038:
  db $00,$00,$66,$BE,$02,$02,$E9,$1A        ; $84B038 |
  db $1E,$E6,$1E,$00,$00                    ; $84B040 |

DATA8_84B045:
  db $00,$00,$66,$BE,$02,$02,$E9,$1A        ; $84B045 |
  db $1E,$E6,$1E,$00,$00                    ; $84B04D |

DATA8_84B052:
  db $00,$00,$92,$BD,$02,$1E,$E6,$1E        ; $84B052 |
  db $00,$00                                ; $84B05A |

DATA8_84B05C:
  db $00,$00,$66,$BE,$02,$1E,$E6,$1E        ; $84B05C |
  db $00,$00                                ; $84B064 |

DATA8_84B066:
  db $00,$00,$66,$BE,$02,$F8,$87,$18        ; $84B066 |
  db $42,$E9,$1C,$1E,$E6,$1E,$00,$00        ; $84B06E |

UNREACH_84B076:
  db $00,$00,$42,$C2,$02,$22,$E9,$1C        ; $84B076 |
  db $1E,$E6,$1E,$00,$00                    ; $84B07E |

UNREACH_84B083:
  db $00,$00,$72,$C1,$02,$1E,$E6,$1E        ; $84B083 |
  db $00,$00                                ; $84B08B |

DATA8_84B08D:
  db $00,$00,$0E,$C0,$02,$D8,$87,$1A        ; $84B08D |
  db $1E,$E6,$1E,$00,$00                    ; $84B095 |

DATA8_84B09A:
  db $00,$00,$1E,$E6,$1E,$0E,$C0,$02        ; $84B09A |
  db $B8,$87,$18,$22,$E9,$1C,$1E,$E6        ; $84B0A2 |
  db $1E,$00,$00                            ; $84B0AA |

DATA8_84B0AD:
  db $00,$00,$EC,$C3,$04,$1E,$E6,$1E        ; $84B0AD |
  db $B8,$86,$18,$00,$00                    ; $84B0B5 |

DATA8_84B0BA:
  db $00,$00,$EC,$C3,$04,$1E,$E6,$1E        ; $84B0BA |
  db $00,$00                                ; $84B0C2 |

DATA8_84B0C4:
  db $00,$00,$EC,$C3,$04,$1E,$E6,$1E        ; $84B0C4 |
  db $00,$00                                ; $84B0CC |

UNREACH_84B0CE:
  db $00,$00,$EC,$C3,$04,$1E,$E6,$1E        ; $84B0CE |
  db $00,$00                                ; $84B0D6 |

DATA8_84B0D8:
  db $00,$00,$C2,$C4,$04,$38,$87,$18        ; $84B0D8 |
  db $00,$00                                ; $84B0E0 |

DATA8_84B0E2:
  db $00,$00,$C2,$C4,$04,$A2,$E7,$18        ; $84B0E2 |
  db $C2,$E7,$1C,$00,$00                    ; $84B0EA |

DATA8_84B0EF:
  db $00,$00,$1E,$C5,$04,$22,$E9,$1C        ; $84B0EF |
  db $1E,$E6,$1E,$00,$00                    ; $84B0F7 |

DATA8_84B0FC:
  db $00,$00,$1E,$C5,$04,$B6,$E9,$1A        ; $84B0FC |
  db $D2,$E9,$1C,$F2,$E9,$1E,$BC,$C8        ; $84B104 |
  db $0E,$00,$00                            ; $84B10C |

UNREACH_84B10F:
  db $00,$00,$CC,$A8,$04,$00,$00            ; $84B10F |

DATA8_84B116:
  db $00,$00,$98,$C5,$04,$BC,$E6,$18        ; $84B116 |
  db $38,$E7,$0C,$00,$00                    ; $84B11E |

UNREACH_84B123:
  db $00,$00,$88,$FE,$04,$12,$EA,$18        ; $84B123 |
  db $52,$EA,$1C,$00,$00                    ; $84B12B |

UNREACH_84B130:
  db $00,$00,$CC,$A8,$04,$00,$00            ; $84B130 |

DATA8_84B137:
  db $00,$00,$2A,$9D,$04,$4A,$9D,$06        ; $84B137 |
  db $6A,$9D,$08,$8A,$9D,$0A,$84,$C4        ; $84B13F |
  db $0C,$26,$9F,$18,$46,$9F,$1A,$66        ; $84B147 |
  db $9F,$1C,$00,$00                        ; $84B14F |

DATA8_84B153:
  db $00,$00,$C0,$C7,$04,$00,$00            ; $84B153 |

DATA8_84B15A:
  db $00,$00,$88,$FE,$04,$7E,$A2,$18        ; $84B15A |
  db $00,$00                                ; $84B162 |

DATA8_84B164:
  db $00,$00,$58,$E1,$02,$B4,$E1,$0C        ; $84B164 |
  db $F2,$E1,$08,$52,$E2,$0A,$86,$9F        ; $84B16C |
  db $18,$A6,$9F,$1A,$74,$81,$00,$6C        ; $84B174 |
  db $ED,$04,$00,$00                        ; $84B17C |

DATA8_84B180:
  db $00,$00,$20,$FF,$04,$00,$00            ; $84B180 |

DATA8_84B187:
  db $00,$00,$90,$C3,$04,$22,$E8,$18        ; $84B187 |
  db $00,$00                                ; $84B18F |

DATA8_84B191:
  db $00,$00,$90,$C3,$04,$22,$E8,$18        ; $84B191 |
  db $22,$E8,$1A,$00,$00                    ; $84B199 |

UNREACH_84B19E:
  db $00,$00,$22,$E8,$18,$90,$C3,$04        ; $84B19E |
  db $00,$00                                ; $84B1A6 |

DATA8_84B1A8:
  db $00,$00,$90,$C3,$04,$E8,$91,$18        ; $84B1A8 |
  db $08,$92,$1A,$28,$92,$1C,$00,$00        ; $84B1B0 |

UNREACH_84B1B8:
  db $00,$00,$1E,$EC,$04,$CC,$F6,$1A        ; $84B1B8 |
  db $00,$00                                ; $84B1C0 |

DATA8_84B1C2:
  db $00,$00,$1E,$EC,$04,$CC,$F6,$1A        ; $84B1C2 |
  db $00,$00                                ; $84B1CA |
  db $00,$00,$1E,$EC,$04,$CC,$F6,$1A        ; $84B1CC |
  db $00,$00                                ; $84B1D4 |

DATA8_84B1D6:
  db $00,$00,$90,$C3,$04,$E8,$91,$18        ; $84B1D6 |
  db $08,$92,$1A,$28,$92,$1C,$00,$00        ; $84B1DE |

DATA8_84B1E6:
  db $00,$00,$5C,$D4,$04,$A8,$F1,$18        ; $84B1E6 |
  db $30,$EF,$18,$00,$00                    ; $84B1EE |

UNREACH_84B1F3:
  db $00,$00,$5C,$D4,$04,$A8,$F1,$18        ; $84B1F3 |
  db $90,$EF,$1A,$00,$00                    ; $84B1FB |

UNREACH_84B200:
  db $00,$00,$5C,$D4,$04,$A8,$F1,$18        ; $84B200 |
  db $B0,$EF,$18,$00,$00                    ; $84B208 |

DATA8_84B20D:
  db $00,$00,$5C,$D4,$04,$D0,$EF,$18        ; $84B20D |
  db $30,$F0,$1A,$8C,$F0,$1E,$22,$F2        ; $84B215 |
  db $1C,$00,$00                            ; $84B21D |

DATA8_84B220:
  db $00,$00,$12,$D5,$04,$A8,$F1,$18        ; $84B220 |
  db $8C,$F0,$1E,$F0,$EF,$1A,$10,$F0        ; $84B228 |
  db $1C,$00,$00                            ; $84B230 |

DATA8_84B233:
  db $00,$00,$C8,$D5,$04,$22,$F2,$1E        ; $84B233 |
  db $2C,$F1,$18,$62,$F2,$1C,$00,$00        ; $84B23B |

DATA8_84B243:
  db $00,$00,$7E,$D6,$04,$A8,$F1,$18        ; $84B243 |
  db $AC,$F0,$18,$CC,$F0,$1C,$EC,$F0        ; $84B24B |
  db $1A,$00,$00                            ; $84B253 |

DATA8_84B256:
  db $00,$00,$34,$D7,$04,$A8,$F1,$18        ; $84B256 |
  db $50,$EF,$18,$70,$EF,$1E,$00,$00        ; $84B25E |

DATA8_84B266:
  db $00,$00,$EA,$D7,$04,$A8,$F1,$18        ; $84B266 |
  db $9A,$F3,$1E,$00,$00                    ; $84B26E |

UNREACH_84B273:
  db $00,$00,$5C,$D4,$04,$A8,$F1,$18        ; $84B273 |
  db $88,$F1,$1A,$00,$00                    ; $84B27B |

DATA8_84B280:
  db $00,$00,$7E,$D6,$04,$A8,$F1,$18        ; $84B280 |
  db $0C,$F1,$18,$00,$00                    ; $84B288 |

DATA8_84B28D:
  db $00,$00,$5C,$D4,$04,$A8,$F1,$18        ; $84B28D |
  db $30,$EF,$18,$D8,$F4,$1E,$00,$00        ; $84B295 |

DATA8_84B29D:
  db $00,$00,$68,$EB,$04,$22,$F2,$1E        ; $84B29D |
  db $42,$F2,$1A,$00,$00                    ; $84B2A5 |

UNREACH_84B2AA:
  db $00,$00,$5C,$D4,$04,$A8,$F1,$18        ; $84B2AA |
  db $A6,$9F,$18,$00,$00                    ; $84B2B2 |

DATA8_84B2B7:
  db $00,$00,$A0,$D8,$04,$82,$F2,$18        ; $84B2B7 |
  db $00,$00                                ; $84B2BF |

DATA8_84B2C1:
  db $00,$00,$A0,$D8,$04,$82,$F2,$18        ; $84B2C1 |
  db $00,$00                                ; $84B2C9 |

DATA8_84B2CB:
  db $00,$00,$56,$D9,$04,$82,$F2,$18        ; $84B2CB |
  db $30,$F0,$1A,$3A,$F3,$1E,$00,$00        ; $84B2D3 |

DATA8_84B2DB:
  db $00,$00,$0C,$DA,$04,$82,$F2,$18        ; $84B2DB |
  db $3A,$F4,$1C,$00,$00                    ; $84B2E3 |

DATA8_84B2E8:
  db $00,$00,$C2,$DA,$04,$82,$F2,$18        ; $84B2E8 |
  db $1A,$F4,$1C,$00,$00                    ; $84B2F0 |

DATA8_84B2F5:
  db $00,$00,$78,$DB,$04,$82,$F2,$18        ; $84B2F5 |
  db $BA,$F3,$1E,$00,$00                    ; $84B2FD |

DATA8_84B302:
  db $00,$00,$2E,$DC,$04,$82,$F2,$18        ; $84B302 |
  db $9A,$F3,$1C,$00,$00                    ; $84B30A |

DATA8_84B30F:
  db $00,$00,$0C,$DA,$04,$82,$F2,$18        ; $84B30F |
  db $7A,$F3,$18,$00,$00                    ; $84B317 |

UNREACH_84B31C:
  db $00,$00,$E4,$DC,$04,$82,$F2,$18        ; $84B31C |
  db $00,$00                                ; $84B324 |

UNREACH_84B326:
  db $00,$00,$9A,$DD,$04,$82,$F2,$18        ; $84B326 |
  db $DA,$F3,$1A,$00,$00                    ; $84B32E |

DATA8_84B333:
  db $00,$00,$9A,$DD,$04,$82,$F2,$18        ; $84B333 |
  db $FA,$F3,$18,$00,$00                    ; $84B33B |

DATA8_84B340:
  db $00,$00,$56,$D9,$04,$5A,$F4,$18        ; $84B340 |
  db $00,$00                                ; $84B348 |

DATA8_84B34A:
  db $00,$00,$A0,$D8,$04,$82,$F2,$18        ; $84B34A |
  db $2C,$F6,$1E,$00,$00                    ; $84B352 |

DATA8_84B357:
  db $00,$00,$A0,$D8,$04,$82,$F2,$18        ; $84B357 |
  db $00,$00                                ; $84B35F |

DATA8_84B361:
  db $00,$00,$A0,$D8,$04,$82,$F2,$18        ; $84B361 |
  db $02,$E8,$18,$00,$00                    ; $84B369 |

DATA8_84B36E:
  db $00,$00,$BC,$DF,$02,$D4,$EC,$10        ; $84B36E |
  db $6C,$ED,$04,$E8,$ED,$1A,$00,$00        ; $84B376 |

DATA8_84B37E:
  db $00,$00,$84,$E0,$02,$D4,$EC,$10        ; $84B37E |
  db $6C,$ED,$04,$44,$EE,$1A,$00,$00        ; $84B386 |

DATA8_84B38E:
  db $00,$00,$74,$81,$00,$58,$E1,$02        ; $84B38E |
  db $B4,$E1,$0C,$F2,$E1,$08,$52,$E2        ; $84B396 |
  db $0A,$D4,$EC,$10,$6C,$ED,$04,$A0        ; $84B39E |
  db $EE,$1A,$00,$00,$08,$80,$F2,$E1        ; $84B3A6 |
  db $08,$12,$E2,$08,$32,$E2,$08,$00        ; $84B3AE |
  db $00,$0A,$80,$52,$E2,$0A,$72,$E2        ; $84B3B6 |
  db $0A,$92,$E2,$0A,$00,$00                ; $84B3BE |

DATA8_84B3C4:
  db $00,$00,$58,$E1,$02,$B4,$E1,$0C        ; $84B3C4 |
  db $F2,$E1,$08,$52,$E2,$0A,$D4,$EC        ; $84B3CC |
  db $18,$74,$81,$00,$6C,$ED,$04,$00        ; $84B3D4 |
  db $00                                    ; $84B3DC |
  db $08,$80,$10,$CA,$0E,$F0,$C9,$0E        ; $84B3DD |
  db $D0,$C9,$0E,$B0,$C9,$0E,$00,$00        ; $84B3E5 |

DATA8_84B3ED:
  db $00,$00,$DC,$C8,$02,$18,$8A,$18        ; $84B3ED |
  db $38,$8A,$1A,$58,$8A,$1C,$FA,$84        ; $84B3F5 |
  db $1E,$00,$00                            ; $84B3FD |

DATA8_84B400:
  db $00,$00,$DC,$C8,$02,$FA,$84,$18        ; $84B400 |
  db $D8,$8A,$1A,$00,$00                    ; $84B408 |

DATA8_84B40D:
  db $00,$00,$20,$CB,$04,$FA,$84,$18        ; $84B40D |
  db $1A,$85,$1A,$00,$00                    ; $84B415 |

DATA8_84B41A:
  db $00,$00,$30,$CA,$02,$00,$CB,$04        ; $84B41A |
  db $18,$8A,$18,$38,$8A,$1A,$B8,$8A        ; $84B422 |
  db $1C,$58,$8A,$1E,$00,$00                ; $84B42A |

DATA8_84B430:
  db $00,$00,$30,$CA,$02,$FA,$84,$18        ; $84B430 |
  db $78,$85,$1A,$00,$00                    ; $84B438 |

DATA8_84B43D:
  db $00,$00,$30,$CA,$02,$82,$E8,$14        ; $84B43D |
  db $00,$00                                ; $84B445 |

DATA8_84B447:
  db $00,$00,$DC,$C8,$02,$FA,$84,$18        ; $84B447 |
  db $58,$85,$1C,$00,$00                    ; $84B44F |

DATA8_84B454:
  db $00,$00,$DC,$C8,$02,$18,$8A,$18        ; $84B454 |
  db $78,$8A,$1A,$98,$8A,$1C,$00,$00        ; $84B45C |

DATA8_84B464:
  db $00,$00,$DC,$C8,$02,$58,$85,$1A        ; $84B464 |
  db $78,$85,$18,$58,$8A,$1C,$38,$8A        ; $84B46C |
  db $1E,$00,$00                            ; $84B474 |

DATA8_84B477:
  db $00,$00,$B8,$CB,$04,$02,$E8,$18        ; $84B477 |
  db $42,$E8,$1C,$76,$E9,$1A,$2C,$F6        ; $84B47F |
  db $1E,$00,$00                            ; $84B487 |

DATA8_84B48A:
  db $00,$00,$B8,$CB,$04,$B8,$88,$18        ; $84B48A |
  db $42,$E8,$1A,$82,$E8,$1C,$00,$00        ; $84B492 |

DATA8_84B49A:
  db $00,$00,$B8,$CB,$04,$F8,$85,$1C        ; $84B49A |
  db $9E,$E5,$18,$00,$00                    ; $84B4A2 |

DATA8_84B4A7:
  db $00,$00,$B8,$CB,$04,$F8,$85,$1C        ; $84B4A7 |
  db $9E,$E5,$18,$BE,$E5,$1A,$42,$E8        ; $84B4AF |
  db $1C,$00,$00                            ; $84B4B7 |

DATA8_84B4BA:
  db $00,$00,$B8,$CB,$04,$02,$E8,$18        ; $84B4BA |
  db $42,$E8,$1A,$00,$00                    ; $84B4C2 |

DATA8_84B4C7:
  db $00,$00,$B8,$CB,$04,$02,$E8,$18        ; $84B4C7 |
  db $42,$E8,$1A,$00,$00                    ; $84B4CF |

DATA8_84B4D4:
  db $00,$00,$B8,$CB,$04,$02,$E8,$18        ; $84B4D4 |
  db $42,$E8,$1A,$00,$00                    ; $84B4DC |

UNREACH_84B4E1:
  db $00,$00,$B8,$CB,$04,$02,$E8,$18        ; $84B4E1 |
  db $42,$E8,$1A,$00,$00                    ; $84B4E9 |

DATA8_84B4EE:
  db $00,$00,$B8,$CB,$04,$02,$E8,$18        ; $84B4EE |
  db $78,$85,$1A,$62,$E8,$1C,$22,$E8        ; $84B4F6 |
  db $1E,$00,$00                            ; $84B4FE |
  db $00,$00,$B8,$CB,$04,$02,$E8,$18        ; $84B501 |
  db $62,$E8,$1C,$22,$E8,$1E,$00,$00        ; $84B509 |

DATA8_84B511:
  db $00,$00,$B8,$CB,$04,$00,$00            ; $84B511 |
  db $00,$00,$B8,$CB,$04,$00,$00            ; $84B518 |

DATA8_84B51F:
  db $00,$00,$BC,$CD,$04,$02,$E8,$18        ; $84B51F |
  db $00,$00                                ; $84B527 |
  db $00,$00,$BC,$CD,$04,$02,$E8,$18        ; $84B529 |
  db $22,$E8,$1A,$00,$00                    ; $84B531 |

DATA8_84B536:
  db $00,$00,$6E,$CC,$04,$00,$00            ; $84B536 |

DATA8_84B53D:
  db $00,$00,$B8,$CB,$04,$00,$00            ; $84B53D |

DATA8_84B544:
  db $00,$00,$B8,$CB,$04,$9E,$E5,$18        ; $84B544 |
  db $DE,$E5,$1A,$00,$00                    ; $84B54C |

DATA8_84B551:
  db $00,$00,$B8,$CB,$04,$9E,$E5,$18        ; $84B551 |
  db $DE,$E5,$1A,$42,$E8,$1C,$00,$00        ; $84B559 |

DATA8_84B561:
  db $00,$00,$42,$E8,$1A,$B8,$CB,$04        ; $84B561 |
  db $00,$00                                ; $84B569 |

DATA8_84B56B:
  db $00,$00,$24,$CD,$04,$B8,$CB,$04        ; $84B56B |
  db $02,$E8,$18,$62,$E8,$1C,$42,$E8        ; $84B573 |
  db $1A,$22,$E8,$1E,$00,$00                ; $84B57B |

DATA8_84B581:
  db $00,$00,$B8,$CB,$04,$02,$E8,$18        ; $84B581 |
  db $42,$E8,$1A,$00,$00                    ; $84B589 |

DATA8_84B58E:
  db $00,$00,$B8,$CB,$04,$42,$E8,$18        ; $84B58E |
  db $00,$00                                ; $84B596 |

DATA8_84B598:
  db $00,$00,$72,$CE,$02,$02,$E8,$18        ; $84B598 |
  db $42,$E8,$1A,$22,$E8,$1C,$2C,$F6        ; $84B5A0 |
  db $1E,$00,$00                            ; $84B5A8 |

DATA8_84B5AB:
  db $00,$00,$72,$CE,$02,$00,$00            ; $84B5AB |
  db $00,$00,$24,$CD,$04,$00,$00            ; $84B5B2 |

DATA8_84B5B9:
  db $00,$00,$24,$CD,$04,$02,$E8,$18        ; $84B5B9 |
  db $22,$E8,$1C,$78,$85,$1A,$00,$00        ; $84B5C1 |

DATA8_84B5C9:
  db $00,$00,$24,$CD,$04,$02,$E8,$18        ; $84B5C9 |
  db $42,$E8,$1A,$00,$00                    ; $84B5D1 |

DATA8_84B5D6:
  db $00,$00,$24,$CD,$04,$02,$E8,$18        ; $84B5D6 |
  db $42,$E8,$1A,$00,$00                    ; $84B5DE |

DATA8_84B5E3:
  db $00,$00,$24,$CD,$04,$22,$E8,$1A        ; $84B5E3 |
  db $02,$E8,$18,$42,$E8,$1C,$00,$00        ; $84B5EB |

DATA8_84B5F3:
  db $00,$00,$24,$CD,$04,$0C,$F7,$18        ; $84B5F3 |
  db $00,$00                                ; $84B5FB |

DATA8_84B5FD:
  db $00,$00,$24,$CD,$04,$72,$EA,$18        ; $84B5FD |
  db $00,$00                                ; $84B605 |

DATA8_84B607:
  db $00,$00,$46,$CF,$04,$22,$E8,$1C        ; $84B607 |
  db $02,$E8,$18,$42,$E8,$1A,$00,$00        ; $84B60F |

DATA8_84B617:
  db $00,$00,$FC,$CF,$04,$9E,$E5,$18        ; $84B617 |
  db $BE,$E5,$1A,$22,$E8,$1C,$00,$00        ; $84B61F |

DATA8_84B627:
  db $00,$00,$94,$D0,$04,$00,$00            ; $84B627 |

DATA8_84B62E:
  db $00,$00,$94,$D0,$04,$02,$E8,$18        ; $84B62E |
  db $00,$00                                ; $84B636 |

DATA8_84B638:
  db $00,$00,$94,$D0,$04,$9E,$E5,$18        ; $84B638 |
  db $DE,$E5,$1A,$62,$E8,$1E,$00,$00        ; $84B640 |

DATA8_84B648:
  db $00,$00,$4A,$D1,$04,$9E,$E5,$18        ; $84B648 |
  db $DE,$E5,$1A,$B8,$88,$1C,$00,$00        ; $84B650 |

DATA8_84B658:
  db $00,$00,$4A,$D1,$04,$9E,$E5,$18        ; $84B658 |
  db $FE,$E5,$1A,$B8,$88,$1C,$00,$00        ; $84B660 |

DATA8_84B668:
  db $00,$00,$4A,$D1,$04,$92,$EA,$1C        ; $84B668 |
  db $9E,$E5,$18,$FE,$E5,$1A,$00,$00        ; $84B670 |
  db $08,$80,$5C,$D2,$0E,$7C,$D2,$0E        ; $84B678 |
  db $9C,$D2,$0E,$BC,$D2,$0E,$00,$00        ; $84B680 |

DATA8_84B688:
  db $00,$00,$30,$CA,$02,$00,$CB,$04        ; $84B688 |
  db $D8,$F4,$1E,$00,$00,$08,$80,$F8        ; $84B690 |
  db $F4,$18,$72,$F5,$18,$D0,$F5,$18        ; $84B698 |
  db $00,$00                                ; $84B6A0 |

DATA8_84B6A2:
  db $00,$00,$50,$DE,$04,$EC,$F6,$18        ; $84B6A2 |
  db $22,$E9,$1C,$00,$00                    ; $84B6AA |

DATA8_84B6AF:
  db $00,$00,$06,$DF,$04,$00,$00,$00        ; $84B6AF |
  db $00,$74,$81,$00,$32,$E5,$16,$00        ; $84B6B7 |
  db $00,$00,$00,$E4,$9B,$04,$9A,$9C        ; $84B6BF |
  db $16,$00,$00,$00,$00,$74,$81,$00        ; $84B6C7 |
  db $BA,$83,$0C,$DA,$83,$18,$00,$00        ; $84B6CF |
  db $00,$00,$B4,$81,$10,$32,$E5,$16        ; $84B6D7 |
  db $00,$00                                ; $84B6DF |
  db $00,$00,$74,$81,$00,$18,$9D,$1E        ; $84B6E1 |
  db $00,$00                                ; $84B6E9 |
  db $00,$00,$74,$81,$00,$BA,$9C,$06        ; $84B6EB |
  db $F8,$9C,$1A,$18,$9D,$1E,$00,$00        ; $84B6F3 |
  db $00,$00,$B2,$E2,$10,$00,$00,$00        ; $84B6FB |
  db $00,$D2,$E2,$10,$00,$00,$00,$00        ; $84B703 |
  db $F2,$E2,$10,$00,$00,$00,$00,$12        ; $84B70B |
  db $E3,$10,$00,$00                        ; $84B713 |
  db $00,$00,$B2,$E2,$12,$00,$00,$00        ; $84B717 |
  db $00,$D2,$E2,$12,$00,$00,$00,$00        ; $84B71F |
  db $F2,$E2,$12,$00,$00,$00,$00,$12        ; $84B727 |
  db $E3,$12,$00,$00                        ; $84B72F |
  db $00,$00,$32,$E3,$10,$00,$00,$00        ; $84B733 |
  db $00,$52,$E3,$10,$00,$00,$00,$00        ; $84B73B |
  db $72,$E3,$10,$00,$00,$00,$00,$92        ; $84B743 |
  db $E3,$10,$00,$00                        ; $84B74B |
  db $00,$00,$32,$E3,$12,$00,$00,$00        ; $84B74F |
  db $00,$52,$E3,$12,$00,$00,$00,$00        ; $84B757 |
  db $72,$E3,$12,$00,$00,$00,$00,$92        ; $84B75F |
  db $E3,$12,$00,$00                        ; $84B767 |
  db $00,$00,$92,$E4,$10,$00,$00            ; $84B76B |
  db $00,$00,$92,$E4,$12,$00,$00            ; $84B772 |
  db $00,$00,$B2,$E4,$10,$00,$00            ; $84B779 |
  db $00,$00,$B2,$E4,$12,$00,$00,$00        ; $84B780 |
  db $00,$D2,$E4,$10,$00,$00,$00,$00        ; $84B788 |
  db $D2,$E4,$12,$00,$00                    ; $84B790 |
  db $00,$00,$F2,$E4,$10,$00,$00            ; $84B795 |
  db $00,$00,$F2,$E4,$12,$00,$00            ; $84B79C |
  db $00,$00,$12,$E5,$10,$00,$00            ; $84B7A3 |
  db $00,$00,$12,$E5,$12,$00,$00,$00        ; $84B7AA |
  db $00,$B2,$E3,$10,$00,$00,$00,$00        ; $84B7B2 |
  db $D2,$E3,$10,$00,$00,$00,$00,$12        ; $84B7BA |
  db $E4,$10,$00,$00,$00,$00,$F2,$E3        ; $84B7C2 |
  db $10,$00,$00,$00,$00,$B2,$E3,$12        ; $84B7CA |
  db $00,$00,$00,$00,$D2,$E3,$12,$00        ; $84B7D2 |
  db $00,$00,$00,$12,$E4,$12,$00,$00        ; $84B7DA |
  db $00,$00,$F2,$E3,$12,$00,$00            ; $84B7E2 |
  db $00,$00,$32,$E4,$14,$00,$00,$00        ; $84B7E9 |
  db $00,$52,$E4,$14,$00,$00,$00,$00        ; $84B7F1 |
  db $72,$E4,$14,$00,$00,$00,$00,$2C        ; $84B7F9 |
  db $F7,$0E,$88,$90,$18,$00,$00,$00        ; $84B801 |
  db $00,$4C,$F7,$0E,$88,$90,$18,$00        ; $84B809 |
  db $00                                    ; $84B811 |
  db $00,$00,$6C,$F7,$0E,$68,$91,$18        ; $84B812 |
  db $00,$00,$00,$00,$28,$91,$0E,$88        ; $84B81A |
  db $91,$18,$00,$00                        ; $84B822 |
  db $00,$00,$28,$90,$0E,$88,$90,$18        ; $84B826 |
  db $00,$00,$00,$00,$48,$90,$0E,$A8        ; $84B82E |
  db $90,$18,$00,$00,$00,$00,$48,$92        ; $84B836 |
  db $18,$F4,$92,$1E,$00,$00,$00,$00        ; $84B83E |
  db $F4,$92,$1A,$14,$93,$1C,$00,$00        ; $84B846 |
  db $00,$00,$24,$8C,$08,$E4,$8B,$0A        ; $84B84E |
  db $62,$8C,$10,$00,$00,$00,$00,$68        ; $84B856 |
  db $95,$12,$88,$95,$14,$28,$94,$18        ; $84B85E |
  db $A8,$94,$1C,$48,$93,$1E,$00,$00        ; $84B866 |
  db $00,$00,$1A,$97,$0C,$86,$99,$12        ; $84B86E |
  db $C4,$99,$18,$E4,$99,$1A,$04,$9A        ; $84B876 |
  db $1C,$24,$9A,$1E,$00,$00                ; $84B87E |
  db $00,$00,$C4,$99,$18,$E4,$99,$1A        ; $84B884 |
  db $04,$9A,$1C,$00,$00,$00,$00,$44        ; $84B88C |
  db $9A,$18,$64,$9A,$1A,$84,$9A,$1C        ; $84B894 |
  db $00,$00,$00,$00,$84,$9A,$1C,$00        ; $84B89C |
  db $00,$00,$00,$64,$9A,$1A,$00,$00        ; $84B8A4 |
  db $00,$00,$44,$9B,$18,$C4,$9B,$1C        ; $84B8AC |
  db $00,$00,$00,$00,$74,$81,$00,$70        ; $84B8B4 |
  db $8F,$10,$00,$00,$00,$00,$28,$95        ; $84B8BC |
  db $18,$48,$95,$1A,$A8,$94,$1C,$08        ; $84B8C4 |
  db $90,$1E,$00,$00,$00,$00,$8C,$F7        ; $84B8CC |
  db $00,$30,$F8,$0E,$D4,$EC,$10,$D4        ; $84B8D4 |
  db $EC,$18,$00,$00                        ; $84B8DC |
  db $00,$00,$E2,$F9,$18,$02,$FA,$1A        ; $84B8E0 |
  db $22,$FA,$1C,$42,$FA,$1E,$00,$00        ; $84B8E8 |
  db $00,$00,$50,$F8,$06,$00,$00,$00        ; $84B8F0 |
  db $00,$FE,$F7,$0A,$4A,$F9,$12,$E2        ; $84B8F8 |
  db $F9,$18,$02,$FA,$1A,$0A,$F9,$1C        ; $84B900 |
  db $2A,$F9,$1E,$00,$00,$00,$00,$4A        ; $84B908 |
  db $F9,$12,$00,$00,$00,$00,$E2,$F9        ; $84B910 |
  db $18,$00,$00,$00,$00,$02,$FA,$1A        ; $84B918 |
  db $00,$00,$00,$00,$22,$FA,$1C,$00        ; $84B920 |
  db $00,$00,$00,$42,$FA,$1E,$00,$00        ; $84B928 |
  db $00,$00,$CA,$F8,$18,$00,$00,$00        ; $84B930 |
  db $00,$EA,$F8,$1A,$00,$00,$00,$00        ; $84B938 |
  db $0A,$F9,$1C,$00,$00,$00,$00,$2A        ; $84B940 |
  db $F9,$1E,$00,$00,$00,$00,$B2,$E2        ; $84B948 |
  db $10,$D2,$E2,$12,$F2,$E2,$1E,$12        ; $84B950 |
  db $E3,$14,$00,$00                        ; $84B958 |
  db $00,$00,$74,$81,$00,$12,$82,$0E        ; $84B95C |
  db $00,$00,$00,$00,$74,$81,$00,$F2        ; $84B964 |
  db $81,$0C,$12,$82,$0E,$32,$82,$18        ; $84B96C |
  db $00,$00,$00,$00,$74,$81,$00,$62        ; $84B974 |
  db $FA,$04,$FA,$FA,$10,$00,$00,$00        ; $84B97C |
  db $00,$74,$81,$00,$5A,$FB,$04,$00        ; $84B984 |
  db $00,$00,$00,$74,$81,$00,$52,$FC        ; $84B98C |
  db $04,$84,$FD,$10,$00,$00,$00,$00        ; $84B994 |
  db $EC,$FC,$04,$A4,$FD,$10,$00,$00        ; $84B99C |
  db $00,$00,$74,$81,$00,$08,$FE,$0C        ; $84B9A4 |
  db $28,$FE,$18,$00,$00                    ; $84B9AC |
  db $80,$40,$2C,$00,$2E,$80,$00,$2C        ; $84B9B1 |
  db $00,$2E,$80,$00,$2C,$00,$2D,$80        ; $84B9B9 |
  db $40,$2D,$00,$2E                        ; $84B9C1 |
  db $84,$E0,$2C,$00,$2D,$84,$80,$2D        ; $84B9C5 |
  db $A0,$2D                                ; $84B9CD |
  db $88,$80,$2D,$C0,$2D,$80,$C0,$2C        ; $84B9CF |
  db $E0,$2C                                ; $84B9D7 |
  db $88,$80,$2D,$C0,$2D,$88,$C0,$2C        ; $84B9D9 |
  db $00,$2D,$88,$80,$2D,$E0,$2D,$88        ; $84B9E1 |
  db $C0,$2D,$E0,$2D,$88,$E0,$2D,$00        ; $84B9E9 |
  db $2E,$88,$80,$2D,$A0,$2D,$88,$80        ; $84B9F1 |
  db $2D,$A0,$2D                            ; $84B9F9 |
  db $88,$A0,$2D,$C0,$2D                    ; $84B9FC |
  db $88,$A0,$2D,$C0,$2D,$81,$00,$2C        ; $84BA01 |
  db $20,$2C                                ; $84BA09 |
  db $81,$00,$2C,$80,$2C,$81,$A0,$2C        ; $84BA0B |
  db $00,$2E                                ; $84BA13 |
  db $86,$40,$2C,$00,$2D                    ; $84BA15 |
  db $85,$00,$2C,$02,$2C,$52,$81,$00        ; $84BA1A |
  db $00,$00,$74,$81,$00,$F2,$81,$0C        ; $84BA22 |
  db $12,$82,$0E,$32,$82,$18,$00,$00        ; $84BA2A |
  db $74,$81,$00,$00,$00,$74,$81,$00        ; $84BA32 |
  db $F2,$81,$0C,$32,$82,$18,$04,$00        ; $84BA3A |
  db $B2,$E2,$10,$00,$00,$D2,$E2,$10        ; $84BA42 |
  db $00,$00,$F2,$E2,$10,$00,$00,$12        ; $84BA4A |
  db $E3,$10,$00,$00,$B2,$E2,$12,$00        ; $84BA52 |
  db $00,$D2,$E2,$12,$00,$00,$F2,$E2        ; $84BA5A |
  db $12,$00,$00,$12,$E3,$12,$00,$00        ; $84BA62 |
  db $C4,$8B,$08,$01,$00,$28,$90,$0E        ; $84BA6A |
  db $88,$90,$18,$00,$00                    ; $84BA72 |
  db $32,$EA,$1A,$00,$00                    ; $84BA77 |
  db $C2,$E7,$1A,$00,$00,$96,$E9,$18        ; $84BA7C |
  db $00,$00,$08,$94,$0C,$01,$00,$04        ; $84BA84 |
  db $9B,$0C,$01,$00                        ; $84BA8C |
  db $DE,$F7,$08,$01,$00                    ; $84BA90 |
  db $DA,$C2,$04,$01,$00                    ; $84BA95 |
  db $00,$02,$2E,$00,$30,$02,$2C,$00        ; $84BA9A |
  db $40,$2E,$00,$30,$40,$2C,$00,$38        ; $84BAA2 |
  db $2E,$40,$2F,$38,$2C,$00,$00,$2F        ; $84BAAA |
  db $60,$2F,$00,$2D                        ; $84BAB2 |

clear_sound_ram:
  REP #$30                                  ; $84BAB6 |\
  PHB                                       ; $84BAB8 | |
  LDA.W #$0000                              ; $84BAB9 | |
  STA.L $7E2000                             ; $84BABC | |
  LDA.W #$0BFD                              ; $84BAC0 | | init $7E2000 - $7E2BFF
  LDX.W #$2001                              ; $84BAC3 | |
  TXY                                       ; $84BAC6 | |
  INY                                       ; $84BAC7 | |
  MVN $7E,$7E                               ; $84BAC8 | |
  PLB                                       ; $84BACB |/

CODE_FL_84BACC:
  REP #$30                                  ; $84BACC |\
  PHB                                       ; $84BACE | |
  LDA.W #$0000                              ; $84BACF | |
  STA.L $001E00                             ; $84BAD2 | |
  LDA.W #$0035                              ; $84BAD6 | | init $001E00 - $001E37
  LDX.W #$1E01                              ; $84BAD9 | |
  TXY                                       ; $84BADC | |
  INY                                       ; $84BADD | |
  MVN $00,$00                               ; $84BADE | |
  PLB                                       ; $84BAE1 |/

CODE_FL_84BAE2:
  REP #$30                                  ; $84BAE2 |\
  PHB                                       ; $84BAE4 | |
  LDA.W #$0000                              ; $84BAE5 | |
  STA.L $000100                             ; $84BAE8 | |
  LDA.W #$0035                              ; $84BAEC | | init $000100 - $000137
  LDX.W #$0101                              ; $84BAEF | |
  TXY                                       ; $84BAF2 | |
  INY                                       ; $84BAF3 | |
  MVN $00,$00                               ; $84BAF4 | |
  PLB                                       ; $84BAF7 |/

  REP #$30                                  ; $84BAF8 |\
  PHB                                       ; $84BAFA | |
  LDA.W #$0000                              ; $84BAFB | |
  STA.L $001F00                             ; $84BAFE | |
  LDA.W #$002D                              ; $84BB02 | | init $001F00 - $001F2F
  LDX.W #$1F01                              ; $84BB05 | |
  TXY                                       ; $84BB08 | |
  INY                                       ; $84BB09 | |
  MVN $00,$00                               ; $84BB0A | |
  PLB                                       ; $84BB0D |/
  RTL                                       ; $84BB0E |

  STZ.B $00,X                               ; $84BB0F |
  STZ.B $02,X                               ; $84BB11 |
  RTL                                       ; $84BB13 |

CODE_FL_84BB14:
  JSL.L sound_transfer_blocks               ; $84BB14 |
  LDX.W #$A000                              ; $84BB18 |
  JSR.W CODE_FN_84BB25                      ; $84BB1B |
  LDX.W #$F000                              ; $84BB1E |
  JSR.W CODE_FN_84BB25                      ; $84BB21 |
  RTL                                       ; $84BB24 |

CODE_FN_84BB25:
  LDA.W #$0100                              ; $84BB25 |
  STA.B $08                                 ; $84BB28 |
  STX.B $00                                 ; $84BB2A |
  LDA.W #$007F                              ; $84BB2C |
  STA.B $02                                 ; $84BB2F |

CODE_84BB31:
  LDA.L $7F0000,X                           ; $84BB31 |
  CMP.W #$FF00                              ; $84BB35 |
  BCC CODE_84BB70                           ; $84BB38 |
  AND.W #$00FF                              ; $84BB3A |
  ASL A                                     ; $84BB3D |
  ASL A                                     ; $84BB3E |
  ASL A                                     ; $84BB3F |
  ASL A                                     ; $84BB40 |
  ASL A                                     ; $84BB41 |
  TAY                                       ; $84BB42 |
  PHX                                       ; $84BB43 |
  LDA.W #$0004                              ; $84BB44 |
  STA.B $0A                                 ; $84BB47 |

CODE_84BB49:
  JSR.W CODE_FN_84BB7B                      ; $84BB49 |
  STA.L $7F0006,X                           ; $84BB4C |
  JSR.W CODE_FN_84BB7B                      ; $84BB50 |
  STA.L $7F0004,X                           ; $84BB53 |
  JSR.W CODE_FN_84BB7B                      ; $84BB57 |
  STA.L $7F0002,X                           ; $84BB5A |
  JSR.W CODE_FN_84BB7B                      ; $84BB5E |
  STA.L $7F0000,X                           ; $84BB61 |
  TXA                                       ; $84BB65 |
  CLC                                       ; $84BB66 |
  ADC.W #$0008                              ; $84BB67 |
  TAX                                       ; $84BB6A |
  DEC.B $0A                                 ; $84BB6B |
  BNE CODE_84BB49                           ; $84BB6D |
  PLX                                       ; $84BB6F |

CODE_84BB70:
  TXA                                       ; $84BB70 |
  CLC                                       ; $84BB71 |
  ADC.W #$0020                              ; $84BB72 |
  TAX                                       ; $84BB75 |
  DEC.B $08                                 ; $84BB76 |
  BNE CODE_84BB31                           ; $84BB78 |
  RTS                                       ; $84BB7A |

CODE_FN_84BB7B:
  LDA.B [$00],Y                             ; $84BB7B |
  INY                                       ; $84BB7D |
  INY                                       ; $84BB7E |
  EOR.W #$4000                              ; $84BB7F |
  RTS                                       ; $84BB82 |

CODE_FL_84BB83:
  REP #$30                                  ; $84BB83 |
  PHB                                       ; $84BB85 |
  PHD                                       ; $84BB86 |
  LDX.W $0100                               ; $84BB87 |
  BEQ CODE_84BB94                           ; $84BB8A |
  LDA.W #$0100                              ; $84BB8C |
  TCD                                       ; $84BB8F |
  PHK                                       ; $84BB90 |
  JSR.W (CODE_84BBA2,X)                     ; $84BB91 |

CODE_84BB94:
  LDX.W $1F00                               ; $84BB94 |
  BEQ CODE_84BBA1                           ; $84BB97 |
  LDA.W #$1F00                              ; $84BB99 |
  TCD                                       ; $84BB9C |
  PHK                                       ; $84BB9D |
  JSR.W (CODE_84BBA2,X)                     ; $84BB9E |

CODE_84BBA1:
  PLD                                       ; $84BBA1 |

CODE_84BBA2:
  PLB                                       ; $84BBA2 |

CODE_84BBA3:
  RTL                                       ; $84BBA3 |

  dw CODE_84BBA3                            ; $84BBA4 |
  dw CODE_84BC83                            ; $84BBA6 |
  dw CODE_84BBA3                            ; $84BBA8 |
  dw CODE_84BD41                            ; $84BBAA |
  dw CODE_84BBA3                            ; $84BBAC |
  dw CODE_84C19A                            ; $84BBAE |

;----------------------------------------------------------------
; Transfer data blocks to the SPC from a ROM table.
;
; Input:
;   X = pointer to ROM transfer table (bank $88)
;
; Output:
;   SPC memory updated according to the table entries
;----------------------------------------------------------------
sound_transfer_blocks:
  LDY.W #$0000                              ; $84BBB0 |
  LDA.W $0100                               ; $84BBB3 |
  BEQ CODE_84BBE0                           ; $84BBB6 |
  INY                                       ; $84BBB8 |
  INY                                       ; $84BBB9 |
  LDA.W $1F00                               ; $84BBBA |
  BEQ CODE_84BBE0                           ; $84BBBD |

CODE_84BBBF:
  TXA                                       ; $84BBBF |
  LDX.W $0130                               ; $84BBC0 |
  CPX.W #$0006                              ; $84BBC3 |
  BCS CODE_84BBD0                           ; $84BBC6 |
  INX                                       ; $84BBC8 |
  INX                                       ; $84BBC9 |
  STX.W $0130                               ; $84BBCA |
  STA.W $0130,X                             ; $84BBCD |

CODE_84BBD0:
  RTL                                       ; $84BBD0 |

CODE_JP_84BBD1:
  LDA.W $0100                               ; $84BBD1 |
  BNE CODE_84BBBF                           ; $84BBD4 |
  LDY.W #$0000                              ; $84BBD6 |
  BRA CODE_84BBE0                           ; $84BBD9 |

  LDY.W #$0002                              ; $84BBDB |
  BRA CODE_84BBE0                           ; $84BBDE |

CODE_84BBE0:
  PHB                                       ; $84BBE0 |  save data bank
  PHD                                       ; $84BBE1 |  save direct page
  TXA                                       ; $84BBE2 |\
  TYX                                       ; $84BBE3 | | swap X and Y
  TAY                                       ; $84BBE4 |/
  LDA.L sound_dp_base_table,X               ; $84BBE5 |\  set direct page for this context
  TCD                                       ; $84BBE9 |/
  LDA.L DATA16_84C508,X                     ; $84BBEA |\
  STA.B $11                                 ; $84BBEE |/
  STY.B $06                                 ; $84BBF0 |
  TYX                                       ; $84BBF2 |  restore X

CODE_JP_84BBF3:
  STZ.B $02                                 ; $84BBF3 |
  STZ.B $0A                                 ; $84BBF5 |
  JSR.W CODE_FN_84C4F3                      ; $84BBF7 |
  SEP #$20                                  ; $84BBFA |
  LDA.B #$88                                ; $84BBFC |\
  PHA                                       ; $84BBFE | | data bank $88
  PLB                                       ; $84BBFF |/
  LDA.W $0000,X                             ; $84BC00 |
  BEQ .case_0                               ; $84BC03 |
  BPL .case_positive                        ; $84BC05 |
  JMP.W CODE_JP_84C13F                      ; $84BC07 |

.case_positive
  DEC A                                     ; $84BC0A |
  BNE .test_2                               ; $84BC0B |
  JMP.W CODE_JP_84BCDA                      ; $84BC0D | Handle transfer type 1

.test_2
  DEC A                                     ; $84BC10 |
  BNE .case_3                               ; $84BC11 |
  JMP.W CODE_JP_84C138                      ; $84BC13 | Handle transfer type 2

.case_3
  JMP.W CODE_JP_84C228                      ; $84BC16 | Handle transfer type 3

.case_0
  LDA.W $0001,X                             ; $84BC19 |
  STA.B $08                                 ; $84BC1C |
  AND.B #$01                                ; $84BC1E |
  INC A                                     ; $84BC20 |
  ASL A                                     ; $84BC21 |
  STA.B $00                                 ; $84BC22 |
  INX                                       ; $84BC24 |
  INX                                       ; $84BC25 |
  STX.B $06                                 ; $84BC26 |

CODE_JP_84BC28:
  LDA.B $02                                 ; $84BC28 |
  BNE CODE_84BC2F                           ; $84BC2A |
  JSR.W CODE_FN_84BCBA                      ; $84BC2C |

CODE_84BC2F:
  REP #$20                                  ; $84BC2F |
  LDA.B $08                                 ; $84BC31 |
  LSR A                                     ; $84BC33 |
  BCC CODE_84BC39                           ; $84BC34 |
  JMP.W CODE_JP_84C22C                      ; $84BC36 |

CODE_84BC39:
  PEA.W $887E                               ; $84BC39 |
  PLB                                       ; $84BC3C |
  LDA.W #$0400                              ; $84BC3D |
  STA.B $1E                                 ; $84BC40 |
  STA.B $20                                 ; $84BC42 |

CODE_84BC44:
  JSL.L decompress_stream                   ; $84BC44 |
  JSL.L CODE_FL_84BE42                      ; $84BC48 |
  LDA.B $01                                 ; $84BC4C |
  BPL CODE_84BC44                           ; $84BC4E |
  SEP #$20                                  ; $84BC50 |
  PLB                                       ; $84BC52 |
  JSR.W CODE_FN_84C0ED                      ; $84BC53 |
  BCS CODE_JP_84BC5B                        ; $84BC56 |
  JMP.W CODE_JP_84BC28                      ; $84BC58 |

CODE_JP_84BC5B:
  REP #$30                                  ; $84BC5B |
  TDC                                       ; $84BC5D |
  CMP.W #$0100                              ; $84BC5E |
  BNE CODE_84BC80                           ; $84BC61 |
  LDX.B $30                                 ; $84BC63 |
  BEQ CODE_84BC80                           ; $84BC65 |
  DEX                                       ; $84BC67 |
  DEX                                       ; $84BC68 |
  STX.B $30                                 ; $84BC69 |
  LDX.B $32                                 ; $84BC6B |
  LDA.B $34                                 ; $84BC6D |
  STA.B $32                                 ; $84BC6F |
  LDA.B $36                                 ; $84BC71 |
  STA.B $34                                 ; $84BC73 |
  LDA.B $38                                 ; $84BC75 |
  STA.B $36                                 ; $84BC77 |
  STZ.B $00                                 ; $84BC79 |
  PLD                                       ; $84BC7B |
  PLB                                       ; $84BC7C |
  JMP.W CODE_JP_84BBD1                      ; $84BC7D |

CODE_84BC80:
  JMP.W CODE_JP_84C228                      ; $84BC80 |

CODE_84BC83:
  PHB                                       ; $84BC83 |
  PHD                                       ; $84BC84 |
  LDA.B $02                                 ; $84BC85 |
  BNE CODE_84BC92                           ; $84BC87 |
  SEP #$20                                  ; $84BC89 |
  LDA.B #$88                                ; $84BC8B |
  PHA                                       ; $84BC8D |
  PLB                                       ; $84BC8E |
  JSR.W CODE_FN_84BCBA                      ; $84BC8F |

CODE_84BC92:
  PEA.W $887E                               ; $84BC92 |
  PLB                                       ; $84BC95 |
  LDA.B $1E                                 ; $84BC96 |
  CLC                                       ; $84BC98 |
  ADC.B $18                                 ; $84BC99 |
  STA.B $20                                 ; $84BC9B |
  JSL.L decompress_stream                   ; $84BC9D |
  JSL.L CODE_FL_84BE42                      ; $84BCA1 |
  PLB                                       ; $84BCA5 |
  LDA.B $01                                 ; $84BCA6 |
  BMI CODE_84BCAD                           ; $84BCA8 |
  JMP.W CODE_JP_84C22C                      ; $84BCAA |

CODE_84BCAD:
  SEP #$20                                  ; $84BCAD |
  JSR.W CODE_FN_84C0ED                      ; $84BCAF |
  BCS CODE_84BCB7                           ; $84BCB2 |
  JMP.W CODE_JP_84C22C                      ; $84BCB4 |

CODE_84BCB7:
  JMP.W CODE_JP_84BC5B                      ; $84BCB7 |

CODE_FN_84BCBA:
  LDX.B $06                                 ; $84BCBA |
  LDA.W $0000,X                             ; $84BCBC |
  STA.B $15                                 ; $84BCBF |
  LDA.W $0001,X                             ; $84BCC1 |
  STA.B $16                                 ; $84BCC4 |
  INX                                       ; $84BCC6 |
  INX                                       ; $84BCC7 |
  JSR.W CODE_FN_84BDFA                      ; $84BCC8 |
  LDA.W #$0080                              ; $84BCCB |
  LDY.B $07                                 ; $84BCCE |
  BPL CODE_84BCD5                           ; $84BCD0 |
  LDA.W #$0400                              ; $84BCD2 |

CODE_84BCD5:
  STA.B $1E                                 ; $84BCD5 |
  INC.B $02                                 ; $84BCD7 |
  RTS                                       ; $84BCD9 |

CODE_JP_84BCDA:
  LDA.W $0001,X                             ; $84BCDA |
  STA.B $08                                 ; $84BCDD |
  INX                                       ; $84BCDF |
  INX                                       ; $84BCE0 |
  STX.B $06                                 ; $84BCE1 |
  STZ.B $2E                                 ; $84BCE3 |

CODE_JP_84BCE5:
  LDA.B $02                                 ; $84BCE5 |
  BNE CODE_84BCEC                           ; $84BCE7 |
  JSR.W CODE_FN_84BD78                      ; $84BCE9 |

CODE_84BCEC:
  REP #$20                                  ; $84BCEC |
  LDA.B $08                                 ; $84BCEE |
  LSR A                                     ; $84BCF0 |
  BCC CODE_84BCF6                           ; $84BCF1 |
  JMP.W CODE_JP_84C22C                      ; $84BCF3 |

CODE_84BCF6:
  PEA.W $887E                               ; $84BCF6 |
  PLB                                       ; $84BCF9 |
  LDA.W #$0400                              ; $84BCFA |
  STA.B $1E                                 ; $84BCFD |
  STA.B $20                                 ; $84BCFF |

CODE_84BD01:
  JSL.L decompress_stream                   ; $84BD01 |
  JSL.L CODE_FL_84BFF4                      ; $84BD05 |
  LDA.B $01                                 ; $84BD09 |
  BPL CODE_84BD01                           ; $84BD0B |
  SEP #$20                                  ; $84BD0D |
  PLB                                       ; $84BD0F |
  LDA.B $08                                 ; $84BD10 |
  BPL CODE_84BD36                           ; $84BD12 |
  STZ.B $02                                 ; $84BD14 |
  LDX.B $06                                 ; $84BD16 |
  LDA.L $880001,X                           ; $84BD18 |
  XBA                                       ; $84BD1C |
  LDA.L $880000,X                           ; $84BD1D |
  TAY                                       ; $84BD21 |
  CPY.W #$FFFF                              ; $84BD22 |
  BEQ CODE_84BD3E                           ; $84BD25 |
  LDX.B $2E                                 ; $84BD27 |
  INX                                       ; $84BD29 |
  INX                                       ; $84BD2A |
  INX                                       ; $84BD2B |
  STX.B $2E                                 ; $84BD2C |
  CPX.W #$0018                              ; $84BD2E |
  BCS CODE_84BD3E                           ; $84BD31 |
  JMP.W CODE_JP_84BCE5                      ; $84BD33 |

CODE_84BD36:
  JSR.W CODE_FN_84C101                      ; $84BD36 |
  BCS CODE_84BD3E                           ; $84BD39 |
  JMP.W CODE_JP_84BCE5                      ; $84BD3B |

CODE_84BD3E:
  JMP.W CODE_JP_84BC5B                      ; $84BD3E |

CODE_84BD41:
  PHB                                       ; $84BD41 |
  PHD                                       ; $84BD42 |
  LDA.B $02                                 ; $84BD43 |
  BNE CODE_84BD50                           ; $84BD45 |
  SEP #$20                                  ; $84BD47 |
  LDA.B #$88                                ; $84BD49 |
  PHA                                       ; $84BD4B |
  PLB                                       ; $84BD4C |
  JSR.W CODE_FN_84BD78                      ; $84BD4D |

CODE_84BD50:
  PEA.W $887E                               ; $84BD50 |
  PLB                                       ; $84BD53 |
  LDA.B $1E                                 ; $84BD54 |
  CLC                                       ; $84BD56 |
  ADC.B $18                                 ; $84BD57 |
  STA.B $20                                 ; $84BD59 |
  JSL.L decompress_stream                   ; $84BD5B |
  JSL.L CODE_FL_84BFF4                      ; $84BD5F |
  PLB                                       ; $84BD63 |
  LDA.B $01                                 ; $84BD64 |
  BMI CODE_84BD6B                           ; $84BD66 |
  JMP.W CODE_JP_84C22C                      ; $84BD68 |

CODE_84BD6B:
  SEP #$20                                  ; $84BD6B |
  JSR.W CODE_FN_84C101                      ; $84BD6D |
  BCS CODE_84BD75                           ; $84BD70 |
  JMP.W CODE_JP_84BCE5                      ; $84BD72 |

CODE_84BD75:
  JMP.W CODE_JP_84BC5B                      ; $84BD75 |

CODE_FN_84BD78:
  REP #$20                                  ; $84BD78 |
  LDA.B $07                                 ; $84BD7A |
  BPL CODE_84BD90                           ; $84BD7C |
  LDX.B $2E                                 ; $84BD7E |
  LDA.L PTR24_84C50F,X                      ; $84BD80 |
  STA.B $16                                 ; $84BD84 |
  LDA.L PTR24_84C50E,X                      ; $84BD86 |
  STA.B $15                                 ; $84BD8A |
  LDX.B $06                                 ; $84BD8C |
  BRA CODE_84BD9F                           ; $84BD8E |

CODE_84BD90:
  LDX.B $06                                 ; $84BD90 |
  LDA.W $0000,X                             ; $84BD92 |
  STA.B $15                                 ; $84BD95 |
  LDA.W $0001,X                             ; $84BD97 |
  STA.B $16                                 ; $84BD9A |
  INX                                       ; $84BD9C |
  INX                                       ; $84BD9D |
  INX                                       ; $84BD9E |

CODE_84BD9F:
  JSR.W CODE_FN_84BDF8                      ; $84BD9F |
  LDA.W #$0080                              ; $84BDA2 |
  STA.B $1E                                 ; $84BDA5 |
  LDA.B $08                                 ; $84BDA7 |
  AND.W #$0001                              ; $84BDA9 |
  ASL A                                     ; $84BDAC |
  ADC.W #$0006                              ; $84BDAD |
  STA.B $00                                 ; $84BDB0 |
  INC.B $02                                 ; $84BDB2 |
  RTS                                       ; $84BDB4 |

;----------------------------------------------------------------
; Decompress a block into WRAM buffer.
;
; Input:
;   A  = requested decompression size (max: 0x0400)
;   X  = pointer to compressed block (size header + compressed data)
;
; Output:
;   Y  = start offset of decompressed data in WRAM ($7E0000+Y)
;   $20 = end offset (exclusive)
;
; Remarks:
;   The caller reads decompressed bytes from [$7E0000+Y] up to $20.
;----------------------------------------------------------------
decompress_block_to_wram:
  STA.B $1E                                 ; $84BDB5 | Save requested decompression size (e.g. 0x0400)
  PHB                                       ; $84BDB7 | Save data bank
  PEA.W $7E88                               ; $84BDB8 |
  PLB                                       ; $84BDBB | Set data bank = $7E (WRAM for output buffer)
  LDA.B $02                                 ; $84BDBC |\ Check initialization flag (?)
  BNE .after_init                           ; $84BDBE | | Skip initialization if already done
  JSR.W decompress_init                     ; $84BDC0 |/  Initialize decompression state (window, pointers, etc.)

.after_init
  PLB                                       ; $84BDC3 | Set data bank = $88
  LDA.B $1E                                 ; $84BDC4 |\
  CLC                                       ; $84BDC6 | |
  ADC.B $18                                 ; $84BDC7 | | Compute end position = current output position + size
  STA.B $20                                 ; $84BDC9 |/
  JSL.L decompress_stream                   ; $84BDCB |  Perform decompression
  LDA.B $11                                 ; $84BDCF |\
  ORA.B $18                                 ; $84BDD1 | |
  TAY                                       ; $84BDD3 |/  Return value: Y = ???
  CLC                                       ; $84BDD4 |\
  ADC.B $1A                                 ; $84BDD5 | |
  INC A                                     ; $84BDD7 | |
  AND.W #$FFFE                              ; $84BDD8 | | ???
  STA.B $20                                 ; $84BDDB |/
  PLB                                       ; $84BDDD |  Restore original data bank
  RTL                                       ; $84BDDE |

decompress_init:
  REP #$20                                  ; $84BDDF |
  LDA.W #$2800                              ; $84BDE1 |
  STA.B $11                                 ; $84BDE4 |
  SEP #$20                                  ; $84BDE6 |
  INC.B $02                                 ; $84BDE8 |
  LDX.B $06                                 ; $84BDEA |
  LDY.W $0000,X                             ; $84BDEC |
  LDA.W $0002,X                             ; $84BDEF |
  AND.B #$BF                                ; $84BDF2 |
  STA.B $0C                                 ; $84BDF4 |
  BRA CODE_84BE13                           ; $84BDF6 |

CODE_FN_84BDF8:
  SEP #$20                                  ; $84BDF8 |

CODE_FN_84BDFA:
  LDY.W $0000,X                             ; $84BDFA |
  LDA.W $0002,X                             ; $84BDFD |
  AND.B #$BF                                ; $84BE00 |
  STA.B $0C                                 ; $84BE02 |
  INY                                       ; $84BE04 |
  LDA.B [$0A],Y                             ; $84BE05 |
  AND.B #$80                                ; $84BE07 |
  STA.B $05                                 ; $84BE09 |
  LDA.W $0002,X                             ; $84BE0B |
  AND.B #$40                                ; $84BE0E |
  TSB.B $05                                 ; $84BE10 |
  DEY                                       ; $84BE12 |

CODE_84BE13:
  REP #$20                                  ; $84BE13 |
  LDA.B [$0A],Y                             ; $84BE15 |
  AND.W #$7FFF                              ; $84BE17 |
  CLC                                       ; $84BE1A |
  ADC.W $0000,X                             ; $84BE1B |
  STA.B $0F                                 ; $84BE1E |
  INY                                       ; $84BE20 |
  INY                                       ; $84BE21 |
  STY.B $0D                                 ; $84BE22 |
  INX                                       ; $84BE24 |
  INX                                       ; $84BE25 |
  INX                                       ; $84BE26 |
  STX.B $06                                 ; $84BE27 |
  STZ.B $13                                 ; $84BE29 |
  STZ.B $18                                 ; $84BE2B |
  STZ.B $22                                 ; $84BE2D |
  LDX.B $11                                 ; $84BE2F |
  LDA.W #$0000                              ; $84BE31 |
  STA.L $7E0000,X                           ; $84BE34 |
  INX                                       ; $84BE38 |
  TXY                                       ; $84BE39 |
  INY                                       ; $84BE3A |
  LDA.W #$03FD                              ; $84BE3B |
  MVN $7E,$7E                               ; $84BE3E |
  RTS                                       ; $84BE41 |

CODE_FL_84BE42:
  PHB                                       ; $84BE42 |
  SEP #$20                                  ; $84BE43 |
  LDA.B #$7E                                ; $84BE45 |
  PHA                                       ; $84BE47 |
  PLB                                       ; $84BE48 |
  REP #$30                                  ; $84BE49 |
  LDA.B $08                                 ; $84BE4B |
  LSR A                                     ; $84BE4D |
  BCS CODE_84BE5E                           ; $84BE4E |
  LDX.W #$0000                              ; $84BE50 |
  BIT.B $04                                 ; $84BE53 |
  BPL CODE_84BE59                           ; $84BE55 |
  INX                                       ; $84BE57 |
  INX                                       ; $84BE58 |

CODE_84BE59:
  JSR.W (PTR16_84BE6C,X)                    ; $84BE59 |
  PLB                                       ; $84BE5C |
  RTL                                       ; $84BE5D |

CODE_84BE5E:
  LDX.W #$0004                              ; $84BE5E |
  BIT.B $04                                 ; $84BE61 |
  BPL CODE_84BE67                           ; $84BE63 |
  INX                                       ; $84BE65 |
  INX                                       ; $84BE66 |

CODE_84BE67:
  JSR.W (PTR16_84BE6C,X)                    ; $84BE67 |
  PLB                                       ; $84BE6A |
  RTL                                       ; $84BE6B |

PTR16_84BE6C:
  dw CODE_84BE74                            ; $84BE6C |
  dw CODE_84BE82                            ; $84BE6E |
  dw CODE_84BE8D                            ; $84BE70 |
  dw CODE_84BE9B                            ; $84BE72 |

CODE_84BE74:
  LDA.B $11                                 ; $84BE74 |
  ORA.B $18                                 ; $84BE76 |
  STA.B $2A                                 ; $84BE78 |
  LDA.W #$007E                              ; $84BE7A |
  STA.B $2C                                 ; $84BE7D |
  JMP.W CODE_JP_84BF45                      ; $84BE7F |

CODE_84BE82:
  JSR.W CODE_FN_84BEA1                      ; $84BE82 |
  LDY.B $2A                                 ; $84BE85 |
  STY.W $0052                               ; $84BE87 |
  JMP.W CODE_JP_84BF45                      ; $84BE8A |

CODE_84BE8D:
  LDA.B $11                                 ; $84BE8D |
  ORA.B $18                                 ; $84BE8F |
  STA.B $2A                                 ; $84BE91 |
  LDA.W #$007E                              ; $84BE93 |
  STA.B $2C                                 ; $84BE96 |
  JMP.W CODE_JP_84BF9A                      ; $84BE98 |

CODE_84BE9B:
  JSR.W CODE_FN_84BEA1                      ; $84BE9B |
  JMP.W CODE_JP_84BF9A                      ; $84BE9E |

CODE_FN_84BEA1:
  LDA.B $11                                 ; $84BEA1 |
  ORA.B $18                                 ; $84BEA3 |
  TAX                                       ; $84BEA5 |
  LDY.W $0052                               ; $84BEA6 |
  STY.B $2A                                 ; $84BEA9 |
  LDA.B $1A                                 ; $84BEAB |
  LSR A                                     ; $84BEAD |
  LSR A                                     ; $84BEAE |
  LSR A                                     ; $84BEAF |
  LSR A                                     ; $84BEB0 |
  SEP #$20                                  ; $84BEB1 |
  STA.B $2D                                 ; $84BEB3 |
  LDA.B #$7E                                ; $84BEB5 |
  STA.B $2C                                 ; $84BEB7 |
  CLC                                       ; $84BEB9 |

CODE_JP_84BEBA:
  LDA.L $7E0000,X                           ; $84BEBA |
  STA.W $0000,Y                             ; $84BEBE |
  LDA.L $7E0008,X                           ; $84BEC1 |
  STA.W $0001,Y                             ; $84BEC5 |
  LDA.L $7E0001,X                           ; $84BEC8 |
  STA.W $0002,Y                             ; $84BECC |
  LDA.L $7E0009,X                           ; $84BECF |
  STA.W $0003,Y                             ; $84BED3 |
  LDA.L $7E0002,X                           ; $84BED6 |
  STA.W $0004,Y                             ; $84BEDA |
  LDA.L $7E000A,X                           ; $84BEDD |
  STA.W $0005,Y                             ; $84BEE1 |
  LDA.L $7E0003,X                           ; $84BEE4 |
  STA.W $0006,Y                             ; $84BEE8 |
  LDA.L $7E000B,X                           ; $84BEEB |
  STA.W $0007,Y                             ; $84BEEF |
  LDA.L $7E0004,X                           ; $84BEF2 |
  STA.W $0008,Y                             ; $84BEF6 |
  LDA.L $7E000C,X                           ; $84BEF9 |
  STA.W $0009,Y                             ; $84BEFD |
  LDA.L $7E0005,X                           ; $84BF00 |
  STA.W $000A,Y                             ; $84BF04 |
  LDA.L $7E000D,X                           ; $84BF07 |
  STA.W $000B,Y                             ; $84BF0B |
  LDA.L $7E0006,X                           ; $84BF0E |
  STA.W $000C,Y                             ; $84BF12 |
  LDA.L $7E000E,X                           ; $84BF15 |
  STA.W $000D,Y                             ; $84BF19 |
  LDA.L $7E0007,X                           ; $84BF1C |
  STA.W $000E,Y                             ; $84BF20 |
  LDA.L $7E000F,X                           ; $84BF23 |
  STA.W $000F,Y                             ; $84BF27 |
  REP #$20                                  ; $84BF2A |
  TXA                                       ; $84BF2C |
  ADC.W #$0010                              ; $84BF2D |
  TAX                                       ; $84BF30 |
  TYA                                       ; $84BF31 |
  ADC.W #$0010                              ; $84BF32 |
  TAY                                       ; $84BF35 |
  SEP #$20                                  ; $84BF36 |
  DEC.B $2D                                 ; $84BF38 |
  BEQ CODE_84BF3F                           ; $84BF3A |
  JMP.W CODE_JP_84BEBA                      ; $84BF3C |

CODE_84BF3F:
  STY.W $0052                               ; $84BF3F |
  REP #$20                                  ; $84BF42 |
  RTS                                       ; $84BF44 |

CODE_JP_84BF45:
  SEP #$30                                  ; $84BF45 |
  PHB                                       ; $84BF47 |
  PHK                                       ; $84BF48 |
  PLB                                       ; $84BF49 |
  JSL.L CODE_FL_808302                      ; $84BF4A |
  LDA.B #$00                                ; $84BF4E |
  XBA                                       ; $84BF50 |
  LDA.B $08                                 ; $84BF51 |
  LSR A                                     ; $84BF53 |
  AND.B #$03                                ; $84BF54 |
  TAX                                       ; $84BF56 |
  LDA.W CODE_00BFE8,X                       ; $84BF57 |
  STA.W $2115                               ; $84BF5A |
  LDA.W LOOSE_OP_00BFEC,X                   ; $84BF5D |
  STA.W $4300                               ; $84BF60 |
  LDA.W CODE_00BFF0,X                       ; $84BF63 |
  STA.W $4301                               ; $84BF66 |
  LDA.B $2C                                 ; $84BF69 |
  STA.W $4304                               ; $84BF6B |
  REP #$20                                  ; $84BF6E |
  LDA.B $15                                 ; $84BF70 |
  STA.W $2116                               ; $84BF72 |
  LDA.B $2A                                 ; $84BF75 |
  STA.W $4302                               ; $84BF77 |
  LDA.B $1A                                 ; $84BF7A |
  STA.W $4305                               ; $84BF7C |
  CPX.B #$01                                ; $84BF7F |
  BCS CODE_84BF84                           ; $84BF81 |
  LSR A                                     ; $84BF83 |

CODE_84BF84:
  CLC                                       ; $84BF84 |
  ADC.B $15                                 ; $84BF85 |
  STA.B $15                                 ; $84BF87 |
  LDA.B $13                                 ; $84BF89 |
  STA.B $18                                 ; $84BF8B |
  LDY.B #$01                                ; $84BF8D |
  STY.W $420B                               ; $84BF8F |
  REP #$10                                  ; $84BF92 |
  JSL.L CODE_FL_808315                      ; $84BF94 |
  PLB                                       ; $84BF98 |
  RTS                                       ; $84BF99 |

CODE_JP_84BF9A:
  LDA.B $08                                 ; $84BF9A |
  LSR A                                     ; $84BF9C |
  AND.W #$0003                              ; $84BF9D |
  TAX                                       ; $84BFA0 |
  LDY.W $0050                               ; $84BFA1 |
  SEP #$20                                  ; $84BFA4 |
  LDA.L DATA8_84BFE8,X                      ; $84BFA6 |
  STA.W $0000,Y                             ; $84BFAA |
  LDA.L DATA8_84BFEC,X                      ; $84BFAD |
  STA.W $0002,Y                             ; $84BFB1 |
  LDA.L DATA8_84BFF0,X                      ; $84BFB4 |
  STA.W $0003,Y                             ; $84BFB8 |
  LDA.B $2C                                 ; $84BFBB |
  STA.W $0008,Y                             ; $84BFBD |
  REP #$20                                  ; $84BFC0 |
  LDA.B $15                                 ; $84BFC2 |
  STA.W $0004,Y                             ; $84BFC4 |
  LDA.B $2A                                 ; $84BFC7 |
  STA.W $0006,Y                             ; $84BFC9 |
  LDA.B $1A                                 ; $84BFCC |
  STA.W $0009,Y                             ; $84BFCE |
  CPX.W #$0001                              ; $84BFD1 |
  BCS CODE_84BFD7                           ; $84BFD4 |
  LSR A                                     ; $84BFD6 |

CODE_84BFD7:
  CLC                                       ; $84BFD7 |
  ADC.B $15                                 ; $84BFD8 |
  STA.B $15                                 ; $84BFDA |
  LDA.B $13                                 ; $84BFDC |
  STA.B $18                                 ; $84BFDE |
  TYA                                       ; $84BFE0 |
  ADC.W #$000B                              ; $84BFE1 |
  STA.W $0050                               ; $84BFE4 |
  RTS                                       ; $84BFE7 |

DATA8_84BFE8:
  db $80,$00,$80,$80                        ; $84BFE8 |

DATA8_84BFEC:
  db $01,$00,$00,$00                        ; $84BFEC |

DATA8_84BFF0:
  db $18,$18,$18,$19                        ; $84BFF0 |

CODE_FL_84BFF4:
  REP #$30                                  ; $84BFF4 |
  PHB                                       ; $84BFF6 |
  BIT.B $04                                 ; $84BFF7 |
  BVS CODE_84C020                           ; $84BFF9 |
  BMI CODE_84C048                           ; $84BFFB |
  SEP #$20                                  ; $84BFFD |
  LDA.B #$7E                                ; $84BFFF |
  XBA                                       ; $84C001 |
  LDA.B $17                                 ; $84C002 |
  REP #$20                                  ; $84C004 |
  STA.L $001D9D                             ; $84C006 |
  LDA.B $11                                 ; $84C00A |
  ORA.B $18                                 ; $84C00C |
  TAX                                       ; $84C00E |
  LDY.B $15                                 ; $84C00F |
  LDA.B $1A                                 ; $84C011 |
  DEC A                                     ; $84C013 |
  JSL.L $001D9C                             ; $84C014 |
  STY.B $15                                 ; $84C018 |
  LDA.B $13                                 ; $84C01A |
  STA.B $18                                 ; $84C01C |
  PLB                                       ; $84C01E |
  RTL                                       ; $84C01F |

CODE_84C020:
  LDA.B $1A                                 ; $84C020 |
  DEC A                                     ; $84C022 |
  PHA                                       ; $84C023 |
  CLC                                       ; $84C024 |
  ADC.B $11                                 ; $84C025 |
  ADC.B $18                                 ; $84C027 |
  TAX                                       ; $84C029 |
  PLA                                       ; $84C02A |
  ASL A                                     ; $84C02B |
  TAY                                       ; $84C02C |
  SEP #$20                                  ; $84C02D |

CODE_84C02F:
  LDA.W $0000,X                             ; $84C02F |
  STA.B [$15],Y                             ; $84C032 |
  DEX                                       ; $84C034 |
  DEY                                       ; $84C035 |
  DEY                                       ; $84C036 |
  BPL CODE_84C02F                           ; $84C037 |
  REP #$20                                  ; $84C039 |
  LDA.B $1A                                 ; $84C03B |
  ASL A                                     ; $84C03D |
  ADC.B $15                                 ; $84C03E |
  STA.B $15                                 ; $84C040 |
  LDA.B $13                                 ; $84C042 |
  STA.B $18                                 ; $84C044 |
  PLB                                       ; $84C046 |
  RTL                                       ; $84C047 |

CODE_84C048:
  LDA.B $11                                 ; $84C048 |
  ORA.B $18                                 ; $84C04A |
  TAX                                       ; $84C04C |
  LDY.B $15                                 ; $84C04D |
  LDA.B $1A                                 ; $84C04F |
  LSR A                                     ; $84C051 |
  LSR A                                     ; $84C052 |
  LSR A                                     ; $84C053 |
  LSR A                                     ; $84C054 |
  SEP #$20                                  ; $84C055 |
  STA.B $2A                                 ; $84C057 |
  LDA.B $17                                 ; $84C059 |
  PHA                                       ; $84C05B |
  PLB                                       ; $84C05C |
  CLC                                       ; $84C05D |

CODE_JP_84C05E:
  LDA.L $7E0000,X                           ; $84C05E |
  STA.W $0000,Y                             ; $84C062 |
  LDA.L $7E0008,X                           ; $84C065 |
  STA.W $0001,Y                             ; $84C069 |
  LDA.L $7E0001,X                           ; $84C06C |
  STA.W $0002,Y                             ; $84C070 |
  LDA.L $7E0009,X                           ; $84C073 |
  STA.W $0003,Y                             ; $84C077 |
  LDA.L $7E0002,X                           ; $84C07A |
  STA.W $0004,Y                             ; $84C07E |
  LDA.L $7E000A,X                           ; $84C081 |
  STA.W $0005,Y                             ; $84C085 |
  LDA.L $7E0003,X                           ; $84C088 |
  STA.W $0006,Y                             ; $84C08C |
  LDA.L $7E000B,X                           ; $84C08F |
  STA.W $0007,Y                             ; $84C093 |
  LDA.L $7E0004,X                           ; $84C096 |
  STA.W $0008,Y                             ; $84C09A |
  LDA.L $7E000C,X                           ; $84C09D |
  STA.W $0009,Y                             ; $84C0A1 |
  LDA.L $7E0005,X                           ; $84C0A4 |
  STA.W $000A,Y                             ; $84C0A8 |
  LDA.L $7E000D,X                           ; $84C0AB |
  STA.W $000B,Y                             ; $84C0AF |
  LDA.L $7E0006,X                           ; $84C0B2 |
  STA.W $000C,Y                             ; $84C0B6 |
  LDA.L $7E000E,X                           ; $84C0B9 |
  STA.W $000D,Y                             ; $84C0BD |
  LDA.L $7E0007,X                           ; $84C0C0 |
  STA.W $000E,Y                             ; $84C0C4 |
  LDA.L $7E000F,X                           ; $84C0C7 |
  STA.W $000F,Y                             ; $84C0CB |
  REP #$20                                  ; $84C0CE |
  TXA                                       ; $84C0D0 |
  ADC.W #$0010                              ; $84C0D1 |
  TAX                                       ; $84C0D4 |
  TYA                                       ; $84C0D5 |
  ADC.W #$0010                              ; $84C0D6 |
  TAY                                       ; $84C0D9 |
  SEP #$20                                  ; $84C0DA |
  DEC.B $2A                                 ; $84C0DC |
  BEQ CODE_84C0E3                           ; $84C0DE |
  JMP.W CODE_JP_84C05E                      ; $84C0E0 |

CODE_84C0E3:
  STY.B $15                                 ; $84C0E3 |
  REP #$20                                  ; $84C0E5 |
  LDA.B $13                                 ; $84C0E7 |
  STA.B $18                                 ; $84C0E9 |
  PLB                                       ; $84C0EB |
  RTL                                       ; $84C0EC |

CODE_FN_84C0ED:
  LDX.B $06                                 ; $84C0ED |
  STZ.B $02                                 ; $84C0EF |
  BIT.B $05                                 ; $84C0F1 |
  BVS CODE_84C12A                           ; $84C0F3 |
  STZ.B $05                                 ; $84C0F5 |
  LDA.L $880000,X                           ; $84C0F7 |
  CMP.B #$FF                                ; $84C0FB |
  BNE CODE_84C134                           ; $84C0FD |
  SEC                                       ; $84C0FF |
  RTS                                       ; $84C100 |

CODE_FN_84C101:
  LDX.B $06                                 ; $84C101 |
  REP #$20                                  ; $84C103 |
  STZ.B $02                                 ; $84C105 |
  STZ.B $04                                 ; $84C107 |
  LDA.L $880000,X                           ; $84C109 |
  CMP.W #$FFFF                              ; $84C10D |
  BNE CODE_84C134                           ; $84C110 |
  SEP #$20                                  ; $84C112 |
  SEC                                       ; $84C114 |
  RTS                                       ; $84C115 |

  LDX.B $06                                 ; $84C116 |
  STZ.B $02                                 ; $84C118 |
  BIT.B $05                                 ; $84C11A |
  BVS CODE_84C12A                           ; $84C11C |
  STZ.B $05                                 ; $84C11E |
  LDA.L $880000,X                           ; $84C120 |
  CMP.B #$80                                ; $84C124 |
  BNE CODE_84C134                           ; $84C126 |
  SEC                                       ; $84C128 |
  RTS                                       ; $84C129 |

CODE_84C12A:
  REP #$20                                  ; $84C12A |
  STZ.B $04                                 ; $84C12C |
  LDA.L $880000,X                           ; $84C12E |
  STA.B $06                                 ; $84C132 |

CODE_84C134:
  SEP #$20                                  ; $84C134 |
  CLC                                       ; $84C136 |
  RTS                                       ; $84C137 |

CODE_JP_84C138:
  INX                                       ; $84C138 |
  INX                                       ; $84C139 |
  STX.B $06                                 ; $84C13A |
  JMP.W spc_upload_blocks_2                 ; $84C13C |

CODE_JP_84C13F:
  CMP.B #$80                                ; $84C13F |
  BNE CODE_84C146                           ; $84C141 |
  JMP.W CODE_JP_84C228                      ; $84C143 |

CODE_84C146:
  STA.B $08                                 ; $84C146 |
  INX                                       ; $84C148 |

CODE_84C149:
  STX.B $06                                 ; $84C149 |
  REP #$20                                  ; $84C14B |
  LDA.W #$000A                              ; $84C14D |
  STA.B $00                                 ; $84C150 |
  STZ.B $02                                 ; $84C152 |
  BIT.B $07                                 ; $84C154 |
  BVS CODE_84C15F                           ; $84C156 |
  INC.B $00                                 ; $84C158 |
  INC.B $00                                 ; $84C15A |
  JMP.W CODE_JP_84C22C                      ; $84C15C |

CODE_84C15F:
  JSR.W CODE_FN_84C211                      ; $84C15F |
  INC.B $02                                 ; $84C162 |
  PEA.W $887E                               ; $84C164 |
  PLB                                       ; $84C167 |
  LDA.W #$0400                              ; $84C168 |
  STA.B $1E                                 ; $84C16B |
  STA.B $20                                 ; $84C16D |

CODE_84C16F:
  JSL.L decompress_stream                   ; $84C16F |
  JSL.L CODE_FL_84BFF4                      ; $84C173 |
  LDA.B $01                                 ; $84C177 |
  BPL CODE_84C16F                           ; $84C179 |
  PLB                                       ; $84C17B |
  STZ.B $00                                 ; $84C17C |
  LDX.B $06                                 ; $84C17E |
  LDA.W $0000,X                             ; $84C180 |
  STA.B $2A                                 ; $84C183 |
  AND.W #$7FFF                              ; $84C185 |
  TAY                                       ; $84C188 |
  LDA.B $08                                 ; $84C189 |
  JSL.L CODE_FL_80BC52                      ; $84C18B |
  LDX.B $06                                 ; $84C18F |
  INX                                       ; $84C191 |
  INX                                       ; $84C192 |
  LDA.B $2A                                 ; $84C193 |
  BPL CODE_84C149                           ; $84C195 |
  JMP.W CODE_JP_84BBF3                      ; $84C197 |

CODE_84C19A:
  PHB                                       ; $84C19A |
  PHD                                       ; $84C19B |
  LDX.B $02                                 ; $84C19C |
  JSR.W (PTR16_84C207,X)                    ; $84C19E |
  JMP.W CODE_JP_84C22C                      ; $84C1A1 |

CODE_84C1A4:
  SEP #$20                                  ; $84C1A4 |
  LDA.B #$88                                ; $84C1A6 |
  PHA                                       ; $84C1A8 |
  PLB                                       ; $84C1A9 |
  JSR.W CODE_FN_84C211                      ; $84C1AA |

CODE_FN_84C1AD:
  INC.B $02                                 ; $84C1AD |
  INC.B $02                                 ; $84C1AF |
  RTS                                       ; $84C1B1 |

CODE_84C1B2:
  PEA.W $887E                               ; $84C1B2 |
  PLB                                       ; $84C1B5 |
  LDA.B $1E                                 ; $84C1B6 |
  CLC                                       ; $84C1B8 |
  ADC.B $18                                 ; $84C1B9 |
  STA.B $20                                 ; $84C1BB |
  JSL.L decompress_stream                   ; $84C1BD |
  JSL.L CODE_FL_84BFF4                      ; $84C1C1 |
  PLB                                       ; $84C1C5 |
  LDA.B $01                                 ; $84C1C6 |
  BPL CODE_84C1CF                           ; $84C1C8 |
  LDA.W #$0004                              ; $84C1CA |
  STA.B $02                                 ; $84C1CD |

CODE_84C1CF:
  RTS                                       ; $84C1CF |

CODE_84C1D0:
  JSR.W CODE_FN_84C1AD                      ; $84C1D0 |
  LDX.B $06                                 ; $84C1D3 |
  LDA.L $880000,X                           ; $84C1D5 |
  STA.B $15                                 ; $84C1D9 |
  AND.W #$7FFF                              ; $84C1DB |
  TAY                                       ; $84C1DE |
  LDA.B $08                                 ; $84C1DF |
  AND.W #$00FF                              ; $84C1E1 |
  JSL.L CODE_FL_80BC56                      ; $84C1E4 |
  BCC CODE_84C1F1                           ; $84C1E8 |

CODE_84C1EA:
  RTS                                       ; $84C1EA |

CODE_84C1EB:
  JSL.L CODE_FL_80BC8B                      ; $84C1EB |
  BCS CODE_84C1EA                           ; $84C1EF |

CODE_84C1F1:
  LDX.B $06                                 ; $84C1F1 |
  LDA.L $880000,X                           ; $84C1F3 |
  INX                                       ; $84C1F7 |
  INX                                       ; $84C1F8 |
  STX.B $06                                 ; $84C1F9 |
  ASL A                                     ; $84C1FB |
  BCS CODE_FN_84C1AD                        ; $84C1FC |
  STZ.B $02                                 ; $84C1FE |
  RTS                                       ; $84C200 |

CODE_84C201:
  PLX                                       ; $84C201 |
  LDX.B $06                                 ; $84C202 |
  JMP.W CODE_JP_84BBF3                      ; $84C204 |

PTR16_84C207:
  dw CODE_84C1A4                            ; $84C207 |
  dw CODE_84C1B2                            ; $84C209 |
  dw CODE_84C1D0                            ; $84C20B |
  dw CODE_84C1EB                            ; $84C20D |
  dw CODE_84C201                            ; $84C20F |

CODE_FN_84C211:
  REP #$20                                  ; $84C211 |
  LDA.W #$7E00                              ; $84C213 |
  STA.B $16                                 ; $84C216 |
  LDA.W #$C000                              ; $84C218 |
  STA.B $15                                 ; $84C21B |
  LDX.B $06                                 ; $84C21D |
  JSR.W CODE_FN_84BDF8                      ; $84C21F |
  LDA.W #$0080                              ; $84C222 |
  STA.B $1E                                 ; $84C225 |
  RTS                                       ; $84C227 |

CODE_JP_84C228:
  REP #$30                                  ; $84C228 |
  STZ.B $00                                 ; $84C22A |

CODE_JP_84C22C:
  REP #$30                                  ; $84C22C |
  PLD                                       ; $84C22E |
  PLB                                       ; $84C22F |
  RTL                                       ; $84C230 |

decompress_stream:
  SEP #$20                                  ; $84C231 |
  LDA.B #$7E                                ; $84C233 |
  STA.L $001D9D                             ; $84C235 |
  STZ.B $1C                                 ; $84C239 |

.CODE_84C23B
  LDX.B $22                                 ; $84C23B |
  JSR.W (.dispatch_table,X)                 ; $84C23D |
  LDA.B $22                                 ; $84C240 |
  BNE .decomp_loop                          ; $84C242 |
  LDY.B $0D                                 ; $84C244 |
  CPY.B $0F                                 ; $84C246 |
  BCS .end_of_stream                        ; $84C248 |

.decomp_loop
  LDA.B $1C                                 ; $84C24A |
  BEQ .CODE_84C23B                          ; $84C24C |

.continue_or_exit
  REP #$20                                  ; $84C24E |
  LDA.B $13                                 ; $84C250 |
  BNE .calc_remaining                       ; $84C252 |
  LDA.W #$0400                              ; $84C254 |

.calc_remaining
  SEC                                       ; $84C257 |
  SBC.B $18                                 ; $84C258 |
  STA.B $1A                                 ; $84C25A |
  RTL                                       ; $84C25C |

.end_of_stream
  LDA.B #$80                                ; $84C25D |
  STA.B $02                                 ; $84C25F |
  BRA .continue_or_exit                     ; $84C261 |

.dispatch_table
  dw read_decomp_opcode                     ; $84C263 | 00: Read new command
  dw CODE_JP_84C466                         ; $84C265 | 02
  dw CODE_JP_84C3FC                         ; $84C267 | 04
  dw CODE_JP_84C390                         ; $84C269 | 06
  dw CODE_84C365                            ; $84C26B | 08
  dw CODE_84C386                            ; $84C26D | 0A

read_decomp_opcode:
  LDY.B $0D                                 ; $84C26F |
  LDA.B [$0A],Y                             ; $84C271 |
  BPL .cmd_lz                               ; $84C273 |
  CMP.B #$A0                                ; $84C275 |
  BCC .cmd_raw                              ; $84C277 |
  CMP.B #$C0                                ; $84C279 |
  BCC .cmd_rle_pair                         ; $84C27B |
  CMP.B #$E0                                ; $84C27D |
  BCC .cmd_rle_byte                         ; $84C27F |
  STZ.B $24                                 ; $84C281 |
  CMP.B #$FF                                ; $84C283 |
  BCC .cmd_zero_rle                         ; $84C285 |

.cmd_zero_rle_ext
  INY                                       ; $84C287 |
  LDA.B [$0A],Y                             ; $84C288 |
  REP #$20                                  ; $84C28A |
  AND.W #$00FF                              ; $84C28C |
  INC A                                     ; $84C28F |
  INC A                                     ; $84C290 |
  STA.B $28                                 ; $84C291 |
  SEP #$20                                  ; $84C293 |
  INY                                       ; $84C295 |
  STY.B $0D                                 ; $84C296 |
  JMP.W CODE_JP_84C3FC                      ; $84C298 |

.cmd_zero_rle
  AND.B #$1F                                ; $84C29B |
  INC A                                     ; $84C29D |
  INC A                                     ; $84C29E |
  STA.B $28                                 ; $84C29F |
  INY                                       ; $84C2A1 |
  STY.B $0D                                 ; $84C2A2 |
  JMP.W CODE_JP_84C3FC                      ; $84C2A4 |

.cmd_rle_byte
  AND.B #$1F                                ; $84C2A7 |
  INC A                                     ; $84C2A9 |
  INC A                                     ; $84C2AA |
  STA.B $28                                 ; $84C2AB |
  INY                                       ; $84C2AD |
  LDA.B [$0A],Y                             ; $84C2AE |
  STA.B $24                                 ; $84C2B0 |
  INY                                       ; $84C2B2 |
  STY.B $0D                                 ; $84C2B3 |
  JMP.W CODE_JP_84C3FC                      ; $84C2B5 |

.cmd_lz
  LSR A                                     ; $84C2B8 |
  LSR A                                     ; $84C2B9 |
  INC A                                     ; $84C2BA |
  INC A                                     ; $84C2BB |
  STA.B $28                                 ; $84C2BC |
  REP #$20                                  ; $84C2BE |
  LDA.B [$0A],Y                             ; $84C2C0 |
  XBA                                       ; $84C2C2 |
  SEC                                       ; $84C2C3 |
  SBC.W #$03DF                              ; $84C2C4 |
  AND.W #$03FF                              ; $84C2C7 |
  STA.B $25                                 ; $84C2CA |
  INY                                       ; $84C2CC |
  INY                                       ; $84C2CD |
  STY.B $0D                                 ; $84C2CE |
  SEP #$20                                  ; $84C2D0 |
  JMP.W CODE_JP_84C466                      ; $84C2D2 |

.cmd_raw
  AND.B #$1F                                ; $84C2D5 |
  STA.B $28                                 ; $84C2D7 |
  INY                                       ; $84C2D9 |
  STY.B $0D                                 ; $84C2DA |
  JMP.W CODE_JP_84C390                      ; $84C2DC |

.cmd_rle_pair
  AND.B #$1F                                ; $84C2DF |
  INC A                                     ; $84C2E1 |
  INC A                                     ; $84C2E2 |
  STA.B $28                                 ; $84C2E3 |
  INY                                       ; $84C2E5 |
  STY.B $0D                                 ; $84C2E6 |

CODE_JP_84C2E8:
  REP #$20                                  ; $84C2E8 |
  AND.W #$00FF                              ; $84C2EA |
  ASL A                                     ; $84C2ED |
  ADC.B $13                                 ; $84C2EE |
  CMP.B $20                                 ; $84C2F0 |
  BCC .CODE_84C2F8                          ; $84C2F2 |
  BNE .CODE_84C31F                          ; $84C2F4 |
  INC.B $1C                                 ; $84C2F6 |

.CODE_84C2F8
  LDA.B $11                                 ; $84C2F8 |
  ORA.B $13                                 ; $84C2FA |
  TAX                                       ; $84C2FC |
  SEP #$20                                  ; $84C2FD |
  LDY.B $0D                                 ; $84C2FF |

.CODE_84C301
  STZ.W $0000,X                             ; $84C301 |
  LDA.B [$0A],Y                             ; $84C304 |
  STA.W $0001,X                             ; $84C306 |
  INY                                       ; $84C309 |
  INX                                       ; $84C30A |
  INX                                       ; $84C30B |
  DEC.B $28                                 ; $84C30C |
  BNE .CODE_84C301                          ; $84C30E |
  STY.B $0D                                 ; $84C310 |
  REP #$20                                  ; $84C312 |
  TXA                                       ; $84C314 |
  AND.W #$03FF                              ; $84C315 |
  STA.B $13                                 ; $84C318 |
  SEP #$20                                  ; $84C31A |
  STZ.B $22                                 ; $84C31C |
  RTS                                       ; $84C31E |

.CODE_84C31F
  INC.B $1C                                 ; $84C31F |
  LDA.B $28                                 ; $84C321 |
  ASL A                                     ; $84C323 |
  ADC.B $13                                 ; $84C324 |
  SEC                                       ; $84C326 |
  SBC.B $20                                 ; $84C327 |
  INC A                                     ; $84C329 |
  LSR A                                     ; $84C32A |
  STA.B $28                                 ; $84C32B |
  LDA.B $11                                 ; $84C32D |
  ORA.B $13                                 ; $84C32F |
  TAX                                       ; $84C331 |
  LDA.B $11                                 ; $84C332 |
  CLC                                       ; $84C334 |
  ADC.B $20                                 ; $84C335 |
  STA.B $2A                                 ; $84C337 |
  SEP #$20                                  ; $84C339 |
  LDY.B $0D                                 ; $84C33B |

.CODE_84C33D
  STZ.W $0000,X                             ; $84C33D |
  INX                                       ; $84C340 |
  CPX.B $2A                                 ; $84C341 |
  BCS .CODE_84C354                          ; $84C343 |
  LDA.B [$0A],Y                             ; $84C345 |
  STA.W $0000,X                             ; $84C347 |
  INY                                       ; $84C34A |
  INX                                       ; $84C34B |
  CPX.B $2A                                 ; $84C34C |
  BCC .CODE_84C33D                          ; $84C34E |
  LDA.B #$0A                                ; $84C350 |
  BRA .CODE_84C356                          ; $84C352 |

.CODE_84C354
  LDA.B #$08                                ; $84C354 |

.CODE_84C356
  STA.B $22                                 ; $84C356 |
  STY.B $0D                                 ; $84C358 |
  REP #$20                                  ; $84C35A |
  TXA                                       ; $84C35C |
  AND.W #$03FF                              ; $84C35D |
  STA.B $13                                 ; $84C360 |
  SEP #$20                                  ; $84C362 |
  RTS                                       ; $84C364 |

CODE_84C365:
  REP #$20                                  ; $84C365 |
  LDA.B $11                                 ; $84C367 |
  ORA.B $13                                 ; $84C369 |
  TAX                                       ; $84C36B |
  SEP #$20                                  ; $84C36C |
  LDY.B $0D                                 ; $84C36E |
  LDA.B [$0A],Y                             ; $84C370 |
  STA.W $0000,X                             ; $84C372 |
  REP #$20                                  ; $84C375 |
  INC.B $0D                                 ; $84C377 |
  INX                                       ; $84C379 |
  TXA                                       ; $84C37A |
  AND.W #$03FF                              ; $84C37B |
  STA.B $13                                 ; $84C37E |
  DEC.B $28                                 ; $84C380 |
  BEQ CODE_84C38B                           ; $84C382 |
  SEP #$20                                  ; $84C384 |

CODE_84C386:
  LDA.B $28                                 ; $84C386 |
  JMP.W CODE_JP_84C2E8                      ; $84C388 |

CODE_84C38B:
  SEP #$20                                  ; $84C38B |
  STZ.B $22                                 ; $84C38D |
  RTS                                       ; $84C38F |

CODE_JP_84C390:
  REP #$20                                  ; $84C390 |
  LDA.B $28                                 ; $84C392 |
  CLC                                       ; $84C394 |
  ADC.B $13                                 ; $84C395 |
  CMP.B $20                                 ; $84C397 |
  BCC .CODE_84C39F                          ; $84C399 |
  BNE .CODE_84C3C4                          ; $84C39B |
  INC.B $1C                                 ; $84C39D |

.CODE_84C39F
  LDA.B $11                                 ; $84C39F |
  ORA.B $13                                 ; $84C3A1 |
  TAY                                       ; $84C3A3 |
  LDX.B $0D                                 ; $84C3A4 |
  SEP #$20                                  ; $84C3A6 |
  LDA.B $0C                                 ; $84C3A8 |
  STA.L $001D9E                             ; $84C3AA |
  REP #$20                                  ; $84C3AE |
  LDA.B $28                                 ; $84C3B0 |
  DEC A                                     ; $84C3B2 |
  JSL.L $001D9C                             ; $84C3B3 |
  STX.B $0D                                 ; $84C3B7 |
  TYA                                       ; $84C3B9 |
  AND.W #$03FF                              ; $84C3BA |
  STA.B $13                                 ; $84C3BD |
  SEP #$20                                  ; $84C3BF |
  STZ.B $22                                 ; $84C3C1 |
  RTS                                       ; $84C3C3 |

.CODE_84C3C4
  INC.B $1C                                 ; $84C3C4 |
  LDA.B $20                                 ; $84C3C6 |
  SEC                                       ; $84C3C8 |
  SBC.B $13                                 ; $84C3C9 |
  DEC A                                     ; $84C3CB |
  TAX                                       ; $84C3CC |
  LDA.B $28                                 ; $84C3CD |
  CLC                                       ; $84C3CF |
  ADC.B $13                                 ; $84C3D0 |
  SEC                                       ; $84C3D2 |
  SBC.B $20                                 ; $84C3D3 |
  STA.B $28                                 ; $84C3D5 |
  LDA.B $11                                 ; $84C3D7 |
  ORA.B $13                                 ; $84C3D9 |
  TAY                                       ; $84C3DB |
  SEP #$20                                  ; $84C3DC |
  LDA.B $0C                                 ; $84C3DE |
  STA.L $001D9E                             ; $84C3E0 |
  REP #$20                                  ; $84C3E4 |
  TXA                                       ; $84C3E6 |
  LDX.B $0D                                 ; $84C3E7 |
  JSL.L $001D9C                             ; $84C3E9 |
  STX.B $0D                                 ; $84C3ED |
  TYA                                       ; $84C3EF |
  AND.W #$03FF                              ; $84C3F0 |
  STA.B $13                                 ; $84C3F3 |
  SEP #$20                                  ; $84C3F5 |
  LDA.B #$06                                ; $84C3F7 |
  STA.B $22                                 ; $84C3F9 |
  RTS                                       ; $84C3FB |

CODE_JP_84C3FC:
  REP #$20                                  ; $84C3FC |
  LDA.B $28                                 ; $84C3FE |
  CLC                                       ; $84C400 |
  ADC.B $13                                 ; $84C401 |
  CMP.B $20                                 ; $84C403 |
  BCC .CODE_84C40B                          ; $84C405 |
  BNE .CODE_84C431                          ; $84C407 |
  INC.B $1C                                 ; $84C409 |

.CODE_84C40B
  LDA.B $11                                 ; $84C40B |
  ORA.B $13                                 ; $84C40D |
  TAX                                       ; $84C40F |
  TAY                                       ; $84C410 |
  INY                                       ; $84C411 |
  SEP #$20                                  ; $84C412 |
  LDA.B $24                                 ; $84C414 |
  STA.W $0000,X                             ; $84C416 |
  REP #$20                                  ; $84C419 |
  LDA.B $28                                 ; $84C41B |
  DEC A                                     ; $84C41D |
  BEQ .CODE_84C424                          ; $84C41E |
  DEC A                                     ; $84C420 |
  MVN $7E,$7E                               ; $84C421 |

.CODE_84C424
  TYA                                       ; $84C424 |
  AND.W #$03FF                              ; $84C425 |
  STA.B $13                                 ; $84C428 |
  SEP #$20                                  ; $84C42A |
  STZ.B $29                                 ; $84C42C |
  STZ.B $22                                 ; $84C42E |
  RTS                                       ; $84C430 |

.CODE_84C431
  INC.B $1C                                 ; $84C431 |
  LDA.B $20                                 ; $84C433 |
  SEC                                       ; $84C435 |
  SBC.B $13                                 ; $84C436 |
  TAY                                       ; $84C438 |
  EOR.W #$FFFF                              ; $84C439 |
  SEC                                       ; $84C43C |
  ADC.B $28                                 ; $84C43D |
  STA.B $28                                 ; $84C43F |
  LDA.B $11                                 ; $84C441 |
  ORA.B $13                                 ; $84C443 |
  TAX                                       ; $84C445 |
  SEP #$20                                  ; $84C446 |
  LDA.B $24                                 ; $84C448 |
  STA.W $0000,X                             ; $84C44A |
  REP #$20                                  ; $84C44D |
  TYA                                       ; $84C44F |
  TXY                                       ; $84C450 |
  INY                                       ; $84C451 |
  DEC A                                     ; $84C452 |
  BEQ .CODE_84C459                          ; $84C453 |
  DEC A                                     ; $84C455 |
  MVN $7E,$7E                               ; $84C456 |

.CODE_84C459
  TYA                                       ; $84C459 |
  AND.W #$03FF                              ; $84C45A |
  STA.B $13                                 ; $84C45D |
  SEP #$20                                  ; $84C45F |
  LDA.B #$04                                ; $84C461 |
  STA.B $22                                 ; $84C463 |
  RTS                                       ; $84C465 |

CODE_JP_84C466:
  REP #$20                                  ; $84C466 |
  LDA.B $28                                 ; $84C468 |
  CLC                                       ; $84C46A |
  ADC.B $13                                 ; $84C46B |
  CMP.B $20                                 ; $84C46D |
  BCC .CODE_84C475                          ; $84C46F |
  BNE .CODE_84C4A9                          ; $84C471 |
  INC.B $1C                                 ; $84C473 |

.CODE_84C475
  LDA.B $11                                 ; $84C475 |
  ORA.B $25                                 ; $84C477 |
  TAX                                       ; $84C479 |
  LDA.B $11                                 ; $84C47A |
  ORA.B $13                                 ; $84C47C |
  TAY                                       ; $84C47E |
  LDA.W #$0400                              ; $84C47F |
  SEC                                       ; $84C482 |
  SBC.B $25                                 ; $84C483 |
  CMP.B $28                                 ; $84C485 |
  BCS .CODE_84C498                          ; $84C487 |
  STA.B $2A                                 ; $84C489 |
  DEC A                                     ; $84C48B |
  MVN $7E,$7E                               ; $84C48C |
  LDA.B $28                                 ; $84C48F |
  SEC                                       ; $84C491 |
  SBC.B $2A                                 ; $84C492 |
  LDX.B $11                                 ; $84C494 |
  BRA .CODE_84C49A                          ; $84C496 |

.CODE_84C498
  LDA.B $28                                 ; $84C498 |

.CODE_84C49A
  DEC A                                     ; $84C49A |
  MVN $7E,$7E                               ; $84C49B |
  TYA                                       ; $84C49E |
  AND.W #$03FF                              ; $84C49F |
  STA.B $13                                 ; $84C4A2 |
  SEP #$20                                  ; $84C4A4 |
  STZ.B $22                                 ; $84C4A6 |
  RTS                                       ; $84C4A8 |

.CODE_84C4A9
  INC.B $1C                                 ; $84C4A9 |
  LDA.B $11                                 ; $84C4AB |
  ORA.B $25                                 ; $84C4AD |
  TAX                                       ; $84C4AF |
  LDA.B $11                                 ; $84C4B0 |
  ORA.B $13                                 ; $84C4B2 |
  TAY                                       ; $84C4B4 |
  LDA.B $20                                 ; $84C4B5 |
  SEC                                       ; $84C4B7 |
  SBC.B $13                                 ; $84C4B8 |
  STA.B $2C                                 ; $84C4BA |
  LDA.B $28                                 ; $84C4BC |
  SBC.B $2C                                 ; $84C4BE |
  STA.B $28                                 ; $84C4C0 |
  LDA.W #$0400                              ; $84C4C2 |
  SBC.B $25                                 ; $84C4C5 |
  CMP.B $2C                                 ; $84C4C7 |
  BCS .CODE_84C4DA                          ; $84C4C9 |
  STA.B $2A                                 ; $84C4CB |
  DEC A                                     ; $84C4CD |
  MVN $7E,$7E                               ; $84C4CE |
  LDA.B $2C                                 ; $84C4D1 |
  SEC                                       ; $84C4D3 |
  SBC.B $2A                                 ; $84C4D4 |
  LDX.B $11                                 ; $84C4D6 |
  BRA .CODE_84C4DC                          ; $84C4D8 |

.CODE_84C4DA
  LDA.B $2C                                 ; $84C4DA |

.CODE_84C4DC
  DEC A                                     ; $84C4DC |
  MVN $7E,$7E                               ; $84C4DD |
  TYA                                       ; $84C4E0 |
  AND.W #$03FF                              ; $84C4E1 |
  STA.B $13                                 ; $84C4E4 |
  TXA                                       ; $84C4E6 |
  AND.W #$03FF                              ; $84C4E7 |
  STA.B $25                                 ; $84C4EA |
  SEP #$20                                  ; $84C4EC |
  LDA.B #$02                                ; $84C4EE |
  STA.B $22                                 ; $84C4F0 |
  RTS                                       ; $84C4F2 |

CODE_FN_84C4F3:
  LDA.W #$7E54                              ; $84C4F3 |
  STA.L $001D9C                             ; $84C4F6 |
  LDA.W #$6B00                              ; $84C4FA |
  STA.L $001D9E                             ; $84C4FD |
  RTS                                       ; $84C501 |

sound_dp_base_table:
  dw $0100,$1F00,$1E00                      ; $84C502 |

DATA16_84C508:
  dw $2000,$2400,$2800                      ; $84C508 |

PTR24_84C50E:
  dl $7FC000                                ; $84C50E |
  dl $7FA000                                ; $84C511 |
  dl $7FA001                                ; $84C514 |
  dl $7FF000                                ; $84C517 |
  dl $7FD000                                ; $84C51A |
  dl $7FD001                                ; $84C51D |
  dl $7E8000                                ; $84C520 |

handle_sound:
  SEP #$30                                  ; $84C523 |  8 bit A/X/Y
  LDA.B !r_sound_cmd_mirror_dp              ; $84C525 |\ If nothing pending, handle queue
  BEQ .dequeue                              ; $84C527 |/
  CMP.W !reg_apuio0                         ; $84C529 |\
  BNE .write_apuio0                         ; $84C52C | | Send if SPC hasn't accepted yet
  STZ.B !r_sound_cmd_mirror_dp              ; $84C52E |/  Otherwise, clear the pending output

.dequeue
  LDX.B !r_sound_queue_head_dp              ; $84C530 |\
  CPX.B !r_sound_queue_tail_dp              ; $84C532 | | If queue is empty, skip reading
  BEQ .CODE_84C542                          ; $84C534 |/
  LDA.L !r_sound_queue_l,X                  ; $84C536 |\
  INX                                       ; $84C53A | | Dequeue and advance the queue head
  STX.B !r_sound_queue_head_dp              ; $84C53B |/
  STA.B !r_sound_cmd_mirror_dp              ; $84C53D | Store the value for write result check

.write_apuio0
  STA.W !reg_apuio0                         ; $84C53F | Send value to SPC

.CODE_84C542
  REP #$30                                  ; $84C542 |
  LDA.W $1E34                               ; $84C544 |
  BEQ .CODE_84C56A                          ; $84C547 |
  LDX.W $1E00                               ; $84C549 |
  BNE .CODE_84C56A                          ; $84C54C |
  BIT.W $1E34                               ; $84C54E |
  BPL .CODE_84C566                          ; $84C551 |
  AND.W #$7FFF                              ; $84C553 |
  JSL.L CODE_FL_84C5C9                      ; $84C556 |
  LDA.W $1E04                               ; $84C55A |
  AND.W #$00FF                              ; $84C55D |
  JSL.L push_sound_queue                    ; $84C560 |
  BRA .CODE_84C56A                          ; $84C564 |

.CODE_84C566
  JSL.L CODE_FL_84C6D5                      ; $84C566 |

.CODE_84C56A
  LDA.W $1E2E                               ; $84C56A |
  BEQ .ret                                  ; $84C56D |
  LDX.W $1E00                               ; $84C56F |
  BNE .ret                                  ; $84C572 |
  JSL.L CODE_FL_84C64E                      ; $84C574 |

.ret
  RTL                                       ; $84C578 |

CODE_FL_84C579:
  SEP #$20                                  ; $84C579 |
  LDA.B #$EF                                ; $84C57B |

CODE_84C57D:
  STA.W !reg_apuio0                         ; $84C57D |
  CMP.W !reg_apuio0                         ; $84C580 |
  BNE CODE_84C57D                           ; $84C583 |
  STZ.B !r_sound_queue_head_dp              ; $84C585 |
  STZ.B !r_sound_queue_tail_dp              ; $84C587 |
  STZ.B !r_sound_cmd_mirror_dp              ; $84C589 |
  REP #$20                                  ; $84C58B |
  STZ.W $1E00                               ; $84C58D |
  RTL                                       ; $84C590 |

CODE_FL_84C591:
  LDA.W #$00EB                              ; $84C591 |

push_sound_queue:
  PHX                                       ; $84C594 |
  PHY                                       ; $84C595 |
  PHP                                       ; $84C596 |
  SEP #$30                                  ; $84C597 | 8 bit A/X/Y
  LDX.B !r_sound_queue_head_dp              ; $84C599 | \ Start scanning the queue from the head

.check_existing
  CPX.B !r_sound_queue_tail_dp              ; $84C59B |  |\ Reached end of existing entries (finish scanning)
  BEQ .enqueue                              ; $84C59D |  |/
  CMP.L !r_sound_queue_l,X                  ; $84C59F |  |\
  BEQ .ret                                  ; $84C5A3 |  |/ If the value is already queued, skip enqueue
  INX                                       ; $84C5A5 |  |
  BRA .check_existing                       ; $84C5A6 | /

.enqueue
  LDX.B !r_sound_queue_tail_dp              ; $84C5A8 |\
  STA.L !r_sound_queue_l,X                  ; $84C5AA | | Enqueue the value at the tail
  INX                                       ; $84C5AE | |
  STX.B !r_sound_queue_tail_dp              ; $84C5AF |/
  CPX.B !r_sound_queue_head_dp              ; $84C5B1 |\
  BNE .ret                                  ; $84C5B3 | | If buffer becomes full, discard the oldest entry
  INC.B !r_sound_queue_head_dp              ; $84C5B5 |/

.ret
  PLP                                       ; $84C5B7 |
  PLY                                       ; $84C5B8 |
  PLX                                       ; $84C5B9 |
  RTL                                       ; $84C5BA |

CODE_FL_84C5BB:
  LDA.W $1FF4                               ; $84C5BB |
  LSR A                                     ; $84C5BE |
  LDA.W #$00EA                              ; $84C5BF |
  BCC push_sound_queue                      ; $84C5C2 |
  LDA.W #$00E9                              ; $84C5C4 |
  BRA push_sound_queue                      ; $84C5C7 |

CODE_FL_84C5C9:
  LDX.W $1E00                               ; $84C5C9 |
  BNE .CODE_84C5F8                          ; $84C5CC |
  PHA                                       ; $84C5CE |
  SEP #$20                                  ; $84C5CF |
  STZ.W $4200                               ; $84C5D1 |
  REP #$20                                  ; $84C5D4 |
  PHD                                       ; $84C5D6 |
  PHA                                       ; $84C5D7 |
  JSL.L CODE_FL_84C579                      ; $84C5D8 |
  LDA.W #$1E00                              ; $84C5DC |
  TCD                                       ; $84C5DF |
  STZ.B $30                                 ; $84C5E0 |
  STZ.B $34                                 ; $84C5E2 |
  PLA                                       ; $84C5E4 |
  CLC                                       ; $84C5E5 |
  ADC.W #DATA8_888649                       ; $84C5E6 |
  TAX                                       ; $84C5E9 |
  STX.B $00                                 ; $84C5EA |
  LDA.L bank(DATA8_888649)<<16,X            ; $84C5EC |
  STA.B $04                                 ; $84C5F0 |
  STA.W !reg_apuio2                         ; $84C5F2 |
  INX                                       ; $84C5F5 |
  BRA loc_84C632                            ; $84C5F6 |

.CODE_84C5F8
  LDX.W $1E34                               ; $84C5F8 |
  BNE locret_84C64D                         ; $84C5FB |
  ORA.W #$8000                              ; $84C5FD |
  STA.W $1E34                               ; $84C600 |
  RTL                                       ; $84C603 |

CODE_FL_84C604:
  PHA                                       ; $84C604 |
  AND.W #$7FFF                              ; $84C605 |
  BEQ loc_84C644                            ; $84C608 |
  CMP.W $1E32                               ; $84C60A |
  BEQ loc_84C644                            ; $84C60D |
  SEP #$20                                  ; $84C60F |
  STZ.W $4200                               ; $84C611 |
  REP #$20                                  ; $84C614 |
  PHD                                       ; $84C616 |
  PHA                                       ; $84C617 |
  JSL.L CODE_FL_84C579                      ; $84C618 |
  LDA.W #$1E00                              ; $84C61C |
  TCD                                       ; $84C61F |
  LDA.W #$0001                              ; $84C620 |
  STA.B $30                                 ; $84C623 |
  PLA                                       ; $84C625 |
  CLC                                       ; $84C626 |
  STA.B $32                                 ; $84C627 |
  AND.W #$7FFF                              ; $84C629 |
  ADC.W #sample_load_table                  ; $84C62C |
  TAX                                       ; $84C62F |
  STX.B $00                                 ; $84C630 |

loc_84C632:
  STX.B $06                                 ; $84C632 |
  JSR.W CODE_FN_84C71C                      ; $84C634 |
  STZ.B $00                                 ; $84C637 |
  SEP #$20                                  ; $84C639 |
  LDA.W $1FA2                               ; $84C63B |
  STA.W $4200                               ; $84C63E |
  REP #$20                                  ; $84C641 |
  PLD                                       ; $84C643 |

loc_84C644:
  PLA                                       ; $84C644 |
  BIT.W #$8000                              ; $84C645 |
  BEQ locret_84C64D                         ; $84C648 |
  STZ.W $1E32                               ; $84C64A |

locret_84C64D:
  RTL                                       ; $84C64D |

CODE_FL_84C64E:
  PHX                                       ; $84C64E |
  LDX.W $1E00                               ; $84C64F |
  BNE CODE_84C6CB                           ; $84C652 |
  PHA                                       ; $84C654 |
  CLC                                       ; $84C655 |
  ADC.W #seq_table                          ; $84C656 |
  TAX                                       ; $84C659 |
  LDA.L bank(seq_table)<<16,X               ; $84C65A |
  AND.W #$00FF                              ; $84C65E |
  CMP.W #$0009                              ; $84C661 |
  PLA                                       ; $84C664 |
  BCC CODE_84C670                           ; $84C665 |
  BIT.W !reg_apuio2                         ; $84C667 |
  BVC CODE_84C677                           ; $84C66A |
  BPL CODE_84C677                           ; $84C66C |
  BRA CODE_84C6CB                           ; $84C66E |

CODE_84C670:
  BIT.W !reg_apuio2                         ; $84C670 |
  BVS CODE_84C6CB                           ; $84C673 |
  BMI CODE_84C6CB                           ; $84C675 |

CODE_84C677:
  PHD                                       ; $84C677 |
  PEA.W $1E00                               ; $84C678 |
  PLD                                       ; $84C67B |
  STZ.B $2E                                 ; $84C67C |
  CLC                                       ; $84C67E |
  ADC.W #seq_table                          ; $84C67F |
  TAX                                       ; $84C682 |
  LDA.L bank(seq_table)<<16,X               ; $84C683 |
  CMP.B $08                                 ; $84C687 |
  BEQ CODE_84C6C1                           ; $84C689 |
  STA.B $08                                 ; $84C68B |
  STX.B $00                                 ; $84C68D |
  LDA.W #$0001                              ; $84C68F |
  STA.B $30                                 ; $84C692 |
  LDA.L $880001,X                           ; $84C694 |
  STA.B $15                                 ; $84C698 |
  LDA.L $880002,X                           ; $84C69A |
  STA.B $16                                 ; $84C69E |
  LDA.B [$15]                               ; $84C6A0 |
  STA.B $1A                                 ; $84C6A2 |
  INC.B $15                                 ; $84C6A4 |
  INC.B $15                                 ; $84C6A6 |
  LDA.B $08                                 ; $84C6A8 |
  PLD                                       ; $84C6AA |
  SEP #$20                                  ; $84C6AB |
  STA.W !reg_apuio2                         ; $84C6AD |
  LDA.B #$FE                                ; $84C6B0 |

CODE_84C6B2:
  STA.W !reg_apuio1                         ; $84C6B2 |
  CMP.W !reg_apuio1                         ; $84C6B5 |
  BNE CODE_84C6B2                           ; $84C6B8 |
  STZ.W !reg_apuio1                         ; $84C6BA |
  REP #$20                                  ; $84C6BD |

CODE_84C6BF:
  PLX                                       ; $84C6BF |
  RTL                                       ; $84C6C0 |

CODE_84C6C1:
  SEP #$20                                  ; $84C6C1 |
  PLD                                       ; $84C6C3 |
  STA.W !reg_apuio2                         ; $84C6C4 |
  LDA.B #$FD                                ; $84C6C7 |
  BRA CODE_84C6B2                           ; $84C6C9 |

CODE_84C6CB:
  LDX.W $1E2E                               ; $84C6CB |
  BNE CODE_84C6BF                           ; $84C6CE |
  STA.W $1E2E                               ; $84C6D0 |
  PLX                                       ; $84C6D3 |
  RTL                                       ; $84C6D4 |

CODE_FL_84C6D5:
  PHX                                       ; $84C6D5 |
  LDX.W $1E00                               ; $84C6D6 |
  BNE CODE_84C712                           ; $84C6D9 |
  PHD                                       ; $84C6DB |
  PEA.W $1E00                               ; $84C6DC |
  PLD                                       ; $84C6DF |
  CLC                                       ; $84C6E0 |
  ADC.W #DATA8_888649                       ; $84C6E1 |
  TAX                                       ; $84C6E4 |
  STX.B $00                                 ; $84C6E5 |
  STZ.B $30                                 ; $84C6E7 |
  STZ.B $34                                 ; $84C6E9 |
  STZ.B $02                                 ; $84C6EB |
  STZ.B $0A                                 ; $84C6ED |
  JSR.W CODE_FN_84C4F3                      ; $84C6EF |
  SEP #$20                                  ; $84C6F2 |
  LDA.L bank(DATA8_888649)<<16,X            ; $84C6F4 |
  STA.B $04                                 ; $84C6F8 |
  STA.W !reg_apuio2                         ; $84C6FA |
  LDA.B #$FF                                ; $84C6FD |

CODE_84C6FF:
  STA.W !reg_apuio1                         ; $84C6FF |
  CMP.W !reg_apuio1                         ; $84C702 |
  BNE CODE_84C6FF                           ; $84C705 |
  STZ.W !reg_apuio1                         ; $84C707 |
  REP #$20                                  ; $84C70A |
  INX                                       ; $84C70C |
  STX.B $06                                 ; $84C70D |
  PLD                                       ; $84C70F |

CODE_84C710:
  PLX                                       ; $84C710 |
  RTL                                       ; $84C711 |

CODE_84C712:
  LDX.W $1E34                               ; $84C712 |
  BNE CODE_84C710                           ; $84C715 |
  STA.W $1E34                               ; $84C717 |
  PLX                                       ; $84C71A |
  RTL                                       ; $84C71B |

CODE_FN_84C71C:
  LDX.B $06                                 ; $84C71C |
  LDA.L $880000,X                           ; $84C71E |
  BEQ .CODE_84C768                          ; $84C722 |
  STZ.B $02                                 ; $84C724 |
  STZ.B $0A                                 ; $84C726 |
  LDA.B $30                                 ; $84C728 |
  BEQ .CODE_84C747                          ; $84C72A |
  LDA.L $880002,X                           ; $84C72C |
  SEP #$30                                  ; $84C730 |
  AND.B #$C0                                ; $84C732 |
  ASL A                                     ; $84C734 |
  ROL A                                     ; $84C735 |
  ROL A                                     ; $84C736 |
  ORA.B #$F0                                ; $84C737 |
  JSR.W write_apuio0_sync                   ; $84C739 |
  STZ.W !reg_apuio0                         ; $84C73C |
  JSR.W write_0xcc_to_apuio1_sync           ; $84C73F |
  JSR.W CODE_FN_84C7A3                      ; $84C742 |
  BRA .CODE_84C757                          ; $84C745 |

.CODE_84C747
  SEP #$30                                  ; $84C747 |
  LDA.B #$FE                                ; $84C749 |
  JSR.W write_apuio0_sync                   ; $84C74B |
  STZ.W !reg_apuio0                         ; $84C74E |
  JSR.W write_0xcc_to_apuio1_sync           ; $84C751 |
  JSR.W CODE_FN_84C769                      ; $84C754 |

.CODE_84C757
  SEP #$30                                  ; $84C757 |
  INY                                       ; $84C759 |
  INY                                       ; $84C75A |
  JSR.W write_apuio1_sync                   ; $84C75B |

.CODE_84C75E
  STZ.W !reg_apuio1                         ; $84C75E |
  LDA.W !reg_apuio1                         ; $84C761 |
  BNE .CODE_84C75E                          ; $84C764 |
  REP #$30                                  ; $84C766 |

.CODE_84C768
  RTS                                       ; $84C768 |

CODE_FN_84C769:
  REP #$30                                  ; $84C769 |
  LDA.W #$0400                              ; $84C76B |
  JSL.L decompress_block_to_wram            ; $84C76E |
  STZ.B $15                                 ; $84C772 |
  LDX.W #$0000                              ; $84C774 |
  SEP #$20                                  ; $84C777 |
  LDA.B #$7E                                ; $84C779 |
  STA.B $17                                 ; $84C77B |

CODE_84C77D:
  REP #$20                                  ; $84C77D |
  LDA.B [$15],Y                             ; $84C77F |
  STA.W !reg_apuio2                         ; $84C781 |
  SEP #$20                                  ; $84C784 |
  TXA                                       ; $84C786 |

CODE_84C787:
  STA.W !reg_apuio1                         ; $84C787 |
  CMP.W !reg_apuio1                         ; $84C78A |
  BNE CODE_84C787                           ; $84C78D |
  INX                                       ; $84C78F |
  INX                                       ; $84C790 |
  INY                                       ; $84C791 |
  INY                                       ; $84C792 |
  CPY.B $20                                 ; $84C793 |
  BNE CODE_84C77D                           ; $84C795 |
  LDY.B $13                                 ; $84C797 |
  STY.B $18                                 ; $84C799 |
  LDA.B $02                                 ; $84C79B |
  BPL CODE_FN_84C769                        ; $84C79D |
  TXY                                       ; $84C79F |
  REP #$20                                  ; $84C7A0 |
  RTS                                       ; $84C7A2 |

CODE_FN_84C7A3:
  REP #$30                                  ; $84C7A3 |
  LDX.B $06                                 ; $84C7A5 |
  LDA.L $880000,X                           ; $84C7A7 |
  STA.B $15                                 ; $84C7AB |
  LDA.L $880001,X                           ; $84C7AD |
  AND.W #$3FFF                              ; $84C7B1 |
  ORA.W #$8000                              ; $84C7B4 |
  STA.B $16                                 ; $84C7B7 |
  LDA.B [$15]                               ; $84C7B9 |
  DEC A                                     ; $84C7BB |
  LSR A                                     ; $84C7BC |
  TAX                                       ; $84C7BD |
  INC.B $15                                 ; $84C7BE |
  INC.B $15                                 ; $84C7C0 |
  LDY.W #$0000                              ; $84C7C2 |

CODE_84C7C5:
  LDA.B [$15],Y                             ; $84C7C5 |
  STA.W !reg_apuio2                         ; $84C7C7 |
  SEP #$20                                  ; $84C7CA |
  TYA                                       ; $84C7CC |

CODE_84C7CD:
  STA.W !reg_apuio1                         ; $84C7CD |
  CMP.W !reg_apuio1                         ; $84C7D0 |
  BNE CODE_84C7CD                           ; $84C7D3 |
  REP #$20                                  ; $84C7D5 |
  INY                                       ; $84C7D7 |
  INY                                       ; $84C7D8 |
  DEX                                       ; $84C7D9 |
  BNE CODE_84C7C5                           ; $84C7DA |
  RTS                                       ; $84C7DC |

CODE_FL_84C7DD:
  LDX.W $1E00                               ; $84C7DD |
  BEQ CODE_84C80C                           ; $84C7E0 |
  PHD                                       ; $84C7E2 |
  LDA.W #$1E00                              ; $84C7E3 |\ set direct page to #$1E00
  TCD                                       ; $84C7E6 |/
  SEP #$30                                  ; $84C7E7 |
  LDA.B $30                                 ; $84C7E9 |
  BEQ CODE_84C80D                           ; $84C7EB |
  LDA.W !r_sound_cmd_mirror                 ; $84C7ED |
  BEQ CODE_84C7FA                           ; $84C7F0 |
  CMP.W !reg_apuio0                         ; $84C7F2 |
  BNE CODE_84C7FA                           ; $84C7F5 |
  STZ.W !r_sound_cmd_mirror                 ; $84C7F7 |

CODE_84C7FA:
  JSR.W write_0xcc_to_apuio1_sync           ; $84C7FA |
  JSR.W CODE_FN_84C880                      ; $84C7FD |
  PLD                                       ; $84C800 | restore direct page
  SEP #$20                                  ; $84C801 |
  LDA.B !r_sound_cmd_mirror_dp              ; $84C803 |
  BEQ CODE_84C80A                           ; $84C805 |
  STA.W !reg_apuio0                         ; $84C807 |

CODE_84C80A:
  REP #$30                                  ; $84C80A |

CODE_84C80C:
  RTL                                       ; $84C80C |

CODE_84C80D:
  REP #$30                                  ; $84C80D |
  LDA.W #$0100                              ; $84C80F |
  JSL.L decompress_block_to_wram            ; $84C812 |
  STY.B $2A                                 ; $84C816 |
  STZ.B $15                                 ; $84C818 |
  SEP #$10                                  ; $84C81A |
  LDY.B #$7E                                ; $84C81C |
  STY.B $17                                 ; $84C81E |
  JSR.W write_0xcc_to_apuio1_sync           ; $84C820 |
  JSR.W CODE_FN_84C82A                      ; $84C823 |
  REP #$30                                  ; $84C826 |
  PLD                                       ; $84C828 |
  RTL                                       ; $84C829 |

CODE_FN_84C82A:
  REP #$10                                  ; $84C82A |
  LDY.B $2A                                 ; $84C82C |
  LDX.W #$0000                              ; $84C82E |

CODE_84C831:
  REP #$20                                  ; $84C831 |
  LDA.B [$15],Y                             ; $84C833 |
  STA.W !reg_apuio2                         ; $84C835 |
  SEP #$10                                  ; $84C838 |
  STX.W !reg_apuio1                         ; $84C83A |
  TXY                                       ; $84C83D |
  INX                                       ; $84C83E |
  INX                                       ; $84C83F |
  LDA.B $2A                                 ; $84C840 |
  INC A                                     ; $84C842 |
  INC A                                     ; $84C843 |
  STA.B $2A                                 ; $84C844 |
  CMP.B $20                                 ; $84C846 |
  BEQ CODE_84C85B                           ; $84C848 |
  SEP #$20                                  ; $84C84A |
  TYA                                       ; $84C84C |
  REP #$10                                  ; $84C84D |
  LDY.B $2A                                 ; $84C84F |

CODE_84C851:
  STA.W !reg_apuio1                         ; $84C851 |
  CMP.W !reg_apuio1                         ; $84C854 |
  BEQ CODE_84C831                           ; $84C857 |
  BRA CODE_84C851                           ; $84C859 |

CODE_84C85B:
  LDA.B $13                                 ; $84C85B |
  STA.B $18                                 ; $84C85D |

CODE_84C85F:
  STY.W !reg_apuio1                         ; $84C85F |
  CPY.W !reg_apuio1                         ; $84C862 |
  BNE CODE_84C85F                           ; $84C865 |
  SEP #$30                                  ; $84C867 |
  LDA.B $02                                 ; $84C869 |
  BPL CODE_84C877                           ; $84C86B |
  STZ.B $00                                 ; $84C86D |
  STZ.B $01                                 ; $84C86F |
  INX                                       ; $84C871 |
  INX                                       ; $84C872 |
  TXY                                       ; $84C873 |
  JSR.W write_apuio1_sync                   ; $84C874 |

CODE_84C877:
  STZ.W !reg_apuio1                         ; $84C877 |
  LDA.W !reg_apuio1                         ; $84C87A |
  BNE CODE_84C877                           ; $84C87D |
  RTS                                       ; $84C87F |

CODE_FN_84C880:
  REP #$20                                  ; $84C880 |
  LDY.B #$00                                ; $84C882 |
  LDA.B [$15],Y                             ; $84C884 |
  INY                                       ; $84C886 |

CODE_84C887:
  STA.W !reg_apuio1                         ; $84C887 |
  LDA.B [$15],Y                             ; $84C88A |
  STA.W !reg_apuio2                         ; $84C88C |
  STY.W !reg_apuio0                         ; $84C88F |
  TYX                                       ; $84C892 |
  INY                                       ; $84C893 |
  INY                                       ; $84C894 |
  DEC.B $1A                                 ; $84C895 |
  BEQ CODE_84C8BC                           ; $84C897 |
  CPY.B #$FF                                ; $84C899 |
  BEQ CODE_84C8AA                           ; $84C89B |
  LDA.B [$15],Y                             ; $84C89D |
  INY                                       ; $84C89F |

CODE_84C8A0:
  STX.W !reg_apuio0                         ; $84C8A0 |
  CPX.W !reg_apuio0                         ; $84C8A3 |
  BNE CODE_84C8A0                           ; $84C8A6 |
  BRA CODE_84C887                           ; $84C8A8 |

CODE_84C8AA:
  LDA.W #$00FF                              ; $84C8AA |
  CLC                                       ; $84C8AD |
  ADC.B $15                                 ; $84C8AE |
  STA.B $15                                 ; $84C8B0 |

CODE_84C8B2:
  STX.W !reg_apuio0                         ; $84C8B2 |
  CPX.W !reg_apuio0                         ; $84C8B5 |
  BNE CODE_84C8B2                           ; $84C8B8 |
  BRA CODE_84C8CC                           ; $84C8BA |

CODE_84C8BC:
  STZ.B $00                                 ; $84C8BC |
  INY                                       ; $84C8BE |
  INY                                       ; $84C8BF |
  TYA                                       ; $84C8C0 |

CODE_84C8C1:
  STX.W !reg_apuio0                         ; $84C8C1 |
  CPX.W !reg_apuio0                         ; $84C8C4 |
  BNE CODE_84C8C1                           ; $84C8C7 |
  JSR.W write_apuio0_sync                   ; $84C8C9 |

CODE_84C8CC:
  SEP #$30                                  ; $84C8CC |
  STZ.W !reg_apuio1                         ; $84C8CE |

CODE_84C8D1:
  STZ.W !reg_apuio0                         ; $84C8D1 |
  LDA.W !reg_apuio0                         ; $84C8D4 |
  BNE CODE_84C8D1                           ; $84C8D7 |
  RTS                                       ; $84C8D9 |

spc_upload_blocks_2:
  REP #$30                                  ; $84C8DA |  16 bit A/X/Y
  STZ.B !r_sound_transfer_counter_dp        ; $84C8DC |  Clear transfer counter (mirror of port 0)
  LDA.W #$BBAA                              ; $84C8DE |\ Step 1 (initialize):

.ready
  CMP.W !reg_apuio0                         ; $84C8E1 | | Wait for the SPC to be ready
  BNE .ready                                ; $84C8E4 |/
  SEP #$20                                  ; $84C8E6 |  8 bit A
  LDA.B #$01                                ; $84C8E8 |\  Step 2 (execute transfer command):
  STA.W !reg_apuio1                         ; $84C8EA | | Mode non-0 (block transfer)
  LDA.B #$CC                                ; $84C8ED | | Tell SPC to begin block upload
  JSR.W write_apuio0_sync                   ; $84C8EF |/
  LDA.B #$00                                ; $84C8F2 |\ Reset counter for initial dummy upload
  JSR.W write_apuio0_sync                   ; $84C8F4 |/
  INC.B !r_sound_transfer_counter_dp        ; $84C8F7 |  Increment transfer counter to 1

.start_upload
  REP #$30                                  ; $84C8F9 |\  16 bit A/X/Y
  LDX.B !r_sound_block_table_ptr_dp         ; $84C8FB | |  Load pointer to current entry in transfer table
  LDA.W $0000,X                             ; $84C8FD | |  Read header: target SPC address (2 bytes)
  CMP.W #$FFFF                              ; $84C900 | |  $FFFF indicates table end
  BCS .finish                               ; $84C903 | | Step 3 (terminate block):
  STA.W !reg_apuio2                         ; $84C905 | |\  Write SPC address to port 2/3
  SEP #$20                                  ; $84C908 | | | 8 bit A
  LDA.B #$01                                ; $84C90A | | | 
  STA.W !reg_apuio1                         ; $84C90C | | | Mode non-0 (block transfer)
  LDA.B !r_sound_transfer_counter_dp        ; $84C90F | | | 
  INC A                                     ; $84C911 | | | Signal end of block (write transfer counter + 1)
  JSR.W write_apuio0_sync                   ; $84C912 | |/
  STZ.B !r_sound_transfer_counter_dp        ; $84C915 | |  Clear transfer counter (byte offset = 0)
  REP #$20                                  ; $84C917 | |  16 bit A
  LDA.W $0003,X                             ; $84C919 | |  Read header: source ROM address (3 bytes; read the upper 2 bytes here)
  ASL A                                     ; $84C91C | |\
  BPL .compressed                           ; $84C91D | | | if bit14 (bank bit 6) is 0, data is compressed
  ROR A                                     ; $84C91F | | | drop the bit for further processing
  AND.W #$BFFF                              ; $84C920 | |/
  STA.B !r_sound_transfer_source_ptr_dp+1   ; $84C923 | |\  Initialize source ROM pointer
  LDA.W $0002,X                             ; $84C925 | | |
  STA.B !r_sound_transfer_source_ptr_dp     ; $84C928 | |/
  TXA                                       ; $84C92A | |\
  CLC                                       ; $84C92B | | | Move to next entry (+5 bytes)
  ADC.W #$0005                              ; $84C92C | | |
  STA.B !r_sound_block_table_ptr_dp         ; $84C92F | |/
  LDA.B [!r_sound_transfer_source_ptr_dp]   ; $84C931 | |\ Read block size (2 bytes, self-inclusive)
  TAX                                       ; $84C933 | |/
  DEX                                       ; $84C934 | |\
  DEX                                       ; $84C935 | | | Skip the size header itself
  INC.B !r_sound_transfer_source_ptr_dp     ; $84C936 | | |
  INC.B !r_sound_transfer_source_ptr_dp     ; $84C938 | |/
  LDY.W #$0000                              ; $84C93A | |\  Step 4 (send block):
  SEP #$20                                  ; $84C93D | | | 8 bit A

.upload_byte_loop
  LDA.B [!r_sound_transfer_source_ptr_dp],Y ; $84C93F | | |
  STA.W !reg_apuio1                         ; $84C941 | | | Write ROM data byte
  TYA                                       ; $84C944 | | |

.write_sync
  STA.W !reg_apuio0                         ; $84C945 | | | 
  CMP.W !reg_apuio0                         ; $84C948 | | | Commit transfer (write transfer counter)
  BNE .write_sync                           ; $84C94B | | |
  INY                                       ; $84C94D | | |
  DEX                                       ; $84C94E | | |
  BNE .upload_byte_loop                     ; $84C94F | |/
  SEP #$30                                  ; $84C951 | |
  STY.B !r_sound_transfer_counter_dp        ; $84C953 | |
  BRA .start_upload                         ; $84C955 | |

.compressed
  INX                                       ; $84C957 | |\
  INX                                       ; $84C958 | | | Skip SPC address and point to ROM source pointer
  STX.B !r_sound_block_table_ptr_dp         ; $84C959 | |/
  JSR.W spc_upload_decompressed             ; $84C95B | |  Decompress and send block
  BRA .start_upload                         ; $84C95E |/

.finish
  LDA.B !r_sound_block_table_ptr_dp         ; $84C960 |\
  SEC                                       ; $84C962 | |
  SBC.W #$0005                              ; $84C963 | | Read target SPC address from last block (entry address)
  TAX                                       ; $84C966 | |
  LDA.W $0000,X                             ; $84C967 |/ Step 6 (execute jump command):
  STA.W !reg_apuio2                         ; $84C96A |\  Write entry address to APUIO2/3
  SEP #$20                                  ; $84C96D | |
  STZ.W !reg_apuio1                         ; $84C96F | | Mode 0 (jump to address)
  INC.B !r_sound_transfer_counter_dp        ; $84C972 | |
  JSR.W write_apuio0_sync_dp                ; $84C974 |/  Signal end of block (start sound driver)
  STZ.W !reg_apuio0                         ; $84C977 |  Reset APUIO0 to 0
  REP #$20                                  ; $84C97A |
  JML.L CODE_JP_84C228                      ; $84C97C |

spc_upload_decompressed:
  LDA.B !r_sound_transfer_counter_dp        ; $84C980 |\ Save current transfer counter
  PHA                                       ; $84C982 |/
  LDA.W #$0400                              ; $84C983 |\ Request decompression of a 0x400 byte block
  JSL.L decompress_block_to_wram            ; $84C986 |/
  PLX                                       ; $84C98A |  Restore transfer counter into X (used for SPC sync)
  STZ.B !r_sound_transfer_source_ptr_dp     ; $84C98B |\ Clear base address
  SEP #$20                                  ; $84C98D | | 8 bit A
  LDA.B #$7E                                ; $84C98F | | Set base bank to WRAM (actual address = $7E0000+Y)
  STA.B !r_sound_transfer_source_ptr_dp+2   ; $84C991 |/

.upload_byte_loop
  LDA.B [!r_sound_transfer_source_ptr_dp],Y ; $84C993 |\
  STA.W !reg_apuio1                         ; $84C995 | | Send decompressed byte to SPC data port
  TXA                                       ; $84C998 | |
  JSR.W write_apuio0_sync                   ; $84C999 | | Commit transfer (write transfer counter)
  INX                                       ; $84C99C | |
  INY                                       ; $84C99D | |
  CPY.B $20                                 ; $84C99E | |
  BNE .upload_byte_loop                     ; $84C9A0 |/
  STX.B $2A                                 ; $84C9A2 |
  REP #$20                                  ; $84C9A4 |  16 bit A
  LDA.B $13                                 ; $84C9A6 |
  STA.B $18                                 ; $84C9A8 |
  LDA.B $01                                 ; $84C9AA |
  BPL spc_upload_decompressed               ; $84C9AC |
  RTS                                       ; $84C9AE |

write_apuio0_sync_dp:
  LDA.B $2A                                 ; $84C9AF |

write_apuio0_sync:
  STA.W !reg_apuio0                         ; $84C9B1 |
  CMP.W !reg_apuio0                         ; $84C9B4 |
  BNE write_apuio0_sync                     ; $84C9B7 |
  RTS                                       ; $84C9B9 |

write_0xcc_to_apuio1_sync:
  LDY.B #$CC                                ; $84C9BA |

write_apuio1_sync:
  NOP                                       ; $84C9BC |

.loop
  STY.W !reg_apuio1                         ; $84C9BD |
  CPY.W !reg_apuio1                         ; $84C9C0 |
  BNE .loop                                 ; $84C9C3 |
  RTS                                       ; $84C9C5 |

CODE_FN_84C9C6:
  REP #$20                                  ; $84C9C6 |
  REP #$10                                  ; $84C9C8 |
  LDA.W $0028                               ; $84C9CA |
  BIT.W #$0100                              ; $84C9CD |
  BEQ CODE_84C9DC                           ; $84C9D0 |
  LDA.W #$0004                              ; $84C9D2 |
  STA.W $1666                               ; $84C9D5 |
  STZ.W $1676                               ; $84C9D8 |
  RTL                                       ; $84C9DB |

CODE_84C9DC:
  BIT.W #$0200                              ; $84C9DC |
  BEQ CODE_84C9E9                           ; $84C9DF |
  LDA.W #$FFFC                              ; $84C9E1 |
  STA.W $1666                               ; $84C9E4 |
  BRA CODE_84C9EC                           ; $84C9E7 |

CODE_84C9E9:
  STZ.W $1666                               ; $84C9E9 |

CODE_84C9EC:
  STZ.W $1676                               ; $84C9EC |
  RTL                                       ; $84C9EF |

  REP #$20                                  ; $84C9F0 |
  REP #$10                                  ; $84C9F2 |
  LDX.W #$0400                              ; $84C9F4 |
  LDA.B $18,X                               ; $84C9F7 |
  BEQ CODE_84CA02                           ; $84C9F9 |
  LDY.W #$0000                              ; $84C9FB |
  JSL.L CODE_FL_84CA11                      ; $84C9FE |

CODE_84CA02:
  LDX.W #$04C0                              ; $84CA02 |
  LDA.B $18,X                               ; $84CA05 |
  BEQ CODE_84CA10                           ; $84CA07 |
  LDY.W #$0002                              ; $84CA09 |
  JSL.L CODE_FL_84CA11                      ; $84CA0C |

CODE_84CA10:
  RTL                                       ; $84CA10 |

CODE_FL_84CA11:
  STZ.B $26,X                               ; $84CA11 |
  STZ.B $28,X                               ; $84CA13 |
  JSL.L CODE_FL_84CA26                      ; $84CA15 |
  LDA.W $0028,Y                             ; $84CA19 |
  BIT.W #$4000                              ; $84CA1C |
  BEQ CODE_84CA5C                           ; $84CA1F |
  ASL.B $26,X                               ; $84CA21 |
  ASL.B $28,X                               ; $84CA23 |
  RTL                                       ; $84CA25 |

CODE_FL_84CA26:
  LDA.W $0028,Y                             ; $84CA26 |
  BIT.W #$0100                              ; $84CA29 |
  BEQ CODE_84CA36                           ; $84CA2C |
  LDA.W #$01F0                              ; $84CA2E |
  STA.W $0026,X                             ; $84CA31 |
  BRA CODE_84CA42                           ; $84CA34 |

CODE_84CA36:
  BIT.W #$0200                              ; $84CA36 |
  BEQ CODE_84CA42                           ; $84CA39 |
  LDA.W #$FE10                              ; $84CA3B |
  STA.L $000026,X                           ; $84CA3E |

CODE_84CA42:
  LDA.W $0028,Y                             ; $84CA42 |
  BIT.W #$0400                              ; $84CA45 |
  BEQ CODE_84CA51                           ; $84CA48 |
  LDA.W #$01F0                              ; $84CA4A |
  STA.W $0028,X                             ; $84CA4D |
  RTL                                       ; $84CA50 |

CODE_84CA51:
  BIT.W #$0800                              ; $84CA51 |
  BEQ CODE_84CA5C                           ; $84CA54 |
  LDA.W #$FE10                              ; $84CA56 |
  STA.W $0028,X                             ; $84CA59 |

CODE_84CA5C:
  RTL                                       ; $84CA5C |

  REP #$20                                  ; $84CA5D |
  LDX.W #$0400                              ; $84CA5F |
  LDA.B $18,X                               ; $84CA62 |
  BEQ CODE_84CA6A                           ; $84CA64 |
  JSL.L CODE_FL_84CA95                      ; $84CA66 |

CODE_84CA6A:
  LDX.W #$04C0                              ; $84CA6A |
  LDA.B $18,X                               ; $84CA6D |
  BEQ CODE_84CA75                           ; $84CA6F |
  JSL.L CODE_FL_84CA95                      ; $84CA71 |

CODE_84CA75:
  RTL                                       ; $84CA75 |

  REP #$20                                  ; $84CA76 |
  LDX.W #$0400                              ; $84CA78 |
  LDA.B $18,X                               ; $84CA7B |
  BEQ CODE_84CA86                           ; $84CA7D |
  LDY.W #$0000                              ; $84CA7F |
  JSL.L CODE_FL_84CB38                      ; $84CA82 |

CODE_84CA86:
  LDX.W #$04C0                              ; $84CA86 |
  LDA.B $18,X                               ; $84CA89 |
  BEQ CODE_84CA94                           ; $84CA8B |
  LDY.W #$0008                              ; $84CA8D |
  JSL.L CODE_FL_84CB38                      ; $84CA90 |

CODE_84CA94:
  RTL                                       ; $84CA94 |

CODE_FL_84CA95:
  LDA.B $26,X                               ; $84CA95 |
  BNE CODE_84CA9C                           ; $84CA97 |
  JMP.W CODE_JP_84CAE5                      ; $84CA99 |

CODE_84CA9C:
  BPL CODE_84CAA9                           ; $84CA9C |
  SEP #$20                                  ; $84CA9E |
  LDA.B $09,X                               ; $84CAA0 |
  CMP.B #$10                                ; $84CAA2 |
  BCS CODE_84CAB4                           ; $84CAA4 |
  JMP.W CODE_JP_84CAE3                      ; $84CAA6 |

CODE_84CAA9:
  SEP #$20                                  ; $84CAA9 |
  LDA.B $09,X                               ; $84CAAB |
  CMP.B #$F0                                ; $84CAAD |
  BCC CODE_84CAB4                           ; $84CAAF |
  JMP.W CODE_JP_84CAE3                      ; $84CAB1 |

CODE_84CAB4:
  REP #$20                                  ; $84CAB4 |
  LDA.B $26,X                               ; $84CAB6 |
  CLC                                       ; $84CAB8 |
  ADC.B $08,X                               ; $84CAB9 |
  STA.B $08,X                               ; $84CABB |
  SEP #$20                                  ; $84CABD |
  LDA.B $09,X                               ; $84CABF |
  CMP.B #$80                                ; $84CAC1 |
  BCC CODE_84CAD5                           ; $84CAC3 |
  SBC.B #$80                                ; $84CAC5 |
  BMI CODE_JP_84CAE3                        ; $84CAC7 |
  CMP.B #$04                                ; $84CAC9 |
  BCC CODE_84CACF                           ; $84CACB |
  LDA.B #$04                                ; $84CACD |

CODE_84CACF:
  STA.B $3C,X                               ; $84CACF |
  STZ.B $3D,X                               ; $84CAD1 |
  BRA CODE_JP_84CAE3                        ; $84CAD3 |

CODE_84CAD5:
  SBC.B #$7F                                ; $84CAD5 |
  CMP.B #$FC                                ; $84CAD7 |
  BCS CODE_84CADD                           ; $84CAD9 |
  LDA.B #$FC                                ; $84CADB |

CODE_84CADD:
  STA.B $3C,X                               ; $84CADD |
  LDA.B #$FF                                ; $84CADF |
  STA.B $3D,X                               ; $84CAE1 |

CODE_JP_84CAE3:
  REP #$20                                  ; $84CAE3 |

CODE_JP_84CAE5:
  LDA.W #$0000                              ; $84CAE5 |
  STA.B $48,X                               ; $84CAE8 |
  LDY.B $28,X                               ; $84CAEA |
  BNE CODE_84CAF2                           ; $84CAEC |
  JML.L CODE_JL_84CB35                      ; $84CAEE |

CODE_84CAF2:
  LDA.W #$0000                              ; $84CAF2 |
  LDY.B $28,X                               ; $84CAF5 |
  BPL CODE_84CAFC                           ; $84CAF7 |
  LDA.W #$FFFF                              ; $84CAF9 |

CODE_84CAFC:
  STA.B $18                                 ; $84CAFC |
  LDA.B $28,X                               ; $84CAFE |
  CLC                                       ; $84CB00 |
  ADC.B $0C,X                               ; $84CB01 |
  STA.B $0C,X                               ; $84CB03 |
  LDA.B $18                                 ; $84CB05 |
  ADC.B $0F,X                               ; $84CB07 |
  STA.B $0F,X                               ; $84CB09 |
  SEP #$20                                  ; $84CB0B |
  LDA.B $0E,X                               ; $84CB0D |
  BNE CODE_JL_84CB35                        ; $84CB0F |
  LDA.B $0D,X                               ; $84CB11 |
  CMP.B #$30                                ; $84CB13 |
  BCC CODE_84CB27                           ; $84CB15 |
  SBC.B #$30                                ; $84CB17 |
  BMI CODE_JL_84CB35                        ; $84CB19 |
  CMP.B #$04                                ; $84CB1B |
  BCC CODE_84CB21                           ; $84CB1D |
  LDA.B #$04                                ; $84CB1F |

CODE_84CB21:
  STA.B $3E,X                               ; $84CB21 |
  STZ.B $3F,X                               ; $84CB23 |
  BRA CODE_JL_84CB35                        ; $84CB25 |

CODE_84CB27:
  SBC.B #$2F                                ; $84CB27 |
  CMP.B #$FC                                ; $84CB29 |
  BCS CODE_84CB2F                           ; $84CB2B |
  LDA.B #$FC                                ; $84CB2D |

CODE_84CB2F:
  STA.B $3E,X                               ; $84CB2F |
  LDA.B #$FF                                ; $84CB31 |
  STA.B $3F,X                               ; $84CB33 |

CODE_JL_84CB35:
  REP #$20                                  ; $84CB35 |
  RTL                                       ; $84CB37 |

CODE_FL_84CB38:
  LDA.B $26,X                               ; $84CB38 |
  BNE CODE_84CB3F                           ; $84CB3A |
  JMP.W CODE_JP_84CB8E                      ; $84CB3C |

CODE_84CB3F:
  BPL CODE_84CB4C                           ; $84CB3F |
  SEP #$20                                  ; $84CB41 |
  LDA.B $09,X                               ; $84CB43 |
  CMP.B #$10                                ; $84CB45 |
  BCS CODE_84CB57                           ; $84CB47 |
  JMP.W CODE_JP_84CB8C                      ; $84CB49 |

CODE_84CB4C:
  SEP #$20                                  ; $84CB4C |
  LDA.B $09,X                               ; $84CB4E |
  CMP.B #$F0                                ; $84CB50 |
  BCC CODE_84CB57                           ; $84CB52 |
  JMP.W CODE_JP_84CB8C                      ; $84CB54 |

CODE_84CB57:
  REP #$20                                  ; $84CB57 |
  LDA.B $26,X                               ; $84CB59 |
  CLC                                       ; $84CB5B |
  ADC.B $08,X                               ; $84CB5C |
  STA.B $08,X                               ; $84CB5E |
  SEP #$20                                  ; $84CB60 |
  LDA.B $09,X                               ; $84CB62 |
  CMP.B #$80                                ; $84CB64 |
  BCC CODE_84CB7C                           ; $84CB66 |
  SBC.B #$80                                ; $84CB68 |
  BMI CODE_JP_84CB8C                        ; $84CB6A |
  CMP.B #$04                                ; $84CB6C |
  BCC CODE_84CB72                           ; $84CB6E |
  LDA.B #$04                                ; $84CB70 |

CODE_84CB72:
  STA.W $1666,Y                             ; $84CB72 |
  LDA.B #$00                                ; $84CB75 |
  STA.W $1667,Y                             ; $84CB77 |
  BRA CODE_JP_84CB8C                        ; $84CB7A |

CODE_84CB7C:
  SBC.B #$7F                                ; $84CB7C |
  CMP.B #$FC                                ; $84CB7E |
  BCS CODE_84CB84                           ; $84CB80 |
  LDA.B #$FC                                ; $84CB82 |

CODE_84CB84:
  STA.W $1666,Y                             ; $84CB84 |
  LDA.B #$FF                                ; $84CB87 |
  STA.W $1667,Y                             ; $84CB89 |

CODE_JP_84CB8C:
  REP #$20                                  ; $84CB8C |

CODE_JP_84CB8E:
  LDA.W #$0000                              ; $84CB8E |
  STA.B $48,X                               ; $84CB91 |
  LDA.B $28,X                               ; $84CB93 |
  BNE CODE_84CB9A                           ; $84CB95 |
  JMP.W CODE_JP_84CBE3                      ; $84CB97 |

CODE_84CB9A:
  BPL CODE_84CBA0                           ; $84CB9A |
  SEP #$20                                  ; $84CB9C |
  LDA.B #$FF                                ; $84CB9E |

CODE_84CBA0:
  SEP #$20                                  ; $84CBA0 |
  STA.B $18                                 ; $84CBA2 |
  LDA.B $28,X                               ; $84CBA4 |
  CLC                                       ; $84CBA6 |
  ADC.B $0C,X                               ; $84CBA7 |
  STA.B $0C,X                               ; $84CBA9 |
  LDA.B $18                                 ; $84CBAB |
  ADC.B $0E,X                               ; $84CBAD |
  STA.B $0E,X                               ; $84CBAF |
  REP #$20                                  ; $84CBB1 |
  SEP #$20                                  ; $84CBB3 |
  LDA.B $0E,X                               ; $84CBB5 |
  BNE CODE_JP_84CBE3                        ; $84CBB7 |
  LDA.B $0D,X                               ; $84CBB9 |
  CMP.B #$30                                ; $84CBBB |
  BCC CODE_84CBD3                           ; $84CBBD |
  SBC.B #$30                                ; $84CBBF |
  BMI CODE_JP_84CBE3                        ; $84CBC1 |
  CMP.B #$04                                ; $84CBC3 |
  BCC CODE_84CBC9                           ; $84CBC5 |
  LDA.B #$04                                ; $84CBC7 |

CODE_84CBC9:
  STA.W $1676,Y                             ; $84CBC9 |
  LDA.B #$00                                ; $84CBCC |
  STA.W $1677,Y                             ; $84CBCE |
  BRA CODE_JP_84CBE3                        ; $84CBD1 |

CODE_84CBD3:
  SBC.B #$2F                                ; $84CBD3 |
  CMP.B #$FC                                ; $84CBD5 |
  BCS CODE_84CBDB                           ; $84CBD7 |
  LDA.B #$FC                                ; $84CBD9 |

CODE_84CBDB:
  STA.W $1676,Y                             ; $84CBDB |
  LDA.B #$FF                                ; $84CBDE |
  STA.W $1677,Y                             ; $84CBE0 |

CODE_JP_84CBE3:
  REP #$20                                  ; $84CBE3 |
  RTL                                       ; $84CBE5 |

  RTL                                       ; $84CBE6 |

CODE_FL_84CBE7:
  STZ.W $1662                               ; $84CBE7 |
  STZ.W $1672                               ; $84CBEA |
  STZ.W $1682                               ; $84CBED |
  STZ.W $1692                               ; $84CBF0 |
  STZ.W $16A2                               ; $84CBF3 |
  STZ.W $16B2                               ; $84CBF6 |
  JSL.L CODE_FL_80883F                      ; $84CBF9 |
  JSL.L CODE_FL_808302                      ; $84CBFD |
  SEP #$20                                  ; $84CC01 |
  LDA.B #$22                                ; $84CC03 |
  STA.W $210B                               ; $84CC05 |
  LDA.B #$44                                ; $84CC08 |
  STA.W $210C                               ; $84CC0A |
  REP #$20                                  ; $84CC0D |
  REP #$10                                  ; $84CC0F |
  LDY.W #$7FFF                              ; $84CC11 |
  LDX.W #$0000                              ; $84CC14 |
  JSL.L CODE_FL_80BF4B                      ; $84CC17 |
  LDA.W #$0009                              ; $84CC1B |
  STA.W $1FA4                               ; $84CC1E |
  STZ.B $A4                                 ; $84CC21 |
  JSL.L CODE_FL_808CB3                      ; $84CC23 |
  LDA.W #$0000                              ; $84CC27 |
  STA.B $5C                                 ; $84CC2A |
  JSL.L CODE_FL_80B04D                      ; $84CC2C |
  JSL.L CODE_FL_80BEE7                      ; $84CC30 |
  JSL.L CODE_FL_84C579                      ; $84CC34 |
  LDX.W #DATA_888024                        ; $84CC38 |
  JSL.L sound_transfer_blocks               ; $84CC3B |
  LDX.W #DATA_88804A                        ; $84CC3F |
  JSL.L sound_transfer_blocks               ; $84CC42 |
  LDY.W #DATA_8880BA                        ; $84CC46 |
  JSL.L CODE_FL_808D78                      ; $84CC49 |
  LDY.W #DATA_88B95C                        ; $84CC4D |
  JSL.L CODE_FL_80C27C                      ; $84CC50 |
  LDY.W #$9B8E                              ; $84CC54 |
  LDA.W #$00E0                              ; $84CC57 |
  JSL.L CODE_FL_8AAF64                      ; $84CC5A |
  LDX.W #$1F40                              ; $84CC5E |
  JSL.L CODE_FL_80C225                      ; $84CC61 |
  LDY.W #$00C0                              ; $84CC65 |
  JSL.L set_music                           ; $84CC68 |
  RTL                                       ; $84CC6C |

CODE_FL_84CC6D:
  LDY.W #$0000                              ; $84CC6D |
  LDX.W #$0400                              ; $84CC70 |
  CLC                                       ; $84CC73 |
  LDA.W CODE_00FA0C,Y                       ; $84CC74 |

CODE_84CC77:
  STA.B $00,X                               ; $84CC77 |
  LDA.W CODE_00FA0E,Y                       ; $84CC79 |
  STA.B $09,X                               ; $84CC7C |
  LDA.W LOOSE_OP_00FA10,Y                   ; $84CC7E |
  STA.B $0D,X                               ; $84CC81 |
  LDA.W CODE_00FA12,Y                       ; $84CC83 |
  STA.B $02,X                               ; $84CC86 |
  LDA.W #$1898                              ; $84CC88 |
  STA.B $04,X                               ; $84CC8B |
  TYA                                       ; $84CC8D |
  ADC.W #$0008                              ; $84CC8E |
  TAY                                       ; $84CC91 |
  LDA.B $16,X                               ; $84CC92 |
  TAX                                       ; $84CC94 |
  LDA.W CODE_00FA0C,Y                       ; $84CC95 |
  BNE CODE_84CC77                           ; $84CC98 |
  RTL                                       ; $84CC9A |

CODE_FL_84CC9B:
  LDA.B $36                                 ; $84CC9B |
  AND.W #$1000                              ; $84CC9D |
  BEQ CODE_84CCA7                           ; $84CCA0 |
  JSL.L CODE_FL_84CEE7                      ; $84CCA2 |
  RTL                                       ; $84CCA6 |

CODE_84CCA7:
  LDA.W $1C04                               ; $84CCA7 |
  BEQ CODE_84CCAF                           ; $84CCAA |
  JMP.W CODE_JP_84CDF5                      ; $84CCAC |

CODE_84CCAF:
  JSL.L CODE_FL_82BE73                      ; $84CCAF |
  LDA.W $1C02                               ; $84CCB3 |
  PHX                                       ; $84CCB6 |
  ASL A                                     ; $84CCB7 |
  TAX                                       ; $84CCB8 |
  LDA.L PTR16_84CCC3,X                      ; $84CCB9 |
  PLX                                       ; $84CCBD |
  STA.B $00                                 ; $84CCBE |
  JMP.W ($0000)                             ; $84CCC0 |

PTR16_84CCC3:
  dw CODE_84CCCB                            ; $84CCC3 |
  dw CODE_84CD8D                            ; $84CCC5 |
  dw CODE_84CD9D                            ; $84CCC7 |
  dw CODE_84CDED                            ; $84CCC9 |

CODE_84CCCB:
  LDX.W #$0B70                              ; $84CCCB |
  LDY.W #$FA34                              ; $84CCCE |
  JSL.L CODE_FL_84CCF3                      ; $84CCD1 |
  LDX.W #$0D00                              ; $84CCD5 |
  LDY.W #$FA3F                              ; $84CCD8 |
  JSL.L CODE_FL_84CCF3                      ; $84CCDB |
  LDA.W #$0B70                              ; $84CCDF |
  LDY.W #$0D00                              ; $84CCE2 |
  JSL.L CODE_FL_82C3E8                      ; $84CCE5 |
  LDA.W #$011C                              ; $84CCE9 |
  STA.W $1C08                               ; $84CCEC |
  INC.W $1C02                               ; $84CCEF |
  RTL                                       ; $84CCF2 |

CODE_FL_84CCF3:
  LDA.W $0000,Y                             ; $84CCF3 |
  AND.W #$00FF                              ; $84CCF6 |
  STA.B $09,X                               ; $84CCF9 |
  LDA.W $0001,Y                             ; $84CCFB |
  AND.W #$00FF                              ; $84CCFE |
  STA.B $0D,X                               ; $84CD01 |
  LDA.W $0002,Y                             ; $84CD03 |
  STA.B $3A,X                               ; $84CD06 |
  LDA.W $0004,Y                             ; $84CD08 |
  STA.B $3E,X                               ; $84CD0B |
  LDA.W $0006,Y                             ; $84CD0D |
  STA.B $40,X                               ; $84CD10 |
  LDA.W $0008,Y                             ; $84CD12 |
  AND.W #$00FF                              ; $84CD15 |
  STA.W $0042,X                             ; $84CD18 |
  LDA.W $0009,Y                             ; $84CD1B |
  STA.B $44,X                               ; $84CD1E |

CODE_FL_84CD20:
  DEC.B $3C,X                               ; $84CD20 |
  BPL CODE_84CD40                           ; $84CD22 |
  LDA.B $3A,X                               ; $84CD24 |
  CLC                                       ; $84CD26 |
  ADC.B $44,X                               ; $84CD27 |
  STA.B $3A,X                               ; $84CD29 |
  CMP.B $3E,X                               ; $84CD2B |
  BCC CODE_84CD33                           ; $84CD2D |
  CMP.B $40,X                               ; $84CD2F |
  BCC CODE_84CD40                           ; $84CD31 |

CODE_84CD33:
  LDA.B $44,X                               ; $84CD33 |
  EOR.W #$FFFF                              ; $84CD35 |
  INC A                                     ; $84CD38 |
  STA.B $44,X                               ; $84CD39 |
  LDA.W #$0004                              ; $84CD3B |
  STA.B $3C,X                               ; $84CD3E |

CODE_84CD40:
  LDY.W $0042,X                             ; $84CD40 |
  LDA.B $3B,X                               ; $84CD43 |
  AND.W #$00FF                              ; $84CD45 |
  ORA.W #$0100                              ; $84CD48 |
  JSL.L CODE_FL_8AB51A                      ; $84CD4B |
  LDA.B $09,X                               ; $84CD4F |
  CLC                                       ; $84CD51 |
  ADC.B $01                                 ; $84CD52 |
  STA.B $F9,X                               ; $84CD54 |
  CLC                                       ; $84CD56 |
  ADC.W #$0006                              ; $84CD57 |
  STA.W $0149,X                             ; $84CD5A |
  LDA.B $0D,X                               ; $84CD5D |
  CLC                                       ; $84CD5F |
  ADC.B $05                                 ; $84CD60 |
  STA.B $FD,X                               ; $84CD62 |
  STA.W $014D,X                             ; $84CD64 |
  LDY.W #$0002                              ; $84CD67 |
  LDA.B $3B,X                               ; $84CD6A |
  AND.W #$00FF                              ; $84CD6C |
  ORA.W #$0100                              ; $84CD6F |
  JSL.L CODE_FL_8AB51A                      ; $84CD72 |
  LDA.B $09,X                               ; $84CD76 |
  CLC                                       ; $84CD78 |
  ADC.B $01                                 ; $84CD79 |
  STA.B $59,X                               ; $84CD7B |
  CLC                                       ; $84CD7D |
  ADC.W #$0001                              ; $84CD7E |
  STA.B $A9,X                               ; $84CD81 |
  LDA.B $0D,X                               ; $84CD83 |
  CLC                                       ; $84CD85 |
  ADC.B $05                                 ; $84CD86 |
  STA.B $5D,X                               ; $84CD88 |
  STA.B $AD,X                               ; $84CD8A |
  RTL                                       ; $84CD8C |

CODE_84CD8D:
  LDA.W #$2000                              ; $84CD8D |
  JSL.L CODE_FL_808D48                      ; $84CD90 |
  LDA.W #$0002                              ; $84CD94 |
  STA.W $1FBE                               ; $84CD97 |
  INC.W $1C02                               ; $84CD9A |

CODE_84CD9D:
  LDX.W #$0B70                              ; $84CD9D |
  JSL.L CODE_FL_84CD20                      ; $84CDA0 |
  LDX.W #$0D00                              ; $84CDA4 |
  JSL.L CODE_FL_84CD20                      ; $84CDA7 |
  JSR.W CODE_FN_84CDB7                      ; $84CDAB |
  DEC.W $1C08                               ; $84CDAE |
  BPL CODE_84CDB6                           ; $84CDB1 |
  INC.W $1C02                               ; $84CDB3 |

CODE_84CDB6:
  RTL                                       ; $84CDB6 |

CODE_FN_84CDB7:
  LDA.W $1C08                               ; $84CDB7 |
  CMP.W #$001E                              ; $84CDBA |
  BCS CODE_84CDEC                           ; $84CDBD |
  LDA.W $1FE2                               ; $84CDBF |
  AND.W #$001F                              ; $84CDC2 |
  BEQ CODE_84CDCE                           ; $84CDC5 |
  DEC A                                     ; $84CDC7 |
  ORA.W #$0020                              ; $84CDC8 |
  STA.W $1FE2                               ; $84CDCB |

CODE_84CDCE:
  LDA.W $1FE4                               ; $84CDCE |
  AND.W #$001F                              ; $84CDD1 |
  BEQ CODE_84CDDD                           ; $84CDD4 |
  DEC A                                     ; $84CDD6 |
  ORA.W #$0040                              ; $84CDD7 |
  STA.W $1FE4                               ; $84CDDA |

CODE_84CDDD:
  LDA.W $1FE6                               ; $84CDDD |
  AND.W #$001F                              ; $84CDE0 |
  BEQ CODE_84CDEC                           ; $84CDE3 |
  DEC A                                     ; $84CDE5 |
  ORA.W #$0080                              ; $84CDE6 |
  STA.W $1FE6                               ; $84CDE9 |

CODE_84CDEC:
  RTS                                       ; $84CDEC |

CODE_84CDED:
  JSL.L CODE_FL_82B994                      ; $84CDED |
  INC.W $1C04                               ; $84CDF1 |
  RTL                                       ; $84CDF4 |

CODE_JP_84CDF5:
  LDA.W $1C06                               ; $84CDF5 |
  PHX                                       ; $84CDF8 |
  ASL A                                     ; $84CDF9 |
  TAX                                       ; $84CDFA |
  LDA.L PTR16_84CE05,X                      ; $84CDFB |
  PLX                                       ; $84CDFF |
  STA.B $00                                 ; $84CE00 |
  JMP.W ($0000)                             ; $84CE02 |

PTR16_84CE05:
  dw CODE_84CE23                            ; $84CE05 |
  dw CODE_84CE9A                            ; $84CE07 |
  dw CODE_84CE2D                            ; $84CE09 |
  dw CODE_84CE4C                            ; $84CE0B |
  dw CODE_84CE62                            ; $84CE0D |
  dw CODE_84CE79                            ; $84CE0F |
  dw CODE_84CE9A                            ; $84CE11 |
  dw CODE_84CEA3                            ; $84CE13 |
  dw CODE_84CE4C                            ; $84CE15 |
  dw CODE_84CE62                            ; $84CE17 |
  dw CODE_84CE79                            ; $84CE19 |
  dw CODE_84CE9A                            ; $84CE1B |
  dw CODE_84CEAB                            ; $84CE1D |
  dw CODE_84CECE                            ; $84CE1F |
  dw CODE_84CF0C                            ; $84CE21 |

CODE_84CE23:
  LDA.W #$0010                              ; $84CE23 |
  STA.W $1C08                               ; $84CE26 |
  INC.W $1C06                               ; $84CE29 |
  RTL                                       ; $84CE2C |

CODE_84CE2D:
  LDX.W #$8B5D                              ; $84CE2D |

CODE_FL_84CE30:
  JSL.L CODE_FL_80BF9A                      ; $84CE30 |
  LDY.W #$BA32                              ; $84CE34 |
  JSL.L CODE_FL_80C27C                      ; $84CE37 |
  LDA.W #$0100                              ; $84CE3B |
  STA.W $16A2                               ; $84CE3E |
  LDY.W #$80C2                              ; $84CE41 |
  JSL.L CODE_FL_808D78                      ; $84CE44 |
  INC.W $1C06                               ; $84CE48 |
  RTL                                       ; $84CE4B |

CODE_84CE4C:
  LDA.W $1F30                               ; $84CE4C |
  BNE CODE_84CE61                           ; $84CE4F |
  LDY.W #$80C7                              ; $84CE51 |
  JSL.L CODE_FL_808D78                      ; $84CE54 |
  INC.W $1C06                               ; $84CE58 |
  LDA.W #$00A0                              ; $84CE5B |
  STA.W $1C08                               ; $84CE5E |

CODE_84CE61:
  RTL                                       ; $84CE61 |

CODE_84CE62:
  DEC.W $1C08                               ; $84CE62 |
  BNE CODE_84CE78                           ; $84CE65 |
  INC.W $1C06                               ; $84CE67 |
  LDY.W #$80C2                              ; $84CE6A |
  JSL.L CODE_FL_808D78                      ; $84CE6D |
  LDY.W #$BA06                              ; $84CE71 |
  JSL.L CODE_FL_80C27C                      ; $84CE74 |

CODE_84CE78:
  RTL                                       ; $84CE78 |

CODE_84CE79:
  LDA.W $1F30                               ; $84CE79 |
  BNE CODE_84CE99                           ; $84CE7C |
  LDX.W #$8B5D                              ; $84CE7E |
  STX.B $88                                 ; $84CE81 |
  JSL.L CODE_FL_80BF9A                      ; $84CE83 |
  LDX.W #$8B71                              ; $84CE87 |
  STX.B $88                                 ; $84CE8A |
  JSL.L CODE_FL_80BF9A                      ; $84CE8C |
  LDA.W #$0075                              ; $84CE90 |
  STA.W $1C08                               ; $84CE93 |
  INC.W $1C06                               ; $84CE96 |

CODE_84CE99:
  RTL                                       ; $84CE99 |

CODE_84CE9A:
  DEC.W $1C08                               ; $84CE9A |
  BNE CODE_84CEA2                           ; $84CE9D |
  INC.W $1C06                               ; $84CE9F |

CODE_84CEA2:
  RTL                                       ; $84CEA2 |

CODE_84CEA3:
  LDX.W #$8B71                              ; $84CEA3 |
  JSL.L CODE_FL_84CE30                      ; $84CEA6 |
  RTL                                       ; $84CEAA |

CODE_84CEAB:
  LDY.W #$BA37                              ; $84CEAB |
  JSL.L CODE_FL_80C27C                      ; $84CEAE |
  LDY.W #$80CC                              ; $84CEB2 |
  JSL.L CODE_FL_808D78                      ; $84CEB5 |
  JSL.L CODE_FL_84CC6D                      ; $84CEB9 |
  LDY.W #$00FC                              ; $84CEBD |
  JSL.L CODE_FL_808993                      ; $84CEC0 |
  INC.W $1C06                               ; $84CEC4 |
  LDA.W #$FFFB                              ; $84CEC7 |
  STA.W $1672                               ; $84CECA |
  RTL                                       ; $84CECD |

CODE_84CECE:
  LDA.W $1F30                               ; $84CECE |
  BNE CODE_84CEE6                           ; $84CED1 |
  LDY.W #$80D1                              ; $84CED3 |
  JSL.L CODE_FL_808D78                      ; $84CED6 |
  LDA.W #$FFFC                              ; $84CEDA |
  STA.W $16B2                               ; $84CEDD |
  STZ.W $16A2                               ; $84CEE0 |
  INC.W $1C06                               ; $84CEE3 |

CODE_84CEE6:
  RTL                                       ; $84CEE6 |

CODE_FL_84CEE7:
  JSL.L CODE_FL_82B994                      ; $84CEE7 |
  JSL.L CODE_FL_84CC6D                      ; $84CEEB |
  LDA.W #$FFFC                              ; $84CEEF |
  STA.W $16B2                               ; $84CEF2 |
  STZ.W $16A2                               ; $84CEF5 |
  LDA.W #$FFFB                              ; $84CEF8 |
  STA.W $1672                               ; $84CEFB |
  LDY.W #$80D1                              ; $84CEFE |
  JSL.L CODE_FL_808D78                      ; $84CF01 |
  LDY.W #$B966                              ; $84CF05 |
  JSL.L CODE_FL_80C27C                      ; $84CF08 |

CODE_84CF0C:
  LDA.W #$0080                              ; $84CF0C |
  JSL.L CODE_FL_8089BD                      ; $84CF0F |
  LDX.W #$8B9A                              ; $84CF13 |
  JSL.L CODE_FL_80BF9A                      ; $84CF16 |
  JSL.L CODE_FL_84CF9D                      ; $84CF1A |
  LDA.W #$0001                              ; $84CF1E |
  STA.B $3E                                 ; $84CF21 |
  RTL                                       ; $84CF23 |

CODE_FL_84CF24:
  LDA.B $5A                                 ; $84CF24 |
  ASL A                                     ; $84CF26 |
  TAY                                       ; $84CF27 |
  LDX.W CODE_00FA2E,Y                       ; $84CF28 |
  JSL.L CODE_FL_80BF9A                      ; $84CF2B |
  LDA.W $1C0A                               ; $84CF2F |
  BNE CODE_84CF49                           ; $84CF32 |
  LDA.W #$0000                              ; $84CF34 |
  STA.L $7E00A4                             ; $84CF37 |
  STA.L $7EDA06                             ; $84CF3B |
  LDY.W #$2000                              ; $84CF3F |
  JSL.L CODE_FL_80972B                      ; $84CF42 |
  INC.W $1C0A                               ; $84CF46 |

CODE_84CF49:
  JSL.L CODE_FL_808F94                      ; $84CF49 |
  LDY.W #$0090                              ; $84CF4D |
  LDA.W #$1C0E                              ; $84CF50 |
  JSL.L CODE_FL_808FBA                      ; $84CF53 |
  LDY.W #$00C4                              ; $84CF57 |
  LDA.W #$1C10                              ; $84CF5A |
  JSL.L CODE_FL_808FBA                      ; $84CF5D |
  LDA.W $1C0E                               ; $84CF61 |
  CLC                                       ; $84CF64 |
  ADC.W $1C12                               ; $84CF65 |
  AND.W #$01FF                              ; $84CF68 |
  STA.W $1C0E                               ; $84CF6B |
  AND.W #$00FF                              ; $84CF6E |
  BNE CODE_84CF76                           ; $84CF71 |
  STZ.W $1C12                               ; $84CF73 |

CODE_84CF76:
  LDA.B $5A                                 ; $84CF76 |
  CMP.W #$0002                              ; $84CF78 |
  BNE CODE_84CFA9                           ; $84CF7B |
  LDA.W $1C12                               ; $84CF7D |
  BNE CODE_84CFA9                           ; $84CF80 |
  LDA.B $36                                 ; $84CF82 |
  BIT.W #$0C00                              ; $84CF84 |
  BEQ CODE_84CFA9                           ; $84CF87 |
  LDA.W $1FF4                               ; $84CF89 |
  EOR.W #$0001                              ; $84CF8C |
  STA.W $1FF4                               ; $84CF8F |
  JSL.L CODE_FL_84C5BB                      ; $84CF92 |
  LDA.W #$0046                              ; $84CF96 |
  JSL.L push_sound_queue                    ; $84CF99 |

CODE_FL_84CF9D:
  LDA.W $1FF4                               ; $84CF9D |
  ASL A                                     ; $84CFA0 |
  TAY                                       ; $84CFA1 |
  LDX.W CODE_00FA4A,Y                       ; $84CFA2 |
  JSL.L CODE_FL_80BF9A                      ; $84CFA5 |

CODE_84CFA9:
  RTL                                       ; $84CFA9 |

CODE_84CFAA:
  LDY.B $3A,X                               ; $84CFAA |
  LDA.W $00B6,Y                             ; $84CFAC |
  BEQ CODE_84CFDC                           ; $84CFAF |
  BIT.W #$0080                              ; $84CFB1 |
  BNE CODE_84CFC6                           ; $84CFB4 |
  AND.W #$007F                              ; $84CFB6 |
  STA.B $00                                 ; $84CFB9 |
  LDA.W $0034,Y                             ; $84CFBB |
  AND.W #$EFFF                              ; $84CFBE |
  STA.W $0034,Y                             ; $84CFC1 |
  BRA CODE_84CFD4                           ; $84CFC4 |

CODE_84CFC6:
  AND.W #$007F                              ; $84CFC6 |
  STA.B $00                                 ; $84CFC9 |
  LDA.W $0034,Y                             ; $84CFCB |
  ORA.W #$1000                              ; $84CFCE |
  STA.W $0034,Y                             ; $84CFD1 |

CODE_84CFD4:
  LDA.B $00                                 ; $84CFD4 |
  STA.B $4E,X                               ; $84CFD6 |
  JML.L CODE_JL_85FA72                      ; $84CFD8 |

CODE_84CFDC:
  RTL                                       ; $84CFDC |

  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $84CFDD |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $84CFE5 |
  db $FF,$FF,$FF                            ; $84CFED |

CODE_FL_84CFF0:
  STZ.W $1C00                               ; $84CFF0 |
  STZ.W $1C02                               ; $84CFF3 |
  STZ.W $1C04                               ; $84CFF6 |
  RTL                                       ; $84CFF9 |

CODE_FL_84CFFA:
  PHB                                       ; $84CFFA |
  LDA.W #$0087                              ; $84CFFB |
  XBA                                       ; $84CFFE |
  PHA                                       ; $84CFFF |
  PLB                                       ; $84D000 |
  PLB                                       ; $84D001 |
  JSL.L CODE_FL_84D00C                      ; $84D002 |
  PLB                                       ; $84D006 |
  LDA.W $1C04                               ; $84D007 |
  LSR A                                     ; $84D00A |
  RTL                                       ; $84D00B |

CODE_FL_84D00C:
  LDA.W $1C00                               ; $84D00C |
  CMP.W #$0002                              ; $84D00F |
  BCC CODE_84D02C                           ; $84D012 |
  CMP.W #$000D                              ; $84D014 |
  BCS CODE_84D02C                           ; $84D017 |
  LDA.W $1C20                               ; $84D019 |
  BNE CODE_84D02C                           ; $84D01C |
  LDA.B $36                                 ; $84D01E |
  BIT.W #$1000                              ; $84D020 |
  BEQ CODE_84D02C                           ; $84D023 |
  LDA.W #$000D                              ; $84D025 |
  JSL.L CODE_FL_84D2C2                      ; $84D028 |

CODE_84D02C:
  LDA.W $1C00                               ; $84D02C |
  PHX                                       ; $84D02F |
  ASL A                                     ; $84D030 |
  TAX                                       ; $84D031 |
  LDA.L PTR16_84D03C,X                      ; $84D032 |
  PLX                                       ; $84D036 |
  STA.B $00                                 ; $84D037 |
  JMP.W ($0000)                             ; $84D039 |

PTR16_84D03C:
  dw CODE_84D05A                            ; $84D03C |
  dw CODE_84D0D4                            ; $84D03E |
  dw CODE_84D0EA                            ; $84D040 |
  dw CODE_84D124                            ; $84D042 |
  dw CODE_84D13D                            ; $84D044 |
  dw CODE_84D167                            ; $84D046 |
  dw CODE_84D0EA                            ; $84D048 |
  dw CODE_84D124                            ; $84D04A |
  dw CODE_84D135                            ; $84D04C |
  dw CODE_84D1AC                            ; $84D04E |
  dw CODE_84D1E4                            ; $84D050 |
  dw CODE_84D206                            ; $84D052 |
  dw CODE_84D247                            ; $84D054 |
  dw CODE_84D27D                            ; $84D056 |
  dw CODE_84D296                            ; $84D058 |

CODE_84D05A:
  LDA.W $1C02                               ; $84D05A |
  BNE CODE_84D081                           ; $84D05D |
  LDA.W #$0000                              ; $84D05F |
  STA.B $5C                                 ; $84D062 |
  JSL.L CODE_FL_80883F                      ; $84D064 |
  REP #$30                                  ; $84D068 |
  PHB                                       ; $84D06A |
  LDA.W #$0000                              ; $84D06B |
  STA.L $001C00                             ; $84D06E |
  LDA.W #$00FD                              ; $84D072 |
  LDX.W #$1C01                              ; $84D075 |
  TXY                                       ; $84D078 |
  INY                                       ; $84D079 |
  MVN $00,$00                               ; $84D07A |
  PLB                                       ; $84D07D |
  BRL CODE_FL_84D2CC                        ; $84D07E |

CODE_84D081:
  JSL.L CODE_FL_80BE9F                      ; $84D081 |
  JSL.L CODE_FL_808BC2                      ; $84D085 |
  LDX.W #DATA_8880C6                        ; $84D089 |
  JSL.L sound_transfer_blocks               ; $84D08C |
  LDX.W #DATA_8880E3                        ; $84D090 |
  JSL.L sound_transfer_blocks               ; $84D093 |
  REP #$30                                  ; $84D097 |
  PHB                                       ; $84D099 |
  LDA.W #$0000                              ; $84D09A |
  STA.L $7F4800                             ; $84D09D |
  LDA.W #$07FD                              ; $84D0A1 |
  LDX.W #$4801                              ; $84D0A4 |
  TXY                                       ; $84D0A7 |
  INY                                       ; $84D0A8 |
  MVN $7F,$7F                               ; $84D0A9 |
  PLB                                       ; $84D0AC |
  LDY.W #$B976                              ; $84D0AD |
  JSL.L CODE_FL_80C27C                      ; $84D0B0 |
  JSL.L CODE_FL_808D75                      ; $84D0B4 |
  LDY.W #$81FE                              ; $84D0B8 |
  JSL.L CODE_FL_808DBE                      ; $84D0BB |
  JSL.L CODE_FL_84D3DB                      ; $84D0BF |
  JSL.L CODE_FL_808230                      ; $84D0C3 |
  LDY.W #$00CC                              ; $84D0C7 |
  JSL.L set_music                           ; $84D0CA |
  LDA.W #$0010                              ; $84D0CE |
  BRL CODE_JL_84D2B8                        ; $84D0D1 |

CODE_84D0D4:
  LDA.W $1F30                               ; $84D0D4 |
  BNE CODE_84D134                           ; $84D0D7 |
  DEC.W $1C06                               ; $84D0D9 |
  BNE CODE_84D134                           ; $84D0DC |
  TDC                                       ; $84D0DE |
  STA.L $7E2C22                             ; $84D0DF |
  JSL.L CODE_FL_80C2DC                      ; $84D0E3 |
  BRL CODE_JL_84D2BB                        ; $84D0E7 |

CODE_84D0EA:
  JSL.L CODE_FL_84D3CE                      ; $84D0EA |
  LDA.L $7E7C04                             ; $84D0EE |
  AND.W #$000F                              ; $84D0F2 |
  CMP.W #$0001                              ; $84D0F5 |
  BNE CODE_84D134                           ; $84D0F8 |
  JSR.W CODE_FN_84D2D0                      ; $84D0FA |
  LDA.W #$0017                              ; $84D0FD |
  STA.W $1FBE                               ; $84D100 |
  JSL.L CODE_FL_84D2E8                      ; $84D103 |
  LDY.W $1C08                               ; $84D107 |
  LDA.W LOOSE_OP_00C23F,Y                   ; $84D10A |
  AND.W #$00FF                              ; $84D10D |
  JSL.L CODE_FL_84D4B4                      ; $84D110 |
  LDY.W $1C08                               ; $84D114 |
  LDA.W LOOSE_OP_00C227,Y                   ; $84D117 |
  AND.W #$00FF                              ; $84D11A |
  JSL.L CODE_FL_84D5CC                      ; $84D11D |
  BRL CODE_JL_84D2BB                        ; $84D121 |

CODE_84D124:
  JSL.L CODE_FL_84D2E8                      ; $84D124 |
  JSL.L CODE_FL_84D3CE                      ; $84D128 |
  BCC CODE_84D134                           ; $84D12C |
  LDA.W #$0001                              ; $84D12E |
  BRL CODE_JL_84D2B8                        ; $84D131 |

CODE_84D134:
  RTL                                       ; $84D134 |

CODE_84D135:
  LDA.W #$000C                              ; $84D135 |
  LDY.W #$0006                              ; $84D138 |
  BRA CODE_84D143                           ; $84D13B |

CODE_84D13D:
  LDA.W #$0005                              ; $84D13D |
  LDY.W #$0002                              ; $84D140 |

CODE_84D143:
  DEC.W $1C06                               ; $84D143 |
  BNE CODE_84D134                           ; $84D146 |
  STA.B $00                                 ; $84D148 |
  STZ.W $1C22                               ; $84D14A |
  STZ.W $1C18                               ; $84D14D |
  LDA.W #$0040                              ; $84D150 |
  STA.W $1C16                               ; $84D153 |
  INC.W $1C08                               ; $84D156 |
  LDA.W $1C08                               ; $84D159 |
  CMP.B $00                                 ; $84D15C |
  BCC CODE_84D163                           ; $84D15E |
  JMP.W CODE_JL_84D2BB                      ; $84D160 |

CODE_84D163:
  TYA                                       ; $84D163 |
  BRL CODE_FL_84D2C2                        ; $84D164 |

CODE_84D167:
  LDA.W $1C02                               ; $84D167 |
  DEC A                                     ; $84D16A |
  BEQ CODE_84D185                           ; $84D16B |
  DEC A                                     ; $84D16D |
  BEQ CODE_84D1A5                           ; $84D16E |
  JSL.L CODE_FL_84D40B                      ; $84D170 |
  JSL.L CODE_FL_84D45B                      ; $84D174 |
  LDA.W #$007C                              ; $84D178 |
  JSL.L CODE_FL_84C64E                      ; $84D17B |
  LDA.W #$00C0                              ; $84D17F |
  BRL CODE_JL_84D2C9                        ; $84D182 |

CODE_84D185:
  JSL.L CODE_FL_84D41F                      ; $84D185 |
  LDA.W $1C06                               ; $84D189 |
  CMP.W #$0040                              ; $84D18C |
  BCS CODE_84D19D                           ; $84D18F |
  LDA.W $1C14                               ; $84D191 |
  BEQ CODE_84D19D                           ; $84D194 |
  DEC.W $1C14                               ; $84D196 |
  JSL.L CODE_FL_84D480                      ; $84D199 |

CODE_84D19D:
  DEC.W $1C06                               ; $84D19D |
  BNE CODE_84D134                           ; $84D1A0 |
  BRL CODE_FL_84D2CC                        ; $84D1A2 |

CODE_84D1A5:
  JSL.L CODE_FL_84D3EB                      ; $84D1A5 |
  BRL CODE_JL_84D2BB                        ; $84D1A9 |

CODE_84D1AC:
  LDA.W $1C02                               ; $84D1AC |
  BNE CODE_84D1BC                           ; $84D1AF |
  JSL.L CODE_FL_84D2CC                      ; $84D1B1 |
  LDA.W #$0045                              ; $84D1B5 |
  JSL.L push_sound_queue                    ; $84D1B8 |

CODE_84D1BC:
  JSL.L CODE_FL_84D1C9                      ; $84D1BC |
  JSL.L CODE_FL_84D3CE                      ; $84D1C0 |
  BCC CODE_84D1E3                           ; $84D1C4 |
  BRL CODE_JL_84D2BB                        ; $84D1C6 |

CODE_FL_84D1C9:
  JSL.L CODE_FL_84D5D3                      ; $84D1C9 |
  LDA.B $42                                 ; $84D1CD |
  LSR A                                     ; $84D1CF |
  BCC CODE_84D1E3                           ; $84D1D0 |
  LDA.W $1C0A                               ; $84D1D2 |
  INC A                                     ; $84D1D5 |
  AND.W #$0003                              ; $84D1D6 |
  STA.W $1C0A                               ; $84D1D9 |
  LDY.W #$0078                              ; $84D1DC |
  JSL.L CODE_FL_84D363                      ; $84D1DF |

CODE_84D1E3:
  RTL                                       ; $84D1E3 |

CODE_84D1E4:
  LDA.W $1C02                               ; $84D1E4 |
  BNE CODE_84D1FA                           ; $84D1E7 |
  LDA.W #$0000                              ; $84D1E9 |
  LDY.W #$00A0                              ; $84D1EC |
  JSL.L CODE_FL_84D363                      ; $84D1EF |
  JSL.L CODE_FL_84D5CE                      ; $84D1F3 |
  BRL CODE_FL_84D2CC                        ; $84D1F7 |

CODE_84D1FA:
  LDA.W #$000D                              ; $84D1FA |
  STA.W $1C08                               ; $84D1FD |
  JSR.W CODE_FN_84D2D0                      ; $84D200 |
  BRL CODE_JL_84D2BB                        ; $84D203 |

CODE_84D206:
  JSL.L CODE_FL_84D522                      ; $84D206 |
  JSL.L CODE_FL_84D56C                      ; $84D20A |
  LDA.L $7E7C04                             ; $84D20E |
  AND.W #$00FF                              ; $84D212 |
  CMP.W #$00FF                              ; $84D215 |
  BEQ CODE_84D242                           ; $84D218 |
  CMP.W #$0080                              ; $84D21A |
  BNE CODE_84D23C                           ; $84D21D |
  LDA.W #$3038                              ; $84D21F |
  STA.W $0B70                               ; $84D222 |
  LDA.W #$30A0                              ; $84D225 |
  STA.W $0BC0                               ; $84D228 |
  LDA.W #$00C4                              ; $84D22B |
  JSL.L CODE_FL_84C64E                      ; $84D22E |
  INC.W $1C20                               ; $84D232 |
  LDA.W #$0000                              ; $84D235 |
  STA.L $7E7C04                             ; $84D238 |

CODE_84D23C:
  JSL.L CODE_FL_84D3CE                      ; $84D23C |
  BCC CODE_84D2B7                           ; $84D240 |

CODE_84D242:
  LDA.W #$0040                              ; $84D242 |
  BRA CODE_JL_84D2B8                        ; $84D245 |

CODE_84D247:
  JSL.L CODE_FL_84D522                      ; $84D247 |
  JSL.L CODE_FL_84D56C                      ; $84D24B |
  DEC.W $1C06                               ; $84D24F |
  BNE CODE_84D2B7                           ; $84D252 |
  INC.W $1C08                               ; $84D254 |
  LDA.W $1C08                               ; $84D257 |
  CMP.W #$000E                              ; $84D25A |
  BNE CODE_84D262                           ; $84D25D |
  INC.W $0B8A                               ; $84D25F |

CODE_84D262:
  CMP.W #$000F                              ; $84D262 |
  BNE CODE_84D273                           ; $84D265 |
  INC.W $0B8A                               ; $84D267 |
  INC.W $0BDA                               ; $84D26A |
  PHA                                       ; $84D26D |
  JSL.L CODE_FL_84D5C0                      ; $84D26E |
  PLA                                       ; $84D272 |

CODE_84D273:
  CMP.W #$0010                              ; $84D273 |
  BCS CODE_JL_84D2BB                        ; $84D276 |
  LDA.W #$000B                              ; $84D278 |
  BRA CODE_FL_84D2C2                        ; $84D27B |

CODE_84D27D:
  LDA.W $1C02                               ; $84D27D |
  BNE CODE_84D28F                           ; $84D280 |
  LDA.W #$00EC                              ; $84D282 |
  JSL.L push_sound_queue                    ; $84D285 |
  JSL.L CODE_FL_80C213                      ; $84D289 |
  BRA CODE_FL_84D2CC                        ; $84D28D |

CODE_84D28F:
  LDA.W $1FA0                               ; $84D28F |
  BNE CODE_84D2B7                           ; $84D292 |
  BRA CODE_JL_84D2BB                        ; $84D294 |

CODE_84D296:
  JSL.L CODE_FL_80BE9F                      ; $84D296 |
  JSL.L CODE_FL_808230                      ; $84D29A |
  JSL.L CODE_FL_80883F                      ; $84D29E |
  LDA.W #$0000                              ; $84D2A2 |
  STA.W $1C08                               ; $84D2A5 |
  JSL.L CODE_FL_80977D                      ; $84D2A8 |
  JSL.L CODE_FL_808D75                      ; $84D2AC |
  JSL.L CODE_FL_808DBB                      ; $84D2B0 |
  INC.W $1C04                               ; $84D2B4 |

CODE_84D2B7:
  RTL                                       ; $84D2B7 |

CODE_JL_84D2B8:
  STA.W $1C06                               ; $84D2B8 |

CODE_JL_84D2BB:
  STZ.W $1C02                               ; $84D2BB |
  INC.W $1C00                               ; $84D2BE |
  RTL                                       ; $84D2C1 |

CODE_FL_84D2C2:
  STZ.W $1C02                               ; $84D2C2 |
  STA.W $1C00                               ; $84D2C5 |
  RTL                                       ; $84D2C8 |

CODE_JL_84D2C9:
  STA.W $1C06                               ; $84D2C9 |

CODE_FL_84D2CC:
  INC.W $1C02                               ; $84D2CC |
  RTL                                       ; $84D2CF |

CODE_FN_84D2D0:
  LDA.W $1C08                               ; $84D2D0 |
  ASL A                                     ; $84D2D3 |
  TAY                                       ; $84D2D4 |
  LDA.W CODE_00C259,Y                       ; $84D2D5 |
  BEQ CODE_84D2E7                           ; $84D2D8 |
  CMP.W $1C1E                               ; $84D2DA |
  BEQ CODE_84D2E7                           ; $84D2DD |
  STA.W $1C1E                               ; $84D2DF |
  TAY                                       ; $84D2E2 |
  JSL.L set_music                           ; $84D2E3 |

CODE_84D2E7:
  RTS                                       ; $84D2E7 |

CODE_FL_84D2E8:
  LDY.W $1C08                               ; $84D2E8 |
  LDA.W CODE_00C233,Y                       ; $84D2EB |
  AND.W #$00FF                              ; $84D2EE |
  BEQ CODE_84D2F9                           ; $84D2F1 |
  LDA.W $1C18                               ; $84D2F3 |
  LSR A                                     ; $84D2F6 |
  BCC CODE_84D315                           ; $84D2F7 |

CODE_84D2F9:
  STZ.W $1C1C                               ; $84D2F9 |
  JSR.W CODE_FN_84D345                      ; $84D2FC |
  LDA.W $1C22                               ; $84D2FF |
  BNE CODE_84D30B                           ; $84D302 |
  JSL.L CODE_FL_84D35D                      ; $84D304 |
  INC.W $1C22                               ; $84D308 |

CODE_84D30B:
  DEC.W $1C16                               ; $84D30B |
  BPL CODE_84D344                           ; $84D30E |
  LDA.W #$000C                              ; $84D310 |
  BRA CODE_84D33E                           ; $84D313 |

CODE_84D315:
  LDA.W $1C1C                               ; $84D315 |
  BNE CODE_84D32F                           ; $84D318 |
  INC.W $1C1C                               ; $84D31A |
  LDA.W $1C16                               ; $84D31D |
  CMP.W #$000D                              ; $84D320 |
  LDA.W #$0043                              ; $84D323 |
  BCC CODE_84D32B                           ; $84D326 |
  LDA.W #$0044                              ; $84D328 |

CODE_84D32B:
  JSL.L push_sound_queue                    ; $84D32B |

CODE_84D32F:
  JSL.L CODE_FL_84D1C9                      ; $84D32F |
  DEC.W $1C16                               ; $84D333 |
  BPL CODE_84D344                           ; $84D336 |
  STZ.W $1C22                               ; $84D338 |
  LDA.W #$0100                              ; $84D33B |

CODE_84D33E:
  STA.W $1C16                               ; $84D33E |
  INC.W $1C18                               ; $84D341 |

CODE_84D344:
  RTL                                       ; $84D344 |

CODE_FN_84D345:
  LDA.W $1C08                               ; $84D345 |
  CMP.W #$000B                              ; $84D348 |
  BNE CODE_84D35C                           ; $84D34B |
  LDA.W $1C1A                               ; $84D34D |
  BNE CODE_84D35C                           ; $84D350 |
  INC.W $1C1A                               ; $84D352 |
  LDA.W #$0084                              ; $84D355 |
  JSL.L CODE_FL_84C64E                      ; $84D358 |

CODE_84D35C:
  RTS                                       ; $84D35C |

CODE_FL_84D35D:
  LDY.W #$0000                              ; $84D35D |

CODE_FL_84D360:
  LDA.W $1C08                               ; $84D360 |

CODE_FL_84D363:
  STY.B $02                                 ; $84D363 |
  STA.B $00                                 ; $84D365 |
  ASL A                                     ; $84D367 |
  ASL A                                     ; $84D368 |
  CLC                                       ; $84D369 |
  ADC.B $00                                 ; $84D36A |
  ASL A                                     ; $84D36C |
  CLC                                       ; $84D36D |
  ADC.B $02                                 ; $84D36E |
  TAY                                       ; $84D370 |
  PHX                                       ; $84D371 |
  LDA.W #$0013                              ; $84D372 |
  STA.W $1FC2                               ; $84D375 |
  PHY                                       ; $84D378 |
  LDA.W CODE_00C2CD,Y                       ; $84D379 |
  AND.W #$00FF                              ; $84D37C |
  STA.B $00                                 ; $84D37F |
  LDA.W LOOSE_OP_00C2CE,Y                   ; $84D381 |
  STA.B $02                                 ; $84D384 |
  LDA.W LOOSE_OP_00C2CB,Y                   ; $84D386 |
  LDY.B $02                                 ; $84D389 |
  LDX.W #$0300                              ; $84D38B |
  JSL.L CODE_FL_809671                      ; $84D38E |
  PLY                                       ; $84D392 |
  LDA.W CODE_00C2D2,Y                       ; $84D393 |
  BEQ CODE_84D3AE                           ; $84D396 |
  AND.W #$00FF                              ; $84D398 |
  STA.B $00                                 ; $84D39B |
  LDA.W LOOSE_OP_00C2D3,Y                   ; $84D39D |
  STA.B $02                                 ; $84D3A0 |
  LDA.W LOOSE_OP_00C2D0,Y                   ; $84D3A2 |
  LDY.B $02                                 ; $84D3A5 |
  LDX.W #$0400                              ; $84D3A7 |
  JSL.L CODE_FL_809671                      ; $84D3AA |

CODE_84D3AE:
  PLX                                       ; $84D3AE |
  RTL                                       ; $84D3AF |

CODE_FL_84D3B0:
  LDA.W $1C08                               ; $84D3B0 |
  ASL A                                     ; $84D3B3 |
  TAY                                       ; $84D3B4 |
  LDA.W LOOSE_OP_00C2C5,Y                   ; $84D3B5 |
  BRA CODE_84D3D6                           ; $84D3B8 |

CODE_FL_84D3BA:
  LDA.W $1C08                               ; $84D3BA |
  ASL A                                     ; $84D3BD |
  TAY                                       ; $84D3BE |
  LDA.W CODE_00C2B5,Y                       ; $84D3BF |
  BRA CODE_84D3D6                           ; $84D3C2 |

CODE_FL_84D3C4:
  LDA.W $1C08                               ; $84D3C4 |
  ASL A                                     ; $84D3C7 |
  TAY                                       ; $84D3C8 |
  LDA.W CODE_00C2AF,Y                       ; $84D3C9 |
  BRA CODE_84D3D6                           ; $84D3CC |

CODE_FL_84D3CE:
  LDA.W $1C08                               ; $84D3CE |
  ASL A                                     ; $84D3D1 |
  TAY                                       ; $84D3D2 |
  LDA.W CODE_00C28F,Y                       ; $84D3D3 |

CODE_84D3D6:
  JSL.L CODE_FL_809929                      ; $84D3D6 |
  RTL                                       ; $84D3DA |

CODE_FL_84D3DB:
  JSL.L CODE_FL_84D3EB                      ; $84D3DB |
  JSL.L CODE_FL_84D4B6                      ; $84D3DF |
  LDY.W #$0002                              ; $84D3E3 |
  JSL.L CODE_FL_80972B                      ; $84D3E6 |
  RTL                                       ; $84D3EA |

CODE_FL_84D3EB:
  TDC                                       ; $84D3EB |
  STA.L $7EDB82                             ; $84D3EC |
  STA.L $7EDBC2                             ; $84D3F0 |
  REP #$30                                  ; $84D3F4 |
  PHB                                       ; $84D3F6 |
  LDA.W #$0000                              ; $84D3F7 |
  STA.L $7EDC02                             ; $84D3FA |
  LDA.W #$003D                              ; $84D3FE |
  LDX.W #$DC03                              ; $84D401 |
  TXY                                       ; $84D404 |
  INY                                       ; $84D405 |
  MVN $7E,$7E                               ; $84D406 |
  PLB                                       ; $84D409 |
  RTL                                       ; $84D40A |

CODE_FL_84D40B:
  LDA.W #$0001                              ; $84D40B |
  STA.W $1C0C                               ; $84D40E |
  LDA.W #$000C                              ; $84D411 |
  STA.W $1C0E                               ; $84D414 |
  STA.W $1C10                               ; $84D417 |
  TDC                                       ; $84D41A |
  STA.W $1C12                               ; $84D41B |
  RTL                                       ; $84D41E |

CODE_FL_84D41F:
  PHX                                       ; $84D41F |
  DEC.W $1C10                               ; $84D420 |
  BNE CODE_84D43D                           ; $84D423 |
  LDA.W $1C0E                               ; $84D425 |
  STA.W $1C10                               ; $84D428 |
  LDA.W $1C0C                               ; $84D42B |
  CLC                                       ; $84D42E |
  ADC.W #$0001                              ; $84D42F |
  CMP.W #$0040                              ; $84D432 |
  BCC CODE_84D43A                           ; $84D435 |
  LDA.W #$0040                              ; $84D437 |

CODE_84D43A:
  STA.W $1C0C                               ; $84D43A |

CODE_84D43D:
  LDA.W $1C0C                               ; $84D43D |
  STA.B $00                                 ; $84D440 |
  LDA.W $1C12                               ; $84D442 |
  CLC                                       ; $84D445 |
  ADC.W #$0002                              ; $84D446 |
  AND.W #$001F                              ; $84D449 |
  STA.W $1C12                               ; $84D44C |
  ASL A                                     ; $84D44F |
  ASL A                                     ; $84D450 |
  ASL A                                     ; $84D451 |
  ASL A                                     ; $84D452 |
  ASL A                                     ; $84D453 |
  TAX                                       ; $84D454 |
  STZ.B $02                                 ; $84D455 |
  JML.L CODE_JL_828588                      ; $84D457 |

CODE_FL_84D45B:
  LDA.W #$0028                              ; $84D45B |
  STA.W $1C14                               ; $84D45E |
  PHB                                       ; $84D461 |
  PEA.W $7E00                               ; $84D462 |
  PLB                                       ; $84D465 |
  PLB                                       ; $84D466 |
  SEP #$20                                  ; $84D467 |
  LDA.B #$16                                ; $84D469 |
  STA.W LOOSE_OP_00DB83                     ; $84D46B |
  STA.W CODE_00DB87                         ; $84D46E |
  LDA.B #$17                                ; $84D471 |
  STA.W LOOSE_OP_00DB85                     ; $84D473 |
  LDA.B #$01                                ; $84D476 |
  STA.W CODE_00DB86                         ; $84D478 |
  STZ.W LOOSE_OP_00DB88                     ; $84D47B |
  BRA CODE_84D488                           ; $84D47E |

CODE_FL_84D480:
  PHB                                       ; $84D480 |
  PEA.W $7E00                               ; $84D481 |
  PLB                                       ; $84D484 |
  PLB                                       ; $84D485 |
  SEP #$20                                  ; $84D486 |

CODE_84D488:
  LDA.B #$28                                ; $84D488 |
  SEC                                       ; $84D48A |
  SBC.L $001C14                             ; $84D48B |
  CLC                                       ; $84D48F |
  ADC.B #$18                                ; $84D490 |
  STA.W CODE_00DB82                         ; $84D492 |
  LDA.L $001C14                             ; $84D495 |
  ASL A                                     ; $84D499 |
  STA.W CODE_00DB84                         ; $84D49A |
  LDA.L $001C14                             ; $84D49D |
  BNE CODE_84D4B0                           ; $84D4A1 |
  LDA.B #$7F                                ; $84D4A3 |
  STA.W CODE_00DB82                         ; $84D4A5 |
  STZ.W CODE_00DB84                         ; $84D4A8 |
  LDA.B #$16                                ; $84D4AB |
  STA.W $1FBE                               ; $84D4AD |

CODE_84D4B0:
  REP #$20                                  ; $84D4B0 |
  PLB                                       ; $84D4B2 |
  RTL                                       ; $84D4B3 |

CODE_FL_84D4B4:
  BNE CODE_84D4C0                           ; $84D4B4 |

CODE_FL_84D4B6:
  TDC                                       ; $84D4B6 |
  STA.L $7EDAC2                             ; $84D4B7 |
  JSL.L CODE_FL_80C2DC                      ; $84D4BB |
  RTL                                       ; $84D4BF |

CODE_84D4C0:
  PHB                                       ; $84D4C0 |
  PEA.W $7E00                               ; $84D4C1 |
  PLB                                       ; $84D4C4 |
  PLB                                       ; $84D4C5 |
  SEP #$20                                  ; $84D4C6 |
  LDA.B #$38                                ; $84D4C8 |
  STA.W CODE_00DAC2                         ; $84D4CA |
  LDA.B #$A0                                ; $84D4CD |
  STA.W CODE_00DAC7                         ; $84D4CF |
  LDA.B #$01                                ; $84D4D2 |
  STA.W CODE_00DB48                         ; $84D4D4 |
  REP #$20                                  ; $84D4D7 |
  LDA.W #$5C5C                              ; $84D4D9 |
  STA.W LOOSE_OP_00DAC3                     ; $84D4DC |
  STA.W LOOSE_OP_00DB49                     ; $84D4DF |
  LDY.W #$0020                              ; $84D4E2 |
  LDX.W #$0000                              ; $84D4E5 |

CODE_84D4E8:
  STA.W CODE_00DAC8,X                       ; $84D4E8 |
  INX                                       ; $84D4EB |
  INX                                       ; $84D4EC |
  INX                                       ; $84D4ED |
  INX                                       ; $84D4EE |
  DEY                                       ; $84D4EF |
  BNE CODE_84D4E8                           ; $84D4F0 |
  LDA.L DATA8_95FB3A                        ; $84D4F2 |
  STA.W LOOSE_OP_00DAC5                     ; $84D4F6 |
  LDA.L DATA8_95FB58                        ; $84D4F9 |
  STA.W CODE_00DB4B                         ; $84D4FD |
  LDX.W #$001E                              ; $84D500 |
  LDY.W #$0078                              ; $84D503 |

CODE_84D506:
  LDA.L DATA8_95FB3A,X                      ; $84D506 |
  STA.W LOOSE_OP_00DACA,Y                   ; $84D50A |
  STA.W LOOSE_OP_00DACE,Y                   ; $84D50D |
  TYA                                       ; $84D510 |
  SEC                                       ; $84D511 |
  SBC.W #$0008                              ; $84D512 |
  TAY                                       ; $84D515 |
  DEX                                       ; $84D516 |
  DEX                                       ; $84D517 |
  BPL CODE_84D506                           ; $84D518 |
  LDA.W #$0000                              ; $84D51A |
  STA.W CODE_00DB4D                         ; $84D51D |
  PLB                                       ; $84D520 |
  RTL                                       ; $84D521 |

CODE_FL_84D522:
  LDX.W #$0B70                              ; $84D522 |
  LDA.B $1A,X                               ; $84D525 |
  PHX                                       ; $84D527 |
  ASL A                                     ; $84D528 |
  TAX                                       ; $84D529 |
  LDA.L PTR16_84D534,X                      ; $84D52A |
  PLX                                       ; $84D52E |
  STA.B $00                                 ; $84D52F |
  JMP.W ($0000)                             ; $84D531 |

PTR16_84D534:
  dw CODE_84D540                            ; $84D534 |
  dw CODE_84D56B                            ; $84D536 |
  dw CODE_84D54C                            ; $84D538 |
  dw CODE_84D56B                            ; $84D53A |
  dw CODE_84D563                            ; $84D53C |
  dw CODE_84D56B                            ; $84D53E |

CODE_84D540:
  LDY.W #$0001                              ; $84D540 |
  LDA.W #$3000                              ; $84D543 |
  JSL.L CODE_FL_84D5DC                      ; $84D546 |
  BRA CODE_84D596                           ; $84D54A |

CODE_84D54C:
  LDA.W #$0004                              ; $84D54C |
  LDY.W #$0060                              ; $84D54F |

CODE_84D552:
  STA.B $00                                 ; $84D552 |
  STY.B $02                                 ; $84D554 |
  LDA.B $09,X                               ; $84D556 |
  SEC                                       ; $84D558 |
  SBC.B $00                                 ; $84D559 |
  STA.B $09,X                               ; $84D55B |
  CMP.B $02                                 ; $84D55D |
  BCS CODE_84D56B                           ; $84D55F |
  BRA CODE_84D596                           ; $84D561 |

CODE_84D563:
  LDA.W #$0001                              ; $84D563 |
  LDY.W #$0050                              ; $84D566 |
  BRA CODE_84D552                           ; $84D569 |

CODE_84D56B:
  RTL                                       ; $84D56B |

CODE_FL_84D56C:
  LDX.W #$0BC0                              ; $84D56C |
  LDA.B $1A,X                               ; $84D56F |
  PHX                                       ; $84D571 |
  ASL A                                     ; $84D572 |
  TAX                                       ; $84D573 |
  LDA.L PTR16_84D57E,X                      ; $84D574 |
  PLX                                       ; $84D578 |
  STA.B $00                                 ; $84D579 |
  JMP.W ($0000)                             ; $84D57B |

PTR16_84D57E:
  dw CODE_84D588                            ; $84D57E |
  dw CODE_84D599                            ; $84D580 |
  dw CODE_84D5BF                            ; $84D582 |
  dw CODE_84D5B0                            ; $84D584 |
  dw CODE_84D5BF                            ; $84D586 |

CODE_84D588:
  LDY.W #$0002                              ; $84D588 |
  LDA.W #$3072                              ; $84D58B |
  JSL.L CODE_FL_84D5DC                      ; $84D58E |
  LDA.B $09,X                               ; $84D592 |
  STA.B $10,X                               ; $84D594 |

CODE_84D596:
  INC.B $1A,X                               ; $84D596 |
  RTL                                       ; $84D598 |

CODE_84D599:
  INC.B $12,X                               ; $84D599 |
  LDA.B $12,X                               ; $84D59B |
  AND.W #$0001                              ; $84D59D |
  CLC                                       ; $84D5A0 |
  ADC.B $10,X                               ; $84D5A1 |
  STA.B $09,X                               ; $84D5A3 |
  LDA.B $0D,X                               ; $84D5A5 |
  DEC A                                     ; $84D5A7 |
  STA.B $0D,X                               ; $84D5A8 |
  CMP.W #$0068                              ; $84D5AA |
  BCC CODE_84D596                           ; $84D5AD |
  RTL                                       ; $84D5AF |

CODE_84D5B0:
  LDA.B $09,X                               ; $84D5B0 |
  CLC                                       ; $84D5B2 |
  ADC.W #$0001                              ; $84D5B3 |
  STA.B $09,X                               ; $84D5B6 |
  CMP.W #$00B0                              ; $84D5B8 |
  BCC CODE_84D5BF                           ; $84D5BB |
  BRA CODE_84D596                           ; $84D5BD |

CODE_84D5BF:
  RTL                                       ; $84D5BF |

CODE_FL_84D5C0:
  LDX.W #$0C10                              ; $84D5C0 |
  LDY.W #$0003                              ; $84D5C3 |
  LDA.W #$30D8                              ; $84D5C6 |
  JMP.W CODE_FL_84D5DC                      ; $84D5C9 |

CODE_FL_84D5CC:
  BNE CODE_FL_84D5D3                        ; $84D5CC |

CODE_FL_84D5CE:
  LDA.W #$0000                              ; $84D5CE |
  BRA CODE_84D5D6                           ; $84D5D1 |

CODE_FL_84D5D3:
  LDA.W #$30EC                              ; $84D5D3 |

CODE_84D5D6:
  LDX.W #$0B70                              ; $84D5D6 |
  LDY.W #$0000                              ; $84D5D9 |

CODE_FL_84D5DC:
  STY.B $18,X                               ; $84D5DC |
  STA.B $00,X                               ; $84D5DE |
  LDA.B $18,X                               ; $84D5E0 |
  ASL A                                     ; $84D5E2 |
  TAY                                       ; $84D5E3 |
  LDA.W LOOSE_OP_00C20B,Y                   ; $84D5E4 |
  STA.B $0D,X                               ; $84D5E7 |
  LDA.W LOOSE_OP_00C219,Y                   ; $84D5E9 |
  STA.B $09,X                               ; $84D5EC |
  LDA.W #$1090                              ; $84D5EE |
  STA.B $04,X                               ; $84D5F1 |
  LDA.W #$0000                              ; $84D5F3 |
  STA.B $02,X                               ; $84D5F6 |
  STA.B $06,X                               ; $84D5F8 |
  RTL                                       ; $84D5FA |

CODE_FL_84D5FB:
  LDX.W #$0B70                              ; $84D5FB |
  LDY.W #$0004                              ; $84D5FE |
  LDA.W #$0000                              ; $84D601 |
  JMP.W CODE_FL_84D5DC                      ; $84D604 |

CODE_FL_84D607:
  LDY.W #$0005                              ; $84D607 |
  LDA.W #$3000                              ; $84D60A |
  JMP.W CODE_FL_84D5DC                      ; $84D60D |

CODE_FL_84D610:
  LDY.W #$0006                              ; $84D610 |
  LDA.W #$3012                              ; $84D613 |
  JMP.W CODE_FL_84D5DC                      ; $84D616 |

CODE_FL_84D619:
  PHB                                       ; $84D619 |
  LDA.W #$0087                              ; $84D61A |
  XBA                                       ; $84D61D |
  PHA                                       ; $84D61E |
  PLB                                       ; $84D61F |
  PLB                                       ; $84D620 |
  JSL.L CODE_FL_84D62B                      ; $84D621 |
  PLB                                       ; $84D625 |
  LDA.W $1C04                               ; $84D626 |
  LSR A                                     ; $84D629 |
  RTL                                       ; $84D62A |

CODE_FL_84D62B:
  LDA.W $1C00                               ; $84D62B |
  PHX                                       ; $84D62E |
  ASL A                                     ; $84D62F |
  TAX                                       ; $84D630 |
  LDA.L PTR16_84D63B,X                      ; $84D631 |
  PLX                                       ; $84D635 |
  STA.B $00                                 ; $84D636 |
  JMP.W ($0000)                             ; $84D638 |

PTR16_84D63B:
  dw CODE_84D649                            ; $84D63B |
  dw CODE_84D6B9                            ; $84D63D |
  dw CODE_84D6CE                            ; $84D63F |
  dw CODE_84D6F8                            ; $84D641 |
  dw CODE_84D72B                            ; $84D643 |
  dw CODE_84D745                            ; $84D645 |
  dw CODE_84D757                            ; $84D647 |

CODE_84D649:
  LDA.W $1C02                               ; $84D649 |
  BNE CODE_84D670                           ; $84D64C |
  LDA.W #$0000                              ; $84D64E |
  STA.B $5C                                 ; $84D651 |
  JSL.L CODE_FL_80887C                      ; $84D653 |
  REP #$30                                  ; $84D657 |
  PHB                                       ; $84D659 |
  LDA.W #$0000                              ; $84D65A |
  STA.L $001C00                             ; $84D65D |
  LDA.W #$00FD                              ; $84D661 |
  LDX.W #$1C01                              ; $84D664 |
  TXY                                       ; $84D667 |
  INY                                       ; $84D668 |
  MVN $00,$00                               ; $84D669 |
  PLB                                       ; $84D66C |
  BRL CODE_JL_84D78D                        ; $84D66D |

CODE_84D670:
  JSL.L CODE_FL_80BEC7                      ; $84D670 |
  JSL.L CODE_FL_808BC2                      ; $84D674 |
  LDX.W #DATA_88811E                        ; $84D678 |
  JSL.L sound_transfer_blocks               ; $84D67B |
  LDX.W #DATA_888135                        ; $84D67F |
  JSL.L sound_transfer_blocks               ; $84D682 |
  REP #$30                                  ; $84D686 |
  PHB                                       ; $84D688 |
  LDA.W #$0000                              ; $84D689 |
  STA.L $7F1800                             ; $84D68C |
  LDA.W #$07FD                              ; $84D690 |
  LDX.W #$1801                              ; $84D693 |
  TXY                                       ; $84D696 |
  INY                                       ; $84D697 |
  MVN $7F,$7F                               ; $84D698 |
  PLB                                       ; $84D69B |
  LDY.W #$B983                              ; $84D69C |
  JSL.L CODE_FL_80C27C                      ; $84D69F |
  JSL.L CODE_FL_808D75                      ; $84D6A3 |
  LDY.W #$81FE                              ; $84D6A7 |
  JSL.L CODE_FL_808DBE                      ; $84D6AA |
  JSL.L CODE_FL_84D7A1                      ; $84D6AE |
  JSL.L CODE_FL_808230                      ; $84D6B2 |
  BRL CODE_JL_84D77C                        ; $84D6B6 |

CODE_84D6B9:
  LDA.W $1F30                               ; $84D6B9 |
  BNE CODE_84D72A                           ; $84D6BC |
  TDC                                       ; $84D6BE |
  STA.L $7E2C22                             ; $84D6BF |
  STA.L $7E2C0A                             ; $84D6C3 |
  JSL.L CODE_FL_80C2DC                      ; $84D6C7 |
  BRL CODE_JL_84D77C                        ; $84D6CB |

CODE_84D6CE:
  JSL.L CODE_FL_84D3C4                      ; $84D6CE |
  LDA.L $7E7C04                             ; $84D6D2 |
  AND.W #$000F                              ; $84D6D6 |
  CMP.W #$0001                              ; $84D6D9 |
  BNE CODE_84D72A                           ; $84D6DC |
  JSR.W CODE_FN_84D791                      ; $84D6DE |
  LDY.W #$00AA                              ; $84D6E1 |
  JSL.L CODE_FL_84D360                      ; $84D6E4 |
  LDY.W $1C08                               ; $84D6E8 |
  LDA.W LOOSE_OP_00C24B,Y                   ; $84D6EB |
  AND.W #$00FF                              ; $84D6EE |
  JSL.L CODE_FL_84D7AD                      ; $84D6F1 |
  BRL CODE_JL_84D77C                        ; $84D6F5 |

CODE_84D6F8:
  LDA.W $1C08                               ; $84D6F8 |
  CMP.W #$0001                              ; $84D6FB |
  BNE CODE_84D712                           ; $84D6FE |
  DEC.W $1C06                               ; $84D700 |
  BPL CODE_84D712                           ; $84D703 |
  LDA.W #$0014                              ; $84D705 |
  STA.W $1C06                               ; $84D708 |
  LDA.W #$0021                              ; $84D70B |
  JSL.L push_sound_queue                    ; $84D70E |

CODE_84D712:
  LDA.L $7E7C04                             ; $84D712 |
  AND.W #$00FF                              ; $84D716 |
  CMP.W #$00FF                              ; $84D719 |
  BEQ CODE_84D724                           ; $84D71C |
  JSL.L CODE_FL_84D3C4                      ; $84D71E |
  BCC CODE_84D72A                           ; $84D722 |

CODE_84D724:
  LDA.W #$0001                              ; $84D724 |
  BRL CODE_JL_84D779                        ; $84D727 |

CODE_84D72A:
  RTL                                       ; $84D72A |

CODE_84D72B:
  LDA.W #$0003                              ; $84D72B |
  LDY.W #$0002                              ; $84D72E |
  DEC.W $1C06                               ; $84D731 |
  BNE CODE_84D72A                           ; $84D734 |
  STA.B $00                                 ; $84D736 |
  INC.W $1C08                               ; $84D738 |
  LDA.W $1C08                               ; $84D73B |
  CMP.B $00                                 ; $84D73E |
  BCS CODE_JL_84D77C                        ; $84D740 |
  TYA                                       ; $84D742 |
  BRA CODE_84D783                           ; $84D743 |

CODE_84D745:
  LDA.W $1C02                               ; $84D745 |
  BNE CODE_84D750                           ; $84D748 |
  JSL.L CODE_FL_80C213                      ; $84D74A |
  BRA CODE_JL_84D78D                        ; $84D74E |

CODE_84D750:
  LDA.W $1FA0                               ; $84D750 |
  BNE CODE_84D778                           ; $84D753 |
  BRA CODE_JL_84D77C                        ; $84D755 |

CODE_84D757:
  JSL.L CODE_FL_80BEC7                      ; $84D757 |
  JSL.L CODE_FL_808230                      ; $84D75B |
  JSL.L CODE_FL_80887C                      ; $84D75F |
  LDA.W #$0000                              ; $84D763 |
  STA.W $1C08                               ; $84D766 |
  JSL.L CODE_FL_80977D                      ; $84D769 |
  JSL.L CODE_FL_808D75                      ; $84D76D |
  JSL.L CODE_FL_808DBB                      ; $84D771 |
  INC.W $1C04                               ; $84D775 |

CODE_84D778:
  RTL                                       ; $84D778 |

CODE_JL_84D779:
  STA.W $1C06                               ; $84D779 |

CODE_JL_84D77C:
  STZ.W $1C02                               ; $84D77C |
  INC.W $1C00                               ; $84D77F |
  RTL                                       ; $84D782 |

CODE_84D783:
  STZ.W $1C02                               ; $84D783 |
  STA.W $1C00                               ; $84D786 |
  RTL                                       ; $84D789 |

  STA.W $1C06                               ; $84D78A |

CODE_JL_84D78D:
  INC.W $1C02                               ; $84D78D |
  RTL                                       ; $84D790 |

CODE_FN_84D791:
  LDA.W $1C08                               ; $84D791 |
  ASL A                                     ; $84D794 |
  TAY                                       ; $84D795 |
  LDA.W CODE_00C289,Y                       ; $84D796 |
  BEQ CODE_84D7A0                           ; $84D799 |
  TAY                                       ; $84D79B |
  JSL.L set_music                           ; $84D79C |

CODE_84D7A0:
  RTS                                       ; $84D7A0 |

CODE_FL_84D7A1:
  JSL.L CODE_FL_84D7AF                      ; $84D7A1 |
  LDY.W #$8000                              ; $84D7A5 |
  JSL.L CODE_FL_80975C                      ; $84D7A8 |
  RTL                                       ; $84D7AC |

CODE_FL_84D7AD:
  BNE CODE_84D7B9                           ; $84D7AD |

CODE_FL_84D7AF:
  TDC                                       ; $84D7AF |
  STA.L $7EDAC2                             ; $84D7B0 |
  JSL.L CODE_FL_80C2DC                      ; $84D7B4 |
  RTL                                       ; $84D7B8 |

CODE_84D7B9:
  PHB                                       ; $84D7B9 |
  PEA.W $7E00                               ; $84D7BA |
  PLB                                       ; $84D7BD |
  PLB                                       ; $84D7BE |
  LDY.W #$0000                              ; $84D7BF |
  TYX                                       ; $84D7C2 |

CODE_84D7C3:
  SEP #$20                                  ; $84D7C3 |
  LDA.L DATA8_87C401,X                      ; $84D7C5 |
  STA.W CODE_00DAC2,Y                       ; $84D7C9 |
  REP #$20                                  ; $84D7CC |
  BEQ CODE_84D7E7                           ; $84D7CE |
  LDA.W #$0505                              ; $84D7D0 |
  STA.W LOOSE_OP_00DAC3,Y                   ; $84D7D3 |
  LDA.L DATA8_95FC12,X                      ; $84D7D6 |
  STA.W LOOSE_OP_00DAC5,Y                   ; $84D7DA |
  TYA                                       ; $84D7DD |
  CLC                                       ; $84D7DE |
  ADC.W #$0005                              ; $84D7DF |
  TAY                                       ; $84D7E2 |
  INX                                       ; $84D7E3 |
  INX                                       ; $84D7E4 |
  BRA CODE_84D7C3                           ; $84D7E5 |

CODE_84D7E7:
  PLB                                       ; $84D7E7 |
  RTL                                       ; $84D7E8 |

CODE_FL_84D7E9:
  PHB                                       ; $84D7E9 |
  LDA.W #$0087                              ; $84D7EA |
  XBA                                       ; $84D7ED |
  PHA                                       ; $84D7EE |
  PLB                                       ; $84D7EF |
  PLB                                       ; $84D7F0 |
  JSL.L CODE_FL_84D7FB                      ; $84D7F1 |
  PLB                                       ; $84D7F5 |
  LDA.W $1C04                               ; $84D7F6 |
  LSR A                                     ; $84D7F9 |
  RTL                                       ; $84D7FA |

CODE_FL_84D7FB:
  LDA.W $1C00                               ; $84D7FB |
  PHX                                       ; $84D7FE |
  ASL A                                     ; $84D7FF |
  TAX                                       ; $84D800 |
  LDA.L PTR16_84D80B,X                      ; $84D801 |
  PLX                                       ; $84D805 |
  STA.B $00                                 ; $84D806 |
  JMP.W ($0000)                             ; $84D808 |

PTR16_84D80B:
  dw CODE_84D83D                            ; $84D80B |
  dw CODE_84D8B5                            ; $84D80D |
  dw CODE_84D8C9                            ; $84D80F |
  dw CODE_84D90C                            ; $84D811 |
  dw CODE_84D973                            ; $84D813 |
  dw CODE_84D991                            ; $84D815 |
  dw CODE_84D9CF                            ; $84D817 |
  dw CODE_84DA2B                            ; $84D819 |
  dw CODE_84D9E9                            ; $84D81B |
  dw CODE_84D8B5                            ; $84D81D |
  dw CODE_84D8C9                            ; $84D81F |
  dw CODE_84D90C                            ; $84D821 |
  dw CODE_84D96B                            ; $84D823 |
  dw CODE_84DA05                            ; $84D825 |
  dw CODE_84D8C9                            ; $84D827 |
  dw CODE_84D90C                            ; $84D829 |
  dw CODE_84D963                            ; $84D82B |
  dw CODE_84DA2B                            ; $84D82D |
  dw CODE_84DA1C                            ; $84D82F |
  dw CODE_84D8C9                            ; $84D831 |
  dw CODE_84D90C                            ; $84D833 |
  dw CODE_84D95B                            ; $84D835 |
  dw CODE_84DA2A                            ; $84D837 |
  dw CODE_84DA2B                            ; $84D839 |
  dw CODE_84DA44                            ; $84D83B |

CODE_84D83D:
  LDA.W $1C02                               ; $84D83D |
  BNE CODE_84D868                           ; $84D840 |
  LDA.W #$0000                              ; $84D842 |
  STA.B $5C                                 ; $84D845 |
  JSL.L CODE_FL_80887C                      ; $84D847 |
  REP #$30                                  ; $84D84B |
  PHB                                       ; $84D84D |
  LDA.W #$0000                              ; $84D84E |
  STA.L $001C00                             ; $84D851 |
  LDA.W #$00FD                              ; $84D855 |
  LDX.W #$1C01                              ; $84D858 |
  TXY                                       ; $84D85B |
  INY                                       ; $84D85C |
  MVN $00,$00                               ; $84D85D |
  PLB                                       ; $84D860 |
  JSL.L CODE_FL_80977D                      ; $84D861 |
  BRL CODE_JL_84DA7A                        ; $84D865 |

CODE_84D868:
  JSL.L CODE_FL_80BEC7                      ; $84D868 |
  JSL.L CODE_FL_808BC2                      ; $84D86C |
  LDX.W #DATA_88814C                        ; $84D870 |
  JSL.L sound_transfer_blocks               ; $84D873 |
  LDX.W #DATA_888173                        ; $84D877 |
  JSL.L sound_transfer_blocks               ; $84D87A |
  REP #$30                                  ; $84D87E |
  PHB                                       ; $84D880 |
  LDA.W #$0000                              ; $84D881 |
  STA.L $7F2400                             ; $84D884 |
  LDA.W #$07FD                              ; $84D888 |
  LDX.W #$2401                              ; $84D88B |
  TXY                                       ; $84D88E |
  INY                                       ; $84D88F |
  MVN $7F,$7F                               ; $84D890 |
  PLB                                       ; $84D893 |
  LDY.W #$B98D                              ; $84D894 |
  JSL.L CODE_FL_80C27C                      ; $84D897 |
  JSL.L CODE_FL_808D75                      ; $84D89B |
  LDY.W #$81FE                              ; $84D89F |
  JSL.L CODE_FL_808DBE                      ; $84D8A2 |
  JSL.L CODE_FL_84DA8E                      ; $84D8A6 |
  JSL.L CODE_FL_84D5FB                      ; $84D8AA |
  JSL.L CODE_FL_808230                      ; $84D8AE |
  BRL CODE_JL_84DA69                        ; $84D8B2 |

CODE_84D8B5:
  LDA.W $1F30                               ; $84D8B5 |
  BEQ CODE_84D8BD                           ; $84D8B8 |
  JMP.W CODE_JP_84D95A                      ; $84D8BA |

CODE_84D8BD:
  TDC                                       ; $84D8BD |
  STA.L $7E2C22                             ; $84D8BE |
  JSL.L CODE_FL_80C2DC                      ; $84D8C2 |
  BRL CODE_JL_84DA69                        ; $84D8C6 |

CODE_84D8C9:
  JSL.L CODE_FL_84D3BA                      ; $84D8C9 |
  JSL.L CODE_FL_84DB0C                      ; $84D8CD |
  LDA.L $7E7C04                             ; $84D8D1 |
  CMP.W #$00A0                              ; $84D8D5 |
  BNE CODE_84D8E6                           ; $84D8D8 |
  LDA.W #$00EC                              ; $84D8DA |
  JSL.L push_sound_queue                    ; $84D8DD |
  TDC                                       ; $84D8E1 |
  STA.L $7E7C04                             ; $84D8E2 |

CODE_84D8E6:
  LDA.L $7E7C04                             ; $84D8E6 |
  AND.W #$000F                              ; $84D8EA |
  CMP.W #$0001                              ; $84D8ED |
  BNE CODE_JP_84D95A                        ; $84D8F0 |
  JSR.W CODE_FN_84DA7E                      ; $84D8F2 |
  LDY.W #$00C8                              ; $84D8F5 |
  JSL.L CODE_FL_84D360                      ; $84D8F8 |
  LDY.W $1C08                               ; $84D8FC |
  LDA.W LOOSE_OP_00C24E,Y                   ; $84D8FF |
  AND.W #$00FF                              ; $84D902 |
  JSL.L CODE_FL_84DA9A                      ; $84D905 |
  BRL CODE_JL_84DA69                        ; $84D909 |

CODE_84D90C:
  LDA.W $1C06                               ; $84D90C |
  BEQ CODE_84D91E                           ; $84D90F |
  DEC A                                     ; $84D911 |
  STA.W $1C06                               ; $84D912 |
  BNE CODE_84D91E                           ; $84D915 |
  LDA.W #$00E8                              ; $84D917 |
  JSL.L CODE_FL_84C64E                      ; $84D91A |

CODE_84D91E:
  LDA.L $7E7C04                             ; $84D91E |
  AND.W #$00FF                              ; $84D922 |
  CMP.W #$00FF                              ; $84D925 |
  BEQ CODE_84D954                           ; $84D928 |
  CMP.W #$0080                              ; $84D92A |
  BNE CODE_84D937                           ; $84D92D |
  LDA.W #$001F                              ; $84D92F |
  STA.W $1C06                               ; $84D932 |
  BRA CODE_84D943                           ; $84D935 |

CODE_84D937:
  CMP.W #$0090                              ; $84D937 |
  BNE CODE_84D948                           ; $84D93A |
  LDY.W #$0168                              ; $84D93C |
  JSL.L set_music                           ; $84D93F |

CODE_84D943:
  TDC                                       ; $84D943 |
  STA.L $7E7C04                             ; $84D944 |

CODE_84D948:
  JSL.L CODE_FL_84D3BA                      ; $84D948 |
  PHP                                       ; $84D94C |
  JSL.L CODE_FL_84DB0C                      ; $84D94D |
  PLP                                       ; $84D951 |
  BCC CODE_JP_84D95A                        ; $84D952 |

CODE_84D954:
  LDA.W #$0001                              ; $84D954 |
  BRL CODE_JL_84DA66                        ; $84D957 |

CODE_JP_84D95A:
  RTL                                       ; $84D95A |

CODE_84D95B:
  LDA.W #$0008                              ; $84D95B |
  LDY.W #$0013                              ; $84D95E |
  BRA CODE_84D979                           ; $84D961 |

CODE_84D963:
  LDA.W #$0007                              ; $84D963 |
  LDY.W #$000E                              ; $84D966 |
  BRA CODE_84D979                           ; $84D969 |

CODE_84D96B:
  LDA.W #$0003                              ; $84D96B |
  LDY.W #$000A                              ; $84D96E |
  BRA CODE_84D979                           ; $84D971 |

CODE_84D973:
  LDA.W #$0002                              ; $84D973 |
  LDY.W #$0002                              ; $84D976 |

CODE_84D979:
  DEC.W $1C06                               ; $84D979 |
  BNE CODE_JP_84D95A                        ; $84D97C |
  STA.B $00                                 ; $84D97E |
  INC.W $1C08                               ; $84D980 |
  LDA.W $1C08                               ; $84D983 |
  CMP.B $00                                 ; $84D986 |
  BCC CODE_84D98D                           ; $84D988 |
  JMP.W CODE_JL_84DA69                      ; $84D98A |

CODE_84D98D:
  TYA                                       ; $84D98D |
  BRL CODE_JL_84DA70                        ; $84D98E |

CODE_84D991:
  LDA.W $1C02                               ; $84D991 |
  PHX                                       ; $84D994 |
  ASL A                                     ; $84D995 |
  TAX                                       ; $84D996 |
  LDA.L PTR16_84D9A1,X                      ; $84D997 |
  PLX                                       ; $84D99B |
  STA.B $00                                 ; $84D99C |
  JMP.W ($0000)                             ; $84D99E |

PTR16_84D9A1:
  dw CODE_84D9A9                            ; $84D9A1 |
  dw CODE_84D9B3                            ; $84D9A3 |
  dw CODE_84D9BB                            ; $84D9A5 |
  dw CODE_84D9C7                            ; $84D9A7 |

CODE_84D9A9:
  JSL.L CODE_FL_92FE36                      ; $84D9A9 |
  LDA.W #$0008                              ; $84D9AD |
  BRL CODE_JL_84DA77                        ; $84D9B0 |

CODE_84D9B3:
  DEC.W $1C06                               ; $84D9B3 |
  BNE CODE_JP_84D95A                        ; $84D9B6 |
  BRL CODE_JL_84DA7A                        ; $84D9B8 |

CODE_84D9BB:
  JSL.L CODE_FL_92FE50                      ; $84D9BB |
  BCC CODE_JP_84D95A                        ; $84D9BF |
  LDA.W #$0180                              ; $84D9C1 |
  BRL CODE_JL_84DA77                        ; $84D9C4 |

CODE_84D9C7:
  DEC.W $1C06                               ; $84D9C7 |
  BNE CODE_JP_84D95A                        ; $84D9CA |
  BRL CODE_JL_84DA69                        ; $84D9CC |

CODE_84D9CF:
  LDA.W $1C02                               ; $84D9CF |
  BNE CODE_84D9E7                           ; $84D9D2 |
  JSL.L CODE_FL_848398                      ; $84D9D4 |
  BCC CODE_84D9DD                           ; $84D9D8 |
  JMP.W CODE_JL_84DA69                      ; $84D9DA |

CODE_84D9DD:
  JSL.L CODE_FL_80FB51                      ; $84D9DD |
  LDA.W #$0200                              ; $84D9E1 |
  BRL CODE_JL_84DA77                        ; $84D9E4 |

CODE_84D9E7:
  RTL                                       ; $84D9E7 |

  RTL                                       ; $84D9E8 |

CODE_84D9E9:
  JSL.L CODE_FL_80BEC7                      ; $84D9E9 |
  JSL.L CODE_FL_808BC2                      ; $84D9ED |
  LDX.W #DATA_8880C6                        ; $84D9F1 |
  JSL.L sound_transfer_blocks               ; $84D9F4 |
  LDY.W #DATA_88B976                        ; $84D9F8 |
  JSL.L CODE_FL_80C27C                      ; $84D9FB |
  JSL.L CODE_FL_808230                      ; $84D9FF |
  BRA CODE_JL_84DA69                        ; $84DA03 |

CODE_84DA05:
  LDA.W $1C02                               ; $84DA05 |
  BNE CODE_84DA16                           ; $84DA08 |
  LDY.W #$0158                              ; $84DA0A |
  JSL.L set_music                           ; $84DA0D |
  LDA.W #$0010                              ; $84DA11 |
  BRA CODE_JL_84DA77                        ; $84DA14 |

CODE_84DA16:
  DEC.W $1C06                               ; $84DA16 |
  BEQ CODE_JL_84DA69                        ; $84DA19 |
  RTL                                       ; $84DA1B |

CODE_84DA1C:
  JSL.L CODE_FL_80FB51                      ; $84DA1C |
  JSL.L CODE_FL_80BEC7                      ; $84DA20 |
  JSL.L CODE_FL_808230                      ; $84DA24 |
  BRA CODE_JL_84DA69                        ; $84DA28 |

CODE_84DA2A:
  RTL                                       ; $84DA2A |

CODE_84DA2B:
  LDA.W $1C02                               ; $84DA2B |
  BNE CODE_84DA3D                           ; $84DA2E |
  LDA.W #$00ED                              ; $84DA30 |
  JSL.L push_sound_queue                    ; $84DA33 |
  JSL.L CODE_FL_80C213                      ; $84DA37 |
  BRA CODE_JL_84DA7A                        ; $84DA3B |

CODE_84DA3D:
  LDA.W $1FA0                               ; $84DA3D |
  BNE CODE_84DA65                           ; $84DA40 |
  BRA CODE_JL_84DA69                        ; $84DA42 |

CODE_84DA44:
  JSL.L CODE_FL_80BEC7                      ; $84DA44 |
  JSL.L CODE_FL_808230                      ; $84DA48 |
  JSL.L CODE_FL_80887C                      ; $84DA4C |
  LDA.W #$0000                              ; $84DA50 |
  STA.W $1C08                               ; $84DA53 |
  JSL.L CODE_FL_80977D                      ; $84DA56 |
  JSL.L CODE_FL_808D75                      ; $84DA5A |
  JSL.L CODE_FL_808DBB                      ; $84DA5E |
  INC.W $1C04                               ; $84DA62 |

CODE_84DA65:
  RTL                                       ; $84DA65 |

CODE_JL_84DA66:
  STA.W $1C06                               ; $84DA66 |

CODE_JL_84DA69:
  STZ.W $1C02                               ; $84DA69 |
  INC.W $1C00                               ; $84DA6C |
  RTL                                       ; $84DA6F |

CODE_JL_84DA70:
  STZ.W $1C02                               ; $84DA70 |
  STA.W $1C00                               ; $84DA73 |
  RTL                                       ; $84DA76 |

CODE_JL_84DA77:
  STA.W $1C06                               ; $84DA77 |

CODE_JL_84DA7A:
  INC.W $1C02                               ; $84DA7A |
  RTL                                       ; $84DA7D |

CODE_FN_84DA7E:
  LDA.W $1C08                               ; $84DA7E |
  ASL A                                     ; $84DA81 |
  TAY                                       ; $84DA82 |
  LDA.W LOOSE_OP_00C279,Y                   ; $84DA83 |
  BEQ CODE_84DA8D                           ; $84DA86 |
  TAY                                       ; $84DA88 |
  JSL.L set_music                           ; $84DA89 |

CODE_84DA8D:
  RTS                                       ; $84DA8D |

CODE_FL_84DA8E:
  JSL.L CODE_FL_84DA9C                      ; $84DA8E |
  LDY.W #$4000                              ; $84DA92 |
  JSL.L CODE_FL_80975C                      ; $84DA95 |
  RTL                                       ; $84DA99 |

CODE_FL_84DA9A:
  BNE CODE_84DAAB                           ; $84DA9A |

CODE_FL_84DA9C:
  TDC                                       ; $84DA9C |
  STA.L $7EDAC2                             ; $84DA9D |
  JSL.L CODE_FL_80C2DC                      ; $84DAA1 |
  RTL                                       ; $84DAA5 |

CODE_FL_84DAA6:
  LDA.W #$0001                              ; $84DAA6 |
  BRA CODE_84DAAE                           ; $84DAA9 |

CODE_84DAAB:
  LDA.W #$0000                              ; $84DAAB |

CODE_84DAAE:
  STA.B $08                                 ; $84DAAE |
  PHB                                       ; $84DAB0 |
  PEA.W $7E00                               ; $84DAB1 |
  PLB                                       ; $84DAB4 |
  PLB                                       ; $84DAB5 |
  LDA.W #$0038                              ; $84DAB6 |
  STA.W CODE_00DAC2                         ; $84DAB9 |
  LDA.W #$6F6F                              ; $84DABC |
  STA.W LOOSE_OP_00DAC3                     ; $84DABF |
  LDA.B $08                                 ; $84DAC2 |
  LSR A                                     ; $84DAC4 |
  LDA.L DATA8_95FDC6                        ; $84DAC5 |
  BCC CODE_84DACF                           ; $84DAC9 |
  LDA.L DATA8_95FDE8                        ; $84DACB |

CODE_84DACF:
  STA.W LOOSE_OP_00DAC5                     ; $84DACF |
  LDY.W #$0005                              ; $84DAD2 |
  LDX.W #$0000                              ; $84DAD5 |

CODE_84DAD8:
  SEP #$20                                  ; $84DAD8 |
  LDA.B #$02                                ; $84DADA |
  STA.W CODE_00DAC2,Y                       ; $84DADC |
  REP #$20                                  ; $84DADF |
  LDA.W #$6F6F                              ; $84DAE1 |
  STA.W LOOSE_OP_00DAC3,Y                   ; $84DAE4 |
  LDA.B $08                                 ; $84DAE7 |
  LSR A                                     ; $84DAE9 |
  LDA.L DATA8_95FDC6,X                      ; $84DAEA |
  BCC CODE_84DAF4                           ; $84DAEE |
  LDA.L DATA8_95FDE8,X                      ; $84DAF0 |

CODE_84DAF4:
  STA.W LOOSE_OP_00DAC5,Y                   ; $84DAF4 |
  TYA                                       ; $84DAF7 |
  CLC                                       ; $84DAF8 |
  ADC.W #$0005                              ; $84DAF9 |
  TAY                                       ; $84DAFC |
  INX                                       ; $84DAFD |
  INX                                       ; $84DAFE |
  CPX.W #$0020                              ; $84DAFF |
  BCC CODE_84DAD8                           ; $84DB02 |
  LDA.W #$0000                              ; $84DB04 |
  STA.W CODE_00DAC2,Y                       ; $84DB07 |
  PLB                                       ; $84DB0A |
  RTL                                       ; $84DB0B |

CODE_FL_84DB0C:
  LDX.W #$0B70                              ; $84DB0C |
  LDA.L $7E7C04                             ; $84DB0F |
  CMP.W #$0010                              ; $84DB13 |
  BCC CODE_84DB29                           ; $84DB16 |
  CMP.W #$0080                              ; $84DB18 |
  BCS CODE_84DB29                           ; $84DB1B |
  LSR A                                     ; $84DB1D |
  LSR A                                     ; $84DB1E |
  LSR A                                     ; $84DB1F |
  AND.W #$007E                              ; $84DB20 |
  TAY                                       ; $84DB23 |
  LDA.W CODE_00C441,Y                       ; $84DB24 |
  STA.B $1A,X                               ; $84DB27 |

CODE_84DB29:
  LDA.B $1A,X                               ; $84DB29 |
  PHX                                       ; $84DB2B |
  ASL A                                     ; $84DB2C |
  TAX                                       ; $84DB2D |
  LDA.L PTR16_84DB38,X                      ; $84DB2E |
  PLX                                       ; $84DB32 |
  STA.B $00                                 ; $84DB33 |
  JMP.W ($0000)                             ; $84DB35 |

PTR16_84DB38:
  dw CODE_84DB42                            ; $84DB38 |
  dw CODE_84DB43                            ; $84DB3A |
  dw CODE_84DB5C                            ; $84DB3C |
  dw CODE_84DB63                            ; $84DB3E |
  dw CODE_84DB68                            ; $84DB40 |

CODE_84DB42:
  RTL                                       ; $84DB42 |

CODE_84DB43:
  DEC.B $14,X                               ; $84DB43 |
  BPL CODE_84DB42                           ; $84DB45 |
  LDA.W #$0020                              ; $84DB47 |
  STA.B $14,X                               ; $84DB4A |
  INC.B $12,X                               ; $84DB4C |
  LDA.B $12,X                               ; $84DB4E |
  LSR A                                     ; $84DB50 |
  LDA.W #$3000                              ; $84DB51 |
  BCC CODE_84DB59                           ; $84DB54 |
  LDA.W #$303C                              ; $84DB56 |

CODE_84DB59:
  STA.B $00,X                               ; $84DB59 |
  RTL                                       ; $84DB5B |

CODE_84DB5C:
  LDA.W #$3078                              ; $84DB5C |

CODE_84DB5F:
  STZ.B $1A,X                               ; $84DB5F |
  BRA CODE_84DB59                           ; $84DB61 |

CODE_84DB63:
  LDA.W #$30BA                              ; $84DB63 |
  BRA CODE_84DB5F                           ; $84DB66 |

CODE_84DB68:
  LDA.W #$0000                              ; $84DB68 |
  BRA CODE_84DB5F                           ; $84DB6B |

CODE_FL_84DB6D:
  PHB                                       ; $84DB6D |
  LDA.W #$0087                              ; $84DB6E |
  XBA                                       ; $84DB71 |
  PHA                                       ; $84DB72 |
  PLB                                       ; $84DB73 |
  PLB                                       ; $84DB74 |
  JSL.L CODE_FL_84DB7F                      ; $84DB75 |
  PLB                                       ; $84DB79 |
  LDA.W $1C04                               ; $84DB7A |
  LSR A                                     ; $84DB7D |
  RTL                                       ; $84DB7E |

CODE_FL_84DB7F:
  LDA.W $1C00                               ; $84DB7F |
  PHX                                       ; $84DB82 |
  ASL A                                     ; $84DB83 |
  TAX                                       ; $84DB84 |
  LDA.L PTR16_84DB8F,X                      ; $84DB85 |
  PLX                                       ; $84DB89 |
  STA.B $00                                 ; $84DB8A |
  JMP.W ($0000)                             ; $84DB8C |

PTR16_84DB8F:
  dw CODE_84DBA7                            ; $84DB8F |
  dw CODE_84DC17                            ; $84DB91 |
  dw CODE_84DC2C                            ; $84DB93 |
  dw CODE_84DC76                            ; $84DB95 |
  dw CODE_84DCA1                            ; $84DB97 |
  dw CODE_84DCDE                            ; $84DB99 |
  dw CODE_84DCBC                            ; $84DB9B |
  dw CODE_84DC2C                            ; $84DB9D |
  dw CODE_84DC76                            ; $84DB9F |
  dw CODE_84DC99                            ; $84DBA1 |
  dw CODE_84DCDE                            ; $84DBA3 |
  dw CODE_84DCF0                            ; $84DBA5 |

CODE_84DBA7:
  LDA.W $1C02                               ; $84DBA7 |
  BNE CODE_84DBCE                           ; $84DBAA |
  LDA.W #$0000                              ; $84DBAC |
  STA.B $5C                                 ; $84DBAF |
  JSL.L CODE_FL_80887C                      ; $84DBB1 |
  REP #$30                                  ; $84DBB5 |
  PHB                                       ; $84DBB7 |
  LDA.W #$0000                              ; $84DBB8 |
  STA.L $001C00                             ; $84DBBB |
  LDA.W #$00FD                              ; $84DBBF |
  LDX.W #$1C01                              ; $84DBC2 |
  TXY                                       ; $84DBC5 |
  INY                                       ; $84DBC6 |
  MVN $00,$00                               ; $84DBC7 |
  PLB                                       ; $84DBCA |
  BRL CODE_JL_84DD26                        ; $84DBCB |

CODE_84DBCE:
  JSL.L CODE_FL_80BEC7                      ; $84DBCE |
  JSL.L CODE_FL_808BC2                      ; $84DBD2 |
  LDX.W #DATA_888196                        ; $84DBD6 |
  JSL.L sound_transfer_blocks               ; $84DBD9 |
  LDX.W #DATA_8881B8                        ; $84DBDD |
  JSL.L sound_transfer_blocks               ; $84DBE0 |
  REP #$30                                  ; $84DBE4 |
  PHB                                       ; $84DBE6 |
  LDA.W #$0000                              ; $84DBE7 |
  STA.L $7F0800                             ; $84DBEA |
  LDA.W #$07FD                              ; $84DBEE |
  LDX.W #$0801                              ; $84DBF1 |
  TXY                                       ; $84DBF4 |
  INY                                       ; $84DBF5 |
  MVN $7F,$7F                               ; $84DBF6 |
  PLB                                       ; $84DBF9 |
  LDY.W #$B9A4                              ; $84DBFA |
  JSL.L CODE_FL_80C27C                      ; $84DBFD |
  JSL.L CODE_FL_808D75                      ; $84DC01 |
  LDY.W #$81FE                              ; $84DC05 |
  JSL.L CODE_FL_808DBE                      ; $84DC08 |
  JSL.L CODE_FL_84DD2A                      ; $84DC0C |
  JSL.L CODE_FL_808230                      ; $84DC10 |
  BRL CODE_JL_84DD15                        ; $84DC14 |

CODE_84DC17:
  LDA.W $1F30                               ; $84DC17 |
  BNE CODE_84DC98                           ; $84DC1A |
  TDC                                       ; $84DC1C |
  STA.L $7E2C22                             ; $84DC1D |
  STA.L $7E2C0A                             ; $84DC21 |
  JSL.L CODE_FL_80C2DC                      ; $84DC25 |
  BRL CODE_JL_84DD15                        ; $84DC29 |

CODE_84DC2C:
  JSL.L CODE_FL_84D3B0                      ; $84DC2C |
  JSL.L CODE_FL_84DD9A                      ; $84DC30 |
  JSL.L CODE_FL_84DDED                      ; $84DC34 |
  LDA.L $7E7C04                             ; $84DC38 |
  AND.W #$000F                              ; $84DC3C |
  CMP.W #$0001                              ; $84DC3F |
  BNE CODE_84DC98                           ; $84DC42 |
  LDA.W $1C08                               ; $84DC44 |
  BNE CODE_84DC50                           ; $84DC47 |
  LDY.W #$013C                              ; $84DC49 |
  JSL.L set_music                           ; $84DC4C |

CODE_84DC50:
  LDA.W $1C08                               ; $84DC50 |
  CMP.W #$0002                              ; $84DC53 |
  BNE CODE_84DC5F                           ; $84DC56 |
  LDA.W #$0098                              ; $84DC58 |
  JSL.L CODE_FL_84C64E                      ; $84DC5B |

CODE_84DC5F:
  LDY.W #$0118                              ; $84DC5F |
  JSL.L CODE_FL_84D360                      ; $84DC62 |
  LDY.W $1C08                               ; $84DC66 |
  LDA.W CODE_00C256,Y                       ; $84DC69 |
  AND.W #$00FF                              ; $84DC6C |
  JSL.L CODE_FL_84DD36                      ; $84DC6F |
  BRL CODE_JL_84DD15                        ; $84DC73 |

CODE_84DC76:
  LDA.L $7E7C04                             ; $84DC76 |
  AND.W #$00FF                              ; $84DC7A |
  CMP.W #$00FF                              ; $84DC7D |
  BEQ CODE_84DC92                           ; $84DC80 |
  JSL.L CODE_FL_84D3B0                      ; $84DC82 |
  PHP                                       ; $84DC86 |
  JSL.L CODE_FL_84DD9A                      ; $84DC87 |
  JSL.L CODE_FL_84DDED                      ; $84DC8B |
  PLP                                       ; $84DC8F |
  BCC CODE_84DC98                           ; $84DC90 |

CODE_84DC92:
  LDA.W #$0001                              ; $84DC92 |
  BRL CODE_JL_84DD12                        ; $84DC95 |

CODE_84DC98:
  RTL                                       ; $84DC98 |

CODE_84DC99:
  LDA.W #$0003                              ; $84DC99 |
  LDY.W #$0007                              ; $84DC9C |
  BRA CODE_84DCA7                           ; $84DC9F |

CODE_84DCA1:
  LDA.W #$0002                              ; $84DCA1 |
  LDY.W #$0002                              ; $84DCA4 |

CODE_84DCA7:
  DEC.W $1C06                               ; $84DCA7 |
  BNE CODE_84DC98                           ; $84DCAA |
  STA.B $00                                 ; $84DCAC |
  INC.W $1C08                               ; $84DCAE |
  LDA.W $1C08                               ; $84DCB1 |
  CMP.B $00                                 ; $84DCB4 |
  BCS CODE_JL_84DD15                        ; $84DCB6 |
  TYA                                       ; $84DCB8 |
  BRL CODE_JL_84DD1C                        ; $84DCB9 |

CODE_84DCBC:
  LDA.W $1C02                               ; $84DCBC |
  BNE CODE_84DCCA                           ; $84DCBF |
  JSL.L CODE_FL_84D3B0                      ; $84DCC1 |
  BCC CODE_84DC98                           ; $84DCC5 |
  BRL CODE_JL_84DD26                        ; $84DCC7 |

CODE_84DCCA:
  LDA.W #$0004                              ; $84DCCA |
  STA.W $1FBE                               ; $84DCCD |
  STZ.W $1FC0                               ; $84DCD0 |
  JSL.L CODE_FL_80BEC7                      ; $84DCD3 |
  JSL.L CODE_FL_808230                      ; $84DCD7 |
  BRL CODE_JL_84DD15                        ; $84DCDB |

CODE_84DCDE:
  LDA.W $1C02                               ; $84DCDE |
  BNE CODE_84DCE9                           ; $84DCE1 |
  JSL.L CODE_FL_80C213                      ; $84DCE3 |
  BRA CODE_JL_84DD26                        ; $84DCE7 |

CODE_84DCE9:
  LDA.W $1FA0                               ; $84DCE9 |
  BNE CODE_84DD11                           ; $84DCEC |
  BRA CODE_JL_84DD15                        ; $84DCEE |

CODE_84DCF0:
  JSL.L CODE_FL_80BEC7                      ; $84DCF0 |
  JSL.L CODE_FL_808230                      ; $84DCF4 |
  JSL.L CODE_FL_80887C                      ; $84DCF8 |
  LDA.W #$0000                              ; $84DCFC |
  STA.W $1C08                               ; $84DCFF |
  JSL.L CODE_FL_80977D                      ; $84DD02 |
  JSL.L CODE_FL_808D75                      ; $84DD06 |
  JSL.L CODE_FL_808DBB                      ; $84DD0A |
  INC.W $1C04                               ; $84DD0E |

CODE_84DD11:
  RTL                                       ; $84DD11 |

CODE_JL_84DD12:
  STA.W $1C06                               ; $84DD12 |

CODE_JL_84DD15:
  STZ.W $1C02                               ; $84DD15 |
  INC.W $1C00                               ; $84DD18 |
  RTL                                       ; $84DD1B |

CODE_JL_84DD1C:
  STZ.W $1C02                               ; $84DD1C |
  STA.W $1C00                               ; $84DD1F |
  RTL                                       ; $84DD22 |

  STA.W $1C06                               ; $84DD23 |

CODE_JL_84DD26:
  INC.W $1C02                               ; $84DD26 |
  RTL                                       ; $84DD29 |

CODE_FL_84DD2A:
  JSL.L CODE_FL_84DD38                      ; $84DD2A |
  LDY.W #$2000                              ; $84DD2E |
  JSL.L CODE_FL_80975C                      ; $84DD31 |
  RTL                                       ; $84DD35 |

CODE_FL_84DD36:
  BNE CODE_84DD42                           ; $84DD36 |

CODE_FL_84DD38:
  TDC                                       ; $84DD38 |
  STA.L $7EDAC2                             ; $84DD39 |
  JSL.L CODE_FL_80C2DC                      ; $84DD3D |
  RTL                                       ; $84DD41 |

CODE_84DD42:
  PHB                                       ; $84DD42 |
  PEA.W $7E00                               ; $84DD43 |
  PLB                                       ; $84DD46 |
  PLB                                       ; $84DD47 |
  LDA.W #$0038                              ; $84DD48 |
  STA.W CODE_00DAC2                         ; $84DD4B |
  LDA.W #$0505                              ; $84DD4E |
  STA.W LOOSE_OP_00DAC3                     ; $84DD51 |
  LDA.L DATA8_95FE68                        ; $84DD54 |
  STA.W LOOSE_OP_00DAC5                     ; $84DD58 |
  LDY.W #$0005                              ; $84DD5B |
  LDX.W #$0000                              ; $84DD5E |

CODE_84DD61:
  SEP #$20                                  ; $84DD61 |
  LDA.B #$04                                ; $84DD63 |
  STA.W CODE_00DAC2,Y                       ; $84DD65 |
  REP #$20                                  ; $84DD68 |
  LDA.W #$0505                              ; $84DD6A |
  STA.W LOOSE_OP_00DAC3,Y                   ; $84DD6D |
  LDA.L DATA8_95FE68,X                      ; $84DD70 |
  STA.W LOOSE_OP_00DAC5,Y                   ; $84DD74 |
  TYA                                       ; $84DD77 |
  CLC                                       ; $84DD78 |
  ADC.W #$0005                              ; $84DD79 |
  TAY                                       ; $84DD7C |
  INX                                       ; $84DD7D |
  INX                                       ; $84DD7E |
  CPX.W #$0020                              ; $84DD7F |
  BCC CODE_84DD61                           ; $84DD82 |
  LDA.W #$0000                              ; $84DD84 |
  STA.W CODE_00DAC2,Y                       ; $84DD87 |
  PLB                                       ; $84DD8A |
  RTL                                       ; $84DD8B |

CODE_JL_84DD8C:
  STA.B $00                                 ; $84DD8C |
  LDA.L $7E7C04                             ; $84DD8E |
  AND.W #$00F0                              ; $84DD92 |
  CMP.B $00                                 ; $84DD95 |
  BEQ CODE_84DDBE                           ; $84DD97 |
  RTL                                       ; $84DD99 |

CODE_FL_84DD9A:
  LDX.W #$0B70                              ; $84DD9A |
  LDA.B $1A,X                               ; $84DD9D |
  PHX                                       ; $84DD9F |
  ASL A                                     ; $84DDA0 |
  TAX                                       ; $84DDA1 |
  LDA.L PTR16_84DDAC,X                      ; $84DDA2 |
  PLX                                       ; $84DDA6 |
  STA.B $00                                 ; $84DDA7 |
  JMP.W ($0000)                             ; $84DDA9 |

PTR16_84DDAC:
  dw CODE_84DDB6                            ; $84DDAC |
  dw CODE_84DDC1                            ; $84DDAE |
  dw CODE_84DDC6                            ; $84DDB0 |
  dw CODE_84DDDD                            ; $84DDB2 |
  dw CODE_84DDEC                            ; $84DDB4 |

CODE_84DDB6:
  JSL.L CODE_FL_84D607                      ; $84DDB6 |
  LDA.B $09,X                               ; $84DDBA |
  STA.B $10,X                               ; $84DDBC |

CODE_84DDBE:
  INC.B $1A,X                               ; $84DDBE |
  RTL                                       ; $84DDC0 |

CODE_84DDC1:
  LDA.W #$0020                              ; $84DDC1 |
  BRA CODE_JL_84DD8C                        ; $84DDC4 |

CODE_84DDC6:
  INC.B $12,X                               ; $84DDC6 |
  LDA.B $12,X                               ; $84DDC8 |
  AND.W #$0001                              ; $84DDCA |
  CLC                                       ; $84DDCD |
  ADC.B $10,X                               ; $84DDCE |
  STA.B $09,X                               ; $84DDD0 |
  LDA.B $0D,X                               ; $84DDD2 |
  DEC A                                     ; $84DDD4 |
  STA.B $0D,X                               ; $84DDD5 |
  CMP.W #$0079                              ; $84DDD7 |
  BCC CODE_84DDBE                           ; $84DDDA |
  RTL                                       ; $84DDDC |

CODE_84DDDD:
  LDA.L $7E7C04                             ; $84DDDD |
  AND.W #$00F0                              ; $84DDE1 |
  CMP.W #$0040                              ; $84DDE4 |
  BNE CODE_84DDEC                           ; $84DDE7 |
  STZ.B $00,X                               ; $84DDE9 |
  RTL                                       ; $84DDEB |

CODE_84DDEC:
  RTL                                       ; $84DDEC |

CODE_FL_84DDED:
  LDX.W #$0BC0                              ; $84DDED |
  LDA.B $1A,X                               ; $84DDF0 |
  PHX                                       ; $84DDF2 |
  ASL A                                     ; $84DDF3 |
  TAX                                       ; $84DDF4 |
  LDA.L PTR16_84DDFF,X                      ; $84DDF5 |
  PLX                                       ; $84DDF9 |
  STA.B $00                                 ; $84DDFA |
  JMP.W ($0000)                             ; $84DDFC |

PTR16_84DDFF:
  dw CODE_84DE09                            ; $84DDFF |
  dw CODE_84DE1B                            ; $84DE01 |
  dw CODE_84DE21                            ; $84DE03 |
  dw CODE_84DDDD                            ; $84DE05 |
  dw CODE_84DE2C                            ; $84DE07 |

CODE_84DE09:
  LDA.L $7E7C04                             ; $84DE09 |
  AND.W #$00F0                              ; $84DE0D |
  CMP.W #$0010                              ; $84DE10 |
  BNE CODE_84DE2C                           ; $84DE13 |
  JSL.L CODE_FL_84D610                      ; $84DE15 |
  BRA CODE_84DDBE                           ; $84DE19 |

CODE_84DE1B:
  LDA.W #$0030                              ; $84DE1B |
  BRL CODE_JL_84DD8C                        ; $84DE1E |

CODE_84DE21:
  LDA.B $09,X                               ; $84DE21 |
  DEC A                                     ; $84DE23 |
  STA.B $09,X                               ; $84DE24 |
  CMP.W #$009D                              ; $84DE26 |
  BCC CODE_84DDBE                           ; $84DE29 |
  RTL                                       ; $84DE2B |

CODE_84DE2C:
  RTL                                       ; $84DE2C |

CODE_84DE2D:
  LDA.W #$0580                              ; $84DE2D |
  JSL.L CODE_FL_8CF9D2                      ; $84DE30 |
  BCS CODE_84DE45                           ; $84DE34 |
  LDA.W #$0580                              ; $84DE36 |
  JSL.L CODE_FL_8CF9C3                      ; $84DE39 |
  JSL.L CODE_FL_84F20D                      ; $84DE3D |
  JML.L CODE_FL_86CA36                      ; $84DE41 |

CODE_84DE45:
  JSL.L CODE_FL_84F1D5                      ; $84DE45 |
  JML.L CODE_FL_86CA36                      ; $84DE49 |

CODE_84DE4D:
  JSL.L CODE_FL_8CFD8F                      ; $84DE4D |
  PHX                                       ; $84DE51 |
  ASL A                                     ; $84DE52 |
  TAX                                       ; $84DE53 |
  LDA.L PTR16_84DE5E,X                      ; $84DE54 |
  PLX                                       ; $84DE58 |
  STA.B $00                                 ; $84DE59 |
  JMP.W ($0000)                             ; $84DE5B |

PTR16_84DE5E:
  dw CODE_84DE66                            ; $84DE5E |
  dw CODE_84DE70                            ; $84DE60 |
  dw CODE_84DE7B                            ; $84DE62 |
  dw CODE_84DE9D                            ; $84DE64 |

CODE_84DE66:
  LDA.W #$0080                              ; $84DE66 |
  STA.B $2C,X                               ; $84DE69 |
  LDA.W #$0001                              ; $84DE6B |
  STA.B $1A,X                               ; $84DE6E |

CODE_84DE70:
  JSL.L CODE_FL_86C70D                      ; $84DE70 |
  LDA.W #$8001                              ; $84DE74 |
  STA.B $E4                                 ; $84DE77 |
  INC.B $1A,X                               ; $84DE79 |

CODE_84DE7B:
  LDA.W #$FC0B                              ; $84DE7B |
  JSL.L CODE_FL_809934                      ; $84DE7E |
  BCC CODE_84DE9C                           ; $84DE82 |
  STZ.B $E4                                 ; $84DE84 |
  INC.B $1A,X                               ; $84DE86 |
  LDA.B $3A,X                               ; $84DE88 |
  BNE CODE_84DE94                           ; $84DE8A |
  JSR.W CODE_FN_84DF06                      ; $84DE8C |
  LDA.W #$0180                              ; $84DE8F |
  BRA CODE_84DE9A                           ; $84DE92 |

CODE_84DE94:
  JSR.W CODE_FN_84DF25                      ; $84DE94 |
  LDA.W #$0200                              ; $84DE97 |

CODE_84DE9A:
  STA.B $2C,X                               ; $84DE9A |

CODE_84DE9C:
  RTL                                       ; $84DE9C |

CODE_84DE9D:
  JSL.L CODE_FL_86C70D                      ; $84DE9D |
  LDA.B $8E                                 ; $84DEA1 |
  CMP.W #$0046                              ; $84DEA3 |
  BNE CODE_84DEAB                           ; $84DEA6 |
  JMP.W CODE_JP_84DECF                      ; $84DEA8 |

CODE_84DEAB:
  CMP.W #$0062                              ; $84DEAB |
  BNE CODE_84DEB3                           ; $84DEAE |
  JMP.W CODE_JP_84DEDA                      ; $84DEB0 |

CODE_84DEB3:
  CMP.W #$0047                              ; $84DEB3 |
  BNE CODE_84DEBB                           ; $84DEB6 |
  JMP.W CODE_JP_84DEE5                      ; $84DEB8 |

CODE_84DEBB:
  CMP.W #$002B                              ; $84DEBB |
  BNE CODE_84DEC3                           ; $84DEBE |
  JMP.W CODE_JP_84DEF0                      ; $84DEC0 |

CODE_84DEC3:
  CMP.W #$00B3                              ; $84DEC3 |
  BNE CODE_84DECB                           ; $84DEC6 |
  JMP.W CODE_JP_84DEFB                      ; $84DEC8 |

CODE_84DECB:
  JML.L CODE_FL_86CA36                      ; $84DECB |

CODE_JP_84DECF:
  LDA.W #$0000                              ; $84DECF |
  JSL.L CODE_FL_84F26F                      ; $84DED2 |
  JML.L CODE_JL_80ECDA                      ; $84DED6 |

CODE_JP_84DEDA:
  LDA.W #$0010                              ; $84DEDA |
  JSL.L CODE_FL_84F26F                      ; $84DEDD |
  JML.L CODE_JL_80ECEF                      ; $84DEE1 |

CODE_JP_84DEE5:
  LDA.W #$0018                              ; $84DEE5 |
  JSL.L CODE_FL_84F26F                      ; $84DEE8 |
  JML.L CODE_JL_80ED04                      ; $84DEEC |

CODE_JP_84DEF0:
  LDA.W #$0020                              ; $84DEF0 |
  JSL.L CODE_FL_84F26F                      ; $84DEF3 |
  JML.L CODE_JL_80ED19                      ; $84DEF7 |

CODE_JP_84DEFB:
  LDA.W #$0030                              ; $84DEFB |
  JSL.L CODE_FL_84F26F                      ; $84DEFE |
  JML.L CODE_JL_80ED2E                      ; $84DF02 |

CODE_FN_84DF06:
  STZ.B $10                                 ; $84DF06 |

CODE_FN_84DF08:
  LDY.B $10                                 ; $84DF08 |
  LDA.W CODE_00C44B,Y                       ; $84DF0A |
  JSL.L CODE_FL_86C9A7                      ; $84DF0D |
  PHY                                       ; $84DF11 |
  LDY.B $10                                 ; $84DF12 |
  LDA.W CODE_00C44D,Y                       ; $84DF14 |
  PLY                                       ; $84DF17 |
  CLC                                       ; $84DF18 |
  ADC.B $09,X                               ; $84DF19 |
  STA.W $0009,Y                             ; $84DF1B |
  LDA.W #$0001                              ; $84DF1E |
  STA.W $004E,Y                             ; $84DF21 |
  RTS                                       ; $84DF24 |

CODE_FN_84DF25:
  STZ.B $10                                 ; $84DF25 |

CODE_84DF27:
  JSR.W CODE_FN_84DF08                      ; $84DF27 |
  LDA.B $10                                 ; $84DF2A |
  CLC                                       ; $84DF2C |
  ADC.W #$0004                              ; $84DF2D |
  STA.B $10                                 ; $84DF30 |
  CMP.W #$001C                              ; $84DF32 |
  BMI CODE_84DF27                           ; $84DF35 |
  RTS                                       ; $84DF37 |

CODE_84DF38:
  JSL.L CODE_FL_8CFD8F                      ; $84DF38 |
  PHX                                       ; $84DF3C |
  ASL A                                     ; $84DF3D |
  TAX                                       ; $84DF3E |
  LDA.L PTR16_84DF49,X                      ; $84DF3F |
  PLX                                       ; $84DF43 |
  STA.B $00                                 ; $84DF44 |
  JMP.W ($0000)                             ; $84DF46 |

PTR16_84DF49:
  dw CODE_84E00D                            ; $84DF49 |
  dw CODE_JP_84E053                         ; $84DF4B |
  dw CODE_84E0BF                            ; $84DF4D |
  dw CODE_84E0E2                            ; $84DF4F |
  dw CODE_84E101                            ; $84DF51 |
  dw CODE_84E125                            ; $84DF53 |
  dw CODE_84E137                            ; $84DF55 |
  dw CODE_84E149                            ; $84DF57 |
  dw CODE_84E15E                            ; $84DF59 |
  dw CODE_84E17A                            ; $84DF5B |
  dw CODE_84E195                            ; $84DF5D |
  dw CODE_84E1A6                            ; $84DF5F |
  dw CODE_84E1B0                            ; $84DF61 |
  dw CODE_84E1DF                            ; $84DF63 |
  dw CODE_84E1FE                            ; $84DF65 |
  dw CODE_JP_84E284                         ; $84DF67 |
  dw CODE_84E2BF                            ; $84DF69 |
  dw CODE_84E2D3                            ; $84DF6B |
  dw CODE_84E2ED                            ; $84DF6D |
  dw CODE_84E302                            ; $84DF6F |
  dw CODE_84E329                            ; $84DF71 |
  dw CODE_84E33E                            ; $84DF73 |
  dw CODE_84E350                            ; $84DF75 |
  dw CODE_84E35F                            ; $84DF77 |
  dw CODE_84E381                            ; $84DF79 |
  dw CODE_84E3A7                            ; $84DF7B |
  dw CODE_84E3B3                            ; $84DF7D |
  dw CODE_JP_84E3C8                         ; $84DF7F |
  dw CODE_84E3FA                            ; $84DF81 |
  dw CODE_84E41F                            ; $84DF83 |
  dw CODE_84E449                            ; $84DF85 |
  dw CODE_84E457                            ; $84DF87 |
  dw CODE_84E46C                            ; $84DF89 |
  dw CODE_84E47F                            ; $84DF8B |
  dw CODE_84E497                            ; $84DF8D |
  dw CODE_84E4CF                            ; $84DF8F |
  dw CODE_JP_84E4E7                         ; $84DF91 |
  dw CODE_84E4F3                            ; $84DF93 |
  dw CODE_JP_84E508                         ; $84DF95 |
  dw CODE_84E528                            ; $84DF97 |
  dw CODE_84E55E                            ; $84DF99 |
  dw CODE_84E57F                            ; $84DF9B |
  dw CODE_84E5A1                            ; $84DF9D |
  dw CODE_84E5C3                            ; $84DF9F |
  dw CODE_84E5DB                            ; $84DFA1 |
  dw CODE_84E602                            ; $84DFA3 |
  dw CODE_84E642                            ; $84DFA5 |
  dw CODE_84E66A                            ; $84DFA7 |
  dw CODE_84E680                            ; $84DFA9 |
  dw CODE_84E6AA                            ; $84DFAB |
  dw CODE_JP_84E6D2                         ; $84DFAD |
  dw CODE_84E705                            ; $84DFAF |
  dw CODE_84E72C                            ; $84DFB1 |
  dw CODE_84E756                            ; $84DFB3 |
  dw CODE_84E764                            ; $84DFB5 |
  dw CODE_84E497                            ; $84DFB7 |
  dw CODE_84E4CF                            ; $84DFB9 |
  dw CODE_JP_84E4E7                         ; $84DFBB |
  dw CODE_84E4F3                            ; $84DFBD |
  dw CODE_JP_84E778                         ; $84DFBF |
  dw CODE_84E79D                            ; $84DFC1 |
  dw CODE_84E7C1                            ; $84DFC3 |
  dw CODE_84E7D1                            ; $84DFC5 |
  dw CODE_84E7E3                            ; $84DFC7 |
  dw CODE_84E7FC                            ; $84DFC9 |
  dw CODE_84E80B                            ; $84DFCB |
  dw CODE_84E828                            ; $84DFCD |
  dw CODE_84E837                            ; $84DFCF |
  dw CODE_84E847                            ; $84DFD1 |
  dw CODE_84E873                            ; $84DFD3 |
  dw CODE_84E887                            ; $84DFD5 |
  dw CODE_84E4F3                            ; $84DFD7 |
  dw CODE_JP_84E893                         ; $84DFD9 |
  dw CODE_84E0BF                            ; $84DFDB |
  dw CODE_84E0E2                            ; $84DFDD |
  dw CODE_84E101                            ; $84DFDF |
  dw CODE_84E904                            ; $84DFE1 |
  dw CODE_84E923                            ; $84DFE3 |
  dw CODE_84E935                            ; $84DFE5 |
  dw CODE_84E947                            ; $84DFE7 |
  dw CODE_84E959                            ; $84DFE9 |
  dw CODE_84E971                            ; $84DFEB |
  dw CODE_84E497                            ; $84DFED |
  dw CODE_84E4CF                            ; $84DFEF |
  dw CODE_84E989                            ; $84DFF1 |
  dw CODE_84E4F3                            ; $84DFF3 |
  dw CODE_JP_84E9A1                         ; $84DFF5 |
  dw CODE_84E9DE                            ; $84DFF7 |
  dw CODE_84E9EB                            ; $84DFF9 |
  dw CODE_84E33E                            ; $84DFFB |
  dw CODE_84E9FC                            ; $84DFFD |
  dw CODE_84E35F                            ; $84DFFF |
  dw CODE_84EA06                            ; $84E001 |
  dw CODE_84E3A7                            ; $84E003 |
  dw CODE_84E3B3                            ; $84E005 |
  dw CODE_JP_84EA26                         ; $84E007 |
  dw CODE_84E33E                            ; $84E009 |
  dw CODE_84EA5C                            ; $84E00B |

CODE_84E00D:
  LDA.W #$8000                              ; $84E00D |
  ORA.W #$0100                              ; $84E010 |
  STA.B $22,X                               ; $84E013 |
  LDA.B $8E                                 ; $84E015 |
  CMP.W #$0127                              ; $84E017 |
  BNE CODE_84E01F                           ; $84E01A |
  JMP.W CODE_JP_84E053                      ; $84E01C |

CODE_84E01F:
  CMP.W #$0104                              ; $84E01F |
  BNE CODE_84E027                           ; $84E022 |
  JMP.W CODE_JP_84E284                      ; $84E024 |

CODE_84E027:
  CMP.W #$0109                              ; $84E027 |
  BNE CODE_84E02F                           ; $84E02A |
  JMP.W CODE_JP_84E3C8                      ; $84E02C |

CODE_84E02F:
  CMP.W #$010A                              ; $84E02F |
  BNE CODE_84E037                           ; $84E032 |
  JMP.W CODE_JP_84E508                      ; $84E034 |

CODE_84E037:
  CMP.W #$0182                              ; $84E037 |
  BNE CODE_84E03F                           ; $84E03A |
  JMP.W CODE_JP_84E778                      ; $84E03C |

CODE_84E03F:
  CMP.W #$0123                              ; $84E03F |
  BNE CODE_84E047                           ; $84E042 |
  JMP.W CODE_JP_84E9A1                      ; $84E044 |

CODE_84E047:
  CMP.W #$012E                              ; $84E047 |
  BNE CODE_JP_84E04F                        ; $84E04A |
  JMP.W CODE_JP_84EA26                      ; $84E04C |

CODE_JP_84E04F:
  JML.L CODE_FL_86CA36                      ; $84E04F |

CODE_JP_84E053:
  LDA.L $700758                             ; $84E053 |
  CMP.W #$0000                              ; $84E057 |
  BEQ CODE_84E05F                           ; $84E05A |
  JMP.W CODE_JP_84E04F                      ; $84E05C |

CODE_84E05F:
  LDA.L $700758                             ; $84E05F |
  INC A                                     ; $84E063 |
  STA.L $700758                             ; $84E064 |
  JSL.L CODE_FL_83852F                      ; $84E068 |
  INC.B $76                                 ; $84E06C |
  JSL.L CODE_FL_8B8030                      ; $84E06E |
  LDY.W #$0D50                              ; $84E072 |
  LDA.W #$015B                              ; $84E075 |
  JSL.L CODE_FL_86C9E0                      ; $84E078 |
  LDA.W #$0620                              ; $84E07C |
  STA.W $003C,Y                             ; $84E07F |
  LDA.W #$0400                              ; $84E082 |
  STA.W $004E,Y                             ; $84E085 |
  LDY.W #$0DA0                              ; $84E088 |
  LDA.W #$015B                              ; $84E08B |
  JSL.L CODE_FL_86C9E0                      ; $84E08E |
  LDA.W #$0670                              ; $84E092 |
  STA.W $003C,Y                             ; $84E095 |
  LDA.W #$0400                              ; $84E098 |
  STA.W $004E,Y                             ; $84E09B |
  LDY.W #$0DF0                              ; $84E09E |
  LDA.W #$015B                              ; $84E0A1 |
  JSL.L CODE_FL_86C9E0                      ; $84E0A4 |
  LDA.W #$08F0                              ; $84E0A8 |
  STA.W $003C,Y                             ; $84E0AB |
  LDA.W #$0400                              ; $84E0AE |
  STA.W $004E,Y                             ; $84E0B1 |
  LDA.W #$0010                              ; $84E0B4 |
  STA.B $2C,X                               ; $84E0B7 |
  LDA.W #$0002                              ; $84E0B9 |
  STA.B $1A,X                               ; $84E0BC |
  RTL                                       ; $84E0BE |

CODE_84E0BF:
  JSL.L CODE_FL_86C70D                      ; $84E0BF |
  LDY.W #$0620                              ; $84E0C3 |
  LDA.W #$01C5                              ; $84E0C6 |
  JSL.L CODE_FL_86C9E0                      ; $84E0C9 |
  LDA.W #$0000                              ; $84E0CD |
  STA.W $003A,Y                             ; $84E0D0 |
  LDA.W #$0003                              ; $84E0D3 |
  STA.W $003C,Y                             ; $84E0D6 |
  LDA.W #$0D50                              ; $84E0D9 |
  STA.W $004E,Y                             ; $84E0DC |
  INC.B $1A,X                               ; $84E0DF |
  RTL                                       ; $84E0E1 |

CODE_84E0E2:
  LDY.W #$0670                              ; $84E0E2 |
  LDA.W #$01C5                              ; $84E0E5 |
  JSL.L CODE_FL_86C9E0                      ; $84E0E8 |
  LDA.W #$0002                              ; $84E0EC |
  STA.W $003A,Y                             ; $84E0EF |
  LDA.W #$0003                              ; $84E0F2 |
  STA.W $003C,Y                             ; $84E0F5 |
  LDA.W #$0DA0                              ; $84E0F8 |
  STA.W $004E,Y                             ; $84E0FB |
  INC.B $1A,X                               ; $84E0FE |
  RTL                                       ; $84E100 |

CODE_84E101:
  LDY.W #$08F0                              ; $84E101 |
  LDA.W #$01C5                              ; $84E104 |
  JSL.L CODE_FL_86C9E0                      ; $84E107 |
  LDA.W #$0004                              ; $84E10B |
  STA.W $003A,Y                             ; $84E10E |
  LDA.W #$0003                              ; $84E111 |
  STA.W $003C,Y                             ; $84E114 |
  LDA.W #$0DF0                              ; $84E117 |
  STA.W $004E,Y                             ; $84E11A |
  LDA.W #$0040                              ; $84E11D |
  STA.B $2C,X                               ; $84E120 |
  INC.B $1A,X                               ; $84E122 |
  RTL                                       ; $84E124 |

CODE_84E125:
  JSL.L CODE_FL_86C70D                      ; $84E125 |
  LDA.W #$0005                              ; $84E129 |
  JSL.L CODE_FL_B3FE45                      ; $84E12C |
  LDA.W #$0040                              ; $84E130 |
  STA.B $2C,X                               ; $84E133 |
  INC.B $1A,X                               ; $84E135 |

CODE_84E137:
  JSL.L CODE_FL_84E213                      ; $84E137 |
  JSL.L CODE_FL_8CFBB6                      ; $84E13B |
  JSL.L CODE_FL_86C70D                      ; $84E13F |
  LDY.W #$0D50                              ; $84E143 |
  JMP.W CODE_FL_84E224                      ; $84E146 |

CODE_84E149:
  JSR.W CODE_FN_84E23B                      ; $84E149 |
  JSL.L CODE_FL_84E213                      ; $84E14C |
  JSL.L CODE_FL_8CFBB6                      ; $84E150 |
  JSL.L CODE_FL_86C70D                      ; $84E154 |
  LDY.W #$0DA0                              ; $84E158 |
  JMP.W CODE_FL_84E224                      ; $84E15B |

CODE_84E15E:
  JSR.W CODE_FN_84E23B                      ; $84E15E |
  JSL.L CODE_FL_84E213                      ; $84E161 |
  JSL.L CODE_FL_8CFBB6                      ; $84E165 |
  JSL.L CODE_FL_86C70D                      ; $84E169 |
  LDY.W #$0DF0                              ; $84E16D |
  JSL.L CODE_FL_84E224                      ; $84E170 |
  LDA.W #$0100                              ; $84E174 |
  STA.B $2C,X                               ; $84E177 |
  RTL                                       ; $84E179 |

CODE_84E17A:
  JSR.W CODE_FN_84E23B                      ; $84E17A |
  JSL.L CODE_FL_86C70D                      ; $84E17D |
  LDA.W $0624                               ; $84E181 |
  AND.W #$DFDF                              ; $84E184 |
  STA.W $0624                               ; $84E187 |
  LDA.W $0674                               ; $84E18A |
  AND.W #$DFDF                              ; $84E18D |
  STA.W $0674                               ; $84E190 |
  INC.B $1A,X                               ; $84E193 |

CODE_84E195:
  LDA.W #$A05C                              ; $84E195 |
  JSL.L CODE_FL_809934                      ; $84E198 |
  BCC CODE_84E1A5                           ; $84E19C |
  LDA.W #$0020                              ; $84E19E |
  STA.B $2C,X                               ; $84E1A1 |
  INC.B $1A,X                               ; $84E1A3 |

CODE_84E1A5:
  RTL                                       ; $84E1A5 |

CODE_84E1A6:
  JSL.L CODE_FL_86C70D                      ; $84E1A6 |
  INC.B $1A,X                               ; $84E1AA |
  JML.L CODE_FL_80C213                      ; $84E1AC |

CODE_84E1B0:
  LDA.W $1F30                               ; $84E1B0 |
  BNE CODE_84E1DE                           ; $84E1B3 |
  LDY.W #$0020                              ; $84E1B5 |
  JSL.L CODE_FL_808993                      ; $84E1B8 |
  LDA.W #$007F                              ; $84E1BC |
  STA.L $7E7C04                             ; $84E1BF |
  JSL.L CODE_FL_8B8057                      ; $84E1C3 |
  LDA.W #$0200                              ; $84E1C7 |
  STA.W $0498                               ; $84E1CA |
  LDA.W #$0100                              ; $84E1CD |
  STA.W $0558                               ; $84E1D0 |
  LDA.W #$0010                              ; $84E1D3 |
  STA.B $2C,X                               ; $84E1D6 |
  INC.B $1A,X                               ; $84E1D8 |
  JSL.L CODE_FL_8B8000                      ; $84E1DA |

CODE_84E1DE:
  RTL                                       ; $84E1DE |

CODE_84E1DF:
  JSL.L CODE_FL_86C70D                      ; $84E1DF |
  LDA.W #$0800                              ; $84E1E3 |
  STA.W $0498                               ; $84E1E6 |
  STA.W $0558                               ; $84E1E9 |
  JSL.L CODE_FL_8B8067                      ; $84E1EC |
  INC.B $1A,X                               ; $84E1F0 |
  JSL.L CODE_FL_80C222                      ; $84E1F2 |
  LDY.W #$B430                              ; $84E1F6 |
  JSL.L CODE_FL_80C277                      ; $84E1F9 |
  RTL                                       ; $84E1FD |

CODE_84E1FE:
  STZ.W $0498                               ; $84E1FE |
  STZ.W $0558                               ; $84E201 |
  LDA.W $1F30                               ; $84E204 |
  BNE CODE_84E1DE                           ; $84E207 |
  STZ.B $E4                                 ; $84E209 |
  STZ.B $92                                 ; $84E20B |
  STZ.B $76                                 ; $84E20D |
  JML.L CODE_FL_86CA2D                      ; $84E20F |

CODE_FL_84E213:
  DEC.B $3E,X                               ; $84E213 |
  BPL CODE_84E223                           ; $84E215 |
  LDA.W #$000A                              ; $84E217 |
  STA.B $3E,X                               ; $84E21A |
  LDA.W #$0021                              ; $84E21C |
  JSL.L push_sound_queue                    ; $84E21F |

CODE_84E223:
  RTL                                       ; $84E223 |

CODE_FL_84E224:
  LDA.W #$0300                              ; $84E224 |
  STA.W $003A,Y                             ; $84E227 |
  LDA.W $0004,Y                             ; $84E22A |
  ORA.W #$2020                              ; $84E22D |
  STA.W $0004,Y                             ; $84E230 |
  LDA.W #$0030                              ; $84E233 |
  STA.B $2C,X                               ; $84E236 |
  INC.B $1A,X                               ; $84E238 |
  RTL                                       ; $84E23A |

CODE_FN_84E23B:
  LDY.W #$0D50                              ; $84E23B |
  JSR.W CODE_FN_84E24E                      ; $84E23E |
  LDY.W #$0DA0                              ; $84E241 |
  JSR.W CODE_FN_84E24E                      ; $84E244 |
  LDY.W #$0DF0                              ; $84E247 |
  JSR.W CODE_FN_84E24E                      ; $84E24A |
  RTS                                       ; $84E24D |

CODE_FN_84E24E:
  LDA.W $0018,Y                             ; $84E24E |
  CMP.W #$015B                              ; $84E251 |
  BNE CODE_84E283                           ; $84E254 |
  LDA.W $0009,Y                             ; $84E256 |
  CMP.W #$0020                              ; $84E259 |
  BPL CODE_84E283                           ; $84E25C |
  LDA.W $001A,Y                             ; $84E25E |
  INC A                                     ; $84E261 |
  STA.W $001A,Y                             ; $84E262 |
  LDA.W $003C,Y                             ; $84E265 |
  TAY                                       ; $84E268 |
  LDA.W $001A,Y                             ; $84E269 |
  INC A                                     ; $84E26C |
  INC A                                     ; $84E26D |
  STA.W $001A,Y                             ; $84E26E |
  LDA.W $003A,Y                             ; $84E271 |
  XBA                                       ; $84E274 |
  LSR A                                     ; $84E275 |
  CLC                                       ; $84E276 |
  ADC.W #$0100                              ; $84E277 |
  STA.W $0026,Y                             ; $84E27A |
  LDA.W #$FF40                              ; $84E27D |
  STA.W $0028,Y                             ; $84E280 |

CODE_84E283:
  RTS                                       ; $84E283 |

CODE_JP_84E284:
  LDA.L $700758                             ; $84E284 |
  CMP.W #$0002                              ; $84E288 |
  BEQ CODE_84E290                           ; $84E28B |
  JMP.W CODE_JP_84E04F                      ; $84E28D |

CODE_84E290:
  LDA.W #$0008                              ; $84E290 |
  JSL.L CODE_FL_87E3B2                      ; $84E293 |
  LDA.L $700758                             ; $84E297 |
  INC A                                     ; $84E29B |
  STA.L $700758                             ; $84E29C |
  JSL.L CODE_FL_83852F                      ; $84E2A0 |
  INC.B $76                                 ; $84E2A4 |
  LDA.W #$8001                              ; $84E2A6 |
  STA.B $E4                                 ; $84E2A9 |
  JSL.L CODE_FL_8B80CE                      ; $84E2AB |
  LDA.W #$0011                              ; $84E2AF |
  STA.B $92                                 ; $84E2B2 |
  LDA.W #$0060                              ; $84E2B4 |
  STA.B $2C,X                               ; $84E2B7 |
  LDA.W #$0010                              ; $84E2B9 |
  STA.B $1A,X                               ; $84E2BC |
  RTL                                       ; $84E2BE |

CODE_84E2BF:
  JSL.L CODE_FL_8B80CE                      ; $84E2BF |
  JSL.L CODE_FL_86C70D                      ; $84E2C3 |
  LDA.W #$A633                              ; $84E2C7 |
  JSL.L CODE_FL_809934                      ; $84E2CA |
  BCC CODE_84E2D2                           ; $84E2CE |
  INC.B $1A,X                               ; $84E2D0 |

CODE_84E2D2:
  RTL                                       ; $84E2D2 |

CODE_84E2D3:
  LDA.W #$0098                              ; $84E2D3 |
  JSL.L CODE_FL_8B8174                      ; $84E2D6 |
  BNE CODE_84E2EC                           ; $84E2DA |
  LDA.W $0404                               ; $84E2DC |
  ORA.W #$2020                              ; $84E2DF |
  STA.W $0404                               ; $84E2E2 |
  LDA.W #$0010                              ; $84E2E5 |
  STA.B $2C,X                               ; $84E2E8 |
  INC.B $1A,X                               ; $84E2EA |

CODE_84E2EC:
  RTL                                       ; $84E2EC |

CODE_84E2ED:
  STZ.W $0498                               ; $84E2ED |
  JSL.L CODE_FL_86C70D                      ; $84E2F0 |
  JSL.L CODE_FL_8B86BA                      ; $84E2F4 |
  BCS CODE_84E301                           ; $84E2F8 |
  LDA.W #$0020                              ; $84E2FA |
  STA.B $2C,X                               ; $84E2FD |
  INC.B $1A,X                               ; $84E2FF |

CODE_84E301:
  RTL                                       ; $84E301 |

CODE_84E302:
  JSL.L CODE_FL_86C70D                      ; $84E302 |
  LDY.W #$0940                              ; $84E306 |
  LDA.W #$01C5                              ; $84E309 |
  JSL.L CODE_FL_86C9E0                      ; $84E30C |
  LDA.W #$0006                              ; $84E310 |
  STA.W $003A,Y                             ; $84E313 |
  LDA.W #$001A                              ; $84E316 |
  STA.W $0040,Y                             ; $84E319 |
  LDA.W #$0080                              ; $84E31C |
  STA.W $0011,Y                             ; $84E31F |
  LDA.W #$0040                              ; $84E322 |
  STA.B $2C,X                               ; $84E325 |
  INC.B $1A,X                               ; $84E327 |

CODE_84E329:
  JSL.L CODE_FL_86C70D                      ; $84E329 |
  LDA.W #$A642                              ; $84E32D |
  JSL.L CODE_FL_809934                      ; $84E330 |
  BCC CODE_84E33D                           ; $84E334 |
  LDA.W #$0040                              ; $84E336 |
  STA.B $2C,X                               ; $84E339 |
  INC.B $1A,X                               ; $84E33B |

CODE_84E33D:
  RTL                                       ; $84E33D |

CODE_84E33E:
  JSL.L CODE_FL_86C70D                      ; $84E33E |
  JSL.L CODE_FL_87E3B7                      ; $84E342 |
  BCC CODE_84E34F                           ; $84E346 |
  LDA.W #$0040                              ; $84E348 |
  STA.B $2C,X                               ; $84E34B |
  INC.B $1A,X                               ; $84E34D |

CODE_84E34F:
  RTL                                       ; $84E34F |

CODE_84E350:
  JSL.L CODE_FL_86C70D                      ; $84E350 |
  INC.B $1A,X                               ; $84E354 |
  JSL.L CODE_FL_80C213                      ; $84E356 |
  JSL.L CODE_FL_80893F                      ; $84E35A |
  RTL                                       ; $84E35E |

CODE_84E35F:
  LDA.W $1F30                               ; $84E35F |
  BNE CODE_84E380                           ; $84E362 |
  LDA.W #$00FF                              ; $84E364 |
  STA.L $7E7C04                             ; $84E367 |
  JSL.L CODE_FL_8B8057                      ; $84E36B |
  LDA.W #$0200                              ; $84E36F |
  STA.W $0558                               ; $84E372 |
  LDA.W #$0010                              ; $84E375 |
  STA.B $2C,X                               ; $84E378 |
  INC.B $1A,X                               ; $84E37A |
  JSL.L CODE_FL_8B8000                      ; $84E37C |

CODE_84E380:
  RTL                                       ; $84E380 |

CODE_84E381:
  JSL.L CODE_FL_86C70D                      ; $84E381 |
  LDY.W #$0020                              ; $84E385 |
  JSL.L CODE_FL_808993                      ; $84E388 |
  LDA.W #$004A                              ; $84E38C |
  JSL.L push_sound_queue                    ; $84E38F |
  LDA.W #$0400                              ; $84E393 |
  STA.W $0498                               ; $84E396 |
  STA.W $0558                               ; $84E399 |
  JSL.L CODE_FL_8B8067                      ; $84E39C |
  INC.B $1A,X                               ; $84E3A0 |
  JSL.L CODE_FL_80C222                      ; $84E3A2 |
  RTL                                       ; $84E3A6 |

CODE_84E3A7:
  LDA.W #$0400                              ; $84E3A7 |
  STA.W $0498                               ; $84E3AA |
  STA.W $0558                               ; $84E3AD |
  INC.B $1A,X                               ; $84E3B0 |
  RTL                                       ; $84E3B2 |

CODE_84E3B3:
  STZ.W $0498                               ; $84E3B3 |
  STZ.W $0558                               ; $84E3B6 |
  LDA.W $1F30                               ; $84E3B9 |
  BNE CODE_84E380                           ; $84E3BC |
  STZ.B $E4                                 ; $84E3BE |
  STZ.B $92                                 ; $84E3C0 |
  STZ.B $76                                 ; $84E3C2 |
  JML.L CODE_FL_86CA2D                      ; $84E3C4 |

CODE_JP_84E3C8:
  LDA.L $700758                             ; $84E3C8 |
  CMP.W #$0005                              ; $84E3CC |
  BEQ CODE_84E3D4                           ; $84E3CF |
  JMP.W CODE_JP_84E6D2                      ; $84E3D1 |

CODE_84E3D4:
  LDA.L $700758                             ; $84E3D4 |
  INC A                                     ; $84E3D8 |
  STA.L $700758                             ; $84E3D9 |
  JSL.L CODE_FL_80EC00                      ; $84E3DD |
  JSL.L CODE_FL_83852F                      ; $84E3E1 |
  JSL.L CODE_FL_8B80CE                      ; $84E3E5 |
  LDA.W #$0011                              ; $84E3E9 |
  STA.B $92                                 ; $84E3EC |
  INC.B $76                                 ; $84E3EE |
  JSL.L CODE_FL_8B8030                      ; $84E3F0 |
  LDA.W #$001C                              ; $84E3F4 |
  STA.B $1A,X                               ; $84E3F7 |
  RTL                                       ; $84E3F9 |

CODE_84E3FA:
  LDY.W #$08F0                              ; $84E3FA |
  LDA.W #$01C5                              ; $84E3FD |
  JSL.L CODE_FL_86C9E0                      ; $84E400 |
  LDA.W #$0004                              ; $84E404 |
  STA.W $003A,Y                             ; $84E407 |
  LDA.W #$0023                              ; $84E40A |
  STA.W $0040,Y                             ; $84E40D |
  LDA.W #$00A0                              ; $84E410 |
  STA.W $0009,Y                             ; $84E413 |
  LDA.W #$0070                              ; $84E416 |
  STA.W $000D,Y                             ; $84E419 |
  INC.B $1A,X                               ; $84E41C |
  RTL                                       ; $84E41E |

CODE_84E41F:
  LDY.W #$0940                              ; $84E41F |
  LDA.W #$01C5                              ; $84E422 |
  JSL.L CODE_FL_86C9E0                      ; $84E425 |
  LDA.W #$0006                              ; $84E429 |
  STA.W $003A,Y                             ; $84E42C |
  LDA.W #$0023                              ; $84E42F |
  STA.W $0040,Y                             ; $84E432 |
  LDA.W #$0080                              ; $84E435 |
  STA.W $0009,Y                             ; $84E438 |
  LDA.W #$0080                              ; $84E43B |
  STA.W $000D,Y                             ; $84E43E |
  LDA.W #$0080                              ; $84E441 |
  STA.B $2C,X                               ; $84E444 |
  INC.B $1A,X                               ; $84E446 |
  RTL                                       ; $84E448 |

CODE_84E449:
  JSL.L CODE_FL_86C70D                      ; $84E449 |
  INC.W $090A                               ; $84E44D |
  LDA.W #$0040                              ; $84E450 |
  STA.B $2C,X                               ; $84E453 |
  INC.B $1A,X                               ; $84E455 |

CODE_84E457:
  JSL.L CODE_FL_86C70D                      ; $84E457 |
  LDA.W #$2403                              ; $84E45B |
  JSL.L CODE_FL_809934                      ; $84E45E |
  BCC CODE_84E46B                           ; $84E462 |
  LDA.W #$0020                              ; $84E464 |
  STA.B $2C,X                               ; $84E467 |
  INC.B $1A,X                               ; $84E469 |

CODE_84E46B:
  RTL                                       ; $84E46B |

CODE_84E46C:
  JSL.L CODE_FL_86C70D                      ; $84E46C |
  LDA.W #$2422                              ; $84E470 |
  JSL.L CODE_FL_809934                      ; $84E473 |
  BCC CODE_84E47E                           ; $84E477 |
  INC.W $095A                               ; $84E479 |
  INC.B $1A,X                               ; $84E47C |

CODE_84E47E:
  RTL                                       ; $84E47E |

CODE_84E47F:
  JSL.L CODE_FL_86C70D                      ; $84E47F |
  LDA.W #$2440                              ; $84E483 |
  JSL.L CODE_FL_809934                      ; $84E486 |
  BCC CODE_84E496                           ; $84E48A |
  INC.B $1A,X                               ; $84E48C |
  JSL.L CODE_FL_80C213                      ; $84E48E |
  JSL.L CODE_FL_80893F                      ; $84E492 |

CODE_84E496:
  RTL                                       ; $84E496 |

CODE_84E497:
  LDA.W $1F30                               ; $84E497 |
  BNE CODE_84E4CE                           ; $84E49A |
  LDA.W #$00FF                              ; $84E49C |
  STA.L $7E7C04                             ; $84E49F |
  JSL.L CODE_FL_8B8057                      ; $84E4A3 |
  LDA.W #$0800                              ; $84E4A7 |
  STA.W $0498                               ; $84E4AA |
  LDA.W #$0400                              ; $84E4AD |
  STA.W $0558                               ; $84E4B0 |
  LDA.L $700758                             ; $84E4B3 |
  CMP.W #$0006                              ; $84E4B7 |
  BNE CODE_84E4C3                           ; $84E4BA |
  LDY.W #$0074                              ; $84E4BC |
  JSL.L CODE_FL_808993                      ; $84E4BF |

CODE_84E4C3:
  LDA.W #$0010                              ; $84E4C3 |
  STA.B $2C,X                               ; $84E4C6 |
  INC.B $1A,X                               ; $84E4C8 |
  JSL.L CODE_FL_8B8000                      ; $84E4CA |

CODE_84E4CE:
  RTL                                       ; $84E4CE |

CODE_84E4CF:
  JSL.L CODE_FL_86C70D                      ; $84E4CF |
  JSL.L CODE_FL_8B8067                      ; $84E4D3 |
  INC.B $1A,X                               ; $84E4D7 |
  LDA.W #$0100                              ; $84E4D9 |
  STA.W $0498                               ; $84E4DC |
  STA.W $0558                               ; $84E4DF |
  JSL.L CODE_FL_80C222                      ; $84E4E2 |
  RTL                                       ; $84E4E6 |

CODE_JP_84E4E7:
  LDA.W #$0100                              ; $84E4E7 |
  STA.W $0498                               ; $84E4EA |
  STA.W $0558                               ; $84E4ED |
  INC.B $1A,X                               ; $84E4F0 |
  RTL                                       ; $84E4F2 |

CODE_84E4F3:
  STZ.W $0498                               ; $84E4F3 |
  STZ.W $0558                               ; $84E4F6 |
  LDA.W $1F30                               ; $84E4F9 |
  BNE CODE_84E4CE                           ; $84E4FC |
  STZ.B $E4                                 ; $84E4FE |
  STZ.B $92                                 ; $84E500 |
  STZ.B $76                                 ; $84E502 |
  JML.L CODE_FL_86CA2D                      ; $84E504 |

CODE_JP_84E508:
  LDA.L $700758                             ; $84E508 |
  CMP.W #$0006                              ; $84E50C |
  BEQ CODE_84E514                           ; $84E50F |
  JMP.W CODE_JP_84E04F                      ; $84E511 |

CODE_84E514:
  LDA.W #$0110                              ; $84E514 |
  STA.B $2E,X                               ; $84E517 |
  LDA.W #$0098                              ; $84E519 |
  STA.B $30,X                               ; $84E51C |
  LDA.W #$0010                              ; $84E51E |
  STA.B $42,X                               ; $84E521 |
  LDA.W #$0027                              ; $84E523 |
  STA.B $1A,X                               ; $84E526 |

CODE_84E528:
  JSL.L CODE_FL_84EA66                      ; $84E528 |
  BCS CODE_84E55D                           ; $84E52C |
  JSL.L CODE_FL_8B80CE                      ; $84E52E |
  LDA.W #$8001                              ; $84E532 |
  STA.B $E4                                 ; $84E535 |
  LDA.W #$0011                              ; $84E537 |
  STA.B $92                                 ; $84E53A |
  INC.B $1A,X                               ; $84E53C |
  LDX.W #DATA_88860D                        ; $84E53E |
  JSL.L sound_transfer_blocks               ; $84E541 |
  LDY.W #$A126                              ; $84E545 |
  LDA.W #$001E                              ; $84E548 |
  JSL.L CODE_FL_80C2C4                      ; $84E54B |
  LDA.L $700758                             ; $84E54F |
  INC A                                     ; $84E553 |
  STA.L $700758                             ; $84E554 |
  TDC                                       ; $84E558 |
  STA.L $7002AE                             ; $84E559 |

CODE_84E55D:
  RTL                                       ; $84E55D |

CODE_84E55E:
  JSR.W CODE_FN_84E6AF                      ; $84E55E |
  LDA.B $09,X                               ; $84E561 |
  SEC                                       ; $84E563 |
  SBC.W #$0030                              ; $84E564 |
  LDY.B $0D,X                               ; $84E567 |
  JSL.L CODE_FL_8B8111                      ; $84E569 |
  BNE CODE_84E57E                           ; $84E56D |
  LDA.W $0404                               ; $84E56F |
  ORA.W #$2020                              ; $84E572 |
  STA.W $0404                               ; $84E575 |
  JSL.L CODE_FL_83852F                      ; $84E578 |
  INC.B $1A,X                               ; $84E57C |

CODE_84E57E:
  RTL                                       ; $84E57E |

CODE_84E57F:
  JSR.W CODE_FN_84E6AF                      ; $84E57F |
  LDY.W #$08F0                              ; $84E582 |
  LDA.W #$01C5                              ; $84E585 |
  JSL.L CODE_FL_86C9E0                      ; $84E588 |
  LDA.W #$0004                              ; $84E58C |
  STA.W $003A,Y                             ; $84E58F |
  LDA.W #$0004                              ; $84E592 |
  STA.W $003C,Y                             ; $84E595 |
  LDA.W #$0400                              ; $84E598 |
  STA.W $004E,Y                             ; $84E59B |
  INC.B $1A,X                               ; $84E59E |
  RTL                                       ; $84E5A0 |

CODE_84E5A1:
  JSR.W CODE_FN_84E6AF                      ; $84E5A1 |
  LDY.W #$0940                              ; $84E5A4 |
  LDA.W #$01C5                              ; $84E5A7 |
  JSL.L CODE_FL_86C9E0                      ; $84E5AA |
  LDA.W #$0006                              ; $84E5AE |
  STA.W $003A,Y                             ; $84E5B1 |
  LDA.W #$0004                              ; $84E5B4 |
  STA.W $003C,Y                             ; $84E5B7 |
  LDA.W #$0400                              ; $84E5BA |
  STA.W $004E,Y                             ; $84E5BD |
  INC.B $1A,X                               ; $84E5C0 |
  RTL                                       ; $84E5C2 |

CODE_84E5C3:
  JSR.W CODE_FN_84E6AF                      ; $84E5C3 |
  BNE CODE_84E5DA                           ; $84E5C6 |
  LDA.W #$24FF                              ; $84E5C8 |
  JSL.L CODE_FL_809934                      ; $84E5CB |
  BCC CODE_84E5DA                           ; $84E5CF |
  LDA.W #$004A                              ; $84E5D1 |
  STA.L $7E7C04                             ; $84E5D4 |
  INC.B $1A,X                               ; $84E5D8 |

CODE_84E5DA:
  RTL                                       ; $84E5DA |

CODE_84E5DB:
  LDA.W #$008A                              ; $84E5DB |
  STA.L $7E7C04                             ; $84E5DE |
  STZ.B $18                                 ; $84E5E2 |

CODE_84E5E4:
  LDA.W #$01F0                              ; $84E5E4 |
  JSL.L CODE_FL_86C9A7                      ; $84E5E7 |
  BCS CODE_84E5FA                           ; $84E5EB |
  LDA.B $18                                 ; $84E5ED |
  STA.W $003A,Y                             ; $84E5EF |
  INC A                                     ; $84E5F2 |
  STA.B $18                                 ; $84E5F3 |
  CMP.W #$0008                              ; $84E5F5 |
  BNE CODE_84E5E4                           ; $84E5F8 |

CODE_84E5FA:
  LDA.W #$0030                              ; $84E5FA |
  STA.B $2C,X                               ; $84E5FD |
  INC.B $1A,X                               ; $84E5FF |
  RTL                                       ; $84E601 |

CODE_84E602:
  LDA.B $2C,X                               ; $84E602 |
  CMP.W #$0018                              ; $84E604 |
  BNE CODE_84E620                           ; $84E607 |
  LDA.W #$00C3                              ; $84E609 |
  STA.L $7E7C04                             ; $84E60C |
  LDA.W #$FE00                              ; $84E610 |
  STA.W $0916                               ; $84E613 |
  STA.W $0966                               ; $84E616 |
  LDY.W #$008C                              ; $84E619 |
  JSL.L CODE_FL_808993                      ; $84E61C |

CODE_84E620:
  JSL.L CODE_FL_86C70D                      ; $84E620 |
  LDA.W #$0002                              ; $84E624 |
  JSL.L CODE_FL_8B90B1                      ; $84E627 |
  LDA.W #$0110                              ; $84E62B |
  STA.B $09,X                               ; $84E62E |
  LDA.W #$FF00                              ; $84E630 |
  STA.B $26,X                               ; $84E633 |
  LDA.W #$0200                              ; $84E635 |
  STA.B $2A,X                               ; $84E638 |
  LDA.W #$0040                              ; $84E63A |
  STA.B $4C,X                               ; $84E63D |
  INC.B $1A,X                               ; $84E63F |
  RTL                                       ; $84E641 |

CODE_84E642:
  JSL.L CODE_FL_8CFCF0                      ; $84E642 |
  BNE CODE_84E669                           ; $84E646 |
  LDA.B $09,X                               ; $84E648 |
  CMP.W #$00A8                              ; $84E64A |
  BPL CODE_84E65D                           ; $84E64D |
  STZ.B $2A,X                               ; $84E64F |
  STZ.B $26,X                               ; $84E651 |
  LDA.W #$3059                              ; $84E653 |
  JSL.L CODE_FL_86CAEE                      ; $84E656 |
  INC.B $1A,X                               ; $84E65A |
  RTL                                       ; $84E65C |

CODE_84E65D:
  LDA.W #$0200                              ; $84E65D |
  STA.B $2A,X                               ; $84E660 |
  LDA.W #$00AC                              ; $84E662 |
  JSL.L CODE_FL_8089BD                      ; $84E665 |

CODE_84E669:
  RTL                                       ; $84E669 |

CODE_84E66A:
  LDA.W #$252A                              ; $84E66A |
  JSL.L CODE_FL_809934                      ; $84E66D |
  BCC CODE_84E67F                           ; $84E671 |
  LDA.W #$0004                              ; $84E673 |
  STA.B $44,X                               ; $84E676 |
  LDA.W #$0400                              ; $84E678 |
  STA.B $2A,X                               ; $84E67B |
  INC.B $1A,X                               ; $84E67D |

CODE_84E67F:
  RTL                                       ; $84E67F |

CODE_84E680:
  LDA.W #$2625                              ; $84E680 |
  JSL.L CODE_FL_809934                      ; $84E683 |
  BCC CODE_84E691                           ; $84E687 |
  INC.B $1A,X                               ; $84E689 |
  PHX                                       ; $84E68B |
  JSL.L CODE_FL_80EC4D                      ; $84E68C |
  PLX                                       ; $84E690 |

CODE_84E691:
  JSL.L CODE_FL_8CFCF0                      ; $84E691 |
  BNE CODE_84E6A9                           ; $84E695 |
  LDA.B $44,X                               ; $84E697 |
  BEQ CODE_84E6A9                           ; $84E699 |
  DEC.B $44,X                               ; $84E69B |
  LDA.W #$0200                              ; $84E69D |
  STA.B $2A,X                               ; $84E6A0 |
  LDA.W #$00AC                              ; $84E6A2 |
  JSL.L CODE_FL_8089BD                      ; $84E6A5 |

CODE_84E6A9:
  RTL                                       ; $84E6A9 |

CODE_84E6AA:
  JSL.L CODE_FL_8CFCF0                      ; $84E6AA |
  RTL                                       ; $84E6AE |

CODE_FN_84E6AF:
  LDY.W #$0000                              ; $84E6AF |
  LDA.B $42                                 ; $84E6B2 |
  AND.W #$0001                              ; $84E6B4 |
  BNE CODE_84E6CB                           ; $84E6B7 |
  LDA.W $1672                               ; $84E6B9 |
  CMP.W #$00B8                              ; $84E6BC |
  BEQ CODE_84E6CB                           ; $84E6BF |
  BMI CODE_84E6C8                           ; $84E6C1 |
  LDY.W #$FFFF                              ; $84E6C3 |
  BRA CODE_84E6CB                           ; $84E6C6 |

CODE_84E6C8:
  LDY.W #$0001                              ; $84E6C8 |

CODE_84E6CB:
  STY.W $1962                               ; $84E6CB |
  LDA.W $1962                               ; $84E6CE |
  RTS                                       ; $84E6D1 |

CODE_JP_84E6D2:
  LDA.L $700758                             ; $84E6D2 |
  CMP.W #$0007                              ; $84E6D6 |
  BEQ CODE_84E6DE                           ; $84E6D9 |
  JMP.W CODE_JP_84E893                      ; $84E6DB |

CODE_84E6DE:
  LDA.L $700758                             ; $84E6DE |
  INC A                                     ; $84E6E2 |
  STA.L $700758                             ; $84E6E3 |
  JSL.L CODE_FL_83852F                      ; $84E6E7 |
  JSL.L CODE_FL_8B80CE                      ; $84E6EB |
  LDA.W #$0011                              ; $84E6EF |
  STA.B $92                                 ; $84E6F2 |
  INC.B $76                                 ; $84E6F4 |
  JSL.L CODE_FL_8B8030                      ; $84E6F6 |
  LDA.W #$0033                              ; $84E6FA |
  STA.B $1A,X                               ; $84E6FD |
  LDA.W #$0002                              ; $84E6FF |
  STA.B $2C,X                               ; $84E702 |
  RTL                                       ; $84E704 |

CODE_84E705:
  JSL.L CODE_FL_86C70D                      ; $84E705 |
  LDY.W #$0620                              ; $84E709 |
  LDA.W #$01C5                              ; $84E70C |
  JSL.L CODE_FL_86C9E0                      ; $84E70F |
  TDC                                       ; $84E713 |
  STA.W $003A,Y                             ; $84E714 |
  LDA.W #$0023                              ; $84E717 |
  STA.W $0040,Y                             ; $84E71A |
  LDA.W #$0080                              ; $84E71D |
  STA.W $0009,Y                             ; $84E720 |
  LDA.W #$0070                              ; $84E723 |
  STA.W $000D,Y                             ; $84E726 |
  INC.B $1A,X                               ; $84E729 |
  RTL                                       ; $84E72B |

CODE_84E72C:
  LDY.W #$0670                              ; $84E72C |
  LDA.W #$01C5                              ; $84E72F |
  JSL.L CODE_FL_86C9E0                      ; $84E732 |
  LDA.W #$0002                              ; $84E736 |
  STA.W $003A,Y                             ; $84E739 |
  LDA.W #$0023                              ; $84E73C |
  STA.W $0040,Y                             ; $84E73F |
  LDA.W #$0060                              ; $84E742 |
  STA.W $0009,Y                             ; $84E745 |
  LDA.W #$0090                              ; $84E748 |
  STA.W $000D,Y                             ; $84E74B |
  LDA.W #$0080                              ; $84E74E |
  STA.B $2C,X                               ; $84E751 |
  INC.B $1A,X                               ; $84E753 |
  RTL                                       ; $84E755 |

CODE_84E756:
  JSL.L CODE_FL_86C70D                      ; $84E756 |
  INC.W $063A                               ; $84E75A |
  LDA.W #$0040                              ; $84E75D |
  STA.B $2C,X                               ; $84E760 |
  INC.B $1A,X                               ; $84E762 |

CODE_84E764:
  JSL.L CODE_FL_86C70D                      ; $84E764 |
  LDA.W #$265C                              ; $84E768 |
  JSL.L CODE_FL_809934                      ; $84E76B |
  BCC CODE_84E777                           ; $84E76F |
  INC.B $1A,X                               ; $84E771 |
  JSL.L CODE_FL_80C213                      ; $84E773 |

CODE_84E777:
  RTL                                       ; $84E777 |

CODE_JP_84E778:
  LDA.L $700758                             ; $84E778 |
  CMP.W #$0009                              ; $84E77C |
  BEQ CODE_84E784                           ; $84E77F |
  JMP.W CODE_JP_84E04F                      ; $84E781 |

CODE_84E784:
  LDA.L $700758                             ; $84E784 |
  INC A                                     ; $84E788 |
  STA.L $700758                             ; $84E789 |
  JSL.L CODE_FL_83852F                      ; $84E78D |
  INC.B $76                                 ; $84E791 |
  JSL.L CODE_FL_8B8030                      ; $84E793 |
  LDA.W #$003C                              ; $84E797 |
  STA.B $1A,X                               ; $84E79A |
  RTL                                       ; $84E79C |

CODE_84E79D:
  LDY.W #$08F0                              ; $84E79D |
  LDA.W #$01C5                              ; $84E7A0 |
  JSL.L CODE_FL_86C9E0                      ; $84E7A3 |
  LDA.W #$0004                              ; $84E7A7 |
  STA.W $003A,Y                             ; $84E7AA |
  LDA.W #$0020                              ; $84E7AD |
  STA.W $0009,Y                             ; $84E7B0 |
  LDA.W #$0090                              ; $84E7B3 |
  STA.W $000D,Y                             ; $84E7B6 |
  LDA.W #$0040                              ; $84E7B9 |
  STA.B $2C,X                               ; $84E7BC |
  INC.B $1A,X                               ; $84E7BE |
  RTL                                       ; $84E7C0 |

CODE_84E7C1:
  JSL.L CODE_FL_86C70D                      ; $84E7C1 |
  LDA.W #$8001                              ; $84E7C5 |
  STA.B $E4                                 ; $84E7C8 |
  LDA.W #$0080                              ; $84E7CA |
  STA.B $2C,X                               ; $84E7CD |
  INC.B $1A,X                               ; $84E7CF |

CODE_84E7D1:
  JSL.L CODE_FL_84E213                      ; $84E7D1 |
  JSL.L CODE_FL_8CFBD6                      ; $84E7D5 |
  JSL.L CODE_FL_86C70D                      ; $84E7D9 |
  JSL.L CODE_FL_8B8083                      ; $84E7DD |
  INC.B $1A,X                               ; $84E7E1 |

CODE_84E7E3:
  LDA.W #$0080                              ; $84E7E3 |
  LDY.W #$0090                              ; $84E7E6 |
  JSL.L CODE_FL_8B8131                      ; $84E7E9 |
  BNE CODE_84E7FB                           ; $84E7ED |
  LDA.W #$0200                              ; $84E7EF |
  STA.W $0498                               ; $84E7F2 |
  JSL.L CODE_FL_8B807E                      ; $84E7F5 |
  INC.B $1A,X                               ; $84E7F9 |

CODE_84E7FB:
  RTL                                       ; $84E7FB |

CODE_84E7FC:
  LDA.W #$0080                              ; $84E7FC |
  LDY.W #$0090                              ; $84E7FF |
  JSL.L CODE_FL_8B814A                      ; $84E802 |
  BNE CODE_84E80A                           ; $84E806 |
  INC.B $1A,X                               ; $84E808 |

CODE_84E80A:
  RTL                                       ; $84E80A |

CODE_84E80B:
  LDY.W #$0620                              ; $84E80B |
  LDA.W #$01C5                              ; $84E80E |
  JSL.L CODE_FL_86C9E0                      ; $84E811 |
  TDC                                       ; $84E815 |

CODE_84E816:
  STA.W $003A,Y                             ; $84E816 |
  LDA.W #$0004                              ; $84E819 |
  STA.W $003C,Y                             ; $84E81C |
  LDA.W #$0400                              ; $84E81F |
  STA.W $004E,Y                             ; $84E822 |
  INC.B $1A,X                               ; $84E825 |
  RTL                                       ; $84E827 |

CODE_84E828:
  LDY.W #$0670                              ; $84E828 |
  LDA.W #$01C5                              ; $84E82B |
  JSL.L CODE_FL_86C9E0                      ; $84E82E |
  LDA.W #$0002                              ; $84E832 |
  BRA CODE_84E816                           ; $84E835 |

CODE_84E837:
  LDA.W #$2762                              ; $84E837 |
  JSL.L CODE_FL_809934                      ; $84E83A |
  BCC CODE_84E846                           ; $84E83E |
  INC.B $1A,X                               ; $84E840 |
  JSL.L CODE_FL_80C213                      ; $84E842 |

CODE_84E846:
  RTL                                       ; $84E846 |

CODE_84E847:
  LDA.W $1F30                               ; $84E847 |
  BNE CODE_84E846                           ; $84E84A |
  LDA.W #$00FF                              ; $84E84C |
  STA.L $7E7C04                             ; $84E84F |
  JSL.L CODE_FL_8B8057                      ; $84E853 |
  LDA.W #$0200                              ; $84E857 |
  STA.W $0498                               ; $84E85A |
  LDA.W #$0100                              ; $84E85D |
  STA.W $0558                               ; $84E860 |
  LDA.W #$0010                              ; $84E863 |
  STA.B $2C,X                               ; $84E866 |
  INC.B $1A,X                               ; $84E868 |
  JSL.L CODE_FL_8B8067                      ; $84E86A |
  JSL.L CODE_FL_8B8000                      ; $84E86E |
  RTL                                       ; $84E872 |

CODE_84E873:
  JSL.L CODE_FL_86C70D                      ; $84E873 |
  INC.B $1A,X                               ; $84E877 |
  LDA.W #$0400                              ; $84E879 |
  STA.W $0498                               ; $84E87C |
  STA.W $0558                               ; $84E87F |
  JSL.L CODE_FL_80C222                      ; $84E882 |
  RTL                                       ; $84E886 |

CODE_84E887:
  LDA.W #$0400                              ; $84E887 |
  STA.W $0498                               ; $84E88A |
  STA.W $0558                               ; $84E88D |
  INC.B $1A,X                               ; $84E890 |
  RTL                                       ; $84E892 |

CODE_JP_84E893:
  LDA.L $700758                             ; $84E893 |
  CMP.W #$000B                              ; $84E897 |
  BEQ CODE_84E89F                           ; $84E89A |
  JMP.W CODE_JP_84E04F                      ; $84E89C |

CODE_84E89F:
  LDA.L $700758                             ; $84E89F |
  INC A                                     ; $84E8A3 |
  STA.L $700758                             ; $84E8A4 |
  JSL.L CODE_FL_83852F                      ; $84E8A8 |
  INC.B $76                                 ; $84E8AC |
  JSL.L CODE_FL_8B8030                      ; $84E8AE |
  LDA.W #$FFE0                              ; $84E8B2 |
  STA.B $09,X                               ; $84E8B5 |
  LDA.W #$0090                              ; $84E8B7 |
  STA.B $0D,X                               ; $84E8BA |
  LDY.W #$0D50                              ; $84E8BC |
  LDA.W #$0620                              ; $84E8BF |
  JSR.W CODE_FN_84E8EB                      ; $84E8C2 |
  LDY.W #$0DA0                              ; $84E8C5 |
  LDA.W #$0670                              ; $84E8C8 |
  JSR.W CODE_FN_84E8EB                      ; $84E8CB |
  LDY.W #$0DF0                              ; $84E8CE |
  LDA.W #$08F0                              ; $84E8D1 |
  JSR.W CODE_FN_84E8EB                      ; $84E8D4 |
  LDY.W #$0E40                              ; $84E8D7 |
  LDA.W #$0940                              ; $84E8DA |
  JSR.W CODE_FN_84E8EB                      ; $84E8DD |
  LDA.W #$0010                              ; $84E8E0 |
  STA.B $2C,X                               ; $84E8E3 |
  LDA.W #$0049                              ; $84E8E5 |
  STA.B $1A,X                               ; $84E8E8 |
  RTL                                       ; $84E8EA |

CODE_FN_84E8EB:
  PHA                                       ; $84E8EB |
  LDA.W #$015B                              ; $84E8EC |
  JSL.L CODE_FL_86C9E0                      ; $84E8EF |
  PLA                                       ; $84E8F3 |
  STA.W $003C,Y                             ; $84E8F4 |
  LDA.W #$3C00                              ; $84E8F7 |
  STA.W $004E,Y                             ; $84E8FA |
  LDA.W #$0020                              ; $84E8FD |
  STA.W $0011,Y                             ; $84E900 |
  RTS                                       ; $84E903 |

CODE_84E904:
  LDY.W #$0940                              ; $84E904 |
  LDA.W #$01C5                              ; $84E907 |
  JSL.L CODE_FL_86C9E0                      ; $84E90A |
  LDA.W #$0006                              ; $84E90E |
  STA.W $003A,Y                             ; $84E911 |
  LDA.W #$0003                              ; $84E914 |
  STA.W $003C,Y                             ; $84E917 |
  LDA.W #$0E40                              ; $84E91A |
  STA.W $004E,Y                             ; $84E91D |
  INC.B $1A,X                               ; $84E920 |
  RTL                                       ; $84E922 |

CODE_84E923:
  JSL.L CODE_FL_84E213                      ; $84E923 |
  JSL.L CODE_FL_8CFBB6                      ; $84E927 |
  JSL.L CODE_FL_86C70D                      ; $84E92B |
  LDY.W #$0D50                              ; $84E92F |
  JMP.W CODE_FL_84E993                      ; $84E932 |

CODE_84E935:
  JSL.L CODE_FL_84E213                      ; $84E935 |
  JSL.L CODE_FL_8CFBB6                      ; $84E939 |
  JSL.L CODE_FL_86C70D                      ; $84E93D |
  LDY.W #$0DA0                              ; $84E941 |
  JMP.W CODE_FL_84E993                      ; $84E944 |

CODE_84E947:
  JSL.L CODE_FL_84E213                      ; $84E947 |
  JSL.L CODE_FL_8CFBB6                      ; $84E94B |
  JSL.L CODE_FL_86C70D                      ; $84E94F |
  LDY.W #$0DF0                              ; $84E953 |
  JMP.W CODE_FL_84E993                      ; $84E956 |

CODE_84E959:
  JSL.L CODE_FL_84E213                      ; $84E959 |
  JSL.L CODE_FL_8CFBB6                      ; $84E95D |
  JSL.L CODE_FL_86C70D                      ; $84E961 |
  LDY.W #$0E40                              ; $84E965 |
  JSL.L CODE_FL_84E993                      ; $84E968 |
  LDA.W #$0100                              ; $84E96C |
  STA.B $2C,X                               ; $84E96F |

CODE_84E971:
  JSL.L CODE_FL_86C70D                      ; $84E971 |
  LDA.W #$2A10                              ; $84E975 |
  JSL.L CODE_FL_809934                      ; $84E978 |
  BCC CODE_84E988                           ; $84E97C |
  INC.B $1A,X                               ; $84E97E |
  JSL.L CODE_FL_80893F                      ; $84E980 |
  JSL.L CODE_FL_80C213                      ; $84E984 |

CODE_84E988:
  RTL                                       ; $84E988 |

CODE_84E989:
  LDY.W #$0074                              ; $84E989 |
  JSL.L CODE_FL_808990                      ; $84E98C |
  JMP.W CODE_JP_84E4E7                      ; $84E990 |

CODE_FL_84E993:
  LDA.W #$0006                              ; $84E993 |
  STA.W $001A,Y                             ; $84E996 |
  LDA.W #$0030                              ; $84E999 |
  STA.B $2C,X                               ; $84E99C |
  INC.B $1A,X                               ; $84E99E |
  RTL                                       ; $84E9A0 |

CODE_JP_84E9A1:
  LDA.L $700758                             ; $84E9A1 |
  CMP.W #$000E                              ; $84E9A5 |
  BEQ CODE_84E9AD                           ; $84E9A8 |
  JMP.W CODE_JP_84E04F                      ; $84E9AA |

CODE_84E9AD:
  LDA.W #$0028                              ; $84E9AD |
  JSL.L CODE_FL_87E3B2                      ; $84E9B0 |
  LDA.L $700758                             ; $84E9B4 |
  INC A                                     ; $84E9B8 |
  STA.L $700758                             ; $84E9B9 |
  LDA.W #$0028                              ; $84E9BD |
  JSL.L CODE_FL_84F26F                      ; $84E9C0 |
  JSL.L CODE_FL_83852F                      ; $84E9C4 |
  INC.B $76                                 ; $84E9C8 |
  LDA.W #$8001                              ; $84E9CA |
  STA.B $E4                                 ; $84E9CD |
  JSL.L CODE_FL_8B80CE                      ; $84E9CF |
  LDA.W #$0030                              ; $84E9D3 |
  STA.B $2C,X                               ; $84E9D6 |
  LDA.W #$0057                              ; $84E9D8 |
  STA.B $1A,X                               ; $84E9DB |
  RTL                                       ; $84E9DD |

CODE_84E9DE:
  JSL.L CODE_FL_86C70D                      ; $84E9DE |
  JSL.L CODE_FL_8B86D2                      ; $84E9E2 |
  BCS CODE_84E9EA                           ; $84E9E6 |
  INC.B $1A,X                               ; $84E9E8 |

CODE_84E9EA:
  RTL                                       ; $84E9EA |

CODE_84E9EB:
  LDA.W #$FB1C                              ; $84E9EB |
  JSL.L CODE_FL_809934                      ; $84E9EE |
  BCC CODE_84E9FB                           ; $84E9F2 |
  LDA.W #$0040                              ; $84E9F4 |
  STA.B $2C,X                               ; $84E9F7 |
  INC.B $1A,X                               ; $84E9F9 |

CODE_84E9FB:
  RTL                                       ; $84E9FB |

CODE_84E9FC:
  JSL.L CODE_FL_86C70D                      ; $84E9FC |
  INC.B $1A,X                               ; $84EA00 |
  JML.L CODE_FL_80C213                      ; $84EA02 |

CODE_84EA06:
  JSL.L CODE_FL_86C70D                      ; $84EA06 |
  JSL.L CODE_FL_8B8057                      ; $84EA0A |
  LDA.W #$0400                              ; $84EA0E |
  STA.W $0498                               ; $84EA11 |
  STA.W $0558                               ; $84EA14 |
  JSL.L CODE_FL_8B8067                      ; $84EA17 |
  INC.B $1A,X                               ; $84EA1B |
  JSL.L CODE_FL_83B28B                      ; $84EA1D |
  JSL.L CODE_FL_80C222                      ; $84EA21 |
  RTL                                       ; $84EA25 |

CODE_JP_84EA26:
  LDA.L $700758                             ; $84EA26 |
  CMP.W #$000C                              ; $84EA2A |
  BEQ CODE_84EA32                           ; $84EA2D |
  JMP.W CODE_JP_84E04F                      ; $84EA2F |

CODE_84EA32:
  LDA.W #$001A                              ; $84EA32 |
  JSL.L CODE_FL_87E3B2                      ; $84EA35 |
  LDA.L $700758                             ; $84EA39 |
  INC A                                     ; $84EA3D |
  STA.L $700758                             ; $84EA3E |
  JSL.L CODE_FL_83852F                      ; $84EA42 |
  INC.B $76                                 ; $84EA46 |
  LDA.W #$8001                              ; $84EA48 |
  STA.B $E4                                 ; $84EA4B |
  JSL.L CODE_FL_8B80CE                      ; $84EA4D |
  LDA.W #$0060                              ; $84EA51 |
  STA.B $2C,X                               ; $84EA54 |
  LDA.W #$0060                              ; $84EA56 |
  STA.B $1A,X                               ; $84EA59 |
  RTL                                       ; $84EA5B |

CODE_84EA5C:
  STZ.B $E4                                 ; $84EA5C |
  STZ.B $92                                 ; $84EA5E |
  STZ.B $76                                 ; $84EA60 |
  JML.L CODE_FL_86CA2D                      ; $84EA62 |

CODE_FL_84EA66:
  LDY.W #$0400                              ; $84EA66 |
  LDA.W $0018,Y                             ; $84EA69 |
  BEQ CODE_84EA74                           ; $84EA6C |
  JSL.L CODE_FL_8CFA7A                      ; $84EA6E |
  BCC CODE_84EA84                           ; $84EA72 |

CODE_84EA74:
  LDY.W #$04C0                              ; $84EA74 |
  LDA.W $0018,Y                             ; $84EA77 |
  BEQ CODE_84EA82                           ; $84EA7A |
  JSL.L CODE_FL_8CFA7A                      ; $84EA7C |
  BCC CODE_84EA84                           ; $84EA80 |

CODE_84EA82:
  SEC                                       ; $84EA82 |
  RTL                                       ; $84EA83 |

CODE_84EA84:
  CLC                                       ; $84EA84 |
  RTL                                       ; $84EA85 |

CODE_84EA86:
  JSL.L CODE_FL_86C3F8                      ; $84EA86 |
  PHX                                       ; $84EA8A |
  ASL A                                     ; $84EA8B |
  TAX                                       ; $84EA8C |
  LDA.L PTR16_84EA97,X                      ; $84EA8D |
  PLX                                       ; $84EA91 |
  STA.B $00                                 ; $84EA92 |
  JMP.W ($0000)                             ; $84EA94 |

PTR16_84EA97:
  dw CODE_84EB43                            ; $84EA97 |
  dw CODE_JP_84EB81                         ; $84EA99 |
  dw CODE_84EBBB                            ; $84EA9B |
  dw CODE_84EBC9                            ; $84EA9D |
  dw CODE_84EBD5                            ; $84EA9F |
  dw CODE_84EBE7                            ; $84EAA1 |
  dw CODE_84EC0C                            ; $84EAA3 |
  dw CODE_84EC26                            ; $84EAA5 |
  dw CODE_84EC48                            ; $84EAA7 |
  dw CODE_84EC5A                            ; $84EAA9 |
  dw CODE_84EC6B                            ; $84EAAB |
  dw CODE_84EC7E                            ; $84EAAD |
  dw CODE_84EC95                            ; $84EAAF |
  dw CODE_84E33E                            ; $84EAB1 |
  dw CODE_84ECAA                            ; $84EAB3 |
  dw CODE_JP_84ECD3                         ; $84EAB5 |
  dw CODE_84ED01                            ; $84EAB7 |
  dw CODE_84ED13                            ; $84EAB9 |
  dw CODE_84ED25                            ; $84EABB |
  dw CODE_84ED3E                            ; $84EABD |
  dw CODE_84ED66                            ; $84EABF |
  dw CODE_84ED8C                            ; $84EAC1 |
  dw CODE_84EDB4                            ; $84EAC3 |
  dw CODE_84EDC0                            ; $84EAC5 |
  dw CODE_84EDCE                            ; $84EAC7 |
  dw CODE_84EDE0                            ; $84EAC9 |
  dw CODE_84EDEE                            ; $84EACB |
  dw CODE_84EE00                            ; $84EACD |
  dw CODE_84EE39                            ; $84EACF |
  dw CODE_84EE54                            ; $84EAD1 |
  dw CODE_84EE68                            ; $84EAD3 |
  dw CODE_84EE7B                            ; $84EAD5 |
  dw CODE_JP_84EE9E                         ; $84EAD7 |
  dw CODE_84EEE8                            ; $84EAD9 |
  dw CODE_84EEFB                            ; $84EADB |
  dw CODE_84EBD5                            ; $84EADD |
  dw CODE_84EBE7                            ; $84EADF |
  dw CODE_84EC0C                            ; $84EAE1 |
  dw CODE_84EF0E                            ; $84EAE3 |
  dw CODE_84EC48                            ; $84EAE5 |
  dw CODE_84EF30                            ; $84EAE7 |
  dw CODE_84EF43                            ; $84EAE9 |
  dw CODE_84EF6C                            ; $84EAEB |
  dw CODE_84EF8C                            ; $84EAED |
  dw CODE_84EFA0                            ; $84EAEF |
  dw CODE_84EFCF                            ; $84EAF1 |
  dw CODE_84EFD9                            ; $84EAF3 |
  dw CODE_JP_84EFE1                         ; $84EAF5 |
  dw CODE_84EEE8                            ; $84EAF7 |
  dw CODE_84EEFB                            ; $84EAF9 |
  dw CODE_84EBD5                            ; $84EAFB |
  dw CODE_84EBE7                            ; $84EAFD |
  dw CODE_84EC0C                            ; $84EAFF |
  dw CODE_84F012                            ; $84EB01 |
  dw CODE_84EC48                            ; $84EB03 |
  dw CODE_84F034                            ; $84EB05 |
  dw CODE_84F046                            ; $84EB07 |
  dw CODE_84F058                            ; $84EB09 |
  dw CODE_JP_84F060                         ; $84EB0B |
  dw CODE_84EEE8                            ; $84EB0D |
  dw CODE_84EEFB                            ; $84EB0F |
  dw CODE_84EBD5                            ; $84EB11 |
  dw CODE_84EBE7                            ; $84EB13 |
  dw CODE_84EC0C                            ; $84EB15 |
  dw CODE_84F084                            ; $84EB17 |
  dw CODE_84EC48                            ; $84EB19 |
  dw CODE_84F0A6                            ; $84EB1B |
  dw CODE_84F0B9                            ; $84EB1D |
  dw CODE_84E33E                            ; $84EB1F |
  dw CODE_84F0CE                            ; $84EB21 |
  dw CODE_JP_84F0D6                         ; $84EB23 |
  dw CODE_84EEE8                            ; $84EB25 |
  dw CODE_84EEFB                            ; $84EB27 |
  dw CODE_84EBD5                            ; $84EB29 |
  dw CODE_84EBE7                            ; $84EB2B |
  dw CODE_84EC0C                            ; $84EB2D |
  dw CODE_84F0FA                            ; $84EB2F |
  dw CODE_84EC48                            ; $84EB31 |
  dw CODE_84F11C                            ; $84EB33 |
  dw CODE_84F12D                            ; $84EB35 |
  dw CODE_84F14F                            ; $84EB37 |
  dw CODE_84F16A                            ; $84EB39 |
  dw CODE_84F181                            ; $84EB3B |
  dw CODE_84F196                            ; $84EB3D |
  dw CODE_84F1AC                            ; $84EB3F |
  dw CODE_84F1B6                            ; $84EB41 |

CODE_84EB43:
  LDA.W #$8000                              ; $84EB43 |
  ORA.W #$0100                              ; $84EB46 |
  STA.B $22,X                               ; $84EB49 |
  LDA.B $8E                                 ; $84EB4B |
  CMP.W #$0046                              ; $84EB4D |
  BNE CODE_84EB55                           ; $84EB50 |
  JMP.W CODE_JP_84EB81                      ; $84EB52 |

CODE_84EB55:
  CMP.W #$00B4                              ; $84EB55 |
  BNE CODE_84EB5D                           ; $84EB58 |
  JMP.W CODE_JP_84ECD3                      ; $84EB5A |

CODE_84EB5D:
  CMP.W #$0062                              ; $84EB5D |
  BNE CODE_84EB65                           ; $84EB60 |
  JMP.W CODE_JP_84EE9E                      ; $84EB62 |

CODE_84EB65:
  CMP.W #$0047                              ; $84EB65 |
  BNE CODE_84EB6D                           ; $84EB68 |
  JMP.W CODE_JP_84EFE1                      ; $84EB6A |

CODE_84EB6D:
  CMP.W #$002B                              ; $84EB6D |
  BNE CODE_84EB75                           ; $84EB70 |
  JMP.W CODE_JP_84F060                      ; $84EB72 |

CODE_84EB75:
  CMP.W #$00B3                              ; $84EB75 |
  BNE CODE_84EB7D                           ; $84EB78 |
  JMP.W CODE_JP_84F0D6                      ; $84EB7A |

CODE_84EB7D:
  JML.L CODE_FL_86CA36                      ; $84EB7D |

CODE_JP_84EB81:
  LDA.W #$0030                              ; $84EB81 |
  JSL.L CODE_FL_87E3B2                      ; $84EB84 |
  LDA.W #$0580                              ; $84EB88 |
  JSL.L CODE_FL_8CF9C3                      ; $84EB8B |
  LDA.W #$0001                              ; $84EB8F |
  STA.L $70043C                             ; $84EB92 |
  LDA.W #$0000                              ; $84EB96 |
  JSL.L CODE_FL_84F26F                      ; $84EB99 |
  INC.B $76                                 ; $84EB9D |
  LDA.W #$0002                              ; $84EB9F |
  STA.B $1A,X                               ; $84EBA2 |
  LDA.W #$01E0                              ; $84EBA4 |
  SEC                                       ; $84EBA7 |
  SBC.W $1662                               ; $84EBA8 |
  STA.B $09,X                               ; $84EBAB |
  LDA.W #$00B0                              ; $84EBAD |
  STA.B $0D,X                               ; $84EBB0 |
  JSL.L CODE_FL_80893F                      ; $84EBB2 |
  LDA.W #$0020                              ; $84EBB6 |
  STA.B $2C,X                               ; $84EBB9 |

CODE_84EBBB:
  JSL.L CODE_FL_86C70D                      ; $84EBBB |
  LDY.W #$0174                              ; $84EBBF |
  JSL.L CODE_FL_808993                      ; $84EBC2 |
  INC.B $1A,X                               ; $84EBC6 |
  RTL                                       ; $84EBC8 |

CODE_84EBC9:
  LDA.W #$8001                              ; $84EBC9 |
  STA.B $E4                                 ; $84EBCC |
  JSL.L CODE_FL_84ECC0                      ; $84EBCE |
  INC.B $1A,X                               ; $84EBD2 |
  RTL                                       ; $84EBD4 |

CODE_84EBD5:
  JSL.L CODE_FL_84E213                      ; $84EBD5 |
  JSL.L CODE_FL_8CFBD6                      ; $84EBD9 |
  STZ.W $0B20                               ; $84EBDD |
  JSL.L CODE_FL_83852F                      ; $84EBE0 |
  INC.B $1A,X                               ; $84EBE4 |
  RTL                                       ; $84EBE6 |

CODE_84EBE7:
  JSL.L CODE_FL_84E213                      ; $84EBE7 |
  JSL.L CODE_FL_8CFBD6                      ; $84EBEB |
  LDA.B $09,X                               ; $84EBEF |
  SEC                                       ; $84EBF1 |
  SBC.W #$0040                              ; $84EBF2 |
  JSL.L CODE_FL_8B8156                      ; $84EBF5 |
  BNE CODE_84EC0B                           ; $84EBF9 |
  LDA.W $0404                               ; $84EBFB |
  AND.W #$DFDF                              ; $84EBFE |
  STA.W $0404                               ; $84EC01 |
  LDA.W #$0010                              ; $84EC04 |
  STA.B $2C,X                               ; $84EC07 |
  INC.B $1A,X                               ; $84EC09 |

CODE_84EC0B:
  RTL                                       ; $84EC0B |

CODE_84EC0C:
  JSL.L CODE_FL_84E213                      ; $84EC0C |
  JSL.L CODE_FL_8CFBD6                      ; $84EC10 |
  JSL.L CODE_FL_86C70D                      ; $84EC14 |
  JSL.L CODE_FL_8B82DA                      ; $84EC18 |
  BCS CODE_84EC25                           ; $84EC1C |
  LDA.W #$0060                              ; $84EC1E |
  STA.B $2C,X                               ; $84EC21 |
  INC.B $1A,X                               ; $84EC23 |

CODE_84EC25:
  RTL                                       ; $84EC25 |

CODE_84EC26:
  JSL.L CODE_FL_84E213                      ; $84EC26 |
  JSL.L CODE_FL_8CFBD6                      ; $84EC2A |
  JSL.L CODE_FL_86C70D                      ; $84EC2E |
  JSL.L CODE_FL_8CFAE6                      ; $84EC32 |
  LDA.W #$01F7                              ; $84EC36 |
  JSL.L CODE_FL_86C9A7                      ; $84EC39 |
  STY.B $3A,X                               ; $84EC3D |
  LDA.W #$0001                              ; $84EC3F |
  STA.W $003A,Y                             ; $84EC42 |
  INC.B $1A,X                               ; $84EC45 |
  RTL                                       ; $84EC47 |

CODE_84EC48:
  LDY.B $3A,X                               ; $84EC48 |
  LDA.W $001A,Y                             ; $84EC4A |
  CMP.W #$0004                              ; $84EC4D |
  BMI CODE_84EC59                           ; $84EC50 |
  LDA.W #$0080                              ; $84EC52 |
  STA.B $2C,X                               ; $84EC55 |
  INC.B $1A,X                               ; $84EC57 |

CODE_84EC59:
  RTL                                       ; $84EC59 |

CODE_84EC5A:
  LDA.W #$2B83                              ; $84EC5A |
  JSL.L CODE_FL_809934                      ; $84EC5D |
  BCC CODE_84EC6A                           ; $84EC61 |
  LDA.W #$0040                              ; $84EC63 |
  STA.B $2C,X                               ; $84EC66 |
  INC.B $1A,X                               ; $84EC68 |

CODE_84EC6A:
  RTL                                       ; $84EC6A |

CODE_84EC6B:
  JSL.L CODE_FL_86C70D                      ; $84EC6B |
  LDA.W #$0003                              ; $84EC6F |
  STA.L $7E7C04                             ; $84EC72 |
  LDA.W #$0020                              ; $84EC76 |
  STA.B $2C,X                               ; $84EC79 |
  INC.B $1A,X                               ; $84EC7B |
  RTL                                       ; $84EC7D |

CODE_84EC7E:
  JSL.L CODE_FL_86C70D                      ; $84EC7E |
  LDA.W #$2C47                              ; $84EC82 |
  JSL.L CODE_FL_809934                      ; $84EC85 |
  BCC CODE_84EC94                           ; $84EC89 |
  LDA.W #$0005                              ; $84EC8B |
  STA.L $7E7C04                             ; $84EC8E |
  INC.B $1A,X                               ; $84EC92 |

CODE_84EC94:
  RTL                                       ; $84EC94 |

CODE_84EC95:
  JSL.L CODE_FL_84ECB2                      ; $84EC95 |
  LDA.W #$2E70                              ; $84EC99 |
  JSL.L CODE_FL_809934                      ; $84EC9C |
  BCC CODE_84ECA9                           ; $84ECA0 |
  LDA.W #$0040                              ; $84ECA2 |
  STA.B $2C,X                               ; $84ECA5 |
  INC.B $1A,X                               ; $84ECA7 |

CODE_84ECA9:
  RTL                                       ; $84ECA9 |

CODE_84ECAA:
  JSL.L CODE_FL_86C70D                      ; $84ECAA |
  JML.L CODE_JL_80ECDA                      ; $84ECAE |

CODE_FL_84ECB2:
  LDY.B $3A,X                               ; $84ECB2 |
  LDA.W $0018,Y                             ; $84ECB4 |
  CMP.W #$01F7                              ; $84ECB7 |
  BNE CODE_84ECBF                           ; $84ECBA |
  PHP                                       ; $84ECBC |
  PLA                                       ; $84ECBD |
  PLA                                       ; $84ECBE |

CODE_84ECBF:
  RTL                                       ; $84ECBF |

CODE_FL_84ECC0:
  LDA.B $A6                                 ; $84ECC0 |
  BEQ CODE_84ECCF                           ; $84ECC2 |
  PHX                                       ; $84ECC4 |
  TAX                                       ; $84ECC5 |
  STX.B $FC                                 ; $84ECC6 |
  JSL.L CODE_FL_85A939                      ; $84ECC8 |
  PLX                                       ; $84ECCC |
  STX.B $FC                                 ; $84ECCD |

CODE_84ECCF:
  JML.L CODE_FL_83B38E                      ; $84ECCF |

CODE_JP_84ECD3:
  LDA.L $700758                             ; $84ECD3 |
  INC A                                     ; $84ECD7 |
  STA.L $700758                             ; $84ECD8 |
  LDA.W #$058A                              ; $84ECDC |
  JSL.L CODE_FL_8CF9C3                      ; $84ECDF |
  LDA.W #$00E0                              ; $84ECE3 |
  STA.B $09,X                               ; $84ECE6 |
  LDA.W #$0080                              ; $84ECE8 |
  STA.B $0D,X                               ; $84ECEB |
  LDA.W #$8001                              ; $84ECED |
  STA.B $E4                                 ; $84ECF0 |
  JSL.L CODE_FL_80893F                      ; $84ECF2 |
  LDA.W #$0020                              ; $84ECF6 |
  STA.B $2C,X                               ; $84ECF9 |
  LDA.W #$0010                              ; $84ECFB |
  STA.B $1A,X                               ; $84ECFE |
  RTL                                       ; $84ED00 |

CODE_84ED01:
  JSL.L CODE_FL_86C70D                      ; $84ED01 |
  LDY.W #$0070                              ; $84ED05 |
  JSL.L CODE_FL_808993                      ; $84ED08 |
  INC.B $1A,X                               ; $84ED0C |
  JSL.L CODE_FL_83852F                      ; $84ED0E |
  RTL                                       ; $84ED12 |

CODE_84ED13:
  LDA.W #$0068                              ; $84ED13 |
  JSL.L CODE_FL_8B8156                      ; $84ED16 |
  BNE CODE_84ED24                           ; $84ED1A |
  LDA.W #$0100                              ; $84ED1C |
  STA.W $0498                               ; $84ED1F |
  INC.B $1A,X                               ; $84ED22 |

CODE_84ED24:
  RTL                                       ; $84ED24 |

CODE_84ED25:
  LDY.W #$08F0                              ; $84ED25 |
  LDA.W #$0176                              ; $84ED28 |
  JSL.L CODE_FL_86C9E0                      ; $84ED2B |
  LDA.W #$0004                              ; $84ED2F |
  STA.W $003A,Y                             ; $84ED32 |
  LDA.W #$0400                              ; $84ED35 |
  STA.W $004E,Y                             ; $84ED38 |
  INC.B $1A,X                               ; $84ED3B |
  RTL                                       ; $84ED3D |

CODE_84ED3E:
  JSL.L CODE_FL_86C70D                      ; $84ED3E |
  LDY.W #$0940                              ; $84ED42 |
  LDA.W #$0176                              ; $84ED45 |
  JSL.L CODE_FL_86C9E0                      ; $84ED48 |
  LDA.W #$0006                              ; $84ED4C |
  STA.W $003A,Y                             ; $84ED4F |
  LDA.W #$08F0                              ; $84ED52 |
  STA.W $004E,Y                             ; $84ED55 |
  LDA.W #$0001                              ; $84ED58 |
  STA.W $003C,Y                             ; $84ED5B |
  LDA.W #$0010                              ; $84ED5E |
  STA.B $2C,X                               ; $84ED61 |
  INC.B $1A,X                               ; $84ED63 |
  RTL                                       ; $84ED65 |

CODE_84ED66:
  JSL.L CODE_FL_86C70D                      ; $84ED66 |
  LDY.W #$0620                              ; $84ED6A |
  LDA.W #$0176                              ; $84ED6D |
  JSL.L CODE_FL_86C9E0                      ; $84ED70 |
  TDC                                       ; $84ED74 |
  STA.W $003A,Y                             ; $84ED75 |
  LDA.W #$0940                              ; $84ED78 |
  STA.W $004E,Y                             ; $84ED7B |
  LDA.W #$0001                              ; $84ED7E |
  STA.W $003C,Y                             ; $84ED81 |
  LDA.W #$0010                              ; $84ED84 |
  STA.B $2C,X                               ; $84ED87 |
  INC.B $1A,X                               ; $84ED89 |
  RTL                                       ; $84ED8B |

CODE_84ED8C:
  JSL.L CODE_FL_86C70D                      ; $84ED8C |
  LDY.W #$0670                              ; $84ED90 |
  LDA.W #$0176                              ; $84ED93 |
  JSL.L CODE_FL_86C9E0                      ; $84ED96 |
  LDA.W #$0002                              ; $84ED9A |
  STA.W $003A,Y                             ; $84ED9D |
  LDA.W #$0620                              ; $84EDA0 |
  STA.W $004E,Y                             ; $84EDA3 |
  LDA.W #$0001                              ; $84EDA6 |
  STA.W $003C,Y                             ; $84EDA9 |
  INC.B $1A,X                               ; $84EDAC |
  LDA.W #$0080                              ; $84EDAE |
  STA.B $2C,X                               ; $84EDB1 |
  RTL                                       ; $84EDB3 |

CODE_84EDB4:
  JSL.L CODE_FL_86C70D                      ; $84EDB4 |
  LDA.W #$0012                              ; $84EDB8 |
  STA.W $090A                               ; $84EDBB |
  INC.B $1A,X                               ; $84EDBE |

CODE_84EDC0:
  LDA.W $08F9                               ; $84EDC0 |
  CMP.W #$00A0                              ; $84EDC3 |
  BMI CODE_84EDCD                           ; $84EDC6 |
  INC.W $090A                               ; $84EDC8 |
  INC.B $1A,X                               ; $84EDCB |

CODE_84EDCD:
  RTL                                       ; $84EDCD |

CODE_84EDCE:
  LDA.W #$2F26                              ; $84EDCE |
  JSL.L CODE_FL_809934                      ; $84EDD1 |
  BCC CODE_84EDDF                           ; $84EDD5 |
  LDA.W #$0012                              ; $84EDD7 |
  STA.W $095A                               ; $84EDDA |
  INC.B $1A,X                               ; $84EDDD |

CODE_84EDDF:
  RTL                                       ; $84EDDF |

CODE_84EDE0:
  LDA.W $0949                               ; $84EDE0 |
  CMP.W #$0080                              ; $84EDE3 |
  BMI CODE_84EDED                           ; $84EDE6 |
  INC.W $095A                               ; $84EDE8 |
  INC.B $1A,X                               ; $84EDEB |

CODE_84EDED:
  RTL                                       ; $84EDED |

CODE_84EDEE:
  LDA.W #$2F3D                              ; $84EDEE |
  JSL.L CODE_FL_809934                      ; $84EDF1 |
  BCC CODE_84EDFF                           ; $84EDF5 |
  LDA.W #$0018                              ; $84EDF7 |
  STA.W $090A                               ; $84EDFA |
  INC.B $1A,X                               ; $84EDFD |

CODE_84EDFF:
  RTL                                       ; $84EDFF |

CODE_84EE00:
  PHX                                       ; $84EE00 |
  LDX.W #$0B70                              ; $84EE01 |
  LDY.W #$08F0                              ; $84EE04 |
  LDA.W $0009,Y                             ; $84EE07 |
  JSL.L CODE_FL_8CF9EB                      ; $84EE0A |
  STA.B $1E                                 ; $84EE0E |
  LDA.W $000D,Y                             ; $84EE10 |
  SEC                                       ; $84EE13 |
  SBC.W #$0014                              ; $84EE14 |
  JSL.L CODE_FL_8CFA0A                      ; $84EE17 |
  ORA.B $1E                                 ; $84EE1B |
  STA.B $1E                                 ; $84EE1D |
  JSL.L CODE_FL_86C855                      ; $84EE1F |
  PLX                                       ; $84EE23 |
  LDA.B $1E                                 ; $84EE24 |
  BNE CODE_84EE38                           ; $84EE26 |
  LDA.W #$1090                              ; $84EE28 |
  STA.W $0944                               ; $84EE2B |
  STA.W $08F4                               ; $84EE2E |
  LDA.W #$0020                              ; $84EE31 |
  STA.B $2C,X                               ; $84EE34 |
  INC.B $1A,X                               ; $84EE36 |

CODE_84EE38:
  RTL                                       ; $84EE38 |

CODE_84EE39:
  JSL.L CODE_FL_86C70D                      ; $84EE39 |
  LDA.W #$2FD2                              ; $84EE3D |
  JSL.L CODE_FL_809934                      ; $84EE40 |
  BCC CODE_84EE51                           ; $84EE44 |
  LDA.W #$0012                              ; $84EE46 |
  STA.W $095A                               ; $84EE49 |
  INC.W $090A                               ; $84EE4C |
  INC.B $1A,X                               ; $84EE4F |

CODE_84EE51:
  JMP.W CODE_JP_84EE8D                      ; $84EE51 |

CODE_84EE54:
  LDA.W $08F9                               ; $84EE54 |
  CMP.W #$0130                              ; $84EE57 |
  BMI CODE_84EE65                           ; $84EE5A |
  INC.W $095A                               ; $84EE5C |
  INC.W $090A                               ; $84EE5F |
  INC.B $1A,X                               ; $84EE62 |
  RTL                                       ; $84EE64 |

CODE_84EE65:
  JMP.W CODE_JP_84EE8D                      ; $84EE65 |

CODE_84EE68:
  LDA.W #$2FDD                              ; $84EE68 |
  JSL.L CODE_FL_809934                      ; $84EE6B |
  BCC CODE_84EE7A                           ; $84EE6F |
  LDA.W #$0036                              ; $84EE71 |
  STA.L $7E7C04                             ; $84EE74 |
  INC.B $1A,X                               ; $84EE78 |

CODE_84EE7A:
  RTL                                       ; $84EE7A |

CODE_84EE7B:
  LDA.W $0679                               ; $84EE7B |
  CMP.W #$FFD0                              ; $84EE7E |
  BPL CODE_84EE8C                           ; $84EE81 |
  TDC                                       ; $84EE83 |
  STA.L $7E7C04                             ; $84EE84 |
  JML.L CODE_JL_80ED43                      ; $84EE88 |

CODE_84EE8C:
  RTL                                       ; $84EE8C |

CODE_JP_84EE8D:
  LDA.W $08F9                               ; $84EE8D |
  STA.W $0B79                               ; $84EE90 |
  LDA.W $08FD                               ; $84EE93 |
  SEC                                       ; $84EE96 |
  SBC.W #$0014                              ; $84EE97 |
  STA.W $0B7D                               ; $84EE9A |
  RTL                                       ; $84EE9D |

CODE_JP_84EE9E:
  LDA.W #$0582                              ; $84EE9E |
  JSL.L CODE_FL_8CF9C3                      ; $84EEA1 |
  LDA.W #$0001                              ; $84EEA5 |
  STA.L $70048C                             ; $84EEA8 |
  LDA.W #$0008                              ; $84EEAC |
  JSL.L CODE_FL_84F26F                      ; $84EEAF |
  LDA.W #$0021                              ; $84EEB3 |
  STA.B $1A,X                               ; $84EEB6 |

CODE_JP_84EEB8:
  LDA.W #$00B0                              ; $84EEB8 |
  STA.B $09,X                               ; $84EEBB |
  LDA.W #$00B0                              ; $84EEBD |
  STA.B $0D,X                               ; $84EEC0 |

CODE_JP_84EEC2:
  INC.B $76                                 ; $84EEC2 |
  PHX                                       ; $84EEC4 |
  LDX.W #DATA_88860D                        ; $84EEC5 |
  JSL.L sound_transfer_blocks               ; $84EEC8 |
  LDX.W #DATA_88861D                        ; $84EECC |
  JSL.L sound_transfer_blocks               ; $84EECF |
  LDY.W #$85D8                              ; $84EED3 |
  LDA.W #$001A                              ; $84EED6 |
  JSL.L CODE_FL_80C2C9                      ; $84EED9 |
  PLX                                       ; $84EEDD |
  JSL.L CODE_FL_80893F                      ; $84EEDE |
  LDA.W #$0020                              ; $84EEE2 |
  STA.B $2C,X                               ; $84EEE5 |
  RTL                                       ; $84EEE7 |

CODE_84EEE8:
  JSL.L CODE_FL_86C70D                      ; $84EEE8 |
  LDY.W #$0184                              ; $84EEEC |
  JSL.L CODE_FL_808993                      ; $84EEEF |
  INC.B $1A,X                               ; $84EEF3 |
  LDA.W #$0060                              ; $84EEF5 |
  STA.B $2C,X                               ; $84EEF8 |
  RTL                                       ; $84EEFA |

CODE_84EEFB:
  JSL.L CODE_FL_86C70D                      ; $84EEFB |
  LDA.W #$0080                              ; $84EEFF |
  LDA.W #$8001                              ; $84EF02 |
  STA.B $E4                                 ; $84EF05 |
  JSL.L CODE_FL_84ECC0                      ; $84EF07 |
  INC.B $1A,X                               ; $84EF0B |
  RTL                                       ; $84EF0D |

CODE_84EF0E:
  JSL.L CODE_FL_84E213                      ; $84EF0E |
  JSL.L CODE_FL_8CFBD6                      ; $84EF12 |
  JSL.L CODE_FL_86C70D                      ; $84EF16 |
  JSL.L CODE_FL_8CFAE6                      ; $84EF1A |
  LDA.W #$01F7                              ; $84EF1E |
  JSL.L CODE_FL_86C9A7                      ; $84EF21 |
  STY.B $3A,X                               ; $84EF25 |
  LDA.W #$0002                              ; $84EF27 |
  STA.W $003A,Y                             ; $84EF2A |
  INC.B $1A,X                               ; $84EF2D |
  RTL                                       ; $84EF2F |

CODE_84EF30:
  LDA.W #$F2C8                              ; $84EF30 |
  JSL.L CODE_FL_809934                      ; $84EF33 |
  BCC CODE_84EF42                           ; $84EF37 |
  LDA.W #$0006                              ; $84EF39 |
  STA.L $7E7C04                             ; $84EF3C |
  INC.B $1A,X                               ; $84EF40 |

CODE_84EF42:
  RTL                                       ; $84EF42 |

CODE_84EF43:
  LDY.B $3A,X                               ; $84EF43 |
  LDA.W $0028,Y                             ; $84EF45 |
  BMI CODE_84EF6B                           ; $84EF48 |
  LDA.W #$020C                              ; $84EF4A |
  JSL.L CODE_FL_86C9A7                      ; $84EF4D |
  LDA.B $3A,X                               ; $84EF51 |
  STA.W $003A,Y                             ; $84EF53 |
  LDA.W #$0002                              ; $84EF56 |
  JSL.L push_sound_queue                    ; $84EF59 |
  INC.B $1A,X                               ; $84EF5D |
  LDA.W #$0001                              ; $84EF5F |
  STA.L $7002AE                             ; $84EF62 |
  LDA.W #$0060                              ; $84EF66 |
  STA.B $2C,X                               ; $84EF69 |

CODE_84EF6B:
  RTL                                       ; $84EF6B |

CODE_84EF6C:
  JSL.L CODE_FL_86C70D                      ; $84EF6C |
  LDA.W #$F3B2                              ; $84EF70 |
  JSL.L CODE_FL_809934                      ; $84EF73 |
  BCC CODE_84EF8B                           ; $84EF77 |
  LDY.W #$08F0                              ; $84EF79 |
  LDA.W #$001C                              ; $84EF7C |
  STA.W $001A,Y                             ; $84EF7F |
  LDA.W #$0005                              ; $84EF82 |
  STA.L $7E7C04                             ; $84EF85 |
  INC.B $1A,X                               ; $84EF89 |

CODE_84EF8B:
  RTL                                       ; $84EF8B |

CODE_84EF8C:
  JSL.L CODE_FL_84ECB2                      ; $84EF8C |
  LDA.W #$F44D                              ; $84EF90 |
  JSL.L CODE_FL_809934                      ; $84EF93 |
  BCC CODE_84EF8B                           ; $84EF97 |
  LDA.W #$0030                              ; $84EF99 |
  STA.B $2C,X                               ; $84EF9C |
  INC.B $1A,X                               ; $84EF9E |

CODE_84EFA0:
  JSL.L CODE_FL_86C70D                      ; $84EFA0 |
  LDA.L $7E7C02                             ; $84EFA4 |
  BEQ CODE_84EFBB                           ; $84EFA8 |
  DEC A                                     ; $84EFAA |
  STA.L $7E7C02                             ; $84EFAB |
  CMP.W #$0040                              ; $84EFAF |
  BNE CODE_84EFBB                           ; $84EFB2 |
  LDA.W #$0033                              ; $84EFB4 |
  JSL.L push_sound_queue                    ; $84EFB7 |

CODE_84EFBB:
  LDA.W #$F4F8                              ; $84EFBB |
  JSL.L CODE_FL_809934                      ; $84EFBE |
  BCC CODE_84EF8B                           ; $84EFC2 |
  INC.B $1A,X                               ; $84EFC4 |
  LDA.W #$0040                              ; $84EFC6 |
  STA.B $2C,X                               ; $84EFC9 |
  JML.L CODE_FL_80893F                      ; $84EFCB |

CODE_84EFCF:
  JSL.L CODE_FL_86C70D                      ; $84EFCF |
  INC.B $1A,X                               ; $84EFD3 |
  JML.L CODE_FL_80C213                      ; $84EFD5 |

CODE_84EFD9:
  JSL.L CODE_FL_80C256                      ; $84EFD9 |
  JML.L CODE_JL_84830C                      ; $84EFDD |

CODE_JP_84EFE1:
  LDA.W #$0584                              ; $84EFE1 |
  JSL.L CODE_FL_8CF9C3                      ; $84EFE4 |
  LDA.W #$0001                              ; $84EFE8 |
  STA.L $70055C                             ; $84EFEB |
  LDA.W #$001E                              ; $84EFEF |
  JSL.L CODE_FL_87E3B2                      ; $84EFF2 |
  LDA.W #$0018                              ; $84EFF6 |
  JSL.L CODE_FL_84F26F                      ; $84EFF9 |
  LDA.W #$0030                              ; $84EFFD |
  STA.B $1A,X                               ; $84F000 |
  STZ.W $1C76                               ; $84F002 |
  LDA.W #$00D0                              ; $84F005 |
  STA.B $09,X                               ; $84F008 |
  LDA.W #$00B0                              ; $84F00A |
  STA.B $0D,X                               ; $84F00D |
  JMP.W CODE_JP_84EEC2                      ; $84F00F |

CODE_84F012:
  JSL.L CODE_FL_84E213                      ; $84F012 |
  JSL.L CODE_FL_8CFBD6                      ; $84F016 |
  JSL.L CODE_FL_86C70D                      ; $84F01A |
  JSL.L CODE_FL_8CFAE6                      ; $84F01E |
  LDA.W #$01F7                              ; $84F022 |
  JSL.L CODE_FL_86C9A7                      ; $84F025 |
  STY.B $3A,X                               ; $84F029 |
  LDA.W #$0003                              ; $84F02B |
  STA.W $003A,Y                             ; $84F02E |
  INC.B $1A,X                               ; $84F031 |

CODE_84F033:
  RTL                                       ; $84F033 |

CODE_84F034:
  LDA.W #$F561                              ; $84F034 |
  JSL.L CODE_FL_809934                      ; $84F037 |
  BCC CODE_84F033                           ; $84F03B |
  LDA.W #$0005                              ; $84F03D |
  STA.L $7E7C04                             ; $84F040 |
  INC.B $1A,X                               ; $84F044 |

CODE_84F046:
  JSL.L CODE_FL_84ECB2                      ; $84F046 |
  JSL.L CODE_FL_87E3B7                      ; $84F04A |
  BCC CODE_84F057                           ; $84F04E |
  LDA.W #$0040                              ; $84F050 |
  STA.B $2C,X                               ; $84F053 |
  INC.B $1A,X                               ; $84F055 |

CODE_84F057:
  RTL                                       ; $84F057 |

CODE_84F058:
  JSL.L CODE_FL_86C70D                      ; $84F058 |
  JML.L CODE_JL_80ED04                      ; $84F05C |

CODE_JP_84F060:
  LDA.W #$0586                              ; $84F060 |
  JSL.L CODE_FL_8CF9C3                      ; $84F063 |
  LDA.W #$0001                              ; $84F067 |
  STA.L $7004DC                             ; $84F06A |
  LDA.W #$0034                              ; $84F06E |
  JSL.L CODE_FL_87E3B2                      ; $84F071 |
  LDA.W #$0020                              ; $84F075 |
  JSL.L CODE_FL_84F26F                      ; $84F078 |
  LDA.W #$003B                              ; $84F07C |
  STA.B $1A,X                               ; $84F07F |
  JMP.W CODE_JP_84EEB8                      ; $84F081 |

CODE_84F084:
  JSL.L CODE_FL_84E213                      ; $84F084 |
  JSL.L CODE_FL_8CFBD6                      ; $84F088 |
  JSL.L CODE_FL_86C70D                      ; $84F08C |
  JSL.L CODE_FL_8CFAE6                      ; $84F090 |
  LDA.W #$01F7                              ; $84F094 |
  JSL.L CODE_FL_86C9A7                      ; $84F097 |
  STY.B $3A,X                               ; $84F09B |
  LDA.W #$0004                              ; $84F09D |
  STA.W $003A,Y                             ; $84F0A0 |
  INC.B $1A,X                               ; $84F0A3 |
  RTL                                       ; $84F0A5 |

CODE_84F0A6:
  LDA.W #$F70D                              ; $84F0A6 |

CODE_84F0A9:
  JSL.L CODE_FL_809934                      ; $84F0A9 |
  BCC CODE_84F0B8                           ; $84F0AD |
  LDA.W #$0005                              ; $84F0AF |
  STA.L $7E7C04                             ; $84F0B2 |
  INC.B $1A,X                               ; $84F0B6 |

CODE_84F0B8:
  RTL                                       ; $84F0B8 |

CODE_84F0B9:
  JSL.L CODE_FL_84ECB2                      ; $84F0B9 |
  LDA.W #$F851                              ; $84F0BD |
  JSL.L CODE_FL_809934                      ; $84F0C0 |
  BCC CODE_84F0B8                           ; $84F0C4 |
  LDA.W #$0040                              ; $84F0C6 |
  STA.B $2C,X                               ; $84F0C9 |
  INC.B $1A,X                               ; $84F0CB |
  RTL                                       ; $84F0CD |

CODE_84F0CE:
  JSL.L CODE_FL_86C70D                      ; $84F0CE |
  JML.L CODE_JL_80ED19                      ; $84F0D2 |

CODE_JP_84F0D6:
  LDA.W #$000D                              ; $84F0D6 |
  STA.L $700758                             ; $84F0D9 |
  LDA.W #$0588                              ; $84F0DD |
  JSL.L CODE_FL_8CF9C3                      ; $84F0E0 |
  LDA.W #$0001                              ; $84F0E4 |
  STA.L $70058C                             ; $84F0E7 |
  LDA.W #$0026                              ; $84F0EB |
  JSL.L CODE_FL_87E3B2                      ; $84F0EE |
  LDA.W #$0047                              ; $84F0F2 |
  STA.B $1A,X                               ; $84F0F5 |
  JMP.W CODE_JP_84EEB8                      ; $84F0F7 |

CODE_84F0FA:
  JSL.L CODE_FL_84E213                      ; $84F0FA |
  JSL.L CODE_FL_8CFBD6                      ; $84F0FE |
  JSL.L CODE_FL_86C70D                      ; $84F102 |
  JSL.L CODE_FL_8CFAE6                      ; $84F106 |
  LDA.W #$01F7                              ; $84F10A |
  JSL.L CODE_FL_86C9A7                      ; $84F10D |
  STY.B $3A,X                               ; $84F111 |
  LDA.W #$0000                              ; $84F113 |
  STA.W $003A,Y                             ; $84F116 |
  INC.B $1A,X                               ; $84F119 |
  RTL                                       ; $84F11B |

CODE_84F11C:
  LDA.W #$F8A6                              ; $84F11C |
  JSL.L CODE_FL_809934                      ; $84F11F |
  BCC CODE_84F12C                           ; $84F123 |

CODE_84F125:
  LDA.W #$0040                              ; $84F125 |
  STA.B $2C,X                               ; $84F128 |
  INC.B $1A,X                               ; $84F12A |

CODE_84F12C:
  RTL                                       ; $84F12C |

CODE_84F12D:
  LDA.B $2C,X                               ; $84F12D |
  CMP.W #$0020                              ; $84F12F |
  BNE CODE_84F13B                           ; $84F132 |
  LDA.W #$0003                              ; $84F134 |
  STA.L $7E7C04                             ; $84F137 |

CODE_84F13B:
  JSL.L CODE_FL_86C70D                      ; $84F13B |
  LDA.W #$F9C6                              ; $84F13F |
  JSL.L CODE_FL_809934                      ; $84F142 |
  BCC CODE_84F12C                           ; $84F146 |
  LDA.W #$C001                              ; $84F148 |
  STA.B $E4                                 ; $84F14B |
  BRA CODE_84F125                           ; $84F14D |

CODE_84F14F:
  JSL.L CODE_FL_86C70D                      ; $84F14F |
  LDA.W #$0023                              ; $84F153 |
  JSL.L push_sound_queue                    ; $84F156 |
  LDA.W #$00F3                              ; $84F15A |
  STA.L $7E7C04                             ; $84F15D |
  LDA.W #$0008                              ; $84F161 |
  JSL.L CODE_FL_B3FE45                      ; $84F164 |
  BRA CODE_84F125                           ; $84F168 |

CODE_84F16A:
  JSL.L CODE_FL_86C70D                      ; $84F16A |
  LDA.W #$FA2E                              ; $84F16E |
  JSL.L CODE_FL_809934                      ; $84F171 |
  BCC CODE_84F12C                           ; $84F175 |
  LDA.W #$0005                              ; $84F177 |
  STA.L $7E7C04                             ; $84F17A |
  INC.B $1A,X                               ; $84F17E |
  RTL                                       ; $84F180 |

CODE_84F181:
  JSL.L CODE_FL_84ECB2                      ; $84F181 |
  LDA.W #$FA73                              ; $84F185 |
  JSL.L CODE_FL_809934                      ; $84F188 |
  BCC CODE_84F12C                           ; $84F18C |
  LDA.W #$0040                              ; $84F18E |
  STA.B $2C,X                               ; $84F191 |
  INC.B $1A,X                               ; $84F193 |
  RTL                                       ; $84F195 |

CODE_84F196:
  JSL.L CODE_FL_86C70D                      ; $84F196 |
  JSL.L CODE_FL_87E3B7                      ; $84F19A |
  BCC CODE_84F1AB                           ; $84F19E |
  LDA.W #$0040                              ; $84F1A0 |
  STA.B $2C,X                               ; $84F1A3 |
  JSL.L CODE_FL_80893F                      ; $84F1A5 |
  INC.B $1A,X                               ; $84F1A9 |

CODE_84F1AB:
  RTL                                       ; $84F1AB |

CODE_84F1AC:
  JSL.L CODE_FL_86C70D                      ; $84F1AC |
  INC.B $1A,X                               ; $84F1B0 |
  JML.L CODE_FL_80C213                      ; $84F1B2 |

CODE_84F1B6:
  JSL.L CODE_FL_80C256                      ; $84F1B6 |
  JML.L CODE_JL_848316                      ; $84F1BA |

CODE_FL_84F1BE:
  STZ.W $1C76                               ; $84F1BE |

CODE_FL_84F1C1:
  LDA.W #$0200                              ; $84F1C1 |
  JSL.L CODE_FL_86C9A7                      ; $84F1C4 |
  LDA.W #$0080                              ; $84F1C8 |
  STA.W $0009,Y                             ; $84F1CB |
  LDA.W #$0028                              ; $84F1CE |
  STA.W $000D,Y                             ; $84F1D1 |
  RTL                                       ; $84F1D4 |

CODE_FL_84F1D5:
  LDA.W #$0200                              ; $84F1D5 |
  JSL.L CODE_FL_86C9A7                      ; $84F1D8 |
  LDA.W #$01C0                              ; $84F1DC |
  SEC                                       ; $84F1DF |
  SBC.W $1662                               ; $84F1E0 |
  STA.W $0009,Y                             ; $84F1E3 |
  BRA CODE_84F1F9                           ; $84F1E6 |

CODE_FL_84F1E8:
  LDA.W #$0200                              ; $84F1E8 |
  JSL.L CODE_FL_86C9A4                      ; $84F1EB |
  JSL.L CODE_FL_85AA07                      ; $84F1EF |
  LDA.W #$0080                              ; $84F1F3 |
  STA.W $0009,Y                             ; $84F1F6 |

CODE_84F1F9:
  LDA.W #$0001                              ; $84F1F9 |
  STA.W $003A,Y                             ; $84F1FC |
  LDA.W #$0028                              ; $84F1FF |
  STA.W $000D,Y                             ; $84F202 |
  RTL                                       ; $84F205 |

CODE_FL_84F206:
  LDA.W #$01F6                              ; $84F206 |
  JML.L CODE_FL_86C9A7                      ; $84F209 |

CODE_FL_84F20D:
  LDA.W #$01B0                              ; $84F20D |
  JSL.L CODE_FL_86C9A7                      ; $84F210 |
  LDA.W #$0000                              ; $84F214 |
  STA.W $004E,Y                             ; $84F217 |
  RTL                                       ; $84F21A |

CODE_FL_84F21B:
  LDA.W #$00B4                              ; $84F21B |
  JSL.L CODE_FL_8089BD                      ; $84F21E |
  LDA.W #$01B0                              ; $84F222 |
  JSL.L CODE_FL_86C9A7                      ; $84F225 |
  LDA.W #$0002                              ; $84F229 |
  STA.W $004E,Y                             ; $84F22C |
  RTL                                       ; $84F22F |

CODE_FL_84F230:
  LDA.W #$00B4                              ; $84F230 |
  JSL.L CODE_FL_8089BD                      ; $84F233 |
  LDA.W #$01B0                              ; $84F237 |
  JSL.L CODE_FL_86C9A7                      ; $84F23A |
  LDA.W #$0004                              ; $84F23E |
  STA.W $004E,Y                             ; $84F241 |
  RTL                                       ; $84F244 |

CODE_JL_84F245:
  LDA.W #$00B4                              ; $84F245 |
  JSL.L CODE_FL_8089BD                      ; $84F248 |
  LDA.W #$01B0                              ; $84F24C |
  JSL.L CODE_FL_86C9A7                      ; $84F24F |
  LDA.W #$0006                              ; $84F253 |
  STA.W $004E,Y                             ; $84F256 |
  RTL                                       ; $84F259 |

CODE_FL_84F25A:
  LDA.W #$00B4                              ; $84F25A |
  JSL.L CODE_FL_8089BD                      ; $84F25D |
  LDA.W #$01B0                              ; $84F261 |
  JSL.L CODE_FL_86C9A7                      ; $84F264 |
  LDA.W #$0008                              ; $84F268 |
  STA.W $004E,Y                             ; $84F26B |
  RTL                                       ; $84F26E |

CODE_FL_84F26F:
  TAY                                       ; $84F26F |
  LDA.W CODE_00C467,Y                       ; $84F270 |
  ORA.W #$FE00                              ; $84F273 |
  STA.L $7002E8                             ; $84F276 |
  LDA.W LOOSE_OP_00C469,Y                   ; $84F27A |
  STA.L $7002EA                             ; $84F27D |
  LDA.W LOOSE_OP_00C46B,Y                   ; $84F281 |
  STA.L $7002EC                             ; $84F284 |
  RTL                                       ; $84F288 |

  db $FF,$FF,$FF,$FF,$FF,$FF,$FF            ; $84F289 |
  db $08,$9F,$00,$00                        ; $84F290 |
  db $16,$37,$01,$00,$28,$01,$01,$00        ; $84F294 |
  db $2A,$3B,$01,$00,$29,$3B,$02,$00        ; $84F29C |
  db $0A,$7B,$03,$00                        ; $84F2A4 |
  db $06,$07,$04,$00                        ; $84F2A8 |
  db $1A,$08,$04,$00                        ; $84F2AC |
  db $09,$2D,$06,$00                        ; $84F2B0 |
  db $0A,$2D,$07,$00                        ; $84F2B4 |
  db $18,$0F,$0A,$00,$11,$16,$0A,$00        ; $84F2B8 |
  db $1A,$2F,$0A,$00,$08,$0F,$0B,$00        ; $84F2C0 |
  db $01,$16,$0B,$00                        ; $84F2C8 |
  db $0A,$0C,$0D,$00                        ; $84F2CC |
  db $0A,$11,$0E,$00,$0A,$4F,$0E,$00        ; $84F2D0 |
  db $0A,$8D,$0E,$00,$0A,$12,$0F,$00        ; $84F2D8 |
  db $0A,$50,$0F,$00,$0A,$0B,$10,$00        ; $84F2E0 |
  db $0A,$27,$10,$00,$0A,$5D,$10,$00        ; $84F2E8 |
  db $0A,$79,$10,$00                        ; $84F2F0 |
  db $0A,$0A,$11,$00                        ; $84F2F4 |
  db $0A,$26,$11,$00                        ; $84F2F8 |
  db $0A,$5E,$11,$00,$0A,$79,$11,$00        ; $84F2FC |
  db $0A,$0B,$12,$00,$0A,$3F,$12,$00        ; $84F304 |
  db $0A,$63,$12,$00                        ; $84F30C |
  db $0A,$0B,$13,$00                        ; $84F310 |
  db $0A,$3F,$13,$00                        ; $84F314 |
  db $0A,$63,$13,$00,$0A,$0B,$14,$00        ; $84F318 |
  db $04,$2F,$14,$00                        ; $84F320 |
  db $0A,$4D,$14,$00,$08,$66,$14,$00        ; $84F324 |
  db $08,$81,$14,$00                        ; $84F32C |
  db $06,$8B,$14,$00                        ; $84F330 |
  db $0A,$0B,$15,$00                        ; $84F334 |
  db $04,$2F,$15,$00                        ; $84F338 |
  db $0A,$4D,$15,$00,$08,$67,$15,$00        ; $84F33C |
  db $08,$81,$15,$00                        ; $84F344 |
  db $06,$8B,$15,$00                        ; $84F348 |
  db $0A,$0B,$16,$00,$08,$25,$16,$00        ; $84F34C |
  db $0A,$49,$16,$00                        ; $84F354 |
  db $0A,$5B,$16,$00                        ; $84F358 |
  db $0A,$69,$16,$00,$0A,$79,$16,$00        ; $84F35C |
  db $08,$8D,$16,$00                        ; $84F364 |
  db $09,$0B,$17,$00                        ; $84F368 |
  db $08,$25,$17,$00                        ; $84F36C |
  db $09,$49,$17,$00,$09,$5B,$17,$00        ; $84F370 |
  db $0A,$69,$17,$00,$0A,$79,$17,$00        ; $84F378 |
  db $09,$8D,$17,$00,$03,$01,$19,$00        ; $84F380 |
  db $04,$2D,$1C,$00                        ; $84F388 |
  db $04,$1C,$24,$00,$04,$0D,$26,$00        ; $84F38C |
  db $64,$0C,$26,$00,$0A,$01,$27,$00        ; $84F394 |
  db $0A,$08,$29,$00,$0A,$0F,$29,$00        ; $84F39C |
  db $0B,$01,$2C,$00                        ; $84F3A4 |
  db $04,$2B,$2D,$00,$1A,$03,$2D,$00        ; $84F3A8 |
  db $1A,$25,$2D,$00,$10,$25,$2D,$00        ; $84F3B0 |
  db $04,$03,$31,$00                        ; $84F3B8 |
  db $04,$0D,$31,$00                        ; $84F3BC |
  db $1A,$0D,$31,$00,$1A,$2D,$31,$00        ; $84F3C0 |
  db $14,$2D,$31,$00,$1A,$0D,$32,$00        ; $84F3C8 |
  db $14,$0D,$32,$00                        ; $84F3D0 |
  db $04,$03,$34,$00                        ; $84F3D4 |
  db $04,$0D,$34,$00,$1A,$0D,$34,$00        ; $84F3D8 |
  db $0A,$09,$35,$00                        ; $84F3E0 |
  db $1A,$19,$36,$00                        ; $84F3E4 |
  db $1A,$05,$38,$00                        ; $84F3E8 |
  db $0A,$05,$39,$00,$0A,$15,$39,$00        ; $84F3EC |
  db $04,$0B,$3A,$00                        ; $84F3F4 |
  db $10,$05,$3A,$00,$1A,$05,$3A,$00        ; $84F3F8 |
  db $0A,$03,$40,$00                        ; $84F400 |
  db $0A,$25,$40,$00,$0A,$13,$42,$00        ; $84F404 |
  db $0A,$03,$44,$00                        ; $84F40C |
  db $04,$01,$48,$00,$0A,$3B,$48,$00        ; $84F410 |
  db $4A,$0D,$49,$00,$0A,$0B,$4D,$00        ; $84F418 |
  db $0A,$1B,$4E,$00                        ; $84F420 |
  db $4A,$0D,$50,$00                        ; $84F424 |
  db $0A,$0D,$51,$00                        ; $84F428 |
  db $0A,$09,$57,$00,$4A,$03,$57,$00        ; $84F42C |
  db $45,$03,$57,$00                        ; $84F434 |
  db $05,$03,$58,$00                        ; $84F438 |
  db $0A,$03,$58,$00,$3A,$1B,$59,$00        ; $84F43C |
  db $06,$09,$5D,$00                        ; $84F444 |
  db $06,$09,$5E,$00                        ; $84F448 |
  db $7A,$0B,$5E,$00,$4A,$07,$5F,$00        ; $84F44C |
  db $4A,$29,$5F,$00,$0A,$07,$60,$00        ; $84F454 |
  db $08,$0E,$63,$00,$08,$04,$64,$00        ; $84F45C |
  db $08,$04,$66,$00,$0A,$01,$6B,$00        ; $84F464 |
  db $0A,$03,$6E,$00                        ; $84F46C |
  db $0A,$1D,$6E,$00                        ; $84F470 |
  db $0A,$0D,$6F,$00                        ; $84F474 |
  db $0A,$0B,$71,$00                        ; $84F478 |
  db $0A,$2B,$72,$00                        ; $84F47C |
  db $06,$09,$74,$00                        ; $84F480 |
  db $1A,$1D,$75,$00                        ; $84F484 |
  db $2A,$0B,$77,$00                        ; $84F488 |
  db $08,$0B,$78,$00                        ; $84F48C |
  db $06,$09,$7A,$00,$0A,$0D,$7B,$00        ; $84F490 |
  db $04,$0B,$7E,$00                        ; $84F498 |
  db $04,$0D,$80,$00                        ; $84F49C |
  db $06,$07,$83,$00                        ; $84F4A0 |
  db $16,$07,$84,$00                        ; $84F4A4 |
  db $06,$09,$86,$00                        ; $84F4A8 |
  db $06,$09,$8B,$00                        ; $84F4AC |
  db $0A,$03,$8C,$00                        ; $84F4B0 |
  db $0A,$01,$AC,$00                        ; $84F4B4 |
  db $0A,$1F,$AF,$00,$0A,$0F,$B0,$00        ; $84F4B8 |
  db $04,$01,$B1,$00,$0A,$2F,$B2,$00        ; $84F4C0 |
  db $01,$03,$B4,$00,$39,$0F,$B5,$00        ; $84F4C8 |
  db $09,$08,$B7,$00,$09,$08,$B8,$00        ; $84F4D0 |
  db $08,$08,$BA,$00                        ; $84F4D8 |
  db $06,$40,$00,$01                        ; $84F4DC |
  db $19,$5E,$00,$01                        ; $84F4E0 |
  db $2E,$49,$00,$01                        ; $84F4E4 |
  db $0B,$05,$01,$01                        ; $84F4E8 |
  db $08,$08,$02,$01,$14,$15,$03,$01        ; $84F4EC |
  db $06,$08,$04,$01                        ; $84F4F4 |
  db $07,$08,$04,$01,$06,$18,$06,$01        ; $84F4F8 |
  db $1D,$27,$06,$01,$28,$17,$06,$01        ; $84F500 |
  db $1A,$08,$08,$01,$49,$0F,$08,$01        ; $84F508 |
  db $56,$06,$08,$01,$06,$09,$09,$01        ; $84F510 |
  db $15,$0C,$09,$01,$16,$19,$09,$01        ; $84F518 |
  db $0C,$0A,$0A,$01                        ; $84F520 |
  db $24,$07,$0A,$01,$0B,$06,$0B,$01        ; $84F524 |
  db $0E,$09,$0B,$01                        ; $84F52C |
  db $06,$28,$0B,$01                        ; $84F530 |
  db $04,$07,$0C,$01,$18,$07,$0F,$01        ; $84F534 |
  db $5A,$24,$10,$01,$12,$11,$15,$01        ; $84F53C |
  db $0C,$0E,$17,$01                        ; $84F544 |
  db $07,$11,$17,$01                        ; $84F548 |
  db $02,$58,$18,$01,$14,$13,$18,$01        ; $84F54C |
  db $08,$08,$19,$01,$0A,$29,$1F,$01        ; $84F554 |
  db $14,$41,$1F,$01                        ; $84F55C |
  db $0F,$3D,$20,$01,$0E,$AB,$20,$01        ; $84F560 |
  db $2D,$2B,$20,$01,$25,$37,$20,$01        ; $84F568 |
  db $24,$79,$20,$01                        ; $84F570 |
  db $23,$7B,$20,$01                        ; $84F574 |
  db $26,$83,$20,$01,$2C,$89,$20,$01        ; $84F578 |
  db $35,$07,$20,$01,$04,$08,$21,$01        ; $84F580 |
  db $06,$11,$23,$01,$05,$2C,$23,$01        ; $84F588 |
  db $0B,$38,$23,$01,$16,$33,$23,$01        ; $84F590 |
  db $25,$28,$23,$01,$16,$08,$27,$01        ; $84F598 |
  db $09,$0B,$26,$01                        ; $84F5A0 |
  db $5A,$24,$2A,$01,$13,$11,$2D,$01        ; $84F5A4 |
  db $0D,$18,$2E,$01,$0A,$06,$31,$01        ; $84F5AC |
  db $0A,$1A,$31,$01,$0A,$08,$40,$01        ; $84F5B4 |
  db $0A,$08,$41,$01                        ; $84F5BC |
  db $0A,$08,$42,$01,$0A,$08,$43,$01        ; $84F5C0 |
  db $0A,$08,$44,$01,$0A,$08,$45,$01        ; $84F5C8 |
  db $0A,$08,$46,$01,$0A,$08,$47,$01        ; $84F5D0 |
  db $0A,$08,$48,$01                        ; $84F5D8 |
  db $0A,$08,$49,$01                        ; $84F5DC |
  db $0A,$08,$4A,$01                        ; $84F5E0 |
  db $0A,$08,$4B,$01                        ; $84F5E4 |
  db $0A,$08,$4C,$01,$0A,$08,$4D,$01        ; $84F5E8 |
  db $0A,$08,$4E,$01                        ; $84F5F0 |
  db $0A,$08,$50,$01,$0A,$08,$51,$01        ; $84F5F4 |
  db $0A,$08,$52,$01,$0A,$08,$53,$01        ; $84F5FC |
  db $0A,$08,$54,$01,$0A,$08,$55,$01        ; $84F604 |
  db $0A,$08,$56,$01,$0A,$08,$57,$01        ; $84F60C |
  db $0A,$08,$58,$01,$0A,$08,$59,$01        ; $84F614 |
  db $0A,$08,$5A,$01,$0A,$08,$5B,$01        ; $84F61C |
  db $0A,$08,$5C,$01,$0A,$08,$5D,$01        ; $84F624 |
  db $0A,$08,$5E,$01                        ; $84F62C |
  db $0A,$03,$5F,$01                        ; $84F630 |
  db $0A,$08,$5F,$01                        ; $84F634 |
  db $0A,$08,$60,$01                        ; $84F638 |
  db $0A,$08,$61,$01,$0A,$08,$62,$01        ; $84F63C |
  db $0A,$08,$64,$01,$0B,$08,$70,$01        ; $84F644 |
  db $1B,$07,$71,$01,$0A,$08,$72,$01        ; $84F64C |
  db $08,$09,$73,$01,$0B,$08,$74,$01        ; $84F654 |
  db $0B,$08,$75,$01                        ; $84F65C |
  db $0A,$08,$76,$01,$0A,$08,$77,$01        ; $84F660 |
  db $06,$08,$77,$01,$0B,$08,$78,$01        ; $84F668 |
  db $0B,$08,$79,$01                        ; $84F670 |
  db $0B,$08,$7A,$01                        ; $84F674 |
  db $08,$09,$7B,$01,$08,$09,$7C,$01        ; $84F678 |
  db $08,$09,$7D,$01,$08,$09,$7E,$01        ; $84F680 |
  db $0B,$08,$7F,$01                        ; $84F688 |
  db $0B,$08,$80,$01,$0B,$08,$81,$01        ; $84F68C |
  db $04,$08,$81,$01                        ; $84F694 |
  db $0A,$07,$82,$01,$08,$08,$83,$01        ; $84F698 |
  db $08,$09,$84,$01                        ; $84F6A0 |

DATA8_84F6A4:
  db $04,$EE                                ; $84F6A4 |

DATA8_84F6A6:
  db $00,$01                                ; $84F6A6 |

DATA8_84F6A8:
  db $47,$05                                ; $84F6A8 |

DATA8_84F6AA:
  db $CC,$02                                ; $84F6AA |

DATA8_84F6AC:
  db $00,$AE,$EE,$03,$01,$A8,$00,$F8        ; $84F6AC |
  db $00,$0A,$FF,$FF,$31,$EF,$08,$01        ; $84F6B4 |
  db $D0,$00,$8C,$00,$00,$C2,$EF,$10        ; $84F6BC |
  db $01,$70,$04,$50,$06,$0A,$10,$F0        ; $84F6C4 |
  db $18,$01,$70,$01,$10,$03,$14,$5E        ; $84F6CC |
  db $F0,$1F,$01,$B0,$00,$F0,$00,$1E        ; $84F6D4 |
  db $AE,$F0,$23,$01,$60,$02,$50,$01        ; $84F6DC |
  db $28,$C2,$EF                            ; $84F6E4 |
  db $2A,$01,$70,$04,$50,$06,$0A            ; $84F6E7 |
  db $FF,$FF,$22,$00,$88,$14,$06,$02        ; $84F6EE |
  db $00,$30,$30,$70,$70,$D3,$FF,$C0        ; $84F6F6 |
  db $09,$C7,$08,$C2,$07,$CE,$FF,$C2        ; $84F6FE |
  db $01,$C2,$02,$4C,$0F,$81,$29,$E8        ; $84F706 |
  db $48,$1B,$C6,$FF,$17,$00,$DE,$FF        ; $84F70E |
  db $C1,$06,$7F,$EE,$C2,$FF,$C0,$05        ; $84F716 |
  db $82,$FF,$04,$50,$17,$C0,$03,$CA        ; $84F71E |
  db $FF,$C6,$03,$32,$00,$D3,$FF,$83        ; $84F726 |
  db $08,$0A,$08,$C5,$0C,$07,$F5,$82        ; $84F72E |
  db $28,$0A,$CE,$FF,$84,$10,$18,$18        ; $84F736 |
  db $12,$08,$13,$CA,$FF,$84,$00,$04        ; $84F73E |
  db $04,$22,$04,$27,$83,$02,$FF,$2E        ; $84F746 |
  db $1B,$F6,$03,$FD,$84,$14,$1A,$1A        ; $84F74E |
  db $36,$08,$3B,$D2,$FF,$24,$00,$DE        ; $84F756 |
  db $FF,$83,$10,$18,$32,$CF,$FF,$83        ; $84F75E |
  db $14,$1A,$16,$43,$EE,$83,$12,$FF        ; $84F766 |
  db $3C,$3C,$03,$00,$15,$81,$26,$04        ; $84F76E |
  db $25,$2C,$01,$81,$08,$C3,$0C,$00        ; $84F776 |
  db $14,$27,$00,$88,$0E,$07,$02,$00        ; $84F77E |
  db $05,$05,$25,$25,$CD,$FF,$C7,$17        ; $84F786 |
  db $C3,$FF,$C7,$15,$81,$18,$C2,$FF        ; $84F78E |
  db $C7,$13,$0C,$0D,$C7,$10,$C1,$0A        ; $84F796 |
  db $C0,$FF,$C7,$0E,$0C,$29,$CB,$FF        ; $84F79E |
  db $20,$00,$CD,$FF,$C7,$16,$C3,$FF        ; $84F7A6 |
  db $C7,$14,$C3,$FF,$C7,$12,$C3,$FF        ; $84F7AE |
  db $C6,$11,$C4,$FF,$C6,$0F,$83,$0D        ; $84F7B6 |
  db $0B,$0B,$C8,$FF,$C2,$0C,$C0,$FF        ; $84F7BE |
  db $34,$00,$CD,$FF,$84,$28,$0C,$2C        ; $84F7C6 |
  db $0C,$C2,$2C,$81,$2A,$23,$E9,$07        ; $84F7CE |
  db $FF,$82,$2A,$1C,$13,$F8,$04,$01        ; $84F7D6 |
  db $04,$0C,$82,$0A,$1E,$1B,$F8,$0B        ; $84F7DE |
  db $FF,$87,$0A,$10,$18,$12,$FF,$FF        ; $84F7E6 |
  db $08,$0C,$1A,$C0,$0C,$84,$2A,$34        ; $84F7EE |
  db $1A,$16,$CD,$FF,$3B,$00,$CD,$FF        ; $84F7F6 |
  db $84,$28,$0A,$28,$0A,$C3,$2E,$13        ; $84F7FE |
  db $E9,$88,$0C,$2C,$0A,$2E,$08,$2C        ; $84F806 |
  db $0C,$2A,$17,$F7,$83,$0C,$28,$0C        ; $84F80E |
  db $07,$FF,$81,$0A,$14,$05,$82,$2A        ; $84F816 |
  db $0E,$1C,$01,$81,$FF,$04,$1C,$03        ; $84F81E |
  db $FD,$C0,$0C,$00,$0F,$03,$F0,$C8        ; $84F826 |
  db $FF,$00,$1B,$00,$2C,$C0,$FF,$45        ; $84F82E |
  db $00,$88,$13,$0C,$02,$00,$08,$08        ; $84F836 |
  db $30,$30,$D9,$FF,$C0,$19,$81,$1A        ; $84F83E |
  db $D0,$FF,$34,$04,$81,$1D,$C1,$1B        ; $84F846 |
  db $81,$1A,$C1,$1C,$C4,$FF,$C3,$1E        ; $84F84E |
  db $81,$1D,$C2,$1F,$81,$20,$D0,$FF        ; $84F856 |
  db $48,$3E,$C4,$22,$C4,$FF,$C4,$21        ; $84F85E |
  db $2C,$64,$C1,$FF,$C1,$23,$38,$51        ; $84F866 |
  db $08,$87,$C0,$24,$C9,$FF,$C3,$25        ; $84F86E |
  db $44,$51,$C6,$FF,$14,$00,$DE,$FF        ; $84F876 |
  db $7F,$FE,$C3,$FF,$81,$26,$7C,$13        ; $84F87E |
  db $7C,$34,$7C,$55,$7C,$76,$D7,$FF        ; $84F886 |
  db $48,$00,$D9,$FF,$83,$08,$0A,$1C        ; $84F88E |
  db $D0,$FF,$81,$06,$CC,$FF,$88,$1C        ; $84F896 |
  db $08,$0C,$0A,$1E,$08,$0C,$2A,$17        ; $84F89E |
  db $F4,$C1,$0C,$08,$21,$00,$2F,$7F        ; $84F8A6 |
  db $FC,$10,$44,$81,$10,$C2,$18,$81        ; $84F8AE |
  db $12,$20,$26,$00,$34,$82,$06,$14        ; $84F8B6 |
  db $C2,$1A,$81,$16,$C7,$FF,$00,$5D        ; $84F8BE |
  db $81,$12,$38,$49,$00,$70,$83,$16        ; $84F8C6 |
  db $06,$08,$14,$25,$24,$27,$D8,$FF        ; $84F8CE |
  db $1A,$00,$DE,$FF,$7F,$FE,$C3,$FF        ; $84F8D6 |
  db $81,$3C,$D0,$FF,$81,$06,$7C,$26        ; $84F8DE |
  db $7C,$47,$68,$68,$81,$3E,$7C,$04        ; $84F8E6 |
  db $C8,$FF,$4F,$00,$88,$1A,$0A,$02        ; $84F8EE |
  db $00,$08,$08,$50,$50,$DE,$FF,$C3        ; $84F8F6 |
  db $FF,$81,$41,$C7,$FF,$81,$3F,$3F        ; $84F8FE |
  db $FD,$C0,$38,$C1,$37,$C0,$36,$38        ; $84F906 |
  db $15,$C1,$40,$C0,$38,$C1,$3C,$C0        ; $84F90E |
  db $36,$C1,$3E,$CB,$FF,$C1,$2D,$C0        ; $84F916 |
  db $3B,$C1,$3C,$C0,$3D,$C1,$31,$38        ; $84F91E |
  db $4C,$C0,$2E,$C1,$2F,$C0,$30,$14        ; $84F926 |
  db $63,$C6,$27,$C6,$28,$CC,$FF,$C3        ; $84F92E |
  db $45,$D7,$FF,$C0,$46,$7F,$EB,$C6        ; $84F936 |
  db $FF,$2E,$00,$DE,$FF,$7F,$FE,$D4        ; $84F93E |
  db $FF,$C0,$42,$83,$FF,$39,$39,$C3        ; $84F946 |
  db $FF,$C0,$35,$CC,$FF,$84,$43,$FF        ; $84F94E |
  db $FF,$3A,$C5,$FF,$84,$34,$FF,$32        ; $84F956 |
  db $33,$28,$45,$81,$44,$28,$52,$7C        ; $84F95E |
  db $15,$7C,$98,$7C,$B9,$C6,$FF,$5B        ; $84F966 |
  db $00,$DE,$FF,$C3,$FF,$81,$1C,$47        ; $84F96E |
  db $FB,$C4,$FF,$89,$1E,$FF,$10,$12        ; $84F976 |
  db $08,$0C,$0A,$10,$12,$04,$1D,$CB        ; $84F97E |
  db $FF,$8A,$28,$0C,$2A,$34,$16,$10        ; $84F986 |
  db $18,$12,$14,$36,$04,$22,$CB,$FF        ; $84F98E |
  db $00,$3C,$8B,$32,$08,$0A,$14,$1A        ; $84F996 |
  db $16,$08,$0A,$30,$18,$12,$CB,$FF        ; $84F99E |
  db $85,$34,$1A,$36,$08,$0A,$04,$41        ; $84F9A6 |
  db $00,$6E,$04,$6B,$C2,$FF,$00,$70        ; $84F9AE |
  db $C3,$0C,$04,$6F,$10,$7E,$CC,$FF        ; $84F9B6 |
  db $08,$84,$34,$8B,$28,$8F,$60,$9E        ; $84F9BE |
  db $CE,$FF,$36,$00,$DE,$FF,$7F,$FE        ; $84F9C6 |
  db $D4,$FF,$85,$08,$2A,$FF,$28,$2A        ; $84F9CE |
  db $C3,$FF,$82,$28,$0A,$CC,$FF,$84        ; $84F9D6 |
  db $1C,$FF,$FF,$3C,$C5,$FF,$00,$53        ; $84F9DE |
  db $82,$1C,$0E,$C9,$FF,$84,$1E,$2E        ; $84F9E6 |
  db $FF,$3E,$C5,$FF,$00,$6D,$18,$6D        ; $84F9EE |
  db $7C,$7E,$7C,$9F,$7C,$C0,$81,$FF        ; $84F9F6 |
  db $50,$00,$88,$0C,$15,$02,$00,$08        ; $84F9FE |
  db $08,$40,$40,$CC,$FF,$C1,$5F,$7F        ; $84FA06 |
  db $EC,$3C,$0D,$81,$5D,$C9,$FF,$7C        ; $84FA0E |
  db $2A,$C1,$58,$81,$59,$C9,$FF,$1C        ; $84FA16 |
  db $5A,$83,$5B,$5A,$5A,$20,$66,$28        ; $84FA1E |
  db $64,$C0,$5C,$24,$5A,$C1,$54,$81        ; $84FA26 |
  db $53,$C7,$FF,$82,$55,$FF,$20,$98        ; $84FA2E |
  db $C0,$56,$20,$A4,$C0,$FF,$0C,$B0        ; $84FA36 |
  db $C0,$51,$C1,$FF,$C0,$4E,$08,$BC        ; $84FA3E |
  db $C2,$48,$C2,$52,$28,$B0,$C1,$FF        ; $84FA46 |
  db $41,$00,$DE,$FF,$DC,$FF,$86,$60        ; $84FA4E |
  db $FF,$57,$FF,$FF,$5E,$C4,$FF,$81        ; $84FA56 |
  db $61,$7C,$1E,$7C,$3F,$C3,$FF,$81        ; $84FA5E |
  db $62,$24,$66,$C0,$FF,$04,$73,$C5        ; $84FA66 |
  db $FF,$83,$50,$4A,$4A,$C2,$4B,$81        ; $84FA6E |
  db $4C,$0C,$85,$83,$FF,$49,$4F,$C1        ; $84FA76 |
  db $FF,$18,$90,$C2,$FF,$54,$9C,$81        ; $84FA7E |
  db $4D,$0C,$B4,$C0,$FF,$0C,$AF,$CD        ; $84FA86 |
  db $FF,$59,$00,$CC,$FF,$83,$10,$18        ; $84FA8E |
  db $12,$C7,$FF,$83,$00,$04,$02,$7F        ; $84FA96 |
  db $F0,$86,$34,$1A,$36,$FF,$FF,$3C        ; $84FA9E |
  db $C9,$FF,$81,$06,$54,$23,$81,$1E        ; $84FAA6 |
  db $C6,$FF,$84,$28,$0C,$0A,$1C,$48        ; $84FAAE |
  db $2F,$84,$1C,$08,$0A,$26,$24,$56        ; $84FAB6 |
  db $1C,$5E,$83,$1E,$08,$0A,$1C,$46        ; $84FABE |
  db $C0,$FF,$81,$08,$28,$50,$81,$0E        ; $84FAC6 |
  db $24,$39,$00,$80,$3C,$2E,$82,$28        ; $84FACE |
  db $0A,$08,$A3,$81,$2A,$08,$B4,$00        ; $84FAD6 |
  db $8D,$82,$0C,$2A,$04,$C4,$28,$81        ; $84FADE |
  db $C2,$FF,$50,$00,$DE,$FF,$DC,$FF        ; $84FAE6 |
  db $84,$2E,$FF,$3C,$FF,$08,$1E,$C2        ; $84FAEE |
  db $FF,$84,$1C,$FF,$06,$FF,$08,$2A        ; $84FAF6 |
  db $C2,$FF,$00,$2E,$58,$2B,$81,$26        ; $84FAFE |
  db $4C,$38,$81,$1E,$24,$5A,$81,$0E        ; $84FB06 |
  db $08,$69,$81,$3E,$C6,$FF,$00,$65        ; $84FB0E |
  db $C6,$FF,$88,$1C,$08,$0A,$08,$0C        ; $84FB16 |
  db $0C,$0A,$1C,$10,$55,$82,$1C,$0E        ; $84FB1E |
  db $0C,$92,$18,$56,$44,$9A,$00,$76        ; $84FB26 |
  db $08,$B4,$81,$2E,$14,$7F,$1C,$76        ; $84FB2E |
  db $C9,$FF,$55,$00,$88,$14,$0C,$02        ; $84FB36 |
  db $00,$08,$08,$40,$40,$D8,$FF,$C2        ; $84FB3E |
  db $6B,$81,$6C,$C1,$88,$CE,$FF,$84        ; $84FB46 |
  db $6C,$FF,$FF,$2B,$CB,$FF,$C1,$74        ; $84FB4E |
  db $81,$6C,$C2,$6D,$CA,$FF,$C0,$75        ; $84FB56 |
  db $82,$7C,$7D,$C2,$6E,$81,$73,$C1        ; $84FB5E |
  db $72,$20,$36,$87,$FF,$7D,$FF,$FF        ; $84FB66 |
  db $7F,$FF,$73,$C3,$FF,$81,$77,$C5        ; $84FB6E |
  db $76,$C3,$7E,$18,$59,$C7,$FF,$81        ; $84FB76 |
  db $85,$C1,$86,$C0,$87,$34,$70,$CC        ; $84FB7E |
  db $FF,$C3,$84,$7C,$92,$CE,$FF,$39        ; $84FB86 |
  db $00,$DE,$FF,$7F,$FE,$C0,$FF,$81        ; $84FB8E |
  db $7A,$54,$0F,$83,$8C,$6F,$6F,$C2        ; $84FB96 |
  db $70,$81,$71,$C5,$FF,$83,$79,$7A        ; $84FB9E |
  db $7B,$04,$38,$CC,$FF,$84,$79,$FF        ; $84FBA6 |
  db $FF,$80,$50,$4D,$81,$8B,$C6,$FF        ; $84FBAE |
  db $C3,$78,$04,$71,$C1,$81,$D1,$FF        ; $84FBB6 |
  db $81,$82,$CD,$FF,$C3,$83,$DA,$FF        ; $84FBBE |
  db $65,$00,$D8,$FF,$88,$08,$0C,$0C        ; $84FBC6 |
  db $0A,$1C,$08,$0C,$0A,$CE,$FF,$84        ; $84FBCE |
  db $06,$FF,$FF,$1C,$CB,$FF,$84,$28        ; $84FBD6 |
  db $0C,$0A,$1E,$0B,$F9,$CA,$FF,$86        ; $84FBDE |
  db $10,$12,$0E,$1C,$28,$2C,$0F,$FB        ; $84FBE6 |
  db $81,$2A,$C6,$FF,$87,$14,$36,$FF        ; $84FBEE |
  db $1E,$FF,$FF,$0E,$08,$10,$C1,$FF        ; $84FBF6 |
  db $04,$3E,$C2,$0C,$82,$0A,$28,$08        ; $84FBFE |
  db $5C,$08,$4C,$10,$0E,$C5,$FF,$00        ; $84FC06 |
  db $39,$00,$63,$81,$08,$0C,$29,$81        ; $84FC0E |
  db $3E,$28,$08,$2C,$2A,$C1,$18,$81        ; $84FC16 |
  db $12,$34,$8A,$81,$34,$C1,$1A,$81        ; $84FC1E |
  db $16,$10,$66,$D5,$FF,$44,$00,$DE        ; $84FC26 |
  db $FF,$7F,$FE,$C0,$FF,$81,$3C,$D1        ; $84FC2E |
  db $FF,$81,$06,$08,$1F,$87,$28,$0A        ; $84FC36 |
  db $08,$0C,$0C,$0A,$2E,$C5,$FF,$82        ; $84FC3E |
  db $1C,$1E,$04,$41,$08,$36,$30,$2B        ; $84FC46 |
  db $81,$1C,$44,$4D,$82,$1E,$FF,$08        ; $84FC4E |
  db $4A,$C4,$FF,$81,$28,$C1,$0C,$87        ; $84FC56 |
  db $0A,$1E,$FF,$FF,$08,$0C,$0A,$D1        ; $84FC5E |
  db $FF,$81,$0E,$CD,$FF,$0C,$80,$DA        ; $84FC66 |
  db $FF                                    ; $84FC6E |
  db $6A,$00,$88,$14,$0E,$02,$00,$08        ; $84FC6F |
  db $08,$40,$40,$D5,$FF,$C0,$A0,$DA        ; $84FC77 |
  db $FF,$81,$A3,$68,$09,$C4,$9D,$81        ; $84FC7F |
  db $9C,$C2,$A5,$81,$A3,$C2,$A4,$C8        ; $84FC87 |
  db $FF,$81,$9C,$CB,$FF,$81,$8D,$C3        ; $84FC8F |
  db $A9,$81,$9C,$C3,$A6,$C2,$A7,$C2        ; $84FC97 |
  db $FF,$81,$8E,$C3,$FF,$81,$9B,$CB        ; $84FC9F |
  db $FF,$08,$75,$82,$91,$90,$08,$7B        ; $84FCA7 |
  db $84,$96,$97,$97,$98,$20,$83,$82        ; $84FCAF |
  db $FF,$90,$C2,$FF,$83,$96,$95,$95        ; $84FCB7 |
  db $18,$96,$C2,$8F,$81,$90,$C2,$92        ; $84FCBF |
  db $C2,$93,$C9,$FF,$0C,$A2,$C1,$FF        ; $84FCC7 |
  db $81,$99,$28,$BF,$C5,$9A,$28,$D2        ; $84FCCF |
  db $CB,$FF,$2C,$00,$D3,$FF,$81,$AA        ; $84FCD7 |
  db $C4,$9F,$C3,$A1,$C2,$A2,$0F,$F0        ; $84FCDF |
  db $C4,$9E,$C3,$FF,$48,$00,$1F,$EC        ; $84FCE7 |
  db $48,$1D,$4B,$E1,$81,$1B,$C9,$FF        ; $84FCEF |
  db $C2,$A8,$DE,$FF,$7C,$88,$C8,$FF        ; $84FCF7 |
  db $C0,$94,$7C,$93,$DE,$FF,$5D,$00        ; $84FCFF |
  db $D5,$FF,$82,$28,$0A,$DA,$FF,$81        ; $84FD07 |
  db $1C,$D1,$FF,$81,$06,$1F,$EE,$C2        ; $84FD0F |
  db $2C,$87,$2A,$1C,$08,$0C,$0C,$0A        ; $84FD17 |
  db $1E,$08,$38,$44,$1E,$C3,$FF,$81        ; $84FD1F |
  db $0E,$04,$3D,$10,$3A,$00,$5D,$04        ; $84FD27 |
  db $60,$81,$2A,$20,$10,$30,$14,$08        ; $84FD2F |
  db $4B,$83,$0E,$1C,$1E,$08,$70,$82        ; $84FD37 |
  db $08,$0A,$14,$73,$0C,$4B,$0C,$95        ; $84FD3F |
  db $00,$5F,$00,$5E,$C4,$FF,$0C,$3C        ; $84FD47 |
  db $81,$06,$08,$AA,$82,$08,$2C,$28        ; $84FD4F |
  db $3F,$1C,$4A,$28,$73,$0C,$5F,$08        ; $84FD57 |
  db $5C,$D6,$FF,$4D,$00,$D3,$FF,$83        ; $84FD5F |
  db $1C,$08,$2C,$C1,$0C,$82,$0A,$08        ; $84FD67 |
  db $0B,$F7,$84,$10,$18,$18,$12,$C2        ; $84FD6F |
  db $FF,$81,$06,$04,$00,$14,$01,$85        ; $84FD77 |
  db $FF,$14,$1A,$1A,$14,$0C,$04,$81        ; $84FD7F |
  db $00,$C2,$04,$81,$02,$CB,$FF,$82        ; $84FD87 |
  db $06,$34,$C2,$3A,$81,$36,$30,$23        ; $84FD8F |
  db $D1,$FF,$82,$1E,$0E,$C9,$FF,$03        ; $84FD97 |
  db $FB,$82,$2C,$0A,$DE,$FF,$7C,$88        ; $84FD9F |
  db $C8,$FF,$81,$28,$7C,$68,$7C,$D5        ; $84FDA7 |
  db $1C,$00,$88,$07,$05,$01,$00,$10        ; $84FDAF |
  db $10,$20,$20,$C8,$FF,$83,$AD,$AF        ; $84FDB7 |
  db $AF,$0F,$ED,$C2,$FF,$C0,$AC,$82        ; $84FDBF |
  db $AD,$B0,$C7,$FF,$15,$00,$C8,$FF        ; $84FDC7 |
  db $83,$1C,$08,$0A,$C2,$FF,$81,$06        ; $84FDCF |
  db $C2,$FF,$03,$EA,$82,$1E,$0E,$C7        ; $84FDD7 |
  db $FF,$15,$00,$88,$05,$04,$01,$00        ; $84FDDF |
  db $10,$10,$50,$50,$C4,$FF,$C1,$B1        ; $84FDE7 |
  db $C2,$FF,$81,$47,$C4,$FF,$0E,$00        ; $84FDEF |
  db $C4,$FF,$83,$08,$0C,$0A,$C2,$FF        ; $84FDF7 |
  db $81,$0E,$C4,$FF,$15,$00,$88,$05        ; $84FDFF |
  db $04,$01,$00,$10,$10,$50,$50,$C4        ; $84FE07 |
  db $FF,$C1,$B2,$C0,$FF,$81,$B3,$C6        ; $84FE0F |
  db $FF,$0D,$00,$C4,$FF,$86,$08,$0C        ; $84FE17 |
  db $0A,$FF,$FF,$0E,$C6,$FF                ; $84FE1F |
  db $1F,$00,$88,$05,$07,$01,$00,$10        ; $84FE25 |
  db $10,$30,$30,$C4,$FF,$81,$B7,$C2        ; $84FE2D |
  db $FF,$83,$B6,$B2,$B2,$07,$F0,$0F        ; $84FE35 |
  db $EE,$0F,$F8,$81,$B4,$C5,$FF            ; $84FE3D |
  db $39,$00,$88,$10,$0D,$02,$00,$05        ; $84FE44 |
  db $05,$25,$25,$CF,$FF,$C1,$06,$C3        ; $84FE4C |
  db $FF,$81,$02,$67,$F1,$C3,$01,$C5        ; $84FE54 |
  db $FF,$C1,$05,$CB,$FF,$C1,$05,$E3        ; $84FE5C |
  db $83,$FF,$04,$04,$C3,$FF,$E6,$04        ; $84FE64 |
  db $40,$C0,$03,$81,$27,$64,$46,$D5        ; $84FE6C |
  db $FF,$C1,$07,$38,$7B,$2C,$88,$34        ; $84FE74 |
  db $98,$35,$00,$88,$10,$0D,$02,$00        ; $84FE7C |
  db $05,$05,$25,$25,$CF,$FF,$C1,$06        ; $84FE84 |
  db $C3,$FF,$81,$02,$67,$F1,$C3,$01        ; $84FE8C |
  db $C5,$FF,$C1,$05,$CB,$FF,$1C,$28        ; $84FE94 |
  db $C0,$04,$C3,$FF,$C4,$07,$0C,$3E        ; $84FE9C |
  db $C0,$03,$81,$27,$64,$46,$D5,$FF        ; $84FEA4 |
  db $38,$6B,$38,$68,$34,$98,$82,$00        ; $84FEAC |
  db $C0,$12,$E0,$C0,$05,$C0,$25,$D1        ; $84FEB4 |
  db $FF,$81,$26,$C2,$25,$C9,$20,$4B        ; $84FEBC |
  db $F8,$C3,$24,$28,$12,$81,$00,$34        ; $84FEC4 |
  db $1E,$83,$19,$FF,$00,$C2,$23,$81        ; $84FECC |
  db $1E,$C3,$1F,$C4,$18,$5C,$40,$C2        ; $84FED4 |
  db $1B,$81,$1A,$C1,$30,$1C,$61,$C0        ; $84FEDC |
  db $1D,$C0,$1C,$81,$32,$1C,$6F,$C0        ; $84FEE4 |
  db $22,$C0,$21,$0C,$7C,$89,$10,$28        ; $84FEEC |
  db $28,$15,$15,$29,$29,$FF,$FF,$C1        ; $84FEF4 |
  db $09,$C2,$08,$C0,$0C,$87,$10,$12        ; $84FEFC |
  db $12,$15,$15,$16,$16,$48,$9A,$C1        ; $84FF04 |
  db $0A,$C2,$08,$C0,$0D,$C1,$10,$2C        ; $84FF0C |
  db $BA,$C0,$0E,$C1,$10,$84,$13,$15        ; $84FF14 |
  db $17,$17,$30,$D0,$C0,$10,$08,$E0        ; $84FF1C |
  db $C1,$0B,$C2,$08,$83,$0F,$11,$11        ; $84FF24 |
  db $40,$EE,$81,$14,$15,$01,$CF,$FF        ; $84FF2C |
  db $7E,$00,$C0,$12,$E0,$C0,$05,$C0        ; $84FF34 |
  db $25,$D1,$FF,$81,$26,$C2,$25,$C9        ; $84FF3C |
  db $20,$4B,$F8,$C3,$24,$C8,$20,$83        ; $84FF44 |
  db $19,$FF,$00,$40,$1E,$C2,$23,$81        ; $84FF4C |
  db $1E,$C3,$1F,$C4,$18,$5C,$40,$C2        ; $84FF54 |
  db $1B,$81,$1A,$28,$5E,$C0,$1D,$C0        ; $84FF5C |
  db $1C,$81,$32,$1C,$6F,$C0,$22,$C0        ; $84FF64 |
  db $21,$0C,$7C,$89,$2A,$28,$28,$2D        ; $84FF6C |
  db $2D,$2F,$2F,$FF,$FF,$C1,$33,$C2        ; $84FF74 |
  db $08,$C0,$0C,$87,$2A,$2C,$2C,$2D        ; $84FF7C |
  db $2D,$2E,$2E,$48,$9A,$C1,$0A,$C2        ; $84FF84 |
  db $08,$C0,$0D,$C1,$2A,$2C,$BA,$C0        ; $84FF8C |
  db $0E,$C1,$2A,$84,$13,$2D,$17,$17        ; $84FF94 |
  db $30,$D0,$C0,$2A,$08,$E0,$C1,$0B        ; $84FF9C |
  db $C2,$08,$83,$0F,$2B,$2B,$40,$EE        ; $84FFA4 |
  db $81,$14,$15,$01,$CF                    ; $84FFAC |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $84FFB1 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $84FFB9 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $84FFC1 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $84FFC9 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $84FFD1 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $84FFD9 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $84FFE1 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $84FFE9 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $84FFF1 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF            ; $84FFF9 |
