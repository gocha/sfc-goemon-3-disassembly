org $858000

CODE_FL_858000:
  PHX                                       ; $858000 |
  TAX                                       ; $858001 |
  LDA.W $8018,X                             ; $858002 |
  TAX                                       ; $858005 |
  LDA.W $0000,X                             ; $858006 |
  AND.W #$00FF                              ; $858009 |
  STA.W $1C34                               ; $85800C |
  INX                                       ; $85800F |
  STX.W $1C32                               ; $858010 |
  STZ.W $1C36                               ; $858013 |
  LDX.W $8008,Y                             ; $858016 |
  CLC                                       ; $858019 |
  LDA.B $08                                 ; $85801A |
  ADC.B $02,X                               ; $85801C |
  STA.W $1C28                               ; $85801E |
  CLC                                       ; $858021 |
  LDA.B $0A                                 ; $858022 |
  ADC.B $12,X                               ; $858024 |
  STA.W $1C2A                               ; $858026 |
  LDA.W $8010,Y                             ; $858029 |
  STA.B $16                                 ; $85802C |
  SEP #$20                                  ; $85802E |
  JSR.W CODE_FN_8580C3                      ; $858030 |
  REP #$20                                  ; $858033 |

CODE_858035:
  LDX.W $1C32                               ; $858035 |
  CLC                                       ; $858038 |
  LDA.W $1C28                               ; $858039 |
  ADC.W $0000,X                             ; $85803C |
  STA.B $10                                 ; $85803F |
  CLC                                       ; $858041 |
  LDA.W $1C2A                               ; $858042 |
  ADC.W $0002,X                             ; $858045 |
  STA.B $12                                 ; $858048 |
  INX                                       ; $85804A |
  INX                                       ; $85804B |
  INX                                       ; $85804C |
  INX                                       ; $85804D |
  STX.W $1C32                               ; $85804E |
  SEP #$20                                  ; $858051 |
  JSL.L CODE_FL_8580EB                      ; $858053 |
  REP #$20                                  ; $858057 |
  AND.W #$00FF                              ; $858059 |
  ASL A                                     ; $85805C |
  ASL A                                     ; $85805D |
  ASL A                                     ; $85805E |
  ASL A                                     ; $85805F |
  ASL A                                     ; $858060 |
  ADC.B $16                                 ; $858061 |
  STA.B $05                                 ; $858063 |
  LDA.B $10                                 ; $858065 |
  LSR A                                     ; $858067 |
  LSR A                                     ; $858068 |
  AND.W #$0006                              ; $858069 |
  STA.B $00                                 ; $85806C |
  LDA.B $12                                 ; $85806E |
  AND.W #$0018                              ; $858070 |
  ORA.B $00                                 ; $858073 |
  TAY                                       ; $858075 |
  LDA.B [$05],Y                             ; $858076 |
  AND.W #$03FF                              ; $858078 |
  ORA.W $1C36                               ; $85807B |
  STA.W $1C36                               ; $85807E |
  DEC.W $1C34                               ; $858081 |
  BNE CODE_858035                           ; $858084 |
  TAX                                       ; $858086 |
  PLX                                       ; $858087 |
  RTL                                       ; $858088 |

  PHX                                       ; $858089 |
  SEP #$20                                  ; $85808A |
  JSR.W CODE_FN_8580C3                      ; $85808C |

CODE_85808F:
  TDC                                       ; $85808F |
  LDA.B $13                                 ; $858090 |
  STA.W $4203                               ; $858092 |
  LDA.B $10                                 ; $858095 |
  LSR A                                     ; $858097 |
  LSR A                                     ; $858098 |
  LSR A                                     ; $858099 |
  LSR A                                     ; $85809A |
  LSR A                                     ; $85809B |
  STA.B $00                                 ; $85809C |
  STZ.B $01                                 ; $85809E |
  CLC                                       ; $8580A0 |
  LDA.B $11                                 ; $8580A1 |
  ADC.W $4216                               ; $8580A3 |
  TAY                                       ; $8580A6 |
  LDA.B [$02],Y                             ; $8580A7 |
  REP #$20                                  ; $8580A9 |
  ASL A                                     ; $8580AB |
  ASL A                                     ; $8580AC |
  ASL A                                     ; $8580AD |
  ASL A                                     ; $8580AE |
  ASL A                                     ; $8580AF |
  ASL A                                     ; $8580B0 |
  ADC.B $14                                 ; $8580B1 |
  STA.B $05                                 ; $8580B3 |
  LDA.B $12                                 ; $8580B5 |
  AND.W #$00E0                              ; $8580B7 |
  LSR A                                     ; $8580BA |
  LSR A                                     ; $8580BB |
  ORA.B $00                                 ; $8580BC |
  TAY                                       ; $8580BE |
  LDA.B [$05],Y                             ; $8580BF |
  PLX                                       ; $8580C1 |
  RTL                                       ; $8580C2 |

CODE_FN_8580C3:
  LDA.B #$7F                                ; $8580C3 |
  STA.B $07                                 ; $8580C5 |
  TYX                                       ; $8580C7 |
  BNE CODE_8580D2                           ; $8580C8 |
  LDY.W $16FA                               ; $8580CA |
  LDA.W $16FC                               ; $8580CD |
  BRA CODE_8580D8                           ; $8580D0 |

CODE_8580D2:
  LDY.W $16FD                               ; $8580D2 |
  LDA.W $16FF                               ; $8580D5 |

CODE_8580D8:
  STY.B $02                                 ; $8580D8 |
  STA.B $04                                 ; $8580DA |
  LDY.W $8000,X                             ; $8580DC |
  LDA.W $0086,Y                             ; $8580DF |
  STA.W $4202                               ; $8580E2 |
  LDY.W $8004,X                             ; $8580E5 |
  STY.B $14                                 ; $8580E8 |
  RTS                                       ; $8580EA |

CODE_FL_8580EB:
  PHX                                       ; $8580EB |
  BRA CODE_85808F                           ; $8580EC |

CODE_FL_8580EE:
  JSR.W CODE_FN_8584C0                      ; $8580EE |
  BRA CODE_FL_8580F7                        ; $8580F1 |

  JSL.L CODE_FL_858166                      ; $8580F3 |

CODE_FL_8580F7:
  LDY.W #$FFFF                              ; $8580F7 |
  PHA                                       ; $8580FA |
  LDA.W $00E8                               ; $8580FB |
  LSR A                                     ; $8580FE |
  PLA                                       ; $8580FF |
  BCC CODE_858103                           ; $858100 |
  INY                                       ; $858102 |

CODE_858103:
  STY.W $1C32                               ; $858103 |
  JSL.L CODE_FL_858259                      ; $858106 |
  BCS CODE_JP_858165                        ; $85810A |
  PHX                                       ; $85810C |
  LDA.W $00E8                               ; $85810D |
  LSR A                                     ; $858110 |
  BCC CODE_858117                           ; $858111 |
  JSL.L CODE_FL_858199                      ; $858113 |

CODE_858117:
  LDA.W $1C2E                               ; $858117 |
  STA.B $16                                 ; $85811A |
  SEP #$20                                  ; $85811C |
  TDC                                       ; $85811E |
  LDA.W $1C2C                               ; $85811F |
  AND.B #$FE                                ; $858122 |
  TAY                                       ; $858124 |
  JSR.W CODE_FN_8580C3                      ; $858125 |
  LDX.W $1C30                               ; $858128 |

CODE_85812B:
  JSL.L CODE_FL_8580EB                      ; $85812B |
  CLC                                       ; $85812F |
  LDA.B $10                                 ; $858130 |
  ADC.W #$0020                              ; $858132 |
  STA.B $10                                 ; $858135 |
  SEP #$20                                  ; $858137 |
  LDA.W $0000,X                             ; $858139 |
  CMP.B #$FF                                ; $85813C |
  BEQ CODE_858142                           ; $85813E |
  STA.B [$05],Y                             ; $858140 |

CODE_858142:
  INX                                       ; $858142 |
  DEC.B $16                                 ; $858143 |
  BNE CODE_85812B                           ; $858145 |
  REP #$20                                  ; $858147 |
  CLC                                       ; $858149 |
  LDA.B $12                                 ; $85814A |
  ADC.W #$0020                              ; $85814C |
  STA.B $12                                 ; $85814F |
  LDA.W $1C28                               ; $858151 |
  STA.B $10                                 ; $858154 |
  SEP #$20                                  ; $858156 |
  LDA.W $1C2E                               ; $858158 |
  STA.B $16                                 ; $85815B |
  DEC.B $17                                 ; $85815D |
  BNE CODE_85812B                           ; $85815F |
  REP #$20                                  ; $858161 |
  PLX                                       ; $858163 |
  CLC                                       ; $858164 |

CODE_JP_858165:
  RTL                                       ; $858165 |

CODE_FL_858166:
  PHA                                       ; $858166 |
  JSL.L CODE_FL_85817B                      ; $858167 |
  SEC                                       ; $85816B |
  LDA.B $09,X                               ; $85816C |
  SBC.B $08                                 ; $85816E |
  STA.B $08                                 ; $858170 |
  SEC                                       ; $858172 |
  LDA.B $0D,X                               ; $858173 |
  SBC.B $0A                                 ; $858175 |
  STA.B $0A                                 ; $858177 |
  PLA                                       ; $858179 |
  RTL                                       ; $85817A |

CODE_FL_85817B:
  PHX                                       ; $85817B |
  TAY                                       ; $85817C |
  LDX.W $8028,Y                             ; $85817D |
  LDA.W $0001,X                             ; $858180 |
  ASL A                                     ; $858183 |
  ASL A                                     ; $858184 |
  ASL A                                     ; $858185 |
  ASL A                                     ; $858186 |
  AND.W #$F0F0                              ; $858187 |
  SEP #$20                                  ; $85818A |
  STA.B $08                                 ; $85818C |
  STZ.B $09                                 ; $85818E |
  XBA                                       ; $858190 |
  STA.B $0A                                 ; $858191 |
  STZ.B $0B                                 ; $858193 |
  REP #$20                                  ; $858195 |
  PLX                                       ; $858197 |
  RTL                                       ; $858198 |

CODE_FL_858199:
  JSL.L CODE_FL_858213                      ; $858199 |
  LDA.W $1C2E                               ; $85819D |
  SEP #$20                                  ; $8581A0 |
  STA.W $4202                               ; $8581A2 |
  ASL A                                     ; $8581A5 |
  STA.B $02                                 ; $8581A6 |
  STA.B $03                                 ; $8581A8 |
  STZ.B $04                                 ; $8581AA |
  XBA                                       ; $8581AC |
  STA.W $4203                               ; $8581AD |
  ASL A                                     ; $8581B0 |
  PHA                                       ; $8581B1 |
  REP #$20                                  ; $8581B2 |
  SEC                                       ; $8581B4 |
  LDA.B $F0                                 ; $8581B5 |
  SBC.B $03                                 ; $8581B7 |
  STA.B $00                                 ; $8581B9 |
  LDY.W #$0000                              ; $8581BB |
  LDA.W $1C2C                               ; $8581BE |
  LSR A                                     ; $8581C1 |
  BCC CODE_8581F0                           ; $8581C2 |
  CLC                                       ; $8581C4 |
  LDA.W $1C30                               ; $8581C5 |
  ADC.W $4216                               ; $8581C8 |
  STA.B $04                                 ; $8581CB |
  SEP #$20                                  ; $8581CD |

CODE_8581CF:
  LDA.B $02                                 ; $8581CF |
  STA.B $03                                 ; $8581D1 |

CODE_8581D3:
  LDA.B ($04),Y                             ; $8581D3 |
  STA.L $7F7006,X                           ; $8581D5 |
  INY                                       ; $8581D9 |
  INX                                       ; $8581DA |
  DEC.B $03                                 ; $8581DB |
  BNE CODE_8581D3                           ; $8581DD |
  REP #$21                                  ; $8581DF |
  TXA                                       ; $8581E1 |
  ADC.B $00                                 ; $8581E2 |
  TAX                                       ; $8581E4 |
  SEP #$20                                  ; $8581E5 |
  PLA                                       ; $8581E7 |
  DEC A                                     ; $8581E8 |
  PHA                                       ; $8581E9 |
  BNE CODE_8581CF                           ; $8581EA |
  PLA                                       ; $8581EC |
  REP #$20                                  ; $8581ED |
  RTL                                       ; $8581EF |

CODE_8581F0:
  SEP #$20                                  ; $8581F0 |
  STZ.B $03                                 ; $8581F2 |
  LDY.B $02                                 ; $8581F4 |
  PLA                                       ; $8581F6 |
  STA.B $02                                 ; $8581F7 |

CODE_8581F9:
  PHY                                       ; $8581F9 |
  TDC                                       ; $8581FA |

CODE_8581FB:
  STA.L $7F7006,X                           ; $8581FB |
  INX                                       ; $8581FF |
  DEY                                       ; $858200 |
  BNE CODE_8581FB                           ; $858201 |
  REP #$21                                  ; $858203 |
  TXA                                       ; $858205 |
  ADC.B $00                                 ; $858206 |
  TAX                                       ; $858208 |
  SEP #$20                                  ; $858209 |
  PLY                                       ; $85820B |
  DEC.B $02                                 ; $85820C |
  BNE CODE_8581F9                           ; $85820E |
  REP #$20                                  ; $858210 |
  RTL                                       ; $858212 |

CODE_FL_858213:
  LDA.B $12                                 ; $858213 |
  LDY.B $90                                 ; $858215 |
  CPY.W #$0001                              ; $858217 |
  BNE CODE_85821F                           ; $85821A |
  SBC.W #$0100                              ; $85821C |

CODE_85821F:
  LSR A                                     ; $85821F |
  LSR A                                     ; $858220 |
  LSR A                                     ; $858221 |
  LSR A                                     ; $858222 |
  SEP #$20                                  ; $858223 |
  STA.W $4202                               ; $858225 |
  LDA.B $F0                                 ; $858228 |
  STA.W $4203                               ; $85822A |
  REP #$20                                  ; $85822D |
  ASL A                                     ; $85822F |
  ASL A                                     ; $858230 |
  ASL A                                     ; $858231 |
  ASL A                                     ; $858232 |
  STA.B $00                                 ; $858233 |
  LDA.B $10                                 ; $858235 |
  LDY.B $90                                 ; $858237 |
  CPY.W #$0001                              ; $858239 |
  BNE CODE_858241                           ; $85823C |
  SBC.W #$0100                              ; $85823E |

CODE_858241:
  LSR A                                     ; $858241 |
  LSR A                                     ; $858242 |
  LSR A                                     ; $858243 |
  LSR A                                     ; $858244 |
  STA.B $02                                 ; $858245 |
  CLC                                       ; $858247 |
  ADC.W $4216                               ; $858248 |
  TAX                                       ; $85824B |
  RTL                                       ; $85824C |

CODE_FL_85824D:
  JSR.W CODE_FN_8584C0                      ; $85824D |
  BRA CODE_FL_858256                        ; $858250 |

CODE_FL_858252:
  JSL.L CODE_FL_858166                      ; $858252 |

CODE_FL_858256:
  STZ.W $1C32                               ; $858256 |

CODE_FL_858259:
  SEC                                       ; $858259 |
  LDY.W $19AA                               ; $85825A |
  BEQ CODE_858262                           ; $85825D |
  JMP.W CODE_JP_858165                      ; $85825F |

CODE_858262:
  TAY                                       ; $858262 |
  PHX                                       ; $858263 |
  LDX.W $8028,Y                             ; $858264 |
  LDA.W $0000,X                             ; $858267 |
  STA.W $1C2C                               ; $85826A |
  AND.W #$00FE                              ; $85826D |
  TAY                                       ; $858270 |
  INX                                       ; $858271 |
  LDA.W $0000,X                             ; $858272 |
  STA.W $1C2E                               ; $858275 |
  STA.B $04                                 ; $858278 |
  INX                                       ; $85827A |
  INX                                       ; $85827B |
  STX.W $1C30                               ; $85827C |
  LDA.W $800C,Y                             ; $85827F |
  STA.B $14                                 ; $858282 |
  LDA.B $8E                                 ; $858284 |
  CMP.W #$002B                              ; $858286 |
  BNE CODE_858290                           ; $858289 |
  LDA.W $8014,Y                             ; $85828B |
  STA.B $14                                 ; $85828E |

CODE_858290:
  LDA.W $8010,Y                             ; $858290 |
  STA.B $16                                 ; $858293 |
  LDX.W $8008,Y                             ; $858295 |
  CLC                                       ; $858298 |
  LDA.B $08                                 ; $858299 |
  ADC.B $02,X                               ; $85829B |
  STA.B $10                                 ; $85829D |
  STA.W $1C28                               ; $85829F |
  CLC                                       ; $8582A2 |
  LDA.B $0A                                 ; $8582A3 |
  ADC.B $12,X                               ; $8582A5 |
  STA.B $12                                 ; $8582A7 |
  STA.W $1C2A                               ; $8582A9 |
  LDA.B $08                                 ; $8582AC |
  CMP.W #$FFB0                              ; $8582AE |
  BCS CODE_8582B8                           ; $8582B1 |
  CMP.W #$0130                              ; $8582B3 |
  BCS CODE_85830A                           ; $8582B6 |

CODE_8582B8:
  LDA.B $0A                                 ; $8582B8 |
  CMP.W #$FFB0                              ; $8582BA |
  BCS CODE_8582C4                           ; $8582BD |
  CMP.W #$0150                              ; $8582BF |
  BCS CODE_85830A                           ; $8582C2 |

CODE_8582C4:
  SEP #$20                                  ; $8582C4 |
  PHB                                       ; $8582C6 |
  LDA.B #$7E                                ; $8582C7 |
  PHA                                       ; $8582C9 |
  PLB                                       ; $8582CA |
  LDX.W $1C30                               ; $8582CB |

CODE_8582CE:
  LDA.L $870000,X                           ; $8582CE |
  INX                                       ; $8582D2 |
  REP #$20                                  ; $8582D3 |
  JSR.W CODE_FN_85830E                      ; $8582D5 |
  CLC                                       ; $8582D8 |
  LDA.B $10                                 ; $8582D9 |
  ADC.W #$0020                              ; $8582DB |
  STA.B $10                                 ; $8582DE |
  SEP #$20                                  ; $8582E0 |
  DEC.B $04                                 ; $8582E2 |
  BNE CODE_8582CE                           ; $8582E4 |
  REP #$20                                  ; $8582E6 |
  LDA.B $12                                 ; $8582E8 |
  ADC.W #$0020                              ; $8582EA |
  STA.B $12                                 ; $8582ED |
  LDA.W $1C28                               ; $8582EF |
  STA.B $10                                 ; $8582F2 |
  SEP #$20                                  ; $8582F4 |
  LDA.W $1C2E                               ; $8582F6 |
  STA.B $04                                 ; $8582F9 |
  DEC.B $05                                 ; $8582FB |
  BNE CODE_8582CE                           ; $8582FD |
  PLB                                       ; $8582FF |
  REP #$20                                  ; $858300 |
  LDA.W $1C2A                               ; $858302 |
  STA.B $12                                 ; $858305 |
  PLX                                       ; $858307 |
  CLC                                       ; $858308 |
  RTL                                       ; $858309 |

CODE_85830A:
  PLX                                       ; $85830A |
  SEC                                       ; $85830B |
  RTL                                       ; $85830C |

CODE_85830D:
  RTS                                       ; $85830D |

CODE_FN_85830E:
  AND.W #$00FF                              ; $85830E |
  CMP.W #$00FF                              ; $858311 |
  BEQ CODE_85830D                           ; $858314 |
  JSR.W CODE_FN_858470                      ; $858316 |
  ASL A                                     ; $858319 |
  ASL A                                     ; $85831A |
  ASL A                                     ; $85831B |
  ASL A                                     ; $85831C |
  ASL A                                     ; $85831D |
  ADC.B $16                                 ; $85831E |
  LDY.W $19AA                               ; $858320 |
  STA.W PTR16_008480,Y                      ; $858323 |
  ADC.W #$0008                              ; $858326 |
  STA.W PTR16_008482,Y                      ; $858329 |
  ADC.W #$0008                              ; $85832C |
  STA.W PTR16_008484,Y                      ; $85832F |
  ADC.W #$0008                              ; $858332 |
  STA.W PTR16_008486,Y                      ; $858335 |
  LDA.W #$007F                              ; $858338 |
  STA.W LOOSE_OP_0084C0,Y                   ; $85833B |
  STA.W LOOSE_OP_0084C2,Y                   ; $85833E |
  STA.W LOOSE_OP_0084C4,Y                   ; $858341 |
  STA.W LOOSE_OP_0084C6,Y                   ; $858344 |
  LDA.B $12                                 ; $858347 |
  STA.B $02                                 ; $858349 |
  LDA.B $10                                 ; $85834B |
  STA.B $00                                 ; $85834D |
  SEP #$20                                  ; $85834F |
  XBA                                       ; $858351 |
  LSR A                                     ; $858352 |
  LDA.B $03                                 ; $858353 |
  ROL A                                     ; $858355 |
  AND.B #$03                                ; $858356 |
  ASL.B $02                                 ; $858358 |
  ROL A                                     ; $85835A |
  ASL.B $02                                 ; $85835B |
  ROL A                                     ; $85835D |
  XBA                                       ; $85835E |
  LSR.B $00                                 ; $85835F |
  LSR.B $00                                 ; $858361 |
  LSR.B $00                                 ; $858363 |
  CMP.B #$E1                                ; $858365 |
  BCS CODE_8583AA                           ; $858367 |
  LDA.B $12                                 ; $858369 |
  CMP.B #$E1                                ; $85836B |
  BCS CODE_8583AA                           ; $85836D |
  LDA.B $02                                 ; $85836F |
  AND.B #$E0                                ; $858371 |
  ORA.B $00                                 ; $858373 |
  REP #$20                                  ; $858375 |
  CLC                                       ; $858377 |
  ADC.B $14                                 ; $858378 |
  STA.W CODE_008440,Y                       ; $85837A |
  ADC.W #$0020                              ; $85837D |
  STA.W LOOSE_OP_008442,Y                   ; $858380 |
  ADC.W #$0020                              ; $858383 |
  STA.W LOOSE_OP_008444,Y                   ; $858386 |
  ADC.W #$0020                              ; $858389 |
  STA.W LOOSE_OP_008446,Y                   ; $85838C |
  LDA.W #$0008                              ; $85838F |
  STA.W LOOSE_OP_008400,Y                   ; $858392 |
  STA.W LOOSE_OP_008402,Y                   ; $858395 |
  STA.W CODE_008404,Y                       ; $858398 |
  STA.W CODE_008406,Y                       ; $85839B |
  TDC                                       ; $85839E |
  STA.W LOOSE_OP_008408,Y                   ; $85839F |
  TYA                                       ; $8583A2 |
  ADC.W #$0008                              ; $8583A3 |
  STA.W $19AA                               ; $8583A6 |
  RTS                                       ; $8583A9 |

CODE_8583AA:
  LDA.B $02                                 ; $8583AA |
  AND.B #$E0                                ; $8583AC |
  ORA.B $00                                 ; $8583AE |
  PHA                                       ; $8583B0 |
  LDA.B $12                                 ; $8583B1 |
  LSR A                                     ; $8583B3 |
  LSR A                                     ; $8583B4 |
  LSR A                                     ; $8583B5 |
  EOR.B #$1F                                ; $8583B6 |
  INC A                                     ; $8583B8 |
  STA.B $02                                 ; $8583B9 |
  STZ.B $03                                 ; $8583BB |
  PLA                                       ; $8583BD |
  REP #$20                                  ; $8583BE |
  CLC                                       ; $8583C0 |
  ADC.B $14                                 ; $8583C1 |
  STA.W CODE_008440,Y                       ; $8583C3 |
  JSR.W CODE_FN_858460                      ; $8583C6 |
  STA.W LOOSE_OP_008442,Y                   ; $8583C9 |
  JSR.W CODE_FN_858460                      ; $8583CC |
  STA.W LOOSE_OP_008444,Y                   ; $8583CF |
  JSR.W CODE_FN_858460                      ; $8583D2 |
  STA.W LOOSE_OP_008446,Y                   ; $8583D5 |
  SEC                                       ; $8583D8 |
  LDA.W #$0020                              ; $8583D9 |
  SBC.B $00                                 ; $8583DC |
  AND.W #$00FF                              ; $8583DE |
  ASL A                                     ; $8583E1 |
  CMP.W #$0008                              ; $8583E2 |
  BCC CODE_8583EA                           ; $8583E5 |
  LDA.W #$0008                              ; $8583E7 |

CODE_8583EA:
  STA.W LOOSE_OP_008400,Y                   ; $8583EA |
  STA.W LOOSE_OP_008402,Y                   ; $8583ED |
  STA.W CODE_008404,Y                       ; $8583F0 |
  STA.W CODE_008406,Y                       ; $8583F3 |
  BCC CODE_858404                           ; $8583F6 |
  TDC                                       ; $8583F8 |
  STA.W LOOSE_OP_008408,Y                   ; $8583F9 |
  TYA                                       ; $8583FC |
  ADC.W #$0007                              ; $8583FD |
  STA.W $19AA                               ; $858400 |
  RTS                                       ; $858403 |

CODE_858404:
  ADC.W PTR16_008480,Y                      ; $858404 |
  STA.W PTR16_008488,Y                      ; $858407 |
  ADC.W #$0008                              ; $85840A |
  STA.W PTR16_00848A,Y                      ; $85840D |
  ADC.W #$0008                              ; $858410 |
  STA.W PTR16_00848C,Y                      ; $858413 |
  ADC.W #$0008                              ; $858416 |
  STA.W PTR16_00848E,Y                      ; $858419 |
  LDA.W #$007F                              ; $85841C |
  STA.W CODE_0084C8,Y                       ; $85841F |
  STA.W LOOSE_OP_0084CA,Y                   ; $858422 |
  STA.W LOOSE_OP_0084CC,Y                   ; $858425 |
  STA.W LOOSE_OP_0084CE,Y                   ; $858428 |
  LDA.B $00                                 ; $85842B |
  AND.W #$0003                              ; $85842D |
  ASL A                                     ; $858430 |
  STA.W LOOSE_OP_008408,Y                   ; $858431 |
  STA.W LOOSE_OP_00840A,Y                   ; $858434 |
  STA.W LOOSE_OP_00840C,Y                   ; $858437 |
  STA.W LOOSE_OP_00840E,Y                   ; $85843A |
  TDC                                       ; $85843D |
  STA.W LOOSE_OP_008410,Y                   ; $85843E |
  TYA                                       ; $858441 |
  ADC.W #$0010                              ; $858442 |
  STA.W $19AA                               ; $858445 |
  JSR.W CODE_FN_858451                      ; $858448 |
  JSR.W CODE_FN_858451                      ; $85844B |
  JSR.W CODE_FN_858451                      ; $85844E |

CODE_FN_858451:
  LDA.W CODE_008440,Y                       ; $858451 |
  AND.W #$FFE0                              ; $858454 |
  EOR.W #$0400                              ; $858457 |
  STA.W LOOSE_OP_008448,Y                   ; $85845A |
  INY                                       ; $85845D |
  INY                                       ; $85845E |
  RTS                                       ; $85845F |

CODE_FN_858460:
  ADC.W #$0020                              ; $858460 |
  DEC.B $02                                 ; $858463 |
  BNE CODE_85846F                           ; $858465 |
  ADC.W #$0400                              ; $858467 |
  AND.W #$0FFF                              ; $85846A |
  ORA.B $14                                 ; $85846D |

CODE_85846F:
  RTS                                       ; $85846F |

CODE_FN_858470:
  BIT.W $1C32                               ; $858470 |
  BPL CODE_8584BF                           ; $858473 |
  PHA                                       ; $858475 |
  PHX                                       ; $858476 |
  ASL A                                     ; $858477 |
  ASL A                                     ; $858478 |
  TAY                                       ; $858479 |
  LDA.B $12                                 ; $85847A |
  STA.B $02                                 ; $85847C |
  LDA.B $10                                 ; $85847E |
  STA.B $00                                 ; $858480 |
  SEP #$20                                  ; $858482 |
  XBA                                       ; $858484 |
  LSR A                                     ; $858485 |
  LDA.B $03                                 ; $858486 |
  ROL A                                     ; $858488 |
  AND.B #$03                                ; $858489 |
  ASL.B $02                                 ; $85848B |
  ROL A                                     ; $85848D |
  XBA                                       ; $85848E |
  LSR.B $00                                 ; $85848F |
  LSR.B $00                                 ; $858491 |
  LSR.B $00                                 ; $858493 |
  LSR.B $00                                 ; $858495 |
  LDA.B $02                                 ; $858497 |
  AND.B #$E0                                ; $858499 |
  ORA.B $00                                 ; $85849B |
  REP #$20                                  ; $85849D |
  ASL A                                     ; $85849F |
  TAX                                       ; $8584A0 |
  LDA.W $8000,Y                             ; $8584A1 |
  STA.L $7F8000,X                           ; $8584A4 |
  LDA.W $8001,Y                             ; $8584A8 |
  STA.L $7F8002,X                           ; $8584AB |
  LDA.W $8002,Y                             ; $8584AF |
  STA.L $7F8040,X                           ; $8584B2 |
  LDA.W $8003,Y                             ; $8584B6 |
  STA.L $7F8042,X                           ; $8584B9 |
  PLX                                       ; $8584BD |
  PLA                                       ; $8584BE |

CODE_8584BF:
  RTS                                       ; $8584BF |

CODE_FN_8584C0:
  PHA                                       ; $8584C0 |
  PHX                                       ; $8584C1 |
  TAY                                       ; $8584C2 |
  LDX.W $8028,Y                             ; $8584C3 |
  LDA.W $0000,X                             ; $8584C6 |
  AND.W #$00FE                              ; $8584C9 |
  TAY                                       ; $8584CC |
  LDX.W $8008,Y                             ; $8584CD |
  SEC                                       ; $8584D0 |
  LDA.B $10                                 ; $8584D1 |
  SBC.B $02,X                               ; $8584D3 |
  STA.B $08                                 ; $8584D5 |
  SEC                                       ; $8584D7 |
  LDA.B $12                                 ; $8584D8 |
  SBC.B $12,X                               ; $8584DA |
  STA.B $0A                                 ; $8584DC |
  PLX                                       ; $8584DE |
  PLA                                       ; $8584DF |
  RTS                                       ; $8584E0 |

CODE_FL_8584E1:
  PHB                                       ; $8584E1 |
  REP #$30                                  ; $8584E2 |
  PHB                                       ; $8584E4 |
  LDA.W #$0000                              ; $8584E5 |
  STA.L $7E8500                             ; $8584E8 |
  LDA.W #$067C                              ; $8584EC |
  LDX.W #$8501                              ; $8584EF |
  TXY                                       ; $8584F2 |
  INY                                       ; $8584F3 |
  MVN $7E,$7E                               ; $8584F4 |
  PLB                                       ; $8584F7 |
  LDA.B $8E                                 ; $8584F8 |
  ASL A                                     ; $8584FA |
  ADC.B $8E                                 ; $8584FB |
  TAX                                       ; $8584FD |
  SEP #$20                                  ; $8584FE |
  LDA.L DATA8_878A12,X                      ; $858500 |
  STA.W $1C08                               ; $858504 |
  PHA                                       ; $858507 |
  PLB                                       ; $858508 |
  REP #$20                                  ; $858509 |
  LDA.L DATA8_878A10,X                      ; $85850B |
  TAX                                       ; $85850F |
  TDC                                       ; $858510 |
  SEP #$20                                  ; $858511 |
  LDA.W $0000,X                             ; $858513 |
  STA.W $1C01                               ; $858516 |
  LDA.W $0001,X                             ; $858519 |
  STA.W $1C03                               ; $85851C |
  REP #$20                                  ; $85851F |
  INX                                       ; $858521 |
  INX                                       ; $858522 |
  STX.W $1C0A                               ; $858523 |
  LDA.W #$0100                              ; $858526 |
  STA.W $1C0E                               ; $858529 |
  LDA.B $90                                 ; $85852C |
  BNE CODE_858533                           ; $85852E |
  STZ.W $1C0E                               ; $858530 |

CODE_858533:
  LDA.W $1662                               ; $858533 |
  SEC                                       ; $858536 |
  SBC.W $1C0E                               ; $858537 |
  STA.B $00                                 ; $85853A |
  STA.W $1C04                               ; $85853C |
  LDA.W $1672                               ; $85853F |
  SEC                                       ; $858542 |
  SBC.W $1C0E                               ; $858543 |
  STA.B $02                                 ; $858546 |
  STA.W $1C06                               ; $858548 |
  LDA.W $1C0A                               ; $85854B |
  STA.B $06                                 ; $85854E |
  LDY.W #$0000                              ; $858550 |
  LDA.B ($06),Y                             ; $858553 |
  STA.W $1C10                               ; $858555 |
  JSR.W CODE_FN_858604                      ; $858558 |
  STZ.W $1C3A                               ; $85855B |
  LDY.W #$0000                              ; $85855E |
  JSR.W CODE_FN_85884E                      ; $858561 |
  SEP #$20                                  ; $858564 |
  BRA CODE_858579                           ; $858566 |

CODE_858568:
  LDA.W $0000,X                             ; $858568 |
  ASL A                                     ; $85856B |
  ASL A                                     ; $85856C |
  BCC CODE_858572                           ; $85856D |
  JSR.W CODE_FN_85885D                      ; $85856F |

CODE_858572:
  INY                                       ; $858572 |
  INX                                       ; $858573 |
  INX                                       ; $858574 |
  INX                                       ; $858575 |
  INX                                       ; $858576 |
  INX                                       ; $858577 |
  INX                                       ; $858578 |

CODE_858579:
  CPX.B $0C                                 ; $858579 |
  BCC CODE_858568                           ; $85857B |
  REP #$20                                  ; $85857D |
  PLB                                       ; $85857F |
  RTL                                       ; $858580 |

CODE_FN_858581:
  TXA                                       ; $858581 |
  SEC                                       ; $858582 |
  SBC.W $1C10                               ; $858583 |
  LDY.W #$0006                              ; $858586 |
  JSL.L CODE_FL_808E65                      ; $858589 |
  TAX                                       ; $85858D |
  RTS                                       ; $85858E |

CODE_FL_85858F:
  LDA.B $8E                                 ; $85858F |
  ASL A                                     ; $858591 |
  TAX                                       ; $858592 |
  LDA.L DATA8_878E9F,X                      ; $858593 |
  TAX                                       ; $858597 |
  JML.L sound_transfer_blocks               ; $858598 |

CODE_FL_85859C:
  PHB                                       ; $85859C |
  SEP #$20                                  ; $85859D |
  LDA.W $1C08                               ; $85859F |
  PHA                                       ; $8585A2 |
  PLB                                       ; $8585A3 |
  REP #$20                                  ; $8585A4 |
  JSR.W CODE_FN_8585D2                      ; $8585A6 |
  LDA.W $1662                               ; $8585A9 |
  SEC                                       ; $8585AC |
  SBC.W $1C0E                               ; $8585AD |
  STA.B $00                                 ; $8585B0 |
  LDA.W $1672                               ; $8585B2 |
  SEC                                       ; $8585B5 |
  SBC.W $1C0E                               ; $8585B6 |
  STA.B $02                                 ; $8585B9 |
  LDA.W $1C01                               ; $8585BB |
  AND.W #$00FF                              ; $8585BE |
  ASL A                                     ; $8585C1 |
  DEC A                                     ; $8585C2 |
  STA.B $04                                 ; $8585C3 |
  LDA.W $1C0A                               ; $8585C5 |
  STA.B $06                                 ; $8585C8 |
  JSR.W CODE_FN_8585EF                      ; $8585CA |
  JSR.W CODE_FN_858733                      ; $8585CD |
  PLB                                       ; $8585D0 |
  RTL                                       ; $8585D1 |

CODE_FN_8585D2:
  LDA.W $1C38                               ; $8585D2 |
  AND.W #$003F                              ; $8585D5 |
  BNE CODE_8585E4                           ; $8585D8 |
  LDA.W $1C3A                               ; $8585DA |
  DEC A                                     ; $8585DD |
  AND.W #$007F                              ; $8585DE |
  STA.W $1C3A                               ; $8585E1 |

CODE_8585E4:
  RTS                                       ; $8585E4 |

  db $00,$0A,$14,$1E,$28,$32,$3C,$46        ; $8585E5 |
  db $50,$5A                                ; $8585ED |

CODE_FN_8585EF:
  LDA.B $00                                 ; $8585EF |
  AND.W #$FFF0                              ; $8585F1 |
  CMP.W $1C04                               ; $8585F4 |
  BEQ CODE_85863C                           ; $8585F7 |
  JSR.W CODE_FN_85863D                      ; $8585F9 |
  LDA.B $00                                 ; $8585FC |
  AND.W #$FFF0                              ; $8585FE |
  STA.W $1C04                               ; $858601 |

CODE_FN_858604:
  LDA.B $02                                 ; $858604 |
  PHA                                       ; $858606 |
  LDA.B $00                                 ; $858607 |
  PHA                                       ; $858609 |
  TDC                                       ; $85860A |
  SEP #$30                                  ; $85860B |
  LDA.W $1C07                               ; $85860D |
  INC A                                     ; $858610 |
  LDY.W $1C01                               ; $858611 |
  REP #$30                                  ; $858614 |
  JSL.L CODE_FL_808E18                      ; $858616 |
  SEC                                       ; $85861A |
  SBC.W $1C01                               ; $85861B |
  STA.B $0E                                 ; $85861E |
  PLA                                       ; $858620 |
  STA.B $00                                 ; $858621 |
  PLA                                       ; $858623 |
  STA.B $02                                 ; $858624 |
  LDA.W $1C05                               ; $858626 |
  AND.W #$00FF                              ; $858629 |
  CMP.W #$00FF                              ; $85862C |
  BCC CODE_858634                           ; $85862F |
  LDA.W #$FFFE                              ; $858631 |

CODE_858634:
  ADC.B $0E                                 ; $858634 |
  ASL A                                     ; $858636 |
  INC A                                     ; $858637 |
  INC A                                     ; $858638 |
  STA.W $1C0C                               ; $858639 |

CODE_85863C:
  RTS                                       ; $85863C |

CODE_FN_85863D:
  LDY.W $1C0C                               ; $85863D |
  BCS CODE_858649                           ; $858640 |
  LDA.W #$FFD0                              ; $858642 |
  DEY                                       ; $858645 |
  DEY                                       ; $858646 |
  BRA CODE_85864E                           ; $858647 |

CODE_858649:
  LDA.W #$011F                              ; $858649 |
  INY                                       ; $85864C |
  INY                                       ; $85864D |

CODE_85864E:
  SEP #$20                                  ; $85864E |
  ADC.W $1C04                               ; $858650 |
  BCC CODE_858657                           ; $858653 |
  INY                                       ; $858655 |
  INY                                       ; $858656 |

CODE_858657:
  AND.B #$F0                                ; $858657 |
  XBA                                       ; $858659 |
  ADC.W $1C05                               ; $85865A |
  XBA                                       ; $85865D |
  REP #$20                                  ; $85865E |
  STA.B $08                                 ; $858660 |
  TAX                                       ; $858662 |
  BMI CODE_85863C                           ; $858663 |
  CMP.W $1C00                               ; $858665 |
  BCS CODE_85863C                           ; $858668 |
  LDA.W #$FFD0                              ; $85866A |
  ADC.W $1C06                               ; $85866D |
  STA.B $0A                                 ; $858670 |
  EOR.W $1C06                               ; $858672 |
  AND.W #$FF00                              ; $858675 |
  BEQ CODE_85867F                           ; $858678 |
  CLC                                       ; $85867A |
  TYA                                       ; $85867B |
  SBC.B $04                                 ; $85867C |
  TAY                                       ; $85867E |

CODE_85867F:
  JSR.W CODE_FN_85884E                      ; $85867F |
  LDA.B $0B                                 ; $858682 |
  BMI CODE_8586B3                           ; $858684 |
  CMP.W $1C03                               ; $858686 |
  BCC CODE_8586AF                           ; $858689 |
  JML.L CODE_JL_858730                      ; $85868B |

CODE_85868F:
  LDA.W $0000,X                             ; $85868F |
  ASL A                                     ; $858692 |
  ASL A                                     ; $858693 |
  BCC CODE_8586A8                           ; $858694 |
  SBC.B $08                                 ; $858696 |
  BCC CODE_8586A8                           ; $858698 |
  CMP.B #$10                                ; $85869A |
  BCS CODE_8586B3                           ; $85869C |
  LDA.W $0001,X                             ; $85869E |
  CMP.B $0A                                 ; $8586A1 |
  BCC CODE_8586A8                           ; $8586A3 |
  JSR.W CODE_FN_85885D                      ; $8586A5 |

CODE_8586A8:
  INY                                       ; $8586A8 |
  INX                                       ; $8586A9 |
  INX                                       ; $8586AA |
  INX                                       ; $8586AB |
  INX                                       ; $8586AC |
  INX                                       ; $8586AD |
  INX                                       ; $8586AE |

CODE_8586AF:
  CPX.B $0C                                 ; $8586AF |
  BCC CODE_85868F                           ; $8586B1 |

CODE_8586B3:
  REP #$20                                  ; $8586B3 |
  SEC                                       ; $8586B5 |
  LDA.B $FE                                 ; $8586B6 |
  ADC.B $04                                 ; $8586B8 |
  TAY                                       ; $8586BA |
  JSR.W CODE_FN_85884E                      ; $8586BB |
  INC.B $0B                                 ; $8586BE |
  LDA.B $0A                                 ; $8586C0 |
  CMP.B #$C0                                ; $8586C2 |
  BCC CODE_8586F9                           ; $8586C4 |
  LDA.B $0B                                 ; $8586C6 |
  CMP.W $1C03                               ; $8586C8 |
  BCS CODE_JL_858730                        ; $8586CB |
  BRA CODE_8586E8                           ; $8586CD |

CODE_8586CF:
  LDA.W $0000,X                             ; $8586CF |
  ASL A                                     ; $8586D2 |
  ASL A                                     ; $8586D3 |
  BCC CODE_8586E1                           ; $8586D4 |
  SBC.B $08                                 ; $8586D6 |
  BCC CODE_8586E1                           ; $8586D8 |
  CMP.B #$10                                ; $8586DA |
  BCS CODE_8586EC                           ; $8586DC |
  JSR.W CODE_FN_85885D                      ; $8586DE |

CODE_8586E1:
  INY                                       ; $8586E1 |
  INX                                       ; $8586E2 |
  INX                                       ; $8586E3 |
  INX                                       ; $8586E4 |
  INX                                       ; $8586E5 |
  INX                                       ; $8586E6 |
  INX                                       ; $8586E7 |

CODE_8586E8:
  CPX.B $0C                                 ; $8586E8 |
  BCC CODE_8586CF                           ; $8586EA |

CODE_8586EC:
  REP #$20                                  ; $8586EC |
  SEC                                       ; $8586EE |
  LDA.B $FE                                 ; $8586EF |
  ADC.B $04                                 ; $8586F1 |
  TAY                                       ; $8586F3 |
  JSR.W CODE_FN_85884E                      ; $8586F4 |
  INC.B $0B                                 ; $8586F7 |

CODE_8586F9:
  LDA.B $0A                                 ; $8586F9 |
  ADC.B #$40                                ; $8586FB |
  STA.B $0A                                 ; $8586FD |
  BEQ CODE_JL_858730                        ; $8586FF |
  LDA.B $0B                                 ; $858701 |
  BMI CODE_JL_858730                        ; $858703 |
  CMP.W $1C03                               ; $858705 |
  BCS CODE_JL_858730                        ; $858708 |
  BRA CODE_85872C                           ; $85870A |

CODE_85870C:
  LDA.W $0000,X                             ; $85870C |
  ASL A                                     ; $85870F |
  ASL A                                     ; $858710 |
  BCC CODE_858725                           ; $858711 |
  SBC.B $08                                 ; $858713 |
  BCC CODE_858725                           ; $858715 |
  CMP.B #$10                                ; $858717 |
  BCS CODE_JL_858730                        ; $858719 |
  LDA.W $0001,X                             ; $85871B |
  CMP.B $0A                                 ; $85871E |
  BCS CODE_858725                           ; $858720 |
  JSR.W CODE_FN_85885D                      ; $858722 |

CODE_858725:
  INY                                       ; $858725 |
  INX                                       ; $858726 |
  INX                                       ; $858727 |
  INX                                       ; $858728 |
  INX                                       ; $858729 |
  INX                                       ; $85872A |
  INX                                       ; $85872B |

CODE_85872C:
  CPX.B $0C                                 ; $85872C |
  BCC CODE_85870C                           ; $85872E |

CODE_JL_858730:
  REP #$20                                  ; $858730 |

CODE_858732:
  RTS                                       ; $858732 |

CODE_FN_858733:
  LDA.B $02                                 ; $858733 |
  AND.W #$FFF0                              ; $858735 |
  CMP.W $1C06                               ; $858738 |
  BEQ CODE_858732                           ; $85873B |
  JSR.W CODE_FN_85874C                      ; $85873D |
  LDA.B $02                                 ; $858740 |
  AND.W #$FFF0                              ; $858742 |
  STA.W $1C06                               ; $858745 |
  JML.L CODE_FN_858604                      ; $858748 |

CODE_FN_85874C:
  LDA.W $1C0C                               ; $85874C |
  BCS CODE_858759                           ; $85874F |
  SBC.B $04                                 ; $858751 |
  TAY                                       ; $858753 |
  LDA.W #$FFD0                              ; $858754 |
  BRA CODE_85875F                           ; $858757 |

CODE_858759:
  ADC.B $04                                 ; $858759 |
  TAY                                       ; $85875B |
  LDA.W #$0100                              ; $85875C |

CODE_85875F:
  CLC                                       ; $85875F |
  SEP #$20                                  ; $858760 |
  ADC.W $1C06                               ; $858762 |
  PHP                                       ; $858765 |
  AND.B #$F0                                ; $858766 |
  XBA                                       ; $858768 |
  ADC.W $1C07                               ; $858769 |
  XBA                                       ; $85876C |
  PLP                                       ; $85876D |
  REP #$20                                  ; $85876E |
  STA.B $0A                                 ; $858770 |
  BCC CODE_858778                           ; $858772 |
  TYA                                       ; $858774 |
  ADC.B $04                                 ; $858775 |
  TAY                                       ; $858777 |

CODE_858778:
  LDA.B $0A                                 ; $858778 |
  BMI CODE_858732                           ; $85877A |
  CMP.W $1C02                               ; $85877C |
  BCS CODE_858732                           ; $85877F |
  DEY                                       ; $858781 |
  DEY                                       ; $858782 |
  CLC                                       ; $858783 |
  LDA.W #$FFD0                              ; $858784 |
  SEP #$20                                  ; $858787 |
  ADC.W $1C04                               ; $858789 |
  BCC CODE_858790                           ; $85878C |
  INY                                       ; $85878E |
  INY                                       ; $85878F |

CODE_858790:
  XBA                                       ; $858790 |
  ADC.W $1C05                               ; $858791 |
  XBA                                       ; $858794 |
  REP #$20                                  ; $858795 |
  STA.B $08                                 ; $858797 |
  JSR.W CODE_FN_85884E                      ; $858799 |
  LDA.B $09                                 ; $85879C |
  BMI CODE_8587CD                           ; $85879E |
  CMP.W $1C01                               ; $8587A0 |
  BCC CODE_8587C9                           ; $8587A3 |
  JML.L CODE_JL_858849                      ; $8587A5 |

CODE_8587A9:
  LDA.W $0000,X                             ; $8587A9 |
  ASL A                                     ; $8587AC |
  ASL A                                     ; $8587AD |
  BCC CODE_8587C2                           ; $8587AE |
  CMP.B $08                                 ; $8587B0 |
  BCC CODE_8587C2                           ; $8587B2 |
  LDA.W $0001,X                             ; $8587B4 |
  SBC.B $0A                                 ; $8587B7 |
  BCC CODE_8587C2                           ; $8587B9 |
  CMP.B #$10                                ; $8587BB |
  BCS CODE_8587C2                           ; $8587BD |
  JSR.W CODE_FN_85885D                      ; $8587BF |

CODE_8587C2:
  INY                                       ; $8587C2 |
  INX                                       ; $8587C3 |
  INX                                       ; $8587C4 |
  INX                                       ; $8587C5 |
  INX                                       ; $8587C6 |
  INX                                       ; $8587C7 |
  INX                                       ; $8587C8 |

CODE_8587C9:
  CPX.B $0C                                 ; $8587C9 |
  BNE CODE_8587A9                           ; $8587CB |

CODE_8587CD:
  LDY.B $FE                                 ; $8587CD |
  INY                                       ; $8587CF |
  INY                                       ; $8587D0 |
  JSR.W CODE_FN_85884C                      ; $8587D1 |
  INC.B $09                                 ; $8587D4 |
  LDA.B $08                                 ; $8587D6 |
  CMP.B #$A0                                ; $8587D8 |
  BCC CODE_858810                           ; $8587DA |
  LDA.B $09                                 ; $8587DC |
  BMI CODE_858807                           ; $8587DE |
  CMP.W $1C01                               ; $8587E0 |
  BCC CODE_858803                           ; $8587E3 |
  BRA CODE_JL_858849                        ; $8587E5 |

CODE_8587E7:
  LDA.W $0000,X                             ; $8587E7 |
  ASL A                                     ; $8587EA |
  ASL A                                     ; $8587EB |
  BCC CODE_8587FC                           ; $8587EC |
  LDA.W $0001,X                             ; $8587EE |
  SBC.B $0A                                 ; $8587F1 |
  BCC CODE_8587FC                           ; $8587F3 |
  CMP.B #$10                                ; $8587F5 |
  BCS CODE_8587FC                           ; $8587F7 |
  JSR.W CODE_FN_85885D                      ; $8587F9 |

CODE_8587FC:
  INY                                       ; $8587FC |
  INX                                       ; $8587FD |
  INX                                       ; $8587FE |
  INX                                       ; $8587FF |
  INX                                       ; $858800 |
  INX                                       ; $858801 |
  INX                                       ; $858802 |

CODE_858803:
  CPX.B $0C                                 ; $858803 |
  BCC CODE_8587E7                           ; $858805 |

CODE_858807:
  LDY.B $FE                                 ; $858807 |
  INY                                       ; $858809 |
  INY                                       ; $85880A |
  JSR.W CODE_FN_85884C                      ; $85880B |
  INC.B $09                                 ; $85880E |

CODE_858810:
  CLC                                       ; $858810 |
  LDA.B $08                                 ; $858811 |
  ADC.B #$60                                ; $858813 |
  STA.B $08                                 ; $858815 |
  BEQ CODE_JL_858849                        ; $858817 |
  LDA.B $09                                 ; $858819 |
  BMI CODE_JL_858849                        ; $85881B |
  CMP.W $1C01                               ; $85881D |
  BCC CODE_858845                           ; $858820 |
  BRA CODE_JL_858849                        ; $858822 |

CODE_858824:
  LDA.W $0000,X                             ; $858824 |
  ASL A                                     ; $858827 |
  ASL A                                     ; $858828 |
  BCC CODE_85883E                           ; $858829 |
  CMP.B $08                                 ; $85882B |
  BCS CODE_JL_858849                        ; $85882D |
  SEC                                       ; $85882F |
  LDA.W $0001,X                             ; $858830 |
  SBC.B $0A                                 ; $858833 |
  BCC CODE_85883E                           ; $858835 |
  CMP.B #$10                                ; $858837 |
  BCS CODE_85883E                           ; $858839 |
  JSR.W CODE_FN_85885D                      ; $85883B |

CODE_85883E:
  INY                                       ; $85883E |
  INX                                       ; $85883F |
  INX                                       ; $858840 |
  INX                                       ; $858841 |
  INX                                       ; $858842 |
  INX                                       ; $858843 |
  INX                                       ; $858844 |

CODE_858845:
  CPX.B $0C                                 ; $858845 |
  BCC CODE_858824                           ; $858847 |

CODE_JL_858849:
  REP #$20                                  ; $858849 |
  RTS                                       ; $85884B |

CODE_FN_85884C:
  REP #$20                                  ; $85884C |

CODE_FN_85884E:
  STY.B $FE                                 ; $85884E |
  TYX                                       ; $858850 |
  LDA.B ($06),Y                             ; $858851 |
  TAX                                       ; $858853 |
  INY                                       ; $858854 |
  INY                                       ; $858855 |
  LDA.B ($06),Y                             ; $858856 |
  STA.B $0C                                 ; $858858 |
  SEP #$20                                  ; $85885A |
  RTS                                       ; $85885C |

CODE_FN_85885D:
  STX.B $20                                 ; $85885D |
  LDA.W $0000,X                             ; $85885F |
  ASL A                                     ; $858862 |
  BCC CODE_85886D                           ; $858863 |
  JML.L CODE_JL_8589CD                      ; $858865 |

CODE_858869:
  JML.L CODE_JL_8588BC                      ; $858869 |

CODE_85886D:
  LDA.W $0001,X                             ; $85886D |
  AND.B #$03                                ; $858870 |
  ORA.W $0002,X                             ; $858872 |
  BNE CODE_85887B                           ; $858875 |
  LDY.W $0004,X                             ; $858877 |
  TYX                                       ; $85887A |

CODE_85887B:
  STX.B $22                                 ; $85887B |
  REP #$20                                  ; $85887D |
  JSR.W CODE_FN_858581                      ; $85887F |
  SEP #$20                                  ; $858882 |
  LDA.L $7E8500,X                           ; $858884 |
  BMI CODE_858869                           ; $858888 |
  BEQ CODE_858894                           ; $85888A |
  SEC                                       ; $85888C |
  SBC.W $1C3A                               ; $85888D |
  CMP.B #$10                                ; $858890 |
  BCC CODE_858869                           ; $858892 |

CODE_858894:
  STX.B $24                                 ; $858894 |
  LDX.B $22                                 ; $858896 |
  TDC                                       ; $858898 |
  LDA.W $0003,X                             ; $858899 |
  AND.B #$1F                                ; $85889C |
  REP #$20                                  ; $85889E |
  JSL.L CODE_FL_86C908                      ; $8588A0 |
  LDA.W $0018,Y                             ; $8588A4 |
  SEP #$20                                  ; $8588A7 |
  BCS CODE_JL_8588BC                        ; $8588A9 |
  BNE CODE_JL_8588BC                        ; $8588AB |
  JSR.W CODE_FN_858904                      ; $8588AD |
  LDA.B $22                                 ; $8588B0 |
  CMP.B $20                                 ; $8588B2 |
  BNE CODE_8588BF                           ; $8588B4 |
  JSR.W CODE_FN_858985                      ; $8588B6 |
  JSR.W CODE_FN_858923                      ; $8588B9 |

CODE_JL_8588BC:
  LDX.B $20                                 ; $8588BC |
  RTS                                       ; $8588BE |

CODE_8588BF:
  REP #$20                                  ; $8588BF |
  LDA.B $0C                                 ; $8588C1 |
  PHA                                       ; $8588C3 |
  LDA.B $22                                 ; $8588C4 |
  PHX                                       ; $8588C6 |
  PHY                                       ; $8588C7 |
  LDX.W $1C0A                               ; $8588C8 |

CODE_8588CB:
  INX                                       ; $8588CB |
  INX                                       ; $8588CC |
  CMP.W $0000,X                             ; $8588CD |
  BCS CODE_8588CB                           ; $8588D0 |
  LDA.W $0000,X                             ; $8588D2 |
  STA.B $0C                                 ; $8588D5 |
  TXA                                       ; $8588D7 |
  SEC                                       ; $8588D8 |
  SBC.W $1C0A                               ; $8588D9 |
  LSR A                                     ; $8588DC |
  DEC A                                     ; $8588DD |
  DEC A                                     ; $8588DE |
  LDY.W $1C01                               ; $8588DF |
  JSL.L CODE_FL_808E65                      ; $8588E2 |
  STA.B $12                                 ; $8588E6 |
  STY.B $10                                 ; $8588E8 |
  SEP #$20                                  ; $8588EA |
  PLY                                       ; $8588EC |
  PLX                                       ; $8588ED |
  JSR.W CODE_FN_8589A9                      ; $8588EE |
  JSR.W CODE_FN_858923                      ; $8588F1 |
  REP #$20                                  ; $8588F4 |
  PLA                                       ; $8588F6 |
  STA.B $0C                                 ; $8588F7 |
  SEP #$20                                  ; $8588F9 |
  LDA.B #$80                                ; $8588FB |
  STA.W $0023,Y                             ; $8588FD |
  JML.L CODE_JL_8588BC                      ; $858900 |

CODE_FN_858904:
  REP #$20                                  ; $858904 |
  PHX                                       ; $858906 |
  TYX                                       ; $858907 |
  JSL.L CODE_FL_86CA57                      ; $858908 |
  LDY.W #$0002                              ; $85890C |
  LDA.B ($06),Y                             ; $85890F |
  TAY                                       ; $858911 |
  LDA.W #$C000                              ; $858912 |
  CPY.B $20                                 ; $858915 |
  BEQ CODE_85891C                           ; $858917 |
  BCC CODE_85891C                           ; $858919 |
  TDC                                       ; $85891B |

CODE_85891C:
  STA.B $22,X                               ; $85891C |
  TXY                                       ; $85891E |
  PLX                                       ; $85891F |
  SEP #$20                                  ; $858920 |
  RTS                                       ; $858922 |

CODE_FN_858923:
  LDA.W $0001,X                             ; $858923 |
  AND.B #$03                                ; $858926 |
  STA.W $0019,Y                             ; $858928 |
  LDA.W $0002,X                             ; $85892B |
  STA.W $0018,Y                             ; $85892E |
  LDA.W $0006,X                             ; $858931 |
  ASL A                                     ; $858934 |
  ASL A                                     ; $858935 |
  REP #$20                                  ; $858936 |
  LDA.W $0004,X                             ; $858938 |
  STA.W $004E,Y                             ; $85893B |
  BCS CODE_85895D                           ; $85893E |
  TXA                                       ; $858940 |
  ADC.W #$0006                              ; $858941 |
  CMP.B $0C                                 ; $858944 |
  BCS CODE_85895D                           ; $858946 |
  LDA.W $0008,X                             ; $858948 |
  STA.W $003A,Y                             ; $85894B |
  LDA.W $0007,X                             ; $85894E |
  AND.W #$00FF                              ; $858951 |
  STA.W $003C,Y                             ; $858954 |
  LDA.W $000A,X                             ; $858957 |
  STA.W $0040,Y                             ; $85895A |

CODE_85895D:
  LDA.L $000002,X                           ; $85895D |
  ASL A                                     ; $858961 |
  ASL A                                     ; $858962 |
  ASL A                                     ; $858963 |
  LDA.B $24                                 ; $858964 |
  BCC CODE_85896B                           ; $858966 |
  ORA.W #$4000                              ; $858968 |

CODE_85896B:
  BIT.W $0002,X                             ; $85896B |
  BPL CODE_858973                           ; $85896E |
  ORA.W #$8000                              ; $858970 |

CODE_858973:
  STA.W $0024,Y                             ; $858973 |
  AND.W #$3FFF                              ; $858976 |
  PHX                                       ; $858979 |
  TAX                                       ; $85897A |
  SEP #$20                                  ; $85897B |
  LDA.B #$FF                                ; $85897D |
  STA.L $7E8500,X                           ; $85897F |
  PLX                                       ; $858983 |
  RTS                                       ; $858984 |

CODE_FN_858985:
  LDA.W $0000,X                             ; $858985 |
  ASL A                                     ; $858988 |
  ASL A                                     ; $858989 |
  SBC.B $00                                 ; $85898A |
  STA.W $0009,Y                             ; $85898C |
  LDA.B $09                                 ; $85898F |
  SBC.B $01                                 ; $858991 |
  STA.W $000A,Y                             ; $858993 |
  SEC                                       ; $858996 |
  LDA.W $0001,X                             ; $858997 |
  AND.B #$FC                                ; $85899A |
  SBC.B $02                                 ; $85899C |
  STA.W $000D,Y                             ; $85899E |
  LDA.B $0B                                 ; $8589A1 |
  SBC.B $03                                 ; $8589A3 |
  STA.W $000E,Y                             ; $8589A5 |
  RTS                                       ; $8589A8 |

CODE_FN_8589A9:
  LDA.W $0000,X                             ; $8589A9 |
  ASL A                                     ; $8589AC |
  ASL A                                     ; $8589AD |
  SBC.B $00                                 ; $8589AE |
  STA.W $0009,Y                             ; $8589B0 |
  LDA.B $10                                 ; $8589B3 |
  SBC.B $01                                 ; $8589B5 |
  STA.W $000A,Y                             ; $8589B7 |
  SEC                                       ; $8589BA |
  LDA.W $0001,X                             ; $8589BB |
  AND.B #$FC                                ; $8589BE |
  SBC.B $02                                 ; $8589C0 |
  STA.W $000D,Y                             ; $8589C2 |
  LDA.B $12                                 ; $8589C5 |
  SBC.B $03                                 ; $8589C7 |
  STA.W $000E,Y                             ; $8589C9 |
  RTS                                       ; $8589CC |

CODE_JL_8589CD:
  LDA.W $0001,X                             ; $8589CD |
  LSR A                                     ; $8589D0 |
  LDA.W $0003,X                             ; $8589D1 |
  LDY.W $0004,X                             ; $8589D4 |
  TYX                                       ; $8589D7 |
  BCS CODE_8589E0                           ; $8589D8 |
  STA.L $7E0000,X                           ; $8589DA |
  BRA CODE_8589E4                           ; $8589DE |

CODE_8589E0:
  STA.L $7F0000,X                           ; $8589E0 |

CODE_8589E4:
  LDX.B $20                                 ; $8589E4 |
  RTS                                       ; $8589E6 |

CODE_FL_8589E7:
  JSR.W CODE_FN_858C63                      ; $8589E7 |
  JSL.L CODE_FL_858C96                      ; $8589EA |
  JSR.W CODE_FN_858DED                      ; $8589EE |
  REP #$20                                  ; $8589F1 |
  LDA.W $1C16                               ; $8589F3 |
  BNE CODE_858A18                           ; $8589F6 |
  STZ.W $1C12                               ; $8589F8 |
  JSL.L CODE_FL_858A24                      ; $8589FB |
  JSR.W CODE_FN_858C63                      ; $8589FF |
  JSR.W CODE_FN_858D2C                      ; $858A02 |
  REP #$20                                  ; $858A05 |
  LDA.W $1C12                               ; $858A07 |
  BEQ CODE_858A18                           ; $858A0A |
  LDA.W #$0008                              ; $858A0C |
  LDY.B $26,X                               ; $858A0F |
  BPL CODE_858A1B                           ; $858A11 |
  CLC                                       ; $858A13 |
  ADC.B $09,X                               ; $858A14 |
  STA.B $09,X                               ; $858A16 |

CODE_858A18:
  STZ.B $26,X                               ; $858A18 |
  RTL                                       ; $858A1A |

CODE_858A1B:
  SEC                                       ; $858A1B |
  LDA.B $09,X                               ; $858A1C |
  SBC.W #$0001                              ; $858A1E |
  STA.B $09,X                               ; $858A21 |
  RTL                                       ; $858A23 |

CODE_FL_858A24:
  LDA.B $2E,X                               ; $858A24 |
  LDY.B $26,X                               ; $858A26 |
  BPL CODE_858A2E                           ; $858A28 |
  EOR.W #$FFFF                              ; $858A2A |
  INC A                                     ; $858A2D |

CODE_858A2E:
  STA.B $18                                 ; $858A2E |
  CLC                                       ; $858A30 |
  ADC.B $09,X                               ; $858A31 |
  ADC.W $1662                               ; $858A33 |
  AND.W #$FFF8                              ; $858A36 |
  SEC                                       ; $858A39 |
  SBC.W $1662                               ; $858A3A |
  SBC.B $18                                 ; $858A3D |
  STA.B $09,X                               ; $858A3F |
  RTL                                       ; $858A41 |

CODE_FL_858A42:
  LDA.B $28,X                               ; $858A42 |
  BMI CODE_858A63                           ; $858A44 |
  JSR.W CODE_FN_858C78                      ; $858A46 |
  JSL.L CODE_FL_858C96                      ; $858A49 |
  JSR.W CODE_FN_858DED                      ; $858A4D |
  REP #$20                                  ; $858A50 |
  LDA.W $1C14                               ; $858A52 |
  BEQ CODE_858A5F                           ; $858A55 |
  LDA.B $0D,X                               ; $858A57 |
  CLC                                       ; $858A59 |
  ADC.W $1C24                               ; $858A5A |
  STA.B $0D,X                               ; $858A5D |

CODE_858A5F:
  LDA.W $1C16                               ; $858A5F |
  RTL                                       ; $858A62 |

CODE_858A63:
  TDC                                       ; $858A63 |
  RTL                                       ; $858A64 |

CODE_FL_858A65:
  LDA.B $2E,X                               ; $858A65 |
  LDY.B $26,X                               ; $858A67 |
  BEQ CODE_858A97                           ; $858A69 |
  BPL CODE_858A71                           ; $858A6B |
  EOR.W #$FFFF                              ; $858A6D |
  INC A                                     ; $858A70 |

CODE_858A71:
  ADC.B $09,X                               ; $858A71 |
  STA.B $08                                 ; $858A73 |
  LDA.B $30,X                               ; $858A75 |
  LSR A                                     ; $858A77 |
  STA.B $0A                                 ; $858A78 |
  LDA.W $000D,X                             ; $858A7A |
  SEC                                       ; $858A7D |
  SBC.B $0A                                 ; $858A7E |
  STA.B $0A                                 ; $858A80 |
  JSL.L CODE_FL_858C96                      ; $858A82 |
  JSR.W CODE_FN_858DED                      ; $858A86 |
  REP #$20                                  ; $858A89 |
  LDA.W $1C16                               ; $858A8B |
  BEQ CODE_858A97                           ; $858A8E |
  JSL.L CODE_FL_858A24                      ; $858A90 |
  LDA.W $1C16                               ; $858A94 |

CODE_858A97:
  RTL                                       ; $858A97 |

CODE_FL_858A98:
  JSR.W CODE_FN_858C52                      ; $858A98 |
  JSL.L CODE_FL_858C96                      ; $858A9B |
  JSR.W CODE_FN_858DED                      ; $858A9F |
  REP #$20                                  ; $858AA2 |
  LDA.W $1C16                               ; $858AA4 |
  BNE CODE_858AED                           ; $858AA7 |
  LDA.B $28,X                               ; $858AA9 |
  BPL CODE_858ACD                           ; $858AAB |
  SEC                                       ; $858AAD |
  LDA.B $0A                                 ; $858AAE |
  SBC.B $30,X                               ; $858AB0 |
  STA.B $0A                                 ; $858AB2 |
  JSL.L CODE_FL_858C96                      ; $858AB4 |
  JSR.W CODE_FN_858DED                      ; $858AB8 |
  REP #$20                                  ; $858ABB |
  LDA.W $1C16                               ; $858ABD |
  BEQ CODE_858ACD                           ; $858AC0 |
  STZ.W $1C16                               ; $858AC2 |
  LDA.B $28,X                               ; $858AC5 |
  EOR.W #$FFFF                              ; $858AC7 |
  INC A                                     ; $858ACA |
  STA.B $28,X                               ; $858ACB |

CODE_858ACD:
  JSR.W CODE_FN_858D18                      ; $858ACD |
  JSR.W CODE_FN_858DD9                      ; $858AD0 |
  JSL.L CODE_FL_858C96                      ; $858AD3 |
  JSR.W CODE_FN_858DED                      ; $858AD7 |
  REP #$20                                  ; $858ADA |
  LDA.W $1C16                               ; $858ADC |
  BEQ CODE_858AED                           ; $858ADF |
  STZ.W $1C16                               ; $858AE1 |
  INC.W $1C12                               ; $858AE4 |
  JSL.L CODE_FL_858A24                      ; $858AE7 |
  STZ.B $26,X                               ; $858AEB |

CODE_858AED:
  LDA.W $1C16                               ; $858AED |
  RTL                                       ; $858AF0 |

CODE_FL_858AF1:
  JSR.W CODE_FN_858C52                      ; $858AF1 |
  JSL.L CODE_FL_858C96                      ; $858AF4 |
  JSR.W CODE_FN_858DED                      ; $858AF8 |
  REP #$20                                  ; $858AFB |
  LDA.W $1C16                               ; $858AFD |
  RTL                                       ; $858B00 |

CODE_FL_858B01:
  JSR.W CODE_FN_858C52                      ; $858B01 |
  SEC                                       ; $858B04 |
  LDA.B $0A                                 ; $858B05 |
  SBC.B $30,X                               ; $858B07 |
  STA.B $0A                                 ; $858B09 |
  JSL.L CODE_FL_858C96                      ; $858B0B |
  JSR.W CODE_FN_858DED                      ; $858B0F |
  REP #$20                                  ; $858B12 |
  LDA.W $1C16                               ; $858B14 |
  RTL                                       ; $858B17 |

CODE_FL_858B18:
  STZ.W $1C20                               ; $858B18 |
  JSR.W CODE_FN_858C52                      ; $858B1B |
  JSL.L CODE_FL_858C96                      ; $858B1E |
  JSR.W CODE_FN_858DED                      ; $858B22 |
  REP #$20                                  ; $858B25 |
  JSR.W CODE_FN_858D2C                      ; $858B27 |
  REP #$20                                  ; $858B2A |
  LDA.W $1C12                               ; $858B2C |
  BEQ CODE_858B37                           ; $858B2F |
  JSL.L CODE_FL_858A24                      ; $858B31 |
  STZ.B $26,X                               ; $858B35 |

CODE_858B37:
  LDA.W $1C16                               ; $858B37 |
  RTL                                       ; $858B3A |

CODE_FL_858B3B:
  STZ.W $1C20                               ; $858B3B |
  JSR.W CODE_FN_858C52                      ; $858B3E |
  JSL.L CODE_FL_858C96                      ; $858B41 |
  JSR.W CODE_FN_858DED                      ; $858B45 |
  REP #$20                                  ; $858B48 |
  LDA.W $1C16                               ; $858B4A |
  RTL                                       ; $858B4D |

CODE_FL_858B4E:
  JSR.W CODE_FN_858C52                      ; $858B4E |
  JSR.W CODE_FN_858D18                      ; $858B51 |
  JSR.W CODE_FN_858DD9                      ; $858B54 |
  JSL.L CODE_FL_858C96                      ; $858B57 |
  JSR.W CODE_FN_858DED                      ; $858B5B |
  REP #$20                                  ; $858B5E |
  LDA.W $1C16                               ; $858B60 |
  RTL                                       ; $858B63 |

CODE_FL_858B64:
  JSR.W CODE_FN_858C52                      ; $858B64 |
  JSR.W CODE_FN_858D2C                      ; $858B67 |
  REP #$20                                  ; $858B6A |
  LDA.W $1C12                               ; $858B6C |
  RTL                                       ; $858B6F |

CODE_FL_858B70:
  JSR.W CODE_FN_858C52                      ; $858B70 |
  JSR.W CODE_FN_858D2C                      ; $858B73 |
  REP #$20                                  ; $858B76 |
  JSR.W CODE_FN_858D18                      ; $858B78 |
  JSR.W CODE_FN_858DD9                      ; $858B7B |
  JSL.L CODE_FL_858C96                      ; $858B7E |
  JSR.W CODE_FN_858DED                      ; $858B82 |
  REP #$20                                  ; $858B85 |
  LDA.W $1C16                               ; $858B87 |
  RTL                                       ; $858B8A |

  JSR.W CODE_FN_858C52                      ; $858B8B |

CODE_858B8E:
  JSR.W CODE_FN_858D18                      ; $858B8E |
  JSR.W CODE_FN_858DD9                      ; $858B91 |
  JSL.L CODE_FL_858C96                      ; $858B94 |
  JSR.W CODE_FN_858DED                      ; $858B98 |
  REP #$20                                  ; $858B9B |
  LDA.W $1C16                               ; $858B9D |
  BNE CODE_858BB5                           ; $858BA0 |
  JSR.W CODE_FN_858D18                      ; $858BA2 |
  EOR.W #$FFFF                              ; $858BA5 |
  INC A                                     ; $858BA8 |
  JSR.W CODE_FN_858DD9                      ; $858BA9 |
  JSL.L CODE_FL_858C96                      ; $858BAC |
  JSR.W CODE_FN_858DED                      ; $858BB0 |
  REP #$20                                  ; $858BB3 |

CODE_858BB5:
  LDA.W $1C16                               ; $858BB5 |
  RTL                                       ; $858BB8 |

CODE_FL_858BB9:
  STZ.W $1C20                               ; $858BB9 |
  JSR.W CODE_FN_858C52                      ; $858BBC |
  JSR.W CODE_FN_858D2C                      ; $858BBF |
  REP #$20                                  ; $858BC2 |
  LDA.W $1C12                               ; $858BC4 |
  BEQ CODE_858B8E                           ; $858BC7 |
  JSL.L CODE_FL_8589E7                      ; $858BC9 |
  BRA CODE_858B8E                           ; $858BCD |

  LDA.W #$0005                              ; $858BCF |
  STA.W $1C20                               ; $858BD2 |
  JSR.W CODE_FN_858C52                      ; $858BD5 |
  JSL.L CODE_FL_858C96                      ; $858BD8 |
  JSR.W CODE_FN_858DED                      ; $858BDC |
  REP #$20                                  ; $858BDF |
  LDA.W $1C14                               ; $858BE1 |
  BNE CODE_858BFB                           ; $858BE4 |
  STZ.W $1C20                               ; $858BE6 |
  JSR.W CODE_FN_858D18                      ; $858BE9 |
  JSR.W CODE_FN_858DD9                      ; $858BEC |
  JSL.L CODE_FL_858C96                      ; $858BEF |
  JSR.W CODE_FN_858DED                      ; $858BF3 |
  STZ.W $1C14                               ; $858BF6 |
  REP #$20                                  ; $858BF9 |

CODE_858BFB:
  RTS                                       ; $858BFB |

CODE_FL_858BFC:
  JSR.W CODE_FN_858C03                      ; $858BFC |
  LDA.W $1C16                               ; $858BFF |
  RTL                                       ; $858C02 |

CODE_FN_858C03:
  LDA.W #$0005                              ; $858C03 |
  STA.W $1C20                               ; $858C06 |
  JSR.W CODE_FN_858C52                      ; $858C09 |
  JSL.L CODE_FL_858C96                      ; $858C0C |
  JSR.W CODE_FN_858DED                      ; $858C10 |
  REP #$20                                  ; $858C13 |
  LDA.W $1C14                               ; $858C15 |
  BNE CODE_858C47                           ; $858C18 |
  STZ.W $1C20                               ; $858C1A |
  JSR.W CODE_FN_858D18                      ; $858C1D |
  JSR.W CODE_FN_858DD9                      ; $858C20 |
  JSL.L CODE_FL_858C96                      ; $858C23 |
  JSR.W CODE_FN_858DED                      ; $858C27 |
  REP #$20                                  ; $858C2A |
  LDA.W $1C16                               ; $858C2C |
  BNE CODE_858C44                           ; $858C2F |
  JSR.W CODE_FN_858D18                      ; $858C31 |
  EOR.W #$FFFF                              ; $858C34 |
  INC A                                     ; $858C37 |
  JSR.W CODE_FN_858DD9                      ; $858C38 |
  JSL.L CODE_FL_858C96                      ; $858C3B |
  JSR.W CODE_FN_858DED                      ; $858C3F |
  REP #$20                                  ; $858C42 |

CODE_858C44:
  STZ.W $1C14                               ; $858C44 |

CODE_858C47:
  RTS                                       ; $858C47 |

CODE_FL_858C48:
  JSR.W CODE_FN_858C03                      ; $858C48 |
  JSR.W CODE_FN_858D2C                      ; $858C4B |
  LDA.W $1C16                               ; $858C4E |
  RTL                                       ; $858C51 |

CODE_FN_858C52:
  STZ.W $1C12                               ; $858C52 |
  STZ.W $1C24                               ; $858C55 |
  STZ.W $1C1A                               ; $858C58 |
  STZ.W $1C14                               ; $858C5B |
  STZ.B $16                                 ; $858C5E |
  STZ.W $1C16                               ; $858C60 |

CODE_FN_858C63:
  LDA.B $09,X                               ; $858C63 |
  STA.B $08                                 ; $858C65 |
  LDA.B $0D,X                               ; $858C67 |
  STA.B $0A                                 ; $858C69 |
  LDA.B $28,X                               ; $858C6B |
  BMI CODE_858C77                           ; $858C6D |
  CLC                                       ; $858C6F |
  LDA.B $0A                                 ; $858C70 |
  ADC.W $1C20                               ; $858C72 |
  STA.B $0A                                 ; $858C75 |

CODE_858C77:
  RTS                                       ; $858C77 |

CODE_FN_858C78:
  STZ.W $1C12                               ; $858C78 |
  STZ.W $1C24                               ; $858C7B |
  STZ.W $1C1A                               ; $858C7E |
  STZ.W $1C14                               ; $858C81 |
  STZ.B $16                                 ; $858C84 |
  STZ.W $1C16                               ; $858C86 |
  LDA.B $09,X                               ; $858C89 |
  STA.B $08                                 ; $858C8B |
  LDA.B $0D,X                               ; $858C8D |
  STA.B $0A                                 ; $858C8F |
  RTS                                       ; $858C91 |

  LDA.W $1C16                               ; $858C92 |
  RTS                                       ; $858C95 |

CODE_FL_858C96:
  LDA.B $E8                                 ; $858C96 |
  BEQ CODE_858C9E                           ; $858C98 |
  JML.L CODE_JL_858CE8                      ; $858C9A |

CODE_858C9E:
  LDA.W $16E5                               ; $858C9E |
  AND.W #$FF00                              ; $858CA1 |
  STA.B $00                                 ; $858CA4 |
  CLC                                       ; $858CA6 |
  LDA.B $08                                 ; $858CA7 |
  ADC.W $1662                               ; $858CA9 |
  SEC                                       ; $858CAC |
  SBC.B $00                                 ; $858CAD |
  BPL CODE_858CE6                           ; $858CAF |
  LDA.B $08                                 ; $858CB1 |
  CMP.W #$0140                              ; $858CB3 |
  BCC CODE_858CBD                           ; $858CB6 |
  CMP.W #$FFC0                              ; $858CB8 |
  BCC CODE_858CE6                           ; $858CBB |

CODE_858CBD:
  LDA.W $16E7                               ; $858CBD |
  AND.W #$FF00                              ; $858CC0 |
  STA.B $02                                 ; $858CC3 |
  CLC                                       ; $858CC5 |
  LDA.B $0A                                 ; $858CC6 |
  ADC.W $1672                               ; $858CC8 |
  SEC                                       ; $858CCB |
  SBC.B $02                                 ; $858CCC |
  BPL CODE_858CE6                           ; $858CCE |
  LDA.B $0A                                 ; $858CD0 |
  CMP.W #$0130                              ; $858CD2 |
  BCC CODE_858CDC                           ; $858CD5 |
  CMP.W #$FFC0                              ; $858CD7 |
  BCC CODE_858CE6                           ; $858CDA |

CODE_858CDC:
  JSL.L CODE_FL_80CADB                      ; $858CDC |
  CMP.W #$0080                              ; $858CE0 |
  BCS CODE_858CE6                           ; $858CE3 |
  RTL                                       ; $858CE5 |

CODE_858CE6:
  TDC                                       ; $858CE6 |
  RTL                                       ; $858CE7 |

CODE_JL_858CE8:
  LDA.W $16E5                               ; $858CE8 |
  AND.W #$FF00                              ; $858CEB |
  STA.B $00                                 ; $858CEE |
  CLC                                       ; $858CF0 |
  LDA.B $08                                 ; $858CF1 |
  ADC.W $1662                               ; $858CF3 |
  SEC                                       ; $858CF6 |
  SBC.B $00                                 ; $858CF7 |
  BPL CODE_858CE6                           ; $858CF9 |
  LDA.W $16E7                               ; $858CFB |
  AND.W #$FF00                              ; $858CFE |
  STA.B $02                                 ; $858D01 |
  CLC                                       ; $858D03 |
  LDA.B $0A                                 ; $858D04 |
  ADC.W $1672                               ; $858D06 |
  SEC                                       ; $858D09 |
  SBC.B $02                                 ; $858D0A |
  BPL CODE_858CE6                           ; $858D0C |
  JSL.L CODE_FL_80CADB                      ; $858D0E |
  CMP.W #$0080                              ; $858D12 |
  BCS CODE_858CE6                           ; $858D15 |
  RTL                                       ; $858D17 |

CODE_FN_858D18:
  LDA.B $2E,X                               ; $858D18 |
  CMP.W #$0010                              ; $858D1A |
  BCS CODE_858D28                           ; $858D1D |
  CMP.W #$0005                              ; $858D1F |
  BCS CODE_858D27                           ; $858D22 |
  LDA.W #$0005                              ; $858D24 |

CODE_858D27:
  RTS                                       ; $858D27 |

CODE_858D28:
  LDA.W #$0010                              ; $858D28 |

CODE_858D2B:
  RTS                                       ; $858D2B |

CODE_FN_858D2C:
  BIT.W $1C1C                               ; $858D2C |
  BMI CODE_858D2B                           ; $858D2F |
  LDA.W #$0015                              ; $858D31 |
  CMP.B $2E,X                               ; $858D34 |
  BMI CODE_858D3A                           ; $858D36 |
  LDA.B $2E,X                               ; $858D38 |

CODE_858D3A:
  JSR.W CODE_FN_858DD9                      ; $858D3A |
  SEC                                       ; $858D3D |
  LDA.B $30,X                               ; $858D3E |
  SBC.W #$000A                              ; $858D40 |
  BMI CODE_858D4D                           ; $858D43 |
  CMP.W #$000F                              ; $858D45 |
  BPL CODE_858D4D                           ; $858D48 |
  LDA.W #$000F                              ; $858D4A |

CODE_858D4D:
  STA.B $0C                                 ; $858D4D |
  LDA.W $1C16                               ; $858D4F |
  BEQ CODE_858D5C                           ; $858D52 |
  CLC                                       ; $858D54 |
  LDA.B $0D,X                               ; $858D55 |
  ADC.W $1C24                               ; $858D57 |
  STA.B $0A                                 ; $858D5A |

CODE_858D5C:
  SEC                                       ; $858D5C |
  LDA.B $0A                                 ; $858D5D |
  SBC.W #$0004                              ; $858D5F |
  STA.B $0A                                 ; $858D62 |
  PHX                                       ; $858D64 |
  JSL.L CODE_FL_858C96                      ; $858D65 |
  TAX                                       ; $858D69 |
  STZ.B $10                                 ; $858D6A |
  SEP #$20                                  ; $858D6C |
  JSR.W CODE_FN_858FFC                      ; $858D6E |
  LDA.W LOOSE_OP_008662,X                   ; $858D71 |
  AND.B #$1F                                ; $858D74 |
  STA.B $00                                 ; $858D76 |
  SEC                                       ; $858D78 |
  LDA.B $10                                 ; $858D79 |
  SBC.B $00                                 ; $858D7B |
  BIT.W LOOSE_OP_008662,X                   ; $858D7D |
  PLX                                       ; $858D80 |
  BVC CODE_858D8A                           ; $858D81 |
  REP #$20                                  ; $858D83 |
  BIT.B $28,X                               ; $858D85 |
  BPL CODE_858D8A                           ; $858D87 |
  CLC                                       ; $858D89 |

CODE_858D8A:
  REP #$20                                  ; $858D8A |
  BCS CODE_858DC0                           ; $858D8C |
  LDA.W $1C1C                               ; $858D8E |
  BEQ CODE_858DBF                           ; $858D91 |
  CLC                                       ; $858D93 |
  LDA.B $0A                                 ; $858D94 |
  SBC.B $10                                 ; $858D96 |
  STA.B $0A                                 ; $858D98 |
  CLC                                       ; $858D9A |
  LDA.B $0C                                 ; $858D9B |
  SBC.B $10                                 ; $858D9D |
  STA.B $0C                                 ; $858D9F |
  BMI CODE_858DBF                           ; $858DA1 |

CODE_858DA3:
  JSL.L CODE_FL_858C96                      ; $858DA3 |
  TAY                                       ; $858DA7 |
  LDA.W LOOSE_OP_008661,Y                   ; $858DA8 |
  BPL CODE_858DC6                           ; $858DAB |
  SEC                                       ; $858DAD |
  LDA.B $0A                                 ; $858DAE |
  SBC.W #$0010                              ; $858DB0 |
  STA.B $0A                                 ; $858DB3 |
  SEC                                       ; $858DB5 |
  LDA.B $0C                                 ; $858DB6 |
  SBC.W #$0010                              ; $858DB8 |
  STA.B $0C                                 ; $858DBB |
  BPL CODE_858DA3                           ; $858DBD |

CODE_858DBF:
  RTS                                       ; $858DBF |

CODE_858DC0:
  ASL.W $1C16                               ; $858DC0 |
  LSR.W $1C16                               ; $858DC3 |

CODE_858DC6:
  LDA.W $1C16                               ; $858DC6 |
  BEQ CODE_858DD5                           ; $858DC9 |
  LDA.W $1C22                               ; $858DCB |
  BEQ CODE_858DD5                           ; $858DCE |
  CMP.W #$001A                              ; $858DD0 |
  BCC CODE_858DBF                           ; $858DD3 |

CODE_858DD5:
  INC.W $1C12                               ; $858DD5 |
  RTS                                       ; $858DD8 |

CODE_FN_858DD9:
  PHA                                       ; $858DD9 |
  LDA.B $26,X                               ; $858DDA |
  ASL A                                     ; $858DDC |
  PLA                                       ; $858DDD |
  BCC CODE_858DE3                           ; $858DDE |
  EOR.W #$FFFF                              ; $858DE0 |

CODE_858DE3:
  ADC.B $09,X                               ; $858DE3 |
  STA.B $08                                 ; $858DE5 |
  LDY.W $000D,X                             ; $858DE7 |
  STY.B $0A                                 ; $858DEA |
  RTS                                       ; $858DEC |

CODE_FN_858DED:
  PHA                                       ; $858DED |
  STZ.W $1C16                               ; $858DEE |
  STZ.B $10                                 ; $858DF1 |
  LDA.B $0A                                 ; $858DF3 |
  AND.W #$FF00                              ; $858DF5 |
  BNE CODE_858E15                           ; $858DF8 |
  LDA.W $19B4                               ; $858DFA |
  BEQ CODE_858E15                           ; $858DFD |
  LDA.B $0A                                 ; $858DFF |
  SEC                                       ; $858E01 |
  SBC.W $19B4                               ; $858E02 |
  BCC CODE_858E15                           ; $858E05 |
  STA.B $10                                 ; $858E07 |
  LDA.W #$0070                              ; $858E09 |
  STA.W $1C22                               ; $858E0C |
  PLA                                       ; $858E0F |
  SEP #$20                                  ; $858E10 |
  JMP.W CODE_JP_858E74                      ; $858E12 |

CODE_858E15:
  PLA                                       ; $858E15 |

CODE_JL_858E16:
  STA.W $1C22                               ; $858E16 |
  ASL A                                     ; $858E19 |
  TAX                                       ; $858E1A |
  LDA.W LOOSE_OP_0086E2,X                   ; $858E1B |
  PHA                                       ; $858E1E |
  SEP #$20                                  ; $858E1F |
  LDX.B $FC                                 ; $858E21 |
  RTS                                       ; $858E23 |

  SEP #$20                                  ; $858E24 |

CODE_JL_858E26:
  RTS                                       ; $858E26 |

  JSR.W CODE_FN_858FFC                      ; $858E27 |
  LDA.B $16                                 ; $858E2A |
  BEQ CODE_858E3B                           ; $858E2C |
  JSR.W CODE_FN_858FF3                      ; $858E2E |

CODE_858E31:
  EOR.B #$0F                                ; $858E31 |
  BRA CODE_858E60                           ; $858E33 |

CODE_JL_858E35:
  LDY.B $16                                 ; $858E35 |
  BEQ CODE_858E3E                           ; $858E37 |
  BRA CODE_858E31                           ; $858E39 |

CODE_858E3B:
  JSR.W CODE_FN_858FF3                      ; $858E3B |

CODE_858E3E:
  EOR.B #$0F                                ; $858E3E |
  BRA CODE_858E4B                           ; $858E40 |

CODE_JL_858E42:
  LDY.B $16                                 ; $858E42 |
  BEQ CODE_858E4B                           ; $858E44 |
  BRA CODE_858E60                           ; $858E46 |

CODE_858E48:
  JSR.W CODE_FN_858FF3                      ; $858E48 |

CODE_858E4B:
  STA.B $12                                 ; $858E4B |
  SEC                                       ; $858E4D |
  LDA.B $10                                 ; $858E4E |
  SBC.B $12                                 ; $858E50 |
  BMI CODE_JL_858E26                        ; $858E52 |
  BRA CODE_858E6C                           ; $858E54 |

  JSR.W CODE_FN_858FFC                      ; $858E56 |
  LDA.B $16                                 ; $858E59 |
  BEQ CODE_858E48                           ; $858E5B |
  JSR.W CODE_FN_858FF3                      ; $858E5D |

CODE_858E60:
  STA.B $12                                 ; $858E60 |
  SEC                                       ; $858E62 |
  LDA.B $10                                 ; $858E63 |
  SBC.B $12                                 ; $858E65 |
  BMI CODE_JL_858E26                        ; $858E67 |
  CLC                                       ; $858E69 |
  ADC.B $16                                 ; $858E6A |

CODE_858E6C:
  STA.B $10                                 ; $858E6C |
  BIT.B $10                                 ; $858E6E |
  BPL CODE_JP_858E74                        ; $858E70 |
  DEC.B $11                                 ; $858E72 |

CODE_JP_858E74:
  REP #$20                                  ; $858E74 |
  SEC                                       ; $858E76 |
  LDA.W $1C24                               ; $858E77 |
  SBC.B $10                                 ; $858E7A |
  STA.W $1C24                               ; $858E7C |
  INC.W $1C14                               ; $858E7F |
  LDA.W #$7FFF                              ; $858E82 |
  STA.W $1C16                               ; $858E85 |
  SEP #$20                                  ; $858E88 |
  RTS                                       ; $858E8A |

  JSR.W CODE_FN_858FF0                      ; $858E8B |
  LSR A                                     ; $858E8E |
  JML.L CODE_JL_858E42                      ; $858E8F |

  JSR.W CODE_FN_858FF0                      ; $858E93 |
  LSR A                                     ; $858E96 |
  ORA.B #$08                                ; $858E97 |
  JML.L CODE_JL_858E42                      ; $858E99 |

  JSR.W CODE_FN_858FF0                      ; $858E9D |
  LSR A                                     ; $858EA0 |
  ORA.B #$08                                ; $858EA1 |
  JML.L CODE_JL_858E35                      ; $858EA3 |

  JSR.W CODE_FN_858FF0                      ; $858EA7 |
  LSR A                                     ; $858EAA |
  JML.L CODE_JL_858E35                      ; $858EAB |

  JSR.W CODE_FN_858FF0                      ; $858EAF |
  LSR A                                     ; $858EB2 |
  LSR A                                     ; $858EB3 |
  JML.L CODE_JL_858E42                      ; $858EB4 |

  JSR.W CODE_FN_858FF0                      ; $858EB8 |
  LSR A                                     ; $858EBB |
  LSR A                                     ; $858EBC |
  CLC                                       ; $858EBD |
  ADC.B #$04                                ; $858EBE |
  JML.L CODE_JL_858E42                      ; $858EC0 |

  JSR.W CODE_FN_858FF0                      ; $858EC4 |
  LSR A                                     ; $858EC7 |
  LSR A                                     ; $858EC8 |
  CLC                                       ; $858EC9 |
  ADC.B #$08                                ; $858ECA |
  JML.L CODE_JL_858E42                      ; $858ECC |

  JSR.W CODE_FN_858FF0                      ; $858ED0 |
  LSR A                                     ; $858ED3 |
  LSR A                                     ; $858ED4 |
  CLC                                       ; $858ED5 |
  ADC.B #$0C                                ; $858ED6 |
  JML.L CODE_JL_858E42                      ; $858ED8 |

  JSR.W CODE_FN_858FF0                      ; $858EDC |
  LSR A                                     ; $858EDF |
  LSR A                                     ; $858EE0 |
  CLC                                       ; $858EE1 |
  ADC.B #$0C                                ; $858EE2 |
  JML.L CODE_JL_858E35                      ; $858EE4 |

  JSR.W CODE_FN_858FF0                      ; $858EE8 |
  LSR A                                     ; $858EEB |
  LSR A                                     ; $858EEC |
  CLC                                       ; $858EED |
  ADC.B #$08                                ; $858EEE |
  JML.L CODE_JL_858E35                      ; $858EF0 |

  JSR.W CODE_FN_858FF0                      ; $858EF4 |
  LSR A                                     ; $858EF7 |
  LSR A                                     ; $858EF8 |
  CLC                                       ; $858EF9 |
  ADC.B #$04                                ; $858EFA |
  JML.L CODE_JL_858E35                      ; $858EFC |

  JSR.W CODE_FN_858FF0                      ; $858F00 |
  LSR A                                     ; $858F03 |
  LSR A                                     ; $858F04 |
  JML.L CODE_JL_858E35                      ; $858F05 |

  JSR.W CODE_FN_858FF0                      ; $858F09 |
  CMP.B #$08                                ; $858F0C |
  BCS CODE_858F3D                           ; $858F0E |

CODE_858F10:
  ASL A                                     ; $858F10 |
  AND.B #$0F                                ; $858F11 |
  JML.L CODE_JL_858E42                      ; $858F13 |

  JSR.W CODE_FN_858FF0                      ; $858F17 |
  SEC                                       ; $858F1A |
  SBC.B #$08                                ; $858F1B |
  BCS CODE_858F10                           ; $858F1D |
  JML.L CODE_JL_858F50                      ; $858F1F |

  JSR.W CODE_FN_858FF0                      ; $858F23 |
  SEC                                       ; $858F26 |
  SBC.B #$08                                ; $858F27 |
  BCC CODE_858F3D                           ; $858F29 |

CODE_858F2B:
  ASL A                                     ; $858F2B |
  AND.B #$0F                                ; $858F2C |
  JML.L CODE_JL_858E35                      ; $858F2E |

  JSR.W CODE_FN_858FF0                      ; $858F32 |
  CMP.B #$08                                ; $858F35 |
  BCC CODE_858F2B                           ; $858F37 |
  JML.L CODE_JL_858F50                      ; $858F39 |

CODE_858F3D:
  JML.L CODE_JL_858E26                      ; $858F3D |

  LDA.W $1C14                               ; $858F41 |
  PHA                                       ; $858F44 |
  JSR.W CODE_FN_858F4D                      ; $858F45 |
  PLA                                       ; $858F48 |
  STA.W $1C14                               ; $858F49 |
  RTS                                       ; $858F4C |

CODE_FN_858F4D:
  JSR.W CODE_FN_858FFC                      ; $858F4D |

CODE_JL_858F50:
  LDA.B $10                                 ; $858F50 |
  INC A                                     ; $858F52 |
  STA.B $16                                 ; $858F53 |
  STZ.B $12                                 ; $858F55 |
  REP #$20                                  ; $858F57 |
  SEC                                       ; $858F59 |
  LDA.B $0A                                 ; $858F5A |
  SBC.B $16                                 ; $858F5C |
  STA.B $0A                                 ; $858F5E |
  JSL.L CODE_FL_858C96                      ; $858F60 |
  CMP.W #$0008                              ; $858F64 |
  BCS CODE_858F6F                           ; $858F67 |
  SEP #$20                                  ; $858F69 |
  JML.L CODE_JP_858E74                      ; $858F6B |

CODE_858F6F:
  JML.L CODE_JL_858E16                      ; $858F6F |

  LDA.W $1C25                               ; $858F73 |
  BMI CODE_858F84                           ; $858F76 |
  LDA.W $1C1E                               ; $858F78 |
  BNE CODE_858F84                           ; $858F7B |
  JSR.W CODE_FN_858FFC                      ; $858F7D |
  CMP.B #$06                                ; $858F80 |
  BCC CODE_858FD0                           ; $858F82 |

CODE_858F84:
  RTS                                       ; $858F84 |

  LDA.W $1C25                               ; $858F85 |
  BMI CODE_858F84                           ; $858F88 |
  LDA.W $1C1E                               ; $858F8A |
  BNE CODE_858F84                           ; $858F8D |
  JSR.W CODE_FN_858FFC                      ; $858F8F |
  SEC                                       ; $858F92 |
  SBC.B #$08                                ; $858F93 |
  BCC CODE_858F84                           ; $858F95 |
  BEQ CODE_858F84                           ; $858F97 |
  CMP.B #$06                                ; $858F99 |
  BCS CODE_858F84                           ; $858F9B |
  STA.B $10                                 ; $858F9D |
  REP #$20                                  ; $858F9F |
  SEC                                       ; $858FA1 |
  LDA.W $1C24                               ; $858FA2 |
  SBC.B $10                                 ; $858FA5 |
  STA.W $1C24                               ; $858FA7 |
  BRA CODE_858FDE                           ; $858FAA |

  LDA.W $1C76                               ; $858FAC |
  BEQ CODE_858FCD                           ; $858FAF |
  LSR A                                     ; $858FB1 |
  BCC CODE_858FC2                           ; $858FB2 |

CODE_858FB4:
  LDA.B #$01                                ; $858FB4 |
  STA.B $27,X                               ; $858FB6 |
  BRA CODE_858FCD                           ; $858FB8 |

  LDA.W $1C76                               ; $858FBA |
  BEQ CODE_858FCD                           ; $858FBD |
  LSR A                                     ; $858FBF |
  BCC CODE_858FB4                           ; $858FC0 |

CODE_858FC2:
  LDA.B #$FF                                ; $858FC2 |
  STA.B $27,X                               ; $858FC4 |
  BRA CODE_858FCD                           ; $858FC6 |

  LDA.W $1C25                               ; $858FC8 |
  BMI CODE_858F84                           ; $858FCB |

CODE_858FCD:
  JSR.W CODE_FN_858FFC                      ; $858FCD |

CODE_858FD0:
  REP #$20                                  ; $858FD0 |
  SEC                                       ; $858FD2 |
  LDA.W $1C24                               ; $858FD3 |
  SBC.B $10                                 ; $858FD6 |
  STA.W $1C24                               ; $858FD8 |
  INC.W $1C14                               ; $858FDB |

CODE_858FDE:
  LDA.W #$7FFF                              ; $858FDE |
  STA.W $1C16                               ; $858FE1 |
  SEP #$20                                  ; $858FE4 |
  RTS                                       ; $858FE6 |

  BIT.B $34,X                               ; $858FE7 |
  BVC CODE_858FCD                           ; $858FE9 |
  INC.W $1C1A                               ; $858FEB |
  BRA CODE_858FCD                           ; $858FEE |

CODE_FN_858FF0:
  JSR.W CODE_FN_858FFC                      ; $858FF0 |

CODE_FN_858FF3:
  CLC                                       ; $858FF3 |
  LDA.B $08                                 ; $858FF4 |
  ADC.W $1662                               ; $858FF6 |
  AND.B #$0F                                ; $858FF9 |
  RTS                                       ; $858FFB |

CODE_FN_858FFC:
  CLC                                       ; $858FFC |
  LDA.B $0A                                 ; $858FFD |
  ADC.W $1672                               ; $858FFF |
  AND.B #$0F                                ; $859002 |
  STA.B $10                                 ; $859004 |
  RTS                                       ; $859006 |

CODE_FL_859007:
  TDC                                       ; $859007 |
  STA.L $7E7C74                             ; $859008 |
  JSL.L CODE_FL_B3FE44                      ; $85900C |
  LDA.W #$9090                              ; $859010 |
  STA.W $1C58                               ; $859013 |
  LDA.W #$0080                              ; $859016 |
  STA.W $1C5A                               ; $859019 |
  LDA.W #$0001                              ; $85901C |
  STA.W $1C56                               ; $85901F |
  STZ.W $19B8                               ; $859022 |
  LDA.W #$FFFF                              ; $859025 |
  STA.W $1C3E                               ; $859028 |
  LDA.B $90                                 ; $85902B |
  CMP.W #$0000                              ; $85902D |
  BEQ CODE_85903C                           ; $859030 |
  LDA.W #$0001                              ; $859032 |
  STA.B $5C                                 ; $859035 |
  STZ.W $1C3E                               ; $859037 |
  BRA CODE_859041                           ; $85903A |

CODE_85903C:
  LDA.W #$0002                              ; $85903C |
  STA.B $5C                                 ; $85903F |

CODE_859041:
  LDX.W #$0580                              ; $859041 |
  JSL.L CODE_FL_859086                      ; $859044 |
  LDA.W #$0B70                              ; $859048 |
  STA.W $1B70                               ; $85904B |
  LDA.W #$0C10                              ; $85904E |
  STA.W $1B72                               ; $859051 |
  LDA.W #$0C10                              ; $859054 |
  STA.W $1B74                               ; $859057 |
  LDA.W #$1340                              ; $85905A |
  STA.W $1B76                               ; $85905D |
  LDA.W #$1340                              ; $859060 |
  STA.W $1B78                               ; $859063 |
  LDA.W #$16B0                              ; $859066 |
  STA.W $1B7A                               ; $859069 |
  LDA.W #$0050                              ; $85906C |
  STA.W $1C44                               ; $85906F |
  RTL                                       ; $859072 |

CODE_FL_859073:
  LDA.W #$FFFF                              ; $859073 |
  STA.B $18                                 ; $859076 |

CODE_859078:
  JSL.L CODE_FL_86CA57                      ; $859078 |
  LDA.B $16,X                               ; $85907C |
  CMP.B $18                                 ; $85907E |
  BCS CODE_859085                           ; $859080 |
  TAX                                       ; $859082 |
  BNE CODE_859078                           ; $859083 |

CODE_859085:
  RTL                                       ; $859085 |

CODE_FL_859086:
  LDA.W #$FFFF                              ; $859086 |
  STA.B $18                                 ; $859089 |

CODE_85908B:
  JSL.L CODE_FL_86CA57                      ; $85908B |
  LDA.B $16,X                               ; $85908F |
  CMP.B $18                                 ; $859091 |
  BCS CODE_859085                           ; $859093 |
  CMP.W #$0B20                              ; $859095 |
  BEQ CODE_85909E                           ; $859098 |
  TAX                                       ; $85909A |
  BNE CODE_85908B                           ; $85909B |
  RTL                                       ; $85909D |

CODE_85909E:
  TAX                                       ; $85909E |
  LDA.B $16,X                               ; $85909F |
  TAX                                       ; $8590A1 |
  BRA CODE_85908B                           ; $8590A2 |

CODE_FL_8590A4:
  STZ.W $1C78                               ; $8590A4 |
  PHB                                       ; $8590A7 |
  PEA.W LOOSE_OP_008787                     ; $8590A8 |
  PLB                                       ; $8590AB |
  PLB                                       ; $8590AC |
  LDA.L $7E7C74                             ; $8590AD |
  ORA.B $78                                 ; $8590B1 |
  BNE CODE_8590C3                           ; $8590B3 |
  INC.W $1C38                               ; $8590B5 |
  LDA.W $1C44                               ; $8590B8 |
  BEQ CODE_8590C3                           ; $8590BB |
  DEC.W $1C44                               ; $8590BD |
  STZ.W $197E                               ; $8590C0 |

CODE_8590C3:
  LDX.W #$0580                              ; $8590C3 |

CODE_8590C6:
  LDA.B $18,X                               ; $8590C6 |
  BEQ CODE_8590D2                           ; $8590C8 |
  STX.B $FC                                 ; $8590CA |
  JSL.L CODE_FL_8590F7                      ; $8590CC |
  LDX.B $FC                                 ; $8590D0 |

CODE_8590D2:
  LDA.B $16,X                               ; $8590D2 |
  TAX                                       ; $8590D4 |
  CPX.W #$0B20                              ; $8590D5 |
  BNE CODE_8590C6                           ; $8590D8 |
  LDA.W $1B70                               ; $8590DA |

CODE_8590DD:
  TAX                                       ; $8590DD |
  LDA.B $21,X                               ; $8590DE |
  BPL CODE_8590EE                           ; $8590E0 |
  LDA.B $18,X                               ; $8590E2 |
  BEQ CODE_8590EE                           ; $8590E4 |
  STX.B $FC                                 ; $8590E6 |
  JSL.L CODE_FL_8590F7                      ; $8590E8 |
  LDX.B $FC                                 ; $8590EC |

CODE_8590EE:
  LDA.B $16,X                               ; $8590EE |
  CPX.W $1B72                               ; $8590F0 |
  BNE CODE_8590DD                           ; $8590F3 |
  PLB                                       ; $8590F5 |
  RTL                                       ; $8590F6 |

CODE_FL_8590F7:
  STA.B $00                                 ; $8590F7 |
  ASL A                                     ; $8590F9 |
  ADC.B $00                                 ; $8590FA |
  TXY                                       ; $8590FC |
  TAX                                       ; $8590FD |
  LDA.L LOOSE_OP_859187,X                   ; $8590FE |
  STA.B $00                                 ; $859102 |
  LDA.L CODE_859189,X                       ; $859104 |
  STA.B $02                                 ; $859108 |
  TYX                                       ; $85910A |
  BIT.B $22,X                               ; $85910B |
  BVC CODE_859115                           ; $85910D |
  JSL.L CODE_FL_86CB11                      ; $85910F |
  BCC CODE_85912F                           ; $859113 |

CODE_859115:
  LDA.B $23,X                               ; $859115 |
  LSR A                                     ; $859117 |
  BCS CODE_85912B                           ; $859118 |
  LDA.B $78                                 ; $85911A |
  BNE CODE_85912E                           ; $85911C |
  LDA.L $7E7C74                             ; $85911E |
  BEQ CODE_85912B                           ; $859122 |
  TXA                                       ; $859124 |
  CMP.L $7E7C1A                             ; $859125 |
  BNE CODE_85912E                           ; $859129 |

CODE_85912B:
  JML.W [$0000]                             ; $85912B |

CODE_85912E:
  RTL                                       ; $85912E |

CODE_85912F:
  JML.L CODE_FL_86CA36                      ; $85912F |

CODE_FL_859133:
  PHB                                       ; $859133 |
  PEA.W LOOSE_OP_008787                     ; $859134 |
  PLB                                       ; $859137 |
  PLB                                       ; $859138 |
  LDA.W $1C44                               ; $859139 |
  BEQ CODE_859141                           ; $85913C |
  STZ.W $197E                               ; $85913E |

CODE_859141:
  LDX.W $1B70                               ; $859141 |

CODE_859144:
  LDA.B $21,X                               ; $859144 |
  BMI CODE_859154                           ; $859146 |
  LDA.B $18,X                               ; $859148 |
  BEQ CODE_859154                           ; $85914A |
  STX.B $FC                                 ; $85914C |
  JSL.L CODE_FL_8590F7                      ; $85914E |
  LDX.B $FC                                 ; $859152 |

CODE_859154:
  LDA.B $16,X                               ; $859154 |
  TAX                                       ; $859156 |
  BNE CODE_859144                           ; $859157 |
  PLB                                       ; $859159 |
  JSL.L CODE_FL_B3FE71                      ; $85915A |
  RTL                                       ; $85915E |

CODE_FL_85915F:
  PHB                                       ; $85915F |
  PEA.W LOOSE_OP_008787                     ; $859160 |
  PLB                                       ; $859163 |
  PLB                                       ; $859164 |
  LDA.W $1C44                               ; $859165 |
  BEQ CODE_85916D                           ; $859168 |
  STZ.W $197E                               ; $85916A |

CODE_85916D:
  LDX.W $1B70                               ; $85916D |

CODE_859170:
  LDA.B $22,X                               ; $859170 |
  AND.W #$1000                              ; $859172 |
  BEQ CODE_859183                           ; $859175 |
  LDA.B $18,X                               ; $859177 |
  BEQ CODE_859183                           ; $859179 |
  STX.B $FC                                 ; $85917B |
  JSL.L CODE_FL_8590F7                      ; $85917D |
  LDX.B $FC                                 ; $859181 |

CODE_859183:
  LDA.B $16,X                               ; $859183 |
  TAX                                       ; $859185 |
  BNE CODE_859170                           ; $859186 |
  PLB                                       ; $859188 |

CODE_859189:
  RTL                                       ; $859189 |

  dl CODE_85E14A                            ; $85918A |
  dl CODE_98FE80                            ; $85918D |
  dl CODE_85B601                            ; $859190 |
  dl CODE_85B716                            ; $859193 |
  dl CODE_85B79C                            ; $859196 |
  dl CODE_85B897                            ; $859199 |
  dl CODE_85B8EC                            ; $85919C |
  dl CODE_85B938                            ; $85919F |
  dl CODE_85B97D                            ; $8591A2 |
  dl CODE_85B9B3                            ; $8591A5 |
  dl CODE_85B9F1                            ; $8591A8 |
  dl CODE_85BA52                            ; $8591AB |
  dl CODE_85BAF4                            ; $8591AE |
  dl CODE_85BB6E                            ; $8591B1 |
  dl CODE_85BBB2                            ; $8591B4 |
  dl CODE_85BBEF                            ; $8591B7 |
  dl CODE_85BC89                            ; $8591BA |
  dl CODE_85BC84                            ; $8591BD |
  dl CODE_85B556                            ; $8591C0 |
  dl CODE_84CFAA                            ; $8591C3 |
  dl CODE_85B579                            ; $8591C6 |
  dl CODE_85E2E6                            ; $8591C9 |
  dl CODE_85E4AC                            ; $8591CC |
  dl CODE_85B584                            ; $8591CF |
  dl CODE_85E3CE                            ; $8591D2 |
  dl CODE_85E1BE                            ; $8591D5 |
  dl CODE_85E1D9                            ; $8591D8 |
  dl CODE_85E791                            ; $8591DB |
  dl CODE_85B5CC                            ; $8591DE |
  dl CODE_85B598                            ; $8591E1 |
  dl CODE_85B5F4                            ; $8591E4 |
  dl CODE_8DB18C                            ; $8591E7 |
  dl CODE_85BD0F                            ; $8591EA |
  dl CODE_85E266                            ; $8591ED |
  dl CODE_85E128                            ; $8591F0 |
  dl CODE_85EC50                            ; $8591F3 |
  dl CODE_85ECC5                            ; $8591F6 |
  dl CODE_8AAEDF                            ; $8591F9 |
  dl CODE_85ECE0                            ; $8591FC |
  dl CODE_85F066                            ; $8591FF |
  dl CODE_85F1CD                            ; $859202 |
  dl CODE_85F0AC                            ; $859205 |
  dl CODE_85ED35                            ; $859208 |
  dl CODE_85EDF4                            ; $85920B |
  dl CODE_85EA6A                            ; $85920E |
  dl CODE_85EB96                            ; $859211 |
  dl CODE_85EBEC                            ; $859214 |
  dl CODE_85EC23                            ; $859217 |
  dl CODE_8BFFA9                            ; $85921A |
  dl CODE_85CBF1                            ; $85921D |
  dl CODE_83FF27                            ; $859220 |
  dl CODE_83FF7E                            ; $859223 |
  dl EMPTY_83FFB5                           ; $859226 |
  dl CODE_85EB45                            ; $859229 |
  dl CODE_83FED9                            ; $85922C |
  dl CODE_85EA6A                            ; $85922F |
  dl CODE_85F213                            ; $859232 |
  dl CODE_85EAC3                            ; $859235 |
  dl CODE_85F272                            ; $859238 |
  dl CODE_8DB455                            ; $85923B |
  dl CODE_85BEC7                            ; $85923E |
  dl CODE_8DB3EC                            ; $859241 |
  dl CODE_86AA13                            ; $859244 |
  dl CODE_86AB2F                            ; $859247 |
  dl CODE_86ABD5                            ; $85924A |
  dl CODE_8DE77E                            ; $85924D |
  dl CODE_86AC9E                            ; $859250 |
  dl CODE_86AD6A                            ; $859253 |
  dl CODE_86AD99                            ; $859256 |
  dl CODE_86AE49                            ; $859259 |
  dl CODE_86B15C                            ; $85925C |
  dl CODE_86B2DE                            ; $85925F |
  dl CODE_86B4E2                            ; $859262 |
  dl CODE_86B56D                            ; $859265 |
  dl CODE_86B704                            ; $859268 |
  dl CODE_85C28C                            ; $85926B |
  dl CODE_85F44F                            ; $85926E |
  dl CODE_85F401                            ; $859271 |
  dl CODE_8DB546                            ; $859274 |
  dl CODE_85D8CB                            ; $859277 |
  dl CODE_86B7D7                            ; $85927A |
  dl CODE_86B844                            ; $85927D |
  dl CODE_85D968                            ; $859280 |
  dl CODE_8AAF2F                            ; $859283 |
  dl CODE_86B3FF                            ; $859286 |
  dl CODE_8DABDF                            ; $859289 |
  dl CODE_85D301                            ; $85928C |
  dl CODE_85D397                            ; $85928F |
  dl CODE_86AECE                            ; $859292 |
  dl CODE_85D6CC                            ; $859295 |
  dl CODE_86B8B5                            ; $859298 |
  dl CODE_86B8B6                            ; $85929B |
  dl CODE_85C82E                            ; $85929E |
  dl CODE_85F4F4                            ; $8592A1 |
  dl CODE_86B92C                            ; $8592A4 |
  dl CODE_85BEF4                            ; $8592A7 |
  dl CODE_86DBBE                            ; $8592AA |
  dl CODE_86DDB3                            ; $8592AD |
  dl CODE_86DEFE                            ; $8592B0 |
  dl CODE_86E070                            ; $8592B3 |
  dl CODE_86E136                            ; $8592B6 |
  dl CODE_86E271                            ; $8592B9 |
  dl CODE_86E38F                            ; $8592BC |
  dl CODE_86E60B                            ; $8592BF |
  dl CODE_86B487                            ; $8592C2 |
  dl CODE_85E72B                            ; $8592C5 |
  dl CODE_8BBE36                            ; $8592C8 |
  dl CODE_JL_85F5D3                         ; $8592CB |
  dl CODE_86BCF2                            ; $8592CE |
  dl CODE_86DEC6                            ; $8592D1 |
  dl CODE_8BC5A9                            ; $8592D4 |
  dl CODE_8BC7C7                            ; $8592D7 |
  dl CODE_8BC963                            ; $8592DA |
  dl CODE_86DCC5                            ; $8592DD |
  dl CODE_8DA627                            ; $8592E0 |
  dl CODE_86E5E5                            ; $8592E3 |
  dl CODE_8BC9DB                            ; $8592E6 |
  dl CODE_86BE2D                            ; $8592E9 |
  dl CODE_86BE9B                            ; $8592EC |
  dl CODE_86DFCE                            ; $8592EF |
  dl CODE_86BFD2                            ; $8592F2 |
  dl CODE_86C09C                            ; $8592F5 |
  dl CODE_86E1EF                            ; $8592F8 |
  dl CODE_86E6A5                            ; $8592FB |
  dl CODE_86F19B                            ; $8592FE |
  dl CODE_86BDFA                            ; $859301 |
  dl CODE_86E8D3                            ; $859304 |
  dl CODE_85F5C5                            ; $859307 |
  dl CODE_86EA0C                            ; $85930A |
  dl CODE_85E09A                            ; $85930D |
  dl CODE_86B012                            ; $859310 |
  dl CODE_85BD77                            ; $859313 |
  dl CODE_86EBC7                            ; $859316 |
  dl CODE_859C90                            ; $859319 |
  dl CODE_86EF1A                            ; $85931C |
  dl CODE_859CD3                            ; $85931F |
  dl CODE_86B0BF                            ; $859322 |
  dl CODE_859D14                            ; $859325 |
  dl CODE_86B618                            ; $859328 |
  dl CODE_86B61D                            ; $85932B |
  dl CODE_86B622                            ; $85932E |
  dl CODE_86B627                            ; $859331 |
  dl CODE_86B62C                            ; $859334 |
  dl CODE_86B631                            ; $859337 |
  dl CODE_86B636                            ; $85933A |
  dl CODE_86B63B                            ; $85933D |
  dl CODE_8DA651                            ; $859340 |
  dl CODE_86B6B4                            ; $859343 |
  dl CODE_86EF3F                            ; $859346 |
  dl CODE_86F04C                            ; $859349 |
  dl CODE_859F72                            ; $85934C |
  dl CODE_8DE78C                            ; $85934F |
  dl CODE_85BF01                            ; $859352 |
  dl CODE_85BF88                            ; $859355 |
  dl CODE_85A028                            ; $859358 |
  dl CODE_85C0D4                            ; $85935B |
  dl CODE_8CFF30                            ; $85935E |
  dl CODE_8C8000                            ; $859361 |
  dl CODE_8DD7B4                            ; $859364 |
  dl CODE_85A16A                            ; $859367 |
  dl CODE_8DB59A                            ; $85936A |
  dl CODE_85A2D7                            ; $85936D |
  dl CODE_8BCAEA                            ; $859370 |
  dl CODE_85BDD3                            ; $859373 |
  dl CODE_8BCFC7                            ; $859376 |
  dl CODE_85A1EA                            ; $859379 |
  dl CODE_8BD0A7                            ; $85937C |
  dl CODE_8BD1F0                            ; $85937F |
  dl CODE_8C8A95                            ; $859382 |
  dl CODE_85A3A7                            ; $859385 |
  dl CODE_8C8AC6                            ; $859388 |
  dl CODE_8C8C98                            ; $85938B |
  dl CODE_85A3FE                            ; $85938E |
  dl CODE_85F64B                            ; $859391 |
  dl CODE_85F6DA                            ; $859394 |
  dl CODE_8C8C61                            ; $859397 |
  dl CODE_85A532                            ; $85939A |
  dl CODE_85A578                            ; $85939D |
  dl CODE_8DB5D1                            ; $8593A0 |
  dl CODE_8DB663                            ; $8593A3 |
  dl CODE_8DB6A1                            ; $8593A6 |
  dl CODE_8DA66B                            ; $8593A9 |
  dl CODE_8BD309                            ; $8593AC |
  dl CODE_8BD6DB                            ; $8593AF |
  dl CODE_8DB6E5                            ; $8593B2 |
  dl UNREACH_8BD773                         ; $8593B5 |
  dl CODE_8CE5F0                            ; $8593B8 |
  dl CODE_8CE6CF                            ; $8593BB |
  dl CODE_8DE901                            ; $8593BE |
  dl CODE_85C4CE                            ; $8593C1 |
  dl CODE_85C6BB                            ; $8593C4 |
  dl CODE_85D112                            ; $8593C7 |
  dl CODE_8CA4F2                            ; $8593CA |
  dl CODE_8CB75D                            ; $8593CD |
  dl CODE_8B94B5                            ; $8593D0 |
  dl CODE_8B9F4A                            ; $8593D3 |
  dl CODE_8CE952                            ; $8593D6 |
  dl CODE_8CE838                            ; $8593D9 |
  dl CODE_8CE8EC                            ; $8593DC |
  dl CODE_8DD8E2                            ; $8593DF |
  dl CODE_86EE6C                            ; $8593E2 |
  dl CODE_8DE797                            ; $8593E5 |
  dl CODE_85BE1F                            ; $8593E8 |
  dl CODE_8CE9B0                            ; $8593EB |
  dl CODE_8CE9FC                            ; $8593EE |
  dl CODE_8CC169                            ; $8593F1 |
  dl CODE_8BA2F0                            ; $8593F4 |
  dl CODE_8CE8B5                            ; $8593F7 |
  dl CODE_8CE53B                            ; $8593FA |
  dl CODE_86BC1D                            ; $8593FD |
  dl CODE_8CC255                            ; $859400 |
  dl CODE_8CEA43                            ; $859403 |
  dl CODE_85BB35                            ; $859406 |
  dl CODE_8CC568                            ; $859409 |
  dl CODE_8CC345                            ; $85940C |
  dl CODE_8CC5B1                            ; $85940F |
  dl CODE_85A261                            ; $859412 |
  dl CODE_8CEBE6                            ; $859415 |
  dl CODE_8CC42D                            ; $859418 |
  dl CODE_8CEC32                            ; $85941B |
  dl CODE_8CC634                            ; $85941E |
  dl CODE_859D97                            ; $859421 |
  dl CODE_86B105                            ; $859424 |
  dl CODE_8CEECD                            ; $859427 |
  dl CODE_8C9A1C                            ; $85942A |
  dl CODE_8BA373                            ; $85942D |
  dl CODE_8BA3F3                            ; $859430 |
  dl CODE_8CEF56                            ; $859433 |
  dl CODE_8CEFB4                            ; $859436 |
  dl CODE_8CF0A1                            ; $859439 |
  dl CODE_86AF8C                            ; $85943C |
  dl CODE_8CF0F1                            ; $85943F |
  dl CODE_86B117                            ; $859442 |
  dl CODE_8CF204                            ; $859445 |
  dl CODE_8CF268                            ; $859448 |
  dl CODE_8CF332                            ; $85944B |
  dl CODE_8DA90E                            ; $85944E |
  dl CODE_859C3D                            ; $859451 |
  dl CODE_8C9B24                            ; $859454 |
  dl CODE_8C9C2C                            ; $859457 |
  dl CODE_8CEDEF                            ; $85945A |
  dl CODE_8DB618                            ; $85945D |
  dl CODE_8CF572                            ; $859460 |
  dl CODE_8CB8B5                            ; $859463 |
  dl CODE_8C9546                            ; $859466 |
  dl CODE_8CEE41                            ; $859469 |
  dl CODE_859F03                            ; $85946C |
  dl CODE_8CF2E6                            ; $85946F |
  dl CODE_859E8C                            ; $859472 |
  dl CODE_8CF5F1                            ; $859475 |
  dl CODE_8CF802                            ; $859478 |
  dl CODE_8CF8BA                            ; $85947B |
  dl CODE_86BF72                            ; $85947E |
  dl CODE_8CF905                            ; $859481 |
  dl CODE_8CB946                            ; $859484 |
  dl CODE_8C8EA3                            ; $859487 |
  dl CODE_8CF905                            ; $85948A |
  dl CODE_8B9D8D                            ; $85948D |
  dl CODE_85E85C                            ; $859490 |
  dl CODE_8C9968                            ; $859493 |
  dl CODE_8C945E                            ; $859496 |
  dl CODE_8CD656                            ; $859499 |
  dl CODE_8CD6C2                            ; $85949C |
  dl CODE_8B9EEC                            ; $85949F |
  dl CODE_8C9ADE                            ; $8594A2 |
  dl CODE_8CD6FE                            ; $8594A5 |
  dl CODE_8CD605                            ; $8594A8 |
  dl CODE_8CD6FF                            ; $8594AB |
  dl CODE_8CD808                            ; $8594AE |
  dl CODE_8CD8B7                            ; $8594B1 |
  dl CODE_8CD789                            ; $8594B4 |
  dl CODE_8CD905                            ; $8594B7 |
  dl CODE_8CD977                            ; $8594BA |
  dl CODE_86B075                            ; $8594BD |
  dl CODE_8CD9C7                            ; $8594C0 |
  dl CODE_8CDBB3                            ; $8594C3 |
  dl CODE_8CDB6F                            ; $8594C6 |
  dl CODE_8CDCCB                            ; $8594C9 |
  dl CODE_8CE36C                            ; $8594CC |
  dl CODE_8CDA9D                            ; $8594CF |
  dl CODE_85BDFE                            ; $8594D2 |
  dl CODE_86B91F                            ; $8594D5 |
  dl CODE_8DA826                            ; $8594D8 |
  dl CODE_8CE3F0                            ; $8594DB |
  dl CODE_88EFA0                            ; $8594DE |
  dl CODE_8AF900                            ; $8594E1 |
  dl CODE_88F26B                            ; $8594E4 |
  dl CODE_8CE45B                            ; $8594E7 |
  dl CODE_86BBA4                            ; $8594EA |
  dl CODE_8C9D4B                            ; $8594ED |
  dl CODE_8CC9C1                            ; $8594F0 |
  dl CODE_8CBA65                            ; $8594F3 |
  dl CODE_8CCA46                            ; $8594F6 |
  dl CODE_8CCCE0                            ; $8594F9 |
  dl CODE_8CCD4C                            ; $8594FC |
  dl CODE_8CCF75                            ; $8594FF |
  dl CODE_8CD11F                            ; $859502 |
  dl CODE_8CD261                            ; $859505 |
  dl CODE_8CBFAD                            ; $859508 |
  dl CODE_8CD310                            ; $85950B |
  dl CODE_8CDF56                            ; $85950E |
  dl CODE_8CCDCD                            ; $859511 |
  dl CODE_8CE015                            ; $859514 |
  dl CODE_85E90F                            ; $859517 |
  dl CODE_8CE4F8                            ; $85951A |
  dl CODE_85EA13                            ; $85951D |
  dl CODE_8CC760                            ; $859520 |
  dl CODE_8CE220                            ; $859523 |
  dl CODE_8CE2BF                            ; $859526 |
  dl CODE_8CC814                            ; $859529 |
  dl CODE_8CC8D6                            ; $85952C |
  dl CODE_FL_8CF98E                         ; $85952F |
  dl CODE_8CD4C7                            ; $859532 |
  dl CODE_8CD539                            ; $859535 |
  dl CODE_85E032                            ; $859538 |
  dl CODE_85D9E8                            ; $85953B |
  dl CODE_85DA7E                            ; $85953E |
  dl CODE_85DB13                            ; $859541 |
  dl CODE_JL_85DBB0                         ; $859544 |
  dl CODE_85DD04                            ; $859547 |
  dl CODE_85C8BD                            ; $85954A |
  dl CODE_8BADC5                            ; $85954D |
  dl CODE_8BAE7B                            ; $859550 |
  dl CODE_8BB0BD                            ; $859553 |
  dl CODE_8BAE56                            ; $859556 |
  dl CODE_8DE698                            ; $859559 |
  dl CODE_8BB186                            ; $85955C |
  dl CODE_88F854                            ; $85955F |
  dl CODE_88F8C5                            ; $859562 |
  dl CODE_8BB2C6                            ; $859565 |
  dl CODE_8BB32B                            ; $859568 |
  dl CODE_8BB48E                            ; $85956B |
  dl CODE_8BB608                            ; $85956E |
  dl CODE_8BB72B                            ; $859571 |
  dl CODE_8BB8B6                            ; $859574 |
  dl CODE_8BB9AC                            ; $859577 |
  dl CODE_8DA0BD                            ; $85957A |
  dl CODE_8BB9FB                            ; $85957D |
  dl CODE_86B6DE                            ; $859580 |
  dl CODE_85F486                            ; $859583 |
  dl CODE_85F58D                            ; $859586 |
  dl CODE_85CC28                            ; $859589 |
  dl CODE_86AF32                            ; $85958C |
  dl CODE_8B8C75                            ; $85958F |
  dl CODE_85CCA0                            ; $859592 |
  dl CODE_8BADC4                            ; $859595 |
  dl CODE_8B8F60                            ; $859598 |
  dl CODE_8B8F28                            ; $85959B |
  dl CODE_85DCBD                            ; $85959E |
  dl CODE_85CB52                            ; $8595A1 |
  dl CODE_8DA719                            ; $8595A4 |
  dl CODE_8DA69F                            ; $8595A7 |
  dl CODE_85DC60                            ; $8595AA |
  dl CODE_85DC84                            ; $8595AD |
  dl CODE_8DA7E9                            ; $8595B0 |
  dl CODE_8DA93F                            ; $8595B3 |
  dl CODE_8DAA17                            ; $8595B6 |
  dl CODE_8DAA7D                            ; $8595B9 |
  dl CODE_8BE49E                            ; $8595BC |
  dl CODE_8BE63D                            ; $8595BF |
  dl CODE_8BE49E                            ; $8595C2 |
  dl CODE_8BE49E                            ; $8595C5 |
  dl CODE_8BEA4D                            ; $8595C8 |
  dl CODE_8BEDF6                            ; $8595CB |
  dl CODE_8BEE8D                            ; $8595CE |
  dl CODE_8BEF57                            ; $8595D1 |
  dl CODE_8BF0C2                            ; $8595D4 |
  dl CODE_8BF1F1                            ; $8595D7 |
  dl CODE_8DACA5                            ; $8595DA |
  dl CODE_8DADF9                            ; $8595DD |
  dl CODE_85B58C                            ; $8595E0 |
  dl CODE_8BB536                            ; $8595E3 |
  dl CODE_8DAE4A                            ; $8595E6 |
  dl CODE_8B8370                            ; $8595E9 |
  dl CODE_85CD41                            ; $8595EC |
  dl CODE_8DA358                            ; $8595EF |
  dl CODE_85BAB1                            ; $8595F2 |
  dl CODE_85BCCB                            ; $8595F5 |
  dl CODE_86AFBF                            ; $8595F8 |
  dl CODE_86B679                            ; $8595FB |
  dl CODE_85F2F4                            ; $8595FE |
  dl CODE_8CD46C                            ; $859601 |
  dl CODE_8BBA0B                            ; $859604 |
  dl CODE_8BF2B8                            ; $859607 |
  dl CODE_8BF455                            ; $85960A |
  dl CODE_85BA24                            ; $85960D |
  dl CODE_85B92A                            ; $859610 |
  dl CODE_85BC7F                            ; $859613 |
  dl CODE_8CE51E                            ; $859616 |
  dl CODE_8BF48A                            ; $859619 |
  dl CODE_8DAF3A                            ; $85961C |
  dl CODE_8DAFEB                            ; $85961F |
  dl CODE_8AF94F                            ; $859622 |
  dl CODE_8BF5BA                            ; $859625 |
  dl CODE_8AFA37                            ; $859628 |
  dl CODE_8AFA55                            ; $85962B |
  dl CODE_8AFABF                            ; $85962E |
  dl CODE_8AFB39                            ; $859631 |
  dl CODE_859FD8                            ; $859634 |
  dl CODE_8DB0FA                            ; $859637 |
  dl CODE_8AFBF6                            ; $85963A |
  dl CODE_8AFCCF                            ; $85963D |
  dl CODE_8AFD10                            ; $859640 |
  dl CODE_8AFD9D                            ; $859643 |
  dl CODE_8AFDD6                            ; $859646 |
  dl CODE_8AFE81                            ; $859649 |
  dl CODE_85C3F8                            ; $85964C |
  dl CODE_8DD8F4                            ; $85964F |
  dl CODE_8DE0DF                            ; $859652 |
  dl CODE_8DE1B0                            ; $859655 |
  dl CODE_8DE264                            ; $859658 |
  dl CODE_8AFED0                            ; $85965B |
  dl CODE_85D200                            ; $85965E |
  dl CODE_85D4C7                            ; $859661 |
  dl CODE_JL_85D55C                         ; $859664 |
  dl CODE_85B5B2                            ; $859667 |
  dl CODE_8DE2A8                            ; $85966A |
  dl CODE_FL_85D761                         ; $85966D |
  dl CODE_85D5F1                            ; $859670 |
  dl CODE_84DF38                            ; $859673 |
  dl CODE_8BBB1D                            ; $859676 |
  dl CODE_8BBA8D                            ; $859679 |
  dl CODE_8AFF5B                            ; $85967C |
  dl CODE_88F948                            ; $85967F |
  dl CODE_8BB284                            ; $859682 |
  dl CODE_8BB6B1                            ; $859685 |
  dl CODE_86CBEC                            ; $859688 |
  dl CODE_8DD35F                            ; $85968B |
  dl CODE_8DD832                            ; $85968E |
  dl CODE_8DD56D                            ; $859691 |
  dl CODE_8DD674                            ; $859694 |
  dl CODE_85BFFC                            ; $859697 |
  dl CODE_85CF9F                            ; $85969A |
  dl CODE_85D03B                            ; $85969D |
  dl CODE_8DAC74                            ; $8596A0 |
  dl CODE_8DD675                            ; $8596A3 |
  dl CODE_8BBCAE                            ; $8596A6 |
  dl CODE_8BBDDB                            ; $8596A9 |
  dl CODE_88F511                            ; $8596AC |
  dl CODE_85B854                            ; $8596AF |
  dl CODE_85CF23                            ; $8596B2 |
  dl CODE_85B7F6                            ; $8596B5 |
  dl CODE_88F651                            ; $8596B8 |
  dl CODE_88F7A0                            ; $8596BB |
  dl CODE_8C9EC6                            ; $8596BE |
  dl CODE_8BF681                            ; $8596C1 |
  dl CODE_8DD7F3                            ; $8596C4 |
  dl CODE_88F5E7                            ; $8596C7 |
  dl CODE_8DD6E7                            ; $8596CA |
  dl CODE_8BD734                            ; $8596CD |
  dl CODE_8DD756                            ; $8596D0 |
  dl CODE_88F225                            ; $8596D3 |
  dl CODE_8B8798                            ; $8596D6 |
  dl CODE_86CEBF                            ; $8596D9 |
  dl CODE_86D0FF                            ; $8596DC |
  dl CODE_86F635                            ; $8596DF |
  dl CODE_8CFF5E                            ; $8596E2 |
  dl CODE_8D886A                            ; $8596E5 |
  dl CODE_8D8A3A                            ; $8596E8 |
  dl CODE_8DE337                            ; $8596EB |
  dl CODE_8D8A50                            ; $8596EE |
  dl CODE_88F6F7                            ; $8596F1 |
  dl CODE_8D8ECB                            ; $8596F4 |
  dl CODE_85F429                            ; $8596F7 |
  dl CODE_88F752                            ; $8596FA |
  dl CODE_85D1BA                            ; $8596FD |
  dl CODE_8BB5B4                            ; $859700 |
  dl CODE_8D9139                            ; $859703 |
  dl CODE_86D314                            ; $859706 |
  dl CODE_86D49F                            ; $859709 |
  dl CODE_86D56C                            ; $85970C |
  dl CODE_86D624                            ; $85970F |
  dl CODE_86D654                            ; $859712 |
  dl CODE_8DE45F                            ; $859715 |
  dl CODE_8BBB60                            ; $859718 |
  dl CODE_8BBBA0                            ; $85971B |
  dl CODE_85A01E                            ; $85971E |
  dl CODE_8CE575                            ; $859721 |
  dl CODE_8DE4DE                            ; $859724 |
  dl CODE_8D8BE0                            ; $859727 |
  dl CODE_8D8DDB                            ; $85972A |
  dl CODE_8D8E8D                            ; $85972D |
  dl CODE_8DD49E                            ; $859730 |
  dl CODE_87E000                            ; $859733 |
  dl CODE_8D8EA8                            ; $859736 |
  dl CODE_8D9388                            ; $859739 |
  dl CODE_8DE59A                            ; $85973C |
  dl CODE_8D99CE                            ; $85973F |
  dl CODE_8D9BF0                            ; $859742 |
  dl CODE_8D9C18                            ; $859745 |
  dl CODE_B3FFAF                            ; $859748 |
  dl CODE_8D922B                            ; $85974B |
  dl CODE_8D91FB                            ; $85974E |
  dl CODE_8C9F1A                            ; $859751 |
  dl CODE_86F634                            ; $859754 |
  dl CODE_8B9389                            ; $859757 |
  dl CODE_8D97B6                            ; $85975A |
  dl CODE_97FF6F                            ; $85975D |
  dl CODE_8D97D2                            ; $859760 |
  dl CODE_8D97FE                            ; $859763 |
  dl CODE_8D9570                            ; $859766 |
  dl CODE_84EA86                            ; $859769 |
  dl CODE_8B90D0                            ; $85976C |
  dl CODE_8DD8AE                            ; $85976F |
  dl CODE_85DFFF                            ; $859772 |
  dl CODE_8B934B                            ; $859775 |
  dl CODE_88FA07                            ; $859778 |
  dl CODE_86E7FE                            ; $85977B |
  dl CODE_8D9F97                            ; $85977E |
  dl CODE_8D9FF9                            ; $859781 |
  dl CODE_8DA472                            ; $859784 |
  dl CODE_84DE4D                            ; $859787 |
  dl CODE_A0F596                            ; $85978A |
  dl CODE_8C9BE6                            ; $85978D |
  dl CODE_8C9CF6                            ; $859790 |
  dl CODE_A0F66C                            ; $859793 |
  dl CODE_A0EF80                            ; $859796 |
  dl CODE_A0F385                            ; $859799 |
  dl CODE_A0F4A8                            ; $85979C |
  dl CODE_A0F444                            ; $85979F |
  dl CODE_A0F524                            ; $8597A2 |
  dl CODE_8DE6E7                            ; $8597A5 |
  dl CODE_86F1EF                            ; $8597A8 |
  dl CODE_8B9414                            ; $8597AB |
  dl CODE_86F5EB                            ; $8597AE |
  dl CODE_86F5EC                            ; $8597B1 |
  dl CODE_86F5ED                            ; $8597B4 |
  dl CODE_86F5EE                            ; $8597B7 |
  dl CODE_86F5EF                            ; $8597BA |
  dl CODE_8D9EBF                            ; $8597BD |
  dl CODE_8D9E9B                            ; $8597C0 |
  dl CODE_8BCADB                            ; $8597C3 |
  dl CODE_86D787                            ; $8597C6 |
  dl CODE_86DB43                            ; $8597C9 |
  dl CODE_86DB17                            ; $8597CC |
  dl CODE_9CFD80                            ; $8597CF |
  dl CODE_9CFE44                            ; $8597D2 |
  dl CODE_85C0B8                            ; $8597D5 |
  dl CODE_8DB245                            ; $8597D8 |
  dl CODE_8DB32E                            ; $8597DB |
  dl CODE_8D9EBF                            ; $8597DE |
  dl CODE_8CCC07                            ; $8597E1 |
  dl CODE_8C8E51                            ; $8597E4 |
  dl CODE_8D9EBF                            ; $8597E7 |
  dl CODE_85B75C                            ; $8597EA |
  dl CODE_8BF5EC                            ; $8597ED |
  dl CODE_84DE2D                            ; $8597F0 |
  dl CODE_8DE865                            ; $8597F3 |
  dl CODE_8DA3F6                            ; $8597F6 |
  dl CODE_8DE208                            ; $8597F9 |
  dl CODE_86B7B3                            ; $8597FC |
  dl CODE_8DE918                            ; $8597FF |
  dl CODE_8DA522                            ; $859802 |
  dl CODE_8DA584                            ; $859805 |
  dl CODE_85E06B                            ; $859808 |
  dl CODE_8CE558                            ; $85980B |
  dl CODE_8CFF27                            ; $85980E |
  dl CODE_8D9F2B                            ; $859811 |
  dl $000000                                ; $859814 |
  dl $000000                                ; $859817 |
  dl $000000                                ; $85981A |
  dl $000000                                ; $85981D |
  dl $000000                                ; $859820 |
  dl $000000                                ; $859823 |
  dl $000000                                ; $859826 |
  dl $000000                                ; $859829 |
  dl $000000                                ; $85982C |
  dl $000000                                ; $85982F |
  dl $000000                                ; $859832 |
  dl $000000                                ; $859835 |
  dl $000000                                ; $859838 |
  dl $000000                                ; $85983B |
  dl $000000                                ; $85983E |
  dl $000000                                ; $859841 |
  dl $000000                                ; $859844 |
  dl $000000                                ; $859847 |
  dl $000000                                ; $85984A |
  dl $000000                                ; $85984D |
  dl $000000                                ; $859850 |
  dl $000000                                ; $859853 |
  dl $000000                                ; $859856 |
  dl $000000                                ; $859859 |
  dl $000000                                ; $85985C |
  dl $000000                                ; $85985F |
  dl $000000                                ; $859862 |
  dl $000000                                ; $859865 |
  dl $000000                                ; $859868 |
  dl $000000                                ; $85986B |
  dl $000000                                ; $85986E |
  dl $000000                                ; $859871 |
  dl $000000                                ; $859874 |
  dl $000000                                ; $859877 |
  dl $000000                                ; $85987A |
  dl $000000                                ; $85987D |
  dl $000000                                ; $859880 |
  dl $000000                                ; $859883 |
  dl $000000                                ; $859886 |
  dl $000000                                ; $859889 |
  dl $000000                                ; $85988C |
  dl $000000                                ; $85988F |
  dl $000000                                ; $859892 |
  dl $000000                                ; $859895 |
  dl $000000                                ; $859898 |
  dl $000000                                ; $85989B |
  dl $000000                                ; $85989E |
  dl $000000                                ; $8598A1 |
  dl $000000                                ; $8598A4 |
  dl $000000                                ; $8598A7 |
  dl $000000                                ; $8598AA |
  dl $000000                                ; $8598AD |
  dl $000000                                ; $8598B0 |
  dl $000000                                ; $8598B3 |
  dl $000000                                ; $8598B6 |
  dl $000000                                ; $8598B9 |
  dl $000000                                ; $8598BC |
  dl $000000                                ; $8598BF |
  dl $000000                                ; $8598C2 |
  dl $000000                                ; $8598C5 |
  dl $000000                                ; $8598C8 |
  dl $000000                                ; $8598CB |
  dl $000000                                ; $8598CE |
  dl $000000                                ; $8598D1 |
  dl $000000                                ; $8598D4 |
  dl $000000                                ; $8598D7 |
  dl $000000                                ; $8598DA |
  dl $000000                                ; $8598DD |
  dl $000000                                ; $8598E0 |
  dl $000000                                ; $8598E3 |
  dl $000000                                ; $8598E6 |
  dl $000000                                ; $8598E9 |
  dl $000000                                ; $8598EC |
  dl $000000                                ; $8598EF |
  dl $000000                                ; $8598F2 |
  dl $000000                                ; $8598F5 |
  dl $000000                                ; $8598F8 |
  dl $000000                                ; $8598FB |
  dl $000000                                ; $8598FE |
  dl $000000                                ; $859901 |
  dl $000000                                ; $859904 |
  dl $000000                                ; $859907 |
  dl $000000                                ; $85990A |
  dl $000000                                ; $85990D |
  dl $000000                                ; $859910 |
  dl $000000                                ; $859913 |
  dl $000000                                ; $859916 |
  dl $000000                                ; $859919 |
  dl $000000                                ; $85991C |
  dl $000000                                ; $85991F |
  dl $000000                                ; $859922 |
  dl $000000                                ; $859925 |
  dl $000000                                ; $859928 |
  dl $000000                                ; $85992B |
  dl $000000                                ; $85992E |
  dl $000000                                ; $859931 |
  dl $000000                                ; $859934 |
  dl $000000                                ; $859937 |
  dl $000000                                ; $85993A |
  dl $000000                                ; $85993D |
  dl $000000                                ; $859940 |
  dl $000000                                ; $859943 |
  dl $000000                                ; $859946 |
  dl $000000                                ; $859949 |
  dl $000000                                ; $85994C |
  dl $000000                                ; $85994F |
  dl $000000                                ; $859952 |
  dl $000000                                ; $859955 |
  dl $000000                                ; $859958 |
  dl $000000                                ; $85995B |
  dl $000000                                ; $85995E |
  dl $000000                                ; $859961 |
  dl $000000                                ; $859964 |
  dl $000000                                ; $859967 |
  dl $000000                                ; $85996A |
  dl $000000                                ; $85996D |
  dl $000000                                ; $859970 |
  dl $000000                                ; $859973 |
  dl $000000                                ; $859976 |
  dl $000000                                ; $859979 |
  dl $000000                                ; $85997C |
  dl $000000                                ; $85997F |
  dl $000000                                ; $859982 |
  dl $000000                                ; $859985 |
  dl $000000                                ; $859988 |
  dl $000000                                ; $85998B |
  dl $000000                                ; $85998E |
  dl $000000                                ; $859991 |
  dl $000000                                ; $859994 |
  dl $000000                                ; $859997 |
  dl $000000                                ; $85999A |
  dl $000000                                ; $85999D |
  dl $000000                                ; $8599A0 |
  dl $000000                                ; $8599A3 |
  dl $000000                                ; $8599A6 |
  dl $000000                                ; $8599A9 |
  dl $000000                                ; $8599AC |
  dl $000000                                ; $8599AF |
  dl $000000                                ; $8599B2 |
  dl $000000                                ; $8599B5 |
  dl $000000                                ; $8599B8 |
  dl $000000                                ; $8599BB |
  dl $000000                                ; $8599BE |
  dl $000000                                ; $8599C1 |
  dl $000000                                ; $8599C4 |
  dl $000000                                ; $8599C7 |
  dl $000000                                ; $8599CA |
  dl $000000                                ; $8599CD |
  dl $000000                                ; $8599D0 |
  dl $000000                                ; $8599D3 |
  dl $000000                                ; $8599D6 |
  dl $000000                                ; $8599D9 |
  dl $000000                                ; $8599DC |
  dl $000000                                ; $8599DF |
  dl $000000                                ; $8599E2 |
  dl $000000                                ; $8599E5 |
  dl $000000                                ; $8599E8 |
  dl $000000                                ; $8599EB |
  dl $000000                                ; $8599EE |
  dl $000000                                ; $8599F1 |
  dl $000000                                ; $8599F4 |
  dl $000000                                ; $8599F7 |
  dl $000000                                ; $8599FA |
  dl $000000                                ; $8599FD |
  dl $000000                                ; $859A00 |
  dl $000000                                ; $859A03 |
  dl $000000                                ; $859A06 |
  dl $000000                                ; $859A09 |
  dl $000000                                ; $859A0C |
  dl $000000                                ; $859A0F |
  dl $000000                                ; $859A12 |
  dl $000000                                ; $859A15 |
  dl $000000                                ; $859A18 |
  dl $000000                                ; $859A1B |
  dl $000000                                ; $859A1E |
  dl $000000                                ; $859A21 |
  dl $000000                                ; $859A24 |
  dl $000000                                ; $859A27 |
  dl $000000                                ; $859A2A |
  dl $000000                                ; $859A2D |
  dl $000000                                ; $859A30 |
  dl $000000                                ; $859A33 |
  dl $000000                                ; $859A36 |
  dl $000000                                ; $859A39 |
  dl $000000                                ; $859A3C |
  dl $000000                                ; $859A3F |
  dl $000000                                ; $859A42 |
  dl $000000                                ; $859A45 |
  dl $000000                                ; $859A48 |
  dl $000000                                ; $859A4B |
  dl $000000                                ; $859A4E |
  dl $000000                                ; $859A51 |
  dl $000000                                ; $859A54 |
  dl $000000                                ; $859A57 |
  dl $000000                                ; $859A5A |
  dl $000000                                ; $859A5D |
  dl $000000                                ; $859A60 |
  dl $000000                                ; $859A63 |
  dl $000000                                ; $859A66 |
  dl $000000                                ; $859A69 |
  dl $000000                                ; $859A6C |
  dl $000000                                ; $859A6F |
  dl $000000                                ; $859A72 |
  dl $000000                                ; $859A75 |
  dl $000000                                ; $859A78 |
  dl $000000                                ; $859A7B |
  dl $000000                                ; $859A7E |
  dl $000000                                ; $859A81 |
  dl $000000                                ; $859A84 |
  dl CODE_8BD7C8                            ; $859A87 |
  dl CODE_8BE1B6                            ; $859A8A |
  dl CODE_8BE2C1                            ; $859A8D |
  dl CODE_8BE02D                            ; $859A90 |
  dl CODE_8BDF6F                            ; $859A93 |
  dl CODE_8BE362                            ; $859A96 |
  dl CODE_8BE3F5                            ; $859A99 |
  dl CODE_8DB732                            ; $859A9C |
  dl CODE_8DB8A0                            ; $859A9F |
  dl CODE_8DBA67                            ; $859AA2 |
  dl CODE_8DBA84                            ; $859AA5 |
  dl CODE_8DBCB4                            ; $859AA8 |
  dl CODE_8DBDAC                            ; $859AAB |
  dl CODE_8DBEEA                            ; $859AAE |
  dl CODE_8DBF41                            ; $859AB1 |
  dl CODE_8D8000                            ; $859AB4 |
  dl CODE_8D81E7                            ; $859AB7 |
  dl CODE_8DC065                            ; $859ABA |
  dl CODE_8DC507                            ; $859ABD |
  dl CODE_8DC065                            ; $859AC0 |
  dl CODE_8DC1BC                            ; $859AC3 |
  dl CODE_8DC25E                            ; $859AC6 |
  dl CODE_8DC2EA                            ; $859AC9 |
  dl CODE_8DC2EA                            ; $859ACC |
  dl CODE_8DC45B                            ; $859ACF |
  dl CODE_8D8286                            ; $859AD2 |
  dl CODE_8D8456                            ; $859AD5 |
  dl CODE_8D86A5                            ; $859AD8 |
  dl CODE_8D84DE                            ; $859ADB |
  dl CODE_8D8548                            ; $859ADE |
  dl CODE_8D862A                            ; $859AE1 |
  dl CODE_88FA2B                            ; $859AE4 |
  dl CODE_96F880                            ; $859AE7 |
  dl CODE_96FA4B                            ; $859AEA |
  dl CODE_96FA79                            ; $859AED |
  dl CODE_88FAA4                            ; $859AF0 |
  dl CODE_88FAD8                            ; $859AF3 |
  dl CODE_88FB0E                            ; $859AF6 |
  dl CODE_8D86F6                            ; $859AF9 |
  dl CODE_8D87B2                            ; $859AFC |
  dl CODE_8BE44F                            ; $859AFF |
  dl CODE_8BC963                            ; $859B02 |
  dl CODE_88FF09                            ; $859B05 |
  dl CODE_85CEDC                            ; $859B08 |
  dl $000000                                ; $859B0B |
  dl $000000                                ; $859B0E |
  dl $000000                                ; $859B11 |
  dl $000000                                ; $859B14 |
  dl CODE_86A00C                            ; $859B17 |
  dl CODE_86A5D2                            ; $859B1A |
  dl CODE_86A69C                            ; $859B1D |
  dl CODE_FL_86A095                         ; $859B20 |
  dl CODE_FL_86A095                         ; $859B23 |
  dl CODE_FL_86A095                         ; $859B26 |
  dl CODE_FL_86A095                         ; $859B29 |
  dl CODE_86A444                            ; $859B2C |
  dl CODE_86A1C0                            ; $859B2F |
  dl CODE_86A4D4                            ; $859B32 |
  dl CODE_FL_86A095                         ; $859B35 |
  dl CODE_FL_86A095                         ; $859B38 |
  dl CODE_FL_86A095                         ; $859B3B |
  dl CODE_FL_86A095                         ; $859B3E |
  dl CODE_FL_86A095                         ; $859B41 |
  dl CODE_86A1E2                            ; $859B44 |
  dl CODE_86A240                            ; $859B47 |
  dl CODE_FL_86A095                         ; $859B4A |
  dl CODE_FL_86A095                         ; $859B4D |
  dl CODE_FL_86A095                         ; $859B50 |
  dl CODE_FL_86A095                         ; $859B53 |
  dl CODE_FL_86A095                         ; $859B56 |
  dl CODE_FL_86A095                         ; $859B59 |
  dl CODE_86A1EA                            ; $859B5C |
  dl CODE_86A444                            ; $859B5F |
  dl CODE_86A1C0                            ; $859B62 |
  dl CODE_FL_86A095                         ; $859B65 |
  dl CODE_FL_86A095                         ; $859B68 |
  dl CODE_86A4D4                            ; $859B6B |
  dl CODE_86A250                            ; $859B6E |
  dl CODE_86A7A6                            ; $859B71 |
  dl CODE_85F737                            ; $859B74 |
  dl CODE_86A42C                            ; $859B77 |
  dl $000000                                ; $859B7A |
  dl $000000                                ; $859B7D |
  dl $000000                                ; $859B80 |
  dl $000000                                ; $859B83 |
  dl $000000                                ; $859B86 |
  dl $000000                                ; $859B89 |
  dl $000000                                ; $859B8C |
  dl $000000                                ; $859B8F |
  dl $000000                                ; $859B92 |
  dl $000000                                ; $859B95 |
  dl $000000                                ; $859B98 |
  dl $000000                                ; $859B9B |
  dl $000000                                ; $859B9E |
  dl $000000                                ; $859BA1 |
  dl $000000                                ; $859BA4 |
  dl $000000                                ; $859BA7 |
  dl $000000                                ; $859BAA |
  dl $000000                                ; $859BAD |
  dl $000000                                ; $859BB0 |
  dl $000000                                ; $859BB3 |
  dl $000000                                ; $859BB6 |
  dl $000000                                ; $859BB9 |
  dl $000000                                ; $859BBC |
  dl $000000                                ; $859BBF |
  dl $000000                                ; $859BC2 |
  dl $000000                                ; $859BC5 |
  dl $000000                                ; $859BC8 |
  dl $000000                                ; $859BCB |
  dl $000000                                ; $859BCE |
  dl $000000                                ; $859BD1 |
  dl $000000                                ; $859BD4 |
  dl CODE_868122                            ; $859BD7 |
  dl CODE_B3FC3B                            ; $859BDA |
  dl CODE_B3FC7F                            ; $859BDD |
  dl CODE_B3FCF1                            ; $859BE0 |
  dl CODE_868828                            ; $859BE3 |
  dl CODE_868E43                            ; $859BE6 |
  dl CODE_868F6E                            ; $859BE9 |
  dl CODE_868FCD                            ; $859BEC |
  dl CODE_B3FD64                            ; $859BEF |
  dl CODE_B3FDDD                            ; $859BF2 |
  dl CODE_B3FDFA                            ; $859BF5 |
  dl $000000                                ; $859BF8 |
  dl $000000                                ; $859BFB |
  dl $000000                                ; $859BFE |
  dl $000000                                ; $859C01 |
  dl $000000                                ; $859C04 |
  dl CODE_86982B                            ; $859C07 |
  dl CODE_869848                            ; $859C0A |
  dl CODE_8698F8                            ; $859C0D |
  dl CODE_869936                            ; $859C10 |
  dl CODE_8699D9                            ; $859C13 |
  dl CODE_869A06                            ; $859C16 |
  dl CODE_869AB2                            ; $859C19 |
  dl CODE_869B39                            ; $859C1C |
  dl CODE_869BB2                            ; $859C1F |
  dl CODE_869C40                            ; $859C22 |
  dl CODE_869CFA                            ; $859C25 |
  dl CODE_869D7D                            ; $859C28 |
  dl CODE_869DC6                            ; $859C2B |
  dl CODE_869E0F                            ; $859C2E |
  dl CODE_869E84                            ; $859C31 |
  dl CODE_869F79                            ; $859C34 |
  dl CODE_869F8E                            ; $859C37 |
  dl CODE_869FBE                            ; $859C3A |

CODE_859C3D:
  JSL.L CODE_FL_86C3C9                      ; $859C3D |
  PHX                                       ; $859C41 |
  ASL A                                     ; $859C42 |
  TAX                                       ; $859C43 |
  LDA.L PTR16_859C4E,X                      ; $859C44 |
  PLX                                       ; $859C48 |
  STA.B $00                                 ; $859C49 |
  JMP.W ($0000)                             ; $859C4B |

PTR16_859C4E:
  dw CODE_859C54                            ; $859C4E |
  dw CODE_859C6F                            ; $859C50 |
  dw CODE_859CC4                            ; $859C52 |

CODE_859C54:
  JSL.L CODE_FL_86C7A5                      ; $859C54 |
  JSL.L CODE_FL_86C36A                      ; $859C58 |
  LDA.B $34,X                               ; $859C5C |
  ORA.W #$0880                              ; $859C5E |
  STA.B $34,X                               ; $859C61 |
  JSL.L CODE_FL_85AA07                      ; $859C63 |
  JSL.L CODE_FL_85AC74                      ; $859C67 |
  JML.L CODE_FL_86C63F                      ; $859C6B |

CODE_859C6F:
  JSL.L CODE_FL_85ABAD                      ; $859C6F |
  BCC CODE_859C8B                           ; $859C73 |
  LDA.B $4E,X                               ; $859C75 |
  XBA                                       ; $859C77 |
  AND.W #$00FF                              ; $859C78 |
  ASL A                                     ; $859C7B |
  PHB                                       ; $859C7C |
  PHK                                       ; $859C7D |
  PLB                                       ; $859C7E |
  LDA.W LOOSE_OP_009C8C,Y                   ; $859C7F |
  PLB                                       ; $859C82 |
  STA.B $4E,X                               ; $859C83 |
  JSL.L CODE_FL_86C292                      ; $859C85 |
  INC.B $1A,X                               ; $859C89 |

CODE_859C8B:
  RTL                                       ; $859C8B |

  dw $0078,$0068                            ; $859C8C |

CODE_859C90:
  JSL.L CODE_FL_86C3C9                      ; $859C90 |
  PHX                                       ; $859C94 |
  ASL A                                     ; $859C95 |
  TAX                                       ; $859C96 |
  LDA.L PTR16_859CA1,X                      ; $859C97 |
  PLX                                       ; $859C9B |
  STA.B $00                                 ; $859C9C |
  JMP.W ($0000)                             ; $859C9E |

PTR16_859CA1:
  dw CODE_859CA5                            ; $859CA1 |
  dw CODE_859CC4                            ; $859CA3 |

CODE_859CA5:
  JSL.L CODE_FL_86C7A5                      ; $859CA5 |
  JSL.L CODE_FL_86C36A                      ; $859CA9 |
  LDA.B $34,X                               ; $859CAD |
  ORA.W #$0880                              ; $859CAF |
  STA.B $34,X                               ; $859CB2 |
  JSL.L CODE_FL_85AA07                      ; $859CB4 |
  JSL.L CODE_FL_85AC74                      ; $859CB8 |
  JSL.L CODE_FL_86C292                      ; $859CBC |
  JML.L CODE_FL_86C63F                      ; $859CC0 |

CODE_859CC4:
  JSL.L CODE_FL_86C319                      ; $859CC4 |
  JSL.L CODE_FL_86C34B                      ; $859CC8 |
  BCS CODE_859CD2                           ; $859CCC |
  JSL.L CODE_FL_86CA36                      ; $859CCE |

CODE_859CD2:
  RTL                                       ; $859CD2 |

CODE_859CD3:
  LDA.B $1A,X                               ; $859CD3 |
  PHX                                       ; $859CD5 |
  ASL A                                     ; $859CD6 |
  TAX                                       ; $859CD7 |
  LDA.L PTR16_859CE2,X                      ; $859CD8 |
  PLX                                       ; $859CDC |
  STA.B $00                                 ; $859CDD |
  JMP.W ($0000)                             ; $859CDF |

PTR16_859CE2:
  dw CODE_859CE6                            ; $859CE2 |
  dw CODE_859CEE                            ; $859CE4 |

CODE_859CE6:
  LDA.W #$0043                              ; $859CE6 |
  STA.B $02,X                               ; $859CE9 |
  INC.B $1A,X                               ; $859CEB |
  RTL                                       ; $859CED |

CODE_859CEE:
  JSL.L CODE_FL_85ABAD                      ; $859CEE |
  BCC CODE_859D0F                           ; $859CF2 |
  LDA.B $4E,X                               ; $859CF4 |
  AND.W #$FF00                              ; $859CF6 |
  STA.B $4E,X                               ; $859CF9 |
  XBA                                       ; $859CFB |
  ASL A                                     ; $859CFC |
  TAY                                       ; $859CFD |
  LDA.B $09,X                               ; $859CFE |
  STA.B $08                                 ; $859D00 |
  LDA.B $0D,X                               ; $859D02 |
  STA.B $0A                                 ; $859D04 |
  LDA.W LOOSE_OP_00886E,Y                   ; $859D06 |
  JSL.L CODE_FL_8580F7                      ; $859D09 |
  BCC CODE_859D10                           ; $859D0D |

CODE_859D0F:
  RTL                                       ; $859D0F |

CODE_859D10:
  JML.L CODE_FL_86CA2D                      ; $859D10 |

CODE_859D14:
  JSL.L CODE_FL_86C424                      ; $859D14 |
  PHX                                       ; $859D18 |
  ASL A                                     ; $859D19 |
  TAX                                       ; $859D1A |
  LDA.L PTR16_859D25,X                      ; $859D1B |
  PLX                                       ; $859D1F |
  STA.B $00                                 ; $859D20 |
  JMP.W ($0000)                             ; $859D22 |

PTR16_859D25:
  dw CODE_859D2D                            ; $859D25 |
  dw CODE_859D58                            ; $859D27 |
  dw CODE_859D5C                            ; $859D29 |
  dw CODE_859D65                            ; $859D2B |

CODE_859D2D:
  LDA.L $7002B0                             ; $859D2D |
  BEQ CODE_859D3F                           ; $859D31 |
  LDA.W #$0003                              ; $859D33 |
  STA.B $1A,X                               ; $859D36 |
  LDA.W #$0076                              ; $859D38 |
  STA.B $10                                 ; $859D3B |
  BRA CODE_859D76                           ; $859D3D |

CODE_859D3F:
  JSL.L CODE_FL_85A8DE                      ; $859D3F |
  JSL.L CODE_FL_85ABAD                      ; $859D43 |
  BCC CODE_JP_859D4D                        ; $859D47 |
  INC.B $1A,X                               ; $859D49 |
  INC.B $1A,X                               ; $859D4B |

CODE_JP_859D4D:
  LDA.B $34,X                               ; $859D4D |
  ORA.W #$A000                              ; $859D4F |
  STA.B $34,X                               ; $859D52 |
  JML.L CODE_FL_86C63F                      ; $859D54 |

CODE_859D58:
  JML.L CODE_JL_85ACF8                      ; $859D58 |

CODE_859D5C:
  JSL.L CODE_FL_85A986                      ; $859D5C |
  BCS CODE_859D64                           ; $859D60 |
  INC.B $1A,X                               ; $859D62 |

CODE_859D64:
  RTL                                       ; $859D64 |

CODE_859D65:
  LDA.W #$0068                              ; $859D65 |
  STA.B $10                                 ; $859D68 |
  LDA.B $4E,X                               ; $859D6A |
  AND.W #$0100                              ; $859D6C |
  BEQ CODE_859D76                           ; $859D6F |
  LDA.W #$006A                              ; $859D71 |
  STA.B $10                                 ; $859D74 |

CODE_859D76:
  SEC                                       ; $859D76 |
  LDA.B $09,X                               ; $859D77 |
  SBC.W #$0010                              ; $859D79 |
  STA.B $08                                 ; $859D7C |
  LDA.B $0D,X                               ; $859D7E |
  SEC                                       ; $859D80 |
  SBC.W #$0020                              ; $859D81 |
  STA.B $0A                                 ; $859D84 |
  LDA.B $10                                 ; $859D86 |
  JSL.L CODE_FL_8580F7                      ; $859D88 |
  BCC CODE_859D8F                           ; $859D8C |
  RTL                                       ; $859D8E |

CODE_859D8F:
  JSL.L CODE_FL_85ABC2                      ; $859D8F |
  JML.L CODE_FL_86CA2D                      ; $859D93 |

CODE_859D97:
  JSL.L CODE_FL_86C424                      ; $859D97 |
  PHX                                       ; $859D9B |
  ASL A                                     ; $859D9C |
  TAX                                       ; $859D9D |
  LDA.L PTR16_859DA8,X                      ; $859D9E |
  PLX                                       ; $859DA2 |
  STA.B $00                                 ; $859DA3 |
  JMP.W ($0000)                             ; $859DA5 |

PTR16_859DA8:
  dw CODE_859DB2                            ; $859DA8 |
  dw CODE_859DE6                            ; $859DAA |
  dw CODE_859E09                            ; $859DAC |
  dw CODE_859E1F                            ; $859DAE |
  dw CODE_859E3E                            ; $859DB0 |

CODE_859DB2:
  JSL.L CODE_FL_86C7AD                      ; $859DB2 |
  LDA.B $4E,X                               ; $859DB6 |
  AND.W #$0100                              ; $859DB8 |
  BEQ CODE_859DBF                           ; $859DBB |
  STZ.B $E4                                 ; $859DBD |

CODE_859DBF:
  LDA.B $4E,X                               ; $859DBF |
  AND.W #$0080                              ; $859DC1 |
  BNE CODE_859DC9                           ; $859DC4 |
  JMP.W CODE_JP_859DD4                      ; $859DC6 |

CODE_859DC9:
  LDA.B $34,X                               ; $859DC9 |
  ORA.W #$B888                              ; $859DCB |
  STA.B $34,X                               ; $859DCE |
  JML.L CODE_FL_86C63F                      ; $859DD0 |

CODE_JP_859DD4:
  JSL.L CODE_FL_85ABAD                      ; $859DD4 |
  BCS CODE_859DDD                           ; $859DD8 |
  JMP.W CODE_JP_859D4D                      ; $859DDA |

CODE_859DDD:
  INC.B $1A,X                               ; $859DDD |
  INC.B $1A,X                               ; $859DDF |
  INC.B $1A,X                               ; $859DE1 |
  JMP.W CODE_JP_859D4D                      ; $859DE3 |

CODE_859DE6:
  LDA.B $32,X                               ; $859DE6 |
  BPL CODE_859E04                           ; $859DE8 |
  STZ.B $32,X                               ; $859DEA |
  INC.B $1A,X                               ; $859DEC |
  TDC                                       ; $859DEE |
  STA.L $7E7C06                             ; $859DEF |
  LDA.B $37,X                               ; $859DF3 |
  AND.W #$00FF                              ; $859DF5 |
  CMP.W #$000E                              ; $859DF8 |
  BNE CODE_859E05                           ; $859DFB |
  LDA.W #$0001                              ; $859DFD |
  STA.L $7E7C06                             ; $859E00 |

CODE_859E04:
  RTL                                       ; $859E04 |

CODE_859E05:
  JML.L CODE_FL_85A589                      ; $859E05 |

CODE_859E09:
  LDA.W #$6A3B                              ; $859E09 |
  STA.B $40,X                               ; $859E0C |
  JSL.L CODE_FL_86C239                      ; $859E0E |
  BCC CODE_859E1E                           ; $859E12 |
  LDA.L $7E7C06                             ; $859E14 |
  BNE CODE_859E3B                           ; $859E18 |
  DEC.B $1A,X                               ; $859E1A |
  STZ.B $32,X                               ; $859E1C |

CODE_859E1E:
  RTL                                       ; $859E1E |

CODE_859E1F:
  LDA.W #$0006                              ; $859E1F |
  STA.B $10                                 ; $859E22 |
  LDA.W #$0010                              ; $859E24 |
  STA.B $12                                 ; $859E27 |
  STZ.B $14                                 ; $859E29 |
  LDA.W #$2016                              ; $859E2B |
  STA.B $16                                 ; $859E2E |
  JSL.L CODE_FL_86B8BD                      ; $859E30 |
  LDA.W #$000D                              ; $859E34 |
  JSL.L push_sound_queue                    ; $859E37 |

CODE_859E3B:
  INC.B $1A,X                               ; $859E3B |
  RTL                                       ; $859E3D |

CODE_859E3E:
  LDA.B $4E,X                               ; $859E3E |
  AND.W #$0080                              ; $859E40 |
  BNE CODE_859E72                           ; $859E43 |
  SEC                                       ; $859E45 |
  LDA.B $09,X                               ; $859E46 |
  SBC.W #$0010                              ; $859E48 |
  STA.B $08                                 ; $859E4B |
  LDA.B $0D,X                               ; $859E4D |
  SEC                                       ; $859E4F |
  SBC.W #$0040                              ; $859E50 |
  STA.B $0A                                 ; $859E53 |
  LDY.W #$006C                              ; $859E55 |
  LDA.B $4E,X                               ; $859E58 |
  AND.W #$0100                              ; $859E5A |
  BEQ CODE_859E62                           ; $859E5D |
  LDY.W #$0070                              ; $859E5F |

CODE_859E62:
  TYA                                       ; $859E62 |
  JSL.L CODE_FL_8580F7                      ; $859E63 |
  BCC CODE_859E6A                           ; $859E67 |
  RTL                                       ; $859E69 |

CODE_859E6A:
  JSL.L CODE_FL_85ABC2                      ; $859E6A |

CODE_859E6E:
  JML.L CODE_FL_86CA2D                      ; $859E6E |

CODE_859E72:
  SEC                                       ; $859E72 |
  LDA.B $09,X                               ; $859E73 |
  SBC.W #$0010                              ; $859E75 |
  STA.B $08                                 ; $859E78 |
  LDA.B $0D,X                               ; $859E7A |
  SEC                                       ; $859E7C |
  SBC.W #$0020                              ; $859E7D |
  STA.B $0A                                 ; $859E80 |
  LDA.W #$0072                              ; $859E82 |
  JSL.L CODE_FL_8580F7                      ; $859E85 |
  BCC CODE_859E6E                           ; $859E89 |
  RTL                                       ; $859E8B |

CODE_859E8C:
  JSL.L CODE_FL_86C424                      ; $859E8C |
  PHX                                       ; $859E90 |
  ASL A                                     ; $859E91 |
  TAX                                       ; $859E92 |
  LDA.L PTR16_859E9D,X                      ; $859E93 |
  PLX                                       ; $859E97 |
  STA.B $00                                 ; $859E98 |
  JMP.W ($0000)                             ; $859E9A |

PTR16_859E9D:
  dw CODE_859EA5                            ; $859E9D |
  dw CODE_859EC1                            ; $859E9F |
  dw CODE_JL_859EC6                         ; $859EA1 |
  dw CODE_859EE5                            ; $859EA3 |

CODE_859EA5:
  LDA.B $4E,X                               ; $859EA5 |
  AND.W #$0001                              ; $859EA7 |
  BEQ CODE_859EB1                           ; $859EAA |
  LDA.W #$0001                              ; $859EAC |
  STA.B $E4                                 ; $859EAF |

CODE_859EB1:
  JSL.L CODE_FL_85A9EF                      ; $859EB1 |
  JSL.L CODE_FL_85A9FF                      ; $859EB5 |
  JSL.L CODE_FL_86C7AD                      ; $859EB9 |
  JML.L CODE_FL_86C63F                      ; $859EBD |

CODE_859EC1:
  JSL.L CODE_FL_85F885                      ; $859EC1 |
  RTL                                       ; $859EC5 |

CODE_JL_859EC6:
  LDA.W #$0006                              ; $859EC6 |
  STA.B $10                                 ; $859EC9 |
  LDA.W #$0010                              ; $859ECB |
  STA.B $12                                 ; $859ECE |
  STZ.B $14                                 ; $859ED0 |
  LDA.W #$2016                              ; $859ED2 |
  STA.B $16                                 ; $859ED5 |
  JSL.L CODE_FL_86B8BD                      ; $859ED7 |
  LDA.W #$000D                              ; $859EDB |
  JSL.L push_sound_queue                    ; $859EDE |
  INC.B $1A,X                               ; $859EE2 |
  RTL                                       ; $859EE4 |

CODE_859EE5:
  SEC                                       ; $859EE5 |
  LDA.B $09,X                               ; $859EE6 |
  SBC.W #$0020                              ; $859EE8 |
  STA.B $08                                 ; $859EEB |
  LDA.B $0D,X                               ; $859EED |
  SEC                                       ; $859EEF |
  SBC.W #$0020                              ; $859EF0 |
  STA.B $0A                                 ; $859EF3 |
  LDA.W #$006E                              ; $859EF5 |
  JSL.L CODE_FL_8580F7                      ; $859EF8 |
  BCC CODE_859EFF                           ; $859EFC |
  RTL                                       ; $859EFE |

CODE_859EFF:
  JML.L CODE_FL_86CA2D                      ; $859EFF |

CODE_859F03:
  JSL.L CODE_FL_86C424                      ; $859F03 |
  PHX                                       ; $859F07 |
  ASL A                                     ; $859F08 |
  TAX                                       ; $859F09 |
  LDA.L PTR16_859F14,X                      ; $859F0A |
  PLX                                       ; $859F0E |
  STA.B $00                                 ; $859F0F |
  JMP.W ($0000)                             ; $859F11 |

PTR16_859F14:
  dw CODE_859F1C                            ; $859F14 |
  dw CODE_859F2E                            ; $859F16 |
  dw CODE_859F37                            ; $859F18 |
  dw CODE_859F4F                            ; $859F1A |

CODE_859F1C:
  JSL.L CODE_FL_86C7A5                      ; $859F1C |
  JSL.L CODE_FL_85ABAD                      ; $859F20 |
  BCC CODE_859F2A                           ; $859F24 |
  INC.B $1A,X                               ; $859F26 |
  INC.B $1A,X                               ; $859F28 |

CODE_859F2A:
  JML.L CODE_FL_86C63F                      ; $859F2A |

CODE_859F2E:
  JSL.L CODE_FL_85ABAD                      ; $859F2E |
  BCC CODE_859F36                           ; $859F32 |
  INC.B $1A,X                               ; $859F34 |

CODE_859F36:
  RTL                                       ; $859F36 |

CODE_859F37:
  LDA.W #$0006                              ; $859F37 |
  STA.B $10                                 ; $859F3A |
  LDA.W #$0010                              ; $859F3C |
  STA.B $12                                 ; $859F3F |
  STZ.B $14                                 ; $859F41 |
  LDA.W #$0039                              ; $859F43 |
  STA.B $16                                 ; $859F46 |
  JSL.L CODE_FL_86B8B7                      ; $859F48 |
  INC.B $1A,X                               ; $859F4C |
  RTL                                       ; $859F4E |

CODE_859F4F:
  SEC                                       ; $859F4F |
  LDA.B $09,X                               ; $859F50 |
  SBC.W #$0010                              ; $859F52 |
  STA.B $08                                 ; $859F55 |
  SEC                                       ; $859F57 |
  LDA.B $0D,X                               ; $859F58 |
  SEC                                       ; $859F5A |
  SBC.W #$0030                              ; $859F5B |
  STA.B $0A                                 ; $859F5E |
  LDA.W #$0074                              ; $859F60 |
  JSL.L CODE_FL_8580F7                      ; $859F63 |
  BCC CODE_859F6A                           ; $859F67 |
  RTL                                       ; $859F69 |

CODE_859F6A:
  JSL.L CODE_FL_85ABC2                      ; $859F6A |
  JML.L CODE_FL_86CA2D                      ; $859F6E |

CODE_859F72:
  LDA.B $1A,X                               ; $859F72 |
  PHX                                       ; $859F74 |
  ASL A                                     ; $859F75 |
  TAX                                       ; $859F76 |
  LDA.L PTR16_859F81,X                      ; $859F77 |
  PLX                                       ; $859F7B |
  STA.B $00                                 ; $859F7C |
  JMP.W ($0000)                             ; $859F7E |

PTR16_859F81:
  dw CODE_859F87                            ; $859F81 |
  dw CODE_859FA6                            ; $859F83 |
  dw CODE_859FBE                            ; $859F85 |

CODE_859F87:
  JSL.L CODE_FL_85AA07                      ; $859F87 |
  LDA.B $4E,X                               ; $859F8B |
  AND.W #$0100                              ; $859F8D |
  BNE CODE_859F9E                           ; $859F90 |
  LDA.B $4E,X                               ; $859F92 |
  AND.W #$0200                              ; $859F94 |
  BEQ CODE_859F9B                           ; $859F97 |
  INC.B $1A,X                               ; $859F99 |

CODE_859F9B:
  INC.B $1A,X                               ; $859F9B |
  RTL                                       ; $859F9D |

CODE_859F9E:
  JSL.L CODE_FL_859FAC                      ; $859F9E |
  JML.L CODE_FL_86CA2D                      ; $859FA2 |

CODE_859FA6:
  JSL.L CODE_FL_85ABAD                      ; $859FA6 |
  BCC CODE_859FB6                           ; $859FAA |

CODE_FL_859FAC:
  SEP #$20                                  ; $859FAC |
  LDA.B #$01                                ; $859FAE |
  STA.W $1C76                               ; $859FB0 |
  REP #$20                                  ; $859FB3 |
  RTL                                       ; $859FB5 |

CODE_859FB6:
  SEP #$20                                  ; $859FB6 |
  STZ.W $1C76                               ; $859FB8 |
  REP #$20                                  ; $859FBB |
  RTL                                       ; $859FBD |

CODE_859FBE:
  JSL.L CODE_FL_85ABAD                      ; $859FBE |
  BCS CODE_859FCE                           ; $859FC2 |
  SEP #$20                                  ; $859FC4 |
  LDA.B #$01                                ; $859FC6 |
  STA.W $1C76                               ; $859FC8 |
  REP #$20                                  ; $859FCB |
  RTL                                       ; $859FCD |

CODE_859FCE:
  SEP #$20                                  ; $859FCE |
  LDA.B #$02                                ; $859FD0 |
  STA.W $1C76                               ; $859FD2 |
  REP #$20                                  ; $859FD5 |
  RTL                                       ; $859FD7 |

CODE_859FD8:
  JSL.L CODE_FL_86C424                      ; $859FD8 |
  PHX                                       ; $859FDC |
  ASL A                                     ; $859FDD |
  TAX                                       ; $859FDE |
  LDA.L PTR16_859FE9,X                      ; $859FDF |
  PLX                                       ; $859FE3 |
  STA.B $00                                 ; $859FE4 |
  JMP.W ($0000)                             ; $859FE6 |

PTR16_859FE9:
  dw CODE_859FED                            ; $859FE9 |
  dw CODE_85A0B0                            ; $859FEB |

CODE_859FED:
  STZ.B $22,X                               ; $859FED |
  LDA.W #$0001                              ; $859FEF |
  STA.W $1C52                               ; $859FF2 |
  LDA.L $001FB0                             ; $859FF5 |
  AND.W #$00FC                              ; $859FF9 |
  ORA.W #$0002                              ; $859FFC |
  STA.L $001FB0                             ; $859FFF |
  JSL.L CODE_FL_85ABAD                      ; $85A003 |
  LDA.W #$0650                              ; $85A007 |
  BCC CODE_85A00F                           ; $85A00A |
  LDA.W #$05D0                              ; $85A00C |

CODE_85A00F:
  STA.W $1C68                               ; $85A00F |
  STA.W $1C6A                               ; $85A012 |
  LDA.W #$7FFF                              ; $85A015 |
  STA.W $1C6C                               ; $85A018 |
  INC.B $1A,X                               ; $85A01B |
  RTL                                       ; $85A01D |

CODE_85A01E:
  LDA.W #$0001                              ; $85A01E |
  STA.B $3A,X                               ; $85A021 |
  LDA.W #$009B                              ; $85A023 |
  STA.B $18,X                               ; $85A026 |

CODE_85A028:
  LDA.B $3A,X                               ; $85A028 |
  BEQ CODE_85A02F                           ; $85A02A |
  STA.W $1C6C                               ; $85A02C |

CODE_85A02F:
  JSL.L CODE_FL_86C424                      ; $85A02F |
  PHX                                       ; $85A033 |
  ASL A                                     ; $85A034 |
  TAX                                       ; $85A035 |
  LDA.L PTR16_85A040,X                      ; $85A036 |
  PLX                                       ; $85A03A |
  STA.B $00                                 ; $85A03B |
  JMP.W ($0000)                             ; $85A03D |

PTR16_85A040:
  dw CODE_85A044                            ; $85A040 |
  dw CODE_85A0B0                            ; $85A042 |

CODE_85A044:
  LDA.W #$0001                              ; $85A044 |
  STA.W $1C52                               ; $85A047 |
  STZ.B $22,X                               ; $85A04A |
  LDA.W #$7FFF                              ; $85A04C |
  STA.W $1C6C                               ; $85A04F |
  LDA.B $4E,X                               ; $85A052 |
  CMP.W #$8000                              ; $85A054 |
  BEQ CODE_85A085                           ; $85A057 |
  LDA.L $001FB0                             ; $85A059 |
  AND.W #$00FC                              ; $85A05D |
  ORA.W #$0002                              ; $85A060 |
  STA.L $001FB0                             ; $85A063 |
  LDA.B $4E,X                               ; $85A067 |
  BMI CODE_85A070                           ; $85A069 |
  LDA.W $1C68                               ; $85A06B |
  BNE CODE_85A081                           ; $85A06E |

CODE_85A070:
  LDA.B $4E,X                               ; $85A070 |
  AND.W #$7FFF                              ; $85A072 |
  STA.W $1C68                               ; $85A075 |
  STA.W $1C6A                               ; $85A078 |
  LDA.W #$7FFF                              ; $85A07B |
  STA.W $1C6C                               ; $85A07E |

CODE_85A081:
  INC.B $1A,X                               ; $85A081 |
  BRA CODE_85A0B0                           ; $85A083 |

CODE_85A085:
  LDA.W #$001B                              ; $85A085 |
  STA.W $1FBE                               ; $85A088 |
  STZ.W $1C52                               ; $85A08B |
  LDA.W #$7FFF                              ; $85A08E |
  STA.W $1C6C                               ; $85A091 |
  JML.L CODE_FL_86CA2D                      ; $85A094 |

CODE_FN_85A098:
  CLC                                       ; $85A098 |
  LDA.B $10                                 ; $85A099 |
  ADC.B $14                                 ; $85A09B |
  LDY.W #$0000                              ; $85A09D |
  STA.B ($16),Y                             ; $85A0A0 |
  LDA.B $10                                 ; $85A0A2 |
  EOR.W #$FFFF                              ; $85A0A4 |
  INC A                                     ; $85A0A7 |
  TAY                                       ; $85A0A8 |
  LDA.B $16                                 ; $85A0A9 |
  JSL.L CODE_FL_808FB4                      ; $85A0AB |
  RTS                                       ; $85A0AF |

CODE_85A0B0:
  PHX                                       ; $85A0B0 |
  JSL.L CODE_FL_808F86                      ; $85A0B1 |
  STZ.B $10                                 ; $85A0B5 |
  LDA.W #$0003                              ; $85A0B7 |
  STA.B $12                                 ; $85A0BA |
  LDA.W #$1C6E                              ; $85A0BC |
  STA.B $16                                 ; $85A0BF |

CODE_85A0C1:
  SEC                                       ; $85A0C1 |
  LDA.W $1C6C                               ; $85A0C2 |
  SBC.W #$0040                              ; $85A0C5 |
  CLC                                       ; $85A0C8 |
  ADC.B $10                                 ; $85A0C9 |
  BPL CODE_85A0E1                           ; $85A0CB |
  EOR.W #$FFFF                              ; $85A0CD |
  INC A                                     ; $85A0D0 |
  CMP.W #$004F                              ; $85A0D1 |
  BCS CODE_85A0DA                           ; $85A0D4 |
  STA.B $14                                 ; $85A0D6 |
  BRA CODE_85A0E3                           ; $85A0D8 |

CODE_85A0DA:
  LDA.W #$0080                              ; $85A0DA |
  STA.B $14                                 ; $85A0DD |
  BRA CODE_85A0E3                           ; $85A0DF |

CODE_85A0E1:
  STZ.B $14                                 ; $85A0E1 |

CODE_85A0E3:
  JSR.W CODE_FN_85A098                      ; $85A0E3 |
  LDA.B $10                                 ; $85A0E6 |
  SEC                                       ; $85A0E8 |
  SBC.W #$003F                              ; $85A0E9 |
  STA.B $10                                 ; $85A0EC |
  INC.B $16                                 ; $85A0EE |
  INC.B $16                                 ; $85A0F0 |
  INX                                       ; $85A0F2 |
  INX                                       ; $85A0F3 |
  INX                                       ; $85A0F4 |
  DEC.B $12                                 ; $85A0F5 |
  BNE CODE_85A0C1                           ; $85A0F7 |
  PLX                                       ; $85A0F9 |
  LDA.W $1C68                               ; $85A0FA |
  BPL CODE_85A10D                           ; $85A0FD |
  LDA.W $1C38                               ; $85A0FF |
  AND.W #$0001                              ; $85A102 |
  BNE CODE_85A11D                           ; $85A105 |
  LDA.W $1C68                               ; $85A107 |
  AND.W #$7FFF                              ; $85A10A |

CODE_85A10D:
  CMP.W $1C6A                               ; $85A10D |
  BEQ CODE_85A11D                           ; $85A110 |
  INC.W $1C6A                               ; $85A112 |
  BCS CODE_85A11D                           ; $85A115 |
  DEC.W $1C6A                               ; $85A117 |
  DEC.W $1C6A                               ; $85A11A |

CODE_85A11D:
  STZ.B $08                                 ; $85A11D |
  LDA.W $1C6A                               ; $85A11F |
  STA.B $0A                                 ; $85A122 |
  JSL.L CODE_FL_808B9C                      ; $85A124 |
  LDA.B $0E                                 ; $85A128 |
  CLC                                       ; $85A12A |
  ADC.W #$0080                              ; $85A12B |
  STA.W $1C6C                               ; $85A12E |
  LDY.B $3A,X                               ; $85A131 |
  BNE CODE_85A137                           ; $85A133 |
  BRA CODE_85A13F                           ; $85A135 |

CODE_85A137:
  STA.B $3A,X                               ; $85A137 |
  LDA.W #$0500                              ; $85A139 |
  STA.W $1C6C                               ; $85A13C |

CODE_85A13F:
  CLC                                       ; $85A13F |
  LDA.W $1C6C                               ; $85A140 |
  ADC.W #$0040                              ; $85A143 |
  CMP.W #$0100                              ; $85A146 |
  BCC CODE_85A14C                           ; $85A149 |
  RTL                                       ; $85A14B |

CODE_85A14C:
  LDA.W $1C68                               ; $85A14C |
  AND.W #$7FFF                              ; $85A14F |
  CMP.W $1C6A                               ; $85A152 |
  BEQ CODE_85A169                           ; $85A155 |
  INC.B $3C,X                               ; $85A157 |
  LDA.B $3C,X                               ; $85A159 |
  CMP.W #$0030                              ; $85A15B |
  BCC CODE_85A169                           ; $85A15E |
  STZ.B $3C,X                               ; $85A160 |
  LDA.W #$00A8                              ; $85A162 |
  JSL.L CODE_FL_8089BD                      ; $85A165 |

CODE_85A169:
  RTL                                       ; $85A169 |

CODE_85A16A:
  JSL.L CODE_FL_86C3F8                      ; $85A16A |
  PHX                                       ; $85A16E |
  ASL A                                     ; $85A16F |
  TAX                                       ; $85A170 |
  LDA.L PTR16_85A17B,X                      ; $85A171 |
  PLX                                       ; $85A175 |
  STA.B $00                                 ; $85A176 |
  JMP.W ($0000)                             ; $85A178 |

PTR16_85A17B:
  dw CODE_85A183                            ; $85A17B |
  dw CODE_85A1B0                            ; $85A17D |
  dw CODE_85A1B4                            ; $85A17F |
  dw CODE_85A1D4                            ; $85A181 |

CODE_85A183:
  LDA.W #$0080                              ; $85A183 |
  STA.B $06,X                               ; $85A186 |
  LDA.W #$0043                              ; $85A188 |
  STA.B $02,X                               ; $85A18B |
  LDA.W #$3010                              ; $85A18D |
  STA.B $00,X                               ; $85A190 |
  JSL.L CODE_FL_85AA07                      ; $85A192 |
  LDA.B $4E,X                               ; $85A196 |
  AND.W #$7FFF                              ; $85A198 |
  CMP.W $1C6A                               ; $85A19B |
  BEQ CODE_85A1A7                           ; $85A19E |
  BCC CODE_85A1A7                           ; $85A1A0 |
  LDA.W #$3000                              ; $85A1A2 |
  STA.B $00,X                               ; $85A1A5 |

CODE_85A1A7:
  LDA.W #$B880                              ; $85A1A7 |
  STA.B $34,X                               ; $85A1AA |
  JML.L CODE_FL_86C63F                      ; $85A1AC |

CODE_85A1B0:
  JML.L CODE_FL_85A646                      ; $85A1B0 |

CODE_85A1B4:
  LDA.B $32,X                               ; $85A1B4 |
  BPL CODE_85A1D1                           ; $85A1B6 |
  JSL.L CODE_FL_85A589                      ; $85A1B8 |
  LDA.W #$3000                              ; $85A1BC |
  CMP.B $00,X                               ; $85A1BF |
  BNE CODE_85A1D1                           ; $85A1C1 |
  LDA.B $4E,X                               ; $85A1C3 |
  STA.W $1C68                               ; $85A1C5 |
  LDA.W #$200A                              ; $85A1C8 |
  JSL.L CODE_FL_86CAEE                      ; $85A1CB |
  INC.B $1A,X                               ; $85A1CF |

CODE_85A1D1:
  STZ.B $32,X                               ; $85A1D1 |
  RTL                                       ; $85A1D3 |

CODE_85A1D4:
  JSL.L CODE_FL_86C239                      ; $85A1D4 |
  BCC CODE_85A1E9                           ; $85A1D8 |
  LDA.B $20,X                               ; $85A1DA |
  BNE CODE_85A1E9                           ; $85A1DC |
  STZ.B $32,X                               ; $85A1DE |
  DEC.B $1A,X                               ; $85A1E0 |
  LDA.W #$0034                              ; $85A1E2 |
  JSL.L CODE_FL_8089BD                      ; $85A1E5 |

CODE_85A1E9:
  RTL                                       ; $85A1E9 |

CODE_85A1EA:
  JSL.L CODE_FL_86C3F8                      ; $85A1EA |
  PHX                                       ; $85A1EE |
  ASL A                                     ; $85A1EF |
  TAX                                       ; $85A1F0 |
  LDA.L PTR16_85A1FB,X                      ; $85A1F1 |
  PLX                                       ; $85A1F5 |
  STA.B $00                                 ; $85A1F6 |
  JMP.W ($0000)                             ; $85A1F8 |

PTR16_85A1FB:
  dw CODE_85A201                            ; $85A1FB |
  dw CODE_85A229                            ; $85A1FD |
  dw CODE_85A1D4                            ; $85A1FF |

CODE_85A201:
  LDA.W #$0080                              ; $85A201 |
  STA.B $06,X                               ; $85A204 |
  LDA.W #$0043                              ; $85A206 |
  STA.B $02,X                               ; $85A209 |
  JSL.L CODE_FL_85AA07                      ; $85A20B |
  LDA.W #$3018                              ; $85A20F |
  STA.B $00,X                               ; $85A212 |
  JSR.W CODE_FN_85A249                      ; $85A214 |
  BEQ CODE_85A21E                           ; $85A217 |
  LDA.W #$3028                              ; $85A219 |
  STA.B $00,X                               ; $85A21C |

CODE_85A21E:
  LDA.B $34,X                               ; $85A21E |
  ORA.W #$B008                              ; $85A220 |
  STA.B $34,X                               ; $85A223 |
  JML.L CODE_FL_86C63F                      ; $85A225 |

CODE_85A229:
  LDA.B $32,X                               ; $85A229 |
  BPL CODE_85A246                           ; $85A22B |
  JSL.L CODE_FL_85A589                      ; $85A22D |
  LDA.W #$3018                              ; $85A231 |
  CMP.B $00,X                               ; $85A234 |
  BNE CODE_85A246                           ; $85A236 |
  LDA.B $4E,X                               ; $85A238 |
  STA.W $1C68                               ; $85A23A |
  LDA.W #$200C                              ; $85A23D |
  JSL.L CODE_FL_86CAEE                      ; $85A240 |
  INC.B $1A,X                               ; $85A244 |

CODE_85A246:
  STZ.B $32,X                               ; $85A246 |
  RTL                                       ; $85A248 |

CODE_FN_85A249:
  LDA.B $4E,X                               ; $85A249 |
  AND.W #$7FFF                              ; $85A24B |
  CMP.W $1C6A                               ; $85A24E |
  BEQ CODE_85A25D                           ; $85A251 |
  BCC CODE_85A25D                           ; $85A253 |
  LDA.L $7002AE                             ; $85A255 |
  BNE CODE_85A25D                           ; $85A259 |
  TDC                                       ; $85A25B |
  RTS                                       ; $85A25C |

CODE_85A25D:
  LDA.W #$0001                              ; $85A25D |
  RTS                                       ; $85A260 |

CODE_85A261:
  JSL.L CODE_FL_86C3C9                      ; $85A261 |

CODE_FL_85A265:
  LDA.B $1A,X                               ; $85A265 |
  PHX                                       ; $85A267 |
  ASL A                                     ; $85A268 |
  TAX                                       ; $85A269 |
  LDA.L PTR16_85A274,X                      ; $85A26A |
  PLX                                       ; $85A26E |
  STA.B $00                                 ; $85A26F |
  JMP.W ($0000)                             ; $85A271 |

PTR16_85A274:
  dw CODE_85A27E                            ; $85A274 |
  dw CODE_FL_85A348                         ; $85A276 |
  dw CODE_85A374                            ; $85A278 |
  dw CODE_85A385                            ; $85A27A |
  dw CODE_85A392                            ; $85A27C |

CODE_85A27E:
  JSL.L CODE_FL_86C7A5                      ; $85A27E |
  LDA.W #$32E6                              ; $85A282 |
  STA.B $00,X                               ; $85A285 |
  LDA.B $34,X                               ; $85A287 |
  ORA.W #$0880                              ; $85A289 |
  STA.B $34,X                               ; $85A28C |
  JSL.L CODE_FL_85AA07                      ; $85A28E |
  JSL.L CODE_FL_85AC74                      ; $85A292 |
  LDY.W #$0000                              ; $85A296 |
  LDA.B $4E,X                               ; $85A299 |
  AND.W #$0080                              ; $85A29B |
  BNE CODE_85A2A1                           ; $85A29E |
  DEY                                       ; $85A2A0 |

CODE_85A2A1:
  STY.B $3A,X                               ; $85A2A1 |
  LDA.B $4E,X                               ; $85A2A3 |
  AND.W #$007F                              ; $85A2A5 |
  ASL A                                     ; $85A2A8 |
  ASL A                                     ; $85A2A9 |
  ASL A                                     ; $85A2AA |
  TAY                                       ; $85A2AB |
  LDA.W LOOSE_OP_008874,Y                   ; $85A2AC |
  STA.B $3C,X                               ; $85A2AF |
  LDA.W CODE_008876,Y                       ; $85A2B1 |
  STA.B $3E,X                               ; $85A2B4 |
  ORA.B $3C,X                               ; $85A2B6 |
  ADC.W #$0010                              ; $85A2B8 |
  EOR.W #$FFFF                              ; $85A2BB |
  INC A                                     ; $85A2BE |
  STA.B $40,X                               ; $85A2BF |
  LDA.W LOOSE_OP_008878,Y                   ; $85A2C1 |
  STA.B $1A,X                               ; $85A2C4 |
  PHY                                       ; $85A2C6 |
  JSL.L CODE_FL_85A265                      ; $85A2C7 |
  PLY                                       ; $85A2CB |
  LDA.W CODE_00887A,Y                       ; $85A2CC |
  STA.B $2C,X                               ; $85A2CF |
  DEC.B $1A,X                               ; $85A2D1 |
  JML.L CODE_FL_86C63F                      ; $85A2D3 |

CODE_85A2D7:
  JSL.L CODE_FL_85F885                      ; $85A2D7 |
  JSL.L CODE_FL_86C3F8                      ; $85A2DB |
  PHX                                       ; $85A2DF |
  ASL A                                     ; $85A2E0 |
  TAX                                       ; $85A2E1 |
  LDA.L PTR16_85A2EC,X                      ; $85A2E2 |
  PLX                                       ; $85A2E6 |
  STA.B $00                                 ; $85A2E7 |
  JMP.W ($0000)                             ; $85A2E9 |

PTR16_85A2EC:
  dw CODE_85A2F6                            ; $85A2EC |
  dw CODE_FL_85A348                         ; $85A2EE |
  dw CODE_85A374                            ; $85A2F0 |
  dw CODE_85A385                            ; $85A2F2 |
  dw CODE_85A392                            ; $85A2F4 |

CODE_85A2F6:
  JSL.L CODE_FL_86C7A5                      ; $85A2F6 |
  JSL.L CODE_FL_86C444                      ; $85A2FA |
  LDA.W #$0067                              ; $85A2FE |
  JSL.L CODE_FL_86CAEE                      ; $85A301 |
  JSL.L CODE_FL_85A9EF                      ; $85A305 |
  JSL.L CODE_FL_85AA07                      ; $85A309 |
  LDY.W #$0000                              ; $85A30D |
  LDA.B $4E,X                               ; $85A310 |
  AND.W #$0080                              ; $85A312 |
  BNE CODE_85A318                           ; $85A315 |
  DEY                                       ; $85A317 |

CODE_85A318:
  STY.B $3A,X                               ; $85A318 |
  LDA.B $4E,X                               ; $85A31A |
  AND.W #$007F                              ; $85A31C |
  ASL A                                     ; $85A31F |
  ASL A                                     ; $85A320 |
  TAY                                       ; $85A321 |
  LDA.W LOOSE_OP_0088B4,Y                   ; $85A322 |
  STA.B $3C,X                               ; $85A325 |
  LDA.W LOOSE_OP_0088B6,Y                   ; $85A327 |
  STA.B $3E,X                               ; $85A32A |
  ORA.B $3C,X                               ; $85A32C |
  ADC.W #$0010                              ; $85A32E |
  EOR.W #$FFFF                              ; $85A331 |
  INC A                                     ; $85A334 |
  STA.B $40,X                               ; $85A335 |
  JSL.L CODE_FL_85A348                      ; $85A337 |
  JML.L CODE_FL_86C63F                      ; $85A33B |

CODE_FL_85A33F:
  LDY.B $3A,X                               ; $85A33F |
  BPL CODE_85A347                           ; $85A341 |
  EOR.W #$FFFF                              ; $85A343 |
  INC A                                     ; $85A346 |

CODE_85A347:
  RTL                                       ; $85A347 |

CODE_FL_85A348:
  JSL.L CODE_FL_86C70D                      ; $85A348 |
  JSL.L CODE_FL_86C899                      ; $85A34C |
  LDA.W #$FF00                              ; $85A350 |

CODE_85A353:
  JSL.L CODE_FL_85A33F                      ; $85A353 |
  STA.B $26,X                               ; $85A357 |
  LDA.B $3C,X                               ; $85A359 |

CODE_85A35B:
  STA.B $2C,X                               ; $85A35B |
  LDA.B $40,X                               ; $85A35D |
  JSL.L CODE_FL_86CB2D                      ; $85A35F |
  BCS CODE_85A369                           ; $85A363 |
  JML.L CODE_FL_86CA36                      ; $85A365 |

CODE_85A369:
  LDA.B $2C,X                               ; $85A369 |
  BNE CODE_85A371                           ; $85A36B |
  JSL.L CODE_FL_86C899                      ; $85A36D |

CODE_85A371:
  INC.B $1A,X                               ; $85A371 |
  RTL                                       ; $85A373 |

CODE_85A374:
  JSL.L CODE_FL_86C70D                      ; $85A374 |
  JSL.L CODE_FL_86C899                      ; $85A378 |
  LDA.W #$0100                              ; $85A37C |

CODE_FL_85A37F:
  STA.B $28,X                               ; $85A37F |
  LDA.B $3E,X                               ; $85A381 |
  BRA CODE_85A35B                           ; $85A383 |

CODE_85A385:
  JSL.L CODE_FL_86C70D                      ; $85A385 |
  JSL.L CODE_FL_86C899                      ; $85A389 |
  LDA.W #$0100                              ; $85A38D |
  BRA CODE_85A353                           ; $85A390 |

CODE_85A392:
  JSL.L CODE_FL_86C70D                      ; $85A392 |
  JSL.L CODE_FL_86C899                      ; $85A396 |
  LDA.W #$FF00                              ; $85A39A |
  JSL.L CODE_FL_85A37F                      ; $85A39D |
  LDA.W #$0001                              ; $85A3A1 |
  STA.B $1A,X                               ; $85A3A4 |
  RTL                                       ; $85A3A6 |

CODE_85A3A7:
  JSL.L CODE_FL_86C3B0                      ; $85A3A7 |
  PHX                                       ; $85A3AB |
  ASL A                                     ; $85A3AC |
  TAX                                       ; $85A3AD |
  LDA.L PTR16_85A3B8,X                      ; $85A3AE |
  PLX                                       ; $85A3B2 |
  STA.B $00                                 ; $85A3B3 |
  JMP.W ($0000)                             ; $85A3B5 |

PTR16_85A3B8:
  dw CODE_85A3C0                            ; $85A3B8 |
  dw CODE_85A3D8                            ; $85A3BA |
  dw CODE_85A3E5                            ; $85A3BC |
  dw CODE_85A3F0                            ; $85A3BE |

CODE_85A3C0:
  JSL.L CODE_FL_86C7A5                      ; $85A3C0 |
  JSL.L CODE_FL_86C36A                      ; $85A3C4 |
  JSL.L CODE_FL_85AA07                      ; $85A3C8 |
  LDA.B $34,X                               ; $85A3CC |
  ORA.W #$0888                              ; $85A3CE |
  STA.B $34,X                               ; $85A3D1 |
  JML.L CODE_FL_86C63F                      ; $85A3D3 |

  RTL                                       ; $85A3D7 |

CODE_85A3D8:
  LDA.B $46,X                               ; $85A3D8 |
  BMI CODE_85A3DD                           ; $85A3DA |
  RTL                                       ; $85A3DC |

CODE_85A3DD:
  LDA.W #$0020                              ; $85A3DD |
  STA.B $2C,X                               ; $85A3E0 |
  INC.B $1A,X                               ; $85A3E2 |
  RTL                                       ; $85A3E4 |

CODE_85A3E5:
  JSL.L CODE_FL_86C393                      ; $85A3E5 |
  JSL.L CODE_FL_86C70D                      ; $85A3E9 |
  INC.B $1A,X                               ; $85A3ED |
  RTL                                       ; $85A3EF |

CODE_85A3F0:
  JSL.L CODE_FL_858AF1                      ; $85A3F0 |
  BNE CODE_85A3FB                           ; $85A3F4 |
  JSL.L CODE_FL_86C82F                      ; $85A3F6 |
  RTL                                       ; $85A3FA |

CODE_85A3FB:
  STZ.B $28,X                               ; $85A3FB |
  RTL                                       ; $85A3FD |

CODE_85A3FE:
  JSL.L CODE_FL_86C424                      ; $85A3FE |
  PHX                                       ; $85A402 |
  ASL A                                     ; $85A403 |
  TAX                                       ; $85A404 |
  LDA.L PTR16_85A40F,X                      ; $85A405 |
  PLX                                       ; $85A409 |
  STA.B $00                                 ; $85A40A |
  JMP.W ($0000)                             ; $85A40C |

PTR16_85A40F:
  dw CODE_85A415                            ; $85A40F |
  dw CODE_85A475                            ; $85A411 |
  dw CODE_85A4BC                            ; $85A413 |

CODE_85A415:
  STZ.B $22,X                               ; $85A415 |
  JSL.L CODE_FL_85A4BD                      ; $85A417 |
  LDA.W #$0013                              ; $85A41B |
  STA.W $1FBE                               ; $85A41E |
  LDA.W #$0090                              ; $85A421 |
  STA.W $19B4                               ; $85A424 |
  LDA.W #$0001                              ; $85A427 |
  STA.B $92                                 ; $85A42A |
  STZ.B $12                                 ; $85A42C |
  LDA.W #$0008                              ; $85A42E |
  JSR.W CODE_FN_85A450                      ; $85A431 |
  LDA.W #$0018                              ; $85A434 |
  JSR.W CODE_FN_85A450                      ; $85A437 |
  LDA.W #$00E8                              ; $85A43A |
  JSR.W CODE_FN_85A450                      ; $85A43D |
  LDA.W #$00F8                              ; $85A440 |
  JSR.W CODE_FN_85A450                      ; $85A443 |
  LDY.W #$0200                              ; $85A446 |
  JSL.L CODE_FL_80972B                      ; $85A449 |
  INC.B $1A,X                               ; $85A44D |
  RTL                                       ; $85A44F |

CODE_FN_85A450:
  PHA                                       ; $85A450 |
  LDA.W #$00B1                              ; $85A451 |
  JSL.L CODE_FL_86C9A4                      ; $85A454 |
  BCS CODE_85A473                           ; $85A458 |
  PLA                                       ; $85A45A |
  STA.W $0009,Y                             ; $85A45B |
  LDA.W #$00A4                              ; $85A45E |
  STA.W $000D,Y                             ; $85A461 |
  TDC                                       ; $85A464 |
  STA.W $0022,Y                             ; $85A465 |
  LDA.B $12                                 ; $85A468 |
  STA.W $002C,Y                             ; $85A46A |
  ADC.W #$0008                              ; $85A46D |
  STA.B $12                                 ; $85A470 |
  RTS                                       ; $85A472 |

CODE_85A473:
  PLA                                       ; $85A473 |
  RTS                                       ; $85A474 |

CODE_85A475:
  INC.B $3C,X                               ; $85A475 |
  LDA.B $3C,X                               ; $85A477 |
  CMP.W #$000A                              ; $85A479 |
  BCC CODE_85A487                           ; $85A47C |
  LDA.W #$0021                              ; $85A47E |
  JSL.L push_sound_queue                    ; $85A481 |
  STZ.B $3C,X                               ; $85A485 |

CODE_85A487:
  TDC                                       ; $85A487 |
  DEC.B $3A,X                               ; $85A488 |
  BPL CODE_85A494                           ; $85A48A |
  LDA.W #$0002                              ; $85A48C |
  STA.B $3A,X                               ; $85A48F |
  LDA.W #$FFFF                              ; $85A491 |

CODE_85A494:
  STA.W $1962                               ; $85A494 |
  JSL.L CODE_FL_85A4BD                      ; $85A497 |
  SEC                                       ; $85A49B |
  LDA.W $1690                               ; $85A49C |
  SBC.W #$8000                              ; $85A49F |
  STA.W $1690                               ; $85A4A2 |
  BCS CODE_85A4AA                           ; $85A4A5 |
  DEC.W $1692                               ; $85A4A7 |

CODE_85A4AA:
  LDA.W $1672                               ; $85A4AA |
  CMP.W #$0100                              ; $85A4AD |
  BNE CODE_85A4BB                           ; $85A4B0 |
  INC.B $1A,X                               ; $85A4B2 |
  LDA.W #$001B                              ; $85A4B4 |
  JSL.L push_sound_queue                    ; $85A4B7 |

CODE_85A4BB:
  RTL                                       ; $85A4BB |

CODE_85A4BC:
  RTL                                       ; $85A4BC |

CODE_FL_85A4BD:
  PHX                                       ; $85A4BD |
  LDX.W #$DAC2                              ; $85A4BE |
  LDA.L $7EDAC0                             ; $85A4C1 |
  BNE CODE_85A4CA                           ; $85A4C5 |
  LDX.W #$DAE2                              ; $85A4C7 |

CODE_85A4CA:
  LDA.W #$007F                              ; $85A4CA |
  STA.L $7E0000,X                           ; $85A4CD |
  TDC                                       ; $85A4D1 |
  STA.L $7E0001,X                           ; $85A4D2 |
  LDA.W $1692                               ; $85A4D6 |
  STA.L $7E0003,X                           ; $85A4D9 |
  LDA.W #$0010                              ; $85A4DD |
  STA.L $7E0005,X                           ; $85A4E0 |
  TDC                                       ; $85A4E4 |
  STA.L $7E0006,X                           ; $85A4E5 |
  LDA.W $1692                               ; $85A4E9 |
  STA.L $7E0008,X                           ; $85A4EC |
  LDA.W #$0020                              ; $85A4F0 |
  STA.L $7E000A,X                           ; $85A4F3 |
  LDA.W $1C38                               ; $85A4F7 |
  AND.W #$0001                              ; $85A4FA |
  ORA.W #$0100                              ; $85A4FD |
  STA.L $7E000B,X                           ; $85A500 |
  LDA.W #$0000                              ; $85A504 |
  STA.L $7E000D,X                           ; $85A507 |
  LDA.W #$0001                              ; $85A50B |
  STA.L $7E000F,X                           ; $85A50E |
  TDC                                       ; $85A512 |
  STA.L $7E0010,X                           ; $85A513 |
  LDA.W $1692                               ; $85A517 |
  STA.L $7E0012,X                           ; $85A51A |
  LDA.W #$0000                              ; $85A51E |
  STA.L $7E0014,X                           ; $85A521 |
  PLX                                       ; $85A525 |
  LDA.L $7EDAC0                             ; $85A526 |
  EOR.W #$0001                              ; $85A52A |
  STA.L $7EDAC0                             ; $85A52D |
  RTL                                       ; $85A531 |

CODE_85A532:
  JSL.L CODE_FL_86C3F8                      ; $85A532 |
  JSL.L CODE_FL_86C70D                      ; $85A536 |
  LDA.W #$00B2                              ; $85A53A |
  JSL.L CODE_FL_86C9C5                      ; $85A53D |
  BCS CODE_85A566                           ; $85A541 |
  LDA.W #$0044                              ; $85A543 |
  JSL.L CODE_FL_86CAE6                      ; $85A546 |
  LDA.W #$0080                              ; $85A54A |
  STA.W $0028,Y                             ; $85A54D |
  LDA.W #$0043                              ; $85A550 |
  STA.W $0002,Y                             ; $85A553 |
  LDA.W #$1898                              ; $85A556 |
  STA.W $0004,Y                             ; $85A559 |
  LDA.B $86                                 ; $85A55C |
  AND.W #$000F                              ; $85A55E |
  ADC.B $0D,X                               ; $85A561 |
  STA.W $000D,Y                             ; $85A563 |

CODE_85A566:
  LDA.W #$0010                              ; $85A566 |
  STA.B $2C,X                               ; $85A569 |
  LDA.W $1672                               ; $85A56B |
  CMP.W #$0100                              ; $85A56E |
  BNE CODE_85A577                           ; $85A571 |
  JSL.L CODE_FL_86CA36                      ; $85A573 |

CODE_85A577:
  RTL                                       ; $85A577 |

CODE_85A578:
  JSL.L CODE_FL_97FC80                      ; $85A578 |
  JSL.L CODE_FL_86C855                      ; $85A57C |
  LDA.B $20,X                               ; $85A580 |
  BNE CODE_85A588                           ; $85A582 |
  JSL.L CODE_FL_86CA36                      ; $85A584 |

CODE_85A588:
  RTL                                       ; $85A588 |

CODE_FL_85A589:
  LDA.B $38,X                               ; $85A589 |
  BEQ CODE_85A5A6                           ; $85A58B |
  CMP.W #$0018                              ; $85A58D |
  BNE CODE_85A5A6                           ; $85A590 |
  LDA.W #$000C                              ; $85A592 |
  JML.L push_sound_queue                    ; $85A595 |

  LDA.B $38,X                               ; $85A599 |
  BEQ CODE_85A5A6                           ; $85A59B |
  CMP.W #$0018                              ; $85A59D |
  BNE CODE_85A5A6                           ; $85A5A0 |
  JSL.L CODE_FL_85A5A7                      ; $85A5A2 |

CODE_85A5A6:
  RTL                                       ; $85A5A6 |

CODE_FL_85A5A7:
  LDA.B $37,X                               ; $85A5A7 |
  AND.W #$00FF                              ; $85A5A9 |
  CMP.W #$0003                              ; $85A5AC |
  BEQ CODE_85A5BD                           ; $85A5AF |
  CMP.W #$000A                              ; $85A5B1 |
  BEQ CODE_85A5BD                           ; $85A5B4 |
  LDA.W #$000C                              ; $85A5B6 |
  JML.L push_sound_queue                    ; $85A5B9 |

CODE_85A5BD:
  LDA.W #$000F                              ; $85A5BD |
  JML.L push_sound_queue                    ; $85A5C0 |

CODE_FL_85A5C4:
  LDA.W #$003F                              ; $85A5C4 |
  STA.B $14,X                               ; $85A5C7 |
  RTL                                       ; $85A5C9 |

CODE_FL_85A5CA:
  LDA.B $14,X                               ; $85A5CA |
  DEC A                                     ; $85A5CC |
  STA.B $14,X                               ; $85A5CD |
  RTL                                       ; $85A5CF |

CODE_FL_85A5D0:
  LDA.B $14,X                               ; $85A5D0 |
  INC A                                     ; $85A5D2 |
  STA.B $14,X                               ; $85A5D3 |
  RTL                                       ; $85A5D5 |

  STA.B $00                                 ; $85A5D6 |
  LDA.B ($48,X)                             ; $85A5D8 |
  TAY                                       ; $85A5DA |
  LDA.W $000D,Y                             ; $85A5DB |
  SBC.B $0D,X                               ; $85A5DE |
  BPL CODE_85A5E6                           ; $85A5E0 |
  EOR.W #$FFFF                              ; $85A5E2 |
  INC A                                     ; $85A5E5 |

CODE_85A5E6:
  CMP.W #$00A0                              ; $85A5E6 |
  BCS CODE_85A5F1                           ; $85A5E9 |
  LDA.B $00                                 ; $85A5EB |
  JSL.L CODE_FL_8089BD                      ; $85A5ED |

CODE_85A5F1:
  RTL                                       ; $85A5F1 |

CODE_FL_85A5F2:
  JSL.L CODE_FL_86C82F                      ; $85A5F2 |
  JSL.L CODE_FL_858A98                      ; $85A5F6 |
  BNE CODE_85A5FF                           ; $85A5FA |
  JMP.W CODE_JP_85A67F                      ; $85A5FC |

CODE_85A5FF:
  INC.B $1A,X                               ; $85A5FF |
  BRA CODE_85A652                           ; $85A601 |

CODE_FL_85A603:
  JSL.L CODE_FL_86C82F                      ; $85A603 |

CODE_FL_85A607:
  JSL.L CODE_FL_858B18                      ; $85A607 |
  BEQ CODE_JP_85A67F                        ; $85A60B |
  BRA CODE_85A652                           ; $85A60D |

CODE_FL_85A60F:
  JSL.L CODE_FL_86C82F                      ; $85A60F |
  JSL.L CODE_FL_858B18                      ; $85A613 |
  BEQ CODE_JP_85A67F                        ; $85A617 |
  INC.B $1A,X                               ; $85A619 |
  BRA CODE_85A652                           ; $85A61B |

CODE_FL_85A61D:
  JSL.L CODE_FL_86C82F                      ; $85A61D |
  JSL.L CODE_FL_858B01                      ; $85A621 |
  BEQ CODE_JP_85A67F                        ; $85A625 |
  INC.B $1A,X                               ; $85A627 |
  STZ.W $1C14                               ; $85A629 |
  BRA CODE_85A652                           ; $85A62C |

CODE_FL_85A62E:
  JSL.L CODE_FL_86C82F                      ; $85A62E |
  JSL.L CODE_FL_858B3B                      ; $85A632 |
  BEQ CODE_JP_85A67F                        ; $85A636 |
  BRA CODE_85A652                           ; $85A638 |

CODE_FL_85A63A:
  JSL.L CODE_FL_86C82F                      ; $85A63A |
  JSL.L CODE_FL_858A98                      ; $85A63E |
  BEQ CODE_JP_85A67F                        ; $85A642 |
  BRA CODE_85A652                           ; $85A644 |

CODE_FL_85A646:
  JSL.L CODE_FL_86C82F                      ; $85A646 |
  JSL.L CODE_FL_858B3B                      ; $85A64A |
  BEQ CODE_JP_85A67F                        ; $85A64E |
  INC.B $1A,X                               ; $85A650 |

CODE_85A652:
  LDA.W $1C1A                               ; $85A652 |
  BEQ CODE_85A66A                           ; $85A655 |
  LDA.B $34,X                               ; $85A657 |
  AND.W #$0040                              ; $85A659 |
  BEQ CODE_85A66A                           ; $85A65C |
  JSL.L CODE_FL_85F9C1                      ; $85A65E |
  LDA.W $0002,Y                             ; $85A662 |
  AND.W #$00FF                              ; $85A665 |
  STA.B $1A,X                               ; $85A668 |

CODE_85A66A:
  STZ.B $28,X                               ; $85A66A |

CODE_FL_85A66C:
  LDA.W $1C14                               ; $85A66C |
  BEQ CODE_85A67C                           ; $85A66F |

CODE_FL_85A671:
  CLC                                       ; $85A671 |
  LDA.B $0D,X                               ; $85A672 |
  ADC.W $1C20                               ; $85A674 |
  ADC.W $1C24                               ; $85A677 |
  STA.B $0D,X                               ; $85A67A |

CODE_85A67C:
  LDA.W #$0001                              ; $85A67C |

CODE_JP_85A67F:
  RTL                                       ; $85A67F |

  JSL.L CODE_FL_858B4E                      ; $85A680 |
  BNE CODE_85A68A                           ; $85A684 |
  JSL.L CODE_FL_86CB6A                      ; $85A686 |

CODE_85A68A:
  RTL                                       ; $85A68A |

  JSL.L CODE_FL_858B64                      ; $85A68B |
  BEQ CODE_85A68A                           ; $85A68F |
  JML.L CODE_FL_86CB6A                      ; $85A691 |

CODE_FL_85A695:
  JSL.L CODE_FL_858B70                      ; $85A695 |
  BEQ CODE_85A6A0                           ; $85A699 |
  LDA.W $1C12                               ; $85A69B |
  BEQ CODE_85A68A                           ; $85A69E |

CODE_85A6A0:
  JML.L CODE_FL_86CB6A                      ; $85A6A0 |

  JSL.L CODE_FL_858BFC                      ; $85A6A4 |
  BEQ CODE_JP_85A67F                        ; $85A6A8 |
  BRA CODE_85A652                           ; $85A6AA |

CODE_FL_85A6AC:
  JSL.L CODE_FL_858C48                      ; $85A6AC |
  BEQ CODE_JP_85A67F                        ; $85A6B0 |
  BRA CODE_85A652                           ; $85A6B2 |

CODE_FL_85A6B4:
  LDA.B $04,X                               ; $85A6B4 |
  AND.W #$0020                              ; $85A6B6 |
  BEQ CODE_85A6C2                           ; $85A6B9 |
  CLC                                       ; $85A6BB |
  LDA.B $09,X                               ; $85A6BC |
  ADC.B $0A                                 ; $85A6BE |
  BRA CODE_85A6C7                           ; $85A6C0 |

CODE_85A6C2:
  SEC                                       ; $85A6C2 |
  LDA.B $09,X                               ; $85A6C3 |
  SBC.B $0A                                 ; $85A6C5 |

CODE_85A6C7:
  STA.B $01                                 ; $85A6C7 |
  CLC                                       ; $85A6C9 |
  LDA.B $0D,X                               ; $85A6CA |
  ADC.B $0C                                 ; $85A6CC |
  STA.B $04                                 ; $85A6CE |
  LDA.W $1B72                               ; $85A6D0 |
  STA.B $08                                 ; $85A6D3 |
  LDA.W $1B70                               ; $85A6D5 |

CODE_85A6D8:
  TAY                                       ; $85A6D8 |
  LDA.W $0033,Y                             ; $85A6D9 |
  BPL CODE_85A708                           ; $85A6DC |
  LDA.W $002E,Y                             ; $85A6DE |
  CLC                                       ; $85A6E1 |
  ADC.B $0E                                 ; $85A6E2 |
  STA.B $10                                 ; $85A6E4 |
  ADC.B $01                                 ; $85A6E6 |
  SEC                                       ; $85A6E8 |
  SBC.W $0009,Y                             ; $85A6E9 |
  ASL.B $10                                 ; $85A6EC |
  CMP.B $10                                 ; $85A6EE |
  BCS CODE_85A706                           ; $85A6F0 |
  LDA.W $0030,Y                             ; $85A6F2 |
  CLC                                       ; $85A6F5 |
  ADC.B $10                                 ; $85A6F6 |
  STA.B $10                                 ; $85A6F8 |
  LDA.B $04                                 ; $85A6FA |
  CLC                                       ; $85A6FC |
  ADC.W $0030,Y                             ; $85A6FD |
  SEC                                       ; $85A700 |
  SBC.W $000D,Y                             ; $85A701 |
  CMP.B $10                                 ; $85A704 |

CODE_85A706:
  BCC CODE_85A710                           ; $85A706 |

CODE_85A708:
  LDA.W $0016,Y                             ; $85A708 |
  CMP.B $08                                 ; $85A70B |
  BNE CODE_85A6D8                           ; $85A70D |
  SEC                                       ; $85A70F |

CODE_85A710:
  RTL                                       ; $85A710 |

CODE_FL_85A711:
  LDY.W #$04C0                              ; $85A711 |
  LDA.B $32,X                               ; $85A714 |
  AND.W #$1000                              ; $85A716 |
  BNE CODE_85A71E                           ; $85A719 |
  LDY.W #$0400                              ; $85A71B |

CODE_85A71E:
  RTL                                       ; $85A71E |

CODE_FL_85A71F:
  LDA.B $37,X                               ; $85A71F |
  AND.W #$00FF                              ; $85A721 |
  PHX                                       ; $85A724 |
  ASL A                                     ; $85A725 |
  TAX                                       ; $85A726 |
  LDA.L PTR16_85A731,X                      ; $85A727 |
  PLX                                       ; $85A72B |
  STA.B $00                                 ; $85A72C |
  JMP.W ($0000)                             ; $85A72E |

PTR16_85A731:
  dw CODE_85A751                            ; $85A731 |
  dw CODE_85A771                            ; $85A733 |
  dw CODE_85A784                            ; $85A735 |
  dw CODE_85A751                            ; $85A737 |
  dw CODE_85A751                            ; $85A739 |
  dw CODE_85A751                            ; $85A73B |
  dw CODE_85A751                            ; $85A73D |
  dw CODE_85A751                            ; $85A73F |
  dw CODE_85A751                            ; $85A741 |
  dw CODE_85A751                            ; $85A743 |
  dw CODE_85A751                            ; $85A745 |
  dw CODE_85A751                            ; $85A747 |
  dw CODE_85A751                            ; $85A749 |
  dw CODE_85A751                            ; $85A74B |
  dw CODE_85A751                            ; $85A74D |
  dw CODE_85A751                            ; $85A74F |

CODE_85A751:
  LDA.W #$000D                              ; $85A751 |
  JSL.L push_sound_queue                    ; $85A754 |
  LDA.B $22,X                               ; $85A758 |
  AND.W #$0004                              ; $85A75A |
  BNE CODE_85A771                           ; $85A75D |
  LDA.W #$0039                              ; $85A75F |
  STA.B $14                                 ; $85A762 |
  LDA.B $22,X                               ; $85A764 |
  AND.W #$0040                              ; $85A766 |
  BNE CODE_85A77D                           ; $85A769 |
  LDA.B $02,X                               ; $85A76B |
  STA.B $16                                 ; $85A76D |
  BRA CODE_85A795                           ; $85A76F |

CODE_85A771:
  LDA.W #$0030                              ; $85A771 |
  JSL.L CODE_FL_8089BD                      ; $85A774 |
  LDA.W #$003A                              ; $85A778 |
  STA.B $14                                 ; $85A77B |

CODE_85A77D:
  LDA.W #$0043                              ; $85A77D |
  STA.B $16                                 ; $85A780 |
  BRA CODE_85A795                           ; $85A782 |

CODE_85A784:
  LDA.W #$003A                              ; $85A784 |
  STA.B $14                                 ; $85A787 |
  LDA.W #$0043                              ; $85A789 |
  STA.B $16                                 ; $85A78C |
  LDA.W #$001D                              ; $85A78E |
  STA.B $1A                                 ; $85A791 |
  BRA CODE_85A79A                           ; $85A793 |

CODE_85A795:
  LDA.W #$001E                              ; $85A795 |
  STA.B $1A                                 ; $85A798 |

CODE_85A79A:
  STZ.B $18                                 ; $85A79A |
  JSL.L CODE_FL_85A8C3                      ; $85A79C |
  JSL.L CODE_FL_85AB0B                      ; $85A7A0 |
  SEC                                       ; $85A7A4 |
  LDA.W $0009,Y                             ; $85A7A5 |
  SBC.B $09,X                               ; $85A7A8 |
  BCS CODE_85A7B1                           ; $85A7AA |
  LDA.W #$0002                              ; $85A7AC |
  STA.B $18                                 ; $85A7AF |

CODE_85A7B1:
  LDA.W #$001F                              ; $85A7B1 |
  JSL.L CODE_FL_86C9C5                      ; $85A7B4 |
  BCC CODE_85A7BD                           ; $85A7B8 |
  JMP.W CODE_JP_85A841                      ; $85A7BA |

CODE_85A7BD:
  LDA.W #$003B                              ; $85A7BD |
  JSL.L CODE_FL_86CAE6                      ; $85A7C0 |
  LDA.W #$0043                              ; $85A7C4 |
  STA.W $0002,Y                             ; $85A7C7 |
  LDA.W $0004,Y                             ; $85A7CA |
  ORA.W #$1898                              ; $85A7CD |
  STA.W $0004,Y                             ; $85A7D0 |
  LDA.W #$0005                              ; $85A7D3 |
  STA.B $10                                 ; $85A7D6 |
  CLC                                       ; $85A7D8 |
  LDA.W #$0014                              ; $85A7D9 |
  ADC.B $18                                 ; $85A7DC |
  STA.B $12                                 ; $85A7DE |

CODE_85A7E0:
  LDA.B $1A                                 ; $85A7E0 |
  JSL.L CODE_FL_86C9C5                      ; $85A7E2 |
  BCS CODE_JP_85A841                        ; $85A7E6 |
  PHY                                       ; $85A7E8 |
  LDA.B $12                                 ; $85A7E9 |
  SEC                                       ; $85A7EB |
  SBC.W #$0018                              ; $85A7EC |
  ASL A                                     ; $85A7EF |
  BPL CODE_85A7F6                           ; $85A7F0 |
  EOR.W #$FFFF                              ; $85A7F2 |
  INC A                                     ; $85A7F5 |

CODE_85A7F6:
  STA.B $00                                 ; $85A7F6 |
  JSL.L CODE_FL_86C432                      ; $85A7F8 |
  AND.W #$000F                              ; $85A7FC |
  CLC                                       ; $85A7FF |
  ADC.W #$0020                              ; $85A800 |
  SBC.B $00                                 ; $85A803 |
  TAY                                       ; $85A805 |
  CLC                                       ; $85A806 |
  LDA.B $12                                 ; $85A807 |
  ADC.W #$0001                              ; $85A809 |
  STA.B $12                                 ; $85A80C |
  JSL.L CODE_FL_8AB4B3                      ; $85A80E |
  PLY                                       ; $85A812 |
  LDA.B $00                                 ; $85A813 |
  STA.W $0026,Y                             ; $85A815 |
  LDA.B $02                                 ; $85A818 |
  STA.W $0028,Y                             ; $85A81A |
  LDA.W #$0040                              ; $85A81D |
  STA.W $002C,Y                             ; $85A820 |
  LDA.W #$0000                              ; $85A823 |
  STA.W $0006,Y                             ; $85A826 |
  LDA.B $16                                 ; $85A829 |
  STA.W $0002,Y                             ; $85A82B |
  LDA.B $14                                 ; $85A82E |
  JSL.L CODE_FL_86CAE6                      ; $85A830 |
  LDA.W $0004,Y                             ; $85A834 |
  ORA.W #$1898                              ; $85A837 |
  STA.W $0004,Y                             ; $85A83A |
  DEC.B $10                                 ; $85A83D |
  BNE CODE_85A7E0                           ; $85A83F |

CODE_JP_85A841:
  LDX.B $FC                                 ; $85A841 |
  RTL                                       ; $85A843 |

  RTL                                       ; $85A844 |

CODE_FL_85A845:
  LDA.B $22,X                               ; $85A845 |
  ORA.W #$0040                              ; $85A847 |
  STA.B $22,X                               ; $85A84A |
  RTL                                       ; $85A84C |

CODE_FL_85A84D:
  LDA.B $2C,X                               ; $85A84D |
  CMP.W #$0020                              ; $85A84F |
  BCC CODE_85A85F                           ; $85A852 |
  CMP.W #$0040                              ; $85A854 |
  BCC CODE_85A879                           ; $85A857 |
  CMP.W #$00A0                              ; $85A859 |
  BCC CODE_85A87E                           ; $85A85C |
  RTL                                       ; $85A85E |

CODE_85A85F:
  LDA.B $2C,X                               ; $85A85F |
  AND.W #$0001                              ; $85A861 |
  STA.B $00                                 ; $85A864 |
  CLC                                       ; $85A866 |
  LDA.B $09,X                               ; $85A867 |
  ADC.W $1662                               ; $85A869 |
  EOR.B $00                                 ; $85A86C |
  SEC                                       ; $85A86E |
  SBC.W $1662                               ; $85A86F |
  STA.B $09,X                               ; $85A872 |
  LDA.W #$0002                              ; $85A874 |
  BRA CODE_85A881                           ; $85A877 |

CODE_85A879:
  LDA.W #$0004                              ; $85A879 |
  BRA CODE_85A881                           ; $85A87C |

CODE_85A87E:
  LDA.W #$0008                              ; $85A87E |

CODE_85A881:
  STA.B $00                                 ; $85A881 |
  LDA.B $2A,X                               ; $85A883 |
  STA.B $02,X                               ; $85A885 |
  LDA.B $2C,X                               ; $85A887 |
  AND.B $00                                 ; $85A889 |
  BEQ CODE_85A892                           ; $85A88B |
  LDA.W #$0047                              ; $85A88D |
  STA.B $02,X                               ; $85A890 |

CODE_85A892:
  RTL                                       ; $85A892 |

CODE_FL_85A893:
  LDA.B $02,X                               ; $85A893 |
  EOR.W #$0080                              ; $85A895 |
  STA.B $02,X                               ; $85A898 |
  RTL                                       ; $85A89A |

CODE_FL_85A89B:
  LDA.B $38,X                               ; $85A89B |
  BEQ CODE_85A8B3                           ; $85A89D |

CODE_85A89F:
  SEP #$20                                  ; $85A89F |
  ROR A                                     ; $85A8A1 |
  ROR A                                     ; $85A8A2 |
  REP #$20                                  ; $85A8A3 |
  AND.W #$0080                              ; $85A8A5 |
  STA.B $00                                 ; $85A8A8 |
  LDA.B $02,X                               ; $85A8AA |
  ORA.W #$0080                              ; $85A8AC |
  EOR.B $00                                 ; $85A8AF |
  STA.B $02,X                               ; $85A8B1 |

CODE_85A8B3:
  RTL                                       ; $85A8B3 |

  LDA.B $38,X                               ; $85A8B4 |
  BEQ CODE_85A8B3                           ; $85A8B6 |
  CMP.W #$0018                              ; $85A8B8 |
  BNE CODE_85A89F                           ; $85A8BB |
  JSL.L CODE_FL_85A5A7                      ; $85A8BD |
  BRA CODE_85A89F                           ; $85A8C1 |

CODE_FL_85A8C3:
  LDA.B $32,X                               ; $85A8C3 |
  AND.W #$01FF                              ; $85A8C5 |
  ASL A                                     ; $85A8C8 |
  ASL A                                     ; $85A8C9 |
  ASL A                                     ; $85A8CA |
  ASL A                                     ; $85A8CB |
  TAY                                       ; $85A8CC |
  RTL                                       ; $85A8CD |

CODE_FL_85A8CE:
  LDA.B $22,X                               ; $85A8CE |
  ORA.W #$0800                              ; $85A8D0 |
  STA.B $22,X                               ; $85A8D3 |
  RTL                                       ; $85A8D5 |

CODE_FL_85A8D6:
  LDA.B $22,X                               ; $85A8D6 |
  ORA.W #$0008                              ; $85A8D8 |
  STA.B $22,X                               ; $85A8DB |
  RTL                                       ; $85A8DD |

CODE_FL_85A8DE:
  LDA.B $22,X                               ; $85A8DE |
  ORA.W #$0020                              ; $85A8E0 |
  STA.B $22,X                               ; $85A8E3 |
  RTL                                       ; $85A8E5 |

CODE_FL_85A8E6:
  JSL.L CODE_FL_85A8C3                      ; $85A8E6 |
  LDA.W $004E,Y                             ; $85A8EA |
  ASL A                                     ; $85A8ED |
  TAY                                       ; $85A8EE |
  LDA.W LOOSE_OP_00A2ED,Y                   ; $85A8EF |
  TAY                                       ; $85A8F2 |
  RTL                                       ; $85A8F3 |

CODE_FL_85A8F4:
  LDA.B $34,X                               ; $85A8F4 |
  AND.W #$2000                              ; $85A8F6 |
  ORA.W #$8880                              ; $85A8F9 |
  STA.B $34,X                               ; $85A8FC |
  LDA.B $22,X                               ; $85A8FE |
  ORA.W #$0004                              ; $85A900 |
  STA.B $22,X                               ; $85A903 |
  LDA.B $02,X                               ; $85A905 |
  STA.B $2A,X                               ; $85A907 |
  LDA.B $22,X                               ; $85A909 |
  ORA.W #$0001                              ; $85A90B |
  STA.B $22,X                               ; $85A90E |
  STZ.B $26,X                               ; $85A910 |
  STZ.B $28,X                               ; $85A912 |
  JSL.L CODE_FL_86C596                      ; $85A914 |
  LDA.W #$0180                              ; $85A918 |
  STA.B $2C,X                               ; $85A91B |
  LDA.W #$0014                              ; $85A91D |
  JSL.L CODE_FL_8089BD                      ; $85A920 |
  INC.B $1A,X                               ; $85A924 |
  RTL                                       ; $85A926 |

CODE_FL_85A927:
  LDA.B $22,X                               ; $85A927 |
  AND.W #$FFFB                              ; $85A929 |
  STA.B $22,X                               ; $85A92C |
  LDA.B $34,X                               ; $85A92E |
  AND.W #$F77F                              ; $85A930 |
  ORA.W #$4000                              ; $85A933 |
  STA.B $34,X                               ; $85A936 |
  RTL                                       ; $85A938 |

CODE_FL_85A939:
  LDA.W #$001B                              ; $85A939 |
  JSL.L push_sound_queue                    ; $85A93C |

CODE_FL_85A940:
  LDA.W #$001F                              ; $85A940 |
  JSL.L CODE_FL_86C9C5                      ; $85A943 |
  BCS CODE_85A957                           ; $85A947 |
  LDA.W #$003C                              ; $85A949 |
  JSL.L CODE_FL_86CAE6                      ; $85A94C |
  LDA.W #$0043                              ; $85A950 |
  STA.W $0002,Y                             ; $85A953 |
  CLC                                       ; $85A956 |

CODE_85A957:
  RTL                                       ; $85A957 |

CODE_FL_85A958:
  LDA.W #$001F                              ; $85A958 |
  JSL.L CODE_FL_86C9C5                      ; $85A95B |
  BCS CODE_85A985                           ; $85A95F |
  LDA.W #$0044                              ; $85A961 |
  JSL.L CODE_FL_86CAE6                      ; $85A964 |
  LDA.W $0009,Y                             ; $85A968 |
  ADC.B $08                                 ; $85A96B |
  STA.W $0009,Y                             ; $85A96D |
  LDA.W $000D,Y                             ; $85A970 |
  ADC.B $0A                                 ; $85A973 |
  STA.W $000D,Y                             ; $85A975 |
  LDA.W #$0043                              ; $85A978 |
  STA.W $0002,Y                             ; $85A97B |
  LDA.W #$1898                              ; $85A97E |
  STA.W $0004,Y                             ; $85A981 |
  CLC                                       ; $85A984 |

CODE_85A985:
  RTL                                       ; $85A985 |

CODE_FL_85A986:
  LDA.W #$000D                              ; $85A986 |

CODE_FL_85A989:
  PHA                                       ; $85A989 |
  LDA.W #$001F                              ; $85A98A |
  JSL.L CODE_FL_86C9C5                      ; $85A98D |
  PLA                                       ; $85A991 |
  BCS CODE_85A9A6                           ; $85A992 |
  JSL.L push_sound_queue                    ; $85A994 |
  LDA.W #$003B                              ; $85A998 |
  JSL.L CODE_FL_86CAE6                      ; $85A99B |
  LDA.W #$0043                              ; $85A99F |
  STA.W $0002,Y                             ; $85A9A2 |
  CLC                                       ; $85A9A5 |

CODE_85A9A6:
  RTL                                       ; $85A9A6 |

CODE_FL_85A9A7:
  LDA.B $34,X                               ; $85A9A7 |
  ORA.W #$0080                              ; $85A9A9 |
  STA.B $34,X                               ; $85A9AC |
  RTL                                       ; $85A9AE |

CODE_FL_85A9AF:
  LDA.B $34,X                               ; $85A9AF |
  AND.W #$FF7F                              ; $85A9B1 |
  STA.B $34,X                               ; $85A9B4 |
  RTL                                       ; $85A9B6 |

CODE_FL_85A9B7:
  LDA.B $34,X                               ; $85A9B7 |
  ORA.W #$8040                              ; $85A9B9 |
  STA.B $34,X                               ; $85A9BC |
  RTL                                       ; $85A9BE |

CODE_FL_85A9BF:
  LDA.B $34,X                               ; $85A9BF |
  AND.W #$7FBF                              ; $85A9C1 |
  STA.B $34,X                               ; $85A9C4 |
  RTL                                       ; $85A9C6 |

CODE_FL_85A9C7:
  LDA.W $0034,Y                             ; $85A9C7 |
  AND.W #$F77F                              ; $85A9CA |
  STA.W $0034,Y                             ; $85A9CD |
  RTL                                       ; $85A9D0 |

CODE_FL_85A9D1:
  LDA.W $0034,Y                             ; $85A9D1 |
  ORA.W #$0880                              ; $85A9D4 |
  STA.W $0034,Y                             ; $85A9D7 |
  RTL                                       ; $85A9DA |

CODE_FL_85A9DB:
  LDA.W $0034,Y                             ; $85A9DB |
  ORA.W #$8040                              ; $85A9DE |
  STA.W $0034,Y                             ; $85A9E1 |
  RTL                                       ; $85A9E4 |

CODE_FL_85A9E5:
  LDA.W $0034,Y                             ; $85A9E5 |
  AND.W #$7FBF                              ; $85A9E8 |
  STA.W $0034,Y                             ; $85A9EB |
  RTL                                       ; $85A9EE |

CODE_FL_85A9EF:
  LDA.B $34,X                               ; $85A9EF |
  ORA.W #$4000                              ; $85A9F1 |
  STA.B $34,X                               ; $85A9F4 |
  RTL                                       ; $85A9F6 |

CODE_FL_85A9F7:
  LDA.B $34,X                               ; $85A9F7 |
  AND.W #$BFFF                              ; $85A9F9 |
  STA.B $34,X                               ; $85A9FC |
  RTL                                       ; $85A9FE |

CODE_FL_85A9FF:
  LDA.B $34,X                               ; $85A9FF |
  ORA.W #$0020                              ; $85AA01 |
  STA.B $34,X                               ; $85AA04 |
  RTL                                       ; $85AA06 |

CODE_FL_85AA07:
  LDA.B $22,X                               ; $85AA07 |
  AND.W #$BFFF                              ; $85AA09 |
  STA.B $22,X                               ; $85AA0C |
  RTL                                       ; $85AA0E |

CODE_FL_85AA0F:
  LDA.W #$C000                              ; $85AA0F |
  STA.B $00                                 ; $85AA12 |
  JSL.L CODE_FL_86C432                      ; $85AA14 |
  CMP.B $00                                 ; $85AA18 |
  BCS CODE_85AA6F                           ; $85AA1A |
  AND.W #$000F                              ; $85AA1C |
  STA.B $00                                 ; $85AA1F |
  LDA.B $8E                                 ; $85AA21 |
  CMP.W #$0027                              ; $85AA23 |
  BCS CODE_85AA70                           ; $85AA26 |

CODE_85AA28:
  LDA.B $00                                 ; $85AA28 |
  PHX                                       ; $85AA2A |
  ASL A                                     ; $85AA2B |
  TAX                                       ; $85AA2C |
  LDA.L PTR16_85AA37,X                      ; $85AA2D |
  PLX                                       ; $85AA31 |
  STA.B $00                                 ; $85AA32 |
  JMP.W ($0000)                             ; $85AA34 |

PTR16_85AA37:
  dw CODE_85AA57                            ; $85AA37 |
  dw CODE_85AA57                            ; $85AA39 |
  dw CODE_85AA5C                            ; $85AA3B |
  dw CODE_85AA5C                            ; $85AA3D |
  dw CODE_85AA5C                            ; $85AA3F |
  dw CODE_85AA5C                            ; $85AA41 |
  dw CODE_85AA61                            ; $85AA43 |
  dw CODE_85AA61                            ; $85AA45 |
  dw CODE_85AA57                            ; $85AA47 |
  dw CODE_85AA57                            ; $85AA49 |
  dw CODE_85AA5C                            ; $85AA4B |
  dw CODE_85AA5C                            ; $85AA4D |
  dw CODE_85AA5C                            ; $85AA4F |
  dw CODE_85AA5C                            ; $85AA51 |
  dw CODE_85AA61                            ; $85AA53 |
  dw CODE_85AA66                            ; $85AA55 |

CODE_85AA57:
  LDA.W #$0003                              ; $85AA57 |
  BRA CODE_85AA6B                           ; $85AA5A |

CODE_85AA5C:
  LDA.W #$0007                              ; $85AA5C |
  BRA CODE_85AA6B                           ; $85AA5F |

CODE_85AA61:
  LDA.W #$0008                              ; $85AA61 |
  BRA CODE_85AA6B                           ; $85AA64 |

CODE_85AA66:
  LDA.W #$0221                              ; $85AA66 |
  BRA CODE_85AA6B                           ; $85AA69 |

CODE_85AA6B:
  JSL.L CODE_FL_86C9A7                      ; $85AA6B |

CODE_85AA6F:
  RTL                                       ; $85AA6F |

CODE_85AA70:
  LDA.L $7002EE                             ; $85AA70 |
  BEQ CODE_85AA28                           ; $85AA74 |
  LDA.B $00                                 ; $85AA76 |
  PHX                                       ; $85AA78 |
  ASL A                                     ; $85AA79 |
  TAX                                       ; $85AA7A |
  LDA.L PTR16_85AA85,X                      ; $85AA7B |
  PLX                                       ; $85AA7F |
  STA.B $00                                 ; $85AA80 |
  JMP.W ($0000)                             ; $85AA82 |

PTR16_85AA85:
  dw CODE_85AA57                            ; $85AA85 |
  dw CODE_85AA57                            ; $85AA87 |
  dw CODE_85AA5C                            ; $85AA89 |
  dw CODE_85AA5C                            ; $85AA8B |
  dw CODE_FL_85AAA5                         ; $85AA8D |
  dw CODE_FL_85AAA5                         ; $85AA8F |
  dw CODE_85AA61                            ; $85AA91 |
  dw CODE_85AA61                            ; $85AA93 |
  dw CODE_85AA57                            ; $85AA95 |
  dw CODE_85AA57                            ; $85AA97 |
  dw CODE_85AA5C                            ; $85AA99 |
  dw CODE_85AA5C                            ; $85AA9B |
  dw CODE_FL_85AAA5                         ; $85AA9D |
  dw CODE_FL_85AAA5                         ; $85AA9F |
  dw CODE_85AA61                            ; $85AAA1 |
  dw CODE_85AA66                            ; $85AAA3 |

CODE_FL_85AAA5:
  LDA.W #$00D5                              ; $85AAA5 |
  BRA CODE_85AA6B                           ; $85AAA8 |

CODE_JL_85AAAA:
  JSL.L CODE_FL_85AA0F                      ; $85AAAA |
  JSL.L CODE_FL_85A71F                      ; $85AAAE |
  JML.L CODE_FL_86CA2D                      ; $85AAB2 |

CODE_FL_85AAB6:
  STY.B $44,X                               ; $85AAB6 |
  TXA                                       ; $85AAB8 |
  STA.W $0044,Y                             ; $85AAB9 |
  LDA.W $0022,Y                             ; $85AABC |
  AND.W #$BFFF                              ; $85AABF |
  STA.W $0022,Y                             ; $85AAC2 |
  RTL                                       ; $85AAC5 |

CODE_FL_85AAC6:
  LDY.B $44,X                               ; $85AAC6 |
  TXA                                       ; $85AAC8 |
  CMP.W $0044,Y                             ; $85AAC9 |
  BEQ CODE_85AAD5                           ; $85AACC |
  JSL.L CODE_FL_86CA57                      ; $85AACE |
  PHB                                       ; $85AAD2 |
  PLA                                       ; $85AAD3 |
  PLA                                       ; $85AAD4 |

CODE_85AAD5:
  RTL                                       ; $85AAD5 |

CODE_FL_85AAD6:
  LDY.B $44,X                               ; $85AAD6 |
  LDA.W $0042,Y                             ; $85AAD8 |
  STA.B $00                                 ; $85AADB |
  CPX.B $00                                 ; $85AADD |
  BEQ CODE_85AAE8                           ; $85AADF |
  JSL.L CODE_FL_86CA57                      ; $85AAE1 |
  PHB                                       ; $85AAE5 |
  PLA                                       ; $85AAE6 |
  PLA                                       ; $85AAE7 |

CODE_85AAE8:
  RTL                                       ; $85AAE8 |

CODE_FL_85AAE9:
  LDY.B $44,X                               ; $85AAE9 |
  LDA.W $0040,Y                             ; $85AAEB |
  STA.B $00                                 ; $85AAEE |
  CPX.B $00                                 ; $85AAF0 |
  BEQ CODE_85AAFB                           ; $85AAF2 |
  JSL.L CODE_FL_86CA57                      ; $85AAF4 |
  PHB                                       ; $85AAF8 |
  PLA                                       ; $85AAF9 |
  PLA                                       ; $85AAFA |

CODE_85AAFB:
  RTL                                       ; $85AAFB |

CODE_FL_85AAFC:
  LDA.B ($48,X)                             ; $85AAFC |
  TAY                                       ; $85AAFE |
  LDA.W $0009,Y                             ; $85AAFF |
  SBC.B $09,X                               ; $85AB02 |
  BPL CODE_85AB0A                           ; $85AB04 |
  EOR.W #$FFFF                              ; $85AB06 |
  INC A                                     ; $85AB09 |

CODE_85AB0A:
  RTL                                       ; $85AB0A |

CODE_FL_85AB0B:
  CPY.W #$0580                              ; $85AB0B |
  BCC CODE_85AB1C                           ; $85AB0E |
  CPY.W #$0850                              ; $85AB10 |
  BCC CODE_85AB19                           ; $85AB13 |
  LDY.W #$04C0                              ; $85AB15 |
  RTL                                       ; $85AB18 |

CODE_85AB19:
  LDY.W #$0400                              ; $85AB19 |

CODE_85AB1C:
  RTL                                       ; $85AB1C |

CODE_FL_85AB1D:
  JSL.L CODE_FL_85A8C3                      ; $85AB1D |
  JSL.L CODE_FL_85AB0B                      ; $85AB21 |
  LDA.B $0D,X                               ; $85AB25 |
  CMP.W $000D,Y                             ; $85AB27 |
  RTL                                       ; $85AB2A |

CODE_FL_85AB2B:
  JSL.L CODE_FL_85A8C3                      ; $85AB2B |
  JSL.L CODE_FL_85AB0B                      ; $85AB2F |
  LDA.B $09,X                               ; $85AB33 |
  CMP.W $0009,Y                             ; $85AB35 |
  RTL                                       ; $85AB38 |

CODE_FL_85AB39:
  STA.B $0C                                 ; $85AB39 |
  LDA.W #$0119                              ; $85AB3B |
  BRA CODE_85AB53                           ; $85AB3E |

CODE_FL_85AB40:
  STA.B $0C                                 ; $85AB40 |
  LDA.W #$00CB                              ; $85AB42 |
  BRA CODE_85AB53                           ; $85AB45 |

CODE_FL_85AB47:
  STA.B $0C                                 ; $85AB47 |
  LDA.W #$00A4                              ; $85AB49 |
  BRA CODE_85AB53                           ; $85AB4C |

  STA.B $0C                                 ; $85AB4E |
  LDA.W #$0084                              ; $85AB50 |

CODE_85AB53:
  JSL.L CODE_FL_86C9A7                      ; $85AB53 |
  BCS CODE_85AB71                           ; $85AB57 |
  TXA                                       ; $85AB59 |
  STA.W $0044,Y                             ; $85AB5A |
  TYX                                       ; $85AB5D |
  LDA.B $08                                 ; $85AB5E |
  STA.B $3A,X                               ; $85AB60 |
  LDA.B $0A                                 ; $85AB62 |
  STA.B $3C,X                               ; $85AB64 |
  LDA.B $0C                                 ; $85AB66 |
  STA.B $3E,X                               ; $85AB68 |
  LDA.B $0E                                 ; $85AB6A |
  STA.B $40,X                               ; $85AB6C |
  LDX.B $FC                                 ; $85AB6E |
  CLC                                       ; $85AB70 |

CODE_85AB71:
  RTL                                       ; $85AB71 |

  STA.B $08                                 ; $85AB72 |
  STY.B $0A                                 ; $85AB74 |
  LDA.W #$0004                              ; $85AB76 |
  STA.B $0C                                 ; $85AB79 |
  LDA.W #$0021                              ; $85AB7B |
  JSL.L CODE_FL_86C9A7                      ; $85AB7E |
  BCS CODE_85AB98                           ; $85AB82 |
  TXA                                       ; $85AB84 |
  STA.W $0044,Y                             ; $85AB85 |
  TYX                                       ; $85AB88 |
  LDA.B $08                                 ; $85AB89 |
  STA.B $3A,X                               ; $85AB8B |
  LDA.B $0A                                 ; $85AB8D |
  STA.B $3C,X                               ; $85AB8F |
  LDA.B $0C                                 ; $85AB91 |
  STA.B $3E,X                               ; $85AB93 |
  LDX.B $FC                                 ; $85AB95 |
  CLC                                       ; $85AB97 |

CODE_85AB98:
  RTL                                       ; $85AB98 |

CODE_FL_85AB99:
  LDA.B $04,X                               ; $85AB99 |
  AND.W #$2000                              ; $85AB9B |
  BNE CODE_85ABA6                           ; $85AB9E |
  TYA                                       ; $85ABA0 |
  EOR.W #$FFFF                              ; $85ABA1 |
  INC A                                     ; $85ABA4 |
  TAY                                       ; $85ABA5 |

CODE_85ABA6:
  TYA                                       ; $85ABA6 |
  CLC                                       ; $85ABA7 |
  ADC.B $09,X                               ; $85ABA8 |
  STA.B $09,X                               ; $85ABAA |
  RTL                                       ; $85ABAC |

CODE_FL_85ABAD:
  PHX                                       ; $85ABAD |
  LDA.B $4E,X                               ; $85ABAE |
  AND.W #$00FF                              ; $85ABB0 |
  TAX                                       ; $85ABB3 |
  LDA.L $7E8B80,X                           ; $85ABB4 |
  PLX                                       ; $85ABB8 |
  LSR A                                     ; $85ABB9 |
  RTL                                       ; $85ABBA |

CODE_FL_85ABBB:
  JSL.L CODE_FL_85ABAD                      ; $85ABBB |
  BCS CODE_85AC0E                           ; $85ABBF |
  RTL                                       ; $85ABC1 |

CODE_FL_85ABC2:
  PHX                                       ; $85ABC2 |
  LDA.B $4E,X                               ; $85ABC3 |
  AND.W #$00FF                              ; $85ABC5 |
  TAX                                       ; $85ABC8 |
  SEP #$20                                  ; $85ABC9 |
  LDA.B #$01                                ; $85ABCB |
  STA.L $7E8B80,X                           ; $85ABCD |
  PLX                                       ; $85ABD1 |
  REP #$20                                  ; $85ABD2 |
  RTL                                       ; $85ABD4 |

CODE_FL_85ABD5:
  PHX                                       ; $85ABD5 |
  LDA.B $4E,X                               ; $85ABD6 |
  AND.W #$00FF                              ; $85ABD8 |
  TAX                                       ; $85ABDB |
  SEP #$20                                  ; $85ABDC |
  TDC                                       ; $85ABDE |
  STA.L $7E8B80,X                           ; $85ABDF |
  PLX                                       ; $85ABE3 |
  REP #$20                                  ; $85ABE4 |
  RTL                                       ; $85ABE6 |

CODE_FL_85ABE7:
  PHX                                       ; $85ABE7 |
  LDA.B $4E,X                               ; $85ABE8 |
  AND.W #$00FF                              ; $85ABEA |
  TAX                                       ; $85ABED |
  LDA.L $700688,X                           ; $85ABEE |
  PLX                                       ; $85ABF2 |
  LSR A                                     ; $85ABF3 |
  RTL                                       ; $85ABF4 |

CODE_FL_85ABF5:
  PHX                                       ; $85ABF5 |
  TAX                                       ; $85ABF6 |
  LDA.L $700688,X                           ; $85ABF7 |
  PLX                                       ; $85ABFB |
  LSR A                                     ; $85ABFC |
  RTL                                       ; $85ABFD |

  PHX                                       ; $85ABFE |
  TAX                                       ; $85ABFF |
  LDA.L $700708,X                           ; $85AC00 |
  PLX                                       ; $85AC04 |
  LSR A                                     ; $85AC05 |
  RTL                                       ; $85AC06 |

CODE_FL_85AC07:
  JSL.L CODE_FL_85ABE7                      ; $85AC07 |
  BCS CODE_85AC0E                           ; $85AC0B |
  RTL                                       ; $85AC0D |

CODE_85AC0E:
  PHP                                       ; $85AC0E |
  PLA                                       ; $85AC0F |
  PLA                                       ; $85AC10 |
  JML.L CODE_FL_86CA2D                      ; $85AC11 |

CODE_FL_85AC15:
  PHX                                       ; $85AC15 |
  LDA.B $4E,X                               ; $85AC16 |
  AND.W #$00FF                              ; $85AC18 |
  TAX                                       ; $85AC1B |
  SEP #$20                                  ; $85AC1C |
  LDA.B #$01                                ; $85AC1E |
  STA.L $700688,X                           ; $85AC20 |
  REP #$20                                  ; $85AC24 |
  PLX                                       ; $85AC26 |
  RTL                                       ; $85AC27 |

CODE_FL_85AC28:
  PHX                                       ; $85AC28 |
  LDA.B $4E,X                               ; $85AC29 |
  AND.W #$00FF                              ; $85AC2B |
  TAX                                       ; $85AC2E |
  SEP #$20                                  ; $85AC2F |
  TDC                                       ; $85AC31 |
  STA.L $700688,X                           ; $85AC32 |
  REP #$20                                  ; $85AC36 |
  PLX                                       ; $85AC38 |
  RTL                                       ; $85AC39 |

CODE_FL_85AC3A:
  PHX                                       ; $85AC3A |
  LDA.B $4E,X                               ; $85AC3B |
  AND.W #$00FF                              ; $85AC3D |
  TAX                                       ; $85AC40 |
  LDA.L $700708,X                           ; $85AC41 |
  PLX                                       ; $85AC45 |
  LSR A                                     ; $85AC46 |
  RTL                                       ; $85AC47 |

CODE_FL_85AC48:
  JSL.L CODE_FL_85AC3A                      ; $85AC48 |
  BCS CODE_85AC0E                           ; $85AC4C |
  RTL                                       ; $85AC4E |

CODE_FL_85AC4F:
  PHX                                       ; $85AC4F |
  LDA.B $4E,X                               ; $85AC50 |
  AND.W #$00FF                              ; $85AC52 |
  TAX                                       ; $85AC55 |
  SEP #$20                                  ; $85AC56 |
  LDA.B #$01                                ; $85AC58 |
  STA.L $700708,X                           ; $85AC5A |
  REP #$20                                  ; $85AC5E |
  PLX                                       ; $85AC60 |
  RTL                                       ; $85AC61 |

  PHX                                       ; $85AC62 |
  LDA.B $4E,X                               ; $85AC63 |
  AND.W #$00FF                              ; $85AC65 |
  TAX                                       ; $85AC68 |
  SEP #$20                                  ; $85AC69 |
  TDC                                       ; $85AC6B |
  STA.L $700708,X                           ; $85AC6C |
  REP #$20                                  ; $85AC70 |
  PLX                                       ; $85AC72 |
  RTL                                       ; $85AC73 |

CODE_FL_85AC74:
  LDA.B $22,X                               ; $85AC74 |
  ORA.W #$0080                              ; $85AC76 |
  STA.B $22,X                               ; $85AC79 |
  RTL                                       ; $85AC7B |

CODE_FL_85AC7C:
  PHX                                       ; $85AC7C |
  TAX                                       ; $85AC7D |
  LDA.L $7E8B80,X                           ; $85AC7E |
  PLX                                       ; $85AC82 |
  LSR A                                     ; $85AC83 |
  BCS CODE_85AC87                           ; $85AC84 |
  RTL                                       ; $85AC86 |

CODE_85AC87:
  PHP                                       ; $85AC87 |
  PLA                                       ; $85AC88 |
  PLA                                       ; $85AC89 |
  JML.L CODE_FL_86CA36                      ; $85AC8A |

CODE_FL_85AC8E:
  PHX                                       ; $85AC8E |
  TAX                                       ; $85AC8F |
  SEP #$20                                  ; $85AC90 |
  LDA.B #$01                                ; $85AC92 |
  STA.L $7E8B80,X                           ; $85AC94 |
  PLX                                       ; $85AC98 |
  REP #$20                                  ; $85AC99 |
  RTL                                       ; $85AC9B |

CODE_FL_85AC9C:
  PHX                                       ; $85AC9C |
  TAX                                       ; $85AC9D |
  TDC                                       ; $85AC9E |
  SEP #$20                                  ; $85AC9F |
  STA.L $7E8B80,X                           ; $85ACA1 |
  PLX                                       ; $85ACA5 |
  REP #$20                                  ; $85ACA6 |
  RTL                                       ; $85ACA8 |

CODE_FL_85ACA9:
  PHX                                       ; $85ACA9 |
  TAX                                       ; $85ACAA |
  SEP #$20                                  ; $85ACAB |
  LDA.B #$01                                ; $85ACAD |
  STA.L $700688,X                           ; $85ACAF |
  PLX                                       ; $85ACB3 |
  REP #$20                                  ; $85ACB4 |
  RTL                                       ; $85ACB6 |

CODE_JL_85ACB7:
  LDA.B $32,X                               ; $85ACB7 |
  BPL CODE_85ACEC                           ; $85ACB9 |
  STZ.B $32,X                               ; $85ACBB |
  INC.B $1A,X                               ; $85ACBD |
  RTL                                       ; $85ACBF |

CODE_JL_85ACC0:
  LDA.B $32,X                               ; $85ACC0 |
  BPL CODE_85ACEC                           ; $85ACC2 |
  STZ.B $32,X                               ; $85ACC4 |
  LDA.B $37,X                               ; $85ACC6 |
  AND.W #$00FF                              ; $85ACC8 |
  CMP.W #$000E                              ; $85ACCB |
  BNE CODE_85ACED                           ; $85ACCE |
  INC.B $1A,X                               ; $85ACD0 |
  RTL                                       ; $85ACD2 |

CODE_JL_85ACD3:
  LDA.B $32,X                               ; $85ACD3 |
  BPL CODE_85ACEC                           ; $85ACD5 |
  STZ.B $32,X                               ; $85ACD7 |
  LDA.B $37,X                               ; $85ACD9 |
  AND.W #$00FF                              ; $85ACDB |
  CMP.W #$000A                              ; $85ACDE |
  BNE CODE_85ACED                           ; $85ACE1 |
  INC.B $1A,X                               ; $85ACE3 |
  LDA.W #$0014                              ; $85ACE5 |
  JSL.L CODE_FL_8089BD                      ; $85ACE8 |

CODE_85ACEC:
  RTL                                       ; $85ACEC |

CODE_85ACED:
  LDA.B $38,X                               ; $85ACED |
  CMP.W #$0018                              ; $85ACEF |
  BNE CODE_85ACEC                           ; $85ACF2 |
  JML.L CODE_FL_85A5A7                      ; $85ACF4 |

CODE_JL_85ACF8:
  LDA.B $32,X                               ; $85ACF8 |
  BPL CODE_85ACEC                           ; $85ACFA |
  STZ.B $32,X                               ; $85ACFC |
  LDA.B $37,X                               ; $85ACFE |
  AND.W #$00FF                              ; $85AD00 |
  CMP.W #$0006                              ; $85AD03 |
  BNE CODE_85ACED                           ; $85AD06 |
  INC.B $1A,X                               ; $85AD08 |
  RTL                                       ; $85AD0A |

CODE_JL_85AD0B:
  LDA.B $32,X                               ; $85AD0B |
  BPL CODE_85ACEC                           ; $85AD0D |
  STZ.B $32,X                               ; $85AD0F |
  LDA.B $37,X                               ; $85AD11 |
  AND.W #$00FF                              ; $85AD13 |
  CMP.W #$0006                              ; $85AD16 |
  BEQ CODE_85AD20                           ; $85AD19 |
  CMP.W #$000F                              ; $85AD1B |
  BNE CODE_85ACED                           ; $85AD1E |

CODE_85AD20:
  INC.B $1A,X                               ; $85AD20 |
  RTL                                       ; $85AD22 |

CODE_FL_85AD23:
  LDA.B $32,X                               ; $85AD23 |
  BPL CODE_85ACEC                           ; $85AD25 |
  STZ.B $32,X                               ; $85AD27 |
  LDA.B $37,X                               ; $85AD29 |
  AND.W #$00FF                              ; $85AD2B |
  CMP.W #$0002                              ; $85AD2E |
  BNE CODE_85ACEC                           ; $85AD31 |
  INC.B $1A,X                               ; $85AD33 |
  RTL                                       ; $85AD35 |

CODE_FL_85AD36:
  LDA.W #$FFE0                              ; $85AD36 |
  JSL.L CODE_FL_86CB2D                      ; $85AD39 |
  BCC CODE_85AD44                           ; $85AD3D |
  JSL.L CODE_FL_86C855                      ; $85AD3F |
  RTL                                       ; $85AD43 |

CODE_85AD44:
  PHP                                       ; $85AD44 |
  PLA                                       ; $85AD45 |
  PLA                                       ; $85AD46 |
  RTL                                       ; $85AD47 |

CODE_FL_85AD48:
  LDA.B $22,X                               ; $85AD48 |
  ORA.W #$2020                              ; $85AD4A |
  STA.B $22,X                               ; $85AD4D |
  RTL                                       ; $85AD4F |

CODE_FL_85AD50:
  LDA.B $22,X                               ; $85AD50 |
  ORA.W #$0400                              ; $85AD52 |
  STA.B $22,X                               ; $85AD55 |
  RTL                                       ; $85AD57 |

  LDA.W $0032,Y                             ; $85AD58 |
  ORA.W #$1000                              ; $85AD5B |
  STA.W $0032,Y                             ; $85AD5E |
  RTL                                       ; $85AD61 |

CODE_FL_85AD62:
  STA.B $00                                 ; $85AD62 |
  STY.B $02                                 ; $85AD64 |
  STZ.B $04                                 ; $85AD66 |
  LDA.B $32,X                               ; $85AD68 |
  AND.W #$8000                              ; $85AD6A |
  BEQ CODE_85AD88                           ; $85AD6D |
  LDA.W #$0001                              ; $85AD6F |
  STA.B $04                                 ; $85AD72 |
  LDA.B $37,X                               ; $85AD74 |
  AND.W #$00FF                              ; $85AD76 |
  CMP.B $00                                 ; $85AD79 |
  BNE CODE_85AD88                           ; $85AD7B |
  LDA.B $02                                 ; $85AD7D |
  STA.B $1A,X                               ; $85AD7F |
  LDA.W #$0030                              ; $85AD81 |
  STA.B $38,X                               ; $85AD84 |
  STZ.B $04                                 ; $85AD86 |

CODE_85AD88:
  STZ.B $32,X                               ; $85AD88 |
  RTL                                       ; $85AD8A |

CODE_FL_85AD8B:
  LDA.W #$01A0                              ; $85AD8B |
  JSL.L CODE_FL_86C9C5                      ; $85AD8E |
  BCS CODE_85ADEC                           ; $85AD92 |
  PHY                                       ; $85AD94 |
  CLC                                       ; $85AD95 |
  LDA.B $12                                 ; $85AD96 |
  ADC.W #$0002                              ; $85AD98 |
  STA.B $12                                 ; $85AD9B |
  SEC                                       ; $85AD9D |
  SBC.W #$0018                              ; $85AD9E |
  BPL CODE_85ADA7                           ; $85ADA1 |
  EOR.W #$FFFF                              ; $85ADA3 |
  INC A                                     ; $85ADA6 |

CODE_85ADA7:
  ASL A                                     ; $85ADA7 |
  STA.B $00                                 ; $85ADA8 |
  JSL.L CODE_FL_86C432                      ; $85ADAA |
  AND.W #$000F                              ; $85ADAE |
  ADC.W #$001C                              ; $85ADB1 |
  SBC.B $00                                 ; $85ADB4 |
  TAY                                       ; $85ADB6 |
  LDA.B $12                                 ; $85ADB7 |
  JSL.L CODE_FL_8AB4B3                      ; $85ADB9 |
  PLY                                       ; $85ADBD |
  LDA.B $00                                 ; $85ADBE |
  STA.W $0026,Y                             ; $85ADC0 |
  LDA.B $02                                 ; $85ADC3 |
  EOR.W #$FFFF                              ; $85ADC5 |
  INC A                                     ; $85ADC8 |
  STA.W $002A,Y                             ; $85ADC9 |
  LDA.B $14                                 ; $85ADCC |
  STA.W $0000,Y                             ; $85ADCE |
  LDA.B $16                                 ; $85ADD1 |
  JSL.L CODE_FL_86CAE6                      ; $85ADD3 |
  JSL.L CODE_FL_86C7C4                      ; $85ADD7 |
  LDA.B $86                                 ; $85ADDB |
  AND.W #$0060                              ; $85ADDD |
  ORA.W #$9090                              ; $85ADE0 |
  STA.W $0004,Y                             ; $85ADE3 |
  LDA.W #$0040                              ; $85ADE6 |
  STA.W $002C,Y                             ; $85ADE9 |

CODE_85ADEC:
  RTL                                       ; $85ADEC |

CODE_FL_85ADED:
  STA.B $0C                                 ; $85ADED |
  LDA.W #$017E                              ; $85ADEF |
  JSL.L CODE_FL_86C9A7                      ; $85ADF2 |
  BCS CODE_85AE10                           ; $85ADF6 |
  TXA                                       ; $85ADF8 |
  STA.W $0044,Y                             ; $85ADF9 |
  TYX                                       ; $85ADFC |
  LDA.B $08                                 ; $85ADFD |
  STA.B $3A,X                               ; $85ADFF |
  LDA.B $0A                                 ; $85AE01 |
  STA.B $3C,X                               ; $85AE03 |
  LDA.B $0C                                 ; $85AE05 |
  STA.B $3E,X                               ; $85AE07 |
  LDA.B $0E                                 ; $85AE09 |
  STA.B $40,X                               ; $85AE0B |
  LDX.B $FC                                 ; $85AE0D |
  CLC                                       ; $85AE0F |

CODE_85AE10:
  RTL                                       ; $85AE10 |

  JSL.L CODE_FL_858B01                      ; $85AE11 |
  BEQ CODE_85AE1E                           ; $85AE15 |
  STZ.W $1C14                               ; $85AE17 |
  JSL.L CODE_FL_85A66C                      ; $85AE1A |

CODE_85AE1E:
  RTL                                       ; $85AE1E |

CODE_FL_85AE1F:
  LDY.B $44,X                               ; $85AE1F |
  LDA.W $0018,Y                             ; $85AE21 |
  BNE CODE_85AE2D                           ; $85AE24 |
  JSL.L CODE_FL_86CA57                      ; $85AE26 |
  PHB                                       ; $85AE2A |
  PLA                                       ; $85AE2B |
  PLA                                       ; $85AE2C |

CODE_85AE2D:
  RTL                                       ; $85AE2D |

CODE_JL_85AE2E:
  JSL.L CODE_FL_858B70                      ; $85AE2E |
  BEQ CODE_85AE3D                           ; $85AE32 |
  LDA.W $1C12                               ; $85AE34 |
  BEQ CODE_85AE3F                           ; $85AE37 |
  JML.L CODE_FL_86CB6A                      ; $85AE39 |

CODE_85AE3D:
  DEC.B $1A,X                               ; $85AE3D |

CODE_85AE3F:
  RTL                                       ; $85AE3F |

CODE_JL_85AE40:
  STA.B $00                                 ; $85AE40 |
  STY.B $02                                 ; $85AE42 |
  LDA.W #$0001                              ; $85AE44 |
  STA.B $06                                 ; $85AE47 |
  STZ.B $2C,X                               ; $85AE49 |
  STZ.B $28,X                               ; $85AE4B |
  BRA CODE_85AE76                           ; $85AE4D |

CODE_JL_85AE4F:
  STA.B $00                                 ; $85AE4F |
  STY.B $02                                 ; $85AE51 |
  STZ.B $06                                 ; $85AE53 |
  LDA.W #$0185                              ; $85AE55 |
  BRA CODE_85AE79                           ; $85AE58 |

CODE_JL_85AE5A:
  STA.B $00                                 ; $85AE5A |
  STY.B $02                                 ; $85AE5C |
  STZ.B $06                                 ; $85AE5E |
  LDA.W #$00D1                              ; $85AE60 |
  BRA CODE_85AE79                           ; $85AE63 |

CODE_JL_85AE65:
  STA.B $00                                 ; $85AE65 |
  STY.B $02                                 ; $85AE67 |
  STZ.B $06                                 ; $85AE69 |
  LDA.W #$022C                              ; $85AE6B |
  BRA CODE_85AE79                           ; $85AE6E |

CODE_JL_85AE70:
  STA.B $00                                 ; $85AE70 |
  STY.B $02                                 ; $85AE72 |
  STZ.B $06                                 ; $85AE74 |

CODE_85AE76:
  LDA.W #$0131                              ; $85AE76 |

CODE_85AE79:
  STA.B $18,X                               ; $85AE79 |
  STZ.B $1A,X                               ; $85AE7B |
  LDA.B $34,X                               ; $85AE7D |
  AND.W #$3FFF                              ; $85AE7F |
  STA.B $34,X                               ; $85AE82 |
  LDA.B $02                                 ; $85AE84 |
  STA.B $00,X                               ; $85AE86 |
  STZ.B $1E,X                               ; $85AE88 |
  LDA.W #$FC00                              ; $85AE8A |
  STA.B $28,X                               ; $85AE8D |
  STA.B $3C,X                               ; $85AE8F |
  LDA.W #$0060                              ; $85AE91 |
  STA.B $4C,X                               ; $85AE94 |
  LDA.W #$0003                              ; $85AE96 |
  STA.B $3A,X                               ; $85AE99 |
  JSL.L CODE_FL_85AB2B                      ; $85AE9B |
  LDA.W #$0100                              ; $85AE9F |
  BCS CODE_85AEA7                           ; $85AEA2 |
  LDA.W #$FF00                              ; $85AEA4 |

CODE_85AEA7:
  STA.B $26,X                               ; $85AEA7 |
  LDA.W #$0010                              ; $85AEA9 |
  JSL.L push_sound_queue                    ; $85AEAC |
  LDA.W #$007D                              ; $85AEB0 |
  JSL.L CODE_FL_86C9C5                      ; $85AEB3 |
  BCS CODE_85AEDF                           ; $85AEB7 |
  STY.B $04                                 ; $85AEB9 |
  JSL.L CODE_FL_86C7C4                      ; $85AEBB |
  LDA.B $00                                 ; $85AEBF |
  STA.W $0000,Y                             ; $85AEC1 |
  LDA.B $06                                 ; $85AEC4 |
  BEQ CODE_85AECE                           ; $85AEC6 |
  LDA.W #$0001                              ; $85AEC8 |
  STA.W $003A,Y                             ; $85AECB |

CODE_85AECE:
  JSL.L CODE_FL_85AB2B                      ; $85AECE |
  LDA.W #$0100                              ; $85AED2 |
  BCS CODE_85AEDF                           ; $85AED5 |
  LDY.B $04                                 ; $85AED7 |
  LDA.W #$0001                              ; $85AED9 |
  STA.W $003C,Y                             ; $85AEDC |

CODE_85AEDF:
  RTL                                       ; $85AEDF |

CODE_FL_85AEE0:
  LDA.B ($48,X)                             ; $85AEE0 |
  TAY                                       ; $85AEE2 |
  LDA.W $000D,Y                             ; $85AEE3 |
  SEC                                       ; $85AEE6 |
  SBC.W #$001C                              ; $85AEE7 |
  STA.B $08                                 ; $85AEEA |
  LDA.W $0030,Y                             ; $85AEEC |
  CMP.W #$001C                              ; $85AEEF |
  BNE CODE_85AF1B                           ; $85AEF2 |
  LDA.W $0030,Y                             ; $85AEF4 |
  LSR A                                     ; $85AEF7 |
  STA.B $04                                 ; $85AEF8 |
  LDA.W $000D,Y                             ; $85AEFA |
  SEC                                       ; $85AEFD |
  SBC.B $04                                 ; $85AEFE |
  SBC.B $02                                 ; $85AF00 |
  STA.B $0A                                 ; $85AF02 |
  CMP.W $000D,Y                             ; $85AF04 |
  BCS CODE_85AF1B                           ; $85AF07 |
  SEC                                       ; $85AF09 |
  SBC.B $30,X                               ; $85AF0A |
  CMP.B $08                                 ; $85AF0C |
  BCC CODE_85AF14                           ; $85AF0E |
  LDA.B $0A                                 ; $85AF10 |
  BRA CODE_85AF1E                           ; $85AF12 |

CODE_85AF14:
  LDA.B $08                                 ; $85AF14 |
  CLC                                       ; $85AF16 |
  ADC.B $30,X                               ; $85AF17 |
  BRA CODE_85AF1E                           ; $85AF19 |

CODE_85AF1B:
  LDA.W $000D,Y                             ; $85AF1B |

CODE_85AF1E:
  STA.B $0D,X                               ; $85AF1E |
  LDA.W $002E,Y                             ; $85AF20 |
  STA.B $06                                 ; $85AF23 |
  LDA.W $0030,Y                             ; $85AF25 |
  CMP.W #$001C                              ; $85AF28 |
  BEQ CODE_85AF32                           ; $85AF2B |
  LDA.B $06                                 ; $85AF2D |
  ASL A                                     ; $85AF2F |
  STA.B $06                                 ; $85AF30 |

CODE_85AF32:
  LDA.B $00                                 ; $85AF32 |
  BMI CODE_85AF40                           ; $85AF34 |
  LDA.W $0009,Y                             ; $85AF36 |
  SEC                                       ; $85AF39 |
  SBC.B $06                                 ; $85AF3A |
  STA.B $09,X                               ; $85AF3C |
  BRA CODE_85AF48                           ; $85AF3E |

CODE_85AF40:
  LDA.W $0009,Y                             ; $85AF40 |
  CLC                                       ; $85AF43 |
  ADC.B $06                                 ; $85AF44 |
  STA.B $09,X                               ; $85AF46 |

CODE_85AF48:
  RTL                                       ; $85AF48 |

CODE_FL_85AF49:
  LDA.W #$001F                              ; $85AF49 |
  JSL.L CODE_FL_86C9C5                      ; $85AF4C |
  BCS CODE_85AF78                           ; $85AF50 |
  LDA.W #$0044                              ; $85AF52 |
  JSL.L CODE_FL_86CAE6                      ; $85AF55 |
  LDA.B $04,X                               ; $85AF59 |
  ORA.W #$1898                              ; $85AF5B |
  STA.W $0004,Y                             ; $85AF5E |
  LDA.W #$0043                              ; $85AF61 |
  STA.W $0002,Y                             ; $85AF64 |
  TYX                                       ; $85AF67 |
  LDY.B $08                                 ; $85AF68 |
  JSL.L CODE_FL_85AB99                      ; $85AF6A |
  LDA.B $0D,X                               ; $85AF6E |
  SEC                                       ; $85AF70 |
  SBC.B $0A                                 ; $85AF71 |
  STA.B $0D,X                               ; $85AF73 |
  LDX.B $FC                                 ; $85AF75 |
  CLC                                       ; $85AF77 |

CODE_85AF78:
  RTL                                       ; $85AF78 |

  STA.B $00                                 ; $85AF79 |
  LDA.B $32,X                               ; $85AF7B |
  AND.W #$8000                              ; $85AF7D |
  BNE CODE_85AF85                           ; $85AF80 |
  JMP.W CODE_JP_85B272                      ; $85AF82 |

CODE_85AF85:
  JSL.L CODE_FL_85A8E6                      ; $85AF85 |
  STZ.B $32,X                               ; $85AF89 |
  LDA.W $0001,Y                             ; $85AF8B |
  AND.W #$00FF                              ; $85AF8E |
  CMP.W #$0002                              ; $85AF91 |
  BEQ CODE_85AF99                           ; $85AF94 |
  JMP.W CODE_JP_85B272                      ; $85AF96 |

CODE_85AF99:
  LDA.B $36,X                               ; $85AF99 |
  SEC                                       ; $85AF9B |
  SBC.W $0000,Y                             ; $85AF9C |
  STA.B $36,X                               ; $85AF9F |
  BMI CODE_85AFA6                           ; $85AFA1 |
  JMP.W CODE_JP_85B272                      ; $85AFA3 |

CODE_85AFA6:
  BRL CODE_JL_85B26E                        ; $85AFA6 |

CODE_FL_85AFA9:
  STA.B $00                                 ; $85AFA9 |
  LDA.B $1A,X                               ; $85AFAB |
  BNE CODE_85AFB2                           ; $85AFAD |
  JMP.W CODE_JP_85B272                      ; $85AFAF |

CODE_85AFB2:
  CLC                                       ; $85AFB2 |
  LDA.W $1672                               ; $85AFB3 |
  ADC.B $0D,X                               ; $85AFB6 |
  SEC                                       ; $85AFB8 |
  SBC.B $30,X                               ; $85AFB9 |
  STA.B $02                                 ; $85AFBB |
  LDA.W $1C6C                               ; $85AFBD |
  BPL CODE_85AFC5                           ; $85AFC0 |
  JMP.W CODE_JP_85B272                      ; $85AFC2 |

CODE_85AFC5:
  CLC                                       ; $85AFC5 |
  LDA.W $1672                               ; $85AFC6 |
  ADC.W $1C6C                               ; $85AFC9 |
  CMP.B $02                                 ; $85AFCC |
  BCS CODE_85AFD3                           ; $85AFCE |
  JMP.W CODE_JP_85B272                      ; $85AFD0 |

CODE_85AFD3:
  LDA.B $1A,X                               ; $85AFD3 |
  CMP.B $00                                 ; $85AFD5 |
  BCC CODE_85AFDC                           ; $85AFD7 |
  JMP.W CODE_JP_85B272                      ; $85AFD9 |

CODE_85AFDC:
  BRL CODE_JL_85B26E                        ; $85AFDC |

CODE_FL_85AFDF:
  LDA.W $1C6A                               ; $85AFDF |
  CMP.B $02                                 ; $85AFE2 |
  BEQ CODE_85AFF9                           ; $85AFE4 |
  LDA.W $1C6C                               ; $85AFE6 |
  BMI CODE_85AFF9                           ; $85AFE9 |
  SEC                                       ; $85AFEB |
  SBC.B $00                                 ; $85AFEC |
  STA.B $04                                 ; $85AFEE |
  LDA.B $0D,X                               ; $85AFF0 |
  STA.B $0E                                 ; $85AFF2 |
  CLC                                       ; $85AFF4 |
  ADC.B $04                                 ; $85AFF5 |
  STA.B $0D,X                               ; $85AFF7 |

CODE_85AFF9:
  JSL.L CODE_FL_858A98                      ; $85AFF9 |
  BEQ CODE_85B003                           ; $85AFFD |
  LDA.B $0E                                 ; $85AFFF |
  STA.B $0D,X                               ; $85B001 |

CODE_85B003:
  LDA.W $1C6C                               ; $85B003 |
  STA.B $00                                 ; $85B006 |
  LDA.W $1C6A                               ; $85B008 |
  STA.B $02                                 ; $85B00B |
  RTL                                       ; $85B00D |

CODE_FL_85B00E:
  LDA.B $34,X                               ; $85B00E |
  ORA.W #$A040                              ; $85B010 |
  STA.B $34,X                               ; $85B013 |
  RTL                                       ; $85B015 |

CODE_FL_85B016:
  LDA.B $34,X                               ; $85B016 |
  AND.W #$5FBF                              ; $85B018 |
  STA.B $34,X                               ; $85B01B |
  RTL                                       ; $85B01D |

CODE_FL_85B01E:
  JSL.L CODE_FL_85A9A7                      ; $85B01E |
  LDA.B $34,X                               ; $85B022 |
  ORA.W #$1800                              ; $85B024 |
  STA.B $34,X                               ; $85B027 |
  RTL                                       ; $85B029 |

CODE_FL_85B02A:
  STA.B $00                                 ; $85B02A |
  LDA.B $32,X                               ; $85B02C |
  AND.W #$2000                              ; $85B02E |
  BNE CODE_85B036                           ; $85B031 |
  JMP.W CODE_JP_85B272                      ; $85B033 |

CODE_85B036:
  BRL CODE_JL_85B26E                        ; $85B036 |

  STA.B $00                                 ; $85B039 |
  LDA.B $34,X                               ; $85B03B |
  AND.W #$2000                              ; $85B03D |
  BNE CODE_85B045                           ; $85B040 |
  JMP.W CODE_JP_85B272                      ; $85B042 |

CODE_85B045:
  BRA CODE_85B049                           ; $85B045 |

CODE_FL_85B047:
  STA.B $00                                 ; $85B047 |

CODE_85B049:
  LDA.B $32,X                               ; $85B049 |
  CMP.W #$8000                              ; $85B04B |
  BCS CODE_85B053                           ; $85B04E |
  JMP.W CODE_JP_85B272                      ; $85B050 |

CODE_85B053:
  BRL CODE_JL_85B26E                        ; $85B053 |

CODE_FL_85B056:
  STA.B $00                                 ; $85B056 |
  LDA.B $32,X                               ; $85B058 |
  AND.W #$4000                              ; $85B05A |
  BNE CODE_85B062                           ; $85B05D |
  JMP.W CODE_JP_85B272                      ; $85B05F |

CODE_85B062:
  BRL CODE_JL_85B26E                        ; $85B062 |

CODE_FL_85B065:
  STA.B $00                                 ; $85B065 |
  LDA.B $40,X                               ; $85B067 |
  BEQ CODE_85B078                           ; $85B069 |
  LDA.L $7E7C16                             ; $85B06B |
  BEQ CODE_85B079                           ; $85B06F |
  JSL.L CODE_FL_85B0C9                      ; $85B071 |
  PHB                                       ; $85B075 |
  PLA                                       ; $85B076 |
  PLA                                       ; $85B077 |

CODE_85B078:
  RTL                                       ; $85B078 |

CODE_85B079:
  TXA                                       ; $85B079 |
  CMP.L $7E7C72                             ; $85B07A |
  BEQ CODE_FL_85B0D3                        ; $85B07E |
  LDA.L $7E7C5E                             ; $85B080 |
  BNE CODE_85B089                           ; $85B084 |
  JMP.W CODE_JP_85B092                      ; $85B086 |

CODE_85B089:
  JSL.L CODE_FL_85B1C4                      ; $85B089 |
  LDA.W #$0100                              ; $85B08D |
  BCS CODE_85B0BF                           ; $85B090 |

CODE_JP_85B092:
  LDY.W #$00DC                              ; $85B092 |
  JSL.L CODE_FL_85B0DA                      ; $85B095 |
  BCS CODE_85B0A5                           ; $85B099 |
  LDY.W #$00DE                              ; $85B09B |
  JSL.L CODE_FL_85B0DA                      ; $85B09E |
  BCS CODE_85B0A5                           ; $85B0A2 |
  RTL                                       ; $85B0A4 |

CODE_85B0A5:
  LDA.B $08                                 ; $85B0A5 |
  CMP.B $0A                                 ; $85B0A7 |
  BMI CODE_85B0AD                           ; $85B0A9 |
  LDA.B $0A                                 ; $85B0AB |

CODE_85B0AD:
  STA.B $08                                 ; $85B0AD |
  SEC                                       ; $85B0AF |
  LDA.W #$0100                              ; $85B0B0 |
  SBC.B $08                                 ; $85B0B3 |
  BMI CODE_85B0C8                           ; $85B0B5 |
  CMP.L $7E7C70                             ; $85B0B7 |
  BCC CODE_85B0C8                           ; $85B0BB |
  BEQ CODE_85B0C8                           ; $85B0BD |

CODE_85B0BF:
  STA.L $7E7C70                             ; $85B0BF |
  TXA                                       ; $85B0C3 |
  STA.L $7E7C72                             ; $85B0C4 |

CODE_85B0C8:
  RTL                                       ; $85B0C8 |

CODE_FL_85B0C9:
  TDC                                       ; $85B0C9 |
  STA.L $7E7C72                             ; $85B0CA |
  STA.L $7E7C70                             ; $85B0CE |
  RTL                                       ; $85B0D2 |

CODE_FL_85B0D3:
  JSL.L CODE_FL_85B0C9                      ; $85B0D3 |
  JMP.W CODE_JL_85B26E                      ; $85B0D7 |

CODE_FL_85B0DA:
  LDA.W $0000,Y                             ; $85B0DA |
  PHY                                       ; $85B0DD |
  TAY                                       ; $85B0DE |
  PHX                                       ; $85B0DF |
  JSL.L CODE_FL_83D165                      ; $85B0E0 |
  BCC CODE_85B0E9                           ; $85B0E4 |
  JMP.W CODE_JP_85B1C8                      ; $85B0E6 |

CODE_85B0E9:
  STY.B $FE                                 ; $85B0E9 |
  LDX.B $94,Y                               ; $85B0EB |
  STZ.B $02                                 ; $85B0ED |
  LDA.W #$0800                              ; $85B0EF |
  DEX                                       ; $85B0F2 |
  BEQ CODE_85B110                           ; $85B0F3 |
  LDA.W #$0400                              ; $85B0F5 |
  INC.B $02                                 ; $85B0F8 |
  DEX                                       ; $85B0FA |
  BEQ CODE_85B110                           ; $85B0FB |
  LDX.W #$0100                              ; $85B0FD |
  INC.B $02                                 ; $85B100 |
  LDA.W $0004,Y                             ; $85B102 |
  BIT.W #$0020                              ; $85B105 |
  BEQ CODE_85B10F                           ; $85B108 |
  INC.B $02                                 ; $85B10A |
  LDA.W #$0200                              ; $85B10C |

CODE_85B10F:
  TXA                                       ; $85B10F |

CODE_85B110:
  CPY.W #$04C0                              ; $85B110 |
  LDX.W #$0000                              ; $85B113 |
  BCC CODE_85B11A                           ; $85B116 |
  INX                                       ; $85B118 |
  INX                                       ; $85B119 |

CODE_85B11A:
  LDA.W #$8000                              ; $85B11A |
  BIT.B $30,X                               ; $85B11D |
  BNE CODE_85B124                           ; $85B11F |
  JMP.W CODE_JP_85B1C8                      ; $85B121 |

CODE_85B124:
  LDA.B $02                                 ; $85B124 |
  ASL A                                     ; $85B126 |
  ASL A                                     ; $85B127 |
  ASL A                                     ; $85B128 |
  TAX                                       ; $85B129 |
  LDA.B $8E                                 ; $85B12A |
  CMP.W #$0172                              ; $85B12C |
  BEQ CODE_85B13D                           ; $85B12F |
  LDA.B $7E                                 ; $85B131 |
  CMP.W #$000C                              ; $85B133 |
  BCC CODE_85B13D                           ; $85B136 |
  TXA                                       ; $85B138 |
  ADC.W #$001F                              ; $85B139 |
  TAX                                       ; $85B13C |

CODE_85B13D:
  LDA.L DATA8_85B1D0,X                      ; $85B13D |
  STA.B $04                                 ; $85B141 |
  LDA.L DATA8_85B1D2,X                      ; $85B143 |
  STA.B $06                                 ; $85B147 |
  LDA.L DATA8_85B1CE,X                      ; $85B149 |
  STA.B $02                                 ; $85B14D |
  LDA.L DATA8_85B1CC,X                      ; $85B14F |
  PLX                                       ; $85B153 |
  BIT.W #$FFFF                              ; $85B154 |
  BEQ CODE_85B16E                           ; $85B157 |
  ADC.W $0009,Y                             ; $85B159 |
  SEC                                       ; $85B15C |
  SBC.B $09,X                               ; $85B15D |
  BPL CODE_85B165                           ; $85B15F |
  EOR.W #$FFFF                              ; $85B161 |
  INC A                                     ; $85B164 |

CODE_85B165:
  STA.B $08                                 ; $85B165 |
  SEC                                       ; $85B167 |
  SBC.B $04                                 ; $85B168 |
  BPL CODE_85B1C9                           ; $85B16A |
  BRA CODE_85B184                           ; $85B16C |

CODE_85B16E:
  SEC                                       ; $85B16E |
  LDA.W $0009,Y                             ; $85B16F |
  SBC.B $09,X                               ; $85B172 |
  BPL CODE_85B17A                           ; $85B174 |
  EOR.W #$FFFF                              ; $85B176 |
  INC A                                     ; $85B179 |

CODE_85B17A:
  STA.B $08                                 ; $85B17A |
  SEC                                       ; $85B17C |
  SBC.W $002E,X                             ; $85B17D |
  SBC.B $2E,X                               ; $85B180 |
  BPL CODE_85B1C9                           ; $85B182 |

CODE_85B184:
  LDA.B $02                                 ; $85B184 |
  BEQ CODE_85B19E                           ; $85B186 |
  CLC                                       ; $85B188 |
  ADC.W $000D,Y                             ; $85B189 |
  SEC                                       ; $85B18C |
  SBC.B $0D,X                               ; $85B18D |
  BPL CODE_85B195                           ; $85B18F |
  EOR.W #$FFFF                              ; $85B191 |
  INC A                                     ; $85B194 |

CODE_85B195:
  STA.B $0A                                 ; $85B195 |
  SEC                                       ; $85B197 |
  SBC.B $06                                 ; $85B198 |
  BPL CODE_85B1C9                           ; $85B19A |
  BRA CODE_85B1B4                           ; $85B19C |

CODE_85B19E:
  SEC                                       ; $85B19E |
  LDA.W $000D,Y                             ; $85B19F |
  SBC.B $0D,X                               ; $85B1A2 |
  BPL CODE_85B1AA                           ; $85B1A4 |
  EOR.W #$FFFF                              ; $85B1A6 |
  INC A                                     ; $85B1A9 |

CODE_85B1AA:
  STA.B $0A                                 ; $85B1AA |
  SEC                                       ; $85B1AC |
  SBC.W $0030,X                             ; $85B1AD |
  SBC.B $30,X                               ; $85B1B0 |
  BPL CODE_85B1C9                           ; $85B1B2 |

CODE_85B1B4:
  LDY.B $FE                                 ; $85B1B4 |
  JSL.L CODE_FL_83D186                      ; $85B1B6 |

CODE_85B1BA:
  TDC                                       ; $85B1BA |
  STA.L $7E7C5E                             ; $85B1BB |
  PLA                                       ; $85B1BF |
  STA.B $48,X                               ; $85B1C0 |
  SEC                                       ; $85B1C2 |
  RTL                                       ; $85B1C3 |

CODE_FL_85B1C4:
  TDC                                       ; $85B1C4 |
  PHA                                       ; $85B1C5 |
  BRA CODE_85B1BA                           ; $85B1C6 |

CODE_JP_85B1C8:
  PLX                                       ; $85B1C8 |

CODE_85B1C9:
  PLY                                       ; $85B1C9 |
  CLC                                       ; $85B1CA |
  RTL                                       ; $85B1CB |

DATA8_85B1CC:
  db $00,$00                                ; $85B1CC |

DATA8_85B1CE:
  db $F4,$FF                                ; $85B1CE |

DATA8_85B1D0:
  db $00,$00                                ; $85B1D0 |

DATA8_85B1D2:
  db $0C,$00,$00,$00,$0C,$00,$00,$00        ; $85B1D2 |
  db $0C,$00,$0C,$00,$00,$00,$0C,$00        ; $85B1DA |
  db $00,$00,$F4,$FF,$00,$00,$0C,$00        ; $85B1E2 |
  db $00,$00,$00,$00,$A0,$FF,$00,$00        ; $85B1EA |
  db $60,$00,$00,$00,$60,$00,$00,$00        ; $85B1F2 |
  db $60,$00,$60,$00,$00,$00,$60,$00        ; $85B1FA |
  db $00,$00,$A0,$FF,$00,$00,$60,$00        ; $85B202 |
  db $00,$00                                ; $85B20A |

CODE_FL_85B20C:
  LDA.L $7E7C16                             ; $85B20C |
  BEQ CODE_85B215                           ; $85B210 |
  PHB                                       ; $85B212 |
  PLA                                       ; $85B213 |
  PLA                                       ; $85B214 |

CODE_85B215:
  RTL                                       ; $85B215 |

CODE_FL_85B216:
  STA.B $00                                 ; $85B216 |
  LDA.B $1A,X                               ; $85B218 |
  CMP.B $00                                 ; $85B21A |
  BCS CODE_85B224                           ; $85B21C |
  LDA.B $00                                 ; $85B21E |
  JSL.L CODE_FL_85B065                      ; $85B220 |

CODE_85B224:
  RTL                                       ; $85B224 |

CODE_FL_85B225:
  STA.B $00                                 ; $85B225 |
  LDA.L $7E7C16                             ; $85B227 |
  BEQ CODE_85B231                           ; $85B22B |
  PHB                                       ; $85B22D |
  PLA                                       ; $85B22E |
  PLA                                       ; $85B22F |
  RTL                                       ; $85B230 |

CODE_85B231:
  LDA.B $46,X                               ; $85B231 |
  AND.W #$C000                              ; $85B233 |
  BEQ CODE_JP_85B272                        ; $85B236 |
  LDA.B $46,X                               ; $85B238 |
  AND.W #$0400                              ; $85B23A |
  BNE CODE_85B244                           ; $85B23D |
  LDA.W #$00DC                              ; $85B23F |
  BRA CODE_85B247                           ; $85B242 |

CODE_85B244:
  LDA.W #$00DE                              ; $85B244 |

CODE_85B247:
  STA.B $48,X                               ; $85B247 |
  BRA CODE_JL_85B26E                        ; $85B249 |

CODE_FL_85B24B:
  STA.B $00                                 ; $85B24B |
  LDA.W $1C5C                               ; $85B24D |
  BEQ CODE_JP_85B272                        ; $85B250 |
  LDA.B $1A,X                               ; $85B252 |
  BEQ CODE_JP_85B272                        ; $85B254 |
  LDA.W $1C5C                               ; $85B256 |
  AND.W #$0200                              ; $85B259 |
  BNE CODE_85B263                           ; $85B25C |
  LDA.W #$00DC                              ; $85B25E |
  BRA CODE_85B266                           ; $85B261 |

CODE_85B263:
  LDA.W #$00DE                              ; $85B263 |

CODE_85B266:
  STA.B $48,X                               ; $85B266 |
  LDA.B $1A,X                               ; $85B268 |
  CMP.B $00                                 ; $85B26A |
  BCS CODE_JP_85B272                        ; $85B26C |

CODE_JL_85B26E:
  LDA.B $00                                 ; $85B26E |
  STA.B $1A,X                               ; $85B270 |

CODE_JP_85B272:
  RTL                                       ; $85B272 |

CODE_FL_85B273:
  CLC                                       ; $85B273 |
  LDA.B $11,X                               ; $85B274 |
  BNE CODE_85B27D                           ; $85B276 |
  JSL.L CODE_FL_85B50F                      ; $85B278 |
  SEC                                       ; $85B27C |

CODE_85B27D:
  RTL                                       ; $85B27D |

CODE_FL_85B27E:
  JSL.L CODE_FL_85B2BE                      ; $85B27E |
  BEQ CODE_85B2B1                           ; $85B282 |
  CMP.W #$0003                              ; $85B284 |
  BCS CODE_85B2A9                           ; $85B287 |
  BRA CODE_85B29F                           ; $85B289 |

CODE_FL_85B28B:
  JSL.L CODE_FL_83FD72                      ; $85B28B |
  BRA CODE_85B295                           ; $85B28F |

CODE_FL_85B291:
  JSL.L CODE_FL_83FD80                      ; $85B291 |

CODE_85B295:
  LDA.W $1C12                               ; $85B295 |
  BEQ CODE_85B2B1                           ; $85B298 |
  AND.W #$0003                              ; $85B29A |
  BEQ CODE_85B2A9                           ; $85B29D |

CODE_85B29F:
  LDA.B $26,X                               ; $85B29F |
  JSL.L CODE_FL_85B430                      ; $85B2A1 |
  STA.B $26,X                               ; $85B2A5 |
  BRA CODE_85B2B1                           ; $85B2A7 |

CODE_85B2A9:
  LDA.B $28,X                               ; $85B2A9 |
  JSL.L CODE_FL_85B430                      ; $85B2AB |
  STA.B $28,X                               ; $85B2AF |

CODE_85B2B1:
  RTL                                       ; $85B2B1 |

CODE_FL_85B2B2:
  JSL.L CODE_FL_83FD80                      ; $85B2B2 |
  LDA.W $1C12                               ; $85B2B6 |
  BEQ CODE_85B2BD                           ; $85B2B9 |
  STZ.B $26,X                               ; $85B2BB |

CODE_85B2BD:
  RTL                                       ; $85B2BD |

CODE_FL_85B2BE:
  STZ.B $00                                 ; $85B2BE |
  LDA.B $0D,X                               ; $85B2C0 |
  CMP.W #$00C0                              ; $85B2C2 |
  BCC CODE_85B2D3                           ; $85B2C5 |
  LDA.W #$0003                              ; $85B2C7 |
  STA.B $00                                 ; $85B2CA |
  LDA.W #$00C0                              ; $85B2CC |
  STA.B $0D,X                               ; $85B2CF |
  BRA CODE_85B31B                           ; $85B2D1 |

CODE_85B2D3:
  LDA.B $0D,X                               ; $85B2D3 |
  SEC                                       ; $85B2D5 |
  SBC.B $30,X                               ; $85B2D6 |
  CMP.W #$8000                              ; $85B2D8 |
  BCC CODE_85B2EE                           ; $85B2DB |
  LDA.W #$0004                              ; $85B2DD |
  STA.B $00                                 ; $85B2E0 |
  LDA.W #$0000                              ; $85B2E2 |
  CLC                                       ; $85B2E5 |
  ADC.B $30,X                               ; $85B2E6 |
  STA.B $0D,X                               ; $85B2E8 |
  BRA CODE_85B31B                           ; $85B2EA |

CODE_FL_85B2EC:
  STZ.B $00                                 ; $85B2EC |

CODE_85B2EE:
  LDA.B $09,X                               ; $85B2EE |
  CLC                                       ; $85B2F0 |
  ADC.B $2E,X                               ; $85B2F1 |
  CMP.W #$0100                              ; $85B2F3 |
  BCC CODE_85B304                           ; $85B2F6 |
  INC.B $00                                 ; $85B2F8 |
  LDA.W #$00FF                              ; $85B2FA |
  SEC                                       ; $85B2FD |
  SBC.B $2E,X                               ; $85B2FE |
  STA.B $09,X                               ; $85B300 |
  BRA CODE_85B31B                           ; $85B302 |

CODE_85B304:
  LDA.B $09,X                               ; $85B304 |
  SEC                                       ; $85B306 |
  SBC.B $2E,X                               ; $85B307 |
  CMP.W #$8000                              ; $85B309 |
  BCC CODE_85B31B                           ; $85B30C |
  LDA.W #$0002                              ; $85B30E |
  STA.B $00                                 ; $85B311 |
  LDA.W #$0001                              ; $85B313 |
  CLC                                       ; $85B316 |
  ADC.B $2E,X                               ; $85B317 |
  STA.B $09,X                               ; $85B319 |

CODE_85B31B:
  LDA.B $00                                 ; $85B31B |
  RTL                                       ; $85B31D |

CODE_FL_85B31E:
  STA.B $2A,X                               ; $85B31E |
  LDA.B $10,X                               ; $85B320 |
  CMP.B $00                                 ; $85B322 |
  BCC CODE_85B32C                           ; $85B324 |
  STZ.B $10,X                               ; $85B326 |
  STZ.B $11,X                               ; $85B328 |
  STZ.B $2A,X                               ; $85B32A |

CODE_85B32C:
  RTL                                       ; $85B32C |

  PHA                                       ; $85B32D |
  JSL.L CODE_FL_8CFE4B                      ; $85B32E |
  PLA                                       ; $85B332 |
  JSL.L CODE_FL_85B33C                      ; $85B333 |
  JSL.L CODE_FL_86C486                      ; $85B337 |
  RTL                                       ; $85B33B |

CODE_FL_85B33C:
  STA.B $18                                 ; $85B33C |
  LDA.B $1A                                 ; $85B33E |
  CMP.W #$0003                              ; $85B340 |
  BCS CODE_85B35E                           ; $85B343 |
  CMP.W #$0002                              ; $85B345 |
  BNE CODE_85B352                           ; $85B348 |
  LDA.B $18                                 ; $85B34A |
  STA.B $26,X                               ; $85B34C |
  STZ.B $28,X                               ; $85B34E |
  BRA CODE_85B372                           ; $85B350 |

CODE_85B352:
  LDA.B $18                                 ; $85B352 |
  JSL.L CODE_FL_85B430                      ; $85B354 |
  STA.B $26,X                               ; $85B358 |
  STZ.B $28,X                               ; $85B35A |
  BRA CODE_85B372                           ; $85B35C |

CODE_85B35E:
  BNE CODE_85B368                           ; $85B35E |
  LDA.B $18                                 ; $85B360 |
  STA.B $28,X                               ; $85B362 |
  STZ.B $26,X                               ; $85B364 |
  BRA CODE_85B372                           ; $85B366 |

CODE_85B368:
  LDA.B $18                                 ; $85B368 |
  JSL.L CODE_FL_85B430                      ; $85B36A |
  STA.B $28,X                               ; $85B36E |
  STZ.B $26,X                               ; $85B370 |

CODE_85B372:
  RTL                                       ; $85B372 |

CODE_FL_85B373:
  STA.B $02                                 ; $85B373 |
  LDA.B ($48,X)                             ; $85B375 |
  TAY                                       ; $85B377 |
  LDA.W $000D,Y                             ; $85B378 |
  SEC                                       ; $85B37B |
  SBC.B $0D,X                               ; $85B37C |
  BMI CODE_85B386                           ; $85B37E |
  LDA.B $02                                 ; $85B380 |
  STA.B $28,X                               ; $85B382 |
  BRA CODE_85B38E                           ; $85B384 |

CODE_85B386:
  LDA.B $02                                 ; $85B386 |
  JSL.L CODE_FL_85B430                      ; $85B388 |
  STA.B $28,X                               ; $85B38C |

CODE_85B38E:
  LDA.W $0009,Y                             ; $85B38E |
  SEC                                       ; $85B391 |
  SBC.B $09,X                               ; $85B392 |
  BMI CODE_85B39C                           ; $85B394 |
  LDA.B $00                                 ; $85B396 |
  STA.B $26,X                               ; $85B398 |
  BRA CODE_85B3A4                           ; $85B39A |

CODE_85B39C:
  LDA.B $00                                 ; $85B39C |
  JSL.L CODE_FL_85B430                      ; $85B39E |
  STA.B $26,X                               ; $85B3A2 |

CODE_85B3A4:
  JSL.L CODE_FL_86C4F1                      ; $85B3A4 |
  RTL                                       ; $85B3A8 |

CODE_FL_85B3A9:
  PHA                                       ; $85B3A9 |
  LDA.B ($48,X)                             ; $85B3AA |
  TAY                                       ; $85B3AC |
  LDA.W $0009,Y                             ; $85B3AD |
  STA.B $00                                 ; $85B3B0 |
  LDA.W $000D,Y                             ; $85B3B2 |
  STA.B $02                                 ; $85B3B5 |
  JSL.L CODE_FL_8AB426                      ; $85B3B7 |
  PLY                                       ; $85B3BB |
  JML.L CODE_FL_8AB499                      ; $85B3BC |

CODE_FL_85B3C0:
  LDA.B $1A                                 ; $85B3C0 |
  BEQ CODE_85B3D9                           ; $85B3C2 |
  LDA.B $04,X                               ; $85B3C4 |
  AND.W #$DFDF                              ; $85B3C6 |
  STA.B $04,X                               ; $85B3C9 |
  LDA.B $1A                                 ; $85B3CB |
  CMP.W #$0002                              ; $85B3CD |
  BNE CODE_85B3D9                           ; $85B3D0 |
  LDA.B $04,X                               ; $85B3D2 |
  ORA.W #$2020                              ; $85B3D4 |
  STA.B $04,X                               ; $85B3D7 |

CODE_85B3D9:
  RTL                                       ; $85B3D9 |

CODE_FL_85B3DA:
  CMP.W #$0003                              ; $85B3DA |
  BCS CODE_85B3E8                           ; $85B3DD |
  JSL.L CODE_FL_86C4F1                      ; $85B3DF |
  LDA.W #$0000                              ; $85B3E3 |
  BRA CODE_85B3F4                           ; $85B3E6 |

CODE_85B3E8:
  LDA.B $28,X                               ; $85B3E8 |
  BPL CODE_85B3F1                           ; $85B3EA |
  LDA.W #$0004                              ; $85B3EC |
  BRA CODE_85B3F4                           ; $85B3EF |

CODE_85B3F1:
  LDA.W #$0003                              ; $85B3F1 |

CODE_85B3F4:
  STA.B $1A                                 ; $85B3F4 |
  RTL                                       ; $85B3F6 |

CODE_FL_85B3F7:
  JSL.L CODE_FL_83FD80                      ; $85B3F7 |
  LDA.W $1C12                               ; $85B3FB |
  BEQ CODE_85B42F                           ; $85B3FE |
  BIT.W #$0003                              ; $85B400 |
  BEQ CODE_85B41C                           ; $85B403 |
  BRA CODE_85B412                           ; $85B405 |

CODE_FL_85B407:
  JSL.L CODE_FL_8CFE4B                      ; $85B407 |
  LDA.B $1A                                 ; $85B40B |
  CMP.W #$0003                              ; $85B40D |
  BCS CODE_85B41C                           ; $85B410 |

CODE_85B412:
  LDA.B $26,X                               ; $85B412 |
  JSL.L CODE_FL_85B430                      ; $85B414 |
  STA.B $26,X                               ; $85B418 |
  BRA CODE_85B424                           ; $85B41A |

CODE_85B41C:
  LDA.B $28,X                               ; $85B41C |
  JSL.L CODE_FL_85B430                      ; $85B41E |
  STA.B $28,X                               ; $85B422 |

CODE_85B424:
  JSL.L CODE_FL_86C4F1                      ; $85B424 |
  LDA.W #$0020                              ; $85B428 |
  STA.B $4C,X                               ; $85B42B |
  INC.B $1A,X                               ; $85B42D |

CODE_85B42F:
  RTL                                       ; $85B42F |

CODE_FL_85B430:
  BMI CODE_85B438                           ; $85B430 |
  EOR.W #$FFFF                              ; $85B432 |
  INC A                                     ; $85B435 |
  BRA CODE_85B43E                           ; $85B436 |

CODE_85B438:
  BPL CODE_85B43E                           ; $85B438 |
  EOR.W #$FFFF                              ; $85B43A |
  INC A                                     ; $85B43D |

CODE_85B43E:
  RTL                                       ; $85B43E |

  STA.B $18                                 ; $85B43F |
  LDY.B $26,X                               ; $85B441 |
  BEQ CODE_85B44F                           ; $85B443 |
  BMI CODE_85B44B                           ; $85B445 |
  EOR.W #$FFFF                              ; $85B447 |
  INC A                                     ; $85B44A |

CODE_85B44B:
  STA.B $26,X                               ; $85B44B |
  BRA CODE_85B45B                           ; $85B44D |

CODE_85B44F:
  LDY.B $28,X                               ; $85B44F |
  BMI CODE_85B459                           ; $85B451 |
  LDA.B $18                                 ; $85B453 |
  EOR.W #$FFFF                              ; $85B455 |
  INC A                                     ; $85B458 |

CODE_85B459:
  STA.B $28,X                               ; $85B459 |

CODE_85B45B:
  RTL                                       ; $85B45B |

CODE_FL_85B45C:
  LDA.W #$0004                              ; $85B45C |
  STA.B $1A                                 ; $85B45F |
  LDA.B ($48,X)                             ; $85B461 |
  TAY                                       ; $85B463 |
  LDA.W $000D,Y                             ; $85B464 |
  SEC                                       ; $85B467 |
  SBC.B $0D,X                               ; $85B468 |
  BMI CODE_85B46E                           ; $85B46A |
  DEC.B $1A                                 ; $85B46C |

CODE_85B46E:
  RTL                                       ; $85B46E |

CODE_FL_85B46F:
  LDA.W #$0001                              ; $85B46F |
  STA.B $1A                                 ; $85B472 |
  LDA.B ($48,X)                             ; $85B474 |
  TAY                                       ; $85B476 |
  LDA.W $0009,Y                             ; $85B477 |
  SEC                                       ; $85B47A |
  SBC.B $09,X                               ; $85B47B |
  BMI CODE_85B481                           ; $85B47D |
  INC.B $1A                                 ; $85B47F |

CODE_85B481:
  RTL                                       ; $85B481 |

CODE_FL_85B482:
  ASL A                                     ; $85B482 |
  ASL A                                     ; $85B483 |
  ASL A                                     ; $85B484 |
  TAY                                       ; $85B485 |
  LDA.B $04,X                               ; $85B486 |
  AND.W #$9F9F                              ; $85B488 |
  STA.B $04,X                               ; $85B48B |
  LDA.B $1A                                 ; $85B48D |
  CMP.W #$0003                              ; $85B48F |
  BCC CODE_85B4A0                           ; $85B492 |
  BNE CODE_85B49B                           ; $85B494 |
  LDA.W LOOSE_OP_0088DA,Y                   ; $85B496 |
  BRA CODE_85B4AF                           ; $85B499 |

CODE_85B49B:
  LDA.W CODE_0088DC,Y                       ; $85B49B |
  BRA CODE_85B4AF                           ; $85B49E |

CODE_85B4A0:
  CMP.W #$0001                              ; $85B4A0 |
  BEQ CODE_85B4AC                           ; $85B4A3 |
  LDA.B $04,X                               ; $85B4A5 |
  ORA.W #$2020                              ; $85B4A7 |
  STA.B $04,X                               ; $85B4AA |

CODE_85B4AC:
  LDA.W CODE_0088DE,Y                       ; $85B4AC |

CODE_85B4AF:
  CLC                                       ; $85B4AF |
  ADC.W CODE_0088D8,Y                       ; $85B4B0 |
  RTL                                       ; $85B4B3 |

CODE_FL_85B4B4:
  AND.W #$00FF                              ; $85B4B4 |
  STA.B $08                                 ; $85B4B7 |
  STZ.B $1E,X                               ; $85B4B9 |
  LDA.B $4E,X                               ; $85B4BB |
  AND.W #$1000                              ; $85B4BD |
  BNE CODE_85B4C8                           ; $85B4C0 |
  JSL.L CODE_FL_8CFE4B                      ; $85B4C2 |
  BRA CODE_85B4CC                           ; $85B4C6 |

CODE_85B4C8:
  JSL.L CODE_FL_85B46F                      ; $85B4C8 |

CODE_85B4CC:
  LDA.B $08                                 ; $85B4CC |
  JSL.L CODE_FL_85B482                      ; $85B4CE |
  STA.B $00,X                               ; $85B4D2 |
  STZ.B $26,X                               ; $85B4D4 |
  STZ.B $28,X                               ; $85B4D6 |
  LDA.W #$013B                              ; $85B4D8 |
  STA.B $18,X                               ; $85B4DB |
  STZ.B $1A,X                               ; $85B4DD |
  RTL                                       ; $85B4DF |

CODE_FL_85B4E0:
  AND.W #$00FF                              ; $85B4E0 |
  ASL A                                     ; $85B4E3 |
  ASL A                                     ; $85B4E4 |
  TAY                                       ; $85B4E5 |
  LDA.W CODE_0089A8,Y                       ; $85B4E6 |
  STA.B $18,X                               ; $85B4E9 |
  LDA.B $4E,X                               ; $85B4EB |
  AND.W #$0100                              ; $85B4ED |
  BNE CODE_85B507                           ; $85B4F0 |
  LDA.W LOOSE_OP_0089AA,Y                   ; $85B4F2 |
  JSL.L CODE_FL_86CAEE                      ; $85B4F5 |
  LDA.W #$FFC0                              ; $85B4F9 |
  JSL.L CODE_FL_8CFE29                      ; $85B4FC |
  LDA.W #$0040                              ; $85B500 |
  JSL.L CODE_FL_8CFE19                      ; $85B503 |

CODE_85B507:
  STZ.B $46,X                               ; $85B507 |
  LDA.W #$0001                              ; $85B509 |
  STA.B $1A,X                               ; $85B50C |
  RTL                                       ; $85B50E |

CODE_FL_85B50F:
  STZ.B $4C,X                               ; $85B50F |
  STZ.B $2A,X                               ; $85B511 |
  STZ.B $12,X                               ; $85B513 |
  STZ.B $11,X                               ; $85B515 |
  STZ.B $10,X                               ; $85B517 |
  RTL                                       ; $85B519 |

CODE_FL_85B51A:
  STA.B $00                                 ; $85B51A |
  JSL.L CODE_FL_86C432                      ; $85B51C |
  LDA.B $86                                 ; $85B520 |
  AND.W #$007F                              ; $85B522 |
  ADC.B $00                                 ; $85B525 |
  RTL                                       ; $85B527 |

CODE_FL_85B528:
  STA.B $00                                 ; $85B528 |
  JSL.L CODE_FL_86C432                      ; $85B52A |
  LDA.B $86                                 ; $85B52E |
  AND.B $00                                 ; $85B530 |
  BNE CODE_85B535                           ; $85B532 |
  INC A                                     ; $85B534 |

CODE_85B535:
  RTL                                       ; $85B535 |

CODE_FL_85B536:
  LDA.B $02,X                               ; $85B536 |
  SEC                                       ; $85B538 |
  SBC.W #$0038                              ; $85B539 |
  ASL A                                     ; $85B53C |
  PHX                                       ; $85B53D |
  JSL.L CODE_FL_80C2BA                      ; $85B53E |
  PLX                                       ; $85B542 |
  RTL                                       ; $85B543 |

CODE_FL_85B544:
  TXA                                       ; $85B544 |
  LSR A                                     ; $85B545 |
  LSR A                                     ; $85B546 |
  LSR A                                     ; $85B547 |
  ADC.W $1C38                               ; $85B548 |
  JSL.L CODE_FL_8AB4FC                      ; $85B54B |
  CLC                                       ; $85B54F |
  LDA.B $00                                 ; $85B550 |
  JML.L CODE_FL_8CFD63                      ; $85B552 |

CODE_85B556:
  JSL.L CODE_FL_85AAC6                      ; $85B556 |
  JSL.L CODE_FL_97FC80                      ; $85B55A |
  LDY.W $0044,X                             ; $85B55E |
  JSL.L CODE_FL_86C89E                      ; $85B561 |
  LDA.W $0002,Y                             ; $85B565 |
  AND.W #$0080                              ; $85B568 |
  STA.B $00                                 ; $85B56B |
  LDA.W $0002,X                             ; $85B56D |
  AND.W #$FF7F                              ; $85B570 |
  ORA.B $00                                 ; $85B573 |
  STA.W $0002,X                             ; $85B575 |
  RTL                                       ; $85B578 |

CODE_85B579:
  JSL.L CODE_FL_85AAC6                      ; $85B579 |
  LDY.W $0044,X                             ; $85B57D |
  JML.L CODE_FL_86C89E                      ; $85B580 |

CODE_85B584:
  JSL.L CODE_FL_85AAC6                      ; $85B584 |
  JML.L CODE_FL_97FC80                      ; $85B588 |

CODE_85B58C:
  JSL.L CODE_FL_85AAC6                      ; $85B58C |
  JSL.L CODE_FL_86C855                      ; $85B590 |
  JML.L CODE_FL_97FC80                      ; $85B594 |

CODE_85B598:
  JSL.L CODE_FL_97FC80                      ; $85B598 |
  JSL.L CODE_FL_86C855                      ; $85B59C |
  DEC.B $2C,X                               ; $85B5A0 |
  CLC                                       ; $85B5A2 |
  LDA.W #$0080                              ; $85B5A3 |
  ADC.B $28,X                               ; $85B5A6 |
  STA.B $28,X                               ; $85B5A8 |
  JSL.L CODE_FL_86C70D                      ; $85B5AA |
  JML.L CODE_FL_86CA57                      ; $85B5AE |

CODE_85B5B2:
  JSL.L CODE_FL_97FC80                      ; $85B5B2 |
  JSL.L CODE_FL_8CFD59                      ; $85B5B6 |
  DEC.B $2C,X                               ; $85B5BA |
  CLC                                       ; $85B5BC |
  LDA.W #$FF80                              ; $85B5BD |
  ADC.B $2A,X                               ; $85B5C0 |
  STA.B $2A,X                               ; $85B5C2 |
  JSL.L CODE_FL_86C70D                      ; $85B5C4 |
  JML.L CODE_FL_86CA57                      ; $85B5C8 |

CODE_85B5CC:
  JSL.L CODE_FL_86C855                      ; $85B5CC |
  DEC.B $2C,X                               ; $85B5D0 |
  LDA.W $1C38                               ; $85B5D2 |
  LSR A                                     ; $85B5D5 |
  LDA.W #$DE93                              ; $85B5D6 |
  BCS CODE_85B5DE                           ; $85B5D9 |
  LDA.W #$DEA2                              ; $85B5DB |

CODE_85B5DE:
  STA.B $1E,X                               ; $85B5DE |
  JSL.L CODE_FL_98FF18                      ; $85B5E0 |
  CLC                                       ; $85B5E4 |
  LDA.W #$0080                              ; $85B5E5 |
  ADC.B $28,X                               ; $85B5E8 |
  STA.B $28,X                               ; $85B5EA |
  JSL.L CODE_FL_86C70D                      ; $85B5EC |
  JML.L CODE_FL_86CA57                      ; $85B5F0 |

CODE_85B5F4:
  JSL.L CODE_FL_97FC80                      ; $85B5F4 |
  LDA.B $20,X                               ; $85B5F8 |
  BNE CODE_85B600                           ; $85B5FA |
  JML.L CODE_FL_86CA57                      ; $85B5FC |

CODE_85B600:
  RTL                                       ; $85B600 |

CODE_85B601:
  JSL.L CODE_FL_86C3F8                      ; $85B601 |
  PHX                                       ; $85B605 |
  ASL A                                     ; $85B606 |
  TAX                                       ; $85B607 |
  LDA.L PTR16_85B612,X                      ; $85B608 |
  PLX                                       ; $85B60C |
  STA.B $00                                 ; $85B60D |
  JMP.W ($0000)                             ; $85B60F |

PTR16_85B612:
  dw CODE_85B61A                            ; $85B612 |
  dw CODE_FL_85B67E                         ; $85B614 |
  dw CODE_85B6D5                            ; $85B616 |
  dw CODE_85B6F0                            ; $85B618 |

CODE_85B61A:
  LDA.W #$DB32                              ; $85B61A |
  STA.B $00,X                               ; $85B61D |

CODE_JP_85B61F:
  BIT.W $1C3E                               ; $85B61F |
  BPL CODE_85B656                           ; $85B622 |
  LDA.W #$0500                              ; $85B624 |
  STA.B $2A,X                               ; $85B627 |

CODE_85B629:
  JSL.L CODE_FL_8CFF0C                      ; $85B629 |
  JSL.L CODE_FL_86C63A                      ; $85B62D |
  CLC                                       ; $85B631 |
  LDA.B $0D,X                               ; $85B632 |
  ADC.W #$0006                              ; $85B634 |
  STA.B $0D,X                               ; $85B637 |
  JSL.L CODE_FL_83FD80                      ; $85B639 |
  LDA.W $1C16                               ; $85B63D |
  BEQ CODE_85B646                           ; $85B640 |
  JML.L CODE_FL_86CA36                      ; $85B642 |

CODE_85B646:
  LDA.W #$0043                              ; $85B646 |
  STA.B $02,X                               ; $85B649 |
  LDA.W #$4020                              ; $85B64B |
  STA.B $34,X                               ; $85B64E |
  LDA.W #$0180                              ; $85B650 |
  STA.B $2C,X                               ; $85B653 |
  RTL                                       ; $85B655 |

CODE_85B656:
  LDA.B $0D,X                               ; $85B656 |
  PHA                                       ; $85B658 |
  SBC.W #$0004                              ; $85B659 |
  STA.B $0D,X                               ; $85B65C |
  JSL.L CODE_FL_858AF1                      ; $85B65E |
  BEQ CODE_85B669                           ; $85B662 |
  PLA                                       ; $85B664 |
  JML.L CODE_FL_86CA36                      ; $85B665 |

CODE_85B669:
  PLA                                       ; $85B669 |
  STA.B $0D,X                               ; $85B66A |
  LDA.W #$FB00                              ; $85B66C |
  STA.B $28,X                               ; $85B66F |

CODE_85B671:
  JSL.L CODE_FL_86C63F                      ; $85B671 |
  BRA CODE_85B646                           ; $85B675 |

CODE_JP_85B677:
  BIT.W $1C3E                               ; $85B677 |
  BPL CODE_85B671                           ; $85B67A |
  BRA CODE_85B629                           ; $85B67C |

CODE_FL_85B67E:
  BIT.W $1C3E                               ; $85B67E |
  BPL CODE_85B6B2                           ; $85B681 |
  JSL.L CODE_FL_8CFD59                      ; $85B683 |
  LDA.B $18,X                               ; $85B687 |
  CMP.W #$0009                              ; $85B689 |
  BEQ CODE_85B69D                           ; $85B68C |
  BIT.B $2A,X                               ; $85B68E |
  BPL CODE_85B69D                           ; $85B690 |
  JSL.L CODE_FL_85F7C9                      ; $85B692 |
  LDA.B $1A,X                               ; $85B696 |
  CMP.W #$0001                              ; $85B698 |
  BNE CODE_85B6AE                           ; $85B69B |

CODE_85B69D:
  JSL.L CODE_FL_8CFEF6                      ; $85B69D |
  BPL CODE_85B6AE                           ; $85B6A1 |
  LDA.B $3A,X                               ; $85B6A3 |
  BNE CODE_85B6AF                           ; $85B6A5 |
  LDA.W #$0200                              ; $85B6A7 |
  STA.B $2A,X                               ; $85B6AA |
  INC.B $3A,X                               ; $85B6AC |

CODE_85B6AE:
  RTL                                       ; $85B6AE |

CODE_85B6AF:
  INC.B $1A,X                               ; $85B6AF |
  RTL                                       ; $85B6B1 |

CODE_85B6B2:
  BIT.B $28,X                               ; $85B6B2 |
  BMI CODE_85B6C1                           ; $85B6B4 |
  JSL.L CODE_FL_85F885                      ; $85B6B6 |
  LDA.B $1A,X                               ; $85B6BA |
  CMP.W #$0001                              ; $85B6BC |
  BNE CODE_85B6AE                           ; $85B6BF |

CODE_85B6C1:
  JSL.L CODE_FL_85A5F2                      ; $85B6C1 |
  BEQ CODE_85B6D4                           ; $85B6C5 |
  LDA.B $3A,X                               ; $85B6C7 |
  BNE CODE_85B6D4                           ; $85B6C9 |
  LDA.W #$FE00                              ; $85B6CB |
  STA.B $28,X                               ; $85B6CE |
  INC.B $3A,X                               ; $85B6D0 |
  DEC.B $1A,X                               ; $85B6D2 |

CODE_85B6D4:
  RTL                                       ; $85B6D4 |

CODE_85B6D5:
  STZ.B $26,X                               ; $85B6D5 |
  STZ.B $28,X                               ; $85B6D7 |
  JSL.L CODE_FL_85F885                      ; $85B6D9 |

CODE_JP_85B6DD:
  LDA.B $2C,X                               ; $85B6DD |
  CMP.W #$0040                              ; $85B6DF |
  BCS CODE_85B6E8                           ; $85B6E2 |
  JSL.L CODE_FL_85A893                      ; $85B6E4 |

CODE_85B6E8:
  JSL.L CODE_FL_86C70D                      ; $85B6E8 |
  JML.L CODE_FL_86CA57                      ; $85B6EC |

CODE_85B6F0:
  LDA.W #$0001                              ; $85B6F0 |
  JSL.L CODE_FL_83D25D                      ; $85B6F3 |

CODE_FL_85B6F7:
  LDA.W #$0015                              ; $85B6F7 |
  JSL.L push_sound_queue                    ; $85B6FA |

CODE_JP_85B6FE:
  LDA.W #$001F                              ; $85B6FE |
  JSL.L CODE_FL_86C9C5                      ; $85B701 |
  BCS CODE_85B712                           ; $85B705 |
  JSL.L CODE_FL_86C7C4                      ; $85B707 |
  LDA.W #$0040                              ; $85B70B |
  JSL.L CODE_FL_86CAE6                      ; $85B70E |

CODE_85B712:
  JML.L CODE_FL_86CA2D                      ; $85B712 |

CODE_85B716:
  LDA.B $1A,X                               ; $85B716 |
  PHX                                       ; $85B718 |
  ASL A                                     ; $85B719 |
  TAX                                       ; $85B71A |
  LDA.L PTR16_85B725,X                      ; $85B71B |
  PLX                                       ; $85B71F |
  STA.B $00                                 ; $85B720 |
  JMP.W ($0000)                             ; $85B722 |

PTR16_85B725:
  dw CODE_85B72D                            ; $85B725 |
  dw CODE_85B74D                            ; $85B727 |
  dw CODE_85B74D                            ; $85B729 |
  dw CODE_85B751                            ; $85B72B |

CODE_85B72D:
  JSL.L CODE_FL_85ABBB                      ; $85B72D |
  JSL.L CODE_FL_8CF98E                      ; $85B731 |
  BCC CODE_85B738                           ; $85B735 |
  RTL                                       ; $85B737 |

CODE_85B738:
  LDA.W #$DB3B                              ; $85B738 |
  STA.B $00,X                               ; $85B73B |
  LDA.W #$0043                              ; $85B73D |
  STA.B $02,X                               ; $85B740 |
  LDA.B $34,X                               ; $85B742 |
  ORA.W #$4020                              ; $85B744 |
  STA.B $34,X                               ; $85B747 |
  JML.L CODE_FL_86C63F                      ; $85B749 |

CODE_85B74D:
  JML.L CODE_FL_85F885                      ; $85B74D |

CODE_85B751:
  LDA.W #$000A                              ; $85B751 |
  JSL.L CODE_FL_83D1EA                      ; $85B754 |
  JSL.L CODE_FL_85ABC2                      ; $85B758 |

CODE_85B75C:
  JSL.L CODE_FL_86C870                      ; $85B75C |
  JSL.L CODE_FL_86C412                      ; $85B760 |
  PHX                                       ; $85B764 |
  ASL A                                     ; $85B765 |
  TAX                                       ; $85B766 |
  LDA.L PTR16_85B771,X                      ; $85B767 |
  PLX                                       ; $85B76B |
  STA.B $00                                 ; $85B76C |
  JMP.W ($0000)                             ; $85B76E |

PTR16_85B771:
  dw CODE_85B779                            ; $85B771 |
  dw CODE_FL_85B67E                         ; $85B773 |
  dw CODE_85B78B                            ; $85B775 |
  dw CODE_85B792                            ; $85B777 |

CODE_85B779:
  LDA.W #$DB3B                              ; $85B779 |
  STA.B $00,X                               ; $85B77C |
  LDA.B $4E,X                               ; $85B77E |
  AND.W #$0001                              ; $85B780 |
  BNE CODE_85B788                           ; $85B783 |
  JMP.W CODE_JP_85B61F                      ; $85B785 |

CODE_85B788:
  JMP.W CODE_JP_85B677                      ; $85B788 |

CODE_85B78B:
  JSL.L CODE_FL_85F885                      ; $85B78B |
  JMP.W CODE_JP_85B6DD                      ; $85B78F |

CODE_85B792:
  LDA.W #$0002                              ; $85B792 |
  JSL.L CODE_FL_83D1EA                      ; $85B795 |
  BRL CODE_FL_85B6F7                        ; $85B799 |

CODE_85B79C:
  JSL.L CODE_FL_86C3F8                      ; $85B79C |
  LDA.B $1A,X                               ; $85B7A0 |
  PHX                                       ; $85B7A2 |
  ASL A                                     ; $85B7A3 |
  TAX                                       ; $85B7A4 |
  LDA.L PTR16_85B7AF,X                      ; $85B7A5 |
  PLX                                       ; $85B7A9 |
  STA.B $00                                 ; $85B7AA |
  JMP.W ($0000)                             ; $85B7AC |

PTR16_85B7AF:
  dw CODE_85B7B9                            ; $85B7AF |
  dw CODE_85BC2A                            ; $85B7B1 |
  dw CODE_85BC37                            ; $85B7B3 |
  dw CODE_85B7C1                            ; $85B7B5 |
  dw CODE_85B7D7                            ; $85B7B7 |

CODE_85B7B9:
  LDA.W #$DB44                              ; $85B7B9 |
  STA.B $00,X                               ; $85B7BC |
  JMP.W CODE_JP_85BC15                      ; $85B7BE |

CODE_85B7C1:
  JSL.L CODE_FL_85AC15                      ; $85B7C1 |

CODE_JP_85B7C5:
  STZ.B $34,X                               ; $85B7C5 |
  LDA.L $700298                             ; $85B7C7 |
  STA.L $7E7C06                             ; $85B7CB |
  LDA.W #$C215                              ; $85B7CF |
  STA.B $40,X                               ; $85B7D2 |
  INC.B $1A,X                               ; $85B7D4 |
  RTL                                       ; $85B7D6 |

CODE_85B7D7:
  JSL.L CODE_FL_86C239                      ; $85B7D7 |
  BCC CODE_85B7F5                           ; $85B7DB |

CODE_JP_85B7DD:
  LDA.W #$0001                              ; $85B7DD |
  JSL.L CODE_FL_868025                      ; $85B7E0 |
  JSL.L CODE_FL_85B6F7                      ; $85B7E4 |
  LDA.L $700298                             ; $85B7E8 |
  BNE CODE_85B7F5                           ; $85B7EC |
  LDA.W #$0025                              ; $85B7EE |
  JSL.L push_sound_queue                    ; $85B7F1 |

CODE_85B7F5:
  RTL                                       ; $85B7F5 |

CODE_85B7F6:
  JSL.L CODE_FL_86C3F8                      ; $85B7F6 |
  LDA.B $1A,X                               ; $85B7FA |
  PHX                                       ; $85B7FC |
  ASL A                                     ; $85B7FD |
  TAX                                       ; $85B7FE |
  LDA.L PTR16_85B809,X                      ; $85B7FF |
  PLX                                       ; $85B803 |
  STA.B $00                                 ; $85B804 |
  JMP.W ($0000)                             ; $85B806 |

PTR16_85B809:
  dw CODE_85B871                            ; $85B809 |
  dw CODE_85B813                            ; $85B80B |
  dw CODE_85B88C                            ; $85B80D |
  dw CODE_85B7C1                            ; $85B80F |
  dw CODE_85B828                            ; $85B811 |

CODE_85B813:
  JSL.L CODE_FL_85B67E                      ; $85B813 |
  LDA.B $3A,X                               ; $85B817 |
  CMP.W #$0001                              ; $85B819 |
  BNE CODE_85B827                           ; $85B81C |
  INC.B $3A,X                               ; $85B81E |
  LDA.W #$00AC                              ; $85B820 |
  JSL.L CODE_FL_8089BD                      ; $85B823 |

CODE_85B827:
  RTL                                       ; $85B827 |

CODE_85B828:
  LDA.B $4E,X                               ; $85B828 |
  AND.W #$00FF                              ; $85B82A |
  CMP.W #$0019                              ; $85B82D |
  BNE CODE_85B843                           ; $85B830 |
  LDA.W #$01CB                              ; $85B832 |
  JSL.L CODE_FL_80A90E                      ; $85B835 |
  JSL.L CODE_FL_86C239                      ; $85B839 |
  BCC CODE_85B842                           ; $85B83D |
  JMP.W CODE_JP_85B7DD                      ; $85B83F |

CODE_85B842:
  RTL                                       ; $85B842 |

CODE_85B843:
  LDA.W #$01CC                              ; $85B843 |
  JSL.L CODE_FL_80A90E                      ; $85B846 |
  JSL.L CODE_FL_86C239                      ; $85B84A |
  BCC CODE_85B853                           ; $85B84E |
  JMP.W CODE_JP_85B7DD                      ; $85B850 |

CODE_85B853:
  RTL                                       ; $85B853 |

CODE_85B854:
  JSL.L CODE_FL_86C3F8                      ; $85B854 |
  LDA.B $1A,X                               ; $85B858 |
  PHX                                       ; $85B85A |
  ASL A                                     ; $85B85B |
  TAX                                       ; $85B85C |
  LDA.L PTR16_85B867,X                      ; $85B85D |
  PLX                                       ; $85B861 |
  STA.B $00                                 ; $85B862 |
  JMP.W ($0000)                             ; $85B864 |

PTR16_85B867:
  dw CODE_85B871                            ; $85B867 |
  dw CODE_FL_85B67E                         ; $85B869 |
  dw CODE_85B88C                            ; $85B86B |
  dw CODE_85B890                            ; $85B86D |
  dw CODE_85B7D7                            ; $85B86F |

CODE_85B871:
  JSL.L CODE_FL_85AC48                      ; $85B871 |
  LDA.W #$DB44                              ; $85B875 |
  STA.B $00,X                               ; $85B878 |
  JSL.L CODE_FL_8CFF0C                      ; $85B87A |
  LDA.W #$0043                              ; $85B87E |
  STA.B $02,X                               ; $85B881 |
  LDA.W #$4020                              ; $85B883 |
  STA.B $34,X                               ; $85B886 |
  JML.L CODE_FL_86C63A                      ; $85B888 |

CODE_85B88C:
  JML.L CODE_FL_85F7C9                      ; $85B88C |

CODE_85B890:
  JSL.L CODE_FL_85AC4F                      ; $85B890 |
  JMP.W CODE_JP_85B7C5                      ; $85B894 |

CODE_85B897:
  JSL.L CODE_FL_86C3F8                      ; $85B897 |
  LDA.B $1A,X                               ; $85B89B |
  PHX                                       ; $85B89D |
  ASL A                                     ; $85B89E |
  TAX                                       ; $85B89F |
  LDA.L PTR16_85B8AA,X                      ; $85B8A0 |
  PLX                                       ; $85B8A4 |
  STA.B $00                                 ; $85B8A5 |
  JMP.W ($0000)                             ; $85B8A7 |

PTR16_85B8AA:
  dw CODE_85B8B6                            ; $85B8AA |
  dw CODE_85BC2A                            ; $85B8AC |
  dw CODE_85BC37                            ; $85B8AE |
  dw CODE_85B8BE                            ; $85B8B0 |
  dw CODE_85BF70                            ; $85B8B2 |
  dw CODE_85B8CC                            ; $85B8B4 |

CODE_85B8B6:
  LDA.W #$DB55                              ; $85B8B6 |
  STA.B $00,X                               ; $85B8B9 |
  JMP.W CODE_JP_85BC15                      ; $85B8BB |

CODE_85B8BE:
  JSL.L CODE_FL_85AC15                      ; $85B8BE |
  STZ.B $34,X                               ; $85B8C2 |
  LDA.W #$C2CA                              ; $85B8C4 |
  STA.B $40,X                               ; $85B8C7 |
  INC.B $1A,X                               ; $85B8C9 |
  RTL                                       ; $85B8CB |

CODE_85B8CC:
  JSL.L CODE_FL_86C239                      ; $85B8CC |
  BCC CODE_85B8EB                           ; $85B8D0 |
  JSL.L CODE_FL_85A8C3                      ; $85B8D2 |
  JSL.L CODE_FL_83A23F                      ; $85B8D6 |
  LDA.W #$0002                              ; $85B8DA |
  JSL.L CODE_FL_83D22E                      ; $85B8DD |
  LDA.W #$0025                              ; $85B8E1 |
  JSL.L push_sound_queue                    ; $85B8E4 |
  JMP.W CODE_FL_85B6F7                      ; $85B8E8 |

CODE_85B8EB:
  RTL                                       ; $85B8EB |

CODE_85B8EC:
  JSL.L CODE_FL_86C3F8                      ; $85B8EC |
  LDA.B $1A,X                               ; $85B8F0 |
  PHX                                       ; $85B8F2 |
  ASL A                                     ; $85B8F3 |
  TAX                                       ; $85B8F4 |
  LDA.L PTR16_85B8FF,X                      ; $85B8F5 |
  PLX                                       ; $85B8F9 |
  STA.B $00                                 ; $85B8FA |
  JMP.W ($0000)                             ; $85B8FC |

PTR16_85B8FF:
  dw CODE_85B907                            ; $85B8FF |
  dw CODE_FL_85B67E                         ; $85B901 |
  dw CODE_85B6D5                            ; $85B903 |
  dw CODE_85B919                            ; $85B905 |

CODE_85B907:
  LDA.W #$DA1C                              ; $85B907 |
  STA.B $00,X                               ; $85B90A |
  LDA.B $4E,X                               ; $85B90C |
  AND.W #$00FF                              ; $85B90E |
  BNE CODE_85B916                           ; $85B911 |
  JMP.W CODE_JP_85B61F                      ; $85B913 |

CODE_85B916:
  JMP.W CODE_JP_85B677                      ; $85B916 |

CODE_85B919:
  LDA.W #$0005                              ; $85B919 |
  JSL.L CODE_FL_83D1C9                      ; $85B91C |
  LDA.W #$0014                              ; $85B920 |
  JSL.L push_sound_queue                    ; $85B923 |
  JMP.W CODE_JP_85B6FE                      ; $85B927 |

CODE_85B92A:
  LDA.B $0D,X                               ; $85B92A |
  BMI CODE_85B938                           ; $85B92C |
  CMP.W #$0090                              ; $85B92E |
  BCC CODE_85B938                           ; $85B931 |
  LDA.W #$0090                              ; $85B933 |
  STA.B $0D,X                               ; $85B936 |

CODE_85B938:
  JSL.L CODE_FL_86C3F8                      ; $85B938 |
  LDA.B $1A,X                               ; $85B93C |
  CMP.W #$0004                              ; $85B93E |

CODE_85B941:
  BEQ CODE_85B941                           ; $85B941 |
  PHX                                       ; $85B943 |
  ASL A                                     ; $85B944 |
  TAX                                       ; $85B945 |
  LDA.L PTR16_85B950,X                      ; $85B946 |
  PLX                                       ; $85B94A |
  STA.B $00                                 ; $85B94B |
  JMP.W ($0000)                             ; $85B94D |

PTR16_85B950:
  dw CODE_85B958                            ; $85B950 |
  dw CODE_FL_85B67E                         ; $85B952 |
  dw CODE_85B6D5                            ; $85B954 |
  dw CODE_85B96C                            ; $85B956 |

CODE_85B958:
  LDA.W #$0041                              ; $85B958 |
  JSL.L CODE_FL_86CAEE                      ; $85B95B |
  LDA.B $4E,X                               ; $85B95F |
  AND.W #$00FF                              ; $85B961 |
  BNE CODE_85B969                           ; $85B964 |
  JMP.W CODE_JP_85B61F                      ; $85B966 |

CODE_85B969:
  JMP.W CODE_JP_85B677                      ; $85B969 |

CODE_85B96C:
  LDA.W #$0010                              ; $85B96C |
  JSL.L CODE_FL_83D1C9                      ; $85B96F |
  LDA.W #$0014                              ; $85B973 |
  JSL.L push_sound_queue                    ; $85B976 |
  JMP.W CODE_JP_85B6FE                      ; $85B97A |

CODE_85B97D:
  JSL.L CODE_FL_86C407                      ; $85B97D |
  LDA.B $1A,X                               ; $85B981 |
  PHX                                       ; $85B983 |
  ASL A                                     ; $85B984 |
  TAX                                       ; $85B985 |
  LDA.L PTR16_85B990,X                      ; $85B986 |
  PLX                                       ; $85B98A |
  STA.B $00                                 ; $85B98B |
  JMP.W ($0000)                             ; $85B98D |

PTR16_85B990:
  dw CODE_85B998                            ; $85B990 |
  dw CODE_FL_85B67E                         ; $85B992 |
  dw CODE_85B6D5                            ; $85B994 |
  dw CODE_85B9A2                            ; $85B996 |

CODE_85B998:
  LDA.W #$0042                              ; $85B998 |
  JSL.L CODE_FL_86CAEE                      ; $85B99B |
  JMP.W CODE_JP_85B61F                      ; $85B99F |

CODE_85B9A2:
  LDA.W #$0050                              ; $85B9A2 |
  JSL.L CODE_FL_83D1C9                      ; $85B9A5 |
  LDA.W #$0016                              ; $85B9A9 |
  JSL.L push_sound_queue                    ; $85B9AC |
  JMP.W CODE_JP_85B6FE                      ; $85B9B0 |

CODE_85B9B3:
  JSL.L CODE_FL_86C3F8                      ; $85B9B3 |
  LDA.B $1A,X                               ; $85B9B7 |
  PHX                                       ; $85B9B9 |
  ASL A                                     ; $85B9BA |
  TAX                                       ; $85B9BB |
  LDA.L PTR16_85B9C6,X                      ; $85B9BC |
  PLX                                       ; $85B9C0 |
  STA.B $00                                 ; $85B9C1 |
  JMP.W ($0000)                             ; $85B9C3 |

PTR16_85B9C6:
  dw CODE_85B9D0                            ; $85B9C6 |
  dw CODE_85BA8A                            ; $85B9C8 |
  dw CODE_85BC37                            ; $85B9CA |
  dw CODE_85B9D8                            ; $85B9CC |
  dw CODE_85B9E6                            ; $85B9CE |

CODE_85B9D0:
  LDA.W #$DC23                              ; $85B9D0 |
  STA.B $00,X                               ; $85B9D3 |
  JMP.W CODE_JP_85BC15                      ; $85B9D5 |

CODE_85B9D8:
  JSL.L CODE_FL_85AC15                      ; $85B9D8 |
  LDA.W #$C2F5                              ; $85B9DC |
  STA.B $40,X                               ; $85B9DF |
  STZ.B $34,X                               ; $85B9E1 |
  INC.B $1A,X                               ; $85B9E3 |
  RTL                                       ; $85B9E5 |

CODE_85B9E6:
  JSL.L CODE_FL_86C239                      ; $85B9E6 |
  BCC CODE_85B9F0                           ; $85B9EA |
  JSL.L CODE_FL_85B6F7                      ; $85B9EC |

CODE_85B9F0:
  RTL                                       ; $85B9F0 |

CODE_85B9F1:
  JSL.L CODE_FL_86C3F8                      ; $85B9F1 |
  LDA.B $1A,X                               ; $85B9F5 |
  PHX                                       ; $85B9F7 |
  ASL A                                     ; $85B9F8 |
  TAX                                       ; $85B9F9 |
  LDA.L PTR16_85BA04,X                      ; $85B9FA |
  PLX                                       ; $85B9FE |
  STA.B $00                                 ; $85B9FF |
  JMP.W ($0000)                             ; $85BA01 |

PTR16_85BA04:
  dw CODE_85BA0E                            ; $85BA04 |
  dw CODE_85BA8A                            ; $85BA06 |
  dw CODE_85BC37                            ; $85BA08 |
  dw CODE_85BA16                            ; $85BA0A |
  dw CODE_85B9E6                            ; $85BA0C |

CODE_85BA0E:
  LDA.W #$DC34                              ; $85BA0E |
  STA.B $00,X                               ; $85BA11 |
  JMP.W CODE_JP_85BC15                      ; $85BA13 |

CODE_85BA16:
  JSL.L CODE_FL_85AC15                      ; $85BA16 |
  LDA.W #$C325                              ; $85BA1A |
  STA.B $40,X                               ; $85BA1D |
  STZ.B $34,X                               ; $85BA1F |
  INC.B $1A,X                               ; $85BA21 |
  RTL                                       ; $85BA23 |

CODE_85BA24:
  JSL.L CODE_FL_86C407                      ; $85BA24 |
  LDA.B $1A,X                               ; $85BA28 |
  PHX                                       ; $85BA2A |
  ASL A                                     ; $85BA2B |
  TAX                                       ; $85BA2C |
  LDA.L PTR16_85BA37,X                      ; $85BA2D |
  PLX                                       ; $85BA31 |
  STA.B $00                                 ; $85BA32 |
  JMP.W ($0000)                             ; $85BA34 |

PTR16_85BA37:
  dw CODE_85BA6D                            ; $85BA37 |
  dw CODE_85BA8A                            ; $85BA39 |
  dw CODE_85BA8E                            ; $85BA3B |
  dw CODE_85BA3F                            ; $85BA3D |

CODE_85BA3F:
  JSL.L CODE_FL_85ABC2                      ; $85BA3F |
  JSL.L CODE_FL_85BAA5                      ; $85BA43 |
  LDA.W #$0184                              ; $85BA47 |
  JSL.L CODE_FL_86C9A7                      ; $85BA4A |
  JML.L CODE_FL_86CA2D                      ; $85BA4E |

CODE_85BA52:
  JSL.L CODE_FL_86C407                      ; $85BA52 |
  LDA.B $1A,X                               ; $85BA56 |
  PHX                                       ; $85BA58 |
  ASL A                                     ; $85BA59 |
  TAX                                       ; $85BA5A |
  LDA.L PTR16_85BA65,X                      ; $85BA5B |
  PLX                                       ; $85BA5F |
  STA.B $00                                 ; $85BA60 |
  JMP.W ($0000)                             ; $85BA62 |

PTR16_85BA65:
  dw CODE_85BA6D                            ; $85BA65 |
  dw CODE_85BA8A                            ; $85BA67 |
  dw CODE_85BA8E                            ; $85BA69 |
  dw CODE_85BA92                            ; $85BA6B |

CODE_85BA6D:
  JSL.L CODE_FL_85ABBB                      ; $85BA6D |
  LDA.W #$DC45                              ; $85BA71 |
  STA.B $00,X                               ; $85BA74 |
  LDA.W #$0043                              ; $85BA76 |
  STA.B $02,X                               ; $85BA79 |
  LDA.B $34,X                               ; $85BA7B |
  ORA.W #$A880                              ; $85BA7D |
  STA.B $34,X                               ; $85BA80 |
  JSL.L CODE_FL_85A5D0                      ; $85BA82 |
  JML.L CODE_FL_86C63F                      ; $85BA86 |

CODE_85BA8A:
  JML.L CODE_FL_85A646                      ; $85BA8A |

CODE_85BA8E:
  JML.L CODE_JL_85ACB7                      ; $85BA8E |

CODE_85BA92:
  JSL.L CODE_FL_85ABC2                      ; $85BA92 |
  JSL.L CODE_FL_85BAA5                      ; $85BA96 |
  LDA.W #$0012                              ; $85BA9A |
  JSL.L CODE_FL_86C9A7                      ; $85BA9D |
  JML.L CODE_FL_86CA2D                      ; $85BAA1 |

CODE_FL_85BAA5:
  LDA.W #$00EC                              ; $85BAA5 |
  JSL.L CODE_FL_8089BD                      ; $85BAA8 |
  JSL.L CODE_FL_85A940                      ; $85BAAC |
  RTL                                       ; $85BAB0 |

CODE_85BAB1:
  JSL.L CODE_FL_86C407                      ; $85BAB1 |
  PHX                                       ; $85BAB5 |
  ASL A                                     ; $85BAB6 |
  TAX                                       ; $85BAB7 |
  LDA.L PTR16_85BAC2,X                      ; $85BAB8 |
  PLX                                       ; $85BABC |
  STA.B $00                                 ; $85BABD |
  JMP.W ($0000)                             ; $85BABF |

PTR16_85BAC2:
  dw CODE_85BAC8                            ; $85BAC2 |
  dw CODE_85BA8E                            ; $85BAC4 |
  dw CODE_85BAE5                            ; $85BAC6 |

CODE_85BAC8:
  LDA.W #$DC45                              ; $85BAC8 |
  STA.B $00,X                               ; $85BACB |
  LDA.W #$0043                              ; $85BACD |
  STA.B $02,X                               ; $85BAD0 |
  LDA.B $34,X                               ; $85BAD2 |
  ORA.W #$B880                              ; $85BAD4 |
  STA.B $34,X                               ; $85BAD7 |
  JSL.L CODE_FL_8CFF15                      ; $85BAD9 |
  JSL.L CODE_FL_85A9B7                      ; $85BADD |
  JML.L CODE_FL_86C63A                      ; $85BAE1 |

CODE_85BAE5:
  JSL.L CODE_FL_85BAA5                      ; $85BAE5 |
  LDA.W #$017A                              ; $85BAE9 |
  JSL.L CODE_FL_86C9A7                      ; $85BAEC |
  JML.L CODE_FL_86CA2D                      ; $85BAF0 |

CODE_85BAF4:
  JSL.L CODE_FL_86C3F8                      ; $85BAF4 |
  LDA.B $1A,X                               ; $85BAF8 |
  PHX                                       ; $85BAFA |
  ASL A                                     ; $85BAFB |
  TAX                                       ; $85BAFC |
  LDA.L PTR16_85BB07,X                      ; $85BAFD |
  PLX                                       ; $85BB01 |
  STA.B $00                                 ; $85BB02 |
  JMP.W ($0000)                             ; $85BB04 |

PTR16_85BB07:
  dw CODE_85BB11                            ; $85BB07 |
  dw CODE_85BC2A                            ; $85BB09 |
  dw CODE_85BC37                            ; $85BB0B |
  dw CODE_85BB25                            ; $85BB0D |
  dw CODE_85B9E6                            ; $85BB0F |

CODE_85BB11:
  JSL.L CODE_FL_85ABBB                      ; $85BB11 |
  JSL.L CODE_FL_8CF98E                      ; $85BB15 |
  BCS CODE_85BB34                           ; $85BB19 |
  LDA.W #$0046                              ; $85BB1B |
  JSL.L CODE_FL_86CAEE                      ; $85BB1E |
  JMP.W CODE_JP_85BC19                      ; $85BB22 |

CODE_85BB25:
  JSL.L CODE_FL_85ABC2                      ; $85BB25 |
  STZ.B $34,X                               ; $85BB29 |
  LDA.W #$0050                              ; $85BB2B |
  JSL.L CODE_FL_83D2CA                      ; $85BB2E |
  INC.B $1A,X                               ; $85BB32 |

CODE_85BB34:
  RTL                                       ; $85BB34 |

CODE_85BB35:
  JSL.L CODE_FL_86C3F8                      ; $85BB35 |
  LDA.B $1A,X                               ; $85BB39 |
  PHX                                       ; $85BB3B |
  ASL A                                     ; $85BB3C |
  TAX                                       ; $85BB3D |
  LDA.L PTR16_85BB48,X                      ; $85BB3E |
  PLX                                       ; $85BB42 |
  STA.B $00                                 ; $85BB43 |
  JMP.W ($0000)                             ; $85BB45 |

PTR16_85BB48:
  dw CODE_85BB50                            ; $85BB48 |
  dw CODE_FL_85B67E                         ; $85BB4A |
  dw CODE_85B6D5                            ; $85BB4C |
  dw CODE_85BB64                            ; $85BB4E |

CODE_85BB50:
  LDA.W #$0046                              ; $85BB50 |
  JSL.L CODE_FL_86CAEE                      ; $85BB53 |
  LDA.B $4E,X                               ; $85BB57 |
  AND.W #$00FF                              ; $85BB59 |
  BNE CODE_85BB61                           ; $85BB5C |
  JMP.W CODE_JP_85B61F                      ; $85BB5E |

CODE_85BB61:
  JMP.W CODE_JP_85B677                      ; $85BB61 |

CODE_85BB64:
  LDA.W #$0010                              ; $85BB64 |
  JSL.L CODE_FL_83D2CA                      ; $85BB67 |
  JMP.W CODE_FL_85B6F7                      ; $85BB6B |

CODE_85BB6E:
  JSL.L CODE_FL_86C3F8                      ; $85BB6E |
  LDA.B $1A,X                               ; $85BB72 |
  PHX                                       ; $85BB74 |
  ASL A                                     ; $85BB75 |
  TAX                                       ; $85BB76 |
  LDA.L PTR16_85BB81,X                      ; $85BB77 |
  PLX                                       ; $85BB7B |
  STA.B $00                                 ; $85BB7C |
  JMP.W ($0000)                             ; $85BB7E |

PTR16_85BB81:
  dw CODE_85BB8B                            ; $85BB81 |
  dw CODE_85BC2A                            ; $85BB83 |
  dw CODE_85BC37                            ; $85BB85 |
  dw CODE_85BB95                            ; $85BB87 |
  dw CODE_85B9E6                            ; $85BB89 |

CODE_85BB8B:
  LDA.W #$0047                              ; $85BB8B |
  JSL.L CODE_FL_86CAEE                      ; $85BB8E |
  JMP.W CODE_JP_85BC15                      ; $85BB92 |

CODE_85BB95:
  JSL.L CODE_FL_85AC15                      ; $85BB95 |
  LDA.L $7002E6                             ; $85BB99 |
  STA.L $7E7C06                             ; $85BB9D |
  LDA.W #$0001                              ; $85BBA1 |
  JSL.L CODE_FL_83D284                      ; $85BBA4 |
  LDA.W #$C152                              ; $85BBA8 |
  STA.B $40,X                               ; $85BBAB |
  STZ.B $34,X                               ; $85BBAD |
  INC.B $1A,X                               ; $85BBAF |
  RTL                                       ; $85BBB1 |

CODE_85BBB2:
  JSL.L CODE_FL_86C3F8                      ; $85BBB2 |
  LDA.B $1A,X                               ; $85BBB6 |
  PHX                                       ; $85BBB8 |
  ASL A                                     ; $85BBB9 |
  TAX                                       ; $85BBBA |
  LDA.L PTR16_85BBC5,X                      ; $85BBBB |
  PLX                                       ; $85BBBF |
  STA.B $00                                 ; $85BBC0 |
  JMP.W ($0000)                             ; $85BBC2 |

PTR16_85BBC5:
  dw CODE_85BBCF                            ; $85BBC5 |
  dw CODE_85BC2A                            ; $85BBC7 |
  dw CODE_85BC37                            ; $85BBC9 |
  dw CODE_85BBD6                            ; $85BBCB |
  dw CODE_85B9E6                            ; $85BBCD |

CODE_85BBCF:
  LDA.W #$DD2E                              ; $85BBCF |
  STA.B $00,X                               ; $85BBD2 |
  BRA CODE_JP_85BC15                        ; $85BBD4 |

CODE_85BBD6:
  LDA.W #$0001                              ; $85BBD6 |
  JSL.L CODE_FL_86807C                      ; $85BBD9 |
  JSL.L CODE_FL_85AC15                      ; $85BBDD |
  LDA.W #$C356                              ; $85BBE1 |
  STA.B $40,X                               ; $85BBE4 |
  STZ.B $34,X                               ; $85BBE6 |
  JSL.L CODE_FL_8B80CE                      ; $85BBE8 |
  INC.B $1A,X                               ; $85BBEC |
  RTL                                       ; $85BBEE |

CODE_85BBEF:
  JSL.L CODE_FL_86C3F8                      ; $85BBEF |
  LDA.B $1A,X                               ; $85BBF3 |
  PHX                                       ; $85BBF5 |
  ASL A                                     ; $85BBF6 |
  TAX                                       ; $85BBF7 |
  LDA.L PTR16_85BC02,X                      ; $85BBF8 |
  PLX                                       ; $85BBFC |
  STA.B $00                                 ; $85BBFD |
  JMP.W ($0000)                             ; $85BBFF |

PTR16_85BC02:
  dw CODE_85BC0E                            ; $85BC02 |
  dw CODE_85BC2A                            ; $85BC04 |
  dw CODE_85BC37                            ; $85BC06 |
  dw CODE_85BC3B                            ; $85BC08 |
  dw CODE_85BF70                            ; $85BC0A |
  dw CODE_85BC54                            ; $85BC0C |

CODE_85BC0E:
  LDA.W #$0048                              ; $85BC0E |
  JSL.L CODE_FL_86CAEE                      ; $85BC11 |

CODE_JP_85BC15:
  JSL.L CODE_FL_85AC07                      ; $85BC15 |

CODE_JP_85BC19:
  LDA.W #$0043                              ; $85BC19 |
  STA.B $02,X                               ; $85BC1C |
  JSL.L CODE_FL_85A9EF                      ; $85BC1E |
  JSL.L CODE_FL_85A9FF                      ; $85BC22 |
  JML.L CODE_FL_86C63F                      ; $85BC26 |

CODE_85BC2A:
  LDA.B $4E,X                               ; $85BC2A |
  AND.W #$0100                              ; $85BC2C |
  BNE CODE_85BC35                           ; $85BC2F |
  JML.L CODE_FL_85A646                      ; $85BC31 |

CODE_85BC35:
  INC.B $1A,X                               ; $85BC35 |

CODE_85BC37:
  JML.L CODE_FL_85F885                      ; $85BC37 |

CODE_85BC3B:
  LDA.W #$0001                              ; $85BC3B |
  JSL.L CODE_FL_8680A4                      ; $85BC3E |
  JSL.L CODE_FL_85AC15                      ; $85BC42 |
  LDA.W #$C387                              ; $85BC46 |
  STA.B $40,X                               ; $85BC49 |
  STZ.B $34,X                               ; $85BC4B |
  JSL.L CODE_FL_8B80CE                      ; $85BC4D |
  INC.B $1A,X                               ; $85BC51 |
  RTL                                       ; $85BC53 |

CODE_85BC54:
  JSL.L CODE_FL_86C239                      ; $85BC54 |
  BCC CODE_85BC7E                           ; $85BC58 |
  JSL.L CODE_FL_85A8C3                      ; $85BC5A |
  JSL.L CODE_FL_83A23F                      ; $85BC5E |
  LDY.W #$010C                              ; $85BC62 |
  LDA.B $8E                                 ; $85BC65 |
  CMP.W #$003C                              ; $85BC67 |
  BEQ CODE_85BC77                           ; $85BC6A |
  LDY.W #$00A8                              ; $85BC6C |
  CMP.W #$005F                              ; $85BC6F |
  BEQ CODE_85BC77                           ; $85BC72 |
  LDY.W #$00B8                              ; $85BC74 |

CODE_85BC77:
  JSL.L CODE_FL_808993                      ; $85BC77 |
  JMP.W CODE_FL_85B6F7                      ; $85BC7B |

CODE_85BC7E:
  RTL                                       ; $85BC7E |

CODE_85BC7F:
  LDA.W #$0183                              ; $85BC7F |
  BRA CODE_85BC8C                           ; $85BC82 |

CODE_85BC84:
  LDA.W #$0008                              ; $85BC84 |
  BRA CODE_85BC8C                           ; $85BC87 |

CODE_85BC89:
  LDA.W #$0007                              ; $85BC89 |

CODE_85BC8C:
  STA.B $14                                 ; $85BC8C |
  LDA.W #$0004                              ; $85BC8E |
  STA.B $10                                 ; $85BC91 |
  LDA.W #$0016                              ; $85BC93 |
  STA.B $12                                 ; $85BC96 |

CODE_85BC98:
  LDA.B $14                                 ; $85BC98 |
  JSL.L CODE_FL_86C9A7                      ; $85BC9A |
  BCS CODE_85BCC7                           ; $85BC9E |
  PHY                                       ; $85BCA0 |
  LDY.W #$000E                              ; $85BCA1 |
  CLC                                       ; $85BCA4 |
  INC.B $12                                 ; $85BCA5 |
  LDA.B $12                                 ; $85BCA7 |
  JSL.L CODE_FL_8AB4B3                      ; $85BCA9 |
  PLY                                       ; $85BCAD |
  LDA.B $00                                 ; $85BCAE |
  STA.W $0026,Y                             ; $85BCB0 |
  LDA.B $02                                 ; $85BCB3 |
  STA.W $0028,Y                             ; $85BCB5 |
  LDA.B $4E,X                               ; $85BCB8 |
  ORA.W #$0001                              ; $85BCBA |
  STA.B $4E,X                               ; $85BCBD |
  JSL.L CODE_FL_86C7C4                      ; $85BCBF |
  DEC.B $10                                 ; $85BCC3 |
  BNE CODE_85BC98                           ; $85BCC5 |

CODE_85BCC7:
  JML.L CODE_FL_86CA57                      ; $85BCC7 |

CODE_85BCCB:
  LDA.W #$0008                              ; $85BCCB |
  STA.B $10                                 ; $85BCCE |
  LDA.W #$0004                              ; $85BCD0 |
  STA.B $12                                 ; $85BCD3 |

CODE_85BCD5:
  LDA.W #$0008                              ; $85BCD5 |
  AND.W #$00FF                              ; $85BCD8 |
  JSL.L CODE_FL_86C9A7                      ; $85BCDB |
  BCS CODE_85BD0B                           ; $85BCDF |
  PHY                                       ; $85BCE1 |
  LDY.W #$0002                              ; $85BCE2 |
  CLC                                       ; $85BCE5 |
  LDA.B $12                                 ; $85BCE6 |
  ADC.W #$0004                              ; $85BCE8 |
  STA.B $12                                 ; $85BCEB |
  JSL.L CODE_FL_8AB4B3                      ; $85BCED |
  PLY                                       ; $85BCF1 |
  LDA.B $00                                 ; $85BCF2 |
  STA.W $0026,Y                             ; $85BCF4 |
  LDA.B $02                                 ; $85BCF7 |
  STA.W $0028,Y                             ; $85BCF9 |
  LDA.B $4E,X                               ; $85BCFC |
  ORA.W #$0001                              ; $85BCFE |
  STA.B $4E,X                               ; $85BD01 |
  JSL.L CODE_FL_86C7C4                      ; $85BD03 |
  DEC.B $10                                 ; $85BD07 |
  BNE CODE_85BCD5                           ; $85BD09 |

CODE_85BD0B:
  JML.L CODE_FL_86CA57                      ; $85BD0B |

CODE_85BD0F:
  JSL.L CODE_FL_85F885                      ; $85BD0F |
  JSL.L CODE_FL_86C3F8                      ; $85BD13 |
  LDA.B $1A,X                               ; $85BD17 |
  PHX                                       ; $85BD19 |
  ASL A                                     ; $85BD1A |
  TAX                                       ; $85BD1B |
  LDA.L PTR16_85BD26,X                      ; $85BD1C |
  PLX                                       ; $85BD20 |
  STA.B $00                                 ; $85BD21 |
  JMP.W ($0000)                             ; $85BD23 |

PTR16_85BD26:
  dw CODE_85BD2C                            ; $85BD26 |
  dw CODE_85BD65                            ; $85BD28 |
  dw CODE_85BD73                            ; $85BD2A |

CODE_85BD2C:
  LDA.W #$004E                              ; $85BD2C |
  JSL.L CODE_FL_86CAEE                      ; $85BD2F |
  LDA.W #$0043                              ; $85BD33 |
  STA.B $02,X                               ; $85BD36 |
  JSL.L CODE_FL_85A9EF                      ; $85BD38 |
  JSL.L CODE_FL_85A8CE                      ; $85BD3C |
  LDY.B $44,X                               ; $85BD40 |
  LDA.W $0048,Y                             ; $85BD42 |
  STA.B $48,X                               ; $85BD45 |
  LDA.W $0004,Y                             ; $85BD47 |
  STA.B $04,X                               ; $85BD4A |
  LDY.B $3A,X                               ; $85BD4C |
  JSL.L CODE_FL_85AB99                      ; $85BD4E |
  SEC                                       ; $85BD52 |
  LDA.B $0D,X                               ; $85BD53 |
  SBC.B $3C,X                               ; $85BD55 |
  STA.B $0D,X                               ; $85BD57 |
  LDA.B $3E,X                               ; $85BD59 |
  JSL.L CODE_FL_86C668                      ; $85BD5B |
  STZ.B $3A,X                               ; $85BD5F |
  JML.L CODE_FL_86C63F                      ; $85BD61 |

CODE_85BD65:
  JSL.L CODE_FL_858AF1                      ; $85BD65 |
  BEQ CODE_85BD6F                           ; $85BD69 |
  JSL.L CODE_FL_86CA36                      ; $85BD6B |

CODE_85BD6F:
  JML.L CODE_JL_85BE8C                      ; $85BD6F |

CODE_85BD73:
  JML.L CODE_FL_86CA36                      ; $85BD73 |

CODE_85BD77:
  JSL.L CODE_FL_85F885                      ; $85BD77 |
  JSL.L CODE_FL_86C3F8                      ; $85BD7B |
  LDA.B $1A,X                               ; $85BD7F |
  PHX                                       ; $85BD81 |
  ASL A                                     ; $85BD82 |
  TAX                                       ; $85BD83 |
  LDA.L PTR16_85BD8E,X                      ; $85BD84 |
  PLX                                       ; $85BD88 |
  STA.B $00                                 ; $85BD89 |
  JMP.W ($0000)                             ; $85BD8B |

PTR16_85BD8E:
  dw CODE_85BD94                            ; $85BD8E |
  dw CODE_85BDCF                            ; $85BD90 |
  dw CODE_85BD73                            ; $85BD92 |

CODE_85BD94:
  LDA.W #$004E                              ; $85BD94 |
  JSL.L CODE_FL_86CAEE                      ; $85BD97 |
  LDA.W #$0043                              ; $85BD9B |
  STA.B $02,X                               ; $85BD9E |
  JSL.L CODE_FL_85A9EF                      ; $85BDA0 |
  JSL.L CODE_FL_85A8CE                      ; $85BDA4 |
  LDY.B $44,X                               ; $85BDA8 |
  LDA.W $0048,Y                             ; $85BDAA |
  STA.B $48,X                               ; $85BDAD |
  LDA.W $0004,Y                             ; $85BDAF |
  STA.B $04,X                               ; $85BDB2 |
  LDY.B $3A,X                               ; $85BDB4 |
  JSL.L CODE_FL_85AB99                      ; $85BDB6 |
  SEC                                       ; $85BDBA |
  LDA.B $0D,X                               ; $85BDBB |
  SBC.B $3C,X                               ; $85BDBD |
  STA.B $0D,X                               ; $85BDBF |
  LDA.B $3E,X                               ; $85BDC1 |
  STA.B $26,X                               ; $85BDC3 |
  LDA.B $40,X                               ; $85BDC5 |
  STA.B $28,X                               ; $85BDC7 |
  STZ.B $3A,X                               ; $85BDC9 |
  JML.L CODE_FL_86C63F                      ; $85BDCB |

CODE_85BDCF:
  JML.L CODE_JL_85BE8C                      ; $85BDCF |

CODE_85BDD3:
  JSL.L CODE_FL_85F885                      ; $85BDD3 |
  JSL.L CODE_FL_86C3F8                      ; $85BDD7 |
  LDA.B $1A,X                               ; $85BDDB |
  PHX                                       ; $85BDDD |
  ASL A                                     ; $85BDDE |
  TAX                                       ; $85BDDF |
  LDA.L PTR16_85BDEA,X                      ; $85BDE0 |
  PLX                                       ; $85BDE4 |
  STA.B $00                                 ; $85BDE5 |
  JMP.W ($0000)                             ; $85BDE7 |

PTR16_85BDEA:
  dw CODE_85BD94                            ; $85BDEA |
  dw CODE_85BDF0                            ; $85BDEC |
  dw CODE_85BD73                            ; $85BDEE |

CODE_85BDF0:
  JSL.L CODE_FL_858AF1                      ; $85BDF0 |
  BEQ CODE_85BDFA                           ; $85BDF4 |
  JSL.L CODE_FL_86CA36                      ; $85BDF6 |

CODE_85BDFA:
  JML.L CODE_JL_85BE8C                      ; $85BDFA |

CODE_85BDFE:
  JSL.L CODE_FL_85F885                      ; $85BDFE |
  JSL.L CODE_FL_86C3F8                      ; $85BE02 |
  LDA.B $1A,X                               ; $85BE06 |
  PHX                                       ; $85BE08 |
  ASL A                                     ; $85BE09 |
  TAX                                       ; $85BE0A |
  LDA.L PTR16_85BE15,X                      ; $85BE0B |
  PLX                                       ; $85BE0F |
  STA.B $00                                 ; $85BE10 |
  JMP.W ($0000)                             ; $85BE12 |

PTR16_85BE15:
  dw CODE_85BE3C                            ; $85BE15 |
  dw CODE_85BE1B                            ; $85BE17 |
  dw CODE_85BD73                            ; $85BE19 |

CODE_85BE1B:
  JML.L CODE_JL_85BE8C                      ; $85BE1B |

CODE_85BE1F:
  JSL.L CODE_FL_85F885                      ; $85BE1F |
  JSL.L CODE_FL_86C3F8                      ; $85BE23 |
  LDA.B $1A,X                               ; $85BE27 |
  PHX                                       ; $85BE29 |
  ASL A                                     ; $85BE2A |
  TAX                                       ; $85BE2B |
  LDA.L PTR16_85BE36,X                      ; $85BE2C |
  PLX                                       ; $85BE30 |
  STA.B $00                                 ; $85BE31 |
  JMP.W ($0000)                             ; $85BE33 |

PTR16_85BE36:
  dw CODE_85BE3C                            ; $85BE36 |
  dw CODE_85BE7B                            ; $85BE38 |
  dw CODE_85BD73                            ; $85BE3A |

CODE_85BE3C:
  JSL.L CODE_FL_85A9EF                      ; $85BE3C |
  JSL.L CODE_FL_85A8CE                      ; $85BE40 |
  LDA.B $3A,X                               ; $85BE44 |
  EOR.W #$FFFF                              ; $85BE46 |
  INC A                                     ; $85BE49 |
  TAY                                       ; $85BE4A |
  JSL.L CODE_FL_85AB99                      ; $85BE4B |
  CLC                                       ; $85BE4F |
  LDA.B $0D,X                               ; $85BE50 |
  ADC.B $3C,X                               ; $85BE52 |
  STA.B $0D,X                               ; $85BE54 |
  LDA.B $3E,X                               ; $85BE56 |
  STA.B $26,X                               ; $85BE58 |
  LDA.B $40,X                               ; $85BE5A |
  STA.B $28,X                               ; $85BE5C |
  LDA.W #$004E                              ; $85BE5E |
  JSL.L CODE_FL_86CAEE                      ; $85BE61 |
  LDA.W #$0043                              ; $85BE65 |
  STA.B $02,X                               ; $85BE68 |
  LDA.B $04,X                               ; $85BE6A |
  ORA.W #$1898                              ; $85BE6C |
  STA.B $04,X                               ; $85BE6F |
  STZ.B $3A,X                               ; $85BE71 |
  JML.L CODE_FL_86C63A                      ; $85BE73 |

  JML.L CODE_FL_86CA36                      ; $85BE77 |

CODE_85BE7B:
  JSL.L CODE_FL_83FD79                      ; $85BE7B |
  LDA.W $1C12                               ; $85BE7F |
  BEQ CODE_85BE88                           ; $85BE82 |
  JSL.L CODE_FL_86CA36                      ; $85BE84 |

CODE_85BE88:
  JML.L CODE_JL_85BE8C                      ; $85BE88 |

CODE_JL_85BE8C:
  BIT.B $32,X                               ; $85BE8C |
  BVC CODE_85BEC6                           ; $85BE8E |
  JSL.L CODE_FL_85A711                      ; $85BE90 |
  LDA.W $0022,Y                             ; $85BE94 |
  CMP.W #$0011                              ; $85BE97 |
  BNE CODE_85BEC0                           ; $85BE9A |
  LDA.B $27,X                               ; $85BE9C |
  LSR A                                     ; $85BE9E |
  LSR A                                     ; $85BE9F |
  EOR.W $0004,Y                             ; $85BEA0 |
  AND.W #$0020                              ; $85BEA3 |
  BEQ CODE_85BEC0                           ; $85BEA6 |
  LDA.W #$001E                              ; $85BEA8 |
  STA.B $18,X                               ; $85BEAB |
  STZ.B $1A,X                               ; $85BEAD |
  LDA.W #$0040                              ; $85BEAF |
  STA.W $002C,Y                             ; $85BEB2 |
  JSL.L CODE_FL_86CB6A                      ; $85BEB5 |
  LDA.W #$FE00                              ; $85BEB9 |
  STA.W $0028,Y                             ; $85BEBC |
  RTL                                       ; $85BEBF |

CODE_85BEC0:
  STZ.B $00,X                               ; $85BEC0 |
  STZ.B $34,X                               ; $85BEC2 |
  INC.B $1A,X                               ; $85BEC4 |

CODE_85BEC6:
  RTL                                       ; $85BEC6 |

CODE_85BEC7:
  JSL.L CODE_FL_85AAC6                      ; $85BEC7 |
  JSL.L CODE_FL_85F885                      ; $85BECB |
  LDY.B $44,X                               ; $85BECF |
  JSL.L CODE_FL_86C89E                      ; $85BED1 |
  LDA.B $3C,X                               ; $85BED5 |
  BEQ CODE_85BEF0                           ; $85BED7 |
  LDA.W $0004,Y                             ; $85BED9 |
  ASL A                                     ; $85BEDC |
  ASL A                                     ; $85BEDD |
  ASL A                                     ; $85BEDE |
  LDA.B $3A,X                               ; $85BEDF |
  BCS CODE_85BEE7                           ; $85BEE1 |
  EOR.W #$FFFF                              ; $85BEE3 |
  INC A                                     ; $85BEE6 |

CODE_85BEE7:
  CLC                                       ; $85BEE7 |
  ADC.B $09,X                               ; $85BEE8 |
  STA.B $09,X                               ; $85BEEA |
  JML.L CODE_FL_85A9EF                      ; $85BEEC |

CODE_85BEF0:
  JML.L CODE_FL_85A9F7                      ; $85BEF0 |

CODE_85BEF4:
  JSL.L CODE_FL_97FC80                      ; $85BEF4 |
  LDA.B $00,X                               ; $85BEF8 |
  BNE CODE_85BF00                           ; $85BEFA |
  JML.L CODE_FL_86CA57                      ; $85BEFC |

CODE_85BF00:
  RTL                                       ; $85BF00 |

CODE_85BF01:
  JSL.L CODE_FL_86C3F8                      ; $85BF01 |
  LDA.B $1A,X                               ; $85BF05 |
  PHX                                       ; $85BF07 |
  ASL A                                     ; $85BF08 |
  TAX                                       ; $85BF09 |
  LDA.L PTR16_85BF14,X                      ; $85BF0A |
  PLX                                       ; $85BF0E |
  STA.B $00                                 ; $85BF0F |
  JMP.W ($0000)                             ; $85BF11 |

PTR16_85BF14:
  dw CODE_85BF20                            ; $85BF14 |
  dw CODE_85BC2A                            ; $85BF16 |
  dw CODE_85BC37                            ; $85BF18 |
  dw CODE_85BF54                            ; $85BF1A |
  dw CODE_85BF70                            ; $85BF1C |
  dw CODE_85BF7D                            ; $85BF1E |

CODE_85BF20:
  JSL.L CODE_FL_85AC07                      ; $85BF20 |
  JSL.L CODE_FL_86C7AD                      ; $85BF24 |
  LDA.W #$32CE                              ; $85BF28 |
  STA.B $00,X                               ; $85BF2B |

CODE_JP_85BF2D:
  LDA.W #$0013                              ; $85BF2D |
  LDY.W #$1610                              ; $85BF30 |
  JSL.L CODE_FL_86C9E0                      ; $85BF33 |
  JSL.L CODE_FL_85AAB6                      ; $85BF37 |
  LDA.W #$0077                              ; $85BF3B |
  JSL.L CODE_FL_86CAE6                      ; $85BF3E |
  LDA.W #$0043                              ; $85BF42 |
  STA.W $0002,Y                             ; $85BF45 |
  JSL.L CODE_FL_85A9EF                      ; $85BF48 |
  JSL.L CODE_FL_85A9FF                      ; $85BF4C |
  JML.L CODE_FL_86C63F                      ; $85BF50 |

CODE_85BF54:
  JSL.L CODE_FL_85AC15                      ; $85BF54 |
  STZ.B $34,X                               ; $85BF58 |
  LDA.W #$8001                              ; $85BF5A |
  STA.B $E4                                 ; $85BF5D |
  LDA.W #$0001                              ; $85BF5F |
  STA.L $7002B0                             ; $85BF62 |
  LDA.W #$0015                              ; $85BF66 |
  JSL.L push_sound_queue                    ; $85BF69 |
  INC.B $1A,X                               ; $85BF6D |
  RTL                                       ; $85BF6F |

CODE_85BF70:
  JSL.L CODE_FL_85A8C3                      ; $85BF70 |
  JSL.L CODE_FL_83A1F2                      ; $85BF74 |
  BCC CODE_85BF7C                           ; $85BF78 |
  INC.B $1A,X                               ; $85BF7A |

CODE_85BF7C:
  RTL                                       ; $85BF7C |

CODE_85BF7D:
  JSL.L CODE_FL_86C239                      ; $85BF7D |
  BCC CODE_85BF87                           ; $85BF81 |
  JML.L CODE_JL_80EBA3                      ; $85BF83 |

CODE_85BF87:
  RTL                                       ; $85BF87 |

CODE_85BF88:
  JSL.L CODE_FL_86C3F8                      ; $85BF88 |
  LDA.B $1A,X                               ; $85BF8C |
  PHX                                       ; $85BF8E |
  ASL A                                     ; $85BF8F |
  TAX                                       ; $85BF90 |
  LDA.L PTR16_85BF9B,X                      ; $85BF91 |
  PLX                                       ; $85BF95 |
  STA.B $00                                 ; $85BF96 |
  JMP.W ($0000)                             ; $85BF98 |

PTR16_85BF9B:
  dw CODE_85BF20                            ; $85BF9B |
  dw CODE_85BC2A                            ; $85BF9D |
  dw CODE_85BC37                            ; $85BF9F |
  dw CODE_85BFA9                            ; $85BFA1 |
  dw CODE_85BF70                            ; $85BFA3 |
  dw CODE_85BFBD                            ; $85BFA5 |
  dw CODE_85BFDD                            ; $85BFA7 |

CODE_85BFA9:
  LDA.W #$88E2                              ; $85BFA9 |
  STA.W $1C68                               ; $85BFAC |
  LDA.W #$0001                              ; $85BFAF |
  STA.L $7002AE                             ; $85BFB2 |
  JSL.L CODE_FL_80893F                      ; $85BFB6 |
  INC.B $1A,X                               ; $85BFBA |
  RTL                                       ; $85BFBC |

CODE_85BFBD:
  JSL.L CODE_FL_86C239                      ; $85BFBD |
  BCC CODE_85BFDC                           ; $85BFC1 |
  JSL.L CODE_FL_85AC15                      ; $85BFC3 |
  LDY.W #$0028                              ; $85BFC7 |
  JSL.L CODE_FL_808993                      ; $85BFCA |
  LDA.W #$0034                              ; $85BFCE |
  JSL.L CODE_FL_8089BD                      ; $85BFD1 |
  LDA.W #$8001                              ; $85BFD5 |
  STA.B $E4                                 ; $85BFD8 |
  INC.B $1A,X                               ; $85BFDA |

CODE_85BFDC:
  RTL                                       ; $85BFDC |

CODE_85BFDD:
  LDA.W #$C3E0                              ; $85BFDD |
  JSL.L CODE_FL_809934                      ; $85BFE0 |
  BCC CODE_85BFFB                           ; $85BFE4 |
  STZ.B $E4                                 ; $85BFE6 |
  LDA.W #$0043                              ; $85BFE8 |
  STA.B $02,X                               ; $85BFEB |
  STZ.B $06,X                               ; $85BFED |
  JSL.L CODE_FL_85A8C3                      ; $85BFEF |
  JSL.L CODE_FL_83A23F                      ; $85BFF3 |
  JML.L CODE_FL_85B6F7                      ; $85BFF7 |

CODE_85BFFB:
  RTL                                       ; $85BFFB |

CODE_85BFFC:
  JSL.L CODE_FL_86C3F8                      ; $85BFFC |
  LDA.B $1A,X                               ; $85C000 |
  PHX                                       ; $85C002 |
  ASL A                                     ; $85C003 |
  TAX                                       ; $85C004 |
  LDA.L PTR16_85C00F,X                      ; $85C005 |
  PLX                                       ; $85C009 |
  STA.B $00                                 ; $85C00A |
  JMP.W ($0000)                             ; $85C00C |

PTR16_85C00F:
  dw CODE_85C01D                            ; $85C00F |
  dw CODE_85C03A                            ; $85C011 |
  dw CODE_85C057                            ; $85C013 |
  dw CODE_85C06A                            ; $85C015 |
  dw CODE_85C075                            ; $85C017 |
  dw CODE_85BF70                            ; $85C019 |
  dw CODE_85C087                            ; $85C01B |

CODE_85C01D:
  LDA.W #$DE75                              ; $85C01D |
  STA.B $00,X                               ; $85C020 |
  LDA.W #$0020                              ; $85C022 |
  STA.B $14,X                               ; $85C025 |
  LDA.W #$F800                              ; $85C027 |
  STA.B $28,X                               ; $85C02A |
  LDA.B $4E,X                               ; $85C02C |
  BNE CODE_85C037                           ; $85C02E |
  LDA.W #$0002                              ; $85C030 |
  STA.B $1A,X                               ; $85C033 |
  STZ.B $28,X                               ; $85C035 |

CODE_85C037:
  JMP.W CODE_JP_85BF2D                      ; $85C037 |

CODE_85C03A:
  JSL.L CODE_FL_86C82F                      ; $85C03A |
  LDA.B $28,X                               ; $85C03E |
  BPL CODE_85C049                           ; $85C040 |
  LDA.B $0D,X                               ; $85C042 |
  CMP.W #$0040                              ; $85C044 |
  BPL CODE_85C055                           ; $85C047 |

CODE_85C049:
  LDA.W #$0100                              ; $85C049 |
  STA.B $28,X                               ; $85C04C |
  INC.B $1A,X                               ; $85C04E |
  LDA.W #$6020                              ; $85C050 |
  STA.B $34,X                               ; $85C053 |

CODE_85C055:
  BRA CODE_85C0A9                           ; $85C055 |

CODE_85C057:
  LDA.B $0D,X                               ; $85C057 |
  CMP.W #$0080                              ; $85C059 |
  BMI CODE_85C068                           ; $85C05C |
  JSL.L CODE_FL_858A42                      ; $85C05E |
  BEQ CODE_85C068                           ; $85C062 |
  STZ.B $28,X                               ; $85C064 |
  INC.B $1A,X                               ; $85C066 |

CODE_85C068:
  BRA CODE_85C0A9                           ; $85C068 |

CODE_85C06A:
  JSL.L CODE_FL_85F885                      ; $85C06A |
  LDA.B $32,X                               ; $85C06E |
  BPL CODE_85C074                           ; $85C070 |
  INC.B $1A,X                               ; $85C072 |

CODE_85C074:
  RTL                                       ; $85C074 |

CODE_85C075:
  PHX                                       ; $85C075 |
  LDY.B $4E,X                               ; $85C076 |
  LDA.W LOOSE_OP_0091BB,Y                   ; $85C078 |
  TAX                                       ; $85C07B |
  LDA.W #$0001                              ; $85C07C |
  STA.L $700200,X                           ; $85C07F |
  PLX                                       ; $85C083 |
  INC.B $1A,X                               ; $85C084 |
  RTL                                       ; $85C086 |

CODE_85C087:
  LDY.B $4E,X                               ; $85C087 |
  LDA.W LOOSE_OP_0091B1,Y                   ; $85C089 |
  JSL.L CODE_FL_809934                      ; $85C08C |
  BCC CODE_85C0A8                           ; $85C090 |
  JSL.L CODE_FL_85A8C3                      ; $85C092 |
  JSL.L CODE_FL_83A23F                      ; $85C096 |
  LDA.W #$8001                              ; $85C09A |
  STA.B $E4                                 ; $85C09D |
  JSL.L CODE_FL_86CA36                      ; $85C09F |
  LDA.W #$01F6                              ; $85C0A3 |
  STA.B $18,X                               ; $85C0A6 |

CODE_85C0A8:
  RTL                                       ; $85C0A8 |

CODE_85C0A9:
  LDA.B $42                                 ; $85C0A9 |
  AND.W #$0007                              ; $85C0AB |
  BNE CODE_85C0B7                           ; $85C0AE |
  LDA.W #$021A                              ; $85C0B0 |
  JSL.L CODE_FL_86C9C5                      ; $85C0B3 |

CODE_85C0B7:
  RTL                                       ; $85C0B7 |

CODE_85C0B8:
  JSL.L CODE_FL_86C3F8                      ; $85C0B8 |
  BNE CODE_85C0CC                           ; $85C0BC |
  LDA.W #$0077                              ; $85C0BE |
  JSL.L CODE_FL_86CAEE                      ; $85C0C1 |
  LDA.W #$0010                              ; $85C0C5 |
  STA.B $2C,X                               ; $85C0C8 |
  INC.B $1A,X                               ; $85C0CA |

CODE_85C0CC:
  JSL.L CODE_FL_86C70D                      ; $85C0CC |
  JML.L CODE_FL_86CA36                      ; $85C0D0 |

CODE_85C0D4:
  JSL.L CODE_FL_82BE73                      ; $85C0D4 |
  JSL.L CODE_FL_86C3F8                      ; $85C0D8 |
  PHX                                       ; $85C0DC |
  ASL A                                     ; $85C0DD |
  TAX                                       ; $85C0DE |
  LDA.L PTR16_85C0E9,X                      ; $85C0DF |
  PLX                                       ; $85C0E3 |
  STA.B $00                                 ; $85C0E4 |
  JMP.W ($0000)                             ; $85C0E6 |

PTR16_85C0E9:
  dw CODE_85C0F5                            ; $85C0E9 |
  dw CODE_85C1E9                            ; $85C0EB |
  dw CODE_85C203                            ; $85C0ED |
  dw CODE_85C210                            ; $85C0EF |
  dw CODE_85C231                            ; $85C0F1 |
  dw CODE_85C255                            ; $85C0F3 |

CODE_85C0F5:
  JSL.L CODE_FL_85ABE7                      ; $85C0F5 |
  CMP.W #$0001                              ; $85C0F9 |
  BNE CODE_85C133                           ; $85C0FC |
  LDA.B $4E,X                               ; $85C0FE |
  AND.W #$0100                              ; $85C100 |
  BNE CODE_85C12F                           ; $85C103 |
  JSL.L CODE_FL_86C7AD                      ; $85C105 |
  LDA.W #$35FC                              ; $85C109 |
  STA.B $00,X                               ; $85C10C |
  LDA.W #$011E                              ; $85C10E |
  JSL.L CODE_FL_86C9A7                      ; $85C111 |
  JSL.L CODE_FL_85AAB6                      ; $85C115 |
  LDA.B $09,X                               ; $85C119 |
  ADC.W #$0008                              ; $85C11B |
  STA.W $0009,Y                             ; $85C11E |
  LDA.B $0D,X                               ; $85C121 |
  SBC.W #$0010                              ; $85C123 |
  STA.W $000D,Y                             ; $85C126 |
  LDA.W #$0005                              ; $85C129 |
  STA.B $1A,X                               ; $85C12C |
  RTL                                       ; $85C12E |

CODE_85C12F:
  JML.L CODE_FL_86CA2D                      ; $85C12F |

CODE_85C133:
  JSL.L CODE_FL_86C7AD                      ; $85C133 |
  LDA.B $4E,X                               ; $85C137 |
  AND.W #$0100                              ; $85C139 |
  BNE CODE_85C15D                           ; $85C13C |
  LDA.W #$35BA                              ; $85C13E |
  STA.B $00,X                               ; $85C141 |
  LDA.W #$0013                              ; $85C143 |
  JSL.L CODE_FL_86C9A7                      ; $85C146 |
  LDA.W #$0078                              ; $85C14A |
  JSL.L CODE_FL_86CAE6                      ; $85C14D |
  JSL.L CODE_FL_85AAB6                      ; $85C151 |
  JSL.L CODE_FL_86C7C4                      ; $85C155 |
  JSL.L CODE_FL_85A5D0                      ; $85C159 |

CODE_85C15D:
  JSL.L CODE_FL_85ABE7                      ; $85C15D |
  BCC CODE_85C189                           ; $85C161 |
  LDA.W #$0001                              ; $85C163 |
  STA.B $E4                                 ; $85C166 |
  JSL.L CODE_FL_82C09D                      ; $85C168 |
  LDA.W #$0027                              ; $85C16C |
  JSL.L push_sound_queue                    ; $85C16F |
  LDA.W #$00A0                              ; $85C173 |
  STA.W $1DAA                               ; $85C176 |
  LDY.W #$0100                              ; $85C179 |
  JSL.L CODE_FL_80972B                      ; $85C17C |
  JSR.W CODE_FN_85C18C                      ; $85C180 |
  LDA.W #$0004                              ; $85C183 |
  STA.B $1A,X                               ; $85C186 |
  RTL                                       ; $85C188 |

CODE_85C189:
  INC.B $1A,X                               ; $85C189 |
  RTL                                       ; $85C18B |

CODE_FN_85C18C:
  LDA.W $1DAA                               ; $85C18C |
  ADC.B $3A,X                               ; $85C18F |
  ADC.W #$0002                              ; $85C191 |
  STA.B $3A,X                               ; $85C194 |
  STA.B $12                                 ; $85C196 |
  PHX                                       ; $85C198 |
  LDX.W #$DAC4                              ; $85C199 |
  LDA.L $7EDAC0                             ; $85C19C |
  LSR A                                     ; $85C1A0 |
  BCS CODE_85C1A6                           ; $85C1A1 |
  LDX.W #$DCC4                              ; $85C1A3 |

CODE_85C1A6:
  JSR.W CODE_FN_85C1BE                      ; $85C1A6 |
  JSR.W CODE_FN_85C1BE                      ; $85C1A9 |
  TDC                                       ; $85C1AC |
  STA.L $7E0000,X                           ; $85C1AD |
  PLX                                       ; $85C1B1 |
  LDA.L $7EDAC0                             ; $85C1B2 |
  EOR.W #$0001                              ; $85C1B6 |
  STA.L $7EDAC0                             ; $85C1B9 |
  RTS                                       ; $85C1BD |

CODE_FN_85C1BE:
  LDA.W #$0070                              ; $85C1BE |
  STA.B $10                                 ; $85C1C1 |
  ORA.W #$0080                              ; $85C1C3 |
  STA.L $7E0000,X                           ; $85C1C6 |
  INX                                       ; $85C1CA |

CODE_85C1CB:
  LDY.W #$0008                              ; $85C1CB |
  LDA.B $12                                 ; $85C1CE |
  ADC.W #$0020                              ; $85C1D0 |
  STA.B $12                                 ; $85C1D3 |
  AND.W #$01FF                              ; $85C1D5 |
  JSL.L CODE_FL_8AB51A                      ; $85C1D8 |
  LDA.B $01                                 ; $85C1DC |
  STA.L $7E0000,X                           ; $85C1DE |
  INX                                       ; $85C1E2 |
  INX                                       ; $85C1E3 |
  DEC.B $10                                 ; $85C1E4 |
  BNE CODE_85C1CB                           ; $85C1E6 |
  RTS                                       ; $85C1E8 |

CODE_85C1E9:
  JSL.L CODE_FL_85ABE7                      ; $85C1E9 |
  BCC CODE_85C202                           ; $85C1ED |
  INC.B $1A,X                               ; $85C1EF |
  JSL.L CODE_FL_82C09D                      ; $85C1F1 |
  LDA.W #$007C                              ; $85C1F5 |
  JSL.L CODE_FL_8089BD                      ; $85C1F8 |
  LDA.W #$0010                              ; $85C1FC |
  STA.W $1DAA                               ; $85C1FF |

CODE_85C202:
  RTL                                       ; $85C202 |

CODE_85C203:
  INC.B $1A,X                               ; $85C203 |
  LDY.W #$0100                              ; $85C205 |
  JSL.L CODE_FL_80972B                      ; $85C208 |
  JSR.W CODE_FN_85C18C                      ; $85C20C |
  RTL                                       ; $85C20F |

CODE_85C210:
  JSR.W CODE_FN_85C18C                      ; $85C210 |
  INC.W $1DAA                               ; $85C213 |
  INC.W $1DAA                               ; $85C216 |
  LDA.W $1DAA                               ; $85C219 |
  CMP.W #$00E0                              ; $85C21C |
  BCC CODE_85C230                           ; $85C21F |
  INC.B $1A,X                               ; $85C221 |
  INC.B $1A,X                               ; $85C223 |
  LDY.W #$0100                              ; $85C225 |
  JSL.L CODE_FL_80976B                      ; $85C228 |
  JSL.L CODE_FL_82B994                      ; $85C22C |

CODE_85C230:
  RTL                                       ; $85C230 |

CODE_85C231:
  JSR.W CODE_FN_85C18C                      ; $85C231 |
  DEC.W $1DAA                               ; $85C234 |
  DEC.W $1DAA                               ; $85C237 |
  BPL CODE_85C230                           ; $85C23A |
  STZ.B $E4                                 ; $85C23C |
  INC.B $1A,X                               ; $85C23E |
  JSL.L CODE_FL_82B994                      ; $85C240 |
  JSL.L CODE_FL_85AC28                      ; $85C244 |
  LDY.W #$0100                              ; $85C248 |
  JSL.L CODE_FL_80976B                      ; $85C24B |
  LDA.W #$0001                              ; $85C24F |
  STA.B $1A,X                               ; $85C252 |
  RTL                                       ; $85C254 |

CODE_85C255:
  LDA.B $4E,X                               ; $85C255 |
  AND.W #$00FF                              ; $85C257 |
  TAX                                       ; $85C25A |
  LDA.L $700688,X                           ; $85C25B |
  AND.W #$00FF                              ; $85C25F |
  LDX.B $FC                                 ; $85C262 |
  CMP.W #$0003                              ; $85C264 |
  BNE CODE_85C28B                           ; $85C267 |
  LDA.W #$4600                              ; $85C269 |
  STA.B $4E,X                               ; $85C26C |
  LDA.W #$0008                              ; $85C26E |
  STA.B $10                                 ; $85C271 |
  LDA.W #$0010                              ; $85C273 |
  STA.B $12                                 ; $85C276 |
  STZ.B $14                                 ; $85C278 |
  LDA.W #$0039                              ; $85C27A |
  STA.B $16                                 ; $85C27D |
  JSL.L CODE_FL_86B8B7                      ; $85C27F |
  JSL.L CODE_FL_85A986                      ; $85C283 |
  JML.L CODE_FL_86CA36                      ; $85C287 |

CODE_85C28B:
  RTL                                       ; $85C28B |

CODE_85C28C:
  JSL.L CODE_FL_85B20C                      ; $85C28C |
  JSL.L CODE_FL_85F7C9                      ; $85C290 |
  JSL.L CODE_FL_8CFD8F                      ; $85C294 |
  PHX                                       ; $85C298 |
  ASL A                                     ; $85C299 |
  TAX                                       ; $85C29A |
  LDA.L PTR16_85C2A5,X                      ; $85C29B |
  PLX                                       ; $85C29F |
  STA.B $00                                 ; $85C2A0 |
  JMP.W ($0000)                             ; $85C2A2 |

PTR16_85C2A5:
  dw CODE_85C2B5                            ; $85C2A5 |
  dw CODE_85C2FD                            ; $85C2A7 |
  dw CODE_85C328                            ; $85C2A9 |
  dw CODE_85C358                            ; $85C2AB |
  dw CODE_85C36F                            ; $85C2AD |
  dw CODE_85C39F                            ; $85C2AF |
  dw CODE_85C3C6                            ; $85C2B1 |
  dw CODE_85C3E9                            ; $85C2B3 |

CODE_85C2B5:
  JSL.L CODE_FL_86C7A5                      ; $85C2B5 |
  JSL.L CODE_FL_86C444                      ; $85C2B9 |
  JSL.L CODE_FL_8CFF15                      ; $85C2BD |
  LDA.W #$0032                              ; $85C2C1 |
  JSL.L CODE_FL_86C9A4                      ; $85C2C4 |
  BCS CODE_85C2F9                           ; $85C2C8 |
  JSL.L CODE_FL_85AAB6                      ; $85C2CA |
  LDA.W #$0006                              ; $85C2CE |
  STA.W $003E,Y                             ; $85C2D1 |
  LDA.W #$0002                              ; $85C2D4 |
  STA.W $0040,Y                             ; $85C2D7 |
  LDA.W #$FFC0                              ; $85C2DA |
  JSL.L CODE_FL_86C71F                      ; $85C2DD |
  LDA.W #$1013                              ; $85C2E1 |
  JSL.L CODE_FL_86CAEE                      ; $85C2E4 |
  LDA.W #$0002                              ; $85C2E8 |
  STA.B $36,X                               ; $85C2EB |
  JSL.L CODE_FL_85A9B7                      ; $85C2ED |
  JSL.L CODE_FL_85A9EF                      ; $85C2F1 |
  JML.L CODE_FL_86C63A                      ; $85C2F5 |

CODE_85C2F9:
  JML.L CODE_FL_86CA36                      ; $85C2F9 |

CODE_85C2FD:
  JSL.L CODE_FL_8CFE4B                      ; $85C2FD |
  LDA.B $1C                                 ; $85C301 |
  CMP.W #$0018                              ; $85C303 |
  BCS CODE_85C319                           ; $85C306 |
  LDA.W #$1014                              ; $85C308 |
  JSL.L CODE_FL_8CFE36                      ; $85C30B |
  JSL.L CODE_FL_86C899                      ; $85C30F |
  LDA.W #$0002                              ; $85C313 |
  STA.B $1A,X                               ; $85C316 |
  RTL                                       ; $85C318 |

CODE_85C319:
  LDA.W #$FFC0                              ; $85C319 |
  JSL.L CODE_FL_8CFDCC                      ; $85C31C |
  LDA.W #$1011                              ; $85C320 |
  JSL.L CODE_FL_8CFE36                      ; $85C323 |
  RTL                                       ; $85C327 |

CODE_85C328:
  JSL.L CODE_FL_8CFE4B                      ; $85C328 |
  LDY.B $44,X                               ; $85C32C |
  LDA.B $1A                                 ; $85C32E |
  STA.W $003A,Y                             ; $85C330 |
  LDA.B $1C,X                               ; $85C333 |
  STA.W $003C,Y                             ; $85C335 |
  LDA.W #$1014                              ; $85C338 |
  JSL.L CODE_FL_8CFEAB                      ; $85C33B |
  LDA.B $1C                                 ; $85C33F |
  CMP.W #$0028                              ; $85C341 |
  BCC CODE_85C357                           ; $85C344 |
  LDA.W #$FFC0                              ; $85C346 |
  JSL.L CODE_FL_86C71F                      ; $85C349 |
  LDA.W #$1013                              ; $85C34D |
  JSL.L CODE_FL_86CAEE                      ; $85C350 |
  DEC.B $1A,X                               ; $85C354 |
  RTL                                       ; $85C356 |

CODE_85C357:
  RTL                                       ; $85C357 |

CODE_85C358:
  JSL.L CODE_FL_85A9BF                      ; $85C358 |
  JSL.L CODE_FL_85A9F7                      ; $85C35C |
  STZ.B $1E,X                               ; $85C360 |
  LDA.W #$34D2                              ; $85C362 |
  STA.B $00,X                               ; $85C365 |
  JSL.L CODE_FL_85A5A7                      ; $85C367 |
  JML.L CODE_JL_8CFEC2                      ; $85C36B |

CODE_85C36F:
  JSL.L CODE_FL_85B291                      ; $85C36F |
  JSL.L CODE_FL_85B273                      ; $85C373 |
  BCC CODE_85C39E                           ; $85C377 |
  JSL.L CODE_FL_85A9B7                      ; $85C379 |
  JSL.L CODE_FL_85A9EF                      ; $85C37D |
  LDA.W #$0002                              ; $85C381 |
  JSL.L CODE_FL_85B3A9                      ; $85C384 |
  JSL.L CODE_FL_8CFE4B                      ; $85C388 |
  LDA.W #$1011                              ; $85C38C |
  JSL.L CODE_FL_8CFE36                      ; $85C38F |
  JSL.L CODE_FL_86C4F1                      ; $85C393 |
  LDA.W #$0040                              ; $85C397 |
  STA.B $2C,X                               ; $85C39A |
  INC.B $1A,X                               ; $85C39C |

CODE_85C39E:
  RTL                                       ; $85C39E |

CODE_85C39F:
  JSL.L CODE_FL_83FD80                      ; $85C39F |
  LDA.W $1C12                               ; $85C3A3 |
  BEQ CODE_85C3AE                           ; $85C3A6 |
  STZ.B $26,X                               ; $85C3A8 |
  STZ.B $28,X                               ; $85C3AA |
  BRA CODE_85C3B2                           ; $85C3AC |

CODE_85C3AE:
  JSL.L CODE_FL_86C70D                      ; $85C3AE |

CODE_85C3B2:
  LDA.W #$FFC0                              ; $85C3B2 |
  JSL.L CODE_FL_86C71F                      ; $85C3B5 |
  LDA.W #$1013                              ; $85C3B9 |
  JSL.L CODE_FL_86CAEE                      ; $85C3BC |
  LDA.W #$0001                              ; $85C3C0 |
  STA.B $1A,X                               ; $85C3C3 |
  RTL                                       ; $85C3C5 |

CODE_85C3C6:
  JSL.L CODE_FL_85A9BF                      ; $85C3C6 |
  JSL.L CODE_FL_85A9F7                      ; $85C3CA |
  STZ.B $1E,X                               ; $85C3CE |
  LDA.W #$34D2                              ; $85C3D0 |
  STA.B $00,X                               ; $85C3D3 |
  LDA.W #$8000                              ; $85C3D5 |
  JSL.L CODE_FL_85AA0F                      ; $85C3D8 |
  JSL.L CODE_FL_85A5A7                      ; $85C3DC |
  LDA.W #$0080                              ; $85C3E0 |
  STA.B $4C,X                               ; $85C3E3 |
  JML.L CODE_JL_8CFEC2                      ; $85C3E5 |

CODE_85C3E9:
  JSL.L CODE_FL_8CFEF6                      ; $85C3E9 |
  BPL CODE_85C3F7                           ; $85C3ED |
  JSL.L CODE_FL_85A939                      ; $85C3EF |
  JML.L CODE_FL_86CA2D                      ; $85C3F3 |

CODE_85C3F7:
  RTL                                       ; $85C3F7 |

CODE_85C3F8:
  JSL.L CODE_FL_85B20C                      ; $85C3F8 |
  JSL.L CODE_FL_85F7C9                      ; $85C3FC |
  JSL.L CODE_FL_8CFD8F                      ; $85C400 |
  PHX                                       ; $85C404 |
  ASL A                                     ; $85C405 |
  TAX                                       ; $85C406 |
  LDA.L PTR16_85C411,X                      ; $85C407 |
  PLX                                       ; $85C40B |
  STA.B $00                                 ; $85C40C |
  JMP.W ($0000)                             ; $85C40E |

PTR16_85C411:
  dw CODE_85C41B                            ; $85C411 |
  dw CODE_85C441                            ; $85C413 |
  dw CODE_85C475                            ; $85C415 |
  dw CODE_85C4A1                            ; $85C417 |
  dw CODE_85C4BF                            ; $85C419 |

CODE_85C41B:
  JSL.L CODE_FL_86C7A5                      ; $85C41B |
  JSL.L CODE_FL_86C444                      ; $85C41F |
  JSL.L CODE_FL_8CFF15                      ; $85C423 |
  LDA.W #$FFC0                              ; $85C427 |
  JSL.L CODE_FL_86C71F                      ; $85C42A |
  LDA.W #$1000                              ; $85C42E |
  JSL.L CODE_FL_86CAEE                      ; $85C431 |
  JSL.L CODE_FL_85A9B7                      ; $85C435 |
  JSL.L CODE_FL_85A9EF                      ; $85C439 |
  JML.L CODE_FL_86C63A                      ; $85C43D |

CODE_85C441:
  LDA.B $2C,X                               ; $85C441 |
  BNE CODE_85C466                           ; $85C443 |
  JSL.L CODE_FL_8CFE4B                      ; $85C445 |
  LDA.B $1C                                 ; $85C449 |
  CMP.W #$0040                              ; $85C44B |
  BCS CODE_85C466                           ; $85C44E |
  LDA.W #$0002                              ; $85C450 |
  JSL.L CODE_FL_85B3A9                      ; $85C453 |
  LDA.W #$0FFE                              ; $85C457 |
  JSL.L CODE_FL_8CFEAB                      ; $85C45A |
  LDA.W #$0020                              ; $85C45E |
  STA.B $2C,X                               ; $85C461 |
  INC.B $1A,X                               ; $85C463 |
  RTL                                       ; $85C465 |

CODE_85C466:
  LDA.W #$FFC0                              ; $85C466 |
  JSL.L CODE_FL_8CFDCC                      ; $85C469 |
  LDA.W #$0FFE                              ; $85C46D |
  JSL.L CODE_FL_8CFE36                      ; $85C470 |
  RTL                                       ; $85C474 |

CODE_85C475:
  JSL.L CODE_FL_83FD80                      ; $85C475 |
  LDA.W $1C12                               ; $85C479 |
  BEQ CODE_85C484                           ; $85C47C |
  STZ.B $26,X                               ; $85C47E |
  STZ.B $28,X                               ; $85C480 |
  BRA CODE_85C488                           ; $85C482 |

CODE_85C484:
  JSL.L CODE_FL_86C70D                      ; $85C484 |

CODE_85C488:
  LDA.W #$FFC0                              ; $85C488 |
  JSL.L CODE_FL_86C71F                      ; $85C48B |
  LDA.W #$1000                              ; $85C48F |
  JSL.L CODE_FL_86CAEE                      ; $85C492 |
  LDA.W #$0040                              ; $85C496 |
  STA.B $2C,X                               ; $85C499 |
  LDA.W #$0001                              ; $85C49B |
  STA.B $1A,X                               ; $85C49E |
  RTL                                       ; $85C4A0 |

CODE_85C4A1:
  JSL.L CODE_FL_85A9BF                      ; $85C4A1 |
  JSL.L CODE_FL_85A9F7                      ; $85C4A5 |
  STZ.B $1E,X                               ; $85C4A9 |
  LDA.W #$3084                              ; $85C4AB |
  STA.B $00,X                               ; $85C4AE |
  LDA.W #$8000                              ; $85C4B0 |
  JSL.L CODE_FL_85AA0F                      ; $85C4B3 |
  JSL.L CODE_FL_85A5A7                      ; $85C4B7 |
  JML.L CODE_JL_8CFEC2                      ; $85C4BB |

CODE_85C4BF:
  JSL.L CODE_FL_8CFEF6                      ; $85C4BF |
  BPL CODE_85C4CD                           ; $85C4C3 |
  JSL.L CODE_FL_85A939                      ; $85C4C5 |
  JML.L CODE_FL_86CA2D                      ; $85C4C9 |

CODE_85C4CD:
  RTL                                       ; $85C4CD |

CODE_85C4CE:
  LDA.W #$0003                              ; $85C4CE |
  JSL.L CODE_FL_85B216                      ; $85C4D1 |
  LDA.W #$0006                              ; $85C4D5 |
  JSL.L CODE_FL_85B24B                      ; $85C4D8 |
  JSL.L CODE_FL_8CFD8F                      ; $85C4DC |
  PHX                                       ; $85C4E0 |
  ASL A                                     ; $85C4E1 |
  TAX                                       ; $85C4E2 |
  LDA.L PTR16_85C4ED,X                      ; $85C4E3 |
  PLX                                       ; $85C4E7 |
  STA.B $00                                 ; $85C4E8 |
  JMP.W ($0000)                             ; $85C4EA |

PTR16_85C4ED:
  dw CODE_85C501                            ; $85C4ED |
  dw CODE_85C555                            ; $85C4EF |
  dw CODE_85C57F                            ; $85C4F1 |
  dw CODE_85C59B                            ; $85C4F3 |
  dw CODE_85C5A5                            ; $85C4F5 |
  dw CODE_85C5B8                            ; $85C4F7 |
  dw CODE_85C5DA                            ; $85C4F9 |
  dw CODE_85C619                            ; $85C4FB |
  dw CODE_85C680                            ; $85C4FD |
  dw CODE_85C69E                            ; $85C4FF |

CODE_85C501:
  JSL.L CODE_FL_86C7A5                      ; $85C501 |
  JSL.L CODE_FL_86C444                      ; $85C505 |
  JSL.L CODE_FL_8CFF15                      ; $85C509 |
  LDA.W #$0032                              ; $85C50D |
  JSL.L CODE_FL_86C9A4                      ; $85C510 |
  BCS CODE_85C551                           ; $85C514 |
  JSL.L CODE_FL_85AAB6                      ; $85C516 |
  LDA.W #$0006                              ; $85C51A |
  STA.W $003E,Y                             ; $85C51D |
  LDA.W #$0007                              ; $85C520 |
  STA.W $0040,Y                             ; $85C523 |
  LDA.W #$FFC0                              ; $85C526 |
  JSL.L CODE_FL_86C71F                      ; $85C529 |
  LDA.W #$1004                              ; $85C52D |
  JSL.L CODE_FL_86CAEE                      ; $85C530 |
  LDA.W #$0080                              ; $85C534 |
  JSL.L CODE_FL_8CFE19                      ; $85C537 |
  JSL.L CODE_FL_85A9B7                      ; $85C53B |
  LDA.W #$0002                              ; $85C53F |
  STA.B $36,X                               ; $85C542 |
  JSL.L CODE_FL_85B01E                      ; $85C544 |
  LDA.W #$0008                              ; $85C548 |
  STA.B $4E,X                               ; $85C54B |
  JML.L CODE_FL_86C63A                      ; $85C54D |

CODE_85C551:
  JML.L CODE_FL_86CA36                      ; $85C551 |

CODE_85C555:
  JSL.L CODE_FL_85A9B7                      ; $85C555 |
  JSL.L CODE_FL_85E05F                      ; $85C559 |
  BCS CODE_85C56A                           ; $85C55D |
  LDA.W #$FFC0                              ; $85C55F |
  JSL.L CODE_FL_8CFDBB                      ; $85C562 |
  JSL.L CODE_FL_86C70D                      ; $85C566 |

CODE_85C56A:
  LDA.W #$0040                              ; $85C56A |
  JSL.L CODE_FL_8CFE19                      ; $85C56D |
  STZ.B $26,X                               ; $85C571 |
  STZ.B $28,X                               ; $85C573 |
  STZ.B $1E,X                               ; $85C575 |
  LDA.W #$3256                              ; $85C577 |
  STA.B $00,X                               ; $85C57A |
  INC.B $1A,X                               ; $85C57C |
  RTL                                       ; $85C57E |

CODE_85C57F:
  JSL.L CODE_FL_86C70D                      ; $85C57F |
  LDA.W #$FFD8                              ; $85C583 |
  JSL.L CODE_FL_8CFE29                      ; $85C586 |
  LDA.W #$1004                              ; $85C58A |
  JSL.L CODE_FL_86CAEE                      ; $85C58D |
  LDA.W #$0080                              ; $85C591 |
  JSL.L CODE_FL_8CFE19                      ; $85C594 |
  DEC.B $1A,X                               ; $85C598 |
  RTL                                       ; $85C59A |

CODE_85C59B:
  JSL.L CODE_FL_85A9BF                      ; $85C59B |
  LDA.B $4E,X                               ; $85C59F |
  JML.L CODE_FL_85B4B4                      ; $85C5A1 |

CODE_85C5A5:
  LDA.W #$3274                              ; $85C5A5 |

CODE_JP_85C5A8:
  STZ.B $1E,X                               ; $85C5A8 |
  STA.B $00,X                               ; $85C5AA |
  JSL.L CODE_FL_85A5A7                      ; $85C5AC |
  JSL.L CODE_FL_85A9BF                      ; $85C5B0 |
  JML.L CODE_JL_8CFEC2                      ; $85C5B4 |

CODE_85C5B8:
  JSL.L CODE_FL_85B291                      ; $85C5B8 |
  JSL.L CODE_FL_85B273                      ; $85C5BC |
  BCC CODE_85C5D9                           ; $85C5C0 |
  STZ.B $26,X                               ; $85C5C2 |
  STZ.B $28,X                               ; $85C5C4 |
  LDA.W #$0400                              ; $85C5C6 |
  STA.B $2A,X                               ; $85C5C9 |
  LDA.W #$0080                              ; $85C5CB |
  STA.B $4C,X                               ; $85C5CE |
  LDY.W #$8AF8                              ; $85C5D0 |
  JSL.L CODE_FL_85B536                      ; $85C5D3 |
  INC.B $1A,X                               ; $85C5D7 |

CODE_85C5D9:
  RTL                                       ; $85C5D9 |

CODE_85C5DA:
  JSL.L CODE_FL_8CFEF6                      ; $85C5DA |
  BPL CODE_85C618                           ; $85C5DE |
  LDA.W #$0002                              ; $85C5E0 |
  JSL.L CODE_FL_85B3A9                      ; $85C5E3 |
  JSL.L CODE_FL_86C4F1                      ; $85C5E7 |
  LDA.W #$1005                              ; $85C5EB |
  JSL.L CODE_FL_86CAEE                      ; $85C5EE |
  LDA.W #$0200                              ; $85C5F2 |
  STA.B $2C,X                               ; $85C5F5 |
  LDA.W #$0020                              ; $85C5F7 |
  STA.B $3E,X                               ; $85C5FA |
  JSL.L CODE_FL_85A9AF                      ; $85C5FC |
  LDA.W $1C5C                               ; $85C600 |
  BEQ CODE_85C609                           ; $85C603 |
  DEC.B $36,X                               ; $85C605 |
  BRA CODE_85C616                           ; $85C607 |

CODE_85C609:
  INC.B $46,X                               ; $85C609 |
  JSL.L CODE_FL_85A9B7                      ; $85C60B |
  LDA.B $32,X                               ; $85C60F |
  STA.W $1C5C                               ; $85C611 |
  STZ.B $32,X                               ; $85C614 |

CODE_85C616:
  INC.B $1A,X                               ; $85C616 |

CODE_85C618:
  RTL                                       ; $85C618 |

CODE_85C619:
  JSL.L CODE_FL_85B46F                      ; $85C619 |
  LDY.B $44,X                               ; $85C61D |
  LDA.B $1A                                 ; $85C61F |
  STA.W $003A,Y                             ; $85C621 |
  LDA.B $1C,X                               ; $85C624 |
  STA.W $003C,Y                             ; $85C626 |
  JSL.L CODE_FL_85B291                      ; $85C629 |
  JSL.L CODE_FL_86C4F1                      ; $85C62D |
  LDA.B $3E,X                               ; $85C631 |
  BNE CODE_85C645                           ; $85C633 |
  LDA.W #$0002                              ; $85C635 |
  JSL.L CODE_FL_85B3A9                      ; $85C638 |
  JSL.L CODE_FL_86C4F1                      ; $85C63C |
  LDA.W #$0020                              ; $85C640 |
  STA.B $3E,X                               ; $85C643 |

CODE_85C645:
  DEC.B $3E,X                               ; $85C645 |
  LDA.W $1C5C                               ; $85C647 |
  BEQ CODE_85C65A                           ; $85C64A |
  JSL.L CODE_FL_86C70D                      ; $85C64C |
  LDY.W #$8A58                              ; $85C650 |
  JSL.L CODE_FL_85B536                      ; $85C653 |
  STZ.W $1C5C                               ; $85C657 |

CODE_85C65A:
  STZ.B $28,X                               ; $85C65A |
  LDA.W #$FFD8                              ; $85C65C |
  JSL.L CODE_FL_8CFE29                      ; $85C65F |
  LDA.W #$1004                              ; $85C663 |
  JSL.L CODE_FL_86CAEE                      ; $85C666 |
  LDA.W #$0040                              ; $85C66A |
  JSL.L CODE_FL_8CFE19                      ; $85C66D |
  LDA.W #$0002                              ; $85C671 |
  STA.B $36,X                               ; $85C674 |
  JSL.L CODE_FL_85A9A7                      ; $85C676 |
  LDA.W #$0001                              ; $85C67A |
  STA.B $1A,X                               ; $85C67D |
  RTL                                       ; $85C67F |

CODE_85C680:
  LDA.W #$3274                              ; $85C680 |

CODE_JP_85C683:
  STA.B $00,X                               ; $85C683 |
  JSL.L CODE_FL_85A9BF                      ; $85C685 |
  JSL.L CODE_FL_85A9F7                      ; $85C689 |
  STZ.B $1E,X                               ; $85C68D |
  LDA.W #$8000                              ; $85C68F |
  JSL.L CODE_FL_85AA0F                      ; $85C692 |
  JSL.L CODE_FL_85A5A7                      ; $85C696 |
  JML.L CODE_JL_8CFEC2                      ; $85C69A |

CODE_85C69E:
  JSL.L CODE_FL_8CFEF6                      ; $85C69E |
  BPL CODE_85C6BA                           ; $85C6A2 |
  JSL.L CODE_FL_85A939                      ; $85C6A4 |
  LDA.B $46,X                               ; $85C6A8 |
  BEQ CODE_85C6B6                           ; $85C6AA |
  STZ.W $1C5C                               ; $85C6AC |
  LDY.W #$8A58                              ; $85C6AF |
  JSL.L CODE_FL_85B536                      ; $85C6B2 |

CODE_85C6B6:
  JML.L CODE_FL_86CA2D                      ; $85C6B6 |

CODE_85C6BA:
  RTL                                       ; $85C6BA |

CODE_85C6BB:
  LDA.W #$0003                              ; $85C6BB |
  JSL.L CODE_FL_85B216                      ; $85C6BE |
  LDA.W #$0006                              ; $85C6C2 |
  JSL.L CODE_FL_85B24B                      ; $85C6C5 |
  JSL.L CODE_FL_8CFD8F                      ; $85C6C9 |
  PHX                                       ; $85C6CD |
  ASL A                                     ; $85C6CE |
  TAX                                       ; $85C6CF |
  LDA.L PTR16_85C6DA,X                      ; $85C6D0 |
  PLX                                       ; $85C6D4 |
  STA.B $00                                 ; $85C6D5 |
  JMP.W ($0000)                             ; $85C6D7 |

PTR16_85C6DA:
  dw CODE_85C6EE                            ; $85C6DA |
  dw CODE_85C725                            ; $85C6DC |
  dw CODE_85C74F                            ; $85C6DE |
  dw CODE_85C59B                            ; $85C6E0 |
  dw CODE_85C76B                            ; $85C6E2 |
  dw CODE_85C5B8                            ; $85C6E4 |
  dw CODE_85C771                            ; $85C6E6 |
  dw CODE_85C7B2                            ; $85C6E8 |
  dw CODE_85C828                            ; $85C6EA |
  dw CODE_85C69E                            ; $85C6EC |

CODE_85C6EE:
  JSL.L CODE_FL_86C7A5                      ; $85C6EE |
  JSL.L CODE_FL_86C444                      ; $85C6F2 |
  JSL.L CODE_FL_8CFF15                      ; $85C6F6 |
  LDA.W #$FFC0                              ; $85C6FA |
  JSL.L CODE_FL_86C71F                      ; $85C6FD |
  LDA.W #$1006                              ; $85C701 |
  JSL.L CODE_FL_86CAEE                      ; $85C704 |
  LDA.W #$0040                              ; $85C708 |
  JSL.L CODE_FL_8CFE19                      ; $85C70B |
  JSL.L CODE_FL_85A9B7                      ; $85C70F |
  LDA.W #$0002                              ; $85C713 |
  STA.B $36,X                               ; $85C716 |
  JSL.L CODE_FL_85B01E                      ; $85C718 |
  LDA.W #$0009                              ; $85C71C |
  STA.B $4E,X                               ; $85C71F |
  JML.L CODE_FL_86C63A                      ; $85C721 |

CODE_85C725:
  JSL.L CODE_FL_85A9B7                      ; $85C725 |
  JSL.L CODE_FL_85E05F                      ; $85C729 |
  BCS CODE_85C73A                           ; $85C72D |
  LDA.W #$FFC0                              ; $85C72F |
  JSL.L CODE_FL_8CFDBB                      ; $85C732 |
  JSL.L CODE_FL_86C70D                      ; $85C736 |

CODE_85C73A:
  LDA.W #$0080                              ; $85C73A |
  JSL.L CODE_FL_8CFE19                      ; $85C73D |
  STZ.B $26,X                               ; $85C741 |
  STZ.B $28,X                               ; $85C743 |
  STZ.B $1E,X                               ; $85C745 |
  LDA.W #$32AE                              ; $85C747 |
  STA.B $00,X                               ; $85C74A |
  INC.B $1A,X                               ; $85C74C |
  RTL                                       ; $85C74E |

CODE_85C74F:
  JSL.L CODE_FL_86C70D                      ; $85C74F |
  LDA.W #$FFC0                              ; $85C753 |
  JSL.L CODE_FL_8CFE29                      ; $85C756 |
  LDA.W #$1006                              ; $85C75A |
  JSL.L CODE_FL_86CAEE                      ; $85C75D |
  LDA.W #$0040                              ; $85C761 |
  JSL.L CODE_FL_8CFE19                      ; $85C764 |
  DEC.B $1A,X                               ; $85C768 |
  RTL                                       ; $85C76A |

CODE_85C76B:
  LDA.W #$32CA                              ; $85C76B |
  JMP.W CODE_JP_85C5A8                      ; $85C76E |

CODE_85C771:
  JSL.L CODE_FL_8CFEF6                      ; $85C771 |
  BPL CODE_85C7B1                           ; $85C775 |
  LDA.W #$0002                              ; $85C777 |
  JSL.L CODE_FL_85B3A9                      ; $85C77A |
  JSL.L CODE_FL_86C4F1                      ; $85C77E |
  LDA.W #$1007                              ; $85C782 |
  JSL.L CODE_FL_86CAEE                      ; $85C785 |
  LDA.W #$0200                              ; $85C789 |
  STA.B $2C,X                               ; $85C78C |
  LDA.W #$0020                              ; $85C78E |
  STA.B $3A,X                               ; $85C791 |
  STA.B $3C,X                               ; $85C793 |
  JSL.L CODE_FL_85A9AF                      ; $85C795 |
  LDA.W $1C5C                               ; $85C799 |
  BEQ CODE_85C7A2                           ; $85C79C |
  DEC.B $36,X                               ; $85C79E |
  BRA CODE_85C7AF                           ; $85C7A0 |

CODE_85C7A2:
  INC.B $46,X                               ; $85C7A2 |
  JSL.L CODE_FL_85A9B7                      ; $85C7A4 |
  LDA.B $32,X                               ; $85C7A8 |
  STA.W $1C5C                               ; $85C7AA |
  STZ.B $32,X                               ; $85C7AD |

CODE_85C7AF:
  INC.B $1A,X                               ; $85C7AF |

CODE_85C7B1:
  RTL                                       ; $85C7B1 |

CODE_85C7B2:
  JSL.L CODE_FL_85B291                      ; $85C7B2 |
  JSL.L CODE_FL_86C4F1                      ; $85C7B6 |
  LDA.B $3C,X                               ; $85C7BA |
  BNE CODE_85C7CE                           ; $85C7BC |
  LDA.W #$0002                              ; $85C7BE |
  JSL.L CODE_FL_85B3A9                      ; $85C7C1 |
  JSL.L CODE_FL_86C4F1                      ; $85C7C5 |
  LDA.W #$0020                              ; $85C7C9 |
  STA.B $3C,X                               ; $85C7CC |

CODE_85C7CE:
  LDA.B $3A,X                               ; $85C7CE |
  BNE CODE_85C7E9                           ; $85C7D0 |
  LDA.W #$005D                              ; $85C7D2 |
  JSL.L CODE_FL_86C9A7                      ; $85C7D5 |
  BCS CODE_85C827                           ; $85C7D9 |
  JSL.L CODE_FL_86C7C4                      ; $85C7DB |
  LDA.B $48,X                               ; $85C7DF |
  STA.W $0048,Y                             ; $85C7E1 |
  LDA.W #$0040                              ; $85C7E4 |
  STA.B $3A,X                               ; $85C7E7 |

CODE_85C7E9:
  DEC.B $3A,X                               ; $85C7E9 |
  DEC.B $3C,X                               ; $85C7EB |
  LDA.W $1C5C                               ; $85C7ED |
  BEQ CODE_85C802                           ; $85C7F0 |
  JSL.L CODE_FL_86C70D                      ; $85C7F2 |
  LDY.W #$8A58                              ; $85C7F6 |
  JSL.L CODE_FL_85B536                      ; $85C7F9 |
  STZ.B $46,X                               ; $85C7FD |
  STZ.W $1C5C                               ; $85C7FF |

CODE_85C802:
  STZ.B $28,X                               ; $85C802 |
  LDA.W #$FFD8                              ; $85C804 |
  JSL.L CODE_FL_8CFE29                      ; $85C807 |
  LDA.W #$1006                              ; $85C80B |
  JSL.L CODE_FL_86CAEE                      ; $85C80E |
  LDA.W #$0040                              ; $85C812 |
  JSL.L CODE_FL_8CFE19                      ; $85C815 |
  JSL.L CODE_FL_85A9A7                      ; $85C819 |
  LDA.W #$0002                              ; $85C81D |
  STA.B $36,X                               ; $85C820 |
  LDA.W #$0001                              ; $85C822 |
  STA.B $1A,X                               ; $85C825 |

CODE_85C827:
  RTL                                       ; $85C827 |

CODE_85C828:
  LDA.W #$32CA                              ; $85C828 |
  JMP.W CODE_JP_85C683                      ; $85C82B |

CODE_85C82E:
  LDA.W #$0003                              ; $85C82E |
  JSL.L CODE_FL_85B056                      ; $85C831 |
  JSL.L CODE_FL_8CFD8F                      ; $85C835 |
  PHX                                       ; $85C839 |
  ASL A                                     ; $85C83A |
  TAX                                       ; $85C83B |
  LDA.L PTR16_85C846,X                      ; $85C83C |
  PLX                                       ; $85C840 |
  STA.B $00                                 ; $85C841 |
  JMP.W ($0000)                             ; $85C843 |

PTR16_85C846:
  dw CODE_85C850                            ; $85C846 |
  dw CODE_85C87B                            ; $85C848 |
  dw CODE_85C882                            ; $85C84A |
  dw CODE_85C88F                            ; $85C84C |
  dw CODE_85C8A8                            ; $85C84E |

CODE_85C850:
  LDA.W #$1008                              ; $85C850 |
  JSL.L CODE_FL_86CAEE                      ; $85C853 |
  JSL.L CODE_FL_8CFF0C                      ; $85C857 |
  JSL.L CODE_FL_85A9EF                      ; $85C85B |
  JSL.L CODE_FL_85A9B7                      ; $85C85F |
  JSL.L CODE_FL_85A8CE                      ; $85C863 |
  LDA.W #$0003                              ; $85C867 |
  JSL.L CODE_FL_85B3A9                      ; $85C86A |
  LDA.W #$0008                              ; $85C86E |
  STA.B $11,X                               ; $85C871 |
  STA.B $42,X                               ; $85C873 |
  INC.B $1A,X                               ; $85C875 |
  JML.L CODE_FL_86C63F                      ; $85C877 |

CODE_85C87B:
  JSL.L CODE_FL_85B407                      ; $85C87B |
  INC.B $1A,X                               ; $85C87F |
  RTL                                       ; $85C881 |

CODE_85C882:
  STZ.B $2A,X                               ; $85C882 |
  STZ.B $4C,X                               ; $85C884 |
  JSL.L CODE_FL_85F7C9                      ; $85C886 |
  JSL.L CODE_FL_85B3F7                      ; $85C88A |
  RTL                                       ; $85C88E |

CODE_85C88F:
  JSL.L CODE_FL_8CFEF6                      ; $85C88F |
  BPL CODE_85C8A7                           ; $85C893 |
  STZ.B $1E,X                               ; $85C895 |
  LDA.W #$32FA                              ; $85C897 |
  STA.B $00,X                               ; $85C89A |
  STZ.B $26,X                               ; $85C89C |
  STZ.B $28,X                               ; $85C89E |
  LDA.W #$0010                              ; $85C8A0 |
  STA.B $2C,X                               ; $85C8A3 |
  INC.B $1A,X                               ; $85C8A5 |

CODE_85C8A7:
  RTL                                       ; $85C8A7 |

CODE_85C8A8:
  JSL.L CODE_FL_86C70D                      ; $85C8A8 |
  LDA.W #$FFF8                              ; $85C8AC |
  JSL.L CODE_FL_86CB2D                      ; $85C8AF |
  BCC CODE_85C8B9                           ; $85C8B3 |
  JSL.L CODE_FL_85A939                      ; $85C8B5 |

CODE_85C8B9:
  JML.L CODE_FL_86CA2D                      ; $85C8B9 |

CODE_85C8BD:
  LDA.W #$0003                              ; $85C8BD |
  JSL.L CODE_FL_85B216                      ; $85C8C0 |
  LDA.W #$0006                              ; $85C8C4 |
  JSL.L CODE_FL_85B24B                      ; $85C8C7 |
  JSL.L CODE_FL_8CFD8F                      ; $85C8CB |
  PHX                                       ; $85C8CF |
  ASL A                                     ; $85C8D0 |
  TAX                                       ; $85C8D1 |
  LDA.L PTR16_85C8DC,X                      ; $85C8D2 |
  PLX                                       ; $85C8D6 |
  STA.B $00                                 ; $85C8D7 |
  JMP.W ($0000)                             ; $85C8D9 |

PTR16_85C8DC:
  dw CODE_85C8F2                            ; $85C8DC |
  dw CODE_85C932                            ; $85C8DE |
  dw CODE_85C984                            ; $85C8E0 |
  dw CODE_85C9A5                            ; $85C8E2 |
  dw CODE_85C9B4                            ; $85C8E4 |
  dw CODE_85C9CC                            ; $85C8E6 |
  dw CODE_85CA02                            ; $85C8E8 |
  dw CODE_85CA3F                            ; $85C8EA |
  dw CODE_85CAB4                            ; $85C8EC |
  dw CODE_85CB12                            ; $85C8EE |
  dw CODE_85CB35                            ; $85C8F0 |

CODE_85C8F2:
  JSL.L CODE_FL_86C7A5                      ; $85C8F2 |
  JSL.L CODE_FL_86C444                      ; $85C8F6 |
  JSL.L CODE_FL_8CFF15                      ; $85C8FA |
  LDA.W #$FFC0                              ; $85C8FE |
  JSL.L CODE_FL_86C71F                      ; $85C901 |
  LDA.W #$104A                              ; $85C905 |
  JSL.L CODE_FL_86CAEE                      ; $85C908 |
  LDA.B $1E,X                               ; $85C90C |
  STA.B $3E,X                               ; $85C90E |
  JSL.L CODE_FL_85A9B7                      ; $85C910 |
  JSL.L CODE_FL_85B01E                      ; $85C914 |
  LDA.W #$000F                              ; $85C918 |
  STA.B $4E,X                               ; $85C91B |
  LDA.W #$0008                              ; $85C91D |
  STA.B $11,X                               ; $85C920 |
  LDA.W #$0002                              ; $85C922 |
  STA.B $36,X                               ; $85C925 |
  LDA.W #$0200                              ; $85C927 |
  JSL.L CODE_FL_8CFE19                      ; $85C92A |
  JML.L CODE_FL_86C63A                      ; $85C92E |

CODE_85C932:
  JSL.L CODE_FL_85A9B7                      ; $85C932 |
  JSL.L CODE_FL_85E05F                      ; $85C936 |
  BCS CODE_85C955                           ; $85C93A |
  LDA.W #$FFC0                              ; $85C93C |
  JSL.L CODE_FL_8CFDCC                      ; $85C93F |
  LDA.W #$1048                              ; $85C943 |
  JSL.L CODE_FL_8CFEAB                      ; $85C946 |
  LDY.W #$0003                              ; $85C94A |
  JSL.L CODE_FL_85B544                      ; $85C94D |
  JSL.L CODE_FL_86C70D                      ; $85C951 |

CODE_85C955:
  LDA.W #$0080                              ; $85C955 |
  JSL.L CODE_FL_8CFE19                      ; $85C958 |
  STZ.B $26,X                               ; $85C95C |
  STZ.B $28,X                               ; $85C95E |
  LDA.W #$0004                              ; $85C960 |
  STA.B $11,X                               ; $85C963 |
  LDA.B $1E,X                               ; $85C965 |
  SEC                                       ; $85C967 |
  SBC.B $3E,X                               ; $85C968 |
  ASL A                                     ; $85C96A |
  TAY                                       ; $85C96B |
  PHB                                       ; $85C96C |
  PHK                                       ; $85C96D |
  PLB                                       ; $85C96E |
  LDA.W CODE_00C97E,Y                       ; $85C96F |
  PLB                                       ; $85C972 |
  CLC                                       ; $85C973 |
  ADC.W #$3A88                              ; $85C974 |
  STA.B $00,X                               ; $85C977 |
  STZ.B $1E,X                               ; $85C979 |
  INC.B $1A,X                               ; $85C97B |
  RTL                                       ; $85C97D |

  dw $0156,$0138,$001A                      ; $85C97E |

CODE_85C984:
  JSL.L CODE_FL_86C70D                      ; $85C984 |
  LDA.W #$FFC0                              ; $85C988 |
  JSL.L CODE_FL_8CFE29                      ; $85C98B |
  LDA.W #$104A                              ; $85C98F |
  JSL.L CODE_FL_86CAEE                      ; $85C992 |
  LDA.W #$0200                              ; $85C996 |
  JSL.L CODE_FL_8CFE19                      ; $85C999 |
  LDA.W #$0008                              ; $85C99D |
  STA.B $11,X                               ; $85C9A0 |
  DEC.B $1A,X                               ; $85C9A2 |
  RTL                                       ; $85C9A4 |

CODE_85C9A5:
  LDA.W #$0004                              ; $85C9A5 |
  STA.B $11,X                               ; $85C9A8 |
  JSL.L CODE_FL_85A9BF                      ; $85C9AA |
  LDA.B $4E,X                               ; $85C9AE |
  JML.L CODE_FL_85B4B4                      ; $85C9B0 |

CODE_85C9B4:
  LDA.W #$3C2E                              ; $85C9B4 |
  STA.B $00,X                               ; $85C9B7 |
  STZ.B $1E,X                               ; $85C9B9 |
  JSL.L CODE_FL_85A5A7                      ; $85C9BB |
  JSL.L CODE_FL_85A9BF                      ; $85C9BF |
  LDA.W #$0080                              ; $85C9C3 |
  STA.B $4C,X                               ; $85C9C6 |
  JML.L CODE_JL_8CFEC2                      ; $85C9C8 |

CODE_85C9CC:
  JSL.L CODE_FL_85B291                      ; $85C9CC |
  JSL.L CODE_FL_85B273                      ; $85C9D0 |
  BCC CODE_85CA01                           ; $85C9D4 |
  LDA.W #$3A88                              ; $85C9D6 |
  STA.B $00,X                               ; $85C9D9 |
  STZ.B $1E,X                               ; $85C9DB |
  STZ.B $26,X                               ; $85C9DD |
  STZ.B $28,X                               ; $85C9DF |
  LDA.W #$0400                              ; $85C9E1 |
  STA.B $2A,X                               ; $85C9E4 |
  LDA.W #$0080                              ; $85C9E6 |
  STA.B $4C,X                               ; $85C9E9 |
  INC.B $46,X                               ; $85C9EB |
  JSL.L CODE_FL_85A9B7                      ; $85C9ED |
  LDA.B $32,X                               ; $85C9F1 |
  STA.W $1C5C                               ; $85C9F3 |
  STZ.B $32,X                               ; $85C9F6 |
  LDY.W #$E7E2                              ; $85C9F8 |
  JSL.L CODE_FL_85B536                      ; $85C9FB |
  INC.B $1A,X                               ; $85C9FF |

CODE_85CA01:
  RTL                                       ; $85CA01 |

CODE_85CA02:
  LDA.B $46,X                               ; $85CA02 |
  BNE CODE_85CA0A                           ; $85CA04 |
  DEC.B $36,X                               ; $85CA06 |
  BRA CODE_85CA10                           ; $85CA08 |

CODE_85CA0A:
  JSL.L CODE_FL_8CFEF6                      ; $85CA0A |
  BPL CODE_85CA3E                           ; $85CA0E |

CODE_85CA10:
  LDA.W #$0008                              ; $85CA10 |
  STA.B $11,X                               ; $85CA13 |
  LDA.W #$0002                              ; $85CA15 |
  JSL.L CODE_FL_85B3A9                      ; $85CA18 |
  JSL.L CODE_FL_8CFE4B                      ; $85CA1C |
  LDA.W #$104B                              ; $85CA20 |
  JSL.L CODE_FL_8CFE36                      ; $85CA23 |
  LDA.W #$0020                              ; $85CA27 |
  STA.B $3A,X                               ; $85CA2A |
  LDA.W #$0010                              ; $85CA2C |
  STA.B $3C,X                               ; $85CA2F |
  JSL.L CODE_FL_85A9AF                      ; $85CA31 |
  LDY.W #$E7E2                              ; $85CA35 |
  JSL.L CODE_FL_85B536                      ; $85CA38 |
  INC.B $1A,X                               ; $85CA3C |

CODE_85CA3E:
  RTL                                       ; $85CA3E |

CODE_85CA3F:
  LDA.W $1C5C                               ; $85CA3F |
  BEQ CODE_85CA85                           ; $85CA42 |
  LDA.B $3C,X                               ; $85CA44 |
  BEQ CODE_85CA79                           ; $85CA46 |
  LDA.B $3A,X                               ; $85CA48 |
  BNE CODE_85CA67                           ; $85CA4A |
  JSL.L CODE_FL_8CFE4B                      ; $85CA4C |
  LDA.W #$104E                              ; $85CA50 |
  JSL.L CODE_FL_8CFE36                      ; $85CA53 |
  JSL.L CODE_FL_86C4F1                      ; $85CA57 |
  STZ.B $26,X                               ; $85CA5B |
  STZ.B $28,X                               ; $85CA5D |
  LDA.W #$0004                              ; $85CA5F |
  STA.B $11,X                               ; $85CA62 |
  INC.B $1A,X                               ; $85CA64 |
  RTL                                       ; $85CA66 |

CODE_85CA67:
  JSL.L CODE_FL_85B291                      ; $85CA67 |
  JSL.L CODE_FL_86C4F1                      ; $85CA6B |
  DEC.B $3A,X                               ; $85CA6F |
  LDY.W #$0003                              ; $85CA71 |
  JSL.L CODE_FL_85B544                      ; $85CA74 |
  RTL                                       ; $85CA78 |

CODE_85CA79:
  LDY.W #$E842                              ; $85CA79 |
  JSL.L CODE_FL_85B536                      ; $85CA7C |
  STZ.B $46,X                               ; $85CA80 |
  STZ.W $1C5C                               ; $85CA82 |

CODE_85CA85:
  STZ.B $28,X                               ; $85CA85 |
  LDA.W #$FFD8                              ; $85CA87 |
  JSL.L CODE_FL_8CFE29                      ; $85CA8A |
  LDA.W #$104A                              ; $85CA8E |
  JSL.L CODE_FL_86CAEE                      ; $85CA91 |
  LDA.W #$0200                              ; $85CA95 |
  JSL.L CODE_FL_8CFE19                      ; $85CA98 |
  JSL.L CODE_FL_85A9A7                      ; $85CA9C |
  JSL.L CODE_FL_85A9B7                      ; $85CAA0 |
  LDA.W #$0002                              ; $85CAA4 |
  STA.B $36,X                               ; $85CAA7 |
  LDA.W #$0008                              ; $85CAA9 |
  STA.B $11,X                               ; $85CAAC |
  LDA.W #$0001                              ; $85CAAE |
  STA.B $1A,X                               ; $85CAB1 |
  RTL                                       ; $85CAB3 |

CODE_85CAB4:
  JSL.L CODE_FL_8CFE4B                      ; $85CAB4 |
  LDA.W #$104E                              ; $85CAB8 |
  JSL.L CODE_FL_8CFEAB                      ; $85CABB |
  JSL.L CODE_FL_86C486                      ; $85CABF |
  LDA.B $1C,X                               ; $85CAC3 |
  CMP.W #$0006                              ; $85CAC5 |
  BNE CODE_85CAE5                           ; $85CAC8 |
  LDA.B $20,X                               ; $85CACA |
  CMP.W #$0001                              ; $85CACC |
  BNE CODE_85CB11                           ; $85CACF |
  LDA.W #$015E                              ; $85CAD1 |
  JSL.L CODE_FL_86C9A7                      ; $85CAD4 |
  BCS CODE_85CB11                           ; $85CAD8 |
  JSL.L CODE_FL_86C7C4                      ; $85CADA |
  LDA.B $48,X                               ; $85CADE |
  STA.W $0048,Y                             ; $85CAE0 |
  DEC.B $3C,X                               ; $85CAE3 |

CODE_85CAE5:
  LDA.B $1C,X                               ; $85CAE5 |
  CMP.W #$000C                              ; $85CAE7 |
  BNE CODE_85CB11                           ; $85CAEA |
  LDA.B $20,X                               ; $85CAEC |
  CMP.W #$0001                              ; $85CAEE |
  BNE CODE_85CB11                           ; $85CAF1 |
  LDA.W #$0002                              ; $85CAF3 |
  JSL.L CODE_FL_85B3A9                      ; $85CAF6 |
  JSL.L CODE_FL_8CFE4B                      ; $85CAFA |
  LDA.W #$104B                              ; $85CAFE |
  JSL.L CODE_FL_8CFE36                      ; $85CB01 |
  LDA.W #$0040                              ; $85CB05 |
  STA.B $3A,X                               ; $85CB08 |
  LDA.W #$0008                              ; $85CB0A |
  STA.B $11,X                               ; $85CB0D |
  DEC.B $1A,X                               ; $85CB0F |

CODE_85CB11:
  RTL                                       ; $85CB11 |

CODE_85CB12:
  JSL.L CODE_FL_85A9BF                      ; $85CB12 |
  JSL.L CODE_FL_85A9F7                      ; $85CB16 |
  STZ.B $1E,X                               ; $85CB1A |
  LDA.W #$3C2E                              ; $85CB1C |
  STA.B $00,X                               ; $85CB1F |
  LDA.W #$8000                              ; $85CB21 |
  JSL.L CODE_FL_85AA0F                      ; $85CB24 |
  JSL.L CODE_FL_85A5A7                      ; $85CB28 |
  LDA.W #$0080                              ; $85CB2C |
  STA.B $4C,X                               ; $85CB2F |
  JML.L CODE_JL_8CFEC2                      ; $85CB31 |

CODE_85CB35:
  JSL.L CODE_FL_8CFEF6                      ; $85CB35 |
  BPL CODE_85CB51                           ; $85CB39 |
  JSL.L CODE_FL_85A939                      ; $85CB3B |
  LDA.B $46,X                               ; $85CB3F |
  BEQ CODE_85CB4D                           ; $85CB41 |
  STZ.W $1C5C                               ; $85CB43 |
  LDY.W #$E842                              ; $85CB46 |
  JSL.L CODE_FL_85B536                      ; $85CB49 |

CODE_85CB4D:
  JML.L CODE_FL_86CA2D                      ; $85CB4D |

CODE_85CB51:
  RTL                                       ; $85CB51 |

CODE_85CB52:
  LDA.W #$0003                              ; $85CB52 |
  JSL.L CODE_FL_85B056                      ; $85CB55 |
  JSL.L CODE_FL_8CFD8F                      ; $85CB59 |
  PHX                                       ; $85CB5D |
  ASL A                                     ; $85CB5E |
  TAX                                       ; $85CB5F |
  LDA.L PTR16_85CB6A,X                      ; $85CB60 |
  PLX                                       ; $85CB64 |
  STA.B $00                                 ; $85CB65 |
  JMP.W ($0000)                             ; $85CB67 |

PTR16_85CB6A:
  dw CODE_85CB74                            ; $85CB6A |
  dw CODE_85CBAF                            ; $85CB6C |
  dw CODE_85CBB6                            ; $85CB6E |
  dw CODE_85CBC3                            ; $85CB70 |
  dw CODE_85CBDC                            ; $85CB72 |

CODE_85CB74:
  JSL.L CODE_FL_8CFE4B                      ; $85CB74 |
  LDA.B $1A                                 ; $85CB78 |
  CMP.W #$0003                              ; $85CB7A |
  BCS CODE_85CB84                           ; $85CB7D |
  LDA.W #$1053                              ; $85CB7F |
  BRA CODE_85CB87                           ; $85CB82 |

CODE_85CB84:
  LDA.W #$1054                              ; $85CB84 |

CODE_85CB87:
  JSL.L CODE_FL_86CAEE                      ; $85CB87 |
  JSL.L CODE_FL_8CFF0C                      ; $85CB8B |
  JSL.L CODE_FL_85A9EF                      ; $85CB8F |
  JSL.L CODE_FL_85A9B7                      ; $85CB93 |
  JSL.L CODE_FL_85A8CE                      ; $85CB97 |
  LDA.W #$0003                              ; $85CB9B |
  JSL.L CODE_FL_85B3A9                      ; $85CB9E |
  LDA.W #$0010                              ; $85CBA2 |
  STA.B $11,X                               ; $85CBA5 |
  STA.B $42,X                               ; $85CBA7 |
  INC.B $1A,X                               ; $85CBA9 |
  JML.L CODE_FL_86C63F                      ; $85CBAB |

CODE_85CBAF:
  JSL.L CODE_FL_85B407                      ; $85CBAF |
  INC.B $1A,X                               ; $85CBB3 |
  RTL                                       ; $85CBB5 |

CODE_85CBB6:
  STZ.B $2A,X                               ; $85CBB6 |
  STZ.B $4C,X                               ; $85CBB8 |
  JSL.L CODE_FL_85F7C9                      ; $85CBBA |
  JSL.L CODE_FL_85B3F7                      ; $85CBBE |
  RTL                                       ; $85CBC2 |

CODE_85CBC3:
  JSL.L CODE_FL_8CFEF6                      ; $85CBC3 |
  BPL CODE_85CBDB                           ; $85CBC7 |
  STZ.B $1E,X                               ; $85CBC9 |
  LDA.W #$3C4C                              ; $85CBCB |
  STA.B $00,X                               ; $85CBCE |
  STZ.B $26,X                               ; $85CBD0 |
  STZ.B $28,X                               ; $85CBD2 |
  LDA.W #$0010                              ; $85CBD4 |
  STA.B $2C,X                               ; $85CBD7 |
  INC.B $1A,X                               ; $85CBD9 |

CODE_85CBDB:
  RTL                                       ; $85CBDB |

CODE_85CBDC:
  JSL.L CODE_FL_86C70D                      ; $85CBDC |
  LDA.W #$FFF8                              ; $85CBE0 |
  JSL.L CODE_FL_86CB2D                      ; $85CBE3 |
  BCC CODE_85CBED                           ; $85CBE7 |
  JSL.L CODE_FL_85A939                      ; $85CBE9 |

CODE_85CBED:
  JML.L CODE_FL_86CA2D                      ; $85CBED |

CODE_85CBF1:
  JSL.L CODE_FL_85AAC6                      ; $85CBF1 |
  JSL.L CODE_FL_85F7C9                      ; $85CBF5 |
  LDY.B $44,X                               ; $85CBF9 |
  JSL.L CODE_FL_86C89E                      ; $85CBFB |
  LDA.B $40,X                               ; $85CBFF |
  CMP.W $001A,Y                             ; $85CC01 |
  BNE CODE_85CC24                           ; $85CC04 |
  LDA.B $3C,X                               ; $85CC06 |
  CMP.B $3E,X                               ; $85CC08 |
  BNE CODE_85CC24                           ; $85CC0A |
  LDA.B $3A,X                               ; $85CC0C |
  ASL A                                     ; $85CC0E |
  TAY                                       ; $85CC0F |
  LDA.W LOOSE_OP_0091C3,Y                   ; $85CC10 |
  CLC                                       ; $85CC13 |
  ADC.B $09,X                               ; $85CC14 |
  STA.B $09,X                               ; $85CC16 |
  LDA.W LOOSE_OP_0091CB,Y                   ; $85CC18 |
  CLC                                       ; $85CC1B |
  ADC.B $0D,X                               ; $85CC1C |
  STA.B $0D,X                               ; $85CC1E |
  JML.L CODE_FL_85A9EF                      ; $85CC20 |

CODE_85CC24:
  JML.L CODE_FL_85A9F7                      ; $85CC24 |

CODE_85CC28:
  JSL.L CODE_FL_86C424                      ; $85CC28 |
  PHX                                       ; $85CC2C |
  ASL A                                     ; $85CC2D |
  TAX                                       ; $85CC2E |
  LDA.L PTR16_85CC39,X                      ; $85CC2F |
  PLX                                       ; $85CC33 |
  STA.B $00                                 ; $85CC34 |
  JMP.W ($0000)                             ; $85CC36 |

PTR16_85CC39:
  dw CODE_85CC41                            ; $85CC39 |
  dw CODE_85CC5B                            ; $85CC3B |
  dw CODE_85CC5F                            ; $85CC3D |
  dw CODE_85CC6E                            ; $85CC3F |

CODE_85CC41:
  JSL.L CODE_FL_85AC3A                      ; $85CC41 |
  BCS CODE_85CC52                           ; $85CC45 |
  LDA.B $34,X                               ; $85CC47 |
  ORA.W #$B880                              ; $85CC49 |
  STA.B $34,X                               ; $85CC4C |
  JML.L CODE_FL_86C63A                      ; $85CC4E |

CODE_85CC52:
  LDA.W #$0002                              ; $85CC52 |
  STA.B $1A,X                               ; $85CC55 |
  JML.L CODE_FL_86C63A                      ; $85CC57 |

CODE_85CC5B:
  JML.L CODE_JL_85ACF8                      ; $85CC5B |

CODE_85CC5F:
  LDA.W #$0023                              ; $85CC5F |
  JSL.L push_sound_queue                    ; $85CC62 |
  LDA.W #$0060                              ; $85CC66 |
  STA.B $2C,X                               ; $85CC69 |
  INC.B $1A,X                               ; $85CC6B |
  RTL                                       ; $85CC6D |

CODE_85CC6E:
  LDA.W $1C38                               ; $85CC6E |
  AND.W #$0007                              ; $85CC71 |
  BNE CODE_85CC7A                           ; $85CC74 |
  JSL.L CODE_FL_8CFBCE                      ; $85CC76 |

CODE_85CC7A:
  JSL.L CODE_FL_86C70D                      ; $85CC7A |
  LDA.B $09,X                               ; $85CC7E |
  SEC                                       ; $85CC80 |
  SBC.W #$0020                              ; $85CC81 |
  STA.B $08                                 ; $85CC84 |
  LDA.B $0D,X                               ; $85CC86 |
  SEC                                       ; $85CC88 |
  SBC.W #$0030                              ; $85CC89 |
  STA.B $0A                                 ; $85CC8C |
  LDA.W #$00EE                              ; $85CC8E |
  JSL.L CODE_FL_8580F7                      ; $85CC91 |
  BCC CODE_85CC98                           ; $85CC95 |
  RTL                                       ; $85CC97 |

CODE_85CC98:
  JSL.L CODE_FL_85AC4F                      ; $85CC98 |
  JML.L CODE_FL_86CA36                      ; $85CC9C |

CODE_85CCA0:
  JSL.L CODE_FL_86C3F8                      ; $85CCA0 |
  PHX                                       ; $85CCA4 |
  ASL A                                     ; $85CCA5 |
  TAX                                       ; $85CCA6 |
  LDA.L PTR16_85CCB1,X                      ; $85CCA7 |
  PLX                                       ; $85CCAB |
  STA.B $00                                 ; $85CCAC |
  JMP.W ($0000)                             ; $85CCAE |

PTR16_85CCB1:
  dw CODE_85CCBB                            ; $85CCB1 |
  dw CODE_85CCEE                            ; $85CCB3 |
  dw CODE_85CD13                            ; $85CCB5 |
  dw CODE_85CD22                            ; $85CCB7 |
  dw CODE_85CD30                            ; $85CCB9 |

CODE_85CCBB:
  LDA.W #$0005                              ; $85CCBB |
  JSL.L CODE_FL_80A634                      ; $85CCBE |
  LDX.B $FC                                 ; $85CCC2 |
  BCC CODE_85CCC9                           ; $85CCC4 |
  JMP.W CODE_JP_85CDAC                      ; $85CCC6 |

CODE_85CCC9:
  JSL.L CODE_FL_86C7A5                      ; $85CCC9 |
  LDA.W #$30A6                              ; $85CCCD |
  STA.B $00,X                               ; $85CCD0 |
  LDA.B $34,X                               ; $85CCD2 |
  ORA.W #$1880                              ; $85CCD4 |
  STA.B $34,X                               ; $85CCD7 |
  JSL.L CODE_FL_8CFF15                      ; $85CCD9 |
  LDA.B $04,X                               ; $85CCDD |
  ORA.W #$1898                              ; $85CCDF |
  STA.B $04,X                               ; $85CCE2 |
  JSL.L CODE_FL_86C63A                      ; $85CCE4 |
  LDA.W #$0010                              ; $85CCE8 |
  STA.B $30,X                               ; $85CCEB |
  RTL                                       ; $85CCED |

CODE_85CCEE:
  LDA.B $46,X                               ; $85CCEE |
  BPL CODE_85CD12                           ; $85CCF0 |
  TDC                                       ; $85CCF2 |
  STA.L $7E7C06                             ; $85CCF3 |
  LDA.W $0418                               ; $85CCF7 |
  CMP.W #$0004                              ; $85CCFA |
  BEQ CODE_85CD07                           ; $85CCFD |
  LDA.W $04D8                               ; $85CCFF |
  CMP.W #$0004                              ; $85CD02 |
  BNE CODE_85CD10                           ; $85CD05 |

CODE_85CD07:
  LDA.W #$0001                              ; $85CD07 |
  STA.B $3A,X                               ; $85CD0A |
  STA.L $7E7C06                             ; $85CD0C |

CODE_85CD10:
  INC.B $1A,X                               ; $85CD10 |

CODE_85CD12:
  RTL                                       ; $85CD12 |

CODE_85CD13:
  JSL.L CODE_FL_8098FD                      ; $85CD13 |
  BCC CODE_85CD21                           ; $85CD17 |
  INC.B $1A,X                               ; $85CD19 |
  LDA.B $3A,X                               ; $85CD1B |
  BEQ CODE_85CD21                           ; $85CD1D |
  INC.B $1A,X                               ; $85CD1F |

CODE_85CD21:
  RTL                                       ; $85CD21 |

CODE_85CD22:
  LDA.B $46,X                               ; $85CD22 |
  BMI CODE_85CD2D                           ; $85CD24 |
  LDA.W #$0001                              ; $85CD26 |
  STA.B $1A,X                               ; $85CD29 |
  STZ.B $3A,X                               ; $85CD2B |

CODE_85CD2D:
  STZ.B $46,X                               ; $85CD2D |
  RTL                                       ; $85CD2F |

CODE_85CD30:
  JSL.L CODE_FL_85A939                      ; $85CD30 |
  LDA.W $0004,Y                             ; $85CD34 |
  ORA.W #$1898                              ; $85CD37 |
  STA.W $0004,Y                             ; $85CD3A |
  JML.L CODE_FL_86CA2D                      ; $85CD3D |

CODE_85CD41:
  JSL.L CODE_FL_8CFD8F                      ; $85CD41 |
  PHX                                       ; $85CD45 |
  ASL A                                     ; $85CD46 |
  TAX                                       ; $85CD47 |
  LDA.L PTR16_85CD52,X                      ; $85CD48 |
  PLX                                       ; $85CD4C |
  STA.B $00                                 ; $85CD4D |
  JMP.W ($0000)                             ; $85CD4F |

PTR16_85CD52:
  dw CODE_85CD6C                            ; $85CD52 |
  dw CODE_85CDB0                            ; $85CD54 |
  dw CODE_85CDC7                            ; $85CD56 |
  dw CODE_85CDD6                            ; $85CD58 |
  dw CODE_85CDE8                            ; $85CD5A |
  dw CODE_85CE1F                            ; $85CD5C |
  dw CODE_85CE34                            ; $85CD5E |
  dw CODE_85CE42                            ; $85CD60 |
  dw CODE_85CE51                            ; $85CD62 |
  dw CODE_85CE7A                            ; $85CD64 |
  dw CODE_85CE85                            ; $85CD66 |
  dw CODE_85CEA1                            ; $85CD68 |
  dw CODE_85CEC4                            ; $85CD6A |

CODE_85CD6C:
  LDA.W #$0004                              ; $85CD6C |
  JSL.L CODE_FL_80A634                      ; $85CD6F |
  LDX.B $FC                                 ; $85CD73 |
  BCS CODE_JP_85CDAC                        ; $85CD75 |
  JSL.L CODE_FL_86C7A5                      ; $85CD77 |
  LDA.W #$1055                              ; $85CD7B |
  JSL.L CODE_FL_86CAEE                      ; $85CD7E |
  LDA.B $34,X                               ; $85CD82 |
  ORA.W #$1880                              ; $85CD84 |
  STA.B $34,X                               ; $85CD87 |
  LDA.W #$0017                              ; $85CD89 |
  STA.W $1FBE                               ; $85CD8C |
  LDA.W #$0007                              ; $85CD8F |
  STA.W $1FC0                               ; $85CD92 |
  LDA.W #$0070                              ; $85CD95 |
  STA.W $1FDE                               ; $85CD98 |
  LDA.W #$0002                              ; $85CD9B |
  STA.W $1FDC                               ; $85CD9E |
  LDA.W #$0028                              ; $85CDA1 |
  JSL.L push_sound_queue                    ; $85CDA4 |
  JML.L CODE_FL_86C63A                      ; $85CDA8 |

CODE_JP_85CDAC:
  JML.L CODE_FL_86CA2D                      ; $85CDAC |

CODE_85CDB0:
  LDY.W #$0001                              ; $85CDB0 |
  JSL.L CODE_FL_86C503                      ; $85CDB3 |
  LDA.B $46,X                               ; $85CDB7 |
  BPL CODE_85CDC6                           ; $85CDB9 |
  INC.B $1A,X                               ; $85CDBB |
  LDA.W #$0001                              ; $85CDBD |
  STA.B $E4                                 ; $85CDC0 |
  JSL.L CODE_FL_83852F                      ; $85CDC2 |

CODE_85CDC6:
  RTL                                       ; $85CDC6 |

CODE_85CDC7:
  LDA.W #$0080                              ; $85CDC7 |
  LDY.W #$00B0                              ; $85CDCA |
  JSL.L CODE_FL_8B8111                      ; $85CDCD |
  BNE CODE_85CDD5                           ; $85CDD1 |
  INC.B $1A,X                               ; $85CDD3 |

CODE_85CDD5:
  RTL                                       ; $85CDD5 |

CODE_85CDD6:
  LDA.W $0404                               ; $85CDD6 |
  AND.W #$DFDF                              ; $85CDD9 |
  STA.W $0404                               ; $85CDDC |
  JSL.L CODE_FL_8B874A                      ; $85CDDF |
  BCS CODE_85CDE7                           ; $85CDE3 |
  INC.B $1A,X                               ; $85CDE5 |

CODE_85CDE7:
  RTL                                       ; $85CDE7 |

CODE_85CDE8:
  LDY.W #$0001                              ; $85CDE8 |
  JSL.L CODE_FL_86C503                      ; $85CDEB |
  JSL.L CODE_FL_8098FD                      ; $85CDEF |
  LDA.L $7E7C02                             ; $85CDF3 |
  BEQ CODE_85CE1E                           ; $85CDF7 |
  INC.B $1A,X                               ; $85CDF9 |
  JSL.L CODE_FL_85A940                      ; $85CDFB |
  JSL.L CODE_FL_8CFF15                      ; $85CDFF |
  LDA.W #$0050                              ; $85CE03 |
  JSL.L CODE_FL_8089BD                      ; $85CE06 |
  STZ.W $1FDE                               ; $85CE0A |
  LDA.W #$0300                              ; $85CE0D |
  STA.B $2A,X                               ; $85CE10 |
  LDA.W #$0045                              ; $85CE12 |
  STA.B $02,X                               ; $85CE15 |
  LDA.W #$1056                              ; $85CE17 |
  JSL.L CODE_FL_86CAEE                      ; $85CE1A |

CODE_85CE1E:
  RTL                                       ; $85CE1E |

CODE_85CE1F:
  JSL.L CODE_FL_8CFEF6                      ; $85CE1F |
  BPL CODE_85CE33                           ; $85CE23 |
  TDC                                       ; $85CE25 |
  STA.L $7E7C02                             ; $85CE26 |
  LDA.W #$1057                              ; $85CE2A |
  JSL.L CODE_FL_86CAEE                      ; $85CE2D |
  INC.B $1A,X                               ; $85CE31 |

CODE_85CE33:
  RTL                                       ; $85CE33 |

CODE_85CE34:
  JSL.L CODE_FL_8098FD                      ; $85CE34 |
  LDA.L $7E7C02                             ; $85CE38 |
  BEQ CODE_85CE33                           ; $85CE3C |
  JML.L CODE_JL_8DD418                      ; $85CE3E |

CODE_85CE42:
  LDA.W $1C38                               ; $85CE42 |
  AND.W #$0001                              ; $85CE45 |
  BEQ CODE_85CE4D                           ; $85CE48 |
  LDA.W #$FFFF                              ; $85CE4A |

CODE_85CE4D:
  JML.L CODE_JL_8DD43E                      ; $85CE4D |

CODE_85CE51:
  JSL.L CODE_FL_8098FD                      ; $85CE51 |
  BCC CODE_85CE79                           ; $85CE55 |
  LDA.W #$8001                              ; $85CE57 |
  STA.B $E4                                 ; $85CE5A |
  LDA.W #$0050                              ; $85CE5C |
  JSL.L CODE_FL_8089BD                      ; $85CE5F |
  JSL.L CODE_FL_85A940                      ; $85CE63 |
  LDA.W #$0179                              ; $85CE67 |
  JSL.L CODE_FL_86C9A7                      ; $85CE6A |
  STZ.B $00,X                               ; $85CE6E |
  STZ.B $34,X                               ; $85CE70 |
  LDA.W #$0040                              ; $85CE72 |
  STA.B $2C,X                               ; $85CE75 |
  INC.B $1A,X                               ; $85CE77 |

CODE_85CE79:
  RTL                                       ; $85CE79 |

CODE_85CE7A:
  JSL.L CODE_FL_86C70D                      ; $85CE7A |
  INC.B $1A,X                               ; $85CE7E |
  JSL.L CODE_FL_80C213                      ; $85CE80 |
  RTL                                       ; $85CE84 |

CODE_85CE85:
  LDA.W $1F30                               ; $85CE85 |
  BNE CODE_85CEA0                           ; $85CE88 |
  LDA.W #$00FF                              ; $85CE8A |
  STA.L $7E7C04                             ; $85CE8D |
  JSL.L CODE_FL_8B8057                      ; $85CE91 |
  LDA.W #$0010                              ; $85CE95 |
  STA.B $2C,X                               ; $85CE98 |
  INC.B $1A,X                               ; $85CE9A |
  JSL.L CODE_FL_8B8000                      ; $85CE9C |

CODE_85CEA0:
  RTL                                       ; $85CEA0 |

CODE_85CEA1:
  LDA.W #$0200                              ; $85CEA1 |
  STA.W $0498                               ; $85CEA4 |
  LDA.W #$0100                              ; $85CEA7 |
  STA.W $0558                               ; $85CEAA |
  JSL.L CODE_FL_86C70D                      ; $85CEAD |
  LDA.W #$0800                              ; $85CEB1 |
  STA.W $0498                               ; $85CEB4 |
  STA.W $0558                               ; $85CEB7 |
  INC.B $1A,X                               ; $85CEBA |
  JSL.L CODE_FL_8B8067                      ; $85CEBC |
  JML.L CODE_FL_80C222                      ; $85CEC0 |

CODE_85CEC4:
  STZ.W $0498                               ; $85CEC4 |
  STZ.W $0558                               ; $85CEC7 |
  LDA.W #$0001                              ; $85CECA |
  STA.L $7002A8                             ; $85CECD |
  LDA.W $1F30                               ; $85CED1 |
  BNE CODE_85CEA0                           ; $85CED4 |
  STZ.B $E4                                 ; $85CED6 |
  JML.L CODE_FL_86CA2D                      ; $85CED8 |

CODE_85CEDC:
  JSL.L CODE_FL_85CEEF                      ; $85CEDC |
  LDA.L $7E7C34                             ; $85CEE0 |
  CMP.W #$0005                              ; $85CEE4 |
  BCC CODE_85CEEE                           ; $85CEE7 |
  TDC                                       ; $85CEE9 |
  STA.L $7E7C34                             ; $85CEEA |

CODE_85CEEE:
  RTL                                       ; $85CEEE |

CODE_FL_85CEEF:
  JSL.L CODE_FL_86C3F8                      ; $85CEEF |
  PHX                                       ; $85CEF3 |
  ASL A                                     ; $85CEF4 |
  TAX                                       ; $85CEF5 |
  LDA.L PTR16_85CF00,X                      ; $85CEF6 |
  PLX                                       ; $85CEFA |
  STA.B $00                                 ; $85CEFB |
  JMP.W ($0000)                             ; $85CEFD |

PTR16_85CF00:
  dw CODE_85CF08                            ; $85CF00 |
  dw CODE_85CF5B                            ; $85CF02 |
  dw CODE_85CF1D                            ; $85CF04 |
  dw CODE_85CF94                            ; $85CF06 |

CODE_85CF08:
  JSL.L CODE_FL_85CF3C                      ; $85CF08 |
  LDA.L $700298                             ; $85CF0C |
  STA.L $7E7C06                             ; $85CF10 |
  INC.B $1A,X                               ; $85CF14 |
  LDA.W #$9072                              ; $85CF16 |
  JML.L CODE_FL_86CAEE                      ; $85CF19 |

CODE_85CF1D:
  JSL.L CODE_FL_86A046                      ; $85CF1D |
  BRA CODE_85CF6E                           ; $85CF21 |

CODE_85CF23:
  JSL.L CODE_FL_86C3F8                      ; $85CF23 |
  PHX                                       ; $85CF27 |
  ASL A                                     ; $85CF28 |
  TAX                                       ; $85CF29 |
  LDA.L PTR16_85CF34,X                      ; $85CF2A |
  PLX                                       ; $85CF2E |
  STA.B $00                                 ; $85CF2F |
  JMP.W ($0000)                             ; $85CF31 |

PTR16_85CF34:
  dw CODE_FL_85CF3C                         ; $85CF34 |
  dw CODE_85CF5B                            ; $85CF36 |
  dw CODE_85CF6A                            ; $85CF38 |
  dw CODE_85CF94                            ; $85CF3A |

CODE_FL_85CF3C:
  JSL.L CODE_FL_86C7A5                      ; $85CF3C |
  LDA.W #$375A                              ; $85CF40 |
  STA.B $00,X                               ; $85CF43 |
  LDA.B $34,X                               ; $85CF45 |
  ORA.W #$1880                              ; $85CF47 |
  STA.B $34,X                               ; $85CF4A |
  JSL.L CODE_FL_8CFF15                      ; $85CF4C |
  LDA.B $04,X                               ; $85CF50 |
  ORA.W #$1898                              ; $85CF52 |
  STA.B $04,X                               ; $85CF55 |
  JML.L CODE_FL_86C63A                      ; $85CF57 |

CODE_85CF5B:
  LDA.B $46,X                               ; $85CF5B |
  BPL CODE_85CF69                           ; $85CF5D |
  LDA.L $700298                             ; $85CF5F |
  STA.L $7E7C06                             ; $85CF63 |
  INC.B $1A,X                               ; $85CF67 |

CODE_85CF69:
  RTL                                       ; $85CF69 |

CODE_85CF6A:
  JSL.L CODE_FL_8098FD                      ; $85CF6A |

CODE_85CF6E:
  BCC CODE_85CF93                           ; $85CF6E |
  LDA.L $7E7C04                             ; $85CF70 |
  BEQ CODE_85CF91                           ; $85CF74 |
  LDA.W #$0001                              ; $85CF76 |
  JSL.L CODE_FL_868025                      ; $85CF79 |
  LDA.L $700298                             ; $85CF7D |
  BNE CODE_85CF8A                           ; $85CF81 |
  LDA.W #$0025                              ; $85CF83 |
  JSL.L push_sound_queue                    ; $85CF86 |

CODE_85CF8A:
  LDA.W #$0015                              ; $85CF8A |
  JSL.L push_sound_queue                    ; $85CF8D |

CODE_85CF91:
  INC.B $1A,X                               ; $85CF91 |

CODE_85CF93:
  RTL                                       ; $85CF93 |

CODE_85CF94:
  LDA.B $46,X                               ; $85CF94 |
  BMI CODE_85CF9C                           ; $85CF96 |
  DEC.B $1A,X                               ; $85CF98 |
  DEC.B $1A,X                               ; $85CF9A |

CODE_85CF9C:
  STZ.B $46,X                               ; $85CF9C |
  RTL                                       ; $85CF9E |

CODE_85CF9F:
  JSL.L CODE_FL_86C3F8                      ; $85CF9F |
  PHX                                       ; $85CFA3 |
  ASL A                                     ; $85CFA4 |
  TAX                                       ; $85CFA5 |
  LDA.L PTR16_85CFB0,X                      ; $85CFA6 |
  PLX                                       ; $85CFAA |
  STA.B $00                                 ; $85CFAB |
  JMP.W ($0000)                             ; $85CFAD |

PTR16_85CFB0:
  dw CODE_85CFB8                            ; $85CFB0 |
  dw CODE_85CFD0                            ; $85CFB2 |
  dw CODE_85CFF6                            ; $85CFB4 |
  dw CODE_85D030                            ; $85CFB6 |

CODE_85CFB8:
  JSL.L CODE_FL_85AA07                      ; $85CFB8 |
  TDC                                       ; $85CFBC |
  STA.L $7E7C06                             ; $85CFBD |
  JSL.L CODE_FL_85A8D6                      ; $85CFC1 |
  LDA.B $34,X                               ; $85CFC5 |
  ORA.W #$A000                              ; $85CFC7 |
  STA.B $34,X                               ; $85CFCA |
  JML.L CODE_FL_86C63A                      ; $85CFCC |

CODE_85CFD0:
  LDA.B $0D,X                               ; $85CFD0 |
  BMI CODE_85CFF3                           ; $85CFD2 |
  LDA.B $32,X                               ; $85CFD4 |
  BPL CODE_85CFE9                           ; $85CFD6 |
  STZ.B $32,X                               ; $85CFD8 |
  LDA.B $37,X                               ; $85CFDA |
  AND.W #$00FF                              ; $85CFDC |
  CMP.W #$000B                              ; $85CFDF |
  BEQ CODE_85CFEA                           ; $85CFE2 |
  CMP.W #$000C                              ; $85CFE4 |
  BEQ CODE_85CFEA                           ; $85CFE7 |

CODE_85CFE9:
  RTL                                       ; $85CFE9 |

CODE_85CFEA:
  LDA.W #$010C                              ; $85CFEA |
  JSL.L CODE_FL_8089BD                      ; $85CFED |
  INC.B $1A,X                               ; $85CFF1 |

CODE_85CFF3:
  STZ.B $32,X                               ; $85CFF3 |
  RTL                                       ; $85CFF5 |

CODE_85CFF6:
  JSL.L CODE_FL_8098FD                      ; $85CFF6 |
  BCC CODE_85D02F                           ; $85CFFA |
  LDA.L $7E7C04                             ; $85CFFC |
  BEQ CODE_85D02D                           ; $85D000 |
  LDA.W #$0001                              ; $85D002 |
  STA.L $7E7C06                             ; $85D005 |
  LDA.W #$01BA                              ; $85D009 |
  JSL.L CODE_FL_86C9A4                      ; $85D00C |
  BCS CODE_85D02F                           ; $85D010 |
  LDA.W #$0080                              ; $85D012 |
  STA.W $0009,Y                             ; $85D015 |
  LDA.B $0D,X                               ; $85D018 |
  CLC                                       ; $85D01A |
  ADC.W #$0010                              ; $85D01B |
  STA.W $000D,Y                             ; $85D01E |
  LDA.W #$0120                              ; $85D021 |
  STA.W $0011,Y                             ; $85D024 |
  LDA.W #$0019                              ; $85D027 |
  STA.W $004E,Y                             ; $85D02A |

CODE_85D02D:
  INC.B $1A,X                               ; $85D02D |

CODE_85D02F:
  RTL                                       ; $85D02F |

CODE_85D030:
  LDA.B $46,X                               ; $85D030 |
  BMI CODE_85D038                           ; $85D032 |
  DEC.B $1A,X                               ; $85D034 |
  DEC.B $1A,X                               ; $85D036 |

CODE_85D038:
  STZ.B $46,X                               ; $85D038 |
  RTL                                       ; $85D03A |

CODE_85D03B:
  JSL.L CODE_FL_86C424                      ; $85D03B |
  PHX                                       ; $85D03F |
  ASL A                                     ; $85D040 |
  TAX                                       ; $85D041 |
  LDA.L PTR16_85D04C,X                      ; $85D042 |
  PLX                                       ; $85D046 |
  STA.B $00                                 ; $85D047 |
  JMP.W ($0000)                             ; $85D049 |

PTR16_85D04C:
  dw CODE_85D054                            ; $85D04C |
  dw CODE_85D079                            ; $85D04E |
  dw CODE_85D07D                            ; $85D050 |
  dw CODE_85D09F                            ; $85D052 |

CODE_85D054:
  JSL.L CODE_FL_86C7A5                      ; $85D054 |
  JSL.L CODE_FL_85AC3A                      ; $85D058 |
  BCC CODE_85D061                           ; $85D05C |
  JMP.W CODE_JP_85D075                      ; $85D05E |

CODE_85D061:
  LDA.W #$39B6                              ; $85D061 |
  STA.B $00,X                               ; $85D064 |
  JSL.L CODE_FL_8CFF1E                      ; $85D066 |
  LDA.B $34,X                               ; $85D06A |
  ORA.W #$B880                              ; $85D06C |
  STA.B $34,X                               ; $85D06F |
  JML.L CODE_FL_86C63A                      ; $85D071 |

CODE_JP_85D075:
  JML.L CODE_FL_86CA2D                      ; $85D075 |

CODE_85D079:
  JML.L CODE_JL_85ACF8                      ; $85D079 |

CODE_85D07D:
  JSL.L CODE_FL_85AC4F                      ; $85D07D |
  LDA.W #$0100                              ; $85D081 |
  STA.B $2C,X                               ; $85D084 |
  LDA.W #$003F                              ; $85D086 |
  STA.W $1FDE                               ; $85D089 |
  LDA.W #$0000                              ; $85D08C |
  STA.W $1FDC                               ; $85D08F |
  LDA.W #$FFFE                              ; $85D092 |
  STA.B $4C,X                               ; $85D095 |
  INC.B $1A,X                               ; $85D097 |
  LDA.W #$0001                              ; $85D099 |
  STA.B $E4                                 ; $85D09C |
  RTL                                       ; $85D09E |

CODE_85D09F:
  JSL.L CODE_FL_8CFD78                      ; $85D09F |
  JSL.L CODE_FL_8CFD61                      ; $85D0A3 |
  INC.B $3A,X                               ; $85D0A7 |
  LDA.B $3A,X                               ; $85D0A9 |
  CMP.W #$000A                              ; $85D0AB |
  BCC CODE_85D0C7                           ; $85D0AE |
  STZ.B $3A,X                               ; $85D0B0 |
  LDA.B $0D,X                               ; $85D0B2 |
  PHA                                       ; $85D0B4 |
  SBC.B $11,X                               ; $85D0B5 |
  STA.B $0D,X                               ; $85D0B7 |
  JSL.L CODE_FL_8CFBCE                      ; $85D0B9 |
  PLA                                       ; $85D0BD |
  STA.B $0D,X                               ; $85D0BE |
  LDA.W #$0021                              ; $85D0C0 |
  JSL.L push_sound_queue                    ; $85D0C3 |

CODE_85D0C7:
  LDA.W $1C38                               ; $85D0C7 |
  AND.W #$0001                              ; $85D0CA |
  ASL A                                     ; $85D0CD |
  ASL A                                     ; $85D0CE |
  DEC A                                     ; $85D0CF |
  DEC A                                     ; $85D0D0 |
  CLC                                       ; $85D0D1 |
  ADC.B $09,X                               ; $85D0D2 |
  STA.B $09,X                               ; $85D0D4 |
  LDA.W $1C38                               ; $85D0D6 |
  AND.W #$0001                              ; $85D0D9 |
  BNE CODE_85D0EE                           ; $85D0DC |
  LDA.W $1C38                               ; $85D0DE |
  AND.W #$001F                              ; $85D0E1 |
  BNE CODE_85D0EE                           ; $85D0E4 |
  CLC                                       ; $85D0E6 |
  LDA.W #$0421                              ; $85D0E7 |
  ADC.B $3A,X                               ; $85D0EA |
  STA.B $3A,X                               ; $85D0EC |

CODE_85D0EE:
  LDA.B $3A,X                               ; $85D0EE |
  JSL.L CODE_FL_808D48                      ; $85D0F0 |
  JSL.L CODE_FL_86C70D                      ; $85D0F4 |
  STZ.B $E4                                 ; $85D0F8 |
  LDA.W #$000D                              ; $85D0FA |
  JSL.L push_sound_queue                    ; $85D0FD |
  TDC                                       ; $85D101 |
  STA.W $1FDE                               ; $85D102 |
  STZ.B $0D,X                               ; $85D105 |
  LDA.W #$0043                              ; $85D107 |
  STA.B $02,X                               ; $85D10A |
  STZ.B $06,X                               ; $85D10C |
  JML.L CODE_JL_8AFB07                      ; $85D10E |

CODE_85D112:
  JSL.L CODE_FL_8CFD8F                      ; $85D112 |
  PHX                                       ; $85D116 |
  ASL A                                     ; $85D117 |
  TAX                                       ; $85D118 |
  LDA.L PTR16_85D123,X                      ; $85D119 |
  PLX                                       ; $85D11D |
  STA.B $00                                 ; $85D11E |
  JMP.W ($0000)                             ; $85D120 |

PTR16_85D123:
  dw CODE_85D12F                            ; $85D123 |
  dw CODE_85D16C                            ; $85D125 |
  dw CODE_85D182                            ; $85D127 |
  dw CODE_85D18B                            ; $85D129 |
  dw CODE_85D199                            ; $85D12B |
  dw CODE_85D1A7                            ; $85D12D |

CODE_85D12F:
  LDA.L $7002AE                             ; $85D12F |
  BNE CODE_85D138                           ; $85D133 |
  JMP.W CODE_JP_85CDAC                      ; $85D135 |

CODE_85D138:
  LDA.W #$0006                              ; $85D138 |
  JSL.L CODE_FL_80A634                      ; $85D13B |
  LDX.B $FC                                 ; $85D13F |
  BCC CODE_85D146                           ; $85D141 |
  JMP.W CODE_JP_85CDAC                      ; $85D143 |

CODE_85D146:
  JSL.L CODE_FL_86C7A5                      ; $85D146 |
  LDA.W #$30A6                              ; $85D14A |
  STA.B $00,X                               ; $85D14D |
  LDA.B $34,X                               ; $85D14F |
  ORA.W #$B880                              ; $85D151 |
  STA.B $34,X                               ; $85D154 |
  JSL.L CODE_FL_8CFF15                      ; $85D156 |
  LDA.B $04,X                               ; $85D15A |
  ORA.W #$1898                              ; $85D15C |
  STA.B $04,X                               ; $85D15F |
  LDA.W #$000C                              ; $85D161 |
  JSL.L CODE_FL_87E3B2                      ; $85D164 |
  JML.L CODE_FL_86C63A                      ; $85D168 |

CODE_85D16C:
  JSL.L CODE_FL_85F7C9                      ; $85D16C |
  JSL.L CODE_FL_8CFEF6                      ; $85D170 |
  BPL CODE_85D17B                           ; $85D174 |
  LDA.W #$0400                              ; $85D176 |
  STA.B $2A,X                               ; $85D179 |

CODE_85D17B:
  LDA.B $46,X                               ; $85D17B |
  BPL CODE_85D181                           ; $85D17D |
  INC.B $1A,X                               ; $85D17F |

CODE_85D181:
  RTL                                       ; $85D181 |

CODE_85D182:
  JSL.L CODE_FL_8CFEF6                      ; $85D182 |
  BPL CODE_85D18A                           ; $85D186 |
  INC.B $1A,X                               ; $85D188 |

CODE_85D18A:
  RTL                                       ; $85D18A |

CODE_85D18B:
  LDA.W #$8001                              ; $85D18B |
  STA.B $E4                                 ; $85D18E |
  JSL.L CODE_FL_8098FD                      ; $85D190 |
  BCC CODE_85D198                           ; $85D194 |
  INC.B $1A,X                               ; $85D196 |

CODE_85D198:
  RTL                                       ; $85D198 |

CODE_85D199:
  LDA.W #$8001                              ; $85D199 |
  STA.B $E4                                 ; $85D19C |
  JSL.L CODE_FL_87E3B7                      ; $85D19E |
  BCC CODE_85D1A6                           ; $85D1A2 |
  INC.B $1A,X                               ; $85D1A4 |

CODE_85D1A6:
  RTL                                       ; $85D1A6 |

CODE_85D1A7:
  STZ.B $E4                                 ; $85D1A7 |
  JSL.L CODE_FL_85A939                      ; $85D1A9 |
  LDA.W $0004,Y                             ; $85D1AD |
  ORA.W #$1898                              ; $85D1B0 |
  STA.W $0004,Y                             ; $85D1B3 |
  JML.L CODE_FL_86CA2D                      ; $85D1B6 |

CODE_85D1BA:
  LDA.B $1A,X                               ; $85D1BA |
  PHX                                       ; $85D1BC |
  ASL A                                     ; $85D1BD |
  TAX                                       ; $85D1BE |
  LDA.L PTR16_85D1C9,X                      ; $85D1BF |
  PLX                                       ; $85D1C3 |
  STA.B $00                                 ; $85D1C4 |
  JMP.W ($0000)                             ; $85D1C6 |

PTR16_85D1C9:
  dw CODE_85D1D1                            ; $85D1C9 |
  dw CODE_85D1E5                            ; $85D1CB |
  dw CODE_85D1EC                            ; $85D1CD |
  dw CODE_85D1F5                            ; $85D1CF |

CODE_85D1D1:
  LDA.L $700778                             ; $85D1D1 |
  BMI CODE_85D1DA                           ; $85D1D5 |
  JMP.W CODE_JP_85CDAC                      ; $85D1D7 |

CODE_85D1DA:
  LDA.B $34,X                               ; $85D1DA |
  ORA.W #$1880                              ; $85D1DC |
  STA.B $34,X                               ; $85D1DF |
  JML.L CODE_FL_86C63A                      ; $85D1E1 |

CODE_85D1E5:
  LDA.B $46,X                               ; $85D1E5 |
  BPL CODE_85D1EB                           ; $85D1E7 |
  INC.B $1A,X                               ; $85D1E9 |

CODE_85D1EB:
  RTL                                       ; $85D1EB |

CODE_85D1EC:
  JSL.L CODE_FL_8098FD                      ; $85D1EC |
  BCC CODE_85D1F4                           ; $85D1F0 |
  INC.B $1A,X                               ; $85D1F2 |

CODE_85D1F4:
  RTL                                       ; $85D1F4 |

CODE_85D1F5:
  LDA.B $46,X                               ; $85D1F5 |
  BMI CODE_85D1FD                           ; $85D1F7 |
  DEC.B $1A,X                               ; $85D1F9 |
  DEC.B $1A,X                               ; $85D1FB |

CODE_85D1FD:
  STZ.B $46,X                               ; $85D1FD |
  RTL                                       ; $85D1FF |

CODE_85D200:
  LDA.W #$0004                              ; $85D200 |
  JSL.L CODE_FL_85B065                      ; $85D203 |
  JSL.L CODE_FL_8CFD8F                      ; $85D207 |
  PHX                                       ; $85D20B |
  ASL A                                     ; $85D20C |
  TAX                                       ; $85D20D |
  LDA.L PTR16_85D218,X                      ; $85D20E |
  PLX                                       ; $85D212 |
  STA.B $00                                 ; $85D213 |
  JMP.W ($0000)                             ; $85D215 |

PTR16_85D218:
  dw CODE_85D222                            ; $85D218 |
  dw CODE_85D250                            ; $85D21A |
  dw CODE_85D291                            ; $85D21C |
  dw CODE_85D2DD                            ; $85D21E |
  dw CODE_85D2FB                            ; $85D220 |

CODE_85D222:
  JSL.L CODE_FL_86C7A5                      ; $85D222 |
  JSL.L CODE_FL_86C444                      ; $85D226 |
  JSL.L CODE_FL_8CFF15                      ; $85D22A |
  LDA.W #$FFC0                              ; $85D22E |
  JSL.L CODE_FL_86C71F                      ; $85D231 |
  LDA.W #$100A                              ; $85D235 |
  JSL.L CODE_FL_86CAEE                      ; $85D238 |
  LDA.W #$0040                              ; $85D23C |
  JSL.L CODE_FL_8CFE19                      ; $85D23F |
  JSL.L CODE_FL_85B01E                      ; $85D243 |
  LDA.W #$0000                              ; $85D247 |
  STA.B $4E,X                               ; $85D24A |
  JML.L CODE_FL_86C63A                      ; $85D24C |

CODE_85D250:
  JSL.L CODE_FL_85E05F                      ; $85D250 |
  BCS CODE_85D2C6                           ; $85D254 |
  LDA.W #$FFC0                              ; $85D256 |
  JSL.L CODE_FL_8CFDBB                      ; $85D259 |
  JSL.L CODE_FL_86C70D                      ; $85D25D |
  LDA.W #$FF00                              ; $85D261 |
  JSL.L CODE_FL_85B51A                      ; $85D264 |
  JSL.L CODE_FL_8CFE29                      ; $85D268 |
  LDA.W #$FF80                              ; $85D26C |
  JSL.L CODE_FL_85B51A                      ; $85D26F |
  JSL.L CODE_FL_8CFE04                      ; $85D273 |
  LDA.W #$0007                              ; $85D277 |
  JSL.L CODE_FL_85B528                      ; $85D27A |
  STA.B $3A,X                               ; $85D27E |
  LDA.W #$100D                              ; $85D280 |
  JSL.L CODE_FL_86CAEE                      ; $85D283 |
  LDA.W #$0020                              ; $85D287 |
  JSL.L CODE_FL_8CFE19                      ; $85D28A |
  INC.B $1A,X                               ; $85D28E |
  RTL                                       ; $85D290 |

CODE_85D291:
  JSL.L CODE_FL_85E05F                      ; $85D291 |
  BCS CODE_85D2C8                           ; $85D295 |
  JSL.L CODE_FL_85B291                      ; $85D297 |
  JSL.L CODE_FL_86C4F1                      ; $85D29B |
  JSL.L CODE_FL_86C70D                      ; $85D29F |
  DEC.B $3A,X                               ; $85D2A3 |
  BEQ CODE_85D2C8                           ; $85D2A5 |
  LDA.W #$FF00                              ; $85D2A7 |
  JSL.L CODE_FL_85B51A                      ; $85D2AA |
  JSL.L CODE_FL_8CFE29                      ; $85D2AE |
  LDA.W #$FF80                              ; $85D2B2 |
  JSL.L CODE_FL_85B51A                      ; $85D2B5 |
  JSL.L CODE_FL_8CFE04                      ; $85D2B9 |
  LDA.W #$0020                              ; $85D2BD |
  JSL.L CODE_FL_8CFE19                      ; $85D2C0 |
  BRA CODE_85D2DC                           ; $85D2C4 |

CODE_85D2C6:
  INC.B $1A,X                               ; $85D2C6 |

CODE_85D2C8:
  LDA.W #$0020                              ; $85D2C8 |
  JSL.L CODE_FL_8CFE19                      ; $85D2CB |
  STZ.B $26,X                               ; $85D2CF |
  STZ.B $28,X                               ; $85D2D1 |
  STZ.B $1E,X                               ; $85D2D3 |
  LDA.W #$309E                              ; $85D2D5 |
  STA.B $00,X                               ; $85D2D8 |
  INC.B $1A,X                               ; $85D2DA |

CODE_85D2DC:
  RTL                                       ; $85D2DC |

CODE_85D2DD:
  JSL.L CODE_FL_86C70D                      ; $85D2DD |
  LDA.W #$FFD8                              ; $85D2E1 |
  JSL.L CODE_FL_8CFE29                      ; $85D2E4 |
  LDA.W #$100A                              ; $85D2E8 |
  JSL.L CODE_FL_86CAEE                      ; $85D2EB |
  LDA.W #$0001                              ; $85D2EF |
  STA.B $1A,X                               ; $85D2F2 |
  LDA.W #$0040                              ; $85D2F4 |
  JML.L CODE_FL_8CFE19                      ; $85D2F7 |

CODE_85D2FB:
  LDA.B $4E,X                               ; $85D2FB |
  JML.L CODE_FL_85B4B4                      ; $85D2FD |

CODE_85D301:
  LDA.W #$0003                              ; $85D301 |
  JSL.L CODE_FL_85B065                      ; $85D304 |
  JSL.L CODE_FL_8CFD8F                      ; $85D308 |
  PHX                                       ; $85D30C |
  ASL A                                     ; $85D30D |
  TAX                                       ; $85D30E |
  LDA.L PTR16_85D319,X                      ; $85D30F |
  PLX                                       ; $85D313 |
  STA.B $00                                 ; $85D314 |
  JMP.W ($0000)                             ; $85D316 |

PTR16_85D319:
  dw CODE_85D321                            ; $85D319 |
  dw CODE_85D34F                            ; $85D31B |
  dw CODE_85D375                            ; $85D31D |
  dw CODE_85D391                            ; $85D31F |

CODE_85D321:
  JSL.L CODE_FL_86C7A5                      ; $85D321 |
  JSL.L CODE_FL_86C444                      ; $85D325 |
  JSL.L CODE_FL_8CFF15                      ; $85D329 |
  LDA.W #$FFC0                              ; $85D32D |
  JSL.L CODE_FL_86C71F                      ; $85D330 |
  LDA.W #$100B                              ; $85D334 |
  JSL.L CODE_FL_86CAEE                      ; $85D337 |
  LDA.W #$0040                              ; $85D33B |
  JSL.L CODE_FL_8CFE19                      ; $85D33E |
  JSL.L CODE_FL_85B01E                      ; $85D342 |
  LDA.W #$0001                              ; $85D346 |
  STA.B $4E,X                               ; $85D349 |
  JML.L CODE_FL_86C63A                      ; $85D34B |

CODE_85D34F:
  JSL.L CODE_FL_85E05F                      ; $85D34F |
  BCS CODE_85D360                           ; $85D353 |
  LDA.W #$FFC0                              ; $85D355 |
  JSL.L CODE_FL_8CFDBB                      ; $85D358 |
  JSL.L CODE_FL_86C70D                      ; $85D35C |

CODE_85D360:
  LDA.W #$0010                              ; $85D360 |
  JSL.L CODE_FL_8CFE19                      ; $85D363 |
  STZ.B $26,X                               ; $85D367 |
  STZ.B $28,X                               ; $85D369 |
  STZ.B $1E,X                               ; $85D36B |
  LDA.W #$30D8                              ; $85D36D |
  STA.B $00,X                               ; $85D370 |
  INC.B $1A,X                               ; $85D372 |
  RTL                                       ; $85D374 |

CODE_85D375:
  JSL.L CODE_FL_86C70D                      ; $85D375 |
  LDA.W #$FFD8                              ; $85D379 |
  JSL.L CODE_FL_8CFE29                      ; $85D37C |
  LDA.W #$100B                              ; $85D380 |
  JSL.L CODE_FL_86CAEE                      ; $85D383 |
  LDA.W #$0040                              ; $85D387 |
  JSL.L CODE_FL_8CFE19                      ; $85D38A |
  DEC.B $1A,X                               ; $85D38E |
  RTL                                       ; $85D390 |

CODE_85D391:
  LDA.B $4E,X                               ; $85D391 |
  JML.L CODE_FL_85B4B4                      ; $85D393 |

CODE_85D397:
  LDA.W #$0004                              ; $85D397 |
  JSL.L CODE_FL_85B065                      ; $85D39A |
  JSL.L CODE_FL_8CFD8F                      ; $85D39E |
  PHX                                       ; $85D3A2 |
  ASL A                                     ; $85D3A3 |
  TAX                                       ; $85D3A4 |
  LDA.L PTR16_85D3AF,X                      ; $85D3A5 |
  PLX                                       ; $85D3A9 |
  STA.B $00                                 ; $85D3AA |
  JMP.W ($0000)                             ; $85D3AC |

PTR16_85D3AF:
  dw CODE_85D3B9                            ; $85D3AF |
  dw CODE_85D3E7                            ; $85D3B1 |
  dw CODE_JP_85D434                         ; $85D3B3 |
  dw CODE_85D496                            ; $85D3B5 |
  dw CODE_85D4B5                            ; $85D3B7 |

CODE_85D3B9:
  JSL.L CODE_FL_86C7A5                      ; $85D3B9 |
  JSL.L CODE_FL_86C444                      ; $85D3BD |
  JSL.L CODE_FL_8CFF15                      ; $85D3C1 |
  LDA.W #$FFC0                              ; $85D3C5 |
  JSL.L CODE_FL_86C71F                      ; $85D3C8 |
  LDA.W #$100C                              ; $85D3CC |
  JSL.L CODE_FL_86CAEE                      ; $85D3CF |
  LDA.W #$0040                              ; $85D3D3 |
  JSL.L CODE_FL_8CFE19                      ; $85D3D6 |
  JSL.L CODE_FL_85B01E                      ; $85D3DA |
  LDA.W #$0002                              ; $85D3DE |
  STA.B $4E,X                               ; $85D3E1 |
  JML.L CODE_FL_86C63A                      ; $85D3E3 |

CODE_85D3E7:
  JSL.L CODE_FL_85E05F                      ; $85D3E7 |
  BCC CODE_85D3F0                           ; $85D3EB |
  JMP.W CODE_JP_85D479                      ; $85D3ED |

CODE_85D3F0:
  LDA.W #$FFD0                              ; $85D3F0 |
  JSL.L CODE_FL_8CFDBB                      ; $85D3F3 |
  JSL.L CODE_FL_86C70D                      ; $85D3F7 |
  LDA.W #$FF00                              ; $85D3FB |
  JSL.L CODE_FL_85B51A                      ; $85D3FE |
  JSL.L CODE_FL_8CFE29                      ; $85D402 |
  LDA.W #$FF80                              ; $85D406 |
  JSL.L CODE_FL_85B51A                      ; $85D409 |
  JSL.L CODE_FL_8CFE04                      ; $85D40D |
  LDA.W #$0200                              ; $85D411 |
  STA.B $2A,X                               ; $85D414 |
  LDA.W #$0020                              ; $85D416 |
  STA.B $4C,X                               ; $85D419 |
  LDA.W #$0007                              ; $85D41B |
  JSL.L CODE_FL_85B528                      ; $85D41E |
  STA.B $3A,X                               ; $85D422 |
  STZ.B $1E,X                               ; $85D424 |
  LDA.W #$30F8                              ; $85D426 |
  STA.B $00,X                               ; $85D429 |
  JSL.L CODE_FL_85A9AF                      ; $85D42B |
  INC.B $3C,X                               ; $85D42F |
  INC.B $1A,X                               ; $85D431 |
  RTL                                       ; $85D433 |

CODE_JP_85D434:
  JSL.L CODE_FL_85B291                      ; $85D434 |
  JSL.L CODE_FL_86C4F1                      ; $85D438 |
  JSL.L CODE_FL_85B273                      ; $85D43C |
  BCC CODE_85D495                           ; $85D440 |
  DEC.B $3A,X                               ; $85D442 |
  BEQ CODE_85D47B                           ; $85D444 |
  LDA.B $3A,X                               ; $85D446 |
  LSR A                                     ; $85D448 |
  BCS CODE_85D450                           ; $85D449 |
  LDA.W #$30F8                              ; $85D44B |
  BRA CODE_85D453                           ; $85D44E |

CODE_85D450:
  LDA.W #$3104                              ; $85D450 |

CODE_85D453:
  STA.B $00,X                               ; $85D453 |
  STZ.B $1E,X                               ; $85D455 |
  LDA.W #$FF00                              ; $85D457 |
  JSL.L CODE_FL_85B51A                      ; $85D45A |
  JSL.L CODE_FL_8CFE29                      ; $85D45E |
  LDA.W #$FF80                              ; $85D462 |
  JSL.L CODE_FL_85B51A                      ; $85D465 |
  JSL.L CODE_FL_8CFE04                      ; $85D469 |
  LDA.W #$0200                              ; $85D46D |
  STA.B $2A,X                               ; $85D470 |
  LDA.W #$0020                              ; $85D472 |
  STA.B $4C,X                               ; $85D475 |
  BRA CODE_85D495                           ; $85D477 |

CODE_JP_85D479:
  INC.B $1A,X                               ; $85D479 |

CODE_85D47B:
  LDA.W #$0020                              ; $85D47B |
  JSL.L CODE_FL_8CFE19                      ; $85D47E |
  STZ.B $26,X                               ; $85D482 |
  STZ.B $28,X                               ; $85D484 |
  STZ.B $1E,X                               ; $85D486 |
  LDA.W #$30FE                              ; $85D488 |
  STA.B $00,X                               ; $85D48B |
  JSL.L CODE_FL_85A9A7                      ; $85D48D |
  STZ.B $3C,X                               ; $85D491 |
  INC.B $1A,X                               ; $85D493 |

CODE_85D495:
  RTL                                       ; $85D495 |

CODE_85D496:
  JSL.L CODE_FL_86C70D                      ; $85D496 |
  LDA.W #$FFD8                              ; $85D49A |
  JSL.L CODE_FL_8CFE29                      ; $85D49D |
  LDA.W #$100C                              ; $85D4A1 |
  JSL.L CODE_FL_86CAEE                      ; $85D4A4 |
  LDA.W #$0030                              ; $85D4A8 |
  JSL.L CODE_FL_8CFE19                      ; $85D4AB |
  LDA.W #$0001                              ; $85D4AF |
  STA.B $1A,X                               ; $85D4B2 |
  RTL                                       ; $85D4B4 |

CODE_85D4B5:
  LDA.B $3C,X                               ; $85D4B5 |
  BNE CODE_85D4BF                           ; $85D4B7 |
  LDA.B $4E,X                               ; $85D4B9 |
  JML.L CODE_FL_85B4B4                      ; $85D4BB |

CODE_85D4BF:
  LDA.W #$0002                              ; $85D4BF |
  STA.B $1A,X                               ; $85D4C2 |
  JMP.W CODE_JP_85D434                      ; $85D4C4 |

CODE_85D4C7:
  LDA.W #$0003                              ; $85D4C7 |
  JSL.L CODE_FL_85B065                      ; $85D4CA |
  JSL.L CODE_FL_8CFD8F                      ; $85D4CE |
  PHX                                       ; $85D4D2 |
  ASL A                                     ; $85D4D3 |
  TAX                                       ; $85D4D4 |
  LDA.L PTR16_85D4DF,X                      ; $85D4D5 |
  PLX                                       ; $85D4D9 |
  STA.B $00                                 ; $85D4DA |
  JMP.W ($0000)                             ; $85D4DC |

PTR16_85D4DF:
  dw CODE_85D4E7                            ; $85D4DF |
  dw CODE_85D515                            ; $85D4E1 |
  dw CODE_85D53B                            ; $85D4E3 |
  dw CODE_85D556                            ; $85D4E5 |

CODE_85D4E7:
  JSL.L CODE_FL_86C7A5                      ; $85D4E7 |
  JSL.L CODE_FL_86C444                      ; $85D4EB |
  JSL.L CODE_FL_8CFF15                      ; $85D4EF |
  LDA.W #$FFC0                              ; $85D4F3 |
  JSL.L CODE_FL_86C71F                      ; $85D4F6 |
  LDA.W #$1003                              ; $85D4FA |
  JSL.L CODE_FL_86CAEE                      ; $85D4FD |
  LDA.W #$0040                              ; $85D501 |
  JSL.L CODE_FL_8CFE19                      ; $85D504 |
  JSL.L CODE_FL_85B01E                      ; $85D508 |
  LDA.W #$0003                              ; $85D50C |
  STA.B $4E,X                               ; $85D50F |
  JML.L CODE_FL_86C63A                      ; $85D511 |

CODE_85D515:
  JSL.L CODE_FL_85E05F                      ; $85D515 |
  BCS CODE_85D526                           ; $85D519 |
  LDA.W #$FFC0                              ; $85D51B |
  JSL.L CODE_FL_8CFDBB                      ; $85D51E |
  JSL.L CODE_FL_86C70D                      ; $85D522 |

CODE_85D526:
  LDA.W #$0080                              ; $85D526 |
  JSL.L CODE_FL_8CFE19                      ; $85D529 |
  STZ.B $26,X                               ; $85D52D |
  STZ.B $28,X                               ; $85D52F |
  STZ.B $1E,X                               ; $85D531 |
  LDA.W #$3126                              ; $85D533 |
  STA.B $00,X                               ; $85D536 |
  INC.B $1A,X                               ; $85D538 |
  RTL                                       ; $85D53A |

CODE_85D53B:
  JSL.L CODE_FL_86C70D                      ; $85D53B |
  LDA.W #$FFD8                              ; $85D53F |
  JSL.L CODE_FL_8CFE29                      ; $85D542 |
  LDA.W #$1003                              ; $85D546 |
  JSL.L CODE_FL_86CAEE                      ; $85D549 |
  DEC.B $1A,X                               ; $85D54D |
  LDA.W #$0040                              ; $85D54F |
  JML.L CODE_FL_8CFE19                      ; $85D552 |

CODE_85D556:
  LDA.B $4E,X                               ; $85D556 |
  JML.L CODE_FL_85B4B4                      ; $85D558 |

CODE_JL_85D55C:
  LDA.W #$0003                              ; $85D55C |
  JSL.L CODE_FL_85B065                      ; $85D55F |
  JSL.L CODE_FL_8CFD8F                      ; $85D563 |
  PHX                                       ; $85D567 |
  ASL A                                     ; $85D568 |
  TAX                                       ; $85D569 |
  LDA.L PTR16_85D574,X                      ; $85D56A |
  PLX                                       ; $85D56E |
  STA.B $00                                 ; $85D56F |
  JMP.W ($0000)                             ; $85D571 |

PTR16_85D574:
  dw CODE_85D57C                            ; $85D574 |
  dw CODE_85D5AA                            ; $85D576 |
  dw CODE_85D5D0                            ; $85D578 |
  dw CODE_85D5EB                            ; $85D57A |

CODE_85D57C:
  JSL.L CODE_FL_86C7A5                      ; $85D57C |
  JSL.L CODE_FL_86C444                      ; $85D580 |
  JSL.L CODE_FL_8CFF15                      ; $85D584 |
  LDA.W #$FFC0                              ; $85D588 |
  JSL.L CODE_FL_86C71F                      ; $85D58B |
  LDA.W #$1009                              ; $85D58F |
  JSL.L CODE_FL_86CAEE                      ; $85D592 |
  LDA.W #$0100                              ; $85D596 |
  JSL.L CODE_FL_8CFE19                      ; $85D599 |
  JSL.L CODE_FL_85B01E                      ; $85D59D |
  LDA.W #$0004                              ; $85D5A1 |
  STA.B $4E,X                               ; $85D5A4 |
  JML.L CODE_FL_86C63A                      ; $85D5A6 |

CODE_85D5AA:
  JSL.L CODE_FL_85E05F                      ; $85D5AA |
  BCS CODE_85D5BB                           ; $85D5AE |
  LDA.W #$FFC0                              ; $85D5B0 |
  JSL.L CODE_FL_8CFDBB                      ; $85D5B3 |
  JSL.L CODE_FL_86C70D                      ; $85D5B7 |

CODE_85D5BB:
  LDA.W #$0040                              ; $85D5BB |
  JSL.L CODE_FL_8CFE19                      ; $85D5BE |
  STZ.B $26,X                               ; $85D5C2 |
  STZ.B $28,X                               ; $85D5C4 |
  STZ.B $1E,X                               ; $85D5C6 |
  LDA.W #$315A                              ; $85D5C8 |
  STA.B $00,X                               ; $85D5CB |
  INC.B $1A,X                               ; $85D5CD |
  RTL                                       ; $85D5CF |

CODE_85D5D0:
  JSL.L CODE_FL_86C70D                      ; $85D5D0 |
  LDA.W #$FFD8                              ; $85D5D4 |
  JSL.L CODE_FL_8CFE29                      ; $85D5D7 |
  LDA.W #$1009                              ; $85D5DB |
  JSL.L CODE_FL_86CAEE                      ; $85D5DE |
  DEC.B $1A,X                               ; $85D5E2 |
  LDA.W #$0100                              ; $85D5E4 |
  JML.L CODE_FL_8CFE19                      ; $85D5E7 |

CODE_85D5EB:
  LDA.B $4E,X                               ; $85D5EB |
  JML.L CODE_FL_85B4B4                      ; $85D5ED |

CODE_85D5F1:
  LDA.W #$0003                              ; $85D5F1 |
  JSL.L CODE_FL_85B065                      ; $85D5F4 |
  JSL.L CODE_FL_8CFD8F                      ; $85D5F8 |
  PHX                                       ; $85D5FC |
  ASL A                                     ; $85D5FD |
  TAX                                       ; $85D5FE |
  LDA.L PTR16_85D609,X                      ; $85D5FF |
  PLX                                       ; $85D603 |
  STA.B $00                                 ; $85D604 |
  JMP.W ($0000)                             ; $85D606 |

PTR16_85D609:
  dw CODE_85D611                            ; $85D609 |
  dw CODE_85D63F                            ; $85D60B |
  dw CODE_85D6A2                            ; $85D60D |
  dw CODE_85D6C2                            ; $85D60F |

CODE_85D611:
  JSL.L CODE_FL_86C7A5                      ; $85D611 |
  JSL.L CODE_FL_86C444                      ; $85D615 |
  JSL.L CODE_FL_8CFF15                      ; $85D619 |
  LDA.W #$FF80                              ; $85D61D |
  JSL.L CODE_FL_86C71F                      ; $85D620 |
  LDA.W #$100E                              ; $85D624 |
  JSL.L CODE_FL_86CAEE                      ; $85D627 |
  LDA.W #$0100                              ; $85D62B |
  JSL.L CODE_FL_8CFE19                      ; $85D62E |
  JSL.L CODE_FL_85B01E                      ; $85D632 |
  LDA.W #$0005                              ; $85D636 |
  STA.B $4E,X                               ; $85D639 |
  JML.L CODE_FL_86C63A                      ; $85D63B |

CODE_85D63F:
  JSL.L CODE_FL_85E05F                      ; $85D63F |
  BCS CODE_85D689                           ; $85D643 |
  LDA.W #$FF80                              ; $85D645 |
  JSL.L CODE_FL_8CFDBB                      ; $85D648 |
  LDA.B $3A,X                               ; $85D64C |
  BNE CODE_85D671                           ; $85D64E |
  LDA.B $3C,X                               ; $85D650 |
  CMP.W #$0004                              ; $85D652 |
  BCS CODE_85D65C                           ; $85D655 |
  LDA.W #$0080                              ; $85D657 |
  BRA CODE_85D66B                           ; $85D65A |

CODE_85D65C:
  CMP.W #$0007                              ; $85D65C |
  BNE CODE_85D668                           ; $85D65F |
  INC.B $3A,X                               ; $85D661 |
  LDA.W #$FFFF                              ; $85D663 |
  STA.B $3C,X                               ; $85D666 |

CODE_85D668:
  LDA.W #$FF80                              ; $85D668 |

CODE_85D66B:
  STA.B $2A,X                               ; $85D66B |
  INC.B $3C,X                               ; $85D66D |
  BRA CODE_85D685                           ; $85D66F |

CODE_85D671:
  LDA.B $3C,X                               ; $85D671 |
  CMP.W #$0007                              ; $85D673 |
  BNE CODE_85D67F                           ; $85D676 |
  STZ.B $3A,X                               ; $85D678 |
  LDA.W #$FFFF                              ; $85D67A |
  STA.B $3C,X                               ; $85D67D |

CODE_85D67F:
  JSL.L CODE_FL_85B50F                      ; $85D67F |
  INC.B $3C,X                               ; $85D683 |

CODE_85D685:
  JSL.L CODE_FL_86C70D                      ; $85D685 |

CODE_85D689:
  LDA.W #$0040                              ; $85D689 |
  JSL.L CODE_FL_8CFE19                      ; $85D68C |
  STZ.B $26,X                               ; $85D690 |
  STZ.B $28,X                               ; $85D692 |
  JSL.L CODE_FL_85B50F                      ; $85D694 |
  STZ.B $1E,X                               ; $85D698 |
  LDA.W #$3204                              ; $85D69A |
  STA.B $00,X                               ; $85D69D |
  INC.B $1A,X                               ; $85D69F |
  RTL                                       ; $85D6A1 |

CODE_85D6A2:
  JSL.L CODE_FL_86C70D                      ; $85D6A2 |
  LDA.W #$FFB0                              ; $85D6A6 |
  JSL.L CODE_FL_8CFE29                      ; $85D6A9 |
  LDA.W #$100E                              ; $85D6AD |
  JSL.L CODE_FL_86CAEE                      ; $85D6B0 |
  LDA.W #$0100                              ; $85D6B4 |
  JSL.L CODE_FL_8CFE19                      ; $85D6B7 |
  STZ.B $3A,X                               ; $85D6BB |
  STZ.B $3C,X                               ; $85D6BD |
  DEC.B $1A,X                               ; $85D6BF |
  RTL                                       ; $85D6C1 |

CODE_85D6C2:
  JSL.L CODE_FL_85B50F                      ; $85D6C2 |
  LDA.B $4E,X                               ; $85D6C6 |
  JML.L CODE_FL_85B4B4                      ; $85D6C8 |

CODE_85D6CC:
  LDA.W #$0003                              ; $85D6CC |
  JSL.L CODE_FL_85B065                      ; $85D6CF |
  JSL.L CODE_FL_8CFD8F                      ; $85D6D3 |
  PHX                                       ; $85D6D7 |
  ASL A                                     ; $85D6D8 |
  TAX                                       ; $85D6D9 |
  LDA.L PTR16_85D6E4,X                      ; $85D6DA |
  PLX                                       ; $85D6DE |
  STA.B $00                                 ; $85D6DF |
  JMP.W ($0000)                             ; $85D6E1 |

PTR16_85D6E4:
  dw CODE_85D6EC                            ; $85D6E4 |
  dw CODE_85D71A                            ; $85D6E6 |
  dw CODE_85D740                            ; $85D6E8 |
  dw CODE_85D75B                            ; $85D6EA |

CODE_85D6EC:
  JSL.L CODE_FL_86C7A5                      ; $85D6EC |
  JSL.L CODE_FL_86C444                      ; $85D6F0 |
  JSL.L CODE_FL_8CFF15                      ; $85D6F4 |
  LDA.W #$FFC0                              ; $85D6F8 |
  JSL.L CODE_FL_86C71F                      ; $85D6FB |
  LDA.W #$100F                              ; $85D6FF |
  JSL.L CODE_FL_86CAEE                      ; $85D702 |
  LDA.W #$0040                              ; $85D706 |
  JSL.L CODE_FL_8CFE19                      ; $85D709 |
  JSL.L CODE_FL_85B01E                      ; $85D70D |
  LDA.W #$0006                              ; $85D711 |
  STA.B $4E,X                               ; $85D714 |
  JML.L CODE_FL_86C63A                      ; $85D716 |

CODE_85D71A:
  JSL.L CODE_FL_85E05F                      ; $85D71A |
  BCS CODE_85D72B                           ; $85D71E |
  LDA.W #$FFC0                              ; $85D720 |
  JSL.L CODE_FL_8CFDBB                      ; $85D723 |
  JSL.L CODE_FL_86C70D                      ; $85D727 |

CODE_85D72B:
  LDA.W #$0080                              ; $85D72B |
  JSL.L CODE_FL_8CFE19                      ; $85D72E |
  STZ.B $26,X                               ; $85D732 |
  STZ.B $28,X                               ; $85D734 |
  STZ.B $1E,X                               ; $85D736 |
  LDA.W #$322C                              ; $85D738 |
  STA.B $00,X                               ; $85D73B |
  INC.B $1A,X                               ; $85D73D |
  RTL                                       ; $85D73F |

CODE_85D740:
  JSL.L CODE_FL_86C70D                      ; $85D740 |
  LDA.W #$FFD8                              ; $85D744 |
  JSL.L CODE_FL_8CFE29                      ; $85D747 |
  LDA.W #$100F                              ; $85D74B |
  JSL.L CODE_FL_86CAEE                      ; $85D74E |
  DEC.B $1A,X                               ; $85D752 |
  LDA.W #$0040                              ; $85D754 |
  JML.L CODE_FL_8CFE19                      ; $85D757 |

CODE_85D75B:
  LDA.B $4E,X                               ; $85D75B |
  JML.L CODE_FL_85B4B4                      ; $85D75D |

CODE_FL_85D761:
  LDA.W #$0003                              ; $85D761 |
  JSL.L CODE_FL_85B065                      ; $85D764 |
  LDA.W #$0004                              ; $85D768 |
  JSL.L CODE_FL_85B047                      ; $85D76B |
  JSL.L CODE_FL_8CFD8F                      ; $85D76F |
  PHX                                       ; $85D773 |
  ASL A                                     ; $85D774 |
  TAX                                       ; $85D775 |
  LDA.L PTR16_85D780,X                      ; $85D776 |
  PLX                                       ; $85D77A |
  STA.B $00                                 ; $85D77B |
  JMP.W ($0000)                             ; $85D77D |

PTR16_85D780:
  dw CODE_85D78E                            ; $85D780 |
  dw CODE_85D7C3                            ; $85D782 |
  dw CODE_85D7FC                            ; $85D784 |
  dw CODE_85D82C                            ; $85D786 |
  dw CODE_85D846                            ; $85D788 |
  dw CODE_85D880                            ; $85D78A |
  dw CODE_85D894                            ; $85D78C |

CODE_85D78E:
  JSL.L CODE_FL_86C7A5                      ; $85D78E |
  JSL.L CODE_FL_86C444                      ; $85D792 |
  JSL.L CODE_FL_8CFF15                      ; $85D796 |
  LDA.W #$FFC0                              ; $85D79A |
  JSL.L CODE_FL_86C71F                      ; $85D79D |
  LDA.W #$1010                              ; $85D7A1 |
  JSL.L CODE_FL_86CAEE                      ; $85D7A4 |
  LDA.W #$0040                              ; $85D7A8 |
  JSL.L CODE_FL_8CFE19                      ; $85D7AB |
  JSL.L CODE_FL_85B00E                      ; $85D7AF |
  JSL.L CODE_FL_85B01E                      ; $85D7B3 |
  LDA.W #$0010                              ; $85D7B7 |
  ORA.W #$1000                              ; $85D7BA |
  STA.B $4E,X                               ; $85D7BD |
  JML.L CODE_FL_86C63A                      ; $85D7BF |

CODE_85D7C3:
  JSL.L CODE_FL_85B00E                      ; $85D7C3 |
  JSL.L CODE_FL_85E05F                      ; $85D7C7 |
  BCS CODE_85D7E4                           ; $85D7CB |
  LDA.W #$FFC0                              ; $85D7CD |
  JSL.L CODE_FL_8CFDBB                      ; $85D7D0 |
  LDA.W #$0240                              ; $85D7D4 |
  STA.B $00                                 ; $85D7D7 |
  LDA.W #$0040                              ; $85D7D9 |
  JSL.L CODE_FL_85B31E                      ; $85D7DC |
  JSL.L CODE_FL_86C70D                      ; $85D7E0 |

CODE_85D7E4:
  LDA.W #$0020                              ; $85D7E4 |
  JSL.L CODE_FL_8CFE19                      ; $85D7E7 |
  STZ.B $26,X                               ; $85D7EB |
  STZ.B $28,X                               ; $85D7ED |
  JSL.L CODE_FL_85B50F                      ; $85D7EF |
  INC.B $1A,X                               ; $85D7F3 |
  LDA.W #$1012                              ; $85D7F5 |
  JML.L CODE_FL_86CAEE                      ; $85D7F8 |

CODE_85D7FC:
  JSL.L CODE_FL_86CB11                      ; $85D7FC |
  BCC CODE_85D810                           ; $85D800 |
  LDA.B $42                                 ; $85D802 |
  AND.W #$000F                              ; $85D804 |
  BNE CODE_85D810                           ; $85D807 |
  LDA.W #$0008                              ; $85D809 |
  JSL.L CODE_FL_8089BD                      ; $85D80C |

CODE_85D810:
  JSL.L CODE_FL_86C70D                      ; $85D810 |
  LDA.W #$FFC0                              ; $85D814 |
  JSL.L CODE_FL_8CFE29                      ; $85D817 |
  LDA.W #$1010                              ; $85D81B |
  JSL.L CODE_FL_86CAEE                      ; $85D81E |
  LDA.W #$0040                              ; $85D822 |
  JSL.L CODE_FL_8CFE19                      ; $85D825 |
  DEC.B $1A,X                               ; $85D829 |
  RTL                                       ; $85D82B |

CODE_85D82C:
  JSL.L CODE_FL_85B50F                      ; $85D82C |
  LDA.B $40,X                               ; $85D830 |
  BEQ CODE_85D83E                           ; $85D832 |
  JSL.L CODE_FL_85B016                      ; $85D834 |
  LDA.B $4E,X                               ; $85D838 |
  JML.L CODE_FL_85B4B4                      ; $85D83A |

CODE_85D83E:
  STZ.B $46,X                               ; $85D83E |
  LDA.W #$0001                              ; $85D840 |
  STA.B $1A,X                               ; $85D843 |
  RTL                                       ; $85D845 |

CODE_85D846:
  JSL.L CODE_FL_85A9AF                      ; $85D846 |
  JSL.L CODE_FL_86C4A5                      ; $85D84A |
  LDA.W #$FF80                              ; $85D84E |
  STA.B $00                                 ; $85D851 |
  LDA.W #$FFC0                              ; $85D853 |
  JSL.L CODE_FL_85B373                      ; $85D856 |
  LDA.W #$0080                              ; $85D85A |
  STA.B $4C,X                               ; $85D85D |
  LDA.W #$0400                              ; $85D85F |
  STA.B $2A,X                               ; $85D862 |
  LDA.W #$1011                              ; $85D864 |
  JSL.L CODE_FL_86CAEE                      ; $85D867 |
  LDA.W #$0040                              ; $85D86B |
  STA.B $38,X                               ; $85D86E |
  STZ.B $32,X                               ; $85D870 |
  LDA.W #$000C                              ; $85D872 |
  JSL.L CODE_FL_8089BD                      ; $85D875 |
  JSL.L CODE_FL_85A5A7                      ; $85D879 |
  INC.B $1A,X                               ; $85D87D |
  RTL                                       ; $85D87F |

CODE_85D880:
  JSL.L CODE_FL_8CFEF6                      ; $85D880 |
  BPL CODE_85D893                           ; $85D884 |
  LDA.W #$0040                              ; $85D886 |
  JSL.L CODE_FL_8CFE19                      ; $85D889 |
  JSL.L CODE_FL_85B50F                      ; $85D88D |
  INC.B $1A,X                               ; $85D891 |

CODE_85D893:
  RTL                                       ; $85D893 |

CODE_85D894:
  JSL.L CODE_FL_85B291                      ; $85D894 |
  JSL.L CODE_FL_86C4F1                      ; $85D898 |
  LDA.W #$0240                              ; $85D89C |
  STA.B $00                                 ; $85D89F |
  LDA.W #$0040                              ; $85D8A1 |
  JSL.L CODE_FL_85B31E                      ; $85D8A4 |
  JSL.L CODE_FL_86C70D                      ; $85D8A8 |
  JSL.L CODE_FL_85A9A7                      ; $85D8AC |
  LDA.W #$0080                              ; $85D8B0 |
  JSL.L CODE_FL_8CFE19                      ; $85D8B3 |
  STZ.B $26,X                               ; $85D8B7 |
  STZ.B $28,X                               ; $85D8B9 |
  JSL.L CODE_FL_85B50F                      ; $85D8BB |
  LDA.W #$0002                              ; $85D8BF |
  STA.B $1A,X                               ; $85D8C2 |
  LDA.W #$1012                              ; $85D8C4 |
  JML.L CODE_FL_86CAEE                      ; $85D8C7 |

CODE_85D8CB:
  LDA.W #$0003                              ; $85D8CB |
  JSL.L CODE_FL_85B065                      ; $85D8CE |
  JSL.L CODE_FL_8CFD8F                      ; $85D8D2 |
  PHX                                       ; $85D8D6 |
  ASL A                                     ; $85D8D7 |
  TAX                                       ; $85D8D8 |
  LDA.L PTR16_85D8E3,X                      ; $85D8D9 |
  PLX                                       ; $85D8DD |
  STA.B $00                                 ; $85D8DE |
  JMP.W ($0000)                             ; $85D8E0 |

PTR16_85D8E3:
  dw CODE_85D8EB                            ; $85D8E3 |
  dw CODE_85D919                            ; $85D8E5 |
  dw CODE_85D946                            ; $85D8E7 |
  dw CODE_85D962                            ; $85D8E9 |

CODE_85D8EB:
  JSL.L CODE_FL_86C7A5                      ; $85D8EB |
  JSL.L CODE_FL_86C444                      ; $85D8EF |
  JSL.L CODE_FL_8CFF15                      ; $85D8F3 |
  LDA.W #$FFE0                              ; $85D8F7 |
  JSL.L CODE_FL_86C71F                      ; $85D8FA |
  LDA.W #$1019                              ; $85D8FE |
  JSL.L CODE_FL_86CAEE                      ; $85D901 |
  LDA.W #$0100                              ; $85D905 |
  JSL.L CODE_FL_8CFE19                      ; $85D908 |
  JSL.L CODE_FL_85B01E                      ; $85D90C |
  LDA.W #$0007                              ; $85D910 |
  STA.B $4E,X                               ; $85D913 |
  JML.L CODE_FL_86C63A                      ; $85D915 |

CODE_85D919:
  JSL.L CODE_FL_85E05F                      ; $85D919 |
  BCS CODE_85D92A                           ; $85D91D |
  LDA.W #$FFE0                              ; $85D91F |
  JSL.L CODE_FL_8CFDBB                      ; $85D922 |
  JSL.L CODE_FL_86C70D                      ; $85D926 |

CODE_85D92A:
  LDA.W #$0080                              ; $85D92A |
  JSL.L CODE_FL_8CFE19                      ; $85D92D |
  STZ.B $26,X                               ; $85D931 |
  STZ.B $28,X                               ; $85D933 |
  STZ.B $1E,X                               ; $85D935 |
  JSL.L CODE_FL_85B45C                      ; $85D937 |
  LDA.B $4E,X                               ; $85D93B |
  JSL.L CODE_FL_85B482                      ; $85D93D |
  STA.B $00,X                               ; $85D941 |
  INC.B $1A,X                               ; $85D943 |
  RTL                                       ; $85D945 |

CODE_85D946:
  JSL.L CODE_FL_86C70D                      ; $85D946 |
  LDA.W #$FFE0                              ; $85D94A |
  JSL.L CODE_FL_8CFE29                      ; $85D94D |
  LDA.W #$1019                              ; $85D951 |
  JSL.L CODE_FL_86CAEE                      ; $85D954 |
  LDA.W #$0100                              ; $85D958 |
  JSL.L CODE_FL_8CFE19                      ; $85D95B |
  DEC.B $1A,X                               ; $85D95F |
  RTL                                       ; $85D961 |

CODE_85D962:
  LDA.B $4E,X                               ; $85D962 |
  JML.L CODE_FL_85B4B4                      ; $85D964 |

CODE_85D968:
  JSL.L CODE_FL_8CFD8F                      ; $85D968 |
  PHX                                       ; $85D96C |
  ASL A                                     ; $85D96D |
  TAX                                       ; $85D96E |
  LDA.L PTR16_85D979,X                      ; $85D96F |
  PLX                                       ; $85D973 |
  STA.B $00                                 ; $85D974 |
  JMP.W ($0000)                             ; $85D976 |

PTR16_85D979:
  dw CODE_85D97F                            ; $85D979 |
  dw CODE_85D9A6                            ; $85D97B |
  dw CODE_85D9CC                            ; $85D97D |

CODE_85D97F:
  JSL.L CODE_FL_86C7A5                      ; $85D97F |
  JSL.L CODE_FL_86C444                      ; $85D983 |
  JSL.L CODE_FL_8CFF1E                      ; $85D987 |
  LDA.W #$FFC0                              ; $85D98B |
  JSL.L CODE_FL_86C71F                      ; $85D98E |
  LDA.W #$101B                              ; $85D992 |
  JSL.L CODE_FL_86CAEE                      ; $85D995 |
  LDA.W #$0040                              ; $85D999 |
  STA.B $2C,X                               ; $85D99C |
  JSL.L CODE_FL_85B01E                      ; $85D99E |
  JML.L CODE_FL_86C63A                      ; $85D9A2 |

CODE_85D9A6:
  JSL.L CODE_FL_85E05F                      ; $85D9A6 |
  BCS CODE_85D9BE                           ; $85D9AA |
  LDA.W #$FFC0                              ; $85D9AC |
  JSL.L CODE_FL_8CFDBB                      ; $85D9AF |
  JSL.L CODE_FL_86C70D                      ; $85D9B3 |
  LDA.W #$0040                              ; $85D9B7 |
  JSL.L CODE_FL_8CFE19                      ; $85D9BA |

CODE_85D9BE:
  STZ.B $28,X                               ; $85D9BE |
  STZ.B $26,X                               ; $85D9C0 |
  STZ.B $1E,X                               ; $85D9C2 |
  LDA.W #$3516                              ; $85D9C4 |
  STA.B $00,X                               ; $85D9C7 |
  INC.B $1A,X                               ; $85D9C9 |
  RTL                                       ; $85D9CB |

CODE_85D9CC:
  JSL.L CODE_FL_86C70D                      ; $85D9CC |
  LDA.W #$FFC0                              ; $85D9D0 |
  JSL.L CODE_FL_8CFE29                      ; $85D9D3 |
  LDA.W #$101B                              ; $85D9D7 |
  JSL.L CODE_FL_86CAEE                      ; $85D9DA |
  LDA.W #$0040                              ; $85D9DE |
  JSL.L CODE_FL_8CFE19                      ; $85D9E1 |
  DEC.B $1A,X                               ; $85D9E5 |
  RTL                                       ; $85D9E7 |

CODE_85D9E8:
  LDA.W #$0003                              ; $85D9E8 |
  JSL.L CODE_FL_85B065                      ; $85D9EB |
  JSL.L CODE_FL_8CFD8F                      ; $85D9EF |
  PHX                                       ; $85D9F3 |
  ASL A                                     ; $85D9F4 |
  TAX                                       ; $85D9F5 |
  LDA.L PTR16_85DA00,X                      ; $85D9F6 |
  PLX                                       ; $85D9FA |
  STA.B $00                                 ; $85D9FB |
  JMP.W ($0000)                             ; $85D9FD |

PTR16_85DA00:
  dw CODE_85DA08                            ; $85DA00 |
  dw CODE_85DA36                            ; $85DA02 |
  dw CODE_85DA5C                            ; $85DA04 |
  dw CODE_85DA78                            ; $85DA06 |

CODE_85DA08:
  JSL.L CODE_FL_86C7A5                      ; $85DA08 |
  JSL.L CODE_FL_86C444                      ; $85DA0C |
  JSL.L CODE_FL_8CFF15                      ; $85DA10 |
  LDA.W #$FFC0                              ; $85DA14 |
  JSL.L CODE_FL_86C71F                      ; $85DA17 |
  LDA.W #$1040                              ; $85DA1B |
  JSL.L CODE_FL_86CAEE                      ; $85DA1E |
  LDA.W #$0100                              ; $85DA22 |
  JSL.L CODE_FL_8CFE19                      ; $85DA25 |
  JSL.L CODE_FL_85B01E                      ; $85DA29 |
  LDA.W #$000A                              ; $85DA2D |
  STA.B $4E,X                               ; $85DA30 |
  JML.L CODE_FL_86C63A                      ; $85DA32 |

CODE_85DA36:
  JSL.L CODE_FL_85E05F                      ; $85DA36 |
  BCS CODE_85DA47                           ; $85DA3A |
  LDA.W #$FFC0                              ; $85DA3C |
  JSL.L CODE_FL_8CFDBB                      ; $85DA3F |
  JSL.L CODE_FL_86C70D                      ; $85DA43 |

CODE_85DA47:
  LDA.W #$0040                              ; $85DA47 |
  JSL.L CODE_FL_8CFE19                      ; $85DA4A |
  STZ.B $26,X                               ; $85DA4E |
  STZ.B $28,X                               ; $85DA50 |
  STZ.B $1E,X                               ; $85DA52 |
  LDA.W #$36C8                              ; $85DA54 |
  STA.B $00,X                               ; $85DA57 |
  INC.B $1A,X                               ; $85DA59 |
  RTL                                       ; $85DA5B |

CODE_85DA5C:
  JSL.L CODE_FL_86C70D                      ; $85DA5C |
  LDA.W #$FFD8                              ; $85DA60 |
  JSL.L CODE_FL_8CFE29                      ; $85DA63 |
  LDA.W #$1040                              ; $85DA67 |
  JSL.L CODE_FL_86CAEE                      ; $85DA6A |
  LDA.W #$0100                              ; $85DA6E |
  JSL.L CODE_FL_8CFE19                      ; $85DA71 |
  DEC.B $1A,X                               ; $85DA75 |
  RTL                                       ; $85DA77 |

CODE_85DA78:
  LDA.B $4E,X                               ; $85DA78 |
  JML.L CODE_FL_85B4B4                      ; $85DA7A |

CODE_85DA7E:
  LDA.W #$0003                              ; $85DA7E |
  JSL.L CODE_FL_85B065                      ; $85DA81 |
  JSL.L CODE_FL_8CFD8F                      ; $85DA85 |
  PHX                                       ; $85DA89 |
  ASL A                                     ; $85DA8A |
  TAX                                       ; $85DA8B |
  LDA.L PTR16_85DA96,X                      ; $85DA8C |
  PLX                                       ; $85DA90 |
  STA.B $00                                 ; $85DA91 |
  JMP.W ($0000)                             ; $85DA93 |

PTR16_85DA96:
  dw CODE_85DA9E                            ; $85DA96 |
  dw CODE_85DACC                            ; $85DA98 |
  dw CODE_85DAF1                            ; $85DA9A |
  dw CODE_85DB0D                            ; $85DA9C |

CODE_85DA9E:
  JSL.L CODE_FL_86C7A5                      ; $85DA9E |
  JSL.L CODE_FL_86C444                      ; $85DAA2 |
  JSL.L CODE_FL_8CFF15                      ; $85DAA6 |
  LDA.W #$FFC0                              ; $85DAAA |
  JSL.L CODE_FL_86C71F                      ; $85DAAD |
  LDA.W #$1041                              ; $85DAB1 |
  JSL.L CODE_FL_86CAEE                      ; $85DAB4 |
  LDA.W #$0040                              ; $85DAB8 |
  JSL.L CODE_FL_8CFE19                      ; $85DABB |
  JSL.L CODE_FL_85B01E                      ; $85DABF |
  LDA.W #$000B                              ; $85DAC3 |
  STA.B $4E,X                               ; $85DAC6 |
  JML.L CODE_FL_86C63A                      ; $85DAC8 |

CODE_85DACC:
  JSL.L CODE_FL_85E05F                      ; $85DACC |
  BCS CODE_85DADD                           ; $85DAD0 |
  LDA.W #$FFC0                              ; $85DAD2 |
  JSL.L CODE_FL_8CFDBB                      ; $85DAD5 |
  JSL.L CODE_FL_86C70D                      ; $85DAD9 |

CODE_85DADD:
  LDA.W #$3734                              ; $85DADD |
  STA.B $00,X                               ; $85DAE0 |
  STZ.B $1E,X                               ; $85DAE2 |
  STZ.B $26,X                               ; $85DAE4 |
  STZ.B $28,X                               ; $85DAE6 |
  INC.B $1A,X                               ; $85DAE8 |
  LDA.W #$0080                              ; $85DAEA |
  JML.L CODE_FL_8CFE19                      ; $85DAED |

CODE_85DAF1:
  JSL.L CODE_FL_86C70D                      ; $85DAF1 |
  LDA.W #$FFC0                              ; $85DAF5 |
  JSL.L CODE_FL_8CFE29                      ; $85DAF8 |
  LDA.W #$1041                              ; $85DAFC |
  JSL.L CODE_FL_86CAEE                      ; $85DAFF |
  LDA.W #$0040                              ; $85DB03 |
  JSL.L CODE_FL_8CFE19                      ; $85DB06 |
  DEC.B $1A,X                               ; $85DB0A |
  RTL                                       ; $85DB0C |

CODE_85DB0D:
  LDA.B $4E,X                               ; $85DB0D |
  JML.L CODE_FL_85B4B4                      ; $85DB0F |

CODE_85DB13:
  LDA.W #$0003                              ; $85DB13 |
  JSL.L CODE_FL_85B065                      ; $85DB16 |
  JSL.L CODE_FL_8CFD8F                      ; $85DB1A |
  PHX                                       ; $85DB1E |
  ASL A                                     ; $85DB1F |
  TAX                                       ; $85DB20 |
  LDA.L PTR16_85DB2B,X                      ; $85DB21 |
  PLX                                       ; $85DB25 |
  STA.B $00                                 ; $85DB26 |
  JMP.W ($0000)                             ; $85DB28 |

PTR16_85DB2B:
  dw CODE_85DB33                            ; $85DB2B |
  dw CODE_85DB61                            ; $85DB2D |
  dw CODE_85DB8E                            ; $85DB2F |
  dw CODE_85DBAA                            ; $85DB31 |

CODE_85DB33:
  JSL.L CODE_FL_86C7A5                      ; $85DB33 |
  JSL.L CODE_FL_86C444                      ; $85DB37 |
  JSL.L CODE_FL_8CFF15                      ; $85DB3B |
  LDA.W #$FFE0                              ; $85DB3F |
  JSL.L CODE_FL_86C71F                      ; $85DB42 |
  LDA.W #$1042                              ; $85DB46 |
  JSL.L CODE_FL_86CAEE                      ; $85DB49 |
  LDA.W #$0100                              ; $85DB4D |
  JSL.L CODE_FL_8CFE19                      ; $85DB50 |
  JSL.L CODE_FL_85B01E                      ; $85DB54 |
  LDA.W #$000C                              ; $85DB58 |
  STA.B $4E,X                               ; $85DB5B |
  JML.L CODE_FL_86C63A                      ; $85DB5D |

CODE_85DB61:
  JSL.L CODE_FL_85E05F                      ; $85DB61 |
  BCS CODE_85DB72                           ; $85DB65 |
  LDA.W #$FFE0                              ; $85DB67 |
  JSL.L CODE_FL_8CFDBB                      ; $85DB6A |
  JSL.L CODE_FL_86C70D                      ; $85DB6E |

CODE_85DB72:
  LDA.W #$0080                              ; $85DB72 |
  JSL.L CODE_FL_8CFE19                      ; $85DB75 |
  STZ.B $26,X                               ; $85DB79 |
  STZ.B $28,X                               ; $85DB7B |
  STZ.B $1E,X                               ; $85DB7D |
  JSL.L CODE_FL_85B45C                      ; $85DB7F |
  LDA.B $4E,X                               ; $85DB83 |
  JSL.L CODE_FL_85B482                      ; $85DB85 |
  STA.B $00,X                               ; $85DB89 |
  INC.B $1A,X                               ; $85DB8B |
  RTL                                       ; $85DB8D |

CODE_85DB8E:
  JSL.L CODE_FL_86C70D                      ; $85DB8E |
  LDA.W #$FFE0                              ; $85DB92 |
  JSL.L CODE_FL_8CFE29                      ; $85DB95 |
  LDA.W #$1042                              ; $85DB99 |
  JSL.L CODE_FL_86CAEE                      ; $85DB9C |
  LDA.W #$0100                              ; $85DBA0 |
  JSL.L CODE_FL_8CFE19                      ; $85DBA3 |
  DEC.B $1A,X                               ; $85DBA7 |
  RTL                                       ; $85DBA9 |

CODE_85DBAA:
  LDA.B $4E,X                               ; $85DBAA |
  JML.L CODE_FL_85B4B4                      ; $85DBAC |

CODE_JL_85DBB0:
  LDA.W #$0003                              ; $85DBB0 |
  JSL.L CODE_FL_85B065                      ; $85DBB3 |
  JSL.L CODE_FL_8CFD8F                      ; $85DBB7 |
  PHX                                       ; $85DBBB |
  ASL A                                     ; $85DBBC |
  TAX                                       ; $85DBBD |
  LDA.L PTR16_85DBC8,X                      ; $85DBBE |
  PLX                                       ; $85DBC2 |
  STA.B $00                                 ; $85DBC3 |
  JMP.W ($0000)                             ; $85DBC5 |

PTR16_85DBC8:
  dw CODE_85DBD0                            ; $85DBC8 |
  dw CODE_85DBFE                            ; $85DBCA |
  dw CODE_85DC3E                            ; $85DBCC |
  dw CODE_85DC5A                            ; $85DBCE |

CODE_85DBD0:
  JSL.L CODE_FL_86C7A5                      ; $85DBD0 |
  JSL.L CODE_FL_86C444                      ; $85DBD4 |
  JSL.L CODE_FL_8CFF15                      ; $85DBD8 |
  LDA.W #$FFE0                              ; $85DBDC |
  JSL.L CODE_FL_86C71F                      ; $85DBDF |
  LDA.W #$1043                              ; $85DBE3 |
  JSL.L CODE_FL_86CAEE                      ; $85DBE6 |
  LDA.W #$0080                              ; $85DBEA |
  JSL.L CODE_FL_8CFE19                      ; $85DBED |
  JSL.L CODE_FL_85B01E                      ; $85DBF1 |
  LDA.W #$000D                              ; $85DBF5 |
  STA.B $4E,X                               ; $85DBF8 |
  JML.L CODE_FL_86C63A                      ; $85DBFA |

CODE_85DBFE:
  JSL.L CODE_FL_85E05F                      ; $85DBFE |
  BCS CODE_85DC29                           ; $85DC02 |
  LDA.W #$FFE0                              ; $85DC04 |
  JSL.L CODE_FL_8CFDBB                      ; $85DC07 |
  LDA.W $1C38                               ; $85DC0B |
  AND.W #$001F                              ; $85DC0E |
  BNE CODE_85DC25                           ; $85DC11 |
  LDA.W #$015D                              ; $85DC13 |
  JSL.L CODE_FL_86C9C5                      ; $85DC16 |
  BCS CODE_85DC25                           ; $85DC1A |
  JSL.L CODE_FL_86C7C4                      ; $85DC1C |
  LDA.B $04,X                               ; $85DC20 |
  STA.W $0004,Y                             ; $85DC22 |

CODE_85DC25:
  JSL.L CODE_FL_86C70D                      ; $85DC25 |

CODE_85DC29:
  LDA.W #$0100                              ; $85DC29 |
  JSL.L CODE_FL_8CFE19                      ; $85DC2C |
  STZ.B $26,X                               ; $85DC30 |
  STZ.B $28,X                               ; $85DC32 |
  STZ.B $1E,X                               ; $85DC34 |
  LDA.W #$3802                              ; $85DC36 |
  STA.B $00,X                               ; $85DC39 |
  INC.B $1A,X                               ; $85DC3B |
  RTL                                       ; $85DC3D |

CODE_85DC3E:
  JSL.L CODE_FL_86C70D                      ; $85DC3E |
  LDA.W #$FFE0                              ; $85DC42 |
  JSL.L CODE_FL_8CFE29                      ; $85DC45 |
  LDA.W #$1043                              ; $85DC49 |
  JSL.L CODE_FL_86CAEE                      ; $85DC4C |
  LDA.W #$0080                              ; $85DC50 |
  JSL.L CODE_FL_8CFE19                      ; $85DC53 |
  DEC.B $1A,X                               ; $85DC57 |
  RTL                                       ; $85DC59 |

CODE_85DC5A:
  LDA.B $4E,X                               ; $85DC5A |
  JML.L CODE_FL_85B4B4                      ; $85DC5C |

CODE_85DC60:
  JSL.L CODE_FL_86C424                      ; $85DC60 |
  PHX                                       ; $85DC64 |
  ASL A                                     ; $85DC65 |
  TAX                                       ; $85DC66 |
  LDA.L PTR16_85DC71,X                      ; $85DC67 |
  PLX                                       ; $85DC6B |
  STA.B $00                                 ; $85DC6C |
  JMP.W ($0000)                             ; $85DC6E |

PTR16_85DC71:
  dw CODE_85DC75                            ; $85DC71 |
  dw CODE_85DCFC                            ; $85DC73 |

CODE_85DC75:
  LDA.W #$3A84                              ; $85DC75 |
  STA.B $00,X                               ; $85DC78 |
  LDA.B $09,X                               ; $85DC7A |
  CLC                                       ; $85DC7C |
  ADC.W #$000C                              ; $85DC7D |
  STA.B $09,X                               ; $85DC80 |
  BRA CODE_85DCAD                           ; $85DC82 |

CODE_85DC84:
  JSL.L CODE_FL_86C424                      ; $85DC84 |
  PHX                                       ; $85DC88 |
  ASL A                                     ; $85DC89 |
  TAX                                       ; $85DC8A |
  LDA.L PTR16_85DC95,X                      ; $85DC8B |
  PLX                                       ; $85DC8F |
  STA.B $00                                 ; $85DC90 |
  JMP.W ($0000)                             ; $85DC92 |

PTR16_85DC95:
  dw CODE_85DC99                            ; $85DC95 |
  dw CODE_85DCFC                            ; $85DC97 |

CODE_85DC99:
  LDA.W #$3A86                              ; $85DC99 |
  STA.B $00,X                               ; $85DC9C |
  LDA.B $04,X                               ; $85DC9E |
  ORA.W #$2020                              ; $85DCA0 |
  STA.B $04,X                               ; $85DCA3 |
  LDA.B $09,X                               ; $85DCA5 |
  SEC                                       ; $85DCA7 |
  SBC.W #$000C                              ; $85DCA8 |
  STA.B $09,X                               ; $85DCAB |

CODE_85DCAD:
  LDA.W #$0008                              ; $85DCAD |
  STA.B $2C,X                               ; $85DCB0 |
  LDA.B $11,X                               ; $85DCB2 |
  CLC                                       ; $85DCB4 |
  ADC.W #$0028                              ; $85DCB5 |
  STA.B $11,X                               ; $85DCB8 |
  INC.B $1A,X                               ; $85DCBA |
  RTL                                       ; $85DCBC |

CODE_85DCBD:
  JSL.L CODE_FL_86C424                      ; $85DCBD |
  PHX                                       ; $85DCC1 |
  ASL A                                     ; $85DCC2 |
  TAX                                       ; $85DCC3 |
  LDA.L PTR16_85DCCE,X                      ; $85DCC4 |
  PLX                                       ; $85DCC8 |
  STA.B $00                                 ; $85DCC9 |
  JMP.W ($0000)                             ; $85DCCB |

PTR16_85DCCE:
  dw CODE_85DCD2                            ; $85DCCE |
  dw CODE_85DCFC                            ; $85DCD0 |

CODE_85DCD2:
  LDA.W #$3828                              ; $85DCD2 |
  STA.B $00,X                               ; $85DCD5 |
  LDA.W #$0008                              ; $85DCD7 |
  STA.B $2C,X                               ; $85DCDA |
  LDA.W #$000C                              ; $85DCDC |
  STA.B $00                                 ; $85DCDF |
  LDA.B $04,X                               ; $85DCE1 |
  AND.W #$2020                              ; $85DCE3 |
  BNE CODE_85DCED                           ; $85DCE6 |
  LDA.W #$FFF4                              ; $85DCE8 |
  STA.B $00                                 ; $85DCEB |

CODE_85DCED:
  LDA.B $09,X                               ; $85DCED |
  SEC                                       ; $85DCEF |
  SBC.B $00                                 ; $85DCF0 |
  STA.B $09,X                               ; $85DCF2 |
  LDA.W #$0020                              ; $85DCF4 |
  STA.B $11,X                               ; $85DCF7 |
  INC.B $1A,X                               ; $85DCF9 |
  RTL                                       ; $85DCFB |

CODE_85DCFC:
  JSL.L CODE_FL_86C70D                      ; $85DCFC |
  JML.L CODE_FL_86CA36                      ; $85DD00 |

CODE_85DD04:
  LDA.W #$0003                              ; $85DD04 |
  JSL.L CODE_FL_85B225                      ; $85DD07 |
  LDA.W #$0004                              ; $85DD0B |
  JSL.L CODE_FL_85B047                      ; $85DD0E |
  JSL.L CODE_FL_8CFD8F                      ; $85DD12 |
  PHX                                       ; $85DD16 |
  ASL A                                     ; $85DD17 |
  TAX                                       ; $85DD18 |
  LDA.L PTR16_85DD23,X                      ; $85DD19 |
  PLX                                       ; $85DD1D |
  STA.B $00                                 ; $85DD1E |
  JMP.W ($0000)                             ; $85DD20 |

PTR16_85DD23:
  dw CODE_85DD31                            ; $85DD23 |
  dw CODE_85DD5E                            ; $85DD25 |
  dw CODE_85DD9C                            ; $85DD27 |
  dw CODE_85DDEF                            ; $85DD29 |
  dw CODE_85DE31                            ; $85DD2B |
  dw CODE_85DED7                            ; $85DD2D |
  dw CODE_85DF40                            ; $85DD2F |

CODE_85DD31:
  JSL.L CODE_FL_86C7A5                      ; $85DD31 |
  JSL.L CODE_FL_86C444                      ; $85DD35 |
  JSL.L CODE_FL_8CFF15                      ; $85DD39 |
  LDA.W #$FFC0                              ; $85DD3D |
  JSL.L CODE_FL_86C71F                      ; $85DD40 |
  LDA.W #$1044                              ; $85DD44 |
  STA.B $3C,X                               ; $85DD47 |
  JSL.L CODE_FL_86CAEE                      ; $85DD49 |
  JSL.L CODE_FL_85B00E                      ; $85DD4D |
  JSL.L CODE_FL_85B01E                      ; $85DD51 |
  LDA.W #$000E                              ; $85DD55 |
  STA.B $4E,X                               ; $85DD58 |
  JML.L CODE_FL_86C63A                      ; $85DD5A |

CODE_85DD5E:
  JSL.L CODE_FL_8CFE4B                      ; $85DD5E |
  LDA.B $1C                                 ; $85DD62 |
  CMP.W #$0030                              ; $85DD64 |
  BCS CODE_85DD8D                           ; $85DD67 |
  LDA.W #$0002                              ; $85DD69 |
  JSL.L CODE_FL_85B3A9                      ; $85DD6C |
  JSL.L CODE_FL_8CFE4B                      ; $85DD70 |
  LDA.W #$1042                              ; $85DD74 |
  JSL.L CODE_FL_8CFE36                      ; $85DD77 |
  LDA.W #$0200                              ; $85DD7B |
  STA.B $2A,X                               ; $85DD7E |
  LDA.W #$0080                              ; $85DD80 |
  STA.B $4C,X                               ; $85DD83 |
  LDA.W #$0020                              ; $85DD85 |
  STA.B $2C,X                               ; $85DD88 |
  INC.B $1A,X                               ; $85DD8A |
  RTL                                       ; $85DD8C |

CODE_85DD8D:
  LDA.W #$FFC0                              ; $85DD8D |
  JSL.L CODE_FL_8CFDCC                      ; $85DD90 |
  LDA.W #$1042                              ; $85DD94 |
  JSL.L CODE_FL_8CFE36                      ; $85DD97 |
  RTL                                       ; $85DD9B |

CODE_85DD9C:
  JSL.L CODE_FL_85B291                      ; $85DD9C |
  LDA.B $3C,X                               ; $85DDA0 |
  CMP.B $1E,X                               ; $85DDA2 |
  BNE CODE_85DDAA                           ; $85DDA4 |
  JSL.L CODE_FL_86C4F1                      ; $85DDA6 |

CODE_85DDAA:
  LDA.B $3A,X                               ; $85DDAA |
  BNE CODE_85DDB9                           ; $85DDAC |
  JSL.L CODE_FL_85B273                      ; $85DDAE |
  BCC CODE_85DDC7                           ; $85DDB2 |
  LDA.W #$0008                              ; $85DDB4 |
  STA.B $3A,X                               ; $85DDB7 |

CODE_85DDB9:
  DEC.B $3A,X                               ; $85DDB9 |
  BNE CODE_85DDC7                           ; $85DDBB |
  LDA.W #$0200                              ; $85DDBD |
  STA.B $2A,X                               ; $85DDC0 |
  LDA.W #$0080                              ; $85DDC2 |
  STA.B $4C,X                               ; $85DDC5 |

CODE_85DDC7:
  JSL.L CODE_FL_86C70D                      ; $85DDC7 |
  LDA.W #$0002                              ; $85DDCB |
  JSL.L CODE_FL_85B3A9                      ; $85DDCE |
  JSL.L CODE_FL_8CFE4B                      ; $85DDD2 |
  LDA.W #$1042                              ; $85DDD6 |
  JSL.L CODE_FL_8CFE36                      ; $85DDD9 |
  STZ.B $3A,X                               ; $85DDDD |
  LDA.W #$0200                              ; $85DDDF |
  STA.B $2A,X                               ; $85DDE2 |
  LDA.W #$0080                              ; $85DDE4 |
  STA.B $4C,X                               ; $85DDE7 |
  LDA.W #$0020                              ; $85DDE9 |
  STA.B $2C,X                               ; $85DDEC |
  RTL                                       ; $85DDEE |

CODE_85DDEF:
  LDA.W #$01F9                              ; $85DDEF |
  JSL.L CODE_FL_86C9C5                      ; $85DDF2 |
  BCS CODE_85DE30                           ; $85DDF6 |
  JSL.L CODE_FL_8CFE4B                      ; $85DDF8 |
  LDA.B $4E,X                               ; $85DDFC |
  JSL.L CODE_FL_85B482                      ; $85DDFE |
  STA.B $00,X                               ; $85DE02 |
  STZ.B $1E,X                               ; $85DE04 |
  LDA.W #$0020                              ; $85DE06 |
  STA.B $2C,X                               ; $85DE09 |
  INC.B $3E,X                               ; $85DE0B |
  STZ.B $26,X                               ; $85DE0D |
  STZ.B $28,X                               ; $85DE0F |
  JSL.L CODE_FL_85B50F                      ; $85DE11 |
  STZ.B $46,X                               ; $85DE15 |
  JSL.L CODE_FL_85A9AF                      ; $85DE17 |
  LDA.W #$0050                              ; $85DE1B |
  JSL.L CODE_FL_83D1D6                      ; $85DE1E |
  LDA.W #$0000                              ; $85DE22 |
  JSL.L CODE_FL_8089BD                      ; $85DE25 |
  INC.B $40,X                               ; $85DE29 |
  LDA.W #$0005                              ; $85DE2B |
  STA.B $1A,X                               ; $85DE2E |

CODE_85DE30:
  RTL                                       ; $85DE30 |

CODE_85DE31:
  LDA.B $40,X                               ; $85DE31 |
  BEQ CODE_85DE60                           ; $85DE33 |
  STZ.B $02                                 ; $85DE35 |
  LDA.W #$0007                              ; $85DE37 |
  JSL.L CODE_FL_86C9A7                      ; $85DE3A |
  BCS CODE_85DE60                           ; $85DE3E |
  LDA.B $02                                 ; $85DE40 |
  JSR.W CODE_FN_85DEA6                      ; $85DE42 |
  INC.B $02                                 ; $85DE45 |
  LDA.W #$0002                              ; $85DE47 |
  STA.B $00                                 ; $85DE4A |

CODE_85DE4C:
  LDA.W #$0008                              ; $85DE4C |
  JSL.L CODE_FL_86C9A7                      ; $85DE4F |
  BCS CODE_85DE60                           ; $85DE53 |
  LDA.B $02                                 ; $85DE55 |
  JSR.W CODE_FN_85DEA6                      ; $85DE57 |
  INC.B $02                                 ; $85DE5A |
  DEC.B $00                                 ; $85DE5C |
  BNE CODE_85DE4C                           ; $85DE5E |

CODE_85DE60:
  STZ.B $1E,X                               ; $85DE60 |
  LDA.W #$3A32                              ; $85DE62 |
  STA.B $00,X                               ; $85DE65 |
  LDA.W #$0020                              ; $85DE67 |
  STA.B $2C,X                               ; $85DE6A |
  STZ.B $26,X                               ; $85DE6C |
  STZ.B $28,X                               ; $85DE6E |
  JSL.L CODE_FL_85B50F                      ; $85DE70 |
  STZ.B $32,X                               ; $85DE74 |
  JSL.L CODE_FL_85B016                      ; $85DE76 |
  JSL.L CODE_FL_85A9AF                      ; $85DE7A |
  LDA.W #$1047                              ; $85DE7E |
  STA.B $3C,X                               ; $85DE81 |
  STZ.B $3E,X                               ; $85DE83 |
  LDA.W #$0161                              ; $85DE85 |
  JSL.L CODE_FL_86C9C5                      ; $85DE88 |
  BCS CODE_85DEA5                           ; $85DE8C |
  JSL.L CODE_FL_86C7C4                      ; $85DE8E |
  LDA.W #$0162                              ; $85DE92 |
  JSL.L CODE_FL_86C9C5                      ; $85DE95 |
  BCS CODE_85DEA5                           ; $85DE99 |
  JSL.L CODE_FL_86C7C4                      ; $85DE9B |
  JSL.L CODE_FL_85A5A7                      ; $85DE9F |
  INC.B $1A,X                               ; $85DEA3 |

CODE_85DEA5:
  RTL                                       ; $85DEA5 |

CODE_FN_85DEA6:
  ASL A                                     ; $85DEA6 |
  ASL A                                     ; $85DEA7 |
  PHY                                       ; $85DEA8 |
  TAY                                       ; $85DEA9 |
  CLC                                       ; $85DEAA |
  LDA.B $09,X                               ; $85DEAB |
  PHB                                       ; $85DEAD |
  PHK                                       ; $85DEAE |
  PLB                                       ; $85DEAF |
  ADC.W LOOSE_OP_00DECB,Y                   ; $85DEB0 |
  PLB                                       ; $85DEB3 |
  STY.B $04                                 ; $85DEB4 |
  PLY                                       ; $85DEB6 |
  STA.W $0009,Y                             ; $85DEB7 |
  PHY                                       ; $85DEBA |
  LDY.B $04                                 ; $85DEBB |
  LDA.B $0D,X                               ; $85DEBD |
  PHB                                       ; $85DEBF |
  PHK                                       ; $85DEC0 |
  PLB                                       ; $85DEC1 |
  ADC.W CODE_00DECD,Y                       ; $85DEC2 |
  PLB                                       ; $85DEC5 |
  PLY                                       ; $85DEC6 |
  STA.W $000D,Y                             ; $85DEC7 |
  RTS                                       ; $85DECA |

  dw EMPTY_85FFF8                           ; $85DECB |
  dw EMPTY_85FFFE                           ; $85DECD |
  dw $0008                                  ; $85DECF |
  dw $0008                                  ; $85DED1 |
  dw $0000                                  ; $85DED3 |
  dw $0000                                  ; $85DED5 |

CODE_85DED7:
  JSL.L CODE_FL_86C70D                      ; $85DED7 |
  LDA.B $3E,X                               ; $85DEDB |
  BNE CODE_85DEE4                           ; $85DEDD |
  LDA.W #$0003                              ; $85DEDF |
  BRA CODE_85DEE7                           ; $85DEE2 |

CODE_85DEE4:
  LDA.W #$0002                              ; $85DEE4 |

CODE_85DEE7:
  JSL.L CODE_FL_85B3A9                      ; $85DEE7 |
  JSL.L CODE_FL_86CB6A                      ; $85DEEB |
  JSL.L CODE_FL_86CB7A                      ; $85DEEF |
  JSL.L CODE_FL_8CFE4B                      ; $85DEF3 |
  LDA.B $1A                                 ; $85DEF7 |
  CMP.W #$0003                              ; $85DEF9 |
  BCC CODE_85DF0E                           ; $85DEFC |
  LDA.B $28,X                               ; $85DEFE |
  BMI CODE_85DF09                           ; $85DF00 |
  LDA.W #$0003                              ; $85DF02 |
  STA.B $1A                                 ; $85DF05 |
  BRA CODE_85DF0E                           ; $85DF07 |

CODE_85DF09:
  LDA.W #$0004                              ; $85DF09 |
  STA.B $1A                                 ; $85DF0C |

CODE_85DF0E:
  LDA.B $3E,X                               ; $85DF0E |
  BNE CODE_85DF25                           ; $85DF10 |
  LDA.W #$1045                              ; $85DF12 |
  JSL.L CODE_FL_8CFE36                      ; $85DF15 |
  LDA.W #$0400                              ; $85DF19 |
  STA.B $2A,X                               ; $85DF1C |
  LDA.W #$0100                              ; $85DF1E |
  STA.B $4C,X                               ; $85DF21 |
  BRA CODE_85DF36                           ; $85DF23 |

CODE_85DF25:
  LDA.W #$1042                              ; $85DF25 |
  JSL.L CODE_FL_8CFE36                      ; $85DF28 |
  LDA.W #$0200                              ; $85DF2C |
  STA.B $2A,X                               ; $85DF2F |
  LDA.W #$0080                              ; $85DF31 |
  STA.B $4C,X                               ; $85DF34 |

CODE_85DF36:
  STZ.B $3A,X                               ; $85DF36 |
  LDA.W #$0080                              ; $85DF38 |
  STA.B $2C,X                               ; $85DF3B |
  INC.B $1A,X                               ; $85DF3D |
  RTL                                       ; $85DF3F |

CODE_85DF40:
  LDA.B $3E,X                               ; $85DF40 |
  BNE CODE_85DF66                           ; $85DF42 |
  LDA.W $1C38                               ; $85DF44 |
  AND.W #$000F                              ; $85DF47 |
  BNE CODE_85DF66                           ; $85DF4A |
  LDA.W #$0161                              ; $85DF4C |
  JSL.L CODE_FL_86C9C5                      ; $85DF4F |
  BCS CODE_85DF66                           ; $85DF53 |
  JSL.L CODE_FL_86C7C4                      ; $85DF55 |
  LDA.W #$0162                              ; $85DF59 |
  JSL.L CODE_FL_86C9C5                      ; $85DF5C |
  BCS CODE_85DF66                           ; $85DF60 |
  JSL.L CODE_FL_86C7C4                      ; $85DF62 |

CODE_85DF66:
  STZ.B $1A                                 ; $85DF66 |
  JSL.L CODE_FL_85B291                      ; $85DF68 |
  LDA.B $3C,X                               ; $85DF6C |
  CMP.B $1E,X                               ; $85DF6E |
  BNE CODE_85DF78                           ; $85DF70 |
  JSL.L CODE_FL_86C4F1                      ; $85DF72 |
  BRA CODE_85DF90                           ; $85DF76 |

CODE_85DF78:
  LDA.W $1C12                               ; $85DF78 |
  AND.W #$000C                              ; $85DF7B |
  BEQ CODE_85DFA4                           ; $85DF7E |
  LDA.B $28,X                               ; $85DF80 |
  BMI CODE_85DF8B                           ; $85DF82 |
  LDA.W #$0003                              ; $85DF84 |
  STA.B $1A                                 ; $85DF87 |
  BRA CODE_85DF90                           ; $85DF89 |

CODE_85DF8B:
  LDA.W #$0004                              ; $85DF8B |
  STA.B $1A                                 ; $85DF8E |

CODE_85DF90:
  LDA.B $3E,X                               ; $85DF90 |
  BNE CODE_85DF9D                           ; $85DF92 |
  LDA.W #$1045                              ; $85DF94 |
  JSL.L CODE_FL_8CFE36                      ; $85DF97 |
  BRA CODE_85DFA4                           ; $85DF9B |

CODE_85DF9D:
  LDA.W #$1042                              ; $85DF9D |
  JSL.L CODE_FL_8CFE36                      ; $85DFA0 |

CODE_85DFA4:
  LDA.B $3A,X                               ; $85DFA4 |
  BNE CODE_85DFB3                           ; $85DFA6 |
  JSL.L CODE_FL_85B273                      ; $85DFA8 |
  BCC CODE_85DFD1                           ; $85DFAC |
  LDA.W #$0004                              ; $85DFAE |
  STA.B $3A,X                               ; $85DFB1 |

CODE_85DFB3:
  DEC.B $3A,X                               ; $85DFB3 |
  BNE CODE_85DFD1                           ; $85DFB5 |
  LDA.B $3E,X                               ; $85DFB7 |
  BNE CODE_85DFC7                           ; $85DFB9 |
  LDA.W #$0400                              ; $85DFBB |
  STA.B $2A,X                               ; $85DFBE |
  LDA.W #$0100                              ; $85DFC0 |
  STA.B $4C,X                               ; $85DFC3 |
  BRA CODE_85DFD1                           ; $85DFC5 |

CODE_85DFC7:
  LDA.W #$0200                              ; $85DFC7 |
  STA.B $2A,X                               ; $85DFCA |
  LDA.W #$0080                              ; $85DFCC |
  STA.B $4C,X                               ; $85DFCF |

CODE_85DFD1:
  JSL.L CODE_FL_86C70D                      ; $85DFD1 |
  STZ.B $26,X                               ; $85DFD5 |
  STZ.B $28,X                               ; $85DFD7 |
  JSL.L CODE_FL_85B50F                      ; $85DFD9 |
  LDA.W #$FFC0                              ; $85DFDD |
  JSL.L CODE_FL_86C71F                      ; $85DFE0 |
  LDA.W #$1044                              ; $85DFE4 |
  STA.B $3C,X                               ; $85DFE7 |
  JSL.L CODE_FL_86CAEE                      ; $85DFE9 |
  STZ.B $3E,X                               ; $85DFED |
  JSL.L CODE_FL_85B00E                      ; $85DFEF |
  JSL.L CODE_FL_85A9A7                      ; $85DFF3 |
  STZ.B $40,X                               ; $85DFF7 |
  LDA.W #$0001                              ; $85DFF9 |
  STA.B $1A,X                               ; $85DFFC |
  RTL                                       ; $85DFFE |

CODE_85DFFF:
  JSL.L CODE_FL_8CFD84                      ; $85DFFF |
  PHX                                       ; $85E003 |
  ASL A                                     ; $85E004 |
  TAX                                       ; $85E005 |
  LDA.L PTR16_85E010,X                      ; $85E006 |
  PLX                                       ; $85E00A |
  STA.B $00                                 ; $85E00B |
  JMP.W ($0000)                             ; $85E00D |

PTR16_85E010:
  dw CODE_85E014                            ; $85E010 |
  dw CODE_85E026                            ; $85E012 |

CODE_85E014:
  LDA.W #$DE68                              ; $85E014 |
  STA.B $00,X                               ; $85E017 |
  LDA.W #$0080                              ; $85E019 |
  STA.B $2A,X                               ; $85E01C |
  LDA.W #$0020                              ; $85E01E |
  STA.B $2C,X                               ; $85E021 |
  INC.B $1A,X                               ; $85E023 |
  RTL                                       ; $85E025 |

CODE_85E026:
  JSL.L CODE_FL_83FD80                      ; $85E026 |
  JSL.L CODE_FL_86C70D                      ; $85E02A |
  JML.L CODE_FL_86CA36                      ; $85E02E |

CODE_85E032:
  JSL.L CODE_FL_86C424                      ; $85E032 |
  PHX                                       ; $85E036 |
  ASL A                                     ; $85E037 |
  TAX                                       ; $85E038 |
  LDA.L PTR16_85E043,X                      ; $85E039 |
  PLX                                       ; $85E03D |
  STA.B $00                                 ; $85E03E |
  JMP.W ($0000)                             ; $85E040 |

PTR16_85E043:
  dw CODE_85E047                            ; $85E043 |
  dw CODE_85E055                            ; $85E045 |

CODE_85E047:
  JSL.L CODE_FL_8098FD                      ; $85E047 |
  BCC CODE_85E054                           ; $85E04B |
  LDA.W #$0040                              ; $85E04D |
  STA.B $2C,X                               ; $85E050 |
  INC.B $1A,X                               ; $85E052 |

CODE_85E054:
  RTL                                       ; $85E054 |

CODE_85E055:
  JSL.L CODE_FL_86C70D                      ; $85E055 |
  LDA.B $4E,X                               ; $85E059 |
  JML.L CODE_FL_85B4E0                      ; $85E05B |

CODE_FL_85E05F:
  CLC                                       ; $85E05F |
  LDA.B $46,X                               ; $85E060 |
  AND.W #$C000                              ; $85E062 |
  BEQ CODE_85E06A                           ; $85E065 |
  STZ.B $46,X                               ; $85E067 |
  SEC                                       ; $85E069 |

CODE_85E06A:
  RTL                                       ; $85E06A |

CODE_85E06B:
  LDY.B $3A,X                               ; $85E06B |
  LDA.W $0000,Y                             ; $85E06D |
  STA.B $00,X                               ; $85E070 |
  TDC                                       ; $85E072 |
  STA.W $0000,Y                             ; $85E073 |
  LDA.W $0004,Y                             ; $85E076 |
  AND.W #$DFDF                              ; $85E079 |
  STA.B $04,X                               ; $85E07C |
  RTL                                       ; $85E07E |

CODE_FN_85E07F:
  LDY.B $3A,X                               ; $85E07F |
  CPY.W #$0400                              ; $85E081 |
  BEQ CODE_85E08B                           ; $85E084 |
  LDA.W $1794                               ; $85E086 |
  BRA CODE_85E08E                           ; $85E089 |

CODE_85E08B:
  LDA.W $1780                               ; $85E08B |

CODE_85E08E:
  CMP.B $36,X                               ; $85E08E |
  BEQ CODE_85E098                           ; $85E090 |
  JSL.L CODE_FL_86CA36                      ; $85E092 |
  SEC                                       ; $85E096 |
  RTS                                       ; $85E097 |

CODE_85E098:
  CLC                                       ; $85E098 |
  RTS                                       ; $85E099 |

CODE_85E09A:
  JSL.L CODE_FL_97FC80                      ; $85E09A |
  LDA.B $1A,X                               ; $85E09E |
  PHX                                       ; $85E0A0 |
  ASL A                                     ; $85E0A1 |
  TAX                                       ; $85E0A2 |
  LDA.L PTR16_85E0AD,X                      ; $85E0A3 |
  PLX                                       ; $85E0A7 |
  STA.B $00                                 ; $85E0A8 |
  JMP.W ($0000)                             ; $85E0AA |

PTR16_85E0AD:
  dw CODE_85E0B3                            ; $85E0AD |
  dw CODE_85E124                            ; $85E0AF |
  dw CODE_85E124                            ; $85E0B1 |

CODE_85E0B3:
  LDY.B $3A,X                               ; $85E0B3 |
  LDA.W $0004,Y                             ; $85E0B5 |
  STA.B $04,X                               ; $85E0B8 |
  LDA.W #$0005                              ; $85E0BA |
  STA.B $10                                 ; $85E0BD |
  STZ.B $12                                 ; $85E0BF |
  LDA.W $004E,Y                             ; $85E0C1 |
  AND.W #$00FF                              ; $85E0C4 |
  CMP.W #$0028                              ; $85E0C7 |
  BCC CODE_85E123                           ; $85E0CA |
  BEQ CODE_85E0E0                           ; $85E0CC |
  INC.B $10                                 ; $85E0CE |
  INC.B $12                                 ; $85E0D0 |
  CMP.W #$0050                              ; $85E0D2 |
  BEQ CODE_85E0E0                           ; $85E0D5 |
  INC.B $10                                 ; $85E0D7 |
  INC.B $12                                 ; $85E0D9 |
  CMP.W #$0080                              ; $85E0DB |
  BNE CODE_85E0F4                           ; $85E0DE |

CODE_85E0E0:
  LDY.B $12                                 ; $85E0E0 |
  LDA.W LOOSE_OP_0091D5,Y                   ; $85E0E2 |
  AND.W #$00FF                              ; $85E0E5 |
  STA.B $3E,X                               ; $85E0E8 |
  LDA.B $10                                 ; $85E0EA |
  CMP.B $1E,X                               ; $85E0EC |
  BEQ CODE_85E0F4                           ; $85E0EE |
  JSL.L CODE_FL_86CAEE                      ; $85E0F0 |

CODE_85E0F4:
  LDA.B $84                                 ; $85E0F4 |
  AND.B $3E,X                               ; $85E0F6 |
  BNE CODE_85E101                           ; $85E0F8 |
  LDA.W #$001E                              ; $85E0FA |
  JSL.L push_sound_queue                    ; $85E0FD |

CODE_85E101:
  LDY.B $3A,X                               ; $85E101 |
  LDA.W $0009,Y                             ; $85E103 |
  STA.B $09,X                               ; $85E106 |
  LDA.W $000D,Y                             ; $85E108 |
  INC A                                     ; $85E10B |
  STA.B $0D,X                               ; $85E10C |
  LDA.W $0011,Y                             ; $85E10E |
  STA.B $11,X                               ; $85E111 |
  LDA.W $0004,Y                             ; $85E113 |
  AND.W #$0020                              ; $85E116 |
  BEQ CODE_85E11E                           ; $85E119 |
  LDA.W #$2020                              ; $85E11B |

CODE_85E11E:
  ORA.W $1968                               ; $85E11E |
  STA.B $04,X                               ; $85E121 |

CODE_85E123:
  RTL                                       ; $85E123 |

CODE_85E124:
  JML.L CODE_FL_86CA36                      ; $85E124 |

CODE_85E128:
  LDY.B $3A,X                               ; $85E128 |
  LDA.W $0009,Y                             ; $85E12A |
  STA.B $09,X                               ; $85E12D |
  LDA.W $000D,Y                             ; $85E12F |
  SEC                                       ; $85E132 |
  SBC.W #$0018                              ; $85E133 |
  STA.B $0D,X                               ; $85E136 |
  JML.L CODE_FL_97FC80                      ; $85E138 |

CODE_FL_85E13C:
  PHX                                       ; $85E13C |
  PHY                                       ; $85E13D |
  STX.B $FC                                 ; $85E13E |
  LDA.W #$0213                              ; $85E140 |
  JSL.L CODE_FL_86C9C5                      ; $85E143 |
  PLY                                       ; $85E147 |
  PLX                                       ; $85E148 |
  RTL                                       ; $85E149 |

CODE_85E14A:
  JSL.L CODE_FL_97FC80                      ; $85E14A |
  LDA.B $1A,X                               ; $85E14E |
  PHX                                       ; $85E150 |
  ASL A                                     ; $85E151 |
  TAX                                       ; $85E152 |
  LDA.L PTR16_85E15D,X                      ; $85E153 |
  PLX                                       ; $85E157 |
  STA.B $00                                 ; $85E158 |
  JMP.W ($0000)                             ; $85E15A |

PTR16_85E15D:
  dw CODE_85E161                            ; $85E15D |
  dw CODE_85E1B5                            ; $85E15F |

CODE_85E161:
  JSR.W CODE_FN_85E07F                      ; $85E161 |
  BCC CODE_85E167                           ; $85E164 |
  RTL                                       ; $85E166 |

CODE_85E167:
  JSL.L CODE_FL_85F9E6                      ; $85E167 |
  LDA.B $32,X                               ; $85E16B |
  BIT.W #$E000                              ; $85E16D |
  BEQ CODE_85E186                           ; $85E170 |
  LDA.B $3C,X                               ; $85E172 |
  BEQ CODE_JP_85E1BA                        ; $85E174 |
  LDY.W $1C40                               ; $85E176 |
  LDA.W $0022,Y                             ; $85E179 |
  BIT.W #$2000                              ; $85E17C |
  BEQ CODE_85E186                           ; $85E17F |
  BIT.W #$0400                              ; $85E181 |
  BEQ CODE_JP_85E1BA                        ; $85E184 |

CODE_85E186:
  JSL.L CODE_FL_86C855                      ; $85E186 |
  LDA.B $3C,X                               ; $85E18A |
  BEQ CODE_85E19B                           ; $85E18C |
  INC.B $61,X                               ; $85E18E |
  LDA.B $61,X                               ; $85E190 |
  AND.W #$0007                              ; $85E192 |
  BNE CODE_85E19B                           ; $85E195 |
  JSL.L CODE_FL_85E13C                      ; $85E197 |

CODE_85E19B:
  LDA.B $09,X                               ; $85E19B |
  STA.B $08                                 ; $85E19D |
  LDA.B $0D,X                               ; $85E19F |
  STA.B $0A                                 ; $85E1A1 |
  JSL.L CODE_FL_80CA5E                      ; $85E1A3 |
  BEQ CODE_85E1B4                           ; $85E1A7 |
  STZ.B $06,X                               ; $85E1A9 |
  LDA.W #$0040                              ; $85E1AB |
  JSL.L CODE_FL_86CAEE                      ; $85E1AE |
  INC.B $1A,X                               ; $85E1B2 |

CODE_85E1B4:
  RTL                                       ; $85E1B4 |

CODE_85E1B5:
  LDA.B $20,X                               ; $85E1B5 |
  BEQ CODE_JP_85E1BA                        ; $85E1B7 |
  RTL                                       ; $85E1B9 |

CODE_JP_85E1BA:
  JML.L CODE_FL_86CA36                      ; $85E1BA |

CODE_85E1BE:
  JSL.L CODE_FL_97FC80                      ; $85E1BE |
  LDA.B $1A,X                               ; $85E1C2 |
  PHX                                       ; $85E1C4 |
  ASL A                                     ; $85E1C5 |
  TAX                                       ; $85E1C6 |
  LDA.L PTR16_85E1D1,X                      ; $85E1C7 |
  PLX                                       ; $85E1CB |
  STA.B $00                                 ; $85E1CC |
  JMP.W ($0000)                             ; $85E1CE |

PTR16_85E1D1:
  dw CODE_85E1D5                            ; $85E1D1 |
  dw CODE_85E1B5                            ; $85E1D3 |

CODE_85E1D5:
  STZ.B $3C,X                               ; $85E1D5 |
  BRA CODE_85E161                           ; $85E1D7 |

CODE_85E1D9:
  JSL.L CODE_FL_97FC80                      ; $85E1D9 |
  LDA.B $1A,X                               ; $85E1DD |
  PHX                                       ; $85E1DF |
  ASL A                                     ; $85E1E0 |
  TAX                                       ; $85E1E1 |
  LDA.L PTR16_85E1EC,X                      ; $85E1E2 |
  PLX                                       ; $85E1E6 |
  STA.B $00                                 ; $85E1E7 |
  JMP.W ($0000)                             ; $85E1E9 |

PTR16_85E1EC:
  dw CODE_85E200                            ; $85E1EC |
  dw CODE_85E1B5                            ; $85E1EE |
  dw CODE_85E262                            ; $85E1F0 |

CODE_85E1F2:
  LDA.W #$0002                              ; $85E1F2 |
  STA.B $1A,X                               ; $85E1F5 |
  STZ.B $34,X                               ; $85E1F7 |
  STZ.B $1E,X                               ; $85E1F9 |
  STZ.B $20,X                               ; $85E1FB |
  STZ.B $00,X                               ; $85E1FD |
  RTL                                       ; $85E1FF |

CODE_85E200:
  JSR.W CODE_FN_85E07F                      ; $85E200 |
  BCC CODE_85E206                           ; $85E203 |
  RTL                                       ; $85E205 |

CODE_85E206:
  JSL.L CODE_FL_85F9E6                      ; $85E206 |
  LDA.B $32,X                               ; $85E20A |
  BIT.W #$E000                              ; $85E20C |
  BNE CODE_85E1F2                           ; $85E20F |
  JSL.L CODE_FL_86C855                      ; $85E211 |
  DEC.B $48,X                               ; $85E215 |
  BEQ CODE_85E262                           ; $85E217 |
  LDY.W #$0004                              ; $85E219 |
  LDA.B $26,X                               ; $85E21C |
  BEQ CODE_85E23D                           ; $85E21E |
  BPL CODE_85E225                           ; $85E220 |
  LDY.W #$FFFC                              ; $85E222 |

CODE_85E225:
  TYA                                       ; $85E225 |
  CLC                                       ; $85E226 |
  ADC.B $09,X                               ; $85E227 |
  STA.B $08                                 ; $85E229 |
  LDA.B $0D,X                               ; $85E22B |
  STA.B $0A                                 ; $85E22D |
  JSL.L CODE_FL_80CA5E                      ; $85E22F |
  BEQ CODE_85E23D                           ; $85E233 |
  LDA.B $26,X                               ; $85E235 |
  EOR.W #$FFFF                              ; $85E237 |
  INC A                                     ; $85E23A |
  STA.B $26,X                               ; $85E23B |

CODE_85E23D:
  LDY.W #$0004                              ; $85E23D |
  LDA.B $28,X                               ; $85E240 |
  BEQ CODE_85E261                           ; $85E242 |
  BPL CODE_85E249                           ; $85E244 |
  LDY.W #$FFFC                              ; $85E246 |

CODE_85E249:
  TYA                                       ; $85E249 |
  CLC                                       ; $85E24A |
  ADC.B $0D,X                               ; $85E24B |
  STA.B $0A                                 ; $85E24D |
  LDA.B $09,X                               ; $85E24F |
  STA.B $08                                 ; $85E251 |
  JSL.L CODE_FL_80CA5E                      ; $85E253 |
  BEQ CODE_85E261                           ; $85E257 |
  LDA.B $28,X                               ; $85E259 |
  EOR.W #$FFFF                              ; $85E25B |
  INC A                                     ; $85E25E |
  STA.B $28,X                               ; $85E25F |

CODE_85E261:
  RTL                                       ; $85E261 |

CODE_85E262:
  JML.L CODE_FL_86CA36                      ; $85E262 |

CODE_85E266:
  JSL.L CODE_FL_86C407                      ; $85E266 |
  PHX                                       ; $85E26A |
  ASL A                                     ; $85E26B |
  TAX                                       ; $85E26C |
  LDA.L PTR16_85E277,X                      ; $85E26D |
  PLX                                       ; $85E271 |
  STA.B $00                                 ; $85E272 |
  JMP.W ($0000)                             ; $85E274 |

PTR16_85E277:
  dw CODE_85E27D                            ; $85E277 |
  dw CODE_85E284                            ; $85E279 |
  dw CODE_85E1B5                            ; $85E27B |

CODE_85E27D:
  INC.B $1A,X                               ; $85E27D |
  LDA.W #$0300                              ; $85E27F |
  STA.B $28,X                               ; $85E282 |

CODE_85E284:
  JSR.W CODE_FN_85E07F                      ; $85E284 |
  BCC CODE_85E28A                           ; $85E287 |
  RTL                                       ; $85E289 |

CODE_85E28A:
  JSL.L CODE_FL_85F9E6                      ; $85E28A |
  LDA.B $32,X                               ; $85E28E |
  BIT.W #$E000                              ; $85E290 |
  BEQ CODE_85E299                           ; $85E293 |
  JML.L CODE_FL_86CA36                      ; $85E295 |

CODE_85E299:
  LDA.W #$0300                              ; $85E299 |
  STA.B $28,X                               ; $85E29C |
  JSL.L CODE_FL_85A607                      ; $85E29E |
  LDA.W $1C12                               ; $85E2A2 |
  BNE CODE_85E2C5                           ; $85E2A5 |
  LDY.W #$0000                              ; $85E2A7 |
  LDA.B $04,X                               ; $85E2AA |
  AND.W #$00FF                              ; $85E2AC |
  BIT.W #$2020                              ; $85E2AF |
  BEQ CODE_85E2B7                           ; $85E2B2 |
  LDY.W #$0004                              ; $85E2B4 |

CODE_85E2B7:
  LDA.W $1C16                               ; $85E2B7 |
  BEQ CODE_85E2C2                           ; $85E2BA |
  LDA.W CODE_0091D8,Y                       ; $85E2BC |
  STA.B $26,X                               ; $85E2BF |
  RTL                                       ; $85E2C1 |

CODE_85E2C2:
  STZ.B $26,X                               ; $85E2C2 |
  RTL                                       ; $85E2C4 |

CODE_85E2C5:
  STZ.B $06,X                               ; $85E2C5 |
  LDA.W #$0040                              ; $85E2C7 |
  JSL.L CODE_FL_86CAEE                      ; $85E2CA |
  INC.B $1A,X                               ; $85E2CE |
  RTL                                       ; $85E2D0 |

  LDA.W #$0000                              ; $85E2D1 |
  STA.W $004E,X                             ; $85E2D4 |
  LDA.W #$0004                              ; $85E2D7 |
  STA.B $0E                                 ; $85E2DA |
  LDA.W #$0008                              ; $85E2DC |
  STA.B $10                                 ; $85E2DF |
  STZ.B $0A                                 ; $85E2E1 |
  STZ.B $0C                                 ; $85E2E3 |
  RTS                                       ; $85E2E5 |

CODE_85E2E6:
  LDA.B $1A,X                               ; $85E2E6 |
  PHX                                       ; $85E2E8 |
  ASL A                                     ; $85E2E9 |
  TAX                                       ; $85E2EA |
  LDA.L PTR16_85E2F5,X                      ; $85E2EB |
  PLX                                       ; $85E2EF |
  STA.B $00                                 ; $85E2F0 |
  JMP.W ($0000)                             ; $85E2F2 |

PTR16_85E2F5:
  dw CODE_85E2FD                            ; $85E2F5 |
  dw CODE_85E31F                            ; $85E2F7 |
  dw CODE_85E3A9                            ; $85E2F9 |
  dw CODE_JP_85E1BA                         ; $85E2FB |

CODE_85E2FD:
  LDA.W #$0010                              ; $85E2FD |
  STA.B $2E,X                               ; $85E300 |
  LDA.W #$000C                              ; $85E302 |
  STA.B $30,X                               ; $85E305 |
  LDA.W #$E000                              ; $85E307 |
  STA.B $34,X                               ; $85E30A |
  LDA.W #$0006                              ; $85E30C |
  STA.B $4E,X                               ; $85E30F |
  STZ.B $62,X                               ; $85E311 |
  LDA.W #$88CC                              ; $85E313 |
  STA.B $3E,X                               ; $85E316 |
  STA.B $00,X                               ; $85E318 |
  JSR.W CODE_FN_85E719                      ; $85E31A |
  INC.B $1A,X                               ; $85E31D |

CODE_85E31F:
  LDY.B $3A,X                               ; $85E31F |
  LDA.B $3C,X                               ; $85E321 |
  CMP.W $0022,Y                             ; $85E323 |
  BEQ CODE_85E32B                           ; $85E326 |
  JMP.W CODE_JP_85E1BA                      ; $85E328 |

CODE_85E32B:
  JSR.W CODE_FN_85E540                      ; $85E32B |
  JSL.L CODE_FL_85F9E6                      ; $85E32E |
  LDA.B $32,X                               ; $85E332 |
  BIT.W #$4000                              ; $85E334 |
  BEQ CODE_85E362                           ; $85E337 |
  LDY.W $1C40                               ; $85E339 |
  LDA.W $0018,Y                             ; $85E33C |
  CMP.W #$014A                              ; $85E33F |
  BEQ CODE_85E34E                           ; $85E342 |
  LDA.W $0022,Y                             ; $85E344 |
  BIT.W #$2000                              ; $85E347 |
  BEQ CODE_85E362                           ; $85E34A |
  BRA CODE_85E384                           ; $85E34C |

CODE_85E34E:
  STY.B $62,X                               ; $85E34E |
  LDA.B $09,X                               ; $85E350 |
  SEC                                       ; $85E352 |
  SBC.W $0009,Y                             ; $85E353 |
  STA.B $46,X                               ; $85E356 |
  LDA.B $0D,X                               ; $85E358 |
  SEC                                       ; $85E35A |
  SBC.W $000D,Y                             ; $85E35B |
  STA.B $48,X                               ; $85E35E |
  BRA CODE_85E37B                           ; $85E360 |

CODE_85E362:
  LDA.B $09,X                               ; $85E362 |
  STA.B $08                                 ; $85E364 |
  LDA.B $0D,X                               ; $85E366 |
  STA.B $0A                                 ; $85E368 |
  JSL.L CODE_FL_80CA5E                      ; $85E36A |
  BNE CODE_85E384                           ; $85E36E |
  TYA                                       ; $85E370 |
  CMP.W #$0007                              ; $85E371 |
  BEQ CODE_85E37B                           ; $85E374 |
  CMP.W #$0077                              ; $85E376 |
  BNE CODE_JP_85E38C                        ; $85E379 |

CODE_85E37B:
  LDA.W #$009C                              ; $85E37B |
  JSL.L CODE_FL_8089BD                      ; $85E37E |
  INC.B $1A,X                               ; $85E382 |

CODE_85E384:
  LDY.B $3A,X                               ; $85E384 |
  LDA.W #$0002                              ; $85E386 |
  STA.W $0058,Y                             ; $85E389 |

CODE_JP_85E38C:
  LDY.W #$0400                              ; $85E38C |
  CPX.W #$0850                              ; $85E38F |
  BEQ CODE_85E397                           ; $85E392 |
  LDY.W #$04C0                              ; $85E394 |

CODE_85E397:
  LDA.W $0052,Y                             ; $85E397 |
  LSR A                                     ; $85E39A |
  BCS CODE_85E3A6                           ; $85E39B |
  LDA.B $00,X                               ; $85E39D |
  BNE CODE_85E3A5                           ; $85E39F |
  LDA.B $3E,X                               ; $85E3A1 |
  STA.B $00,X                               ; $85E3A3 |

CODE_85E3A5:
  RTL                                       ; $85E3A5 |

CODE_85E3A6:
  STZ.B $00,X                               ; $85E3A6 |
  RTL                                       ; $85E3A8 |

CODE_85E3A9:
  LDY.B $3A,X                               ; $85E3A9 |
  LDA.B $3C,X                               ; $85E3AB |
  CMP.W $0022,Y                             ; $85E3AD |
  BEQ CODE_85E3B5                           ; $85E3B0 |
  JMP.W CODE_JP_85E1BA                      ; $85E3B2 |

CODE_85E3B5:
  LDY.B $62,X                               ; $85E3B5 |
  BEQ CODE_85E3C9                           ; $85E3B7 |
  LDA.W $0009,Y                             ; $85E3B9 |
  CLC                                       ; $85E3BC |
  ADC.B $46,X                               ; $85E3BD |
  STA.B $09,X                               ; $85E3BF |
  LDA.W $000D,Y                             ; $85E3C1 |
  CLC                                       ; $85E3C4 |
  ADC.B $48,X                               ; $85E3C5 |
  STA.B $0D,X                               ; $85E3C7 |

CODE_85E3C9:
  JSR.W CODE_FN_85E5F8                      ; $85E3C9 |
  BRA CODE_JP_85E38C                        ; $85E3CC |

CODE_85E3CE:
  LDA.B $1A,X                               ; $85E3CE |
  PHX                                       ; $85E3D0 |
  ASL A                                     ; $85E3D1 |
  TAX                                       ; $85E3D2 |
  LDA.L PTR16_85E3DD,X                      ; $85E3D3 |
  PLX                                       ; $85E3D7 |
  STA.B $00                                 ; $85E3D8 |
  JMP.W ($0000)                             ; $85E3DA |

PTR16_85E3DD:
  dw CODE_85E3E5                            ; $85E3DD |
  dw CODE_85E407                            ; $85E3DF |
  dw CODE_85E486                            ; $85E3E1 |
  dw CODE_JP_85E1BA                         ; $85E3E3 |

CODE_85E3E5:
  LDA.W #$000C                              ; $85E3E5 |
  STA.B $2E,X                               ; $85E3E8 |
  LDA.W #$0010                              ; $85E3EA |
  STA.B $30,X                               ; $85E3ED |
  LDA.W #$E000                              ; $85E3EF |
  STA.B $34,X                               ; $85E3F2 |
  LDA.W #$0006                              ; $85E3F4 |
  STA.B $4E,X                               ; $85E3F7 |
  STZ.B $62,X                               ; $85E3F9 |
  LDA.W #$88E2                              ; $85E3FB |
  STA.B $3E,X                               ; $85E3FE |
  STA.B $00,X                               ; $85E400 |
  JSR.W CODE_FN_85E719                      ; $85E402 |
  INC.B $1A,X                               ; $85E405 |

CODE_85E407:
  LDY.B $3A,X                               ; $85E407 |
  LDA.B $3C,X                               ; $85E409 |
  CMP.W $0022,Y                             ; $85E40B |
  BEQ CODE_85E413                           ; $85E40E |
  JMP.W CODE_JP_85E1BA                      ; $85E410 |

CODE_85E413:
  JSR.W CODE_FN_85E5A6                      ; $85E413 |
  JSL.L CODE_FL_85F9E6                      ; $85E416 |
  LDA.B $32,X                               ; $85E41A |
  BIT.W #$4000                              ; $85E41C |
  BEQ CODE_85E459                           ; $85E41F |
  LDY.W $1C40                               ; $85E421 |
  LDA.W $0018,Y                             ; $85E424 |
  CMP.W #$014A                              ; $85E427 |
  BEQ CODE_85E445                           ; $85E42A |
  LDA.W $0022,Y                             ; $85E42C |
  BIT.W #$2000                              ; $85E42F |
  BEQ CODE_85E459                           ; $85E432 |
  LDA.W $0009,X                             ; $85E434 |
  CLC                                       ; $85E437 |
  ADC.W #$0008                              ; $85E438 |
  SEC                                       ; $85E43B |
  SBC.B $09,X                               ; $85E43C |
  CMP.W #$0010                              ; $85E43E |
  BCS CODE_85E459                           ; $85E441 |
  BRA CODE_85E47B                           ; $85E443 |

CODE_85E445:
  STY.B $62,X                               ; $85E445 |
  LDA.B $09,X                               ; $85E447 |
  SEC                                       ; $85E449 |
  SBC.W $0009,Y                             ; $85E44A |
  STA.B $46,X                               ; $85E44D |
  LDA.B $0D,X                               ; $85E44F |
  SEC                                       ; $85E451 |
  SBC.W $000D,Y                             ; $85E452 |
  STA.B $48,X                               ; $85E455 |
  BRA CODE_85E472                           ; $85E457 |

CODE_85E459:
  LDA.B $09,X                               ; $85E459 |
  STA.B $08                                 ; $85E45B |
  LDA.B $0D,X                               ; $85E45D |
  STA.B $0A                                 ; $85E45F |
  JSL.L CODE_FL_80CA5E                      ; $85E461 |
  BNE CODE_85E47B                           ; $85E465 |
  TYA                                       ; $85E467 |
  CMP.W #$0007                              ; $85E468 |
  BEQ CODE_85E472                           ; $85E46B |
  CMP.W #$0077                              ; $85E46D |
  BNE CODE_85E483                           ; $85E470 |

CODE_85E472:
  LDA.W #$009C                              ; $85E472 |
  JSL.L CODE_FL_8089BD                      ; $85E475 |
  INC.B $1A,X                               ; $85E479 |

CODE_85E47B:
  LDY.B $3A,X                               ; $85E47B |
  LDA.W #$0002                              ; $85E47D |
  STA.W $0058,Y                             ; $85E480 |

CODE_85E483:
  JMP.W CODE_JP_85E38C                      ; $85E483 |

CODE_85E486:
  LDY.B $3A,X                               ; $85E486 |
  LDA.B $3C,X                               ; $85E488 |
  CMP.W $0022,Y                             ; $85E48A |
  BEQ CODE_85E492                           ; $85E48D |
  JMP.W CODE_JP_85E1BA                      ; $85E48F |

CODE_85E492:
  LDY.B $62,X                               ; $85E492 |
  BEQ CODE_85E4A6                           ; $85E494 |
  LDA.W $0009,Y                             ; $85E496 |
  CLC                                       ; $85E499 |
  ADC.B $46,X                               ; $85E49A |
  STA.B $09,X                               ; $85E49C |
  LDA.W $000D,Y                             ; $85E49E |
  CLC                                       ; $85E4A1 |
  ADC.B $48,X                               ; $85E4A2 |
  STA.B $0D,X                               ; $85E4A4 |

CODE_85E4A6:
  JSR.W CODE_FN_85E68C                      ; $85E4A6 |
  JMP.W CODE_JP_85E38C                      ; $85E4A9 |

CODE_85E4AC:
  JSL.L CODE_FL_97FC80                      ; $85E4AC |
  LDA.B $1A,X                               ; $85E4B0 |
  PHX                                       ; $85E4B2 |
  ASL A                                     ; $85E4B3 |
  TAX                                       ; $85E4B4 |
  LDA.L PTR16_85E4BF,X                      ; $85E4B5 |
  PLX                                       ; $85E4B9 |
  STA.B $00                                 ; $85E4BA |
  JMP.W ($0000)                             ; $85E4BC |

PTR16_85E4BF:
  dw CODE_85E4C5                            ; $85E4BF |
  dw CODE_85E4DD                            ; $85E4C1 |
  dw CODE_JP_85E1BA                         ; $85E4C3 |

CODE_85E4C5:
  LDY.B $3A,X                               ; $85E4C5 |
  LDA.W $0018,Y                             ; $85E4C7 |
  LDY.W #$0008                              ; $85E4CA |
  CMP.W #$0016                              ; $85E4CD |
  BEQ CODE_85E4D3                           ; $85E4D0 |
  INY                                       ; $85E4D2 |

CODE_85E4D3:
  TYA                                       ; $85E4D3 |
  JSL.L CODE_FL_86CAEE                      ; $85E4D4 |
  JSR.W CODE_FN_85E719                      ; $85E4D8 |
  INC.B $1A,X                               ; $85E4DB |

CODE_85E4DD:
  LDY.B $3A,X                               ; $85E4DD |
  LDA.W $0018,Y                             ; $85E4DF |
  CMP.W #$0016                              ; $85E4E2 |
  BEQ CODE_85E4EF                           ; $85E4E5 |
  CMP.W #$0019                              ; $85E4E7 |
  BEQ CODE_85E4EF                           ; $85E4EA |
  JMP.W CODE_JP_85E1BA                      ; $85E4EC |

CODE_85E4EF:
  TXA                                       ; $85E4EF |
  SEC                                       ; $85E4F0 |
  SBC.W #$0050                              ; $85E4F1 |
  TAY                                       ; $85E4F4 |
  LDA.W $0044,Y                             ; $85E4F5 |
  STA.B $44,X                               ; $85E4F8 |
  BNE CODE_85E508                           ; $85E4FA |
  LDA.W $0009,Y                             ; $85E4FC |
  STA.B $09,X                               ; $85E4FF |
  LDA.W $0004,Y                             ; $85E501 |
  STA.B $04,X                               ; $85E504 |
  BRA CODE_85E525                           ; $85E506 |

CODE_85E508:
  LDA.W $0004,Y                             ; $85E508 |
  STA.B $04,X                               ; $85E50B |
  AND.W #$00FF                              ; $85E50D |
  BIT.W #$2020                              ; $85E510 |
  BEQ CODE_85E51D                           ; $85E513 |
  LDA.W $0009,Y                             ; $85E515 |
  CLC                                       ; $85E518 |
  ADC.B $44,X                               ; $85E519 |
  BRA CODE_85E523                           ; $85E51B |

CODE_85E51D:
  LDA.W $0009,Y                             ; $85E51D |
  SEC                                       ; $85E520 |
  SBC.B $44,X                               ; $85E521 |

CODE_85E523:
  STA.B $09,X                               ; $85E523 |

CODE_85E525:
  LDA.W $0048,Y                             ; $85E525 |
  STA.B $48,X                               ; $85E528 |
  BNE CODE_85E533                           ; $85E52A |
  LDA.W $000D,Y                             ; $85E52C |
  STA.B $0D,X                               ; $85E52F |
  BRA CODE_85E53B                           ; $85E531 |

CODE_85E533:
  LDA.W $000D,Y                             ; $85E533 |
  CLC                                       ; $85E536 |
  ADC.B $48,X                               ; $85E537 |
  STA.B $0D,X                               ; $85E539 |

CODE_85E53B:
  LDY.B $3A,X                               ; $85E53B |
  JMP.W CODE_JP_85E38C                      ; $85E53D |

CODE_FN_85E540:
  LDY.B $3A,X                               ; $85E540 |
  LDA.W $0054,Y                             ; $85E542 |
  STA.B $00                                 ; $85E545 |
  LDA.B $00                                 ; $85E547 |
  STA.W $4204                               ; $85E549 |
  SEP #$20                                  ; $85E54C |
  LDA.B #$05                                ; $85E54E |
  STA.W $4206                               ; $85E550 |
  REP #$20                                  ; $85E553 |
  LDA.W $0004,Y                             ; $85E555 |
  AND.W #$0020                              ; $85E558 |
  BNE CODE_85E570                           ; $85E55B |
  LDA.W $1968                               ; $85E55D |
  STA.B $04,X                               ; $85E560 |
  LDA.W $0009,Y                             ; $85E562 |
  CLC                                       ; $85E565 |
  ADC.W #$0006                              ; $85E566 |
  CLC                                       ; $85E569 |
  ADC.B $00                                 ; $85E56A |
  STA.B $09,X                               ; $85E56C |
  BRA CODE_85E584                           ; $85E56E |

CODE_85E570:
  LDA.W #$2020                              ; $85E570 |
  ORA.W $1968                               ; $85E573 |
  STA.B $04,X                               ; $85E576 |
  LDA.W $0009,Y                             ; $85E578 |
  SEC                                       ; $85E57B |
  SBC.W #$0006                              ; $85E57C |
  SEC                                       ; $85E57F |
  SBC.B $00                                 ; $85E580 |
  STA.B $09,X                               ; $85E582 |

CODE_85E584:
  LDA.W $0022,Y                             ; $85E584 |
  CMP.W #$0008                              ; $85E587 |
  BEQ CODE_85E595                           ; $85E58A |
  LDA.W $000D,Y                             ; $85E58C |
  SEC                                       ; $85E58F |
  SBC.W #$0004                              ; $85E590 |
  BRA CODE_85E59C                           ; $85E593 |

CODE_85E595:
  LDA.W $000D,Y                             ; $85E595 |
  SEC                                       ; $85E598 |
  SBC.W #$0009                              ; $85E599 |

CODE_85E59C:
  STA.B $0D,X                               ; $85E59C |
  LDA.W $4214                               ; $85E59E |
  STA.B $44,X                               ; $85E5A1 |
  STZ.B $48,X                               ; $85E5A3 |
  RTS                                       ; $85E5A5 |

CODE_FN_85E5A6:
  LDY.B $3A,X                               ; $85E5A6 |
  LDA.W $0054,Y                             ; $85E5A8 |
  STA.B $00                                 ; $85E5AB |
  LDA.B $00                                 ; $85E5AD |
  STA.W $4204                               ; $85E5AF |
  SEP #$20                                  ; $85E5B2 |
  LDA.B #$05                                ; $85E5B4 |
  STA.W $4206                               ; $85E5B6 |
  REP #$20                                  ; $85E5B9 |
  LDA.W $000D,Y                             ; $85E5BB |
  SEC                                       ; $85E5BE |
  SBC.W #$0014                              ; $85E5BF |
  SEC                                       ; $85E5C2 |
  SBC.B $00                                 ; $85E5C3 |
  STA.B $0D,X                               ; $85E5C5 |
  LDA.W $0004,Y                             ; $85E5C7 |
  AND.W #$0020                              ; $85E5CA |
  BNE CODE_85E5DF                           ; $85E5CD |
  LDA.W $1968                               ; $85E5CF |
  STA.B $04,X                               ; $85E5D2 |
  LDA.W $0009,Y                             ; $85E5D4 |
  CLC                                       ; $85E5D7 |
  ADC.W #$0002                              ; $85E5D8 |
  STA.B $09,X                               ; $85E5DB |
  BRA CODE_85E5F0                           ; $85E5DD |

CODE_85E5DF:
  LDA.W #$2020                              ; $85E5DF |
  ORA.W $1968                               ; $85E5E2 |
  STA.B $04,X                               ; $85E5E5 |
  LDA.W $0009,Y                             ; $85E5E7 |
  SEC                                       ; $85E5EA |
  SBC.W #$0002                              ; $85E5EB |
  STA.B $09,X                               ; $85E5EE |

CODE_85E5F0:
  LDA.W $4214                               ; $85E5F0 |
  STA.B $48,X                               ; $85E5F3 |
  STZ.B $44,X                               ; $85E5F5 |
  RTS                                       ; $85E5F7 |

CODE_FN_85E5F8:
  LDY.B $3A,X                               ; $85E5F8 |
  LDA.W $0054,Y                             ; $85E5FA |
  STA.B $00                                 ; $85E5FD |
  LDA.W $0004,Y                             ; $85E5FF |
  AND.W #$0020                              ; $85E602 |
  BNE CODE_85E61D                           ; $85E605 |
  LDA.W $1968                               ; $85E607 |
  STA.B $04,X                               ; $85E60A |
  LDA.B $09,X                               ; $85E60C |
  SEC                                       ; $85E60E |
  SBC.W $0009,Y                             ; $85E60F |
  SEC                                       ; $85E612 |
  SBC.W #$0006                              ; $85E613 |
  STA.B $08                                 ; $85E616 |
  SEC                                       ; $85E618 |
  SBC.B $00                                 ; $85E619 |
  BRA CODE_85E634                           ; $85E61B |

CODE_85E61D:
  LDA.W #$2020                              ; $85E61D |
  ORA.W $1968                               ; $85E620 |
  STA.B $04,X                               ; $85E623 |
  LDA.B $09,X                               ; $85E625 |
  SEC                                       ; $85E627 |
  SBC.W $0009,Y                             ; $85E628 |
  CLC                                       ; $85E62B |
  ADC.W #$0006                              ; $85E62C |
  STA.B $08                                 ; $85E62F |
  CLC                                       ; $85E631 |
  ADC.B $00                                 ; $85E632 |

CODE_85E634:
  SEP #$20                                  ; $85E634 |
  STA.W $0079,Y                             ; $85E636 |
  LDA.B #$00                                ; $85E639 |
  STA.W $0078,Y                             ; $85E63B |
  REP #$20                                  ; $85E63E |
  LDA.B $08                                 ; $85E640 |
  BPL CODE_85E648                           ; $85E642 |
  EOR.W #$FFFF                              ; $85E644 |
  INC A                                     ; $85E647 |

CODE_85E648:
  STA.W $4204                               ; $85E648 |
  SEP #$20                                  ; $85E64B |
  LDA.B #$05                                ; $85E64D |
  STA.W $4206                               ; $85E64F |
  REP #$20                                  ; $85E652 |
  LDA.W $0022,Y                             ; $85E654 |
  CMP.W #$0008                              ; $85E657 |
  BEQ CODE_85E668                           ; $85E65A |
  LDA.B $0D,X                               ; $85E65C |
  SEC                                       ; $85E65E |
  SBC.W $000D,Y                             ; $85E65F |
  CLC                                       ; $85E662 |
  ADC.W #$0004                              ; $85E663 |
  BRA CODE_85E672                           ; $85E666 |

CODE_85E668:
  LDA.B $0D,X                               ; $85E668 |
  SEC                                       ; $85E66A |
  SBC.W $000D,Y                             ; $85E66B |
  CLC                                       ; $85E66E |
  ADC.W #$0009                              ; $85E66F |

CODE_85E672:
  SEP #$20                                  ; $85E672 |
  STA.W $007B,Y                             ; $85E674 |
  LDA.B #$00                                ; $85E677 |
  STA.W $007A,Y                             ; $85E679 |
  REP #$20                                  ; $85E67C |
  LDA.W #$0000                              ; $85E67E |
  STA.W $0028,Y                             ; $85E681 |
  LDA.W $4214                               ; $85E684 |
  STA.B $44,X                               ; $85E687 |
  STZ.B $48,X                               ; $85E689 |
  RTS                                       ; $85E68B |

CODE_FN_85E68C:
  LDY.B $3A,X                               ; $85E68C |
  LDA.W $0054,Y                             ; $85E68E |
  STA.B $00                                 ; $85E691 |
  LDA.B $0D,X                               ; $85E693 |
  SEC                                       ; $85E695 |
  SBC.W $000D,Y                             ; $85E696 |
  CLC                                       ; $85E699 |
  ADC.W #$0014                              ; $85E69A |
  STA.B $08                                 ; $85E69D |
  CLC                                       ; $85E69F |
  ADC.B $00                                 ; $85E6A0 |
  SEP #$20                                  ; $85E6A2 |
  STA.W $007B,Y                             ; $85E6A4 |
  LDA.B #$00                                ; $85E6A7 |
  STA.W $007A,Y                             ; $85E6A9 |
  REP #$20                                  ; $85E6AC |
  LDA.B $08                                 ; $85E6AE |
  BPL CODE_85E6B6                           ; $85E6B0 |
  EOR.W #$FFFF                              ; $85E6B2 |
  INC A                                     ; $85E6B5 |

CODE_85E6B6:
  STA.W $4204                               ; $85E6B6 |
  SEP #$20                                  ; $85E6B9 |
  LDA.B #$05                                ; $85E6BB |
  STA.W $4206                               ; $85E6BD |
  REP #$20                                  ; $85E6C0 |
  LDA.W $0004,Y                             ; $85E6C2 |
  AND.W #$0020                              ; $85E6C5 |
  BNE CODE_85E6ED                           ; $85E6C8 |
  LDA.W $1968                               ; $85E6CA |
  STA.B $04,X                               ; $85E6CD |
  LDA.B $09,X                               ; $85E6CF |
  SEC                                       ; $85E6D1 |
  SBC.W $0009,Y                             ; $85E6D2 |
  SEC                                       ; $85E6D5 |
  SBC.W #$0002                              ; $85E6D6 |
  SEP #$20                                  ; $85E6D9 |
  STA.W $0079,Y                             ; $85E6DB |
  LDA.B #$00                                ; $85E6DE |
  STA.W $0078,Y                             ; $85E6E0 |
  REP #$20                                  ; $85E6E3 |
  LDA.W #$0000                              ; $85E6E5 |
  STA.W $0026,Y                             ; $85E6E8 |
  BRA CODE_85E711                           ; $85E6EB |

CODE_85E6ED:
  LDA.W #$2020                              ; $85E6ED |
  ORA.W $1968                               ; $85E6F0 |
  STA.B $04,X                               ; $85E6F3 |
  LDA.B $09,X                               ; $85E6F5 |
  SEC                                       ; $85E6F7 |
  SBC.W $0009,Y                             ; $85E6F8 |
  CLC                                       ; $85E6FB |
  ADC.W #$0002                              ; $85E6FC |
  SEP #$20                                  ; $85E6FF |
  STA.W $0079,Y                             ; $85E701 |
  LDA.B #$00                                ; $85E704 |
  STA.W $0078,Y                             ; $85E706 |
  REP #$20                                  ; $85E709 |
  LDA.W #$0000                              ; $85E70B |
  STA.W $0026,Y                             ; $85E70E |

CODE_85E711:
  LDA.W $4214                               ; $85E711 |
  STA.B $48,X                               ; $85E714 |
  STZ.B $44,X                               ; $85E716 |
  RTS                                       ; $85E718 |

CODE_FN_85E719:
  LDY.B $3A,X                               ; $85E719 |
  LDA.W $0002,Y                             ; $85E71B |
  STA.B $02,X                               ; $85E71E |
  LDA.W $0006,Y                             ; $85E720 |
  STA.B $06,X                               ; $85E723 |
  LDA.W #$8080                              ; $85E725 |
  STA.B $22,X                               ; $85E728 |
  RTS                                       ; $85E72A |

CODE_85E72B:
  JSL.L CODE_FL_97FC80                      ; $85E72B |
  JSL.L CODE_FL_86C855                      ; $85E72F |
  LDA.B $1A,X                               ; $85E733 |
  PHX                                       ; $85E735 |
  ASL A                                     ; $85E736 |
  TAX                                       ; $85E737 |
  LDA.L PTR16_85E742,X                      ; $85E738 |
  PLX                                       ; $85E73C |
  STA.B $00                                 ; $85E73D |
  JMP.W ($0000)                             ; $85E73F |

PTR16_85E742:
  dw CODE_85E746                            ; $85E742 |
  dw CODE_85E788                            ; $85E744 |

CODE_85E746:
  JSR.W CODE_FN_85E07F                      ; $85E746 |
  BCC CODE_85E74C                           ; $85E749 |
  RTL                                       ; $85E74B |

CODE_85E74C:
  JSL.L CODE_FL_85F9E6                      ; $85E74C |
  LDA.B $32,X                               ; $85E750 |
  BIT.W #$E000                              ; $85E752 |
  BEQ CODE_85E766                           ; $85E755 |
  LDY.W $1C40                               ; $85E757 |
  LDA.W $0022,Y                             ; $85E75A |
  BIT.W #$2000                              ; $85E75D |
  BEQ CODE_85E766                           ; $85E760 |
  JML.L CODE_FL_86CA36                      ; $85E762 |

CODE_85E766:
  JSL.L CODE_FL_86C855                      ; $85E766 |
  LDA.B $20,X                               ; $85E76A |
  BEQ CODE_85E78D                           ; $85E76C |
  LDA.B $09,X                               ; $85E76E |
  STA.B $08                                 ; $85E770 |
  LDA.B $0D,X                               ; $85E772 |
  STA.B $0A                                 ; $85E774 |
  JSL.L CODE_FL_80CA5E                      ; $85E776 |
  BEQ CODE_85E787                           ; $85E77A |
  STZ.B $06,X                               ; $85E77C |
  LDA.W #$0040                              ; $85E77E |
  JSL.L CODE_FL_86CAEE                      ; $85E781 |
  INC.B $1A,X                               ; $85E785 |

CODE_85E787:
  RTL                                       ; $85E787 |

CODE_85E788:
  LDA.B $20,X                               ; $85E788 |
  BEQ CODE_85E78D                           ; $85E78A |
  RTL                                       ; $85E78C |

CODE_85E78D:
  JML.L CODE_FL_86CA36                      ; $85E78D |

CODE_85E791:
  LDA.B $1A,X                               ; $85E791 |
  PHX                                       ; $85E793 |
  ASL A                                     ; $85E794 |
  TAX                                       ; $85E795 |
  LDA.L PTR16_85E7A0,X                      ; $85E796 |
  PLX                                       ; $85E79A |
  STA.B $00                                 ; $85E79B |
  JMP.W ($0000)                             ; $85E79D |

PTR16_85E7A0:
  dw CODE_85E7A6                            ; $85E7A0 |
  dw CODE_85E7E0                            ; $85E7A2 |
  dw CODE_JP_85E1BA                         ; $85E7A4 |

CODE_85E7A6:
  LDY.B $3A,X                               ; $85E7A6 |
  LDA.W #$E000                              ; $85E7A8 |
  STA.B $34,X                               ; $85E7AB |
  LDA.W #$0005                              ; $85E7AD |
  STA.B $4E,X                               ; $85E7B0 |
  LDA.W #$000E                              ; $85E7B2 |
  STA.B $2E,X                               ; $85E7B5 |
  LDA.W #$0006                              ; $85E7B7 |
  STA.B $30,X                               ; $85E7BA |
  LDA.W #$0001                              ; $85E7BC |
  STA.B $00                                 ; $85E7BF |
  LDA.W $00A4,Y                             ; $85E7C1 |
  AND.W #$0020                              ; $85E7C4 |
  BEQ CODE_85E7D0                           ; $85E7C7 |
  DEC.B $00                                 ; $85E7C9 |
  DEC.B $00                                 ; $85E7CB |
  LDA.W #$2020                              ; $85E7CD |

CODE_85E7D0:
  ORA.W $1968                               ; $85E7D0 |
  STA.B $04,X                               ; $85E7D3 |
  LDA.B $00                                 ; $85E7D5 |
  STA.B $27,X                               ; $85E7D7 |
  LDA.W $0002,Y                             ; $85E7D9 |
  STA.B $02,X                               ; $85E7DC |
  INC.B $1A,X                               ; $85E7DE |

CODE_85E7E0:
  LDY.B $3A,X                               ; $85E7E0 |
  LDA.B $40,X                               ; $85E7E2 |
  CMP.W $0022,Y                             ; $85E7E4 |
  BEQ CODE_85E7EC                           ; $85E7E7 |
  JMP.W CODE_JP_85E1BA                      ; $85E7E9 |

CODE_85E7EC:
  LDA.W $0006,Y                             ; $85E7EC |
  STA.B $06,X                               ; $85E7EF |
  LDA.W $000D,Y                             ; $85E7F1 |
  SEC                                       ; $85E7F4 |
  SBC.W #$0007                              ; $85E7F5 |
  STA.B $0D,X                               ; $85E7F8 |
  LDA.W $0054,Y                             ; $85E7FA |
  AND.W #$0007                              ; $85E7FD |
  STA.B $12                                 ; $85E800 |
  LDA.W $0054,Y                             ; $85E802 |
  AND.W #$00F8                              ; $85E805 |
  LSR A                                     ; $85E808 |
  LSR A                                     ; $85E809 |
  TAY                                       ; $85E80A |
  LDA.B $04,X                               ; $85E80B |
  AND.W #$2020                              ; $85E80D |
  BEQ CODE_85E826                           ; $85E810 |
  LDA.W LOOSE_OP_009204,Y                   ; $85E812 |
  LDY.B $3A,X                               ; $85E815 |
  CLC                                       ; $85E817 |
  ADC.W $0009,Y                             ; $85E818 |
  SEC                                       ; $85E81B |
  SBC.B $12                                 ; $85E81C |
  SEC                                       ; $85E81E |
  SBC.W $00B0,Y                             ; $85E81F |
  STA.B $09,X                               ; $85E822 |
  BRA CODE_85E838                           ; $85E824 |

CODE_85E826:
  LDA.W LOOSE_OP_0091F8,Y                   ; $85E826 |
  LDY.B $3A,X                               ; $85E829 |
  CLC                                       ; $85E82B |
  ADC.W $0009,Y                             ; $85E82C |
  CLC                                       ; $85E82F |
  ADC.B $12                                 ; $85E830 |
  CLC                                       ; $85E832 |
  ADC.W $00B0,Y                             ; $85E833 |
  STA.B $09,X                               ; $85E836 |

CODE_85E838:
  PHY                                       ; $85E838 |
  JSL.L CODE_FL_85F9CA                      ; $85E839 |
  PLY                                       ; $85E83D |
  LDA.W $0054,Y                             ; $85E83E |
  AND.W #$00F8                              ; $85E841 |
  LSR A                                     ; $85E844 |
  LSR A                                     ; $85E845 |
  TAY                                       ; $85E846 |
  LDA.W LOOSE_OP_0091DE,Y                   ; $85E847 |
  STA.B $10                                 ; $85E84A |
  LDY.B $3A,X                               ; $85E84C |
  LDA.W $0052,Y                             ; $85E84E |
  LSR A                                     ; $85E851 |
  BCS CODE_85E859                           ; $85E852 |
  LDA.B $10                                 ; $85E854 |
  STA.B $00,X                               ; $85E856 |
  RTL                                       ; $85E858 |

CODE_85E859:
  STZ.B $00,X                               ; $85E859 |
  RTL                                       ; $85E85B |

CODE_85E85C:
  LDA.B $1A,X                               ; $85E85C |
  PHX                                       ; $85E85E |
  ASL A                                     ; $85E85F |
  TAX                                       ; $85E860 |
  LDA.L PTR16_85E86B,X                      ; $85E861 |
  PLX                                       ; $85E865 |
  STA.B $00                                 ; $85E866 |
  JMP.W ($0000)                             ; $85E868 |

PTR16_85E86B:
  dw CODE_85E871                            ; $85E86B |
  dw CODE_85E88E                            ; $85E86D |
  dw CODE_JP_85E1BA                         ; $85E86F |

CODE_85E871:
  LDY.B $3A,X                               ; $85E871 |
  LDA.W $0002,Y                             ; $85E873 |
  STA.B $02,X                               ; $85E876 |
  LDA.W #$E000                              ; $85E878 |
  STA.B $34,X                               ; $85E87B |
  LDA.W #$0005                              ; $85E87D |
  STA.B $4E,X                               ; $85E880 |
  LDA.W #$0006                              ; $85E882 |
  STA.B $2E,X                               ; $85E885 |
  LDA.W #$000E                              ; $85E887 |
  STA.B $30,X                               ; $85E88A |
  INC.B $1A,X                               ; $85E88C |

CODE_85E88E:
  LDY.B $3A,X                               ; $85E88E |
  LDA.B $40,X                               ; $85E890 |
  CMP.W $0022,Y                             ; $85E892 |
  BEQ CODE_85E89A                           ; $85E895 |
  JMP.W CODE_JP_85E1BA                      ; $85E897 |

CODE_85E89A:
  LDA.W $0006,Y                             ; $85E89A |
  STA.B $06,X                               ; $85E89D |
  LDA.W $0004,Y                             ; $85E89F |
  AND.W #$0020                              ; $85E8A2 |
  BEQ CODE_85E8BA                           ; $85E8A5 |
  LDA.W $1968                               ; $85E8A7 |
  ORA.W #$2020                              ; $85E8AA |
  STA.B $04,X                               ; $85E8AD |
  LDA.W $0009,Y                             ; $85E8AF |
  SEC                                       ; $85E8B2 |
  SBC.W $00B0,Y                             ; $85E8B3 |
  STA.B $09,X                               ; $85E8B6 |
  BRA CODE_85E8C8                           ; $85E8B8 |

CODE_85E8BA:
  LDA.W $1968                               ; $85E8BA |
  STA.B $04,X                               ; $85E8BD |
  LDA.W $0009,Y                             ; $85E8BF |
  CLC                                       ; $85E8C2 |
  ADC.W $00B0,Y                             ; $85E8C3 |
  STA.B $09,X                               ; $85E8C6 |

CODE_85E8C8:
  LDA.W $0054,Y                             ; $85E8C8 |
  AND.W #$0007                              ; $85E8CB |
  STA.B $12                                 ; $85E8CE |
  LDA.W $0054,Y                             ; $85E8D0 |
  AND.W #$00F8                              ; $85E8D3 |
  LSR A                                     ; $85E8D6 |
  LSR A                                     ; $85E8D7 |
  TAY                                       ; $85E8D8 |
  LDA.W LOOSE_OP_009210,Y                   ; $85E8D9 |
  LDY.B $3A,X                               ; $85E8DC |
  CLC                                       ; $85E8DE |
  ADC.W $000D,Y                             ; $85E8DF |
  SEC                                       ; $85E8E2 |
  SBC.B $12                                 ; $85E8E3 |
  SEC                                       ; $85E8E5 |
  SBC.W $00B2,Y                             ; $85E8E6 |
  STA.B $0D,X                               ; $85E8E9 |
  PHY                                       ; $85E8EB |
  JSL.L CODE_FL_85F9CA                      ; $85E8EC |
  PLY                                       ; $85E8F0 |
  LDA.W $0054,Y                             ; $85E8F1 |
  AND.W #$00F8                              ; $85E8F4 |
  LSR A                                     ; $85E8F7 |
  LSR A                                     ; $85E8F8 |
  TAY                                       ; $85E8F9 |
  LDA.W LOOSE_OP_0091EA,Y                   ; $85E8FA |
  STA.B $10                                 ; $85E8FD |
  LDY.B $3A,X                               ; $85E8FF |
  LDA.W $0052,Y                             ; $85E901 |
  LSR A                                     ; $85E904 |
  BCS CODE_85E90C                           ; $85E905 |
  LDA.B $10                                 ; $85E907 |
  STA.B $00,X                               ; $85E909 |
  RTL                                       ; $85E90B |

CODE_85E90C:
  STZ.B $00,X                               ; $85E90C |
  RTL                                       ; $85E90E |

CODE_85E90F:
  JSL.L CODE_FL_86C407                      ; $85E90F |
  PHX                                       ; $85E913 |
  ASL A                                     ; $85E914 |
  TAX                                       ; $85E915 |
  LDA.L PTR16_85E920,X                      ; $85E916 |
  PLX                                       ; $85E91A |
  STA.B $00                                 ; $85E91B |
  JMP.W ($0000)                             ; $85E91D |

PTR16_85E920:
  dw CODE_85E926                            ; $85E920 |
  dw CODE_85E95E                            ; $85E922 |
  dw CODE_85E9E1                            ; $85E924 |

CODE_85E926:
  INC.B $1A,X                               ; $85E926 |
  LDA.B $3A,X                               ; $85E928 |
  STA.B $40,X                               ; $85E92A |
  TAY                                       ; $85E92C |
  LDA.W $0006,Y                             ; $85E92D |
  STA.B $06,X                               ; $85E930 |
  LDA.W #$A883                              ; $85E932 |
  STA.B $00,X                               ; $85E935 |
  STZ.B $48,X                               ; $85E937 |
  LDA.W #$C000                              ; $85E939 |
  STA.B $22,X                               ; $85E93C |
  LDA.W #$8200                              ; $85E93E |
  STA.B $34,X                               ; $85E941 |
  LDA.W #$0004                              ; $85E943 |
  STA.B $2E,X                               ; $85E946 |
  LDA.W #$0008                              ; $85E948 |
  STA.B $30,X                               ; $85E94B |
  LDA.W #$0017                              ; $85E94D |
  STA.B $4E,X                               ; $85E950 |
  STZ.B $3E,X                               ; $85E952 |
  LDA.W #$0050                              ; $85E954 |
  STA.B $4C,X                               ; $85E957 |
  JSL.L CODE_FL_85A63A                      ; $85E959 |
  RTL                                       ; $85E95D |

CODE_85E95E:
  JSR.W CODE_FN_85E07F                      ; $85E95E |
  BCC CODE_85E964                           ; $85E961 |
  RTL                                       ; $85E963 |

CODE_85E964:
  JSL.L CODE_FL_85F9E6                      ; $85E964 |
  LDY.B $3A,X                               ; $85E968 |
  LDA.B $32,X                               ; $85E96A |
  BIT.W #$4000                              ; $85E96C |
  BNE CODE_85E9BE                           ; $85E96F |
  DEC.B $44,X                               ; $85E971 |
  BEQ CODE_85E9BE                           ; $85E973 |
  JSL.L CODE_FL_85A63A                      ; $85E975 |
  LDA.W $1C16                               ; $85E979 |
  BNE CODE_85E982                           ; $85E97C |
  RTL                                       ; $85E97E |

CODE_85E97F:
  STZ.B $27,X                               ; $85E97F |

CODE_85E981:
  RTL                                       ; $85E981 |

CODE_85E982:
  LDA.W $1C24                               ; $85E982 |
  BPL CODE_85E98C                           ; $85E985 |
  CMP.W #$FFF4                              ; $85E987 |
  BCC CODE_85E9BE                           ; $85E98A |

CODE_85E98C:
  LDA.B $26,X                               ; $85E98C |
  BMI CODE_85E993                           ; $85E98E |
  LSR A                                     ; $85E990 |
  BRA CODE_85E99F                           ; $85E991 |

CODE_85E993:
  CMP.W #$FFFF                              ; $85E993 |
  BEQ CODE_85E99C                           ; $85E996 |
  SEC                                       ; $85E998 |
  ROR A                                     ; $85E999 |
  BRA CODE_85E99F                           ; $85E99A |

CODE_85E99C:
  LDA.W #$0000                              ; $85E99C |

CODE_85E99F:
  STA.B $26,X                               ; $85E99F |
  LDA.B $3E,X                               ; $85E9A1 |
  CMP.W #$0003                              ; $85E9A3 |
  BEQ CODE_85E97F                           ; $85E9A6 |
  CMP.W #$0002                              ; $85E9A8 |
  BCS CODE_85E981                           ; $85E9AB |
  ASL A                                     ; $85E9AD |
  TAY                                       ; $85E9AE |
  LDA.W CODE_009220,Y                       ; $85E9AF |
  STA.B $28,X                               ; $85E9B2 |
  LDA.W #$0011                              ; $85E9B4 |
  JSL.L push_sound_queue                    ; $85E9B7 |
  INC.B $3E,X                               ; $85E9BB |
  RTL                                       ; $85E9BD |

CODE_85E9BE:
  STZ.B $26,X                               ; $85E9BE |
  STZ.B $28,X                               ; $85E9C0 |
  STZ.B $34,X                               ; $85E9C2 |
  LDA.B $0D,X                               ; $85E9C4 |
  SEC                                       ; $85E9C6 |
  SBC.W #$0008                              ; $85E9C7 |
  STA.B $0D,X                               ; $85E9CA |
  INC.B $1A,X                               ; $85E9CC |
  LDA.W #$00D4                              ; $85E9CE |
  JSL.L CODE_FL_8089BD                      ; $85E9D1 |
  LDA.W #$0009                              ; $85E9D5 |
  STA.B $4E,X                               ; $85E9D8 |
  LDA.W #$000D                              ; $85E9DA |
  JML.L CODE_FL_86CAEE                      ; $85E9DD |

CODE_85E9E1:
  JSR.W CODE_FN_85E07F                      ; $85E9E1 |
  BCC CODE_85E9E7                           ; $85E9E4 |

CODE_85E9E6:
  RTL                                       ; $85E9E6 |

CODE_85E9E7:
  JSL.L CODE_FL_85F9E6                      ; $85E9E7 |
  LDA.B $20,X                               ; $85E9EB |
  BNE CODE_85E9E6                           ; $85E9ED |
  LDA.B $46,X                               ; $85E9EF |
  AND.W #$FDFF                              ; $85E9F1 |
  STA.B $46,X                               ; $85E9F4 |
  JML.L CODE_FL_86CA36                      ; $85E9F6 |

  LDA.B $48,X                               ; $85E9FA |
  BNE CODE_85EA0A                           ; $85E9FC |
  JSL.L CODE_FL_86B272                      ; $85E9FE |
  BCC CODE_85EA12                           ; $85EA02 |
  LDA.W #$0001                              ; $85EA04 |
  STA.B $48,X                               ; $85EA07 |
  RTS                                       ; $85EA09 |

CODE_85EA0A:
  JSL.L CODE_FL_86B29C                      ; $85EA0A |
  BCS CODE_85EA12                           ; $85EA0E |
  STZ.B $48,X                               ; $85EA10 |

CODE_85EA12:
  RTS                                       ; $85EA12 |

CODE_85EA13:
  JSL.L CODE_FL_97FC80                      ; $85EA13 |
  LDA.B $1A,X                               ; $85EA17 |
  PHX                                       ; $85EA19 |
  ASL A                                     ; $85EA1A |
  TAX                                       ; $85EA1B |
  LDA.L PTR16_85EA26,X                      ; $85EA1C |
  PLX                                       ; $85EA20 |
  STA.B $00                                 ; $85EA21 |
  JMP.W ($0000)                             ; $85EA23 |

PTR16_85EA26:
  dw CODE_85EA2A                            ; $85EA26 |
  dw CODE_85E1B5                            ; $85EA28 |

CODE_85EA2A:
  JSR.W CODE_FN_85E07F                      ; $85EA2A |
  BCC CODE_85EA30                           ; $85EA2D |
  RTL                                       ; $85EA2F |

CODE_85EA30:
  JSL.L CODE_FL_85F9E6                      ; $85EA30 |
  LDA.B $32,X                               ; $85EA34 |
  BIT.W #$4000                              ; $85EA36 |
  BEQ CODE_85EA46                           ; $85EA39 |
  LDY.W $1C40                               ; $85EA3B |
  LDA.W $0022,Y                             ; $85EA3E |
  BIT.W #$2000                              ; $85EA41 |
  BNE CODE_85EA5C                           ; $85EA44 |

CODE_85EA46:
  JSL.L CODE_FL_86C855                      ; $85EA46 |
  LDA.B $20,X                               ; $85EA4A |
  BEQ CODE_85EA66                           ; $85EA4C |
  LDA.B $09,X                               ; $85EA4E |
  STA.B $08                                 ; $85EA50 |
  LDA.B $0D,X                               ; $85EA52 |
  STA.B $0A                                 ; $85EA54 |
  JSL.L CODE_FL_80CA5E                      ; $85EA56 |
  BEQ CODE_85EA65                           ; $85EA5A |

CODE_85EA5C:
  LDA.W #$000F                              ; $85EA5C |
  JSL.L CODE_FL_86CAEE                      ; $85EA5F |
  INC.B $1A,X                               ; $85EA63 |

CODE_85EA65:
  RTL                                       ; $85EA65 |

CODE_85EA66:
  JML.L CODE_FL_86CA36                      ; $85EA66 |

CODE_85EA6A:
  JSL.L CODE_FL_97FC80                      ; $85EA6A |
  LDA.B $1A,X                               ; $85EA6E |
  PHX                                       ; $85EA70 |
  ASL A                                     ; $85EA71 |
  TAX                                       ; $85EA72 |
  LDA.L PTR16_85EA7D,X                      ; $85EA73 |
  PLX                                       ; $85EA77 |
  STA.B $00                                 ; $85EA78 |
  JMP.W ($0000)                             ; $85EA7A |

PTR16_85EA7D:
  dw CODE_85EA81                            ; $85EA7D |
  dw CODE_85EABB                            ; $85EA7F |

CODE_85EA81:
  JSR.W CODE_FN_85E07F                      ; $85EA81 |
  BCC CODE_85EA87                           ; $85EA84 |
  RTL                                       ; $85EA86 |

CODE_85EA87:
  JSL.L CODE_FL_85F9E6                      ; $85EA87 |
  LDA.B $32,X                               ; $85EA8B |
  BIT.W #$E000                              ; $85EA8D |
  BEQ CODE_85EA9D                           ; $85EA90 |
  LDY.W $1C40                               ; $85EA92 |
  LDA.W $0022,Y                             ; $85EA95 |
  BIT.W #$2000                              ; $85EA98 |
  BNE CODE_85EABF                           ; $85EA9B |

CODE_85EA9D:
  JSL.L CODE_FL_86C855                      ; $85EA9D |
  LDA.B $09,X                               ; $85EAA1 |
  STA.B $08                                 ; $85EAA3 |
  LDA.B $0D,X                               ; $85EAA5 |
  STA.B $0A                                 ; $85EAA7 |
  JSL.L CODE_FL_80CA5E                      ; $85EAA9 |
  BEQ CODE_85EABA                           ; $85EAAD |
  STZ.B $06,X                               ; $85EAAF |
  LDA.W #$0040                              ; $85EAB1 |
  JSL.L CODE_FL_86CAEE                      ; $85EAB4 |
  INC.B $1A,X                               ; $85EAB8 |

CODE_85EABA:
  RTL                                       ; $85EABA |

CODE_85EABB:
  LDA.B $20,X                               ; $85EABB |
  BNE CODE_85EABA                           ; $85EABD |

CODE_85EABF:
  JML.L CODE_FL_86CA36                      ; $85EABF |

CODE_85EAC3:
  LDA.B $1A,X                               ; $85EAC3 |
  PHX                                       ; $85EAC5 |
  ASL A                                     ; $85EAC6 |
  TAX                                       ; $85EAC7 |
  LDA.L PTR16_85EAD2,X                      ; $85EAC8 |
  PLX                                       ; $85EACC |
  STA.B $00                                 ; $85EACD |
  JMP.W ($0000)                             ; $85EACF |

PTR16_85EAD2:
  dw CODE_85EAD6                            ; $85EAD2 |
  dw CODE_85EB3C                            ; $85EAD4 |

CODE_85EAD6:
  LDY.B $3A,X                               ; $85EAD6 |
  LDA.W $0022,Y                             ; $85EAD8 |
  CMP.W #$0008                              ; $85EADB |
  BEQ CODE_85EAE9                           ; $85EADE |
  CMP.W #$0011                              ; $85EAE0 |
  BEQ CODE_85EAE9                           ; $85EAE3 |
  JML.L CODE_FL_86CA36                      ; $85EAE5 |

CODE_85EAE9:
  LDY.B $3A,X                               ; $85EAE9 |
  LDA.W #$95EE                              ; $85EAEB |
  STA.B $00,X                               ; $85EAEE |
  LDA.W $0058,Y                             ; $85EAF0 |
  TAY                                       ; $85EAF3 |
  LDA.B $3C,X                               ; $85EAF4 |
  JSL.L CODE_FL_8AB51A                      ; $85EAF6 |
  LDA.B $05                                 ; $85EAFA |
  BMI CODE_85EB04                           ; $85EAFC |
  LSR.B $05                                 ; $85EAFE |
  LSR.B $05                                 ; $85EB00 |
  BRA CODE_85EB0A                           ; $85EB02 |

CODE_85EB04:
  SEC                                       ; $85EB04 |
  ROR.B $05                                 ; $85EB05 |
  SEC                                       ; $85EB07 |
  ROR.B $05                                 ; $85EB08 |

CODE_85EB0A:
  LDY.B $3A,X                               ; $85EB0A |
  LDA.W $0009,Y                             ; $85EB0C |
  CLC                                       ; $85EB0F |
  ADC.B $01                                 ; $85EB10 |
  STA.B $09,X                               ; $85EB12 |
  LDA.W $000D,Y                             ; $85EB14 |
  CLC                                       ; $85EB17 |
  ADC.B $05                                 ; $85EB18 |
  SEC                                       ; $85EB1A |
  SBC.W #$000C                              ; $85EB1B |
  STA.B $0D,X                               ; $85EB1E |
  LDA.B $3C,X                               ; $85EB20 |
  CLC                                       ; $85EB22 |
  ADC.W #$0020                              ; $85EB23 |
  CMP.W #$01FF                              ; $85EB26 |
  BCC CODE_85EB32                           ; $85EB29 |
  LDA.W #$001C                              ; $85EB2B |
  JSL.L push_sound_queue                    ; $85EB2E |

CODE_85EB32:
  AND.W #$01FF                              ; $85EB32 |
  STA.B $3C,X                               ; $85EB35 |
  JSL.L CODE_FL_85F9E6                      ; $85EB37 |
  RTL                                       ; $85EB3B |

CODE_85EB3C:
  LDA.B $20,X                               ; $85EB3C |
  BEQ CODE_85EB41                           ; $85EB3E |
  RTL                                       ; $85EB40 |

CODE_85EB41:
  JML.L CODE_FL_86CA36                      ; $85EB41 |

CODE_85EB45:
  LDY.B $A6                                 ; $85EB45 |
  LDA.W $0000,Y                             ; $85EB47 |
  STA.B $00,X                               ; $85EB4A |
  TDC                                       ; $85EB4C |
  STA.W $0000,Y                             ; $85EB4D |
  LDA.W $0B24                               ; $85EB50 |
  LDA.W $0009,Y                             ; $85EB53 |
  STA.B $09,X                               ; $85EB56 |
  LDA.W $000D,Y                             ; $85EB58 |
  CLC                                       ; $85EB5B |
  ADC.W $0B60                               ; $85EB5C |
  STA.B $0D,X                               ; $85EB5F |
  LDA.W $0B5C                               ; $85EB61 |
  BIT.W #$8000                              ; $85EB64 |
  BEQ CODE_85EB69                           ; $85EB67 |

CODE_85EB69:
  STZ.B $00                                 ; $85EB69 |
  LDA.W $0004,Y                             ; $85EB6B |
  BIT.W #$0020                              ; $85EB6E |
  BEQ CODE_85EB78                           ; $85EB71 |
  INC.B $00                                 ; $85EB73 |
  ORA.W #$2020                              ; $85EB75 |

CODE_85EB78:
  STA.B $04,X                               ; $85EB78 |
  LDA.W $0B5C                               ; $85EB7A |
  BIT.W #$4000                              ; $85EB7D |
  BEQ CODE_85EB85                           ; $85EB80 |
  ORA.W #$8000                              ; $85EB82 |

CODE_85EB85:
  STA.B $10                                 ; $85EB85 |
  LSR.B $00                                 ; $85EB87 |
  BCC CODE_85EB8F                           ; $85EB89 |
  EOR.W #$FFFF                              ; $85EB8B |
  INC A                                     ; $85EB8E |

CODE_85EB8F:
  CLC                                       ; $85EB8F |
  ADC.W $0009,Y                             ; $85EB90 |
  STA.B $09,X                               ; $85EB93 |
  RTL                                       ; $85EB95 |

CODE_85EB96:
  LDA.B $1A,X                               ; $85EB96 |
  PHX                                       ; $85EB98 |
  ASL A                                     ; $85EB99 |
  TAX                                       ; $85EB9A |
  LDA.L PTR16_85EBA5,X                      ; $85EB9B |
  PLX                                       ; $85EB9F |
  STA.B $00                                 ; $85EBA0 |
  JMP.W ($0000)                             ; $85EBA2 |

PTR16_85EBA5:
  dw CODE_85EBA9                            ; $85EBA5 |
  dw CODE_85EBE7                            ; $85EBA7 |

CODE_85EBA9:
  LDY.B $3A,X                               ; $85EBA9 |
  LDA.B $3C,X                               ; $85EBAB |
  CMP.W $0022,Y                             ; $85EBAD |
  BEQ CODE_85EBB5                           ; $85EBB0 |

CODE_85EBB2:
  JMP.W CODE_JP_85EBE3                      ; $85EBB2 |

CODE_85EBB5:
  LDA.W $0044,Y                             ; $85EBB5 |
  CMP.W #$0001                              ; $85EBB8 |
  BNE CODE_85EBB2                           ; $85EBBB |
  LDA.B $3E,X                               ; $85EBBD |
  BEQ CODE_85EBC4                           ; $85EBBF |
  DEC.B $3E,X                               ; $85EBC1 |
  RTL                                       ; $85EBC3 |

CODE_85EBC4:
  JSL.L CODE_FL_97FC80                      ; $85EBC4 |
  JSL.L CODE_FL_85F9E6                      ; $85EBC8 |
  LDY.B $3A,X                               ; $85EBCC |
  LDA.B $44,X                               ; $85EBCE |
  CLC                                       ; $85EBD0 |
  ADC.W $0009,Y                             ; $85EBD1 |
  STA.B $09,X                               ; $85EBD4 |
  LDA.B $46,X                               ; $85EBD6 |
  CLC                                       ; $85EBD8 |
  ADC.W $000D,Y                             ; $85EBD9 |
  CLC                                       ; $85EBDC |
  ADC.W #$FFEC                              ; $85EBDD |
  STA.B $0D,X                               ; $85EBE0 |
  RTL                                       ; $85EBE2 |

CODE_JP_85EBE3:
  JML.L CODE_FL_86CA36                      ; $85EBE3 |

CODE_85EBE7:
  LDA.B $20,X                               ; $85EBE7 |
  BEQ CODE_JP_85EBE3                        ; $85EBE9 |

CODE_85EBEB:
  RTL                                       ; $85EBEB |

CODE_85EBEC:
  LDA.B $1A,X                               ; $85EBEC |
  PHX                                       ; $85EBEE |
  ASL A                                     ; $85EBEF |
  TAX                                       ; $85EBF0 |
  LDA.L PTR16_85EBFB,X                      ; $85EBF1 |
  PLX                                       ; $85EBF5 |
  STA.B $00                                 ; $85EBF6 |
  JMP.W ($0000)                             ; $85EBF8 |

PTR16_85EBFB:
  dw CODE_85EBFF                            ; $85EBFB |
  dw CODE_85EBE7                            ; $85EBFD |

CODE_85EBFF:
  LDY.B $3A,X                               ; $85EBFF |
  LDA.B $3C,X                               ; $85EC01 |
  CMP.W $0022,Y                             ; $85EC03 |
  BEQ CODE_85EC0B                           ; $85EC06 |
  JMP.W CODE_JP_85EBE3                      ; $85EC08 |

CODE_85EC0B:
  JSL.L CODE_FL_86C855                      ; $85EC0B |
  JSL.L CODE_FL_97FC80                      ; $85EC0F |
  JSL.L CODE_FL_85F9E6                      ; $85EC13 |
  LDA.W $0B40                               ; $85EC17 |
  CMP.W #$00FF                              ; $85EC1A |
  BNE CODE_85EBEB                           ; $85EC1D |
  JML.L CODE_FL_86CA36                      ; $85EC1F |

CODE_85EC23:
  LDY.B $3A,X                               ; $85EC23 |
  LDA.B $3C,X                               ; $85EC25 |
  CMP.W $0022,Y                             ; $85EC27 |
  BEQ CODE_85EC2F                           ; $85EC2A |
  JMP.W CODE_JP_85EBE3                      ; $85EC2C |

CODE_85EC2F:
  JSL.L CODE_FL_97FC80                      ; $85EC2F |
  LDY.B $3A,X                               ; $85EC33 |
  LDA.W $0004,Y                             ; $85EC35 |
  AND.W #$0020                              ; $85EC38 |
  BEQ CODE_85EC40                           ; $85EC3B |
  LDA.W #$2020                              ; $85EC3D |

CODE_85EC40:
  ORA.W $1968                               ; $85EC40 |
  STA.B $04,X                               ; $85EC43 |
  LDA.W $0009,Y                             ; $85EC45 |
  STA.B $09,X                               ; $85EC48 |
  LDA.W $000D,Y                             ; $85EC4A |
  STA.B $0D,X                               ; $85EC4D |
  RTL                                       ; $85EC4F |

CODE_85EC50:
  JSL.L CODE_FL_97FC80                      ; $85EC50 |
  LDA.B $1A,X                               ; $85EC54 |
  PHX                                       ; $85EC56 |
  ASL A                                     ; $85EC57 |
  TAX                                       ; $85EC58 |
  LDA.L PTR16_85EC63,X                      ; $85EC59 |
  PLX                                       ; $85EC5D |
  STA.B $00                                 ; $85EC5E |
  JMP.W ($0000)                             ; $85EC60 |

PTR16_85EC63:
  dw CODE_85EC67                            ; $85EC63 |
  dw CODE_85ECBC                            ; $85EC65 |

CODE_85EC67:
  JSR.W CODE_FN_85E07F                      ; $85EC67 |
  BCC CODE_85EC6D                           ; $85EC6A |
  RTL                                       ; $85EC6C |

CODE_85EC6D:
  JSL.L CODE_FL_85F9E6                      ; $85EC6D |
  LDA.B $32,X                               ; $85EC71 |
  BIT.W #$E000                              ; $85EC73 |
  BEQ CODE_85EC88                           ; $85EC76 |
  LDA.B $3C,X                               ; $85EC78 |
  BEQ CODE_JP_85ECC1                        ; $85EC7A |
  JSL.L CODE_FL_85A8C3                      ; $85EC7C |
  LDA.W $0022,Y                             ; $85EC80 |
  BIT.W #$2000                              ; $85EC83 |
  BNE CODE_JP_85ECC1                        ; $85EC86 |

CODE_85EC88:
  JSL.L CODE_FL_83FD79                      ; $85EC88 |
  LDA.B $3C,X                               ; $85EC8C |
  BEQ CODE_85EC9D                           ; $85EC8E |
  INC.B $61,X                               ; $85EC90 |
  LDA.B $61,X                               ; $85EC92 |
  AND.W #$0007                              ; $85EC94 |
  BNE CODE_85EC9D                           ; $85EC97 |
  JSL.L CODE_FL_85E13C                      ; $85EC99 |

CODE_85EC9D:
  LDA.B $09,X                               ; $85EC9D |
  ORA.B $0D,X                               ; $85EC9F |
  ORA.B $11,X                               ; $85ECA1 |
  AND.W #$FF00                              ; $85ECA3 |
  BNE CODE_JP_85ECC1                        ; $85ECA6 |
  LDA.W $1C12                               ; $85ECA8 |
  ORA.W $1C16                               ; $85ECAB |
  BEQ CODE_85ECBB                           ; $85ECAE |
  STZ.B $06,X                               ; $85ECB0 |
  LDA.W #$0040                              ; $85ECB2 |
  JSL.L CODE_FL_86CAEE                      ; $85ECB5 |
  INC.B $1A,X                               ; $85ECB9 |

CODE_85ECBB:
  RTL                                       ; $85ECBB |

CODE_85ECBC:
  LDA.B $20,X                               ; $85ECBC |
  BEQ CODE_JP_85ECC1                        ; $85ECBE |
  RTL                                       ; $85ECC0 |

CODE_JP_85ECC1:
  JML.L CODE_FL_86CA36                      ; $85ECC1 |

CODE_85ECC5:
  JSL.L CODE_FL_97FC80                      ; $85ECC5 |
  LDA.B $1A,X                               ; $85ECC9 |
  PHX                                       ; $85ECCB |
  ASL A                                     ; $85ECCC |
  TAX                                       ; $85ECCD |
  LDA.L PTR16_85ECD8,X                      ; $85ECCE |
  PLX                                       ; $85ECD2 |
  STA.B $00                                 ; $85ECD3 |
  JMP.W ($0000)                             ; $85ECD5 |

PTR16_85ECD8:
  dw CODE_85ECDC                            ; $85ECD8 |
  dw CODE_85ECBC                            ; $85ECDA |

CODE_85ECDC:
  STZ.B $3C,X                               ; $85ECDC |
  BRA CODE_85EC67                           ; $85ECDE |

CODE_85ECE0:
  JSL.L CODE_FL_97FC80                      ; $85ECE0 |
  LDA.B $1A,X                               ; $85ECE4 |
  PHX                                       ; $85ECE6 |
  ASL A                                     ; $85ECE7 |
  TAX                                       ; $85ECE8 |
  LDA.L PTR16_85ECF3,X                      ; $85ECE9 |
  PLX                                       ; $85ECED |
  STA.B $00                                 ; $85ECEE |
  JMP.W ($0000)                             ; $85ECF0 |

PTR16_85ECF3:
  dw CODE_85ECF7                            ; $85ECF3 |
  dw CODE_85ECBC                            ; $85ECF5 |

CODE_85ECF7:
  JSR.W CODE_FN_85E07F                      ; $85ECF7 |
  BCC CODE_85ECFD                           ; $85ECFA |
  RTL                                       ; $85ECFC |

CODE_85ECFD:
  JSL.L CODE_FL_85F9E6                      ; $85ECFD |
  LDA.B $32,X                               ; $85ED01 |
  BIT.W #$E000                              ; $85ED03 |
  BNE CODE_85ED31                           ; $85ED06 |
  JSL.L CODE_FL_83FD79                      ; $85ED08 |
  DEC.B $48,X                               ; $85ED0C |
  BEQ CODE_85ED31                           ; $85ED0E |
  LDA.W $1C12                               ; $85ED10 |
  BIT.W #$0003                              ; $85ED13 |
  BEQ CODE_85ED20                           ; $85ED16 |
  LDA.B $26,X                               ; $85ED18 |
  EOR.W #$FFFF                              ; $85ED1A |
  INC A                                     ; $85ED1D |
  STA.B $26,X                               ; $85ED1E |

CODE_85ED20:
  LDA.W $1C12                               ; $85ED20 |
  BIT.W #$000C                              ; $85ED23 |
  BEQ CODE_85ED30                           ; $85ED26 |
  LDA.B $28,X                               ; $85ED28 |
  EOR.W #$FFFF                              ; $85ED2A |
  INC A                                     ; $85ED2D |
  STA.B $28,X                               ; $85ED2E |

CODE_85ED30:
  RTL                                       ; $85ED30 |

CODE_85ED31:
  JML.L CODE_FL_86CA36                      ; $85ED31 |

CODE_85ED35:
  JSL.L CODE_FL_85ED51                      ; $85ED35 |

CODE_JP_85ED39:
  LDA.B $18,X                               ; $85ED39 |
  BEQ CODE_85ED50                           ; $85ED3B |
  LDY.B $3A,X                               ; $85ED3D |
  LDA.W $0004,Y                             ; $85ED3F |
  AND.W #$0101                              ; $85ED42 |
  STA.B $00                                 ; $85ED45 |
  LDA.B $04,X                               ; $85ED47 |
  AND.W #$FEFE                              ; $85ED49 |
  ORA.B $00                                 ; $85ED4C |
  STA.B $04,X                               ; $85ED4E |

CODE_85ED50:
  RTL                                       ; $85ED50 |

CODE_FL_85ED51:
  LDA.B $1A,X                               ; $85ED51 |
  PHX                                       ; $85ED53 |
  ASL A                                     ; $85ED54 |
  TAX                                       ; $85ED55 |
  LDA.L PTR16_85ED60,X                      ; $85ED56 |
  PLX                                       ; $85ED5A |
  STA.B $00                                 ; $85ED5B |
  JMP.W ($0000)                             ; $85ED5D |

PTR16_85ED60:
  dw CODE_85ED68                            ; $85ED60 |
  dw CODE_85ED85                            ; $85ED62 |
  dw CODE_85EDD8                            ; $85ED64 |
  dw CODE_JP_85ECC1                         ; $85ED66 |

CODE_85ED68:
  LDA.W #$0010                              ; $85ED68 |
  STA.B $2E,X                               ; $85ED6B |
  LDA.W #$000C                              ; $85ED6D |
  STA.B $30,X                               ; $85ED70 |
  LDA.W #$E000                              ; $85ED72 |
  STA.B $34,X                               ; $85ED75 |
  LDA.W #$0006                              ; $85ED77 |
  STA.B $4E,X                               ; $85ED7A |
  LDA.B $3E,X                               ; $85ED7C |
  STA.B $00,X                               ; $85ED7E |
  JSR.W CODE_FN_85F04A                      ; $85ED80 |
  INC.B $1A,X                               ; $85ED83 |

CODE_85ED85:
  LDY.B $3A,X                               ; $85ED85 |
  LDA.B $3C,X                               ; $85ED87 |
  CMP.W $0022,Y                             ; $85ED89 |
  BEQ CODE_85ED91                           ; $85ED8C |
  JMP.W CODE_JP_85ECC1                      ; $85ED8E |

CODE_85ED91:
  JSR.W CODE_FN_85EEA2                      ; $85ED91 |
  JSL.L CODE_FL_85F9E6                      ; $85ED94 |
  JSL.L CODE_FL_83FE56                      ; $85ED98 |
  LDY.B $3A,X                               ; $85ED9C |
  CMP.W #$0023                              ; $85ED9E |
  BEQ CODE_85EDAA                           ; $85EDA1 |
  LDA.W $1C12                               ; $85EDA3 |
  BEQ CODE_JP_85EDBB                        ; $85EDA6 |
  BRA CODE_85EDB3                           ; $85EDA8 |

CODE_85EDAA:
  LDA.W #$009C                              ; $85EDAA |
  JSL.L CODE_FL_8089BD                      ; $85EDAD |
  INC.B $1A,X                               ; $85EDB1 |

CODE_85EDB3:
  LDY.B $3A,X                               ; $85EDB3 |
  LDA.W #$0002                              ; $85EDB5 |
  STA.W $0058,Y                             ; $85EDB8 |

CODE_JP_85EDBB:
  LDY.W #$0400                              ; $85EDBB |
  CPX.W #$0850                              ; $85EDBE |
  BCC CODE_85EDC6                           ; $85EDC1 |
  LDY.W #$04C0                              ; $85EDC3 |

CODE_85EDC6:
  LDA.W $0052,Y                             ; $85EDC6 |
  LSR A                                     ; $85EDC9 |
  BCS CODE_85EDD5                           ; $85EDCA |
  LDA.B $00,X                               ; $85EDCC |
  BNE CODE_85EDD4                           ; $85EDCE |
  LDA.B $3E,X                               ; $85EDD0 |
  STA.B $00,X                               ; $85EDD2 |

CODE_85EDD4:
  RTL                                       ; $85EDD4 |

CODE_85EDD5:
  STZ.B $00,X                               ; $85EDD5 |
  RTL                                       ; $85EDD7 |

CODE_85EDD8:
  LDY.B $3A,X                               ; $85EDD8 |
  LDA.B $3C,X                               ; $85EDDA |
  CMP.W $0022,Y                             ; $85EDDC |
  BEQ CODE_85EDE4                           ; $85EDDF |
  JMP.W CODE_JP_85ECC1                      ; $85EDE1 |

CODE_85EDE4:
  JSR.W CODE_FN_85EF47                      ; $85EDE4 |
  LDY.B $10                                 ; $85EDE7 |
  LDA.W $0092,Y                             ; $85EDE9 |
  ORA.W #$0002                              ; $85EDEC |
  STA.W $0092,Y                             ; $85EDEF |
  BRA CODE_JP_85EDBB                        ; $85EDF2 |

CODE_85EDF4:
  JSL.L CODE_FL_85EDFB                      ; $85EDF4 |
  JMP.W CODE_JP_85ED39                      ; $85EDF8 |

CODE_FL_85EDFB:
  JSL.L CODE_FL_97FC80                      ; $85EDFB |
  LDA.B $1A,X                               ; $85EDFF |
  PHX                                       ; $85EE01 |
  ASL A                                     ; $85EE02 |
  TAX                                       ; $85EE03 |
  LDA.L PTR16_85EE0E,X                      ; $85EE04 |
  PLX                                       ; $85EE08 |
  STA.B $00                                 ; $85EE09 |
  JMP.W ($0000)                             ; $85EE0B |

PTR16_85EE0E:
  dw CODE_85EE14                            ; $85EE0E |
  dw CODE_85EE30                            ; $85EE10 |
  dw CODE_JP_85ECC1                         ; $85EE12 |

CODE_85EE14:
  LDY.B $3A,X                               ; $85EE14 |
  LDA.W $0018,Y                             ; $85EE16 |
  TAY                                       ; $85EE19 |
  LDA.W $0094,Y                             ; $85EE1A |
  LDY.W #$0008                              ; $85EE1D |
  CMP.W #$0000                              ; $85EE20 |
  BEQ CODE_85EE26                           ; $85EE23 |
  INY                                       ; $85EE25 |

CODE_85EE26:
  TYA                                       ; $85EE26 |
  JSL.L CODE_FL_86CAEE                      ; $85EE27 |
  JSR.W CODE_FN_85F04A                      ; $85EE2B |
  INC.B $1A,X                               ; $85EE2E |

CODE_85EE30:
  LDY.B $3A,X                               ; $85EE30 |
  LDA.W $0018,Y                             ; $85EE32 |
  CMP.W #$002B                              ; $85EE35 |
  BEQ CODE_85EE3D                           ; $85EE38 |
  JMP.W CODE_JP_85ECC1                      ; $85EE3A |

CODE_85EE3D:
  TXA                                       ; $85EE3D |
  SEC                                       ; $85EE3E |
  SBC.W #$0050                              ; $85EE3F |
  TAY                                       ; $85EE42 |
  LDA.W $0044,Y                             ; $85EE43 |
  STA.B $44,X                               ; $85EE46 |
  BNE CODE_85EE56                           ; $85EE48 |
  LDA.W $0009,Y                             ; $85EE4A |
  STA.B $09,X                               ; $85EE4D |
  LDA.W $0004,Y                             ; $85EE4F |
  STA.B $04,X                               ; $85EE52 |
  BRA CODE_85EE70                           ; $85EE54 |

CODE_85EE56:
  LDA.W $0004,Y                             ; $85EE56 |
  STA.B $04,X                               ; $85EE59 |
  BIT.W #$2020                              ; $85EE5B |
  BEQ CODE_85EE68                           ; $85EE5E |
  LDA.W $0009,Y                             ; $85EE60 |
  CLC                                       ; $85EE63 |
  ADC.B $44,X                               ; $85EE64 |
  BRA CODE_85EE6E                           ; $85EE66 |

CODE_85EE68:
  LDA.W $0009,Y                             ; $85EE68 |
  SEC                                       ; $85EE6B |
  SBC.B $44,X                               ; $85EE6C |

CODE_85EE6E:
  STA.B $09,X                               ; $85EE6E |

CODE_85EE70:
  LDA.W $0048,Y                             ; $85EE70 |
  STA.B $48,X                               ; $85EE73 |
  BNE CODE_85EE7E                           ; $85EE75 |
  LDA.W $000D,Y                             ; $85EE77 |
  STA.B $0D,X                               ; $85EE7A |
  BRA CODE_85EE98                           ; $85EE7C |

CODE_85EE7E:
  LDA.W $0004,Y                             ; $85EE7E |
  STA.B $04,X                               ; $85EE81 |
  BIT.W #$4040                              ; $85EE83 |
  BEQ CODE_85EE90                           ; $85EE86 |
  LDA.W $000D,Y                             ; $85EE88 |
  SEC                                       ; $85EE8B |
  SBC.B $48,X                               ; $85EE8C |
  BRA CODE_85EE96                           ; $85EE8E |

CODE_85EE90:
  LDA.W $000D,Y                             ; $85EE90 |
  CLC                                       ; $85EE93 |
  ADC.B $48,X                               ; $85EE94 |

CODE_85EE96:
  STA.B $0D,X                               ; $85EE96 |

CODE_85EE98:
  LDY.B $3A,X                               ; $85EE98 |
  LDA.W $0011,Y                             ; $85EE9A |
  STA.B $11,X                               ; $85EE9D |
  JMP.W CODE_JP_85EDBB                      ; $85EE9F |

CODE_FN_85EEA2:
  LDY.B $3A,X                               ; $85EEA2 |
  STY.B $10                                 ; $85EEA4 |
  LDA.W $0054,Y                             ; $85EEA6 |
  STA.B $00                                 ; $85EEA9 |
  LDA.B $00                                 ; $85EEAB |
  STA.W $4204                               ; $85EEAD |
  SEP #$20                                  ; $85EEB0 |
  LDA.B #$05                                ; $85EEB2 |
  STA.W $4206                               ; $85EEB4 |
  REP #$20                                  ; $85EEB7 |
  LDA.W $0094,Y                             ; $85EEB9 |
  BNE CODE_85EECE                           ; $85EEBC |
  LDA.W $0004,Y                             ; $85EEBE |
  LDY.W #$0000                              ; $85EEC1 |
  BIT.W #$0020                              ; $85EEC4 |
  BEQ CODE_85EED2                           ; $85EEC7 |
  LDY.W #$0004                              ; $85EEC9 |
  BRA CODE_85EED2                           ; $85EECC |

CODE_85EECE:
  INC A                                     ; $85EECE |
  ASL A                                     ; $85EECF |
  ASL A                                     ; $85EED0 |
  TAY                                       ; $85EED1 |

CODE_85EED2:
  STY.B $1E                                 ; $85EED2 |
  LDA.W CODE_0092B4,Y                       ; $85EED4 |
  STA.B $18                                 ; $85EED7 |
  LDA.W LOOSE_OP_0092B6,Y                   ; $85EED9 |
  STA.B $1A                                 ; $85EEDC |
  LDY.B $10                                 ; $85EEDE |
  LDA.W $0094,Y                             ; $85EEE0 |
  BNE CODE_85EF06                           ; $85EEE3 |
  STZ.B $0A                                 ; $85EEE5 |
  LDA.W $4214                               ; $85EEE7 |
  STA.B $44,X                               ; $85EEEA |
  STZ.B $48,X                               ; $85EEEC |
  LDA.W $0004,Y                             ; $85EEEE |
  BIT.W #$0020                              ; $85EEF1 |
  BEQ CODE_85EF00                           ; $85EEF4 |
  LDA.B $00                                 ; $85EEF6 |
  EOR.W #$FFFF                              ; $85EEF8 |
  INC A                                     ; $85EEFB |
  STA.B $08                                 ; $85EEFC |
  BRA CODE_85EF25                           ; $85EEFE |

CODE_85EF00:
  LDA.B $00                                 ; $85EF00 |
  STA.B $08                                 ; $85EF02 |
  BRA CODE_85EF25                           ; $85EF04 |

CODE_85EF06:
  LDA.W $4214                               ; $85EF06 |
  STA.B $48,X                               ; $85EF09 |
  STZ.B $44,X                               ; $85EF0B |
  STZ.B $08                                 ; $85EF0D |
  LDA.W $0094,Y                             ; $85EF0F |
  CMP.W #$0001                              ; $85EF12 |
  BEQ CODE_85EF1D                           ; $85EF15 |
  LDA.B $00                                 ; $85EF17 |
  STA.B $0A                                 ; $85EF19 |
  BRA CODE_85EF25                           ; $85EF1B |

CODE_85EF1D:
  LDA.B $00                                 ; $85EF1D |
  EOR.W #$FFFF                              ; $85EF1F |
  INC A                                     ; $85EF22 |
  STA.B $0A                                 ; $85EF23 |

CODE_85EF25:
  LDY.B $10                                 ; $85EF25 |
  LDA.W $0009,Y                             ; $85EF27 |
  CLC                                       ; $85EF2A |
  ADC.B $18                                 ; $85EF2B |
  CLC                                       ; $85EF2D |
  ADC.B $08                                 ; $85EF2E |
  STA.B $09,X                               ; $85EF30 |
  LDA.W $000D,Y                             ; $85EF32 |
  CLC                                       ; $85EF35 |
  ADC.B $1A                                 ; $85EF36 |
  CLC                                       ; $85EF38 |
  ADC.B $0A                                 ; $85EF39 |
  STA.B $0D,X                               ; $85EF3B |
  LDA.W $0011,Y                             ; $85EF3D |
  CLC                                       ; $85EF40 |
  ADC.W #$0008                              ; $85EF41 |
  STA.B $11,X                               ; $85EF44 |
  RTS                                       ; $85EF46 |

CODE_FN_85EF47:
  LDY.B $3A,X                               ; $85EF47 |
  STY.B $10                                 ; $85EF49 |
  LDA.W $0054,Y                             ; $85EF4B |
  STA.B $00                                 ; $85EF4E |
  LDA.B $00                                 ; $85EF50 |
  STA.W $4204                               ; $85EF52 |
  SEP #$20                                  ; $85EF55 |
  LDA.B #$05                                ; $85EF57 |
  STA.W $4206                               ; $85EF59 |
  REP #$20                                  ; $85EF5C |
  LDA.W $0094,Y                             ; $85EF5E |
  BNE CODE_85EF73                           ; $85EF61 |
  LDA.W $0004,Y                             ; $85EF63 |
  LDY.W #$0000                              ; $85EF66 |
  BIT.W #$0020                              ; $85EF69 |
  BEQ CODE_85EF77                           ; $85EF6C |
  LDY.W #$0004                              ; $85EF6E |
  BRA CODE_85EF77                           ; $85EF71 |

CODE_85EF73:
  INC A                                     ; $85EF73 |
  ASL A                                     ; $85EF74 |
  ASL A                                     ; $85EF75 |
  TAY                                       ; $85EF76 |

CODE_85EF77:
  LDA.W CODE_0092B4,Y                       ; $85EF77 |
  STA.B $18                                 ; $85EF7A |
  LDA.W LOOSE_OP_0092B6,Y                   ; $85EF7C |
  STA.B $1A                                 ; $85EF7F |
  LDY.B $10                                 ; $85EF81 |
  LDA.W $0094,Y                             ; $85EF83 |
  BNE CODE_85EFA9                           ; $85EF86 |
  STZ.B $0A                                 ; $85EF88 |
  LDA.W $4214                               ; $85EF8A |
  STA.B $44,X                               ; $85EF8D |
  STZ.B $48,X                               ; $85EF8F |
  LDA.W $0004,Y                             ; $85EF91 |
  BIT.W #$0020                              ; $85EF94 |
  BNE CODE_85EFA3                           ; $85EF97 |
  LDA.B $00                                 ; $85EF99 |
  EOR.W #$FFFF                              ; $85EF9B |
  INC A                                     ; $85EF9E |
  STA.B $08                                 ; $85EF9F |
  BRA CODE_85EFC8                           ; $85EFA1 |

CODE_85EFA3:
  LDA.B $00                                 ; $85EFA3 |
  STA.B $08                                 ; $85EFA5 |
  BRA CODE_85EFC8                           ; $85EFA7 |

CODE_85EFA9:
  LDA.W $4214                               ; $85EFA9 |
  STA.B $48,X                               ; $85EFAC |
  STZ.B $44,X                               ; $85EFAE |
  STZ.B $08                                 ; $85EFB0 |
  LDA.W $0094,Y                             ; $85EFB2 |
  CMP.W #$0001                              ; $85EFB5 |
  BNE CODE_85EFC0                           ; $85EFB8 |
  LDA.B $00                                 ; $85EFBA |
  STA.B $0A                                 ; $85EFBC |
  BRA CODE_85EFC8                           ; $85EFBE |

CODE_85EFC0:
  LDA.B $00                                 ; $85EFC0 |
  EOR.W #$FFFF                              ; $85EFC2 |
  INC A                                     ; $85EFC5 |
  STA.B $0A                                 ; $85EFC6 |

CODE_85EFC8:
  LDA.B $09,X                               ; $85EFC8 |
  SEC                                       ; $85EFCA |
  SBC.W $0009,Y                             ; $85EFCB |
  SEC                                       ; $85EFCE |
  SBC.B $18                                 ; $85EFCF |
  STA.B $00                                 ; $85EFD1 |
  CLC                                       ; $85EFD3 |
  ADC.B $08                                 ; $85EFD4 |
  SEP #$20                                  ; $85EFD6 |
  STA.W $0079,Y                             ; $85EFD8 |
  REP #$20                                  ; $85EFDB |
  LDA.B $0D,X                               ; $85EFDD |
  SEC                                       ; $85EFDF |
  SBC.W $000D,Y                             ; $85EFE0 |
  SEC                                       ; $85EFE3 |
  SBC.B $1A                                 ; $85EFE4 |
  STA.B $02                                 ; $85EFE6 |
  CLC                                       ; $85EFE8 |
  ADC.B $0A                                 ; $85EFE9 |
  SEP #$20                                  ; $85EFEB |
  STA.W $007B,Y                             ; $85EFED |
  REP #$20                                  ; $85EFF0 |
  LDA.B $08                                 ; $85EFF2 |
  BEQ CODE_85F020                           ; $85EFF4 |
  LDA.B $00                                 ; $85EFF6 |
  BPL CODE_85EFFE                           ; $85EFF8 |
  EOR.W #$FFFF                              ; $85EFFA |
  INC A                                     ; $85EFFD |

CODE_85EFFE:
  STA.W $4204                               ; $85EFFE |
  SEP #$20                                  ; $85F001 |
  LDA.B #$05                                ; $85F003 |
  STA.W $4206                               ; $85F005 |
  LDA.B #$00                                ; $85F008 |
  STA.W $0078,Y                             ; $85F00A |
  STA.W $007A,Y                             ; $85F00D |
  REP #$20                                  ; $85F010 |
  LDA.W #$0000                              ; $85F012 |
  STA.W $0028,Y                             ; $85F015 |
  LDA.W $4214                               ; $85F018 |
  STA.B $44,X                               ; $85F01B |
  STZ.B $48,X                               ; $85F01D |
  RTS                                       ; $85F01F |

CODE_85F020:
  LDA.B $02                                 ; $85F020 |
  BPL CODE_85F028                           ; $85F022 |
  EOR.W #$FFFF                              ; $85F024 |
  INC A                                     ; $85F027 |

CODE_85F028:
  STA.W $4204                               ; $85F028 |
  SEP #$20                                  ; $85F02B |
  LDA.B #$05                                ; $85F02D |
  STA.W $4206                               ; $85F02F |
  LDA.B #$00                                ; $85F032 |
  STA.W $0078,Y                             ; $85F034 |
  STA.W $007A,Y                             ; $85F037 |
  REP #$20                                  ; $85F03A |
  LDA.W #$0000                              ; $85F03C |
  STA.W $0028,Y                             ; $85F03F |
  LDA.W $4214                               ; $85F042 |
  STA.B $48,X                               ; $85F045 |
  STZ.B $44,X                               ; $85F047 |
  RTS                                       ; $85F049 |

CODE_FN_85F04A:
  LDY.B $3A,X                               ; $85F04A |
  LDA.W $0002,Y                             ; $85F04C |
  STA.B $02,X                               ; $85F04F |
  LDA.W $0006,Y                             ; $85F051 |
  STA.B $06,X                               ; $85F054 |
  LDA.W #$8080                              ; $85F056 |
  STA.B $22,X                               ; $85F059 |
  LDA.W #$0002                              ; $85F05B |
  STA.B $14,X                               ; $85F05E |
  LDA.W #$0008                              ; $85F060 |
  STA.B $11,X                               ; $85F063 |
  RTS                                       ; $85F065 |

CODE_85F066:
  JSL.L CODE_FL_97FC80                      ; $85F066 |
  LDA.B $1A,X                               ; $85F06A |
  PHX                                       ; $85F06C |
  ASL A                                     ; $85F06D |
  TAX                                       ; $85F06E |
  LDA.L PTR16_85F079,X                      ; $85F06F |
  PLX                                       ; $85F073 |
  STA.B $00                                 ; $85F074 |
  JMP.W ($0000)                             ; $85F076 |

PTR16_85F079:
  dw CODE_85F07D                            ; $85F079 |
  dw CODE_85F0A3                            ; $85F07B |

CODE_85F07D:
  JSR.W CODE_FN_85E07F                      ; $85F07D |
  BCC CODE_85F083                           ; $85F080 |
  RTL                                       ; $85F082 |

CODE_85F083:
  JSL.L CODE_FL_85F9E6                      ; $85F083 |
  JSL.L CODE_FL_83FD79                      ; $85F087 |
  LDA.B $20,X                               ; $85F08B |
  BEQ CODE_85F0A8                           ; $85F08D |
  LDA.W $1C12                               ; $85F08F |
  ORA.W $1C16                               ; $85F092 |
  BEQ CODE_85F0A2                           ; $85F095 |
  STZ.B $06,X                               ; $85F097 |
  LDA.W #$0040                              ; $85F099 |
  JSL.L CODE_FL_86CAEE                      ; $85F09C |
  INC.B $1A,X                               ; $85F0A0 |

CODE_85F0A2:
  RTL                                       ; $85F0A2 |

CODE_85F0A3:
  LDA.B $20,X                               ; $85F0A3 |
  BEQ CODE_85F0A8                           ; $85F0A5 |
  RTL                                       ; $85F0A7 |

CODE_85F0A8:
  JML.L CODE_FL_86CA36                      ; $85F0A8 |

CODE_85F0AC:
  JSL.L CODE_FL_97FC80                      ; $85F0AC |
  LDA.B $1A,X                               ; $85F0B0 |
  PHX                                       ; $85F0B2 |
  ASL A                                     ; $85F0B3 |
  TAX                                       ; $85F0B4 |
  LDA.L PTR16_85F0BF,X                      ; $85F0B5 |
  PLX                                       ; $85F0B9 |
  STA.B $00                                 ; $85F0BA |
  JMP.W ($0000)                             ; $85F0BC |

PTR16_85F0BF:
  dw CODE_85F0C5                            ; $85F0BF |
  dw CODE_85F109                            ; $85F0C1 |
  dw CODE_85F19B                            ; $85F0C3 |

CODE_85F0C5:
  INC.B $1A,X                               ; $85F0C5 |
  LDA.B $3A,X                               ; $85F0C7 |
  STA.B $40,X                               ; $85F0C9 |
  TAY                                       ; $85F0CB |
  LDA.W $0006,Y                             ; $85F0CC |
  STA.B $06,X                               ; $85F0CF |
  LDA.W #$A883                              ; $85F0D1 |
  STA.B $00,X                               ; $85F0D4 |
  STZ.B $48,X                               ; $85F0D6 |
  LDA.W #$C000                              ; $85F0D8 |
  STA.B $22,X                               ; $85F0DB |
  LDA.W #$A200                              ; $85F0DD |
  STA.B $34,X                               ; $85F0E0 |
  LDA.W #$0004                              ; $85F0E2 |
  STA.B $2E,X                               ; $85F0E5 |
  LDA.W #$0008                              ; $85F0E7 |
  STA.B $30,X                               ; $85F0EA |
  LDA.W #$0017                              ; $85F0EC |
  STA.B $4E,X                               ; $85F0EF |
  STZ.B $3E,X                               ; $85F0F1 |
  LDA.W #$0050                              ; $85F0F3 |
  STA.B $4C,X                               ; $85F0F6 |
  JSL.L CODE_FL_83FD79                      ; $85F0F8 |
  LDA.W $1C16                               ; $85F0FC |
  ORA.W $1C12                               ; $85F0FF |
  BNE CODE_85F174                           ; $85F102 |
  JSL.L CODE_FL_85F124                      ; $85F104 |
  RTL                                       ; $85F108 |

CODE_85F109:
  JSR.W CODE_FN_85E07F                      ; $85F109 |
  BCC CODE_85F10F                           ; $85F10C |
  RTL                                       ; $85F10E |

CODE_85F10F:
  JSL.L CODE_FL_85F9E6                      ; $85F10F |
  LDY.B $3A,X                               ; $85F113 |
  LDA.B $32,X                               ; $85F115 |
  BIT.W #$4000                              ; $85F117 |
  BNE CODE_85F174                           ; $85F11A |
  DEC.B $44,X                               ; $85F11C |
  BEQ CODE_85F174                           ; $85F11E |
  JSL.L CODE_FL_83FD80                      ; $85F120 |

CODE_FL_85F124:
  LDA.W $1C16                               ; $85F124 |
  BNE CODE_85F12D                           ; $85F127 |
  RTL                                       ; $85F129 |

  STZ.B $27,X                               ; $85F12A |
  RTL                                       ; $85F12C |

CODE_85F12D:
  LDA.B $26,X                               ; $85F12D |
  BMI CODE_85F134                           ; $85F12F |
  LSR A                                     ; $85F131 |
  BRA CODE_85F140                           ; $85F132 |

CODE_85F134:
  CMP.W #$FFFF                              ; $85F134 |
  BEQ CODE_85F13D                           ; $85F137 |
  SEC                                       ; $85F139 |
  ROR A                                     ; $85F13A |
  BRA CODE_85F140                           ; $85F13B |

CODE_85F13D:
  LDA.W #$0000                              ; $85F13D |

CODE_85F140:
  STA.B $26,X                               ; $85F140 |
  LDA.B $28,X                               ; $85F142 |
  BMI CODE_85F149                           ; $85F144 |
  LSR A                                     ; $85F146 |
  BRA CODE_85F155                           ; $85F147 |

CODE_85F149:
  CMP.W #$FFFF                              ; $85F149 |
  BEQ CODE_85F152                           ; $85F14C |
  SEC                                       ; $85F14E |
  ROR A                                     ; $85F14F |
  BRA CODE_85F155                           ; $85F150 |

CODE_85F152:
  LDA.W #$0000                              ; $85F152 |

CODE_85F155:
  STA.B $28,X                               ; $85F155 |
  LDA.B $3E,X                               ; $85F157 |
  CMP.W #$0002                              ; $85F159 |
  BCS CODE_85F16F                           ; $85F15C |
  ASL A                                     ; $85F15E |
  TAY                                       ; $85F15F |
  LDA.W LOOSE_OP_009294,Y                   ; $85F160 |
  STA.B $2A,X                               ; $85F163 |
  LDA.W #$0011                              ; $85F165 |
  JSL.L push_sound_queue                    ; $85F168 |
  INC.B $3E,X                               ; $85F16C |
  RTL                                       ; $85F16E |

CODE_85F16F:
  STZ.B $26,X                               ; $85F16F |
  STZ.B $28,X                               ; $85F171 |
  RTL                                       ; $85F173 |

CODE_85F174:
  STZ.B $26,X                               ; $85F174 |
  STZ.B $28,X                               ; $85F176 |
  STZ.B $34,X                               ; $85F178 |
  LDA.B $11,X                               ; $85F17A |
  CLC                                       ; $85F17C |
  ADC.W #$0008                              ; $85F17D |
  STA.B $11,X                               ; $85F180 |
  INC.B $1A,X                               ; $85F182 |
  LDA.W #$00D4                              ; $85F184 |
  JSL.L CODE_FL_8089BD                      ; $85F187 |
  LDA.W #$0009                              ; $85F18B |
  STA.B $4E,X                               ; $85F18E |
  LDA.W #$000D                              ; $85F190 |
  JSL.L CODE_FL_86CAEE                      ; $85F193 |
  JML.L CODE_FL_97FC80                      ; $85F197 |

CODE_85F19B:
  JSR.W CODE_FN_85E07F                      ; $85F19B |
  BCC CODE_85F1A1                           ; $85F19E |

CODE_85F1A0:
  RTL                                       ; $85F1A0 |

CODE_85F1A1:
  JSL.L CODE_FL_85F9E6                      ; $85F1A1 |
  LDA.B $20,X                               ; $85F1A5 |
  BNE CODE_85F1A0                           ; $85F1A7 |
  LDA.B $46,X                               ; $85F1A9 |
  AND.W #$FDFF                              ; $85F1AB |
  STA.B $46,X                               ; $85F1AE |
  JML.L CODE_FL_86CA36                      ; $85F1B0 |

  LDA.B $48,X                               ; $85F1B4 |
  BNE CODE_85F1C4                           ; $85F1B6 |
  JSL.L CODE_FL_86B272                      ; $85F1B8 |
  BCC CODE_85F1CC                           ; $85F1BC |
  LDA.W #$0001                              ; $85F1BE |
  STA.B $48,X                               ; $85F1C1 |
  RTS                                       ; $85F1C3 |

CODE_85F1C4:
  JSL.L CODE_FL_86B29C                      ; $85F1C4 |
  BCS CODE_85F1CC                           ; $85F1C8 |
  STZ.B $48,X                               ; $85F1CA |

CODE_85F1CC:
  RTS                                       ; $85F1CC |

CODE_85F1CD:
  JSL.L CODE_FL_97FC80                      ; $85F1CD |
  LDA.B $1A,X                               ; $85F1D1 |
  PHX                                       ; $85F1D3 |
  ASL A                                     ; $85F1D4 |
  TAX                                       ; $85F1D5 |
  LDA.L PTR16_85F1E0,X                      ; $85F1D6 |
  PLX                                       ; $85F1DA |
  STA.B $00                                 ; $85F1DB |
  JMP.W ($0000)                             ; $85F1DD |

PTR16_85F1E0:
  dw CODE_85F1E4                            ; $85F1E0 |
  dw CODE_85ECBC                            ; $85F1E2 |

CODE_85F1E4:
  JSR.W CODE_FN_85E07F                      ; $85F1E4 |
  BCC CODE_85F1EA                           ; $85F1E7 |
  RTL                                       ; $85F1E9 |

CODE_85F1EA:
  JSL.L CODE_FL_85F9E6                      ; $85F1EA |
  LDA.B $32,X                               ; $85F1EE |
  BIT.W #$E000                              ; $85F1F0 |
  BNE CODE_85F20F                           ; $85F1F3 |
  JSL.L CODE_FL_83FD79                      ; $85F1F5 |
  LDA.B $20,X                               ; $85F1F9 |
  BEQ CODE_85F20F                           ; $85F1FB |
  LDA.W $1C12                               ; $85F1FD |
  ORA.W $1C16                               ; $85F200 |
  BEQ CODE_85F20E                           ; $85F203 |
  LDA.W #$000F                              ; $85F205 |
  JSL.L CODE_FL_86CAEE                      ; $85F208 |
  INC.B $1A,X                               ; $85F20C |

CODE_85F20E:
  RTL                                       ; $85F20E |

CODE_85F20F:
  JML.L CODE_FL_86CA36                      ; $85F20F |

CODE_85F213:
  JSL.L CODE_FL_97FC80                      ; $85F213 |
  LDA.B $1A,X                               ; $85F217 |
  PHX                                       ; $85F219 |
  ASL A                                     ; $85F21A |
  TAX                                       ; $85F21B |
  LDA.L PTR16_85F226,X                      ; $85F21C |
  PLX                                       ; $85F220 |
  STA.B $00                                 ; $85F221 |
  JMP.W ($0000)                             ; $85F223 |

PTR16_85F226:
  dw CODE_85F22A                            ; $85F226 |
  dw CODE_85F26A                            ; $85F228 |

CODE_85F22A:
  JSR.W CODE_FN_85E07F                      ; $85F22A |
  BCC CODE_85F230                           ; $85F22D |
  RTL                                       ; $85F22F |

CODE_85F230:
  JSL.L CODE_FL_85F9E6                      ; $85F230 |
  LDA.B $32,X                               ; $85F234 |
  BIT.W #$E000                              ; $85F236 |
  BEQ CODE_85F247                           ; $85F239 |
  JSL.L CODE_FL_85A8C3                      ; $85F23B |
  LDA.W $0022,Y                             ; $85F23F |
  BIT.W #$2000                              ; $85F242 |
  BNE CODE_85F26E                           ; $85F245 |

CODE_85F247:
  JSL.L CODE_FL_83FD79                      ; $85F247 |
  LDA.B $09,X                               ; $85F24B |
  ORA.B $0D,X                               ; $85F24D |
  ORA.B $11,X                               ; $85F24F |
  AND.W #$FF00                              ; $85F251 |
  BNE CODE_85F26E                           ; $85F254 |
  LDA.W $1C12                               ; $85F256 |
  ORA.W $1C16                               ; $85F259 |
  BEQ CODE_85F269                           ; $85F25C |
  STZ.B $06,X                               ; $85F25E |
  LDA.W #$0040                              ; $85F260 |
  JSL.L CODE_FL_86CAEE                      ; $85F263 |
  INC.B $1A,X                               ; $85F267 |

CODE_85F269:
  RTL                                       ; $85F269 |

CODE_85F26A:
  LDA.B $20,X                               ; $85F26A |
  BNE CODE_85F269                           ; $85F26C |

CODE_85F26E:
  JML.L CODE_FL_86CA36                      ; $85F26E |

CODE_85F272:
  LDA.B $1A,X                               ; $85F272 |
  PHX                                       ; $85F274 |
  ASL A                                     ; $85F275 |
  TAX                                       ; $85F276 |
  LDA.L PTR16_85F281,X                      ; $85F277 |
  PLX                                       ; $85F27B |
  STA.B $00                                 ; $85F27C |
  JMP.W ($0000)                             ; $85F27E |

PTR16_85F281:
  dw CODE_85F285                            ; $85F281 |
  dw CODE_85F2EB                            ; $85F283 |

CODE_85F285:
  LDY.B $3A,X                               ; $85F285 |
  LDA.W $0022,Y                             ; $85F287 |
  CMP.W #$0008                              ; $85F28A |
  BEQ CODE_85F298                           ; $85F28D |
  CMP.W #$0011                              ; $85F28F |
  BEQ CODE_85F298                           ; $85F292 |
  JML.L CODE_FL_86CA36                      ; $85F294 |

CODE_85F298:
  LDY.B $3A,X                               ; $85F298 |
  LDA.W #$9617                              ; $85F29A |
  STA.B $00,X                               ; $85F29D |
  LDA.W $0058,Y                             ; $85F29F |
  TAY                                       ; $85F2A2 |
  LDA.B $3C,X                               ; $85F2A3 |
  JSL.L CODE_FL_8AB51A                      ; $85F2A5 |
  LDA.B $05                                 ; $85F2A9 |
  BMI CODE_85F2B1                           ; $85F2AB |
  LSR.B $05                                 ; $85F2AD |
  BRA CODE_85F2B4                           ; $85F2AF |

CODE_85F2B1:
  SEC                                       ; $85F2B1 |
  ROR.B $05                                 ; $85F2B2 |

CODE_85F2B4:
  LDY.B $3A,X                               ; $85F2B4 |
  LDA.W $0009,Y                             ; $85F2B6 |
  CLC                                       ; $85F2B9 |
  ADC.B $01                                 ; $85F2BA |
  STA.B $09,X                               ; $85F2BC |
  LDA.W $000D,Y                             ; $85F2BE |
  CLC                                       ; $85F2C1 |
  ADC.B $05                                 ; $85F2C2 |
  STA.B $0D,X                               ; $85F2C4 |
  LDA.W $0011,Y                             ; $85F2C6 |
  CLC                                       ; $85F2C9 |
  ADC.W #$0010                              ; $85F2CA |
  STA.B $11,X                               ; $85F2CD |
  LDA.B $3C,X                               ; $85F2CF |
  CLC                                       ; $85F2D1 |
  ADC.W #$0020                              ; $85F2D2 |
  CMP.W #$01FF                              ; $85F2D5 |
  BCC CODE_85F2E1                           ; $85F2D8 |
  LDA.W #$001C                              ; $85F2DA |
  JSL.L push_sound_queue                    ; $85F2DD |

CODE_85F2E1:
  AND.W #$01FF                              ; $85F2E1 |
  STA.B $3C,X                               ; $85F2E4 |
  JSL.L CODE_FL_85F9E6                      ; $85F2E6 |
  RTL                                       ; $85F2EA |

CODE_85F2EB:
  LDA.B $20,X                               ; $85F2EB |
  BEQ CODE_85F2F0                           ; $85F2ED |
  RTL                                       ; $85F2EF |

CODE_85F2F0:
  JML.L CODE_FL_86CA36                      ; $85F2F0 |

CODE_85F2F4:
  STZ.W $19CC                               ; $85F2F4 |
  RTL                                       ; $85F2F7 |

CODE_JL_85F2F8:
  PHX                                       ; $85F2F8 |
  LDX.B $00                                 ; $85F2F9 |
  JSL.L CODE_FL_848028                      ; $85F2FB |
  PLX                                       ; $85F2FF |
  BCC CODE_85F309                           ; $85F300 |
  STZ.W $199A                               ; $85F302 |
  JML.L CODE_FL_848000                      ; $85F305 |

CODE_85F309:
  RTL                                       ; $85F309 |

CODE_FL_85F30A:
  LDA.W $1662                               ; $85F30A |
  AND.W #$00FF                              ; $85F30D |
  BNE CODE_85F37A                           ; $85F310 |
  LDA.W $0009,X                             ; $85F312 |
  BIT.W #$FF00                              ; $85F315 |
  BNE CODE_85F37A                           ; $85F318 |
  LDA.W $0418                               ; $85F31A |
  BEQ CODE_85F34A                           ; $85F31D |
  LDA.W $041A                               ; $85F31F |
  CMP.W #$0001                              ; $85F322 |
  BNE CODE_85F34A                           ; $85F325 |
  LDA.W $0422                               ; $85F327 |
  CMP.W #$0014                              ; $85F32A |
  BEQ CODE_85F34A                           ; $85F32D |
  LDA.W $0409                               ; $85F32F |
  AND.W #$FF00                              ; $85F332 |
  BMI CODE_85F34A                           ; $85F335 |
  BNE CODE_85F37C                           ; $85F337 |
  LDA.W $0409                               ; $85F339 |
  BIT.W #$0080                              ; $85F33C |
  BEQ CODE_85F34A                           ; $85F33F |
  LDA.W $043A                               ; $85F341 |
  AND.W #$FDFF                              ; $85F344 |
  STA.W $043A                               ; $85F347 |

CODE_85F34A:
  LDA.W $04D8                               ; $85F34A |
  BEQ CODE_85F37A                           ; $85F34D |
  LDA.W $04DA                               ; $85F34F |
  CMP.W #$0001                              ; $85F352 |
  BNE CODE_85F37A                           ; $85F355 |
  LDA.W $04E2                               ; $85F357 |
  CMP.W #$0014                              ; $85F35A |
  BEQ CODE_85F37A                           ; $85F35D |
  LDA.W $04C9                               ; $85F35F |
  AND.W #$FF00                              ; $85F362 |
  BMI CODE_85F37A                           ; $85F365 |
  BNE CODE_85F381                           ; $85F367 |
  LDA.W $04C9                               ; $85F369 |
  BIT.W #$0080                              ; $85F36C |
  BEQ CODE_85F37A                           ; $85F36F |
  LDA.W $04FA                               ; $85F371 |
  AND.W #$FDFF                              ; $85F374 |
  STA.W $04FA                               ; $85F377 |

CODE_85F37A:
  CLC                                       ; $85F37A |
  RTL                                       ; $85F37B |

CODE_85F37C:
  LDA.W #$0400                              ; $85F37C |
  SEC                                       ; $85F37F |
  RTL                                       ; $85F380 |

CODE_85F381:
  LDA.W #$04C0                              ; $85F381 |
  SEC                                       ; $85F384 |
  RTL                                       ; $85F385 |

CODE_FL_85F386:
  LDA.W $1662                               ; $85F386 |
  AND.W #$00FF                              ; $85F389 |
  BNE CODE_85F3F5                           ; $85F38C |
  LDA.B $09,X                               ; $85F38E |
  BIT.W #$FF00                              ; $85F390 |
  BNE CODE_85F3F5                           ; $85F393 |
  LDA.W $0418                               ; $85F395 |
  BEQ CODE_85F3C5                           ; $85F398 |
  LDA.W $041A                               ; $85F39A |
  CMP.W #$0001                              ; $85F39D |
  BNE CODE_85F3C5                           ; $85F3A0 |
  LDA.W $0422                               ; $85F3A2 |
  CMP.W #$0014                              ; $85F3A5 |
  BEQ CODE_85F3C5                           ; $85F3A8 |
  LDA.W $0409                               ; $85F3AA |
  AND.W #$FF00                              ; $85F3AD |
  BMI CODE_85F3F7                           ; $85F3B0 |
  BNE CODE_85F3C5                           ; $85F3B2 |
  LDA.W $0409                               ; $85F3B4 |
  BIT.W #$0080                              ; $85F3B7 |
  BNE CODE_85F3C5                           ; $85F3BA |
  LDA.W $043A                               ; $85F3BC |
  AND.W #$FEFF                              ; $85F3BF |
  STA.W $043A                               ; $85F3C2 |

CODE_85F3C5:
  LDA.W $04D8                               ; $85F3C5 |
  BEQ CODE_85F3F5                           ; $85F3C8 |
  LDA.W $04DA                               ; $85F3CA |
  CMP.W #$0001                              ; $85F3CD |
  BNE CODE_85F3F5                           ; $85F3D0 |
  LDA.W $04E2                               ; $85F3D2 |
  CMP.W #$0014                              ; $85F3D5 |
  BEQ CODE_85F3F5                           ; $85F3D8 |
  LDA.W $04C9                               ; $85F3DA |
  AND.W #$FF00                              ; $85F3DD |
  BMI CODE_85F3FC                           ; $85F3E0 |
  BNE CODE_85F3F5                           ; $85F3E2 |
  LDA.W $04C9                               ; $85F3E4 |
  BIT.W #$0080                              ; $85F3E7 |
  BNE CODE_85F3F5                           ; $85F3EA |
  LDA.W $04FA                               ; $85F3EC |
  AND.W #$FEFF                              ; $85F3EF |
  STA.W $04FA                               ; $85F3F2 |

CODE_85F3F5:
  CLC                                       ; $85F3F5 |
  RTL                                       ; $85F3F6 |

CODE_85F3F7:
  LDA.W #$0400                              ; $85F3F7 |
  SEC                                       ; $85F3FA |
  RTL                                       ; $85F3FB |

CODE_85F3FC:
  LDA.W #$04C0                              ; $85F3FC |
  SEC                                       ; $85F3FF |
  RTL                                       ; $85F400 |

CODE_85F401:
  INC.W $19B2                               ; $85F401 |
  JSL.L CODE_FL_85F30A                      ; $85F404 |
  BCC CODE_85F420                           ; $85F408 |
  STA.B $00                                 ; $85F40A |
  STZ.W $19CC                               ; $85F40C |
  LDA.B $B2                                 ; $85F40F |
  CMP.B $8E                                 ; $85F411 |
  BNE CODE_85F420                           ; $85F413 |
  LDA.B $4E,X                               ; $85F415 |
  BNE CODE_85F421                           ; $85F417 |
  LDA.W #$0001                              ; $85F419 |
  JML.L CODE_JL_85F2F8                      ; $85F41C |

CODE_85F420:
  RTL                                       ; $85F420 |

CODE_85F421:
  JSL.L CODE_FL_80E9D9                      ; $85F421 |
  JML.L CODE_FL_848000                      ; $85F425 |

CODE_85F429:
  INC.W $19B2                               ; $85F429 |
  JSL.L CODE_FL_85F386                      ; $85F42C |
  BCC CODE_85F468                           ; $85F430 |
  STA.B $00                                 ; $85F432 |
  STZ.W $19CC                               ; $85F434 |
  LDA.L $7002AE                             ; $85F437 |
  BEQ CODE_85F444                           ; $85F43B |
  LDA.W #$0001                              ; $85F43D |
  STA.L $7003EC                             ; $85F440 |

CODE_85F444:
  LDA.B $4E,X                               ; $85F444 |
  BNE CODE_85F421                           ; $85F446 |
  LDA.W #$0002                              ; $85F448 |
  JML.L CODE_JL_85F2F8                      ; $85F44B |

CODE_85F44F:
  INC.W $19B2                               ; $85F44F |
  JSL.L CODE_FL_85F386                      ; $85F452 |
  BCC CODE_85F468                           ; $85F456 |
  STA.B $00                                 ; $85F458 |
  STZ.W $19CC                               ; $85F45A |
  LDA.B $4E,X                               ; $85F45D |
  BNE CODE_85F421                           ; $85F45F |
  LDA.W #$0002                              ; $85F461 |
  JML.L CODE_JL_85F2F8                      ; $85F464 |

CODE_85F468:
  RTL                                       ; $85F468 |

  LDA.W $0418                               ; $85F469 |
  BEQ CODE_85F477                           ; $85F46C |
  LDA.W $043A                               ; $85F46E |
  ORA.W #$0300                              ; $85F471 |
  STA.W $043A                               ; $85F474 |

CODE_85F477:
  LDA.W $04D8                               ; $85F477 |
  BEQ CODE_85F485                           ; $85F47A |
  LDA.W $04FA                               ; $85F47C |
  ORA.W #$0300                              ; $85F47F |
  STA.W $04FA                               ; $85F482 |

CODE_85F485:
  RTL                                       ; $85F485 |

CODE_85F486:
  LDA.B $1A,X                               ; $85F486 |
  BNE CODE_85F4EB                           ; $85F488 |
  INC.W $19B2                               ; $85F48A |
  STZ.W $19CC                               ; $85F48D |
  LDY.W $197E                               ; $85F490 |
  BEQ CODE_85F4EA                           ; $85F493 |
  LDA.W $0018,Y                             ; $85F495 |
  BEQ CODE_85F4EA                           ; $85F498 |
  LDA.W $001A,Y                             ; $85F49A |
  CMP.W #$0001                              ; $85F49D |
  BNE CODE_85F4EA                           ; $85F4A0 |
  LDA.W $0022,Y                             ; $85F4A2 |
  CMP.W #$0026                              ; $85F4A5 |
  BNE CODE_85F4EA                           ; $85F4A8 |
  LDA.B $09,X                               ; $85F4AA |
  CLC                                       ; $85F4AC |
  ADC.W #$0030                              ; $85F4AD |
  SEC                                       ; $85F4B0 |
  SBC.W $0009,Y                             ; $85F4B1 |
  CMP.W #$0060                              ; $85F4B4 |
  BCS CODE_85F4EA                           ; $85F4B7 |
  LDA.B $0D,X                               ; $85F4B9 |
  CLC                                       ; $85F4BB |
  ADC.W #$0030                              ; $85F4BC |
  SEC                                       ; $85F4BF |
  SBC.W $000D,Y                             ; $85F4C0 |
  CMP.W #$0060                              ; $85F4C3 |
  BCS CODE_85F4EA                           ; $85F4C6 |
  INC.B $1A,X                               ; $85F4C8 |
  LDA.W #$0060                              ; $85F4CA |
  STA.B $2C,X                               ; $85F4CD |
  LDA.W #$0001                              ; $85F4CF |
  STA.B $E4                                 ; $85F4D2 |
  STZ.W $0498                               ; $85F4D4 |
  STZ.W $049A                               ; $85F4D7 |
  STZ.W $0558                               ; $85F4DA |
  STZ.W $055A                               ; $85F4DD |
  SEP #$20                                  ; $85F4E0 |
  LDA.B #$01                                ; $85F4E2 |
  STA.L $700690                             ; $85F4E4 |
  REP #$20                                  ; $85F4E8 |

CODE_85F4EA:
  RTL                                       ; $85F4EA |

CODE_85F4EB:
  DEC.B $2C,X                               ; $85F4EB |
  BNE CODE_85F4EA                           ; $85F4ED |
  STZ.B $E4                                 ; $85F4EF |
  JMP.W CODE_JP_85F576                      ; $85F4F1 |

CODE_85F4F4:
  INC.W $19B2                               ; $85F4F4 |
  STZ.W $19CC                               ; $85F4F7 |
  LDY.W $197E                               ; $85F4FA |
  BNE CODE_85F502                           ; $85F4FD |
  JMP.W CODE_JP_85F58C                      ; $85F4FF |

CODE_85F502:
  LDA.W $0018,Y                             ; $85F502 |
  BNE CODE_85F50A                           ; $85F505 |
  JMP.W CODE_JP_85F58C                      ; $85F507 |

CODE_85F50A:
  LDA.W $001A,Y                             ; $85F50A |
  CMP.W #$0001                              ; $85F50D |
  BEQ CODE_85F515                           ; $85F510 |
  JMP.W CODE_JP_85F58C                      ; $85F512 |

CODE_85F515:
  LDA.W $0022,Y                             ; $85F515 |
  CMP.W #$0026                              ; $85F518 |
  BEQ CODE_85F53D                           ; $85F51B |
  LDA.W $0092,Y                             ; $85F51D |
  BIT.W #$0080                              ; $85F520 |
  BEQ CODE_85F52D                           ; $85F523 |
  LDA.W $0022,Y                             ; $85F525 |
  CMP.W #$0032                              ; $85F528 |
  BEQ CODE_85F53D                           ; $85F52B |

CODE_85F52D:
  LDA.W $0092,Y                             ; $85F52D |
  BIT.W #$0020                              ; $85F530 |
  BEQ CODE_JP_85F58C                        ; $85F533 |
  LDA.W $0022,Y                             ; $85F535 |
  CMP.W #$0046                              ; $85F538 |
  BNE CODE_JP_85F58C                        ; $85F53B |

CODE_85F53D:
  LDA.B $09,X                               ; $85F53D |
  CLC                                       ; $85F53F |
  ADC.W #$0030                              ; $85F540 |
  SEC                                       ; $85F543 |
  SBC.W $0009,Y                             ; $85F544 |
  CMP.W #$0060                              ; $85F547 |
  BCS CODE_JP_85F58C                        ; $85F54A |
  LDA.B $0D,X                               ; $85F54C |
  CLC                                       ; $85F54E |
  ADC.W #$0030                              ; $85F54F |
  SEC                                       ; $85F552 |
  SBC.W $000D,Y                             ; $85F553 |
  CMP.W #$0060                              ; $85F556 |
  BCS CODE_JP_85F58C                        ; $85F559 |
  LDA.W $197E                               ; $85F55B |
  CMP.B $A6                                 ; $85F55E |
  BEQ CODE_JP_85F576                        ; $85F560 |
  LDA.B $A6                                 ; $85F562 |
  BEQ CODE_JP_85F576                        ; $85F564 |
  PHY                                       ; $85F566 |
  TXY                                       ; $85F567 |
  JSL.L CODE_FL_83B38E                      ; $85F568 |
  PLY                                       ; $85F56C |
  TXY                                       ; $85F56D |
  JSL.L CODE_FL_83B1D8                      ; $85F56E |
  JSL.L CODE_FL_83B3E0                      ; $85F572 |

CODE_JP_85F576:
  LDA.W $197E                               ; $85F576 |
  STA.W $193A                               ; $85F579 |
  LDA.B $B2                                 ; $85F57C |
  CMP.B $8E                                 ; $85F57E |
  BNE CODE_JP_85F58C                        ; $85F580 |
  LDA.B $4E,X                               ; $85F582 |
  JSL.L CODE_FL_80E9E7                      ; $85F584 |
  JSL.L CODE_FL_848000                      ; $85F588 |

CODE_JP_85F58C:
  RTL                                       ; $85F58C |

CODE_85F58D:
  LDA.B $1A,X                               ; $85F58D |
  BNE CODE_85F5BD                           ; $85F58F |
  JSL.L CODE_FL_85F614                      ; $85F591 |
  BCC CODE_85F5BC                           ; $85F595 |
  STZ.W $19CC                               ; $85F597 |
  SEP #$20                                  ; $85F59A |
  LDA.B #$01                                ; $85F59C |
  STA.L $700690                             ; $85F59E |
  REP #$20                                  ; $85F5A2 |
  LDA.W #$0001                              ; $85F5A4 |
  STA.B $E4                                 ; $85F5A7 |
  STZ.W $0498                               ; $85F5A9 |
  STZ.W $049A                               ; $85F5AC |
  STZ.W $0558                               ; $85F5AF |
  STZ.W $055A                               ; $85F5B2 |
  INC.B $1A,X                               ; $85F5B5 |
  LDA.W #$0060                              ; $85F5B7 |
  STA.B $2C,X                               ; $85F5BA |

CODE_85F5BC:
  RTL                                       ; $85F5BC |

CODE_85F5BD:
  DEC.B $2C,X                               ; $85F5BD |
  BNE CODE_85F5BC                           ; $85F5BF |
  STZ.B $E4                                 ; $85F5C1 |
  BRA CODE_85F5D9                           ; $85F5C3 |

CODE_85F5C5:
  JSL.L CODE_FL_85F614                      ; $85F5C5 |
  BCC CODE_85F5F2                           ; $85F5C9 |
  STX.W $19CC                               ; $85F5CB |
  STZ.W $19CE                               ; $85F5CE |
  BRA CODE_85F5DC                           ; $85F5D1 |

CODE_JL_85F5D3:
  JSL.L CODE_FL_85F614                      ; $85F5D3 |
  BCC CODE_85F5F2                           ; $85F5D7 |

CODE_85F5D9:
  STZ.W $19CC                               ; $85F5D9 |

CODE_85F5DC:
  LDA.W $197E                               ; $85F5DC |
  STA.W $193A                               ; $85F5DF |
  LDA.B $B2                                 ; $85F5E2 |
  CMP.B $8E                                 ; $85F5E4 |
  BNE CODE_85F5F2                           ; $85F5E6 |
  LDA.B $4E,X                               ; $85F5E8 |
  JSL.L CODE_FL_80E9E7                      ; $85F5EA |
  JSL.L CODE_FL_848000                      ; $85F5EE |

CODE_85F5F2:
  RTL                                       ; $85F5F2 |

  JSL.L CODE_FL_85F614                      ; $85F5F3 |
  BCC CODE_85F613                           ; $85F5F7 |
  STZ.W $19CC                               ; $85F5F9 |
  LDA.W $197E                               ; $85F5FC |
  STA.W $193A                               ; $85F5FF |
  LDA.B $B2                                 ; $85F602 |
  CMP.B $8E                                 ; $85F604 |
  BNE CODE_85F613                           ; $85F606 |
  LDA.W #$0000                              ; $85F608 |
  JSL.L CODE_FL_80E9E7                      ; $85F60B |
  JSL.L CODE_FL_848000                      ; $85F60F |

CODE_85F613:
  RTL                                       ; $85F613 |

CODE_FL_85F614:
  INC.W $19B2                               ; $85F614 |
  LDY.W $197E                               ; $85F617 |
  BEQ CODE_85F649                           ; $85F61A |
  LDA.W $0018,Y                             ; $85F61C |
  BEQ CODE_85F649                           ; $85F61F |
  LDA.W $001A,Y                             ; $85F621 |
  CMP.W #$0001                              ; $85F624 |
  BNE CODE_85F649                           ; $85F627 |
  LDA.B $09,X                               ; $85F629 |
  CLC                                       ; $85F62B |
  ADC.W #$0030                              ; $85F62C |
  SEC                                       ; $85F62F |
  SBC.W $0009,Y                             ; $85F630 |
  CMP.W #$0060                              ; $85F633 |
  BCS CODE_85F649                           ; $85F636 |
  LDA.B $0D,X                               ; $85F638 |
  CLC                                       ; $85F63A |
  ADC.W #$0030                              ; $85F63B |
  SEC                                       ; $85F63E |
  SBC.W $000D,Y                             ; $85F63F |
  CMP.W #$0060                              ; $85F642 |
  BCS CODE_85F649                           ; $85F645 |
  SEC                                       ; $85F647 |
  RTL                                       ; $85F648 |

CODE_85F649:
  CLC                                       ; $85F649 |
  RTL                                       ; $85F64A |

CODE_85F64B:
  INC.W $19B2                               ; $85F64B |
  LDY.W $197E                               ; $85F64E |
  BNE CODE_85F656                           ; $85F651 |
  JMP.W CODE_JP_85F6D9                      ; $85F653 |

CODE_85F656:
  LDA.W $0048,Y                             ; $85F656 |
  BNE CODE_85F65E                           ; $85F659 |
  JMP.W CODE_JP_85F6D9                      ; $85F65B |

CODE_85F65E:
  LDA.B $28                                 ; $85F65E |
  CPY.W #$0400                              ; $85F660 |
  BEQ CODE_85F667                           ; $85F663 |
  LDA.B $2A                                 ; $85F665 |

CODE_85F667:
  BIT.W #$0800                              ; $85F667 |
  BEQ CODE_JP_85F6D9                        ; $85F66A |
  LDA.W $0094,Y                             ; $85F66C |
  CMP.W #$0001                              ; $85F66F |
  BNE CODE_JP_85F6D9                        ; $85F672 |
  LDA.W $0018,Y                             ; $85F674 |
  BEQ CODE_JP_85F6D9                        ; $85F677 |
  LDA.W $001A,Y                             ; $85F679 |
  CMP.W #$0001                              ; $85F67C |
  BNE CODE_JP_85F6D9                        ; $85F67F |
  LDA.B $09,X                               ; $85F681 |
  CLC                                       ; $85F683 |
  ADC.W #$0014                              ; $85F684 |
  SEC                                       ; $85F687 |
  SBC.W $0009,Y                             ; $85F688 |
  CMP.W #$0028                              ; $85F68B |
  BCS CODE_JP_85F6D9                        ; $85F68E |
  LDA.B $0D,X                               ; $85F690 |
  CLC                                       ; $85F692 |
  ADC.W #$0030                              ; $85F693 |
  SEC                                       ; $85F696 |
  SBC.W $000D,Y                             ; $85F697 |
  CMP.W #$0060                              ; $85F69A |
  BCS CODE_JP_85F6D9                        ; $85F69D |

CODE_JL_85F69F:
  LDA.B $09,X                               ; $85F69F |
  CLC                                       ; $85F6A1 |
  ADC.W $1662                               ; $85F6A2 |
  STA.W $19BE                               ; $85F6A5 |
  LDA.B $0D,X                               ; $85F6A8 |
  CLC                                       ; $85F6AA |
  ADC.W $1672                               ; $85F6AB |
  CLC                                       ; $85F6AE |
  ADC.W #$0010                              ; $85F6AF |
  STA.W $19C0                               ; $85F6B2 |
  LDA.B $B2                                 ; $85F6B5 |
  STA.W $19C4                               ; $85F6B7 |

CODE_JP_85F6BA:
  LDA.B $3A,X                               ; $85F6BA |
  STA.B $C0                                 ; $85F6BC |
  LDA.B $40,X                               ; $85F6BE |
  STA.W $1934                               ; $85F6C0 |
  STX.W $19CC                               ; $85F6C3 |
  STZ.W $19CE                               ; $85F6C6 |
  LDA.W $197E                               ; $85F6C9 |
  STA.W $193A                               ; $85F6CC |
  LDA.B $4E,X                               ; $85F6CF |
  JSL.L CODE_FL_80E9E7                      ; $85F6D1 |
  JSL.L CODE_FL_84801F                      ; $85F6D5 |

CODE_JP_85F6D9:
  RTL                                       ; $85F6D9 |

CODE_85F6DA:
  INC.W $19B2                               ; $85F6DA |
  LDY.W $197E                               ; $85F6DD |
  BEQ CODE_85F736                           ; $85F6E0 |
  LDA.W $0048,Y                             ; $85F6E2 |
  BEQ CODE_85F736                           ; $85F6E5 |
  LDA.B $28                                 ; $85F6E7 |
  CPY.W #$0400                              ; $85F6E9 |
  BEQ CODE_85F6F0                           ; $85F6EC |
  LDA.B $2A                                 ; $85F6EE |

CODE_85F6F0:
  BIT.W #$0400                              ; $85F6F0 |
  BEQ CODE_85F736                           ; $85F6F3 |
  LDA.W $0094,Y                             ; $85F6F5 |
  CMP.W #$0002                              ; $85F6F8 |
  BNE CODE_JP_85F6D9                        ; $85F6FB |
  LDA.W $0018,Y                             ; $85F6FD |
  BEQ CODE_85F736                           ; $85F700 |
  LDA.W $001A,Y                             ; $85F702 |
  CMP.W #$0001                              ; $85F705 |
  BNE CODE_85F736                           ; $85F708 |
  LDA.B $09,X                               ; $85F70A |
  CLC                                       ; $85F70C |
  ADC.W #$0014                              ; $85F70D |
  SEC                                       ; $85F710 |
  SBC.W $0009,Y                             ; $85F711 |
  CMP.W #$0028                              ; $85F714 |
  BCS CODE_85F736                           ; $85F717 |
  LDA.B $0D,X                               ; $85F719 |
  CLC                                       ; $85F71B |
  ADC.W #$0030                              ; $85F71C |
  SEC                                       ; $85F71F |
  SBC.W $000D,Y                             ; $85F720 |
  CMP.W #$0060                              ; $85F723 |
  BCS CODE_85F736                           ; $85F726 |
  JSL.L CODE_FL_80E994                      ; $85F728 |
  LDA.W #$FFFF                              ; $85F72C |
  STA.B $C0                                 ; $85F72F |
  LDA.W #$000D                              ; $85F731 |
  STA.B $7E                                 ; $85F734 |

CODE_85F736:
  RTL                                       ; $85F736 |

CODE_85F737:
  JSL.L CODE_FL_85F614                      ; $85F737 |
  BCC CODE_85F740                           ; $85F73B |
  JMP.W CODE_JP_85F6BA                      ; $85F73D |

CODE_85F740:
  RTL                                       ; $85F740 |

CODE_FL_85F741:
  STZ.B $20                                 ; $85F741 |
  STZ.B $22                                 ; $85F743 |
  LDA.B $18,X                               ; $85F745 |
  ASL A                                     ; $85F747 |
  TAY                                       ; $85F748 |
  LDA.W CODE_0092C2,Y                       ; $85F749 |
  TAY                                       ; $85F74C |
  LDA.W $000A,Y                             ; $85F74D |
  STA.B $0E                                 ; $85F750 |
  LDA.W $000C,Y                             ; $85F752 |
  STA.B $10                                 ; $85F755 |
  LDA.B $09,X                               ; $85F757 |
  STA.B $01                                 ; $85F759 |
  LDA.B $0D,X                               ; $85F75B |
  STA.B $04                                 ; $85F75D |
  PHX                                       ; $85F75F |
  LDX.W #$0400                              ; $85F760 |
  JSR.W CODE_FN_85F776                      ; $85F763 |
  BCC CODE_85F76A                           ; $85F766 |
  INC.B $20                                 ; $85F768 |

CODE_85F76A:
  LDX.W #$04C0                              ; $85F76A |
  JSR.W CODE_FN_85F776                      ; $85F76D |
  BCC CODE_85F774                           ; $85F770 |
  INC.B $22                                 ; $85F772 |

CODE_85F774:
  PLX                                       ; $85F774 |
  RTL                                       ; $85F775 |

CODE_FN_85F776:
  LDA.B $18,X                               ; $85F776 |
  BEQ CODE_85F7A1                           ; $85F778 |
  LDA.B $1A,X                               ; $85F77A |
  CMP.W #$0001                              ; $85F77C |
  BNE CODE_85F7A1                           ; $85F77F |
  LDA.B $09,X                               ; $85F781 |
  SEC                                       ; $85F783 |
  SBC.B $01                                 ; $85F784 |
  BPL CODE_85F78C                           ; $85F786 |
  EOR.W #$FFFF                              ; $85F788 |
  INC A                                     ; $85F78B |

CODE_85F78C:
  SEC                                       ; $85F78C |
  SBC.B $0E                                 ; $85F78D |
  SBC.B $2E,X                               ; $85F78F |
  BPL CODE_85F7A1                           ; $85F791 |
  SEC                                       ; $85F793 |
  LDA.B $0D,X                               ; $85F794 |
  SBC.B $04                                 ; $85F796 |
  BMI CODE_85F7A3                           ; $85F798 |
  BEQ CODE_85F7A3                           ; $85F79A |
  SEC                                       ; $85F79C |
  SBC.B $30,X                               ; $85F79D |
  BMI CODE_85F7A8                           ; $85F79F |

CODE_85F7A1:
  CLC                                       ; $85F7A1 |
  RTS                                       ; $85F7A2 |

CODE_85F7A3:
  CLC                                       ; $85F7A3 |
  ADC.B $10                                 ; $85F7A4 |
  BMI CODE_85F7A1                           ; $85F7A6 |

CODE_85F7A8:
  LDY.B $FC                                 ; $85F7A8 |
  LDA.W $0018,Y                             ; $85F7AA |
  CMP.W #$0094                              ; $85F7AD |
  BEQ CODE_85F7C0                           ; $85F7B0 |
  CMP.W #$0153                              ; $85F7B2 |
  BEQ CODE_85F7C0                           ; $85F7B5 |
  LDA.B $32,X                               ; $85F7B7 |
  ORA.W #$0800                              ; $85F7B9 |
  STA.B $32,X                               ; $85F7BC |
  SEC                                       ; $85F7BE |
  RTS                                       ; $85F7BF |

CODE_85F7C0:
  LDA.B $32,X                               ; $85F7C0 |
  ORA.W #$0A00                              ; $85F7C2 |
  STA.B $32,X                               ; $85F7C5 |
  SEC                                       ; $85F7C7 |
  RTS                                       ; $85F7C8 |

CODE_FL_85F7C9:
  LDA.B $18,X                               ; $85F7C9 |
  ASL A                                     ; $85F7CB |
  TAY                                       ; $85F7CC |
  LDA.W CODE_0092C2,Y                       ; $85F7CD |
  TAY                                       ; $85F7D0 |
  LDA.W $0006,Y                             ; $85F7D1 |
  STA.B $0A                                 ; $85F7D4 |
  LDA.W $0008,Y                             ; $85F7D6 |
  STA.B $0C                                 ; $85F7D9 |
  LDA.W $000A,Y                             ; $85F7DB |
  STA.B $0E                                 ; $85F7DE |
  LDA.W $000C,Y                             ; $85F7E0 |
  STA.B $10                                 ; $85F7E3 |
  BIT.B $34,X                               ; $85F7E5 |
  BVC CODE_85F825                           ; $85F7E7 |
  LDA.B $04,X                               ; $85F7E9 |
  AND.W #$0020                              ; $85F7EB |
  BEQ CODE_85F7F7                           ; $85F7EE |
  CLC                                       ; $85F7F0 |
  LDA.B $09,X                               ; $85F7F1 |
  ADC.B $0A                                 ; $85F7F3 |
  BRA CODE_85F7FC                           ; $85F7F5 |

CODE_85F7F7:
  SEC                                       ; $85F7F7 |
  LDA.B $09,X                               ; $85F7F8 |
  SBC.B $0A                                 ; $85F7FA |

CODE_85F7FC:
  STA.B $01                                 ; $85F7FC |
  CLC                                       ; $85F7FE |
  LDA.B $0D,X                               ; $85F7FF |
  ADC.B $0C                                 ; $85F801 |
  STA.B $04                                 ; $85F803 |
  LDA.B $11,X                               ; $85F805 |
  STA.B $08                                 ; $85F807 |
  LDA.B $04,X                               ; $85F809 |
  AND.W #$0808                              ; $85F80B |
  STA.B $16                                 ; $85F80E |
  LDA.W $1C38                               ; $85F810 |
  LSR A                                     ; $85F813 |
  BCS CODE_85F81E                           ; $85F814 |
  LDX.B $DC                                 ; $85F816 |
  JSR.W CODE_FN_85F826                      ; $85F818 |
  LDX.B $FC                                 ; $85F81B |
  RTL                                       ; $85F81D |

CODE_85F81E:
  LDX.B $DE                                 ; $85F81E |
  JSR.W CODE_FN_85F826                      ; $85F820 |
  LDX.B $FC                                 ; $85F823 |

CODE_85F825:
  RTL                                       ; $85F825 |

CODE_FN_85F826:
  LDA.B $92,X                               ; $85F826 |
  AND.W #$1000                              ; $85F828 |
  BNE CODE_85F85E                           ; $85F82B |
  LDA.B $34,X                               ; $85F82D |
  BPL CODE_85F85E                           ; $85F82F |
  SEC                                       ; $85F831 |
  LDA.B $09,X                               ; $85F832 |
  SBC.B $01                                 ; $85F834 |
  BPL CODE_85F83C                           ; $85F836 |
  EOR.W #$FFFF                              ; $85F838 |
  INC A                                     ; $85F83B |

CODE_85F83C:
  SEC                                       ; $85F83C |
  SBC.B $0E                                 ; $85F83D |
  SBC.B $2E,X                               ; $85F83F |
  BPL CODE_85F85E                           ; $85F841 |
  LDA.B $10                                 ; $85F843 |
  LSR A                                     ; $85F845 |
  STA.B $26                                 ; $85F846 |
  SEC                                       ; $85F848 |
  LDA.B $0D,X                               ; $85F849 |
  SBC.B $04                                 ; $85F84B |
  BMI CODE_85F859                           ; $85F84D |
  BEQ CODE_85F85F                           ; $85F84F |
  SEC                                       ; $85F851 |
  SBC.B $30,X                               ; $85F852 |
  SBC.B $26                                 ; $85F854 |
  BMI CODE_85F85F                           ; $85F856 |
  RTS                                       ; $85F858 |

CODE_85F859:
  CLC                                       ; $85F859 |
  ADC.B $26                                 ; $85F85A |
  BPL CODE_85F85F                           ; $85F85C |

CODE_85F85E:
  RTS                                       ; $85F85E |

CODE_85F85F:
  LDA.B $34,X                               ; $85F85F |
  LSR A                                     ; $85F861 |
  BCC CODE_85F868                           ; $85F862 |
  LDA.B $16                                 ; $85F864 |
  BEQ CODE_85F85E                           ; $85F866 |

CODE_85F868:
  SEC                                       ; $85F868 |
  LDA.B $08                                 ; $85F869 |
  SBC.B $11,X                               ; $85F86B |
  BPL CODE_85F87D                           ; $85F86D |
  EOR.W #$FFFF                              ; $85F86F |
  INC A                                     ; $85F872 |
  LDY.B $FC                                 ; $85F873 |
  CMP.W $0042,Y                             ; $85F875 |
  BCS CODE_85F85E                           ; $85F878 |
  JMP.W CODE_JP_85F92F                      ; $85F87A |

CODE_85F87D:
  CMP.W #$0020                              ; $85F87D |
  BCS CODE_85F85E                           ; $85F880 |
  JMP.W CODE_JP_85F92F                      ; $85F882 |

CODE_FL_85F885:
  LDA.B $18,X                               ; $85F885 |
  ASL A                                     ; $85F887 |
  TAY                                       ; $85F888 |
  LDA.W CODE_0092C2,Y                       ; $85F889 |
  TAY                                       ; $85F88C |
  LDA.W $0006,Y                             ; $85F88D |
  STA.B $0A                                 ; $85F890 |
  LDA.W $0008,Y                             ; $85F892 |
  STA.B $0C                                 ; $85F895 |
  LDA.W $000A,Y                             ; $85F897 |
  STA.B $0E                                 ; $85F89A |
  LDA.W $000C,Y                             ; $85F89C |
  STA.B $10                                 ; $85F89F |

CODE_FL_85F8A1:
  BIT.B $34,X                               ; $85F8A1 |
  BVC CODE_85F8D6                           ; $85F8A3 |
  LDA.B $04,X                               ; $85F8A5 |
  AND.W #$0020                              ; $85F8A7 |
  BEQ CODE_85F8B3                           ; $85F8AA |
  CLC                                       ; $85F8AC |
  LDA.B $09,X                               ; $85F8AD |
  ADC.B $0A                                 ; $85F8AF |
  BRA CODE_85F8B8                           ; $85F8B1 |

CODE_85F8B3:
  SEC                                       ; $85F8B3 |
  LDA.B $09,X                               ; $85F8B4 |
  SBC.B $0A                                 ; $85F8B6 |

CODE_85F8B8:
  STA.B $01                                 ; $85F8B8 |
  CLC                                       ; $85F8BA |
  LDA.B $0D,X                               ; $85F8BB |
  ADC.B $0C                                 ; $85F8BD |
  STA.B $04                                 ; $85F8BF |
  LDA.W $1C38                               ; $85F8C1 |
  LSR A                                     ; $85F8C4 |
  BCS CODE_85F8CF                           ; $85F8C5 |
  LDX.B $DC                                 ; $85F8C7 |
  JSR.W CODE_FN_85F8D7                      ; $85F8C9 |
  LDX.B $FC                                 ; $85F8CC |
  RTL                                       ; $85F8CE |

CODE_85F8CF:
  LDX.B $DE                                 ; $85F8CF |
  JSR.W CODE_FN_85F8D7                      ; $85F8D1 |
  LDX.B $FC                                 ; $85F8D4 |

CODE_85F8D6:
  RTL                                       ; $85F8D6 |

CODE_FN_85F8D7:
  LDA.B $92,X                               ; $85F8D7 |
  AND.W #$1000                              ; $85F8D9 |
  BNE CODE_85F85E                           ; $85F8DC |
  LDA.B $34,X                               ; $85F8DE |
  BPL CODE_85F92E                           ; $85F8E0 |
  LDA.B $92,X                               ; $85F8E2 |
  BIT.W #$0040                              ; $85F8E4 |
  BEQ CODE_85F906                           ; $85F8E7 |
  LDA.B $09,X                               ; $85F8E9 |
  SEC                                       ; $85F8EB |
  LDA.B $09,X                               ; $85F8EC |
  SBC.B $01                                 ; $85F8EE |
  BPL CODE_85F8F6                           ; $85F8F0 |
  EOR.W #$FFFF                              ; $85F8F2 |
  INC A                                     ; $85F8F5 |

CODE_85F8F6:
  SEC                                       ; $85F8F6 |
  SBC.B $0E                                 ; $85F8F7 |
  SBC.B $2E,X                               ; $85F8F9 |
  BPL CODE_85F92E                           ; $85F8FB |
  SEC                                       ; $85F8FD |
  LDA.B $0D,X                               ; $85F8FE |
  CLC                                       ; $85F900 |
  ADC.W #$0010                              ; $85F901 |
  BRA CODE_85F91D                           ; $85F904 |

CODE_85F906:
  LDA.B $09,X                               ; $85F906 |
  SEC                                       ; $85F908 |
  LDA.B $09,X                               ; $85F909 |
  SBC.B $01                                 ; $85F90B |
  BPL CODE_85F913                           ; $85F90D |
  EOR.W #$FFFF                              ; $85F90F |
  INC A                                     ; $85F912 |

CODE_85F913:
  SEC                                       ; $85F913 |
  SBC.B $0E                                 ; $85F914 |
  SBC.B $2E,X                               ; $85F916 |
  BPL CODE_85F92E                           ; $85F918 |
  SEC                                       ; $85F91A |
  LDA.B $0D,X                               ; $85F91B |

CODE_85F91D:
  SBC.B $04                                 ; $85F91D |
  BMI CODE_85F929                           ; $85F91F |
  BEQ CODE_JP_85F92F                        ; $85F921 |
  SEC                                       ; $85F923 |
  SBC.B $30,X                               ; $85F924 |
  BMI CODE_JP_85F92F                        ; $85F926 |
  RTS                                       ; $85F928 |

CODE_85F929:
  CLC                                       ; $85F929 |
  ADC.B $10                                 ; $85F92A |
  BPL CODE_JP_85F92F                        ; $85F92C |

CODE_85F92E:
  RTS                                       ; $85F92E |

CODE_JP_85F92F:
  LDY.B $FC                                 ; $85F92F |
  LDA.W $0034,Y                             ; $85F931 |
  AND.W #$0020                              ; $85F934 |
  BEQ CODE_85F972                           ; $85F937 |
  LDA.B $32,X                               ; $85F939 |
  ORA.W #$2000                              ; $85F93B |
  STA.B $32,X                               ; $85F93E |
  LDA.W $0032,Y                             ; $85F940 |
  AND.W #$FE00                              ; $85F943 |
  ORA.W #$8000                              ; $85F946 |
  STA.W $0032,Y                             ; $85F949 |
  TXA                                       ; $85F94C |
  LSR A                                     ; $85F94D |
  LSR A                                     ; $85F94E |
  LSR A                                     ; $85F94F |
  LSR A                                     ; $85F950 |
  ORA.W $0032,Y                             ; $85F951 |
  STA.W $0032,Y                             ; $85F954 |
  TYX                                       ; $85F957 |
  LDA.B $34,X                               ; $85F958 |
  AND.W #$2000                              ; $85F95A |
  BNE CODE_85F970                           ; $85F95D |
  LDA.W $0018,Y                             ; $85F95F |
  ASL A                                     ; $85F962 |
  TAY                                       ; $85F963 |
  LDA.W CODE_0092C2,Y                       ; $85F964 |
  TAY                                       ; $85F967 |
  LDA.W $0002,Y                             ; $85F968 |
  AND.W #$00FF                              ; $85F96B |
  STA.B $1A,X                               ; $85F96E |

CODE_85F970:
  BRA CODE_85F9BD                           ; $85F970 |

CODE_85F972:
  LDA.B $38,X                               ; $85F972 |
  BNE CODE_85F9BD                           ; $85F974 |
  LDA.W $0032,Y                             ; $85F976 |
  ORA.W #$4000                              ; $85F979 |
  STA.W $0032,Y                             ; $85F97C |
  LDA.W #$0019                              ; $85F97F |
  STA.B $38,X                               ; $85F982 |
  LDA.W $0032,Y                             ; $85F984 |
  AND.W #$EFFF                              ; $85F987 |
  STA.W $0032,Y                             ; $85F98A |
  CPX.W #$04C0                              ; $85F98D |
  BNE CODE_85F998                           ; $85F990 |
  ORA.W #$1000                              ; $85F992 |
  STA.W $0032,Y                             ; $85F995 |

CODE_85F998:
  LDA.B $32,X                               ; $85F998 |
  AND.W #$FE00                              ; $85F99A |
  STA.B $32,X                               ; $85F99D |
  TYA                                       ; $85F99F |
  LSR A                                     ; $85F9A0 |
  LSR A                                     ; $85F9A1 |
  LSR A                                     ; $85F9A2 |
  LSR A                                     ; $85F9A3 |
  ORA.B $32,X                               ; $85F9A4 |
  ORA.W #$8000                              ; $85F9A6 |
  STA.B $32,X                               ; $85F9A9 |
  LDA.W $0018,Y                             ; $85F9AB |
  ASL A                                     ; $85F9AE |
  TAY                                       ; $85F9AF |
  LDA.W CODE_0092C2,Y                       ; $85F9B0 |
  TAY                                       ; $85F9B3 |
  SEP #$20                                  ; $85F9B4 |
  LDA.W $0005,Y                             ; $85F9B6 |
  STA.B $37,X                               ; $85F9B9 |
  REP #$20                                  ; $85F9BB |

CODE_85F9BD:
  PLA                                       ; $85F9BD |
  LDX.B $FC                                 ; $85F9BE |
  RTL                                       ; $85F9C0 |

CODE_FL_85F9C1:
  LDA.B $18,X                               ; $85F9C1 |
  ASL A                                     ; $85F9C3 |
  TAY                                       ; $85F9C4 |
  LDA.W CODE_0092C2,Y                       ; $85F9C5 |
  TAY                                       ; $85F9C8 |
  RTL                                       ; $85F9C9 |

CODE_FL_85F9CA:
  LDA.B $2E,X                               ; $85F9CA |
  STA.B $0E                                 ; $85F9CC |
  LDA.B $30,X                               ; $85F9CE |
  STA.B $10                                 ; $85F9D0 |
  LDA.B $4E,X                               ; $85F9D2 |
  ASL A                                     ; $85F9D4 |
  TAY                                       ; $85F9D5 |
  LDA.W LOOSE_OP_00A2ED,Y                   ; $85F9D6 |
  TAY                                       ; $85F9D9 |
  LDA.W $0002,Y                             ; $85F9DA |
  STA.B $0A                                 ; $85F9DD |
  LDA.W $0004,Y                             ; $85F9DF |
  STA.B $0C                                 ; $85F9E2 |
  BRA CODE_FL_85FA02                        ; $85F9E4 |

CODE_FL_85F9E6:
  LDA.B $4E,X                               ; $85F9E6 |
  ASL A                                     ; $85F9E8 |
  TAY                                       ; $85F9E9 |
  LDA.W LOOSE_OP_00A2ED,Y                   ; $85F9EA |
  TAY                                       ; $85F9ED |
  LDA.W $0002,Y                             ; $85F9EE |
  STA.B $0A                                 ; $85F9F1 |
  LDA.W $0004,Y                             ; $85F9F3 |
  STA.B $0C                                 ; $85F9F6 |
  LDA.W $0006,Y                             ; $85F9F8 |
  STA.B $0E                                 ; $85F9FB |
  LDA.W $0008,Y                             ; $85F9FD |
  STA.B $10                                 ; $85FA00 |

CODE_FL_85FA02:
  LDA.B $04,X                               ; $85FA02 |
  AND.W #$0020                              ; $85FA04 |
  BNE CODE_85FA10                           ; $85FA07 |
  CLC                                       ; $85FA09 |
  LDA.B $09,X                               ; $85FA0A |
  ADC.B $0A                                 ; $85FA0C |
  BRA CODE_85FA15                           ; $85FA0E |

CODE_85FA10:
  SEC                                       ; $85FA10 |
  LDA.B $09,X                               ; $85FA11 |
  SBC.B $0A                                 ; $85FA13 |

CODE_85FA15:
  STA.B $01                                 ; $85FA15 |
  CLC                                       ; $85FA17 |
  LDA.B $0D,X                               ; $85FA18 |
  ADC.B $0C                                 ; $85FA1A |
  STA.B $04                                 ; $85FA1C |
  LDA.B $11,X                               ; $85FA1E |
  STA.B $08                                 ; $85FA20 |
  LDA.B $04,X                               ; $85FA22 |
  AND.W #$0808                              ; $85FA24 |
  STA.B $16                                 ; $85FA27 |
  LDA.B $5C                                 ; $85FA29 |
  CMP.W #$0002                              ; $85FA2B |
  BEQ CODE_85FA51                           ; $85FA2E |
  LDX.W $1B76                               ; $85FA30 |
  LDA.B $16,X                               ; $85FA33 |
  STA.W $0012                               ; $85FA35 |
  STZ.B $16,X                               ; $85FA38 |
  LDA.W $1B70                               ; $85FA3A |

CODE_85FA3D:
  TAX                                       ; $85FA3D |
  LDA.B $34,X                               ; $85FA3E |
  BPL CODE_85FA45                           ; $85FA40 |
  JSR.W CODE_FN_85FB55                      ; $85FA42 |

CODE_85FA45:
  LDA.B $16,X                               ; $85FA45 |
  BNE CODE_85FA3D                           ; $85FA47 |
  LDA.W $0012                               ; $85FA49 |
  STA.B $16,X                               ; $85FA4C |
  LDX.B $FC                                 ; $85FA4E |
  RTL                                       ; $85FA50 |

CODE_85FA51:
  LDX.W $1B76                               ; $85FA51 |
  LDA.B $16,X                               ; $85FA54 |
  STA.W $0012                               ; $85FA56 |
  STZ.B $16,X                               ; $85FA59 |
  LDA.W $1B70                               ; $85FA5B |

CODE_85FA5E:
  TAX                                       ; $85FA5E |
  LDA.B $34,X                               ; $85FA5F |
  BPL CODE_85FA66                           ; $85FA61 |
  JSR.W CODE_FN_85FB04                      ; $85FA63 |

CODE_85FA66:
  LDA.B $16,X                               ; $85FA66 |
  BNE CODE_85FA5E                           ; $85FA68 |
  LDA.W $0012                               ; $85FA6A |
  STA.B $16,X                               ; $85FA6D |
  LDX.B $FC                                 ; $85FA6F |
  RTL                                       ; $85FA71 |

CODE_JL_85FA72:
  STX.B $FC                                 ; $85FA72 |
  ASL A                                     ; $85FA74 |
  TAY                                       ; $85FA75 |
  LDA.W LOOSE_OP_00A2ED,Y                   ; $85FA76 |
  TAY                                       ; $85FA79 |
  LDA.W $0006,Y                             ; $85FA7A |
  STA.B $0E                                 ; $85FA7D |
  LDA.W $0008,Y                             ; $85FA7F |
  STA.B $10                                 ; $85FA82 |
  LDA.B $3A,X                               ; $85FA84 |
  TAX                                       ; $85FA86 |
  LDA.B $04,X                               ; $85FA87 |
  AND.W #$0020                              ; $85FA89 |
  BNE CODE_85FA95                           ; $85FA8C |
  CLC                                       ; $85FA8E |
  LDA.B $09,X                               ; $85FA8F |
  ADC.B $B0,X                               ; $85FA91 |
  BRA CODE_85FA9A                           ; $85FA93 |

CODE_85FA95:
  SEC                                       ; $85FA95 |
  LDA.B $09,X                               ; $85FA96 |
  SBC.B $B0,X                               ; $85FA98 |

CODE_85FA9A:
  STA.B $01                                 ; $85FA9A |
  LDA.B $5C                                 ; $85FA9C |
  CMP.W #$0002                              ; $85FA9E |
  BNE CODE_85FADA                           ; $85FAA1 |
  LDA.B $11,X                               ; $85FAA3 |
  SEC                                       ; $85FAA5 |
  SBC.W #$0008                              ; $85FAA6 |
  STA.B $08                                 ; $85FAA9 |
  LDA.B $04,X                               ; $85FAAB |
  AND.W #$0808                              ; $85FAAD |
  STA.B $16                                 ; $85FAB0 |
  LDA.B $0D,X                               ; $85FAB2 |
  CLC                                       ; $85FAB4 |
  ADC.B $B4,X                               ; $85FAB5 |
  STA.B $04                                 ; $85FAB7 |
  LDX.W $1B76                               ; $85FAB9 |
  LDA.B $16,X                               ; $85FABC |
  STA.W $0012                               ; $85FABE |
  STZ.B $16,X                               ; $85FAC1 |
  LDA.W $1B70                               ; $85FAC3 |

CODE_85FAC6:
  TAX                                       ; $85FAC6 |
  LDA.B $34,X                               ; $85FAC7 |
  BPL CODE_85FACE                           ; $85FAC9 |
  JSR.W CODE_FN_85FB04                      ; $85FACB |

CODE_85FACE:
  LDA.B $16,X                               ; $85FACE |
  BNE CODE_85FAC6                           ; $85FAD0 |
  LDA.W $0012                               ; $85FAD2 |
  STA.B $16,X                               ; $85FAD5 |
  LDX.B $FC                                 ; $85FAD7 |
  RTL                                       ; $85FAD9 |

CODE_85FADA:
  LDA.B $0D,X                               ; $85FADA |
  CLC                                       ; $85FADC |
  ADC.B $B2,X                               ; $85FADD |
  STA.B $04                                 ; $85FADF |
  STZ.B $08                                 ; $85FAE1 |
  LDX.W $1B76                               ; $85FAE3 |
  LDA.B $16,X                               ; $85FAE6 |
  STA.W $0012                               ; $85FAE8 |
  STZ.B $16,X                               ; $85FAEB |
  LDA.W $1B70                               ; $85FAED |

CODE_85FAF0:
  TAX                                       ; $85FAF0 |
  LDA.B $34,X                               ; $85FAF1 |
  BPL CODE_85FAF8                           ; $85FAF3 |
  JSR.W CODE_FN_85FB55                      ; $85FAF5 |

CODE_85FAF8:
  LDA.B $16,X                               ; $85FAF8 |
  BNE CODE_85FAF0                           ; $85FAFA |
  LDA.W $0012                               ; $85FAFC |
  STA.B $16,X                               ; $85FAFF |
  LDX.B $FC                                 ; $85FB01 |
  RTL                                       ; $85FB03 |

CODE_FN_85FB04:
  SEC                                       ; $85FB04 |
  LDA.B $09,X                               ; $85FB05 |
  SBC.B $01                                 ; $85FB07 |
  BPL CODE_85FB0F                           ; $85FB09 |
  EOR.W #$FFFF                              ; $85FB0B |
  INC A                                     ; $85FB0E |

CODE_85FB0F:
  SEC                                       ; $85FB0F |
  SBC.B $0E                                 ; $85FB10 |
  BCC CODE_85FB18                           ; $85FB12 |
  SBC.B $2E,X                               ; $85FB14 |
  BCS CODE_85FB33                           ; $85FB16 |

CODE_85FB18:
  LDA.B $30,X                               ; $85FB18 |
  LSR A                                     ; $85FB1A |
  STA.B $26                                 ; $85FB1B |
  SEC                                       ; $85FB1D |
  LDA.B $04                                 ; $85FB1E |
  SBC.B $0D,X                               ; $85FB20 |
  BMI CODE_85FB2E                           ; $85FB22 |
  BEQ CODE_85FB7E                           ; $85FB24 |
  SEC                                       ; $85FB26 |
  SBC.B $10                                 ; $85FB27 |
  SBC.B $26                                 ; $85FB29 |
  BMI CODE_85FB34                           ; $85FB2B |
  RTS                                       ; $85FB2D |

CODE_85FB2E:
  CLC                                       ; $85FB2E |
  ADC.B $26                                 ; $85FB2F |
  BPL CODE_85FB34                           ; $85FB31 |

CODE_85FB33:
  RTS                                       ; $85FB33 |

CODE_85FB34:
  LDA.B $34,X                               ; $85FB34 |
  LSR A                                     ; $85FB36 |
  BCC CODE_85FB3D                           ; $85FB37 |
  LDA.B $16                                 ; $85FB39 |
  BEQ CODE_85FB33                           ; $85FB3B |

CODE_85FB3D:
  SEC                                       ; $85FB3D |
  LDA.B $08                                 ; $85FB3E |
  SBC.B $11,X                               ; $85FB40 |
  BPL CODE_85FB4E                           ; $85FB42 |
  EOR.W #$FFFF                              ; $85FB44 |
  INC A                                     ; $85FB47 |
  CMP.B $42,X                               ; $85FB48 |
  BCS CODE_85FB33                           ; $85FB4A |
  BRA CODE_85FB7E                           ; $85FB4C |

CODE_85FB4E:
  CMP.W #$0020                              ; $85FB4E |
  BCS CODE_85FB33                           ; $85FB51 |
  BRA CODE_85FB7E                           ; $85FB53 |

CODE_FN_85FB55:
  SEC                                       ; $85FB55 |
  LDA.B $09,X                               ; $85FB56 |
  SBC.B $01                                 ; $85FB58 |
  BPL CODE_85FB60                           ; $85FB5A |
  EOR.W #$FFFF                              ; $85FB5C |
  INC A                                     ; $85FB5F |

CODE_85FB60:
  SEC                                       ; $85FB60 |
  SBC.B $0E                                 ; $85FB61 |
  BCC CODE_85FB69                           ; $85FB63 |
  SBC.B $2E,X                               ; $85FB65 |
  BCS CODE_85FB7D                           ; $85FB67 |

CODE_85FB69:
  SEC                                       ; $85FB69 |
  LDA.B $04                                 ; $85FB6A |
  SBC.B $0D,X                               ; $85FB6C |
  BMI CODE_85FB78                           ; $85FB6E |
  BEQ CODE_85FB7E                           ; $85FB70 |
  SEC                                       ; $85FB72 |
  SBC.B $10                                 ; $85FB73 |
  BMI CODE_85FB7E                           ; $85FB75 |
  RTS                                       ; $85FB77 |

CODE_85FB78:
  CLC                                       ; $85FB78 |
  ADC.B $30,X                               ; $85FB79 |
  BPL CODE_85FB7E                           ; $85FB7B |

CODE_85FB7D:
  RTS                                       ; $85FB7D |

CODE_85FB7E:
  LDA.B $38,X                               ; $85FB7E |
  BNE CODE_85FB7D                           ; $85FB80 |
  STX.W $1C40                               ; $85FB82 |
  LDY.B $FC                                 ; $85FB85 |
  JSL.L CODE_FL_85AB0B                      ; $85FB87 |
  LDA.W $0034,Y                             ; $85FB8B |
  AND.W #$4000                              ; $85FB8E |
  BNE CODE_85FB96                           ; $85FB91 |
  JMP.W CODE_JP_85FD6C                      ; $85FB93 |

CODE_85FB96:
  LDA.W $0032,Y                             ; $85FB96 |
  ORA.W #$4000                              ; $85FB99 |
  STA.W $0032,Y                             ; $85FB9C |
  LDA.W $0034,Y                             ; $85FB9F |
  AND.W #$1000                              ; $85FBA2 |
  BEQ CODE_85FBAA                           ; $85FBA5 |
  JMP.W CODE_JP_85FC38                      ; $85FBA7 |

CODE_85FBAA:
  LDY.B $FC                                 ; $85FBAA |
  LDA.W $0032,Y                             ; $85FBAC |
  ORA.W #$4000                              ; $85FBAF |
  STA.W $0032,Y                             ; $85FBB2 |
  LDA.B $22,X                               ; $85FBB5 |
  AND.W #$0028                              ; $85FBB7 |
  BEQ CODE_85FBBF                           ; $85FBBA |
  JMP.W CODE_JP_85FC38                      ; $85FBBC |

CODE_85FBBF:
  PHX                                       ; $85FBBF |
  LDA.B $00                                 ; $85FBC0 |
  STA.B $24                                 ; $85FBC2 |
  LDA.W #$0060                              ; $85FBC4 |
  JSL.L CODE_FL_86C9C5                      ; $85FBC7 |
  LDA.B $24                                 ; $85FBCB |
  STA.B $00                                 ; $85FBCD |
  PLX                                       ; $85FBCF |
  BCC CODE_85FBD5                           ; $85FBD0 |
  JMP.W CODE_JP_85FC33                      ; $85FBD2 |

CODE_85FBD5:
  LDA.B $01                                 ; $85FBD5 |
  SBC.B $09,X                               ; $85FBD7 |
  STA.B $26                                 ; $85FBD9 |
  BPL CODE_85FBE1                           ; $85FBDB |
  EOR.W #$FFFF                              ; $85FBDD |
  INC A                                     ; $85FBE0 |

CODE_85FBE1:
  STA.B $24                                 ; $85FBE1 |
  LDA.B $0E                                 ; $85FBE3 |
  ADC.B $2E,X                               ; $85FBE5 |
  SBC.B $24                                 ; $85FBE7 |
  LSR A                                     ; $85FBE9 |
  STA.B $24                                 ; $85FBEA |
  LDA.B $26                                 ; $85FBEC |
  BPL CODE_85FBF8                           ; $85FBEE |
  LDA.B $01                                 ; $85FBF0 |
  ADC.B $0E                                 ; $85FBF2 |
  SBC.B $24                                 ; $85FBF4 |
  BRA CODE_85FBFE                           ; $85FBF6 |

CODE_85FBF8:
  LDA.B $01                                 ; $85FBF8 |
  SBC.B $0E                                 ; $85FBFA |
  ADC.B $24                                 ; $85FBFC |

CODE_85FBFE:
  STA.W $0009,Y                             ; $85FBFE |
  BIT.W $1C3E                               ; $85FC01 |
  BPL CODE_85FC13                           ; $85FC04 |
  LDA.B $0D,X                               ; $85FC06 |
  SEC                                       ; $85FC08 |
  SBC.B $08                                 ; $85FC09 |
  SBC.W #$0010                              ; $85FC0B |
  STA.W $000D,Y                             ; $85FC0E |
  BRA CODE_85FC1F                           ; $85FC11 |

CODE_85FC13:
  LDA.B $10                                 ; $85FC13 |
  LSR A                                     ; $85FC15 |
  SBC.B $04                                 ; $85FC16 |
  EOR.W #$FFFF                              ; $85FC18 |
  INC A                                     ; $85FC1B |
  STA.W $000D,Y                             ; $85FC1C |

CODE_85FC1F:
  LDA.W #$0045                              ; $85FC1F |
  JSL.L CODE_FL_86CAE6                      ; $85FC22 |
  LDA.B $22,X                               ; $85FC26 |
  AND.W #$0010                              ; $85FC28 |
  BEQ CODE_JP_85FC33                        ; $85FC2B |
  LDA.W #$1898                              ; $85FC2D |
  STA.W $0004,Y                             ; $85FC30 |

CODE_JP_85FC33:
  LDA.W #$0019                              ; $85FC33 |
  STA.B $38,X                               ; $85FC36 |

CODE_JP_85FC38:
  LDA.B $32,X                               ; $85FC38 |
  AND.W #$FE00                              ; $85FC3A |
  STA.B $32,X                               ; $85FC3D |
  LDA.B $FC                                 ; $85FC3F |
  LSR A                                     ; $85FC41 |
  LSR A                                     ; $85FC42 |
  LSR A                                     ; $85FC43 |
  LSR A                                     ; $85FC44 |
  ORA.B $32,X                               ; $85FC45 |
  ORA.W #$8000                              ; $85FC47 |
  LDY.B $FC                                 ; $85FC4A |
  CPY.W #$0850                              ; $85FC4C |
  BCC CODE_85FC54                           ; $85FC4F |
  ORA.W #$0200                              ; $85FC51 |

CODE_85FC54:
  STA.B $32,X                               ; $85FC54 |
  LDA.B $22,X                               ; $85FC56 |
  AND.W #$0200                              ; $85FC58 |
  BEQ CODE_85FC72                           ; $85FC5B |
  LDA.B $32,X                               ; $85FC5D |
  AND.W #$0200                              ; $85FC5F |
  BNE CODE_85FC6B                           ; $85FC62 |
  LDA.B $32,X                               ; $85FC64 |
  ORA.W #$4000                              ; $85FC66 |
  BRA CODE_85FC70                           ; $85FC69 |

CODE_85FC6B:
  LDA.B $32,X                               ; $85FC6B |
  ORA.W #$2000                              ; $85FC6D |

CODE_85FC70:
  STA.B $32,X                               ; $85FC70 |

CODE_85FC72:
  LDY.B $FC                                 ; $85FC72 |
  LDA.W $004E,Y                             ; $85FC74 |
  ASL A                                     ; $85FC77 |
  TAY                                       ; $85FC78 |
  LDA.W LOOSE_OP_00A2ED,Y                   ; $85FC79 |
  TAY                                       ; $85FC7C |
  LDA.W $0001,Y                             ; $85FC7D |
  AND.W #$00FF                              ; $85FC80 |
  SEP #$20                                  ; $85FC83 |
  STA.B $37,X                               ; $85FC85 |
  REP #$20                                  ; $85FC87 |
  PHA                                       ; $85FC89 |
  LDA.B $35,X                               ; $85FC8A |
  AND.W #$0020                              ; $85FC8C |
  BEQ CODE_85FC9D                           ; $85FC8F |
  PLA                                       ; $85FC91 |
  LDA.B $22,X                               ; $85FC92 |
  AND.W #$0028                              ; $85FC94 |
  BNE CODE_85FC9C                           ; $85FC97 |
  JMP.W CODE_JP_85FD6C                      ; $85FC99 |

CODE_85FC9C:
  RTS                                       ; $85FC9C |

CODE_85FC9D:
  PLA                                       ; $85FC9D |
  PHX                                       ; $85FC9E |
  ASL A                                     ; $85FC9F |
  TAX                                       ; $85FCA0 |
  LDA.L PTR16_85FCAB,X                      ; $85FCA1 |
  PLX                                       ; $85FCA5 |
  STA.B $00                                 ; $85FCA6 |
  JMP.W ($0000)                             ; $85FCA8 |

PTR16_85FCAB:
  dw CODE_85FCE4                            ; $85FCAB |
  dw CODE_85FCCB                            ; $85FCAD |
  dw CODE_85FCD7                            ; $85FCAF |
  dw CODE_85FCD5                            ; $85FCB1 |
  dw CODE_85FCE4                            ; $85FCB3 |
  dw CODE_85FDD0                            ; $85FCB5 |
  dw CODE_85FCE4                            ; $85FCB7 |
  dw CODE_85FCD7                            ; $85FCB9 |
  dw CODE_85FDD0                            ; $85FCBB |
  dw CODE_85FCE4                            ; $85FCBD |
  dw CODE_85FCD5                            ; $85FCBF |
  dw CODE_85FCE4                            ; $85FCC1 |
  dw CODE_85FCE4                            ; $85FCC3 |
  dw CODE_85FCE4                            ; $85FCC5 |
  dw CODE_85FCE4                            ; $85FCC7 |
  dw CODE_85FCE4                            ; $85FCC9 |

CODE_85FCCB:
  LDA.B $22,X                               ; $85FCCB |
  AND.W #$0004                              ; $85FCCD |
  BNE CODE_85FCD5                           ; $85FCD0 |
  JMP.W CODE_JP_85FDC0                      ; $85FCD2 |

CODE_85FCD5:
  INC.B $22                                 ; $85FCD5 |

CODE_85FCD7:
  LDA.B $22,X                               ; $85FCD7 |
  AND.W #$0004                              ; $85FCD9 |
  BEQ CODE_85FCE4                           ; $85FCDC |
  SEP #$20                                  ; $85FCDE |
  LDA.B #$00                                ; $85FCE0 |
  STA.B $37,X                               ; $85FCE2 |

CODE_85FCE4:
  SEP #$20                                  ; $85FCE4 |
  PHY                                       ; $85FCE6 |
  LDY.B $FC                                 ; $85FCE7 |
  JSL.L CODE_FL_85AB0B                      ; $85FCE9 |
  LDA.W $0093,Y                             ; $85FCED |
  BPL CODE_85FD09                           ; $85FCF0 |
  PLY                                       ; $85FCF2 |
  SEC                                       ; $85FCF3 |
  LDA.B $36,X                               ; $85FCF4 |
  SBC.W $0000,Y                             ; $85FCF6 |
  BEQ CODE_JP_85FD28                        ; $85FCF9 |
  BCC CODE_JP_85FD28                        ; $85FCFB |
  SEC                                       ; $85FCFD |
  SBC.W $0000,Y                             ; $85FCFE |
  STA.B $36,X                               ; $85FD01 |
  BEQ CODE_JP_85FD28                        ; $85FD03 |
  BCC CODE_JP_85FD28                        ; $85FD05 |
  BRA CODE_JP_85FD16                        ; $85FD07 |

CODE_85FD09:
  PLY                                       ; $85FD09 |
  SEC                                       ; $85FD0A |
  LDA.B $36,X                               ; $85FD0B |
  SBC.W $0000,Y                             ; $85FD0D |
  STA.B $36,X                               ; $85FD10 |
  BEQ CODE_JP_85FD28                        ; $85FD12 |
  BCC CODE_JP_85FD28                        ; $85FD14 |

CODE_JP_85FD16:
  REP #$20                                  ; $85FD16 |
  JSL.L CODE_FL_85F9C1                      ; $85FD18 |
  LDA.W $0010,Y                             ; $85FD1C |
  AND.W #$00FF                              ; $85FD1F |
  BEQ CODE_JP_85FD6C                        ; $85FD22 |
  STA.B $1A,X                               ; $85FD24 |
  BRA CODE_JP_85FD6C                        ; $85FD26 |

CODE_JP_85FD28:
  STZ.B $36,X                               ; $85FD28 |
  REP #$20                                  ; $85FD2A |
  LDA.B $37,X                               ; $85FD2C |
  AND.W #$00FF                              ; $85FD2E |
  PHX                                       ; $85FD31 |
  ASL A                                     ; $85FD32 |
  TAX                                       ; $85FD33 |
  LDA.L PTR16_85FD3E,X                      ; $85FD34 |
  PLX                                       ; $85FD38 |
  STA.B $00                                 ; $85FD39 |
  JMP.W ($0000)                             ; $85FD3B |

PTR16_85FD3E:
  dw CODE_85FD5E                            ; $85FD3E |
  dw CODE_85FD5E                            ; $85FD40 |
  dw CODE_85FD5E                            ; $85FD42 |
  dw CODE_85FD78                            ; $85FD44 |
  dw CODE_85FD5E                            ; $85FD46 |
  dw CODE_85FD5E                            ; $85FD48 |
  dw CODE_85FD5E                            ; $85FD4A |
  dw CODE_85FD90                            ; $85FD4C |
  dw CODE_85FD5E                            ; $85FD4E |
  dw CODE_85FD5E                            ; $85FD50 |
  dw CODE_85FD78                            ; $85FD52 |
  dw CODE_85FD5E                            ; $85FD54 |
  dw CODE_85FD5E                            ; $85FD56 |
  dw CODE_85FD5E                            ; $85FD58 |
  dw CODE_85FD5E                            ; $85FD5A |
  dw CODE_85FD5E                            ; $85FD5C |

CODE_85FD5E:
  JSL.L CODE_FL_85F9C1                      ; $85FD5E |
  LDA.W $0002,Y                             ; $85FD62 |
  AND.W #$00FF                              ; $85FD65 |
  BEQ CODE_JP_85FD6C                        ; $85FD68 |
  STA.B $1A,X                               ; $85FD6A |

CODE_JP_85FD6C:
  PLA                                       ; $85FD6C |
  LDX.W $1B76                               ; $85FD6D |
  LDA.W $0012                               ; $85FD70 |
  STA.B $16,X                               ; $85FD73 |
  LDX.B $FC                                 ; $85FD75 |
  RTL                                       ; $85FD77 |

CODE_85FD78:
  LDA.B $34,X                               ; $85FD78 |
  AND.W #$0002                              ; $85FD7A |
  BEQ CODE_85FD5E                           ; $85FD7D |
  JSL.L CODE_FL_85F9C1                      ; $85FD7F |
  LDA.W $000F,Y                             ; $85FD83 |
  AND.W #$00FF                              ; $85FD86 |
  BEQ CODE_JP_85FD6C                        ; $85FD89 |
  STA.B $1A,X                               ; $85FD8B |
  BRA CODE_JP_85FD6C                        ; $85FD8D |

  RTS                                       ; $85FD8F |

CODE_85FD90:
  LDA.B $34,X                               ; $85FD90 |
  AND.W #$0100                              ; $85FD92 |
  BEQ CODE_85FD5E                           ; $85FD95 |
  PHX                                       ; $85FD97 |
  LDA.W #$017F                              ; $85FD98 |
  JSL.L CODE_FL_86C9C5                      ; $85FD9B |
  PLX                                       ; $85FD9F |
  BCS CODE_85FD5E                           ; $85FDA0 |
  JSL.L CODE_FL_86C7C4                      ; $85FDA2 |
  LDA.B $00,X                               ; $85FDA6 |
  STA.W $0000,Y                             ; $85FDA8 |
  LDA.B $32,X                               ; $85FDAB |
  STA.W $0032,Y                             ; $85FDAD |
  LDA.B $09,X                               ; $85FDB0 |
  STA.W $0009,Y                             ; $85FDB2 |
  LDA.B $0D,X                               ; $85FDB5 |
  STA.W $000D,Y                             ; $85FDB7 |
  JSL.L CODE_FL_86CA2D                      ; $85FDBA |
  BRA CODE_JP_85FD6C                        ; $85FDBE |

CODE_JP_85FDC0:
  JSL.L CODE_FL_85F9C1                      ; $85FDC0 |
  LDA.W $000E,Y                             ; $85FDC4 |
  AND.W #$00FF                              ; $85FDC7 |
  BEQ CODE_JP_85FD6C                        ; $85FDCA |
  STA.B $1A,X                               ; $85FDCC |
  BRA CODE_JP_85FD6C                        ; $85FDCE |

CODE_85FDD0:
  LDA.B $32,X                               ; $85FDD0 |
  AND.W #$7FFF                              ; $85FDD2 |
  STA.B $32,X                               ; $85FDD5 |
  JMP.W CODE_JP_85FD6C                      ; $85FDD7 |

CODE_FL_85FDDA:
  LDA.B $18,X                               ; $85FDDA |
  ASL A                                     ; $85FDDC |
  TAY                                       ; $85FDDD |
  LDA.W CODE_0092C2,Y                       ; $85FDDE |
  TAY                                       ; $85FDE1 |
  LDA.W $0006,Y                             ; $85FDE2 |
  STA.B $0A                                 ; $85FDE5 |
  LDA.W $0008,Y                             ; $85FDE7 |
  STA.B $0C                                 ; $85FDEA |
  LDA.W $000A,Y                             ; $85FDEC |
  STA.B $0E                                 ; $85FDEF |
  LDA.W $000C,Y                             ; $85FDF1 |
  STA.B $10                                 ; $85FDF4 |

CODE_FL_85FDF6:
  LDA.B $34,X                               ; $85FDF6 |
  AND.W #$4000                              ; $85FDF8 |
  BEQ CODE_85FE39                           ; $85FDFB |
  LDA.B $04,X                               ; $85FDFD |
  AND.W #$0020                              ; $85FDFF |
  BNE CODE_85FE0B                           ; $85FE02 |
  CLC                                       ; $85FE04 |
  LDA.B $09,X                               ; $85FE05 |
  ADC.B $0A                                 ; $85FE07 |
  BRA CODE_85FE10                           ; $85FE09 |

CODE_85FE0B:
  SEC                                       ; $85FE0B |
  LDA.B $09,X                               ; $85FE0C |
  SBC.B $0A                                 ; $85FE0E |

CODE_85FE10:
  STA.B $01                                 ; $85FE10 |
  CLC                                       ; $85FE12 |
  LDA.B $0D,X                               ; $85FE13 |
  ADC.B $0C                                 ; $85FE15 |
  STA.B $04                                 ; $85FE17 |
  LDX.W $1B76                               ; $85FE19 |
  LDA.B $16,X                               ; $85FE1C |
  STA.W $0012                               ; $85FE1E |
  STZ.B $16,X                               ; $85FE21 |
  LDA.W $1B70                               ; $85FE23 |

CODE_85FE26:
  TAX                                       ; $85FE26 |
  LDA.B $34,X                               ; $85FE27 |
  BPL CODE_85FE2E                           ; $85FE29 |
  JSR.W CODE_FN_85FE3A                      ; $85FE2B |

CODE_85FE2E:
  LDA.B $16,X                               ; $85FE2E |
  BNE CODE_85FE26                           ; $85FE30 |
  LDA.W $0012                               ; $85FE32 |
  STA.B $16,X                               ; $85FE35 |
  LDX.B $FC                                 ; $85FE37 |

CODE_85FE39:
  RTL                                       ; $85FE39 |

CODE_FN_85FE3A:
  SEC                                       ; $85FE3A |
  LDA.B $09,X                               ; $85FE3B |
  SBC.B $01                                 ; $85FE3D |
  BPL CODE_85FE45                           ; $85FE3F |
  EOR.W #$FFFF                              ; $85FE41 |
  INC A                                     ; $85FE44 |

CODE_85FE45:
  SEC                                       ; $85FE45 |
  SBC.B $0E                                 ; $85FE46 |
  BCC CODE_85FE4E                           ; $85FE48 |
  SBC.B $2E,X                               ; $85FE4A |
  BCS CODE_85FE60                           ; $85FE4C |

CODE_85FE4E:
  SEC                                       ; $85FE4E |
  LDA.B $04                                 ; $85FE4F |
  SBC.B $0D,X                               ; $85FE51 |
  BMI CODE_85FE5B                           ; $85FE53 |
  SEC                                       ; $85FE55 |
  SBC.B $10                                 ; $85FE56 |
  BMI CODE_85FE61                           ; $85FE58 |
  RTS                                       ; $85FE5A |

CODE_85FE5B:
  CLC                                       ; $85FE5B |
  ADC.B $30,X                               ; $85FE5C |
  BPL CODE_85FE61                           ; $85FE5E |

CODE_85FE60:
  RTS                                       ; $85FE60 |

CODE_85FE61:
  LDA.B $38,X                               ; $85FE61 |
  BNE CODE_85FE60                           ; $85FE63 |
  CPX.B $FC                                 ; $85FE65 |
  BEQ CODE_85FE60                           ; $85FE67 |
  LDY.B $FC                                 ; $85FE69 |
  LDA.W $0032,Y                             ; $85FE6B |
  ORA.W #$2000                              ; $85FE6E |
  STA.W $0032,Y                             ; $85FE71 |
  LDA.W #$0019                              ; $85FE74 |
  STA.B $38,X                               ; $85FE77 |
  LDA.B $32,X                               ; $85FE79 |
  AND.W #$FE00                              ; $85FE7B |
  STA.B $32,X                               ; $85FE7E |
  LDA.B $FC                                 ; $85FE80 |
  LSR A                                     ; $85FE82 |
  LSR A                                     ; $85FE83 |
  LSR A                                     ; $85FE84 |
  LSR A                                     ; $85FE85 |
  ORA.B $32,X                               ; $85FE86 |
  ORA.W #$8800                              ; $85FE88 |
  STA.B $32,X                               ; $85FE8B |
  LDA.B $35,X                               ; $85FE8D |
  AND.W #$0020                              ; $85FE8F |
  BNE CODE_85FE60                           ; $85FE92 |
  SEP #$20                                  ; $85FE94 |
  STZ.B $37,X                               ; $85FE96 |
  SEC                                       ; $85FE98 |
  LDA.B $36,X                               ; $85FE99 |
  SBC.B #$01                                ; $85FE9B |
  STA.B $36,X                               ; $85FE9D |
  BNE CODE_85FEA4                           ; $85FE9F |
  JMP.W CODE_JP_85FD28                      ; $85FEA1 |

CODE_85FEA4:
  BCC CODE_85FEA9                           ; $85FEA4 |
  JMP.W CODE_JP_85FD16                      ; $85FEA6 |

CODE_85FEA9:
  JML.L CODE_JP_85FD28                      ; $85FEA9 |

  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $85FEAD |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $85FEB5 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $85FEBD |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $85FEC5 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $85FECD |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $85FED5 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $85FEDD |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $85FEE5 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $85FEED |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $85FEF5 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $85FEFD |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $85FF05 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $85FF0D |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $85FF15 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $85FF1D |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $85FF25 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $85FF2D |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $85FF35 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $85FF3D |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $85FF45 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $85FF4D |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $85FF55 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $85FF5D |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $85FF65 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $85FF6D |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $85FF75 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $85FF7D |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $85FF85 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $85FF8D |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $85FF95 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $85FF9D |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $85FFA5 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $85FFAD |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $85FFB5 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $85FFBD |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $85FFC5 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $85FFCD |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $85FFD5 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $85FFDD |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $85FFE5 |
  db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF        ; $85FFED |
  db $FF,$FF,$FF                            ; $85FFF5 |

EMPTY_85FFF8:
  db $FF,$FF,$FF,$FF,$FF,$FF                ; $85FFF8 |

EMPTY_85FFFE:
  db $FF,$FF                                ; $85FFFE |
